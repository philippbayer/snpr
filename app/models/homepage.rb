class Homepage < ActiveRecord::Base
   belongs_to :user
   after_save :destroy_if_blank

   validates_presence_of :description, :url
   private

   def destroy_if_blank
     self.destroy if url.blank?
   end
end
