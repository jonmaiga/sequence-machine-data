import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C036
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B005.C000
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
import Seq.B007.C000
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
import Seq.Opaque.C025

/-!
# A025200: a(n) = floor(floor(S3)/floor(S1)), where S3 and S1 are, respectively, the 3rd and first elementary symmetric functions of {sqrt(k), k = 1,2,...,n}.

The programs for A025200, there is no canonical definition to state claims against.
-/

/-! ## A025200.P2479330139966955191

`floor(A025194(n+3)/A025224(n+3))`
-/

namespace A025200.P2479330139966955191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A025194 (n + 3) : ℚ) / (A025224 (n + 3) : ℚ)⌋

end

end A025200.P2479330139966955191

/-! ## A025200.P17915507150036852165

`∑[record[A070824(A160109(n+1))]]`
-/

namespace A025200.P17915507150036852165
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070824 (A160109 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025200.P17915507150036852165

/-! ## A025200.P13658638372182320778

`∑[A338336(A250120(2*n))]+ceil(n/2)`
-/

namespace A025200.P13658638372182320778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338336 (A250120 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ⌈(n : ℚ) / 2⌉

end

end A025200.P13658638372182320778

/-! ## A025200.P2712988134477976646

`∑[lt[A214526(n+1), 3-A010873(n+2)]]`
-/

namespace A025200.P2712988134477976646
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214526 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - A010873 (n + 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025200.P2712988134477976646

/-!
# A025201: a(n) = floor(log(n!)).

The programs for A025201, the canonical program `A025201.P14100213630583026778` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025201 has offset 1).

The definition of A025201 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(log((n+1)!))` (program `A025201.P14100213630583026778`, by `A025201.P14100213630583026778.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A025201.P14100213630583026778

`floor(log((n+1)!))`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A025201

/-- `floor(log((n+1)!))` -/
def P14100213630583026778.Spec : Prop :=
  ∀ n, P14100213630583026778.a n = A025201 (n + 1)

theorem P14100213630583026778.correct : P14100213630583026778.Spec := by
  intro n
  simp only [A025201, Nat.add_sub_cancel]

end A025201

/-! ## A025201.P11956807621637358131

`floor(∑[log(n+1)])`
-/

namespace A025201.P11956807621637358131
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.log (n + 1 : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A025201.P11956807621637358131

namespace A025201

/-- `floor(∑[log(n+1)])` -/
def P11956807621637358131.Spec : Prop :=
  ∀ n, P11956807621637358131.a n = A025201 (n + 1)

end A025201

/-! ## A025201.P16357967338494748573

`(ceil(∑[log(n+1)])-1)%(n+1)²`
-/

namespace A025201.P16357967338494748573
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.log (n + 1 : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (⌈∑ j ∈ Finset.range (n + 1), f1 j⌉ - 1) ((n + 1) ^ 2 : ℤ)

end

end A025201.P16357967338494748573

namespace A025201

/-- `(ceil(∑[log(n+1)])-1)%(n+1)²` -/
def P16357967338494748573.Spec : Prop :=
  ∀ n, P16357967338494748573.a n = A025201 (n + 1)

end A025201

/-! ## A025201.P8101396286472855554

`A066026(n+1)+A057428(n)`
-/

namespace A025201.P8101396286472855554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066026 (n + 1) + A057428 n

end

end A025201.P8101396286472855554

namespace A025201

/-- `A066026(n+1)+A057428(n)` -/
def P8101396286472855554.Spec : Prop :=
  ∀ n, P8101396286472855554.a n = A025201 (n + 1)

end A025201

/-! ## A025201.P9355693323149433889

`A066026(n+1)-A057427(n)`
-/

namespace A025201.P9355693323149433889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066026 (n + 1) - A057427 n

end

end A025201.P9355693323149433889

namespace A025201

/-- `A066026(n+1)-A057427(n)` -/
def P9355693323149433889.Spec : Prop :=
  ∀ n, P9355693323149433889.a n = A025201 (n + 1)

end A025201

/-! ## A025201.P1636008335450065220

`A066026(n+1)-A061400(n+1)%2`
-/

namespace A025201.P1636008335450065220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066026 (n + 1) - Int.tmod (A061400 (n + 1)) 2

end

end A025201.P1636008335450065220

namespace A025201

/-- `A066026(n+1)-A061400(n+1)%2` -/
def P1636008335450065220.Spec : Prop :=
  ∀ n, P1636008335450065220.a n = A025201 (n + 1)

end A025201

/-! ## A025201.P1115664740982308543

`A050504(n+1)+A066026(n+1)-A050502(n+1)`
-/

namespace A025201.P1115664740982308543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050504 (n + 1) + (A066026 (n + 1) - A050502 (n + 1))

end

end A025201.P1115664740982308543

namespace A025201

/-- `A050504(n+1)+A066026(n+1)-A050502(n+1)` -/
def P1115664740982308543.Spec : Prop :=
  ∀ n, P1115664740982308543.a n = A025201 (n + 1)

end A025201

/-! ## A025201.P9046883258891037288

`A066026(n+1)-A105234(A290095(n))`
-/

namespace A025201.P9046883258891037288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066026 (n + 1) - A105234 (A290095 n).toNat

end

end A025201.P9046883258891037288

namespace A025201

/-- `A066026(n+1)-A105234(A290095(n))` -/
def P9046883258891037288.Spec : Prop :=
  ∀ n, P9046883258891037288.a n = A025201 (n + 1)

end A025201

/-! ## A025201.P12518404743021089947

`A066026(n+1)-A005171(A050625(n+1))`
-/

namespace A025201.P12518404743021089947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066026 (n + 1) - A005171 (A050625 (n + 1)).toNat

end

end A025201.P12518404743021089947

namespace A025201

/-- `A066026(n+1)-A005171(A050625(n+1))` -/
def P12518404743021089947.Spec : Prop :=
  ∀ n, P12518404743021089947.a n = A025201 (n + 1)

end A025201

/-! ## A025201.P9969093107790408885

`ceil(log(A013999(n)))`
-/

namespace A025201.P9969093107790408885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.log (A013999 n : ℝ)⌉

end

end A025201.P9969093107790408885

namespace A025201

/-- `ceil(log(A013999(n)))` -/
def P9969093107790408885.Spec : Prop :=
  ∀ n, P9969093107790408885.a n = A025201 (n + 1)

end A025201

/-!
# A025202: a(n) = [ 2nd elementary symmetric function of {log(k)} ], k = 2,3,...,n.

The programs for A025202, there is no canonical definition to state claims against.
-/

/-! ## A025202.P11629902627920735893

`∑[A337502(n+2)-A002865(n)]`
-/

namespace A025202.P11629902627920735893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337502 (n + 2) - A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025202.P11629902627920735893

/-! ## A025202.P6724144271832625023

`∑[A007187(n+2)]-A001522(n+2)`
-/

namespace A025202.P6724144271832625023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007187 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A001522 (n + 2)

end

end A025202.P6724144271832625023

/-! ## A025202.P4354571993183840625

`A301157(n)-A104484(A301711(n))`
-/

namespace A025202.P4354571993183840625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301157 n - A104484 (A301711 n).toNat

end

end A025202.P4354571993183840625

/-!
# A025203: a(n) = [ 3rd elementary symmetric function of {log(k)} ], k = 2,3,...,n.

The programs for A025203, there is no canonical definition to state claims against.
-/

/-! ## A025203.P15580834134010617947

`A337979(6^n+1)`
-/

namespace A025203.P15580834134010617947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337979 (6 ^ n + 1)

end

end A025203.P15580834134010617947

/-! ## A025203.P17125445788313530514

`∑[∑[A322316(6^n)]]`
-/

namespace A025203.P17125445788313530514
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322316 (6 ^ n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025203.P17125445788313530514

/-!
# A025204: [ 4th elementary symmetric function of {log(k)} ], k = 2,3,...,n.

The programs for A025204, there is no canonical definition to state claims against.
-/

/-! ## A025204.P4507642633822377720

`A137588(A060060(n))+A000384(n)`
-/

namespace A025204.P4507642633822377720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137588 (A060060 n).toNat + A000384 n

end

end A025204.P4507642633822377720

/-!
# A025205: a(n) = floor(Sum_{k=2..n} log(k)^2).

The programs for A025205, the canonical program `A025205.P2493098489353683766` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025205 has offset 2).

The definition of A025205 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1599 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A025205.P2493098489353683766

`floor(∑[log(n+2)²])`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A025205

/-- `floor(∑[log(n+2)²])` -/
def P2493098489353683766.Spec : Prop :=
  ∀ n, P2493098489353683766.a n = A025205 (n + 2)

theorem P2493098489353683766.correct : P2493098489353683766.Spec := by
  intro n
  simp only [A025205, Nat.add_sub_cancel]

end A025205

/-! ## A025205.P8346053158990418647

`∑[floor(A147875(n)/A072567(n+1))]`
-/

namespace A025205.P8346053158990418647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A147875 n : ℚ) / (A072567 (n + 1) : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025205.P8346053158990418647

namespace A025205

/-- `∑[floor(A147875(n)/A072567(n+1))]` -/
def P8346053158990418647.Spec : Prop :=
  ∀ n, P8346053158990418647.a n = A025205 (n + 2)

end A025205

/-! ## A025205.P10161060465908003731

`∑[A345379(A069251(n))]`
-/

namespace A025205.P10161060465908003731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345379 (A069251 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025205.P10161060465908003731

namespace A025205

/-- `∑[A345379(A069251(n))]` -/
def P10161060465908003731.Spec : Prop :=
  ∀ n, P10161060465908003731.a n = A025205 (n + 2)

end A025205

/-! ## A025205.P8619355707529918242

`∑[A345379(A093694(n))]`
-/

namespace A025205.P8619355707529918242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345379 (A093694 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025205.P8619355707529918242

namespace A025205

/-- `∑[A345379(A093694(n))]` -/
def P8619355707529918242.Spec : Prop :=
  ∀ n, P8619355707529918242.a n = A025205 (n + 2)

end A025205

/-! ## A025205.P3688387543093555215

`∑[A325678(∑[A069230(n+1)])]`
-/

namespace A025205.P3688387543093555215
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069230 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325678 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025205.P3688387543093555215

namespace A025205

/-- `∑[A325678(∑[A069230(n+1)])]` -/
def P3688387543093555215.Spec : Prop :=
  ∀ n, P3688387543093555215.a n = A025205 (n + 2)

end A025205

/-!
# A025206: [ Sum{(log(j)-log(i))^2} ], 2 <= i < j <= n.

The programs for A025206, there is no canonical definition to state claims against.
-/

/-! ## A025206.P15675376512355185497

`∑[A056239(∏[A136691(n)])]`
-/

namespace A025206.P15675376512355185497
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136691 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (∏ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025206.P15675376512355185497

/-! ## A025206.P3583976267504213465

`C(n, 2)-A118135(∏[gcd(2, n)]-1)`
-/

namespace A025206.P3583976267504213465
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose n 2 : ℤ) - A118135 (∏ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A025206.P3583976267504213465

/-! ## A025206.P10986688421736798546

`C(n, 2)-A124816(C(floor(n/2)+3, 3))`
-/

namespace A025206.P10986688421736798546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose n 2 : ℤ) - A124816 (Nat.choose (⌊(n : ℚ) / 2⌋ + 3).toNat 3)

end

end A025206.P10986688421736798546

/-! ## A025206.P1086068113308785470

`A091245(∑[∑[A059260(n)]])`
-/

namespace A025206.P1086068113308785470
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059260 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091245 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A025206.P1086068113308785470

/-! ## A025206.P11314783587853420886

`∑[∑[A353493(A058313(n+1))]]`
-/

namespace A025206.P11314783587853420886
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353493 (A058313 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025206.P11314783587853420886

/-!
# A025207: a(n) = [ Sum{(log(j)-log(i))^3} ], 2 <= i < j <= n.

The programs for A025207, there is no canonical definition to state claims against.
-/

/-! ## A025207.P10624882367741467895

`∑[∑[A136176(A001006(n))]]`
-/

namespace A025207.P10624882367741467895
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136176 (A001006 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025207.P10624882367741467895

/-! ## A025207.P13392212514291031241

`∑[∑[A136176(A086246(n+2))]]`
-/

namespace A025207.P13392212514291031241
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136176 (A086246 (n + 2)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025207.P13392212514291031241

/-! ## A025207.P7718395822675385048

`∑[∑[A136176(A168049(n+2))]]`
-/

namespace A025207.P7718395822675385048
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136176 (A168049 (n + 2)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025207.P7718395822675385048

/-! ## A025207.P17009279852118083494

`A135665(A289276(n+1)+A082045(n))`
-/

namespace A025207.P17009279852118083494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135665 (A289276 (n + 1) + A082045 n).toNat

end

end A025207.P17009279852118083494

/-! ## A025207.P9719132793876708125

`round((∑[A180020(∑[n]+1)]+n+1)/6)`
-/

namespace A025207.P9719132793876708125
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180020 (∑ j ∈ Finset.range (n + 1), f2 j + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((∑ j ∈ Finset.range (n + 1), f1 j + (n + 1 : ℤ) : ℤ) : ℚ) / 6)

end

end A025207.P9719132793876708125

/-!
# A025208: a(n) = [ (n-2)nd elementary symmetric function of {log(k)} ], k = 2,3,...,n.

The programs for A025208, there is no canonical definition to state claims against.
-/

/-! ## A025208.P13015807394225031541

`A024417(A347775(n)+A133494(n))`
-/

namespace A025208.P13015807394225031541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024417 (A347775 n + A133494 n).toNat

end

end A025208.P13015807394225031541

/-! ## A025208.P3118079808315384933

`A262950(eq[1, A113360(n+1)])`
-/

namespace A025208.P3118079808315384933
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113360 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262950 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A025208.P3118079808315384933

/-! ## A025208.P14233789136948304672

`A262950(lt[A113360(n+1), 2])`
-/

namespace A025208.P14233789136948304672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113360 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262950 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A025208.P14233789136948304672

/-! ## A025208.P300789654003013663

`A051286(n)+A001221(A000262(n))`
-/

namespace A025208.P300789654003013663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051286 n + A001221 (A000262 n).toNat

end

end A025208.P300789654003013663

/-!
# A025209: a(n) = floor(floor(S2)/floor(S1)), where S2 and S1 are, respectively, the 2nd and first elementary symmetric functions of {log(k)}, k = 2,3,...,n.

The programs for A025209, there is no canonical definition to state claims against.
-/

/-! ## A025209.P14304711258366120081

`floor(A025202(n+3)/A025201(n+3))`
-/

namespace A025209.P14304711258366120081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A025202 (n + 3) : ℚ) / (A025201 (n + 3) : ℚ)⌋

end

end A025209.P14304711258366120081

/-! ## A025209.P10940593402597171924

`ceil(log2(sqrt(A192634(n+1))))`
-/

namespace A025209.P10940593402597171924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (Real.sqrt (A192634 (n + 1) : ℝ))⌉

end

end A025209.P10940593402597171924

/-! ## A025209.P9906594631044257325

`ceil(log2(sqrt(A158829(n+2))))`
-/

namespace A025209.P9906594631044257325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (Real.sqrt (A158829 (n + 2) : ℝ))⌉

end

end A025209.P9906594631044257325

/-! ## A025209.P3046837443496759014

`A048766(A355902(n))`
-/

namespace A025209.P3046837443496759014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (A355902 n).toNat

end

end A025209.P3046837443496759014

/-! ## A025209.P9602509974729242895

`A048766(A306302(n)/2+n)`
-/

namespace A025209.P9602509974729242895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (SequenceMachineLib.roundAway ((A306302 n : ℚ) / 2 + (n : ℚ))).toNat

end

end A025209.P9602509974729242895

/-!
# A025210: a(n) = floor(floor(S3)/floor(S1)); where S3 and S1 are, respectively, the third and first elementary symmetric functions of {log(k)}, k = 1,2,...,n.

The programs for A025210, there is no canonical definition to state claims against.
-/

/-! ## A025210.P7510552094896705433

`floor(A025203(n+4)/A025201(n+4))`
-/

namespace A025210.P7510552094896705433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A025203 (n + 4) : ℚ) / (A025201 (n + 4) : ℚ)⌋

end

end A025210.P7510552094896705433

/-! ## A025210.P1622724509246834039

`∑[∑[A076869(A109449(2*(n+1)))]]`
-/

namespace A025210.P1622724509246834039
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076869 (A109449 (2 * (n + 1))).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025210.P1622724509246834039

/-! ## A025210.P18155162164822283463

`record[A337656(n+1)-A024317(A001006(n))]`
-/

namespace A025210.P18155162164822283463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337656 (n + 1) - A024317 (A001006 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A025210.P18155162164822283463

/-! ## A025210.P13740299010123577951

`∑[A141298(∑[A027227(n)])]`
-/

namespace A025210.P13740299010123577951
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027227 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141298 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025210.P13740299010123577951

/-! ## A025210.P432478115902161369

`∑[∑[A139352(A041877(n))]]`
-/

namespace A025210.P432478115902161369
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139352 (A041877 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025210.P432478115902161369

/-!
# A025211: Expansion of 1/((1-2x)(1-3x)(1-4x)(1-5x)).

The programs for A025211, the canonical program `A025211.P14622325333680508278` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025211 has offset 0).

The definition of A025211 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 142 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A025211.P5188009225990500175

`Δ[A056511(2*n+7)]`
-/

namespace A025211.P5188009225990500175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056511 (2 * n + 7)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A025211.P5188009225990500175

namespace A025211

/-- `Δ[A056511(2*n+7)]` -/
def P5188009225990500175.Spec : Prop :=
  ∀ n, P5188009225990500175.a n = A025211 n

end A025211

/-! ## A025211.P14622325333680508278

`a(n-1)+A016753(n)+a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A025211

/-- `a(n-1)+A016753(n)+a(n-1)` -/
def P14622325333680508278.Spec : Prop :=
  ∀ n, P14622325333680508278.a n = A025211 n

theorem P14622325333680508278.correct : P14622325333680508278.Spec := by
  intro n
  simp only [A025211]

end A025211

/-! ## A025211.P15273640426958138724

`Δ[record[A056511(A029579(n))]]`
-/

namespace A025211.P15273640426958138724
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056511 (A029579 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A025211.P15273640426958138724

namespace A025211

/-- `Δ[record[A056511(A029579(n))]]` -/
def P15273640426958138724.Spec : Prop :=
  ∀ n, P15273640426958138724.a n = A025211 n

end A025211

/-! ## A025211.P2278829712446423143

`Δ[record[A056511(A000265(n+1))]]`
-/

namespace A025211.P2278829712446423143
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056511 (A000265 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A025211.P2278829712446423143

namespace A025211

/-- `Δ[record[A056511(A000265(n+1))]]` -/
def P2278829712446423143.Spec : Prop :=
  ∀ n, P2278829712446423143.a n = A025211 n

end A025211

/-! ## A025211.P5204131373418622601

`2*a(n-1)+A005060(n+2)-Δ[A016209(n)]` with `a(0)=1`
-/

namespace A025211.P5204131373418622601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016209 n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * a (n - 1) + (A005060 (n + 2) - (f1 (n + 1) - f1 n))

end

end A025211.P5204131373418622601

namespace A025211

/-- `2*a(n-1)+A005060(n+2)-Δ[A016209(n)]` -/
def P5204131373418622601.Spec : Prop :=
  ∀ n, P5204131373418622601.a n = A025211 n

end A025211

/-! ## A025211.P13037412239237764989

`2*a(n-1)+Δ[A016209(n)]-A005061(n+2)` with `a(0)=1`
-/

namespace A025211.P13037412239237764989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016209 n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * a (n - 1) + (f1 (n + 1) - f1 n - A005061 (n + 2))

end

end A025211.P13037412239237764989

namespace A025211

/-- `2*a(n-1)+Δ[A016209(n)]-A005061(n+2)` -/
def P13037412239237764989.Spec : Prop :=
  ∀ n, P13037412239237764989.a n = A025211 n

end A025211

/-! ## A025211.P13627272268511859589

`A099111(n)+A099111(n)-A004058(n)`
-/

namespace A025211.P13627272268511859589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099111 n + (A099111 n - A004058 n)

end

end A025211.P13627272268511859589

namespace A025211

/-- `A099111(n)+A099111(n)-A004058(n)` -/
def P13627272268511859589.Spec : Prop :=
  ∀ n, P13627272268511859589.a n = A025211 n

end A025211

/-! ## A025211.P13452141349514094488

`∑[A016753(n)/A000079(n)]*A000079(n)`
-/

namespace A025211.P13452141349514094488
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016753 n : ℚ) / (A000079 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * (A000079 n : ℚ)

end

end A025211.P13452141349514094488

namespace A025211

/-- `∑[A016753(n)/A000079(n)]*A000079(n)` -/
def P13452141349514094488.Spec : Prop :=
  ∀ n, P13452141349514094488.a n = (A025211 n : ℚ)

end A025211

/-! ## A025211.P6036875726910001106

`∑[A016269(n)/A000351(n)]*A000351(n)`
-/

namespace A025211.P6036875726910001106
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016269 n : ℚ) / (A000351 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * (A000351 n : ℚ)

end

end A025211.P6036875726910001106

namespace A025211

/-- `∑[A016269(n)/A000351(n)]*A000351(n)` -/
def P6036875726910001106.Spec : Prop :=
  ∀ n, P6036875726910001106.a n = (A025211 n : ℚ)

end A025211

/-! ## A025211.P11311600736233808095

`2*A099111(n)-A004058(n)`
-/

namespace A025211.P11311600736233808095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A099111 n - A004058 n

end

end A025211.P11311600736233808095

namespace A025211

/-- `2*A099111(n)-A004058(n)` -/
def P11311600736233808095.Spec : Prop :=
  ∀ n, P11311600736233808095.a n = A025211 n

end A025211

/-!
# A025212: a(n) = floor(2nd elementary symmetric function of Sum_{j=1..k} 1/j, k = 1,2,...,n).

The programs for A025212, there is no canonical definition to state claims against.
-/

/-! ## A025212.P9348704334977679451

`∑[∑[A050430(A051924(n+1))]+n]+n`
-/

namespace A025212.P9348704334977679451
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050430 (A051924 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A025212.P9348704334977679451

/-! ## A025212.P5533158786630241754

`∑[A052905(n)-A001221(A218677(n))]`
-/

namespace A025212.P5533158786630241754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052905 n - A001221 (A218677 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025212.P5533158786630241754

/-! ## A025212.P11328187101552699624

`∑[A390677(∑[A141769(n+1)])]`
-/

namespace A025212.P11328187101552699624
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141769 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390677 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025212.P11328187101552699624

/-!
# A025213: a(n) = floor(3rd elementary symmetric function of Sum_{j=1..k} 1/j, k = 1,2,...,n).

The programs for A025213, there is no canonical definition to state claims against.
-/

/-! ## A025213.P15306980914962873384

`A126257(∑[∑[A178977(n)]])`
-/

namespace A025213.P15306980914962873384
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178977 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126257 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A025213.P15306980914962873384

/-! ## A025213.P16488241551558528230

`A126257(∑[∑[A000096(3*n+2)]])`
-/

namespace A025213.P16488241551558528230
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 (3 * n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126257 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A025213.P16488241551558528230

/-!
# A025215: a(n) = [ Sum of squares of 1 + 1/2 + ... + 1/k ], k = 1,2,...,n.

The programs for A025215, the canonical program `A025215.P16068923202669894991` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025215 has offset 1).

The definition of A025215 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5756 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A025215.P16068923202669894991

`floor(∑[∑[1/(n+1)]²])`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A025215

/-- `floor(∑[∑[1/(n+1)]²])` -/
def P16068923202669894991.Spec : Prop :=
  ∀ n, P16068923202669894991.a n = A025215 (n + 1)

theorem P16068923202669894991.correct : P16068923202669894991.Spec := by
  intro n
  simp only [A025215, Nat.add_sub_cancel]

end A025215

/-! ## A025215.P12884243452618497041

`∑[A306631(A043569(n+1)-A211666(n+1))]`
-/

namespace A025215.P12884243452618497041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306631 (A043569 (n + 1) - A211666 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025215.P12884243452618497041

namespace A025215

/-- `∑[A306631(A043569(n+1)-A211666(n+1))]` -/
def P12884243452618497041.Spec : Prop :=
  ∀ n, P12884243452618497041.a n = A025215 (n + 1)

end A025215

/-! ## A025215.P7770538324534495621

`A000196(∑[A006590(∑[3*n]+1)])`
-/

namespace A025215.P7770538324534495621
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006590 (∑ j ∈ Finset.range (n + 1), f2 j + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A025215.P7770538324534495621

namespace A025215

/-- `A000196(∑[A006590(∑[3*n]+1)])` -/
def P7770538324534495621.Spec : Prop :=
  ∀ n, P7770538324534495621.a n = A025215 (n + 1)

end A025215

/-! ## A025215.P4940961060523092292

`A000196(A211618(n)+A211422(n))`
-/

namespace A025215.P4940961060523092292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A211618 n + A211422 n).toNat

end

end A025215.P4940961060523092292

namespace A025215

/-- `A000196(A211618(n)+A211422(n))` -/
def P4940961060523092292.Spec : Prop :=
  ∀ n, P4940961060523092292.a n = A025215 (n + 1)

end A025215

/-! ## A025215.P9226852223365629546

`A135660(6*A299265(n))`
-/

namespace A025215.P9226852223365629546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135660 (6 * A299265 n).toNat

end

end A025215.P9226852223365629546

namespace A025215

/-- `A135660(6*A299265(n))` -/
def P9226852223365629546.Spec : Prop :=
  ∀ n, P9226852223365629546.a n = A025215 (n + 1)

end A025215

/-!
# A025216: [ Sum (s(j) - s(i))^2 ], 1 <= i < j <= n, where s(k) = 1 + 1/2 + ... + 1/k.

The programs for A025216, there is no canonical definition to state claims against.
-/

/-! ## A025216.P12778578975132192280

`A135660(A000217(ceil(n/acot(n))+1))`
-/

namespace A025216.P12778578975132192280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135660 (A000217 (⌈(n : ℝ) / SequenceMachineLib.acot (n : ℝ)⌉ + 1).toNat).toNat

end

end A025216.P12778578975132192280

/-! ## A025216.P1368502029042523626

`∑[∑[A119241(A001248(2*(n+2)))]]`
-/

namespace A025216.P1368502029042523626
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119241 (A001248 (2 * (n + 2))).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025216.P1368502029042523626

/-! ## A025216.P5825371295675214221

`round(log(A172477(n+1)))`
-/

namespace A025216.P5825371295675214221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.log (A172477 (n + 1) : ℝ))

end

end A025216.P5825371295675214221

/-! ## A025216.P200822037102692004

`n²-A292060(n+1)`
-/

namespace A025216.P200822037102692004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - A292060 (n + 1)

end

end A025216.P200822037102692004

/-! ## A025216.P7666665404825578933

`A000124(n)-A077267(A152929(n+1))`
-/

namespace A025216.P7666665404825578933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 n - A077267 (A152929 (n + 1)).toNat

end

end A025216.P7666665404825578933

/-!
# A025217: [ Sum (s(j) - s(i))^3 ], 1 <= i < j <= n, where s(k) = 1 + 1/2 + ... + 1/k.

The programs for A025217, there is no canonical definition to state claims against.
-/

/-! ## A025217.P5359472913979055986

`∑[A181834(∑[A067747(n+1)])]`
-/

namespace A025217.P5359472913979055986
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067747 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181834 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025217.P5359472913979055986

/-! ## A025217.P6454004313198080505

`∑[A181834(A018805(n+1)+1)]`
-/

namespace A025217.P6454004313198080505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181834 (A018805 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025217.P6454004313198080505

/-! ## A025217.P15142840450540161143

`∑[∑[A257564(A257566(2*(n+2)))]]`
-/

namespace A025217.P15142840450540161143
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257564 (A257566 (2 * (n + 2))).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025217.P15142840450540161143

/-! ## A025217.P9872718454292467067

`A322901(A173106(n+1))-comp[∑[n-1]]`
-/

namespace A025217.P9872718454292467067
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322901 (A173106 (n + 1)).toNat - (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A025217.P9872718454292467067

/-! ## A025217.P16789670704726783055

`A347697(A094705(n))`
-/

namespace A025217.P16789670704726783055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347697 (A094705 n).toNat

end

end A025217.P16789670704726783055

/-!
# A025218: a(n) = floor( Sum_{k=1..n} sqrt(k+1) ).

The programs for A025218, the canonical program `A025218.P15336161070562287722` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025218 has offset 1).

The definition of A025218 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3319 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A025218.P15336161070562287722

`floor(∑[sqrt(n+2)])`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A025218

/-- `floor(∑[sqrt(n+2)])` -/
def P15336161070562287722.Spec : Prop :=
  ∀ n, P15336161070562287722.a n = A025218 (n + 1)

theorem P15336161070562287722.correct : P15336161070562287722.Spec := by
  intro n
  simp only [A025218, Nat.add_sub_cancel]

end A025218

/-! ## A025218.P512276297777014513

`A025224(n+2)-1`
-/

namespace A025218.P512276297777014513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025224 (n + 2) - 1

end

end A025218.P512276297777014513

namespace A025218

/-- `A025224(n+2)-1` -/
def P512276297777014513.Spec : Prop :=
  ∀ n, P512276297777014513.a n = A025218 (n + 1)

end A025218

/-! ## A025218.P12520807436186231896

`record[abs(1-A025224(n))]`
-/

namespace A025218.P12520807436186231896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A025224 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A025218.P12520807436186231896

namespace A025218

/-- `record[abs(1-A025224(n))]` -/
def P12520807436186231896.Spec : Prop :=
  ∀ n, P12520807436186231896.a n = A025218 (n + 1)

end A025218

/-! ## A025218.P13851592610310646341

`∑[abs(Δ[A025224(n+1)])]`
-/

namespace A025218.P13851592610310646341
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025224 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025218.P13851592610310646341

namespace A025218

/-- `∑[abs(Δ[A025224(n+1)])]` -/
def P13851592610310646341.Spec : Prop :=
  ∀ n, P13851592610310646341.a n = A025218 (n + 1)

end A025218

/-! ## A025218.P3331402533518107762

`A174059(n+2)-2`
-/

namespace A025218.P3331402533518107762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174059 (n + 2) - 2

end

end A025218.P3331402533518107762

namespace A025218

/-- `A174059(n+2)-2` -/
def P3331402533518107762.Spec : Prop :=
  ∀ n, P3331402533518107762.a n = A025218 (n + 1)

end A025218

/-! ## A025218.P11999878817261415521

`A210826(A000040(n+1))+A025224(n+2)`
-/

namespace A025218.P11999878817261415521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210826 (A000040 (n + 1)).toNat + A025224 (n + 2)

end

end A025218.P11999878817261415521

namespace A025218

/-- `A210826(A000040(n+1))+A025224(n+2)` -/
def P11999878817261415521.Spec : Prop :=
  ∀ n, P11999878817261415521.a n = A025218 (n + 1)

end A025218

/-! ## A025218.P11506827010935846830

`record[abs(A024000(A025224(n)))]`
-/

namespace A025218.P11506827010935846830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A024000 (A025224 n).toNat|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A025218.P11506827010935846830

namespace A025218

/-- `record[abs(A024000(A025224(n)))]` -/
def P11506827010935846830.Spec : Prop :=
  ∀ n, P11506827010935846830.a n = A025218 (n + 1)

end A025218

/-!
# A025219: a(n) = [ 2nd elementary symmetric function of {sqrt(k+1)} ], k = 1,2,...,n.

The programs for A025219, there is no canonical definition to state claims against.
-/

/-! ## A025219.P7532085339318450082

`∑[A235963(∑[A152133(n+1)])]`
-/

namespace A025219.P7532085339318450082
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152133 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235963 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025219.P7532085339318450082

/-! ## A025219.P2125821303835036674

`∑[∑[A056239(A266228(2*n+3))]]`
-/

namespace A025219.P2125821303835036674
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (A266228 (2 * n + 3)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025219.P2125821303835036674

/-! ## A025219.P2730012099911404167

`∑[A239086(∑[A184008(n+1)])]`
-/

namespace A025219.P2730012099911404167
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184008 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239086 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025219.P2730012099911404167

/-! ## A025219.P10615723720630199315

`∑[∑[A001222(A000108(n+4))+n]]`
-/

namespace A025219.P10615723720630199315
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A000108 (n + 4)).toNat + (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025219.P10615723720630199315

/-!
# A025220: [ 3rd elementary symmetric function of {sqrt(k+1)} ], k = 1,2,...,n.

The programs for A025220, there is no canonical definition to state claims against.
-/

/-! ## A025220.P13515327437879834276

`∑[A006504(n+1)]-A352745(2^n)`
-/

namespace A025220.P13515327437879834276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A352745 (2 ^ n)

end

end A025220.P13515327437879834276

/-! ## A025220.P14289057426700639816

`∑[A006504(n+1)]-A192852(2^n+1)`
-/

namespace A025220.P14289057426700639816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A192852 (2 ^ n + 1)

end

end A025220.P14289057426700639816

/-!
# A025222: a(n) = [ Sum{(sqrt(j+1)-sqrt(i+1))^2} ], 1 <= i < j <= n.

The programs for A025222, there is no canonical definition to state claims against.
-/

/-! ## A025222.P4422778005303595094

`A168201(A131464(n+1)+2-n)`
-/

namespace A025222.P4422778005303595094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168201 (A131464 (n + 1) + (2 - (n : ℤ))).toNat

end

end A025222.P4422778005303595094

/-! ## A025222.P16438076658523576995

`A168201(A103532(n)+A014624(n))`
-/

namespace A025222.P16438076658523576995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168201 (A103532 n + A014624 n).toNat

end

end A025222.P16438076658523576995

/-! ## A025222.P7125819571161104961

`A168201(A171088(n)+A131464(n+1))`
-/

namespace A025222.P7125819571161104961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168201 (A171088 n + A131464 (n + 1)).toNat

end

end A025222.P7125819571161104961

/-! ## A025222.P15056177230621745307

`A168201(A168201(n)+A168201(n)+A131464(n+1))`
-/

namespace A025222.P15056177230621745307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168201 (A168201 n + (A168201 n + A131464 (n + 1))).toNat

end

end A025222.P15056177230621745307

/-! ## A025222.P940473472337759535

`round(A112231(∑[n+1]+1)/2*n/4)`
-/

namespace A025222.P940473472337759535
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A112231 (∑ j ∈ Finset.range (n + 1), f1 j + 1) : ℚ) / 2 * ((n : ℚ) / 4))

end

end A025222.P940473472337759535

/-!
# A025223: [ Sum{(sqrt(j+1)-sqrt(i+1))^3} ], 1 <= i < j <= n.

The programs for A025223, there is no canonical definition to state claims against.
-/

/-! ## A025223.P9010026685901061682

`A003056(A026804(3*n+1))-comp[3*n]`
-/

namespace A025223.P9010026685901061682
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A026804 (3 * n + 1)).toNat - (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ)

end

end A025223.P9010026685901061682

/-! ## A025223.P9181202208492044397

`A000196(∑[A281869(n+9)-A281866(n+6)])`
-/

namespace A025223.P9181202208492044397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281869 (n + 9) - A281866 (n + 6)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A025223.P9181202208492044397

/-! ## A025223.P3194764141855875562

`A000196(A037143(2*n+1)*A308930(2*(n+1)))`
-/

namespace A025223.P3194764141855875562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A037143 (2 * n + 1) * A308930 (2 * (n + 1))).toNat

end

end A025223.P3194764141855875562

/-! ## A025223.P17471175772634732683

`∑[A181020(n+1)-∑[floor(2*(n+1)^(5/11))]]`
-/

namespace A025223.P17471175772634732683
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊2 * (n + 1 : ℝ) ^ ((5 : ℚ) / 11 : ℝ)⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181020 (n + 1) - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025223.P17471175772634732683

/-! ## A025223.P10122700205041927337

`A135663(A294718(n+1))`
-/

namespace A025223.P10122700205041927337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135663 (A294718 (n + 1)).toNat

end

end A025223.P10122700205041927337

/-!
# A025224: a(n) = floor(Sum_{k=1..n} sqrt(k)).

The programs for A025224, the canonical program `A025224.P16926542939146888308` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025224 has offset 0).

The definition of A025224 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3091 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A025224.P16926542939146888308

`floor(∑[sqrt(n)])`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A025224

/-- `floor(∑[sqrt(n)])` -/
def P16926542939146888308.Spec : Prop :=
  ∀ n, P16926542939146888308.a n = A025224 n

theorem P16926542939146888308.correct : P16926542939146888308.Spec := by
  intro n
  simp only [A025224]

end A025224

/-! ## A025224.P5011595311664982985

`or(floor(∑[n^(1/2)]), char[1])`
-/

namespace A025224.P5011595311664982985
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n : ℝ) ^ ((1 : ℚ) / 2 : ℝ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋ ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A025224.P5011595311664982985

namespace A025224

/-- `or(floor(∑[n^(1/2)]), char[1])` -/
def P5011595311664982985.Spec : Prop :=
  ∀ n, P5011595311664982985.a n = A025224 n

end A025224

/-! ## A025224.P12996833141573444191

`xor(1, xor(1, floor(∑[n^(1/2)])))`
-/

namespace A025224.P12996833141573444191
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n : ℝ) ^ ((1 : ℚ) / 2 : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (Int.xor 1 ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋)

end

end A025224.P12996833141573444191

namespace A025224

/-- `xor(1, xor(1, floor(∑[n^(1/2)])))` -/
def P12996833141573444191.Spec : Prop :=
  ∀ n, P12996833141573444191.a n = A025224 n

end A025224

/-! ## A025224.P15664043954165142687

`floor(∑[n^(1/2)])%(n+1)²`
-/

namespace A025224.P15664043954165142687
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n : ℝ) ^ ((1 : ℚ) / 2 : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋ ((n + 1) ^ 2 : ℤ)

end

end A025224.P15664043954165142687

namespace A025224

/-- `floor(∑[n^(1/2)])%(n+1)²` -/
def P15664043954165142687.Spec : Prop :=
  ∀ n, P15664043954165142687.a n = A025224 n

end A025224

/-! ## A025224.P5721841139698740562

`floor(∑[n^(1/2)])/A007318((n+2)%(n+1))`
-/

namespace A025224.P5721841139698740562
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n : ℝ) ^ ((1 : ℚ) / 2 : ℝ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌊∑ j ∈ Finset.range (n + 1), f1 j⌋ : ℚ) / (A007318 ((n + 2) % (n + 1)) : ℚ)

end

end A025224.P5721841139698740562

namespace A025224

/-- `floor(∑[n^(1/2)])/A007318((n+2)%(n+1))` -/
def P5721841139698740562.Spec : Prop :=
  ∀ n, P5721841139698740562.a n = (A025224 n : ℚ)

end A025224

/-! ## A025224.P16393730700919333044

`A174059(n)-A157928(n)`
-/

namespace A025224.P16393730700919333044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174059 n - A157928 n

end

end A025224.P16393730700919333044

namespace A025224

/-- `A174059(n)-A157928(n)` -/
def P16393730700919333044.Spec : Prop :=
  ∀ n, P16393730700919333044.a n = A025224 n

end A025224

/-! ## A025224.P7178055579129606276

`A174059(n)-A000035(A019428(n))`
-/

namespace A025224.P7178055579129606276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174059 n - A000035 (A019428 n).toNat

end

end A025224.P7178055579129606276

namespace A025224

/-- `A174059(n)-A000035(A019428(n))` -/
def P7178055579129606276.Spec : Prop :=
  ∀ n, P7178055579129606276.a n = A025224 n

end A025224

/-!
# A025225: a(n) = a(1)*a(n-1) + a(2)*a(n-2) + ...+ a(n-1)*a(1) for n >= 2. Also a(n) = (2^n)*C(n-1), where C = A000108 (Catalan numbers).

The programs for A025225, the canonical program `A025225.P15758787713115943274` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025225 has offset 1).

The definition of A025225 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A052701, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A025225.P15758787713115943274

`2*A052701(n+1)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A025225

/-- `2*A052701(n+1)` -/
def P15758787713115943274.Spec : Prop :=
  ∀ n, P15758787713115943274.a n = A025225 (n + 1)

theorem P15758787713115943274.correct : P15758787713115943274.Spec := by
  intro n
  simp only [A025225, Nat.add_sub_cancel]

end A025225

/-! ## A025225.P13123112346242278372

`(2-3/(n+1))*4*a(n-1)` with `a(0)=2`
-/

namespace A025225.P13123112346242278372
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [2] fun n a =>
  (2 - 3 / (n + 1 : ℚ)) * (4 * a (n - 1))

end

end A025225.P13123112346242278372

namespace A025225

/-- `(2-3/(n+1))*4*a(n-1)` -/
def P13123112346242278372.Spec : Prop :=
  ∀ n, P13123112346242278372.a n = (A025225 (n + 1) : ℚ)

end A025225

/-! ## A025225.P14478163578347335250

`2*C(2*n, n)/(n+1)*2^n`
-/

namespace A025225.P14478163578347335250
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * ((Nat.choose (2 * n) n : ℚ) / (n + 1 : ℚ) * (2 ^ n : ℚ))

end

end A025225.P14478163578347335250

namespace A025225

/-- `2*C(2*n, n)/(n+1)*2^n` -/
def P14478163578347335250.Spec : Prop :=
  ∀ n, P14478163578347335250.a n = (A025225 (n + 1) : ℚ)

end A025225

/-! ## A025225.P8808558006365321728

`A115125(n+1)`
-/

namespace A025225.P8808558006365321728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115125 (n + 1)

end

end A025225.P8808558006365321728

namespace A025225

/-- `A115125(n+1)` -/
def P8808558006365321728.Spec : Prop :=
  ∀ n, P8808558006365321728.a n = A025225 (n + 1)

end A025225

/-! ## A025225.P13799240765824578228

`2*A151374(n)`
-/

namespace A025225.P13799240765824578228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A151374 n

end

end A025225.P13799240765824578228

namespace A025225

/-- `2*A151374(n)` -/
def P13799240765824578228.Spec : Prop :=
  ∀ n, P13799240765824578228.a n = A025225 (n + 1)

end A025225

/-! ## A025225.P15112139288054867980

`abs(Δ[A114191(n)])`
-/

namespace A025225.P15112139288054867980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114191 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A025225.P15112139288054867980

namespace A025225

/-- `abs(Δ[A114191(n)])` -/
def P15112139288054867980.Spec : Prop :=
  ∀ n, P15112139288054867980.a n = A025225 (n + 1)

end A025225

/-! ## A025225.P10691378208900911611

`record[2*A110510(n)]`
-/

namespace A025225.P10691378208900911611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A110510 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A025225.P10691378208900911611

namespace A025225

/-- `record[2*A110510(n)]` -/
def P10691378208900911611.Spec : Prop :=
  ∀ n, P10691378208900911611.a n = A025225 (n + 1)

end A025225

/-! ## A025225.P2738043666631478203

`record[A115125(abs(1-n))]`
-/

namespace A025225.P2738043666631478203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115125 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A025225.P2738043666631478203

namespace A025225

/-- `record[A115125(abs(1-n))]` -/
def P2738043666631478203.Spec : Prop :=
  ∀ n, P2738043666631478203.a n = A025225 (n + 1)

end A025225

/-! ## A025225.P9195796844303960856

`Δ[2*∑[A052701(n)]]`
-/

namespace A025225.P9195796844303960856
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052701 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A025225.P9195796844303960856

namespace A025225

/-- `Δ[2*∑[A052701(n)]]` -/
def P9195796844303960856.Spec : Prop :=
  ∀ n, P9195796844303960856.a n = A025225 (n + 1)

end A025225

/-! ## A025225.P10726002302480161746

`2^(n+1)*A000108(n)`
-/

namespace A025225.P10726002302480161746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) : ℤ) * A000108 n

end

end A025225.P10726002302480161746

namespace A025225

/-- `2^(n+1)*A000108(n)` -/
def P10726002302480161746.Spec : Prop :=
  ∀ n, P10726002302480161746.a n = A025225 (n + 1)

end A025225

/-! ## A025225.P15472047760298249293

`2^(n+1)*A120588(n+1)`
-/

namespace A025225.P15472047760298249293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) : ℤ) * A120588 (n + 1)

end

end A025225.P15472047760298249293

namespace A025225

/-- `2^(n+1)*A120588(n+1)` -/
def P15472047760298249293.Spec : Prop :=
  ∀ n, P15472047760298249293.a n = A025225 (n + 1)

end A025225

/-! ## A025225.P387178232327957422

`A064062(n)+A062992(n)`
-/

namespace A025225.P387178232327957422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064062 n + A062992 n

end

end A025225.P387178232327957422

namespace A025225

/-- `A064062(n)+A062992(n)` -/
def P387178232327957422.Spec : Prop :=
  ∀ n, P387178232327957422.a n = A025225 (n + 1)

end A025225

/-! ## A025225.P8975142764778107470

`A064062(n+1)+A064062(n)`
-/

namespace A025225.P8975142764778107470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064062 (n + 1) + A064062 n

end

end A025225.P8975142764778107470

namespace A025225

/-- `A064062(n+1)+A064062(n)` -/
def P8975142764778107470.Spec : Prop :=
  ∀ n, P8975142764778107470.a n = A025225 (n + 1)

end A025225

/-! ## A025225.P11537043149163925311

`A151374(n)+A052701(n+1)`
-/

namespace A025225.P11537043149163925311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151374 n + A052701 (n + 1)

end

end A025225.P11537043149163925311

namespace A025225

/-- `A151374(n)+A052701(n+1)` -/
def P11537043149163925311.Spec : Prop :=
  ∀ n, P11537043149163925311.a n = A025225 (n + 1)

end A025225

/-! ## A025225.P12630621238737108046

`A192479(n+1)+A186997(n)`
-/

namespace A025225.P12630621238737108046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192479 (n + 1) + A186997 n

end

end A025225.P12630621238737108046

namespace A025225

/-- `A192479(n+1)+A186997(n)` -/
def P12630621238737108046.Spec : Prop :=
  ∀ n, P12630621238737108046.a n = A025225 (n + 1)

end A025225

/-! ## A025225.P15329814811335032988

`A000108(n)*A000079(n+1)`
-/

namespace A025225.P15329814811335032988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n * A000079 (n + 1)

end

end A025225.P15329814811335032988

namespace A025225

/-- `A000108(n)*A000079(n+1)` -/
def P15329814811335032988.Spec : Prop :=
  ∀ n, P15329814811335032988.a n = A025225 (n + 1)

end A025225

/-! ## A025225.P10074431650781881798

`A000108(n)*A155559(n+1)`
-/

namespace A025225.P10074431650781881798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n * A155559 (n + 1)

end

end A025225.P10074431650781881798

namespace A025225

/-- `A000108(n)*A155559(n+1)` -/
def P10074431650781881798.Spec : Prop :=
  ∀ n, P10074431650781881798.a n = A025225 (n + 1)

end A025225

/-! ## A025225.P4353148283630256080

`A000108(n)*A171559(n+1)`
-/

namespace A025225.P4353148283630256080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n * A171559 (n + 1)

end

end A025225.P4353148283630256080

namespace A025225

/-- `A000108(n)*A171559(n+1)` -/
def P4353148283630256080.Spec : Prop :=
  ∀ n, P4353148283630256080.a n = A025225 (n + 1)

end A025225

/-! ## A025225.P15703797335247458873

`A000108(n)*A011782(n+2)`
-/

namespace A025225.P15703797335247458873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n * A011782 (n + 2)

end

end A025225.P15703797335247458873

namespace A025225

/-- `A000108(n)*A011782(n+2)` -/
def P15703797335247458873.Spec : Prop :=
  ∀ n, P15703797335247458873.a n = A025225 (n + 1)

end A025225

/-!
# A025226: a(n) = a(1)*a(n-1) + a(2)*a(n-2) + ...+ a(n-1)*a(1) for n >= 2. Also a(n) = 3^n*C(n-1), where C = A000108 (Catalan numbers).

The programs for A025226, the canonical program `A025226.P14671766639672924576` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025226 has offset 1).

The definition of A025226 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A025226.P14671766639672924576

`3^(n+1)*A000108(n)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A025226

/-- `3^(n+1)*A000108(n)` -/
def P14671766639672924576.Spec : Prop :=
  ∀ n, P14671766639672924576.a n = A025226 (n + 1)

theorem P14671766639672924576.correct : P14671766639672924576.Spec := by
  intro n
  simp only [A025226, Nat.add_sub_cancel]

end A025226

/-! ## A025226.P15741834605141823776

`3*(4-6/(n+1))*a(n-1)` with `a(0)=3`
-/

namespace A025226.P15741834605141823776
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [3] fun n a =>
  3 * ((4 - 6 / (n + 1 : ℚ)) * a (n - 1))

end

end A025226.P15741834605141823776

namespace A025226

/-- `3*(4-6/(n+1))*a(n-1)` -/
def P15741834605141823776.Spec : Prop :=
  ∀ n, P15741834605141823776.a n = (A025226 (n + 1) : ℚ)

end A025226

/-! ## A025226.P8978224461943198273

`3*3^n/(n+1)*C(2*n, n)`
-/

namespace A025226.P8978224461943198273
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  3 * ((3 ^ n : ℚ) / (n + 1 : ℚ) * (Nat.choose (2 * n) n : ℚ))

end

end A025226.P8978224461943198273

namespace A025226

/-- `3*3^n/(n+1)*C(2*n, n)` -/
def P8978224461943198273.Spec : Prop :=
  ∀ n, P8978224461943198273.a n = (A025226 (n + 1) : ℚ)

end A025226

/-! ## A025226.P15778816933742853033

`3*A005159(n)`
-/

namespace A025226.P15778816933742853033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A005159 n

end

end A025226.P15778816933742853033

namespace A025226

/-- `3*A005159(n)` -/
def P15778816933742853033.Spec : Prop :=
  ∀ n, P15778816933742853033.a n = A025226 (n + 1)

end A025226

/-! ## A025226.P11552680185862132047

`3*A156909(2*(n+1))`
-/

namespace A025226.P11552680185862132047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A156909 (2 * (n + 1))

end

end A025226.P11552680185862132047

namespace A025226

/-- `3*A156909(2*(n+1))` -/
def P11552680185862132047.Spec : Prop :=
  ∀ n, P11552680185862132047.a n = A025226 (n + 1)

end A025226

/-! ## A025226.P14215858150879026398

`3^(n+1)*A120588(n+1)`
-/

namespace A025226.P14215858150879026398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ (n + 1) : ℤ) * A120588 (n + 1)

end

end A025226.P14215858150879026398

namespace A025226

/-- `3^(n+1)*A120588(n+1)` -/
def P14215858150879026398.Spec : Prop :=
  ∀ n, P14215858150879026398.a n = A025226 (n + 1)

end A025226

/-! ## A025226.P16920557814443937524

`3^(n+1)*A028304(2*n)`
-/

namespace A025226.P16920557814443937524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ (n + 1) : ℤ) * A028304 (2 * n)

end

end A025226.P16920557814443937524

namespace A025226

/-- `3^(n+1)*A028304(2*n)` -/
def P16920557814443937524.Spec : Prop :=
  ∀ n, P16920557814443937524.a n = A025226 (n + 1)

end A025226

/-! ## A025226.P10829650616301258221

`3^(n+1)*A097331(2*n+1)`
-/

namespace A025226.P10829650616301258221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ (n + 1) : ℤ) * A097331 (2 * n + 1)

end

end A025226.P10829650616301258221

namespace A025226

/-- `3^(n+1)*A097331(2*n+1)` -/
def P10829650616301258221.Spec : Prop :=
  ∀ n, P10829650616301258221.a n = A025226 (n + 1)

end A025226

/-! ## A025226.P5140865909237688835

`9*A000108(2*n-n)*3^(n-1)`
-/

namespace A025226.P5140865909237688835
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (9 * A000108 (2 * n - n) : ℚ) * (3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)

end

end A025226.P5140865909237688835

namespace A025226

/-- `9*A000108(2*n-n)*3^(n-1)` -/
def P5140865909237688835.Spec : Prop :=
  ∀ n, P5140865909237688835.a n = (A025226 (n + 1) : ℚ)

end A025226

/-! ## A025226.P12548176236235235123

`A000108(n)*A000244(n+1)`
-/

namespace A025226.P12548176236235235123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n * A000244 (n + 1)

end

end A025226.P12548176236235235123

namespace A025226

/-- `A000108(n)*A000244(n+1)` -/
def P12548176236235235123.Spec : Prop :=
  ∀ n, P12548176236235235123.a n = A025226 (n + 1)

end A025226

/-!
# A025227: a(n) = a(1)*a(n-1) + a(2)*a(n-2) + ... + a(n-1)*a(1) for n >= 3.

The programs for A025227, there is no canonical definition to state claims against.
-/

/-! ## A025227.P11712291295758837582

`A052709(A028310(n)-1)+A052709(n)`
-/

namespace A025227.P11712291295758837582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052709 (A028310 n - 1).toNat + A052709 n

end

end A025227.P11712291295758837582

/-! ## A025227.P1518188705707046597

`A052709(A004273(n)-n)+A052709(n)`
-/

namespace A025227.P1518188705707046597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052709 (A004273 n - (n : ℤ)).toNat + A052709 n

end

end A025227.P1518188705707046597

/-! ## A025227.P10878975721535793986

`floor(A179190(n)/2)`
-/

namespace A025227.P10878975721535793986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A179190 n : ℚ) / 2⌋

end

end A025227.P10878975721535793986

/-! ## A025227.P17271911215625490972

`(A179190(n)-A000007(n))/2`
-/

namespace A025227.P17271911215625490972
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A179190 n - A000007 n : ℚ) / 2

end

end A025227.P17271911215625490972

/-! ## A025227.P3254228476040924966

`A179190(n)-A179190(n)/A036453(n+1)`
-/

namespace A025227.P3254228476040924966
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A179190 n : ℚ) - (A179190 n : ℚ) / (A036453 (n + 1) : ℚ)

end

end A025227.P3254228476040924966

/-! ## A025227.P52268096918697225

`A179190(n)/A006139(n)*A179191(n)`
-/

namespace A025227.P52268096918697225
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A179190 n : ℚ) / (A006139 n : ℚ) * (A179191 n : ℚ)

end

end A025227.P52268096918697225

/-!
# A025228: a(n) = a(1)*a(n-1) + a(2)*a(n-2) + ...+ a(n-1)*a(1) for n >= 3, with initial terms 2,1.

The programs for A025228, there is no canonical definition to state claims against.
-/

/-! ## A025228.P6894272459681183746

`A052179(A161680(n))+(2^n)%2`
-/

namespace A025228.P6894272459681183746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052179 (A161680 n).toNat + ((2 ^ n % 2 : ℕ) : ℤ)

end

end A025228.P6894272459681183746

/-! ## A025228.P10638325191434871693

`A052179(A161680(n))+A000007(n)`
-/

namespace A025228.P10638325191434871693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052179 (A161680 n).toNat + A000007 n

end

end A025228.P10638325191434871693

/-! ## A025228.P11858317838880545037

`A105523(2*n)+A052179(A161680(n))`
-/

namespace A025228.P11858317838880545037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105523 (2 * n) + A052179 (A161680 n).toNat

end

end A025228.P11858317838880545037

/-! ## A025228.P17158986364764509795

`A210628(2*n)+A052179(A161680(n))`
-/

namespace A025228.P17158986364764509795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210628 (2 * n) + A052179 (A161680 n).toNat

end

end A025228.P17158986364764509795

/-! ## A025228.P15707461960990026492

`A006318(n+1)/A090442(n+1)*A068766(n)`
-/

namespace A025228.P15707461960990026492
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006318 (n + 1) : ℚ) / (A090442 (n + 1) : ℚ) * (A068766 n : ℚ)

end

end A025228.P15707461960990026492

/-! ## A025228.P6794639843668099026

`A247495(A052905(n)+9)`
-/

namespace A025228.P6794639843668099026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247495 (A052905 n + 9).toNat

end

end A025228.P6794639843668099026

/-! ## A025228.P3171999978026423836

`A247495(A055999(n)+10)`
-/

namespace A025228.P3171999978026423836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247495 (A055999 n + 10).toNat

end

end A025228.P3171999978026423836

/-! ## A025228.P10506674786974810226

`A247495(A166136(n+2)-2)`
-/

namespace A025228.P10506674786974810226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247495 (A166136 (n + 2) - 2).toNat

end

end A025228.P10506674786974810226

/-! ## A025228.P8877518153654416500

`A247495(A166136(n+1)+1+n)`
-/

namespace A025228.P8877518153654416500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247495 (A166136 (n + 1) + 1 + (n : ℤ)).toNat

end

end A025228.P8877518153654416500

/-!
# A025229: a(n) = a(1)*a(n-1) + a(2)*a(n-2) + ...+ a(n-1)*a(1) for n >= 3, with initial terms 1,3.

The programs for A025229, there is no canonical definition to state claims against.
-/

/-! ## A025229.P10526765606682577569

`A025239(n+1)-A000007(n)`
-/

namespace A025229.P10526765606682577569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025239 (n + 1) - A000007 n

end

end A025229.P10526765606682577569

/-! ## A025229.P7421667856126528722

`A025239(n+1)/A054977(n)`
-/

namespace A025229.P7421667856126528722
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025239 (n + 1) : ℚ) / (A054977 n : ℚ)

end

end A025229.P7421667856126528722

/-! ## A025229.P3008655986702727341

`A025239(n+1)/A000038(n)!`
-/

namespace A025229.P3008655986702727341
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025239 (n + 1) : ℚ) / (Nat.factorial (A000038 n).toNat : ℚ)

end

end A025229.P3008655986702727341

/-! ## A025229.P15827468054768673345

`A025239(n+1)-A003945(n)%3`
-/

namespace A025229.P15827468054768673345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025239 (n + 1) - Int.tmod (A003945 n) 3

end

end A025229.P15827468054768673345

/-! ## A025229.P2599452436771546156

`A025239(n+1)^(A002380(n)%2)`
-/

namespace A025229.P2599452436771546156
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025239 (n + 1) : ℚ) ^ (Int.tmod (A002380 n) 2 : ℤ)

end

end A025229.P2599452436771546156

/-! ## A025229.P16185589568902988255

`A025239(n+1)-A008683((n+1)²)`
-/

namespace A025229.P16185589568902988255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025239 (n + 1) - A008683 ((n + 1) ^ 2)

end

end A025229.P16185589568902988255

/-! ## A025229.P4968505001629893449

`A025239(n+1)-A278501(n+1)%2`
-/

namespace A025229.P4968505001629893449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025239 (n + 1) - Int.tmod (A278501 (n + 1)) 2

end

end A025229.P4968505001629893449

/-! ## A025229.P5863283221351679492

`A025239(n+1)-∑{d}[n+1, A008683(#)]`
-/

namespace A025229.P5863283221351679492
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025239 (n + 1) - ∑ d ∈ Nat.divisors (f1 n), A008683 d

end

end A025229.P5863283221351679492

/-! ## A025229.P10517620002787424126

`A025239(n+1)-A003982(A000217(n))`
-/

namespace A025229.P10517620002787424126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025239 (n + 1) - A003982 (A000217 n).toNat

end

end A025229.P10517620002787424126

/-! ## A025229.P7881452431703061716

`A025239(n+1)-A000035(A008458(n))`
-/

namespace A025229.P7881452431703061716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025239 (n + 1) - A000035 (A008458 n).toNat

end

end A025229.P7881452431703061716

/-! ## A025229.P3132927867778531641

`A025239(n+1)-A000035(A008574(n))`
-/

namespace A025229.P3132927867778531641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025239 (n + 1) - A000035 (A008574 n).toNat

end

end A025229.P3132927867778531641

/-! ## A025229.P4575902718075239446

`A025239(n+1)-A082116(A008706(n))`
-/

namespace A025229.P4575902718075239446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025239 (n + 1) - A082116 (A008706 n).toNat

end

end A025229.P4575902718075239446

/-! ## A025229.P1375638328202594213

`A025239(n+1)/A266303(A033715(n))`
-/

namespace A025229.P1375638328202594213
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025239 (n + 1) : ℚ) / (A266303 (A033715 n).toNat : ℚ)

end

end A025229.P1375638328202594213

/-! ## A025229.P11653369574186094154

`A025239(n+1)-A000035(A034444(n+1))`
-/

namespace A025229.P11653369574186094154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025239 (n + 1) - A000035 (A034444 (n + 1)).toNat

end

end A025229.P11653369574186094154

/-! ## A025229.P5329518550144432645

`A025239(n+1)-A000035(A000010(n+2))`
-/

namespace A025229.P5329518550144432645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025239 (n + 1) - A000035 (A000010 (n + 2)).toNat

end

end A025229.P5329518550144432645

/-! ## A025229.P1752409619362899332

`A025239(n+1)/A014963(A014574(n+1))`
-/

namespace A025229.P1752409619362899332
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025239 (n + 1) : ℚ) / (A014963 (A014574 (n + 1)).toNat : ℚ)

end

end A025229.P1752409619362899332

/-! ## A025229.P18442297994676529812

`A025239(n+1)/A073707(Δ[A060018(n+2)])`
-/

namespace A025229.P18442297994676529812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060018 (n + 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025239 (n + 1) : ℚ) / (A073707 (f1 (n + 1) - f1 n).toNat : ℚ)

end

end A025229.P18442297994676529812

/-!
# A025230: a(n) = a(1)*a(n-1) + a(2)*a(n-2) + ...+ a(n-1)*a(1) for n >= 3, with initial terms 3,1.

The programs for A025230, there is no canonical definition to state claims against.
-/

/-! ## A025230.P17258364172944222086

`A104498(n+1)+2*A104497(n)`
-/

namespace A025230.P17258364172944222086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104498 (n + 1) + 2 * A104497 n

end

end A025230.P17258364172944222086

/-! ## A025230.P18038194866992934178

`A247495(A166136(n+4))-A000038(n)`
-/

namespace A025230.P18038194866992934178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247495 (A166136 (n + 4)).toNat - A000038 n

end

end A025230.P18038194866992934178

/-! ## A025230.P6383840163003448109

`A247495(A000217(n+5)+6)-A000038(n)`
-/

namespace A025230.P6383840163003448109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247495 (A000217 (n + 5) + 6).toNat - A000038 n

end

end A025230.P6383840163003448109

/-!
# A025231: a(n) = a(1)*a(n-1) + a(2)*a(n-2) + ...+ a(n-1)*a(1) for n >= 3, with initial terms 2,3.

The programs for A025231, the canonical program `A025231.P3025805724805601143` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025231 has offset 1).

The definition of A025231 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 119 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A025231.P9150323313297536061

`floor(A047891(n+1)+acot(n))`
-/

namespace A025231.P9150323313297536061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A047891 (n + 1) : ℝ) + SequenceMachineLib.acot (n : ℝ)⌋

end

end A025231.P9150323313297536061

namespace A025231

/-- `floor(A047891(n+1)+acot(n))` -/
def P9150323313297536061.Spec : Prop :=
  ∀ n, P9150323313297536061.a n = A025231 (n + 1)

end A025231

/-! ## A025231.P3025805724805601143

`A047891(n+1)+A000007(n)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A025231

/-- `A047891(n+1)+A000007(n)` -/
def P3025805724805601143.Spec : Prop :=
  ∀ n, P3025805724805601143.a n = A025231 (n + 1)

theorem P3025805724805601143.correct : P3025805724805601143.Spec := by
  intro n
  simp only [A025231, Nat.add_sub_cancel]

end A025231

/-! ## A025231.P7312586198507308176

`A047891(n+1)+char[A185270(n)]`
-/

namespace A025231.P7312586198507308176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185270 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047891 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A025231.P7312586198507308176

namespace A025231

/-- `A047891(n+1)+char[A185270(n)]` -/
def P7312586198507308176.Spec : Prop :=
  ∀ n, P7312586198507308176.a n = A025231 (n + 1)

end A025231

/-! ## A025231.P11312417656886922946

`lcm(Δ[A052938(n)], A047891(n+1))`
-/

namespace A025231.P11312417656886922946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052938 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (f1 (n + 1) - f1 n) (A047891 (n + 1))

end

end A025231.P11312417656886922946

namespace A025231

/-- `lcm(Δ[A052938(n)], A047891(n+1))` -/
def P11312417656886922946.Spec : Prop :=
  ∀ n, (P11312417656886922946.a n : ℤ) = A025231 (n + 1)

end A025231

/-! ## A025231.P2524583005210635518

`A105523(2*n)+A047891(n+1)`
-/

namespace A025231.P2524583005210635518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105523 (2 * n) + A047891 (n + 1)

end

end A025231.P2524583005210635518

namespace A025231

/-- `A105523(2*n)+A047891(n+1)` -/
def P2524583005210635518.Spec : Prop :=
  ∀ n, P2524583005210635518.a n = A025231 (n + 1)

end A025231

/-! ## A025231.P17702975853721087924

`A047891(n+1)+A008966((n+1)²)`
-/

namespace A025231.P17702975853721087924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047891 (n + 1) + A008966 ((n + 1) ^ 2)

end

end A025231.P17702975853721087924

namespace A025231

/-- `A047891(n+1)+A008966((n+1)²)` -/
def P17702975853721087924.Spec : Prop :=
  ∀ n, P17702975853721087924.a n = A025231 (n + 1)

end A025231

/-! ## A025231.P153259832572542059

`A047891(n+1)+A033683(A002652(n))`
-/

namespace A025231.P153259832572542059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047891 (n + 1) + A033683 (A002652 n).toNat

end

end A025231.P153259832572542059

namespace A025231

/-- `A047891(n+1)+A033683(A002652(n))` -/
def P153259832572542059.Spec : Prop :=
  ∀ n, P153259832572542059.a n = A025231 (n + 1)

end A025231

/-! ## A025231.P8654188017318342359

`A047891(n+1)+A033683(A183226(n))`
-/

namespace A025231.P8654188017318342359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047891 (n + 1) + A033683 (A183226 n).toNat

end

end A025231.P8654188017318342359

namespace A025231

/-- `A047891(n+1)+A033683(A183226(n))` -/
def P8654188017318342359.Spec : Prop :=
  ∀ n, P8654188017318342359.a n = A025231 (n + 1)

end A025231

/-! ## A025231.P11368518204050981586

`A014963(A016825(n))*A047891(n+1)`
-/

namespace A025231.P11368518204050981586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A016825 n).toNat * A047891 (n + 1)

end

end A025231.P11368518204050981586

namespace A025231

/-- `A014963(A016825(n))*A047891(n+1)` -/
def P11368518204050981586.Spec : Prop :=
  ∀ n, P11368518204050981586.a n = A025231 (n + 1)

end A025231

/-! ## A025231.P15030280009866654970

`A014963(A017545(n))*A047891(n+1)`
-/

namespace A025231.P15030280009866654970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A017545 n).toNat * A047891 (n + 1)

end

end A025231.P15030280009866654970

namespace A025231

/-- `A014963(A017545(n))*A047891(n+1)` -/
def P15030280009866654970.Spec : Prop :=
  ∀ n, P15030280009866654970.a n = A025231 (n + 1)

end A025231

/-! ## A025231.P18280233830381713275

`A047891(n+1)+A010051(A001747(n+1))`
-/

namespace A025231.P18280233830381713275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047891 (n + 1) + A010051 (A001747 (n + 1)).toNat

end

end A025231.P18280233830381713275

namespace A025231

/-- `A047891(n+1)+A010051(A001747(n+1))` -/
def P18280233830381713275.Spec : Prop :=
  ∀ n, P18280233830381713275.a n = A025231 (n + 1)

end A025231

/-! ## A025231.P12643272334166817402

`A336040(A000040(n+1))+A047891(n+1)`
-/

namespace A025231.P12643272334166817402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336040 (A000040 (n + 1)).toNat + A047891 (n + 1)

end

end A025231.P12643272334166817402

namespace A025231

/-- `A336040(A000040(n+1))+A047891(n+1)` -/
def P12643272334166817402.Spec : Prop :=
  ∀ n, P12643272334166817402.a n = A025231 (n + 1)

end A025231

/-! ## A025231.P11041723333024395105

`A336040(A154880(n+1))+A047891(n+1)`
-/

namespace A025231.P11041723333024395105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336040 (A154880 (n + 1)).toNat + A047891 (n + 1)

end

end A025231.P11041723333024395105

namespace A025231

/-- `A336040(A154880(n+1))+A047891(n+1)` -/
def P11041723333024395105.Spec : Prop :=
  ∀ n, P11041723333024395105.a n = A025231 (n + 1)

end A025231

/-! ## A025231.P6810504328089223425

`2/(n+1)*A054122(n)`
-/

namespace A025231.P6810504328089223425
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (n + 1 : ℚ) * (A054122 n : ℚ)

end

end A025231.P6810504328089223425

namespace A025231

/-- `2/(n+1)*A054122(n)` -/
def P6810504328089223425.Spec : Prop :=
  ∀ n, P6810504328089223425.a n = (A025231 (n + 1) : ℚ)

end A025231

/-! ## A025231.P7959257709006140626

`A336040(A034757(n+1))+A047891(n+1)`
-/

namespace A025231.P7959257709006140626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336040 (A034757 (n + 1)).toNat + A047891 (n + 1)

end

end A025231.P7959257709006140626

namespace A025231

/-- `A336040(A034757(n+1))+A047891(n+1)` -/
def P7959257709006140626.Spec : Prop :=
  ∀ n, P7959257709006140626.a n = A025231 (n + 1)

end A025231

/-!
# A025234: An L-tile is a 2 X 2 square with the upper 1 X 1 subsquare removed; no rotations are allowed. a(n) = number of tilings of a 4 X n rectangle using tiles that are either 1 X 1 squares or L-tiles.

The programs for A025234, there is no canonical definition to state claims against.
-/

/-! ## A025234.P5443550085647016331

`A360926(A094539(n))+A325165(n)`
-/

namespace A025234.P5443550085647016331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360926 (A094539 n).toNat + A325165 n

end

end A025234.P5443550085647016331

/-! ## A025234.P18356685442267783488

`A103889(A006603(n))-A206228(n)`
-/

namespace A025234.P18356685442267783488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103889 (A006603 n).toNat - A206228 n

end

end A025234.P18356685442267783488

/-!
# A025235: a(n) = (1/2)*A014431(n+2).

The programs for A025235, the canonical program `A025235.P11316111733437524934` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025235 has offset 0).

The definition of A025235 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 170 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A025235.P15880662457975915558

`1/2*A014431(n+2)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A025235.P15880662457975915558
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * (A014431 (n + 2) : ℚ)

end

end A025235.P15880662457975915558

namespace A025235

/-- `1/2*A014431(n+2)` -/
def P15880662457975915558.Spec : Prop :=
  ∀ n, P15880662457975915558.a n = (A025235 n : ℚ)

end A025235

/-! ## A025235.P12344145626643739355

`A014431(n+2)/2`
-/

namespace A025235.P12344145626643739355
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014431 (n + 2) : ℚ) / 2

end

end A025235.P12344145626643739355

namespace A025235

/-- `A014431(n+2)/2` -/
def P12344145626643739355.Spec : Prop :=
  ∀ n, P12344145626643739355.a n = (A025235 n : ℚ)

end A025235

/-! ## A025235.P8105224969801070101

`A084601(n)-2*A098521(n)`
-/

namespace A025235.P8105224969801070101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084601 n - 2 * A098521 n

end

end A025235.P8105224969801070101

namespace A025235

/-- `A084601(n)-2*A098521(n)` -/
def P8105224969801070101.Spec : Prop :=
  ∀ n, P8105224969801070101.a n = A025235 n

end A025235

/-! ## A025235.P10894246986072567621

`A098518(n+1)/(n+1)`
-/

namespace A025235.P10894246986072567621
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A098518 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A025235.P10894246986072567621

namespace A025235

/-- `A098518(n+1)/(n+1)` -/
def P10894246986072567621.Spec : Prop :=
  ∀ n, P10894246986072567621.a n = (A025235 n : ℚ)

end A025235

/-! ## A025235.P11316111733437524934

`A374487(n)/∑[n+1]`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A025235

/-- `A374487(n)/∑[n+1]` -/
def P11316111733437524934.Spec : Prop :=
  ∀ n, P11316111733437524934.a n = (A025235 n : ℚ)

end A025235

/-! ## A025235.P5853598131529361577

`A025237(n)/A374488(n)*A374487(n)`
-/

namespace A025235.P5853598131529361577
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025237 n : ℚ) / (A374488 n : ℚ) * (A374487 n : ℚ)

end

end A025235.P5853598131529361577

namespace A025235

/-- `A025237(n)/A374488(n)*A374487(n)` -/
def P5853598131529361577.Spec : Prop :=
  ∀ n, P5853598131529361577.a n = (A025235 n : ℚ)

end A025235

/-! ## A025235.P5821079154274712604

`A336996(A000124(n+1)+∑[n+1])/(n+1)`
-/

namespace A025235.P5821079154274712604
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A336996 (A000124 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat : ℚ) / (n + 1 : ℚ)

end

end A025235.P5821079154274712604

namespace A025235

/-- `A336996(A000124(n+1)+∑[n+1])/(n+1)` -/
def P5821079154274712604.Spec : Prop :=
  ∀ n, P5821079154274712604.a n = (A025235 n : ℚ)

end A025235

/-! ## A025235.P7770618330694129224

`A306684(∑[n+3])`
-/

namespace A025235.P7770618330694129224
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306684 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A025235.P7770618330694129224

namespace A025235

/-- `A306684(∑[n+3])` -/
def P7770618330694129224.Spec : Prop :=
  ∀ n, P7770618330694129224.a n = A025235 n

end A025235

/-! ## A025235.P6207337177012543630

`A084600((n+1)²+n)/(n+1)`
-/

namespace A025235.P6207337177012543630
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A084600 ((n + 1) ^ 2 + n) : ℚ) / (n + 1 : ℚ)

end

end A025235.P6207337177012543630

namespace A025235

/-- `A084600((n+1)²+n)/(n+1)` -/
def P6207337177012543630.Spec : Prop :=
  ∀ n, P6207337177012543630.a n = (A025235 n : ℚ)

end A025235

/-!
# A025237: Expansion of (1 -x -sqrt(1-2*x-11*x^2))/(6*x^2).

The programs for A025237, the canonical program `A025237.P15797820771418730532` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025237 has offset 0).

The definition of A025237 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 153 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A025237.P17530019899567711868

`A014432(n+1)/3`
-/

namespace A025237.P17530019899567711868
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014432 (n + 1) : ℚ) / 3

end

end A025237.P17530019899567711868

namespace A025237

/-- `A014432(n+1)/3` -/
def P17530019899567711868.Spec : Prop :=
  ∀ n, P17530019899567711868.a n = (A025237 n : ℚ)

end A025237

/-! ## A025237.P3345430091480134781

`A098519(n+1)/(n+1)`
-/

namespace A025237.P3345430091480134781
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A098519 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A025237.P3345430091480134781

namespace A025237

/-- `A098519(n+1)/(n+1)` -/
def P3345430091480134781.Spec : Prop :=
  ∀ n, P3345430091480134781.a n = (A025237 n : ℚ)

end A025237

/-! ## A025237.P15797820771418730532

`A025235(n)/A374487(n)*A374488(n)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A025237

/-- `A025235(n)/A374487(n)*A374488(n)` -/
def P15797820771418730532.Spec : Prop :=
  ∀ n, P15797820771418730532.a n = (A025237 n : ℚ)

end A025237

/-! ## A025237.P11982348361662454873

`A306684(∑[n+4]+2)`
-/

namespace A025237.P11982348361662454873
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306684 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A025237.P11982348361662454873

namespace A025237

/-- `A306684(∑[n+4]+2)` -/
def P11982348361662454873.Spec : Prop :=
  ∀ n, P11982348361662454873.a n = A025237 n

end A025237

/-! ## A025237.P1970020305577549765

`A306684(A000217(n+4)-4)+A000035(2*n)`
-/

namespace A025237.P1970020305577549765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306684 (A000217 (n + 4) - 4).toNat + A000035 (2 * n)

end

end A025237.P1970020305577549765

namespace A025237

/-- `A306684(A000217(n+4)-4)+A000035(2*n)` -/
def P1970020305577549765.Spec : Prop :=
  ∀ n, P1970020305577549765.a n = A025237 n

end A025237

/-! ## A025237.P15303943490228880813

`A084602((n+1)²+n)/(n+1)`
-/

namespace A025237.P15303943490228880813
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A084602 ((n + 1) ^ 2 + n) : ℚ) / (n + 1 : ℚ)

end

end A025237.P15303943490228880813

namespace A025237

/-- `A084602((n+1)²+n)/(n+1)` -/
def P15303943490228880813.Spec : Prop :=
  ∀ n, P15303943490228880813.a n = (A025237 n : ℚ)

end A025237

/-!
# A025238: a(n) = a(1)*a(n-1) + a(2)*a(n-2) + ...+ a(n-2)*a(2) for n >= 3.

The programs for A025238, the canonical program `A025238.P4279514518283286936` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025238 has offset 1).

The definition of A025238 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 149 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A025238.P4808322670033242592

`A002212(or(n, round(acot(n))))`
-/

namespace A025238.P4808322670033242592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002212 (Int.lor (n : ℤ) (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ)))).toNat

end

end A025238.P4808322670033242592

namespace A025238

/-- `A002212(or(n, round(acot(n))))` -/
def P4808322670033242592.Spec : Prop :=
  ∀ n, P4808322670033242592.a n = A025238 (n + 1)

end A025238

/-! ## A025238.P4279514518283286936

`A002212(abs(1-n)+1)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A025238

/-- `A002212(abs(1-n)+1)` -/
def P4279514518283286936.Spec : Prop :=
  ∀ n, P4279514518283286936.a n = A025238 (n + 1)

theorem P4279514518283286936.correct : P4279514518283286936.Spec := by
  intro n
  simp only [A025238, Nat.add_sub_cancel]

end A025238

/-! ## A025238.P11061574102241587682

`floor(A002212(n)+acot(n)²)`
-/

namespace A025238.P11061574102241587682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A002212 n : ℝ) + SequenceMachineLib.acot (n : ℝ) ^ 2⌋

end

end A025238.P11061574102241587682

namespace A025238

/-- `floor(A002212(n)+acot(n)²)` -/
def P11061574102241587682.Spec : Prop :=
  ∀ n, P11061574102241587682.a n = A025238 (n + 1)

end A025238

/-! ## A025238.P1574851063408546156

`A045868(n-1)+a(n-1)` with `a(0)=3, a(1)=1`
-/

namespace A025238.P1574851063408546156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 1] fun n a =>
  A045868 (n - 1) + a (n - 1)

end

end A025238.P1574851063408546156

namespace A025238

/-- `A045868(n-1)+a(n-1)` -/
def P1574851063408546156.Spec : Prop :=
  ∀ n, P1574851063408546156.a n = A025238 (n + 1)

end A025238

/-! ## A025238.P1280932143530357673

`A002212(n)+A000038(n)`
-/

namespace A025238.P1280932143530357673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002212 n + A000038 n

end

end A025238.P1280932143530357673

namespace A025238

/-- `A002212(n)+A000038(n)` -/
def P1280932143530357673.Spec : Prop :=
  ∀ n, P1280932143530357673.a n = A025238 (n + 1)

end A025238

/-! ## A025238.P15005079635355951882

`lcm(A002212(n), A112030(n))`
-/

namespace A025238.P15005079635355951882
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A002212 n) (A112030 n)

end

end A025238.P15005079635355951882

namespace A025238

/-- `lcm(A002212(n), A112030(n))` -/
def P15005079635355951882.Spec : Prop :=
  ∀ n, (P15005079635355951882.a n : ℤ) = A025238 (n + 1)

end A025238

/-! ## A025238.P10977433773679288043

`A002212(n)+2*A000007(n)`
-/

namespace A025238.P10977433773679288043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002212 n + 2 * A000007 n

end

end A025238.P10977433773679288043

namespace A025238

/-- `A002212(n)+2*A000007(n)` -/
def P10977433773679288043.Spec : Prop :=
  ∀ n, P10977433773679288043.a n = A025238 (n + 1)

end A025238

/-! ## A025238.P13135031681644782145

`A002215(2*(A000038(n)+n))`
-/

namespace A025238.P13135031681644782145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002215 (2 * (A000038 n + (n : ℤ))).toNat

end

end A025238.P13135031681644782145

namespace A025238

/-- `A002215(2*(A000038(n)+n))` -/
def P13135031681644782145.Spec : Prop :=
  ∀ n, P13135031681644782145.a n = A025238 (n + 1)

end A025238

/-! ## A025238.P12131515001912502742

`A002212(n)+C(2, A005408(n))`
-/

namespace A025238.P12131515001912502742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002212 n + (Nat.choose 2 (A005408 n).toNat : ℤ)

end

end A025238.P12131515001912502742

namespace A025238

/-- `A002212(n)+C(2, A005408(n))` -/
def P12131515001912502742.Spec : Prop :=
  ∀ n, P12131515001912502742.a n = A025238 (n + 1)

end A025238

/-! ## A025238.P10145239556453769567

`or(A000038(2*n), A002212(n))`
-/

namespace A025238.P10145239556453769567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000038 (2 * n)) (A002212 n)

end

end A025238.P10145239556453769567

namespace A025238

/-- `or(A000038(2*n), A002212(n))` -/
def P10145239556453769567.Spec : Prop :=
  ∀ n, P10145239556453769567.a n = A025238 (n + 1)

end A025238

/-! ## A025238.P15394977837784009416

`A000038(n)+∑[∑[A277969(n)]]`
-/

namespace A025238.P15394977837784009416
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277969 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025238.P15394977837784009416

namespace A025238

/-- `A000038(n)+∑[∑[A277969(n)]]` -/
def P15394977837784009416.Spec : Prop :=
  ∀ n, P15394977837784009416.a n = A025238 (n + 1)

end A025238

/-! ## A025238.P12142144539404534808

`A002212(n)+C(2, A005117(n+1)²)`
-/

namespace A025238.P12142144539404534808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002212 n + (Nat.choose 2 (A005117 (n + 1) ^ 2).toNat : ℤ)

end

end A025238.P12142144539404534808

namespace A025238

/-- `A002212(n)+C(2, A005117(n+1)²)` -/
def P12142144539404534808.Spec : Prop :=
  ∀ n, P12142144539404534808.a n = A025238 (n + 1)

end A025238

/-! ## A025238.P11505296860898820996

`A002212(C(2, A005408(n)))*A002212(n)`
-/

namespace A025238.P11505296860898820996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002212 (Nat.choose 2 (A005408 n).toNat) * A002212 n

end

end A025238.P11505296860898820996

namespace A025238

/-- `A002212(C(2, A005408(n)))*A002212(n)` -/
def P11505296860898820996.Spec : Prop :=
  ∀ n, P11505296860898820996.a n = A025238 (n + 1)

end A025238

/-! ## A025238.P4187961239978983474

`A002212(C(2, A005117(n+1)))*A002212(n)`
-/

namespace A025238.P4187961239978983474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002212 (Nat.choose 2 (A005117 (n + 1)).toNat) * A002212 n

end

end A025238.P4187961239978983474

namespace A025238

/-- `A002212(C(2, A005117(n+1)))*A002212(n)` -/
def P4187961239978983474.Spec : Prop :=
  ∀ n, P4187961239978983474.a n = A025238 (n + 1)

end A025238

/-! ## A025238.P11429809074439118672

`A002212(A000038(n)*A002212(n))*A002212(n)`
-/

namespace A025238.P11429809074439118672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002212 (A000038 n * A002212 n).toNat * A002212 n

end

end A025238.P11429809074439118672

namespace A025238

/-- `A002212(A000038(n)*A002212(n))*A002212(n)` -/
def P11429809074439118672.Spec : Prop :=
  ∀ n, P11429809074439118672.a n = A025238 (n + 1)

end A025238

/-! ## A025238.P13249550693739804616

`record[Δ[A055879(n+1)]]%(8*a(n-1))` with `a(0)=3`
-/

namespace A025238.P13249550693739804616
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055879 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (8 * a (n - 1))

end

end A025238.P13249550693739804616

namespace A025238

/-- `record[Δ[A055879(n+1)]]%(8*a(n-1))` -/
def P13249550693739804616.Spec : Prop :=
  ∀ n, P13249550693739804616.a n = A025238 (n + 1)

end A025238

/-! ## A025238.P915304979467668716

`Δ[(A181768(n)+2)*A057427(n)]`
-/

namespace A025238.P915304979467668716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A181768 n + 2) * A057427 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A025238.P915304979467668716

namespace A025238

/-- `Δ[(A181768(n)+2)*A057427(n)]` -/
def P915304979467668716.Spec : Prop :=
  ∀ n, P915304979467668716.a n = A025238 (n + 1)

end A025238

/-! ## A025238.P8845634877733054645

`Δ[A181768(n)+A036453(n+1)²]`
-/

namespace A025238.P8845634877733054645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181768 n + A036453 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A025238.P8845634877733054645

namespace A025238

/-- `Δ[A181768(n)+A036453(n+1)²]` -/
def P8845634877733054645.Spec : Prop :=
  ∀ n, P8845634877733054645.a n = A025238 (n + 1)

end A025238

/-!
# A025239: a(n) = a(1)*a(n-1) + a(2)*a(n-2) + ...+ a(n-2)*a(2) for n >= 3.

The programs for A025239, there is no canonical definition to state claims against.
-/

/-! ## A025239.P7769360278076059454

`A025229(n+1)+A000007(n)`
-/

namespace A025239.P7769360278076059454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025229 (n + 1) + A000007 n

end

end A025239.P7769360278076059454

/-! ## A025239.P7144440131150350030

`A025229(n+1)*A054977(n)`
-/

namespace A025239.P7144440131150350030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025229 (n + 1) * A054977 n

end

end A025239.P7144440131150350030

/-! ## A025239.P11789274465988606530

`lcm(A010693(n), A025229(n+1))`
-/

namespace A025239.P11789274465988606530
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A010693 n) (A025229 (n + 1))

end

end A025239.P11789274465988606530

/-! ## A025239.P14676302673220742100

`A000038(n)!*A025229(n+1)`
-/

namespace A025239.P14676302673220742100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A000038 n).toNat : ℤ) * A025229 (n + 1)

end

end A025239.P14676302673220742100

/-! ## A025239.P8968292794129530423

`A025229(n+1)+A008458(n)%2`
-/

namespace A025239.P8968292794129530423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025229 (n + 1) + Int.tmod (A008458 n) 2

end

end A025239.P8968292794129530423

/-! ## A025239.P17165792980085490145

`A025229(n+1)+char[A085537(n²)]`
-/

namespace A025239.P17165792980085490145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085537 (n ^ 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025229 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A025239.P17165792980085490145

/-! ## A025239.P607966660944756937

`A025229(n+1)+A008683((n+1)²)`
-/

namespace A025239.P607966660944756937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025229 (n + 1) + A008683 ((n + 1) ^ 2)

end

end A025239.P607966660944756937

/-! ## A025239.P17615826767737601854

`gcd(2, A023204(n+1))*A025229(n+1)`
-/

namespace A025239.P17615826767737601854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 2 (A023204 (n + 1)) : ℤ) * A025229 (n + 1)

end

end A025239.P17615826767737601854

/-! ## A025239.P15230925007807081759

`A025229(n+1)+∑{d}[n+1, A008683(#)]`
-/

namespace A025239.P15230925007807081759
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025229 (n + 1) + ∑ d ∈ Nat.divisors (f1 n), A008683 d

end

end A025239.P15230925007807081759

/-! ## A025239.P6430223533697589156

`A025229(n+1)+A003982(A004273(n))`
-/

namespace A025239.P6430223533697589156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025229 (n + 1) + A003982 (A004273 n).toNat

end

end A025239.P6430223533697589156

/-! ## A025239.P4776619773945297572

`A025229(n+1)+A000035(A033715(n))`
-/

namespace A025239.P4776619773945297572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025229 (n + 1) + A000035 (A033715 n).toNat

end

end A025239.P4776619773945297572

/-! ## A025239.P11544430613048799763

`A178333(A103517(n))+A025229(n+1)`
-/

namespace A025239.P11544430613048799763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178333 (A103517 n).toNat + A025229 (n + 1)

end

end A025239.P11544430613048799763

/-! ## A025239.P10907752868454648627

`A337165(A000217(n))+A025229(n+1)`
-/

namespace A025239.P10907752868454648627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337165 (A000217 n).toNat + A025229 (n + 1)

end

end A025239.P10907752868454648627

/-! ## A025239.P3602849284153592411

`A280285(A227177(n))+A025229(n+1)`
-/

namespace A025239.P3602849284153592411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280285 (A227177 n).toNat + A025229 (n + 1)

end

end A025239.P3602849284153592411

/-! ## A025239.P14301207226621134452

`A025229(n+1)+char[A053822(A020701(n))]`
-/

namespace A025239.P14301207226621134452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053822 (A020701 n).toNat

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025229 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A025239.P14301207226621134452

/-!
# A025240: a(n) = a(1)*a(n-1) + a(2)*a(n-2) + ...+ a(n-2)*a(2) for n >= 3.

The programs for A025240, the canonical program `A025240.P15418065983883315172` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025240 has offset 1).

The definition of A025240 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 135 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A025240.P8217513267124454415

`or(2, A006318(n))`
-/

namespace A025240.P8217513267124454415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (A006318 n)

end

end A025240.P8217513267124454415

namespace A025240

/-- `or(2, A006318(n))` -/
def P8217513267124454415.Spec : Prop :=
  ∀ n, P8217513267124454415.a n = A025240 (n + 1)

end A025240

/-! ## A025240.P16287133619864507424

`xor(3, A035011(n))`
-/

namespace A025240.P16287133619864507424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 3 (A035011 n)

end

end A025240.P16287133619864507424

namespace A025240

/-- `xor(3, A035011(n))` -/
def P16287133619864507424.Spec : Prop :=
  ∀ n, P16287133619864507424.a n = A025240 (n + 1)

end A025240

/-! ## A025240.P7505630102525775304

`or(2, ∑[A006319(n)])`
-/

namespace A025240.P7505630102525775304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006319 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A025240.P7505630102525775304

namespace A025240

/-- `or(2, ∑[A006319(n)])` -/
def P7505630102525775304.Spec : Prop :=
  ∀ n, P7505630102525775304.a n = A025240 (n + 1)

end A025240

/-! ## A025240.P8118218106708904639

`or(2, A080247(∑[n]))`
-/

namespace A025240.P8118218106708904639
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (A080247 (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A025240.P8118218106708904639

namespace A025240

/-- `or(2, A080247(∑[n]))` -/
def P8118218106708904639.Spec : Prop :=
  ∀ n, P8118218106708904639.a n = A025240 (n + 1)

end A025240

/-! ## A025240.P2444217581038339172

`Δ[xor(1, A176006(n))]`
-/

namespace A025240.P2444217581038339172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A176006 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A025240.P2444217581038339172

namespace A025240

/-- `Δ[xor(1, A176006(n))]` -/
def P2444217581038339172.Spec : Prop :=
  ∀ n, P2444217581038339172.a n = A025240 (n + 1)

end A025240

/-! ## A025240.P6185684823748534615

`or(2, A155069(n+1))`
-/

namespace A025240.P6185684823748534615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (A155069 (n + 1))

end

end A025240.P6185684823748534615

namespace A025240

/-- `or(2, A155069(n+1))` -/
def P6185684823748534615.Spec : Prop :=
  ∀ n, P6185684823748534615.a n = A025240 (n + 1)

end A025240

/-! ## A025240.P14582032551932384180

`or(2, A033877(∑[n+1]))`
-/

namespace A025240.P14582032551932384180
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (A033877 (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A025240.P14582032551932384180

namespace A025240

/-- `or(2, A033877(∑[n+1]))` -/
def P14582032551932384180.Spec : Prop :=
  ∀ n, P14582032551932384180.a n = A025240 (n + 1)

end A025240

/-! ## A025240.P8377216546429157291

`xor(1, 1-A086456(n+1))`
-/

namespace A025240.P8377216546429157291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (1 - A086456 (n + 1))

end

end A025240.P8377216546429157291

namespace A025240

/-- `xor(1, 1-A086456(n+1))` -/
def P8377216546429157291.Spec : Prop :=
  ∀ n, P8377216546429157291.a n = A025240 (n + 1)

end A025240

/-! ## A025240.P854246389420463702

`A033878(A347553(n+4))`
-/

namespace A025240.P854246389420463702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033878 (A347553 (n + 4)).toNat

end

end A025240.P854246389420463702

namespace A025240

/-- `A033878(A347553(n+4))` -/
def P854246389420463702.Spec : Prop :=
  ∀ n, P854246389420463702.a n = A025240 (n + 1)

end A025240

/-! ## A025240.P1374603124790500972

`lcm(A001003(n), A040008(n))`
-/

namespace A025240.P1374603124790500972
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A001003 n) (A040008 n)

end

end A025240.P1374603124790500972

namespace A025240

/-- `lcm(A001003(n), A040008(n))` -/
def P1374603124790500972.Spec : Prop :=
  ∀ n, (P1374603124790500972.a n : ℤ) = A025240 (n + 1)

end A025240

/-! ## A025240.P3583580884036862360

`A155069(n)-Δ[A086456(n)]`
-/

namespace A025240.P3583580884036862360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086456 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155069 n - (f1 (n + 1) - f1 n)

end

end A025240.P3583580884036862360

namespace A025240

/-- `A155069(n)-Δ[A086456(n)]` -/
def P3583580884036862360.Spec : Prop :=
  ∀ n, P3583580884036862360.a n = A025240 (n + 1)

end A025240

/-! ## A025240.P15798144808299910312

`A155069(n+1)+A000038(n)`
-/

namespace A025240.P15798144808299910312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155069 (n + 1) + A000038 n

end

end A025240.P15798144808299910312

namespace A025240

/-- `A155069(n+1)+A000038(n)` -/
def P15798144808299910312.Spec : Prop :=
  ∀ n, P15798144808299910312.a n = A025240 (n + 1)

end A025240

/-! ## A025240.P16106255375210196779

`A000038(n)-A086456(n+1)`
-/

namespace A025240.P16106255375210196779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n - A086456 (n + 1)

end

end A025240.P16106255375210196779

namespace A025240

/-- `A000038(n)-A086456(n+1)` -/
def P16106255375210196779.Spec : Prop :=
  ∀ n, P16106255375210196779.a n = A025240 (n + 1)

end A025240

/-! ## A025240.P15418065983883315172

`A000007(n)+2*A001003(n)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A025240

/-- `A000007(n)+2*A001003(n)` -/
def P15418065983883315172.Spec : Prop :=
  ∀ n, P15418065983883315172.a n = A025240 (n + 1)

theorem P15418065983883315172.correct : P15418065983883315172.Spec := by
  intro n
  simp only [A025240, Nat.add_sub_cancel]

end A025240

/-! ## A025240.P4546050399750060341

`A006318(n)+2*A000007(n)`
-/

namespace A025240.P4546050399750060341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006318 n + 2 * A000007 n

end

end A025240.P4546050399750060341

namespace A025240

/-- `A006318(n)+2*A000007(n)` -/
def P4546050399750060341.Spec : Prop :=
  ∀ n, P4546050399750060341.a n = A025240 (n + 1)

end A025240

/-! ## A025240.P16501643110480429596

`A006318(n)+C(2, A038294(n))`
-/

namespace A025240.P16501643110480429596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006318 n + (Nat.choose 2 (A038294 n).toNat : ℤ)

end

end A025240.P16501643110480429596

namespace A025240

/-- `A006318(n)+C(2, A038294(n))` -/
def P16501643110480429596.Spec : Prop :=
  ∀ n, P16501643110480429596.a n = A025240 (n + 1)

end A025240

/-! ## A025240.P1728315863165366668

`A006318(n)+C(2, A038298(n))`
-/

namespace A025240.P1728315863165366668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006318 n + (Nat.choose 2 (A038298 n).toNat : ℤ)

end

end A025240.P1728315863165366668

namespace A025240

/-- `A006318(n)+C(2, A038298(n))` -/
def P1728315863165366668.Spec : Prop :=
  ∀ n, P1728315863165366668.a n = A025240 (n + 1)

end A025240

/-! ## A025240.P2297409513236666029

`A006318(n)+C(2, A315966(n))`
-/

namespace A025240.P2297409513236666029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006318 n + (Nat.choose 2 (A315966 n).toNat : ℤ)

end

end A025240.P2297409513236666029

namespace A025240

/-- `A006318(n)+C(2, A315966(n))` -/
def P2297409513236666029.Spec : Prop :=
  ∀ n, P2297409513236666029.a n = A025240 (n + 1)

end A025240

/-! ## A025240.P16679531756313324104

`A000038(n)+abs(A103137(n+1))`
-/

namespace A025240.P16679531756313324104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n + |A103137 (n + 1)|

end

end A025240.P16679531756313324104

namespace A025240

/-- `A000038(n)+abs(A103137(n+1))` -/
def P16679531756313324104.Spec : Prop :=
  ∀ n, P16679531756313324104.a n = A025240 (n + 1)

end A025240

/-! ## A025240.P10743721869910646499

`A063524(n+1)-A085403(n+1)`
-/

namespace A025240.P10743721869910646499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063524 (n + 1) - A085403 (n + 1)

end

end A025240.P10743721869910646499

namespace A025240

/-- `A063524(n+1)-A085403(n+1)` -/
def P10743721869910646499.Spec : Prop :=
  ∀ n, P10743721869910646499.a n = A025240 (n + 1)

end A025240

/-!
# A025242: Generalized Catalan numbers A(x)^2 -(1+x)^2*A(x) +x*(2+x+x^2) =0.

The programs for A025242, there is no canonical definition to state claims against.
-/

/-! ## A025242.P14488814447649520342

`floor(A082582(n)+acot(n))`
-/

namespace A025242.P14488814447649520342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A082582 n : ℝ) + SequenceMachineLib.acot (n : ℝ)⌋

end

end A025242.P14488814447649520342

/-! ## A025242.P7346230634045080833

`A082582(C(3, n+2)+n)`
-/

namespace A025242.P7346230634045080833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082582 (Nat.choose 3 (n + 2) + n)

end

end A025242.P7346230634045080833

/-! ## A025242.P5289888602700378291

`A082582(ceil(a(n-1)+n)-a(n-1))` with `a(0)=2`

`ceil` is left out, it is the identity on integers.
-/

namespace A025242.P5289888602700378291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A082582 (a (n - 1) + (n : ℤ) - a (n - 1)).toNat

end

end A025242.P5289888602700378291

/-! ## A025242.P8122774695080448877

`A082582(n-(ceil(a(n-1))-a(n-1)))` with `a(0)=2`

`ceil` is left out, it is the identity on integers.
-/

namespace A025242.P8122774695080448877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A082582 ((n : ℤ) - (a (n - 1) - a (n - 1))).toNat

end

end A025242.P8122774695080448877

/-! ## A025242.P6762979287669883878

`A082582(n)+A000007(n)`
-/

namespace A025242.P6762979287669883878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082582 n + A000007 n

end

end A025242.P6762979287669883878

/-! ## A025242.P16823179637408104410

`A054977(n)*A082582(n)`
-/

namespace A025242.P16823179637408104410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n * A082582 n

end

end A025242.P16823179637408104410

/-! ## A025242.P437519084369182921

`A000038(n)!*A082582(n)`
-/

namespace A025242.P437519084369182921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A000038 n).toNat : ℤ) * A082582 n

end

end A025242.P437519084369182921

/-! ## A025242.P10539476447918229073

`A082582(n)+A000079(n)%2`
-/

namespace A025242.P10539476447918229073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082582 n + Int.tmod (A000079 n) 2

end

end A025242.P10539476447918229073

/-! ## A025242.P12490226391101713315

`A028310(n)+A082582(n)-n`
-/

namespace A025242.P12490226391101713315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n + (A082582 n - (n : ℤ))

end

end A025242.P12490226391101713315

/-! ## A025242.P7598586474197512245

`A082582(n)+A008683((n+1)*(n+1))`
-/

namespace A025242.P7598586474197512245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082582 n + A008683 ((n + 1) * (n + 1))

end

end A025242.P7598586474197512245

/-! ## A025242.P4859090135897927771

`A082582(n)+A059841(A004273(n))`
-/

namespace A025242.P4859090135897927771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082582 n + A059841 (A004273 n).toNat

end

end A025242.P4859090135897927771

/-! ## A025242.P1573995344739227415

`A097805(A057944(n))+A082582(n)`
-/

namespace A025242.P1573995344739227415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097805 (A057944 n).toNat + A082582 n

end

end A025242.P1573995344739227415

/-! ## A025242.P16579310189943729023

`A285229(A000217(n))+A082582(n)`
-/

namespace A025242.P16579310189943729023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285229 (A000217 n).toNat + A082582 n

end

end A025242.P16579310189943729023

/-! ## A025242.P4341498891349207652

`A082582(n)+A152225(n)-A025247(n+2)`
-/

namespace A025242.P4341498891349207652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082582 n + (A152225 n - A025247 (n + 2))

end

end A025242.P4341498891349207652

/-! ## A025242.P6778753552453519565

`A082582(n)+A152225(n)-A025265(n+2)`
-/

namespace A025242.P6778753552453519565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082582 n + (A152225 n - A025265 (n + 2))

end

end A025242.P6778753552453519565

/-! ## A025242.P18142228111975223164

`A025247(n+1)+A082582(n)-A025265(n+1)`
-/

namespace A025242.P18142228111975223164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025247 (n + 1) + (A082582 n - A025265 (n + 1))

end

end A025242.P18142228111975223164

/-! ## A025242.P11454200842405941284

`A082582(n)+A087944(n)%2`
-/

namespace A025242.P11454200842405941284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082582 n + Int.tmod (A087944 n) 2

end

end A025242.P11454200842405941284

/-! ## A025242.P1862264744123649454

`A082582(n)+A336678(2*n)%2`
-/

namespace A025242.P1862264744123649454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082582 n + Int.tmod (A336678 (2 * n)) 2

end

end A025242.P1862264744123649454

/-! ## A025242.P7045661760813113178

`A082582(n)*A221076(2*n)`
-/

namespace A025242.P7045661760813113178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082582 n * A221076 (2 * n)

end

end A025242.P7045661760813113178

/-!
# A025243: a(n) = a(1)*a(n-1) + a(2)*a(n-2) + ... + a(n-3)*a(3) for n >= 4, with initial terms 1, 2, 1, 1.

The programs for A025243, there is no canonical definition to state claims against.
-/

/-! ## A025243.P5834253162821263552

`A127389(A025581(∑[n+1]+2))+A127389(n)`
-/

namespace A025243.P5834253162821263552
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127389 (A025581 (∑ j ∈ Finset.range (n + 1), f1 j + 2)).toNat + A127389 n

end

end A025243.P5834253162821263552

/-! ## A025243.P5516779949177175237

`A135664(A129578(n))+A130706(n)`
-/

namespace A025243.P5516779949177175237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135664 (A129578 n).toNat + A130706 n

end

end A025243.P5516779949177175237

/-! ## A025243.P6591104589686144985

`A123578(A000756(n))-A004523(n)`
-/

namespace A025243.P6591104589686144985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123578 (A000756 n).toNat - A004523 n

end

end A025243.P6591104589686144985

/-! ## A025243.P8832588438181254884

`A135660(A317652(n)+A283454(n+2))`
-/

namespace A025243.P8832588438181254884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135660 (A317652 n + A283454 (n + 2)).toNat

end

end A025243.P8832588438181254884

/-! ## A025243.P1235746948071607436

`A003059(A091352(n))-A002264(2*n)`
-/

namespace A025243.P1235746948071607436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003059 (A091352 n).toNat - A002264 (2 * n)

end

end A025243.P1235746948071607436

/-!
# A025244: a(n) = a(1)*a(n-1) + a(2)*a(n-2) + ... + a(n-3)*a(3) for n >= 4, with initial terms 1, 1, 2, 2.

The programs for A025244, there is no canonical definition to state claims against.
-/

/-! ## A025244.P16093224264558534249

`∑[A063772(A209322(n))]`
-/

namespace A025244.P16093224264558534249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063772 (A209322 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025244.P16093224264558534249

/-! ## A025244.P482977777726478767

`A340280(A079500(n)+3)`
-/

namespace A025244.P482977777726478767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340280 (A079500 n + 3).toNat

end

end A025244.P482977777726478767

/-! ## A025244.P1887544422507274909

`A340280(A007059(n+1)+3)`
-/

namespace A025244.P1887544422507274909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340280 (A007059 (n + 1) + 3).toNat

end

end A025244.P1887544422507274909

/-! ## A025244.P15353234306826476388

`A023193(A148281(n)+A010056(n))`
-/

namespace A025244.P15353234306826476388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023193 (A148281 n + A010056 n).toNat

end

end A025244.P15353234306826476388

/-! ## A025244.P17410999601367473787

`A023193(or(A010056(n), A148281(n)))`
-/

namespace A025244.P17410999601367473787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023193 (Int.lor (A010056 n) (A148281 n)).toNat

end

end A025244.P17410999601367473787

/-!
# A025245: a(n) = (1/2)*s(n+3), where s = A025244.

The programs for A025245, there is no canonical definition to state claims against.
-/

/-! ## A025245.P3336776349385846854

`A025244(n+4)/2`
-/

namespace A025245.P3336776349385846854
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025244 (n + 4) : ℚ) / 2

end

end A025245.P3336776349385846854

/-! ## A025245.P12538542241125340516

`2^A008683(A020483(n))*A025244(n+4)`
-/

namespace A025245.P12538542241125340516
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A008683 (A020483 n).toNat : ℤ) * (A025244 (n + 4) : ℚ)

end

end A025245.P12538542241125340516

/-! ## A025245.P6525483207504371323

`2^A008683(A001126(n+1))*A025244(n+4)`
-/

namespace A025245.P6525483207504371323
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A008683 (A001126 (n + 1)).toNat : ℤ) * (A025244 (n + 4) : ℚ)

end

end A025245.P6525483207504371323

/-! ## A025245.P6858410803964420901

`2^A008683(A038604(n+1))*A025244(n+4)`
-/

namespace A025245.P6858410803964420901
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A008683 (A038604 (n + 1)).toNat : ℤ) * (A025244 (n + 4) : ℚ)

end

end A025245.P6858410803964420901

/-! ## A025245.P7704579232383319189

`2^A008683(A195758(n+1))*A025244(n+4)`
-/

namespace A025245.P7704579232383319189
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A008683 (A195758 (n + 1)).toNat : ℤ) * (A025244 (n + 4) : ℚ)

end

end A025245.P7704579232383319189

/-! ## A025245.P10974893739535599635

`2^A008683(A000032(C(n, n+2)))*A025244(n+4)`
-/

namespace A025245.P10974893739535599635
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A008683 (A000032 (Nat.choose n (n + 2))).toNat : ℤ) * (A025244 (n + 4) : ℚ)

end

end A025245.P10974893739535599635

/-! ## A025245.P13323409915572635681

`2^A008683(A269257(n+1))*A025244(n+4)`
-/

namespace A025245.P13323409915572635681
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A008683 (A269257 (n + 1)).toNat : ℤ) * (A025244 (n + 4) : ℚ)

end

end A025245.P13323409915572635681

/-!
# A025246: a(n) = a(1)*a(n-1) + a(2)*a(n-2) + ... + a(n-3)*a(3) for n >= 4, with initial terms 1, 0, 1, 1.

The programs for A025246, there is no canonical definition to state claims against.
-/

/-! ## A025246.P273640054577103337

`A023431(abs(2-n))-char[1]`
-/

namespace A025246.P273640054577103337
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023431 |2 - (n : ℤ)|.toNat - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A025246.P273640054577103337

/-! ## A025246.P6960212370066679788

`A005171(∑[n+1])*A023431(abs(2-n))`
-/

namespace A025246.P6960212370066679788
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005171 (∑ j ∈ Finset.range (n + 1), f1 j) * A023431 |2 - (n : ℤ)|.toNat

end

end A025246.P6960212370066679788

/-! ## A025246.P8445014293025437171

`A159075(n)+A023431(A289207(n))`
-/

namespace A025246.P8445014293025437171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159075 n + A023431 (A289207 n).toNat

end

end A025246.P8445014293025437171

/-! ## A025246.P269726293755589809

`A023431(A289207(n))*A060576(n)`
-/

namespace A025246.P269726293755589809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023431 (A289207 n).toNat * A060576 n

end

end A025246.P269726293755589809

/-! ## A025246.P7640481343987499026

`A134323(n+1)²*A023431(A289207(n))`
-/

namespace A025246.P7640481343987499026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134323 (n + 1) ^ 2 * A023431 (A289207 n).toNat

end

end A025246.P7640481343987499026

/-! ## A025246.P7205915844253313586

`A023431(A289207(n))*A057427(A029143(n))`
-/

namespace A025246.P7205915844253313586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023431 (A289207 n).toNat * A057427 (A029143 n).toNat

end

end A025246.P7205915844253313586

/-! ## A025246.P5080009643661521814

`A023431(A289207(n))%A272931(A272915(n))`
-/

namespace A025246.P5080009643661521814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A023431 (A289207 n).toNat) (A272931 (A272915 n).toNat)

end

end A025246.P5080009643661521814

/-! ## A025246.P17259617459810824364

`A023431(abs(2-n))%A000732(A007599(n))`
-/

namespace A025246.P17259617459810824364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A023431 |2 - (n : ℤ)|.toNat) (A000732 (A007599 n).toNat)

end

end A025246.P17259617459810824364

/-! ## A025246.P12435659590709986711

`A056594(A281793(n))+A023431(abs(2-n))`
-/

namespace A025246.P12435659590709986711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (A281793 n).toNat + A023431 |2 - (n : ℤ)|.toNat

end

end A025246.P12435659590709986711

/-! ## A025246.P11917489499464092728

`A056594(A281794(n))+A023431(abs(2-n))`
-/

namespace A025246.P11917489499464092728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (A281794 n).toNat + A023431 |2 - (n : ℤ)|.toNat

end

end A025246.P11917489499464092728

/-!
# A025247: a(n) = a(1)*a(n-1) + a(2)*a(n-2) + ... + a(n-3)*a(3) for n >= 4, with initial terms 2, 0, 1, 2.

The programs for A025247, there is no canonical definition to state claims against.
-/

/-! ## A025247.P15478772625056110996

`floor(A025265(n+1)+acot(n))`
-/

namespace A025247.P15478772625056110996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A025265 (n + 1) : ℝ) + SequenceMachineLib.acot (n : ℝ)⌋

end

end A025247.P15478772625056110996

/-! ## A025247.P6550641386948253749

`A025265(A054977(n)²+n)`
-/

namespace A025247.P6550641386948253749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025265 (A054977 n ^ 2 + (n : ℤ)).toNat

end

end A025247.P6550641386948253749

/-! ## A025247.P8446101287848442610

`A025265(n+1)+A000007(n)`
-/

namespace A025247.P8446101287848442610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025265 (n + 1) + A000007 n

end

end A025247.P8446101287848442610

/-! ## A025247.P9154429715494343052

`A025265(n+1)*A054977(n)`
-/

namespace A025247.P9154429715494343052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025265 (n + 1) * A054977 n

end

end A025247.P9154429715494343052

/-! ## A025247.P8744842311773363964

`A025265(n+1)*A141044(n)`
-/

namespace A025247.P8744842311773363964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025265 (n + 1) * A141044 n

end

end A025247.P8744842311773363964

/-! ## A025247.P10493186840844612165

`lcm(A014710(n), A025265(n+1))`
-/

namespace A025247.P10493186840844612165
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A014710 n) (A025265 (n + 1))

end

end A025247.P10493186840844612165

/-! ## A025247.P17450622046157986993

`A025265(A141044(n+1)²+n)`
-/

namespace A025247.P17450622046157986993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025265 (A141044 (n + 1) ^ 2 + (n : ℤ)).toNat

end

end A025247.P17450622046157986993

/-! ## A025247.P13604662942260391029

`A036987(2*n)+A025265(n+1)`
-/

namespace A025247.P13604662942260391029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036987 (2 * n) + A025265 (n + 1)

end

end A025247.P13604662942260391029

/-! ## A025247.P16274058807202858513

`A025265(n+1)+A028310(n)-n`
-/

namespace A025247.P16274058807202858513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025265 (n + 1) + (A028310 n - (n : ℤ))

end

end A025247.P16274058807202858513

/-! ## A025247.P1145973527731576190

`A025265(n+1)+char[A016982(n)²]`
-/

namespace A025247.P1145973527731576190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016982 n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025265 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A025247.P1145973527731576190

/-! ## A025247.P4766409213645619646

`(A181440(n+1)-n)*A025265(n+1)`
-/

namespace A025247.P4766409213645619646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A181440 (n + 1) - (n : ℤ)) * A025265 (n + 1)

end

end A025247.P4766409213645619646

/-! ## A025247.P3265341354133125591

`A025265(n+1)+1-char[A143097(n+1)]`
-/

namespace A025247.P3265341354133125591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143097 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025265 (n + 1) + (1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ))

end

end A025247.P3265341354133125591

/-! ## A025247.P7116572389720960893

`A025265(n+1)+A003982(A000217(n))`
-/

namespace A025247.P7116572389720960893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025265 (n + 1) + A003982 (A000217 n).toNat

end

end A025247.P7116572389720960893

/-! ## A025247.P3624164018352684052

`A025265(n+1)+A015161(A000120(n))`
-/

namespace A025247.P3624164018352684052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025265 (n + 1) + A015161 (A000120 n).toNat

end

end A025247.P3624164018352684052

/-! ## A025247.P7989131374951577031

`A088157(A003056(n))+A025265(n+1)`
-/

namespace A025247.P7989131374951577031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088157 (A003056 n).toNat + A025265 (n + 1)

end

end A025247.P7989131374951577031

/-! ## A025247.P3141840470601971009

`A134269(A005408(n))+A025265(n+1)`
-/

namespace A025247.P3141840470601971009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134269 (A005408 n).toNat + A025265 (n + 1)

end

end A025247.P3141840470601971009

/-! ## A025247.P9549437347386445603

`A088157(A053828(n))+A025265(n+1)`
-/

namespace A025247.P9549437347386445603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088157 (A053828 n).toNat + A025265 (n + 1)

end

end A025247.P9549437347386445603

/-! ## A025247.P14136899816250074444

`A014963(A017089(n))*A025265(n+1)`
-/

namespace A025247.P14136899816250074444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A017089 n).toNat * A025265 (n + 1)

end

end A025247.P14136899816250074444

/-! ## A025247.P15245444425173102495

`A025265(n+1)+char[A333808(A036548(n))]`
-/

namespace A025247.P15245444425173102495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333808 (A036548 n).toNat

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025265 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A025247.P15245444425173102495

/-! ## A025247.P4154243252445571894

`A025265(n+1)+A000035(A001223(n+1))`
-/

namespace A025247.P4154243252445571894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025265 (n + 1) + A000035 (A001223 (n + 1)).toNat

end

end A025247.P4154243252445571894

/-!
# A025248: a(n) = a(1)*a(n-1) + a(2)*a(n-2) + ... + a(n-3)*a(3) for n >= 4, with initial terms 1, 0, 2, 2.

The programs for A025248, there is no canonical definition to state claims against.
-/

/-! ## A025248.P15433528468573846547

`A000196(A000756(n))-A049310(n+1)`
-/

namespace A025248.P15433528468573846547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A000756 n).toNat - A049310 (n + 1)

end

end A025248.P15433528468573846547

/-! ## A025248.P11709331082944849717

`A059905(lcm(A148210(n), A332809(n+1)))`
-/

namespace A025248.P11709331082944849717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059905 (Int.lcm (A148210 n) (A332809 (n + 1)))

end

end A025248.P11709331082944849717

/-!
# A025249: a(n) = (1/2)*s(n+3), where s = A025248.

The programs for A025249, there is no canonical definition to state claims against.
-/

/-! ## A025249.P7356216471868452014

`A091565(n+2)`
-/

namespace A025249.P7356216471868452014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091565 (n + 2)

end

end A025249.P7356216471868452014

/-! ## A025249.P4004788346071417137

`or(1, record[A091565(A273943(n))])`
-/

namespace A025249.P4004788346071417137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091565 (A273943 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A025249.P4004788346071417137

/-! ## A025249.P18217422482390835532

`A025248(n+4)/2`
-/

namespace A025249.P18217422482390835532
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025248 (n + 4) : ℚ) / 2

end

end A025249.P18217422482390835532

/-! ## A025249.P16291578426773286524

`2^A133574(A001316(n))*A025248(n+4)`
-/

namespace A025249.P16291578426773286524
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A133574 (A001316 n).toNat : ℤ) * (A025248 (n + 4) : ℚ)

end

end A025249.P16291578426773286524

/-! ## A025249.P12346194629172440385

`A000265(A025248(n+4))`
-/

namespace A025249.P12346194629172440385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A025248 (n + 4)).toNat

end

end A025249.P12346194629172440385

/-!
# A025250: a(n) = a(1)*a(n-1) + a(2)*a(n-2) + ... + a(n-3)*a(3) for n >= 4, with initial terms 0, 1, 1, 0.

The programs for A025250, there is no canonical definition to state claims against.
-/

/-! ## A025250.P12544951231706805685

`A246181(∑[n-2]+3)`
-/

namespace A025250.P12544951231706805685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246181 (∑ j ∈ Finset.range (n + 1), f1 j + 3).toNat

end

end A025250.P12544951231706805685

/-!
# A025252: a(n) = (1/2)*s(n+3), where s = A025251.

The programs for A025252, there is no canonical definition to state claims against.
-/

/-! ## A025252.P11521994700747005306

`A160565(n+1)`
-/

namespace A025252.P11521994700747005306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160565 (n + 1)

end

end A025252.P11521994700747005306

/-! ## A025252.P1149845297441995796

`A025251(n+4)/2`
-/

namespace A025252.P1149845297441995796
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025251 (n + 4) : ℚ) / 2

end

end A025252.P1149845297441995796

/-! ## A025252.P6111710213894274730

`abs(Δ[-∑[A160565(n)]])`
-/

namespace A025252.P6111710213894274730
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160565 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A025252.P6111710213894274730

/-! ## A025252.P8797297101199734212

`Δ[∑[A160565(n)]-A000034(2*n)]`
-/

namespace A025252.P8797297101199734212
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160565 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A000034 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A025252.P8797297101199734212

/-! ## A025252.P6356205469204002690

`A160565(Δ[n²]-n)%A035509(n)`
-/

namespace A025252.P6356205469204002690
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A160565 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat) (A035509 n)

end

end A025252.P6356205469204002690

/-! ## A025252.P12381974505422821996

`A160565(A110514(2*n))%(3^n)`
-/

namespace A025252.P12381974505422821996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A160565 (A110514 (2 * n)).toNat) (3 ^ n : ℤ)

end

end A025252.P12381974505422821996

/-!
# A025254: a(n) = a(1)*a(n-1) + a(2)*a(n-2) + ... + a(n-3)*a(3) for n >= 4, with initial terms 3, 1, 1, 3.

The programs for A025254, there is no canonical definition to state claims against.
-/

/-! ## A025254.P1564088228015354274

`A178578(A033627(n+1)-2*n)`
-/

namespace A025254.P1564088228015354274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178578 (A033627 (n + 1) - (2 * n : ℤ)).toNat

end

end A025254.P1564088228015354274

/-! ## A025254.P10363292217916890370

`A178578(A033627(n+1)-n-n)`
-/

namespace A025254.P10363292217916890370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178578 (A033627 (n + 1) - (n : ℤ) - (n : ℤ)).toNat

end

end A025254.P10363292217916890370

/-! ## A025254.P9577921327381020090

`A178578(A289207(n)+A000007(n))`
-/

namespace A025254.P9577921327381020090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178578 (A289207 n + A000007 n).toNat

end

end A025254.P9577921327381020090

/-! ## A025254.P622991269259778010

`A178578(or(A000007(n), A289207(n)))`
-/

namespace A025254.P622991269259778010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178578 (Int.lor (A000007 n) (A289207 n)).toNat

end

end A025254.P622991269259778010

/-! ## A025254.P5294125789793618950

`A178578(xor(A000007(n), A289207(n)))`
-/

namespace A025254.P5294125789793618950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178578 (Int.xor (A000007 n) (A289207 n)).toNat

end

end A025254.P5294125789793618950

/-!
# A025256: a(n) = a(1)*a(n-1) + a(2)*a(n-2) + ... + a(n-3)*a(3) for n >= 4, with initial terms 1, 1, 3, 3.

The programs for A025256, there is no canonical definition to state claims against.
-/

/-! ## A025256.P12744535636527007883

`lcm(2, A144771(n+1))/2`
-/

namespace A025256.P12744535636527007883
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A144771 (n + 1)) : ℚ) / 2

end

end A025256.P12744535636527007883

/-! ## A025256.P10378862695388141905

`A026741(A144771(n+1))`
-/

namespace A025256.P10378862695388141905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A144771 (n + 1)).toNat

end

end A025256.P10378862695388141905

/-! ## A025256.P14848577683864184896

`A060819(2*A144771(n+1))`
-/

namespace A025256.P14848577683864184896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060819 (2 * A144771 (n + 1)).toNat

end

end A025256.P14848577683864184896

/-! ## A025256.P2859895115127465004

`A026730(4*A144771(n+1))`
-/

namespace A025256.P2859895115127465004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026730 (4 * A144771 (n + 1)).toNat

end

end A025256.P2859895115127465004

/-!
# A025257: (1/3)*s(n+3), where s = A025256.

The programs for A025257, there is no canonical definition to state claims against.
-/

/-! ## A025257.P875357535204901645

`A025256(n+4)/3`
-/

namespace A025257.P875357535204901645
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025256 (n + 4) : ℚ) / 3

end

end A025257.P875357535204901645

/-! ## A025257.P858614685994612458

`A008611(A025256(n+4)+1)`
-/

namespace A025257.P858614685994612458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (A025256 (n + 4) + 1).toNat

end

end A025257.P858614685994612458

/-! ## A025257.P9540962418957900976

`A046108(A116764(n+1)+char[2])`
-/

namespace A025257.P9540962418957900976
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046108 (A116764 (n + 1) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)).toNat

end

end A025257.P9540962418957900976

/-!
# A025262: a(n) = a(1)*a(n-1) + a(2)*a(n-2) + ... + a(n-1)*a(1) for n >= 4.

The programs for A025262, there is no canonical definition to state claims against.
-/

/-! ## A025262.P17511027537748096837

`A056010(abs(1-n))`
-/

namespace A025262.P17511027537748096837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056010 |1 - (n : ℤ)|.toNat

end

end A025262.P17511027537748096837

/-! ## A025262.P17561345029139565608

`a((n%3)!-1)*A056010(n-1)` with `a(0)=1`
-/

namespace A025262.P17561345029139565608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (Nat.factorial (n % 3) - 1) * A056010 (n - 1)

end

end A025262.P17561345029139565608

/-! ## A025262.P5460591092272534395

`A157002(abs(1-n))+A157002(n)`
-/

namespace A025262.P5460591092272534395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157002 |1 - (n : ℤ)|.toNat + A157002 n

end

end A025262.P5460591092272534395

/-! ## A025262.P11968349189517621159

`A000045(a(A258822(n)))*A056010(n-1)` with `a(0)=1`
-/

namespace A025262.P11968349189517621159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000045 (a (A258822 n).toNat).toNat * A056010 (n - 1)

end

end A025262.P11968349189517621159

/-! ## A025262.P3008044012469470958

`A056010(log2(A011782(n)))%A034488(n)`
-/

namespace A025262.P3008044012469470958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A056010 (SequenceMachineLib.roundAway (Real.logb 2 (A011782 n : ℝ))).toNat) (A034488 n)

end

end A025262.P3008044012469470958

/-!
# A025265: a(n) = a(1)*a(n-1) + a(2)*a(n-2) + ... + a(n-1)*a(1) for n >= 4.

The programs for A025265, there is no canonical definition to state claims against.
-/

/-! ## A025265.P8673220203841673908

`A025247(n+1)-floor(acot(n))`
-/

namespace A025265.P8673220203841673908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025247 (n + 1) - ⌊SequenceMachineLib.acot (n : ℝ)⌋

end

end A025265.P8673220203841673908

/-! ## A025265.P2041805254964492169

`A025247(A000038(n)+1+n)`
-/

namespace A025265.P2041805254964492169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025247 (A000038 n + 1 + (n : ℤ)).toNat

end

end A025265.P2041805254964492169

/-! ## A025265.P9768483889495320423

`A025247(n+1)-A000007(n)`
-/

namespace A025265.P9768483889495320423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025247 (n + 1) - A000007 n

end

end A025265.P9768483889495320423

/-! ## A025265.P18390719098874456442

`A025247(n+1)/A054977(n)`
-/

namespace A025265.P18390719098874456442
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025247 (n + 1) : ℚ) / (A054977 n : ℚ)

end

end A025265.P18390719098874456442

/-! ## A025265.P2753536642623019386

`A025247(n+1)/A141044(n)`
-/

namespace A025265.P2753536642623019386
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025247 (n + 1) : ℚ) / (A141044 n : ℚ)

end

end A025265.P2753536642623019386

/-! ## A025265.P18157000159307260800

`A025247(n+1)+A000918(n)%2`
-/

namespace A025265.P18157000159307260800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025247 (n + 1) + Int.tmod (A000918 n) 2

end

end A025265.P18157000159307260800

/-! ## A025265.P7434678112269199453

`A025247(n+1)-A008531(n)%2`
-/

namespace A025265.P7434678112269199453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025247 (n + 1) - Int.tmod (A008531 n) 2

end

end A025265.P7434678112269199453

/-! ## A025265.P11043031341949568722

`A025247(n+1)-A027559(n)%2`
-/

namespace A025265.P11043031341949568722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025247 (n + 1) - Int.tmod (A027559 n) 2

end

end A025265.P11043031341949568722

/-! ## A025265.P4448674148536517009

`A025247(n+1)+n-A028310(n)`
-/

namespace A025265.P4448674148536517009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025247 (n + 1) + ((n : ℤ) - A028310 n)

end

end A025265.P4448674148536517009

/-! ## A025265.P17847864714371155626

`A025247(n+1)/A014442(n+1)%4`
-/

namespace A025265.P17847864714371155626
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025247 (n + 1) : ℚ) / (Int.tmod (A014442 (n + 1)) 4 : ℚ)

end

end A025265.P17847864714371155626

/-! ## A025265.P12886474855588436449

`A025247(n+1)^(A000040(n+1)%2)`
-/

namespace A025265.P12886474855588436449
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025247 (n + 1) : ℚ) ^ (Int.tmod (A000040 (n + 1)) 2 : ℤ)

end

end A025265.P12886474855588436449

/-! ## A025265.P17264819208849455730

`A025247(n+1)/(A348776(n+1)-n)`
-/

namespace A025265.P17264819208849455730
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025247 (n + 1) : ℚ) / (A348776 (n + 1) - (n : ℤ) : ℚ)

end

end A025265.P17264819208849455730

/-! ## A025265.P11175675618244228000

`A025247(n+1)-A008683(A008574(n))`
-/

namespace A025265.P11175675618244228000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025247 (n + 1) - A008683 (A008574 n).toNat

end

end A025265.P11175675618244228000

/-! ## A025265.P9844463227456282346

`A025247(n+1)-A025924(A277822(n))`
-/

namespace A025265.P9844463227456282346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025247 (n + 1) - A025924 (A277822 n).toNat

end

end A025265.P9844463227456282346

/-! ## A025265.P1748279454556143865

`A025247(n+1)/A000034(A008458(n))`
-/

namespace A025265.P1748279454556143865
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025247 (n + 1) : ℚ) / (A000034 (A008458 n).toNat : ℚ)

end

end A025265.P1748279454556143865

/-! ## A025265.P10137038963527802200

`A025247(n+1)/A000034(A320132(n))`
-/

namespace A025265.P10137038963527802200
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025247 (n + 1) : ℚ) / (A000034 (A320132 n).toNat : ℚ)

end

end A025265.P10137038963527802200

/-! ## A025265.P16493142975210748775

`A025247(n+1)+A008683(2*A008574(n))`
-/

namespace A025265.P16493142975210748775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025247 (n + 1) + A008683 (2 * A008574 n).toNat

end

end A025265.P16493142975210748775

/-! ## A025265.P5592599692877773139

`A025247(n+1)^A324113(A045426(n+1))`
-/

namespace A025265.P5592599692877773139
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025247 (n + 1) : ℚ) ^ (A324113 (A045426 (n + 1)).toNat : ℤ)

end

end A025265.P5592599692877773139

/-! ## A025265.P17419950547583305141

`A025247(n+1)-A000010(A000203(n+1))%2`
-/

namespace A025265.P17419950547583305141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025247 (n + 1) - Int.tmod (A000010 (A000203 (n + 1)).toNat) 2

end

end A025265.P17419950547583305141

/-! ## A025265.P16670593037175463965

`A025247(n+1)+A025247(n+2)-A152225(n)`
-/

namespace A025265.P16670593037175463965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025247 (n + 1) + (A025247 (n + 2) - A152225 n)

end

end A025265.P16670593037175463965

/-!
# A025266: a(n) = a(1)*a(n-1) + a(2)*a(n-2) + ... + a(n-1)*a(1) for n >= 4.

The programs for A025266, there is no canonical definition to state claims against.
-/

/-! ## A025266.P12742440716449689160

`A025271(n+1)-A214199(n+1)`
-/

namespace A025266.P12742440716449689160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025271 (n + 1) - A214199 (n + 1)

end

end A025266.P12742440716449689160

/-! ## A025266.P13171722766746260117

`A214200(n+1)-(A214202(n+1)+A214199(n+1))`
-/

namespace A025266.P13171722766746260117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214200 (n + 1) - (A214202 (n + 1) + A214199 (n + 1))

end

end A025266.P13171722766746260117

/-! ## A025266.P4321051422097273703

`A000108(n)-A214198(n+1)`
-/

namespace A025266.P4321051422097273703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n - A214198 (n + 1)

end

end A025266.P4321051422097273703

/-! ## A025266.P1386822881924938153

`abs(A168491(n))-A214198(n+1)`
-/

namespace A025266.P1386822881924938153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A168491 n| - A214198 (n + 1)

end

end A025266.P1386822881924938153

/-! ## A025266.P3781358031448585912

`A089408(2*n+1)-A214198(n+1)`
-/

namespace A025266.P3781358031448585912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089408 (2 * n + 1) - A214198 (n + 1)

end

end A025266.P3781358031448585912

/-! ## A025266.P9583648247923301191

`A025271(n+1)+A214201(n+1)-A214198(n+1)`
-/

namespace A025266.P9583648247923301191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025271 (n + 1) + (A214201 (n + 1) - A214198 (n + 1))

end

end A025266.P9583648247923301191

/-! ## A025266.P3964983411984608337

`A214200(n+1)+A214204(n+1)-A214198(n+1)`
-/

namespace A025266.P3964983411984608337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214200 (n + 1) + (A214204 (n + 1) - A214198 (n + 1))

end

end A025266.P3964983411984608337

/-!
# A025268: a(n) = a(1)*a(n-1) + a(2)*a(n-2) + ...+ a(n-1)*a(1) for n >= 5, with initial values 1,1,1,1.

The programs for A025268, there is no canonical definition to state claims against.
-/

/-! ## A025268.P4508282599356727344

`A008618(or(16, A141495(n)))`
-/

namespace A025268.P4508282599356727344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008618 (Int.lor 16 (A141495 n)).toNat

end

end A025268.P4508282599356727344

/-! ## A025268.P7014524116132823318

`A008618(A141495(n)+A008619(n))`
-/

namespace A025268.P7014524116132823318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008618 (A141495 n + A008619 n).toNat

end

end A025268.P7014524116132823318

/-! ## A025268.P14107920603861775425

`A008618(A141495(n)+A008620(n))`
-/

namespace A025268.P14107920603861775425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008618 (A141495 n + A008620 n).toNat

end

end A025268.P14107920603861775425

/-! ## A025268.P3073940202311125710

`A008618(A323901(n)+A141495(n))`
-/

namespace A025268.P3073940202311125710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008618 (A323901 n + A141495 n).toNat

end

end A025268.P3073940202311125710

/-! ## A025268.P14357505730074770209

`A008618(A141495(n)-A141518(n))`
-/

namespace A025268.P14357505730074770209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008618 (A141495 n - A141518 n).toNat

end

end A025268.P14357505730074770209

/-!
# A025269: a(n) = a(1)*a(n-1) + a(2)*a(n-2) + ...+ a(n-1)*a(1) for n >= 5, with initial values 2,1,1,1.

The programs for A025269, there is no canonical definition to state claims against.
-/

/-! ## A025269.P1068742205659078500

`or(((n-1)*a(a(n-3)))!, A345933(2*(n+1)))` with `a(0)=2, a(1)=1, a(2)=1, a(3)=1`
-/

namespace A025269.P1068742205659078500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 1, 1, 1] fun n a =>
  Int.lor (Nat.factorial (((n : ℤ) - 1) * a (a (n - 3)).toNat).toNat : ℤ) (A345933 (2 * (n + 1)))

end

end A025269.P1068742205659078500

/-! ## A025269.P14901865900721225673

`A002024(A060053(n)+1+n)-n`
-/

namespace A025269.P14901865900721225673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A060053 n + 1 + (n : ℤ)).toNat - (n : ℤ)

end

end A025269.P14901865900721225673

/-! ## A025269.P15157787705133023203

`A038567(A000698(n))-A000975(n)`
-/

namespace A025269.P15157787705133023203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038567 (A000698 n).toNat - A000975 n

end

end A025269.P15157787705133023203

/-!
# A025271: a(n) = a(1)*a(n-1) + a(2)*a(n-2) + ...+ a(n-1)*a(1) for n >= 5, with initial values 1,1,2,1.

The programs for A025271, there is no canonical definition to state claims against.
-/

/-! ## A025271.P10292393629877872432

`A214199(n+1)+A025266(n+1)`
-/

namespace A025271.P10292393629877872432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214199 (n + 1) + A025266 (n + 1)

end

end A025271.P10292393629877872432

/-! ## A025271.P1885766079448381453

`A214200(n+1)-A214202(n+1)`
-/

namespace A025271.P1885766079448381453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214200 (n + 1) - A214202 (n + 1)

end

end A025271.P1885766079448381453

/-! ## A025271.P6346660670213389292

`A214203(n+1)-(A214205(n+1)+A214202(n+1))`
-/

namespace A025271.P6346660670213389292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214203 (n + 1) - (A214205 (n + 1) + A214202 (n + 1))

end

end A025271.P6346660670213389292

/-! ## A025271.P9144105498020740929

`A000108(n)-A214201(n+1)`
-/

namespace A025271.P9144105498020740929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n - A214201 (n + 1)

end

end A025271.P9144105498020740929

/-! ## A025271.P10398966243312441819

`A120588(n+1)-A214201(n+1)`
-/

namespace A025271.P10398966243312441819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120588 (n + 1) - A214201 (n + 1)

end

end A025271.P10398966243312441819

/-! ## A025271.P665210324333610760

`A025266(n+1)+A214198(n+1)-A214201(n+1)`
-/

namespace A025271.P665210324333610760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025266 (n + 1) + (A214198 (n + 1) - A214201 (n + 1))

end

end A025271.P665210324333610760

/-! ## A025271.P1134768633758383256

`A214200(n+1)+A214204(n+1)-A214201(n+1)`
-/

namespace A025271.P1134768633758383256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214200 (n + 1) + (A214204 (n + 1) - A214201 (n + 1))

end

end A025271.P1134768633758383256

/-! ## A025271.P15444794284041708256

`A057977(2*n)-A214201(n+1)`
-/

namespace A025271.P15444794284041708256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057977 (2 * n) - A214201 (n + 1)

end

end A025271.P15444794284041708256

/-!
# A025272: a(n) = a(1)*a(n-1) + a(2)*a(n-2) + ...+ a(n-1)*a(1) for n >= 5, with initial values 1,1,1,2.

The programs for A025272, there is no canonical definition to state claims against.
-/

/-! ## A025272.P14350759056824981129

`A111301(n)+A059995(A047086(n))`
-/

namespace A025272.P14350759056824981129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111301 n + A059995 (A047086 n).toNat

end

end A025272.P14350759056824981129

/-! ## A025272.P3089300707888149057

`floor((A344420(∑[∑[3^n]-1])+4)/3)`
-/

namespace A025272.P3089300707888149057
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A344420 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + 4 : ℚ) / 3⌋

end

end A025272.P3089300707888149057

/-! ## A025272.P6306314283202019489

`A070000(A303882(n+1))`
-/

namespace A025272.P6306314283202019489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070000 (A303882 (n + 1)).toNat

end

end A025272.P6306314283202019489

/-! ## A025272.P7337887811228556238

`A085863(A353723((n+1)²))+1`
-/

namespace A025272.P7337887811228556238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085863 (A353723 ((n + 1) ^ 2)).toNat + 1

end

end A025272.P7337887811228556238

/-!
# A025273: a(n) = a(1)*a(n-1) + a(2)*a(n-2) + ...+ a(n-1)*a(1) for n >= 5, starting 1,0,1,1.

The programs for A025273, there is no canonical definition to state claims against.
-/

/-! ## A025273.P10856565296428277395

`A217333(A289207(n))-char[1]`
-/

namespace A025273.P10856565296428277395
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217333 (A289207 n).toNat - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A025273.P10856565296428277395

/-! ## A025273.P12348940301822711810

`lcm(A105812(n), A217333(A289207(n)))`
-/

namespace A025273.P12348940301822711810
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A105812 n) (A217333 (A289207 n).toNat)

end

end A025273.P12348940301822711810

/-! ## A025273.P539826797274864969

`and(A159075(n)-1, A217333(A289207(n)))`
-/

namespace A025273.P539826797274864969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A159075 n - 1) (A217333 (A289207 n).toNat)

end

end A025273.P539826797274864969

/-! ## A025273.P5222241269028851904

`and(1, A284354(n))*A217333(A289207(n))`
-/

namespace A025273.P5222241269028851904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A284354 n) * A217333 (A289207 n).toNat

end

end A025273.P5222241269028851904

/-! ## A025273.P13753357530422416289

`A217333(A289207(n))%A000032(A261223(n+1))`
-/

namespace A025273.P13753357530422416289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A217333 (A289207 n).toNat) (A000032 (A261223 (n + 1)).toNat)

end

end A025273.P13753357530422416289

/-!
# A025276: a(n) = a(1)*a(n-1) + a(2)*a(n-2) + ... + a(n-1)*a(1) for n >= 5, with a(1) = 1, a(2) = a(3) = 0, a(4) = 1.

The programs for A025276, there is no canonical definition to state claims against.
-/

/-! ## A025276.P3039911573874325781

`floor(A055047(A001006(n))/A055047(n+1))`
-/

namespace A025276.P3039911573874325781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A055047 (A001006 n).toNat : ℚ) / (A055047 (n + 1) : ℚ)⌋

end

end A025276.P3039911573874325781

/-! ## A025276.P14524481890459029537

`A352044(n)-A261104(A052814(n))`
-/

namespace A025276.P14524481890459029537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352044 n - A261104 (A052814 n).toNat

end

end A025276.P14524481890459029537

/-! ## A025276.P6782961831145904143

`Δ[A261104(A052814(n))]`
-/

namespace A025276.P6782961831145904143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261104 (A052814 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A025276.P6782961831145904143

/-! ## A025276.P11691270814973634773

`A229202(n)-C(n, A099085(n))`
-/

namespace A025276.P11691270814973634773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229202 n - (Nat.choose n (A099085 n).toNat : ℤ)

end

end A025276.P11691270814973634773

/-! ## A025276.P12884371198481468977

`A229202(n)-C(n, A058800(2*n+1))`
-/

namespace A025276.P12884371198481468977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229202 n - (Nat.choose n (A058800 (2 * n + 1)).toNat : ℤ)

end

end A025276.P12884371198481468977

/-!
# A025277: a(n) = a(1)*a(n-1) + a(2)*a(n-2) + ...+ a(n-1)*a(1) for n >= 5, with initial values 0,0,1,1.

The programs for A025277, the canonical program `A025277.P12250556850713882405` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025277 has offset 1).

The definition of A025277 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A025277.P12250556850713882405

`(4-24/(n+1))*a(n-4)+(4-18/(n+1))*a(n-3)` with `a(0)=0, a(1)=0, a(2)=1, a(3)=1`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A025277

/-- `(4-24/(n+1))*a(n-4)+(4-18/(n+1))*a(n-3)` -/
def P12250556850713882405.Spec : Prop :=
  ∀ n, P12250556850713882405.a n = (A025277 (n + 1) : ℚ)

end A025277

/-! ## A025277.P11442117825098271394

`floor(A248100(A289207(n))/A141044(n))`
-/

namespace A025277.P11442117825098271394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A248100 (A289207 n).toNat : ℚ) / (A141044 n : ℚ)⌋

end

end A025277.P11442117825098271394

namespace A025277

/-- `floor(A248100(A289207(n))/A141044(n))` -/
def P11442117825098271394.Spec : Prop :=
  ∀ n, P11442117825098271394.a n = A025277 (n + 1)

end A025277

/-! ## A025277.P1600546256864943983

`A248100(A289207(n))-A019590(n+1)`
-/

namespace A025277.P1600546256864943983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248100 (A289207 n).toNat - A019590 (n + 1)

end

end A025277.P1600546256864943983

namespace A025277

/-- `A248100(A289207(n))-A019590(n+1)` -/
def P1600546256864943983.Spec : Prop :=
  ∀ n, P1600546256864943983.a n = A025277 (n + 1)

end A025277

/-! ## A025277.P16960526594793697730

`char[A281120(n+1)]*A248100(A289207(n))`
-/

namespace A025277.P16960526594793697730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281120 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A248100 (A289207 n).toNat

end

end A025277.P16960526594793697730

namespace A025277

/-- `char[A281120(n+1)]*A248100(A289207(n))` -/
def P16960526594793697730.Spec : Prop :=
  ∀ n, P16960526594793697730.a n = A025277 (n + 1)

end A025277

/-! ## A025277.P7233487562914327450

`A248100(A289207(n)+2*A019590(n+1))`
-/

namespace A025277.P7233487562914327450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248100 (A289207 n + 2 * A019590 (n + 1)).toNat

end

end A025277.P7233487562914327450

namespace A025277

/-- `A248100(A289207(n)+2*A019590(n+1))` -/
def P7233487562914327450.Spec : Prop :=
  ∀ n, P7233487562914327450.a n = A025277 (n + 1)

end A025277

/-! ## A025277.P7332956708566754076

`char[A066194(n+1)+1]*A248100(A289207(n))`
-/

namespace A025277.P7332956708566754076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066194 (n + 1) + 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A248100 (A289207 n).toNat

end

end A025277.P7332956708566754076

namespace A025277

/-- `char[A066194(n+1)+1]*A248100(A289207(n))` -/
def P7332956708566754076.Spec : Prop :=
  ∀ n, P7332956708566754076.a n = A025277 (n + 1)

end A025277

/-! ## A025277.P8389822394072196228

`A047620(2-C(n, n²))*A248100(A289207(n))`
-/

namespace A025277.P8389822394072196228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047620 (2 - Nat.choose n (n ^ 2)) * A248100 (A289207 n).toNat

end

end A025277.P8389822394072196228

namespace A025277

/-- `A047620(2-C(n, n²))*A248100(A289207(n))` -/
def P8389822394072196228.Spec : Prop :=
  ∀ n, P8389822394072196228.a n = A025277 (n + 1)

end A025277

/-! ## A025277.P15140677905281975035

`A248100(A019590(n+1)+A289207(n)+A019590(n+1))`
-/

namespace A025277.P15140677905281975035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248100 (A019590 (n + 1) + (A289207 n + A019590 (n + 1))).toNat

end

end A025277.P15140677905281975035

namespace A025277

/-- `A248100(A019590(n+1)+A289207(n)+A019590(n+1))` -/
def P15140677905281975035.Spec : Prop :=
  ∀ n, P15140677905281975035.a n = A025277 (n + 1)

end A025277

/-! ## A025277.P13706981717806224421

`A248100(A289207(n))%A000108(n)`
-/

namespace A025277.P13706981717806224421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A248100 (A289207 n).toNat) (A000108 n)

end

end A025277.P13706981717806224421

namespace A025277

/-- `A248100(A289207(n))%A000108(n)` -/
def P13706981717806224421.Spec : Prop :=
  ∀ n, P13706981717806224421.a n = A025277 (n + 1)

end A025277

/-!
# A025280: Complexity of n: number of 1's required to build n using +, *, and ^.

The programs for A025280, there is no canonical definition to state claims against.
-/

/-! ## A025280.P17696998781689656859

`A005208(n+1)+1`
-/

namespace A025280.P17696998781689656859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005208 (n + 1) + 1

end

end A025280.P17696998781689656859

/-! ## A025280.P13772509533204741383

`ceil(A217250(n+1)/2)`
-/

namespace A025280.P13772509533204741383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A217250 (n + 1) : ℚ) / 2⌉

end

end A025280.P13772509533204741383

/-! ## A025280.P12569277690525344468

`A000463(A217250(n+1))`
-/

namespace A025280.P12569277690525344468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (A217250 (n + 1)).toNat

end

end A025280.P12569277690525344468

/-! ## A025280.P7062839417249617984

`A004525(A217250(n+1)+1)`
-/

namespace A025280.P7062839417249617984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A217250 (n + 1) + 1).toNat

end

end A025280.P7062839417249617984

/-! ## A025280.P18132788351841936775

`A004526(A217250(n+1)+1)`
-/

namespace A025280.P18132788351841936775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A217250 (n + 1) + 1).toNat

end

end A025280.P18132788351841936775

/-! ## A025280.P15874286743678654970

`A026741(A217250(n+1)+1)`
-/

namespace A025280.P15874286743678654970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A217250 (n + 1) + 1).toNat

end

end A025280.P15874286743678654970

/-! ## A025280.P6988065244241933264

`A004524(A217250(n+1)+2)`
-/

namespace A025280.P6988065244241933264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A217250 (n + 1) + 2).toNat

end

end A025280.P6988065244241933264

/-! ## A025280.P2544637235700549034

`A008619(A217250(n+1)-1)`
-/

namespace A025280.P2544637235700549034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A217250 (n + 1) - 1).toNat

end

end A025280.P2544637235700549034

/-! ## A025280.P9676101044783147111

`A002265(2*(A217250(n+1)+1))`
-/

namespace A025280.P9676101044783147111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (2 * (A217250 (n + 1) + 1)).toNat

end

end A025280.P9676101044783147111

/-! ## A025280.P11539750666358170304

`A002265(A217250(n+1)+A217250(n+1))+1`
-/

namespace A025280.P11539750666358170304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A217250 (n + 1) + A217250 (n + 1)).toNat + 1

end

end A025280.P11539750666358170304

/-!
# A025281: a(n) = sopfr(n!), where sopfr = A001414 is the integer log.

The programs for A025281, the canonical program `A025281.P12826176153322829795` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025281 has offset 0).

The definition of A025281 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001414, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A025281.P12826176153322829795

`A001414(A000142(n))`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A025281

/-- `A001414(A000142(n))` -/
def P12826176153322829795.Spec : Prop :=
  ∀ n, P12826176153322829795.a n = A025281 n

theorem P12826176153322829795.correct : P12826176153322829795.Spec := by
  intro n
  simp only [A025281]

end A025281

/-! ## A025281.P18225860439122991280

`∑[∑{p}[n, #*val(n, #)]]`
-/

namespace A025281.P18225860439122991280
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), p * SequenceMachineLib.valuation n p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025281.P18225860439122991280

namespace A025281

/-- `∑[∑{p}[n, #*val(n, #)]]` -/
def P18225860439122991280.Spec : Prop :=
  ∀ n, (P18225860439122991280.a n : ℤ) = A025281 n

end A025281

/-! ## A025281.P9762141214154148939

`∑[∑{d}[n, A120007(#)]]`
-/

namespace A025281.P9762141214154148939
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), A120007 d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025281.P9762141214154148939

namespace A025281

/-- `∑[∑{d}[n, A120007(#)]]` -/
def P9762141214154148939.Spec : Prop :=
  ∀ n, P9762141214154148939.a n = A025281 n

end A025281

/-! ## A025281.P126880207058812003

`A001414(n)+a(n-1)` with `a(0)=0`
-/

namespace A025281.P126880207058812003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A001414 n + a (n - 1)

end

end A025281.P126880207058812003

namespace A025281

/-- `A001414(n)+a(n-1)` -/
def P126880207058812003.Spec : Prop :=
  ∀ n, P126880207058812003.a n = A025281 n

end A025281

/-! ## A025281.P14391369771913541982

`∑[A001414(round(sqrt(n²+1)))]`
-/

namespace A025281.P14391369771913541982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025281.P14391369771913541982

namespace A025281

/-- `∑[A001414(round(sqrt(n²+1)))]` -/
def P14391369771913541982.Spec : Prop :=
  ∀ n, P14391369771913541982.a n = A025281 n

end A025281

/-! ## A025281.P16142491056740131459

`a(n-1)+n-A075255(n)` with `a(0)=0`
-/

namespace A025281.P16142491056740131459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + ((n : ℤ) - A075255 n)

end

end A025281.P16142491056740131459

namespace A025281

/-- `a(n-1)+n-A075255(n)` -/
def P16142491056740131459.Spec : Prop :=
  ∀ n, P16142491056740131459.a n = A025281 n

end A025281

/-! ## A025281.P5457101992719877503

`∑[∑{d}[n, A053650(A014963(#))]]`
-/

namespace A025281.P5457101992719877503
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), A053650 (A014963 d).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025281.P5457101992719877503

namespace A025281

/-- `∑[∑{d}[n, A053650(A014963(#))]]` -/
def P5457101992719877503.Spec : Prop :=
  ∀ n, P5457101992719877503.a n = A025281 n

end A025281

/-! ## A025281.P9515637889590204370

`∑[A001414(n+1)]-A001414(n+1)`
-/

namespace A025281.P9515637889590204370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A001414 (n + 1)

end

end A025281.P9515637889590204370

namespace A025281

/-- `∑[A001414(n+1)]-A001414(n+1)` -/
def P9515637889590204370.Spec : Prop :=
  ∀ n, P9515637889590204370.a n = A025281 n

end A025281

/-! ## A025281.P5224018806440983165

`∑[A036288(n+1)]-(A036288(n+1)+n)`
-/

namespace A025281.P5224018806440983165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036288 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (A036288 (n + 1) + (n : ℤ))

end

end A025281.P5224018806440983165

namespace A025281

/-- `∑[A036288(n+1)]-(A036288(n+1)+n)` -/
def P5224018806440983165.Spec : Prop :=
  ∀ n, P5224018806440983165.a n = A025281 n

end A025281

/-! ## A025281.P11359885007761123511

`A075255(n+1)+∑[n-A075255(n+1)]`
-/

namespace A025281.P11359885007761123511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A075255 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075255 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025281.P11359885007761123511

namespace A025281

/-- `A075255(n+1)+∑[n-A075255(n+1)]` -/
def P11359885007761123511.Spec : Prop :=
  ∀ n, P11359885007761123511.a n = A025281 n

end A025281

/-! ## A025281.P15237141822343387980

`∑[A075254(n+1)-n]-A075254(n+1)`
-/

namespace A025281.P15237141822343387980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075254 (n + 1) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A075254 (n + 1)

end

end A025281.P15237141822343387980

namespace A025281

/-- `∑[A075254(n+1)-n]-A075254(n+1)` -/
def P15237141822343387980.Spec : Prop :=
  ∀ n, P15237141822343387980.a n = A025281 n

end A025281

/-!
# A025282: Smallest number requiring n Fibonacci numbers to build using + and *.

The programs for A025282, there is no canonical definition to state claims against.
-/

/-! ## A025282.P11172017142111257871

`A151552(∑[5*n]*Δ[C(2*n+1, 4)])`
-/

namespace A025282.P11172017142111257871
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n + 1) 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151552 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * ((f2 (n + 1) : ℤ) - (f2 n : ℤ))).toNat

end

end A025282.P11172017142111257871

/-!
# A025284: Numbers that are the sum of 2 nonzero squares in exactly 1 way.

The programs for A025284, the canonical program `A025284.P7403956482281687192` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025284 has offset 1).

The definition of A025284 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1724 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A025284.P10813617386620864876

`eq[1, A025426(n)]`
-/

namespace A025284.P10813617386620864876
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025426 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A025284.P10813617386620864876

namespace A025284

/-- `eq[1, A025426(n)]` -/
def P10813617386620864876.Spec : Prop :=
  ∀ n, (P10813617386620864876.a n : ℤ) = A025284 (n + 1)

end A025284

/-! ## A025284.P7403956482281687192

`eq[1, ceil(A063725(n)/2)]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A025284

/-- `eq[1, ceil(A063725(n)/2)]` -/
def P7403956482281687192.Spec : Prop :=
  ∀ n, (P7403956482281687192.a n : ℤ) = A025284 (n + 1)

theorem P7403956482281687192.correct : P7403956482281687192.Spec := by
  intro n
  simp only [A025284, Nat.add_sub_cancel]

end A025284

/-! ## A025284.P7532685131725856344

`eq[1, A000045(A063725(n))]`
-/

namespace A025284.P7532685131725856344
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A063725 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A025284.P7532685131725856344

namespace A025284

/-- `eq[1, A000045(A063725(n))]` -/
def P7532685131725856344.Spec : Prop :=
  ∀ n, (P7532685131725856344.a n : ℤ) = A025284 (n + 1)

end A025284

/-! ## A025284.P12988617275496210415

`eq[1, A110655(A063725(n)²)]`
-/

namespace A025284.P12988617275496210415
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110655 (A063725 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A025284.P12988617275496210415

namespace A025284

/-- `eq[1, A110655(A063725(n)²)]` -/
def P12988617275496210415.Spec : Prop :=
  ∀ n, (P12988617275496210415.a n : ℤ) = A025284 (n + 1)

end A025284

/-! ## A025284.P7922674308660846194

`eq[1, A004526(A063725(n)+1)]`
-/

namespace A025284.P7922674308660846194
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A063725 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A025284.P7922674308660846194

namespace A025284

/-- `eq[1, A004526(A063725(n)+1)]` -/
def P7922674308660846194.Spec : Prop :=
  ∀ n, (P7922674308660846194.a n : ℤ) = A025284 (n + 1)

end A025284

/-! ## A025284.P4030956916833246752

`eq[2, A002024(A063725(n)+1)]`
-/

namespace A025284.P4030956916833246752
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A063725 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A025284.P4030956916833246752

namespace A025284

/-- `eq[2, A002024(A063725(n)+1)]` -/
def P4030956916833246752.Spec : Prop :=
  ∀ n, (P4030956916833246752.a n : ℤ) = A025284 (n + 1)

end A025284

/-! ## A025284.P17395136620663179372

`eq[1, A052525(A063725(n)+2)]`
-/

namespace A025284.P17395136620663179372
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052525 (A063725 n + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A025284.P17395136620663179372

namespace A025284

/-- `eq[1, A052525(A063725(n)+2)]` -/
def P17395136620663179372.Spec : Prop :=
  ∀ n, (P17395136620663179372.a n : ℤ) = A025284 (n + 1)

end A025284

/-! ## A025284.P1364391873092163003

`eq[2, A024417(A063725(n)+2)]`
-/

namespace A025284.P1364391873092163003
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024417 (A063725 n + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A025284.P1364391873092163003

namespace A025284

/-- `eq[2, A024417(A063725(n)+2)]` -/
def P1364391873092163003.Spec : Prop :=
  ∀ n, (P1364391873092163003.a n : ℤ) = A025284 (n + 1)

end A025284

/-! ## A025284.P2354472286083619171

`eq[1, A110655(2*A063725(n))]`
-/

namespace A025284.P2354472286083619171
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110655 (2 * A063725 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A025284.P2354472286083619171

namespace A025284

/-- `eq[1, A110655(2*A063725(n))]` -/
def P2354472286083619171.Spec : Prop :=
  ∀ n, (P2354472286083619171.a n : ℤ) = A025284 (n + 1)

end A025284

/-! ## A025284.P11223891186216089139

`eq[2, A219964(2*A063725(n))]`
-/

namespace A025284.P11223891186216089139
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219964 (2 * A063725 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A025284.P11223891186216089139

namespace A025284

/-- `eq[2, A219964(2*A063725(n))]` -/
def P11223891186216089139.Spec : Prop :=
  ∀ n, (P11223891186216089139.a n : ℤ) = A025284 (n + 1)

end A025284

/-! ## A025284.P1960443112328891909

`eq[A010052(n)+1, A000161(n)]`
-/

namespace A025284.P1960443112328891909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000161 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A025284.P1960443112328891909

namespace A025284

/-- `eq[A010052(n)+1, A000161(n)]` -/
def P1960443112328891909.Spec : Prop :=
  ∀ n, (P1960443112328891909.a n : ℤ) = A025284 (n + 1)

end A025284

/-! ## A025284.P7983978121108137806

`eq[A025441(n)+1, A063725(n)]`
-/

namespace A025284.P7983978121108137806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025441 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063725 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A025284.P7983978121108137806

namespace A025284

/-- `eq[A025441(n)+1, A063725(n)]` -/
def P7983978121108137806.Spec : Prop :=
  ∀ n, (P7983978121108137806.a n : ℤ) = A025284 (n + 1)

end A025284

/-! ## A025284.P2902996347848222489

`eq[2, A379480(n)+A063725(n)]`
-/

namespace A025284.P2902996347848222489
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379480 n + A063725 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A025284.P2902996347848222489

namespace A025284

/-- `eq[2, A379480(n)+A063725(n)]` -/
def P2902996347848222489.Spec : Prop :=
  ∀ n, (P2902996347848222489.a n : ℤ) = A025284 (n + 1)

end A025284

/-! ## A025284.P13691551371335637313

`eq[A063725(n), A169695(2*n)]`
-/

namespace A025284.P13691551371335637313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063725 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169695 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A025284.P13691551371335637313

namespace A025284

/-- `eq[A063725(n), A169695(2*n)]` -/
def P13691551371335637313.Spec : Prop :=
  ∀ n, (P13691551371335637313.a n : ℤ) = A025284 (n + 1)

end A025284

/-! ## A025284.P721722205180761849

`eq[A063725(n), A077883(A063725(n)²)]`
-/

namespace A025284.P721722205180761849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063725 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077883 (A063725 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A025284.P721722205180761849

namespace A025284

/-- `eq[A063725(n), A077883(A063725(n)²)]` -/
def P721722205180761849.Spec : Prop :=
  ∀ n, (P721722205180761849.a n : ℤ) = A025284 (n + 1)

end A025284

/-! ## A025284.P4273758158437165868

`eq[A063725(n), A193495(A063725(n)²)]`
-/

namespace A025284.P4273758158437165868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063725 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193495 (A063725 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A025284.P4273758158437165868

namespace A025284

/-- `eq[A063725(n), A193495(A063725(n)²)]` -/
def P4273758158437165868.Spec : Prop :=
  ∀ n, (P4273758158437165868.a n : ℤ) = A025284 (n + 1)

end A025284

/-! ## A025284.P17169574764949837753

`eq[A063725(n), A219964(A063725(n)²)]`
-/

namespace A025284.P17169574764949837753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063725 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219964 (A063725 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A025284.P17169574764949837753

namespace A025284

/-- `eq[A063725(n), A219964(A063725(n)²)]` -/
def P17169574764949837753.Spec : Prop :=
  ∀ n, (P17169574764949837753.a n : ℤ) = A025284 (n + 1)

end A025284

/-! ## A025284.P14252548649139857902

`eq[A063725(n), A272377(A063725(n)²)]`
-/

namespace A025284.P14252548649139857902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063725 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272377 (A063725 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A025284.P14252548649139857902

namespace A025284

/-- `eq[A063725(n), A272377(A063725(n)²)]` -/
def P14252548649139857902.Spec : Prop :=
  ∀ n, (P14252548649139857902.a n : ℤ) = A025284 (n + 1)

end A025284

/-! ## A025284.P4590917714051232067

`eq[A063725(n), A077883(A063725(n)+2)]`
-/

namespace A025284.P4590917714051232067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063725 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077883 (A063725 n + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A025284.P4590917714051232067

namespace A025284

/-- `eq[A063725(n), A077883(A063725(n)+2)]` -/
def P4590917714051232067.Spec : Prop :=
  ∀ n, (P4590917714051232067.a n : ℤ) = A025284 (n + 1)

end A025284

/-! ## A025284.P4567028586546761991

`eq[A063725(n)², A109015(A063725(n)²)]`
-/

namespace A025284.P4567028586546761991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063725 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109015 (A063725 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A025284.P4567028586546761991

namespace A025284

/-- `eq[A063725(n)², A109015(A063725(n)²)]` -/
def P4567028586546761991.Spec : Prop :=
  ∀ n, (P4567028586546761991.a n : ℤ) = A025284 (n + 1)

end A025284

/-!
# A025285: Numbers that are the sum of 2 nonzero squares in exactly 2 ways.

The programs for A025285, the canonical program `A025285.P14729611154484509400` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025285 has offset 1).

The definition of A025285 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1616 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A025285.P14729611154484509400

`eq[2, A025426(n)]`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A025285

/-- `eq[2, A025426(n)]` -/
def P14729611154484509400.Spec : Prop :=
  ∀ n, (P14729611154484509400.a n : ℤ) = A025285 (n + 1)

theorem P14729611154484509400.correct : P14729611154484509400.Spec := by
  intro n
  simp only [A025285, Nat.add_sub_cancel]

end A025285

/-! ## A025285.P18382182928166149337

`eq[1, A052525(A063725(n))]`
-/

namespace A025285.P18382182928166149337
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052525 (A063725 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A025285.P18382182928166149337

namespace A025285

/-- `eq[1, A052525(A063725(n))]` -/
def P18382182928166149337.Spec : Prop :=
  ∀ n, (P18382182928166149337.a n : ℤ) = A025285 (n + 1)

end A025285

/-! ## A025285.P15566440479666165132

`eq[1, A255572(A063725(n)+1)]`
-/

namespace A025285.P15566440479666165132
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255572 (A063725 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A025285.P15566440479666165132

namespace A025285

/-- `eq[1, A255572(A063725(n)+1)]` -/
def P15566440479666165132.Spec : Prop :=
  ∀ n, (P15566440479666165132.a n : ℤ) = A025285 (n + 1)

end A025285

/-! ## A025285.P14429916308656469414

`eq[2, A000607(A063725(n)+2)]`
-/

namespace A025285.P14429916308656469414
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000607 (A063725 n + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A025285.P14429916308656469414

namespace A025285

/-- `eq[2, A000607(A063725(n)+2)]` -/
def P14429916308656469414.Spec : Prop :=
  ∀ n, (P14429916308656469414.a n : ℤ) = A025285 (n + 1)

end A025285

/-! ## A025285.P17286019644074707118

`eq[A010052(n)+2, A000161(n)]`
-/

namespace A025285.P17286019644074707118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000161 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A025285.P17286019644074707118

namespace A025285

/-- `eq[A010052(n)+2, A000161(n)]` -/
def P17286019644074707118.Spec : Prop :=
  ∀ n, (P17286019644074707118.a n : ℤ) = A025285 (n + 1)

end A025285

/-! ## A025285.P2508811131807757573

`eq[A025441(n)+2, A063725(n)]`
-/

namespace A025285.P2508811131807757573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025441 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063725 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A025285.P2508811131807757573

namespace A025285

/-- `eq[A025441(n)+2, A063725(n)]` -/
def P2508811131807757573.Spec : Prop :=
  ∀ n, (P2508811131807757573.a n : ℤ) = A025285 (n + 1)

end A025285

/-! ## A025285.P7153166070263265144

`lt[A000925(n), A351338(A063725(n))]`
-/

namespace A025285.P7153166070263265144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000925 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351338 (A063725 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A025285.P7153166070263265144

namespace A025285

/-- `lt[A000925(n), A351338(A063725(n))]` -/
def P7153166070263265144.Spec : Prop :=
  ∀ n, (P7153166070263265144.a n : ℤ) = A025285 (n + 1)

end A025285

/-! ## A025285.P17845737979206264119

`eq[2, A025435(2*n)]`
-/

namespace A025285.P17845737979206264119
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025435 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A025285.P17845737979206264119

namespace A025285

/-- `eq[2, A025435(2*n)]` -/
def P17845737979206264119.Spec : Prop :=
  ∀ n, (P17845737979206264119.a n : ℤ) = A025285 (n + 1)

end A025285

/-! ## A025285.P4788980200824431359

`eq[2, A004526(A000925(2*n))]`
-/

namespace A025285.P4788980200824431359
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A000925 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A025285.P4788980200824431359

namespace A025285

/-- `eq[2, A004526(A000925(2*n))]` -/
def P4788980200824431359.Spec : Prop :=
  ∀ n, (P4788980200824431359.a n : ℤ) = A025285 (n + 1)

end A025285

/-! ## A025285.P4581294175671076736

`A142150(eq[A010699(n), A025435(n)])`
-/

namespace A025285.P4581294175671076736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010699 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025435 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A025285.P4581294175671076736

namespace A025285

/-- `A142150(eq[A010699(n), A025435(n)])` -/
def P4581294175671076736.Spec : Prop :=
  ∀ n, P4581294175671076736.a n = A025285 (n + 1)

end A025285

/-! ## A025285.P8253005958815747769

`eq[8, A139251(A342154(n))]`
-/

namespace A025285.P8253005958815747769
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139251 (A342154 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A025285.P8253005958815747769

namespace A025285

/-- `eq[8, A139251(A342154(n))]` -/
def P8253005958815747769.Spec : Prop :=
  ∀ n, (P8253005958815747769.a n : ℤ) = A025285 (n + 1)

end A025285

/-!
# A025286: Numbers that are the sum of 2 nonzero squares in exactly 3 ways.

The programs for A025286, the canonical program `A025286.P4051280711645838846` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025286 has offset 1).

The definition of A025286 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 215 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A025286.P4051280711645838846

`eq[3, A025426(n)]`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A025286

/-- `eq[3, A025426(n)]` -/
def P4051280711645838846.Spec : Prop :=
  ∀ n, (P4051280711645838846.a n : ℤ) = A025286 (n + 1)

theorem P4051280711645838846.correct : P4051280711645838846.Spec := by
  intro n
  simp only [A025286, Nat.add_sub_cancel]

end A025286

/-! ## A025286.P11585843488247156536

`eq[2, A000607(A063725(n))]`
-/

namespace A025286.P11585843488247156536
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000607 (A063725 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A025286.P11585843488247156536

namespace A025286

/-- `eq[2, A000607(A063725(n))]` -/
def P11585843488247156536.Spec : Prop :=
  ∀ n, (P11585843488247156536.a n : ℤ) = A025286 (n + 1)

end A025286

/-! ## A025286.P4544468210544621358

`filter[A000443(n+1), A267594(#)]`
-/

namespace A025286.P4544468210544621358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000443 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267594 (f1 j).toNat = 1) n)

end

end A025286.P4544468210544621358

namespace A025286

/-- `filter[A000443(n+1), A267594(#)]` -/
def P4544468210544621358.Spec : Prop :=
  ∀ n, P4544468210544621358.a n = A025286 (n + 1)

end A025286

/-! ## A025286.P10364828777990701953

`filter[A000443(n+1), A267612(#)]`
-/

namespace A025286.P10364828777990701953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000443 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267612 (f1 j).toNat = 1) n)

end

end A025286.P10364828777990701953

namespace A025286

/-- `filter[A000443(n+1), A267612(#)]` -/
def P10364828777990701953.Spec : Prop :=
  ∀ n, P10364828777990701953.a n = A025286 (n + 1)

end A025286

/-! ## A025286.P6804565589913874483

`filter[A000443(n+1), A267635(#)]`
-/

namespace A025286.P6804565589913874483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000443 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267635 (f1 j).toNat = 1) n)

end

end A025286.P6804565589913874483

namespace A025286

/-- `filter[A000443(n+1), A267635(#)]` -/
def P6804565589913874483.Spec : Prop :=
  ∀ n, P6804565589913874483.a n = A025286 (n + 1)

end A025286

/-! ## A025286.P10398395310069160089

`A028310(∩[A000443(n+1), A025294(n+1)])`
-/

namespace A025286.P10398395310069160089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000443 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025294 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A025286.P10398395310069160089

namespace A025286

/-- `A028310(∩[A000443(n+1), A025294(n+1)])` -/
def P10398395310069160089.Spec : Prop :=
  ∀ n, P10398395310069160089.a n = A025286 (n + 1)

end A025286

/-! ## A025286.P2715249392024732391

`∩[A000443(A143431((n+1)²)²+n), A025294(n+1)]`
-/

namespace A025286.P2715249392024732391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000443 (A143431 ((n + 1) ^ 2) ^ 2 + (n : ℤ)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025294 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A025286.P2715249392024732391

namespace A025286

/-- `∩[A000443(A143431((n+1)²)²+n), A025294(n+1)]` -/
def P2715249392024732391.Spec : Prop :=
  ∀ n, (P2715249392024732391.a n : ℤ) = A025286 (n + 1)

end A025286

/-! ## A025286.P6546088007759943866

`eq[3, A025435(2*n)]`
-/

namespace A025286.P6546088007759943866
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025435 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A025286.P6546088007759943866

namespace A025286

/-- `eq[3, A025435(2*n)]` -/
def P6546088007759943866.Spec : Prop :=
  ∀ n, (P6546088007759943866.a n : ℤ) = A025286 (n + 1)

end A025286

/-! ## A025286.P15334673062518354066

`eq[6, A000925(A005843(n))]`
-/

namespace A025286.P15334673062518354066
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000925 (A005843 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A025286.P15334673062518354066

namespace A025286

/-- `eq[6, A000925(A005843(n))]` -/
def P15334673062518354066.Spec : Prop :=
  ∀ n, (P15334673062518354066.a n : ℤ) = A025286 (n + 1)

end A025286

/-!
# A025287: Numbers that are the sum of 2 nonzero squares in exactly 4 ways.

The programs for A025287, there is no canonical definition to state claims against.
-/

/-! ## A025287.P17021158750345836956

`A025305(n+1)%A336060(n+1)`
-/

namespace A025287.P17021158750345836956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A025305 (n + 1)) (A336060 (n + 1))

end

end A025287.P17021158750345836956

/-! ## A025287.P2835874083271667623

`A025305(A263925(n+1)%2+n)`
-/

namespace A025287.P2835874083271667623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025305 (Int.tmod (A263925 (n + 1)) 2 + (n : ℤ)).toNat

end

end A025287.P2835874083271667623

/-!
# A025288: Numbers that are the sum of 2 nonzero squares in exactly 5 ways.

The programs for A025288, there is no canonical definition to state claims against.
-/

/-! ## A025288.P199784891477508595

`filter[A294716(n+1), A049240(#)]`
-/

namespace A025288.P199784891477508595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294716 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A049240 (f1 j).toNat = 1) n)

end

end A025288.P199784891477508595

/-! ## A025288.P920293969053327382

`∩[A025296(n+1), A294716(n+1)]`
-/

namespace A025288.P920293969053327382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025296 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294716 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A025288.P920293969053327382

/-! ## A025288.P6809972038253346962

`filter[A025296(n+1), A360122(#)]`
-/

namespace A025288.P6809972038253346962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025296 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A360122 (f1 j).toNat = 1) n)

end

end A025288.P6809972038253346962

/-! ## A025288.P12631789164776993381

`filter[A025296(n+1), A360123(#)]`
-/

namespace A025288.P12631789164776993381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025296 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A360123 (f1 j).toNat = 1) n)

end

end A025288.P12631789164776993381

/-!
# A025289: Numbers that are the sum of 2 nonzero squares in exactly 6 ways.

The programs for A025289, there is no canonical definition to state claims against.
-/

/-! ## A025289.P10113590198711065284

`filter[A025297(n+1), A353470(#)]`
-/

namespace A025289.P10113590198711065284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025297 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353470 (f1 j).toNat = 1) n)

end

end A025289.P10113590198711065284

/-!
# A025290: Numbers that are the sum of 2 nonzero squares in exactly 7 ways.

The programs for A025290, there is no canonical definition to state claims against.
-/

/-! ## A025290.P10984424981917673780

`A025308(lt[A098133(n+1), A328113(n+1)])`
-/

namespace A025290.P10984424981917673780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098133 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328113 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025308 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A025290.P10984424981917673780

/-! ## A025290.P14651528048431859406

`A025308(eq[A049820(n+1), A103632(n)])`
-/

namespace A025290.P14651528048431859406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049820 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103632 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025308 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A025290.P14651528048431859406

/-!
# A025292: Numbers that are the sum of 2 nonzero squares in exactly 9 ways.

The programs for A025292, there is no canonical definition to state claims against.
-/

/-! ## A025292.P10967027269887868440

`A097245(A306202(n+1)%A057469(n+1))`
-/

namespace A025292.P10967027269887868440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097245 (Int.tmod (A306202 (n + 1)) (A057469 (n + 1))).toNat

end

end A025292.P10967027269887868440

/-! ## A025292.P8995056210894592022

`A097245(A020662(n+1)%A373179(n+1))`
-/

namespace A025292.P8995056210894592022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097245 (Int.tmod (A020662 (n + 1)) (A373179 (n + 1))).toNat

end

end A025292.P8995056210894592022

/-! ## A025292.P6465143237433411479

`A097245(A316495(n+1)%A191753(3*n+1))`
-/

namespace A025292.P6465143237433411479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097245 (Int.tmod (A316495 (n + 1)) (A191753 (3 * n + 1))).toNat

end

end A025292.P6465143237433411479

/-! ## A025292.P6984504686671903277

`A097245(A353511(n+1)%A057178(n+1))`
-/

namespace A025292.P6984504686671903277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097245 (Int.tmod (A353511 (n + 1)) (A057178 (n + 1))).toNat

end

end A025292.P6984504686671903277

/-! ## A025292.P3541019184880867385

`A097245(A265999(n+1)%A048818(3*(n+1)))`
-/

namespace A025292.P3541019184880867385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097245 (Int.tmod (A265999 (n + 1)) (A048818 (3 * (n + 1)))).toNat

end

end A025292.P3541019184880867385

/-!
# A025294: Numbers that are the sum of 2 nonzero squares in 3 or more ways.

The programs for A025294, there is no canonical definition to state claims against.
-/

/-! ## A025294.P16842808670269020582

`∪[A025286(n+1), A025295(n+1)]`
-/

namespace A025294.P16842808670269020582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025286 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025295 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A025294.P16842808670269020582

/-! ## A025294.P17958677274864886696

`∪[A025286(n+1), A025313(n+1)]`
-/

namespace A025294.P17958677274864886696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025286 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025313 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A025294.P17958677274864886696

/-! ## A025294.P12650831575011476831

`lt[2, A025426(n)]`
-/

namespace A025294.P12650831575011476831
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025426 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A025294.P12650831575011476831

/-! ## A025294.P17715991113843494092

`lt[4, A063725(n)]`
-/

namespace A025294.P17715991113843494092
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063725 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A025294.P17715991113843494092

/-! ## A025294.P17186065751417229989

`lt[5, A000925(2*n)]`
-/

namespace A025294.P17186065751417229989
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000925 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A025294.P17186065751417229989

/-!
# A025295: Numbers that are the sum of 2 nonzero squares in 4 or more ways.

The programs for A025295, there is no canonical definition to state claims against.
-/

/-! ## A025295.P6269158133671745986

`∪[A025287(n+1), A025296(n+1)]`
-/

namespace A025295.P6269158133671745986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025287 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025296 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A025295.P6269158133671745986

/-!
# A025296: Numbers that are the sum of 2 nonzero squares in 5 or more ways.

The programs for A025296, there is no canonical definition to state claims against.
-/

/-! ## A025296.P15075290543860820102

`∪[A025288(n+1), A025297(n+1)]`
-/

namespace A025296.P15075290543860820102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025288 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025297 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A025296.P15075290543860820102

/-! ## A025296.P12216134579723700928

`∪[A025288(n+1), A025315(n+1)]`
-/

namespace A025296.P12216134579723700928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025288 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025315 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A025296.P12216134579723700928

/-! ## A025296.P16266797737961821319

`∪[A025288(n+1), A025289(n+1)]%A273236(n+1)`
-/

namespace A025296.P16266797737961821319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025288 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025289 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n : ℤ) (A273236 (n + 1))

end

end A025296.P16266797737961821319

/-!
# A025297: Numbers that are the sum of 2 nonzero squares in 6 or more ways.

The programs for A025297, there is no canonical definition to state claims against.
-/

/-! ## A025297.P5073797140687880522

`∪[A025289(n+1), A025298(n+1)]`
-/

namespace A025297.P5073797140687880522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025289 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025298 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A025297.P5073797140687880522

/-! ## A025297.P3420371214393216203

`∩[A025289(n+1), A326311(n+1)]`
-/

namespace A025297.P3420371214393216203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025289 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326311 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A025297.P3420371214393216203

/-! ## A025297.P13980038353523960054

`A025289(n+1)+A000007(A176490(n))`
-/

namespace A025297.P13980038353523960054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025289 (n + 1) + A000007 (A176490 n).toNat

end

end A025297.P13980038353523960054

/-! ## A025297.P1906135864078452693

`A025289(n+1)%A025291(A025049(n))`
-/

namespace A025297.P1906135864078452693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A025289 (n + 1)) (A025291 (A025049 n).toNat)

end

end A025297.P1906135864078452693

/-! ## A025297.P10802588118734517835

`or(A010894(A092056(n)), A025289(n+1))`
-/

namespace A025297.P10802588118734517835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A010894 ((A092056 n).toNat + 21)) (A025289 (n + 1))

end

end A025297.P10802588118734517835

/-!
# A025299: Numbers that are the sum of 2 nonzero squares in 8 or more ways.

The programs for A025299, there is no canonical definition to state claims against.
-/

/-! ## A025299.P14387813087246363949

`∪[A025291(n+1), A025300(n+1)]`
-/

namespace A025299.P14387813087246363949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025291 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025300 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A025299.P14387813087246363949

