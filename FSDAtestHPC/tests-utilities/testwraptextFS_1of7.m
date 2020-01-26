str='Paene insularum, Sirmio, insularumque ocelle, quascumque in liquentibus stagnis marique vasto fert uterque Neptunus, quam te libenter quamque laetus inviso, vix mi ipse credens Thuniam atque Bithunos liquisse campos et videre te in tuto. o quid solutis est beatius curis, cum mens onus reponit, ac peregrino labore fessi venimus larem ad nostrum, desideratoque acquiescimus lecto? hoc est quod unum est pro laboribus tantis. salve, o venusta Sirmio, atque ero gaude gaudente, vosque, o Lydiae lacus undae, ridete quidquid est domi cachinnorum.';
if verLessThan('matlab','8.1') ==1
warning('This function uses routine strjoin and works just with Matlab >=2013a')
else
Newstr=wraptextFS(str)
end
close all
save tempfileWS