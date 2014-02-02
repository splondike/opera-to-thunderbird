# Quick class to export to Thunderbird's LDIF format
module ThunderbirdLDIF
   class Record
      require 'base64'
      attr_accessor :name, :primary_email, :other_emails
      attr_accessor :phone, :mobile, :address, :description

      def to_s
         rtn = "dn: "
         rtn << "cn=#{name}," if self.name
         rtn << "mail=#{self.primary_email || rand.to_s}\n"
         rtn << enc("cn", self.name)
         rtn << enc("mail", self.primary_email)
         others = other_emails ? other_emails.join(", ") : nil
         rtn << enc("mozillaSecondEmail", others)
         rtn << enc("homePhone", self.phone)
         rtn << enc("mobile", self.mobile)
         rtn << enc("street", self.address)
         rtn << enc("description", self.description)
         return rtn + "\n\n"
      end

      private 
      def enc(name, value)
         return "" if !value || value == ""
         chars = value.chars
         safe = safe_init_char?(chars[0]) && chars.all?{|c|safe_char? c}
         if safe
            return "#{name}: #{value}\n"
         else
            enc_value = Base64.strict_encode64(value)
            return "#{name}:: #{enc_value}\n"
         end
      end

      # Checks the chars for validity according to https://tools.ietf.org/html/rfc2849
      # <str>.ord isn't how you should work with UTF-8, but it works for this purpose
      def safe_init_char?(char)
         return safe_char?(char) && !([" ", ":", "<"].include? char)
      end
      def safe_char?(char)
         o = char.ord
         return o <= 127 && !([0, 10, 13].include? o)
      end
   end
end
