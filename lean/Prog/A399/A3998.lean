import SequenceMachineLib.Basic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C027
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C041
import Seq.B000.C042
import Seq.B000.C044
import Seq.B000.C046
import Seq.B001.C000
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C008
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C013
import Seq.B001.C014
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C003
import Seq.B004.C004
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.Opaque.C000
import Seq.Opaque.C001
import Seq.Opaque.C002
import Seq.Opaque.C003
import Seq.Opaque.C004
import Seq.Opaque.C005
import Seq.Opaque.C006
import Seq.Opaque.C007
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
import SequenceMachineLib.Triangle

/-!
# A399801: a(1) = 1; a(n+1) is the smallest integer greater than a(n) such that: a(k) + a(k+2) is not a term for any k.

The programs for A399801, there is no canonical definition to state claims against.
-/

/-! ## A399801.P11308783295363242476

`A032766(n)+A010054(A094032(n+4))`
-/

namespace A399801.P11308783295363242476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 n + A010054 (A094032 (n + 4)).toNat

end

end A399801.P11308783295363242476

/-! ## A399801.P17262718390860269258

`A110654(3*n+2)-A097325(A029966(n+1))`
-/

namespace A399801.P17262718390860269258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (3 * n + 2) - A097325 (A029966 (n + 1)).toNat

end

end A399801.P17262718390860269258

/-! ## A399801.P9993396236889057063

`∑[A323308(∑[A181836(n)])]`
-/

namespace A399801.P9993396236889057063
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181836 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323308 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A399801.P9993396236889057063

/-! ## A399801.P5170551664393422483

`A268340(A358836(n+4))+A007494(n)`
-/

namespace A399801.P5170551664393422483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268340 (A358836 (n + 4)).toNat + A007494 n

end

end A399801.P5170551664393422483

/-! ## A399801.P17448281756722315008

`lt[A265247(A250120(n+1)), A010888(3*n)]`
-/

namespace A399801.P17448281756722315008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265247 (A250120 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010888 (3 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A399801.P17448281756722315008

/-!
# A399807: Start with the positive integers; at the k-th sieving step, remove every (2k+1)-th term of the sequence remaining after the (k-1)-st sieving step; iterate.

The programs for A399807, there is no canonical definition to state claims against.
-/

/-! ## A399807.P4112543095140150747

`A060378(n+2)/2`
-/

namespace A399807.P4112543095140150747
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060378 (n + 2) : ℚ) / 2

end

end A399807.P4112543095140150747

/-! ## A399807.P11131523926529690700

`A001281(A060378(n+2))`
-/

namespace A399807.P11131523926529690700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A060378 (n + 2)).toNat

end

end A399807.P11131523926529690700

/-! ## A399807.P5912942682624305488

`A004526(1+A060378(n+2))`
-/

namespace A399807.P5912942682624305488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (1 + A060378 (n + 2)).toNat

end

end A399807.P5912942682624305488

/-! ## A399807.P10335917415715436674

`A110514(A060378(n+2)-2)`
-/

namespace A399807.P10335917415715436674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110514 (A060378 (n + 2) - 2).toNat

end

end A399807.P10335917415715436674

/-! ## A399807.P7320853553885014840

`A006370(A060378(n+2)%A060333(n+1))`
-/

namespace A399807.P7320853553885014840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 (Int.tmod (A060378 (n + 2)) (A060333 (n + 1))).toNat

end

end A399807.P7320853553885014840

/-!
# A399808: Number of unlabeled Hausdorff set systems on an n-set with neither the empty set nor the full set.

The programs for A399808, there is no canonical definition to state claims against.
-/

/-! ## A399808.P4187897945561630466

`∏[A135899(n!)]`
-/

namespace A399808.P4187897945561630466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135899 (Nat.factorial n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A399808.P4187897945561630466

/-!
# A399809: Number of Hausdorff antichains of nonempty proper subsets of an n-set.

The programs for A399809, there is no canonical definition to state claims against.
-/

/-! ## A399809.P7467610492738869499

`A124469(A026709(n))`
-/

namespace A399809.P7467610492738869499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124469 (A026709 n).toNat

end

end A399809.P7467610492738869499

/-! ## A399809.P3567390743159284715

`A008619(∑[A006301(n)])`
-/

namespace A399809.P3567390743159284715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006301 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A399809.P3567390743159284715

/-!
# A399817: Number of labeled simple graphs G on n vertices whose open-neighborhood hypergraph is Hausdorff.

The programs for A399817, there is no canonical definition to state claims against.
-/

/-! ## A399817.P16669958156587130541

`A256211(A305785(n+1))`
-/

namespace A399817.P16669958156587130541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256211 (A305785 (n + 1)).toNat

end

end A399817.P16669958156587130541

/-! ## A399817.P11696143543643056877

`A256211(A348530(n+1))`
-/

namespace A399817.P11696143543643056877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256211 (A348530 (n + 1)).toNat

end

end A399817.P11696143543643056877

/-! ## A399817.P1552390761625781020

`A325768(A004114(n))-A112765(n+2)`
-/

namespace A399817.P1552390761625781020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325768 (A004114 n).toNat - A112765 (n + 2)

end

end A399817.P1552390761625781020

/-!
# A399820: Partial sums of A052434.

The programs for A399820, there is no canonical definition to state claims against.
-/

/-! ## A399820.P3277288703906741085

`∑[A052434(n+2)]`
-/

namespace A399820.P3277288703906741085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052434 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A399820.P3277288703906741085

/-!
# A399824: Number of labeled neighborhood anti-Sperner graphs on n vertices.

The programs for A399824, there is no canonical definition to state claims against.
-/

/-! ## A399824.P9936643644161050952

`A116679(A196593(n+1))`
-/

namespace A399824.P9936643644161050952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116679 (A196593 (n + 1)).toNat

end

end A399824.P9936643644161050952

/-! ## A399824.P3131556770623336360

`A316655(A011782(n)+A000007(n))`
-/

namespace A399824.P3131556770623336360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316655 (A011782 n + A000007 n).toNat

end

end A399824.P3131556770623336360

/-! ## A399824.P5429384326552087327

`A316656(A011782(n)+A025153(n))`
-/

namespace A399824.P5429384326552087327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316656 (A011782 n + A025153 n).toNat

end

end A399824.P5429384326552087327

/-!
# A399826: Number of labeled graphs whose family of open neighborhoods is connected.

The programs for A399826, there is no canonical definition to state claims against.
-/

/-! ## A399826.P319281125829183324

`A054899(A000288(∑[n]))`
-/

namespace A399826.P319281125829183324
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054899 (A000288 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A399826.P319281125829183324

/-! ## A399826.P11602908990225267668

`A241822(A344782(n+1))`
-/

namespace A399826.P11602908990225267668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241822 (A344782 (n + 1)).toNat

end

end A399826.P11602908990225267668

/-!
# A399827: Number of labeled mating graphs whose family of open neighborhoods is connected.

The programs for A399827, there is no canonical definition to state claims against.
-/

/-! ## A399827.P12748594184530204513

`A331980(A006130(n))`
-/

namespace A399827.P12748594184530204513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331980 (A006130 n).toNat

end

end A399827.P12748594184530204513

/-! ## A399827.P9219136481056790047

`A137564(∑{d}[A327198(n), #])`
-/

namespace A399827.P9219136481056790047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327198 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137564 (∑ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A399827.P9219136481056790047

/-!
# A399828: The number of divisors d of n such that gcud(d, n/d) is squarefree, where gcud is the greatest common unitary divisor.

The programs for A399828, the canonical program `A399828.P9872746706796566562` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A399828 has offset 1).

The definition of A399828 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A399828.P9872746706796566562

`A366147(n+1)*A368172(n+1)`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A399828

/-- `A366147(n+1)*A368172(n+1)` -/
def P9872746706796566562.Spec : Prop :=
  ∀ n, P9872746706796566562.a n = A399828 (n + 1)

theorem P9872746706796566562.correct : P9872746706796566562.Spec := by
  intro n
  simp only [A399828, Nat.add_sub_cancel]

end A399828

/-! ## A399828.P1457491890981504765

`A366147(n+1)*A368104(A366765(n+1))`
-/

namespace A399828.P1457491890981504765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366147 (n + 1) * A368104 (A366765 (n + 1)).toNat

end

end A399828.P1457491890981504765

namespace A399828

/-- `A366147(n+1)*A368104(A366765(n+1))` -/
def P1457491890981504765.Spec : Prop :=
  ∀ n, P1457491890981504765.a n = A399828 (n + 1)

end A399828

/-! ## A399828.P15300150878538224738

`A332741(7*∑{#}[n, floor((n+1)/(#+1))-floor(n/(#+1))])`
-/

namespace A399828.P15300150878538224738
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332741 (7 * (∑ k ∈ Finset.range (f1 n + 1), (⌊(n + 1 : ℚ) / (k + 1 : ℚ)⌋ - ⌊(n : ℚ) / (k + 1 : ℚ)⌋))).toNat

end

end A399828.P15300150878538224738

namespace A399828

/-- `A332741(7*∑{#}[n, floor((n+1)/(#+1))-floor(n/(#+1))])` -/
def P15300150878538224738.Spec : Prop :=
  ∀ n, P15300150878538224738.a n = A399828 (n + 1)

end A399828

/-! ## A399828.P16611385790865926388

`A399831(A234744(n+1))`
-/

namespace A399828.P16611385790865926388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399831 (A234744 (n + 1)).toNat

end

end A399828.P16611385790865926388

namespace A399828

/-- `A399831(A234744(n+1))` -/
def P16611385790865926388.Spec : Prop :=
  ∀ n, P16611385790865926388.a n = A399828 (n + 1)

end A399828

/-! ## A399828.P4505990485720604543

`A199474(A280583(n+1))`
-/

namespace A399828.P4505990485720604543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199474 (A280583 (n + 1)).toNat

end

end A399828.P4505990485720604543

namespace A399828

/-- `A199474(A280583(n+1))` -/
def P4505990485720604543.Spec : Prop :=
  ∀ n, P4505990485720604543.a n = A399828 (n + 1)

end A399828

/-!
# A399829: The number of divisors d of n such that gcud(d, n/d) is a powerful number (A001694), where gcud is the greatest common unitary divisor.

The programs for A399829, the canonical program `A399829.P142880181418372781` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A399829 has offset 1).

The definition of A399829 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A399829.P4377324232854508434

`A000005(A366765(n+1))`
-/

namespace A399829.P4377324232854508434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A366765 (n + 1)).toNat

end

end A399829.P4377324232854508434

namespace A399829

/-- `A000005(A366765(n+1))` -/
def P4377324232854508434.Spec : Prop :=
  ∀ n, P4377324232854508434.a n = A399829 (n + 1)

end A399829

/-! ## A399829.P5061544334156032792

`A365498(n+1)*A366145(n+1)`
-/

namespace A399829.P5061544334156032792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365498 (n + 1) * A366145 (n + 1)

end

end A399829.P5061544334156032792

namespace A399829

/-- `A365498(n+1)*A366145(n+1)` -/
def P5061544334156032792.Spec : Prop :=
  ∀ n, P5061544334156032792.a n = A399829 (n + 1)

end A399829

/-! ## A399829.P6133871123151715533

`A369719(n+1)/A365498(n+1)`
-/

namespace A399829.P6133871123151715533
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A369719 (n + 1) : ℚ) / (A365498 (n + 1) : ℚ)

end

end A399829.P6133871123151715533

namespace A399829

/-- `A369719(n+1)/A365498(n+1)` -/
def P6133871123151715533.Spec : Prop :=
  ∀ n, P6133871123151715533.a n = (A399829 (n + 1) : ℚ)

end A399829

/-! ## A399829.P142880181418372781

`∑{d}[n+1, A056671(#)*A112526((n+1)/#)]`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A399829

/-- `∑{d}[n+1, A056671(#)*A112526((n+1)/#)]` -/
def P142880181418372781.Spec : Prop :=
  ∀ n, P142880181418372781.a n = A399829 (n + 1)

theorem P142880181418372781.correct : P142880181418372781.Spec := by
  intro n
  simp only [A399829, Nat.add_sub_cancel]

end A399829

/-! ## A399829.P9134414127699879463

`∑{d}[n+1, A005361(#)*A189021((n+1)/#)]`
-/

namespace A399829.P9134414127699879463
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A005361 d * A189021 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A399829.P9134414127699879463

namespace A399829

/-- `∑{d}[n+1, A005361(#)*A189021((n+1)/#)]` -/
def P9134414127699879463.Spec : Prop :=
  ∀ n, P9134414127699879463.a n = A399829 (n + 1)

end A399829

/-! ## A399829.P9295079012453824735

`∑{d}[n+1, A295316(#)*A368248((n+1)/#)]`
-/

namespace A399829.P9295079012453824735
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A295316 d * A368248 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A399829.P9295079012453824735

namespace A399829

/-- `∑{d}[n+1, A295316(#)*A368248((n+1)/#)]` -/
def P9295079012453824735.Spec : Prop :=
  ∀ n, P9295079012453824735.a n = A399829 (n + 1)

end A399829

/-! ## A399829.P9260045342390005014

`∑{d}[n+1, A343443(#)*A363551((n+1)/#)]`
-/

namespace A399829.P9260045342390005014
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A343443 d * A363551 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A399829.P9260045342390005014

namespace A399829

/-- `∑{d}[n+1, A343443(#)*A363551((n+1)/#)]` -/
def P9260045342390005014.Spec : Prop :=
  ∀ n, P9260045342390005014.a n = A399829 (n + 1)

end A399829

/-! ## A399829.P11784014705185428258

`∏{e}[lcm(n+1, ∏{p}[n+1, #²]), A326178(#)]`
-/

namespace A399829.P11784014705185428258
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (n + 1) (∏ p ∈ Nat.primeFactors (f2 n), p ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A326178 (Nat.factorization (f1 n) p)

end

end A399829.P11784014705185428258

namespace A399829

/-- `∏{e}[lcm(n+1, ∏{p}[n+1, #²]), A326178(#)]` -/
def P11784014705185428258.Spec : Prop :=
  ∀ n, P11784014705185428258.a n = A399829 (n + 1)

end A399829

/-!
# A399831: The number of divisors d of n such that gcud(d, n/d) is an exponentially odd number (A268335), where gcud is the greatest common unitary divisor.

The programs for A399831, the canonical program `A399831.P9352319243903294152` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A399831 has offset 1).

The definition of A399831 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A399831.P7841513176707703543

`A366901((n+1)*A367513(n+1))`
-/

namespace A399831.P7841513176707703543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366901 ((n + 1 : ℤ) * A367513 (n + 1)).toNat

end

end A399831.P7841513176707703543

namespace A399831

/-- `A366901((n+1)*A367513(n+1))` -/
def P7841513176707703543.Spec : Prop :=
  ∀ n, P7841513176707703543.a n = A399831 (n + 1)

end A399831

/-! ## A399831.P14895617180885682804

`A374902(A005179(A000005((n+1)*(n+1))))`
-/

namespace A399831.P14895617180885682804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374902 (A005179 (A000005 ((n + 1) * (n + 1))).toNat).toNat

end

end A399831.P14895617180885682804

namespace A399831

/-- `A374902(A005179(A000005((n+1)*(n+1))))` -/
def P14895617180885682804.Spec : Prop :=
  ∀ n, P14895617180885682804.a n = A399831 (n + 1)

end A399831

/-! ## A399831.P9352319243903294152

`A365171(A365683(n+1)²)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A399831

/-- `A365171(A365683(n+1)²)` -/
def P9352319243903294152.Spec : Prop :=
  ∀ n, P9352319243903294152.a n = A399831 (n + 1)

theorem P9352319243903294152.correct : P9352319243903294152.Spec := by
  intro n
  simp only [A399831, Nat.add_sub_cancel]

end A399831

/-! ## A399831.P5834652707652440627

`A365171((n+1)*A365683(n+1))`
-/

namespace A399831.P5834652707652440627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365171 ((n + 1 : ℤ) * A365683 (n + 1)).toNat

end

end A399831.P5834652707652440627

namespace A399831

/-- `A365171((n+1)*A365683(n+1))` -/
def P5834652707652440627.Spec : Prop :=
  ∀ n, P5834652707652440627.a n = A399831 (n + 1)

end A399831

/-! ## A399831.P4969062501218669954

`A046951(A187941(A000005((n+1)²)))`
-/

namespace A399831.P4969062501218669954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046951 (A187941 (A000005 ((n + 1) ^ 2)).toNat).toNat

end

end A399831.P4969062501218669954

namespace A399831

/-- `A046951(A187941(A000005((n+1)²)))` -/
def P4969062501218669954.Spec : Prop :=
  ∀ n, P4969062501218669954.a n = A399831 (n + 1)

end A399831

/-!
# A399832: The number of divisors d of n such that gcud(d, n/d) is odd, where gcud is the greatest common unitary divisor.

The programs for A399832, the canonical program `A399832.P16012869787314435450` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A399832 has offset 1).

The definition of A399832 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A399832.P16012869787314435450

`A365171(A129194(n+1))`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A399832

/-- `A365171(A129194(n+1))` -/
def P16012869787314435450.Spec : Prop :=
  ∀ n, P16012869787314435450.a n = A399832 (n + 1)

theorem P16012869787314435450.correct : P16012869787314435450.Spec := by
  intro n
  simp only [A399832, Nat.add_sub_cancel]

end A399832

/-! ## A399832.P16304639549590874407

`A368978(A064761(n+1))`
-/

namespace A399832.P16304639549590874407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368978 (A064761 (n + 1)).toNat

end

end A399832.P16304639549590874407

namespace A399832

/-- `A368978(A064761(n+1))` -/
def P16304639549590874407.Spec : Prop :=
  ∀ n, P16304639549590874407.a n = A399832 (n + 1)

end A399832

/-! ## A399832.P6232675973227943974

`A336318((n+1)^3)/(n+1)`
-/

namespace A399832.P6232675973227943974
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A336318 ((n + 1) ^ 3) : ℚ) / (n + 1 : ℚ)

end

end A399832.P6232675973227943974

namespace A399832

/-- `A336318((n+1)^3)/(n+1)` -/
def P6232675973227943974.Spec : Prop :=
  ∀ n, P6232675973227943974.a n = (A399832 (n + 1) : ℚ)

end A399832

/-! ## A399832.P6675908768828413406

`A368978(A064762(n+1))`
-/

namespace A399832.P6675908768828413406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368978 (A064762 (n + 1)).toNat

end

end A399832.P6675908768828413406

namespace A399832

/-- `A368978(A064762(n+1))` -/
def P6675908768828413406.Spec : Prop :=
  ∀ n, P6675908768828413406.a n = A399832 (n + 1)

end A399832

/-! ## A399832.P17584487343150486379

`A287271(A293216(n+1))`
-/

namespace A399832.P17584487343150486379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287271 (A293216 (n + 1)).toNat

end

end A399832.P17584487343150486379

namespace A399832

/-- `A287271(A293216(n+1))` -/
def P17584487343150486379.Spec : Prop :=
  ∀ n, P17584487343150486379.a n = A399832 (n + 1)

end A399832

/-!
# A399833: The number of divisors d of n such that gcud(d, n/d) is a power of 2, where gcud is the greatest common unitary divisor.

The programs for A399833, the canonical program `A399833.P5824088692699989258` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A399833 has offset 1).

The definition of A399833 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A399833.P5824088692699989258

`(val(n+1, 2)+1)*A286324((n+1)/2^val(n+1, 2))`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A399833

/-- `(val(n+1, 2)+1)*A286324((n+1)/2^val(n+1, 2))` -/
def P5824088692699989258.Spec : Prop :=
  ∀ n, P5824088692699989258.a n = A399833 (n + 1)

theorem P5824088692699989258.correct : P5824088692699989258.Spec := by
  intro n
  simp only [A399833, Nat.add_sub_cancel]

end A399833

/-! ## A399833.P9170817850051580214

`A005361(A019554(n+1)*A019554(2*(n+1)))`
-/

namespace A399833.P9170817850051580214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (A019554 (n + 1) * A019554 (2 * (n + 1))).toNat

end

end A399833.P9170817850051580214

namespace A399833

/-- `A005361(A019554(n+1)*A019554(2*(n+1)))` -/
def P9170817850051580214.Spec : Prop :=
  ∀ n, P9170817850051580214.a n = A399833 (n + 1)

end A399833

/-! ## A399833.P8301558617542954114

`A400143(n+1)+A130713(A062198(n+1))`
-/

namespace A399833.P8301558617542954114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400143 (n + 1) + A130713 (A062198 (n + 1)).toNat

end

end A399833.P8301558617542954114

namespace A399833

/-- `A400143(n+1)+A130713(A062198(n+1))` -/
def P8301558617542954114.Spec : Prop :=
  ∀ n, P8301558617542954114.a n = A399833 (n + 1)

end A399833

/-! ## A399833.P16155438329263129834

`gcd(A226055(A067628(2*n+3)), A400143(n+1))`
-/

namespace A399833.P16155438329263129834
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A226055 (A067628 (2 * n + 3)).toNat) (A400143 (n + 1))

end

end A399833.P16155438329263129834

namespace A399833

/-- `gcd(A226055(A067628(2*n+3)), A400143(n+1))` -/
def P16155438329263129834.Spec : Prop :=
  ∀ n, (P16155438329263129834.a n : ℤ) = A399833 (n + 1)

end A399833

/-! ## A399833.P3208996580323396516

`A400143(n+1)%A228914(n+1)`
-/

namespace A399833.P3208996580323396516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A400143 (n + 1)) (A228914 (n + 1))

end

end A399833.P3208996580323396516

namespace A399833

/-- `A400143(n+1)%A228914(n+1)` -/
def P3208996580323396516.Spec : Prop :=
  ∀ n, P3208996580323396516.a n = A399833 (n + 1)

end A399833

/-! ## A399833.P16425504862986013233

`A400143(n+1)+A010051(A001567(n+1))`
-/

namespace A399833.P16425504862986013233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400143 (n + 1) + A010051 (A001567 (n + 1)).toNat

end

end A399833.P16425504862986013233

namespace A399833

/-- `A400143(n+1)+A010051(A001567(n+1))` -/
def P16425504862986013233.Spec : Prop :=
  ∀ n, P16425504862986013233.a n = A399833 (n + 1)

end A399833

/-! ## A399833.P2679164437439229337

`A001222(A002383(n+1))*A400143(n+1)`
-/

namespace A399833.P2679164437439229337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A002383 (n + 1)).toNat * A400143 (n + 1)

end

end A399833.P2679164437439229337

namespace A399833

/-- `A001222(A002383(n+1))*A400143(n+1)` -/
def P2679164437439229337.Spec : Prop :=
  ∀ n, P2679164437439229337.a n = A399833 (n + 1)

end A399833

/-! ## A399833.P13843337636319323860

`A057427(A033999(n)*A171177(n+1))*A400143(n+1)`
-/

namespace A399833.P13843337636319323860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A033999 n * A171177 (n + 1)).toNat * A400143 (n + 1)

end

end A399833.P13843337636319323860

namespace A399833

/-- `A057427(A033999(n)*A171177(n+1))*A400143(n+1)` -/
def P13843337636319323860.Spec : Prop :=
  ∀ n, P13843337636319323860.a n = A399833 (n + 1)

end A399833

/-! ## A399833.P14960699467423102166

`A400143(n+1)^A033999(A121552(n+1))`
-/

namespace A399833.P14960699467423102166
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A400143 (n + 1) : ℚ) ^ (A033999 (A121552 (n + 1)).toNat : ℤ)

end

end A399833.P14960699467423102166

namespace A399833

/-- `A400143(n+1)^A033999(A121552(n+1))` -/
def P14960699467423102166.Spec : Prop :=
  ∀ n, P14960699467423102166.a n = (A399833 (n + 1) : ℚ)

end A399833

/-! ## A399833.P3493181764336744760

`A057427(A400187(2*n+1))*A400143(n+1)`
-/

namespace A399833.P3493181764336744760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A400187 (2 * n + 1)).toNat * A400143 (n + 1)

end

end A399833.P3493181764336744760

namespace A399833

/-- `A057427(A400187(2*n+1))*A400143(n+1)` -/
def P3493181764336744760.Spec : Prop :=
  ∀ n, P3493181764336744760.a n = A399833 (n + 1)

end A399833

/-!
# A399834: The sum of divisors d of n such that gcud(d, n/d) is squarefree, where gcud is the greatest common unitary divisor.

The programs for A399834, there is no canonical definition to state claims against.
-/

/-! ## A399834.P16034542866644555157

`A399837(n+1)+A000007(A325828(n))`
-/

namespace A399834.P16034542866644555157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399837 (n + 1) + A000007 (A325828 n).toNat

end

end A399834.P16034542866644555157

/-! ## A399834.P1470220300207913898

`A399837(n+1)+A240467(A179972(n+4))`
-/

namespace A399834.P1470220300207913898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399837 (n + 1) + A240467 (A179972 (n + 4)).toNat

end

end A399834.P1470220300207913898

/-! ## A399834.P8867059859044302026

`A399837(n+1)%A000040(A032532(n+1))`
-/

namespace A399834.P8867059859044302026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A399837 (n + 1)) (A000040 (A032532 (n + 1)).toNat)

end

end A399834.P8867059859044302026

/-! ## A399834.P11860811012657335773

`A399837(n+1)+A000007(A049794(2*n+3))`
-/

namespace A399834.P11860811012657335773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399837 (n + 1) + A000007 (A049794 (2 * n + 3)).toNat

end

end A399834.P11860811012657335773

/-! ## A399834.P9618708644396215122

`A399837(n+1)+A000007(A243631(n))`
-/

namespace A399834.P9618708644396215122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399837 (n + 1) + A000007 (A243631 n).toNat

end

end A399834.P9618708644396215122

/-! ## A399834.P843176401805482715

`A001221(A295511(n+1))*A399837(n+1)`
-/

namespace A399834.P843176401805482715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A295511 (n + 1)).toNat * A399837 (n + 1)

end

end A399834.P843176401805482715

/-! ## A399834.P988822674514407282

`A003986(∑{#}[A399837(n+1), #])`
-/

namespace A399834.P988822674514407282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399837 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003986 (∑ k ∈ Finset.range (f1 n + 1).toNat, k)

end

end A399834.P988822674514407282

/-! ## A399834.P16265467508658851714

`A003986(C(A399837(n+1)+1, 2))`
-/

namespace A399834.P16265467508658851714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003986 (Nat.choose (A399837 (n + 1) + 1).toNat 2)

end

end A399834.P16265467508658851714

/-! ## A399834.P9130368647096459868

`A399837(n+1)%A101252(A002095(n))`
-/

namespace A399834.P9130368647096459868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A399837 (n + 1)) (A101252 (A002095 n).toNat)

end

end A399834.P9130368647096459868

/-! ## A399834.P17388826100102073832

`A399837(n+1)+A353557(A182570(3*n+4))`
-/

namespace A399834.P17388826100102073832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399837 (n + 1) + A353557 (A182570 (3 * n + 4)).toNat

end

end A399834.P17388826100102073832

/-!
# A399835: The sum of divisors d of n such that gcud(d, n/d) is a powerful number (A001694), where gcud is the greatest common unitary divisor.

The programs for A399835, the canonical program `A399835.P13050234149728139137` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A399835 has offset 1).

The definition of A399835 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A399835.P13050234149728139137

`A366146(n+1)*A371242(n+1)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A399835

/-- `A366146(n+1)*A371242(n+1)` -/
def P13050234149728139137.Spec : Prop :=
  ∀ n, P13050234149728139137.a n = A399835 (n + 1)

theorem P13050234149728139137.correct : P13050234149728139137.Spec := by
  intro n
  simp only [A399835, Nat.add_sub_cancel]

end A399835

/-! ## A399835.P9892477452123573056

`A399838(n+1)*A399839(n+1)/A399834(n+1)`
-/

namespace A399835.P9892477452123573056
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A399838 (n + 1) * A399839 (n + 1) : ℚ) / (A399834 (n + 1) : ℚ)

end

end A399835.P9892477452123573056

namespace A399835

/-- `A399838(n+1)*A399839(n+1)/A399834(n+1)` -/
def P9892477452123573056.Spec : Prop :=
  ∀ n, P9892477452123573056.a n = (A399835 (n + 1) : ℚ)

end A399835

/-!
# A399836: The sum of divisors d of n such that gcud(d, n/d) is a square, where gcud is the greatest common unitary divisor.

The programs for A399836, there is no canonical definition to state claims against.
-/

/-! ## A399836.P8079499875176060168

`A399835(n+1)+A000007(A327111(n+5))`
-/

namespace A399836.P8079499875176060168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399835 (n + 1) + A000007 (A327111 (n + 5)).toNat

end

end A399836.P8079499875176060168

/-! ## A399836.P4891189065027630426

`A399835(n+1)+A204220(A141856(2*(n+1)))`
-/

namespace A399836.P4891189065027630426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399835 (n + 1) + A204220 (A141856 (2 * (n + 1))).toNat

end

end A399836.P4891189065027630426

/-! ## A399836.P17665319018932815725

`A000007(A026648(2*(n+1)))+A366146(n+1)*A371242(n+1)`
-/

namespace A399836.P17665319018932815725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A026648 (2 * (n + 1))).toNat + A366146 (n + 1) * A371242 (n + 1)

end

end A399836.P17665319018932815725

/-! ## A399836.P3136494578495775152

`A373216(A299259(n))*A399835(n+1)`
-/

namespace A399836.P3136494578495775152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373216 (A299259 n).toNat * A399835 (n + 1)

end

end A399836.P3136494578495775152

/-! ## A399836.P11406178860447595645

`A399835(n+1)+A121373(A271634(n+5))`
-/

namespace A399836.P11406178860447595645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399835 (n + 1) + A121373 (A271634 (n + 5)).toNat

end

end A399836.P11406178860447595645

/-! ## A399836.P9095075142024915818

`A399835(n+1)%∑[A300096(3*n+5)]`
-/

namespace A399836.P9095075142024915818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300096 (3 * n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A399835 (n + 1)) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A399836.P9095075142024915818

/-! ## A399836.P16272832466041801223

`A399835(n+1)^A367622(A279102(n+5))`
-/

namespace A399836.P16272832466041801223
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A399835 (n + 1) : ℚ) ^ (A367622 (A279102 (n + 5)).toNat : ℤ)

end

end A399836.P16272832466041801223

/-! ## A399836.P205211522106075964

`A057427(A067558(3*n+2))*A399835(n+1)`
-/

namespace A399836.P205211522106075964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A067558 (3 * n + 2)).toNat * A399835 (n + 1)

end

end A399836.P205211522106075964

/-! ## A399836.P11053360118528570724

`A057427(A135622(2*n+3))*A399835(n+1)`
-/

namespace A399836.P11053360118528570724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A135622 (2 * n + 3)).toNat * A399835 (n + 1)

end

end A399836.P11053360118528570724

/-! ## A399836.P1092944844761687907

`A399835(n+1)+A000007(A173143(2*n+3))`
-/

namespace A399836.P1092944844761687907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399835 (n + 1) + A000007 (A173143 (2 * n + 3)).toNat

end

end A399836.P1092944844761687907

/-!
# A399838: The sum of divisors d of n such that gcud(d, n/d) is odd, where gcud is the greatest common unitary divisor.

The programs for A399838, there is no canonical definition to state claims against.
-/

/-! ## A399838.P6104694090861384610

`A400145(A187829(n+1))`
-/

namespace A399838.P6104694090861384610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400145 (A187829 (n + 1)).toNat

end

end A399838.P6104694090861384610

/-! ## A399838.P12361635881090564296

`A000035(A299280(n+1))*A400145(n+1)`
-/

namespace A399838.P12361635881090564296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A299280 (n + 1)).toNat * A400145 (n + 1)

end

end A399838.P12361635881090564296

/-! ## A399838.P8227931563436922880

`A400145(n+1)+A209229(A006008(2*n))`
-/

namespace A399838.P8227931563436922880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400145 (n + 1) + A209229 (A006008 (2 * n)).toNat

end

end A399838.P8227931563436922880

/-! ## A399838.P5176364205940496446

`A400145(n+1)+A209229(A199325(2*(n+1)))`
-/

namespace A399838.P5176364205940496446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400145 (n + 1) + A209229 (A199325 (2 * (n + 1))).toNat

end

end A399838.P5176364205940496446

/-! ## A399838.P12882274560784865363

`A400145(A077168(n))`
-/

namespace A399838.P12882274560784865363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400145 (A077168 n).toNat

end

end A399838.P12882274560784865363

/-!
# A399839: The sum of divisors d of n such that gcud(d, n/d) is a power of 2, where gcud is the greatest common unitary divisor.

The programs for A399839, there is no canonical definition to state claims against.
-/

/-! ## A399839.P8924029402674375110

`xor(n+1, n)*A188999((n+1)/2^val(n+1, 2))`
-/

namespace A399839.P8924029402674375110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.xor (n + 1) n : ℤ) * A188999 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))).toNat

end

end A399839.P8924029402674375110

/-! ## A399839.P8124049393422653000

`A400146(n+1)%A400001(A400004(n+1))`
-/

namespace A399839.P8124049393422653000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A400146 (n + 1)) (A400001 (A400004 (n + 1)).toNat)

end

end A399839.P8124049393422653000

/-! ## A399839.P9360453222161731312

`A400146(n+1)+A000007(A001318(2*(n+2)))`
-/

namespace A399839.P9360453222161731312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400146 (n + 1) + A000007 (A001318 (2 * (n + 2))).toNat

end

end A399839.P9360453222161731312

/-! ## A399839.P5868204100605154679

`A011772(∑{#}[A400146(n+1), #])`
-/

namespace A399839.P5868204100605154679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400146 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011772 (∑ k ∈ Finset.range (f1 n + 1).toNat, k)

end

end A399839.P5868204100605154679

/-! ## A399839.P10878045331894397572

`A057427(A274631(n+1))*A400146(n+1)`
-/

namespace A399839.P10878045331894397572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A274631 (n + 1)).toNat * A400146 (n + 1)

end

end A399839.P10878045331894397572

/-! ## A399839.P13220904186406572516

`A057427(A075231(2*(n+2)))*A400146(n+1)`
-/

namespace A399839.P13220904186406572516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A075231 (2 * (n + 2))).toNat * A400146 (n + 1)

end

end A399839.P13220904186406572516

/-! ## A399839.P4673358391374726080

`A400146(n+1)+A000007(A070166(n))`
-/

namespace A399839.P4673358391374726080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400146 (n + 1) + A000007 (A070166 n).toNat

end

end A399839.P4673358391374726080

/-! ## A399839.P16542263853773844868

`A400146(n+1)%A002189(n)`
-/

namespace A399839.P16542263853773844868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A400146 (n + 1)) (A002189 n)

end

end A399839.P16542263853773844868

/-! ## A399839.P13774572713042634918

`A057427(A242784(n))*A400146(n+1)`
-/

namespace A399839.P13774572713042634918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A242784 n).toNat * A400146 (n + 1)

end

end A399839.P13774572713042634918

/-! ## A399839.P13398268393515903191

`A380480(A161853(3*n+5))*A400146(n+1)`
-/

namespace A399839.P13398268393515903191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380480 (A161853 (3 * n + 5)).toNat * A400146 (n + 1)

end

end A399839.P13398268393515903191

/-!
# A399840: a(n) = A050443(n) mod n.

The programs for A399840, the canonical program `A399840.P17099530196109704425` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A399840 has offset 1).

The definition of A399840 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A050443(n+1)%(n+1)` (program `A399840.P17099530196109704425`, by `A399840.P17099530196109704425.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A399840.P17099530196109704425

`A050443(n+1)%(n+1)`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A399840

/-- `A050443(n+1)%(n+1)` -/
def P17099530196109704425.Spec : Prop :=
  ∀ n, P17099530196109704425.a n = A399840 (n + 1)

theorem P17099530196109704425.correct : P17099530196109704425.Spec := by
  intro n
  simp only [A399840, Nat.add_sub_cancel]

end A399840

/-!
# A399841: a(n) = A087935(n) mod n.

The programs for A399841, the canonical program `A399841.P8409433032057062939` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A399841 has offset 1).

The definition of A399841 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A399841.P8409433032057062939

`A087935(n+1)%(n+1)`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A399841

/-- `A087935(n+1)%(n+1)` -/
def P8409433032057062939.Spec : Prop :=
  ∀ n, P8409433032057062939.a n = A399841 (n + 1)

theorem P8409433032057062939.correct : P8409433032057062939.Spec := by
  intro n
  simp only [A399841, Nat.add_sub_cancel]

end A399841

/-!
# A399842: Omit zero digits from the product of first n primes (cf. A002110).

The programs for A399842, there is no canonical definition to state claims against.
-/

/-! ## A399842.P4271296681045376417

`A004719(A002110(n))`
-/

namespace A399842.P4271296681045376417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004719 (A002110 n).toNat

end

end A399842.P4271296681045376417

/-! ## A399842.P18444419103022067386

`A004151(A002110(n))`
-/

namespace A399842.P18444419103022067386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004151 (A002110 n).toNat

end

end A399842.P18444419103022067386

/-!
# A399843: a(n) is the number of nonzero digits in the product of first n primes (cf. A002110).

The programs for A399843, there is no canonical definition to state claims against.
-/

/-! ## A399843.P8239858061499596581

`A067175(n)-A079099(n)`
-/

namespace A399843.P8239858061499596581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067175 n - A079099 n

end

end A399843.P8239858061499596581

/-! ## A399843.P15168265535563269342

`A048856(n+1)-(A387173(n)+A079099(n))`
-/

namespace A399843.P15168265535563269342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048856 (n + 1) - (A387173 n + A079099 n)

end

end A399843.P15168265535563269342

/-!
# A399846: Binary nested sequence: a(0)=0, a(1)=1, a(2n)=a(n), a(2n+1)=1-a(n-a(n-1)) for n>=1.

The programs for A399846, there is no canonical definition to state claims against.
-/

/-! ## A399846.P15323333631639990848

`and(A101664(n), A157972(n+2))`
-/

namespace A399846.P15323333631639990848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A101664 n) (A157972 (n + 2))

end

end A399846.P15323333631639990848

/-! ## A399846.P2162693225775588006

`and(A098475(n), A101664(n))`
-/

namespace A399846.P2162693225775588006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A098475 n) (A101664 n)

end

end A399846.P2162693225775588006

/-! ## A399846.P3446036777853620834

`and(A101664(n), A158875(n))`
-/

namespace A399846.P3446036777853620834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A101664 n) (A158875 n)

end

end A399846.P3446036777853620834

/-! ## A399846.P14286804802121409883

`and(A101664(n), A105071(n))`
-/

namespace A399846.P14286804802121409883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A101664 n) (A105071 n)

end

end A399846.P14286804802121409883

/-! ## A399846.P1428554956402767085

`and(A101664(n), A112044(n))`
-/

namespace A399846.P1428554956402767085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A101664 n) (A112044 n)

end

end A399846.P1428554956402767085

/-!
# A399849: Expansion of e.g.f. log((1 - log(1+x))/(1 - 2*log(1+x)))/(1 - log(1+x)).

The programs for A399849, there is no canonical definition to state claims against.
-/

/-! ## A399849.P17772824127173409590

`A097796(A000079(n)*A008119(n+4))`
-/

namespace A399849.P17772824127173409590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097796 (A000079 n * A008119 (n + 4)).toNat

end

end A399849.P17772824127173409590

/-! ## A399849.P7586752473346989907

`A115082(n)-A063647(A000992(2*n+5))`
-/

namespace A399849.P7586752473346989907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115082 n - A063647 (A000992 (2 * n + 5)).toNat

end

end A399849.P7586752473346989907

/-!
# A399851: Number of tripartite (or 3-dimensional vector) partitions of (n, n, n) into distinct parts containing at least one mixed part.

The programs for A399851, there is no canonical definition to state claims against.
-/

/-! ## A399851.P17537521036767330952

`A219560(n)-A000009(n)^3`
-/

namespace A399851.P17537521036767330952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219560 n - A000009 n ^ 3

end

end A399851.P17537521036767330952

/-!
# A399852: Numbers k >= 2 for which 2k is missing in A399704.

The programs for A399852, there is no canonical definition to state claims against.
-/

/-! ## A399852.P9516589908183600143

`eq[A359674(2*n+1)+1, A252744(n)]`
-/

namespace A399852.P9516589908183600143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359674 (2 * n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252744 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A399852.P9516589908183600143

/-! ## A399852.P13907205506871942433

`eq[A000108(A359674(2*n+1)), A252744(n)]`
-/

namespace A399852.P13907205506871942433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (A359674 (2 * n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252744 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A399852.P13907205506871942433

/-! ## A399852.P3267929123547877481

`eq[A003415(2*n+1), A265575(A360459(2*(n+2)))]`
-/

namespace A399852.P3267929123547877481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265575 (A360459 (2 * (n + 2))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A399852.P3267929123547877481

/-!
# A399854: Smallest prime that is the sum of n distinct elements from the union of squares and cubes.

The programs for A399854, there is no canonical definition to state claims against.
-/

/-! ## A399854.P3489927237763056946

`A375345(A171503(n+1))`
-/

namespace A399854.P3489927237763056946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375345 (A171503 (n + 1)).toNat

end

end A399854.P3489927237763056946

/-!
# A399856: a(n) is the least proper multiple of n whose factorial base expansion contains that of n as a substring.

The programs for A399856, there is no canonical definition to state claims against.
-/

/-! ## A399856.P3726228520972412618

`A399855(n+1)*(n+1)`
-/

namespace A399856.P3726228520972412618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399855 (n + 1) * (n + 1 : ℤ)

end

end A399856.P3726228520972412618

/-! ## A399856.P15372918778295558120

`(n+1)*A399855(n+1)`
-/

namespace A399856.P15372918778295558120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A399855 (n + 1)

end

end A399856.P15372918778295558120

/-!
# A399858: a(n) is the book Ramsey number R(B_n,B_n).

The programs for A399858, there is no canonical definition to state claims against.
-/

/-! ## A399858.P2023390401750666584

`A156247(2*n+3)+n+1`
-/

namespace A399858.P2023390401750666584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156247 (2 * n + 3) + (n + 1 : ℤ)

end

end A399858.P2023390401750666584

/-! ## A399858.P5013251276666512718

`A156271(2*n+3)+n+1`
-/

namespace A399858.P5013251276666512718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156271 (2 * n + 3) + (n + 1 : ℤ)

end

end A399858.P5013251276666512718

/-! ## A399858.P4250576987057934194

`A072747(A017581(n+1))`
-/

namespace A399858.P4250576987057934194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072747 (A017581 (n + 1)).toNat

end

end A399858.P4250576987057934194

/-! ## A399858.P6951032885404128764

`A280877(A184741(n+1))`
-/

namespace A399858.P6951032885404128764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280877 (A184741 (n + 1)).toNat

end

end A399858.P6951032885404128764

/-! ## A399858.P2157539005033773751

`A378372(A198395(n+1))`
-/

namespace A399858.P2157539005033773751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378372 (A198395 (n + 1)).toNat

end

end A399858.P2157539005033773751

/-!
# A399862: Triangle read by rows: T(n,k) = binomial(n-k+1, 2) - [n-k+1 > k] * binomial(n-2*k+1, 2), k = 1..n, where brackets are Iverson.

The programs for A399862, the canonical program `A399862.P2868466355493484604` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A399862 has offset 1).

The definition of A399862 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A399862.P12983884575403920657

`T(n-2,k-1)+row(n)-col(n)` with `a(0)=0`
-/

namespace A399862.P12983884575403920657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  SequenceMachineLib.triUp2Left a n + ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ))

end

end A399862.P12983884575403920657

namespace A399862

/-- `T(n-2,k-1)+row(n)-col(n)` -/
def P12983884575403920657.Spec : Prop :=
  ∀ n, P12983884575403920657.a n = A399862 (n + 1)

end A399862

/-! ## A399862.P17632137621539592459

`A025581(n)+T(n-2,k-1)` with `a(0)=0`
-/

namespace A399862.P17632137621539592459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A025581 n + SequenceMachineLib.triUp2Left a n

end

end A399862.P17632137621539592459

namespace A399862

/-- `A025581(n)+T(n-2,k-1)` -/
def P17632137621539592459.Spec : Prop :=
  ∀ n, P17632137621539592459.a n = A399862 (n + 1)

end A399862

/-! ## A399862.P2868466355493484604

`∑[A064789(n+1)-(n+1)]`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A399862

/-- `∑[A064789(n+1)-(n+1)]` -/
def P2868466355493484604.Spec : Prop :=
  ∀ n, P2868466355493484604.a n = A399862 (n + 1)

theorem P2868466355493484604.correct : P2868466355493484604.Spec := by
  intro n
  simp only [A399862, Nat.add_sub_cancel]

end A399862

/-! ## A399862.P12870193706992452040

`∑[row(n)+1-col(n)-A194959(n+1)]`
-/

namespace A399862.P12870193706992452040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.triRow n + 1 : ℤ) - (SequenceMachineLib.triCol n : ℤ) - A194959 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A399862.P12870193706992452040

namespace A399862

/-- `∑[row(n)+1-col(n)-A194959(n+1)]` -/
def P12870193706992452040.Spec : Prop :=
  ∀ n, P12870193706992452040.a n = A399862 (n + 1)

end A399862

/-! ## A399862.P3700258715896317702

`∑[A004736(n+1)-A194959(n+1)]`
-/

namespace A399862.P3700258715896317702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1) - A194959 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A399862.P3700258715896317702

namespace A399862

/-- `∑[A004736(n+1)-A194959(n+1)]` -/
def P3700258715896317702.Spec : Prop :=
  ∀ n, P3700258715896317702.a n = A399862 (n + 1)

end A399862

/-! ## A399862.P4648706395741704738

`∑[A004736(n+1)-(A064578(n+1)-A057944(n))]`
-/

namespace A399862.P4648706395741704738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1) - (A064578 (n + 1) - A057944 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A399862.P4648706395741704738

namespace A399862

/-- `∑[A004736(n+1)-(A064578(n+1)-A057944(n))]` -/
def P4648706395741704738.Spec : Prop :=
  ∀ n, P4648706395741704738.a n = A399862 (n + 1)

end A399862

/-! ## A399862.P2946238630177010654

`A399863(n+1)-A351153(n+1)`
-/

namespace A399862.P2946238630177010654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399863 (n + 1) - A351153 (n + 1)

end

end A399862.P2946238630177010654

namespace A399862

/-- `A399863(n+1)-A351153(n+1)` -/
def P2946238630177010654.Spec : Prop :=
  ∀ n, P2946238630177010654.a n = A399862 (n + 1)

end A399862

/-! ## A399862.P10216408765295786036

`A210983(n+1)-A014370(n+1)`
-/

namespace A399862.P10216408765295786036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210983 (n + 1) - A014370 (n + 1)

end

end A399862.P10216408765295786036

namespace A399862

/-- `A210983(n+1)-A014370(n+1)` -/
def P10216408765295786036.Spec : Prop :=
  ∀ n, P10216408765295786036.a n = A399862 (n + 1)

end A399862

/-!
# A399863: Triangle read by rows: T(n,k) = binomial(n+1,2) - binomial(n-k+1,2) + binomial(n-k,2) - [n-k+1 > k]*binomial(n-2*k+1,2), k = 1..n, with Iverson brackets.

The programs for A399863, the canonical program `A399863.P5848190532128983579` is in `Seq.B004.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A399863 has offset 1).

The definition of A399863 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7260 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A399863.P5848190532128983579

`A220053(n+1)+A004247(n)`

The canonical program, it is in `Seq.B004.C004`.
-/

namespace A399863

/-- `A220053(n+1)+A004247(n)` -/
def P5848190532128983579.Spec : Prop :=
  ∀ n, P5848190532128983579.a n = A399863 (n + 1)

theorem P5848190532128983579.correct : P5848190532128983579.Spec := by
  intro n
  simp only [A399863, Nat.add_sub_cancel]

end A399863

/-! ## A399863.P13250405893281883498

`A399862(n+1)+A351153(n+1)`
-/

namespace A399863.P13250405893281883498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399862 (n + 1) + A351153 (n + 1)

end

end A399863.P13250405893281883498

namespace A399863

/-- `A399862(n+1)+A351153(n+1)` -/
def P13250405893281883498.Spec : Prop :=
  ∀ n, P13250405893281883498.a n = A399863 (n + 1)

end A399863

/-!
# A399864: Numbers k in A024619 such that A376846(k) = 0.

The programs for A399864, there is no canonical definition to state claims against.
-/

/-! ## A399864.P9528820106601032329

`∪[A377590(n+1), A377713(n+1)]`
-/

namespace A399864.P9528820106601032329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377590 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377713 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A399864.P9528820106601032329

/-!
# A399865: Number of preclosures on an n-element labeled set; equivalently, number of extensive order-preserving self-maps of the Boolean lattice of rank n.

The programs for A399865, there is no canonical definition to state claims against.
-/

/-! ## A399865.P7031251601895159853

`A000372(abs(1-n))^n`
-/

namespace A399865.P7031251601895159853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000372 |1 - (n : ℤ)|.toNat ^ n

end

end A399865.P7031251601895159853

/-!
# A399866: a(1) = 1; a(n+1) is the smallest integer greater than a(n) such that: a(k) + a(k+3) is not a term for any k.

The programs for A399866, there is no canonical definition to state claims against.
-/

/-! ## A399866.P15341578509025470223

`record[A354819(n+1)+A304464(2*n+1)]`
-/

namespace A399866.P15341578509025470223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354819 (n + 1) + A304464 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A399866.P15341578509025470223

/-! ## A399866.P7232131771612019715

`comp[comp[A195909(A001263(2*(n+1)))+n]+n]`
-/

namespace A399866.P7232131771612019715
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195909 (A001263 (2 * (n + 1))).toNat + (n : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A399866.P7232131771612019715

/-!
# A399867: Number of equivalence classes of 0-1 matrices with n distinct rows and distinct nonzero columns, under row and column permutations.

The programs for A399867, there is no canonical definition to state claims against.
-/

/-! ## A399867.P920727933497499637

`A070900(A259374(n+1))`
-/

namespace A399867.P920727933497499637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070900 (A259374 (n + 1)).toNat

end

end A399867.P920727933497499637

/-!
# A399869: Number of steps required for n to reach 1 under repeated application of A048675, which encodes the exponents in the prime factorization of n as a binary integer; or -1 if 1 is never reached.

The programs for A399869, there is no canonical definition to state claims against.
-/

/-! ## A399869.P11847763685159619104

`A330808(A048767(n+1))`
-/

namespace A399869.P11847763685159619104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330808 (A048767 (n + 1)).toNat

end

end A399869.P11847763685159619104

/-! ## A399869.P11420546211600998010

`A173419(n+1)-A288372(A242783(n))`
-/

namespace A399869.P11420546211600998010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173419 (n + 1) - A288372 (A242783 n).toNat

end

end A399869.P11420546211600998010

/-! ## A399869.P2939115418769613766

`A001222(A108951(2*(n+1)))-A043560(n)`
-/

namespace A399869.P2939115418769613766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A108951 (2 * (n + 1))).toNat - A043560 n

end

end A399869.P2939115418769613766

/-! ## A399869.P5153282653663301455

`A334028(n)+A001221(A122852(n))`
-/

namespace A399869.P5153282653663301455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334028 n + A001221 (A122852 n).toNat

end

end A399869.P5153282653663301455

/-! ## A399869.P7247675866977722168

`A056239(n+1)-A143731(A214083(n))`
-/

namespace A399869.P7247675866977722168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (n + 1) - A143731 (A214083 n).toNat

end

end A399869.P7247675866977722168

/-!
# A399870: Smooth necklaces with 6 colors.

The programs for A399870, there is no canonical definition to state claims against.
-/

/-! ## A399870.P4148346299829758920

`A089864(A122121(n))+A027434(C(n+2, 2))+n-1`
-/

namespace A399870.P4148346299829758920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089864 (A122121 n).toNat + (A027434 (Nat.choose (n + 2) 2) + ((n : ℤ) - 1))

end

end A399870.P4148346299829758920

/-!
# A399872: Cyclically smooth Lyndon words with 6 colors.

The programs for A399872, there is no canonical definition to state claims against.
-/

/-! ## A399872.P15818502093124915241

`∑{d}[n+1, A008683((n+1)/#)*A208775(#)]`
-/

namespace A399872.P15818502093124915241
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat * A208775 d

end

end A399872.P15818502093124915241

/-! ## A399872.P8352161458360250965

`∑{d}[n+1, A208775(#)*A253206((n+1)/#)]`
-/

namespace A399872.P8352161458360250965
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A208775 d * A253206 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A399872.P8352161458360250965

/-! ## A399872.P1228767781829047092

`A399871(n+1)+A208775(n+1)-A399870(n+1)`
-/

namespace A399872.P1228767781829047092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399871 (n + 1) + A208775 (n + 1) - A399870 (n + 1)

end

end A399872.P1228767781829047092

/-!
# A399873: Row index of n in the Tchoukaillon array of order infinity (A344009).

The programs for A399873, there is no canonical definition to state claims against.
-/

/-! ## A399873.P11947819410240560874

`A399874(A399877(n+1))`
-/

namespace A399873.P11947819410240560874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399874 (A399877 (n + 1)).toNat

end

end A399873.P11947819410240560874

/-! ## A399873.P1964282281639856143

`A285200(A041893(n))`
-/

namespace A399873.P1964282281639856143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285200 (A041893 n).toNat

end

end A399873.P1964282281639856143

/-! ## A399873.P5077964742491787284

`A277447(A369904(n+2))`
-/

namespace A399873.P5077964742491787284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277447 (A369904 (n + 2)).toNat

end

end A399873.P5077964742491787284

/-! ## A399873.P1461997966248968017

`gcd(A177896(A177919(n+1)), A177903(n))`
-/

namespace A399873.P1461997966248968017
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A177896 (A177919 (n + 1)).toNat) (A177903 n)

end

end A399873.P1461997966248968017

/-! ## A399873.P14423086279348103104

`A033762(A000079(n))+A001222(2*n+1)`
-/

namespace A399873.P14423086279348103104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033762 (A000079 n).toNat + A001222 (2 * n + 1)

end

end A399873.P14423086279348103104

/-!
# A399874: Column index of n in the Tchoukaillon array of order infinity (A344009).

The programs for A399874, there is no canonical definition to state claims against.
-/

/-! ## A399874.P3180618783958632022

`A399873(A399877(n+1))`
-/

namespace A399874.P3180618783958632022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399873 (A399877 (n + 1)).toNat

end

end A399874.P3180618783958632022

/-!
# A399878: a(n) = Sum_{k = 1..n, k does not divide n} (gcd(n, floor(n/k) + 1) - gcd(n, floor(n/k))).

The programs for A399878, there is no canonical definition to state claims against.
-/

/-! ## A399878.P3431479448194113273

`A294891(n+1)*A353835(A006130(n))`
-/

namespace A399878.P3431479448194113273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294891 (n + 1) * A353835 (A006130 n).toNat

end

end A399878.P3431479448194113273

/-! ## A399878.P9765878084000850999

`A399996(n+1)%A004525(A305797(n+1))`
-/

namespace A399878.P9765878084000850999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A399996 (n + 1)) (A004525 (A305797 (n + 1)).toNat)

end

end A399878.P9765878084000850999

/-! ## A399878.P3397398542071856292

`A338664(A331654(n+1))`
-/

namespace A399878.P3397398542071856292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338664 (A331654 (n + 1)).toNat

end

end A399878.P3397398542071856292

/-! ## A399878.P4297683668928996986

`A383330(A386946(n+1))`
-/

namespace A399878.P4297683668928996986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383330 (A386946 (n + 1)).toNat

end

end A399878.P4297683668928996986

/-! ## A399878.P3992771426010910629

`A346698((n+1)*row(A300580(n))!²)`
-/

namespace A399878.P3992771426010910629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346698 ((n + 1) * Nat.factorial (SequenceMachineLib.triRow (A300580 n).toNat) ^ 2)

end

end A399878.P3992771426010910629

/-!
# A399879: Number of partitions of n such that if k is the number of parts then no part is divisible by k.

The programs for A399879, there is no canonical definition to state claims against.
-/

/-! ## A399879.P14374944856273747260

`A125117(A075787(n+1))+A110618(n)`
-/

namespace A399879.P14374944856273747260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125117 (A075787 (n + 1)).toNat + A110618 n

end

end A399879.P14374944856273747260

/-!
# A399883: On Artin's conjecture, (A399882(n)/a(n))*C is the relative density of primes with primitive root -n among the primes, where C = A005596 is Artin's constant.

The programs for A399883, there is no canonical definition to state claims against.
-/

/-! ## A399883.P13994871987931802930

`gcd(A088152(A061954(n+1)), A165900(n+1))`
-/

namespace A399883.P13994871987931802930
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A088152 (A061954 (n + 1)).toNat) (A165900 (n + 1))

end

end A399883.P13994871987931802930

/-!
# A399886: Record high points in A399184.

The programs for A399886, there is no canonical definition to state claims against.
-/

/-! ## A399886.P3903373988546413207

`lt[A057272(A000720(3*n+2)), 1]`
-/

namespace A399886.P3903373988546413207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057272 (A000720 (3 * n + 2)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A399886.P3903373988546413207

/-!
# A399896: Number of permutations of [n] requiring the greatest number of reversals of increasing or decreasing runs to sort.

The programs for A399896, there is no canonical definition to state claims against.
-/

/-! ## A399896.P16766922320163246429

`A309058(n)+A282318(A064170(n+1))`
-/

namespace A399896.P16766922320163246429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309058 n + A282318 (A064170 (n + 1)).toNat

end

end A399896.P16766922320163246429

/-!
# A399899: Word representation of the grasshopper infinite barrycade (recursively defined family of permutations of the positive integers having pairwise disjoint sets of partial sums).

The programs for A399899, there is no canonical definition to state claims against.
-/

/-! ## A399899.P9528491737676025508

`A117229(A358783(n+2))`
-/

namespace A399899.P9528491737676025508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117229 (A358783 (n + 2)).toNat

end

end A399899.P9528491737676025508

