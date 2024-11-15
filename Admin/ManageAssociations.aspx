<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="ManageAssociations.aspx.cs" Inherits="MarriottLearningGuides.Admin.ManageAssociations" %>

<%@ Register Assembly="Telerik.Web.UI" Namespace="Telerik.Web.UI" TagPrefix="telerik" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <telerik:RadCodeBlock ID="RadCodeBlock1" runat="server">
        <script language="javascript" type="text/javascript">
            function PositionTypeChecked(sender, eventArgs) {
                PositionTypeOnClientItemChecked(true);
            }

            function PositionTypeIndexChanged(sender, eventArgs) {
                if ($get('<%=hdnAddOrEdit.ClientID %>').value == "Edit") {
                    PositionTypeOnClientItemChecked(false);
                }
            }

            function LeadershipLevelChecked(sender, eventArgs) {
                LeadershipLevelsOnClientItemChecked(true);
            }

            function LeadershipLevelIndexChanged(sender, eventArgs) {
                if ($get('<%=hdnAddOrEdit.ClientID %>').value == "Edit") {
                    LeadershipLevelsOnClientItemChecked(false);
                }
            }

            function BrandCategoryChecked(sender, eventArgs) {
                BrandCategoriesOnClientItemChecked(true);
            }

            function BrandCategoryIndexChanged(sender, eventArgs) {
                if ($get('<%=hdnAddOrEdit.ClientID %>').value == "Edit") {
                    BrandCategoriesOnClientItemChecked(false);
                }
            }

            function ContinentChecked(sender, eventArgs) {
                ContinentsOnClientItemChecked(true);
            }

            function ContinentIndexChanged(sender, eventArgs) {
                if ($get('<%=hdnAddOrEdit.ClientID %>').value == "Edit") {
                    ContinentsOnClientItemChecked(false);
                }
            }

            function PerformanceContributionChecked(sender, eventArgs) {
                PerformanceContributionsOnClientItemChecked(true);
            }

            function PerformanceContributionIndexChanged(sender, eventArgs) {
                if ($get('<%=hdnAddOrEdit.ClientID %>').value == "Edit") {
                    PerformanceContributionsOnClientItemChecked(false);
                }
            }

            function CompetencyChecked(sender, eventArgs) {
                CompetenciesOnClientItemChecked(true);
            }

            function CompetencyIndexChanged(sender, eventArgs) {
                if ($get('<%=hdnAddOrEdit.ClientID %>').value == "Edit") {
                    CompetenciesOnClientItemChecked(false);
                }
            }

            function PostFormChecked() {
                var courseTypeIndex = $get('<%=ddlCourseTypes.ClientID %>').selectedIndex;
                var courseTypeValue = $get('<%=ddlCourseTypes.ClientID %>').options[courseTypeIndex].value;

                var positionTypeCombo = $find("<%= rcbPositionTypes.ClientID %>");
                var leadershipLevelCombo = $find("<%= rcbLeadershipLevels.ClientID %>");
                var performanceContributionCombo = $find("<%= rcbPerformanceContributions.ClientID %>");
                var competencyCombo = $find("<%= rcbCompetencies.ClientID %>");
                var categoryCombo = $find("<%= rcbCategories.ClientID %>");
                var positionItems = positionTypeCombo.get_items();
                var positionItemsCount = positionItems.get_count();
                var leadershipItems = leadershipLevelCombo.get_items();
                var leadershipItemsCount = leadershipItems.get_count();
                var Categories = $get("<%= hdnCategories.ClientID %>");

                if (courseTypeValue == "1") {
                    var brandCategoryCombo = $find("<%= rcbBrandCategories.ClientID %>");
                    var continentCombo = $find("<%= rcbContinents.ClientID %>");
                    //var categoryCombo = $find("<%= rcbCategories.ClientID %>");
                    var brandCategoryItems = brandCategoryCombo.get_items();
                    var brandCategoryItemsCount = brandCategoryItems.get_count();
                    var continentItems = continentCombo.get_items();
                    var continentItemsCount = continentItems.get_count();
                    var categoryItems = categoryCombo.get_items();
                    var categoryItemsCount = categoryItems.get_count();
                }
                else {
                    if (categoryCombo.get_selectedItem() != null) {
                        Categories.value = categoryCombo.get_selectedItem().get_value();
                    }
                }
                
                var performanceContributionItems = performanceContributionCombo.get_items();
                var performanceContributionItemsCount = performanceContributionItems.get_count();
                var competencyItems = competencyCombo.get_items();
                var competencyItemsCount = competencyItems.get_count();

                var itemsChecked = "";

                var hasItemsChecked_position = false;

                for (var positionItemIndex = 0; positionItemIndex < positionItemsCount; positionItemIndex++) {
                    var positionItem = positionItems.getItem(positionItemIndex);

                    if (positionItem.get_checked() == true) {
                        itemsChecked = itemsChecked + '|' + positionItem.get_value();

                        hasItemsChecked_position = true;
                    }
                }

                if (hasItemsChecked_position == true) {
                    var hdnPositionTypes = $get("<%= hdnPositionTypes.ClientID %>");
                    hdnPositionTypes.value = itemsChecked.substring(1, itemsChecked.length); ;
                }

                var hasItemsChecked_leadership = false;

                itemsChecked = "";

                for (var leadershipItemIndex = 0; leadershipItemIndex < leadershipItemsCount; leadershipItemIndex++) {
                    var leadershipItem = leadershipItems.getItem(leadershipItemIndex);

                    if (leadershipItem.get_checked() == true) {
                        itemsChecked = itemsChecked + '|' + leadershipItem.get_value();

                        hasItemsChecked_leadership = true;
                    }
                }

                if (hasItemsChecked_leadership == true) {
                    var hdnLeadershipLevels = $get("<%= hdnLeadershipLevels.ClientID %>");
                    hdnLeadershipLevels.value = itemsChecked.substring(1, itemsChecked.length);
                }

                var hasItemsChecked_performanceContribution = false;

                itemsChecked = "";

                for (var performanceContributionItemIndex = 0; performanceContributionItemIndex < performanceContributionItemsCount; performanceContributionItemIndex++) {
                    var performanceContributionItem = performanceContributionItems.getItem(performanceContributionItemIndex);

                    if (performanceContributionItem.get_checked() == true) {
                        itemsChecked = itemsChecked + '|' + performanceContributionItem.get_value();

                        hasItemsChecked_performanceContribution = true;
                    }
                }

                if (hasItemsChecked_performanceContribution == true) {
                    var PerformanceContribution = $get("<%= hdnPerformanceContributions.ClientID %>");
                    PerformanceContribution.value = itemsChecked.substring(1, itemsChecked.length); ;
                }

                var hasItemsChecked_competency = false;

                itemsChecked = "";

                for (var competencyItemIndex = 0; competencyItemIndex < competencyItemsCount; competencyItemIndex++) {
                    var competencyItem = competencyItems.getItem(competencyItemIndex);

                    if (competencyItem.get_checked() == true) {
                        itemsChecked = itemsChecked + '|' + competencyItem.get_value();

                        hasItemsChecked_competency = true;
                    }
                }

                if (hasItemsChecked_competency == true) {
                    var Competencies = $get("<%= hdnCompetencies.ClientID %>");
                    Competencies.value = itemsChecked.substring(1, itemsChecked.length); ;
                }

                if (courseTypeValue == "1") {
                    var hasItemsChecked_brandCategory = false;

                    itemsChecked = "";

                    for (var brandCategoryItemIndex = 0; brandCategoryItemIndex < brandCategoryItemsCount; brandCategoryItemIndex++) {
                        var brandCategoryItem = brandCategoryItems.getItem(brandCategoryItemIndex);

                        if (brandCategoryItem.get_checked() == true) {
                            itemsChecked = itemsChecked + '|' + brandCategoryItem.get_value();

                            hasItemsChecked_brandCategory = true;
                        }
                    }

                    if (hasItemsChecked_brandCategory == true) {
                        var BrandCategories = $get("<%= hdnBrandCategories.ClientID %>");
                        BrandCategories.value = itemsChecked.substring(1, itemsChecked.length); ;
                    }

                    var hasItemsChecked_continent = false;

                    itemsChecked = "";

                    for (var continentItemIndex = 0; continentItemIndex < continentItemsCount; continentItemIndex++) {
                        var continentItem = continentItems.getItem(continentItemIndex);

                        if (continentItem.get_checked() == true) {
                            itemsChecked = itemsChecked + '|' + continentItem.get_value();

                            hasItemsChecked_continent = true;
                        }
                    }

                    if (hasItemsChecked_continent == true) {
                        var Continents = $get("<%= hdnContinents.ClientID %>");
                        Continents.value = itemsChecked.substring(1, itemsChecked.length); ;
                    }

                    var hasItemsChecked_category = false;

                    itemsChecked = "";

                    for (var categoryItemIndex = 0; categoryItemIndex < categoryItemsCount; categoryItemIndex++) {
                        var categoryItem = categoryItems.getItem(categoryItemIndex);

                        if (categoryItem.get_checked() == true) {
                            itemsChecked = itemsChecked + '|' + categoryItem.get_value();

                            hasItemsChecked_category = true;
                        }
                    }

                    if (hasItemsChecked_category == true) {
                        Categories.value = itemsChecked.substring(1, itemsChecked.length); ;
                    }
                }

                $get("<%=hdnFormAction.ClientID %>").value = 'PerformInsert';

                $get("form1").submit();
            }

            function PostFormIndex() {
                var courseTypeIndex = $get('<%=ddlCourseTypes.ClientID %>').selectedIndex;
                var courseTypeValue = $get('<%=ddlCourseTypes.ClientID %>').options[courseTypeIndex].value;

                var positionTypeCombo = $find("<%= rcbPositionTypes.ClientID %>");
                var leadershipLevelCombo = $find("<%= rcbLeadershipLevels.ClientID %>");
                var performanceContributionCombo = $find("<%= rcbPerformanceContributions.ClientID %>");
                var competencyCombo = $find("<%= rcbCompetencies.ClientID %>");
                var categoryCombo = $find("<%= rcbCategories.ClientID %>");
                var positionItems = positionTypeCombo.get_items();
                var positionItemsCount = positionItems.get_count();
                var leadershipItems = leadershipLevelCombo.get_items();
                var leadershipItemsCount = leadershipItems.get_count();

                if (courseTypeValue == "1") {
                    var brandCategoryCombo = $find("<%= rcbBrandCategories.ClientID %>");
                    var continentCombo = $find("<%= rcbContinents.ClientID %>");
                    var categoryCombo = $find("<%= rcbCategories.ClientID %>");
                    var brandCategoryItems = brandCategoryCombo.get_items();
                    var brandCategoryItemsCount = brandCategoryItems.get_count();
                    var continentItems = continentCombo.get_items();
                    var continentItemsCount = continentItems.get_count();
                    var categoryItems = categoryCombo.get_items();
                    var categoryItemsCount = categoryItems.get_count();
                }

                var performanceContributionItems = performanceContributionCombo.get_items();
                var performanceContributionItemsCount = performanceContributionItems.get_count();
                var competencyItems = competencyCombo.get_items();
                var competencyItemsCount = competencyItems.get_count();

                var hdnPositionTypes = $get("<%= hdnPositionTypes.ClientID %>");
                var hdnLeadershipLevels = $get("<%= hdnLeadershipLevels.ClientID %>");
                var hdnPerformanceContributions = $get("<%= hdnPerformanceContributions.ClientID %>");
                var hdnPerformanceContributions = $get("<%= hdnPerformanceContributions.ClientID %>");
                var hdnCompetencies = $get("<%= hdnCompetencies.ClientID %>");
                var hdnCategories = $get("<%= hdnCategories.ClientID %>");

                var itemsChecked = "";

                var hasItemsChecked_position = false;

                if (positionTypeCombo.get_selectedItem() != null) {
                    hdnPositionTypes.value = positionTypeCombo.get_selectedItem().get_value();
                }
                if (leadershipLevelCombo.get_selectedItem() != null) {
                    hdnLeadershipLevels.value = leadershipLevelCombo.get_selectedItem().get_value();
                }
                if (performanceContributionCombo.get_selectedItem() != null) {
                    hdnPerformanceContributions.value = performanceContributionCombo.get_selectedItem().get_value();
                }
                if (competencyCombo.get_selectedItem() != null) {
                    hdnCompetencies.value = competencyCombo.get_selectedItem().get_value();
                }
                if (categoryCombo.get_selectedItem() != null) {
                    hdnCategories.value = categoryCombo.get_selectedItem().get_value();
                }
                
                if (courseTypeValue == "1") {
                    var hdnBrandCategories = $get("<%= hdnBrandCategories.ClientID %>");
                    var hdnContinents = $get("<%= hdnContinents.ClientID %>");
                    var hdnCategories = $get("<%= hdnCategories.ClientID %>");

                    if (competencyCombo.get_selectedItem() != null) {
                        hdnBrandCategories.value = brandCategoryCombo.get_selectedItem().get_value();
                    }
                    if (competencyCombo.get_selectedItem() != null) {
                        hdnContinents.value = continentCombo.get_selectedItem().get_value();
                    }
                    if (competencyCombo.get_selectedItem() != null) {
                        hdnCategories.value = categoryCombo.get_selectedItem().get_value();
                    }
                }

                $get("<%=hdnFormAction.ClientID %>").value = 'PerformUpdate';

                $get("form1").submit();
            }
            function LoadLeadershipLevels(OnChecked) {
                var positionTypeCombo = $find("<%= rcbPositionTypes.ClientID %>");
                var leadershipLevelCombo = $find("<%= rcbLeadershipLevels.ClientID %>");
                var itemsChecked = '';
                var positionItems = positionTypeCombo.get_items();
                var positionItemsCount = positionItems.get_count();

                var courseTypeIndex = $get('<%=ddlCourseTypes.ClientID %>').selectedIndex;
                var courseTypeValue = $get('<%=ddlCourseTypes.ClientID %>').options[courseTypeIndex].value;

                var associationTypeIndex = $get('<%=ddlAssociationTypes.ClientID %>').selectedIndex;
                var associationTypeValue = $get('<%=ddlAssociationTypes.ClientID %>').options[associationTypeIndex].value;

                itemsChecked = courseTypeValue;
                itemsChecked = itemsChecked + '|' + associationTypeValue;
                itemsChecked = itemsChecked + '|P';

                var hasItemsChecked = false;

                if (OnChecked == true) {
                    for (var positionItemIndex = 0; positionItemIndex < positionItemsCount; positionItemIndex++) {
                        var positionItem = positionItems.getItem(positionItemIndex);

                        if (positionItem.get_checked() == true) {
                            itemsChecked = itemsChecked + '|' + positionItem.get_value();

                            hasItemsChecked = true;
                        }
                    }
                }
                else {
                    hasItemsChecked = true;

                    itemsChecked = itemsChecked + '|' + positionTypeCombo.get_selectedItem().get_value();
                }


                if (hasItemsChecked == true) {
                    if (leadershipLevelCombo != null) {
                        leadershipLevelCombo.clearItems();
                        leadershipLevelCombo.clearSelection();

                        leadershipLevelCombo.requestItems(itemsChecked, false);
                    }
                }
                else {
                    leadershipLevelCombo.clearItems();
                    leadershipLevelCombo.clearSelection();
                    leadershipLevelCombo.disable();
                }
            }

            function LoadBrandCategories(OnChecked) {
                var positionTypeCombo = $find("<%= rcbPositionTypes.ClientID %>");
                var leadershipLevelCombo = $find("<%= rcbLeadershipLevels.ClientID %>");
                var brandCategoryCombo = $find("<%= rcbBrandCategories.ClientID %>");
                var itemsChecked = '';
                var positionItems = positionTypeCombo.get_items();
                var positionItemsCount = positionItems.get_count();
                var leadershipItems = leadershipLevelCombo.get_items();
                var leadershipItemsCount = leadershipItems.get_count();

                var courseTypeIndex = $get('<%=ddlCourseTypes.ClientID %>').selectedIndex;
                var courseTypeValue = $get('<%=ddlCourseTypes.ClientID %>').options[courseTypeIndex].value;

                var associationTypeIndex = $get('<%=ddlAssociationTypes.ClientID %>').selectedIndex;
                var associationTypeValue = $get('<%=ddlAssociationTypes.ClientID %>').options[associationTypeIndex].value;

                itemsChecked = courseTypeValue;
                itemsChecked = itemsChecked + '|' + associationTypeValue;
                itemsChecked = itemsChecked + '|P';

                var hasItemsChecked = false;

                if (OnChecked == true) {
                    for (var positionItemIndex = 0; positionItemIndex < positionItemsCount; positionItemIndex++) {
                        var positionItem = positionItems.getItem(positionItemIndex);

                        if (positionItem.get_checked() == true) {
                            itemsChecked = itemsChecked + '|' + positionItem.get_value();
                        }
                    }

                    itemsChecked = itemsChecked + '|L';
                    for (var leadershipLevelItemIndex = 0; leadershipLevelItemIndex < leadershipItemsCount; leadershipLevelItemIndex++) {
                        var leadershipItem = leadershipItems.getItem(leadershipLevelItemIndex);

                        if (leadershipItem.get_checked() == true) {
                            itemsChecked = itemsChecked + '|' + leadershipItem.get_value();

                            hasItemsChecked = true;
                        }
                    }
                }
                else {
                    hasItemsChecked = true;

                    itemsChecked = itemsChecked + '|' + positionTypeCombo.get_selectedItem().get_value();
                    itemsChecked = itemsChecked + '|L';
                    itemsChecked = itemsChecked + '|' + leadershipLevelCombo.get_selectedItem().get_value();
                }

                if (hasItemsChecked == true) {
                    if (brandCategoryCombo != null) {
                        brandCategoryCombo.clearItems();
                        brandCategoryCombo.clearSelection();

                        brandCategoryCombo.requestItems(itemsChecked, false);
                    }
                } 
                else {
                    brandCategoryCombo.clearItems();
                    brandCategoryCombo.clearSelection();
                    brandCategoryCombo.disable();
                }
            }

            function LoadContinents(OnChecked) {
                var positionTypeCombo = $find("<%= rcbPositionTypes.ClientID %>");
                var leadershipLevelCombo = $find("<%= rcbLeadershipLevels.ClientID %>");
                var brandCategoryCombo = $find("<%= rcbBrandCategories.ClientID %>");
                var continentCombo = $find("<%= rcbContinents.ClientID %>");
                var itemsChecked = '';
                var positionItems = positionTypeCombo.get_items();
                var positionItemsCount = positionItems.get_count();
                var leadershipItems = leadershipLevelCombo.get_items();
                var leadershipItemsCount = leadershipItems.get_count();
                var brandCategoryItems = brandCategoryCombo.get_items();
                var brandCategoryItemsCount = brandCategoryItems.get_count();

                var courseTypeIndex = $get('<%=ddlCourseTypes.ClientID %>').selectedIndex;
                var courseTypeValue = $get('<%=ddlCourseTypes.ClientID %>').options[courseTypeIndex].value;

                var associationTypeIndex = $get('<%=ddlAssociationTypes.ClientID %>').selectedIndex;
                var associationTypeValue = $get('<%=ddlAssociationTypes.ClientID %>').options[associationTypeIndex].value;

                itemsChecked = courseTypeValue;
                itemsChecked = itemsChecked + '|' + associationTypeValue;
                itemsChecked = itemsChecked + '|P';

                var hasItemsChecked = false;

                if (OnChecked == true) {
                    for (var positionItemIndex = 0; positionItemIndex < positionItemsCount; positionItemIndex++) {
                        var positionItem = positionItems.getItem(positionItemIndex);

                        if (positionItem.get_checked() == true) {
                            itemsChecked = itemsChecked + '|' + positionItem.get_value();
                        }
                    }

                    itemsChecked = itemsChecked + '|L';
                    for (var leadershipLevelItemIndex = 0; leadershipLevelItemIndex < leadershipItemsCount; leadershipLevelItemIndex++) {
                        var leadershipItem = leadershipItems.getItem(leadershipLevelItemIndex);

                        if (leadershipItem.get_checked() == true) {
                            itemsChecked = itemsChecked + '|' + leadershipItem.get_value();
                        }
                    }

                    itemsChecked = itemsChecked + '|B';
                    for (var brandCategoryItemIndex = 0; brandCategoryItemIndex < brandCategoryItemsCount; brandCategoryItemIndex++) {
                        var brandCategoryItem = brandCategoryItems.getItem(brandCategoryItemIndex);

                        if (brandCategoryItem.get_checked() == true) {
                            itemsChecked = itemsChecked + '|' + brandCategoryItem.get_value();

                            hasItemsChecked = true;
                        }
                    }
                }
                else {
                    hasItemsChecked = true;

                    itemsChecked = itemsChecked + '|' + positionTypeCombo.get_selectedItem().get_value();
                    itemsChecked = itemsChecked + '|L';
                    itemsChecked = itemsChecked + '|' + leadershipLevelCombo.get_selectedItem().get_value();
                    itemsChecked = itemsChecked + '|B';
                    itemsChecked = itemsChecked + '|' + brandCategoryCombo.get_selectedItem().get_value();
                }

                if (hasItemsChecked == true) {
                    if (continentCombo != null) {
                        continentCombo.clearItems();
                        continentCombo.clearSelection();

                        continentCombo.requestItems(itemsChecked, false);
                    }
                }
                else {
                    continentCombo.clearItems();
                    continentCombo.clearSelection();
                    continentCombo.disable();
                }
            }

            function LoadPerformanceContributions(OnChecked) {
                var positionTypeCombo = $find("<%= rcbPositionTypes.ClientID %>");
                var leadershipLevelCombo = $find("<%= rcbLeadershipLevels.ClientID %>");
                var performanceContributionCombo = $find("<%= rcbPerformanceContributions.ClientID %>");
                var itemsChecked = '';
                var positionItems = positionTypeCombo.get_items();
                var positionItemsCount = positionItems.get_count();
                var leadershipItems = leadershipLevelCombo.get_items();
                var leadershipItemsCount = leadershipItems.get_count();
                var courseTypeIndex = $get('<%=ddlCourseTypes.ClientID %>').selectedIndex;
                var courseTypeValue = $get('<%=ddlCourseTypes.ClientID %>').options[courseTypeIndex].value;

                var associationTypeIndex = $get('<%=ddlAssociationTypes.ClientID %>').selectedIndex;
                var associationTypeValue = $get('<%=ddlAssociationTypes.ClientID %>').options[associationTypeIndex].value;

                var hasItemsChecked = false;

                if (courseTypeValue == "1") {
                    var brandCategoryCombo = $find("<%= rcbBrandCategories.ClientID %>");
                    var continentCombo = $find("<%= rcbContinents.ClientID %>");
                    var brandCategoryItems = brandCategoryCombo.get_items();
                    var brandCategoryItemsCount = brandCategoryItems.get_count();
                    var continentItems = continentCombo.get_items();
                    var continentItemsCount = continentItems.get_count();

                    itemsChecked = courseTypeValue;
                    itemsChecked = itemsChecked + '|' + associationTypeValue;
                    itemsChecked = itemsChecked + '|P';

                    if (OnChecked == true) {
                        for (var positionItemIndex = 0; positionItemIndex < positionItemsCount; positionItemIndex++) {
                            var positionItem = positionItems.getItem(positionItemIndex);

                            if (positionItem.get_checked() == true) {
                                itemsChecked = itemsChecked + '|' + positionItem.get_value();
                            }
                        }

                        itemsChecked = itemsChecked + '|L';
                        for (var leadershipLevelItemIndex = 0; leadershipLevelItemIndex < leadershipItemsCount; leadershipLevelItemIndex++) {
                            var leadershipItem = leadershipItems.getItem(leadershipLevelItemIndex);

                            if (leadershipItem.get_checked() == true) {
                                itemsChecked = itemsChecked + '|' + leadershipItem.get_value();
                            }
                        }

                        itemsChecked = itemsChecked + '|B';
                        for (var brandCategoryItemIndex = 0; brandCategoryItemIndex < brandCategoryItemsCount; brandCategoryItemIndex++) {
                            var brandCategoryItem = brandCategoryItems.getItem(brandCategoryItemIndex);

                            if (brandCategoryItem.get_checked() == true) {
                                itemsChecked = itemsChecked + '|' + brandCategoryItem.get_value();
                            }
                        }

                        itemsChecked = itemsChecked + '|CO';
                        for (var continentItemIndex = 0; continentItemIndex < continentItemsCount; continentItemIndex++) {
                            var continentItem = continentItems.getItem(continentItemIndex);

                            if (continentItem.get_checked() == true) {
                                itemsChecked = itemsChecked + '|' + continentItem.get_value();

                                hasItemsChecked = true;
                            }
                        }
                    }
                    else {
                        hasItemsChecked = true;

                        itemsChecked = itemsChecked + '|' + positionTypeCombo.get_selectedItem().get_value();
                        itemsChecked = itemsChecked + '|L';
                        itemsChecked = itemsChecked + '|' + leadershipLevelCombo.get_selectedItem().get_value();
                        itemsChecked = itemsChecked + '|B';
                        itemsChecked = itemsChecked + '|' + brandCategoryCombo.get_selectedItem().get_value();
                        itemsChecked = itemsChecked + '|CO';
                        itemsChecked = itemsChecked + '|' + continentCombo.get_selectedItem().get_value();
                    }
                }
                else {
                    itemsChecked = courseTypeValue;
                    itemsChecked = itemsChecked + '|' + associationTypeValue;
                    itemsChecked = itemsChecked + '|P';

                    if (OnChecked == true) {
                        for (var positionItemIndex = 0; positionItemIndex < positionItemsCount; positionItemIndex++) {
                            var positionItem = positionItems.getItem(positionItemIndex);

                            if (positionItem.get_checked() == true) {
                                itemsChecked = itemsChecked + '|' + positionItem.get_value();
                            }
                        }

                        itemsChecked = itemsChecked + '|L';
                        for (var leadershipLevelItemIndex = 0; leadershipLevelItemIndex < leadershipItemsCount; leadershipLevelItemIndex++) {
                            var leadershipItem = leadershipItems.getItem(leadershipLevelItemIndex);

                            if (leadershipItem.get_checked() == true) {
                                itemsChecked = itemsChecked + '|' + leadershipItem.get_value();

                                hasItemsChecked = true;
                            }
                        }
                    }

                    else {
                        hasItemsChecked = true;

                        itemsChecked = itemsChecked + '|' + positionTypeCombo.get_selectedItem().get_value();
                        itemsChecked = itemsChecked + '|L';
                        itemsChecked = itemsChecked + '|' + leadershipLevelCombo.get_selectedItem().get_value();
                    }
                }

                if (hasItemsChecked == true) {
                    if (performanceContributionCombo != null) {
                        performanceContributionCombo.clearItems();
                        performanceContributionCombo.clearSelection();

                        performanceContributionCombo.requestItems(itemsChecked, false);
                    }
                }
                else {
                    performanceContributionCombo.clearItems();
                    performanceContributionCombo.clearSelection();
                    performanceContributionCombo.disable();
                }
            }

            function LoadCompetencies(OnChecked) {
                var positionTypeCombo = $find("<%= rcbPositionTypes.ClientID %>");
                var leadershipLevelCombo = $find("<%= rcbLeadershipLevels.ClientID %>");
                var performanceContributionCombo = $find("<%= rcbPerformanceContributions.ClientID %>");
                var competencyCombo = $find("<%= rcbCompetencies.ClientID %>");
                var itemsChecked = '';
                var positionItems = positionTypeCombo.get_items();
                var positionItemsCount = positionItems.get_count();
                var leadershipItems = leadershipLevelCombo.get_items();
                var leadershipItemsCount = leadershipItems.get_count();
                var performanceContributionItems = performanceContributionCombo.get_items();
                var performanceContributionItemsCount = performanceContributionItems.get_count();
                var courseTypeIndex = $get('<%=ddlCourseTypes.ClientID %>').selectedIndex;
                var courseTypeValue = $get('<%=ddlCourseTypes.ClientID %>').options[courseTypeIndex].value;

                var associationTypeIndex = $get('<%=ddlAssociationTypes.ClientID %>').selectedIndex;
                var associationTypeValue = $get('<%=ddlAssociationTypes.ClientID %>').options[associationTypeIndex].value;

                var hasItemsChecked = false;

                if (courseTypeValue == "1") {
                    var brandCategoryCombo = $find("<%= rcbBrandCategories.ClientID %>");
                    var continentCombo = $find("<%= rcbContinents.ClientID %>");
                    var brandCategoryItems = brandCategoryCombo.get_items();
                    var brandCategoryItemsCount = brandCategoryItems.get_count();
                    var continentItems = continentCombo.get_items();
                    var continentItemsCount = continentItems.get_count();

                    itemsChecked = courseTypeValue;
                    itemsChecked = itemsChecked + '|' + associationTypeValue;
                    itemsChecked = itemsChecked + '|P';

                    if (OnChecked == true) {
                        for (var positionItemIndex = 0; positionItemIndex < positionItemsCount; positionItemIndex++) {
                            var positionItem = positionItems.getItem(positionItemIndex);

                            if (positionItem.get_checked() == true) {
                                itemsChecked = itemsChecked + '|' + positionItem.get_value();
                            }
                        }

                        itemsChecked = itemsChecked + '|L';
                        for (var leadershipLevelItemIndex = 0; leadershipLevelItemIndex < leadershipItemsCount; leadershipLevelItemIndex++) {
                            var leadershipItem = leadershipItems.getItem(leadershipLevelItemIndex);

                            if (leadershipItem.get_checked() == true) {
                                itemsChecked = itemsChecked + '|' + leadershipItem.get_value();
                            }
                        }

                        itemsChecked = itemsChecked + '|B';
                        for (var brandCategoryItemIndex = 0; brandCategoryItemIndex < brandCategoryItemsCount; brandCategoryItemIndex++) {
                            var brandCategoryItem = brandCategoryItems.getItem(brandCategoryItemIndex);

                            if (brandCategoryItem.get_checked() == true) {
                                itemsChecked = itemsChecked + '|' + brandCategoryItem.get_value();
                            }
                        }

                        itemsChecked = itemsChecked + '|CO';
                        for (var continentItemIndex = 0; continentItemIndex < continentItemsCount; continentItemIndex++) {
                            var continentItem = continentItems.getItem(continentItemIndex);

                            if (continentItem.get_checked() == true) {
                                itemsChecked = itemsChecked + '|' + continentItem.get_value();
                            }
                        }

                        itemsChecked = itemsChecked + '|PC';
                        for (var performanceContributionItemIndex = 0; performanceContributionItemIndex < performanceContributionItemsCount; performanceContributionItemIndex++) {
                            var performanceContributionItem = performanceContributionItems.getItem(performanceContributionItemIndex);

                            if (performanceContributionItem.get_checked() == true) {
                                itemsChecked = itemsChecked + '|' + performanceContributionItem.get_value();

                                hasItemsChecked = true;
                            }
                        }
                    }

                    else {
                        hasItemsChecked = true;

                        itemsChecked = itemsChecked + '|' + positionTypeCombo.get_selectedItem().get_value();
                        itemsChecked = itemsChecked + '|L';
                        itemsChecked = itemsChecked + '|' + leadershipLevelCombo.get_selectedItem().get_value();
                        itemsChecked = itemsChecked + '|B';
                        itemsChecked = itemsChecked + '|' + brandCategoryCombo.get_selectedItem().get_value();
                        itemsChecked = itemsChecked + '|CO';
                        itemsChecked = itemsChecked + '|' + continentCombo.get_selectedItem().get_value();
                        itemsChecked = itemsChecked + '|PC';
                        itemsChecked = itemsChecked + '|' + performanceContributionCombo.get_selectedItem().get_value();
                    }
                }
                else {
                    itemsChecked = courseTypeValue;
                    itemsChecked = itemsChecked + '|' + associationTypeValue;
                    itemsChecked = itemsChecked + '|P';

                    if (OnChecked == true) {
                        for (var positionItemIndex = 0; positionItemIndex < positionItemsCount; positionItemIndex++) {
                            var positionItem = positionItems.getItem(positionItemIndex);

                            if (positionItem.get_checked() == true) {
                                itemsChecked = itemsChecked + '|' + positionItem.get_value();
                            }
                        }

                        itemsChecked = itemsChecked + '|L';
                        for (var leadershipLevelItemIndex = 0; leadershipLevelItemIndex < leadershipItemsCount; leadershipLevelItemIndex++) {
                            var leadershipItem = leadershipItems.getItem(leadershipLevelItemIndex);

                            if (leadershipItem.get_checked() == true) {
                                itemsChecked = itemsChecked + '|' + leadershipItem.get_value();
                            }
                        }

                        itemsChecked = itemsChecked + '|PC';
                        for (var performanceContributionItemIndex = 0; performanceContributionItemIndex < performanceContributionItemsCount; performanceContributionItemIndex++) {
                            var performanceContributionItem = performanceContributionItems.getItem(performanceContributionItemIndex);

                            if (performanceContributionItem.get_checked() == true) {
                                itemsChecked = itemsChecked + '|' + performanceContributionItem.get_value();

                                hasItemsChecked = true;
                            }
                        }
                    }
                    else {
                        hasItemsChecked = true;

                        itemsChecked = itemsChecked + '|' + positionTypeCombo.get_selectedItem().get_value();
                        itemsChecked = itemsChecked + '|L';
                        itemsChecked = itemsChecked + '|' + leadershipLevelCombo.get_selectedItem().get_value();
                        itemsChecked = itemsChecked + '|PC';
                        itemsChecked = itemsChecked + '|' + performanceContributionCombo.get_selectedItem().get_value();
                    }
                }
                
                if (hasItemsChecked == true) {
                    if (competencyCombo != null) {
                        competencyCombo.clearItems();
                        competencyCombo.clearSelection();

                        competencyCombo.requestItems(itemsChecked, false);
                    }
                }
                else {
                    competencyCombo.clearItems();
                    competencyCombo.clearSelection();
                    competencyCombo.disable();
                }
            }

            function LoadCategories(OnChecked) {
                var competencyCombo = $find("<%= rcbCompetencies.ClientID %>");
                var competencyItems = competencyCombo.get_items();
                var competencyItemsCount = competencyItems.get_count();
                var categoryCombo = $find("<%= rcbCategories.ClientID %>");
                var itemsChecked = '';
            
                var courseTypeIndex = $get('<%=ddlCourseTypes.ClientID %>').selectedIndex;
                var courseTypeValue = $get('<%=ddlCourseTypes.ClientID %>').options[courseTypeIndex].value;

                var associationTypeIndex = $get('<%=ddlAssociationTypes.ClientID %>').selectedIndex;
                var associationTypeValue = $get('<%=ddlAssociationTypes.ClientID %>').options[associationTypeIndex].value;

                itemsChecked = courseTypeValue;
                itemsChecked = itemsChecked + '|' + associationTypeValue;

                var hasItemsChecked = false;

                if (OnChecked == true) {
                    for (var competencyItemIndex = 0; competencyItemIndex < competencyItemsCount; competencyItemIndex++) {
                        var competencyItem = competencyItems.getItem(competencyItemIndex);

                        if (competencyItem.get_checked() == true) {
                            hasItemsChecked = true;
                        }
                    }
                }
                else {
                    hasItemsChecked = true;
                }

                if (hasItemsChecked == true) {
                    if (categoryCombo != null) {
                        categoryCombo.clearItems();
                        categoryCombo.clearSelection();

                        categoryCombo.requestItems(itemsChecked, false);
                    }
                }
                else {
                    categoryCombo.clearItems();
                    categoryCombo.clearSelection();
                    categoryCombo.disable();
                }
            }

            function PositionTypeOnClientItemChecked(OnChecked) {
                LoadLeadershipLevels(OnChecked);
                var courseTypeIndex = $get('<%=ddlCourseTypes.ClientID %>').selectedIndex;
                var courseTypeValue = $get('<%=ddlCourseTypes.ClientID %>').options[courseTypeIndex].value;

                if (courseTypeValue == "1") {
                    var brandCategoriesCombo = $find("<%= rcbBrandCategories.ClientID %>");
                    var continentsCombo = $find("<%= rcbContinents.ClientID %>");

                    brandCategoriesCombo.clearItems();
                    brandCategoriesCombo.clearSelection();
                    brandCategoriesCombo.disable();

                    continentsCombo.clearItems();
                    continentsCombo.clearSelection();
                    continentsCombo.disable();
                }

                var performanceContributionCombo = $find("<%= rcbPerformanceContributions.ClientID %>");
                var competenciesCombo = $find("<%= rcbCompetencies.ClientID %>");
                var categoriesCombo = $find("<%= rcbCategories.ClientID %>");


                performanceContributionCombo.clearItems();
                performanceContributionCombo.clearSelection();
                performanceContributionCombo.disable();

                competenciesCombo.clearItems();
                competenciesCombo.clearSelection();
                competenciesCombo.disable();

                categoriesCombo.clearItems();
                categoriesCombo.clearSelection();
                categoriesCombo.disable();
            }

            function LeadershipLevelsOnClientItemChecked(OnChecked) {
                var courseTypeIndex = $get('<%=ddlCourseTypes.ClientID %>').selectedIndex;
                var courseTypeValue = $get('<%=ddlCourseTypes.ClientID %>').options[courseTypeIndex].value;

                if (courseTypeValue == "1") {
                    LoadBrandCategories(OnChecked);

                    var continentsCombo = $find("<%= rcbContinents.ClientID %>");

                    continentsCombo.clearItems();
                    continentsCombo.clearSelection();
                    continentsCombo.disable();

                    var performanceContributionCombo = $find("<%= rcbPerformanceContributions.ClientID %>");

                    performanceContributionCombo.clearItems();
                    performanceContributionCombo.clearSelection();
                    performanceContributionCombo.disable();

                    var competenciesCombo = $find("<%= rcbCompetencies.ClientID %>");
                    var categoriesCombo = $find("<%= rcbCategories.ClientID %>");

                    competenciesCombo.clearItems();
                    competenciesCombo.clearSelection();
                    competenciesCombo.disable();

                    categoriesCombo.clearItems();
                    categoriesCombo.clearSelection();
                    categoriesCombo.disable();
                }
                else {
                    LoadPerformanceContributions(OnChecked);

                    if ($get('<%=hdnAddOrEdit.ClientID %>').value == "Add") {
                        var competenciesCombo = $find("<%= rcbCompetencies.ClientID %>");
                        var categoriesCombo = $find("<%= rcbCategories.ClientID %>");

                        competenciesCombo.clearItems();
                        competenciesCombo.clearSelection();
                        competenciesCombo.disable();

                        categoriesCombo.clearItems();
                        categoriesCombo.clearSelection();
                        categoriesCombo.disable();
                    }
                }
            }

            function BrandCategoriesOnClientItemChecked(OnChecked) {
                var brandCategoriesCombo = $find("<%= rcbBrandCategories.ClientID %>");
                var items = brandCategoriesCombo.get_items();
                var itemsCount = items.get_count();

                if (itemsCount > 0) {
                    LoadContinents(OnChecked);
                }

                var performanceContributionCombo = $find("<%= rcbPerformanceContributions.ClientID %>");
                var competenciesCombo = $find("<%= rcbCompetencies.ClientID %>");
                var categoriesCombo = $find("<%= rcbCategories.ClientID %>");

                performanceContributionCombo.clearItems();
                performanceContributionCombo.clearSelection();
                performanceContributionCombo.disable();

                competenciesCombo.clearItems();
                competenciesCombo.clearSelection();
                competenciesCombo.disable();

                categoriesCombo.clearItems();
                categoriesCombo.clearSelection();
                categoriesCombo.disable();
            }

            function ContinentsOnClientItemChecked(OnChecked) {
                var continentsCombo = $find("<%= rcbContinents.ClientID %>");
                var items = continentsCombo.get_items();
                var itemsCount = items.get_count();

                if (itemsCount > 0) {
                    LoadPerformanceContributions(OnChecked);
                }

                var competenciesCombo = $find("<%= rcbCompetencies.ClientID %>");
                var categoriesCombo = $find("<%= rcbCategories.ClientID %>");

                competenciesCombo.clearItems();
                competenciesCombo.clearSelection();
                competenciesCombo.disable();

                categoriesCombo.clearItems();
                categoriesCombo.clearSelection();
                categoriesCombo.disable();
            }

            function PerformanceContributionsOnClientItemChecked(OnChecked) {
                var performanceContributionCombo = $find("<%= rcbPerformanceContributions.ClientID %>");
                var items = performanceContributionCombo.get_items();
                var itemsCount = items.get_count();

                if (itemsCount > 0) {
                    LoadCompetencies(OnChecked);
                }

                var categoriesCombo = $find("<%= rcbCategories.ClientID %>");

                categoriesCombo.clearItems();
                categoriesCombo.clearSelection();
                categoriesCombo.disable();
            }

            function CompetenciesOnClientItemChecked(OnChecked) {
                var competencyCombo = $find("<%= rcbCompetencies.ClientID %>");
                var items = competencyCombo.get_items();
                var itemsCount = items.get_count();

                if (itemsCount > 0) {
                    LoadCategories(OnChecked);
                }
            }

            function CategoriesOnClientItemChecked(sender, eventArgs) {

            }

            function PositionTypesLoaded(sender, eventArgs) {
                var positionTypesCombo = $find("<%= rcbPositionTypes.ClientID %>");
                var items = positionTypesCombo.get_items();
                var itemsCount = items.get_count();
                var leadershipLevelsCombo = $find("<%= rcbLeadershipLevels.ClientID %>");

                if (itemsCount > 0) {
                    positionTypesCombo.enable();
                }
                else {
                    leadershipLevelsCombo.clearItems();
                    leadershipLevelsCombo.clearSelection();
                    leadershipLevelsCombo.disable();
                }
            }

            function LeadershipLevelsLoaded(sender, eventArgs) {
                var courseTypeIndex = $get('<%=ddlCourseTypes.ClientID %>').selectedIndex;
                var courseTypeValue = $get('<%=ddlCourseTypes.ClientID %>').options[courseTypeIndex].value;
                var brandCategoriesCombo = $find("<%= rcbBrandCategories.ClientID %>");
                var performanceContributionsCombo = $find("<%= rcbPerformanceContributions.ClientID %>");
                var continentsCombo = $find("<%= rcbContinents.ClientID %>");

                var associationTypeIndex = $get('<%=ddlAssociationTypes.ClientID %>').selectedIndex;
                var associationTypeValue = $get('<%=ddlAssociationTypes.ClientID %>').options[associationTypeIndex].value;
                var leadershipLevelCombo = $find("<%= rcbLeadershipLevels.ClientID %>");
                var items = leadershipLevelCombo.get_items();
                var itemsCount = items.get_count();

                if (courseTypeValue == "1") {
                    if (itemsCount > 0) {
                        leadershipLevelCombo.enable();
                    }
                    else {
                        brandCategoriesCombo.clearItems();
                        brandCategoriesCombo.clearSelection();
                        brandCategoriesCombo.disable();
                    }
                }
                else {
                    brandCategoriesCombo.clearItems();
                    brandCategoriesCombo.clearSelection();
                    brandCategoriesCombo.disable();

                    continentsCombo.clearItems();
                    continentsCombo.clearSelection();
                    continentsCombo.disable();

                    if (itemsCount > 0) {
                        leadershipLevelCombo.enable();
                    }
                    else {
                        performanceContributionsCombo.clearItems();
                        performanceContributionsCombo.clearSelection();
                        performanceContributionsCombo.disable();
                    }
                }
            }

            function BrandCategoriesLoaded(sender, eventArgs) {
                var brandCategoriesCombo = $find("<%= rcbBrandCategories.ClientID %>");
                var items = brandCategoriesCombo.get_items();
                var itemsCount = items.get_count();
                var continentsCombo = $find("<%= rcbContinents.ClientID %>");

                if (itemsCount > 0) {
                    brandCategoriesCombo.enable();
                }
                else {
                    continentsCombo.clearItems();
                    continentsCombo.clearSelection();
                    continentsCombo.disable();
                }
            }

            function ContinentsLoaded(sender, eventArgs) {
                var continentsCombo = $find("<%= rcbContinents.ClientID %>");
                var items = continentsCombo.get_items();
                var itemsCount = items.get_count();
                var performanceContributionCombo = $find("<%= rcbPerformanceContributions.ClientID %>");

                if (itemsCount > 0) {
                    continentsCombo.enable();
                }
                else {
                    performanceContributionCombo.clearItems();
                    performanceContributionCombo.clearSelection();
                    performanceContributionCombo.disable();
                }
            }

            function PerformanceContributionsLoaded(sender, eventArgs) {
                var performanceContributionsCombo = $find("<%= rcbPerformanceContributions.ClientID %>");
                var items = performanceContributionsCombo.get_items();
                var itemsCount = items.get_count();
                var competencyCombo = $find("<%= rcbCompetencies.ClientID %>");

                if (itemsCount > 0) {
                    performanceContributionsCombo.enable();
                }
                else {
                    competencyCombo.clearItems();
                    competencyCombo.clearSelection();
                    competencyCombo.disable();
                }
            }

            function CompetenciesLoaded(sender, eventArgs) {
                var competenciesCombo = $find("<%= rcbCompetencies.ClientID %>");
                var items = competenciesCombo.get_items();
                var itemsCount = items.get_count();
                var categoryCombo = $find("<%= rcbCategories.ClientID %>");

                if (itemsCount > 0) {
                    competenciesCombo.enable();
                }
                else {
                    categoryCombo.clearItems();
                    categoryCombo.clearSelection();
                    categoryCombo.disable();
                }
            }

            function CategoriesLoaded(sender, eventArgs) {
                var categoriesCombo = $find("<%= rcbCategories.ClientID %>");
                var items = categoriesCombo.get_items();
                var itemsCount = items.get_count();
           
                if (itemsCount > 0) {
                    categoriesCombo.enable();
                }
                else {
                    categoriesCombo.disable();
                }
            }

            function ddlCourseTypes_Changed() {
                var courseTypeIndex = $get('<%=ddlCourseTypes.ClientID %>').selectedIndex;
                var courseTypeValue = $get('<%=ddlCourseTypes.ClientID %>').options[courseTypeIndex].value;

                var brandCategoryRow = $("#trBrandCategory");
                var continentRow = $("#trContinent");

                if (courseTypeValue == "1") {
                    if (brandCategoryRow.length > 0) {
                        brandCategoryRow.css('display', '');
                    }

                    if (continentRow.length > 0) {
                        continentRow.css('display', '');
                    }
                }
                else {
                    if (brandCategoryRow.length > 0) {
                        brandCategoryRow.css('display', 'none');
                    }

                    if (continentRow.length > 0) {
                        continentRow.css('display', 'none');
                    }
                }
                

                $get('<%=ddlAssociationTypes.ClientID %>').selectedIndex = 0;

                var positionTypesCombo = $find("<%= rcbPositionTypes.ClientID %>");

                if (positionTypesCombo != null) {
                    positionTypesCombo.clearItems();
                    
                    positionTypesCombo.requestItems("", false);
                }

                var leadershipLevelsCombo = $find("<%= rcbLeadershipLevels.ClientID %>");

                leadershipLevelsCombo.clearItems();
                leadershipLevelsCombo.disable();

                if (courseTypeValue == "1") {
                    var brandCategoriesCombo = $find("<%= rcbBrandCategories.ClientID %>");
                    var continentsCombo = $find("<%= rcbContinents.ClientID %>");

                    brandCategoriesCombo.clearItems();
                    brandCategoriesCombo.disable();

                    continentsCombo.clearItems();
                    continentsCombo.disable();
                }

                var performanceContributionCombo = $find("<%= rcbPerformanceContributions.ClientID %>");
                var competenciesCombo = $find("<%= rcbCompetencies.ClientID %>");
                var categoriesCombo = $find("<%= rcbCategories.ClientID %>");

                performanceContributionCombo.clearItems();
                performanceContributionCombo.disable();

                competenciesCombo.clearItems();
                competenciesCombo.disable();

                categoriesCombo.clearItems();
                categoriesCombo.disable();
            }

            function ddlAssociations_Changed() {
                var courseTypeIndex = $get('<%=ddlCourseTypes.ClientID %>').selectedIndex;
                var courseTypeValue = $get('<%=ddlCourseTypes.ClientID %>').options[courseTypeIndex].value;

                var positionTypesCombo = $find("<%= rcbPositionTypes.ClientID %>");

                if (positionTypesCombo != null) {
                    positionTypesCombo.clearItems();

                    positionTypesCombo.requestItems("", false);
                }

                var leadershipLevelsCombo = $find("<%= rcbLeadershipLevels.ClientID %>");

                leadershipLevelsCombo.clearItems();
                leadershipLevelsCombo.disable();

                if (courseTypeValue == "1") {
                    var brandCategoriesCombo = $find("<%= rcbBrandCategories.ClientID %>");
                    var continentsCombo = $find("<%= rcbContinents.ClientID %>");

                    brandCategoriesCombo.clearItems();
                    brandCategoriesCombo.disable();

                    continentsCombo.clearItems();
                    continentsCombo.disable();
                }

                var performanceContributionCombo = $find("<%= rcbPerformanceContributions.ClientID %>");
                var competenciesCombo = $find("<%= rcbCompetencies.ClientID %>");
                var categoriesCombo = $find("<%= rcbCategories.ClientID %>");

                performanceContributionCombo.clearItems();
                performanceContributionCombo.disable();

                competenciesCombo.clearItems();
                competenciesCombo.disable();

                categoriesCombo.clearItems();
                categoriesCombo.disable();
            }
        </script>
    </telerik:RadCodeBlock>
    <div style="width:954px; padding-bottom: 30px;">
        <div class="PageHeader">
            <asp:Image ID="Image1" runat="server" ImageUrl="~/sysimages/grad_cpage_sub.jpg" Height="22" Width="100%" />
            <img src="../sysimages/user1_monitor.png" width="24" height="24" alt="Manage" />
            <div style="margin-left: 30px; margin-top: -27px;">
                Manage Associations
            </div>
            <asp:Image ID="imgLine2" runat="server" ImageUrl="~/sysimages/line_dotted_pg.jpg" style="margin-top:22px;margin-bottom:22px;" /><br />
        </div>
        <br />
        <br />
        <div style="margin-top:22px;">
            <div style="text-align:left;">
                 <asp:Literal ID="CourseTitle" runat="server"></asp:Literal>
            </div>
            <asp:Literal ID="ValidationMessage" runat="server"></asp:Literal>
            <asp:HiddenField runat="server" ID="hdnAddOrEdit" />
            <asp:HiddenField runat="server" ID="hdnFormalOrInformalCourseId" />
            <asp:HiddenField runat="server" ID="hdnFormalOrInformal" />
            <asp:HiddenField runat="server" ID="hdnPositionTypes" />
            <asp:HiddenField runat="server" ID="hdnLeadershipLevels" />
            <asp:HiddenField runat="server" ID="hdnBrandCategories" />
            <asp:HiddenField runat="server" ID="hdnContinents" />
            <asp:HiddenField runat="server" ID="hdnPerformanceContributions" />
            <asp:HiddenField runat="server" ID="hdnCompetencies" />
            <asp:HiddenField runat="server" ID="hdnCategories" />
            <asp:HiddenField runat="server" ID="hdnFormAction" />
            <telerik:RadAjaxManagerProxy ID="AjaxManagerProxy1" runat="server">
                <AjaxSettings> 
                    <telerik:AjaxSetting AjaxControlID="rgMain">
                        <UpdatedControls>
                            <telerik:AjaxUpdatedControl ControlID="rgMain"></telerik:AjaxUpdatedControl>
                            <telerik:AjaxUpdatedControl ControlID="rwAddEdit"></telerik:AjaxUpdatedControl>
                            <telerik:AjaxUpdatedControl ControlID="ValidationMessage"></telerik:AjaxUpdatedControl>
                            <telerik:AjaxUpdatedControl ControlID="btnInsertUpdate"></telerik:AjaxUpdatedControl>
                            <telerik:AjaxUpdatedControl ControlID="hdnAddOrEdit"></telerik:AjaxUpdatedControl>
                        </UpdatedControls>
                    </telerik:AjaxSetting>
                    <telerik:AjaxSetting AjaxControlID="rwAddEdit">
                        <UpdatedControls>
                            <telerik:AjaxUpdatedControl ControlID="ValidationMessage"></telerik:AjaxUpdatedControl>
                            <telerik:AjaxUpdatedControl ControlID="rgMain"></telerik:AjaxUpdatedControl>
                            <telerik:AjaxUpdatedControl ControlID="btnInsertUpdate"></telerik:AjaxUpdatedControl>
                        </UpdatedControls>
                    </telerik:AjaxSetting>
                    <telerik:AjaxSetting AjaxControlID="btnInsert">
                        <UpdatedControls>
                            <telerik:AjaxUpdatedControl ControlID="btnInsertUpdate"></telerik:AjaxUpdatedControl>
                            <telerik:AjaxUpdatedControl ControlID="rwAddEdit"></telerik:AjaxUpdatedControl>
                            <telerik:AjaxUpdatedControl ControlID="ValidationMessageWindow"></telerik:AjaxUpdatedControl>
                            <telerik:AjaxUpdatedControl ControlID="ValidationMessage"></telerik:AjaxUpdatedControl>
                            <telerik:AjaxUpdatedControl ControlID="rgMain"></telerik:AjaxUpdatedControl>
                            <telerik:AjaxUpdatedControl ControlID="rwAddEdit"></telerik:AjaxUpdatedControl>
                        </UpdatedControls>
                    </telerik:AjaxSetting>
                    <telerik:AjaxSetting AjaxControlID="btnUpdate">
                        <UpdatedControls>
                            <telerik:AjaxUpdatedControl ControlID="btnInsertUpdate"></telerik:AjaxUpdatedControl>
                            <telerik:AjaxUpdatedControl ControlID="rwAddEdit"></telerik:AjaxUpdatedControl>
                            <telerik:AjaxUpdatedControl ControlID="ValidationMessageWindow"></telerik:AjaxUpdatedControl>
                            <telerik:AjaxUpdatedControl ControlID="ValidationMessage"></telerik:AjaxUpdatedControl>
                            <telerik:AjaxUpdatedControl ControlID="rgMain"></telerik:AjaxUpdatedControl>
                            <telerik:AjaxUpdatedControl ControlID="rwAddEdit"></telerik:AjaxUpdatedControl>
                        </UpdatedControls>
                    </telerik:AjaxSetting>
                    <telerik:AjaxSetting AjaxControlID="btnAddNew">
                        <UpdatedControls>
                            <telerik:AjaxUpdatedControl ControlID="btnInsertUpdate"></telerik:AjaxUpdatedControl>
                            <telerik:AjaxUpdatedControl ControlID="btnAddNew"></telerik:AjaxUpdatedControl>
                            <telerik:AjaxUpdatedControl ControlID="rwAddEdit"></telerik:AjaxUpdatedControl>
                        </UpdatedControls>
                    </telerik:AjaxSetting>
                </AjaxSettings> 
            </telerik:RadAjaxManagerProxy>
            <div style="height:40px;">
                <div style="float:left;padding-bottom:12px;">
                    <asp:Button ID="btnReturn" runat="server" Text="Return To Course Listing" 
                        onclick="btnReturn_Click" />
                </div>
                <div style="float:right;padding-bottom:12px;">
                    <asp:Button ID="btnAddNew" runat="server" Text="Add New Association" OnCommand="SetupAddEdit_Command" CommandName="SetupAddItem" />
                </div>
            </div>
            <telerik:RadGrid ID="rgMain" runat="server" OnHTMLExporting="rgMain_HTMLExporting" OnGridExporting="rgMain_GridExporting" OnItemCommand="rgMain_ItemCommand" OnItemCreated="rgMain_ItemCreated" OnPageSizeChanged="rgMain_PageSizeChanged" PageSize="50" OnNeedDataSource="rgMain_NeedDataSource">
                <PagerStyle Mode="NextPrevAndNumeric" />
                <MasterTableView DataKeyNames="CourseId, CourseType">
                    <Columns>
                        <telerik:GridBoundColumn HeaderStyle-Width="9%" ItemStyle-HorizontalAlign="Left" UniqueName="CourseType" HeaderText="Course Type" DataField="CourseType" HeaderStyle-HorizontalAlign="Left">
                        </telerik:GridBoundColumn>
                        <telerik:GridBoundColumn HeaderStyle-Width="9%" ItemStyle-HorizontalAlign="Left" UniqueName="PositionType" HeaderText="Position Type" DataField="PositionType" HeaderStyle-HorizontalAlign="Left">
                        </telerik:GridBoundColumn>
                        <telerik:GridBoundColumn HeaderStyle-Width="9%" ItemStyle-HorizontalAlign="Left" UniqueName="LeadershipLevel" HeaderText="Leadership Level" DataField="LeadershipLevel" HeaderStyle-HorizontalAlign="Left">
                        </telerik:GridBoundColumn>
                        <telerik:GridBoundColumn HeaderStyle-Width="9%" ItemStyle-HorizontalAlign="Left" UniqueName="BrandCategory" HeaderText="Brand Category" DataField="BrandCategory" HeaderStyle-HorizontalAlign="Left">
                        </telerik:GridBoundColumn>
                        <telerik:GridBoundColumn HeaderStyle-Width="9%" ItemStyle-HorizontalAlign="Left" UniqueName="Continent" HeaderText="Continent" DataField="Continent" HeaderStyle-HorizontalAlign="Left">
                        </telerik:GridBoundColumn>
                        <telerik:GridBoundColumn HeaderStyle-Width="9%" ItemStyle-HorizontalAlign="Left" UniqueName="PerformanceContribution" HeaderText="Performance Contribution" DataField="PerformanceContribution" HeaderStyle-HorizontalAlign="Left">
                        </telerik:GridBoundColumn>
                        <telerik:GridBoundColumn HeaderStyle-Width="9%" ItemStyle-HorizontalAlign="Left" UniqueName="Competency" HeaderText="Competency" DataField="Competency" HeaderStyle-HorizontalAlign="Left">
                        </telerik:GridBoundColumn>
                        <telerik:GridBoundColumn HeaderStyle-Width="9%" ItemStyle-HorizontalAlign="Left" UniqueName="CourseHeader" HeaderText="Course Header" DataField="CourseHeader" HeaderStyle-HorizontalAlign="Left">
                        </telerik:GridBoundColumn>
                        <telerik:GridBoundColumn HeaderStyle-Width="10%" ItemStyle-HorizontalAlign="Left" UniqueName="Type" HeaderText="Type" DataField="Type" HeaderStyle-HorizontalAlign="Left">
                        </telerik:GridBoundColumn>
                        <telerik:GridTemplateColumn HeaderStyle-HorizontalAlign="Center" HeaderStyle-Width="4%" HeaderText="Edit">
                            <ItemTemplate>
                                <asp:LinkButton ID="lbEdit" runat="server" Text="Edit" OnCommand="SetupAddEdit_Command" CommandName="SetupEditItem" CommandArgument='<%#Eval("CourseId") %>'></asp:LinkButton>
                            </ItemTemplate>
                        </telerik:GridTemplateColumn>
                        <telerik:GridTemplateColumn HeaderText="Manage Bullets" HeaderStyle-Width="8%" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center">
                        <ItemTemplate>
                            <asp:LinkButton ID="lblBullets" runat="server" Text="Manage Bullets" OnCommand="SetupAddEdit_Command" CommandName="SetupBulletItem" CommandArgument='<%#Eval("CourseId") %>'></asp:LinkButton>
                        </ItemTemplate>
                    </telerik:GridTemplateColumn>
                        <telerik:GridButtonColumn HeaderText="Delete" HeaderStyle-Width="5%" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center" CommandName="Delete" Text="Delete" UniqueName="column" ConfirmText="Are you sure you want to delete this Association?"></telerik:GridButtonColumn>
                    </Columns>
                </MasterTableView>
            </telerik:RadGrid>
            <telerik:RadWindow ID="rwAddEdit" EnableShadow="true" IconUrl="../sysimages/id_card_16x16.png" runat="server" Title="Add Association" CssClass="DialogWindow" 
                Width="850px" Left="100px" ReloadOnShow="true" ShowContentDuringLoad="false"
                Modal="true" Behaviors="Close" VisibleStatusbar="false" OnClientShow="ddlCourseTypes_Changed">
                <ContentTemplate>
                    <table id="Table1" cellspacing="1" cellpadding="3" width="775" border="0" style="margin-left:20px; margin-top: 12px;">
                        <tr>
                            <td colspan="2">
                                <asp:Literal ID="ValidationMessageWindow" runat="server"></asp:Literal>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2" style="font-size:12px;">
                                <span style="color:Red;">* indicates a required field</span>
                                <br />
                                <br />
                            </td>
                        </tr>
                        <tr>
                            <td style="font-size:12px;padding-bottom:9px;">
                                Course&nbsp;Type: <span style="color:Red;">*</span> 
                            </td>
                            <td align="left" style="padding-bottom:9px;">
                                <asp:DropDownList ID="ddlCourseTypes" onChange="javascript:ddlCourseTypes_Changed()" runat="server" style="font-size:12px;" AutoPostBack="false">
                                    <asp:ListItem Value="1" Text="Formal"></asp:ListItem>
                                    <asp:ListItem Value="2" Text="Informal"></asp:ListItem>
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td style="font-size:12px;padding-bottom:9px;">
                                Association&nbsp;Type: <span style="color:Red;">*</span> 
                            </td>
                            <td align="left" style="padding-bottom:9px;">
                                <asp:DropDownList ID="ddlAssociationTypes" onChange="javascript:ddlAssociations_Changed()" AutoPostBack="false" runat="server" style="font-size:12px;">
                                    <asp:ListItem Value="1" Text="View Previous Associations"></asp:ListItem>
                                    <asp:ListItem Value="2" Text="Create New Associations"></asp:ListItem>
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td style="font-size:12px;padding-bottom:9px;">
                                Position&nbsp;Types: <span style="color:Red;">*</span> 
                            </td>
                            <td align="left" style="padding-bottom:9px;">
                                <telerik:RadComboBox ID="rcbPositionTypes" AutoPostBack="false" runat="server" CheckBoxes="true" ZIndex="100001" Width="500px" EnableCheckAllItemsCheckBox="false" OnClientItemChecked="PositionTypeChecked" OnClientSelectedIndexChanged="PositionTypeIndexChanged" onitemsrequested="rcbPositionTypes_ItemsRequested" OnClientItemsRequested = "PositionTypesLoaded">
                                </telerik:RadComboBox>
                            </td>
                        </tr>
                        <tr>
                            <td style="font-size:12px;padding-bottom:9px;">
                                Leadership&nbsp;Levels: <span style="color:Red;">*</span> 
                            </td>
                            <td align="left" style="padding-bottom:9px;">
                                <telerik:RadComboBox ID="rcbLeadershipLevels" AutoPostBack="false" runat="server" CheckBoxes="true" ZIndex="100001" Width="500px" EnableCheckAllItemsCheckBox="false" OnClientItemChecked="LeadershipLevelChecked" OnClientSelectedIndexChanged="LeadershipLevelIndexChanged" onitemsrequested="rcbLeadershipLevels_ItemsRequested" OnClientItemsRequested = "LeadershipLevelsLoaded"></telerik:RadComboBox>
                            </td>
                        </tr>
                        <tr clientidmode="Static" runat="server" id="trBrandCategory">
                            <td style="font-size:12px;padding-bottom:9px;">
                                Brand&nbsp;Categories: <span style="color:Red;">*</span> 
                            </td>
                            <td align="left" style="padding-bottom:9px;">
                                <telerik:RadComboBox ID="rcbBrandCategories" AutoPostBack="false" runat="server" CheckBoxes="true" ZIndex="100001" Width="500px" EnableCheckAllItemsCheckBox="false" OnClientItemChecked="BrandCategoryChecked" OnClientSelectedIndexChanged="BrandCategoryIndexChanged" onitemsrequested="rcbBrandCategories_ItemsRequested" OnClientItemsRequested = "BrandCategoriesLoaded"></telerik:RadComboBox>
                            </td>
                        </tr>
                        <tr clientidmode="Static" runat="server" id="trContinent">
                            <td style="font-size:12px;padding-bottom:9px;">
                                Continents: <span style="color:Red;">*</span> 
                            </td>
                            <td align="left" style="padding-bottom:9px;">
                                <telerik:RadComboBox ID="rcbContinents" AutoPostBack="false" runat="server" CheckBoxes="true" ZIndex="100001" Width="500px" EnableCheckAllItemsCheckBox="false" OnClientItemChecked="ContinentChecked" OnClientSelectedIndexChanged="ContinentIndexChanged" onitemsrequested="rcbContinents_ItemsRequested" OnClientItemsRequested = "ContinentsLoaded"></telerik:RadComboBox>
                            </td>
                        </tr>
                        <tr>
                            <td style="font-size:12px;padding-bottom:9px;">
                                Performance&nbsp;Contributions: <span style="color:Red;">*</span> 
                            </td>
                            <td align="left" style="padding-bottom:9px;">
                                <telerik:RadComboBox ID="rcbPerformanceContributions" AutoPostBack="false" runat="server" CheckBoxes="true" ZIndex="100001" Width="500px" EnableCheckAllItemsCheckBox="false" OnClientItemChecked="PerformanceContributionChecked" OnClientSelectedIndexChanged="PerformanceContributionIndexChanged" onitemsrequested="rcbPerformanceContributions_ItemsRequested" OnClientItemsRequested = "PerformanceContributionsLoaded"></telerik:RadComboBox>
                            </td>
                        </tr>
                        <tr>
                            <td style="font-size:12px;padding-bottom:9px;">
                                Competencies: <span style="color:Red;">*</span> 
                            </td>
                            <td align="left" style="padding-bottom:9px;">
                                <telerik:RadComboBox ID="rcbCompetencies" AutoPostBack="false" runat="server" CheckBoxes="true" ZIndex="100001" Width="500px" EnableCheckAllItemsCheckBox="false" OnClientItemChecked="CompetencyChecked" OnClientSelectedIndexChanged="CompetencyIndexChanged" onitemsrequested="rcbCompetencies_ItemsRequested" OnClientItemsRequested = "CompetenciesLoaded"></telerik:RadComboBox>
                            </td>
                        </tr>
                        <tr>
                            <td style="font-size:12px;padding-bottom:9px;">
                                Categories: <span style="color:Red;">*</span> 
                            </td>
                            <td align="left" style="padding-bottom:9px;">
                                <telerik:RadComboBox ID="rcbCategories" AutoPostBack="false" runat="server" CheckBoxes="true" ZIndex="100001" Width="500px" EnableCheckAllItemsCheckBox="false" OnClientItemChecked="CategoriesOnClientItemChecked" OnClientSelectedIndexChanged="CategoriesOnClientItemChecked" onitemsrequested="rcbCategories_ItemsRequested" OnClientItemsRequested = "CategoriesLoaded"></telerik:RadComboBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Button ID="btnInsert" Text='Insert'
                                    runat="server" OnClientClick="javascript: PostFormChecked(); return false;" Visible="false">
                                </asp:Button>
                                <asp:Button ID="btnUpdate" Text='Update'
                                    runat="server" OnClientClick="javascript: PostFormIndex(); return false;" Visible="false">
                                </asp:Button>
                            </td>
                        </tr>
                    </table>
                </ContentTemplate>
            </telerik:RadWindow>
        </div>
    </div>
</asp:Content>