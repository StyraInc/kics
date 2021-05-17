package Cx

import data.generic.openapi as openapi_lib

CxPolicy[result] {
	doc := input.document[i]
	openapi_lib.check_openapi(doc) != "undefined"

	[path, value] := walk(doc)
	ref := value["$ref"]
	checkComponents := openapi_lib.check_reference_unexisting(doc, ref, "parameters")

	result := {
		"documentId": doc.id,
		"searchKey": sprintf("%s.$ref={{%s}}", [openapi_lib.concat_path(path), ref]),
		"issueType": "MissingAttribute",
		"keyExpectedValue": sprintf("%s from %s is declared on components.parameters", [checkComponents, ref]),
		"keyActualValue": sprintf("%s from %s is not declared on components.parameters", [checkComponents, ref]),
	}
}
