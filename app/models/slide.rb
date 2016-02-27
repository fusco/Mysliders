class Slide < ActiveRecord::Base

  # spécifie que paperclip aura a géré :picture
  # que le fichier original sera redimensionné en 1920x1800
  # et que thumb sere redimensionné en 200x200
  # si le fichier ne devait pas être présent c'est
  # le fichiers missing.png qui sera affiché dans les 2 dimensions

  has_attached_file :picture, styles: { original: "1920x1800>", thumb: "200x200>" }, default_url: "/images/:style/missing.png"

  # on s'assure que le fichier envoyé sera de type 'image'
  validates_attachment_content_type :picture, content_type: /\Aimage\/.*\Z/

  # On vérifie que le fichier aura l'extension 'png', 'jpg', 'jpeg'
  validates_attachment_file_name :picture, matches: [/png\Z/, /jpe?g\Z/]

  # On vérifie que l'image envoyé ne fasse pas plus d'un 1M
  validates_with AttachmentSizeValidator, attributes: :picture, less_than: 1.megabytes

  # on vérifie que les 4 champs seront bien rempli
  validates :name, :desc, :author, :picture, presence: true

end
