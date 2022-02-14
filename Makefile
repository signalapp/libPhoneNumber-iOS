update_metadata:
	cd libPhoneNumberTests && ./metadataGenerator
	./jsonToPlist < libPhoneNumberTests/generatedJSON/PhoneNumberMetaData.json > libPhoneNumber/NBPhoneNumberMetaData.plist
	./jsonToPlist < libPhoneNumberTests/generatedJSON/PhoneNumberMetaDataForTesting.json > libPhoneNumberTests/NBPhoneNumberMetaDataForTesting.plist
