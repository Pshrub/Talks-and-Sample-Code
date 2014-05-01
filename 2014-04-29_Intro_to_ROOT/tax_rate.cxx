void tax_rate(){
	TTree *mytree = new TTree("mytree","mytree");
	mytree->ReadFile("cleaned.csv");
	mytree->Draw("Total_Taxes:Current_Year_Total_Value","","colz");
	TF1 *myline = new TF1("myline","[0]+[1]*x",0,100e6);
	c1->SetLogz();
	htemp->Fit("myline");
	c1->SaveAs("tax_chart.png");
}

