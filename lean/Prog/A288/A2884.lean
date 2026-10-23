import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A288401: Binary representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 459", based on the 5-celled von Neumann neighborhood.

The programs for A288401, there is no canonical definition to state claims against.
-/

/-! ## A288401.P3301889854340746772

`A007088(A288403(n))`
-/

namespace A288401.P3301889854340746772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A288403 n).toNat

end

end A288401.P3301889854340746772

/-! ## A288401.P8791777679772908453

`A185544(2*A288403(n))`
-/

namespace A288401.P8791777679772908453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A288403 n).toNat

end

end A288401.P8791777679772908453

/-! ## A288401.P1227465741133155562

`or(∑{e}[A181356(n+2)+1, #]%2, A286668(n))`
-/

namespace A288401.P1227465741133155562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181356 (n + 2) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (((∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p) % 2 : ℕ) : ℤ) (A286668 n)

end

end A288401.P1227465741133155562

/-! ## A288401.P6655625228341967017

`A286668(n)+A038219(A199475(n))`
-/

namespace A288401.P6655625228341967017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286668 n + A038219 (A199475 n).toNat

end

end A288401.P6655625228341967017

/-!
# A288402: Binary representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 459", based on the 5-celled von Neumann neighborhood.

The programs for A288402, there is no canonical definition to state claims against.
-/

/-! ## A288402.P3988623239679946499

`A007088(A288404(n))`
-/

namespace A288402.P3988623239679946499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A288404 n).toNat

end

end A288402.P3988623239679946499

/-! ## A288402.P880999647552780748

`A185544(2*A288404(n))`
-/

namespace A288402.P880999647552780748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A288404 n).toNat

end

end A288402.P880999647552780748

/-!
# A288403: Decimal representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 459", based on the 5-celled von Neumann neighborhood.

The programs for A288403, there is no canonical definition to state claims against.
-/

/-! ## A288403.P11987871088130576779

`or(∑{e}[A181356(n+2)+1, #]%2, A286670(n))`
-/

namespace A288403.P11987871088130576779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181356 (n + 2) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (((∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p) % 2 : ℕ) : ℤ) (A286670 n)

end

end A288403.P11987871088130576779

/-! ## A288403.P6335877818540796763

`A286670(n)+A038219(A199475(n))`
-/

namespace A288403.P6335877818540796763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286670 n + A038219 (A199475 n).toNat

end

end A288403.P6335877818540796763

/-! ## A288403.P16626411486752319982

`A286670(n)+A286654(A006318(n))`
-/

namespace A288403.P16626411486752319982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286670 n + A286654 (A006318 n).toNat

end

end A288403.P16626411486752319982

/-! ## A288403.P16704281164379690668

`or(A000035(A001764(n)), A286670(n))`
-/

namespace A288403.P16704281164379690668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000035 (A001764 n).toNat) (A286670 n)

end

end A288403.P16704281164379690668

/-!
# A288405: Primes of the form k!2+4, where k!2 is the double factorial number (A006852).

The programs for A288405, there is no canonical definition to state claims against.
-/

/-! ## A288405.P12170632577950104709

`A006882(A076186(n+2))+4`
-/

namespace A288405.P12170632577950104709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006882 (A076186 (n + 2)).toNat + 4

end

end A288405.P12170632577950104709

/-! ## A288405.P6745023964682215620

`A001497(lt[A319541(2*(n+1)), A134145(n+1)])+4`
-/

namespace A288405.P6745023964682215620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319541 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134145 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001497 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n) + 4

end

end A288405.P6745023964682215620

/-!
# A288406: Primes of the form k!2+8, where k!2 is the double factorial number (A006852).

The programs for A288406, there is no canonical definition to state claims against.
-/

/-! ## A288406.P7963245768364387937

`A006882(A076188(n+1))+8`
-/

namespace A288406.P7963245768364387937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006882 (A076188 (n + 1)).toNat + 8

end

end A288406.P7963245768364387937

/-! ## A288406.P4624593568397596679

`A216466(A076188(n+1)%A153512(3*(n+1)))+8`
-/

namespace A288406.P4624593568397596679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216466 (Int.tmod (A076188 (n + 1)) (A153512 (3 * (n + 1)))).toNat + 8

end

end A288406.P4624593568397596679

/-!
# A288408: Primes of the form k!2+32, where k!2 is the double factorial number (A006852).

The programs for A288408, there is no canonical definition to state claims against.
-/

/-! ## A288408.P5809242670099816430

`A006882(A076190(n+1))+32`
-/

namespace A288408.P5809242670099816430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006882 (A076190 (n + 1)).toNat + 32

end

end A288408.P5809242670099816430

/-!
# A288409: Primes of the form k!2+64, where k!2 is the double factorial number (A006852).

The programs for A288409, there is no canonical definition to state claims against.
-/

/-! ## A288409.P8447565014976654570

`A006882(A076193(n+1))+64`
-/

namespace A288409.P8447565014976654570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006882 (A076193 (n + 1)).toNat + 64

end

end A288409.P8447565014976654570

/-!
# A288411: Primes of the form k!2+256, where k!2 is the double factorial number (A006852).

The programs for A288411, there is no canonical definition to state claims against.
-/

/-! ## A288411.P17968594358266646966

`p?[A259456(n)+256]`
-/

namespace A288411.P17968594358266646966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259456 n + 256

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A288411.P17968594358266646966

/-!
# A288414: Expansion of Product_{k>=1} (1 + x^k)^(sigma_2(k)).

The programs for A288414, there is no canonical definition to state claims against.
-/

/-! ## A288414.P12720882840935873601

`A321877(∑[n+3])`
-/

namespace A288414.P12720882840935873601
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321877 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A288414.P12720882840935873601

/-! ## A288414.P3433240005773490875

`A321877(A055998(n+1))%A004171(n)`
-/

namespace A288414.P3433240005773490875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A321877 (A055998 (n + 1)).toNat) (A004171 n)

end

end A288414.P3433240005773490875

/-! ## A288414.P6915341709394618152

`char[A004248(n)]*A321877(A055998(n+1))`
-/

namespace A288414.P6915341709394618152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004248 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A321877 (A055998 (n + 1)).toNat

end

end A288414.P6915341709394618152

/-! ## A288414.P16369354979058697633

`char[A160791(n)]*A321877(A055998(n+1))`
-/

namespace A288414.P16369354979058697633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160791 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A321877 (A055998 (n + 1)).toNat

end

end A288414.P16369354979058697633

/-! ## A288414.P16301771606585092663

`and(A129868(2*n+1), A321877(A055998(n+1)))`
-/

namespace A288414.P16301771606585092663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A129868 (2 * n + 1)) (A321877 (A055998 (n + 1)).toNat)

end

end A288414.P16301771606585092663

/-!
# A288415: Expansion of Product_{k>=1} (1 + x^k)^(sigma_3(k)).

The programs for A288415, there is no canonical definition to state claims against.
-/

/-! ## A288415.P13996493116061772641

`A321877(∑[n+3]+n+3)`
-/

namespace A288415.P13996493116061772641
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321877 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A288415.P13996493116061772641

/-! ## A288415.P6125309435732543632

`gcd(A000038(n), A321877(A046691(n+2)))`
-/

namespace A288415.P6125309435732543632
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A321877 (A046691 (n + 2)).toNat)

end

end A288415.P6125309435732543632

/-! ## A288415.P13509947571526131178

`or(A000007(n), A321877(A046691(n+2)))`
-/

namespace A288415.P13509947571526131178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A321877 (A046691 (n + 2)).toNat)

end

end A288415.P13509947571526131178

/-! ## A288415.P14832053165780744472

`or(A055641(n), A321877(A046691(n+2)))`
-/

namespace A288415.P14832053165780744472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A055641 n) (A321877 (A046691 (n + 2)).toNat)

end

end A288415.P14832053165780744472

/-! ## A288415.P17796829851815604922

`or(A253513(n), A321877(A046691(n+2)))`
-/

namespace A288415.P17796829851815604922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A253513 n) (A321877 (A046691 (n + 2)).toNat)

end

end A288415.P17796829851815604922

/-!
# A288417: a(n) = Sum_{d|n} A000593(n/d).

The programs for A288417, the canonical program `A288417.P12479568783513944620` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A288417 has offset 1).

The definition of A288417 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A288417.P12479568783513944620

`∑{d}[n+1, A000593(#)]`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A288417

/-- `∑{d}[n+1, A000593(#)]` -/
def P12479568783513944620.Spec : Prop :=
  ∀ n, P12479568783513944620.a n = A288417 (n + 1)

theorem P12479568783513944620.correct : P12479568783513944620.Spec := by
  intro n
  simp only [A288417, Nat.add_sub_cancel]

end A288417

/-! ## A288417.P2755116325948228198

`∑{d}[n+1, #*A048272((n+1)/#)]`
-/

namespace A288417.P2755116325948228198
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A048272 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A288417.P2755116325948228198

namespace A288417

/-- `∑{d}[n+1, #*A048272((n+1)/#)]` -/
def P2755116325948228198.Spec : Prop :=
  ∀ n, P2755116325948228198.a n = A288417 (n + 1)

end A288417

/-! ## A288417.P7934914927589001121

`∑{d}[n+1, A000203(A000265(#))]`
-/

namespace A288417.P7934914927589001121
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000203 (A000265 d).toNat

end

end A288417.P7934914927589001121

namespace A288417

/-- `∑{d}[n+1, A000203(A000265(#))]` -/
def P7934914927589001121.Spec : Prop :=
  ∀ n, P7934914927589001121.a n = A288417 (n + 1)

end A288417

/-! ## A288417.P2325683920809098133

`A263827(n+1)-A007429(n+1)`
-/

namespace A288417.P2325683920809098133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263827 (n + 1) - A007429 (n + 1)

end

end A288417.P2325683920809098133

namespace A288417

/-- `A263827(n+1)-A007429(n+1)` -/
def P2325683920809098133.Spec : Prop :=
  ∀ n, P2325683920809098133.a n = A288417 (n + 1)

end A288417

/-! ## A288417.P3233209594342339631

`2*A327096(n+1)-A007429(n+1)`
-/

namespace A288417.P3233209594342339631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A327096 (n + 1) - A007429 (n + 1)

end

end A288417.P3233209594342339631

namespace A288417

/-- `2*A327096(n+1)-A007429(n+1)` -/
def P3233209594342339631.Spec : Prop :=
  ∀ n, P3233209594342339631.a n = A288417 (n + 1)

end A288417

/-! ## A288417.P13488929730006535052

`∑{d}[n+1, A000265(#)*A001227((n+1)/#)]`
-/

namespace A288417.P13488929730006535052
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000265 d * A001227 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A288417.P13488929730006535052

namespace A288417

/-- `∑{d}[n+1, A000265(#)*A001227((n+1)/#)]` -/
def P13488929730006535052.Spec : Prop :=
  ∀ n, P13488929730006535052.a n = A288417 (n + 1)

end A288417

/-! ## A288417.P5584674579573388369

`∑{d}[n+1, A002131(#)*A088705((n+1)/#)]`
-/

namespace A288417.P5584674579573388369
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A002131 d * A088705 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A288417.P5584674579573388369

namespace A288417

/-- `∑{d}[n+1, A002131(#)*A088705((n+1)/#)]` -/
def P5584674579573388369.Spec : Prop :=
  ∀ n, P5584674579573388369.a n = A288417 (n + 1)

end A288417

/-! ## A288417.P9199492717636662497

`∑{d}[n+1, A023900(#)*A109386((n+1)/#)]`
-/

namespace A288417.P9199492717636662497
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A023900 d * A109386 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A288417.P9199492717636662497

namespace A288417

/-- `∑{d}[n+1, A023900(#)*A109386((n+1)/#)]` -/
def P9199492717636662497.Spec : Prop :=
  ∀ n, P9199492717636662497.a n = A288417 (n + 1)

end A288417

/-! ## A288417.P8635758332934179203

`∑{d}[n+1, A038712(#)*A115607((n+1)/#)]`
-/

namespace A288417.P8635758332934179203
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A038712 d * A115607 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A288417.P8635758332934179203

namespace A288417

/-- `∑{d}[n+1, A038712(#)*A115607((n+1)/#)]` -/
def P8635758332934179203.Spec : Prop :=
  ∀ n, P8635758332934179203.a n = A288417 (n + 1)

end A288417

/-! ## A288417.P13035100281724692131

`∑{d}[n+1, A051064(#)*A121443((n+1)/#)]`
-/

namespace A288417.P13035100281724692131
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A051064 d * A121443 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A288417.P13035100281724692131

namespace A288417

/-- `∑{d}[n+1, A051064(#)*A121443((n+1)/#)]` -/
def P13035100281724692131.Spec : Prop :=
  ∀ n, P13035100281724692131.a n = A288417 (n + 1)

end A288417

/-! ## A288417.P8110028363536737417

`∑{d}[n+1, A060640(#)*A117212((n+1)/#)]`
-/

namespace A288417.P8110028363536737417
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A060640 d * A117212 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A288417.P8110028363536737417

namespace A288417

/-- `∑{d}[n+1, A060640(#)*A117212((n+1)/#)]` -/
def P8110028363536737417.Spec : Prop :=
  ∀ n, P8110028363536737417.a n = A288417 (n + 1)

end A288417

/-! ## A288417.P17610159811230198325

`∑{d}[n+1, A000005(#)*A193356((n+1)/#)]`
-/

namespace A288417.P17610159811230198325
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000005 d * A193356 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A288417.P17610159811230198325

namespace A288417

/-- `∑{d}[n+1, A000005(#)*A193356((n+1)/#)]` -/
def P17610159811230198325.Spec : Prop :=
  ∀ n, P17610159811230198325.a n = A288417 (n + 1)

end A288417

/-! ## A288417.P12146277276476379361

`∑{d}[n+1, A080278(#)*A186099((n+1)/#)]`
-/

namespace A288417.P12146277276476379361
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A080278 d * A186099 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A288417.P12146277276476379361

namespace A288417

/-- `∑{d}[n+1, A080278(#)*A186099((n+1)/#)]` -/
def P12146277276476379361.Spec : Prop :=
  ∀ n, P12146277276476379361.a n = A288417 (n + 1)

end A288417

/-! ## A288417.P8116287403039589312

`∑{d}[n+1, A002129(#)*A276391((n+1)/#)]`
-/

namespace A288417.P8116287403039589312
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A002129 d * A276391 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A288417.P8116287403039589312

namespace A288417

/-- `∑{d}[n+1, A002129(#)*A276391((n+1)/#)]` -/
def P8116287403039589312.Spec : Prop :=
  ∀ n, P8116287403039589312.a n = A288417 (n + 1)

end A288417

/-! ## A288417.P3467738970996326094

`∑{d}[n+1, A000010(#)*A288571((n+1)/#)]`
-/

namespace A288417.P3467738970996326094
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d * A288571 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A288417.P3467738970996326094

namespace A288417

/-- `∑{d}[n+1, A000010(#)*A288571((n+1)/#)]` -/
def P3467738970996326094.Spec : Prop :=
  ∀ n, P3467738970996326094.a n = A288417 (n + 1)

end A288417

/-! ## A288417.P4555686858629577993

`∑{d}[n+1, A001615(#)*A317529((n+1)/#)]`
-/

namespace A288417.P4555686858629577993
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001615 d * A317529 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A288417.P4555686858629577993

namespace A288417

/-- `∑{d}[n+1, A001615(#)*A317529((n+1)/#)]` -/
def P4555686858629577993.Spec : Prop :=
  ∀ n, P4555686858629577993.a n = A288417 (n + 1)

end A288417

/-! ## A288417.P12896370053593465699

`∑{d}[n+1, A091512(#)*A228441((n+1)/#)]`
-/

namespace A288417.P12896370053593465699
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A091512 d * A228441 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A288417.P12896370053593465699

namespace A288417

/-- `∑{d}[n+1, A091512(#)*A228441((n+1)/#)]` -/
def P12896370053593465699.Spec : Prop :=
  ∀ n, P12896370053593465699.a n = A288417 (n + 1)

end A288417

/-! ## A288417.P17533026237026224775

`∑{d}[n+1, A007425(#)*A319997((n+1)/#)]`
-/

namespace A288417.P17533026237026224775
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007425 d * A319997 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A288417.P17533026237026224775

namespace A288417

/-- `∑{d}[n+1, A007425(#)*A319997((n+1)/#)]` -/
def P17533026237026224775.Spec : Prop :=
  ∀ n, P17533026237026224775.a n = A288417 (n + 1)

end A288417

/-! ## A288417.P771058171402560545

`∑{d}[n+1, A008683(#)*A318845((n+1)/#)]`
-/

namespace A288417.P771058171402560545
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A318845 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A288417.P771058171402560545

namespace A288417

/-- `∑{d}[n+1, A008683(#)*A318845((n+1)/#)]` -/
def P771058171402560545.Spec : Prop :=
  ∀ n, P771058171402560545.a n = A288417 (n + 1)

end A288417

/-! ## A288417.P16201667443553615313

`∑{d}[n+1, A046970(#)*A288418((n+1)/#)]`
-/

namespace A288417.P16201667443553615313
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A046970 d * A288418 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A288417.P16201667443553615313

namespace A288417

/-- `∑{d}[n+1, A046970(#)*A288418((n+1)/#)]` -/
def P16201667443553615313.Spec : Prop :=
  ∀ n, P16201667443553615313.a n = A288417 (n + 1)

end A288417

/-!
# A288418: a(n) = Sum_{d|n} d^2*A000593(n/d).

The programs for A288418, the canonical program `A288418.P14808170796872248510` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A288418 has offset 1).

The definition of A288418 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A288418.P14808170796872248510

`∑{d}[n+1, A228274(#)]`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A288418

/-- `∑{d}[n+1, A228274(#)]` -/
def P14808170796872248510.Spec : Prop :=
  ∀ n, P14808170796872248510.a n = A288418 (n + 1)

theorem P14808170796872248510.correct : P14808170796872248510.Spec := by
  intro n
  simp only [A288418, Nat.add_sub_cancel]

end A288418

/-! ## A288418.P7835535172359358926

`∑{d}[n+1, #*A002131(#)]`
-/

namespace A288418.P7835535172359358926
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A002131 d

end

end A288418.P7835535172359358926

namespace A288418

/-- `∑{d}[n+1, #*A002131(#)]` -/
def P7835535172359358926.Spec : Prop :=
  ∀ n, P7835535172359358926.a n = A288418 (n + 1)

end A288418

/-! ## A288418.P13168611702558226874

`∑{d}[n+1, #*A078306((n+1)/#)]`
-/

namespace A288418.P13168611702558226874
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A078306 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A288418.P13168611702558226874

namespace A288418

/-- `∑{d}[n+1, #*A078306((n+1)/#)]` -/
def P13168611702558226874.Spec : Prop :=
  ∀ n, P13168611702558226874.a n = A288418 (n + 1)

end A288418

/-! ## A288418.P17253401905043482003

`∑{d}[n+1, A000290(#)*A000593((n+1)/#)]`
-/

namespace A288418.P17253401905043482003
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000290 d * A000593 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A288418.P17253401905043482003

namespace A288418

/-- `∑{d}[n+1, A000290(#)*A000593((n+1)/#)]` -/
def P17253401905043482003.Spec : Prop :=
  ∀ n, P17253401905043482003.a n = A288418 (n + 1)

end A288418

/-! ## A288418.P16389413928790574302

`∑{d}[n+1, A000265(#)*A076577((n+1)/#)]`
-/

namespace A288418.P16389413928790574302
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000265 d * A076577 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A288418.P16389413928790574302

namespace A288418

/-- `∑{d}[n+1, A000265(#)*A076577((n+1)/#)]` -/
def P16389413928790574302.Spec : Prop :=
  ∀ n, P16389413928790574302.a n = A288418 (n + 1)

end A288418

/-! ## A288418.P9449754357721740840

`∑{d}[n+1, A002618(#)*A109386((n+1)/#)]`
-/

namespace A288418.P9449754357721740840
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A002618 d * A109386 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A288418.P9449754357721740840

namespace A288418

/-- `∑{d}[n+1, A002618(#)*A109386((n+1)/#)]` -/
def P9449754357721740840.Spec : Prop :=
  ∀ n, P9449754357721740840.a n = A288418 (n + 1)

end A288418

/-! ## A288418.P4409178584228737756

`∑{d}[n+1, A038040(#)*A078747((n+1)/#)]`
-/

namespace A288418.P4409178584228737756
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A038040 d * A078747 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A288418.P4409178584228737756

namespace A288418

/-- `∑{d}[n+1, A038040(#)*A078747((n+1)/#)]` -/
def P4409178584228737756.Spec : Prop :=
  ∀ n, P4409178584228737756.a n = A288418 (n + 1)

end A288418

/-! ## A288418.P14494537450861995570

`∑{d}[n+1, A048272(#)*A069097((n+1)/#)]`
-/

namespace A288418.P14494537450861995570
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A048272 d * A069097 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A288418.P14494537450861995570

namespace A288418

/-- `∑{d}[n+1, A048272(#)*A069097((n+1)/#)]` -/
def P14494537450861995570.Spec : Prop :=
  ∀ n, P14494537450861995570.a n = A288418 (n + 1)

end A288418

/-! ## A288418.P8563084911977069390

`∑{d}[n+1, A001157(#)*A193356((n+1)/#)]`
-/

namespace A288418.P8563084911977069390
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001157 d * A193356 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A288418.P8563084911977069390

namespace A288418

/-- `∑{d}[n+1, A001157(#)*A193356((n+1)/#)]` -/
def P8563084911977069390.Spec : Prop :=
  ∀ n, P8563084911977069390.a n = A288418 (n + 1)

end A288418

/-! ## A288418.P10814326643278431686

`∑{d}[n+1, A091519(#)*A115607((n+1)/#)]`
-/

namespace A288418.P10814326643278431686
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A091519 d * A115607 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A288418.P10814326643278431686

namespace A288418

/-- `∑{d}[n+1, A091519(#)*A115607((n+1)/#)]` -/
def P10814326643278431686.Spec : Prop :=
  ∀ n, P10814326643278431686.a n = A288418 (n + 1)

end A288418

/-! ## A288418.P8465319490958541646

`∑{d}[n+1, A007434(#)*A288417((n+1)/#)]`
-/

namespace A288418.P8465319490958541646
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007434 d * A288417 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A288418.P8465319490958541646

namespace A288418

/-- `∑{d}[n+1, A007434(#)*A288417((n+1)/#)]` -/
def P8465319490958541646.Spec : Prop :=
  ∀ n, P8465319490958541646.a n = A288418 (n + 1)

end A288418

/-! ## A288418.P17298986587668602285

`∑{d}[n+1, A000082(#)*A300853((n+1)/#)]`
-/

namespace A288418.P17298986587668602285
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000082 d * A300853 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A288418.P17298986587668602285

namespace A288418

/-- `∑{d}[n+1, A000082(#)*A300853((n+1)/#)]` -/
def P17298986587668602285.Spec : Prop :=
  ∀ n, P17298986587668602285.a n = A288418 (n + 1)

end A288418

/-! ## A288418.P14666190634975782071

`∑{d}[n+1, A057660(#)*A245579((n+1)/#)]`
-/

namespace A288418.P14666190634975782071
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A057660 d * A245579 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A288418.P14666190634975782071

namespace A288418

/-- `∑{d}[n+1, A057660(#)*A245579((n+1)/#)]` -/
def P14666190634975782071.Spec : Prop :=
  ∀ n, P14666190634975782071.a n = A288418 (n + 1)

end A288418

/-! ## A288418.P6695042450934640450

`∑{d}[n+1, A007433(#)*A319997((n+1)/#)]`
-/

namespace A288418.P6695042450934640450
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007433 d * A319997 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A288418.P6695042450934640450

namespace A288418

/-- `∑{d}[n+1, A007433(#)*A319997((n+1)/#)]` -/
def P6695042450934640450.Spec : Prop :=
  ∀ n, P6695042450934640450.a n = A288418 (n + 1)

end A288418

/-! ## A288418.P11655612352443450830

`∑{d}[n+1, A065958(#)*A328373((n+1)/#)]`
-/

namespace A288418.P11655612352443450830
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A065958 d * A328373 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A288418.P11655612352443450830

namespace A288418

/-- `∑{d}[n+1, A065958(#)*A328373((n+1)/#)]` -/
def P11655612352443450830.Spec : Prop :=
  ∀ n, P11655612352443450830.a n = A288418 (n + 1)

end A288418

/-! ## A288418.P4326978041471374834

`∑{d}[n+1, A264740(#)*A308422((n+1)/#)]`
-/

namespace A288418.P4326978041471374834
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A264740 d * A308422 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A288418.P4326978041471374834

namespace A288418

/-- `∑{d}[n+1, A264740(#)*A308422((n+1)/#)]` -/
def P4326978041471374834.Spec : Prop :=
  ∀ n, P4326978041471374834.a n = A288418 (n + 1)

end A288418

/-! ## A288418.P819275861016630071

`∑{d}[n+1, A276391(#)*A326125((n+1)/#)]`
-/

namespace A288418.P819275861016630071
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A276391 d * A326125 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A288418.P819275861016630071

namespace A288418

/-- `∑{d}[n+1, A276391(#)*A326125((n+1)/#)]` -/
def P819275861016630071.Spec : Prop :=
  ∀ n, P819275861016630071.a n = A288418 (n + 1)

end A288418

/-! ## A288418.P9478701756168706660

`∑{d}[n+1, A288571(#)*A341772((n+1)/#)]`
-/

namespace A288418.P9478701756168706660
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A288571 d * A341772 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A288418.P9478701756168706660

namespace A288418

/-- `∑{d}[n+1, A288571(#)*A341772((n+1)/#)]` -/
def P9478701756168706660.Spec : Prop :=
  ∀ n, P9478701756168706660.a n = A288418 (n + 1)

end A288418

/-! ## A288418.P4918724210358802154

`∑{d}[n+1, A318845(#)*A321322((n+1)/#)]`
-/

namespace A288418.P4918724210358802154
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A318845 d * A321322 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A288418.P4918724210358802154

namespace A288418

/-- `∑{d}[n+1, A318845(#)*A321322((n+1)/#)]` -/
def P4918724210358802154.Spec : Prop :=
  ∀ n, P4918724210358802154.a n = A288418 (n + 1)

end A288418

/-! ## A288418.P4666643537596521372

`∑{d}[n+1, A300894(#)*A351600((n+1)/#)]`
-/

namespace A288418.P4666643537596521372
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A300894 d * A351600 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A288418.P4666643537596521372

namespace A288418

/-- `∑{d}[n+1, A300894(#)*A351600((n+1)/#)]` -/
def P4666643537596521372.Spec : Prop :=
  ∀ n, P4666643537596521372.a n = A288418 (n + 1)

end A288418

/-!
# A288419: a(n) = Sum_{d|n} d^3*A000593(n/d).

The programs for A288419, the canonical program `A288419.P3062089732794896662` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A288419 has offset 1).

The definition of A288419 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A288419.P3062089732794896662

`∑{d}[n+1, #*A076577(#)]`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A288419

/-- `∑{d}[n+1, #*A076577(#)]` -/
def P3062089732794896662.Spec : Prop :=
  ∀ n, P3062089732794896662.a n = A288419 (n + 1)

theorem P3062089732794896662.correct : P3062089732794896662.Spec := by
  intro n
  simp only [A288419, Nat.add_sub_cancel]

end A288419

/-! ## A288419.P4553516308183875900

`∑{d}[n+1, #*A078307((n+1)/#)]`
-/

namespace A288419.P4553516308183875900
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A078307 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A288419.P4553516308183875900

namespace A288419

/-- `∑{d}[n+1, #*A078307((n+1)/#)]` -/
def P4553516308183875900.Spec : Prop :=
  ∀ n, P4553516308183875900.a n = A288419 (n + 1)

end A288419

/-! ## A288419.P1844128329515862540

`∑{d}[n+1, A000578(#)*A000593((n+1)/#)]`
-/

namespace A288419.P1844128329515862540
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000578 d * A000593 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A288419.P1844128329515862540

namespace A288419

/-- `∑{d}[n+1, A000578(#)*A000593((n+1)/#)]` -/
def P1844128329515862540.Spec : Prop :=
  ∀ n, P1844128329515862540.a n = A288419 (n + 1)

end A288419

/-! ## A288419.P11658041377890492988

`∑{d}[n+1, A000265(#)*A007331((n+1)/#)]`
-/

namespace A288419.P11658041377890492988
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000265 d * A007331 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A288419.P11658041377890492988

namespace A288419

/-- `∑{d}[n+1, A000265(#)*A007331((n+1)/#)]` -/
def P11658041377890492988.Spec : Prop :=
  ∀ n, P11658041377890492988.a n = A288419 (n + 1)

end A288419

/-! ## A288419.P1166691321992794250

`∑{d}[n+1, A000056(#)*A109386((n+1)/#)]`
-/

namespace A288419.P1166691321992794250
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000056 d * A109386 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A288419.P1166691321992794250

namespace A288419

/-- `∑{d}[n+1, A000056(#)*A109386((n+1)/#)]` -/
def P1166691321992794250.Spec : Prop :=
  ∀ n, P1166691321992794250.a n = A288419 (n + 1)

end A288419

/-! ## A288419.P16600591299746920677

`∑{d}[n+1, A001158(#)*A193356((n+1)/#)]`
-/

namespace A288419.P16600591299746920677
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001158 d * A193356 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A288419.P16600591299746920677

namespace A288419

/-- `∑{d}[n+1, A001158(#)*A193356((n+1)/#)]` -/
def P16600591299746920677.Spec : Prop :=
  ∀ n, P16600591299746920677.a n = A288419 (n + 1)

end A288419

/-! ## A288419.P7961945674533865630

`∑{d}[n+1, A068963(#)*A228274((n+1)/#)]`
-/

namespace A288419.P7961945674533865630
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A068963 d * A228274 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A288419.P7961945674533865630

namespace A288419

/-- `∑{d}[n+1, A068963(#)*A228274((n+1)/#)]` -/
def P7961945674533865630.Spec : Prop :=
  ∀ n, P7961945674533865630.a n = A288419 (n + 1)

end A288419

/-! ## A288419.P10097648597725609593

`∑{d}[n+1, A000203(#)*A309337((n+1)/#)]`
-/

namespace A288419.P10097648597725609593
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000203 d * A309337 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A288419.P10097648597725609593

namespace A288419

/-- `∑{d}[n+1, A000203(#)*A309337((n+1)/#)]` -/
def P10097648597725609593.Spec : Prop :=
  ∀ n, P10097648597725609593.a n = A288419 (n + 1)

end A288419

/-! ## A288419.P2926334036995034178

`∑{d}[n+1, A053191(#)*A288418((n+1)/#)]`
-/

namespace A288419.P2926334036995034178
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A053191 d * A288418 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A288419.P2926334036995034178

namespace A288419

/-- `∑{d}[n+1, A053191(#)*A288418((n+1)/#)]` -/
def P2926334036995034178.Spec : Prop :=
  ∀ n, P2926334036995034178.a n = A288419 (n + 1)

end A288419

/-! ## A288419.P4025687352091795035

`∑{d}[n+1, A059376(#)*A288417((n+1)/#)]`
-/

namespace A288419.P4025687352091795035
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A059376 d * A288417 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A288419.P4025687352091795035

namespace A288419

/-- `∑{d}[n+1, A059376(#)*A288417((n+1)/#)]` -/
def P4025687352091795035.Spec : Prop :=
  ∀ n, P4025687352091795035.a n = A288419 (n + 1)

end A288419

/-! ## A288419.P10322798759642813313

`∑{d}[n+1, A048272(#)*A343497((n+1)/#)]`
-/

namespace A288419.P10322798759642813313
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A048272 d * A343497 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A288419.P10322798759642813313

namespace A288419

/-- `∑{d}[n+1, A048272(#)*A343497((n+1)/#)]` -/
def P10322798759642813313.Spec : Prop :=
  ∀ n, P10322798759642813313.a n = A288419 (n + 1)

end A288419

/-! ## A288419.P11943673646000561263

`∑{d}[n+1, A065959(#)*A328373((n+1)/#)]`
-/

namespace A288419.P11943673646000561263
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A065959 d * A328373 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A288419.P11943673646000561263

namespace A288419

/-- `∑{d}[n+1, A065959(#)*A328373((n+1)/#)]` -/
def P11943673646000561263.Spec : Prop :=
  ∀ n, P11943673646000561263.a n = A288419 (n + 1)

end A288419

/-! ## A288419.P3498122087015928849

`∑{d}[n+1, A264740(#)*A309335((n+1)/#)]`
-/

namespace A288419.P3498122087015928849
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A264740 d * A309335 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A288419.P3498122087015928849

namespace A288419

/-- `∑{d}[n+1, A264740(#)*A309335((n+1)/#)]` -/
def P3498122087015928849.Spec : Prop :=
  ∀ n, P3498122087015928849.a n = A288419 (n + 1)

end A288419

/-! ## A288419.P17634709723308738802

`∑{d}[n+1, A245579(#)*A350156((n+1)/#)]`
-/

namespace A288419.P17634709723308738802
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A245579 d * A350156 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A288419.P17634709723308738802

namespace A288419

/-- `∑{d}[n+1, A245579(#)*A350156((n+1)/#)]` -/
def P17634709723308738802.Spec : Prop :=
  ∀ n, P17634709723308738802.a n = A288419 (n + 1)

end A288419

/-! ## A288419.P8495555973420928287

`∑{d}[n+1, A319997(#)*A321140((n+1)/#)]`
-/

namespace A288419.P8495555973420928287
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A319997 d * A321140 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A288419.P8495555973420928287

namespace A288419

/-- `∑{d}[n+1, A319997(#)*A321140((n+1)/#)]` -/
def P8495555973420928287.Spec : Prop :=
  ∀ n, P8495555973420928287.a n = A288419 (n + 1)

end A288419

/-! ## A288419.P6816386229762809638

`∑{d}[n+1, A033999(#-1)*A328259((n+1)/#)]`
-/

namespace A288419.P6816386229762809638
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A033999 (d - 1) * A328259 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A288419.P6816386229762809638

namespace A288419

/-- `∑{d}[n+1, A033999(#-1)*A328259((n+1)/#)]` -/
def P6816386229762809638.Spec : Prop :=
  ∀ n, P6816386229762809638.a n = A288419 (n + 1)

end A288419

/-!
# A288420: a(n) = Sum_{d|n} d^4*A000593(n/d).

The programs for A288420, the canonical program `A288420.P17718365369934289039` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A288420 has offset 1).

The definition of A288420 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A288420.P17718365369934289039

`∑{d}[n+1, #*A007331(#)]`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A288420

/-- `∑{d}[n+1, #*A007331(#)]` -/
def P17718365369934289039.Spec : Prop :=
  ∀ n, P17718365369934289039.a n = A288420 (n + 1)

theorem P17718365369934289039.correct : P17718365369934289039.Spec := by
  intro n
  simp only [A288420, Nat.add_sub_cancel]

end A288420

/-! ## A288420.P12654294581163361031

`∑{d}[n+1, #*A284900((n+1)/#)]`
-/

namespace A288420.P12654294581163361031
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A284900 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A288420.P12654294581163361031

namespace A288420

/-- `∑{d}[n+1, #*A284900((n+1)/#)]` -/
def P12654294581163361031.Spec : Prop :=
  ∀ n, P12654294581163361031.a n = A288420 (n + 1)

end A288420

/-! ## A288420.P2117759762223943276

`∑{d}[n+1, A001159(#)*A193356((n+1)/#)]`
-/

namespace A288420.P2117759762223943276
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001159 d * A193356 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A288420.P2117759762223943276

namespace A288420

/-- `∑{d}[n+1, A001159(#)*A193356((n+1)/#)]` -/
def P2117759762223943276.Spec : Prop :=
  ∀ n, P2117759762223943276.a n = A288420 (n + 1)

end A288420

/-! ## A288420.P14268340519991920847

`∑{d}[n+1, A000265(#)*A285989((n+1)/#)]`
-/

namespace A288420.P14268340519991920847
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000265 d * A285989 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A288420.P14268340519991920847

namespace A288420

/-- `∑{d}[n+1, A000265(#)*A285989((n+1)/#)]` -/
def P14268340519991920847.Spec : Prop :=
  ∀ n, P14268340519991920847.a n = A288420 (n + 1)

end A288420

/-! ## A288420.P2882530939781031141

`∑{d}[n+1, A000203(#)*A309338((n+1)/#)]`
-/

namespace A288420.P2882530939781031141
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000203 d * A309338 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A288420.P2882530939781031141

namespace A288420

/-- `∑{d}[n+1, A000203(#)*A309338((n+1)/#)]` -/
def P2882530939781031141.Spec : Prop :=
  ∀ n, P2882530939781031141.a n = A288420 (n + 1)

end A288420

/-! ## A288420.P8141289218689480430

`∑{d}[n+1, A084218(#)*A228274((n+1)/#)]`
-/

namespace A288420.P8141289218689480430
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A084218 d * A228274 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A288420.P8141289218689480430

namespace A288420

/-- `∑{d}[n+1, A084218(#)*A228274((n+1)/#)]` -/
def P8141289218689480430.Spec : Prop :=
  ∀ n, P8141289218689480430.a n = A288420 (n + 1)

end A288420

/-! ## A288420.P5685555604653931531

`∑{d}[n+1, A059377(#)*A288417((n+1)/#)]`
-/

namespace A288420.P5685555604653931531
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A059377 d * A288417 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A288420.P5685555604653931531

namespace A288420

/-- `∑{d}[n+1, A059377(#)*A288417((n+1)/#)]` -/
def P5685555604653931531.Spec : Prop :=
  ∀ n, P5685555604653931531.a n = A288420 (n + 1)

end A288420

/-! ## A288420.P11083229526431784559

`∑{d}[n+1, A048272(#)*A343498((n+1)/#)]`
-/

namespace A288420.P11083229526431784559
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A048272 d * A343498 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A288420.P11083229526431784559

namespace A288420

/-- `∑{d}[n+1, A048272(#)*A343498((n+1)/#)]` -/
def P11083229526431784559.Spec : Prop :=
  ∀ n, P11083229526431784559.a n = A288420 (n + 1)

end A288420

/-! ## A288420.P3953060689812471498

`∑{d}[n+1, A065960(#)*A328373((n+1)/#)]`
-/

namespace A288420.P3953060689812471498
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A065960 d * A328373 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A288420.P3953060689812471498

namespace A288420

/-- `∑{d}[n+1, A065960(#)*A328373((n+1)/#)]` -/
def P3953060689812471498.Spec : Prop :=
  ∀ n, P3953060689812471498.a n = A288420 (n + 1)

end A288420

/-! ## A288420.P1744789984642249875

`∑{d}[n+1, A189393(#)*A288419((n+1)/#)]`
-/

namespace A288420.P1744789984642249875
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A189393 d * A288419 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A288420.P1744789984642249875

namespace A288420

/-- `∑{d}[n+1, A189393(#)*A288419((n+1)/#)]` -/
def P1744789984642249875.Spec : Prop :=
  ∀ n, P1744789984642249875.a n = A288420 (n + 1)

end A288420

/-! ## A288420.P5949616444780319018

`∑{d}[n+1, A264740(#)*A309336((n+1)/#)]`
-/

namespace A288420.P5949616444780319018
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A264740 d * A309336 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A288420.P5949616444780319018

namespace A288420

/-- `∑{d}[n+1, A264740(#)*A309336((n+1)/#)]` -/
def P5949616444780319018.Spec : Prop :=
  ∀ n, P5949616444780319018.a n = A288420 (n + 1)

end A288420

/-! ## A288420.P8900699461386019299

`∑{d}[n+1, A245579(#)*A372952((n+1)/#)]`
-/

namespace A288420.P8900699461386019299
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A245579 d * A372952 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A288420.P8900699461386019299

namespace A288420

/-- `∑{d}[n+1, A245579(#)*A372952((n+1)/#)]` -/
def P8900699461386019299.Spec : Prop :=
  ∀ n, P8900699461386019299.a n = A288420 (n + 1)

end A288420

/-! ## A288420.P8554816789291071351

`∑{d}[n+1, A288418(#)*A379833((n+1)/#)]`
-/

namespace A288420.P8554816789291071351
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A288418 d * A379833 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A288420.P8554816789291071351

namespace A288420

/-- `∑{d}[n+1, A288418(#)*A379833((n+1)/#)]` -/
def P8554816789291071351.Spec : Prop :=
  ∀ n, P8554816789291071351.a n = A288420 (n + 1)

end A288420

/-! ## A288420.P1735308633793431671

`∑{d}[n+1, A000583(#)*A000593((n+1)/#)]`
-/

namespace A288420.P1735308633793431671
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000583 d * A000593 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A288420.P1735308633793431671

namespace A288420

/-- `∑{d}[n+1, A000583(#)*A000593((n+1)/#)]` -/
def P1735308633793431671.Spec : Prop :=
  ∀ n, P1735308633793431671.a n = A288420 (n + 1)

end A288420

/-!
# A288424: Partial sums of A288384.

The programs for A288424, there is no canonical definition to state claims against.
-/

/-! ## A288424.P16313084446143927669

`∑[A288384(n)]`
-/

namespace A288424.P16313084446143927669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288384 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A288424.P16313084446143927669

/-! ## A288424.P3133000483469985998

`∑[A286294(n)-n]`
-/

namespace A288424.P3133000483469985998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286294 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A288424.P3133000483469985998

/-! ## A288424.P11237395677834191153

`∑[A274650(∑[n])-n]`
-/

namespace A288424.P11237395677834191153
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274650 (∑ j ∈ Finset.range (n + 1), f2 j) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A288424.P11237395677834191153

/-! ## A288424.P15511640878942603009

`∑[A308181(∑[ceil(n/2)])-n]`
-/

namespace A288424.P15511640878942603009
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) / 2⌉

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308181 (∑ j ∈ Finset.range (n + 1), f2 j).toNat - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A288424.P15511640878942603009

/-! ## A288424.P7692609913467592108

`∑[A274651(∑[n]+1)-(n+1)]`
-/

namespace A288424.P7692609913467592108
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274651 (∑ j ∈ Finset.range (n + 1), f2 j + 1) - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A288424.P7692609913467592108

/-! ## A288424.P404199050701575799

`A275730(∑[A286294(n)])`
-/

namespace A288424.P404199050701575799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286294 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275730 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A288424.P404199050701575799

/-! ## A288424.P13211132842437967248

`A051777(∑[A286294(n)]+1)`
-/

namespace A288424.P13211132842437967248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286294 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051777 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A288424.P13211132842437967248

/-! ## A288424.P11491209231016213927

`∑[A286294(n)]%A109613(n)`
-/

namespace A288424.P11491209231016213927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286294 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A109613 n)

end

end A288424.P11491209231016213927

/-! ## A288424.P14400064453657756850

`(∑[A286294(n)]+1)%A000124(n)`
-/

namespace A288424.P14400064453657756850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286294 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j + 1) (A000124 n)

end

end A288424.P14400064453657756850

/-! ## A288424.P2819052122995560320

`A061770(A288384(n)+a(n-1))` with `a(0)=0`
-/

namespace A288424.P2819052122995560320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A061770 (A288384 n + a (n - 1)).toNat

end

end A288424.P2819052122995560320

/-! ## A288424.P10121478273833503364

`A027633(A238392(∑[A286294(n)]))`
-/

namespace A288424.P10121478273833503364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286294 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027633 (A238392 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A288424.P10121478273833503364

/-!
# A288425: Minimal number of vertices that must be selected from an n X n square grid so that any square of 4 vertices, regardless of orientation, will include at least one selected vertex.

The programs for A288425, there is no canonical definition to state claims against.
-/

/-! ## A288425.P17409647025092674087

`(n+1)²-A240443(n+1)`
-/

namespace A288425.P17409647025092674087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - A240443 (n + 1)

end

end A288425.P17409647025092674087

/-! ## A288425.P13463499820085189315

`∑[floor(n^log(3))]`
-/

namespace A288425.P13463499820085189315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) ^ (Real.log (3 : ℝ))⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A288425.P13463499820085189315

/-! ## A288425.P3691532254467185457

`∑[val(n!, 9)]+∑[n]`
-/

namespace A288425.P3691532254467185457
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (Nat.factorial n) 9

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ∑ j ∈ Finset.range (n + 1), f2 j

end

end A288425.P3691532254467185457

/-! ## A288425.P14287201012862978938

`round(acot(1)²/acot(n²))`
-/

namespace A288425.P14287201012862978938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (SequenceMachineLib.acot (1 : ℝ) ^ 2 / SequenceMachineLib.acot (n ^ 2 : ℝ))

end

end A288425.P14287201012862978938

/-!
# A288426: Fixed point of the mapping 00->0101, 10->100, starting with 00.

The programs for A288426, there is no canonical definition to state claims against.
-/

/-! ## A288426.P18009152418583330855

`char[A288428(n+1)-1]`
-/

namespace A288426.P18009152418583330855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288428 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A288426.P18009152418583330855

/-! ## A288426.P4749476298900851188

`char[comp[A288427(n+1)-1]]`
-/

namespace A288426.P4749476298900851188
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288427 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A288426.P4749476298900851188

/-! ## A288426.P9210697638575472898

`char[A302050(A073703(n+1))+A288428(n+1)]`
-/

namespace A288426.P9210697638575472898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302050 (A073703 (n + 1)).toNat + A288428 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A288426.P9210697638575472898

/-! ## A288426.P2947878924930414766

`char[A023443(A288428(n+1))]`
-/

namespace A288426.P2947878924930414766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A288428 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A288426.P2947878924930414766

/-! ## A288426.P12288485250008305735

`char[A023443(comp[A288427(n+1)])]`
-/

namespace A288426.P12288485250008305735
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288427 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A288426.P12288485250008305735

/-!
# A288427: Positions of 0 in A288426; complement of A288428.

The programs for A288427, there is no canonical definition to state claims against.
-/

/-! ## A288427.P6397319404379539970

`comp[A288428(n+1)-1]+1`
-/

namespace A288427.P6397319404379539970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288428 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A288427.P6397319404379539970

/-! ## A288427.P386474280544355851

`eq[1, A288426(n+1)+1]+1`
-/

namespace A288427.P386474280544355851
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288426 (n + 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A288427.P386474280544355851

/-! ## A288427.P16893395801710992607

`record[n+1-A288426(n+1)*A288428(n+1)]`
-/

namespace A288427.P16893395801710992607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A288426 (n + 1) * A288428 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A288427.P16893395801710992607

/-! ## A288427.P1826656192416301736

`record[n+1-A288426(n+1)*A288695(n+1)]`
-/

namespace A288427.P1826656192416301736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A288426 (n + 1) * A288695 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A288427.P1826656192416301736

/-! ## A288427.P4033062198205895380

`record[n+1-A288426(n+1)*A288696(n+1)]`
-/

namespace A288427.P4033062198205895380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A288426 (n + 1) * A288696 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A288427.P4033062198205895380

/-! ## A288427.P6842335990765977993

`record[(n+1)/A288695(n*A288426(n+1)+1)]`
-/

namespace A288427.P6842335990765977993
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A288695 ((n : ℤ) * A288426 (n + 1) + 1).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A288427.P6842335990765977993

/-! ## A288427.P16212080636203483676

`eq[A000007(n), A288426(A000007(n)+n)]`
-/

namespace A288427.P16212080636203483676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288426 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A288427.P16212080636203483676

/-!
# A288428: Positions of 1 in A288426; complement of A288427.

The programs for A288428, there is no canonical definition to state claims against.
-/

/-! ## A288428.P9701131677607250327

`filter[n+1, A288426(#)]`
-/

namespace A288428.P9701131677607250327
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A288426 (f1 j) = 1) n)

end

end A288428.P9701131677607250327

/-! ## A288428.P11936704969813142046

`eq[1, A288426(n+1)]+1`
-/

namespace A288428.P11936704969813142046
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288426 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A288428.P11936704969813142046

/-! ## A288428.P16048747601362407008

`record[(n+2)*A288426(n+2)]`
-/

namespace A288428.P16048747601362407008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A288426 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A288428.P16048747601362407008

/-! ## A288428.P2997378486263545585

`eq[1, A288426(A000007(n)+n)]`
-/

namespace A288428.P2997378486263545585
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288426 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A288428.P2997378486263545585

/-! ## A288428.P14593675402676893624

`eq[1, A288426(A065033(2*n))]`
-/

namespace A288428.P14593675402676893624
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288426 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A288428.P14593675402676893624

/-! ## A288428.P12240580147195771146

`eq[1, A288426(A123108(2*n))]`
-/

namespace A288428.P12240580147195771146
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288426 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A288428.P12240580147195771146

/-! ## A288428.P3907246532687284228

`eq[1, A288426(A007318(A000124(n)))]`
-/

namespace A288428.P3907246532687284228
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288426 (A007318 (A000124 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A288428.P3907246532687284228

/-!
# A288429: a(n) = 2*a(n-1) - a(n-2) + a(n-3) - a(n-4), where a(0) = 2, a(1) = 4, a(2) = 5, a(3) = 6.

The programs for A288429, the canonical program `A288429.P6559755836762427597` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A288429 has offset 0).

The definition of A288429 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*a(n-1)-a(n-2)+a(n-3)-a(n-4)` (program `A288429.P6559755836762427597`, by `A288429.P6559755836762427597.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A288429.P2048468819963686252

`a(n-1)+a(n-3)-1` with `a(0)=2, a(1)=4, a(2)=5`
-/

namespace A288429.P2048468819963686252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 4, 5] fun n a =>
  a (n - 1) + a (n - 3) - 1

end

end A288429.P2048468819963686252

namespace A288429

/-- `a(n-1)+a(n-3)-1` -/
def P2048468819963686252.Spec : Prop :=
  ∀ n, P2048468819963686252.a n = A288429 n

end A288429

/-! ## A288429.P6559755836762427597

`2*a(n-1)-a(n-2)+a(n-3)-a(n-4)` with `a(0)=2, a(1)=4, a(2)=5, a(3)=6`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A288429

/-- `2*a(n-1)-a(n-2)+a(n-3)-a(n-4)` -/
def P6559755836762427597.Spec : Prop :=
  ∀ n, P6559755836762427597.a n = A288429 n

theorem P6559755836762427597.correct : P6559755836762427597.Spec := by
  intro n
  simp only [A288429]

end A288429

/-! ## A288429.P15252477645852412551

`ogf((2-x^2-2x^3)/(1-2x+x^2-x^3+x^4))`
-/

namespace A288429.P15252477645852412551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 0, -1, -2] [1, -2, 1, -1, 1] n

end

end A288429.P15252477645852412551

namespace A288429

/-- `ogf((2-x^2-2x^3)/(1-2x+x^2-x^3+x^4))` -/
def P15252477645852412551.Spec : Prop :=
  ∀ n, P15252477645852412551.a n = A288429 n

end A288429

/-! ## A288429.P639193988896055105

`a(n-1)-(1-a(n-3))` with `a(0)=2, a(1)=4, a(2)=5`
-/

namespace A288429.P639193988896055105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 4, 5] fun n a =>
  a (n - 1) - (1 - a (n - 3))

end

end A288429.P639193988896055105

namespace A288429

/-- `a(n-1)-(1-a(n-3))` -/
def P639193988896055105.Spec : Prop :=
  ∀ n, P639193988896055105.a n = A288429 n

end A288429

/-! ## A288429.P16528414730373914869

`A179070(n+3)+1`
-/

namespace A288429.P16528414730373914869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179070 (n + 3) + 1

end

end A288429.P16528414730373914869

namespace A288429

/-- `A179070(n+3)+1` -/
def P16528414730373914869.Spec : Prop :=
  ∀ n, P16528414730373914869.a n = A288429 n

end A288429

/-! ## A288429.P15671879887716124240

`A196382(n+2)+2`
-/

namespace A288429.P15671879887716124240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196382 (n + 2) + 2

end

end A288429.P15671879887716124240

namespace A288429

/-- `A196382(n+2)+2` -/
def P15671879887716124240.Spec : Prop :=
  ∀ n, P15671879887716124240.a n = A288429 n

end A288429

/-! ## A288429.P2400076801794308731

`A077868(n)+2-A078012(n)`
-/

namespace A288429.P2400076801794308731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077868 n + (2 - A078012 n)

end

end A288429.P2400076801794308731

namespace A288429

/-- `A077868(n)+2-A078012(n)` -/
def P2400076801794308731.Spec : Prop :=
  ∀ n, P2400076801794308731.a n = A288429 n

end A288429

/-! ## A288429.P1632131051012202133

`∑[A000930(n)]+2-A078012(n)`
-/

namespace A288429.P1632131051012202133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000930 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (2 - A078012 n)

end

end A288429.P1632131051012202133

namespace A288429

/-- `∑[A000930(n)]+2-A078012(n)` -/
def P1632131051012202133.Spec : Prop :=
  ∀ n, P1632131051012202133.a n = A288429 n

end A288429

/-! ## A288429.P17328041897877662303

`A003410(n+1)+1-A058278(n+1)`
-/

namespace A288429.P17328041897877662303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003410 (n + 1) + (1 - A058278 (n + 1))

end

end A288429.P17328041897877662303

namespace A288429

/-- `A003410(n+1)+1-A058278(n+1)` -/
def P17328041897877662303.Spec : Prop :=
  ∀ n, P17328041897877662303.a n = A288429 n

end A288429

/-! ## A288429.P2108948390089771231

`A038718(n+2)+2-A058278(n+1)`
-/

namespace A288429.P2108948390089771231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038718 (n + 2) + (2 - A058278 (n + 1))

end

end A288429.P2108948390089771231

namespace A288429

/-- `A038718(n+2)+2-A058278(n+1)` -/
def P2108948390089771231.Spec : Prop :=
  ∀ n, P2108948390089771231.a n = A288429 n

end A288429

/-! ## A288429.P16766731509534526474

`A003410(n+2)-A038718(n+1)`
-/

namespace A288429.P16766731509534526474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003410 (n + 2) - A038718 (n + 1)

end

end A288429.P16766731509534526474

namespace A288429

/-- `A003410(n+2)-A038718(n+1)` -/
def P16766731509534526474.Spec : Prop :=
  ∀ n, P16766731509534526474.a n = A288429 n

end A288429

/-! ## A288429.P11620230761548289922

`A097333(n+3)-A038718(n+1)`
-/

namespace A288429.P11620230761548289922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097333 (n + 3) - A038718 (n + 1)

end

end A288429.P11620230761548289922

namespace A288429

/-- `A097333(n+3)-A038718(n+1)` -/
def P11620230761548289922.Spec : Prop :=
  ∀ n, P11620230761548289922.a n = A288429 n

end A288429

/-! ## A288429.P2293313731710234123

`A226275(n+3)-A038718(n+1)`
-/

namespace A288429.P2293313731710234123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226275 (n + 3) - A038718 (n + 1)

end

end A288429.P2293313731710234123

namespace A288429

/-- `A226275(n+3)-A038718(n+1)` -/
def P2293313731710234123.Spec : Prop :=
  ∀ n, P2293313731710234123.a n = A288429 n

end A288429

/-! ## A288429.P11582720327815722961

`Δ[A170933(n+1)]+1`
-/

namespace A288429.P11582720327815722961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170933 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A288429.P11582720327815722961

namespace A288429

/-- `Δ[A170933(n+1)]+1` -/
def P11582720327815722961.Spec : Prop :=
  ∀ n, P11582720327815722961.a n = A288429 n

end A288429

/-! ## A288429.P9975576301635163565

`Δ[A069241(n+1)]+2`
-/

namespace A288429.P9975576301635163565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069241 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 2

end

end A288429.P9975576301635163565

namespace A288429

/-- `Δ[A069241(n+1)]+2` -/
def P9975576301635163565.Spec : Prop :=
  ∀ n, P9975576301635163565.a n = A288429 n

end A288429

/-! ## A288429.P13169834662438147026

`A196204(n+1)-A001595(n)`
-/

namespace A288429.P13169834662438147026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196204 (n + 1) - A001595 n

end

end A288429.P13169834662438147026

namespace A288429

/-- `A196204(n+1)-A001595(n)` -/
def P13169834662438147026.Spec : Prop :=
  ∀ n, P13169834662438147026.a n = A288429 n

end A288429

/-! ## A288429.P14609720268386692414

`A000051(n+1)-(A118645(n+1)+A078012(n))`
-/

namespace A288429.P14609720268386692414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 (n + 1) - (A118645 (n + 1) + A078012 n)

end

end A288429.P14609720268386692414

namespace A288429

/-- `A000051(n+1)-(A118645(n+1)+A078012(n))` -/
def P14609720268386692414.Spec : Prop :=
  ∀ n, P14609720268386692414.a n = A288429 n

end A288429

/-! ## A288429.P4442344979785852327

`sqrt(A183345(n+1))+1`
-/

namespace A288429.P4442344979785852327
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A183345 (n + 1) : ℝ) + 1

end

end A288429.P4442344979785852327

namespace A288429

/-- `sqrt(A183345(n+1))+1` -/
def P4442344979785852327.Spec : Prop :=
  ∀ n, P4442344979785852327.a n = (A288429 n : ℝ)

end A288429

/-!
# A288430: Total number of (undirected) graph paths in simple graphs on n nodes.

The programs for A288430, there is no canonical definition to state claims against.
-/

/-! ## A288430.P6586110550756384674

`floor(10^(n-1))-A023416(A191804(n))`
-/

namespace A288430.P6586110550756384674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(10 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋ - A023416 (A191804 n).toNat

end

end A288430.P6586110550756384674

/-!
# A288431: Binary representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 461", based on the 5-celled von Neumann neighborhood.

The programs for A288431, there is no canonical definition to state claims against.
-/

/-! ## A288431.P1963829750027865225

`A007088(A288433(n))`
-/

namespace A288431.P1963829750027865225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A288433 n).toNat

end

end A288431.P1963829750027865225

/-! ## A288431.P3234168876662760363

`A185544(2*A288433(n))`
-/

namespace A288431.P3234168876662760363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A288433 n).toNat

end

end A288431.P3234168876662760363

/-!
# A288432: Binary representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 461", based on the 5-celled von Neumann neighborhood.

The programs for A288432, there is no canonical definition to state claims against.
-/

/-! ## A288432.P1114642200614871367

`A007088(A288434(n))`
-/

namespace A288432.P1114642200614871367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A288434 n).toNat

end

end A288432.P1114642200614871367

/-! ## A288432.P15573444892708925234

`A185544(2*A288434(n))`
-/

namespace A288432.P15573444892708925234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A288434 n).toNat

end

end A288432.P15573444892708925234

/-!
# A288435: Binary representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 462", based on the 5-celled von Neumann neighborhood.

The programs for A288435, there is no canonical definition to state claims against.
-/

/-! ## A288435.P14155187634191343155

`A000042(n+1)%A289375(A028310(n))`
-/

namespace A288435.P14155187634191343155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000042 (n + 1)) (A289375 (A028310 n).toNat)

end

end A288435.P14155187634191343155

/-! ## A288435.P4295740393341280717

`A000042(n+1)+A000007(n)-A289375(n)`
-/

namespace A288435.P4295740393341280717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000042 (n + 1) + (A000007 n - A289375 n)

end

end A288435.P4295740393341280717

/-! ## A288435.P7865793817532638393

`A000042(n+1)+A057428(n)*A289375(n)`
-/

namespace A288435.P7865793817532638393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000042 (n + 1) + A057428 n * A289375 n

end

end A288435.P7865793817532638393

/-! ## A288435.P16811404940615551487

`or(A000042(n+1)-A289375(n), A036987(n))`
-/

namespace A288435.P16811404940615551487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000042 (n + 1) - A289375 n) (A036987 n)

end

end A288435.P16811404940615551487

/-! ## A288435.P16057495717790959022

`A000042(A028310(n)+1)-A289375(A028310(n))`
-/

namespace A288435.P16057495717790959022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000042 (A028310 n + 1).toNat - A289375 (A028310 n).toNat

end

end A288435.P16057495717790959022

/-!
# A288436: Binary representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 462", based on the 5-celled von Neumann neighborhood.

The programs for A288436, there is no canonical definition to state claims against.
-/

/-! ## A288436.P991612201132577848

`A288435(n)+A289375(n)-A289376(n)`
-/

namespace A288436.P991612201132577848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288435 n + (A289375 n - A289376 n)

end

end A288436.P991612201132577848

/-! ## A288436.P10788609883296789134

`A000042(n+1)+A000007(n)-A289376(n)`
-/

namespace A288436.P10788609883296789134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000042 (n + 1) + (A000007 n - A289376 n)

end

end A288436.P10788609883296789134

/-! ## A288436.P8878491772900883549

`A000042(n+1)+A057428(n)*A289376(n)`
-/

namespace A288436.P8878491772900883549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000042 (n + 1) + A057428 n * A289376 n

end

end A288436.P8878491772900883549

/-! ## A288436.P14551058693198151218

`A002275(n+1)+A057428(n)*A289376(n)`
-/

namespace A288436.P14551058693198151218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002275 (n + 1) + A057428 n * A289376 n

end

end A288436.P14551058693198151218

/-! ## A288436.P8517354949559741754

`A007088(A288438(n))`
-/

namespace A288436.P8517354949559741754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A288438 n).toNat

end

end A288436.P8517354949559741754

/-!
# A288437: Decimal representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 462", based on the 5-celled von Neumann neighborhood.

The programs for A288437, there is no canonical definition to state claims against.
-/

/-! ## A288437.P16530281662505506336

`A126646(n)%A289377(A028310(n))`
-/

namespace A288437.P16530281662505506336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A126646 n) (A289377 (A028310 n).toNat)

end

end A288437.P16530281662505506336

/-! ## A288437.P3378490666167211413

`∑[A000079(n)]%A289377(A028310(n))`
-/

namespace A288437.P3378490666167211413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A289377 (A028310 n).toNat)

end

end A288437.P3378490666167211413

/-! ## A288437.P579195481092161919

`A000225(n+1)%A289377(A028310(n))`
-/

namespace A288437.P579195481092161919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000225 (n + 1)) (A289377 (A028310 n).toNat)

end

end A288437.P579195481092161919

/-! ## A288437.P3848682221121408754

`A000007(n)+A126646(n)-A289377(n)`
-/

namespace A288437.P3848682221121408754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (A126646 n - A289377 n)

end

end A288437.P3848682221121408754

/-! ## A288437.P5961945362270405900

`and(A057428(n)-A289377(n), A289378(n))`
-/

namespace A288437.P5961945362270405900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A057428 n - A289377 n) (A289378 n)

end

end A288437.P5961945362270405900

/-! ## A288437.P14883667016200217478

`or(A000225(n), A052531(n))-A289377(n)`
-/

namespace A288437.P14883667016200217478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000225 n) (A052531 n) - A289377 n

end

end A288437.P14883667016200217478

/-! ## A288437.P5549814844586586017

`A094024(2*n+1)%A289377(A028310(n))`
-/

namespace A288437.P5549814844586586017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A094024 (2 * n + 1)) (A289377 (A028310 n).toNat)

end

end A288437.P5549814844586586017

/-! ## A288437.P18103767061702184698

`A111332(A034463(n+1))+A126646(n)-A289377(n)`
-/

namespace A288437.P18103767061702184698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111332 (A034463 (n + 1)).toNat + (A126646 n - A289377 n)

end

end A288437.P18103767061702184698

/-!
# A288438: Decimal representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 462", based on the 5-celled von Neumann neighborhood.

The programs for A288438, there is no canonical definition to state claims against.
-/

/-! ## A288438.P17372194084196991513

`A000007(n)+A126646(n)-A289378(n)`
-/

namespace A288438.P17372194084196991513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (A126646 n - A289378 n)

end

end A288438.P17372194084196991513

/-! ## A288438.P12677480365237983117

`A288437(n)+A289377(n)-A289378(n)`
-/

namespace A288438.P12677480365237983117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288437 n + (A289377 n - A289378 n)

end

end A288438.P12677480365237983117

/-! ## A288438.P4998331298661291502

`A126646(n)+A057428(n)*A289378(n)`
-/

namespace A288438.P4998331298661291502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126646 n + A057428 n * A289378 n

end

end A288438.P4998331298661291502

/-! ## A288438.P10682861710450884385

`and(A057428(n)-A289378(n), A289377(n))`
-/

namespace A288438.P10682861710450884385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A057428 n - A289378 n) (A289377 n)

end

end A288438.P10682861710450884385

/-! ## A288438.P6727339666204600666

`or(A000225(n), A052531(n))-A289378(n)`
-/

namespace A288438.P6727339666204600666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000225 n) (A052531 n) - A289378 n

end

end A288438.P6727339666204600666

/-! ## A288438.P18123680763759117941

`A126646(n)-A289378(n)%A289375(n)`
-/

namespace A288438.P18123680763759117941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126646 n - Int.tmod (A289378 n) (A289375 n)

end

end A288438.P18123680763759117941

/-!
# A288439: Binary representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 467", based on the 5-celled von Neumann neighborhood.

The programs for A288439, there is no canonical definition to state claims against.
-/

/-! ## A288439.P11193147768396346353

`A007088(A288441(n))`
-/

namespace A288439.P11193147768396346353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A288441 n).toNat

end

end A288439.P11193147768396346353

/-! ## A288439.P8344069852068035890

`A185544(2*A288441(n))`
-/

namespace A288439.P8344069852068035890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A288441 n).toNat

end

end A288439.P8344069852068035890

/-! ## A288439.P3422079752917286106

`A185544(A288441(n)+A288441(n))`
-/

namespace A288439.P3422079752917286106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (A288441 n + A288441 n).toNat

end

end A288439.P3422079752917286106

/-!
# A288440: Binary representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 467", based on the 5-celled von Neumann neighborhood.

The programs for A288440, there is no canonical definition to state claims against.
-/

/-! ## A288440.P11259822613034435270

`A007088(A288442(n))`
-/

namespace A288440.P11259822613034435270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A288442 n).toNat

end

end A288440.P11259822613034435270

/-! ## A288440.P15614617797055609209

`A185544(2*A288442(n))`
-/

namespace A288440.P15614617797055609209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A288442 n).toNat

end

end A288440.P15614617797055609209

/-!
# A288442: Decimal representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 467", based on the 5-celled von Neumann neighborhood.

The programs for A288442, there is no canonical definition to state claims against.
-/

/-! ## A288442.P7103980645643083179

`A028310(xor(A277929(n), A286866(n)))`
-/

namespace A288442.P7103980645643083179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (Int.xor (A277929 n) (A286866 n)).toNat

end

end A288442.P7103980645643083179

/-! ## A288442.P817769308056995145

`or(A013584(A014327(n)), A287955(n))`
-/

namespace A288442.P817769308056995145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A013584 (A014327 n).toNat) (A287955 n)

end

end A288442.P817769308056995145

/-! ## A288442.P7120601178061783371

`or(A054054(A013451(n)), A287955(n))`
-/

namespace A288442.P7120601178061783371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A054054 (A013451 n).toNat) (A287955 n)

end

end A288442.P7120601178061783371

/-!
# A288443: a(n) = (2n + 1)*2^(2n + 1); numbers k such that v(k)*2^v(k) = k, where v(n) = A007814(n) is 2-adic valuation of n.

The programs for A288443, the canonical program `A288443.P14337261787851716347` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A288443 has offset 0).

The definition of A288443 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2*n+1)*2^(2*n+1)` (program `A288443.P14337261787851716347`, by `A288443.P14337261787851716347.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A288443.P14337261787851716347

`(2*n+1)*2^(2*n+1)`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A288443

/-- `(2*n+1)*2^(2*n+1)` -/
def P14337261787851716347.Spec : Prop :=
  ∀ n, (P14337261787851716347.a n : ℤ) = A288443 n

theorem P14337261787851716347.correct : P14337261787851716347.Spec := by
  intro n
  simp only [A288443]

end A288443

/-! ## A288443.P8888011884785379116

`A098713(n)+1`
-/

namespace A288443.P8888011884785379116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098713 n + 1

end

end A288443.P8888011884785379116

namespace A288443

/-- `A098713(n)+1` -/
def P8888011884785379116.Spec : Prop :=
  ∀ n, P8888011884785379116.a n = A288443 n

end A288443

/-! ## A288443.P15800412810636830558

`A036289(2*n+1)`
-/

namespace A288443.P15800412810636830558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036289 (2 * n + 1)

end

end A288443.P15800412810636830558

namespace A288443

/-- `A036289(2*n+1)` -/
def P15800412810636830558.Spec : Prop :=
  ∀ n, P15800412810636830558.a n = A288443 n

end A288443

/-! ## A288443.P8606835118448143713

`ogf((2+8x)/(1-8x+16x^2))`
-/

namespace A288443.P8606835118448143713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 8] [1, -8, 16] n

end

end A288443.P8606835118448143713

namespace A288443

/-- `ogf((2+8x)/(1-8x+16x^2))` -/
def P8606835118448143713.Spec : Prop :=
  ∀ n, P8606835118448143713.a n = A288443 n

end A288443

/-! ## A288443.P6523980056529726712

`lcm(2*4^n, Δ[n²])`
-/

namespace A288443.P6523980056529726712
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (2 * 4 ^ n : ℤ) ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A288443.P6523980056529726712

namespace A288443

/-- `lcm(2*4^n, Δ[n²])` -/
def P6523980056529726712.Spec : Prop :=
  ∀ n, (P6523980056529726712.a n : ℤ) = A288443 n

end A288443

/-! ## A288443.P15212752044557874855

`record[(n+1)*2^xor(1, n)]`
-/

namespace A288443.P15212752044557874855
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * 2 ^ Nat.xor 1 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A288443.P15212752044557874855

namespace A288443

/-- `record[(n+1)*2^xor(1, n)]` -/
def P15212752044557874855.Spec : Prop :=
  ∀ n, (P15212752044557874855.a n : ℤ) = A288443 n

end A288443

/-! ## A288443.P9554064770020380815

`record[lcm(2^(n+1), xor(1, n))]`
-/

namespace A288443.P9554064770020380815
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (2 ^ (n + 1)) (Nat.xor 1 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A288443.P9554064770020380815

namespace A288443

/-- `record[lcm(2^(n+1), xor(1, n))]` -/
def P9554064770020380815.Spec : Prop :=
  ∀ n, (P9554064770020380815.a n : ℤ) = A288443 n

end A288443

/-! ## A288443.P5972896024276885958

`record[2^xor(1, n)*xor(1, n)]`
-/

namespace A288443.P5972896024276885958
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ Nat.xor 1 n * Nat.xor 1 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A288443.P5972896024276885958

namespace A288443

/-- `record[2^xor(1, n)*xor(1, n)]` -/
def P5972896024276885958.Spec : Prop :=
  ∀ n, (P5972896024276885958.a n : ℤ) = A288443 n

end A288443

/-! ## A288443.P8424495820684170182

`record[-((n+1)*(-2)^(n+1))]`
-/

namespace A288443.P8424495820684170182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -((n + 1 : ℤ) * (-2) ^ (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A288443.P8424495820684170182

namespace A288443

/-- `record[-((n+1)*(-2)^(n+1))]` -/
def P8424495820684170182.Spec : Prop :=
  ∀ n, P8424495820684170182.a n = A288443 n

end A288443

/-! ## A288443.P11045384101783759825

`A134401(Δ[n²])`
-/

namespace A288443.P11045384101783759825
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134401 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A288443.P11045384101783759825

namespace A288443

/-- `A134401(Δ[n²])` -/
def P11045384101783759825.Spec : Prop :=
  ∀ n, P11045384101783759825.a n = A288443 n

end A288443

/-! ## A288443.P5775953738802515332

`A097064(2*(n+1))`
-/

namespace A288443.P5775953738802515332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097064 (2 * (n + 1))

end

end A288443.P5775953738802515332

namespace A288443

/-- `A097064(2*(n+1))` -/
def P5775953738802515332.Spec : Prop :=
  ∀ n, P5775953738802515332.a n = A288443 n

end A288443

/-! ## A288443.P8763320708628618558

`A093968(4*n+2)`
-/

namespace A288443.P8763320708628618558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093968 (4 * n + 2)

end

end A288443.P8763320708628618558

namespace A288443

/-- `A093968(4*n+2)` -/
def P8763320708628618558.Spec : Prop :=
  ∀ n, P8763320708628618558.a n = A288443 n

end A288443

/-! ## A288443.P6123159147861753706

`A171647(4*n+2)`
-/

namespace A288443.P6123159147861753706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171647 (4 * n + 2)

end

end A288443.P6123159147861753706

namespace A288443

/-- `A171647(4*n+2)` -/
def P6123159147861753706.Spec : Prop :=
  ∀ n, P6123159147861753706.a n = A288443 n

end A288443

/-! ## A288443.P4416146184282819955

`A003261(Δ[n²])+1`
-/

namespace A288443.P4416146184282819955
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003261 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 1

end

end A288443.P4416146184282819955

namespace A288443

/-- `A003261(Δ[n²])+1` -/
def P4416146184282819955.Spec : Prop :=
  ∀ n, P4416146184282819955.a n = A288443 n

end A288443

/-! ## A288443.P12915621301791676642

`A002064(Δ[n²])-1`
-/

namespace A288443.P12915621301791676642
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002064 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - 1

end

end A288443.P12915621301791676642

namespace A288443

/-- `A002064(Δ[n²])-1` -/
def P12915621301791676642.Spec : Prop :=
  ∀ n, P12915621301791676642.a n = A288443 n

end A288443

/-! ## A288443.P4443511697847015220

`∑[2*A339252(2*n)]`
-/

namespace A288443.P4443511697847015220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A339252 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A288443.P4443511697847015220

namespace A288443

/-- `∑[2*A339252(2*n)]` -/
def P4443511697847015220.Spec : Prop :=
  ∀ n, P4443511697847015220.a n = A288443 n

end A288443

/-! ## A288443.P36579593404786671

`Δ[2*∑[A097067(2*n)]]`
-/

namespace A288443.P36579593404786671
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097067 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A288443.P36579593404786671

namespace A288443

/-- `Δ[2*∑[A097067(2*n)]]` -/
def P36579593404786671.Spec : Prop :=
  ∀ n, P36579593404786671.a n = A288443 n

end A288443

/-! ## A288443.P16538512823611840402

`Δ[2*∑[A139756(2*n)]]`
-/

namespace A288443.P16538512823611840402
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139756 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A288443.P16538512823611840402

namespace A288443

/-- `Δ[2*∑[A139756(2*n)]]` -/
def P16538512823611840402.Spec : Prop :=
  ∀ n, P16538512823611840402.a n = A288443 n

end A288443

/-! ## A288443.P3620918944979122866

`A066524(2*n+1)+2*n+1`
-/

namespace A288443.P3620918944979122866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066524 (2 * n + 1) + (2 * n + 1 : ℤ)

end

end A288443.P3620918944979122866

namespace A288443

/-- `A066524(2*n+1)+2*n+1` -/
def P3620918944979122866.Spec : Prop :=
  ∀ n, P3620918944979122866.a n = A288443 n

end A288443

/-! ## A288443.P18424902898803740897

`A069229(2*n+1)-(2*n+1)`
-/

namespace A288443.P18424902898803740897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069229 (2 * n + 1) - (2 * n + 1 : ℤ)

end

end A288443.P18424902898803740897

namespace A288443

/-- `A069229(2*n+1)-(2*n+1)` -/
def P18424902898803740897.Spec : Prop :=
  ∀ n, P18424902898803740897.a n = A288443 n

end A288443

/-!
# A288444: Numbers k such that k!6 + 16 is prime, where k!6 is the sextuple factorial number (A085158 ).

The programs for A288444, there is no canonical definition to state claims against.
-/

/-! ## A288444.P9734621793452287488

`∑[A063086(A288209(n+1)+∑[n])]`
-/

namespace A288444.P9734621793452287488
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063086 (A288209 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A288444.P9734621793452287488

/-! ## A288444.P11035360492664966069

`record[or(A035517(n), A112377(n))]`
-/

namespace A288444.P11035360492664966069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A035517 n) (A112377 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A288444.P11035360492664966069

/-! ## A288444.P4126957575137714406

`∑[A035096(Δ[A339855(n+1)])]`
-/

namespace A288444.P4126957575137714406
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339855 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035096 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A288444.P4126957575137714406

/-! ## A288444.P282202157291990769

`eq[A083382(n+4), A083912(n+1)]`
-/

namespace A288444.P282202157291990769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083382 (n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083912 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A288444.P282202157291990769

/-! ## A288444.P5891470414646433037

`lt[A267562(A000040(n+1)), 4^(n%2)]`
-/

namespace A288444.P5891470414646433037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267562 (A000040 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 ^ (n % 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A288444.P5891470414646433037

/-!
# A288445: Numbers k such that k!6 + 18 is prime, where k!6 is the sextuple factorial number (A085158 ).

The programs for A288445, there is no canonical definition to state claims against.
-/

/-! ## A288445.P9215448503504581414

`eq[A043537(A176744(n)+1), A077462(n)]`
-/

namespace A288445.P9215448503504581414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043537 (A176744 n + 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077462 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A288445.P9215448503504581414

/-! ## A288445.P6415819448862852028

`eq[2, A000001(7*7*n)]`
-/

namespace A288445.P6415819448862852028
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000001 (7 * (7 * n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A288445.P6415819448862852028

/-! ## A288445.P8028648044637665347

`p?[A346129(n+1)]-floor(acot(n))`
-/

namespace A288445.P8028648044637665347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346129 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - ⌊SequenceMachineLib.acot (n : ℝ)⌋

end

end A288445.P8028648044637665347

/-! ## A288445.P16736917688618033055

`eq[A040456(n), A327766(n)]`
-/

namespace A288445.P16736917688618033055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040456 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327766 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A288445.P16736917688618033055

/-! ## A288445.P15565446695206915747

`filter[A346129(n+1), A080545(#)]`
-/

namespace A288445.P15565446695206915747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346129 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080545 (f1 j).toNat = 1) n)

end

end A288445.P15565446695206915747

/-!
# A288446: Numbers k such that k!6 + 24 is prime, where k!6 is the sextuple factorial number (A085158 ).

The programs for A288446, there is no canonical definition to state claims against.
-/

/-! ## A288446.P1470414007141076468

`p?[A300957(∑[A294950(n)])]`
-/

namespace A288446.P1470414007141076468
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294950 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300957 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A288446.P1470414007141076468

/-! ## A288446.P11409367258046453858

`p?[∑[A028902(A122618(3*n+4))%6]]`
-/

namespace A288446.P11409367258046453858
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028902 (A122618 (3 * n + 4)).toNat) 6

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A288446.P11409367258046453858

/-!
# A288447: Numbers k such that k!6 + 27 is prime, where k!6 is the sextuple factorial number (A085158 ).

The programs for A288447, there is no canonical definition to state claims against.
-/

/-! ## A288447.P6500452857623122549

`A077253(A110380(n+1))`
-/

namespace A288447.P6500452857623122549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077253 (A110380 (n + 1)).toNat

end

end A288447.P6500452857623122549

/-! ## A288447.P8995719805766853669

`∑[A331118(A175012(∑[n]))]`
-/

namespace A288447.P8995719805766853669
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331118 (A175012 (∑ j ∈ Finset.range (n + 1), f2 j)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A288447.P8995719805766853669

/-! ## A288447.P11887451427552767711

`∑[A001511(A045060(n+1))]`
-/

namespace A288447.P11887451427552767711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A045060 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A288447.P11887451427552767711

/-! ## A288447.P18080227928142010226

`∑[A123330(A108771(n+1))]`
-/

namespace A288447.P18080227928142010226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123330 (A108771 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A288447.P18080227928142010226

/-! ## A288447.P3926342240074899650

`A169805(∑[A309761(n+1)])`
-/

namespace A288447.P3926342240074899650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309761 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169805 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A288447.P3926342240074899650

/-!
# A288449: Numbers k such that k!6 + 36 is prime, where k!6 is the sextuple factorial number (A085158 ).

The programs for A288449, there is no canonical definition to state claims against.
-/

/-! ## A288449.P7815896081454935007

`A335075(∑[A277536(n)!])`
-/

namespace A288449.P7815896081454935007
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A277536 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335075 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A288449.P7815896081454935007

/-! ## A288449.P4202010265317409256

`record[A171968(p?[A230631(n)])]`
-/

namespace A288449.P4202010265317409256
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230631 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171968 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A288449.P4202010265317409256

/-! ## A288449.P5714714016679159998

`or(A001223(A309861(n)), A048297(n))`
-/

namespace A288449.P5714714016679159998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001223 (A309861 n).toNat) (A048297 n)

end

end A288449.P5714714016679159998

/-! ## A288449.P5005714049524775117

`or(A048297(n), A291168(A319628(n)))`
-/

namespace A288449.P5005714049524775117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A048297 n) (A291168 (A319628 n).toNat)

end

end A288449.P5005714049524775117

/-! ## A288449.P14647676482774429727

`or(A048297(n), A064793(A129116(n+1)))`
-/

namespace A288449.P14647676482774429727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A048297 n) (A064793 (A129116 (n + 1)).toNat)

end

end A288449.P14647676482774429727

/-!
# A288451: Numbers n such that !n + 7 is prime.

The programs for A288451, there is no canonical definition to state claims against.
-/

/-! ## A288451.P9065377118855334295

`eq[A029406(n+2), A029411(A029395(2*n))]`
-/

namespace A288451.P9065377118855334295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029406 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029411 (A029395 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A288451.P9065377118855334295

/-! ## A288451.P5529805273518614270

`eq[A112798(n+2), A143974(A007947(2*n+5))]`
-/

namespace A288451.P5529805273518614270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112798 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143974 (A007947 (2 * n + 5)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A288451.P5529805273518614270

/-!
# A288452: Pseudoperfect totient numbers: numbers n such that equal the sum of a subset of their iterated phi(n).

The programs for A288452, there is no canonical definition to state claims against.
-/

/-! ## A288452.P3346738603288656752

`lt[A001223(A316239(n+1)), A340793(n+1)]`
-/

namespace A288452.P3346738603288656752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (A316239 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340793 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A288452.P3346738603288656752

/-! ## A288452.P13174447951928598621

`∪[A082897(n+1), A286265(n+1)]%A286322(3*n+4)`
-/

namespace A288452.P13174447951928598621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082897 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286265 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n : ℤ) (A286322 (3 * n + 4))

end

end A288452.P13174447951928598621

/-! ## A288452.P5241597087941754967

`lt[A335132(A335105(3*n+1)), A335153(n+1)]`
-/

namespace A288452.P5241597087941754967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335132 (A335105 (3 * n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335153 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A288452.P5241597087941754967

/-! ## A288452.P2430609491158384396

`lt[A100922(A002349(n+1)), A124625(n)]`
-/

namespace A288452.P2430609491158384396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100922 (A002349 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124625 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A288452.P2430609491158384396

/-! ## A288452.P13922549247388583616

`lt[A069715(n+1), A053223(A086957(n+1))]`
-/

namespace A288452.P13922549247388583616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069715 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053223 (A086957 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A288452.P13922549247388583616

/-!
# A288454: Chebyshev coefficients of density of states of square lattice.

The programs for A288454, there is no canonical definition to state claims against.
-/

/-! ## A288454.P15282550806552872812

`A009117(n)*A092266(n)`
-/

namespace A288454.P15282550806552872812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009117 n * A092266 n

end

end A288454.P15282550806552872812

/-! ## A288454.P6709882370037317138

`A063886(n)²*A009117(n)`
-/

namespace A288454.P6709882370037317138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063886 n ^ 2 * A009117 n

end

end A288454.P6709882370037317138

/-! ## A288454.P12663093000446521438

`A304940(n)²/A280560(n)`
-/

namespace A288454.P12663093000446521438
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A304940 n ^ 2 : ℚ) / (A280560 n : ℚ)

end

end A288454.P12663093000446521438

/-! ## A288454.P1589723849947318684

`A092266(n)*A347596(2*n)`
-/

namespace A288454.P1589723849947318684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092266 n * A347596 (2 * n)

end

end A288454.P1589723849947318684

/-! ## A288454.P13897925259897088006

`A063886(n)²*A347596(2*n)`
-/

namespace A288454.P13897925259897088006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063886 n ^ 2 * A347596 (2 * n)

end

end A288454.P13897925259897088006

/-!
# A288460: Chebyshev coefficients of density of states of triangular lattice.

The programs for A288460, there is no canonical definition to state claims against.
-/

/-! ## A288460.P1723360557912943041

`A259657((p?[4*n+1]+p?[4*n-1])*A101478(n))`
-/

namespace A288460.P1723360557912943041
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259657 (((f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) + f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)) * A101478 n).toNat

end

end A288460.P1723360557912943041

/-!
# A288462: Fixed point of the mapping 00->0101, 1->10, starting with 00.

The programs for A288462, the canonical program `A288462.P7615949693816486545` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A288462 has offset 1).

The definition of A288462 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A288462.P7615949693816486545

`char[A288464(n+1)-1]`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A288462

/-- `char[A288464(n+1)-1]` -/
def P7615949693816486545.Spec : Prop :=
  ∀ n, (P7615949693816486545.a n : ℤ) = A288462 (n + 1)

theorem P7615949693816486545.correct : P7615949693816486545.Spec := by
  intro n
  simp only [A288462, Nat.add_sub_cancel]

end A288462

/-! ## A288462.P16584625943476449429

`A276794(A351631(n+2)-2)`
-/

namespace A288462.P16584625943476449429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276794 (A351631 (n + 2) - 2).toNat

end

end A288462.P16584625943476449429

namespace A288462

/-- `A276794(A351631(n+2)-2)` -/
def P16584625943476449429.Spec : Prop :=
  ∀ n, P16584625943476449429.a n = A288462 (n + 1)

end A288462

/-! ## A288462.P9867028848280740630

`A276794(lt[1, A092782(n+2)])`
-/

namespace A288462.P9867028848280740630
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092782 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276794 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A288462.P9867028848280740630

namespace A288462

/-- `A276794(lt[1, A092782(n+2)])` -/
def P9867028848280740630.Spec : Prop :=
  ∀ n, P9867028848280740630.a n = A288462 (n + 1)

end A288462

/-! ## A288462.P16423879559932133007

`4%A277745(lt[0, A080843(n)])`
-/

namespace A288462.P16423879559932133007
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080843 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 4 (A277745 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n))

end

end A288462.P16423879559932133007

namespace A288462

/-- `4%A277745(lt[0, A080843(n)])` -/
def P16423879559932133007.Spec : Prop :=
  ∀ n, P16423879559932133007.a n = A288462 (n + 1)

end A288462

/-!
# A288463: Positions of 0 in A288462; complement of A288464.

The programs for A288463, the canonical program `A288463.P14445574240156194646` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A288463 has offset 1).

The definition of A288463 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A288463.P11838368780359228274

`eq[2, A059832(n)]-n`
-/

namespace A288463.P11838368780359228274
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059832 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - (n : ℤ)

end

end A288463.P11838368780359228274

namespace A288463

/-- `eq[2, A059832(n)]-n` -/
def P11838368780359228274.Spec : Prop :=
  ∀ n, P11838368780359228274.a n = A288463 (n + 1)

end A288463

/-! ## A288463.P9423968731156729561

`comp[A288464(n+1)-1]+1`
-/

namespace A288463.P9423968731156729561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288464 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A288463.P9423968731156729561

namespace A288463

/-- `comp[A288464(n+1)-1]+1` -/
def P9423968731156729561.Spec : Prop :=
  ∀ n, (P9423968731156729561.a n : ℤ) = A288463 (n + 1)

end A288463

/-! ## A288463.P12628826436761427359

`A001489(n)+eq[2, A059832(n)]`
-/

namespace A288463.P12628826436761427359
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059832 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001489 n + (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ)

end

end A288463.P12628826436761427359

namespace A288463

/-- `A001489(n)+eq[2, A059832(n)]` -/
def P12628826436761427359.Spec : Prop :=
  ∀ n, P12628826436761427359.a n = A288463 (n + 1)

end A288463

/-! ## A288463.P14445574240156194646

`A351631(n+1)-A385533(n+1)`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A288463

/-- `A351631(n+1)-A385533(n+1)` -/
def P14445574240156194646.Spec : Prop :=
  ∀ n, P14445574240156194646.a n = A288463 (n + 1)

theorem P14445574240156194646.correct : P14445574240156194646.Spec := by
  intro n
  simp only [A288463, Nat.add_sub_cancel]

end A288463

/-! ## A288463.P14302736023829151529

`A140100(eq[(n+1)*A276791(n), A276791(n)]+1)`
-/

namespace A288463.P14302736023829151529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A276791 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276791 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140100 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A288463.P14302736023829151529

namespace A288463

/-- `A140100(eq[(n+1)*A276791(n), A276791(n)]+1)` -/
def P14302736023829151529.Spec : Prop :=
  ∀ n, P14302736023829151529.a n = A288463 (n + 1)

end A288463

/-! ## A288463.P15318277342302244834

`A140100(eq[A276791(n)/(n+1), A276791(n)]+1)`
-/

namespace A288463.P15318277342302244834
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A276791 n : ℚ) / (n + 1 : ℚ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276791 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140100 (SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℚ)) n + 1)

end

end A288463.P15318277342302244834

namespace A288463

/-- `A140100(eq[A276791(n)/(n+1), A276791(n)]+1)` -/
def P15318277342302244834.Spec : Prop :=
  ∀ n, P15318277342302244834.a n = A288463 (n + 1)

end A288463

/-! ## A288463.P17970910546367312069

`record[xor(n+1, -A288462(n+1))]`
-/

namespace A288463.P17970910546367312069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n + 1 : ℤ) (-A288462 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A288463.P17970910546367312069

namespace A288463

/-- `record[xor(n+1, -A288462(n+1))]` -/
def P17970910546367312069.Spec : Prop :=
  ∀ n, P17970910546367312069.a n = A288463 (n + 1)

end A288463

/-! ## A288463.P6711806737919109810

`A003144(A351631(n+1)+1)-A351631(n+1)`
-/

namespace A288463.P6711806737919109810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003144 (A351631 (n + 1) + 1).toNat - A351631 (n + 1)

end

end A288463.P6711806737919109810

namespace A288463

/-- `A003144(A351631(n+1)+1)-A351631(n+1)` -/
def P6711806737919109810.Spec : Prop :=
  ∀ n, P6711806737919109810.a n = A288463 (n + 1)

end A288463

/-! ## A288463.P8055848358390538463

`eq[1, A059835(n)]-n`
-/

namespace A288463.P8055848358390538463
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059835 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - (n : ℤ)

end

end A288463.P8055848358390538463

namespace A288463

/-- `eq[1, A059835(n)]-n` -/
def P8055848358390538463.Spec : Prop :=
  ∀ n, P8055848358390538463.a n = A288463 (n + 1)

end A288463

/-! ## A288463.P358141660396717069

`A351631(n+1)+1-A353090(n+1)`
-/

namespace A288463.P358141660396717069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351631 (n + 1) + (1 - A353090 (n + 1))

end

end A288463.P358141660396717069

namespace A288463

/-- `A351631(n+1)+1-A353090(n+1)` -/
def P358141660396717069.Spec : Prop :=
  ∀ n, P358141660396717069.a n = A288463 (n + 1)

end A288463

/-!
# A288464: Positions of 1 in A288462; complement of A288463.

The programs for A288464, the canonical program `A288464.P6763049980737922959` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A288464 has offset 1).

The definition of A288464 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A288464.P6763049980737922959

`record[(A140100(n+1)+1)/A305393(n+1)]`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A288464

/-- `record[(A140100(n+1)+1)/A305393(n+1)]` -/
def P6763049980737922959.Spec : Prop :=
  ∀ n, P6763049980737922959.a n = (A288464 (n + 1) : ℚ)

end A288464

/-! ## A288464.P9721648112121874169

`record[A140100(n+1)+A305393(n+1)-A276794(n)]`
-/

namespace A288464.P9721648112121874169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140100 (n + 1) + (A305393 (n + 1) - A276794 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A288464.P9721648112121874169

namespace A288464

/-- `record[A140100(n+1)+A305393(n+1)-A276794(n)]` -/
def P9721648112121874169.Spec : Prop :=
  ∀ n, P9721648112121874169.a n = A288464 (n + 1)

end A288464

/-! ## A288464.P14912029952017219281

`filter[n+1, A288462(#)]`
-/

namespace A288464.P14912029952017219281
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A288462 (f1 j) = 1) n)

end

end A288464.P14912029952017219281

namespace A288464

/-- `filter[n+1, A288462(#)]` -/
def P14912029952017219281.Spec : Prop :=
  ∀ n, (P14912029952017219281.a n : ℤ) = A288464 (n + 1)

end A288464

/-! ## A288464.P4141934056418656803

`record[(n+2)*A288462(n+2)]`
-/

namespace A288464.P4141934056418656803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A288462 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A288464.P4141934056418656803

namespace A288464

/-- `record[(n+2)*A288462(n+2)]` -/
def P4141934056418656803.Spec : Prop :=
  ∀ n, P4141934056418656803.a n = A288464 (n + 1)

end A288464

/-! ## A288464.P10943032362387130935

`lt[n*char[A288463(n+1)], n]`
-/

namespace A288464.P10943032362387130935
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288463 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (if ∃ j, f2 j = (n : ℤ) then 1 else 0)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A288464.P10943032362387130935

namespace A288464

/-- `lt[n*char[A288463(n+1)], n]` -/
def P10943032362387130935.Spec : Prop :=
  ∀ n, (P10943032362387130935.a n : ℤ) = A288464 (n + 1)

end A288464

/-! ## A288464.P18266266876087093079

`eq[char[A288463(n+1)], A000007(n)]`
-/

namespace A288464.P18266266876087093079
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288463 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A288464.P18266266876087093079

namespace A288464

/-- `eq[char[A288463(n+1)], A000007(n)]` -/
def P18266266876087093079.Spec : Prop :=
  ∀ n, (P18266266876087093079.a n : ℤ) = A288464 (n + 1)

end A288464

/-! ## A288464.P16684002552808116959

`eq[char[A288463(n+1)], A000038(n)]`
-/

namespace A288464.P16684002552808116959
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288463 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A288464.P16684002552808116959

namespace A288464

/-- `eq[char[A288463(n+1)], A000038(n)]` -/
def P16684002552808116959.Spec : Prop :=
  ∀ n, (P16684002552808116959.a n : ℤ) = A288464 (n + 1)

end A288464

/-! ## A288464.P7587720092397093491

`lt[char[A288463(n+1)], A057427(n)]`
-/

namespace A288464.P7587720092397093491
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288463 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f3 j) n

end

end A288464.P7587720092397093491

namespace A288464

/-- `lt[char[A288463(n+1)], A057427(n)]` -/
def P7587720092397093491.Spec : Prop :=
  ∀ n, (P7587720092397093491.a n : ℤ) = A288464 (n + 1)

end A288464

/-! ## A288464.P3102598583515047898

`eq[1, A288462(A088917(n²)+n)]`
-/

namespace A288464.P3102598583515047898
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288462 (A088917 (n ^ 2) + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A288464.P3102598583515047898

namespace A288464

/-- `eq[1, A288462(A088917(n²)+n)]` -/
def P3102598583515047898.Spec : Prop :=
  ∀ n, (P3102598583515047898.a n : ℤ) = A288464 (n + 1)

end A288464

/-! ## A288464.P16324252401694167185

`eq[1, A288462(xor(n, A088917(n²)))]`
-/

namespace A288464.P16324252401694167185
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288462 (Int.xor (n : ℤ) (A088917 (n ^ 2))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A288464.P16324252401694167185

namespace A288464

/-- `eq[1, A288462(xor(n, A088917(n²)))]` -/
def P16324252401694167185.Spec : Prop :=
  ∀ n, (P16324252401694167185.a n : ℤ) = A288464 (n + 1)

end A288464

/-!
# A288465: a(n) = 2*a(n-1) - a(n-4), where a(0) = 2, a(1) = 4, a(2) = 6, a(3) = 10.

The programs for A288465, the canonical program `A288465.P10766072589659846593` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A288465 has offset 0).

The definition of A288465 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*a(n-1)-a(n-4)` (program `A288465.P10766072589659846593`, by `A288465.P10766072589659846593.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A288465.P10766072589659846593

`2*a(n-1)-a(n-4)` with `a(0)=2, a(1)=4, a(2)=6, a(3)=10`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A288465

/-- `2*a(n-1)-a(n-4)` -/
def P10766072589659846593.Spec : Prop :=
  ∀ n, P10766072589659846593.a n = A288465 n

theorem P10766072589659846593.correct : P10766072589659846593.Spec := by
  intro n
  simp only [A288465]

end A288465

/-! ## A288465.P13035979105717070127

`A000073(n+1)+A000073(n+3)+1`
-/

namespace A288465.P13035979105717070127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000073 (n + 1) + A000073 (n + 3) + 1

end

end A288465.P13035979105717070127

namespace A288465

/-- `A000073(n+1)+A000073(n+3)+1` -/
def P13035979105717070127.Spec : Prop :=
  ∀ n, P13035979105717070127.a n = A288465 n

end A288465

/-! ## A288465.P11272619680864042623

`ogf((2-2x^2-2x^3)/(1-2x+x^4))`
-/

namespace A288465.P11272619680864042623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 0, -2, -2] [1, -2, 0, 0, 1] n

end

end A288465.P11272619680864042623

namespace A288465

/-- `ogf((2-2x^2-2x^3)/(1-2x+x^4))` -/
def P11272619680864042623.Spec : Prop :=
  ∀ n, P11272619680864042623.a n = A288465 n

end A288465

/-! ## A288465.P17507821343477946512

`∑[a(n-1)+a(n-2)+a(n-3)]` with `a(0)=2, a(1)=2, a(2)=2, a(3)=4`
-/

namespace A288465.P17507821343477946512
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 2, 2, 4] fun n f1 =>
  f1 (n - 1) + (f1 (n - 2) + f1 (n - 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A288465.P17507821343477946512

namespace A288465

/-- `∑[a(n-1)+a(n-2)+a(n-3)]` -/
def P17507821343477946512.Spec : Prop :=
  ∀ n, (P17507821343477946512.a n : ℤ) = A288465 n

end A288465

/-! ## A288465.P17978535278501676739

`A000213(n+2)+1`
-/

namespace A288465.P17978535278501676739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000213 (n + 2) + 1

end

end A288465.P17978535278501676739

namespace A288465

/-- `A000213(n+2)+1` -/
def P17978535278501676739.Spec : Prop :=
  ∀ n, P17978535278501676739.a n = A288465 n

end A288465

/-! ## A288465.P15368175834248068882

`2*(A008937(n)+1)`
-/

namespace A288465.P15368175834248068882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A008937 n + 1)

end

end A288465.P15368175834248068882

namespace A288465

/-- `2*(A008937(n)+1)` -/
def P15368175834248068882.Spec : Prop :=
  ∀ n, P15368175834248068882.a n = A288465 n

end A288465

/-! ## A288465.P4253202333628219165

`2*A192804(n+2)`
-/

namespace A288465.P4253202333628219165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A192804 (n + 2)

end

end A288465.P4253202333628219165

namespace A288465

/-- `2*A192804(n+2)` -/
def P4253202333628219165.Spec : Prop :=
  ∀ n, P4253202333628219165.a n = A288465 n

end A288465

/-! ## A288465.P10382502686552082502

`∑[A354784(n+1)]+2`
-/

namespace A288465.P10382502686552082502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354784 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A288465.P10382502686552082502

namespace A288465

/-- `∑[A354784(n+1)]+2` -/
def P10382502686552082502.Spec : Prop :=
  ∀ n, P10382502686552082502.a n = A288465 n

end A288465

/-! ## A288465.P370980269568100102

`2*(A317200(n+2)-1)`
-/

namespace A288465.P370980269568100102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A317200 (n + 2) - 1)

end

end A288465.P370980269568100102

namespace A288465

/-- `2*(A317200(n+2)-1)` -/
def P370980269568100102.Spec : Prop :=
  ∀ n, P370980269568100102.a n = A288465 n

end A288465

/-! ## A288465.P1294430674279954047

`2*(∑[∑[A001590(n)]]+1)`
-/

namespace A288465.P1294430674279954047
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001590 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A288465.P1294430674279954047

namespace A288465

/-- `2*(∑[∑[A001590(n)]]+1)` -/
def P1294430674279954047.Spec : Prop :=
  ∀ n, P1294430674279954047.a n = A288465 n

end A288465

/-! ## A288465.P9990868058605188967

`2*(∑[A000073(n+1)]+1)`
-/

namespace A288465.P9990868058605188967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000073 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A288465.P9990868058605188967

namespace A288465

/-- `2*(∑[A000073(n+1)]+1)` -/
def P9990868058605188967.Spec : Prop :=
  ∀ n, P9990868058605188967.a n = A288465 n

end A288465

/-! ## A288465.P2590276096442012596

`A354080(n)+1-A001590(n)`
-/

namespace A288465.P2590276096442012596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354080 n + (1 - A001590 n)

end

end A288465.P2590276096442012596

namespace A288465

/-- `A354080(n)+1-A001590(n)` -/
def P2590276096442012596.Spec : Prop :=
  ∀ n, P2590276096442012596.a n = A288465 n

end A288465

/-! ## A288465.P3956913769425709916

`∑[2*A000073(A254667(n+1))]`
-/

namespace A288465.P3956913769425709916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000073 (A254667 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A288465.P3956913769425709916

namespace A288465

/-- `∑[2*A000073(A254667(n+1))]` -/
def P3956913769425709916.Spec : Prop :=
  ∀ n, P3956913769425709916.a n = A288465 n

end A288465

/-! ## A288465.P17086529671244410263

`2*(A000073(n)+∑[A081172(n)])`
-/

namespace A288465.P17086529671244410263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081172 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A000073 n + ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A288465.P17086529671244410263

namespace A288465

/-- `2*(A000073(n)+∑[A081172(n)])` -/
def P17086529671244410263.Spec : Prop :=
  ∀ n, P17086529671244410263.a n = A288465 n

end A288465

/-! ## A288465.P1933001148942091964

`2*(∑[A141036(n)]-A000213(n))`
-/

namespace A288465.P1933001148942091964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141036 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j - A000213 n)

end

end A288465.P1933001148942091964

namespace A288465

/-- `2*(∑[A141036(n)]-A000213(n))` -/
def P1933001148942091964.Spec : Prop :=
  ∀ n, P1933001148942091964.a n = A288465 n

end A288465

/-! ## A288465.P12576935010857336790

`A007486(n+1)+A000073(n)+1`
-/

namespace A288465.P12576935010857336790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007486 (n + 1) + (A000073 n + 1)

end

end A288465.P12576935010857336790

namespace A288465

/-- `A007486(n+1)+A000073(n)+1` -/
def P12576935010857336790.Spec : Prop :=
  ∀ n, P12576935010857336790.a n = A288465 n

end A288465

/-! ## A288465.P9161564741168439307

`A054668(n+1)+A036453(n+1)`
-/

namespace A288465.P9161564741168439307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054668 (n + 1) + A036453 (n + 1)

end

end A288465.P9161564741168439307

namespace A288465

/-- `A054668(n+1)+A036453(n+1)` -/
def P9161564741168439307.Spec : Prop :=
  ∀ n, P9161564741168439307.a n = A288465 n

end A288465

/-! ## A288465.P4106772082665927526

`A106524(A038573(n))+A054668(n+1)`
-/

namespace A288465.P4106772082665927526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106524 (A038573 n).toNat + A054668 (n + 1)

end

end A288465.P4106772082665927526

namespace A288465

/-- `A106524(A038573(n))+A054668(n+1)` -/
def P4106772082665927526.Spec : Prop :=
  ∀ n, P4106772082665927526.a n = A288465 n

end A288465

/-! ## A288465.P1390872131369125065

`A288599(n+1)-a(n-1)` with `a(0)=2`
-/

namespace A288465.P1390872131369125065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A288599 (n + 1) - a (n - 1)

end

end A288465.P1390872131369125065

namespace A288465

/-- `A288599(n+1)-a(n-1)` -/
def P1390872131369125065.Spec : Prop :=
  ∀ n, P1390872131369125065.a n = A288465 n

end A288465

/-!
# A288466: Fixed point of the mapping 00->0101, 1->010, starting with 00.

The programs for A288466, there is no canonical definition to state claims against.
-/

/-! ## A288466.P3107742930179158797

`char[A288468(n+1)-1]`
-/

namespace A288466.P3107742930179158797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288468 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A288466.P3107742930179158797

/-! ## A288466.P954671623665607495

`A180198(n)%A245920(A069907(n))`
-/

namespace A288466.P954671623665607495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A180198 n) (A245920 (A069907 n).toNat)

end

end A288466.P954671623665607495

/-! ## A288466.P2015266277169244454

`A079944(∑[A000041(n)+5])`
-/

namespace A288466.P2015266277169244454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079944 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A288466.P2015266277169244454

/-! ## A288466.P11845344818163812224

`A341334(A239110(n)*A284684(n+1)+1)`
-/

namespace A288466.P11845344818163812224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341334 (A239110 n * A284684 (n + 1) + 1).toNat

end

end A288466.P11845344818163812224

/-! ## A288466.P15543011355876707432

`A104104(A198272(n+1))`
-/

namespace A288466.P15543011355876707432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104104 (A198272 (n + 1)).toNat

end

end A288466.P15543011355876707432

/-!
# A288467: Positions of 0 in A288466; complement of A288468.

The programs for A288467, there is no canonical definition to state claims against.
-/

/-! ## A288467.P16659851962508615058

`a(n-1)+A288466(a(n-1)+1)+1` with `a(0)=1`
-/

namespace A288467.P16659851962508615058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A288466 (a (n - 1) + 1).toNat + 1)

end

end A288467.P16659851962508615058

/-! ## A288467.P13928001511642279774

`record[or(n+1, -A288466(n+1))]`
-/

namespace A288467.P13928001511642279774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n + 1 : ℤ) (-A288466 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A288467.P13928001511642279774

/-! ## A288467.P11630971141759254846

`record[A020703(A020703(n+1)-A288466(n+1))]`
-/

namespace A288467.P11630971141759254846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020703 (A020703 (n + 1) - A288466 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A288467.P11630971141759254846

/-! ## A288467.P10441550420034604864

`eq[A172336(n)*A288466(n+1), A288466(n+1)]+1`
-/

namespace A288467.P10441550420034604864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172336 n * A288466 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288466 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A288467.P10441550420034604864

/-! ## A288467.P15780601643371809140

`eq[A288466(n+1)+A099774(n+1), A099774(n+1)]+1`
-/

namespace A288467.P15780601643371809140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288466 (n + 1) + A099774 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099774 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A288467.P15780601643371809140

/-! ## A288467.P13454019435135427035

`eq[A288466(n+1)+A288257(n+1), A288257(n+1)]+1`
-/

namespace A288467.P13454019435135427035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288466 (n + 1) + A288257 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288257 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A288467.P13454019435135427035

/-! ## A288467.P13861053703323894379

`eq[A052220(n+1)*A288466(n+1), A288466(n+1)]+1`
-/

namespace A288467.P13861053703323894379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052220 (n + 1) * A288466 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288466 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A288467.P13861053703323894379

/-! ## A288467.P9648677183813866313

`A000720(p?[A288466(n+1)+A000040(n+1)])`
-/

namespace A288467.P9648677183813866313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288466 (n + 1) + A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A288467.P9648677183813866313

/-!
# A288468: Positions of 1 in A288466; complement of A288467.

The programs for A288468, there is no canonical definition to state claims against.
-/

/-! ## A288468.P13971223046811967535

`filter[n+1, A288466(#)]`
-/

namespace A288468.P13971223046811967535
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A288466 (f1 j) = 1) n)

end

end A288468.P13971223046811967535

/-! ## A288468.P3717004439829171365

`A000720(p?[A000040(n+1)*A288466(n+1)])`
-/

namespace A288468.P3717004439829171365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A288466 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A288468.P3717004439829171365

/-! ## A288468.P12347524936015028317

`A072418(A241883(n+1))+A008576(n)`
-/

namespace A288468.P12347524936015028317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072418 (A241883 (n + 1)).toNat + A008576 n

end

end A288468.P12347524936015028317

/-!
# A288469: a(n) = n if n is a nonprime, otherwise take the prime index of n and repeat until you get a nonprime which is then a(n).

The programs for A288469, the canonical program `A288469.P18109802138600122928` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A288469 has offset 1).

The definition of A288469 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000720, A010051, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A288469.P18109802138600122928

`n+1+A010051(n+1)*(a(A000720(n+1)-1)-(n+1))` with `a(0)=1`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A288469

/-- `n+1+A010051(n+1)*(a(A000720(n+1)-1)-(n+1))` -/
def P18109802138600122928.Spec : Prop :=
  ∀ n, P18109802138600122928.a n = A288469 (n + 1)

theorem P18109802138600122928.correct : P18109802138600122928.Spec := by
  intro n
  simp only [A288469, Nat.add_sub_cancel]

end A288469

/-! ## A288469.P2399627801909827006

`A018252(A022447(n+1))`
-/

namespace A288469.P2399627801909827006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (A022447 (n + 1)).toNat

end

end A288469.P2399627801909827006

namespace A288469

/-- `A018252(A022447(n+1))` -/
def P2399627801909827006.Spec : Prop :=
  ∀ n, P2399627801909827006.a n = A288469 (n + 1)

end A288469

/-! ## A288469.P10458474349212476032

`A141468(A022447(n+1)+1)`
-/

namespace A288469.P10458474349212476032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (A022447 (n + 1) + 1).toNat

end

end A288469.P10458474349212476032

namespace A288469

/-- `A141468(A022447(n+1)+1)` -/
def P10458474349212476032.Spec : Prop :=
  ∀ n, P10458474349212476032.a n = A288469 (n + 1)

end A288469

/-! ## A288469.P6689387831127835628

`Δ[A101203(n)+a(A000720(n))]` with `a(0)=1`
-/

namespace A288469.P6689387831127835628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A101203 n + f1 (A000720 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A288469.P6689387831127835628

namespace A288469

/-- `Δ[A101203(n)+a(A000720(n))]` -/
def P6689387831127835628.Spec : Prop :=
  ∀ n, P6689387831127835628.a n = A288469 (n + 1)

end A288469

/-! ## A288469.P16661342620932483443

`A227413(A000265(A135141(n+1)))`
-/

namespace A288469.P16661342620932483443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227413 (A000265 (A135141 (n + 1)).toNat).toNat

end

end A288469.P16661342620932483443

namespace A288469

/-- `A227413(A000265(A135141(n+1)))` -/
def P16661342620932483443.Spec : Prop :=
  ∀ n, P16661342620932483443.a n = A288469 (n + 1)

end A288469

/-! ## A288469.P340210159581041473

`A175027(A175027(A175027(A175027(A175027(n+1)))))`
-/

namespace A288469.P340210159581041473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175027 (A175027 (A175027 (A175027 (A175027 (n + 1)).toNat).toNat).toNat).toNat

end

end A288469.P340210159581041473

namespace A288469

/-- `A175027(A175027(A175027(A175027(A175027(n+1)))))` -/
def P340210159581041473.Spec : Prop :=
  ∀ n, P340210159581041473.a n = A288469 (n + 1)

end A288469

/-! ## A288469.P10989802944478395246

`A104741(A101184(n+1))`
-/

namespace A288469.P10989802944478395246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104741 (A101184 (n + 1)).toNat

end

end A288469.P10989802944478395246

namespace A288469

/-- `A104741(A101184(n+1))` -/
def P10989802944478395246.Spec : Prop :=
  ∀ n, P10989802944478395246.a n = A288469 (n + 1)

end A288469

/-! ## A288469.P7116333010470747214

`filter[A104741(n+1), A005171(#)]`
-/

namespace A288469.P7116333010470747214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104741 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A288469.P7116333010470747214

namespace A288469

/-- `filter[A104741(n+1), A005171(#)]` -/
def P7116333010470747214.Spec : Prop :=
  ∀ n, P7116333010470747214.a n = A288469 (n + 1)

end A288469

/-!
# A288470: a(n) = Sum_{k=0..n} binomial(n,k)*binomial(2*n,2*k).

The programs for A288470, there is no canonical definition to state claims against.
-/

/-! ## A288470.P8714958773200901220

`A047194(A008486(n))+1`
-/

namespace A288470.P8714958773200901220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047194 (A008486 n).toNat + 1

end

end A288470.P8714958773200901220

/-! ## A288470.P5135608255652948937

`(A178334(n)+1)*A071943(A001105(n))`
-/

namespace A288470.P5135608255652948937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A178334 n + 1) * A071943 (A001105 n).toNat

end

end A288470.P5135608255652948937

/-! ## A288470.P7200111078994102084

`(2-A000007(n))*A071943(A001105(n))`
-/

namespace A288470.P7200111078994102084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A000007 n) * A071943 (A001105 n).toNat

end

end A288470.P7200111078994102084

/-! ## A288470.P5151254864015590941

`gcd(2, A000079(n))*A071943(A001105(n))`
-/

namespace A288470.P5151254864015590941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 2 (A000079 n) : ℤ) * A071943 (A001105 n).toNat

end

end A288470.P5151254864015590941

/-! ## A288470.P4717399041862693526

`A103458(n)%3*A071943(A001105(n))`
-/

namespace A288470.P4717399041862693526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A103458 n) 3 * A071943 (A001105 n).toNat

end

end A288470.P4717399041862693526

/-! ## A288470.P252807717813232894

`A071943(A001105(n))*A117625(A178334(n))`
-/

namespace A288470.P252807717813232894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071943 (A001105 n).toNat * A117625 (A178334 n).toNat

end

end A288470.P252807717813232894

/-!
# A288471: Exponents a(1), a(2), ... such that E_8, 1 + 480*q + 61920*q^2 + ... (A008410) is equal to (1-q)^a(1) (1-q^2)^a(2) (1-q^3)^a(3) ... .

The programs for A288471, there is no canonical definition to state claims against.
-/

/-! ## A288471.P8639420728051003047

`2*A110163(n+1)`
-/

namespace A288471.P8639420728051003047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A110163 (n + 1)

end

end A288471.P8639420728051003047

/-! ## A288471.P18429973160539665590

`4*4*A289395(n+1)`
-/

namespace A288471.P18429973160539665590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (4 * A289395 (n + 1))

end

end A288471.P18429973160539665590

/-! ## A288471.P1914817229329254284

`2*(A192731(n+1)/3+8)`
-/

namespace A288471.P1914817229329254284
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * ((A192731 (n + 1) : ℚ) / 3 + 8)

end

end A288471.P1914817229329254284

/-! ## A288471.P11714516402826845582

`A110163(n+1)+A192731(n+1)/3+8`
-/

namespace A288471.P11714516402826845582
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A110163 (n + 1) : ℚ) + ((A192731 (n + 1) : ℚ) / 3 + 8)

end

end A288471.P11714516402826845582

/-! ## A288471.P1769825632804080461

`A110163(A000027(n+1))+A110163(n+1)`
-/

namespace A288471.P1769825632804080461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110163 (A000027 (n + 1)).toNat + A110163 (n + 1)

end

end A288471.P1769825632804080461

/-!
# A288473: 1-limiting word of the mapping 00->0101, 1->011, starting with 00.

The programs for A288473, there is no canonical definition to state claims against.
-/

/-! ## A288473.P12425902851314906397

`char[A288475(n+1)-1]`
-/

namespace A288473.P12425902851314906397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288475 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A288473.P12425902851314906397

/-! ## A288473.P3558079581649079789

`1-char[A288474(n+1)-1]`
-/

namespace A288473.P3558079581649079789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288474 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A288473.P3558079581649079789

/-! ## A288473.P18157946852845860374

`4%Δ[A288552(n+1)]`
-/

namespace A288473.P18157946852845860374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288552 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 4 (f1 (n + 1) - f1 n)

end

end A288473.P18157946852845860374

/-! ## A288473.P6380866635390663710

`A006505(Δ[A288552(n+1)])`
-/

namespace A288473.P6380866635390663710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288552 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006505 (f1 (n + 1) - f1 n).toNat

end

end A288473.P6380866635390663710

/-! ## A288473.P3884223541681642071

`A049820(Δ[A288552(n+1)])`
-/

namespace A288473.P3884223541681642071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288552 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049820 (f1 (n + 1) - f1 n).toNat

end

end A288473.P3884223541681642071

/-! ## A288473.P2278104958915018713

`A066602(Δ[A288552(n+1)])`
-/

namespace A288473.P2278104958915018713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288552 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066602 (f1 (n + 1) - f1 n).toNat

end

end A288473.P2278104958915018713

/-! ## A288473.P5456902396750414743

`A077608(Δ[A288552(n+1)])`
-/

namespace A288473.P5456902396750414743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288552 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077608 (f1 (n + 1) - f1 n).toNat

end

end A288473.P5456902396750414743

/-! ## A288473.P18400068387344317492

`A286059(Δ[A288552(n+1)])`
-/

namespace A288473.P18400068387344317492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288552 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286059 (f1 (n + 1) - f1 n).toNat

end

end A288473.P18400068387344317492

/-! ## A288473.P17366132680449380517

`A288520(Δ[A288552(n+1)])`
-/

namespace A288473.P17366132680449380517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288552 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288520 (f1 (n + 1) - f1 n).toNat

end

end A288473.P17366132680449380517

/-! ## A288473.P402333160358612807

`A288551(Δ[A288552(n+1)])`
-/

namespace A288473.P402333160358612807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288552 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288551 (f1 (n + 1) - f1 n).toNat

end

end A288473.P402333160358612807

/-! ## A288473.P4287948234900151161

`A288596(Δ[A288552(n+1)]²)`
-/

namespace A288473.P4287948234900151161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288552 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288596 ((f1 (n + 1) - f1 n) ^ 2).toNat

end

end A288473.P4287948234900151161

/-! ## A288473.P5035412544993340417

`A037269(Δ[A288552(n+1)]+1)`
-/

namespace A288473.P5035412544993340417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288552 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037269 (f1 (n + 1) - f1 n + 1).toNat

end

end A288473.P5035412544993340417

/-! ## A288473.P12073835669190581826

`A065803(Δ[A288552(n+1)]+1)`
-/

namespace A288473.P12073835669190581826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288552 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065803 (f1 (n + 1) - f1 n + 1).toNat

end

end A288473.P12073835669190581826

/-! ## A288473.P7173925241624409845

`A135328(Δ[A288552(n+1)]-1)-1`
-/

namespace A288473.P7173925241624409845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288552 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135328 (f1 (n + 1) - f1 n - 1).toNat - 1

end

end A288473.P7173925241624409845

/-! ## A288473.P4839718455307986719

`2-A059268(Δ[2*A288552(n+1)])`
-/

namespace A288473.P4839718455307986719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A288552 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A059268 (f1 (n + 1) - f1 n).toNat

end

end A288473.P4839718455307986719

/-! ## A288473.P10700021195599373964

`A286059(A288552(n+2)-A288552(n+1))`
-/

namespace A288473.P10700021195599373964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286059 (A288552 (n + 2) - A288552 (n + 1)).toNat

end

end A288473.P10700021195599373964

/-! ## A288473.P9698789201288687437

`A288551(A288552(n+2)-A288552(n+1))`
-/

namespace A288473.P9698789201288687437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288551 (A288552 (n + 2) - A288552 (n + 1)).toNat

end

end A288473.P9698789201288687437

/-! ## A288473.P8244760526648804362

`A319341(A288552(n+2)-A288552(n+1)+1)`
-/

namespace A288473.P8244760526648804362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319341 (A288552 (n + 2) - A288552 (n + 1) + 1).toNat

end

end A288473.P8244760526648804362

/-!
# A288474: Positions of 0 in A288473; complement of A288475.

The programs for A288474, there is no canonical definition to state claims against.
-/

/-! ## A288474.P14119420628206577538

`lt[A288473(n+1), 1]+1`
-/

namespace A288474.P14119420628206577538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288473 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A288474.P14119420628206577538

/-! ## A288474.P18206917106604879827

`lt[n*A288473(A028310(n)), n]`
-/

namespace A288474.P18206917106604879827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A288473 (A028310 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A288474.P18206917106604879827

/-! ## A288474.P9721041365530632107

`record[(n+1)/A028242((n+1)*A288473(n+1))]`
-/

namespace A288474.P9721041365530632107
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A028242 ((n + 1 : ℤ) * A288473 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A288474.P9721041365530632107

/-! ## A288474.P14975197987330446359

`eq[A000007(n), A288473(A000007(n)+n)]`
-/

namespace A288474.P14975197987330446359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288473 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A288474.P14975197987330446359

/-! ## A288474.P6286189729450876734

`A061395(p?[A288473(n+1)+A000040(n+1)])`
-/

namespace A288474.P6286189729450876734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288473 (n + 1) + A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A288474.P6286189729450876734

/-! ## A288474.P15277868516164450575

`record[A028242(2*n-A288473(n+1))]`
-/

namespace A288474.P15277868516164450575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 ((2 * n : ℤ) - A288473 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A288474.P15277868516164450575

/-! ## A288474.P10514552403410852095

`record[A028242(n-A288473(n+1)+n)]`
-/

namespace A288474.P10514552403410852095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 ((n : ℤ) - A288473 (n + 1) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A288474.P10514552403410852095

/-!
# A288475: Positions of 1 in A288473; complement of A288474.

The programs for A288475, there is no canonical definition to state claims against.
-/

/-! ## A288475.P4115277688798098840

`filter[n+1, A288473(#)]`
-/

namespace A288475.P4115277688798098840
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A288473 (f1 j) = 1) n)

end

end A288475.P4115277688798098840

/-! ## A288475.P5437070550163421667

`eq[1, A288473(n+1)]+1`
-/

namespace A288475.P5437070550163421667
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288473 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A288475.P5437070550163421667

/-! ## A288475.P11101549610372058061

`record[(n+2)*A288473(n+2)]`
-/

namespace A288475.P11101549610372058061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A288473 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A288475.P11101549610372058061

/-! ## A288475.P18098083276299189707

`lt[0, A288473(A028310(n))]`
-/

namespace A288475.P18098083276299189707
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288473 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A288475.P18098083276299189707

/-! ## A288475.P7006854447092271002

`eq[1, A288473(A000007(n)+n)]`
-/

namespace A288475.P7006854447092271002
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288473 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A288475.P7006854447092271002

/-! ## A288475.P7289834436348929000

`eq[char[A288474(n+1)], A000007(n)]`
-/

namespace A288475.P7289834436348929000
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288474 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A288475.P7289834436348929000

/-! ## A288475.P15493005947113661172

`A061395(p?[A000040(n+1)*A288473(n+1)])`
-/

namespace A288475.P15493005947113661172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A288473 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A288475.P15493005947113661172

/-! ## A288475.P6744636153335126093

`eq[3, Δ[A288552(A233583(n+1))]]`
-/

namespace A288475.P6744636153335126093
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288552 (A233583 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A288475.P6744636153335126093

/-!
# A288476: a(n) = a(n-1) + 4*a(n-2) - 2*a(n-3), where a(0) = 2, a(1) = 4, a(2) = 8.

The programs for A288476, the canonical program `A288476.P13630088843723702482` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A288476 has offset 0).

The definition of A288476 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+4*a(n-2)-2*a(n-3)` (program `A288476.P13630088843723702482`, by `A288476.P13630088843723702482.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A288476.P13630088843723702482

`a(n-1)+4*a(n-2)-2*a(n-3)` with `a(0)=2, a(1)=4, a(2)=8`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A288476

/-- `a(n-1)+4*a(n-2)-2*a(n-3)` -/
def P13630088843723702482.Spec : Prop :=
  ∀ n, P13630088843723702482.a n = A288476 n

theorem P13630088843723702482.correct : P13630088843723702482.Spec := by
  intro n
  simp only [A288476]

end A288476

/-! ## A288476.P8848790041341129449

`ogf((2+2x-4x^2)/(1-x-4x^2+2x^3))`
-/

namespace A288476.P8848790041341129449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 2, -4] [1, -1, -4, 2] n

end

end A288476.P8848790041341129449

namespace A288476

/-- `ogf((2+2x-4x^2)/(1-x-4x^2+2x^3))` -/
def P8848790041341129449.Spec : Prop :=
  ∀ n, P8848790041341129449.a n = A288476 n

end A288476

/-! ## A288476.P15036724059965782811

`A172305((C(n, n²)+1)*A289935(n))/2`
-/

namespace A288476.P15036724059965782811
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A172305 ((Nat.choose n (n ^ 2) + 1 : ℤ) * A289935 n).toNat : ℚ) / 2

end

end A288476.P15036724059965782811

namespace A288476

/-- `A172305((C(n, n²)+1)*A289935(n))/2` -/
def P15036724059965782811.Spec : Prop :=
  ∀ n, P15036724059965782811.a n = (A288476 n : ℚ)

end A288476

/-!
# A288478: Fixed point of the mapping 00->0101, 1->110, starting with 00.

The programs for A288478, there is no canonical definition to state claims against.
-/

/-! ## A288478.P9396281398083855214

`char[A288480(n+1)-1]`
-/

namespace A288478.P9396281398083855214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288480 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A288478.P9396281398083855214

/-! ## A288478.P13005384396461153091

`char[comp[A288479(n+1)-1]]`
-/

namespace A288478.P13005384396461153091
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288479 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A288478.P13005384396461153091

/-! ## A288478.P333858209460548255

`1-char[A288479(xor(1, n)+1)-1]`
-/

namespace A288478.P333858209460548255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288479 (Nat.xor 1 n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A288478.P333858209460548255

/-! ## A288478.P1346504061894490091

`1-char[A288479(Δ[n²]-n)-1]`
-/

namespace A288478.P1346504061894490091
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288479 ((f2 (n + 1) : ℤ) - (f2 n : ℤ) - (n : ℤ)).toNat - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A288478.P1346504061894490091

/-! ## A288478.P3438044901022365269

`char[comp[A288479(∑[((2-n)%4)²%3])]-1]`
-/

namespace A288478.P3438044901022365269
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.tmod (2 - (n : ℤ)) 4 ^ 2) 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288479 (∑ j ∈ Finset.range (n + 1), f3 j).toNat

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n : ℤ) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A288478.P3438044901022365269

/-! ## A288478.P16493576000469707424

`(char[A288479(n+1)-1]-1)*A057428(n)`
-/

namespace A288478.P16493576000469707424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288479 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) - 1) * A057428 n

end

end A288478.P16493576000469707424

/-! ## A288478.P16670195683392035282

`(char[A288479(A074286(n+1)+1)-1]+1)%2`
-/

namespace A288478.P16670195683392035282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288479 (A074286 (n + 1) + 1).toNat - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0) + 1) % 2

end

end A288478.P16670195683392035282

/-! ## A288478.P13890143196201186192

`(char[A288479(A002378(n)%A080036(n)+1)-1]+1)%2`
-/

namespace A288478.P13890143196201186192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288479 (Int.tmod (A002378 n) (A080036 n) + 1).toNat - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0) + 1) % 2

end

end A288478.P13890143196201186192

/-! ## A288478.P15059300846024075511

`char[comp[A023443(A288479(n+1))]]`
-/

namespace A288478.P15059300846024075511
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A288479 (n + 1)).toNat

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A288478.P15059300846024075511

/-!
# A288479: Positions of 0 in A288478; complement of A288480.

The programs for A288479, there is no canonical definition to state claims against.
-/

/-! ## A288479.P15318905879955948079

`eq[0, n*A288478(n+1)]+1`
-/

namespace A288479.P15318905879955948079
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A288478 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A288479.P15318905879955948079

/-! ## A288479.P14406696868375045600

`eq[char[A288480(n+1)], A000007(n)]`
-/

namespace A288479.P14406696868375045600
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288480 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A288479.P14406696868375045600

/-! ## A288479.P1224942177464273110

`record[or(-A288478(n+1), A000027(n+1))]`
-/

namespace A288479.P1224942177464273110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (-A288478 (n + 1)) (A000027 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A288479.P1224942177464273110

/-! ## A288479.P5590682686920052002

`record[gcd(n+1, A288478(n+1)*A288480(n+1))]`
-/

namespace A288479.P5590682686920052002
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A288478 (n + 1) * A288480 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A288479.P5590682686920052002

/-! ## A288479.P1496089223639429611

`eq[A000007(n), A288478(A000007(n)+n)]`
-/

namespace A288479.P1496089223639429611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288478 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A288479.P1496089223639429611

/-! ## A288479.P1299166401151225470

`record[or(-A288478(n+1), A008619(2*n))]`
-/

namespace A288479.P1299166401151225470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (-A288478 (n + 1)) (A008619 (2 * n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A288479.P1299166401151225470

/-! ## A288479.P3009849780494854446

`record[A008619(A005843(n))-n*A288478(n+1)]`
-/

namespace A288479.P3009849780494854446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A005843 n).toNat - (n : ℤ) * A288478 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A288479.P3009849780494854446

/-!
# A288480: Positions of 1 in A288478; complement of A288479.

The programs for A288480, there is no canonical definition to state claims against.
-/

/-! ## A288480.P16445115804842060931

`comp[A288479(n+1)-1]+1`
-/

namespace A288480.P16445115804842060931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288479 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A288480.P16445115804842060931

/-! ## A288480.P18153609693404517648

`filter[n+1, A288478(#)]`
-/

namespace A288480.P18153609693404517648
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A288478 (f1 j) = 1) n)

end

end A288480.P18153609693404517648

/-! ## A288480.P8030230724235385323

`eq[1, A288478(n+1)]+1`
-/

namespace A288480.P8030230724235385323
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288478 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A288480.P8030230724235385323

/-! ## A288480.P13521314480126936242

`record[(n+2)*A288478(n+2)]`
-/

namespace A288480.P13521314480126936242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A288478 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A288480.P13521314480126936242

/-! ## A288480.P1161423495849354276

`A020725(eq[1, A288478(n+1)])`
-/

namespace A288480.P1161423495849354276
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288478 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A288480.P1161423495849354276

/-! ## A288480.P1917349436620849671

`eq[1, A288478(gcd(n, A022144(n)))]`
-/

namespace A288480.P1917349436620849671
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288478 (Int.gcd (n : ℤ) (A022144 n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A288480.P1917349436620849671

/-! ## A288480.P6690150112599665780

`A344180(eq[1, A288478(A344180(n))])`
-/

namespace A288480.P6690150112599665780
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288478 (A344180 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344180 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A288480.P6690150112599665780

/-! ## A288480.P13711113496093228328

`eq[1, A288478(A000007(n)+n)]`
-/

namespace A288480.P13711113496093228328
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288478 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A288480.P13711113496093228328

/-!
# A288486: Square rings obtained by adding four identical cuboids from A169938, a(n) = 4*n*(n+1)*(n*(n+1)+1).

The programs for A288486, the canonical program `A288486.P17561168282274558050` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A288486 has offset 0).

The definition of A288486 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*n*(n+1)*(n*(n+1)+1)` (program `A288486.P17561168282274558050`, by `A288486.P17561168282274558050.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A288486.P17805220443647287255

`4*n*(n+1)*(n²+n+1)`
-/

namespace A288486.P17805220443647287255
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n * (n + 1) * (n ^ 2 + n + 1)

end

end A288486.P17805220443647287255

namespace A288486

/-- `4*n*(n+1)*(n²+n+1)` -/
def P17805220443647287255.Spec : Prop :=
  ∀ n, (P17805220443647287255.a n : ℤ) = A288486 n

theorem P17805220443647287255.correct : P17805220443647287255.Spec := by
  intro n
  simp only [A288486, Nat.add_sub_cancel, A288486.P17805220443647287255.a, A288486.P17561168282274558050.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A288486

/-! ## A288486.P17561168282274558050

`4*n*(n+1)*(n*(n+1)+1)`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A288486

/-- `4*n*(n+1)*(n*(n+1)+1)` -/
def P17561168282274558050.Spec : Prop :=
  ∀ n, (P17561168282274558050.a n : ℤ) = A288486 n

theorem P17561168282274558050.correct : P17561168282274558050.Spec := by
  intro n
  simp only [A288486]

end A288486

/-! ## A288486.P18416771340413344122

`A007204(n)-1`
-/

namespace A288486.P18416771340413344122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007204 n - 1

end

end A288486.P18416771340413344122

namespace A288486

/-- `A007204(n)-1` -/
def P18416771340413344122.Spec : Prop :=
  ∀ n, P18416771340413344122.a n = A288486 n

end A288486

/-! ## A288486.P11000925284429944409

`A001844(n)²-1`
-/

namespace A288486.P11000925284429944409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001844 n ^ 2 - 1

end

end A288486.P11000925284429944409

namespace A288486

/-- `A001844(n)²-1` -/
def P11000925284429944409.Spec : Prop :=
  ∀ n, P11000925284429944409.a n = A288486 n

end A288486

/-! ## A288486.P14769952393715920190

`xor(1, (∑[4*n]+1)²)`
-/

namespace A288486.P14769952393715920190
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 ((∑ j ∈ Finset.range (n + 1), f1 j + 1) ^ 2)

end

end A288486.P14769952393715920190

namespace A288486

/-- `xor(1, (∑[4*n]+1)²)` -/
def P14769952393715920190.Spec : Prop :=
  ∀ n, (P14769952393715920190.a n : ℤ) = A288486 n

end A288486

/-! ## A288486.P1701061249752489803

`A248698(n)+n`
-/

namespace A288486.P1701061249752489803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248698 n + (n : ℤ)

end

end A288486.P1701061249752489803

namespace A288486

/-- `A248698(n)+n` -/
def P1701061249752489803.Spec : Prop :=
  ∀ n, P1701061249752489803.a n = A288486 n

end A288486

/-! ## A288486.P7322498582541749033

`∑[A007900(n)]-1`
-/

namespace A288486.P7322498582541749033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007900 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A288486.P7322498582541749033

namespace A288486

/-- `∑[A007900(n)]-1` -/
def P7322498582541749033.Spec : Prop :=
  ∀ n, P7322498582541749033.a n = A288486 n

end A288486

/-! ## A288486.P11015872852215238245

`∑[4*A061804(n)]`
-/

namespace A288486.P11015872852215238245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A061804 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A288486.P11015872852215238245

namespace A288486

/-- `∑[4*A061804(n)]` -/
def P11015872852215238245.Spec : Prop :=
  ∀ n, P11015872852215238245.a n = A288486 n

end A288486

/-! ## A288486.P14240101914056236239

`A374489(n)-(n+1)`
-/

namespace A288486.P14240101914056236239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374489 n - (n + 1 : ℤ)

end

end A288486.P14240101914056236239

namespace A288486

/-- `A374489(n)-(n+1)` -/
def P14240101914056236239.Spec : Prop :=
  ∀ n, P14240101914056236239.a n = A288486 n

end A288486

/-! ## A288486.P6492065844047859603

`(A046092(n)+1)²-1`
-/

namespace A288486.P6492065844047859603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A046092 n + 1) ^ 2 - 1

end

end A288486.P6492065844047859603

namespace A288486

/-- `(A046092(n)+1)²-1` -/
def P6492065844047859603.Spec : Prop :=
  ∀ n, P6492065844047859603.a n = A288486 n

end A288486

/-! ## A288486.P7289241650634696093

`(A365206(n+1)-1)/2`
-/

namespace A288486.P7289241650634696093
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A365206 (n + 1) - 1 : ℚ) / 2

end

end A288486.P7289241650634696093

namespace A288486

/-- `(A365206(n+1)-1)/2` -/
def P7289241650634696093.Spec : Prop :=
  ∀ n, P7289241650634696093.a n = (A288486 n : ℚ)

end A288486

/-! ## A288486.P2480984341786942030

`A060300(n)+A033996(n)`
-/

namespace A288486.P2480984341786942030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060300 n + A033996 n

end

end A288486.P2480984341786942030

namespace A288486

/-- `A060300(n)+A033996(n)` -/
def P2480984341786942030.Spec : Prop :=
  ∀ n, P2480984341786942030.a n = A288486 n

end A288486

/-! ## A288486.P14840480602240428860

`lcm(A027444(n), A033996(n))`
-/

namespace A288486.P14840480602240428860
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A027444 n) (A033996 n)

end

end A288486.P14840480602240428860

namespace A288486

/-- `lcm(A027444(n), A033996(n))` -/
def P14840480602240428860.Spec : Prop :=
  ∀ n, (P14840480602240428860.a n : ℤ) = A288486 n

end A288486

/-! ## A288486.P12277384379105040406

`lcm(A110450(n), A145909(n))`
-/

namespace A288486.P12277384379105040406
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A110450 n) (A145909 n)

end

end A288486.P12277384379105040406

namespace A288486

/-- `lcm(A110450(n), A145909(n))` -/
def P12277384379105040406.Spec : Prop :=
  ∀ n, (P12277384379105040406.a n : ℤ) = A288486 n

end A288486

/-! ## A288486.P17965107280888031220

`A069129(n+1)+A057769(n)`
-/

namespace A288486.P17965107280888031220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069129 (n + 1) + A057769 n

end

end A288486.P17965107280888031220

namespace A288486

/-- `A069129(n+1)+A057769(n)` -/
def P17965107280888031220.Spec : Prop :=
  ∀ n, P17965107280888031220.a n = A288486 n

end A288486

/-! ## A288486.P8304491051080399588

`A365206(n+1)%A007204(n)`
-/

namespace A288486.P8304491051080399588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A365206 (n + 1)) (A007204 n)

end

end A288486.P8304491051080399588

namespace A288486

/-- `A365206(n+1)%A007204(n)` -/
def P8304491051080399588.Spec : Prop :=
  ∀ n, P8304491051080399588.a n = A288486 n

end A288486

/-! ## A288486.P5975959596111470713

`lcm(A168397(n+1), A384288(n))`
-/

namespace A288486.P5975959596111470713
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A168397 (n + 1)) (A384288 n)

end

end A288486.P5975959596111470713

namespace A288486

/-- `lcm(A168397(n+1), A384288(n))` -/
def P5975959596111470713.Spec : Prop :=
  ∀ n, (P5975959596111470713.a n : ℤ) = A288486 n

end A288486

/-! ## A288486.P15798196509493842575

`Δ[4*A134327(n)]`
-/

namespace A288486.P15798196509493842575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A134327 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A288486.P15798196509493842575

namespace A288486

/-- `Δ[4*A134327(n)]` -/
def P15798196509493842575.Spec : Prop :=
  ∀ n, P15798196509493842575.a n = A288486 n

end A288486

/-! ## A288486.P7623716187336573207

`∑[A124350(2*n)]`
-/

namespace A288486.P7623716187336573207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124350 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A288486.P7623716187336573207

namespace A288486

/-- `∑[A124350(2*n)]` -/
def P7623716187336573207.Spec : Prop :=
  ∀ n, P7623716187336573207.a n = A288486 n

end A288486

/-! ## A288486.P702083954032554779

`A212893(2*n)-1`
-/

namespace A288486.P702083954032554779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212893 (2 * n) - 1

end

end A288486.P702083954032554779

namespace A288486

/-- `A212893(2*n)-1` -/
def P702083954032554779.Spec : Prop :=
  ∀ n, P702083954032554779.a n = A288486 n

end A288486

/-!
# A288487: Cuboids that fit in square rings from A288486 obtaining a fifth power.

The programs for A288487, the canonical program `A288487.P821755446579765649` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A288487 has offset 0).

The definition of A288487 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A288487.P821755446579765649

`(1+n)*(1+n²)²`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A288487

/-- `(1+n)*(1+n²)²` -/
def P821755446579765649.Spec : Prop :=
  ∀ n, (P821755446579765649.a n : ℤ) = A288487 n

theorem P821755446579765649.correct : P821755446579765649.Spec := by
  intro n
  simp only [A288487]

end A288487

/-! ## A288487.P8685099473541230249

`A000584(n+1)-A288486(n)`
-/

namespace A288487.P8685099473541230249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000584 (n + 1) - A288486 n

end

end A288487.P8685099473541230249

namespace A288487

/-- `A000584(n+1)-A288486(n)` -/
def P8685099473541230249.Spec : Prop :=
  ∀ n, P8685099473541230249.a n = A288487 n

end A288487

/-! ## A288487.P4792880772989223651

`n^5+A002061(A002061(n+1))`
-/

namespace A288487.P4792880772989223651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 5 : ℤ) + A002061 (A002061 (n + 1)).toNat

end

end A288487.P4792880772989223651

namespace A288487

/-- `n^5+A002061(A002061(n+1))` -/
def P4792880772989223651.Spec : Prop :=
  ∀ n, P4792880772989223651.a n = A288487 n

end A288487

/-! ## A288487.P18170839219682453007

`(n+1)/sin(acot(n))^4`
-/

namespace A288487.P18170839219682453007
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℝ) / Real.sin (SequenceMachineLib.acot (n : ℝ)) ^ 4

end

end A288487.P18170839219682453007

namespace A288487

/-- `(n+1)/sin(acot(n))^4` -/
def P18170839219682453007.Spec : Prop :=
  ∀ n, P18170839219682453007.a n = (A288487 n : ℝ)

end A288487

/-! ## A288487.P7388981498872306227

`(n+1)/sin(acot(n))²²`
-/

namespace A288487.P7388981498872306227
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℝ) / (Real.sin (SequenceMachineLib.acot (n : ℝ)) ^ 2) ^ 2

end

end A288487.P7388981498872306227

namespace A288487

/-- `(n+1)/sin(acot(n))²²` -/
def P7388981498872306227.Spec : Prop :=
  ∀ n, P7388981498872306227.a n = (A288487 n : ℝ)

end A288487

/-! ## A288487.P7507976331273592977

`(lcm(n+1, n²)+n+1)²/(n+1)`
-/

namespace A288487.P7507976331273592977
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.lcm (n + 1) (n ^ 2) + (n + 1)) ^ 2 : ℚ) / (n + 1 : ℚ)

end

end A288487.P7507976331273592977

namespace A288487

/-- `(lcm(n+1, n²)+n+1)²/(n+1)` -/
def P7507976331273592977.Spec : Prop :=
  ∀ n, P7507976331273592977.a n = (A288487 n : ℚ)

end A288487

/-! ## A288487.P14517840229137475179

`(n+1)/∑[a(n-1)+2]^(-2)` with `a(0)=1, a(1)=1`
-/

namespace A288487.P14517840229137475179
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  f1 (n - 1) + 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) ^ (-2 : ℤ)

end

end A288487.P14517840229137475179

namespace A288487

/-- `(n+1)/∑[a(n-1)+2]^(-2)` -/
def P14517840229137475179.Spec : Prop :=
  ∀ n, P14517840229137475179.a n = (A288487 n : ℚ)

end A288487

/-! ## A288487.P11168861035116995651

`A053698(n)²/(n+1)`
-/

namespace A288487.P11168861035116995651
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053698 n ^ 2 : ℚ) / (n + 1 : ℚ)

end

end A288487.P11168861035116995651

namespace A288487

/-- `A053698(n)²/(n+1)` -/
def P11168861035116995651.Spec : Prop :=
  ∀ n, P11168861035116995651.a n = (A288487 n : ℚ)

end A288487

/-! ## A288487.P10578208935417158675

`∑[A056106(n)]²/(n+1)`
-/

namespace A288487.P10578208935417158675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056106 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℤ) : ℚ) / (n + 1 : ℚ)

end

end A288487.P10578208935417158675

namespace A288487

/-- `∑[A056106(n)]²/(n+1)` -/
def P10578208935417158675.Spec : Prop :=
  ∀ n, P10578208935417158675.a n = (A288487 n : ℚ)

end A288487

/-! ## A288487.P5988670114138421016

`(n+1)/(1/A002522(n))²`
-/

namespace A288487.P5988670114138421016
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (1 / (A002522 n : ℚ)) ^ 2

end

end A288487.P5988670114138421016

namespace A288487

/-- `(n+1)/(1/A002522(n))²` -/
def P5988670114138421016.Spec : Prop :=
  ∀ n, P5988670114138421016.a n = (A288487 n : ℚ)

end A288487

/-! ## A288487.P3623799485361243005

`(n+1)*A178390(n)-(n+1)`
-/

namespace A288487.P3623799485361243005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A178390 n - (n + 1 : ℤ)

end

end A288487.P3623799485361243005

namespace A288487

/-- `(n+1)*A178390(n)-(n+1)` -/
def P3623799485361243005.Spec : Prop :=
  ∀ n, P3623799485361243005.a n = A288487 n

end A288487

/-! ## A288487.P11913242258018798880

`A133073(n)+A053699(n)`
-/

namespace A288487.P11913242258018798880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133073 n + A053699 n

end

end A288487.P11913242258018798880

namespace A288487

/-- `A133073(n)+A053699(n)` -/
def P11913242258018798880.Spec : Prop :=
  ∀ n, P11913242258018798880.a n = A288487 n

end A288487

/-! ## A288487.P14736348542989981798

`A152031(n)+A098547(n)`
-/

namespace A288487.P14736348542989981798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152031 n + A098547 n

end

end A288487.P14736348542989981798

namespace A288487

/-- `A152031(n)+A098547(n)` -/
def P14736348542989981798.Spec : Prop :=
  ∀ n, P14736348542989981798.a n = A288487 n

end A288487

/-! ## A288487.P10413932793445560022

`A128091(n+1)+A061167(n)`
-/

namespace A288487.P10413932793445560022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128091 (n + 1) + A061167 n

end

end A288487.P10413932793445560022

namespace A288487

/-- `A128091(n+1)+A061167(n)` -/
def P10413932793445560022.Spec : Prop :=
  ∀ n, P10413932793445560022.a n = A288487 n

end A288487

/-! ## A288487.P5734403192448435412

`A053698(n)+n*A027445(n)`
-/

namespace A288487.P5734403192448435412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053698 n + (n : ℤ) * A027445 n

end

end A288487.P5734403192448435412

namespace A288487

/-- `A053698(n)+n*A027445(n)` -/
def P5734403192448435412.Spec : Prop :=
  ∀ n, P5734403192448435412.a n = A288487 n

end A288487

/-! ## A288487.P11943542806311379931

`A002522(n)+A002522(n)*A027444(n)`
-/

namespace A288487.P11943542806311379931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002522 n + A002522 n * A027444 n

end

end A288487.P11943542806311379931

namespace A288487

/-- `A002522(n)+A002522(n)*A027444(n)` -/
def P11943542806311379931.Spec : Prop :=
  ∀ n, P11943542806311379931.a n = A288487 n

end A288487

/-! ## A288487.P3345014745928578887

`A053698(n)+A000290(n)*A053698(n)`
-/

namespace A288487.P3345014745928578887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053698 n + A000290 n * A053698 n

end

end A288487.P3345014745928578887

namespace A288487

/-- `A053698(n)+A000290(n)*A053698(n)` -/
def P3345014745928578887.Spec : Prop :=
  ∀ n, P3345014745928578887.a n = A288487 n

end A288487

/-! ## A288487.P10405387181121715408

`A002522(n)*A188947(n+1)-A002522(n)`
-/

namespace A288487.P10405387181121715408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002522 n * A188947 (n + 1) - A002522 n

end

end A288487.P10405387181121715408

namespace A288487

/-- `A002522(n)*A188947(n+1)-A002522(n)` -/
def P10405387181121715408.Spec : Prop :=
  ∀ n, P10405387181121715408.a n = A288487 n

end A288487

/-! ## A288487.P17126966460434974874

`Δ[A228394(n+1)]²/(n+1)`
-/

namespace A288487.P17126966460434974874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228394 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) - f1 n) ^ 2 : ℚ) / (n + 1 : ℚ)

end

end A288487.P17126966460434974874

namespace A288487

/-- `Δ[A228394(n+1)]²/(n+1)` -/
def P17126966460434974874.Spec : Prop :=
  ∀ n, P17126966460434974874.a n = (A288487 n : ℚ)

end A288487

/-! ## A288487.P17846627960894250887

`A002061(A002061(n+1))+A000584(n)`
-/

namespace A288487.P17846627960894250887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002061 (A002061 (n + 1)).toNat + A000584 n

end

end A288487.P17846627960894250887

namespace A288487

/-- `A002061(A002061(n+1))+A000584(n)` -/
def P17846627960894250887.Spec : Prop :=
  ∀ n, P17846627960894250887.a n = A288487 n

end A288487

/-!
# A288488: Theta series of the 12-dimensional lattice of hyper-roots D_3(SU(3)).

The programs for A288488, there is no canonical definition to state claims against.
-/

/-! ## A288488.P6911393971116096148

`A278085(A001941(n)+n)`
-/

namespace A288488.P6911393971116096148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278085 (A001941 n + (n : ℤ)).toNat

end

end A288488.P6911393971116096148

/-!
# A288491: Numbers k such that k^k*prime(k) - 1 is prime.

The programs for A288491, there is no canonical definition to state claims against.
-/

/-! ## A288491.P5275689956401117973

`(∑{digits}[n, #]+1+n)*A164196(∏[gcd(2, n)]-1)`
-/

namespace A288491.P5275689956401117973
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum + 1 + n : ℕ) : ℤ) * A164196 (∏ j ∈ Finset.range (n + 1), f2 j - 1)

end

end A288491.P5275689956401117973

/-!
# A288492: Indices of terms of A288349 that are powers of 2.

The programs for A288492, the canonical program `A288492.P3900815359378501533` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A288492 has offset 1).

The definition of A288492 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A288492.P3900815359378501533

`8*a(n-1)-21*a(n-2)+22*a(n-3)-8*a(n-4)` with `a(0)=1, a(1)=2, a(2)=3, a(3)=18, a(4)=95, a(5)=440`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A288492

/-- `8*a(n-1)-21*a(n-2)+22*a(n-3)-8*a(n-4)` -/
def P3900815359378501533.Spec : Prop :=
  ∀ n, P3900815359378501533.a n = A288492 (n + 1)

theorem P3900815359378501533.correct : P3900815359378501533.Spec := by
  intro n
  simp only [A288492, Nat.add_sub_cancel]

end A288492

/-! ## A288492.P15496987908242262346

`4^(n-1)+2*a(n-1)-1-n` with `a(0)=1, a(1)=2, a(2)=3`
-/

namespace A288492.P15496987908242262346
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 2, 3] fun n a =>
  (4 : ℚ) ^ ((n : ℤ) - 1 : ℤ) + 2 * a (n - 1) - 1 - (n : ℚ)

end

end A288492.P15496987908242262346

namespace A288492

/-- `4^(n-1)+2*a(n-1)-1-n` -/
def P15496987908242262346.Spec : Prop :=
  ∀ n, P15496987908242262346.a n = (A288492 (n + 1) : ℚ)

end A288492

/-! ## A288492.P4290877787775145116

`A394960(A254667(n))+n`
-/

namespace A288492.P4290877787775145116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394960 (A254667 n).toNat + (n : ℤ)

end

end A288492.P4290877787775145116

namespace A288492

/-- `A394960(A254667(n))+n` -/
def P4290877787775145116.Spec : Prop :=
  ∀ n, P4290877787775145116.a n = A288492 (n + 1)

end A288492

/-! ## A288492.P13948596512794269448

`C(lcm(4, 2^n)-2, 2)+n`
-/

namespace A288492.P13948596512794269448
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ((Nat.lcm 4 (2 ^ n) : ℤ) - 2).toNat 2 + n

end

end A288492.P13948596512794269448

namespace A288492

/-- `C(lcm(4, 2^n)-2, 2)+n` -/
def P13948596512794269448.Spec : Prop :=
  ∀ n, (P13948596512794269448.a n : ℤ) = A288492 (n + 1)

end A288492

/-! ## A288492.P13889727015995793858

`C(floor(atan(2-n²))+2^n, 2)+n`
-/

namespace A288492.P13889727015995793858
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (⌊Real.arctan (2 - (n ^ 2 : ℤ) : ℝ)⌋ + (2 ^ n : ℤ)).toNat 2 + n

end

end A288492.P13889727015995793858

namespace A288492

/-- `C(floor(atan(2-n²))+2^n, 2)+n` -/
def P13889727015995793858.Spec : Prop :=
  ∀ n, (P13889727015995793858.a n : ℤ) = A288492 (n + 1)

end A288492

/-! ## A288492.P12830868891173124649

`C(∑[2*a(n-1)], 2)+n` with `a(0)=2, a(1)=0, a(2)=0, a(3)=4`
-/

namespace A288492.P12830868891173124649
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 0, 0, 4] fun n f1 =>
  2 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 + n

end

end A288492.P12830868891173124649

namespace A288492

/-- `C(∑[2*a(n-1)], 2)+n` -/
def P12830868891173124649.Spec : Prop :=
  ∀ n, (P12830868891173124649.a n : ℤ) = A288492 (n + 1)

end A288492

/-! ## A288492.P5164454989540987607

`C(A088041(n+2)-1, 2)+n`
-/

namespace A288492.P5164454989540987607
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A088041 (n + 2) - 1).toNat 2 + n

end

end A288492.P5164454989540987607

namespace A288492

/-- `C(A088041(n+2)-1, 2)+n` -/
def P5164454989540987607.Spec : Prop :=
  ∀ n, (P5164454989540987607.a n : ℤ) = A288492 (n + 1)

end A288492

/-!
# A288493: First differences of A006878 (record new trajectory lengths of Collatz function) (Hailstone sequence).

The programs for A288493, there is no canonical definition to state claims against.
-/

/-! ## A288493.P487047175281077488

`Δ[A006878(n+1)]`
-/

namespace A288493.P487047175281077488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006878 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A288493.P487047175281077488

/-! ## A288493.P4098059632507062427

`Δ[record[A006878(A324347(n))]]`
-/

namespace A288493.P4098059632507062427
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006878 (A324347 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A288493.P4098059632507062427

/-! ## A288493.P18222884481266558392

`A006878(n+2)-A006878(n+1)`
-/

namespace A288493.P18222884481266558392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006878 (n + 2) - A006878 (n + 1)

end

end A288493.P18222884481266558392

/-! ## A288493.P10720804755049560059

`Δ[A033492(n+1)]`
-/

namespace A288493.P10720804755049560059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033492 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A288493.P10720804755049560059

/-! ## A288493.P13505056846462088319

`abs(Δ[A033492(-xor(n, -1))])`
-/

namespace A288493.P13505056846462088319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033492 (-Int.xor (n : ℤ) (-1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A288493.P13505056846462088319

/-! ## A288493.P13839208978808891218

`Δ[record[A033492(A117910(n))]]`
-/

namespace A288493.P13839208978808891218
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033492 (A117910 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A288493.P13839208978808891218

/-! ## A288493.P4626689511907236939

`abs(Δ[A033492(A008619(2*n))])`
-/

namespace A288493.P4626689511907236939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033492 (A008619 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A288493.P4626689511907236939

/-! ## A288493.P16984942009688783381

`A033492(n+2)-A033492(n+1)`
-/

namespace A288493.P16984942009688783381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033492 (n + 2) - A033492 (n + 1)

end

end A288493.P16984942009688783381

/-! ## A288493.P15814825599788400082

`Δ[record[A337150(n+1)]]`
-/

namespace A288493.P15814825599788400082
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337150 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A288493.P15814825599788400082

/-!
# A288494: Binary representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 470", based on the 5-celled von Neumann neighborhood.

The programs for A288494, there is no canonical definition to state claims against.
-/

/-! ## A288494.P15228331157382447013

`A000042(n+1)%A289577(A028310(n))`
-/

namespace A288494.P15228331157382447013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000042 (n + 1)) (A289577 (A028310 n).toNat)

end

end A288494.P15228331157382447013

/-! ## A288494.P10950292684454496122

`A000042(n+1)*A054977(n)-A289577(n)`
-/

namespace A288494.P10950292684454496122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000042 (n + 1) * A054977 n - A289577 n

end

end A288494.P10950292684454496122

/-! ## A288494.P4714520845874734258

`A000042(A028310(n)+1)-A289577(A028310(n))`
-/

namespace A288494.P4714520845874734258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000042 (A028310 n + 1).toNat - A289577 (A028310 n).toNat

end

end A288494.P4714520845874734258

/-! ## A288494.P11735931477726735436

`A007088(A288496(n))`
-/

namespace A288494.P11735931477726735436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A288496 n).toNat

end

end A288494.P11735931477726735436

/-! ## A288494.P9301006947180147884

`A185544(2*A288496(n))`
-/

namespace A288494.P9301006947180147884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A288496 n).toNat

end

end A288494.P9301006947180147884

/-!
# A288495: Binary representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 470", based on the 5-celled von Neumann neighborhood.

The programs for A288495, there is no canonical definition to state claims against.
-/

/-! ## A288495.P10125993342969763493

`A007088(A288497(n))`
-/

namespace A288495.P10125993342969763493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A288497 n).toNat

end

end A288495.P10125993342969763493

/-! ## A288495.P10598145501045559336

`A007088(and(-A289580(n), A095121(n)))`
-/

namespace A288495.P10598145501045559336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (Int.land (-A289580 n) (A095121 n)).toNat

end

end A288495.P10598145501045559336

/-! ## A288495.P5889673128446402722

`A007088(A095121(n)+1-A289580(n))`
-/

namespace A288495.P5889673128446402722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A095121 n + (1 - A289580 n)).toNat

end

end A288495.P5889673128446402722

/-! ## A288495.P14979820203805185201

`A007088(1-(A289580(n)-A095121(n)))`
-/

namespace A288495.P14979820203805185201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (1 - (A289580 n - A095121 n)).toNat

end

end A288495.P14979820203805185201

/-! ## A288495.P9978945850059815519

`A007088(A288496(n)+A289579(n)-A289580(n))`
-/

namespace A288495.P9978945850059815519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A288496 n + (A289579 n - A289580 n)).toNat

end

end A288495.P9978945850059815519

/-!
# A288496: Decimal representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 470", based on the 5-celled von Neumann neighborhood.

The programs for A288496, there is no canonical definition to state claims against.
-/

/-! ## A288496.P6953611088204720493

`xor(record[A324821(n+1)], A289579(n))`
-/

namespace A288496.P6953611088204720493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324821 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A289579 n)

end

end A288496.P6953611088204720493

/-! ## A288496.P8049213820447403481

`xor(A289579(n), A324821(A008578(n+1)))`
-/

namespace A288496.P8049213820447403481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A289579 n) (A324821 (A008578 (n + 1)).toNat)

end

end A288496.P8049213820447403481

/-!
# A288497: Decimal representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 470", based on the 5-celled von Neumann neighborhood.

The programs for A288497, there is no canonical definition to state claims against.
-/

/-! ## A288497.P17830063008874920318

`and(-A289580(n), A095121(n))`
-/

namespace A288497.P17830063008874920318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A289580 n) (A095121 n)

end

end A288497.P17830063008874920318

/-! ## A288497.P484745411289957612

`xor(A289580(n), A324821(A008578(n+1)))`
-/

namespace A288497.P484745411289957612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A289580 n) (A324821 (A008578 (n + 1)).toNat)

end

end A288497.P484745411289957612

/-! ## A288497.P11733244486913557140

`A288496(n)+A289579(n)-A289580(n)`
-/

namespace A288497.P11733244486913557140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288496 n + (A289579 n - A289580 n)

end

end A288497.P11733244486913557140

/-! ## A288497.P3521882897553978814

`A095121(n)-and(A095121(n+1), A289580(n))`
-/

namespace A288497.P3521882897553978814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095121 n - Int.land (A095121 (n + 1)) (A289580 n)

end

end A288497.P3521882897553978814

/-! ## A288497.P2633176092451534441

`A127330(A000124(n))-A289580(n)`
-/

namespace A288497.P2633176092451534441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127330 (A000124 n).toNat - A289580 n

end

end A288497.P2633176092451534441

/-!
# A288498: Binary representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 475", based on the 5-celled von Neumann neighborhood.

The programs for A288498, there is no canonical definition to state claims against.
-/

/-! ## A288498.P13586264849943617071

`A007088(A288500(n))`
-/

namespace A288498.P13586264849943617071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A288500 n).toNat

end

end A288498.P13586264849943617071

/-! ## A288498.P2825337237594660238

`A185544(2*A288500(n))`
-/

namespace A288498.P2825337237594660238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A288500 n).toNat

end

end A288498.P2825337237594660238

/-! ## A288498.P3177515646313554522

`A185544(A288500(n)+A288500(n))`
-/

namespace A288498.P3177515646313554522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (A288500 n + A288500 n).toNat

end

end A288498.P3177515646313554522

/-!
# A288499: Binary representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 475", based on the 5-celled von Neumann neighborhood.

The programs for A288499, there is no canonical definition to state claims against.
-/

/-! ## A288499.P8461105564070561320

`A007088(A288501(n))`
-/

namespace A288499.P8461105564070561320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A288501 n).toNat

end

end A288499.P8461105564070561320

/-! ## A288499.P16526955906246451274

`A185544(2*A288501(n))`
-/

namespace A288499.P16526955906246451274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A288501 n).toNat

end

end A288499.P16526955906246451274

