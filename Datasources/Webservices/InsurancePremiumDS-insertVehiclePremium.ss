function insertVehiclePremium(){
	var queryStr = "INSERT INTO \"public\".\"insurancePremium\" (\"vehicleType\",\"vehicleValue\",\"nilDepreciation\",\"ncbProtection\",\"premiumAmount\") VALUES(?,?,?,?,?)";
	try{
		$s.query("InsurancePremiumDS", queryStr);
		$s.setString(1, "vehicleType");
		$s.setLong(2, "vehicleValue");
		$s.setString(3, "nilDepreciation");
		$s.setString(4, "ncbProtection");
		$s.setBigDecimal(5, "premiumAmount");
		results = $s.execute();
		$s.sendResponse(200, results);
	} catch(e) {
		$s.sendResponse(500, e);
	}
}
insertVehiclePremium();
