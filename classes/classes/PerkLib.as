/**
 * Created by aimozg on 26.01.14.
 */
package classes
{
	import classes.Perks.*;
	import classes.GlobalFlags.*;

	public class PerkLib
	{

		// UNSORTED perks TODO these are mostly incorrect perks: tested but never created
		public static const Brawler:PerkType = mk("Brawler", "Brawler",
				"Brawling experience allows you to make two unarmed attacks in a turn.",
				"You choose the 'Brawler' perk, allowing you to make two unarmed attacks in a turn!");
		public static const Buttslut:PerkType = mk("Buttslut", "Buttslut",
				"");
		public static const Focused:PerkType = mk("Focused", "Focused",
				"");
/* Never used, removed because it used a numbered event. Could be re-implemented differently if some new monster actually uses it
		public static const LastStrike:PerkType = mk("Last Strike", "Last Strike",
				"");
		public static const AnalFertility:PerkType = mk("Anal Fertility", "Anal Fertility", //Not implemented
				"Unlocks the ability to get anally pregnant other than Satyrs.");
				
*/
		// Player creation perks
		public static const Fast:PerkType = mk("Fast", "Fast",
				"Gains speed 25% faster.");
		public static const Lusty:PerkType = mk("Lusty", "Lusty",
				"Gains lust 25% faster.");
		public static const Pervert:PerkType = mk("Pervert", "Pervert",
				"Gains corruption 25% faster. Reduces corruption requirement for high-corruption variant of scenes.");
		public static const Sensitive:PerkType = mk("Sensitive", "Sensitive",
				"Gains sensitivity 25% faster.");
		public static const Smart:PerkType = mk("Smart", "Smart",
				"Gains intelligence 25% faster.");
		public static const Strong:PerkType = mk("Strong", "Strong",
				"Gains strength 25% faster.");
		public static const Tough:PerkType = mk("Tough", "Tough",
				"Gains toughness 25% faster.");
				
		// Ascension perks
		public static const AscensionDesires:AscensionDesiresPerk = new AscensionDesiresPerk();
		public static const AscensionEndurance:AscensionEndurancePerk = new AscensionEndurancePerk();
		public static const AscensionFertility:AscensionFertilityPerk = new AscensionFertilityPerk();
		public static const AscensionFortune:AscensionFortunePerk = new AscensionFortunePerk();
		public static const AscensionMoralShifter:AscensionMoralShifterPerk = new AscensionMoralShifterPerk();
		public static const AscensionMysticality:AscensionMysticalityPerk = new AscensionMysticalityPerk();
		public static const AscensionTolerance:AscensionTolerancePerk = new AscensionTolerancePerk();
		public static const AscensionVirility:AscensionVirilityPerk = new AscensionVirilityPerk();
		public static const AscensionWisdom:AscensionWisdomPerk = new AscensionWisdomPerk();
		
		// Female creation perks
		public static const BigClit:PerkType = mk("Big Clit", "Big Clit",
				"Allows your clit to grow larger more easily and faster.");
		public static const BigTits:PerkType = mk("Big Tits", "Big Tits",
				"Makes your tits grow larger more easily.");
		public static const Fertile:PerkType = mk("Fertile", "Fertile",
				"Makes you 15% more likely to become pregnant.");
		public static const WetPussy:PerkType = mk("Wet Pussy", "Wet Pussy",
				"Keeps your pussy wet and provides a bonus to capacity.");
		// Male creation perks
		public static const BigCock:PerkType = mk("Big Cock", "Big Cock",
				"Gains cock size 25% faster and with less limitations.");
		public static const MessyOrgasms:PerkType = mk("Messy Orgasms", "Messy Orgasms",
				"Produces 50% more cum volume.");

		// History perks
		public static const HistoryAlchemist:PerkType = mk("History: Alchemist", "History: Alchemist",
				"Alchemical experience makes items more reactive to your body.");
		public static const HistoryFighter:PerkType = mk("History: Fighter", "History: Fighter",
				"A Past full of conflict increases physical damage dealt by 10%.");
		public static const HistoryFortune:PerkType = mk("History: Fortune", "History: Fortune",
				"Your luck and skills at gathering currency allows you to get 15% more gems from victories.");
		public static const HistoryHealer:PerkType = mk("History: Healer", "History: Healer",
				"Healing experience increases HP gains by 20%.");
		public static const HistoryReligious:PerkType = mk("History: Religious", "History: Religious",
				"Replaces masturbate with meditate when corruption less than or equal to 66. Reduces minimum libido slightly.");
		public static const HistoryScholar:PerkType = mk("History: Scholar", "History: Scholar",
				"Time spent focusing your mind makes spellcasting 20% less fatiguing.");
		public static const HistorySlacker:PerkType = mk("History: Slacker", "History: Slacker",
				"Regenerate fatigue 20% faster.");
		public static const HistorySlut:PerkType = mk("History: Slut", "History: Slut",
				"Sexual experience has made you more able to handle large insertions and more resistant to stretching.");
		public static const HistorySmith:PerkType = mk("History: Smith", "History: Smith",
				"Knowledge of armor and fitting increases armor effectiveness by roughly 10%.");
		public static const HistoryWhore:PerkType = mk("History: Whore", "History: Whore",
				"Seductive experience causes your tease attacks to be 15% more effective.");

		// Ordinary (levelup) perks
		public static const Acclimation:PerkType = mk("Acclimation", "Acclimation",
				"Reduces lust gain by 15%.",
				"You choose the 'Acclimation' perk, making your body 15% more resistant to lust, up to a maximum of 75%.");
		public static const Agility:PerkType = mk("Agility", "Agility",
				"Boosts armor points by a portion of your speed on light/medium armors.",
				"You choose the 'Agility' perk, increasing the effectiveness of Light/Medium armors by a portion of your speed.");
		public static const Archmage:PerkType = mk("Archmage", "Archmage",
				"[if (player.inte>=75)" +
						"Increases base spell strength by 50%." +
						"|" +
						"<b>You are too dumb to gain benefit from this perk.</b>" +
						"]",
				"You choose the 'Archmage' perk, increasing base spell strength by 50%.");
		public static const ArousingAura:PerkType = mk("Arousing Aura", "Arousing Aura",
				"Exude a lust-inducing aura (Req's corruption of 70 or more)",
				"You choose the 'Arousing Aura' perk, causing you to radiate an aura of lust when your corruption is over 70.");
		public static const Berzerker:PerkType = mk("Berzerker", "Berserker",
				"[if(player.str>=75)" +
						"Grants 'Berserk' ability." +
						"|" +
						"<b>You aren't strong enough to benefit from this anymore.</b>" +
						"]",
				"You choose the 'Berserker' perk, which unlocks the 'Berserk' magical ability.  Berserking increases attack and lust resistance but reduces physical defenses.");
		public static const Blademaster:PerkType = mk("Blademaster", "Blademaster",
				"Gain +10% to critical strike chance when wielding a sword and not using a shield.",
				"You choose the 'Blademaster' perk.  Your chance of critical hit is increased by 10% as long as you're wielding a sword and not using a shield.");
		public static const BrutalBlows:PerkType = mk("Brutal Blows", "Brutal Blows",
				"[if(player.str>=75)" +
						"Reduces enemy armor with each hit." +
						"|" +
						"<b>You aren't strong enough to benefit from this anymore.</b>" +
						"]",
				"You choose the 'Brutal Blows' perk, which reduces enemy armor with each hit.");
		public static const Channeling:PerkType = mk("Channeling", "Channeling",
				"Increases base spell strength by 50%.",
				"You choose the 'Channeling' perk, boosting the strength of your spellcasting!");
		public static const ColdBlooded:PerkType = mk("Cold Blooded", "Cold Blooded",
				"Reduces minimum lust by up to 20, down to min of 20. Caps min lust at 80.",
				"You choose the 'Cold Blooded' perk.  Thanks to increased control over your desires, your minimum lust is reduced! (Caps minimum lust at 80. Won't reduce minimum lust below 20 though.)");
		public static const CorruptedLibido:PerkType = mk("Corrupted Libido", "Corrupted Libido",
				"Reduces lust gain by 10%.",
				"You choose the 'Corrupted Libido' perk.  As a result of your body's corruption, you've become a bit harder to turn on. (Lust gain reduced by 10%!)");
		public static const DoubleAttack:PerkType = mk("Double Attack", "Double Attack",
				"[if (player.spe<50)" +
						"<b>You're too slow to double attack!</b>" +
						"|[if(player.str<61)" +
						"Allows you to perform two melee attacks per round." +
						"|" +
						"<b>You are stronger than double attack allows.  To choose between reduced strength double-attacks and a single strong attack, access \"Dbl Options\" in the perks menu.</b>" +
						"]]",
				"You choose the 'Double Attack' perk.  This allows you to make two attacks so long as your strength is at 60 or below.  By default your effective strength will be reduced to 60 if it is too high when double attacking.  <b>You can enter the perks menu at any time to toggle options as to how you will use this perk.</b>");
		public static const Evade:PerkType = mk("Evade", "Evade",
				"Increases chances of evading enemy attacks.",
				"You choose the 'Evade' perk, allowing you to avoid enemy attacks more often!");
		public static const FertilityMinus:PerkType = mk("Fertility-", "Fertility-",
				"Decreases fertility rating by 15 and cum volume by up to 30%. (Req's libido of less than 25.)",
				"You choose the 'Fertility-' perk, making it harder to get pregnant.  It also decreases your cum volume by up to 30% (if appropriate)!");
		public static const FertilityPlus:PerkType = mk("Fertility+", "Fertility+",
				"Increases fertility rating by 15 and cum volume by up to 50%.",
				"You choose the 'Fertility+' perk, making it easier to get pregnant.  It also increases your cum volume by up to 50% (if appropriate)!");
		public static const HoldWithBothHands:PerkType = mk("Hold With Both Hands", "Hold With Both Hands",
				"Gain +20% strength modifier with melee weapons when not using a shield.",
				"You choose the 'Hold With Both Hands' perk.  As long as you're wielding a melee weapon and you're not using a shield, you gain 20% strength modifier to damage.");
		public static const HotBlooded:PerkType = mk("Hot Blooded", "Hot Blooded",
				"Raises minimum lust by up to 20.",
				"You choose the 'Hot Blooded' perk.  As a result of your enhanced libido, your lust no longer drops below 20! (If you already have some minimum lust, it will be increased by 10)");
		public static const ImmovableObject:PerkType = mk("Immovable Object", "Immovable Object",
				"[if(player.tou>=75)" +
						"Grants 10% physical damage reduction.</b>" +
						"|" +
						"<b>You aren't tough enough to benefit from this anymore.</b>" +
						"]",
				"You choose the 'Immovable Object' perk, granting 10% physical damage reduction.</b>");
		public static const ImprovedEndurance:PerkType = mk("Improved Endurance", "Improved Endurance",
				"Increases maximum fatigue by 20.",
				"You choose the 'Improved Endurance' perk. Thanks to your physical conditioning, your maximum fatigue has been increased by 20!</b>");
		public static const ImprovedSelfControl:PerkType = mk("Improved Self-Control", "Improved Self-Control",
				"Increases maximum lust by 20.",
				"You choose the 'Improved Self-Control' perk. Thanks to your mental conditioning, your maximum lust has been increased by 20!</b>");
		public static const IronFists:PerkType = mk("Iron Fists", "Iron Fists",
				"Hardens your fists to increase attack rating by 5.",
				"You choose the 'Iron Fists' perk, hardening your fists. This increases attack power by 5.");
		public static const IronMan:PerkType = mk("Iron Man", "Iron Man",
				"Reduces the fatigue cost of physical specials by 50%.",
				"You choose the 'Iron Man' perk, reducing the fatigue cost of physical special attacks by 50%");
		public static const LightningStrikes:PerkType = mk("Lightning Strikes", "Lightning Strikes",
				"[if(player.spe>=60)" +
						"Increases the attack damage for non-heavy weapons.</b>" +
						"|" +
						"<b>You are too slow to benefit from this perk.</b>" +
						"]",
				"You choose the 'Lightning Strikes' perk, increasing the attack damage for non-heavy weapons.</b>");
		public static const LungingAttacks:PerkType = mk("Lunging Attacks", "Lunging Attacks",
				"[if(player.spe>=75)" +
						"Grants 50% armor penetration for standard attacks." +
						"|" +
						"<b>You are too slow to benefit from this perk.</b>" +
						"]",
				"You choose the 'Lunging Attacks' perk, granting 50% armor penetration for standard attacks.");
		public static const Mage:PerkType = mk("Mage", "Mage",
				"Increases base spell strength by 50%.",
				"You choose the 'Mage' perk.  You are able to focus your magical abilities even more keenly, boosting your base spell effects by 50%.");
		public static const Masochist:PerkType = mk("Masochist", "Masochist",
				"Take 20% less physical damage but gain lust when you take damage.",
				"You choose the 'Masochist' perk, reducing the damage you take but raising your lust each time!  This perk only functions while your libido is at or above 60!");
		public static const Medicine:PerkType = mk("Medicine", "Medicine",
				"Grants 15% chance per round of cleansing poisons/drugs from your body.",
				"You choose the 'Medicine' perk, giving you a chance to remove debilitating poisons automatically!");
		public static const Nymphomania:PerkType = mk("Nymphomania", "Nymphomania",
				"Raises minimum lust by up to 30.",
				"You've chosen the 'Nymphomania' perk.  Due to the incredible amount of corruption you've been exposed to, you've begun to live in a state of minor constant arousal.  Your minimum lust will be increased by as much as 30 (If you already have minimum lust, the increase is 10-15).");
		public static const Parry:PerkType = mk("Parry", "Parry",
				"[if(player.spe>=50)" +
						"Increases deflect chance by up to 10% while wielding a weapon. (Speed-based)." +
						"|" +
						"<b>You are not durable enough to gain benefit from this perk.</b>" +
						"]",
				"You choose the 'Parry' perk, giving you a chance to deflect blow with your weapon. (Speed-based).");
		public static const Precision:PerkType = mk("Precision", "Precision",
				"Reduces enemy armor by 10. (Req's 25+ Intelligence)",
				"You've chosen the 'Precision' perk.  Thanks to your intelligence, you're now more adept at finding and striking an enemy's weak points, reducing their damage resistance from armor by 10.  If your intelligence ever drops below 25 you'll no longer be smart enough to benefit from this perk.");
		public static const Regeneration:RegenerationPerk = new RegenerationPerk();
		public static const Regeneration2:Regeneration2Perk = new Regeneration2Perk();
		public static const Resistance:PerkType = mk("Resistance", "Resistance",
				"Reduces lust gain by 10%.",
				"You choose the 'Resistance' perk, reducing the rate at which your lust increases by 10%.");
		public static const Resolute:PerkType = mk("Resolute", "Resolute",
				"[if(player.tou>=75)" +
						"Grants immunity to stuns and some statuses.</b>" +
						"|" +
						"<b>You aren't tough enough to benefit from this anymore.</b>" +
						"]",
				"You choose the 'Resolute' perk, granting immunity to stuns and some statuses.</b>");
		public static const Runner:PerkType = mk("Runner", "Runner",
				"Increases chances of escaping combat.",
				"You choose the 'Runner' perk, increasing your chances to escape from your foes when fleeing!");
		public static const Sadist:PerkType = mk("Sadist", "Sadist",
				"Deal 20% more damage, but gain lust at the same time.",
				"You choose the 'Sadist' perk, increasing damage by 20 percent but causing you to gain lust from dealing damage.");
		public static const Seduction:PerkType = mk("Seduction", "Seduction",
				"Upgrades your tease attack, making it more effective.",
				"You choose the 'Seduction' perk, upgrading the 'tease' attack with a more powerful damage and a higher chance of success.");
		public static const ShieldMastery:PerkType = mk("Shield Mastery", "Shield Mastery",
				"[if(player.tou>=50)" +
						"Increases block chance by up to 10% while using a shield (Toughness-based)." +
						"|" +
						"<b>You are not durable enough to gain benefit from this perk.</b>" +
						"]",
				"You choose the 'Shield Mastery' perk, increasing block chance by up to 10% as long as you're wielding a shield (Toughness-based).");
		public static const ShieldSlam:PerkType = mk("Shield Slam", "Shield Slam",
				"Reduces shield bash diminishing returns by 50% and increases bash damage by 20%.",
				"You choose the 'Shield Slam' perk.  Stun diminishing returns is reduced by 50% and shield bash damage is increased by 20%.");
		public static const SpeedyRecovery:PerkType = mk("Speedy Recovery", "Speedy Recovery",
				"Regain fatigue 50% faster.",
				"You choose the 'Speedy Recovery' perk, boosting your fatigue recovery rate!");
		public static const Spellpower:PerkType = mk("Spellpower", "Spellpower",
				"Increases base spell strength by 50%.",
				"You choose the 'Spellpower' perk.  Thanks to your sizeable intellect and willpower, you are able to more effectively use magic, boosting base spell effects by 50%.");
		public static const Survivalist:PerkType = mk("Survivalist", "Survivalist",
				"Slows hunger rate by 20%.",
				"You choose the 'Survivalist' perk.  With this perk, your hunger rate is reduced by 20%.");
		public static const Survivalist2:PerkType = mk("Survivalist 2", "Survivalist 2",
				"Slows hunger rate by further 20%.",
				"You choose the 'Survivalist 2' perk.  With this perk, your hunger rate is reduced by another 20%.");
		public static const StrongBack:PerkType = mk("Strong Back", "Strong Back",
				"Enables fourth item slot.",
				"You choose the 'Strong Back' perk, enabling a fourth item slot.");
		public static const StrongBack2:PerkType = mk("Strong Back 2: Strong Harder", "Strong Back 2: Strong Harder",
				"Enables fifth item slot.",
				"You choose the 'Strong Back 2: Strong Harder' perk, enabling a fifth item slot.");
		public static const Tactician:PerkType = mk("Tactician", "Tactician",
				"[if(player.inte>=50)" +
						"Increases critical hit chance by up to 10% (Intelligence-based)." +
						"|" +
						"<b>You are too dumb to gain benefit from this perk.</b>" +
						"]",
				"You choose the 'Tactician' perk, increasing critical hit chance by up to 10% (Intelligence-based).");
		public static const Tank:PerkType = mk("Tank", "Tank",
				"Raises max HP by 50.",
				"You choose the 'Tank' perk, giving you an additional 50 HP!");
		public static const Tank2:PerkType = mk("Tank 2", "Tank 2",
				"+1 extra HP per point of toughness.",
				"You choose the 'Tank 2' perk, granting an extra maximum HP for each point of toughness.");
		public static const ThunderousStrikes:PerkType = mk("Thunderous Strikes", "Thunderous Strikes",
				"+20% 'Attack' damage while strength is at or above 80.",
				"You choose the 'Thunderous Strikes' perk, increasing normal damage by 20% while your strength is over 80.");
		public static const WeaponMastery:PerkType = mk("Weapon Mastery", "Weapon Mastery",
				"[if(player.str>60)" +
						"Doubles damage bonus of weapons classified as 'Large'." +
						"|" +
						"<b>You aren't strong enough to benefit from this anymore.</b>" +
						"]",
				"You choose the 'Weapon Mastery' perk, doubling the effectiveness of large weapons.");
		public static const WellAdjusted:PerkType = mk("Well Adjusted", "Well Adjusted",
				"You gain half as much lust as time passes in Mareth.",
				"You choose the 'Well Adjusted' perk, reducing the amount of lust you naturally gain over time while in this strange land!");

		// Needlework perks
		public static const ChiReflowAttack:PerkType = mk("Chi Reflow - Attack", "Chi Reflow - Attack",
				"Regular attacks boosted, but damage resistance decreased.");
		public static const ChiReflowDefense:PerkType = mk("Chi Reflow - Defense", "Chi Reflow - Defense",
				"Passive damage resistance, but caps speed");
		public static const ChiReflowLust:PerkType = mk("Chi Reflow - Lust", "Chi Reflow - Lust",
				"Lust resistance and Tease are enhanced, but Libido and Sensitivity gains increased.");
		public static const ChiReflowMagic:PerkType = mk("Chi Reflow - Magic", "Chi Reflow - Magic",
				"Magic attacks boosted, but regular attacks are weaker.");
		public static const ChiReflowSpeed:PerkType = mk("Chi Reflow - Speed", "Chi Reflow - Speed",
				"Speed reductions are halved but caps strength");

		// Piercing perks
		public static const PiercedCrimstone:PiercedCrimstonePerk = new PiercedCrimstonePerk();
		public static const PiercedIcestone:PiercedIcestonePerk = new PiercedIcestonePerk();
		public static const PiercedFertite:PiercedFertitePerk = new PiercedFertitePerk();
		public static const PiercedFurrite:PerkType = mk("Pierced: Furrite", "Pierced: Furrite",
				"Increases chances of encountering 'furry' foes.");
		public static const PiercedLethite:PerkType = mk("Pierced: Lethite", "Pierced: Lethite",
				"Increases chances of encountering demonic foes.");

		// Cock sock perks
		public static const LustyRegeneration:PerkType = mk("Lusty Regeneration", "Lusty Regeneration",
				"Regenerates 1% of HP per round in combat and 2% of HP per hour.");
		public static const MidasCock:PerkType = mk("Midas Cock", "Midas Cock",
				"Increases the gems awarded from victory in battle.");
		public static const PentUp:PentUpPerk = new PentUpPerk();
		public static const PhallicPotential:PerkType = mk("Phallic Potential", "Phallic Potential",
				"Increases the effects of penis-enlarging transformations.");
		public static const PhallicRestraint:PerkType = mk("Phallic Restraint", "Phallic Restraint",
				"Reduces the effects of penis-enlarging transformations.");

		// Armor perks
		public static const BloodMage:PerkType = mk("Blood Mage", "Blood Mage",
				"Spellcasting now consumes health instead of fatigue!");
		public static const SluttySeduction:SluttySeductionPerk = new SluttySeductionPerk();
		public static const WizardsEndurance:WizardsEndurancePerk = new WizardsEndurancePerk();

		// Weapon perks
		public static const WizardsFocus:WizardsFocusPerk = new WizardsFocusPerk();

		// Achievement perks
		public static const BroodMother:PerkType = mk("Brood Mother", "Brood Mother",
				"Pregnancy moves twice as fast as a normal woman's.");
		public static const SpellcastingAffinity:SpellcastingAffinityPerk = new SpellcastingAffinityPerk();

		// Mutation perks
		public static const Androgyny:PerkType = mk("Androgyny", "Androgyny",
				"No gender limits on facial masculinity or femininity.");
		public static const BasiliskWomb:PerkType = mk("Basilisk Womb", "Basilisk Womb",
				"Enables your eggs to be properly fertilized into basilisks of both genders!");
		public static const BeeOvipositor:PerkType = mk("Bee Ovipositor", "Bee Ovipositor",
				"Allows you to lay eggs through a special organ on your insect abdomen, though you need at least 10 eggs to lay.");
		public static const BimboBody:PerkType = mk("Bimbo Body", "Bimbo Body",
				"Gives the body of a bimbo.  Tits will never stay below a 'DD' cup, libido is raised, lust resistance is raised, and upgrades tease.");
		public static const BimboBrains:PerkType = mk("Bimbo Brains", "Bimbo Brains",
				"Now that you've drank bimbo liquer, you'll never, like, have the attention span and intelligence you once did!  But it's okay, 'cause you get to be so horny an' stuff!");
		public static const BroBody:PerkType = mk("Bro Body", "Bro Body",
				"Grants an ubermasculine body that's sure to impress.");
		public static const BroBrains:PerkType = mk("Bro Brains", "Bro Brains",
				"Makes thou... thin... fuck, that shit's for nerds.");
		public static const BunnyEggs:PerkType = mk("Bunny Eggs", "Bunny Eggs",
				"Laying eggs has become a normal part of your bunny-body's routine.");
		public static const CorruptedNinetails:PerkType = mk("Corrupted Nine-tails", "Corrupted Nine-tails",
				"The mystical energy of the nine-tails surges through you, filling you with phenomenal cosmic power!  Your boundless magic allows you to recover quickly after casting spells, but your method of attaining it has corrupted the transformation, preventing you from achieving true enlightenment.");
		public static const Diapause:PerkType = mk("Diapause", "Diapause",
				"Pregnancy does not advance normally, but develops quickly after taking in fluids.");
		public static const Dragonfire:PerkType = mk("Dragonfire", "Dragonfire",
				"Allows access to a dragon breath attack.");
		public static const EnlightenedNinetails:PerkType = mk("Enlightened Nine-tails", "Enlightened Nine-tails",
				"The mystical energy of the nine-tails surges through you, filling you with phenomenal cosmic power!  Your boundless magic allows you to recover quickly after casting spells.");
		public static const Feeder:PerkType = mk("Feeder", "Feeder",
				"Lactation does not decrease and gives a compulsion to breastfeed others.");
		public static const Flexibility:PerkType = mk("Flexibility", "Flexibility",
				"Grants cat-like flexibility.  Useful for dodging and 'fun'.");
		public static const FutaFaculties:PerkType = mk("Futa Faculties", "Futa Faculties",
				"It's super hard to think about stuff that like, isn't working out or fucking!");
		public static const FutaForm:PerkType = mk("Futa Form", "Futa Form",
				"Ensures that your body fits the Futa look (Tits DD+, Dick 8\"+, & Pussy).  Also keeps your lusts burning bright and improves the tease skill.");
		public static const HarpyWomb:PerkType = mk("Harpy Womb", "Harpy Womb",
				"Increases all laid eggs to large size so long as you have harpy legs and a harpy tail.");
		public static const Incorporeality:PerkType = mk("Incorporeality", "Incorporeality",
				"Allows you to fade into a ghost-like state and temporarily possess others.");
		public static const MilkMaid:MilkMaidPerk = new MilkMaidPerk();
		public static const MinotaurCumAddict:PerkType = mk("Minotaur Cum Addict", "Minotaur Cum Addict",
				"Causes you to crave minotaur cum frequently.  You cannot shake this addiction.");
		public static const MinotaurCumResistance:PerkType = mk("Minotaur Cum Resistance", "Minotaur Cum Resistance",
				"You can never become a Minotaur Cum Addict. Grants immunity to Minotaur Cum addiction.");
		public static const Oviposition:PerkType = mk("Oviposition", "Oviposition",
				"Causes you to regularly lay eggs when not otherwise pregnant.");
		public static const PurityBlessing:PerkType = mk("Purity Blessing", "Purity Blessing",
				"Reduces the rate at which your corruption, libido, and lust increase. Reduces minimum libido slightly.");
		public static const SlimeCore:PerkType = mk("Slime Core", "Slime Core",
				"Grants more control over your slimy body, allowing you to go twice as long without fluids.");
		public static const SpiderOvipositor:PerkType = mk("Spider Ovipositor", "Spider Ovipositor",
				"Allows you to lay eggs through a special organ on your arachnid abdomen, though you need at least 10 eggs to lay.");
		public static const ThickSkin:PerkType = mk("Thick Skin", "Thick Skin",
				"Toughens your dermis to provide 2 points of armor.");
		public static const TransformationResistance:PerkType = mk("Transformation Resistance", "Transformation Resistance",
				"Reduces the likelihood of undergoing a transformation. Disables Bad Ends from transformative items.");
				
		// Quest, Event & NPC perks
		public static const BasiliskResistance:PerkType = mk("Basilisk Resistance", "Basilisk Resistance",
				"Grants immunity to Basilisk's paralyzing gaze. Disables Basilisk Bad End.");
		public static const BulgeArmor:PerkType = mk("Bulge Armor", "Bulge Armor",
				"Grants a 5 point damage bonus to dick-based tease attacks.");
		public static const Cornucopia:PerkType = mk("Cornucopia", "Cornucopia",
				"Vaginal and Anal capacities increased by 30.");
		public static const ElvenBounty:ElvenBountyPerk = new ElvenBountyPerk();
		public static const FerasBoonAlpha:PerkType = mk("Fera's Boon - Alpha", "Fera's Boon - Alpha",
				"Increases the rate your cum builds up and cum production in general.");
		public static const FerasBoonBreedingBitch:PerkType = mk("Fera's Boon - Breeding Bitch", "Fera's Boon - Breeding Bitch",
				"Increases fertility and reduces the time it takes to birth young.");
		public static const FerasBoonMilkingTwat:PerkType = mk("Fera's Boon - Milking Twat", "Fera's Boon - Milking Twat",
				"Keeps your pussy from ever getting too loose and increases pregnancy speed.");
		public static const FerasBoonSeeder:PerkType = mk("Fera's Boon - Seeder", "Fera's Boon - Seeder",
				"Increases cum output by 1,000 mLs.");
		public static const FerasBoonWideOpen:PerkType = mk("Fera's Boon - Wide Open", "Fera's Boon - Wide Open",
				"Keeps your pussy permanently gaped and increases pregnancy speed.");
		public static const FireLord:PerkType = mk("Fire Lord", "Fire Lord",
				"Akbal's blessings grant the ability to breathe burning green flames.");
		public static const Hellfire:PerkType = mk("Hellfire", "Hellfire",
				"Grants a corrupted fire breath attack, like the hellhounds in the mountains.");
		public static const LuststickAdapted:PerkType = mk("Luststick Adapted", "Luststick Adapted",
				"Grants immunity to the lust-increasing effects of lust-stick and allows its use.");
		public static const MagicalFertility:PerkType = mk("Magical Fertility", "Magical Fertility",
				"10% higher chance of pregnancy and increased pregnancy speed.");
		public static const MagicalVirility:PerkType = mk("Magical Virility", "Magical Virility",
				"200 mLs more cum per orgasm and enhanced virility.");
		public static const MaraesGiftButtslut:PerkType = mk("Marae's Gift - Buttslut", "Marae's Gift - Buttslut",
				"Makes your anus provide lubrication when aroused.");
		public static const MaraesGiftFertility:PerkType = mk("Marae's Gift - Fertility", "Marae's Gift - Fertility",
				"Greatly increases fertility and halves base pregnancy speed.");
		public static const MaraesGiftProfractory:PerkType = mk("Marae's Gift - Profractory", "Marae's Gift - Profractory",
				"Causes your cum to build up at 3x the normal rate.");
		public static const MaraesGiftStud:PerkType = mk("Marae's Gift - Stud", "Marae's Gift - Stud",
				"Increases your cum production and potency greatly.");
		public static const MarbleResistant:PerkType = mk("Marble Resistant", "Marble Resistant",
				"Provides resistance to the addictive effects of bottled LaBova milk.");
		public static const MarblesMilk:PerkType = mk("Marble's Milk", "Marble's Milk",
				"Requires you to drink LaBova milk frequently or eventually die.  You cannot shake this addiction.");
		public static const Misdirection:PerkType = mk("Misdirection", "Misdirection",
				"Grants additional evasion chances while wearing Raphael's red bodysuit.");
		public static const OmnibusGift:PerkType = mk("Omnibus' Gift", "Omnibus' Gift",
				"Increases minimum lust but provides some lust resistance.");
		public static const OneTrackMind:PerkType = mk("One Track Mind", "One Track Mind",
				"Your constant desire for sex causes your sexual organs to be able to take larger insertions and disgorge greater amounts of fluid.");
		public static const PilgrimsBounty:PerkType = mk("Pilgrim's Bounty", "Pilgrim's Bounty",
				"Causes you to always cum as hard as if you had max lust.");
		public static const PureAndLoving:PerkType = mk("Pure and Loving", "Pure and Loving",
				"Your caring attitude towards love and romance makes you slightly more resistant to lust and corruption.");
		public static const SensualLover:PerkType = mk("Sensual Lover", "Sensual Lover",
				"Your sensual attitude towards love and romance makes your tease ability slightly more effective.");
		public static const Whispered:PerkType = mk("Whispered", "Whispered",
				"Akbal's blessings grant limited telepathy that can induce fear.");
				
		public static const ControlledBreath:ControlledBreathPerk = new ControlledBreathPerk();
		public static const CleansingPalm:CleansingPalmPerk = new CleansingPalmPerk();
		public static const Enlightened:EnlightenedPerk = new EnlightenedPerk();
		

		// Monster perks
		public static const Acid:PerkType = mk("Acid", "Acid", "");

		private static function mk(id:String, name:String, desc:String, longDesc:String = null):PerkType
		{
			return new PerkType(id, name, desc, longDesc);
		}
	}
}
