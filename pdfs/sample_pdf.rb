class SamplePdf < Prawn::Document
	def initialize(invoice, view)
		@sample = invoice
		super(top_margin: 20)
		t=Time.new
		headding  # setting heading to the pdf page
		put_table # displaying details as a table format
		move_down 100 # after displaying table move down to the 100 cm
		logo # after that displaying some image i.e., logo of rails
		move_down 200
		logo
		move_down 200
		put_table
		number_pages "<page>  ",size: 20, style: :bold,:at => [250, 0]  #setting page number at middle of the bottom page
		number_pages "#{t.strftime("%d/%B/%Y")} ",size: 20,:at => [410,750] #setting date at right side of the top of the page
		move_down 70
	end

	def headding
    	text "Sample Details", size: 30, style: :bold, align: :center
  	end

	def put_table
		move_down 20
	 
		data=Array.new
		data << ["Name", "Email", "Comments"]    
	    data << [@sample.name,@sample.email,@sample.comment]
	   
	    table data do
		  row(0).font_style = :bold
		  row(0).align = :center
		  columns(1..3).width=150
		  #columns(1..3).height=150
		  self.row_colors = ["DDDDDD", "FFFFFF"]
		  self.header = true
		end
	end
	
	def logo
		logo_path =  "#{Rails.root}/app/assets/images/rails.png"
		image logo_path
	end  
end
