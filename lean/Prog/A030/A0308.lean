import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C032
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B002.C001
import Seq.B002.C003
import Seq.B002.C004
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C002
import Seq.B006.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
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
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C024

/-!
# A030800: a(n) = floor(exp(19/24)*n!).

The programs for A030800, there is no canonical definition to state claims against.
-/

/-! ## A030800.P12382017047464760600

`round(A286923((n+1)!)/2)`
-/

namespace A030800.P12382017047464760600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A286923 (Nat.factorial (n + 1)) : ℚ) / 2)

end

end A030800.P12382017047464760600

/-! ## A030800.P10125802371655074872

`A195128(A003152((n+1)!))`
-/

namespace A030800.P10125802371655074872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195128 (A003152 (Nat.factorial (n + 1))).toNat

end

end A030800.P10125802371655074872

/-! ## A030800.P3688078505303301360

`A286924(A188375((n+1)!))`
-/

namespace A030800.P3688078505303301360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286924 (A188375 (Nat.factorial (n + 1))).toNat

end

end A030800.P3688078505303301360

/-!
# A030801: a(n) = floor(exp(17/24)*n!).

The programs for A030801, there is no canonical definition to state claims against.
-/

/-! ## A030801.P12234105034679449757

`A297241(a(n-1))+(n+1)*a(n-1)` with `a(0)=2`
-/

namespace A030801.P12234105034679449757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A297241 (a (n - 1)).toNat + (n + 1 : ℤ) * a (n - 1)

end

end A030801.P12234105034679449757

/-! ## A030801.P8717635420597096421

`A030906(n+1)+A008619(A030799(n+1))`
-/

namespace A030801.P8717635420597096421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030906 (n + 1) + A008619 (A030799 (n + 1)).toNat

end

end A030801.P8717635420597096421

/-!
# A030802: a(n) = floor( exp(13/24)*n! ).

The programs for A030802, there is no canonical definition to state claims against.
-/

/-! ## A030802.P16855525788719157496

`A067535(A344876(n)+(n+1)*a(n-1)+1)` with `a(0)=1`
-/

namespace A030802.P16855525788719157496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A067535 (A344876 n + (n + 1 : ℤ) * a (n - 1) + 1).toNat

end

end A030802.P16855525788719157496

/-! ## A030802.P2707077265237232488

`A114730(A056040(n))+A038156(n+1)`
-/

namespace A030802.P2707077265237232488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114730 (A056040 n).toNat + A038156 (n + 1)

end

end A030802.P2707077265237232488

/-! ## A030802.P6149308531878324826

`A185238(A167499(n))+A002627(n+1)`
-/

namespace A030802.P6149308531878324826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185238 (A167499 n).toNat + A002627 (n + 1)

end

end A030802.P6149308531878324826

/-!
# A030803: a(n) = floor(exp(11/24)*n!).

The programs for A030803, there is no canonical definition to state claims against.
-/

/-! ## A030803.P17096157911778572060

`A000720(A249669((n+1)*a(n-1)-(n-1)))` with `a(0)=1`
-/

namespace A030803.P17096157911778572060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000720 (A249669 ((n + 1 : ℤ) * a (n - 1) - ((n : ℤ) - 1)).toNat).toNat

end

end A030803.P17096157911778572060

/-! ## A030803.P10455149210299557043

`A030818(n+1)-A033183(A030826(n+1))`
-/

namespace A030803.P10455149210299557043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030818 (n + 1) - A033183 (A030826 (n + 1)).toNat

end

end A030803.P10455149210299557043

/-!
# A030804: a(n) = floor(exp(7/24)*n!).

The programs for A030804, there is no canonical definition to state claims against.
-/

/-! ## A030804.P9902545305455539564

`A008620(A268620((n+1)!))`
-/

namespace A030804.P9902545305455539564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A268620 (Nat.factorial (n + 1))).toNat

end

end A030804.P9902545305455539564

/-! ## A030804.P13018262312864559339

`A269393(A375604(n)+A099486(n))`
-/

namespace A030804.P13018262312864559339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269393 (A375604 n + A099486 n).toNat

end

end A030804.P13018262312864559339

/-!
# A030805: a(n) = floor(exp(5/24)*n!).

The programs for A030805, there is no canonical definition to state claims against.
-/

/-! ## A030805.P5216889529134524209

`or(A004396(A030880(n+1)), A270339(n+1))`
-/

namespace A030805.P5216889529134524209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A004396 (A030880 (n + 1)).toNat) (A270339 (n + 1))

end

end A030805.P5216889529134524209

/-! ## A030805.P745960177349033562

`A057363(2*(n+1)!)`
-/

namespace A030805.P745960177349033562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057363 (2 * Nat.factorial (n + 1))

end

end A030805.P745960177349033562

/-!
# A030806: a(n) = floor(exp(1/24)*n!).

The programs for A030806, there is no canonical definition to state claims against.
-/

/-! ## A030806.P888150324798120728

`A032798(A189598(n+1)+A001563(n))`
-/

namespace A030806.P888150324798120728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032798 (A189598 (n + 1) + A001563 n).toNat

end

end A030806.P888150324798120728

/-! ## A030806.P3662043632026143644

`A030851(n+1)-A341840(A030803(n+1))`
-/

namespace A030806.P3662043632026143644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030851 (n + 1) - A341840 (A030803 (n + 1)).toNat

end

end A030806.P3662043632026143644

/-!
# A030807: a(n) = floor(exp(22/23) * n!).

The programs for A030807, there is no canonical definition to state claims against.
-/

/-! ## A030807.P14846085457563425836

`A297109(A276268(n))+A030829(n+1)`
-/

namespace A030807.P14846085457563425836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297109 (A276268 n).toNat + A030829 (n + 1)

end

end A030807.P14846085457563425836

/-! ## A030807.P3919369268770261064

`A364019((n+1)*a(n-1)+1)` with `a(0)=2`
-/

namespace A030807.P3919369268770261064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A364019 ((n + 1 : ℤ) * a (n - 1) + 1).toNat

end

end A030807.P3919369268770261064

/-!
# A030808: a(n) = floor(exp(21/23) * n!).

The programs for A030808, there is no canonical definition to state claims against.
-/

/-! ## A030808.P8119356501556620751

`record[A140356(n)]+floor(exp(2/5)*(n+1)!)`
-/

namespace A030808.P8119356501556620751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140356 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + ⌊Real.exp ((2 : ℚ) / 5 : ℝ) * (Nat.factorial (n + 1) : ℝ)⌋

end

end A030808.P8119356501556620751

/-! ## A030808.P16486927321667053770

`A029916(A030886(n+1))`
-/

namespace A030808.P16486927321667053770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029916 (A030886 (n + 1)).toNat

end

end A030808.P16486927321667053770

/-!
# A030809: a(n) = floor(exp(20/23) * n!).

The programs for A030809, there is no canonical definition to state claims against.
-/

/-! ## A030809.P5123503975053097857

`A004273(A030897(n+1))+A001055(n+1)`
-/

namespace A030809.P5123503975053097857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A030897 (n + 1)).toNat + A001055 (n + 1)

end

end A030809.P5123503975053097857

/-! ## A030809.P14371765688931517287

`A065033(A030866(n+1))+A030871(n+1)`
-/

namespace A030809.P14371765688931517287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A030866 (n + 1)).toNat + A030871 (n + 1)

end

end A030809.P14371765688931517287

/-! ## A030809.P6987966232562873736

`A001222(A000032(A000032(n)))+(n+1)*a(n-1)` with `a(0)=2`
-/

namespace A030809.P6987966232562873736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A001222 (A000032 (A000032 n).toNat).toNat + (n + 1 : ℤ) * a (n - 1)

end

end A030809.P6987966232562873736

/-!
# A030810: Floor(exp(19/23) * n!).

The programs for A030810, there is no canonical definition to state claims against.
-/

/-! ## A030810.P7065281065626938018

`A189383(A000142(n+1))+A008679(n)`
-/

namespace A030810.P7065281065626938018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189383 (A000142 (n + 1)).toNat + A008679 n

end

end A030810.P7065281065626938018

/-! ## A030810.P13366825286305124184

`A002264(A004919((n+1)!))`
-/

namespace A030810.P13366825286305124184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A004919 (Nat.factorial (n + 1))).toNat

end

end A030810.P13366825286305124184

/-!
# A030811: a(n) = floor(exp(18/23) * n!).

The programs for A030811, there is no canonical definition to state claims against.
-/

/-! ## A030811.P8347477648549870538

`A030893(n+1)+A004525(A030822(n+1))`
-/

namespace A030811.P8347477648549870538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030893 (n + 1) + A004525 (A030822 (n + 1)).toNat

end

end A030811.P8347477648549870538

/-! ## A030811.P2767172587629841920

`A311331(A030813(n+1))/4`
-/

namespace A030811.P2767172587629841920
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A311331 (A030813 (n + 1)).toNat : ℚ) / 4

end

end A030811.P2767172587629841920

/-!
# A030812: a(n) = floor(exp(17/23) * n!).

The programs for A030812, there is no canonical definition to state claims against.
-/

/-! ## A030812.P7270860775963834361

`A030857(n+1)+A004524(A030950(n+1)+2)`
-/

namespace A030812.P7270860775963834361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030857 (n + 1) + A004524 (A030950 (n + 1) + 2).toNat

end

end A030812.P7270860775963834361

/-! ## A030812.P11380147286521779051

`A137804(A097624(n+1)!)`
-/

namespace A030812.P11380147286521779051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137804 (Nat.factorial (A097624 (n + 1)).toNat)

end

end A030812.P11380147286521779051

/-!
# A030813: a(n) = floor(exp(16/23) * n!).

The programs for A030813, there is no canonical definition to state claims against.
-/

/-! ## A030813.P16105097560000581732

`A053164(n^(n-1))+(n+1)*a(n-1)-A122921(n+1)` with `a(0)=2`
-/

namespace A030813.P16105097560000581732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A053164 (SequenceMachineLib.roundAway ((n : ℚ) ^ ((n : ℤ) - 1 : ℤ))).toNat + (n + 1 : ℤ) * a (n - 1) - A122921 (n + 1)

end

end A030813.P16105097560000581732

/-! ## A030813.P17059068056308228643

`A030927(n+1)+A008621(A030932(n+1))`
-/

namespace A030813.P17059068056308228643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030927 (n + 1) + A008621 (A030932 (n + 1)).toNat

end

end A030813.P17059068056308228643

/-! ## A030813.P9686429595148965637

`A173276(A030956(n+1))+A030834(n+1)`
-/

namespace A030813.P9686429595148965637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173276 (A030956 (n + 1)).toNat + A030834 (n + 1)

end

end A030813.P9686429595148965637

/-!
# A030814: a(n) = floor(exp(15/23) * n!).

The programs for A030814, there is no canonical definition to state claims against.
-/

/-! ## A030814.P7456791597362642206

`A334819((n+1)*a(n-1)+3)` with `a(0)=1`
-/

namespace A030814.P7456791597362642206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A334819 ((n + 1 : ℤ) * a (n - 1) + 3).toNat

end

end A030814.P7456791597362642206

/-! ## A030814.P4968553526134366604

`A172275(2*(n+1)!)`
-/

namespace A030814.P4968553526134366604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172275 (2 * Nat.factorial (n + 1))

end

end A030814.P4968553526134366604

/-!
# A030815: a(n) = floor(exp(14/23) * n!).

The programs for A030815, the canonical program `A030815.P2156401424604703095` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A030815 has offset 0).

The definition of A030815 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(exp(14/23)*n!)` (program `A030815.P2156401424604703095`, by `A030815.P2156401424604703095.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A030815.P2156401424604703095

`floor(exp(14/23)*n!)`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A030815

/-- `floor(exp(14/23)*n!)` -/
def P2156401424604703095.Spec : Prop :=
  ∀ n, P2156401424604703095.a n = A030815 n

theorem P2156401424604703095.correct : P2156401424604703095.Spec := by
  intro n
  simp only [A030815]

end A030815

/-! ## A030815.P6298315603532387800

`ceil(exp(14/23)*n!)-1`
-/

namespace A030815.P6298315603532387800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.exp ((14 : ℚ) / 23 : ℝ) * (Nat.factorial n : ℝ)⌉ - 1

end

end A030815.P6298315603532387800

namespace A030815

/-- `ceil(exp(14/23)*n!)-1` -/
def P6298315603532387800.Spec : Prop :=
  ∀ n, P6298315603532387800.a n = A030815 n

end A030815

/-! ## A030815.P12149879408763735401

`A094391(n!)`
-/

namespace A030815.P12149879408763735401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094391 (Nat.factorial n)

end

end A030815.P12149879408763735401

namespace A030815

/-- `A094391(n!)` -/
def P12149879408763735401.Spec : Prop :=
  ∀ n, P12149879408763735401.a n = A030815 n

end A030815

/-! ## A030815.P5782977034130663631

`A094391(A033646(n))`
-/

namespace A030815.P5782977034130663631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094391 (A033646 n).toNat

end

end A030815.P5782977034130663631

namespace A030815

/-- `A094391(A033646(n))` -/
def P5782977034130663631.Spec : Prop :=
  ∀ n, P5782977034130663631.a n = A030815 n

end A030815

/-!
# A030816: a(n) = floor(exp(13/23)*n!).

The programs for A030816, there is no canonical definition to state claims against.
-/

/-! ## A030816.P14586623621746382106

`A030118((n+1)*a(n-1))` with `a(0)=1, a(1)=3`
-/

namespace A030816.P14586623621746382106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  A030118 ((n + 1 : ℤ) * a (n - 1)).toNat

end

end A030816.P14586623621746382106

/-! ## A030816.P994621563923098093

`A013951(A008619((n+1)*a(n-1)))` with `a(0)=1, a(1)=3`
-/

namespace A030816.P994621563923098093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  A013951 (A008619 ((n + 1 : ℤ) * a (n - 1)).toNat).toNat

end

end A030816.P994621563923098093

/-! ## A030816.P8082248293717486950

`A106249(A030850(n+1))+A030849(n+1)`
-/

namespace A030816.P8082248293717486950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106249 (A030850 (n + 1)).toNat + A030849 (n + 1)

end

end A030816.P8082248293717486950

/-!
# A030817: a(n) = floor(exp(12/23) * n!).

The programs for A030817, there is no canonical definition to state claims against.
-/

/-! ## A030817.P2269560429688470895

`A030891(n+1)-A178334(A334281(n))`
-/

namespace A030817.P2269560429688470895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030891 (n + 1) - A178334 (A334281 n).toNat

end

end A030817.P2269560429688470895

/-! ## A030817.P7941180867185597149

`A103221(A030820(n+1))+A030944(n+1)`
-/

namespace A030817.P7941180867185597149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 (A030820 (n + 1)).toNat + A030944 (n + 1)

end

end A030817.P7941180867185597149

/-! ## A030817.P15053401035999927311

`A030861(n+1)-A004396(A030914(n+1))`
-/

namespace A030817.P15053401035999927311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030861 (n + 1) - A004396 (A030914 (n + 1)).toNat

end

end A030817.P15053401035999927311

/-!
# A030818: [ exp(11/23)*n! ].

The programs for A030818, there is no canonical definition to state claims against.
-/

/-! ## A030818.P1436945850040595162

`A033183(A030826(n+1))+A030803(n+1)`
-/

namespace A030818.P1436945850040595162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033183 (A030826 (n + 1)).toNat + A030803 (n + 1)

end

end A030818.P1436945850040595162

/-! ## A030818.P13567261458132818974

`∑[A316899(∑[3*n+1])]`
-/

namespace A030818.P13567261458132818974
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316899 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A030818.P13567261458132818974

/-!
# A030819: [ exp(10/23)*n! ].

The programs for A030819, there is no canonical definition to state claims against.
-/

/-! ## A030819.P15261733053537506893

`A001686(A001548(n))+A001540(n+1)`
-/

namespace A030819.P15261733053537506893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001686 (A001548 n).toNat + A001540 (n + 1)

end

end A030819.P15261733053537506893

/-! ## A030819.P11543066526080556610

`A030907(n+1)+A008624(A030814(n+1))`
-/

namespace A030819.P11543066526080556610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030907 (n + 1) + A008624 (A030814 (n + 1)).toNat

end

end A030819.P11543066526080556610

/-! ## A030819.P13825258793672954402

`A103221(A030820(n+1))+A030823(n+1)`
-/

namespace A030819.P13825258793672954402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 (A030820 (n + 1)).toNat + A030823 (n + 1)

end

end A030819.P13825258793672954402

/-!
# A030820: [ exp(9/23)*n! ].

The programs for A030820, there is no canonical definition to state claims against.
-/

/-! ## A030820.P16875504174951900526

`A030841(n+1)-A005206(A030869(n+1))`
-/

namespace A030820.P16875504174951900526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030841 (n + 1) - A005206 (A030869 (n + 1)).toNat

end

end A030820.P16875504174951900526

/-! ## A030820.P348842497598514453

`A030901(n+1)-A008619(A030904(n+1))`
-/

namespace A030820.P348842497598514453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030901 (n + 1) - A008619 (A030904 (n + 1)).toNat

end

end A030820.P348842497598514453

/-!
# A030821: [ exp(8/23)*n! ].

The programs for A030821, there is no canonical definition to state claims against.
-/

/-! ## A030821.P14564559135037381877

`A258833(A000142(n+1)-A289306(n))`
-/

namespace A030821.P14564559135037381877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258833 (A000142 (n + 1) - A289306 n).toNat

end

end A030821.P14564559135037381877

/-! ## A030821.P16546436523095929848

`A059995(A030976(n+1))+A030973(n+1)`
-/

namespace A030821.P16546436523095929848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 (A030976 (n + 1)).toNat + A030973 (n + 1)

end

end A030821.P16546436523095929848

/-!
# A030822: [ exp(7/23)*n! ].

The programs for A030822, there is no canonical definition to state claims against.
-/

/-! ## A030822.P8824768516083712864

`A033182(A030907(n+1))+A030882(n+1)`
-/

namespace A030822.P8824768516083712864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033182 (A030907 (n + 1)).toNat + A030882 (n + 1)

end

end A030822.P8824768516083712864

/-! ## A030822.P1894714928663604806

`A057361(A002627(n+1))+A056543(n+1)`
-/

namespace A030822.P1894714928663604806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057361 (A002627 (n + 1)).toNat + A056543 (n + 1)

end

end A030822.P1894714928663604806

/-!
# A030823: [ exp(6/23)*n! ].

The programs for A030823, there is no canonical definition to state claims against.
-/

/-! ## A030823.P3546310098109930192

`A030841(n+1)-A004396(A030816(n+1))`
-/

namespace A030823.P3546310098109930192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030841 (n + 1) - A004396 (A030816 (n + 1)).toNat

end

end A030823.P3546310098109930192

/-! ## A030823.P4181843703181881512

`A030819(n+1)-A103221(A030820(n+1))`
-/

namespace A030823.P4181843703181881512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030819 (n + 1) - A103221 (A030820 (n + 1)).toNat

end

end A030823.P4181843703181881512

/-!
# A030824: [ exp(5/23)*n! ].

The programs for A030824, there is no canonical definition to state claims against.
-/

/-! ## A030824.P6786674841145416934

`floor(sqrt(cosh(A141590(n)))*(n+1)!)`
-/

namespace A030824.P6786674841145416934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (Real.cosh (A141590 n : ℝ)) * (Nat.factorial (n + 1) : ℝ)⌋

end

end A030824.P6786674841145416934

/-! ## A030824.P8872127427150948880

`A001951(3*(n+1)!)-3*(n+1)!`
-/

namespace A030824.P8872127427150948880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001951 (3 * Nat.factorial (n + 1)) - (3 * Nat.factorial (n + 1) : ℤ)

end

end A030824.P8872127427150948880

/-!
# A030825: [ exp(4/23)*n! ].

The programs for A030825, there is no canonical definition to state claims against.
-/

/-! ## A030825.P15334654434297142965

`A030855(n+1)-A175126(A030827(n+1))`
-/

namespace A030825.P15334654434297142965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030855 (n + 1) - A175126 (A030827 (n + 1)).toNat

end

end A030825.P15334654434297142965

/-! ## A030825.P17196778705142009538

`A108586(comp[7*n]!)`
-/

namespace A030825.P17196778705142009538
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108586 (Nat.factorial (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n))

end

end A030825.P17196778705142009538

/-!
# A030826: [ exp(3/23)*n! ].

The programs for A030826, there is no canonical definition to state claims against.
-/

/-! ## A030826.P14742788737861125969

`A004396(A030895(n+1))+A030928(n+1)-A030895(n+1)`
-/

namespace A030826.P14742788737861125969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A030895 (n + 1)).toNat + (A030928 (n + 1) - A030895 (n + 1))

end

end A030826.P14742788737861125969

/-! ## A030826.P5769574037840586088

`floor(A315554((n+1)!)/5)`
-/

namespace A030826.P5769574037840586088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A315554 (Nat.factorial (n + 1)) : ℚ) / 5⌋

end

end A030826.P5769574037840586088

/-!
# A030827: [ exp(2/23)*n! ].

The programs for A030827, there is no canonical definition to state claims against.
-/

/-! ## A030827.P2010441956452866329

`A029928(A030836(n+1))`
-/

namespace A030827.P2010441956452866329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029928 (A030836 (n + 1)).toNat

end

end A030827.P2010441956452866329

/-! ## A030827.P13476216850843196702

`A168186(A000142(n+1)-A000579(n))`
-/

namespace A030827.P13476216850843196702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168186 (A000142 (n + 1) - A000579 n).toNat

end

end A030827.P13476216850843196702

/-! ## A030827.P55864463316235473

`A000401(A248597(n+1)+A152638(n+1))`
-/

namespace A030827.P55864463316235473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000401 (A248597 (n + 1) + A152638 (n + 1)).toNat

end

end A030827.P55864463316235473

/-!
# A030828: [ exp(1/23)*n! ].

The programs for A030828, there is no canonical definition to state claims against.
-/

/-! ## A030828.P14299951878458332813

`A004277(A030839(n+1))-A030851(n+1)`
-/

namespace A030828.P14299951878458332813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A030839 (n + 1)).toNat - A030851 (n + 1)

end

end A030828.P14299951878458332813

/-! ## A030828.P8056492893604716657

`or(A030806(n+1), A108611(A286284(n+1)))`
-/

namespace A030828.P8056492893604716657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A030806 (n + 1)) (A108611 (A286284 (n + 1)).toNat)

end

end A030828.P8056492893604716657

/-!
# A030829: [ exp(21/22)*n! ].

The programs for A030829, there is no canonical definition to state claims against.
-/

/-! ## A030829.P3693937335360228141

`A030807(n+1)-A297109(A276268(n))`
-/

namespace A030829.P3693937335360228141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030807 (n + 1) - A297109 (A276268 n).toNat

end

end A030829.P3693937335360228141

/-! ## A030829.P9153942029057198746

`A172475(3*∏[n+1])`
-/

namespace A030829.P9153942029057198746
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172475 (3 * (∏ j ∈ Finset.range (n + 1), f1 j))

end

end A030829.P9153942029057198746

/-!
# A030830: [ exp(19/22)*n! ].

The programs for A030830, there is no canonical definition to state claims against.
-/

/-! ## A030830.P9373334988118402705

`A182774(A030960(n+1))+1`
-/

namespace A030830.P9373334988118402705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182774 (A030960 (n + 1)).toNat + 1

end

end A030830.P9373334988118402705

/-! ## A030830.P1778071150771769773

`A030965(n+1)+A004396(A030836(n+1))`
-/

namespace A030830.P1778071150771769773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030965 (n + 1) + A004396 (A030836 (n + 1)).toNat

end

end A030830.P1778071150771769773

/-!
# A030831: [ exp(17/22)*n! ].

The programs for A030831, there is no canonical definition to state claims against.
-/

/-! ## A030831.P3608846744082284759

`A113763(2*(n+1)!)`
-/

namespace A030831.P3608846744082284759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113763 (2 * Nat.factorial (n + 1))

end

end A030831.P3608846744082284759

/-! ## A030831.P15068721339068687868

`A312279((n+1)!)/2`
-/

namespace A030831.P15068721339068687868
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A312279 (Nat.factorial (n + 1)) : ℚ) / 2

end

end A030831.P15068721339068687868

/-!
# A030832: [ exp(15/22)*n! ].

The programs for A030832, there is no canonical definition to state claims against.
-/

/-! ## A030832.P7250417256535112892

`A070960(n+1)+A032615(A070960(n+1))`
-/

namespace A030832.P7250417256535112892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070960 (n + 1) + A032615 (A070960 (n + 1)).toNat

end

end A030832.P7250417256535112892

/-! ## A030832.P1290306409911468847

`A343609(A030838(n+1))+A030926(n+1)`
-/

namespace A030832.P1290306409911468847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343609 (A030838 (n + 1)).toNat + A030926 (n + 1)

end

end A030832.P1290306409911468847

/-! ## A030832.P17783738263575153240

`A030934(n+1)-A008619(A030839(n+1))`
-/

namespace A030832.P17783738263575153240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030934 (n + 1) - A008619 (A030839 (n + 1)).toNat

end

end A030832.P17783738263575153240

/-!
# A030833: [ exp(13/22)*n! ].

The programs for A030833, there is no canonical definition to state claims against.
-/

/-! ## A030833.P12044243460858032191

`∏{p}[n^8, #]+(n+1)*a(n-1)-A087436(n+1)` with `a(0)=1`
-/

namespace A030833.P12044243460858032191
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 8

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℤ) + (n + 1 : ℤ) * a (n - 1) - A087436 (n + 1)

end

end A030833.P12044243460858032191

/-! ## A030833.P17823250596002267026

`A246552(5*A030871(n+1))`
-/

namespace A030833.P17823250596002267026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246552 (5 * A030871 (n + 1)).toNat

end

end A030833.P17823250596002267026

/-!
# A030834: [ exp(9/22)*n! ].

The programs for A030834, there is no canonical definition to state claims against.
-/

/-! ## A030834.P4675955053322704904

`A030813(n+1)-A173276(A030956(n+1))`
-/

namespace A030834.P4675955053322704904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030813 (n + 1) - A173276 (A030956 (n + 1)).toNat

end

end A030834.P4675955053322704904

/-! ## A030834.P1400617613879355560

`Δ[A189404(∑[A114790(n)])]`
-/

namespace A030834.P1400617613879355560
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114790 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189404 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A030834.P1400617613879355560

/-!
# A030835: [ exp(7/22)*n! ].

The programs for A030835, there is no canonical definition to state claims against.
-/

/-! ## A030835.P9820248788771548681

`A260483(comp[7*C(n, 2)]!)`
-/

namespace A030835.P9820248788771548681
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 * Nat.choose n 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260483 (Nat.factorial (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n))

end

end A030835.P9820248788771548681

/-! ## A030835.P8380393464626272327

`A132292(∏[a(n-1)+1])` with `a(0)=11, a(1)=2`
-/

namespace A030835.P8380393464626272327
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [11, 2] fun n f1 =>
  f1 (n - 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132292 (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A030835.P8380393464626272327

/-!
# A030836: [ exp(5/22)*n! ].

The programs for A030836, there is no canonical definition to state claims against.
-/

/-! ## A030836.P11419594602760828989

`A029927(A030827(n+1))`
-/

namespace A030836.P11419594602760828989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029927 (A030827 (n + 1)).toNat

end

end A030836.P11419594602760828989

/-! ## A030836.P107818171534055356

`A030949(n+1)-A065033(A030936(n+1))`
-/

namespace A030836.P107818171534055356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030949 (n + 1) - A065033 (A030936 (n + 1)).toNat

end

end A030836.P107818171534055356

/-!
# A030837: [ exp(23/24)*n! ].

The programs for A030837, there is no canonical definition to state claims against.
-/

/-! ## A030837.P14558146649639579966

`A065033(A030911(n+1))+A030903(n+1)`
-/

namespace A030837.P14558146649639579966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A030911 (n + 1)).toNat + A030903 (n + 1)

end

end A030837.P14558146649639579966

/-! ## A030837.P5957851288362429612

`record[A248699(A186374(n))]`
-/

namespace A030837.P5957851288362429612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248699 (A186374 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A030837.P5957851288362429612

/-!
# A030838: [ exp(3/22)*n! ].

The programs for A030838, there is no canonical definition to state claims against.
-/

/-! ## A030838.P17857889943734256079

`A292638(A292638(n+1)!)`
-/

namespace A030838.P17857889943734256079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292638 (Nat.factorial (A292638 (n + 1)).toNat)

end

end A030838.P17857889943734256079

/-!
# A030839: [ exp(1/22)*n! ].

The programs for A030839, there is no canonical definition to state claims against.
-/

/-! ## A030839.P1344729460938790217

`A253556(a(and(n, n-1)))+(n+1)*a(n-1)` with `a(0)=1`
-/

namespace A030839.P1344729460938790217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A253556 (a (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat).toNat + (n + 1 : ℤ) * a (n - 1)

end

end A030839.P1344729460938790217

/-! ## A030839.P3946855009839589431

`A152637(n+1)+A054899(A000255(n))`
-/

namespace A030839.P3946855009839589431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152637 (n + 1) + A054899 (A000255 n).toNat

end

end A030839.P3946855009839589431

/-! ## A030839.P5096720046212250194

`A152641(n+1)+A054899(A000255(n))`
-/

namespace A030839.P5096720046212250194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152641 (n + 1) + A054899 (A000255 n).toNat

end

end A030839.P5096720046212250194

/-!
# A030840: [ exp(20/21)*n! ].

The programs for A030840, there is no canonical definition to state claims against.
-/

/-! ## A030840.P6970930169964075885

`or((n+1)*a(n-1), A055396(a(n-1)))` with `a(0)=2`
-/

namespace A030840.P6970930169964075885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  Int.lor ((n + 1 : ℤ) * a (n - 1)) (A055396 (a (n - 1)).toNat)

end

end A030840.P6970930169964075885

/-! ## A030840.P17547181415237794343

`A008683(14*a(n-1))+(n+1)*a(n-1)+1` with `a(0)=2`
-/

namespace A030840.P17547181415237794343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A008683 (14 * a (n - 1)).toNat + (n + 1 : ℤ) * a (n - 1) + 1

end

end A030840.P17547181415237794343

/-! ## A030840.P15803151228954489430

`or((n+1)*a(n-1), A269592(A207113(n)))` with `a(0)=2`
-/

namespace A030840.P15803151228954489430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  Int.lor ((n + 1 : ℤ) * a (n - 1)) (A269592 (A207113 n).toNat)

end

end A030840.P15803151228954489430

/-!
# A030841: a(n) = floor( exp(19/21)*n! ).

The programs for A030841, there is no canonical definition to state claims against.
-/

/-! ## A030841.P4222595736723776223

`A030823(n+1)+A004396(A030816(n+1))`
-/

namespace A030841.P4222595736723776223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030823 (n + 1) + A004396 (A030816 (n + 1)).toNat

end

end A030841.P4222595736723776223

/-! ## A030841.P6231798335111667639

`A030820(n+1)+A005206(A030869(n+1))`
-/

namespace A030841.P6231798335111667639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030820 (n + 1) + A005206 (A030869 (n + 1)).toNat

end

end A030841.P6231798335111667639

/-! ## A030841.P5849806675880824173

`A100682(A030854(n+1))+A030869(n+1)`
-/

namespace A030841.P5849806675880824173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100682 (A030854 (n + 1)).toNat + A030869 (n + 1)

end

end A030841.P5849806675880824173

/-!
# A030842: [ exp(17/21)*n! ].

The programs for A030842, there is no canonical definition to state claims against.
-/

/-! ## A030842.P7586709918995644981

`A262773((n+1)!)`
-/

namespace A030842.P7586709918995644981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262773 (Nat.factorial (n + 1))

end

end A030842.P7586709918995644981

/-! ## A030842.P13755421996824991200

`A262773(∏[n+1])`
-/

namespace A030842.P13755421996824991200
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262773 (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A030842.P13755421996824991200

/-! ## A030842.P2976681126368964846

`A262773(A000142(n+1))+A061140(n)`
-/

namespace A030842.P2976681126368964846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262773 (A000142 (n + 1)).toNat + A061140 n

end

end A030842.P2976681126368964846

/-!
# A030843: [ exp(16/21)*n! ].

The programs for A030843, there is no canonical definition to state claims against.
-/

/-! ## A030843.P10578718487129572395

`A030967(n+1)+A008619(A030832(n+1))`
-/

namespace A030843.P10578718487129572395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030967 (n + 1) + A008619 (A030832 (n + 1)).toNat

end

end A030843.P10578718487129572395

/-! ## A030843.P16376126097378392927

`A057359(3*(n+1)!)`
-/

namespace A030843.P16376126097378392927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057359 (3 * Nat.factorial (n + 1))

end

end A030843.P16376126097378392927

/-!
# A030844: Floor( exp(13/21)*n! ).

The programs for A030844, there is no canonical definition to state claims against.
-/

/-! ## A030844.P2749757164964114197

`A030856(n+1)+A008615(A030855(n+1))`
-/

namespace A030844.P2749757164964114197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030856 (n + 1) + A008615 (A030855 (n + 1)).toNat

end

end A030844.P2749757164964114197

/-! ## A030844.P15393613432923271956

`A008615(A030855(n+1))+A005206(2*A030848(n+1))`
-/

namespace A030844.P15393613432923271956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (A030855 (n + 1)).toNat + A005206 (2 * A030848 (n + 1)).toNat

end

end A030844.P15393613432923271956

/-!
# A030845: [ exp(11/21)*n! ].

The programs for A030845, there is no canonical definition to state claims against.
-/

/-! ## A030845.P6439565181904481356

`or(A030817(n+1), A319759(A008740(n)))`
-/

namespace A030845.P6439565181904481356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A030817 (n + 1)) (A319759 (A008740 n).toNat)

end

end A030845.P6439565181904481356

/-! ## A030845.P11903174819730292776

`∑[A029922(Δ[n!*∑[1/n!]])]`
-/

namespace A030845.P11903174819730292776
noncomputable section

def f3 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (Nat.factorial n : ℚ)

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℚ) * (∑ j ∈ Finset.range (n + 1), f3 j)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029922 (SequenceMachineLib.roundAway (f2 (n + 1) - f2 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A030845.P11903174819730292776

/-!
# A030846: [ exp(10/21)*n! ].

The programs for A030846, there is no canonical definition to state claims against.
-/

/-! ## A030846.P170640877100583485

`A030953(n+1)-A159481(A030961(n+1))`
-/

namespace A030846.P170640877100583485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030953 (n + 1) - A159481 (A030961 (n + 1)).toNat

end

end A030846.P170640877100583485

/-! ## A030846.P13911766217619635697

`xor(A030869(n+1), A048158(A030848(n+1)))`
-/

namespace A030846.P13911766217619635697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A030869 (n + 1)) (A048158 (A030848 (n + 1)).toNat)

end

end A030846.P13911766217619635697

/-!
# A030847: [ exp(8/21)*n! ].

The programs for A030847, there is no canonical definition to state claims against.
-/

/-! ## A030847.P10077414136103348637

`A286355(A256181(n+1))+A000389(n)`
-/

namespace A030847.P10077414136103348637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286355 (A256181 (n + 1)).toNat + A000389 n

end

end A030847.P10077414136103348637

/-! ## A030847.P10484130957249171749

`A002265(5*A030875(n+1))`
-/

namespace A030847.P10484130957249171749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (5 * A030875 (n + 1)).toNat

end

end A030847.P10484130957249171749

/-!
# A030848: [ exp(5/21)*n! ].

The programs for A030848, there is no canonical definition to state claims against.
-/

/-! ## A030848.P1975392072155867760

`A030917(n+1)-A065033(A030926(n+1))`
-/

namespace A030848.P1975392072155867760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030917 (n + 1) - A065033 (A030926 (n + 1)).toNat

end

end A030848.P1975392072155867760

/-! ## A030848.P12624458125638789884

`floor(A311826(∏[n+1])/(sqrt(2)+2))`
-/

namespace A030848.P12624458125638789884
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A311826 (∏ j ∈ Finset.range (n + 1), f1 j) : ℝ) / (Real.sqrt (2 : ℝ) + 2)⌋

end

end A030848.P12624458125638789884

/-!
# A030849: Floor( exp(4/21)*n! ).

The programs for A030849, there is no canonical definition to state claims against.
-/

/-! ## A030849.P3630866892899222565

`A078936((n+1)*a(n-1))` with `a(0)=1, a(1)=2`
-/

namespace A030849.P3630866892899222565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A078936 ((n + 1 : ℤ) * a (n - 1)).toNat

end

end A030849.P3630866892899222565

/-! ## A030849.P15473787821742608372

`A109613((n+1)*a(n-1))` with `a(0)=1, a(1)=2`
-/

namespace A030849.P15473787821742608372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A109613 ((n + 1 : ℤ) * a (n - 1)).toNat

end

end A030849.P15473787821742608372

/-!
# A030850: [ exp(2/21)*n! ].

The programs for A030850, there is no canonical definition to state claims against.
-/

/-! ## A030850.P13896322864307029787

`A160542((n+1)!)`
-/

namespace A030850.P13896322864307029787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160542 (Nat.factorial (n + 1))

end

end A030850.P13896322864307029787

/-! ## A030850.P17926593747667161302

`A160542(∏[n+1])`
-/

namespace A030850.P17926593747667161302
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160542 (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A030850.P17926593747667161302

/-! ## A030850.P18141547564598985728

`record[A160542(ceil(xor(1, n)/2)!)]`
-/

namespace A030850.P18141547564598985728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160542 (Nat.factorial ⌈(Nat.xor 1 n : ℚ) / 2⌉.toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A030850.P18141547564598985728

/-!
# A030851: a(n) = floor(exp(1/21) * n!).

The programs for A030851, there is no canonical definition to state claims against.
-/

/-! ## A030851.P5711084020954245291

`A119464(A000079(n))+(n+1)*a(n-1)` with `a(0)=1`
-/

namespace A030851.P5711084020954245291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A119464 (A000079 n).toNat + (n + 1 : ℤ) * a (n - 1)

end

end A030851.P5711084020954245291

/-! ## A030851.P16773856979016301852

`A341840(A030803(n+1))+A030806(n+1)`
-/

namespace A030851.P16773856979016301852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341840 (A030803 (n + 1)).toNat + A030806 (n + 1)

end

end A030851.P16773856979016301852

/-! ## A030851.P3128194877204289582

`A004277(A030839(n+1))-A030828(n+1)`
-/

namespace A030851.P3128194877204289582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A030839 (n + 1)).toNat - A030828 (n + 1)

end

end A030851.P3128194877204289582

/-!
# A030852: [ exp(19/20)*n! ].

The programs for A030852, there is no canonical definition to state claims against.
-/

/-! ## A030852.P15341869354892142682

`A065033(A030855(n+1))+A030802(n+1)`
-/

namespace A030852.P15341869354892142682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A030855 (n + 1)).toNat + A030802 (n + 1)

end

end A030852.P15341869354892142682

/-! ## A030852.P896082951080404674

`A206807(∏[A037439(n+1)])`
-/

namespace A030852.P896082951080404674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037439 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206807 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A030852.P896082951080404674

/-!
# A030853: [ exp(17/20)*n! ].

The programs for A030853, there is no canonical definition to state claims against.
-/

/-! ## A030853.P1523505325443401255

`A100682(A030850(n+1))+A030880(n+1)`
-/

namespace A030853.P1523505325443401255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100682 (A030850 (n + 1)).toNat + A030880 (n + 1)

end

end A030853.P1523505325443401255

/-! ## A030853.P17889871209859818810

`A381662((n+1)*a(n-1))` with `a(0)=2`
-/

namespace A030853.P17889871209859818810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A381662 ((n + 1 : ℤ) * a (n - 1)).toNat

end

end A030853.P17889871209859818810

/-!
# A030854: [ exp(13/20)*n! ].

The programs for A030854, there is no canonical definition to state claims against.
-/

/-! ## A030854.P1054328685604608923

`A082024(n)+A008576(A056542(n+1))`
-/

namespace A030854.P1054328685604608923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082024 n + A008576 (A056542 (n + 1)).toNat

end

end A030854.P1054328685604608923

/-! ## A030854.P16989398856274371092

`A229160(n)+A008576(A056542(n+1))`
-/

namespace A030854.P16989398856274371092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229160 n + A008576 (A056542 (n + 1)).toNat

end

end A030854.P16989398856274371092

/-! ## A030854.P9746321872518298164

`A275305(n)+A008576(A056542(n+1))`
-/

namespace A030854.P9746321872518298164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275305 n + A008576 (A056542 (n + 1)).toNat

end

end A030854.P9746321872518298164

/-!
# A030855: [ exp(11/20)*n! ].

The programs for A030855, there is no canonical definition to state claims against.
-/

/-! ## A030855.P7457076957834531446

`A053164(n^(n-1))+(n+1)*a(n-1)` with `a(0)=1`
-/

namespace A030855.P7457076957834531446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A053164 (SequenceMachineLib.roundAway ((n : ℚ) ^ ((n : ℤ) - 1 : ℤ))).toNat + (n + 1 : ℤ) * a (n - 1)

end

end A030855.P7457076957834531446

/-! ## A030855.P9993209830040950628

`or(n%or(1, n), A022838(A319209(n+1)))`
-/

namespace A030855.P9993209830040950628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((n % Nat.lor 1 n : ℕ) : ℤ) (A022838 (A319209 (n + 1)).toNat)

end

end A030855.P9993209830040950628

/-! ## A030855.P11417349121469991958

`or(A022838(A071937(n+1)), A257022(n))`
-/

namespace A030855.P11417349121469991958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A022838 (A071937 (n + 1)).toNat) (A257022 n)

end

end A030855.P11417349121469991958

/-!
# A030856: [ exp(9/20)*n! ].

The programs for A030856, there is no canonical definition to state claims against.
-/

/-! ## A030856.P8235321020067337716

`A005206(2*A030848(n+1))`
-/

namespace A030856.P8235321020067337716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005206 (2 * A030848 (n + 1)).toNat

end

end A030856.P8235321020067337716

/-! ## A030856.P15208890557802725755

`A030844(n+1)-A008615(A030855(n+1))`
-/

namespace A030856.P15208890557802725755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030844 (n + 1) - A008615 (A030855 (n + 1)).toNat

end

end A030856.P15208890557802725755

/-!
# A030857: [ exp(7/20)*n! ].

The programs for A030857, there is no canonical definition to state claims against.
-/

/-! ## A030857.P14622878771332957419

`A008624(3*A030941(n+1))`
-/

namespace A030857.P14622878771332957419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008624 (3 * A030941 (n + 1)).toNat

end

end A030857.P14622878771332957419

/-! ## A030857.P13409424732876795509

`A057361(A057361(n)+A030939(n+1))`
-/

namespace A030857.P13409424732876795509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057361 (A057361 n + A030939 (n + 1)).toNat

end

end A030857.P13409424732876795509

/-!
# A030858: [ exp(3/20)*n! ].

The programs for A030858, there is no canonical definition to state claims against.
-/

/-! ## A030858.P1981596369304583087

`A013938(A030921(n+1)+A004524(n))`
-/

namespace A030858.P1981596369304583087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013938 (A030921 (n + 1) + A004524 n).toNat

end

end A030858.P1981596369304583087

/-! ## A030858.P5950967361411948418

`A215781(xor(A030928(n+1), A131469(n)))`
-/

namespace A030858.P5950967361411948418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215781 (Int.xor (A030928 (n + 1)) (A131469 n)).toNat

end

end A030858.P5950967361411948418

/-!
# A030859: [ exp(1/20)*n! ].

The programs for A030859, there is no canonical definition to state claims against.
-/

/-! ## A030859.P11885489841205620745

`A189780(n)+A123108(A030943(n+1))`
-/

namespace A030859.P11885489841205620745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189780 n + A123108 (A030943 (n + 1)).toNat

end

end A030859.P11885489841205620745

/-! ## A030859.P9275186184256912949

`A005378(A030891(n+1)-A354398(n))`
-/

namespace A030859.P9275186184256912949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005378 (A030891 (n + 1) - A354398 n).toNat

end

end A030859.P9275186184256912949

/-!
# A030860: [ exp(18/19)*n! ].

The programs for A030860, there is no canonical definition to state claims against.
-/

/-! ## A030860.P8972257446459211607

`A057366(7*A147744(n+1))`
-/

namespace A030860.P8972257446459211607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057366 (7 * A147744 (n + 1)).toNat

end

end A030860.P8972257446459211607

/-! ## A030860.P18312499073934194975

`A057366(7*A152643(n+1))`
-/

namespace A030860.P18312499073934194975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057366 (7 * A152643 (n + 1)).toNat

end

end A030860.P18312499073934194975

/-!
# A030861: [ exp(17/19)*n! ].

The programs for A030861, there is no canonical definition to state claims against.
-/

/-! ## A030861.P12281931062737538016

`ceil((n+1)*A267873(a(n-1))/2)` with `a(0)=2`
-/

namespace A030861.P12281931062737538016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  ⌈((n + 1 : ℤ) * A267873 (a (n - 1)).toNat : ℚ) / 2⌉

end

end A030861.P12281931062737538016

/-! ## A030861.P15709810914794911265

`A030817(n+1)+A004396(A030914(n+1))`
-/

namespace A030861.P15709810914794911265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030817 (n + 1) + A004396 (A030914 (n + 1)).toNat

end

end A030861.P15709810914794911265

/-! ## A030861.P4911892351143235994

`A030892(n+1)+A004396(A030848(n+1))`
-/

namespace A030861.P4911892351143235994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030892 (n + 1) + A004396 (A030848 (n + 1)).toNat

end

end A030861.P4911892351143235994

/-!
# A030862: [ exp(16/19)*n! ].

The programs for A030862, there is no canonical definition to state claims against.
-/

/-! ## A030862.P10980892652264363428

`A065033(A030867(n+1))+A030919(n+1)`
-/

namespace A030862.P10980892652264363428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A030867 (n + 1)).toNat + A030919 (n + 1)

end

end A030862.P10980892652264363428

/-! ## A030862.P18156681246794378348

`A061785(comp[7*n]!)`
-/

namespace A030862.P18156681246794378348
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061785 (Nat.factorial (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n))

end

end A030862.P18156681246794378348

/-!
# A030863: [ exp(15/19)*n! ].

The programs for A030863, there is no canonical definition to state claims against.
-/

/-! ## A030863.P13018979932114594483

`A029916(A030949(n+1))`
-/

namespace A030863.P13018979932114594483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029916 (A030949 (n + 1)).toNat

end

end A030863.P13018979932114594483

/-! ## A030863.P7257406709221533634

`A030844(n+1)+A008615(A030940(n+1))`
-/

namespace A030863.P7257406709221533634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030844 (n + 1) + A008615 (A030940 (n + 1)).toNat

end

end A030863.P7257406709221533634

/-!
# A030864: [ exp(14/19)*n! ].

The programs for A030864, there is no canonical definition to state claims against.
-/

/-! ## A030864.P7702581253821573869

`A209061(2*(n+1)!)`
-/

namespace A030864.P7702581253821573869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209061 (2 * Nat.factorial (n + 1))

end

end A030864.P7702581253821573869

/-! ## A030864.P9002295260946034692

`A312271((n+1)!)/2`
-/

namespace A030864.P9002295260946034692
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A312271 (Nat.factorial (n + 1)) : ℚ) / 2

end

end A030864.P9002295260946034692

/-!
# A030865: [ exp(13/19)*n! ].

The programs for A030865, there is no canonical definition to state claims against.
-/

/-! ## A030865.P13481569706509733403

`A030938(n+1)-A054071(A030906(n+1))`
-/

namespace A030865.P13481569706509733403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030938 (n + 1) - A054071 (A030906 (n + 1)).toNat

end

end A030865.P13481569706509733403

/-! ## A030865.P13558355013663637838

`∏{p}[n^8, #]+(n+1)*a(n-1)` with `a(0)=1`
-/

namespace A030865.P13558355013663637838
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 8

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  ∏ p ∈ Nat.primeFactors (f1 n), p + (n + 1) * a (n - 1)

end

end A030865.P13558355013663637838

/-!
# A030866: [ exp(12/19)*n! ].

The programs for A030866, there is no canonical definition to state claims against.
-/

/-! ## A030866.P415988162508064055

`∑[A054071(record[A351150(n)])]`
-/

namespace A030866.P415988162508064055
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351150 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054071 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A030866.P415988162508064055

/-! ## A030866.P2234819838829779190

`∑[A054071(A351150(n+2))]`
-/

namespace A030866.P2234819838829779190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054071 (A351150 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A030866.P2234819838829779190

/-!
# A030867: a(n) = floor( exp(11/19)*n! ).

The programs for A030867, there is no canonical definition to state claims against.
-/

/-! ## A030867.P2731163736272478117

`A030862(n+1)-A004525(A030921(n+1))`
-/

namespace A030867.P2731163736272478117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030862 (n + 1) - A004525 (A030921 (n + 1)).toNat

end

end A030867.P2731163736272478117

/-! ## A030867.P1707029942427582445

`A030974(n+1)-A110655(A030966(n+1))`
-/

namespace A030867.P1707029942427582445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030974 (n + 1) - A110655 (A030966 (n + 1)).toNat

end

end A030867.P1707029942427582445

/-!
# A030868: [ exp(10/19)*n! ].

The programs for A030868, there is no canonical definition to state claims against.
-/

/-! ## A030868.P17548921994696962985

`A329833(A052399(n+1))`
-/

namespace A030868.P17548921994696962985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329833 (A052399 (n + 1)).toNat

end

end A030868.P17548921994696962985

/-! ## A030868.P17872438469471690057

`A329833(A000142(n+1)-A026827(n))`
-/

namespace A030868.P17872438469471690057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329833 (A000142 (n + 1) - A026827 n).toNat

end

end A030868.P17872438469471690057

/-!
# A030869: [ exp(9/19)*n! ].

The programs for A030869, there is no canonical definition to state claims against.
-/

/-! ## A030869.P12324373519775934628

`A005206(or(n, A030829(n+1))-1)`
-/

namespace A030869.P12324373519775934628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005206 (Int.lor (n : ℤ) (A030829 (n + 1)) - 1).toNat

end

end A030869.P12324373519775934628

/-! ## A030869.P17682821920751401707

`A285676(A152379(n+1))-A184993(n)`
-/

namespace A030869.P17682821920751401707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285676 (A152379 (n + 1)).toNat - A184993 n

end

end A030869.P17682821920751401707

/-! ## A030869.P12187959691846166874

`A005206(or(A005206(n), A030829(n+1)))`
-/

namespace A030869.P12187959691846166874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005206 (Int.lor (A005206 n) (A030829 (n + 1))).toNat

end

end A030869.P12187959691846166874

/-!
# A030870: a(n) = floor(exp(8/19)*n!).

The programs for A030870, the canonical program `A030870.P14134339447475793038` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A030870 has offset 0).

The definition of A030870 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(exp(8/19)*n!)` (program `A030870.P14134339447475793038`, by `A030870.P14134339447475793038.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A030870.P14134339447475793038

`floor(exp(8/19)*n!)`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A030870

/-- `floor(exp(8/19)*n!)` -/
def P14134339447475793038.Spec : Prop :=
  ∀ n, P14134339447475793038.a n = A030870 n

theorem P14134339447475793038.correct : P14134339447475793038.Spec := by
  intro n
  simp only [A030870]

end A030870

/-! ## A030870.P4029880414762119380

`A060384(∑[A300484(n)])`
-/

namespace A030870.P4029880414762119380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300484 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060384 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A030870.P4029880414762119380

namespace A030870

/-- `A060384(∑[A300484(n)])` -/
def P4029880414762119380.Spec : Prop :=
  ∀ n, P4029880414762119380.a n = A030870 n

end A030870

/-! ## A030870.P22864071826447675

`A044933(A000169(n)+1)+n*a(n-1)` with `a(0)=1`
-/

namespace A030870.P22864071826447675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A044933 (A000169 n + 1).toNat + (n : ℤ) * a (n - 1)

end

end A030870.P22864071826447675

namespace A030870

/-- `A044933(A000169(n)+1)+n*a(n-1)` -/
def P22864071826447675.Spec : Prop :=
  ∀ n, P22864071826447675.a n = A030870 n

end A030870

/-!
# A030871: a(n) = floor( exp(7/19)*n! ).

The programs for A030871, there is no canonical definition to state claims against.
-/

/-! ## A030871.P15939670587632658308

`A030947(n+1)+A002264(A030859(n+1))`
-/

namespace A030871.P15939670587632658308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030947 (n + 1) + A002264 (A030859 (n + 1)).toNat

end

end A030871.P15939670587632658308

/-! ## A030871.P6358590882492090258

`A030970(n+1)-A008619(A030955(n+1))`
-/

namespace A030871.P6358590882492090258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030970 (n + 1) - A008619 (A030955 (n + 1)).toNat

end

end A030871.P6358590882492090258

/-! ## A030871.P16568582798825096166

`A030809(n+1)-A065033(A030866(n+1))`
-/

namespace A030871.P16568582798825096166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030809 (n + 1) - A065033 (A030866 (n + 1)).toNat

end

end A030871.P16568582798825096166

/-!
# A030872: [ exp(6/19)*n! ].

The programs for A030872, there is no canonical definition to state claims against.
-/

/-! ## A030872.P5493764697373698513

`or(A030905(n+1), A079302(A030887(n+1)))`
-/

namespace A030872.P5493764697373698513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A030905 (n + 1)) (A079302 (A030887 (n + 1)).toNat)

end

end A030872.P5493764697373698513

/-! ## A030872.P4989474978992471180

`A029922(A030800(n+1))`
-/

namespace A030872.P4989474978992471180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029922 (A030800 (n + 1)).toNat

end

end A030872.P4989474978992471180

/-!
# A030873: [ exp(5/19)*n! ].

The programs for A030873, there is no canonical definition to state claims against.
-/

/-! ## A030873.P7606173425464206777

`A034887(∏[n+1])+∑[n*n!]`
-/

namespace A030873.P7606173425464206777
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.factorial n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034887 (∏ j ∈ Finset.range (n + 1), f1 j) + ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A030873.P7606173425464206777

/-! ## A030873.P10031294092420668604

`A034887((A033312(n)+1)*(n+1))+A033312(n+1)`
-/

namespace A030873.P10031294092420668604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034887 ((A033312 n + 1) * (n + 1 : ℤ)).toNat + A033312 (n + 1)

end

end A030873.P10031294092420668604

/-!
# A030874: [ exp(4/19)*n! ].

The programs for A030874, there is no canonical definition to state claims against.
-/

/-! ## A030874.P14917680880751478451

`A030925(n+1)-A057354(A030889(n+1))`
-/

namespace A030874.P14917680880751478451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030925 (n + 1) - A057354 (A030889 (n + 1)).toNat

end

end A030874.P14917680880751478451

/-! ## A030874.P12316629961669142622

`A030970(n+1)-A065033(A030865(n+1))`
-/

namespace A030874.P12316629961669142622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030970 (n + 1) - A065033 (A030865 (n + 1)).toNat

end

end A030874.P12316629961669142622

/-!
# A030875: [ exp(3/19)*n! ].

The programs for A030875, there is no canonical definition to state claims against.
-/

/-! ## A030875.P17273269341066627013

`A187394(A226438(n+1))`
-/

namespace A030875.P17273269341066627013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187394 (A226438 (n + 1)).toNat

end

end A030875.P17273269341066627013

/-! ## A030875.P5562513788205574510

`A286689(A226438(n+1))%A161939(n)`
-/

namespace A030875.P5562513788205574510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A286689 (A226438 (n + 1)).toNat) (A161939 n)

end

end A030875.P5562513788205574510

/-! ## A030875.P17093436019918278007

`A033182(A030961(n+1))+A030961(n+1)`
-/

namespace A030875.P17093436019918278007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033182 (A030961 (n + 1)).toNat + A030961 (n + 1)

end

end A030875.P17093436019918278007

/-!
# A030876: [ exp(2/19)*n! ].

The programs for A030876, there is no canonical definition to state claims against.
-/

/-! ## A030876.P16978622866560607196

`A065039((n+1)!)`
-/

namespace A030876.P16978622866560607196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065039 (Nat.factorial (n + 1))

end

end A030876.P16978622866560607196

/-! ## A030876.P12466864287307737372

`A067251((n+1)!)`
-/

namespace A030876.P12466864287307737372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067251 (Nat.factorial (n + 1))

end

end A030876.P12466864287307737372

/-! ## A030876.P15655532987977873526

`A226134((n+1)!)`
-/

namespace A030876.P15655532987977873526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226134 (Nat.factorial (n + 1))

end

end A030876.P15655532987977873526

/-!
# A030877: [ exp(1/19)*n! ].

The programs for A030877, there is no canonical definition to state claims against.
-/

/-! ## A030877.P15639495994296005608

`A037459(A000522(n))+A000389(n)`
-/

namespace A030877.P15639495994296005608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037459 (A000522 n).toNat + A000389 n

end

end A030877.P15639495994296005608

/-! ## A030877.P2636232605697344623

`A133310(A030803(n+1))-A096921(n)`
-/

namespace A030877.P2636232605697344623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133310 (A030803 (n + 1)).toNat - A096921 n

end

end A030877.P2636232605697344623

/-!
# A030878: [ exp(17/18)*n! ].

The programs for A030878, there is no canonical definition to state claims against.
-/

/-! ## A030878.P3886222293388507619

`A070960(n+1)+A005206(A030855(n+1))`
-/

namespace A030878.P3886222293388507619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070960 (n + 1) + A005206 (A030855 (n + 1)).toNat

end

end A030878.P3886222293388507619

/-! ## A030878.P7736562198266138568

`A065033(A030911(n+1))+A030802(n+1)`
-/

namespace A030878.P7736562198266138568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A030911 (n + 1)).toNat + A030802 (n + 1)

end

end A030878.P7736562198266138568

/-!
# A030879: [ exp(13/18)*n! ].

The programs for A030879, there is no canonical definition to state claims against.
-/

/-! ## A030879.P16984109107813314485

`A008615(5*A030841(n+1))`
-/

namespace A030879.P16984109107813314485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (5 * A030841 (n + 1)).toNat

end

end A030879.P16984109107813314485

/-! ## A030879.P17183168302297511347

`A008615(lcm(5, A030841(n+1)))`
-/

namespace A030879.P17183168302297511347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (Int.lcm 5 (A030841 (n + 1)))

end

end A030879.P17183168302297511347

/-!
# A030880: a(n) = floor( exp(11/18)*n! ).

The programs for A030880, there is no canonical definition to state claims against.
-/

/-! ## A030880.P7477825378418310744

`A047201(A030908(n+1)-A030915(n+1))`
-/

namespace A030880.P7477825378418310744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047201 (A030908 (n + 1) - A030915 (n + 1)).toNat

end

end A030880.P7477825378418310744

/-! ## A030880.P5212206413053343350

`A030853(n+1)-A100682(A030850(n+1))`
-/

namespace A030880.P5212206413053343350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030853 (n + 1) - A100682 (A030850 (n + 1)).toNat

end

end A030880.P5212206413053343350

/-!
# A030881: [ exp(7/18)*n! ].

The programs for A030881, there is no canonical definition to state claims against.
-/

/-! ## A030881.P7449675860026164199

`A030973(n+1)+A008615(A030870(n+1))`
-/

namespace A030881.P7449675860026164199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030973 (n + 1) + A008615 (A030870 (n + 1)).toNat

end

end A030881.P7449675860026164199

/-! ## A030881.P9893052084917966892

`A057356(A315234((n+1)!))`
-/

namespace A030881.P9893052084917966892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057356 (A315234 (Nat.factorial (n + 1))).toNat

end

end A030881.P9893052084917966892

/-!
# A030882: [ exp(5/18)*n! ].

The programs for A030882, there is no canonical definition to state claims against.
-/

/-! ## A030882.P813720351985593408

`A188042((n+1)!)`
-/

namespace A030882.P813720351985593408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188042 (Nat.factorial (n + 1))

end

end A030882.P813720351985593408

/-! ## A030882.P640528566287827016

`A188372((n+1)!)`
-/

namespace A030882.P640528566287827016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188372 (Nat.factorial (n + 1))

end

end A030882.P640528566287827016

/-! ## A030882.P16044735834948235320

`A188042(∏[n+1])`
-/

namespace A030882.P16044735834948235320
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188042 (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A030882.P16044735834948235320

/-!
# A030883: [ exp(1/18)*n! ].

The programs for A030883, there is no canonical definition to state claims against.
-/

/-! ## A030883.P6202844854987283360

`A214392(A030958(n+1)-A030895(n+1))`
-/

namespace A030883.P6202844854987283360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214392 (A030958 (n + 1) - A030895 (n + 1)).toNat

end

end A030883.P6202844854987283360

/-! ## A030883.P11831588871376189271

`A004396(A030928(n+1))-A260320(n+1)`
-/

namespace A030883.P11831588871376189271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A030928 (n + 1)).toNat - A260320 (n + 1)

end

end A030883.P11831588871376189271

/-! ## A030883.P7392702197646942841

`A341840(n)+A119464(A000079(n))+(n+1)*a(n-1)` with `a(0)=1`
-/

namespace A030883.P7392702197646942841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A341840 n + (A119464 (A000079 n).toNat + (n + 1 : ℤ) * a (n - 1))

end

end A030883.P7392702197646942841

/-!
# A030884: [ exp(16/17)*n! ].

The programs for A030884, there is no canonical definition to state claims against.
-/

/-! ## A030884.P13039858154345050857

`A030889(n+1)+A005378(A030883(n+1))`
-/

namespace A030884.P13039858154345050857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030889 (n + 1) + A005378 (A030883 (n + 1)).toNat

end

end A030884.P13039858154345050857

/-! ## A030884.P18168728107926624049

`A033558((n+1)*a(n-1)+4)` with `a(0)=2`
-/

namespace A030884.P18168728107926624049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A033558 ((n + 1 : ℤ) * a (n - 1) + 4).toNat

end

end A030884.P18168728107926624049

/-!
# A030885: [ exp(15/17)*n! ].

The programs for A030885, there is no canonical definition to state claims against.
-/

/-! ## A030885.P13662318050086147053

`A030848(n+1)+A005206(A030844(n+1))`
-/

namespace A030885.P13662318050086147053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030848 (n + 1) + A005206 (A030844 (n + 1)).toNat

end

end A030885.P13662318050086147053

/-! ## A030885.P15181730019510882813

`A311966((n+1)!)/2`
-/

namespace A030885.P15181730019510882813
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A311966 (Nat.factorial (n + 1)) : ℚ) / 2

end

end A030885.P15181730019510882813

/-!
# A030886: a(n) = floor( exp(14/17)*n! ).

The programs for A030886, there is no canonical definition to state claims against.
-/

/-! ## A030886.P10733239258580487840

`A030836(n+1)+A004396(A030965(n+1))`
-/

namespace A030886.P10733239258580487840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030836 (n + 1) + A004396 (A030965 (n + 1)).toNat

end

end A030886.P10733239258580487840

/-! ## A030886.P13239680584637264106

`A049820((n+1)*a(n-1)+1)+n` with `a(0)=2`
-/

namespace A030886.P13239680584637264106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A049820 ((n + 1 : ℤ) * a (n - 1) + 1).toNat + (n : ℤ)

end

end A030886.P13239680584637264106

/-!
# A030887: [ exp(13/17)*n! ].

The programs for A030887, there is no canonical definition to state claims against.
-/

/-! ## A030887.P188132338006598366

`A282318(n)+A004277(A030921(n+1))`
-/

namespace A030887.P188132338006598366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282318 n + A004277 (A030921 (n + 1)).toNat

end

end A030887.P188132338006598366

/-! ## A030887.P5515293085021199011

`A030914(n+1)+A004526(A030949(n+1))`
-/

namespace A030887.P5515293085021199011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030914 (n + 1) + A004526 (A030949 (n + 1)).toNat

end

end A030887.P5515293085021199011

/-!
# A030888: a(n) = floor(exp(12/17)*n!).

The programs for A030888, there is no canonical definition to state claims against.
-/

/-! ## A030888.P12582360832512340914

`A222212((n+1)*a(n-1))` with `a(0)=2`
-/

namespace A030888.P12582360832512340914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A222212 ((n + 1 : ℤ) * a (n - 1)).toNat

end

end A030888.P12582360832512340914

/-!
# A030889: [ exp(11/17)*n! ].

The programs for A030889, there is no canonical definition to state claims against.
-/

/-! ## A030889.P17237303611629520576

`or(1, A189750(A000142(n+1)))`
-/

namespace A030889.P17237303611629520576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A189750 (A000142 (n + 1)).toNat)

end

end A030889.P17237303611629520576

/-! ## A030889.P14398650817041606856

`or(A028310((n+1)*a(n-1)), A262457(n+1))` with `a(0)=1`
-/

namespace A030889.P14398650817041606856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.lor (A028310 ((n + 1 : ℤ) * a (n - 1)).toNat) (A262457 (n + 1))

end

end A030889.P14398650817041606856

/-! ## A030889.P17675852013150149509

`A030884(n+1)-A005378(A030883(n+1))`
-/

namespace A030889.P17675852013150149509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030884 (n + 1) - A005378 (A030883 (n + 1)).toNat

end

end A030889.P17675852013150149509

/-!
# A030890: [ exp(10/17)*n! ].

The programs for A030890, there is no canonical definition to state claims against.
-/

/-! ## A030890.P11023063750079158554

`A030968(n+1)-A110654(A152636(n+1))`
-/

namespace A030890.P11023063750079158554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030968 (n + 1) - A110654 (A152636 (n + 1)).toNat

end

end A030890.P11023063750079158554

/-! ## A030890.P2549444033323739679

`A030968(n+1)-A110654(A152709(n+1))`
-/

namespace A030890.P2549444033323739679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030968 (n + 1) - A110654 (A152709 (n + 1)).toNat

end

end A030890.P2549444033323739679

/-!
# A030891: [ exp(9/17)*n! ].

The programs for A030891, there is no canonical definition to state claims against.
-/

/-! ## A030891.P16832990612801466777

`A178334(A334281(n))+A030817(n+1)`
-/

namespace A030891.P16832990612801466777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 (A334281 n).toNat + A030817 (n + 1)

end

end A030891.P16832990612801466777

/-! ## A030891.P12268611021039047318

`A178334(A052765(n+1))+A030817(n+1)`
-/

namespace A030891.P12268611021039047318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 (A052765 (n + 1)).toNat + A030817 (n + 1)

end

end A030891.P12268611021039047318

/-!
# A030892: [ exp(8/17)*n! ].

The programs for A030892, there is no canonical definition to state claims against.
-/

/-! ## A030892.P13753867853276948808

`A030861(n+1)-A004396(A030848(n+1))`
-/

namespace A030892.P13753867853276948808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030861 (n + 1) - A004396 (A030848 (n + 1)).toNat

end

end A030892.P13753867853276948808

/-! ## A030892.P7907350628068371144

`A030840(n+1)-A065033(A030865(n+1))`
-/

namespace A030892.P7907350628068371144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030840 (n + 1) - A065033 (A030865 (n + 1)).toNat

end

end A030892.P7907350628068371144

/-! ## A030892.P6980805320228419933

`A030970(n+1)-A159481(A030956(n+1))`
-/

namespace A030892.P6980805320228419933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030970 (n + 1) - A159481 (A030956 (n + 1)).toNat

end

end A030892.P6980805320228419933

/-!
# A030893: a(n) = floor( exp(7/17)*n! ).

The programs for A030893, there is no canonical definition to state claims against.
-/

/-! ## A030893.P12313403305457774681

`A030811(n+1)-A004525(A030822(n+1))`
-/

namespace A030893.P12313403305457774681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030811 (n + 1) - A004525 (A030822 (n + 1)).toNat

end

end A030893.P12313403305457774681

/-! ## A030893.P16321637688009007355

`A007067(A030911(n+1))-A030956(n+1)`
-/

namespace A030893.P16321637688009007355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007067 (A030911 (n + 1)).toNat - A030956 (n + 1)

end

end A030893.P16321637688009007355

/-!
# A030894: [ exp(6/17)*n! ].

The programs for A030894, there is no canonical definition to state claims against.
-/

/-! ## A030894.P10732709960867318209

`A262663((n+1)*a(n-1)+n)-1` with `a(0)=1, a(1)=2`
-/

namespace A030894.P10732709960867318209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A262663 ((n + 1 : ℤ) * a (n - 1) + (n : ℤ)).toNat - 1

end

end A030894.P10732709960867318209

/-! ## A030894.P11237231954375847582

`floor(A199134(A000522(n+1))/5)`
-/

namespace A030894.P11237231954375847582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A199134 (A000522 (n + 1)).toNat : ℚ) / 5⌋

end

end A030894.P11237231954375847582

/-!
# A030895: [ exp(5/17)*n! ].

The programs for A030895, there is no canonical definition to state claims against.
-/

/-! ## A030895.P1034478409492649742

`A067535((n+1)*a(n-1)+n)-n` with `a(0)=1`
-/

namespace A030895.P1034478409492649742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A067535 ((n + 1 : ℤ) * a (n - 1) + (n : ℤ)).toNat - (n : ℤ)

end

end A030895.P1034478409492649742

/-! ## A030895.P1796813922999404586

`A030958(n+1)-A214392(A030883(n+1))`
-/

namespace A030895.P1796813922999404586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030958 (n + 1) - A214392 (A030883 (n + 1)).toNat

end

end A030895.P1796813922999404586

/-! ## A030895.P14867336855443257709

`A059995(3*n+4)+A059543(A030973(n+1))`
-/

namespace A030895.P14867336855443257709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 (3 * n + 4) + A059543 (A030973 (n + 1)).toNat

end

end A030895.P14867336855443257709

/-!
# A030896: [ exp(4/17)*n! ].

The programs for A030896, there is no canonical definition to state claims against.
-/

/-! ## A030896.P7437623771350544444

`A249122(or(1, A030916(n+1)))`
-/

namespace A030896.P7437623771350544444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249122 (Int.lor 1 (A030916 (n + 1))).toNat

end

end A030896.P7437623771350544444

/-! ## A030896.P9573037629066276549

`or(A008740(n), A057353(A030817(n+1)))`
-/

namespace A030896.P9573037629066276549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A008740 n) (A057353 (A030817 (n + 1)).toNat)

end

end A030896.P9573037629066276549

/-! ## A030896.P10305319505421827651

`or(A057353(A030817(n+1)), A337376(n))`
-/

namespace A030896.P10305319505421827651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A057353 (A030817 (n + 1)).toNat) (A337376 n)

end

end A030896.P10305319505421827651

/-!
# A030897: [ exp(3/17)*n! ].

The programs for A030897, there is no canonical definition to state claims against.
-/

/-! ## A030897.P15055154882156047308

`A028310(floor(A030809(n+1)/2))`
-/

namespace A030897.P15055154882156047308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 ⌊(A030809 (n + 1) : ℚ) / 2⌋.toNat

end

end A030897.P15055154882156047308

/-! ## A030897.P4784249293048159454

`A262663((n+1)*a(n-1)+n)-1-A069734(n+1)+n` with `a(0)=1, a(1)=2`
-/

namespace A030897.P4784249293048159454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A262663 ((n + 1 : ℤ) * a (n - 1) + (n : ℤ)).toNat - 1 - A069734 (n + 1) + (n : ℤ)

end

end A030897.P4784249293048159454

/-! ## A030897.P12834669176022258154

`A030861(n+1)-A004396(A030866(n+1))`
-/

namespace A030897.P12834669176022258154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030861 (n + 1) - A004396 (A030866 (n + 1)).toNat

end

end A030897.P12834669176022258154

/-!
# A030898: a(n) = floor(exp(2/17)*n!).

The programs for A030898, there is no canonical definition to state claims against.
-/

/-! ## A030898.P1073409207480152787

`A168183((n+1)!)`
-/

namespace A030898.P1073409207480152787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168183 (Nat.factorial (n + 1))

end

end A030898.P1073409207480152787

/-! ## A030898.P5972486865217156657

`A168183(∏[n+1])`
-/

namespace A030898.P5972486865217156657
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168183 (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A030898.P5972486865217156657

/-! ## A030898.P6291111010732000664

`∑[A248375(Δ[n!])]+1`
-/

namespace A030898.P6291111010732000664
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248375 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A030898.P6291111010732000664

/-!
# A030899: [ exp(1/17)*n! ].

The programs for A030899, there is no canonical definition to state claims against.
-/

/-! ## A030899.P850276812810153017

`A342845(n*a(n-1))+(n+1)*a(n-1)` with `a(0)=1`
-/

namespace A030899.P850276812810153017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A342845 ((n : ℤ) * a (n - 1)).toNat + (n + 1 : ℤ) * a (n - 1)

end

end A030899.P850276812810153017

/-! ## A030899.P3866732895462191166

`A049472(A007494((n+1)!))`
-/

namespace A030899.P3866732895462191166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049472 (A007494 (Nat.factorial (n + 1))).toNat

end

end A030899.P3866732895462191166

