class Image < ApplicationRecord

	attachment :image
	belongs_to :post, optional: true

	Refile.secret_key = '1f1f2d73b70c993677c240a7586f0db57914290830654d42a0bd54424572bda26b38ef5d401753b4d0bd5553ecc1da083c2299f1581e1a4b9fae5c3902719b0c'
end
