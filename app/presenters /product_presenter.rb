class ProductPresenter
    
    def initialize(product,view)
        @product = product
        @view =view
    end
    
    def call
        if @product.rating >=4
            @view.content_tag(:div, "Amazon's choice", class: "products")
        else
            @view.content_tag(:div, "Not-preffered", class: "products ")
        end
    end
    def joined_date
        @product.created_at.strftime("%B %d, %Y")
    end
end
