<h1> Downloading Content as PDF Using prawn </h1>
<p> the above application using prawn gem to download the content as a pdf format </p>
<p> while using prawn </p>

	<ul>
		<li> Add gem 'prawn' in gemfile </li>
		<li> bundle install </li>
		<li> create file called sample_pdf.rb in the app folder of pdfs folder </li>
		<li> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Make sure that the controller name and pdf file name should be samd </li>
	</ul>
	<p> Open the pdf.rb file and write as you want for that use prawn api for better prawn api google for prawnmanual.pdf </p>

	<p> Write own method in controller to get the pdf ex: 
	def get_pdf
	    @sample = Sample.find(params[:id])
		pdf = SamplePdf.new(@sample, view_context)
	    send_data pdf.render, filename:"#{@sample.name}_#{@sample.created_at.strftime("%d/%m/%Y")}.pdf",
	    type: "application/pdf"
	end
	</p>
	<p> Create a view as you like </p>
<p> Use the above code for better help </p>

<h3> Thank you </h3>
