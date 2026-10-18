import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C009
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C020
import Seq.B000.C023
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C034
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C006
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B004.C000
import Seq.B004.C001
import Seq.B005.C000
import Seq.B006.C000
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B013.C000
import Seq.B014.C000
import Seq.Opaque.C000
import Seq.Opaque.C001
import Seq.Opaque.C002
import Seq.Opaque.C003
import Seq.Opaque.C004
import Seq.Opaque.C005
import Seq.Opaque.C006
import Seq.Opaque.C007
import Seq.Opaque.C008
import Seq.Opaque.C009
import Seq.Opaque.C010
import Seq.Opaque.C011
import Seq.Opaque.C012
import Seq.Opaque.C013
import Seq.Opaque.C014
import Seq.Opaque.C015
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C021
import Seq.Opaque.C023

/-!
# A009700: Expansion of tan(tan(x))*x.

The programs for A009700, there is no canonical definition to state claims against.
-/

/-! ## A009700.P1541010363860908441

`2*A024289(n)`
-/

namespace A009700.P1541010363860908441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A024289 n

end

end A009700.P1541010363860908441

/-! ## A009700.P9238596022612955202

`A024289(n)+A024289(A292579(n))`
-/

namespace A009700.P9238596022612955202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024289 n + A024289 (A292579 n).toNat

end

end A009700.P9238596022612955202

/-! ## A009700.P7621903619014127231

`A024289(n)+record[A024289(A025581(n))]`
-/

namespace A009700.P7621903619014127231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024289 (A025581 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024289 n + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A009700.P7621903619014127231

/-! ## A009700.P4307128988158180808

`A024289(n)+record[A024289(A326746(n))]`
-/

namespace A009700.P4307128988158180808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024289 (A326746 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024289 n + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A009700.P4307128988158180808

/-! ## A009700.P4157403671965698746

`A024289(n)+record[A024289(A059169(n+1))]`
-/

namespace A009700.P4157403671965698746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024289 (A059169 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024289 n + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A009700.P4157403671965698746

/-!
# A009704: Expansion of tan(tan(x).exp(x)).

The programs for A009704, there is no canonical definition to state claims against.
-/

/-! ## A009704.P17266377530441364655

`A325707(A091774(n+1))`
-/

namespace A009704.P17266377530441364655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325707 (A091774 (n + 1)).toNat

end

end A009704.P17266377530441364655

/-! ## A009704.P12966078233926964057

`A326910(A143566(n))+n`
-/

namespace A009704.P12966078233926964057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326910 (A143566 n).toNat + (n : ℤ)

end

end A009704.P12966078233926964057

/-!
# A009705: E.g.f. tan(tan(x)*sin(x)), even powers only.

The programs for A009705, there is no canonical definition to state claims against.
-/

/-! ## A009705.P16910288422140338434

`2*A024245(n)`
-/

namespace A009705.P16910288422140338434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A024245 n

end

end A009705.P16910288422140338434

/-! ## A009705.P18012044602530753018

`n+1+A001489(n+1)+A024245(n)+A024245(n)`
-/

namespace A009705.P18012044602530753018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + (A001489 (n + 1) + (A024245 n + A024245 n))

end

end A009705.P18012044602530753018

/-! ## A009705.P6826472448007739329

`A000122(A092206(n+1))+A024245(n)+A024245(n)`
-/

namespace A009705.P6826472448007739329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (A092206 (n + 1)).toNat + (A024245 n + A024245 n)

end

end A009705.P6826472448007739329

/-! ## A009705.P13033633720182476543

`A024245(A004896(n+1))+A024245(n)`
-/

namespace A009705.P13033633720182476543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024245 (A004896 (n + 1)).toNat + A024245 n

end

end A009705.P13033633720182476543

/-! ## A009705.P2226653613151791501

`A024245(A002998(n))+A024245(n)`
-/

namespace A009705.P2226653613151791501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024245 (A002998 n).toNat + A024245 n

end

end A009705.P2226653613151791501

/-!
# A009706: tan(sinh(x)*tan(x))=2/2!*x^2+12/4!*x^4+382/6!*x^6+23352/8!*x^8...

The programs for A009706, there is no canonical definition to state claims against.
-/

/-! ## A009706.P11449572099393909665

`2*A024279(n)`
-/

namespace A009706.P11449572099393909665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A024279 n

end

end A009706.P11449572099393909665

/-! ## A009706.P9423063765154939566

`A024279(n)+A024279(A118759(n))`
-/

namespace A009706.P9423063765154939566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024279 n + A024279 (A118759 n).toNat

end

end A009706.P9423063765154939566

/-! ## A009706.P326538305366576276

`lcm(A006519(A004277(n)), A024279(n))`
-/

namespace A009706.P326538305366576276
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A006519 (A004277 n).toNat) (A024279 n)

end

end A009706.P326538305366576276

/-! ## A009706.P2648328017069651939

`A024279(n)+record[A024279(A002262(n))]`
-/

namespace A009706.P2648328017069651939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024279 (A002262 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024279 n + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A009706.P2648328017069651939

/-! ## A009706.P4611676451149984631

`A024279(n)+A024279(n)+A014025(A078425(n+1))`
-/

namespace A009706.P4611676451149984631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024279 n + (A024279 n + A014025 (A078425 (n + 1)).toNat)

end

end A009706.P4611676451149984631

/-!
# A009707: Expansion of e.g.f. tan(tan(x)*x) (even powers only).

The programs for A009707, there is no canonical definition to state claims against.
-/

/-! ## A009707.P9804043613055274347

`2*A024265(n)`
-/

namespace A009707.P9804043613055274347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A024265 n

end

end A009707.P9804043613055274347

/-! ## A009707.P9265910337719452777

`A024265(n)+A024265(A118759(n))`
-/

namespace A009707.P9265910337719452777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024265 n + A024265 (A118759 n).toNat

end

end A009707.P9265910337719452777

/-! ## A009707.P18142157734703671023

`A024265(n)/2^A008683(A003629(n+1))`
-/

namespace A009707.P18142157734703671023
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024265 n : ℚ) / (2 : ℚ) ^ (A008683 (A003629 (n + 1)).toNat : ℤ)

end

end A009707.P18142157734703671023

/-! ## A009707.P1753178658518003710

`A024265(n)+A024265(A055646(n))`
-/

namespace A009707.P1753178658518003710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024265 n + A024265 (A055646 n).toNat

end

end A009707.P1753178658518003710

/-! ## A009707.P11931706025241946699

`A024265(A023106(n))+A024265(n)`
-/

namespace A009707.P11931706025241946699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024265 (A023106 n).toNat + A024265 n

end

end A009707.P11931706025241946699

/-!
# A009710: E.g.f. tan(tan(x)^2) (even powers only).

The programs for A009710, there is no canonical definition to state claims against.
-/

/-! ## A009710.P9486736348032323337

`2*A024290(n)`
-/

namespace A009710.P9486736348032323337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A024290 n

end

end A009710.P9486736348032323337

/-! ## A009710.P14769462178556030225

`A024290(n)+A024290(A292579(n))`
-/

namespace A009710.P14769462178556030225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024290 n + A024290 (A292579 n).toNat

end

end A009710.P14769462178556030225

/-! ## A009710.P15283140361661952580

`A024290(n)+A024290(A055645(n))`
-/

namespace A009710.P15283140361661952580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024290 n + A024290 (A055645 n).toNat

end

end A009710.P15283140361661952580

/-! ## A009710.P15488909507716923862

`A024290(n)+A024290(A055647(n))`
-/

namespace A009710.P15488909507716923862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024290 n + A024290 (A055647 n).toNat

end

end A009710.P15488909507716923862

/-! ## A009710.P11640464333532448647

`A024290(n)+A024290(n)%A268006(n+1)`
-/

namespace A009710.P11640464333532448647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024290 n + Int.tmod (A024290 n) (A268006 (n + 1))

end

end A009710.P11640464333532448647

/-!
# A009714: a(n) = Product_{i=0..8} floor((n+i)/9).

The programs for A009714, there is no canonical definition to state claims against.
-/

/-! ## A009714.P14570552623116819795

`A004526(A354600(n+2))`
-/

namespace A009714.P14570552623116819795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A354600 (n + 2)).toNat

end

end A009714.P14570552623116819795

/-! ## A009714.P4075180825660878352

`A029579(A354600(n+2))-A304118(2*n+5)`
-/

namespace A009714.P4075180825660878352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029579 (A354600 (n + 2)).toNat - A304118 (2 * n + 5)

end

end A009714.P4075180825660878352

/-! ## A009714.P16873158751027478460

`A329900(A275064(n))%A275063(n)`
-/

namespace A009714.P16873158751027478460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A329900 (A275064 n).toNat) (A275063 n)

end

end A009714.P16873158751027478460

/-! ## A009714.P17519476622723018315

`A002265(2*A354600(n+2))`
-/

namespace A009714.P17519476622723018315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (2 * A354600 (n + 2)).toNat

end

end A009714.P17519476622723018315

/-! ## A009714.P12215436924821034366

`A046523(A275076(n))%A275075(n)`
-/

namespace A009714.P12215436924821034366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A046523 (A275076 n).toNat) (A275075 n)

end

end A009714.P12215436924821034366

/-!
# A009715: Expansion of tan(tanh(x))*cos(x).

The programs for A009715, there is no canonical definition to state claims against.
-/

/-! ## A009715.P13916459173933008696

`A009810(Δ[n²])*A033999(n)`
-/

namespace A009715.P13916459173933008696
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009810 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat * A033999 n

end

end A009715.P13916459173933008696

/-!
# A009716: Expansion of e.g.f. tan(tanh(x))*exp(x).

The programs for A009716, there is no canonical definition to state claims against.
-/

/-! ## A009716.P16274346388107938305

`A009241(A024663(n))-1+n`
-/

namespace A009716.P16274346388107938305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009241 (A024663 n).toNat - 1 + (n : ℤ)

end

end A009716.P16274346388107938305

/-! ## A009716.P3527849314954644031

`A009241(A004882(n+1))-1+n`
-/

namespace A009716.P3527849314954644031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009241 (A004882 (n + 1)).toNat - 1 + (n : ℤ)

end

end A009716.P3527849314954644031

/-! ## A009716.P10753872787940459997

`A009241(A004893(n+1))-1+n`
-/

namespace A009716.P10753872787940459997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009241 (A004893 (n + 1)).toNat - 1 + (n : ℤ)

end

end A009716.P10753872787940459997

/-! ## A009716.P2536978144682838742

`A009241(A024663(n))-A024000(n)`
-/

namespace A009716.P2536978144682838742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009241 (A024663 n).toNat - A024000 n

end

end A009716.P2536978144682838742

/-! ## A009716.P2361914857775440989

`xor(A004442(n), A009241(A024663(n)))`
-/

namespace A009716.P2361914857775440989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A004442 n) (A009241 (A024663 n).toNat)

end

end A009716.P2361914857775440989

/-!
# A009717: Expansion of e.g.f. tan(tanh(x))*sin(x) (even powers only).

The programs for A009717, there is no canonical definition to state claims against.
-/

/-! ## A009717.P16185180226260200237

`2*A024233(n)`
-/

namespace A009717.P16185180226260200237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A024233 n

end

end A009717.P16185180226260200237

/-! ## A009717.P7354951058929658027

`A024233(n)+A024233(A118759(n))`
-/

namespace A009717.P7354951058929658027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024233 n + A024233 (A118759 n).toNat

end

end A009717.P7354951058929658027

/-! ## A009717.P11446160594486331144

`A009810(2*n)*A033999(n+1)`
-/

namespace A009717.P11446160594486331144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009810 (2 * n) * A033999 (n + 1)

end

end A009717.P11446160594486331144

/-! ## A009717.P3234483652569463144

`A024233(n)+A024233(A057846(n))`
-/

namespace A009717.P3234483652569463144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024233 n + A024233 (A057846 n).toNat

end

end A009717.P3234483652569463144

/-!
# A009718: Expansion of tan(tanh(x))*x.

The programs for A009718, there is no canonical definition to state claims against.
-/

/-! ## A009718.P11902366966533042838

`2*A024303(n)`
-/

namespace A009718.P11902366966533042838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A024303 n

end

end A009718.P11902366966533042838

/-! ## A009718.P7647743355843918924

`A024303(n)+A024303(n)^A219585(A152714(n))`
-/

namespace A009718.P7647743355843918924
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024303 n : ℚ) + (A024303 n : ℚ) ^ (A219585 (A152714 n).toNat : ℤ)

end

end A009718.P7647743355843918924

/-! ## A009718.P8877109438894185543

`A024303(n)+A024303(n)%A003716(n)`
-/

namespace A009718.P8877109438894185543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024303 n + Int.tmod (A024303 n) (A003716 n)

end

end A009718.P8877109438894185543

/-! ## A009718.P10652689415286102301

`A024303(n)+A024303(A055645(n))`
-/

namespace A009718.P10652689415286102301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024303 n + A024303 (A055645 n).toNat

end

end A009718.P10652689415286102301

/-! ## A009718.P176357038566811305

`A024303(n)+A024303(A055647(n))`
-/

namespace A009718.P176357038566811305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024303 n + A024303 (A055647 n).toNat

end

end A009718.P176357038566811305

/-!
# A009721: Expansion of e.g.f.: tan(tanh(x)*exp(x)).

The programs for A009721, there is no canonical definition to state claims against.
-/

/-! ## A009721.P4383569539899063968

`∑[A341880(n!²)]+n`
-/

namespace A009721.P4383569539899063968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341880 (Nat.factorial n ^ 2 + 16)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A009721.P4383569539899063968

/-! ## A009721.P11038520421250015773

`∑[A292373(∑[n]²²)]+n`
-/

namespace A009721.P11038520421250015773
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292373 (((∑ j ∈ Finset.range (n + 1), f2 j) ^ 2) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A009721.P11038520421250015773

/-!
# A009722: Expansion of tan(tanh(x)*tan(x))/2.

The programs for A009722, there is no canonical definition to state claims against.
-/

/-! ## A009722.P11278807188082580990

`A012669(n)/2`
-/

namespace A009722.P11278807188082580990
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A012669 n : ℚ) / 2

end

end A009722.P11278807188082580990

/-!
# A009724: Denominators of Taylor series for 1/(sin x + tan x).

The programs for A009724, there is no canonical definition to state claims against.
-/

/-! ## A009724.P4875593596121409374

`lcm(record[A046644(n+2)], A227830(2*n))`
-/

namespace A009724.P4875593596121409374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046644 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A227830 (2 * n))

end

end A009724.P4875593596121409374

/-! ## A009724.P12541142760554943388

`lcm(A046644(A000079(n+1)), A060055(n+1))`
-/

namespace A009724.P12541142760554943388
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A046644 (A000079 (n + 1)).toNat) (A060055 (n + 1))

end

end A009724.P12541142760554943388

/-! ## A009724.P12802152929647341156

`A060055(n+1)*A357181(A001317(n))`
-/

namespace A009724.P12802152929647341156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060055 (n + 1) * A357181 (A001317 n).toNat

end

end A009724.P12802152929647341156

/-!
# A009725: Expansion of e.g.f.: tan(x)*(1+x).

The programs for A009725, there is no canonical definition to state claims against.
-/

/-! ## A009725.P5471058513511050914

`A109449(A084263(n))-A000007(n)`
-/

namespace A009725.P5471058513511050914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109449 (A084263 n).toNat - A000007 n

end

end A009725.P5471058513511050914

/-! ## A009725.P16238245657915385470

`A109449(A084263(n))*A178334(n)`
-/

namespace A009725.P16238245657915385470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109449 (A084263 n).toNat * A178334 n

end

end A009725.P16238245657915385470

/-! ## A009725.P8628579701770117498

`A057428(n)*A247453(A084263(n))`
-/

namespace A009725.P8628579701770117498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n * A247453 (A084263 n).toNat

end

end A009725.P8628579701770117498

/-! ## A009725.P887378524440507988

`A109449(∑[A004442(n)])-A000007(n)`
-/

namespace A009725.P887378524440507988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109449 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - A000007 n

end

end A009725.P887378524440507988

/-! ## A009725.P8364542479424980715

`A109449(∑[A004442(n)])*A178334(n)`
-/

namespace A009725.P8364542479424980715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109449 (∑ j ∈ Finset.range (n + 1), f1 j).toNat * A178334 n

end

end A009725.P8364542479424980715

/-! ## A009725.P646692158472085249

`A109449(A084263(n))+A008683(2*(n+1)²)`
-/

namespace A009725.P646692158472085249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109449 (A084263 n).toNat + A008683 (2 * (n + 1) ^ 2)

end

end A009725.P646692158472085249

/-! ## A009725.P2768076320723205272

`2*A009731(n)-A009753(n)`
-/

namespace A009725.P2768076320723205272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A009731 n - A009753 n

end

end A009725.P2768076320723205272

/-! ## A009725.P9691172118987702352

`gcd(A109573(n), A155100(A000124(n)))`
-/

namespace A009725.P9691172118987702352
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A109573 n) (A155100 (A000124 n).toNat)

end

end A009725.P9691172118987702352

/-!
# A009727: Expansion of tan(x)*cos(sin(x)).

The programs for A009727, there is no canonical definition to state claims against.
-/

/-! ## A009727.P13305897895750943578

`(-1)^n*A009829(Δ[n²])`
-/

namespace A009727.P13305897895750943578
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A009829 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A009727.P13305897895750943578

/-! ## A009727.P1473102459297513346

`A009829(2*n+1)*A033999(n)`
-/

namespace A009727.P1473102459297513346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009829 (2 * n + 1) * A033999 n

end

end A009727.P1473102459297513346

/-! ## A009727.P12810078072952615894

`A009829(A005408(n))/A033999(n)`
-/

namespace A009727.P12810078072952615894
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009829 (A005408 n).toNat : ℚ) / (A033999 n : ℚ)

end

end A009727.P12810078072952615894

/-!
# A009728: Expansion of tan(x)*cos(sinh(x)).

The programs for A009728, there is no canonical definition to state claims against.
-/

/-! ## A009728.P7692339084884285890

`(-1)^n*A009828(Δ[n²])`
-/

namespace A009728.P7692339084884285890
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A009828 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A009728.P7692339084884285890

/-! ## A009728.P14361252790849576475

`A009828(2*n+1)*A033999(n)`
-/

namespace A009728.P14361252790849576475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009828 (2 * n + 1) * A033999 n

end

end A009728.P14361252790849576475

/-! ## A009728.P1781489265934757140

`A009828(2*n+1)*A056594(2*n)`
-/

namespace A009728.P1781489265934757140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009828 (2 * n + 1) * A056594 (2 * n)

end

end A009728.P1781489265934757140

/-! ## A009728.P10566276266933652608

`A009828(A005408(n))/A033999(n)`
-/

namespace A009728.P10566276266933652608
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009828 (A005408 n).toNat : ℚ) / (A033999 n : ℚ)

end

end A009728.P10566276266933652608

/-!
# A009729: Expansion of tan(x)*cos(tan(x)).

The programs for A009729, there is no canonical definition to state claims against.
-/

/-! ## A009729.P13822283350536357034

`A009831(Δ[n²])*A033999(n)`
-/

namespace A009729.P13822283350536357034
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009831 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat * A033999 n

end

end A009729.P13822283350536357034

/-! ## A009729.P4385597963983897599

`A009831(2*n+1)/A033999(n)`
-/

namespace A009729.P4385597963983897599
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009831 (2 * n + 1) : ℚ) / (A033999 n : ℚ)

end

end A009729.P4385597963983897599

/-!
# A009730: Expansion of tan(x)*cos(tanh(x)).

The programs for A009730, there is no canonical definition to state claims against.
-/

/-! ## A009730.P14199590580251869458

`A009830(Δ[n²])*A033999(n)`
-/

namespace A009730.P14199590580251869458
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009830 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat * A033999 n

end

end A009730.P14199590580251869458

/-! ## A009730.P15556085218018240606

`(-1)^n*A009830(A267872(n))`
-/

namespace A009730.P15556085218018240606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A009830 (A267872 n).toNat

end

end A009730.P15556085218018240606

/-! ## A009730.P11244276568464091392

`A009830(2*n+1)/A033999(n)`
-/

namespace A009730.P11244276568464091392
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009830 (2 * n + 1) : ℚ) / (A033999 n : ℚ)

end

end A009730.P11244276568464091392

/-! ## A009730.P1793798203147662574

`A009830(2*n+1)*A057077(2*n)`
-/

namespace A009730.P1793798203147662574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009830 (2 * n + 1) * A057077 (2 * n)

end

end A009730.P1793798203147662574

/-! ## A009730.P10078619759294038440

`A033999(n)*A009830(A005408(n))`
-/

namespace A009730.P10078619759294038440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A009830 (A005408 n).toNat

end

end A009730.P10078619759294038440

/-!
# A009731: Expansion of tan(x)*cosh(log(1+x)).

The programs for A009731, there is no canonical definition to state claims against.
-/

/-! ## A009731.P103727292207954161

`(A009753(n)+A009725(n))/2`
-/

namespace A009731.P103727292207954161
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009753 n + A009725 n : ℚ) / 2

end

end A009731.P103727292207954161

/-! ## A009731.P8277469908547664182

`(A009753(n)+A009725(n))*2^A008683(A002148(n))`
-/

namespace A009731.P8277469908547664182
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009753 n + A009725 n : ℚ) * (2 : ℚ) ^ (A008683 (A002148 n).toNat : ℤ)

end

end A009731.P8277469908547664182

/-!
# A009732: Expansion of tan(x)*cosh(sin(x)) (odd powers only).

The programs for A009732, there is no canonical definition to state claims against.
-/

/-! ## A009732.P4762106074037355670

`A009735(Δ[n²])`
-/

namespace A009732.P4762106074037355670
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009735 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A009732.P4762106074037355670

/-! ## A009732.P9143684480186333718

`record[A009735(n^(n%2))]`
-/

namespace A009732.P9143684480186333718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009735 (n ^ (n % 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A009732.P9143684480186333718

/-! ## A009732.P6979046373837724441

`record[A009735(A000265(n+1))]`
-/

namespace A009732.P6979046373837724441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009735 (A000265 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A009732.P6979046373837724441

/-! ## A009732.P17438399611874903414

`record[A009735(A237420(n)+1)]`
-/

namespace A009732.P17438399611874903414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009735 (A237420 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A009732.P17438399611874903414

/-! ## A009732.P15342161223109159426

`record[A009735(A033999(n)+n)]`
-/

namespace A009732.P15342161223109159426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009735 (A033999 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A009732.P15342161223109159426

/-!
# A009733: Expansion of tan(x)*cosh(tan(x)).

The programs for A009733, there is no canonical definition to state claims against.
-/

/-! ## A009733.P16438526267675683266

`A009737(Δ[n²])`
-/

namespace A009733.P16438526267675683266
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009737 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A009733.P16438526267675683266

/-! ## A009733.P18102336765270126972

`record[A009737(A099375(n))]`
-/

namespace A009733.P18102336765270126972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009737 (A099375 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A009733.P18102336765270126972

/-! ## A009733.P13972824481981360656

`or(1, A009737(A005408(n)))`
-/

namespace A009733.P13972824481981360656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A009737 (A005408 n).toNat)

end

end A009733.P13972824481981360656

/-! ## A009733.P18008237569836749396

`record[A009737(A237420(n)+1)]`
-/

namespace A009733.P18008237569836749396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009737 (A237420 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A009733.P18008237569836749396

/-! ## A009733.P17851660539367060213

`record[A009737(gcd(n, A282413(n)))]`
-/

namespace A009733.P17851660539367060213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009737 (Int.gcd (n : ℤ) (A282413 n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A009733.P17851660539367060213

/-!
# A009734: Days in a one-month gym membership starting at n-th day of year [ days from Jan 01 to Feb 01, Jan 02 to Feb 02, ... ].

The programs for A009734, there is no canonical definition to state claims against.
-/

/-! ## A009734.P5444363075290070999

`31-A046660(A157523(n))`
-/

namespace A009734.P5444363075290070999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  31 - A046660 (A157523 n).toNat

end

end A009734.P5444363075290070999

/-! ## A009734.P18340963753869691046

`A131762(Δ[record[A031285(n)]])`
-/

namespace A009734.P18340963753869691046
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031285 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131762 (f1 (n + 1) - f1 n).toNat

end

end A009734.P18340963753869691046

/-! ## A009734.P12721553060630072135

`32-A030409(A222188(n+1))`
-/

namespace A009734.P12721553060630072135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  32 - A030409 (A222188 (n + 1)).toNat

end

end A009734.P12721553060630072135

/-! ## A009734.P167821166959270864

`32-A071773(A299721(n+1))`
-/

namespace A009734.P167821166959270864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  32 - A071773 (A299721 (n + 1)).toNat

end

end A009734.P167821166959270864

/-!
# A009735: Expansion of tan(x)*exp(sin(x)).

The programs for A009735, there is no canonical definition to state claims against.
-/

/-! ## A009735.P14124828745257981598

`∪[A009732(n+1), A009745(n)]`
-/

namespace A009735.P14124828745257981598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009732 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009745 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A009735.P14124828745257981598

/-! ## A009735.P3034934199234013098

`∪[A009751(n), A353667(A009758(n+1))]`
-/

namespace A009735.P3034934199234013098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009751 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353667 (A009758 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A009735.P3034934199234013098

/-!
# A009736: Expansion of e.g.f.: tan(x)*exp(sinh(x)).

The programs for A009736, there is no canonical definition to state claims against.
-/

/-! ## A009736.P12268950339532363517

`floor(A019503(n+1)/round(acot(n)+n))`
-/

namespace A009736.P12268950339532363517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A019503 (n + 1) : ℚ) / (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ)) : ℚ)⌋

end

end A009736.P12268950339532363517

/-! ## A009736.P3988603587999722592

`A241087(round(8*n/5)+ceil(∑[12*n]/5)+1)`
-/

namespace A009736.P3988603587999722592
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241087 (SequenceMachineLib.roundAway (8 * ((n : ℚ) / 5)) + (⌈((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 5⌉ + 1)).toNat

end

end A009736.P3988603587999722592

/-! ## A009736.P16164805691565086967

`A105518(A150153(n+1))`
-/

namespace A009736.P16164805691565086967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105518 (A150153 (n + 1)).toNat

end

end A009736.P16164805691565086967

/-!
# A009737: Expansion of e.g.f. tan(x)*exp(tan(x)).

The programs for A009737, there is no canonical definition to state claims against.
-/

/-! ## A009737.P17893385177115397263

`∪[A009733(n), A009746(n)]`
-/

namespace A009737.P17893385177115397263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009733 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009746 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A009737.P17893385177115397263

/-! ## A009737.P8045483342743387874

`∪[A009746(n), A353667(A009756(n+1))]`
-/

namespace A009737.P8045483342743387874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009746 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353667 (A009756 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A009737.P8045483342743387874

/-! ## A009737.P14722299688599030114

`A220658(A000774(n)-A186766(n))`
-/

namespace A009737.P14722299688599030114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220658 (A000774 n - A186766 n).toNat

end

end A009737.P14722299688599030114

/-!
# A009739: E.g.f. tan(x)*exp(x).

The programs for A009739, there is no canonical definition to state claims against.
-/

/-! ## A009739.P17194686903630298216

`A000667(n)-A003701(n)`
-/

namespace A009739.P17194686903630298216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000667 n - A003701 n

end

end A009739.P17194686903630298216

/-! ## A009739.P11162839707398282616

`∪[A003719(n), A009747(n)]`
-/

namespace A009739.P11162839707398282616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003719 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009747 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A009739.P11162839707398282616

/-! ## A009739.P14907766585442632854

`A003701(n)-Δ[A009334(n)]`
-/

namespace A009739.P14907766585442632854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009334 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003701 n - (f1 (n + 1) - f1 n)

end

end A009739.P14907766585442632854

/-! ## A009739.P12245293416172089385

`A292975(A034856(n+1))-A003701(n)`
-/

namespace A009739.P12245293416172089385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292975 (A034856 (n + 1)).toNat - A003701 n

end

end A009739.P12245293416172089385

/-! ## A009739.P10932198135640752837

`A062161(n)+A062272(n)-A003701(n)`
-/

namespace A009739.P10932198135640752837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062161 n + (A062272 n - A003701 n)

end

end A009739.P10932198135640752837

/-! ## A009739.P13950128355302957986

`A230950(n)+A230951(n)-A003701(n)`
-/

namespace A009739.P13950128355302957986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230950 n + (A230951 n - A003701 n)

end

end A009739.P13950128355302957986

/-! ## A009739.P24511319731206600

`A062161(n)+A000035(n)*A062162(n)`
-/

namespace A009739.P24511319731206600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062161 n + A000035 n * A062162 n

end

end A009739.P24511319731206600

/-!
# A009740: Expansion of tan(x)*sin(sin(x)).

The programs for A009740, there is no canonical definition to state claims against.
-/

/-! ## A009740.P5845782632889259399

`2*A024304(n)`
-/

namespace A009740.P5845782632889259399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A024304 n

end

end A009740.P5845782632889259399

/-! ## A009740.P8875699399266238246

`abs(A009829(2*n))`
-/

namespace A009740.P8875699399266238246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A009829 (2 * n)|

end

end A009740.P8875699399266238246

/-! ## A009740.P7603003681478557795

`lcm(A000079(n), A009829(2*n))`
-/

namespace A009740.P7603003681478557795
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000079 n) (A009829 (2 * n))

end

end A009740.P7603003681478557795

/-! ## A009740.P6317442177230700022

`A009829(2*n)*A033999(n+1)`
-/

namespace A009740.P6317442177230700022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009829 (2 * n) * A033999 (n + 1)

end

end A009740.P6317442177230700022

/-!
# A009741: Expansion of tan(x)*sin(sinh(x)).

The programs for A009741, there is no canonical definition to state claims against.
-/

/-! ## A009741.P14199118664952419918

`2*A024250(n)`
-/

namespace A009741.P14199118664952419918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A024250 n

end

end A009741.P14199118664952419918

/-! ## A009741.P485827609612320771

`abs(A009828(2*n))`
-/

namespace A009741.P485827609612320771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A009828 (2 * n)|

end

end A009741.P485827609612320771

/-! ## A009741.P17063989901813609628

`lcm(2, A009828(A005843(n)))`
-/

namespace A009741.P17063989901813609628
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A009828 (A005843 n).toNat)

end

end A009741.P17063989901813609628

/-! ## A009741.P15142560954033463596

`record[lcm(A009828(n), A056594(n))]`
-/

namespace A009741.P15142560954033463596
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A009828 n) (A056594 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A009741.P15142560954033463596

/-! ## A009741.P9355140140574713777

`lcm(A009828(2*n), A011628(n))`
-/

namespace A009741.P9355140140574713777
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A009828 (2 * n)) (A011628 n)

end

end A009741.P9355140140574713777

/-!
# A009742: Expansion of tan(x)*sin(tan(x)).

The programs for A009742, there is no canonical definition to state claims against.
-/

/-! ## A009742.P13969104933479590431

`2*A024269(n)`
-/

namespace A009742.P13969104933479590431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A024269 n

end

end A009742.P13969104933479590431

/-! ## A009742.P697875616001581042

`A024269(n)+A024269(A118759(n))`
-/

namespace A009742.P697875616001581042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024269 n + A024269 (A118759 n).toNat

end

end A009742.P697875616001581042

/-! ## A009742.P12077916180614917282

`A024269(or(n, A316868(n)))+A024269(n)`
-/

namespace A009742.P12077916180614917282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024269 (Int.lor (n : ℤ) (A316868 n)).toNat + A024269 n

end

end A009742.P12077916180614917282

/-! ## A009742.P1799207590734533058

`A086483(n²)+A024269(n)+A024269(n)`
-/

namespace A009742.P1799207590734533058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086483 (n ^ 2) + (A024269 n + A024269 n)

end

end A009742.P1799207590734533058

/-! ## A009742.P14155846624792828883

`A009831(2*n)*A033999(n+1)`
-/

namespace A009742.P14155846624792828883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009831 (2 * n) * A033999 (n + 1)

end

end A009742.P14155846624792828883

/-!
# A009743: Expansion of e.g.f. tan(x)*sin(tanh(x)), even powers only.

The programs for A009743, there is no canonical definition to state claims against.
-/

/-! ## A009743.P5593871806895550409

`2*A024241(n)`
-/

namespace A009743.P5593871806895550409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A024241 n

end

end A009743.P5593871806895550409

/-! ## A009743.P6618995673896923220

`-A009830(2*n)/A033999(n)`
-/

namespace A009743.P6618995673896923220
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  -((A009830 (2 * n) : ℚ) / (A033999 n : ℚ))

end

end A009743.P6618995673896923220

/-! ## A009743.P6660799957055609322

`A009830(2*n)*A033999(n+1)`
-/

namespace A009743.P6660799957055609322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009830 (2 * n) * A033999 (n + 1)

end

end A009743.P6660799957055609322

/-! ## A009743.P10981047362893019202

`A024241(n)+A024241(A118759(n))`
-/

namespace A009743.P10981047362893019202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024241 n + A024241 (A118759 n).toNat

end

end A009743.P10981047362893019202

/-! ## A009743.P5775248105746381500

`A024241(n)+A024241(n)+A000007(n+1)`
-/

namespace A009743.P5775248105746381500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024241 n + (A024241 n + A000007 (n + 1))

end

end A009743.P5775248105746381500

/-!
# A009744: Expansion of e.g.f. tan(x)*sin(x) (even powers only).

The programs for A009744, there is no canonical definition to state claims against.
-/

/-! ## A009744.P7373529120452902090

`2*A024235(n)`
-/

namespace A009744.P7373529120452902090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A024235 n

end

end A009744.P7373529120452902090

/-! ## A009744.P1568138479867574575

`abs(1-A028296(n))`
-/

namespace A009744.P1568138479867574575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A028296 n|

end

end A009744.P1568138479867574575

/-! ## A009744.P14401622063260757572

`abs(A009832(2*n))`
-/

namespace A009744.P14401622063260757572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A009832 (2 * n)|

end

end A009744.P14401622063260757572

/-! ## A009744.P7801727033282218757

`record[2*A009567(n)]`
-/

namespace A009744.P7801727033282218757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A009567 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A009744.P7801727033282218757

/-! ## A009744.P12088359909553943455

`record[lcm(2, A009832(n))]`
-/

namespace A009744.P12088359909553943455
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A009832 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A009744.P12088359909553943455

/-!
# A009745: Expansion of e.g.f tan(x)*sinh(sin(x)), even powers only.

The programs for A009745, there is no canonical definition to state claims against.
-/

/-! ## A009745.P13424014441241014811

`A009735(2*n)`
-/

namespace A009745.P13424014441241014811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009735 (2 * n)

end

end A009745.P13424014441241014811

/-! ## A009745.P17050321346209532520

`2*A024251(n)`
-/

namespace A009745.P17050321346209532520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A024251 n

end

end A009745.P17050321346209532520

/-! ## A009745.P7780702104087692023

`record[A009735(A237420(n))]`
-/

namespace A009745.P7780702104087692023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009735 (A237420 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A009745.P7780702104087692023

/-! ## A009745.P14584676901122578697

`record[A009735(A062157(n)+n)]`
-/

namespace A009745.P14584676901122578697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009735 (A062157 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A009745.P14584676901122578697

/-! ## A009745.P1650647304946723131

`record[A009735(n)/A033999(n)]`
-/

namespace A009745.P1650647304946723131
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009735 n : ℚ) / (A033999 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A009745.P1650647304946723131

/-!
# A009746: Expansion of e.g.f. tan(x)*sinh(tan(x)), even powers only.

The programs for A009746, there is no canonical definition to state claims against.
-/

/-! ## A009746.P2876338450019048241

`A009737(2*n)`
-/

namespace A009746.P2876338450019048241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009737 (2 * n)

end

end A009746.P2876338450019048241

/-! ## A009746.P8408652454583722657

`2*A024291(n)`
-/

namespace A009746.P8408652454583722657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A024291 n

end

end A009746.P8408652454583722657

/-! ## A009746.P12108738391272306636

`record[A009737(A237420(n))]`
-/

namespace A009746.P12108738391272306636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009737 (A237420 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A009746.P12108738391272306636

/-! ## A009746.P3279480022386375927

`record[A009737(A099375(n)-1)]`
-/

namespace A009746.P3279480022386375927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009737 (A099375 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A009746.P3279480022386375927

/-! ## A009746.P5300738330783894072

`and(A009737(A004277(n)), A057428(n))`
-/

namespace A009746.P5300738330783894072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A009737 (A004277 n).toNat) (A057428 n)

end

end A009746.P5300738330783894072

/-!
# A009747: E.g.f. tan(x)*sinh(x) (even powers only).

The programs for A009747, there is no canonical definition to state claims against.
-/

/-! ## A009747.P9490783045662091389

`A009739(2*n)`
-/

namespace A009747.P9490783045662091389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009739 (2 * n)

end

end A009747.P9490783045662091389

/-! ## A009747.P2431935338854642624

`2*A024272(n)`
-/

namespace A009747.P2431935338854642624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A024272 n

end

end A009747.P2431935338854642624

/-! ## A009747.P11602933640299229900

`A062161(2*n)`
-/

namespace A009747.P11602933640299229900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062161 (2 * n)

end

end A009747.P11602933640299229900

/-! ## A009747.P7708324450430558769

`lcm(2, A009739(A005843(n)))`
-/

namespace A009747.P7708324450430558769
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A009739 (A005843 n).toNat)

end

end A009747.P7708324450430558769

/-! ## A009747.P9007477743048694524

`record[A009739(n)/A033999(n)]`
-/

namespace A009747.P9007477743048694524
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009739 n : ℚ) / (A033999 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A009747.P9007477743048694524

/-!
# A009748: Expansion of e.g.f. tan(x)*tan(sin(x)), even powers only.

The programs for A009748, there is no canonical definition to state claims against.
-/

/-! ## A009748.P13349035398869254606

`2*A024271(n)`
-/

namespace A009748.P13349035398869254606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A024271 n

end

end A009748.P13349035398869254606

/-! ## A009748.P1386417417861678843

`A024271(n)+A024271(A118759(n))`
-/

namespace A009748.P1386417417861678843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024271 n + A024271 (A118759 n).toNat

end

end A009748.P1386417417861678843

/-! ## A009748.P465617736379309118

`A024271(A262545(n+1))+A024271(n)`
-/

namespace A009748.P465617736379309118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024271 (A262545 (n + 1)).toNat + A024271 n

end

end A009748.P465617736379309118

/-! ## A009748.P12218452323167117234

`A024271(n)+A024271(A330336(n))`
-/

namespace A009748.P12218452323167117234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024271 n + A024271 (A330336 n).toNat

end

end A009748.P12218452323167117234

/-! ## A009748.P15602540874790505171

`A024271(n)+A024271(A351870(n))`
-/

namespace A009748.P15602540874790505171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024271 n + A024271 (A351870 n).toNat

end

end A009748.P15602540874790505171

/-!
# A009749: Expansion of e.g.f. tan(x)*tan(sinh(x)), even powers only.

The programs for A009749, there is no canonical definition to state claims against.
-/

/-! ## A009749.P8219731205987151263

`2*A024292(n)`
-/

namespace A009749.P8219731205987151263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A024292 n

end

end A009749.P8219731205987151263

/-! ## A009749.P17986950637832606933

`A024292(or(n, A000035(n)))+A024292(n)`
-/

namespace A009749.P17986950637832606933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024292 (Int.lor (n : ℤ) (A000035 n)).toNat + A024292 n

end

end A009749.P17986950637832606933

/-! ## A009749.P1180564287126808721

`A024292(n)+A024292(n)^gcd(13, A105812(n))`
-/

namespace A009749.P1180564287126808721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024292 n + A024292 n ^ Int.gcd 13 (A105812 n)

end

end A009749.P1180564287126808721

/-! ## A009749.P3898263722416482260

`A024292(n)+A024292(n)/A000164(A025428(n))`
-/

namespace A009749.P3898263722416482260
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024292 n : ℚ) + (A024292 n : ℚ) / (A000164 (A025428 n).toNat : ℚ)

end

end A009749.P3898263722416482260

/-! ## A009749.P4769686554128174075

`A024292(n)+A024292(n)%A184686(A001844(n))`
-/

namespace A009749.P4769686554128174075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024292 n + Int.tmod (A024292 n) (A184686 (A001844 n).toNat)

end

end A009749.P4769686554128174075

/-!
# A009750: Expansion of e.g.f. tan(x)*tan(tan(x)), even powers only.

The programs for A009750, there is no canonical definition to state claims against.
-/

/-! ## A009750.P2347108215547783340

`2*A024297(n)`
-/

namespace A009750.P2347108215547783340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A024297 n

end

end A009750.P2347108215547783340

/-! ## A009750.P684113061455659039

`A024297(n)+A024297(A118759(n))`
-/

namespace A009750.P684113061455659039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024297 n + A024297 (A118759 n).toNat

end

end A009750.P684113061455659039

/-! ## A009750.P17197156092474918842

`A024297(n)+A024297(A292579(n))`
-/

namespace A009750.P17197156092474918842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024297 n + A024297 (A292579 n).toNat

end

end A009750.P17197156092474918842

/-! ## A009750.P17559539371195023190

`A185284(A334206(n+1))+A024297(n)+A024297(n)`
-/

namespace A009750.P17559539371195023190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (A334206 (n + 1)).toNat + (A024297 n + A024297 n)

end

end A009750.P17559539371195023190

/-! ## A009750.P3751522382150101704

`A024297(n)+A024297(A051022(n))`
-/

namespace A009750.P3751522382150101704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024297 n + A024297 (A051022 n).toNat

end

end A009750.P3751522382150101704

/-!
# A009751: Expansion of e.g.f. tan(x)*tan(tanh(x)), even powers only.

The programs for A009751, there is no canonical definition to state claims against.
-/

/-! ## A009751.P15200293759870071248

`2*A024252(n)`
-/

namespace A009751.P15200293759870071248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A024252 n

end

end A009751.P15200293759870071248

/-! ## A009751.P6953582100108531565

`A024252(A002837(n+1))+A024252(n)`
-/

namespace A009751.P6953582100108531565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024252 (A002837 (n + 1)).toNat + A024252 n

end

end A009751.P6953582100108531565

/-! ## A009751.P4444821690311405517

`A024252(A008554(n+1))+A024252(n)`
-/

namespace A009751.P4444821690311405517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024252 (A008554 (n + 1)).toNat + A024252 n

end

end A009751.P4444821690311405517

/-!
# A009752: Expansion of e.g.f. tan(x)*x (even powers only).

The programs for A009752, there is no canonical definition to state claims against.
-/

/-! ## A009752.P6544597816271562350

`2*A024255(n)`
-/

namespace A009752.P6544597816271562350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A024255 n

end

end A009752.P6544597816271562350

/-! ## A009752.P12897401496114802070

`A009725(2*n)`
-/

namespace A009752.P12897401496114802070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009725 (2 * n)

end

end A009752.P12897401496114802070

/-! ## A009752.P13024753488029711609

`n*A012509(n)`
-/

namespace A009752.P13024753488029711609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A012509 n

end

end A009752.P13024753488029711609

/-! ## A009752.P15149685140331418890

`abs(A109573(2*n))`
-/

namespace A009752.P15149685140331418890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A109573 (2 * n)|

end

end A009752.P15149685140331418890

/-! ## A009752.P4294994824976731942

`record[lcm(2, A109573(n))]`
-/

namespace A009752.P4294994824976731942
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A109573 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A009752.P4294994824976731942

/-!
# A009753: Expansion of tan(x)/(1+x).

The programs for A009753, there is no canonical definition to state claims against.
-/

/-! ## A009753.P5780155419837449796

`A009006(n)-n*a(n-1)` with `a(0)=0`
-/

namespace A009753.P5780155419837449796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A009006 n - (n : ℤ) * a (n - 1)

end

end A009753.P5780155419837449796

/-! ## A009753.P4163516203294725378

`A350972(n)-n*a(n-1)` with `a(0)=0`
-/

namespace A009753.P4163516203294725378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A350972 n - (n : ℤ) * a (n - 1)

end

end A009753.P4163516203294725378

/-! ## A009753.P13162865930947324944

`A008280(∑[n]+n)-n*a(n-1)` with `a(0)=0, a(1)=1`
-/

namespace A009753.P13162865930947324944
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A008280 (∑ j ∈ Finset.range (n + 1), f1 j + n) - (n : ℤ) * a (n - 1)

end

end A009753.P13162865930947324944

/-! ## A009753.P6060634948134261519

`2*A009731(n)-A009725(n)`
-/

namespace A009753.P6060634948134261519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A009731 n - A009725 n

end

end A009753.P6060634948134261519

/-!
# A009754: Expansion of e.g.f. tan(x)/cos(log(1+x)).

The programs for A009754, there is no canonical definition to state claims against.
-/

/-! ## A009754.P2120339178642816152

`A059150(n)-A334232(A059167(n))`
-/

namespace A009754.P2120339178642816152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059150 n - A334232 (A059167 n).toNat

end

end A009754.P2120339178642816152

/-! ## A009754.P13046351660256105689

`A000129(n)*A214546(A006059(n))`
-/

namespace A009754.P13046351660256105689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 n * A214546 (A006059 n).toNat

end

end A009754.P13046351660256105689

/-!
# A009759: Expansion of (3 - 21*x + 4*x^2)/((x-1)*(x^2 - 6*x + 1)).

The programs for A009759, the canonical program `A009759.P12265777514946947809` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A009759 has offset 0).

The definition of A009759 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((-3+21x-4x^2)/(1-7x+7x^2-x^3))` (program `A009759.P12265777514946947809`, by `A009759.P12265777514946947809.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A009759.P12265777514946947809

`ogf((-3+21x-4x^2)/(1-7x+7x^2-x^3))`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A009759

/-- `ogf((-3+21x-4x^2)/(1-7x+7x^2-x^3))` -/
def P12265777514946947809.Spec : Prop :=
  ∀ n, P12265777514946947809.a n = A009759 n

theorem P12265777514946947809.correct : P12265777514946947809.Spec := by
  intro n
  simp only [A009759]

end A009759

/-! ## A009759.P5002748756516098113

`A001652(n)-3`
-/

namespace A009759.P5002748756516098113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001652 n - 3

end

end A009759.P5002748756516098113

namespace A009759

/-- `A001652(n)-3` -/
def P5002748756516098113.Spec : Prop :=
  ∀ n, P5002748756516098113.a n = A009759 n

end A009759

/-! ## A009759.P9008700540946541562

`floor(ceil(∑[((sqrt(2)+1)^n)²])/2)-3`
-/

namespace A009759.P9008700540946541562
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((Real.sqrt (2 : ℝ) + 1) ^ n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(⌈∑ j ∈ Finset.range (n + 1), f1 j⌉ : ℚ) / 2⌋ - 3

end

end A009759.P9008700540946541562

namespace A009759

/-- `floor(ceil(∑[((sqrt(2)+1)^n)²])/2)-3` -/
def P9008700540946541562.Spec : Prop :=
  ∀ n, P9008700540946541562.a n = A009759 n

end A009759

/-! ## A009759.P9293570209426901218

`record[A077921(n)-4]`
-/

namespace A009759.P9293570209426901218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077921 n - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A009759.P9293570209426901218

namespace A009759

/-- `record[A077921(n)-4]` -/
def P9293570209426901218.Spec : Prop :=
  ∀ n, P9293570209426901218.a n = A009759 n

end A009759

/-! ## A009759.P12639150791343646771

`(A002315(n)-7)/2`
-/

namespace A009759.P12639150791343646771
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002315 n - 7 : ℚ) / 2

end

end A009759.P12639150791343646771

namespace A009759

/-- `(A002315(n)-7)/2` -/
def P12639150791343646771.Spec : Prop :=
  ∀ n, P12639150791343646771.a n = (A009759 n : ℚ)

end A009759

/-! ## A009759.P1336203865438575824

`xor(2, A046090(n)-2)`
-/

namespace A009759.P1336203865438575824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 2 (A046090 n - 2)

end

end A009759.P1336203865438575824

namespace A009759

/-- `xor(2, A046090(n)-2)` -/
def P1336203865438575824.Spec : Prop :=
  ∀ n, P1336203865438575824.a n = A009759 n

end A009759

/-! ## A009759.P12784055473551394175

`xor(2, A024537(2*n)-2)`
-/

namespace A009759.P12784055473551394175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 2 (A024537 (2 * n) - 2)

end

end A009759.P12784055473551394175

namespace A009759

/-- `xor(2, A024537(2*n)-2)` -/
def P12784055473551394175.Spec : Prop :=
  ∀ n, P12784055473551394175.a n = A009759 n

end A009759

/-! ## A009759.P2718380739812038557

`xor(2, A097075(2*n+1)-1)`
-/

namespace A009759.P2718380739812038557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 2 (A097075 (2 * n + 1) - 1)

end

end A009759.P2718380739812038557

namespace A009759

/-- `xor(2, A097075(2*n+1)-1)` -/
def P2718380739812038557.Spec : Prop :=
  ∀ n, P2718380739812038557.a n = A009759 n

end A009759

/-! ## A009759.P10146422518549533983

`xor(2, A171842(2*n+1)-2)`
-/

namespace A009759.P10146422518549533983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 2 (A171842 (2 * n + 1) - 2)

end

end A009759.P10146422518549533983

namespace A009759

/-- `xor(2, A171842(2*n+1)-2)` -/
def P10146422518549533983.Spec : Prop :=
  ∀ n, P10146422518549533983.a n = A009759 n

end A009759

/-! ## A009759.P12799862040333534287

`(A143608(n)-A079496(n))*A143609(n+2)`
-/

namespace A009759.P12799862040333534287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A143608 n - A079496 n) * A143609 (n + 2)

end

end A009759.P12799862040333534287

namespace A009759

/-- `(A143608(n)-A079496(n))*A143609(n+2)` -/
def P12799862040333534287.Spec : Prop :=
  ∀ n, P12799862040333534287.a n = A009759 n

end A009759

/-!
# A009763: a(n) is (n+1)!*(n+2)! times coefficient of x^n in (log(1-x))^-1.

The programs for A009763, there is no canonical definition to state claims against.
-/

/-! ## A009763.P8677441015441116720

`abs(A002405(n+1)*A025527(n+2))`
-/

namespace A009763.P8677441015441116720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A002405 (n + 1) * A025527 (n + 2)|

end

end A009763.P8677441015441116720

/-!
# A009764: Expansion of e.g.f. tan(x)^2 (even powers only).

The programs for A009764, there is no canonical definition to state claims against.
-/

/-! ## A009764.P202084748456128576

`2*A024283(n)`
-/

namespace A009764.P202084748456128576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A024283 n

end

end A009764.P202084748456128576

/-! ## A009764.P3860478284373119581

`record[Δ[A009006(n)]]`
-/

namespace A009764.P3860478284373119581
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009006 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A009764.P3860478284373119581

/-! ## A009764.P6356574864995989645

`record[Δ[A155585(n)]]`
-/

namespace A009764.P6356574864995989645
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155585 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A009764.P6356574864995989645

/-! ## A009764.P1442511031254164433

`record[A009006(n+2)]`
-/

namespace A009764.P1442511031254164433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009006 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A009764.P1442511031254164433

/-! ## A009764.P7523800898580580890

`record[A350972(n+2)]`
-/

namespace A009764.P7523800898580580890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350972 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A009764.P7523800898580580890

/-!
# A009766: Catalan's triangle T(n,k) (read by rows): each term is the sum of the entries above and to the left, i.e., T(n,k) = Sum_{j=0..k} T(n-1,j).

The programs for A009766, the canonical program `A009766.P5825357266757824641` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A009766 has offset 0).

The definition of A009766 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A009766.P10663568674193855479

`A156197(n)-A033184(n+1)`
-/

namespace A009766.P10663568674193855479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156197 n - A033184 (n + 1)

end

end A009766.P10663568674193855479

namespace A009766

/-- `A156197(n)-A033184(n+1)` -/
def P10663568674193855479.Spec : Prop :=
  ∀ n, P10663568674193855479.a n = A009766 n

end A009766

/-! ## A009766.P5825357266757824641

`2*A046899(n)-A178300(n+1)`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A009766

/-- `2*A046899(n)-A178300(n+1)` -/
def P5825357266757824641.Spec : Prop :=
  ∀ n, P5825357266757824641.a n = A009766 n

theorem P5825357266757824641.correct : P5825357266757824641.Spec := by
  intro n
  simp only [A009766]

end A009766

/-! ## A009766.P15385466185422072926

`2*A046899(n)-A046899(A007401(n+1))`
-/

namespace A009766.P15385466185422072926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A046899 n - A046899 (A007401 (n + 1)).toNat

end

end A009766.P15385466185422072926

namespace A009766

/-- `2*A046899(n)-A046899(A007401(n+1))` -/
def P15385466185422072926.Spec : Prop :=
  ∀ n, P15385466185422072926.a n = A009766 n

end A009766

/-! ## A009766.P6358558852874982390

`A007318(n)/A007318(A007401(n+1))*A046899(n)`
-/

namespace A009766.P6358558852874982390
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007318 n : ℚ) / (A007318 (A007401 (n + 1)).toNat : ℚ) * (A046899 n : ℚ)

end

end A009766.P6358558852874982390

namespace A009766

/-- `A007318(n)/A007318(A007401(n+1))*A046899(n)` -/
def P6358558852874982390.Spec : Prop :=
  ∀ n, P6358558852874982390.a n = (A009766 n : ℚ)

end A009766

/-! ## A009766.P14955032664339907724

`A355173(A023532(n)+n)`
-/

namespace A009766.P14955032664339907724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355173 (A023532 n + (n : ℤ)).toNat

end

end A009766.P14955032664339907724

namespace A009766

/-- `A355173(A023532(n)+n)` -/
def P14955032664339907724.Spec : Prop :=
  ∀ n, P14955032664339907724.a n = A009766 n

end A009766

/-! ## A009766.P7529789081391118861

`A355173(A123110(n+1)+n)`
-/

namespace A009766.P7529789081391118861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355173 (A123110 (n + 1) + (n : ℤ)).toNat

end

end A009766.P7529789081391118861

namespace A009766

/-- `A355173(A123110(n+1)+n)` -/
def P7529789081391118861.Spec : Prop :=
  ∀ n, P7529789081391118861.a n = A009766 n

end A009766

/-! ## A009766.P12124281405085222174

`A355173(n+1)+A010054(n+1)*A355173(n)`
-/

namespace A009766.P12124281405085222174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355173 (n + 1) + A010054 (n + 1) * A355173 n

end

end A009766.P12124281405085222174

namespace A009766

/-- `A355173(n+1)+A010054(n+1)*A355173(n)` -/
def P12124281405085222174.Spec : Prop :=
  ∀ n, P12124281405085222174.a n = A009766 n

end A009766

/-! ## A009766.P9412185263890251223

`A033184(A038722(n+1))`
-/

namespace A009766.P9412185263890251223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033184 (A038722 (n + 1)).toNat

end

end A009766.P9412185263890251223

namespace A009766

/-- `A033184(A038722(n+1))` -/
def P9412185263890251223.Spec : Prop :=
  ∀ n, P9412185263890251223.a n = A009766 n

end A009766

/-! ## A009766.P6554592201877368138

`A106566(A099375(n)+1+n)`
-/

namespace A009766.P6554592201877368138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106566 (A099375 n + 1 + (n : ℤ)).toNat

end

end A009766.P6554592201877368138

namespace A009766

/-- `A106566(A099375(n)+1+n)` -/
def P6554592201877368138.Spec : Prop :=
  ∀ n, P6554592201877368138.a n = A009766 n

end A009766

/-! ## A009766.P17169627607549694526

`A106566(2*A004736(n+1)+n)`
-/

namespace A009766.P17169627607549694526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106566 (2 * A004736 (n + 1) + (n : ℤ)).toNat

end

end A009766.P17169627607549694526

namespace A009766

/-- `A106566(2*A004736(n+1)+n)` -/
def P17169627607549694526.Spec : Prop :=
  ∀ n, P17169627607549694526.a n = A009766 n

end A009766

/-! ## A009766.P1987876701742303384

`A106566(A004736(n+1)+A004736(n+1)+n)`
-/

namespace A009766.P1987876701742303384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106566 (A004736 (n + 1) + (A004736 (n + 1) + (n : ℤ))).toNat

end

end A009766.P1987876701742303384

namespace A009766

/-- `A106566(A004736(n+1)+A004736(n+1)+n)` -/
def P1987876701742303384.Spec : Prop :=
  ∀ n, P1987876701742303384.a n = A009766 n

end A009766

/-! ## A009766.P1116705515786459176

`A130020(comp[∑[n-1]])`
-/

namespace A009766.P1116705515786459176
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130020 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A009766.P1116705515786459176

namespace A009766

/-- `A130020(comp[∑[n-1]])` -/
def P1116705515786459176.Spec : Prop :=
  ∀ n, P1116705515786459176.a n = A009766 n

end A009766

/-! ## A009766.P889667085852707854

`A059365(2*A004736(n+1)+n)`
-/

namespace A009766.P889667085852707854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059365 (2 * A004736 (n + 1) + (n : ℤ)).toNat

end

end A009766.P889667085852707854

namespace A009766

/-- `A059365(2*A004736(n+1)+n)` -/
def P889667085852707854.Spec : Prop :=
  ∀ n, P889667085852707854.a n = A009766 n

end A009766

/-! ## A009766.P4378111976811565230

`A059365(A004736(n+1)+A004736(n+1)+n)`
-/

namespace A009766.P4378111976811565230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059365 (A004736 (n + 1) + (A004736 (n + 1) + (n : ℤ))).toNat

end

end A009766.P4378111976811565230

namespace A009766

/-- `A059365(A004736(n+1)+A004736(n+1)+n)` -/
def P4378111976811565230.Spec : Prop :=
  ∀ n, P4378111976811565230.a n = A009766 n

end A009766

/-! ## A009766.P3842736250132916821

`A007318(n)/A001263(n+1)*A088617(n)`
-/

namespace A009766.P3842736250132916821
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007318 n : ℚ) / (A001263 (n + 1) : ℚ) * (A088617 n : ℚ)

end

end A009766.P3842736250132916821

namespace A009766

/-- `A007318(n)/A001263(n+1)*A088617(n)` -/
def P3842736250132916821.Spec : Prop :=
  ∀ n, P3842736250132916821.a n = (A009766 n : ℚ)

end A009766

/-! ## A009766.P13203995070649559851

`A003989(n+1)/A050169(n+1)*A088617(n)`
-/

namespace A009766.P13203995070649559851
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003989 (n + 1) : ℚ) / (A050169 (n + 1) : ℚ) * (A088617 n : ℚ)

end

end A009766.P13203995070649559851

namespace A009766

/-- `A003989(n+1)/A050169(n+1)*A088617(n)` -/
def P13203995070649559851.Spec : Prop :=
  ∀ n, P13203995070649559851.a n = (A009766 n : ℚ)

end A009766

/-! ## A009766.P3661320261730134631

`A063007(n)/A074909(n)`
-/

namespace A009766.P3661320261730134631
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A063007 n : ℚ) / (A074909 n : ℚ)

end

end A009766.P3661320261730134631

namespace A009766

/-- `A063007(n)/A074909(n)` -/
def P3661320261730134631.Spec : Prop :=
  ∀ n, P3661320261730134631.a n = (A009766 n : ℚ)

end A009766

/-! ## A009766.P130749494339233103

`A007318(n)/A132813(n)*A063007(n)`
-/

namespace A009766.P130749494339233103
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007318 n : ℚ) / (A132813 n : ℚ) * (A063007 n : ℚ)

end

end A009766.P130749494339233103

namespace A009766

/-- `A007318(n)/A132813(n)*A063007(n)` -/
def P130749494339233103.Spec : Prop :=
  ∀ n, P130749494339233103.a n = (A009766 n : ℚ)

end A009766

/-! ## A009766.P18280759120641850447

`A063007(n)/A007318(A014132(n+1)-1)`
-/

namespace A009766.P18280759120641850447
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A063007 n : ℚ) / (A007318 (A014132 (n + 1) - 1).toNat : ℚ)

end

end A009766.P18280759120641850447

namespace A009766

/-- `A063007(n)/A007318(A014132(n+1)-1)` -/
def P18280759120641850447.Spec : Prop :=
  ∀ n, P18280759120641850447.a n = (A009766 n : ℚ)

end A009766

/-!
# A009767: Expansion of e.g.f. tan(x^2)/2 in odd powers of x^2.

The programs for A009767, there is no canonical definition to state claims against.
-/

/-! ## A009767.P16803420371413175195

`A024348(n)/2`
-/

namespace A009767.P16803420371413175195
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024348 n : ℚ) / 2

end

end A009767.P16803420371413175195

/-! ## A009767.P18059602593151482707

`A000182(n+1)*A268432(2*n+1)`
-/

namespace A009767.P18059602593151482707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000182 (n + 1) * A268432 (2 * n + 1)

end

end A009767.P18059602593151482707

/-!
# A009768: Expansion of e.g.f. tanh(exp(x)*x).

The programs for A009768, there is no canonical definition to state claims against.
-/

/-! ## A009768.P8854357849182925795

`n-A111859(A219925(n))`
-/

namespace A009768.P8854357849182925795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A111859 (A219925 n).toNat

end

end A009768.P8854357849182925795

/-! ## A009768.P2721528467497965174

`n-A245445(A241271(n))`
-/

namespace A009768.P2721528467497965174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A245445 (A241271 n).toNat

end

end A009768.P2721528467497965174

/-!
# A009769: Expansion of tanh(log(1+1/x)).

The programs for A009769, there is no canonical definition to state claims against.
-/

/-! ## A009769.P7562943574480370439

`2^n*A009014(n)`
-/

namespace A009769.P7562943574480370439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A009014 n

end

end A009769.P7562943574480370439

/-! ## A009769.P14282270537560623100

`n!*A090132(n)`
-/

namespace A009769.P14282270537560623100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A090132 n

end

end A009769.P14282270537560623100

/-! ## A009769.P3263073842548096299

`A009116(n+5)/4*n!`
-/

namespace A009769.P3263073842548096299
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009116 (n + 5) : ℚ) / 4 * (Nat.factorial n : ℚ)

end

end A009769.P3263073842548096299

/-! ## A009769.P12948640122701522785

`∏[A028310(n)]*A090132(n)`
-/

namespace A009769.P12948640122701522785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) * A090132 n

end

end A009769.P12948640122701522785

/-! ## A009769.P18365966537668363496

`A081123(2*n)*A090132(n)`
-/

namespace A009769.P18365966537668363496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081123 (2 * n) * A090132 n

end

end A009769.P18365966537668363496

/-! ## A009769.P6054080087186960125

`A087960(n)*A118434(n)*n!`
-/

namespace A009769.P6054080087186960125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087960 n * A118434 n * (Nat.factorial n : ℤ)

end

end A009769.P6054080087186960125

/-! ## A009769.P1579822131332594421

`A090132(n)*A094587(A000124(n))`
-/

namespace A009769.P1579822131332594421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090132 n * A094587 (A000124 n).toNat

end

end A009769.P1579822131332594421

/-!
# A009775: Exponential generating function is tanh(log(1+x)).

The programs for A009775, there is no canonical definition to state claims against.
-/

/-! ## A009775.P5206931918457266604

`floor(acot(n)-A217260(n+1))`
-/

namespace A009775.P5206931918457266604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (n : ℝ) - (A217260 (n + 1) : ℝ)⌋

end

end A009775.P5206931918457266604

/-! ## A009775.P8766547628187798611

`A057428(n)*A217260(n+1)`
-/

namespace A009775.P8766547628187798611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n * A217260 (n + 1)

end

end A009775.P8766547628187798611

/-! ## A009775.P1740007010965778746

`char[A217225(n+1)]-A217260(n+1)`
-/

namespace A009775.P1740007010965778746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217225 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) - A217260 (n + 1)

end

end A009775.P1740007010965778746

/-! ## A009775.P4710870867709544548

`char[A217260(3*n+2)]-A217260(n+1)`
-/

namespace A009775.P4710870867709544548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217260 (3 * n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) - A217260 (n + 1)

end

end A009775.P4710870867709544548

/-! ## A009775.P15489301218743715000

`A000007(n)-A154341(A000096(n))`
-/

namespace A009775.P15489301218743715000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n - A154341 (A000096 n).toNat

end

end A009775.P15489301218743715000

/-! ## A009775.P16085083979978491868

`A151934(n)-A154341(A000096(n))`
-/

namespace A009775.P16085083979978491868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151934 n - A154341 (A000096 n).toNat

end

end A009775.P16085083979978491868

/-!
# A009777: E.g.f. tanh(log(1+x))*cosh(x).

The programs for A009777, there is no canonical definition to state claims against.
-/

/-! ## A009777.P8520148888384143548

`(A009782(n)+A009778(n))/2`
-/

namespace A009777.P8520148888384143548
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009782 n + A009778 n : ℚ) / 2

end

end A009777.P8520148888384143548

/-! ## A009777.P6878565881659483537

`(A009782(n)+A009778(n))*2^A008683(A007918(n))`
-/

namespace A009777.P6878565881659483537
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009782 n + A009778 n : ℚ) * (2 : ℚ) ^ (A008683 (A007918 n).toNat : ℤ)

end

end A009777.P6878565881659483537

/-!
# A009778: Expansion of e.g.f.: tanh(log(1+x))*exp(x).

The programs for A009778, there is no canonical definition to state claims against.
-/

/-! ## A009778.P17703809366779926264

`2*A009777(n)-A009782(n)`
-/

namespace A009778.P17703809366779926264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A009777 n - A009782 n

end

end A009778.P17703809366779926264

/-! ## A009778.P1443007833663326266

`2*A009777(n)+A009782(n)*A305974(A005384(n+1))`
-/

namespace A009778.P1443007833663326266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A009777 n + A009782 n * A305974 (A005384 (n + 1)).toNat

end

end A009778.P1443007833663326266

/-!
# A009779: Expansion of e.g.f.: tanh(log(1+x))*log(1+x).

The programs for A009779, there is no canonical definition to state claims against.
-/

/-! ## A009779.P2354659258048376498

`2*A024330(n)`
-/

namespace A009779.P2354659258048376498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A024330 n

end

end A009779.P2354659258048376498

/-! ## A009779.P9225118192221612543

`A024330(round(sqrt(n²+1)))+A024330(n)`
-/

namespace A009779.P9225118192221612543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024330 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat + A024330 n

end

end A009779.P9225118192221612543

/-!
# A009782: E.g.f.: expansion of tanh(log(1+x))/exp(x).

The programs for A009782, there is no canonical definition to state claims against.
-/

/-! ## A009782.P6135520603247008244

`2*A009777(n)-A009778(n)`
-/

namespace A009782.P6135520603247008244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A009777 n - A009778 n

end

end A009782.P6135520603247008244

/-! ## A009782.P4908022630672216610

`2*A009777(n)+A009778(n)*A057428(n)`
-/

namespace A009782.P4908022630672216610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A009777 n + A009778 n * A057428 n

end

end A009782.P4908022630672216610

/-!
# A009789: Expansion of e.g.f.: tanh(log(1+x)^2).

The programs for A009789, there is no canonical definition to state claims against.
-/

/-! ## A009789.P2889914620115520092

`2*A024333(n)`
-/

namespace A009789.P2889914620115520092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A024333 n

end

end A009789.P2889914620115520092

/-! ## A009789.P2588279086889512256

`A024333(round(sqrt(n²+1)))+A024333(n)`
-/

namespace A009789.P2588279086889512256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024333 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat + A024333 n

end

end A009789.P2588279086889512256

/-! ## A009789.P6439409274726626368

`A024333(n)/2^A008683(A020483(n))`
-/

namespace A009789.P6439409274726626368
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024333 n : ℚ) / (2 : ℚ) ^ (A008683 (A020483 n).toNat : ℤ)

end

end A009789.P6439409274726626368

/-! ## A009789.P3851354053709386326

`A024333(n)+A024333(n)%A024333(n+3)`
-/

namespace A009789.P3851354053709386326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024333 n + Int.tmod (A024333 n) (A024333 (n + 3))

end

end A009789.P3851354053709386326

/-! ## A009789.P8585768989670039678

`A012269(A087019(n))`
-/

namespace A009789.P8585768989670039678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012269 (A087019 n).toNat

end

end A009789.P8585768989670039678

/-!
# A009792: Expansion of tanh(sin(tan(x))).

The programs for A009792, there is no canonical definition to state claims against.
-/

/-! ## A009792.P15174493481959796552

`A094363(3^A264985(n))`
-/

namespace A009792.P15174493481959796552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094363 (SequenceMachineLib.roundAway ((3 : ℚ) ^ (A264985 n : ℤ))).toNat

end

end A009792.P15174493481959796552

/-!
# A009793: Expansion of tanh(sin(x))*cos(x).

The programs for A009793, there is no canonical definition to state claims against.
-/

/-! ## A009793.P14471169730475348670

`-A009384(2*(n+1))`
-/

namespace A009793.P14471169730475348670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A009384 (2 * (n + 1))

end

end A009793.P14471169730475348670

/-! ## A009793.P4929554113724640894

`A010051(2*(n+2))-A009384(2*(n+1))`
-/

namespace A009793.P4929554113724640894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (2 * (n + 2)) - A009384 (2 * (n + 1))

end

end A009793.P4929554113724640894

/-! ## A009793.P9639846037160675051

`A010681(2*(n+2))-A009384(2*(n+1))`
-/

namespace A009793.P9639846037160675051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010681 (2 * (n + 2)) - A009384 (2 * (n + 1))

end

end A009793.P9639846037160675051

/-! ## A009793.P762972154398014583

`floor(acot(n)²)*A241816(n)-A009384(2*(n+1))`
-/

namespace A009793.P762972154398014583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (n : ℝ) ^ 2⌋ * A241816 n - A009384 (2 * (n + 1))

end

end A009793.P762972154398014583

/-! ## A009793.P6879249865709884093

`A055672(A000290(n))-A009384(2*n+2)`
-/

namespace A009793.P6879249865709884093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055672 (A000290 n).toNat - A009384 (2 * n + 2)

end

end A009793.P6879249865709884093

/-!
# A009795: Expansion of tanh(sin(x))*sin(x).

The programs for A009795, there is no canonical definition to state claims against.
-/

/-! ## A009795.P14538026052024010990

`2*A024285(n)`
-/

namespace A009795.P14538026052024010990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A024285 n

end

end A009795.P14538026052024010990

/-! ## A009795.P1603552877830824916

`A024285(n)+A024285(A292579(n))`
-/

namespace A009795.P1603552877830824916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024285 n + A024285 (A292579 n).toNat

end

end A009795.P1603552877830824916

/-! ## A009795.P303670654927159328

`A024285(A262065(n+1))+A024285(n)`
-/

namespace A009795.P303670654927159328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024285 (A262065 (n + 1)).toNat + A024285 n

end

end A009795.P303670654927159328

/-! ## A009795.P2610008223663137131

`A024285(n)+A024285(n)+A000007(n+1)`
-/

namespace A009795.P2610008223663137131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024285 n + (A024285 n + A000007 (n + 1))

end

end A009795.P2610008223663137131

/-! ## A009795.P16052562585260800986

`A024285(n)+A024285(A055647(n))`
-/

namespace A009795.P16052562585260800986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024285 n + A024285 (A055647 n).toNat

end

end A009795.P16052562585260800986

/-!
# A009796: Expansion of tanh(sin(x))*tan(x).

The programs for A009796, there is no canonical definition to state claims against.
-/

/-! ## A009796.P737298958188116232

`2*A024242(n)`
-/

namespace A009796.P737298958188116232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A024242 n

end

end A009796.P737298958188116232

/-! ## A009796.P5026668145710452770

`A024242(n/A054977(n))+A024242(n)`
-/

namespace A009796.P5026668145710452770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024242 (SequenceMachineLib.roundAway ((n : ℚ) / (A054977 n : ℚ))).toNat + A024242 n

end

end A009796.P5026668145710452770

/-! ## A009796.P9460647176163338560

`A024242(A004874(n+1))+A024242(n)`
-/

namespace A009796.P9460647176163338560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024242 (A004874 (n + 1)).toNat + A024242 n

end

end A009796.P9460647176163338560

/-! ## A009796.P6571276733076842595

`A024242(n)+A024242(A120126(n))`
-/

namespace A009796.P6571276733076842595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024242 n + A024242 (A120126 n).toNat

end

end A009796.P6571276733076842595

/-! ## A009796.P6499804404687984628

`A024242(n)+A024242(A046469(n))`
-/

namespace A009796.P6499804404687984628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024242 n + A024242 (A046469 n).toNat

end

end A009796.P6499804404687984628

/-!
# A009797: Expansion of tanh(sin(x))/cos(x) (odd powers only).

The programs for A009797, there is no canonical definition to state claims against.
-/

/-! ## A009797.P1735399430244503316

`A008960(A009105(n))*A009089(n)`
-/

namespace A009797.P1735399430244503316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008960 (A009105 n).toNat * A009089 n

end

end A009797.P1735399430244503316

/-!
# A009799: E.g.f. tanh(sin(x)*exp(x)).

The programs for A009799, there is no canonical definition to state claims against.
-/

/-! ## A009799.P14130481687693631145

`2^n-A325795(ceil(∑[3^(n-2)]))`
-/

namespace A009799.P14130481687693631145
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ ((n : ℤ) - 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A325795 ⌈∑ j ∈ Finset.range (n + 1), f1 j⌉.toNat

end

end A009799.P14130481687693631145

/-! ## A009799.P6096489379177213356

`n-A002266(A202360(n))`
-/

namespace A009799.P6096489379177213356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A002266 (A202360 n).toNat

end

end A009799.P6096489379177213356

