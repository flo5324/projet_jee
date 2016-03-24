DROP TABLE IF EXISTS USERS;
DROP TABLE IF EXISTS CAMPAIGNS;
DROP TABLE IF EXISTS PARTICIPATIONS;
DROP TABLE IF EXISTS COMMENTS;


CREATE TABLE `USERS` (
  `ID_USER` int(11) NOT NULL AUTO_INCREMENT,
  `LOGIN` varchar(15) NOT NULL,
  `PASSWORD` varchar(60) NOT NULL,
  `FIRSTNAME` varchar(30) NOT NULL,
  `LASTNAME` varchar(30) NOT NULL,
  `MAILADRESS` varchar(30) NOT NULL,
  `BIRTHDATE` DATE NOT NULL,
  `SEX` int(11) NOT NULL
);

CREATE TABLE `CAMPAIGNS` (
  `ID_CAMPAIGN` int(11) NOT NULL AUTO_INCREMENT,
  `TITLE` varchar(60) NOT NULL,
  `EXPECTEDAMOUNT` decimal(12,0) NOT NULL,
  `DESCRIPTION` text NOT NULL,
  `DEADLINE` date NOT NULL,
  `ID_USER` int(30) NOT NULL
);

CREATE TABLE `PARTICIPATIONS` (
  `ID_PARTICIPATION` int(11) NOT NULL AUTO_INCREMENT,
  `ID_PROJET` int(11) NOT NULL,
  `ID_USER` int(11) NOT NULL,
  `DATEPARTICIPATION` date NOT NULL,
  `DONATION` decimal(10,0) NOT NULL,
  `MESSAGE` text NOT NULL
);

CREATE TABLE `COMMENTS` (
  `ID_COMMENTS` int(11) NOT NULL AUTO_INCREMENT,
  `TITLE` varchar(15) NOT NULL,
  `MESSAGE` text NOT NULL,
  `PUBLISHED` date NOT NULL,
  `ID_USER` int(11) NOT NULL,
  `ID_CAMPAIGN` int(11) NOT NULL
);


ALTER TABLE `USERS`
  ADD PRIMARY KEY (`ID_USER`);
  
ALTER TABLE `CAMPAIGNS`
  ADD PRIMARY KEY (`ID_CAMPAIGN`);

ALTER TABLE `PARTICIPATIONS`
  ADD PRIMARY KEY (`ID_PARTICIPATION`);

ALTER TABLE `COMMENTS`
  ADD PRIMARY KEY (`ID_COMMENTS`);
  
/*
 * UTILISATEURS
 */
INSERT INTO `USERS` (`LOGIN`, `PASSWORD`, `FIRSTNAME`, `LASTNAME`, `MAILADRESS`, `BIRTHDATE`, `SEX`) VALUES
('aubergine', '617562657267696e65', 'aubergine', '', 'aubergine@jardin.fr', '1989-02-12', 1),
('radis', '7261646973', 'radis', '', 'radis@jardin.fr', '1975-02-12', 0);
  
/*
 * CAMPAGNES
 */
INSERT INTO `CAMPAIGNS` (`TITLE`,`EXPECTEDAMOUNT`,`DESCRIPTION`,`DEADLINE`,`ID_USER`) VALUES
('Hero Corp saison 5',60000,
'<section class=from-editor><p style=line-height: 13.8666658401489px; text-align: center;>Voilà, la campagne vient de s&#39;achever avec un vrai rebond ces derniers jours. Merci infiniment à tous.</p><p style=line-height: 13.8666658401489px; text-align: center;>Cette somme va nous permettre de combler l&#39;absence du second diffuseur ainsi que le retrait de 20% de l&#39;éditeur de DVD.</p><p style=line-height: 13.8666658401489px; text-align: center;>Charge à nous maintenant de vous proposer un final digne de cette magnifique vague de soutien.</p><p style=line-height: 13.8666658401489px; text-align: center;>Et on vous tient très vite au courant pour la suite des évènements.</p><p style=line-height: 13.8666658401489px; text-align: center;><strong>MERCI!</strong></p><p style=line-height: 13.8666658401489px; text-align: center;>&nbsp;</p><p style=line-height: 13.8666658401489px; text-align: center;><span style=color: #FFFFFF;><span style=background-color: #800080;>[DERNIERE SEMAINE pour pousser encore plus loin le montant de la cagnotte </span></span></p><p style=line-height: 13.8666658401489px; text-align: center;><span style=color: #FFFFFF;><span style=background-color: #800080;>et combler le manque de financement suite au départ de notre second diffuseur&nbsp;!</span></span></p><p style=line-height: 13.8666658401489px; text-align: center;>&nbsp;</p><p style=line-height: 13.8666658401489px; text-align: center;><strong><span style=background-color: #AFEEEE;>Un début de campagne RECORD !!!&nbsp;</span></strong><span style=background-color: #AFEEEE;>Le premier palier à 60.000€ a été explosé en à peine 06h30...</span></p><p style=text-align: center;><span style=line-height: 13.8666658401489px; text-align: center;><span style=background-color: #AFEEEE;>Merci pour ce soutien incroyable et continuez à faire grimper la cagnotte et à partager cette page]&nbsp;</span></span></p><p style=text-align: justify;><img style=height: 220px; width: 650px; src=https://drfhlmcehrc34.cloudfront.net/cache/a/0/8d0e12eeb05d8c5ebbe8e28a070a63.jpg></p><p style=text-align: center;><strong>Hero Corp</strong> est une série créée et développée par <strong>Simon Astier</strong> et<strong> Calt Production</strong>.</p><p style=text-align: justify;>Depuis 2008, et 4 saisons, elle&nbsp;raconte l&#39;histoire de John, un jeune homme qui découvre que son existence est liée à l&#39;Agence de Super-Héros Hero Corp. Tiraillé entre les forces du Bien et du Mal, il sort les anciens super-héros de leur retraite et les mène vers de nouvelles missions.</p><p style=text-align: justify;>Seule série française à mêler l&#39;univers des super-héros avec la comédie, Hero Corp entretient un lien unique avec sa communauté de fans, les Hérocopains.</p><p style=text-align: justify;>Diffusée à l&#39;origine sur Comédie et France 4, et désormais sur France 4 uniquement, Hero Corp propose un point de vue humain sur les problématiques de ces surhommes, en y mélant humour, parcours initiatique et panache. Elle étend également sa narration avec des BD et un versant transmedia important, porté par une application et des webséries annexes à la diffusion télé.</p><p style=text-align: justify;><img style=height: 120px; width: 650px; src=https://drfhlmcehrc34.cloudfront.net/cache/7/7/ea6fb51bb858a17f77f0ab7ff7f927.png></p><p style=text-align: justify;>A l&#39;aube de clore la série avec cette <strong>cinquième et ultime saison</strong>, la question du financement partiel de ce final par la communauté s&#39;est posée. Avec la perte d&#39;un de nos partenaires historiques, nous souhaitons tout de même offrir le <strong>meilleur épilogue possible</strong> à cette aventure. Réhausser encore et toujours la <strong>qualité de l&#39;image</strong>, permettre un travail conséquent sur la post-production, notamment les <strong>effets spéciaux</strong>, pour donner tous les moyens possibles à Simon de raconter au mieux la fin de son histoire.</p><p style=text-align: justify;>Ceux qui suivent la série savent que nous travaillons dans une économie serrée. D&#39;autant plus avec la perte d&#39;un diffuseur. Vous savez aussi que les&nbsp;équipes&nbsp;artistique, technique, de production, ainsi que les différents prestataires, qui sont devenus comme une famille avec les années, s&#39;investissent totalement pour l&#39;existence de ce projet unique en France.</p><p style=text-align: justify;><strong>Cette énergie, cette cohésion, nous allons la garder ! </strong>C&#39;est&nbsp;vraiment pour<strong> tout mettre à l&#39;écran</strong>, gagner du&nbsp;temps de tournage et de post-production et faire de cette saison 5 un véritable <strong>bouquet final</strong>&nbsp;que nous nous engageons sur cette voie, avec vous.</p><p style=text-align: justify;>Nous connaissons l&#39;engagement des fans auprès de la série. Nous le vérifions tous les jours, par vos messages, votre enthousiasme lors de nos rencontres. Et quitte à partir sur le chemin du financement participatif, nous nous sommes dit qu&#39;il fallait proposer de <strong>chouettes contreparties</strong>.</p><p style=text-align: justify;>C&#39;est pourquoi nous avons pensé à ce grand vide-grenier, qui prend la forme d&#39;une <strong>immersion&nbsp;au sein de l&#39;Agence</strong>. Pour vous permettre de repartir avec des lots exclusifs, créés pour l&#39;occasion, pour vous <strong>tenir au courant</strong> de l&#39;avancement de la production, pour vous donner accès aux <strong>véritables costumes</strong> ayant servi sur les saisons précédentes,&nbsp;pour vous rencontrer une dernière fois lors de <strong>séances exceptionnelles</strong>, après la diffusion télé et célébrer tous ensemble cette page qui se tourne.</p><p style=text-align: justify;>Après une longue réflexion, si nous nous lançons, il faut faire de cette campagne un moment historique de rassemblement. De partage.&nbsp;Alors même si vous ne pouvez, ou ne souhaitez pas, participer financièrement, <strong>nous savons que nous pouvons compter sur vous</strong> pour partager cette page, parler de la campagne autour de vous et nous aider à atteindre nos objectifs, pour pouvoir vous proposer la meilleure conclusion possible et aller au bout de cette aventure ensemble.</p><p style=text-align: center;><img style=height: 120px; width: 650px; src=https://drfhlmcehrc34.cloudfront.net/cache/8/9/96e55e98f9dd39d1f65f91105abc64.png></p><p style=text-align: center;>Edit du 09/09/15</p><p style=text-align: center;><strong>Nouvelles Contreparties</strong></p><p style=text-align: center;><u>Suite au succès de ce début de campagne, </u></p><p style=text-align: center;><u>nous avons décidé de vous donner accès à plus de contreparties.</u></p><p>En premier lieu, nous allons éditer tout spécialement pour vous&nbsp;<u>un livre de photos de la saison 5.</u> Nicolas Auproux, qui a fait les magnifiques photos de la saison 4 revient cette année et va nous faire une <strong>série de portraits et de photos de vos personnages préférés</strong> que nous allons intégrer dans un livre au format 21cm x 21cm, d&#39;une trentaine de pages.</p><p>Pour&nbsp;<strong>45€</strong>, cet objet collector sera à&nbsp;votre disposition, sans les contreparties précédentes, et après la diffusion télé.</p><p><img style=height: 288px; width: 650px; src=https://drfhlmcehrc34.cloudfront.net/cache/a/e/125a7dc3543e7e50e6905e34a8bfa8.png></p><p style=text-align: center;><strong>Les costumes de la saison 5 déjà disponibles !!!</strong></p><p><u>Nous vous proposons également de repartir avec les dernières costumes de la série !</u></p><p>Pour&nbsp;<strong>350€</strong>, <u>un&nbsp;accessoire emblématique</u>&nbsp;de l&#39;intrigue de la saison 5 sera chez vous.</p><p>Pour&nbsp;<strong>450€</strong>, nous vous adressons <u>un&nbsp;costume simple&nbsp;d&#39;un des personnages</u>.</p><p>Pour&nbsp;<strong>550€</strong>, <u>un&nbsp;costume plus élaboré</u>, appartenant aux personnages historiques, mais aussi aux nouveaux.</p><p>Pour&nbsp;<strong>750€&nbsp;</strong>enfin, <u>un des quatre&nbsp;costumes de super-héros</u>&nbsp;iconique de cette dernière saison.</p><p>Il est difficile de vous parler de ces costumes, car nous ne voulons pas vous spoiler la suite des aventures de vos héros. Donc par soucis d&#39;équité, nous procéderons à un&nbsp;<strong>tirage au sort</strong>&nbsp;à l&#39;issu de la campagne pour répartir les différents lots.</p><p><img style=height: 288px; width: 650px; src=https://drfhlmcehrc34.cloudfront.net/cache/d/d/0d78ac0505e3a46ce610bdd768c209.png></p><p style=text-align: center;>Et enfin, pour&nbsp;<strong>900€</strong>, vous accédez au rang suprême.</p><p style=text-align: center;><u>&nbsp;Le plateau de tournage de la saison 5 vous ouvre ses portes</u>.</p><p>Vous aurez rendez-vous le <strong>vendredi 16 &nbsp;Octobre,</strong> à 11h à la gare de Saintes (17) pour être pris en charge pour la journée. <u>Déjeuner avec l&#39;équipe, visite des plateaux et hébergement le soir même.</u> Nous vous déposerons à nouveau à la gare de Saintes le lendemain à la même heure.&nbsp;</p><p style=text-align: center;>(la date est susceptible d&#39;être modifiée pour des raisons incombant à la production de la série.</p><p style=text-align: center;>Si c&#39;était le cas, nous préviendrons les personnes concernées le plus rapidement possible.)</p><p style=text-align: center;><img style=height: 288px; width: 650px; src=https://drfhlmcehrc34.cloudfront.net/cache/e/2/416a6d8c070806c32c37a91b42f821.png></p><p style=text-align: center;>&nbsp;</p><p>Pour seulement <strong>5€</strong>, vous recevez une <u>photo de l&#39;équipe</u> de tournage par mail. Une photo exclusive à la campagne, pour vous remercier de votre engagement auprès de la série.</p><p>Pour <strong>15€</strong>, votre <u>nom figurera sur l&#39;édition DVD</u> de la saison 5, pour marquer à jamais votre participation à cette aventure finale en tant que généreux contributeur.</p><p style=text-align: center;><img style=height: 443px; width: 650px; src=https://drfhlmcehrc34.cloudfront.net/cache/4/7/4ce522f3c0cc1a29fb529ad5054f4f.png></p><p>Pour <strong>25€</strong>, vous recevez, en plus de ceci, <u>un polo</u> créé tout spécialement pour l&#39;évènement. Sobre, élégant, unisexe, il vous permet d&#39;afficher aux yeux du monde votre soutien à la série en toutes circonstances. Tailles disponibles : S, M, L, XL et XXL, à préciser par retour de mail à la fin de la campagne.</p><p style=text-align: center;><img style=height: 288px; width: 650px; src=https://drfhlmcehrc34.cloudfront.net/cache/b/4/c61798b65a445ba9ddfca56f100f61.png></p><p>Pour <strong>55€</strong>, un <u>envoyé spécial vous tient au courant de l&#39;avancée de la production</u> de la saison 5. Sur place, il communique avec vous, vous donne accès tous les jours à des documents du tournage, à des photos, des vidéos ou même au menu de la cantine.&nbsp;</p><p><img style=height: 142px; width: 650px; src=https://drfhlmcehrc34.cloudfront.net/cache/0/7/b6d428c0f0f4769147b43513020fe4.png></p><p>Pour <strong>85€</strong>, c&#39;est la bilbiothèque de l&#39;Agence qui vous ouvre ses portes!&nbsp;Vous recevrez par mail <u>TOUTES les illustrations d&#39;Olivier Peru</u> autour de la série. Des planches originales des génériques, aux plans comics des débuts d&#39;épisode, en passant par les couvertures d&#39;Hero News...</p><p>Pour <strong>125€</strong>, c&#39;est le <u>grand debriefing</u> de la saison 5. Cinq soirées sont organisées à travers la France avec à chaque fois 4 ou 5 comédiens. On regardera ensemble les derniers épisodes, on en discutera et surtout on fêtera une dernière fois tous ensemble cette aventure qui dure depuis 7 ans maintenant. Des surprises ne sont pas à exclure.</p><p>Pour <strong>205€</strong>, c&#39;est le premier palier d&#39;accès aux <u>vrais costumes</u> ayant servi lors des tournages précédents. Oui, pour des prix accessibles, nous vous offrons la possibilité de partir avec un costume exclusif et unique.</p><p><img style=height: 116px; width: 650px; src=https://drfhlmcehrc34.cloudfront.net/cache/5/d/36ed862d3a988cfbae9016dbbd4118.png></p><p>Pour <strong>305€</strong>, c&#39;est le côté obscur de la série. Les vilains. Les H. Les I:I. Qui vous laissent <u>leurs costumes</u>. Pour le même prix qu&#39;un beau costume d&#39;Halloween, vous repartez avec le vrai costume d&#39;Eraste ou d&#39;Hypnos. Nettement plus classe. Et flippant.</p><p><img style=height: 116px; width: 650px; src=https://drfhlmcehrc34.cloudfront.net/cache/8/4/ef99f04fae0433193cec99ea6047e3.png></p><p>Pour <strong>405€</strong>, vous avez l&#39;opportunité de recevoir chez vous un <u>pack complet de costumes</u> d&#39;un de vos héros préférés. Oui, oui, les vrais costumes que vous avez vu à l&#39;écran seront dans votre dressing.&nbsp;</p><p style=text-align: center;><img style=height: 461px; width: 650px; src=https://drfhlmcehrc34.cloudfront.net/cache/e/7/109a3ddd0a43f6aea65d8ddf32d469.png></p><p>Pour <strong>555€</strong>, vous accédez au Graal du fan de série. <u>Le vrai costume du héros principal</u>. Trois tenues de John n&#39;attendent que vous. Mais faites vite, il n&#39;y en a que trois et ce sont des modéles uniques.</p><p style=text-align: center;><img style=height: 116px; width: 650px; src=https://drfhlmcehrc34.cloudfront.net/cache/9/4/1f94f44f2802e93fb6cf89502cadc6.png></p><p style=text-align: center;>&nbsp;</p><p style=text-align: center;>&nbsp;</p><p style=text-align: center;>Pour visualiser au mieux l&#39;ensemble des costumes proposés,</p><p style=text-align: center;>Rendez-vous sur l&#39;album dédié de la page <a rel=nofollow href=http://facebook.com/HeroCorp target=_blank>FB Hero Corp</a></p><p style=text-align: center;>&nbsp;</p><p style=text-align: center;>&nbsp;</p></section>'
,'2016-03-24',1),
('Sauvez Walter White !',600000,
' <h1><font><font>Walter White</font></font></h1> <h3 class="yellow"><font><font>Père, Mari &amp; Professeur</font></font></h3> <ul id="first_row"> <li><img src="http://www.savewalterwhite.com/img/walter_1.jpg" alt=""></li></ul> <ul id="second_row"> <li><img src="http://www.savewalterwhite.com/img/walter_2.jpg" alt=""></li><li><img src="http://www.savewalterwhite.com/img/walter_3.jpg" alt=""></li><li><img src="http://www.savewalterwhite.com/img/walter_4.jpg" alt=""></li></ul> <ul id="third_row"> <li><img src="http://www.savewalterwhite.com/img/walter_5.jpg" alt=""></li></ul> <p class="medium-copy yellow justify"><font><font> Mon père est incroyable. </font><font>Il est drôle, mais je ne savais pas que jusqu&#39;à ce que </font></font><br><font><font> j&#39;appris qu&#39;il allait mourir. </font><font>Qu&#39;il allait arriver </font></font><br><font><font> bientôt. </font><font>Qu&#39;il était réel. </font><font>Alors je pensais à beaucoup de choses. </font></font><br><font><font> Ce que je n&#39;y </font><font>avais pas pensé depuis longtemps. </font><font>Je suppose que </font><font>je sorte de </font></font><br><font><font> lui de pris pour acquis ou quelque chose. </font><font>Je veux dire, nos parents sont </font></font><br><font><font> juste toujours là. </font><font>Vous attendez à être toujours écoute vous </font></font><br><font><font> pour nettoyer votre chambre ou étudier plus ou avoir de </font><font>bonnes manières ou </font></font><br><font><font> essayer de </font><font>nouvelles choses à grandir pour être un plus équilibré personne , </font><font>un </font></font><br><font><font> jour. </font><font>Et assurez - </font><font>vous de </font><font>se lever tôt le week - </font><font>end pour avoir </font></font><br><font><font> " le </font><font>temps de la </font><font>famille» et tout ce que d&#39; </font><font>autres choses que l&#39; </font><font>habitude de me conduire </font></font><br><font><font> fou. </font><font>Je ne me sens pas de </font><font>cette façon maintenant. </font><font>Tout est différent puisque </font></font><br><font><font> papa a </font><font>obtenu son diagnostic. </font><font>Depuis je me suis rendu un jour dans le </font></font><br><font><font> futur proche, il pourrait ne pas être là pour me rendre fou.</font></font></p><p class="small-copy yellow justify"><font><font> Maintenant , </font><font>je me </font><font>sens chanceux quand il me demande de ma journée (je détestais tout à </font><font>fait que la </font></font><br><font><font> question) ou me harcèle à </font><font>propos de </font><font>rentrer à la </font><font>maison à temps la nuit et étant respon- </font></font><br><font><font> sible. </font><font>Un jour , </font><font>il ne sera pas ici pour demander. </font><font>Maintenant , </font><font>je me </font><font>sens chanceux quand j&#39;entends </font></font><br><font><font> sa voiture en </font><font>tirant dans l&#39;allée après l&#39; </font><font>école. </font><font>J&#39;ai même envie de le cough- entendre </font></font><br><font><font> ing. </font><font>Cela signifie qu&#39;il est toujours là. </font><font>Pourtant mon père.</font></font></p><ul id="fourth_row"> <li><img src="http://www.savewalterwhite.com/img/walter_6.jpg" alt=""></li><li><img src="http://www.savewalterwhite.com/img/walter_7.jpg" alt=""></li></ul> <p class="small-copy white"><font><font> Mon père est le professeur de chimie à mon école secondaire et il est fâcheusement intelligent. </font></font><br><font><font> Je veux dire, super brainiac ennuyeux. </font><font>Il connaît les choses les </font><font>plus aléatoire. </font><font>Comme la </font></font><br><font><font> façon dont à la </font><font>température ambiante, le </font><font>mercure est le seul métal qui est sous forme liquide. </font></font><br><font><font> Et l&#39; </font><font>eau se </font><font>dilate en baisse de température, et par le temps , </font><font>il est gelé , </font><font>il </font></font><br><font><font> prend environ 9% de </font><font>plus d&#39; </font><font>espace. </font><font>Ou que si vous versez lentement une poignée de sel </font></font><br><font><font> dans un verre totalement rempli d&#39;eau, il ne débordera pas. </font><font>En fait, le niveau de l&#39; </font><font>eau </font></font><br><font><font> va baisser. </font><font>Il a toujours laisser tomber les petits faits à </font><font>propos de </font><font>tout. </font><font>Il </font></font><br><font><font> ne réalise pas ce qu&#39;est un connaisseur qu&#39;il est pour le </font><font>faire, il est juste vraiment dans la </font><font>chimie. </font></font><br><font><font> Je pense qu&#39;il ne comprend vraiment pas que tout le </font><font>monde est. </font><font>Il aime cuisiner </font></font><br><font><font> parce que la </font><font>chimie - la </font><font>plupart du </font><font>temps il fait le </font><font>petit déjeuner - parce qu&#39;il dit chimiques </font></font><br><font><font> cal réactions se produisent tout le temps dans la </font><font>cuisine et il est toujours expliquer comme il </font></font><br><font><font> va. </font><font>Je ne prends pas sa classe à l&#39; </font><font>école mais je l&#39; </font><font>entends , </font><font>il est un très bon professeur. </font></font><br><font><font> Il reçoit beaucoup de pratique à la </font><font>maison, qui est sûr.</font></font></p><p class="small-copy white"><font><font> Tout le temps que </font><font>je suis au lycée (je suis un étudiant en </font><font>deuxième année) J&#39;ai toujours eu à </font></font><br><font><font> entendre ce que les </font><font>autres enfants pensaient de lui. </font><font>J&#39;étais toujours le fils de M. White. </font></font><br><font><font> (Parfois , </font><font>ils l&#39;appellent M. Wallabee qui est le nom du perdant totalement </font></font><br><font><font> chaussures qu&#39;il porte toujours). </font><font>Certains enfants dissed lui juste pour obtenir sur mes nerfs. </font></font><br><font><font> Certains enfants juste lui dissed période parce que ce que vous faites avec les </font><font>enseignants. </font></font><br><font><font> La chose est cependant, il attend tout le </font><font>monde à faire de </font><font>leur mieux , </font><font>tout comme il le </font><font>fait, </font></font><br><font><font> et quand vous ne tentez pas votre le </font><font>plus dur qu&#39;il ne vous coupe pas tout mou. </font><font>Voilà </font></font><br><font><font> comment il est à la </font><font>maison et à l&#39; </font><font>école. </font><font>Je ne viens de </font><font>comprendre ce qu&#39;est une bonne qua- </font></font><br><font><font> lité qui est. </font><font>Voilà ce qui le </font><font>rend courageux dans son combat contre </font><font>le cancer et ce qui </font></font><br><font><font> m&#39;a fait brave, aussi quand j&#39;étais plus jeune. </font><font>Que je voulais être ou non. </font></font><br><font><font> Quoi qu&#39;il en </font><font>soit, je voulais toujours juste être un gamin régulière à l&#39; </font><font>école mais à </font><font>cause de </font></font><br><font><font> mon père étant un enseignant là j&#39;étais différent. </font><font>Je me rends compte deux choses maintenant. Tout d&#39; </font></font><br><font><font> abord, je suis déjà différent parce que j&#39;ai CP donc c&#39;est un fait accompli. </font></font><br><font><font> Et deux, il est le bon père pour moi. </font><font>Je ne peux pas faire beaucoup de choses physiques BE- </font></font><br><font><font> cause de mon handicap et c&#39;est d&#39; </font><font>accord avec mon père et il ne serait pas avec un </font></font><br><font><font> grand nombre d&#39;autres papas j&#39;ai rencontrés. </font><font>Ils seraient déçus parce qu&#39;ils sont dans le </font></font><br><font><font> sport ou autre chose. </font><font>Je veux dire, mon père n&#39;a pas de handicap , </font><font>mais vous sûr </font></font><br><font><font> ne voudrais pas le </font><font>voir jeter un ballon de </font><font>football. </font><font>Donc , </font><font>de cette façon, nous nous entendons. </font><font>Il </font></font><br><font><font> est logique qu&#39;il est mon père et je suis son fils. </font><font>Mon point est, je ne me soucie pas </font></font><br><font><font> de ce que les enfants à l&#39; </font><font>école disent plus. </font><font>L&#39;essentiel est qu&#39;il est un bon </font></font><br><font><font> enseignant et personne ne peut dire qu&#39;il ne se </font><font>soucie pas de ce qu&#39;il fait. </font><font>Je sais qu&#39;il </font></font><br><font><font> se soucie. </font><font>Après notre famille, la </font><font>chimie et l&#39; </font><font>enseignement des </font><font>enfants est ce qu&#39;il aime le </font></font><br><font><font> mieux. </font><font>Je veux vraiment faire en </font><font>sorte qu&#39;il arrive à continuer à </font><font>faire ce qu&#39;il aime faire </font></font><br><font><font> pendant une longue période. </font><font>Pour lui, pour ses étudiants, et pour moi et ma famille.</font></font></p><p class="small-copy white"><font><font> Ça a été un moment très difficile dans notre famille depuis que </font><font>mon père a </font><font>eu le </font><font>cancer. </font><font>Non </font></font><br><font><font> qu&#39;il n&#39;y a jamais un bon moment pour quelque chose d&#39; </font><font>aussi terrible et aussi effrayant que cela, </font></font><br><font><font> mais il était sûr un mauvais moment pour nous. </font><font>Ma mère était enceinte de ce qu&#39;elle appelle </font></font><br><font><font> un bébé de surprise (qui est maintenant Holly et même si elle est un nouveau - </font><font>né , </font><font>elle est en </font></font><br><font><font> fait mignon) et mon père avait un emploi supplémentaire après l&#39; </font><font>école pour essayer de les </font><font>aider à </font><font>payer </font></font><br><font><font> toutes les factures régulières. </font><font>Et ce fut avant qu&#39;il ait obtenu son diagnostic. </font><font>Nous </font></font><br><font><font> n&#39;avons beaucoup d&#39;argent , </font><font>mais nous faisions bien jusqu&#39;à ce que tous les frais médicaux. </font><font>Et </font></font><br><font><font> mon père est très fier - d&#39; </font><font>accord, vraiment fier - et ne veut pas prendre tère </font></font><br><font><font> lité. </font><font>Voilà pourquoi je fais cela. </font><font>Non pas parce que je veux le </font><font>rendre fou ou </font></font><br><font><font> contrarié, mais parce que je veux qu&#39;il ait une chance de se </font><font>battre , </font><font>peu importe quoi.</font></font></p><p class="small-copy white"><font><font> Une chose que </font><font>je ne comprends pas pourquoi sauver la vie de quelqu&#39;un coûte plus d&#39;une </font></font><br><font><font> personne ordinaire peut payer. </font><font>Et pourquoi certains docteur (généralement les meilleurs d&#39;entre </font><font>eux) ne </font></font><br><font><font> prennent l&#39; </font><font>assurance. </font><font>Je pense que cela est faux. </font><font>Je veux dire, l&#39; </font><font>une des grandes raisons pour </font><font>lesquelles </font></font><br><font><font> mon père ne voulait pas obtenir un </font><font>traitement du tout , </font><font>en premier lieu parce qu&#39;il était </font></font><br><font><font> ne voulait pas nous laisser avec une dette énorme. </font><font>C&#39;est la chose au </font><font>sujet de </font><font>mon </font></font><br><font><font> père - il nous aime plus que tout. </font><font>Plus de lui - </font><font>même. </font><font>Mais nous voulons lui </font></font><br><font><font> autour et nous voulons lui pour essayer tout ce qu&#39;il peut pour rester avec nous aussi longtemps que </font></font><br><font><font> possible. </font><font>Cette chirurgie est la seule chance qu&#39;il ya à sauver sa vie. </font><font>Et nous </font></font><br><font><font> ne pouvons pas le </font><font>permettre. </font><font>Et chaque jour qui passe est un jour de </font><font>moins je vais avoir avec </font></font><br><font><font> lui. </font><font>Et je ne veux pas dire à </font><font>ma petite sœur de mon père. </font><font>Je veux qu&#39;elle </font></font><br><font><font> le connaissait pour elle - </font><font>même.</font></font></p><div class="ribbons"> <p class="large-copy yellow middle"><font><font>Quel merveilleux papa je l&#39; </font><font>ai, </font></font><br><font><font>mais il est en difficulté.</font></font></p></div><p class="large-copy yellow middle"><font><font>Il est le </font><font>cancer du </font><font>poumon. </font></font><br><font><font>Il a </font><font>besoin d&#39; </font><font>une opération. </font><font>Maintenant!</font></font></p><p class="large-copy dark-yellow middle"><font><font>Pour vous </font><font>aider, s&#39;il vous plaît envoyer votre contribution </font></font><br><font><font>à notre fonds de fonctionnement </font></font><br><font><font> et de </font><font>garder mon père dans vos prières!</font></font></p><div id="banner-container"><img src="http://www.savewalterwhite.com/img/save_walter_banner.png" alt="Enregistrer Walter White"></div><div id="donate-container"> <a target="_new" title="Cliquez ici pour un don" href="http://www.amctv.com/shows/breaking-bad"> <img src="http://www.savewalterwhite.com/img/donate_button.png" alt="Cliquez ici pour un don"> </a> </div><div id="donations-so-far"> <p class="medium-copy white middle"><font><font>TOUT MONTANT serait appréciée!</font></font></p><p class="medium-copy yellow middle"><font><font></font></font></p></div>'
,'2016-04-12',2),
('Lancement de ZeratoR TV',30000,
' <div class="mobile"> <div class="padded-top"> <div class="gauge fullscale clearfix"> <div class="graph overflow"> <div style="width:100%;" class="fill-completed"></div></div><p class="infos invested infos-invested"> 31&nbsp;949&nbsp;€ <br><span>sur 3&nbsp;000&nbsp;€</span> </p><p class="infos timeleft"> <span>Projet financé le</span><br><span>22 mai 2013</span> </p><p></p></div></div></div><ul class="mmc-modules" data-general-options=""><li data-media-ids="641651" class="module module-image" data-type="image" data-options="url=%2FmmcMediaPlugin%2Fmedia%2Fimage%2Fff%2Fff1278e66cb15.png&amp;media_id=641651&amp;name=&amp;title=&amp;click=image&amp;link="><div class="module-content"> <div class="module-content module-image"> <a href="https://www.mymajorcompany.com/mmcMediaPlugin/media/image/ff/ff1278e66cb15.png" target="_blank" class="image-box"> <img class="preview" src="https://www.mymajorcompany.com/mmcMediaPlugin/media/image/ff/ff1278e66cb15.png" alt=""> </a> </div></div></li><li class="module module-text" data-type="text" data-options=""><div class="module-content"><div>LE PROJET A ÉTÉ FINANCÉ, MERCI A TOUTES ET A TOUS POUR VOTRE PARTICIPATION,<br><br></div><div>&nbsp;<u><b>RENDEZ VOUS LE 24 JUIN à 20h sur <a href="http://www.ZeratoR.com">www.ZeratoR.com </a></b></u><br><br></div><div>POUR LES INFOS, LES PROJETS, LES NOUVEAUTÉS, ETC...<br></div><br><br><br>Voici le descriptif du projet :<br><br>Venez nous aider à lancer une <b>WebTV</b> qui envoie du steak/pâté/fougères...<br><br><i><b>Sachez que la somme de 3000 euros a été choisie car plus vite les fonds sont levés, plus vite les streams s&#39;amélioreront! Il n&#39;y a évidemment pas de limites budgétaires dans ce projet, et si vous voulez donner des milliards d&#39;euros, faites vous plaisir </b></i><i><b>!</b></i><br><br><b><i>Qui suis-je ?</i><br></b><p>ZeratoR, Streameur/Shoutcaster/Videomaker/Créateur de contenu vidéo. Depuis 2010 je réalise des live à propos du jeux vidéo sur des chaines en direct via le site Dailymotion. J&#39;ai aujourd&#39;hui un groupe qui me suis assez important pour me pousser à me lancer seul dans un projet ambitieux<br></p><i><br></i><p><i><b>Mon projet :</b></i><br>Ayant beaucoup hésité à faire appel aux dons, c&#39;est aujourd&#39;hui que je viens vers vous avec cette proposition de financement afin de monter une WebTV 100% Fun et professionnelle à la fois et qui marchera 24h/24h 7j/7j avec des locaux situés à Montpellier. Mais pour commencer, il faut un peu de matériel :<br><br></p><p><i><b>A quoi va servir cet argent ?</b></i><br>Il pourra servir à beaucoup de choses et c&#39;est pour ça que la limite des 3000 reste "symbolique" :</p><p>-Financer une partie du matériel (PC, Caméra, Son, lumière...)<br>-Organiser des événements (Cash prize de compétitions, déplacement, regroupement dans des villes de France)<br>-Salarier des professionnels du métier (Régisseurs, Streameurs, animateurs...)<br>-Aide quotidienne...<br><br></p><p><b><i>Les contreparties :</i><br></b></p><p style="width:414px;"> </p><p>Il existe plusieurs contreparties en fonction de ce que chacun peut donner, en espérant qu&#39;elles vous plairont selon ce que vous êtes prêts à nous accorder.<br></p><p>Suivez aussi le projet sur Facebook et Twitter !</p><p><br></p><p><i><b>Voici les réseaux sociaux sur lesquels vous pouvez me suivre :</b></i></p><p><a target="_blank" href="http://www.facebook.com/ZeratoR">http://www.facebook.com/ZeratoR</a></p><p><a target="_blank" href="http://www.twitter.com/ZeratoRSC2">http://www.twitter.com/ZeratoRSC2</a></p><p><a target="_blank" href="http://www.youtube.com/user/ZeratoRSC2">http://www.youtube.com/user/ZeratoRSC2</a></p><p><a target="_blank" href="http://www.zerator.com">http://www.ZeratoR.com</a></p><p><br></p><p><i><b>Merci !</b></i></p><p>Enfin, tout ceci ne serait pas possible sans vous, et si le palier est atteint, vous aurez droit à de belles surprises !</p><p><br></p><p>Et merci aux 1500 viewers du 30 Avril 2013 ;), je compte sur vous!<br></p></div></li><li style="position: relative; z-index: 5; left: 0px; top: 0px;" data-type="image" class="module module-image" data-options="url=%2FmmcMediaPlugin%2Fmedia%2Fimage%2Fd9%2Fd9a7d3ab92815.png&amp;media_id=618656&amp;name=&amp;title=&amp;click=image&amp;link=" data-media-ids="618656"><div class="module-content"> <div class="module-content module-image"> <a href="https://www.mymajorcompany.com/mmcMediaPlugin/media/image/d9/d9a7d3ab92815.png" target="_blank" class="image-box"> <img class="preview" src="https://www.mymajorcompany.com/mmcMediaPlugin/media/image/d9/d9a7d3ab92815.png" alt=""> </a> </div></div></li><li data-type="image" class="module module-image" data-options="url=%2FmmcMediaPlugin%2Fmedia%2Fimage%2F31%2F3111d08a82815.png&amp;media_id=618437&amp;name=&amp;title=&amp;click=image&amp;link=" data-media-ids="618437"><div class="module-content"> <div class="module-content module-image"> <a href="https://www.mymajorcompany.com/mmcMediaPlugin/media/image/31/3111d08a82815.png" target="_blank" class="image-box"> <img class="preview" src="https://www.mymajorcompany.com/mmcMediaPlugin/media/image/31/3111d08a82815.png" alt=""> </a> </div></div></li></ul>'
,'2016-05-12',1),
('Congrès Soins Palliatifs Montréal',1200,
'<p>En tant que membres salariés d''une Association nommée Réseau Cécilia - Coordination en soins palliatifs, et avec le soutien inconditionnel de notre Président, le Docteur Alain MARTIN, nous avons le projet d''équipe (infirmiers et assistantes sociales) d''assister au 21 ième Congrès international sur les soins palliatifs. Nous avons eu l''immense privilège de répondre à un appel d''intervention pour ce congrès...</p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<img alt="https://www.mymajorcompany.com/mmcMediaPlugin/media/image/c4/c4d52e53ad2f713e1919ddf83cf004e0e689d6cf.gif" src="https://www.mymajorcompany.com/mmcMediaPlugin/media/image/c4/c4d52e53ad2f713e1919ddf83cf004e0e689d6cf.gif"><br></p>&nbsp;&nbsp;<p>&nbsp;C''est Montréal qui nous a donné le terme soins palliatifs maintenant couramment employé dans le monde entier... Ce congrès c''est pour nous une rare occasion de mettre en commun nos expériences et de nous rencontrer pour échanger des idées avec des collègues de toutes les disciplines venus de 60 pays, personnel infirmier, médecins, travailleurs sociaux, ergothérapeutes, pharmaciens, psychologues, bénévoles, intervenants en soins spirituels...</p><p style="text-align: center;"><i><u><b>POURQUOI Y PARTICIPER?</b></u></i></p><p><u><b><i>POUR RENCONTRER</i></b></u>...des spécialistes et des collègues du monde entier</p><p><b><i><u>POUR&nbsp;DÉCOUVRIR</u></i></b>...les plus récentes découvertes et les tendances actuelles en soins palliatifs&nbsp;</p><p><b><i><u>POUR&nbsp;ÉCHANGER</u></i></b>...sur nos expériences et nos connaissances avec des intervenants en soins palliatifs</p><p><b style="text-decoration: underline;">POUR&nbsp;AMÉLIORER</b>...notre compréhension des questions et des enjeux dans le domaine.</p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</p><p><br></p>',
'2016-04-17',2);


/*
 * DONS
 */
INSERT INTO `PARTICIPATIONS` (`ID_PROJET`,`ID_USER`,`DATEPARTICIPATION`,`DONATION`,`MESSAGE`) VALUES
(1,1,'2016-03-22',400,'Trop hâte que cette série revienne !'),
(1,2,'2016-03-22',50,'Le retour :D'),
(2,1,'2016-03-22',10,'Say my name :'')');

INSERT INTO `COMMENTS` (`TITLE`, `MESSAGE`,`PUBLISHED`,`ID_USER`,`ID_CAMPAIGN`) VALUES
('Top !','Ce serait géniale que cette série revienne :p','2016-03-22',1,1),
('Woah !!!','J''en peux plus d''attendre !!','2016-03-22',2,1),
('Help','Il a besoin de nous !!','2016-03-22',1,2);
