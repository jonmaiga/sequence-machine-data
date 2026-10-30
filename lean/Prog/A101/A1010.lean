import SequenceMachineLib
import Mathlib.Tactic
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
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C042
import Seq.B000.C044
import Seq.B000.C045
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C013
import Seq.B001.C014
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B004.C004
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B011.C000
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
import Seq.Opaque.C014
import Seq.Opaque.C015
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A101000: Period 3: repeat [0, 1, 3].

The programs for A101000, the canonical program `A101000.P8769212031880855485` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A101000 has offset 0).

The definition of A101000 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A101000.anchor (n : ℕ) : A101000 n = [0, 1, 3].getD (n % 3) 0` in `Proof.A101.A101000`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A101000.P8769212031880855485

`2^(n%3)-1`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A101000

/-- `2^(n%3)-1` -/
def P8769212031880855485.Spec : Prop :=
  ∀ n, P8769212031880855485.a n = A101000 n

theorem P8769212031880855485.correct : P8769212031880855485.Spec := by
  intro n
  simp only [A101000]

end A101000

/-!
# A101001: Indices of primes in sequence defined by A(0) = 91, A(n) = 10*A(n-1) + 11 for n > 0.

The programs for A101001, there is no canonical definition to state claims against.
-/

/-! ## A101001.P2489805407196028173

`A103093(n+1)-1`
-/

namespace A101001.P2489805407196028173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103093 (n + 1) - 1

end

end A101001.P2489805407196028173

/-! ## A101001.P1810681469733785548

`A165326(4*n+2)+A103093(n+1)`
-/

namespace A101001.P1810681469733785548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165326 (4 * n + 2) + A103093 (n + 1)

end

end A101001.P1810681469733785548

/-! ## A101001.P3881629470064119737

`xor(-A000010(((-1)^n)²), -A103093(n+1))`
-/

namespace A101001.P3881629470064119737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (-A000010 (((-1) ^ n) ^ 2).toNat) (-A103093 (n + 1))

end

end A101001.P3881629470064119737

/-! ## A101001.P16673112815004419890

`A115140(A133687(n))+A103093(n+1)`
-/

namespace A101001.P16673112815004419890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115140 (A133687 n).toNat + A103093 (n + 1)

end

end A101001.P16673112815004419890

/-! ## A101001.P7169974874093999086

`A209615(A000982(2*(n+2)))+A103093(n+1)`
-/

namespace A101001.P7169974874093999086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209615 (A000982 (2 * (n + 2))).toNat + A103093 (n + 1)

end

end A101001.P7169974874093999086

/-!
# A101002: Indices of primes in sequence defined by A(0) = 93, A(n) = 10*A(n-1) - 7 for n > 0.

The programs for A101002, there is no canonical definition to state claims against.
-/

/-! ## A101002.P14984288762914834059

`A103094(n+1)-1`
-/

namespace A101002.P14984288762914834059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103094 (n + 1) - 1

end

end A101002.P14984288762914834059

/-! ## A101002.P11975129133974066117

`record[A103094(A000174(n))-1]`
-/

namespace A101002.P11975129133974066117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103094 (A000174 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A101002.P11975129133974066117

/-! ## A101002.P8730498467654739423

`A260196(n+2)+A103094(n+1)`
-/

namespace A101002.P8730498467654739423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 (n + 2) + A103094 (n + 1)

end

end A101002.P8730498467654739423

/-! ## A101002.P5826458416332543492

`A103115(floor(n/10))+A103094(n+1)`
-/

namespace A101002.P5826458416332543492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103115 ⌊(n : ℚ) / 10⌋.toNat + A103094 (n + 1)

end

end A101002.P5826458416332543492

/-! ## A101002.P15011536495584434764

`A167373(3*n+2)+A103094(n+1)`
-/

namespace A101002.P15011536495584434764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167373 (3 * n + 2) + A103094 (n + 1)

end

end A101002.P15011536495584434764

/-!
# A101003: Indices of primes in sequence defined by A(0) = 97, A(n) = 10*A(n-1) - 43 for n > 0.

The programs for A101003, there is no canonical definition to state claims against.
-/

/-! ## A101003.P4430004927227434179

`A103095(n+1)-1`
-/

namespace A101003.P4430004927227434179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103095 (n + 1) - 1

end

end A101003.P4430004927227434179

/-! ## A101003.P14341417779413532323

`record[Δ[A103095(A152271(n))]]`
-/

namespace A101003.P14341417779413532323
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103095 (A152271 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A101003.P14341417779413532323

/-! ## A101003.P16962368279375101911

`A134824(n+2)+A103095(n+1)`
-/

namespace A101003.P16962368279375101911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134824 (n + 2) + A103095 (n + 1)

end

end A101003.P16962368279375101911

/-! ## A101003.P11715748550863570312

`A165326(4*n+2)+A103095(n+1)`
-/

namespace A101003.P11715748550863570312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165326 (4 * n + 2) + A103095 (n + 1)

end

end A101003.P11715748550863570312

/-! ## A101003.P14703815279084441766

`A106400(A000079(n))+A103095(n+1)`
-/

namespace A101003.P14703815279084441766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106400 (A000079 n).toNat + A103095 (n + 1)

end

end A101003.P14703815279084441766

/-!
# A101005: Indices of primes in sequence defined by A(0) = 97, A(n) = 10*A(n-1) - 33 for n > 0.

The programs for A101005, there is no canonical definition to state claims against.
-/

/-! ## A101005.P10961438532386069883

`A103096(n+2)-1`
-/

namespace A101005.P10961438532386069883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103096 (n + 2) - 1

end

end A101005.P10961438532386069883

/-! ## A101005.P14801754623071191468

`A134824(n+2)+A103096(n+2)`
-/

namespace A101005.P14801754623071191468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134824 (n + 2) + A103096 (n + 2)

end

end A101005.P14801754623071191468

/-! ## A101005.P237436485728398175

`∑[Δ[A103096(n+1)]%A000079(n)]`
-/

namespace A101005.P237436485728398175
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103096 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (n + 1) - f2 n) (A000079 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101005.P237436485728398175

/-! ## A101005.P4122605217383813517

`A110315(2*n+1)+A103096(n+2)+n`
-/

namespace A101005.P4122605217383813517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110315 (2 * n + 1) + (A103096 (n + 2) + (n : ℤ))

end

end A101005.P4122605217383813517

/-! ## A101005.P10963149003218649484

`A295725(A020639(2*(n+1)))+A103096(n+2)`
-/

namespace A101005.P10963149003218649484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295725 (A020639 (2 * (n + 1))).toNat + A103096 (n + 2)

end

end A101005.P10963149003218649484

/-!
# A101006: Indices of primes in sequence defined by A(0) = 91, A(n) = 10*A(n-1) + 31 for n > 0.

The programs for A101006, there is no canonical definition to state claims against.
-/

/-! ## A101006.P6576618210798976790

`A103097(n+1)-1`
-/

namespace A101006.P6576618210798976790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103097 (n + 1) - 1

end

end A101006.P6576618210798976790

/-! ## A101006.P10430791825325175530

`A153881(n+2)+A103097(n+1)`
-/

namespace A101006.P10430791825325175530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153881 (n + 2) + A103097 (n + 1)

end

end A101006.P10430791825325175530

/-! ## A101006.P1588087717697790927

`A103115(floor(n/5))+A103097(n+1)`
-/

namespace A101006.P1588087717697790927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103115 ⌊(n : ℚ) / 5⌋.toNat + A103097 (n + 1)

end

end A101006.P1588087717697790927

/-! ## A101006.P10773941978387235879

`A220890(A000700(n))+A103097(n+1)`
-/

namespace A101006.P10773941978387235879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220890 (A000700 n).toNat + A103097 (n + 1)

end

end A101006.P10773941978387235879

/-! ## A101006.P9978286879705582339

`A328646(A208879(n))+A103097(n+1)`
-/

namespace A101006.P9978286879705582339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328646 (A208879 n).toNat + A103097 (n + 1)

end

end A101006.P9978286879705582339

/-!
# A101007: Indices of primes in sequence defined by A(0) = 93, A(n) = 10*A(n-1) + 13 for n > 0.

The programs for A101007, there is no canonical definition to state claims against.
-/

/-! ## A101007.P15785816182324224955

`A103098(n+1)-1`
-/

namespace A101007.P15785816182324224955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103098 (n + 1) - 1

end

end A101007.P15785816182324224955

/-! ## A101007.P6864445155281088569

`A066182(A103098(n+1))`
-/

namespace A101007.P6864445155281088569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066182 (A103098 (n + 1)).toNat

end

end A101007.P6864445155281088569

/-! ## A101007.P10658823097197583735

`record[A103098(A051340(n))-1]`
-/

namespace A101007.P10658823097197583735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103098 (A051340 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A101007.P10658823097197583735

/-! ## A101007.P15459318980085403945

`A260196(n+2)+A103098(n+1)`
-/

namespace A101007.P15459318980085403945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 (n + 2) + A103098 (n + 1)

end

end A101007.P15459318980085403945

/-! ## A101007.P10814686632333912254

`abs(A103098(n+1)+A057428(n+1))`
-/

namespace A101007.P10814686632333912254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A103098 (n + 1) + A057428 (n + 1)|

end

end A101007.P10814686632333912254

/-!
# A101008: Indices of primes in sequence defined by A(0) = 97, A(n) = 10*A(n-1) - 23 for n > 0.

The programs for A101008, there is no canonical definition to state claims against.
-/

/-! ## A101008.P1794502600152883828

`A103099(n+1)-1`
-/

namespace A101008.P1794502600152883828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103099 (n + 1) - 1

end

end A101008.P1794502600152883828

/-! ## A101008.P16145221630338586414

`record[Δ[A103099(A152271(n))]]`
-/

namespace A101008.P16145221630338586414
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103099 (A152271 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A101008.P16145221630338586414

/-! ## A101008.P11407483158684484170

`record[A103099(A086742(n))-1]`
-/

namespace A101008.P11407483158684484170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103099 (A086742 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A101008.P11407483158684484170

/-! ## A101008.P5009599347696202417

`A134824(n+2)+A103099(n+1)`
-/

namespace A101008.P5009599347696202417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134824 (n + 2) + A103099 (n + 1)

end

end A101008.P5009599347696202417

/-! ## A101008.P4385786499422208749

`abs(A103099(n+1)+A057428(n+1))`
-/

namespace A101008.P4385786499422208749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A103099 (n + 1) + A057428 (n + 1)|

end

end A101008.P4385786499422208749

/-!
# A101009: Indices of primes in sequence defined by A(0) = 91, A(n) = 10*A(n-1) + 41 for n > 0.

The programs for A101009, there is no canonical definition to state claims against.
-/

/-! ## A101009.P8956564988899737448

`A103100(n+2)-1`
-/

namespace A101009.P8956564988899737448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103100 (n + 2) - 1

end

end A101009.P8956564988899737448

/-! ## A101009.P13409298831465789172

`A134824(n+2)+A103100(n+2)`
-/

namespace A101009.P13409298831465789172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134824 (n + 2) + A103100 (n + 2)

end

end A101009.P13409298831465789172

/-! ## A101009.P12522231930299915371

`A260196(n+2)+A103100(n+2)`
-/

namespace A101009.P12522231930299915371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 (n + 2) + A103100 (n + 2)

end

end A101009.P12522231930299915371

/-! ## A101009.P11490228676514006945

`A280193(2*n+1)+A103100(n+2)`
-/

namespace A101009.P11490228676514006945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280193 (2 * n + 1) + A103100 (n + 2)

end

end A101009.P11490228676514006945

/-! ## A101009.P6925789043554791906

`abs(A103100(n+2)+A008683(A004139(n+1)))`
-/

namespace A101009.P6925789043554791906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A103100 (n + 2) + A008683 (A004139 (n + 1)).toNat|

end

end A101009.P6925789043554791906

/-!
# A101010: Indices of primes in sequence defined by A(0) = 93, A(n) = 10*A(n-1) + 23 for n > 0.

The programs for A101010, there is no canonical definition to state claims against.
-/

/-! ## A101010.P18289682091465323995

`A103101(n+2)-1`
-/

namespace A101010.P18289682091465323995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103101 (n + 2) - 1

end

end A101010.P18289682091465323995

/-! ## A101010.P7386436003535949944

`record[A260196(n)+A103101(n+1)]`
-/

namespace A101010.P7386436003535949944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 n + A103101 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A101010.P7386436003535949944

/-! ## A101010.P15043351306745459668

`A260196(A168143(n))+A103101(n+2)`
-/

namespace A101010.P15043351306745459668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 (A168143 (n + 17)).toNat + A103101 (n + 2)

end

end A101010.P15043351306745459668

/-!
# A101011: Indices of primes in sequence defined by A(0) = 97, A(n) = 10*A(n-1) - 13 for n > 0.

The programs for A101011, there is no canonical definition to state claims against.
-/

/-! ## A101011.P5720056694283271501

`A103102(n+2)-1`
-/

namespace A101011.P5720056694283271501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103102 (n + 2) - 1

end

end A101011.P5720056694283271501

/-! ## A101011.P411802873303908239

`∑[floor(n^(1/3))*Δ[A103102(n+1)]]`
-/

namespace A101011.P411802873303908239
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103102 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) ^ ((1 : ℚ) / 3 : ℝ)⌋ * (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101011.P411802873303908239

/-! ## A101011.P3887441264553363527

`xor(1, A103102(A020725(n+1)))`
-/

namespace A101011.P3887441264553363527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A103102 (A020725 (n + 1)).toNat)

end

end A101011.P3887441264553363527

/-! ## A101011.P17786909999756798445

`xor(1, A103102(A037344(n+1)))`
-/

namespace A101011.P17786909999756798445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A103102 (A037344 (n + 1)).toNat)

end

end A101011.P17786909999756798445

/-!
# A101012: Indices of primes in sequence defined by A(0) = 91, A(n) = 10*A(n-1) + 51 for n > 0.

The programs for A101012, there is no canonical definition to state claims against.
-/

/-! ## A101012.P11551470953646861179

`A103103(n+1)-1`
-/

namespace A101012.P11551470953646861179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103103 (n + 1) - 1

end

end A101012.P11551470953646861179

/-! ## A101012.P14300914154892880805

`A153881(n+2)+A103103(n+1)`
-/

namespace A101012.P14300914154892880805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153881 (n + 2) + A103103 (n + 1)

end

end A101012.P14300914154892880805

/-! ## A101012.P6134433550059948959

`A165326(2*(n+1))+A103103(n+1)`
-/

namespace A101012.P6134433550059948959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165326 (2 * (n + 1)) + A103103 (n + 1)

end

end A101012.P6134433550059948959

/-! ## A101012.P8599792511112233316

`A001478(n+1)+A103103(n+1)+n`
-/

namespace A101012.P8599792511112233316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001478 (n + 1) + (A103103 (n + 1) + (n : ℤ))

end

end A101012.P8599792511112233316

/-! ## A101012.P13020465943068928341

`A103131(A006567(n+1))+A103103(n+1)`
-/

namespace A101012.P13020465943068928341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103131 (A006567 (n + 1)).toNat + A103103 (n + 1)

end

end A101012.P13020465943068928341

/-!
# A101013: Indices of primes in sequence defined by A(0) = 97, A(n) = 10*A(n-1) - 3 for n > 0.

The programs for A101013, there is no canonical definition to state claims against.
-/

/-! ## A101013.P2075840164554360744

`A103104(n+1)-1`
-/

namespace A101013.P2075840164554360744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103104 (n + 1) - 1

end

end A101013.P2075840164554360744

/-! ## A101013.P5501386687091564697

`record[Δ[A103104(A152271(n))]]`
-/

namespace A101013.P5501386687091564697
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103104 (A152271 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A101013.P5501386687091564697

/-! ## A101013.P9617271114966884680

`record[Δ[A103104(A158416(n))]]`
-/

namespace A101013.P9617271114966884680
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103104 (A158416 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A101013.P9617271114966884680

/-! ## A101013.P7495518727228798536

`record[A103104(A263131(n))-1]`
-/

namespace A101013.P7495518727228798536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103104 (A263131 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A101013.P7495518727228798536

/-! ## A101013.P16919138906786663406

`A260196(n+2)+A103104(n+1)`
-/

namespace A101013.P16919138906786663406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 (n + 2) + A103104 (n + 1)

end

end A101013.P16919138906786663406

/-!
# A101014: Indices of primes in sequence defined by A(0) = 91, A(n) = 10*A(n-1) + 61 for n > 0.

The programs for A101014, there is no canonical definition to state claims against.
-/

/-! ## A101014.P3255485584105799175

`A103105(n+2)-1`
-/

namespace A101014.P3255485584105799175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103105 (n + 2) - 1

end

end A101014.P3255485584105799175

/-! ## A101014.P13292678134642326609

`A001478(n+1)+A103105(n+2)+n`
-/

namespace A101014.P13292678134642326609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001478 (n + 1) + (A103105 (n + 2) + (n : ℤ))

end

end A101014.P13292678134642326609

/-! ## A101014.P12582150354918560411

`A278400(gcd(n, n+1))+A103105(n+2)`
-/

namespace A101014.P12582150354918560411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278400 (Nat.gcd n (n + 1)) + A103105 (n + 2)

end

end A101014.P12582150354918560411

/-! ## A101014.P2109358790648293735

`abs(A103105(n+2)+A033999(2*n+1))`
-/

namespace A101014.P2109358790648293735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A103105 (n + 2) + A033999 (2 * n + 1)|

end

end A101014.P2109358790648293735

/-!
# A101015: Indices of primes in sequence defined by A(0) = 93, A(n) = 10*A(n-1) + 43 for n > 0.

The programs for A101015, there is no canonical definition to state claims against.
-/

/-! ## A101015.P7667376179648207554

`A103106(n+2)-1`
-/

namespace A101015.P7667376179648207554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103106 (n + 2) - 1

end

end A101015.P7667376179648207554

/-! ## A101015.P7351649384239763754

`A323202(2*n+1)+A103106(n+2)`
-/

namespace A101015.P7351649384239763754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323202 (2 * n + 1) + A103106 (n + 2)

end

end A101015.P7351649384239763754

/-! ## A101015.P9636409106596636349

`A105812(4*(n+1))+A103106(n+2)`
-/

namespace A101015.P9636409106596636349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105812 (4 * (n + 1)) + A103106 (n + 2)

end

end A101015.P9636409106596636349

/-! ## A101015.P5630748167051861725

`A295729(and(n, -(n+1)))+A103106(n+2)`
-/

namespace A101015.P5630748167051861725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295729 (Int.land (n : ℤ) (-(n + 1 : ℤ))).toNat + A103106 (n + 2)

end

end A101015.P5630748167051861725

/-! ## A101015.P5823444820350269700

`A188510(A127578(n+1))+A103106(n+2)`
-/

namespace A101015.P5823444820350269700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188510 (A127578 (n + 1)).toNat + A103106 (n + 2)

end

end A101015.P5823444820350269700

/-!
# A101016: Indices of primes in sequence defined by A(0) = 91, A(n) = 10*A(n-1) + 71 for n > 0.

The programs for A101016, there is no canonical definition to state claims against.
-/

/-! ## A101016.P11014852949847033320

`A103107(n+2)-1`
-/

namespace A101016.P11014852949847033320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103107 (n + 2) - 1

end

end A101016.P11014852949847033320

/-! ## A101016.P134590426375244241

`abs(A103107(n+2)+A081729(A017557(n)))`
-/

namespace A101016.P134590426375244241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A103107 (n + 2) + A081729 (A017557 n).toNat|

end

end A101016.P134590426375244241

/-! ## A101016.P1307541515136406432

`A103115(A078134(n+1))+A103107(n+2)`
-/

namespace A101016.P1307541515136406432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103115 (A078134 (n + 1)).toNat + A103107 (n + 2)

end

end A101016.P1307541515136406432

/-! ## A101016.P17606187574360300148

`A103131(A103149(n+1))+A103107(n+2)`
-/

namespace A101016.P17606187574360300148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103131 (A103149 (n + 1)).toNat + A103107 (n + 2)

end

end A101016.P17606187574360300148

/-! ## A101016.P17676038720480095441

`A103115(A161043(n+1))+A103107(n+2)`
-/

namespace A101016.P17676038720480095441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103115 (A161043 (n + 1)).toNat + A103107 (n + 2)

end

end A101016.P17676038720480095441

/-!
# A101017: Indices of primes in sequence defined by A(0) = 93, A(n) = 10*A(n-1) + 53 for n > 0.

The programs for A101017, there is no canonical definition to state claims against.
-/

/-! ## A101017.P34832624026488093

`A103108(n+1)-1`
-/

namespace A101017.P34832624026488093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103108 (n + 1) - 1

end

end A101017.P34832624026488093

/-! ## A101017.P16371447019450171174

`A103115(A006927(n))+A103108(n+1)`
-/

namespace A101017.P16371447019450171174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103115 (A006927 n).toNat + A103108 (n + 1)

end

end A101017.P16371447019450171174

/-! ## A101017.P2176316318575473623

`A103115(A240009(n))+A103108(n+1)`
-/

namespace A101017.P2176316318575473623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103115 (A240009 n).toNat + A103108 (n + 1)

end

end A101017.P2176316318575473623

/-! ## A101017.P14711459468147844947

`A103131(A006567(n+1))+A103108(n+1)`
-/

namespace A101017.P14711459468147844947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103131 (A006567 (n + 1)).toNat + A103108 (n + 1)

end

end A101017.P14711459468147844947

/-! ## A101017.P3231480773973881200

`A103131(A103119(n+1))+A103108(n+1)`
-/

namespace A101017.P3231480773973881200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103131 (A103119 (n + 1)).toNat + A103108 (n + 1)

end

end A101017.P3231480773973881200

/-!
# A101018: Indices of primes in sequence defined by A(0) = 97, A(n) = 10*A(n-1) + 17 for n > 0.

The programs for A101018, there is no canonical definition to state claims against.
-/

/-! ## A101018.P8259897408136415788

`A103109(n+1)-1`
-/

namespace A101018.P8259897408136415788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103109 (n + 1) - 1

end

end A101018.P8259897408136415788

/-! ## A101018.P6736362708872848032

`record[Δ[A103109(A152271(n))]]`
-/

namespace A101018.P6736362708872848032
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103109 (A152271 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A101018.P6736362708872848032

/-! ## A101018.P13072372324441443275

`A134824(n+2)+A103109(n+1)`
-/

namespace A101018.P13072372324441443275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134824 (n + 2) + A103109 (n + 1)

end

end A101018.P13072372324441443275

/-! ## A101018.P2234830553370139576

`A153881(n+2)+A103109(n+1)`
-/

namespace A101018.P2234830553370139576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153881 (n + 2) + A103109 (n + 1)

end

end A101018.P2234830553370139576

/-! ## A101018.P3005429922975451394

`abs(A103109(n+1)+A033999(2*n+1))`
-/

namespace A101018.P3005429922975451394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A103109 (n + 1) + A033999 (2 * n + 1)|

end

end A101018.P3005429922975451394

/-!
# A101020: Table of numerators of coefficients of certain rational polynomials.

The programs for A101020, there is no canonical definition to state claims against.
-/

/-! ## A101020.P9030974736899526857

`gcd(A021010(n), A174312(A203031(n+1)))`
-/

namespace A101020.P9030974736899526857
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A021010 n) (A174312 (A203031 (n + 1)).toNat)

end

end A101020.P9030974736899526857

/-! ## A101020.P14504635497871290387

`gcd(A014642(A048854(n)), A021010(n))`
-/

namespace A101020.P14504635497871290387
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A014642 (A048854 n).toNat) (A021010 n)

end

end A101020.P14504635497871290387

/-! ## A101020.P11939657340744374919

`gcd(A173610(A005843(n+1)), A259985(n))`
-/

namespace A101020.P11939657340744374919
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A173610 (A005843 (n + 1)).toNat) (A259985 n)

end

end A101020.P11939657340744374919

/-! ## A101020.P8662541301325396181

`A375400(A144084(n))`
-/

namespace A101020.P8662541301325396181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375400 (A144084 n).toNat

end

end A101020.P8662541301325396181

/-! ## A101020.P8771134235745074796

`A375400(A259985(n))`
-/

namespace A101020.P8771134235745074796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375400 (A259985 n).toNat

end

end A101020.P8771134235745074796

/-!
# A101021: Table of denominators of coefficients of certain rational polynomials.

The programs for A101021, there is no canonical definition to state claims against.
-/

/-! ## A101021.P4522239746141015630

`gcd(A028310(A001497(n+2)), A328901(n))`
-/

namespace A101021.P4522239746141015630
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A028310 (A001497 (n + 2)).toNat) (A328901 n)

end

end A101021.P4522239746141015630

/-! ## A101021.P231465099733729440

`gcd(A004443(A274300(n)), A274292(n))`
-/

namespace A101021.P231465099733729440
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A004443 (A274300 n).toNat) (A274292 n)

end

end A101021.P231465099733729440

/-! ## A101021.P3403051369116338866

`A037162(A037162(n)^A335105(n+1))`
-/

namespace A101021.P3403051369116338866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037162 (SequenceMachineLib.roundAway ((A037162 n : ℚ) ^ (A335105 (n + 1) : ℤ))).toNat

end

end A101021.P3403051369116338866

/-! ## A101021.P1839980146197973931

`A007318(A125071(n+1)^A133441(n+1))`
-/

namespace A101021.P1839980146197973931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.roundAway ((A125071 (n + 1) : ℚ) ^ (A133441 (n + 1) : ℤ))).toNat

end

end A101021.P1839980146197973931

/-!
# A101022: Table of numerators of coefficients of certain rational polynomials.

The programs for A101022, there is no canonical definition to state claims against.
-/

/-! ## A101022.P6496447777441766971

`gcd(A001222(A279755(n)), A008279(n))`
-/

namespace A101022.P6496447777441766971
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001222 (A279755 n).toNat) (A008279 n)

end

end A101022.P6496447777441766971

/-! ## A101022.P9205784008644113073

`A134134(A267629(n+1))%11`
-/

namespace A101022.P9205784008644113073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A134134 (A267629 (n + 1)).toNat) 11

end

end A101022.P9205784008644113073

/-! ## A101022.P7808015753676089478

`gcd(∏{p}[n+1, 1-#], A128180(A001405(n)))`
-/

namespace A101022.P7808015753676089478
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (∏ p ∈ Nat.primeFactors (f1 n), (1 - (p : ℤ))) (A128180 (A001405 n).toNat)

end

end A101022.P7808015753676089478

/-! ## A101022.P8665031736152877716

`gcd(∏{p}[n+1, #-1], A003987(A358837(n)))`
-/

namespace A101022.P8665031736152877716
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (∏ p ∈ Nat.primeFactors (f1 n), ((p : ℤ) - 1)) (A003987 (A358837 n).toNat)

end

end A101022.P8665031736152877716

/-! ## A101022.P16009991564981290606

`A069288(A146116(n)+A103295(n))`
-/

namespace A101022.P16009991564981290606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069288 (A146116 n + A103295 n).toNat

end

end A101022.P16009991564981290606

/-!
# A101024: Table of numerators of coefficients of certain rational polynomials.

The programs for A101024, there is no canonical definition to state claims against.
-/

/-! ## A101024.P5750295943649094513

`A208751(n+1)^A007582(A144161(n))`
-/

namespace A101024.P5750295943649094513
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A208751 (n + 1) : ℚ) ^ (A007582 (A144161 n).toNat : ℤ)

end

end A101024.P5750295943649094513

/-! ## A101024.P841838886647573305

`lcm(A133181(A059481(n)), A133200(n+1))`
-/

namespace A101024.P841838886647573305
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A133181 (A059481 n).toNat) (A133200 (n + 1))

end

end A101024.P841838886647573305

/-! ## A101024.P1484493744359208948

`A208751(n+1)+A051344(A095091(n+3))`
-/

namespace A101024.P1484493744359208948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208751 (n + 1) + A051344 (A095091 (n + 3)).toNat

end

end A101024.P1484493744359208948

/-! ## A101024.P690103671872048226

`A133200(n+1)^A005647(A266854(n+1))`
-/

namespace A101024.P690103671872048226
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A133200 (n + 1) : ℚ) ^ (A005647 (A266854 (n + 1)).toNat : ℤ)

end

end A101024.P690103671872048226

/-! ## A101024.P9287717555088685605

`A208751(n+1)^A005647(A266854(n+1))`
-/

namespace A101024.P9287717555088685605
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A208751 (n + 1) : ℚ) ^ (A005647 (A266854 (n + 1)).toNat : ℤ)

end

end A101024.P9287717555088685605

/-!
# A101025: Table of denominators of coefficients of certain rational polynomials.

The programs for A101025, there is no canonical definition to state claims against.
-/

/-! ## A101025.P6359005720426799733

`gcd(A101021(n), A140714(n+2))`
-/

namespace A101025.P6359005720426799733
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A101021 n) (A140714 (n + 2))

end

end A101025.P6359005720426799733

/-!
# A101028: Numerator of partial sums of a certain series. First member (m = 2) of a family.

The programs for A101028, there is no canonical definition to state claims against.
-/

/-! ## A101028.P15650894344443844031

`A125683(2*(n+1))`
-/

namespace A101028.P15650894344443844031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125683 (2 * (n + 1))

end

end A101028.P15650894344443844031

/-! ## A101028.P2355702357459398079

`A000265(A025559(2*(n+1))/2)`
-/

namespace A101028.P2355702357459398079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (SequenceMachineLib.roundAway ((A025559 (2 * (n + 1)) : ℚ) / 2)).toNat

end

end A101028.P2355702357459398079

/-!
# A101029: Denominator of partial sums of a certain series.

The programs for A101029, there is no canonical definition to state claims against.
-/

/-! ## A101029.P5984895670222294353

`A331288(A334224(n+2)/6)`
-/

namespace A101029.P5984895670222294353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331288 (SequenceMachineLib.roundAway ((A334224 (n + 2) : ℚ) / 6)).toNat

end

end A101029.P5984895670222294353

/-! ## A101029.P1020547799438507667

`A375921(C(A245809(n+1), n))`
-/

namespace A101029.P1020547799438507667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375921 (Nat.choose (A245809 (n + 1)).toNat n)

end

end A101029.P1020547799438507667

/-! ## A101029.P10390275193395379417

`lcm(A002802(n), A328456(2^n))`
-/

namespace A101029.P10390275193395379417
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A002802 n) (A328456 (2 ^ n))

end

end A101029.P10390275193395379417

/-!
# A101030: Triangle read by rows: T(n,k) = number of functions from an n-element set into but not onto a k-element set.

The programs for A101030, the canonical program `A101030.P1474821605027503725` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A101030 has offset 1).

The definition of A101030 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A101030.P1474821605027503725

`A089072(C(row(n)+1, 2)+col(n)+1)-A019538(C(row(n)+1, 2)+col(n)+1)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A101030

/-- `A089072(C(row(n)+1, 2)+col(n)+1)-A019538(C(row(n)+1, 2)+col(n)+1)` -/
def P1474821605027503725.Spec : Prop :=
  ∀ n, P1474821605027503725.a n = A101030 (n + 1)

theorem P1474821605027503725.correct : P1474821605027503725.Spec := by
  intro n
  simp only [A101030, Nat.add_sub_cancel]

end A101030

/-! ## A101030.P16433903660105934489

`(1-C(∑[char[∑[n]]], 2)+n)*A101031(n)`
-/

namespace A101030.P16433903660105934489
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) + (n : ℤ)) * A101031 n

end

end A101030.P16433903660105934489

namespace A101030

/-- `(1-C(∑[char[∑[n]]], 2)+n)*A101031(n)` -/
def P16433903660105934489.Spec : Prop :=
  ∀ n, P16433903660105934489.a n = A101030 (n + 1)

end A101030

/-! ## A101030.P837642598679179593

`A002260(n+1)*A101031(n)`
-/

namespace A101030.P837642598679179593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) * A101031 n

end

end A101030.P837642598679179593

namespace A101030

/-- `A002260(n+1)*A101031(n)` -/
def P837642598679179593.Spec : Prop :=
  ∀ n, P837642598679179593.a n = A101030 (n + 1)

end A101030

/-! ## A101030.P8211556489590935841

`(A002262(n)+1)*A101031(n)`
-/

namespace A101030.P8211556489590935841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002262 n + 1) * A101031 n

end

end A101030.P8211556489590935841

namespace A101030

/-- `(A002262(n)+1)*A101031(n)` -/
def P8211556489590935841.Spec : Prop :=
  ∀ n, P8211556489590935841.a n = A101030 (n + 1)

end A101030

/-! ## A101030.P11127878210586256846

`A101031(n)*A131818(n+1)`
-/

namespace A101030.P11127878210586256846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101031 n * A131818 (n + 1)

end

end A101030.P11127878210586256846

namespace A101030

/-- `A101031(n)*A131818(n+1)` -/
def P11127878210586256846.Spec : Prop :=
  ∀ n, P11127878210586256846.a n = A101030 (n + 1)

end A101030

/-!
# A101031: Triangle read by rows: T(n,k) = (1/k) times the number of functions from an n-element set into but not onto a k-element set.

The programs for A101031, the canonical program `A101031.P2545378872576120442` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A101031 has offset 0).

The definition of A101031 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A101031.P2545378872576120442

`(A089072(C(row(n)+1, 2)+col(n)+1)-A019538(C(row(n)+1, 2)+col(n)+1))/(col(n)+1)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A101031

/-- `(A089072(C(row(n)+1, 2)+col(n)+1)-A019538(C(row(n)+1, 2)+col(n)+1))/(col(n)+1)` -/
def P2545378872576120442.Spec : Prop :=
  ∀ n, P2545378872576120442.a n = (A101031 n : ℚ)

end A101031

/-! ## A101031.P4382492383661222946

`A076014(n+1)-abs(A163626(n))`
-/

namespace A101031.P4382492383661222946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076014 (n + 1) - |A163626 n|

end

end A101031.P4382492383661222946

namespace A101031

/-- `A076014(n+1)-abs(A163626(n))` -/
def P4382492383661222946.Spec : Prop :=
  ∀ n, P4382492383661222946.a n = A101031 n

end A101031

/-! ## A101031.P15913069461322041058

`A076014(n+1)-A028246(n+1)`
-/

namespace A101031.P15913069461322041058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076014 (n + 1) - A028246 (n + 1)

end

end A101031.P15913069461322041058

namespace A101031

/-- `A076014(n+1)-A028246(n+1)` -/
def P15913069461322041058.Spec : Prop :=
  ∀ n, P15913069461322041058.a n = A101031 n

end A101031

/-! ## A101031.P7735366696357108731

`A076014(n+1)-A130850(A061579(n))`
-/

namespace A101031.P7735366696357108731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076014 (n + 1) - A130850 (A061579 n).toNat

end

end A101031.P7735366696357108731

namespace A101031

/-- `A076014(n+1)-A130850(A061579(n))` -/
def P7735366696357108731.Spec : Prop :=
  ∀ n, P7735366696357108731.a n = A101031 n

end A101031

/-! ## A101031.P6411483143594070401

`A009998(A245300(n))-A028246(n+1)`
-/

namespace A101031.P6411483143594070401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009998 (A245300 n).toNat - A028246 (n + 1)

end

end A101031.P6411483143594070401

namespace A101031

/-- `A009998(A245300(n))-A028246(n+1)` -/
def P6411483143594070401.Spec : Prop :=
  ∀ n, P6411483143594070401.a n = A101031 n

end A101031

/-! ## A101031.P15869464871591456760

`A002260(n+1)^A003056(n)-A028246(n+1)`
-/

namespace A101031.P15869464871591456760
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002260 (n + 1) : ℚ) ^ (A003056 n : ℤ) - (A028246 (n + 1) : ℚ)

end

end A101031.P15869464871591456760

namespace A101031

/-- `A002260(n+1)^A003056(n)-A028246(n+1)` -/
def P15869464871591456760.Spec : Prop :=
  ∀ n, P15869464871591456760.a n = (A101031 n : ℚ)

end A101031

/-! ## A101031.P6182125046044919598

`abs(A140756(n+1)^A003056(n))-A028246(n+1)`
-/

namespace A101031.P6182125046044919598
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A140756 (n + 1) : ℚ) ^ (A003056 n : ℤ)| - (A028246 (n + 1) : ℚ)

end

end A101031.P6182125046044919598

namespace A101031

/-- `abs(A140756(n+1)^A003056(n))-A028246(n+1)` -/
def P6182125046044919598.Spec : Prop :=
  ∀ n, P6182125046044919598.a n = (A101031 n : ℚ)

end A101031

/-! ## A101031.P10060204837861924679

`sqrt(A133819(n+1))^A003056(n)-A028246(n+1)`
-/

namespace A101031.P10060204837861924679
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A133819 (n + 1) : ℝ) ^ (A003056 n : ℤ) - (A028246 (n + 1) : ℝ)

end

end A101031.P10060204837861924679

namespace A101031

/-- `sqrt(A133819(n+1))^A003056(n)-A028246(n+1)` -/
def P10060204837861924679.Spec : Prop :=
  ∀ n, P10060204837861924679.a n = (A101031 n : ℝ)

end A101031

/-! ## A101031.P3278321662511177007

`(A089072(n+1)-A019538(n+1))/A002260(n+1)`
-/

namespace A101031.P3278321662511177007
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A089072 (n + 1) - A019538 (n + 1) : ℚ) / (A002260 (n + 1) : ℚ)

end

end A101031.P3278321662511177007

namespace A101031

/-- `(A089072(n+1)-A019538(n+1))/A002260(n+1)` -/
def P3278321662511177007.Spec : Prop :=
  ∀ n, P3278321662511177007.a n = (A101031 n : ℚ)

end A101031

/-! ## A101031.P14985823818251042009

`A089072(n+1)/A002260(n+1)-A028246(n+1)`
-/

namespace A101031.P14985823818251042009
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A089072 (n + 1) : ℚ) / (A002260 (n + 1) : ℚ) - (A028246 (n + 1) : ℚ)

end

end A101031.P14985823818251042009

namespace A101031

/-- `A089072(n+1)/A002260(n+1)-A028246(n+1)` -/
def P14985823818251042009.Spec : Prop :=
  ∀ n, P14985823818251042009.a n = (A101031 n : ℚ)

end A101031

/-!
# A101034: Numbers n such that A002113(n) is a triangular number.

The programs for A101034, there is no canonical definition to state claims against.
-/

/-! ## A101034.P9695437879590420753

`eq[0, col(A002113(n+1))]`
-/

namespace A101034.P9695437879590420753
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triCol (A002113 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A101034.P9695437879590420753

/-! ## A101034.P11149254183625009587

`lt[col(A002113(n+1)), A033999(2*(n+2))]`
-/

namespace A101034.P11149254183625009587
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triCol (A002113 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (2 * (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A101034.P11149254183625009587

/-! ## A101034.P16429805918115355170

`lt[col(A002113(n+1)), A010872(3*n+1)]`
-/

namespace A101034.P16429805918115355170
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triCol (A002113 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010872 (3 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A101034.P16429805918115355170

/-! ## A101034.P8626446183109781978

`A136687(A003098(n+1))-1`
-/

namespace A101034.P8626446183109781978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136687 (A003098 (n + 1)).toNat - 1

end

end A101034.P8626446183109781978

/-!
# A101035: Dirichlet inverse of the gcd-sum function (A018804).

The programs for A101035, the canonical program `A101035.P3462403393033249231` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A101035 has offset 1).

The definition of A101035 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A101035.P13670367061798720926

`∑{d}[n+1, A328722(#)]`
-/

namespace A101035.P13670367061798720926
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A328722 d

end

end A101035.P13670367061798720926

namespace A101035

/-- `∑{d}[n+1, A328722(#)]` -/
def P13670367061798720926.Spec : Prop :=
  ∀ n, P13670367061798720926.a n = A101035 (n + 1)

end A101035

/-! ## A101035.P3462403393033249231

`∑{d}[n+1, #*A007427(#)]`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A101035

/-- `∑{d}[n+1, #*A007427(#)]` -/
def P3462403393033249231.Spec : Prop :=
  ∀ n, P3462403393033249231.a n = A101035 (n + 1)

theorem P3462403393033249231.correct : P3462403393033249231.Spec := by
  intro n
  simp only [A101035, Nat.add_sub_cancel]

end A101035

/-! ## A101035.P6848211619483654109

`A347095(n+1)-A018804(n+1)`
-/

namespace A101035.P6848211619483654109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347095 (n + 1) - A018804 (n + 1)

end

end A101035.P6848211619483654109

namespace A101035

/-- `A347095(n+1)-A018804(n+1)` -/
def P6848211619483654109.Spec : Prop :=
  ∀ n, P6848211619483654109.a n = A101035 (n + 1)

theorem P6848211619483654109.correct : P6848211619483654109.Spec := by
  intro n
  simp only [A101035, Nat.add_sub_cancel, A101035.P6848211619483654109.a, A101035.P3462403393033249231.f1, A101035.P3462403393033249231.a, A007427, A007427.P16363569186413612215.f1, A007427.P16363569186413612215.a, A018804, A018804.P4748681952283325633.f1, A018804.P4748681952283325633.a, A347095, A347095.P13848354769774225057.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A101035

/-! ## A101035.P318910924736556430

`A347095(n+1)-Δ[A209981(n)/32]`
-/

namespace A101035.P318910924736556430
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A209981 n : ℚ) / 32

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A347095 (n + 1) : ℚ) - (f1 (n + 1) - f1 n)

end

end A101035.P318910924736556430

namespace A101035

/-- `A347095(n+1)-Δ[A209981(n)/32]` -/
def P318910924736556430.Spec : Prop :=
  ∀ n, P318910924736556430.a n = (A101035 (n + 1) : ℚ)

end A101035

/-! ## A101035.P13379047283660364363

`A347095(n+1)-∑[Δ[A209295(n)]-1]`
-/

namespace A101035.P13379047283660364363
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209295 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347095 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101035.P13379047283660364363

namespace A101035

/-- `A347095(n+1)-∑[Δ[A209295(n)]-1]` -/
def P13379047283660364363.Spec : Prop :=
  ∀ n, P13379047283660364363.a n = A101035 (n + 1)

end A101035

/-! ## A101035.P11436197394819771457

`A347095(n+1)-(A209295(n+1)-(n+1))`
-/

namespace A101035.P11436197394819771457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347095 (n + 1) - (A209295 (n + 1) - (n + 1 : ℤ))

end

end A101035.P11436197394819771457

namespace A101035

/-- `A347095(n+1)-(A209295(n+1)-(n+1))` -/
def P11436197394819771457.Spec : Prop :=
  ∀ n, P11436197394819771457.a n = A101035 (n + 1)

end A101035

/-! ## A101035.P14675957440432544608

`∑{d}[n+1, A023900(#)*A055615((n+1)/#)]`
-/

namespace A101035.P14675957440432544608
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A023900 d * A055615 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A101035.P14675957440432544608

namespace A101035

/-- `∑{d}[n+1, A023900(#)*A055615((n+1)/#)]` -/
def P14675957440432544608.Spec : Prop :=
  ∀ n, P14675957440432544608.a n = A101035 (n + 1)

end A101035

/-! ## A101035.P7440185337517911977

`∑{d}[n+1, A046692(#)*A130054((n+1)/#)]`
-/

namespace A101035.P7440185337517911977
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A046692 d * A130054 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A101035.P7440185337517911977

namespace A101035

/-- `∑{d}[n+1, A046692(#)*A130054((n+1)/#)]` -/
def P7440185337517911977.Spec : Prop :=
  ∀ n, P7440185337517911977.a n = A101035 (n + 1)

end A101035

/-! ## A101035.P2376535822960742534

`∑{d}[n+1, A000005(#)*A327960((n+1)/#)]`
-/

namespace A101035.P2376535822960742534
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000005 d * A327960 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A101035.P2376535822960742534

namespace A101035

/-- `∑{d}[n+1, A000005(#)*A327960((n+1)/#)]` -/
def P2376535822960742534.Spec : Prop :=
  ∀ n, P2376535822960742534.a n = A101035 (n + 1)

end A101035

/-! ## A101035.P4349156663639521779

`∑{d}[n+1, A008683(#)*A328641((n+1)/#)]`
-/

namespace A101035.P4349156663639521779
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A328641 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A101035.P4349156663639521779

namespace A101035

/-- `∑{d}[n+1, A008683(#)*A328641((n+1)/#)]` -/
def P4349156663639521779.Spec : Prop :=
  ∀ n, P4349156663639521779.a n = A101035 (n + 1)

end A101035

/-! ## A101035.P4596371557368730840

`∑{d}[n+1, A002618(#)*A351654((n+1)/#)]`
-/

namespace A101035.P4596371557368730840
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A002618 d * A351654 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A101035.P4596371557368730840

namespace A101035

/-- `∑{d}[n+1, A002618(#)*A351654((n+1)/#)]` -/
def P4596371557368730840.Spec : Prop :=
  ∀ n, P4596371557368730840.a n = A101035 (n + 1)

end A101035

/-! ## A101035.P10246512159073459319

`∑{d}[n+1, A008966(#)*A347092((n+1)/#)]`
-/

namespace A101035.P10246512159073459319
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008966 d * A347092 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A101035.P10246512159073459319

namespace A101035

/-- `∑{d}[n+1, A008966(#)*A347092((n+1)/#)]` -/
def P10246512159073459319.Spec : Prop :=
  ∀ n, P10246512159073459319.a n = A101035 (n + 1)

end A101035

/-! ## A101035.P6820025700494948425

`∑{d}[n+1, A117212(#)*A349343((n+1)/#)]`
-/

namespace A101035.P6820025700494948425
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A117212 d * A349343 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A101035.P6820025700494948425

namespace A101035

/-- `∑{d}[n+1, A117212(#)*A349343((n+1)/#)]` -/
def P6820025700494948425.Spec : Prop :=
  ∀ n, P6820025700494948425.a n = A101035 (n + 1)

end A101035

/-! ## A101035.P16299914054972500231

`∑{d}[n+1, A334657(#)*A340850((n+1)/#)]`
-/

namespace A101035.P16299914054972500231
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A334657 d * A340850 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A101035.P16299914054972500231

namespace A101035

/-- `∑{d}[n+1, A334657(#)*A340850((n+1)/#)]` -/
def P16299914054972500231.Spec : Prop :=
  ∀ n, P16299914054972500231.a n = A101035 (n + 1)

end A101035

/-! ## A101035.P17222138111083032481

`∑{d}[n+1, A323912(#)*A378217((n+1)/#)]`
-/

namespace A101035.P17222138111083032481
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A323912 d * A378217 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A101035.P17222138111083032481

namespace A101035

/-- `∑{d}[n+1, A323912(#)*A378217((n+1)/#)]` -/
def P17222138111083032481.Spec : Prop :=
  ∀ n, P17222138111083032481.a n = A101035 (n + 1)

end A101035

/-!
# A101036: Riesel numbers n (n*2^k-1 is composite for all k>0, n odd) that have a covering set.

The programs for A101036, there is no canonical definition to state claims against.
-/

/-! ## A101036.P15999209405304136585

`A271110(n+1)+A076336(n+1)`
-/

namespace A101036.P15999209405304136585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271110 (n + 1) + A076336 (n + 1)

end

end A101036.P15999209405304136585

/-! ## A101036.P6152629572380660811

`∪[A244070(n+1), A244071(n+1)]%A244549(2*n+3)`
-/

namespace A101036.P6152629572380660811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244070 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244071 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n : ℤ) (A244549 (2 * n + 3))

end

end A101036.P6152629572380660811

/-!
# A101037: Triangle read by rows: T(n,1) = T(n,n) = n and for 1<k<n: T(n,k) = floor((T(n-1,k-1)+T(n-1,k))/2).

The programs for A101037, the canonical program `A101037.P18398048409852730149` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A101037 has offset 1).

The definition of A101037 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A101037.P18398048409852730149

`A057427(n)+A028310(A049581(n))`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A101037

/-- `A057427(n)+A028310(A049581(n))` -/
def P18398048409852730149.Spec : Prop :=
  ∀ n, P18398048409852730149.a n = A101037 (n + 1)

theorem P18398048409852730149.correct : P18398048409852730149.Spec := by
  intro n
  simp only [A101037, Nat.add_sub_cancel]

end A101037

/-! ## A101037.P13533726338014467973

`A028310(A049581(n))+A019425(2*n)`
-/

namespace A101037.P13533726338014467973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A049581 n).toNat + A019425 (2 * n)

end

end A101037.P13533726338014467973

namespace A101037

/-- `A028310(A049581(n))+A019425(2*n)` -/
def P13533726338014467973.Spec : Prop :=
  ∀ n, P13533726338014467973.a n = A101037 (n + 1)

end A101037

/-! ## A101037.P5636214429468637177

`A028310(A049581(n))+n/A028310(n)`
-/

namespace A101037.P5636214429468637177
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028310 (A049581 n).toNat : ℚ) + (n : ℚ) / (A028310 n : ℚ)

end

end A101037.P5636214429468637177

namespace A101037

/-- `A028310(A049581(n))+n/A028310(n)` -/
def P5636214429468637177.Spec : Prop :=
  ∀ n, P5636214429468637177.a n = (A101037 (n + 1) : ℚ)

end A101037

/-! ## A101037.P14302816331775087553

`A028310(A049581(n))+A019425(A019425(n))²`
-/

namespace A101037.P14302816331775087553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A049581 n).toNat + A019425 (A019425 n).toNat ^ 2

end

end A101037.P14302816331775087553

namespace A101037

/-- `A028310(A049581(n))+A019425(A019425(n))²` -/
def P14302816331775087553.Spec : Prop :=
  ∀ n, P14302816331775087553.a n = A101037 (n + 1)

end A101037

/-! ## A101037.P3631054919850251354

`A049581(n)+A040000(n)/A040000(A049581(n))`
-/

namespace A101037.P3631054919850251354
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049581 n : ℚ) + (A040000 n : ℚ) / (A040000 (A049581 n).toNat : ℚ)

end

end A101037.P3631054919850251354

namespace A101037

/-- `A049581(n)+A040000(n)/A040000(A049581(n))` -/
def P3631054919850251354.Spec : Prop :=
  ∀ n, P3631054919850251354.a n = (A101037 (n + 1) : ℚ)

end A101037

/-! ## A101037.P4310743216434696366

`A143182(n%(A061579(n+1)*A143182(n)))`
-/

namespace A101037.P4310743216434696366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143182 (Int.tmod (n : ℤ) (A061579 (n + 1) * A143182 n)).toNat

end

end A101037.P4310743216434696366

namespace A101037

/-- `A143182(n%(A061579(n+1)*A143182(n)))` -/
def P4310743216434696366.Spec : Prop :=
  ∀ n, P4310743216434696366.a n = A101037 (n + 1)

end A101037

/-! ## A101037.P11559190335341607037

`A130517(n+1)+A101688(A066182(n+1))`
-/

namespace A101037.P11559190335341607037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130517 (n + 1) + A101688 (A066182 (n + 1)).toNat

end

end A101037.P11559190335341607037

namespace A101037

/-- `A130517(n+1)+A101688(A066182(n+1))` -/
def P11559190335341607037.Spec : Prop :=
  ∀ n, P11559190335341607037.a n = A101037 (n + 1)

end A101037

/-! ## A101037.P14212488315174512363

`A000196(A143182(n+1)+A143182(n)²)`
-/

namespace A101037.P14212488315174512363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A143182 (n + 1) + A143182 n ^ 2).toNat

end

end A101037.P14212488315174512363

namespace A101037

/-- `A000196(A143182(n+1)+A143182(n)²)` -/
def P14212488315174512363.Spec : Prop :=
  ∀ n, P14212488315174512363.a n = A101037 (n + 1)

end A101037

/-! ## A101037.P12425139444359340419

`A238845(A131816(n))+A057427(n)`
-/

namespace A101037.P12425139444359340419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238845 (A131816 n).toNat + A057427 n

end

end A101037.P12425139444359340419

namespace A101037

/-- `A238845(A131816(n))+A057427(n)` -/
def P12425139444359340419.Spec : Prop :=
  ∀ n, P12425139444359340419.a n = A101037 (n + 1)

end A101037

/-! ## A101037.P8652380360487889146

`n+1-A053188(A002061(n)-A049581(n))`
-/

namespace A101037.P8652380360487889146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A053188 (A002061 n - A049581 n).toNat

end

end A101037.P8652380360487889146

namespace A101037

/-- `n+1-A053188(A002061(n)-A049581(n))` -/
def P8652380360487889146.Spec : Prop :=
  ∀ n, P8652380360487889146.a n = A101037 (n + 1)

end A101037

/-!
# A101038: Inverse to sequence matrix for odd numbers.

The programs for A101038, the canonical program `A101038.P1344624487250661860` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A101038 has offset 0).

The definition of A101038 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A101038.P5497551967981357073

`A185018(n)-T(n-1,k)` with `a(0)=1`
-/

namespace A101038.P5497551967981357073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A185018 n - SequenceMachineLib.triUp a n

end

end A101038.P5497551967981357073

namespace A101038

/-- `A185018(n)-T(n-1,k)` -/
def P5497551967981357073.Spec : Prop :=
  ∀ n, P5497551967981357073.a n = A101038 n

end A101038

/-! ## A101038.P16257745486999726123

`A033999(A025581(n))*A113311(A025581(n))`
-/

namespace A101038.P16257745486999726123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A025581 n).toNat * A113311 (A025581 n).toNat

end

end A101038.P16257745486999726123

namespace A101038

/-- `A033999(A025581(n))*A113311(A025581(n))` -/
def P16257745486999726123.Spec : Prop :=
  ∀ n, P16257745486999726123.a n = A101038 n

end A101038

/-! ## A101038.P1344624487250661860

`A065168(A004736(n+1))-A065164(A004736(n+1))`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A101038

/-- `A065168(A004736(n+1))-A065164(A004736(n+1))` -/
def P1344624487250661860.Spec : Prop :=
  ∀ n, P1344624487250661860.a n = A101038 n

theorem P1344624487250661860.correct : P1344624487250661860.Spec := by
  intro n
  simp only [A101038]

end A101038

/-! ## A101038.P2409126460733280545

`A186827(C(A004736(n+1)+1, 2)+1)`
-/

namespace A101038.P2409126460733280545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186827 (Nat.choose (A004736 (n + 1) + 1).toNat 2 + 1)

end

end A101038.P2409126460733280545

namespace A101038

/-- `A186827(C(A004736(n+1)+1, 2)+1)` -/
def P2409126460733280545.Spec : Prop :=
  ∀ n, P2409126460733280545.a n = A101038 n

end A101038

/-! ## A101038.P12692283879863647989

`A359789(2^(C(comp[∑[n]]-n, 2)-(n+1)))`
-/

namespace A101038.P12692283879863647989
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359789 (SequenceMachineLib.roundAway ((2 : ℚ) ^ ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n + 1 : ℤ) : ℤ))).toNat

end

end A101038.P12692283879863647989

namespace A101038

/-- `A359789(2^(C(comp[∑[n]]-n, 2)-(n+1)))` -/
def P12692283879863647989.Spec : Prop :=
  ∀ n, P12692283879863647989.a n = A101038 n

end A101038

/-! ## A101038.P1013887572034898119

`A359789(2^(C(comp[∑[n]]-n, 2)-n)/2)`
-/

namespace A101038.P1013887572034898119
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359789 (SequenceMachineLib.roundAway ((2 : ℚ) ^ ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ) : ℤ) / 2)).toNat

end

end A101038.P1013887572034898119

namespace A101038

/-- `A359789(2^(C(comp[∑[n]]-n, 2)-n)/2)` -/
def P1013887572034898119.Spec : Prop :=
  ∀ n, P1013887572034898119.a n = A101038 n

end A101038

/-! ## A101038.P12816593405995978701

`A359789(A130321(n))`
-/

namespace A101038.P12816593405995978701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359789 (A130321 n).toNat

end

end A101038.P12816593405995978701

namespace A101038

/-- `A359789(A130321(n))` -/
def P12816593405995978701.Spec : Prop :=
  ∀ n, P12816593405995978701.a n = A101038 n

end A101038

/-! ## A101038.P10014199522210946110

`A359789(2^A025581(n))`
-/

namespace A101038.P10014199522210946110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359789 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A025581 n : ℤ))).toNat

end

end A101038.P10014199522210946110

namespace A101038

/-- `A359789(2^A025581(n))` -/
def P10014199522210946110.Spec : Prop :=
  ∀ n, P10014199522210946110.a n = A101038 n

end A101038

/-! ## A101038.P15732911781915504030

`A326415(2^(C(comp[∑[n]]-n, 2)-(n+1)))`
-/

namespace A101038.P15732911781915504030
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326415 (SequenceMachineLib.roundAway ((2 : ℚ) ^ ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n + 1 : ℤ) : ℤ))).toNat

end

end A101038.P15732911781915504030

namespace A101038

/-- `A326415(2^(C(comp[∑[n]]-n, 2)-(n+1)))` -/
def P15732911781915504030.Spec : Prop :=
  ∀ n, P15732911781915504030.a n = A101038 n

end A101038

/-! ## A101038.P4564467006863177095

`A326415(A130321(n))`
-/

namespace A101038.P4564467006863177095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326415 (A130321 n).toNat

end

end A101038.P4564467006863177095

namespace A101038

/-- `A326415(A130321(n))` -/
def P4564467006863177095.Spec : Prop :=
  ∀ n, P4564467006863177095.a n = A101038 n

end A101038

/-! ## A101038.P10233337983759285016

`A326415(sqrt(A262616(n)))`
-/

namespace A101038.P10233337983759285016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326415 (SequenceMachineLib.roundAway (Real.sqrt (A262616 n : ℝ))).toNat

end

end A101038.P10233337983759285016

namespace A101038

/-- `A326415(sqrt(A262616(n)))` -/
def P10233337983759285016.Spec : Prop :=
  ∀ n, P10233337983759285016.a n = A101038 n

end A101038

/-! ## A101038.P14397268307912544294

`A326415(2^A025581(n))`
-/

namespace A101038.P14397268307912544294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326415 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A025581 n : ℤ))).toNat

end

end A101038.P14397268307912544294

namespace A101038

/-- `A326415(2^A025581(n))` -/
def P14397268307912544294.Spec : Prop :=
  ∀ n, P14397268307912544294.a n = A101038 n

end A101038

/-! ## A101038.P13015819207495623541

`A326415(A000079(A025581(n)))`
-/

namespace A101038.P13015819207495623541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326415 (A000079 (A025581 n).toNat).toNat

end

end A101038.P13015819207495623541

namespace A101038

/-- `A326415(A000079(A025581(n)))` -/
def P13015819207495623541.Spec : Prop :=
  ∀ n, P13015819207495623541.a n = A101038 n

end A101038

/-! ## A101038.P671843258395620913

`A326415(A016116(A099375(n)))`
-/

namespace A101038.P671843258395620913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326415 (A016116 (A099375 n).toNat).toNat

end

end A101038.P671843258395620913

namespace A101038

/-- `A326415(A016116(A099375(n)))` -/
def P671843258395620913.Spec : Prop :=
  ∀ n, P671843258395620913.a n = A101038 n

end A101038

/-! ## A101038.P4792028791639732459

`A326415(A059268(A061579(n)))`
-/

namespace A101038.P4792028791639732459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326415 (A059268 (A061579 n).toNat).toNat

end

end A101038.P4792028791639732459

namespace A101038

/-- `A326415(A059268(A061579(n)))` -/
def P4792028791639732459.Spec : Prop :=
  ∀ n, P4792028791639732459.a n = A101038 n

end A101038

/-! ## A101038.P14415421322071397783

`A326415(A011782(A004736(n+1)))`
-/

namespace A101038.P14415421322071397783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326415 (A011782 (A004736 (n + 1)).toNat).toNat

end

end A101038.P14415421322071397783

namespace A101038

/-- `A326415(A011782(A004736(n+1)))` -/
def P14415421322071397783.Spec : Prop :=
  ∀ n, P14415421322071397783.a n = A101038 n

end A101038

/-! ## A101038.P16491525162983760777

`A326415(A038207(n)/A007318(n))`
-/

namespace A101038.P16491525162983760777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326415 (SequenceMachineLib.roundAway ((A038207 n : ℚ) / (A007318 n : ℚ))).toNat

end

end A101038.P16491525162983760777

namespace A101038

/-- `A326415(A038207(n)/A007318(n))` -/
def P16491525162983760777.Spec : Prop :=
  ∀ n, P16491525162983760777.a n = A101038 n

end A101038

/-! ## A101038.P4185438869190910290

`A326415(gcd(A000079(n), A036561(n)))`
-/

namespace A101038.P4185438869190910290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326415 (Int.gcd (A000079 n) (A036561 n))

end

end A101038.P4185438869190910290

namespace A101038

/-- `A326415(gcd(A000079(n), A036561(n)))` -/
def P4185438869190910290.Spec : Prop :=
  ∀ n, P4185438869190910290.a n = A101038 n

end A101038

/-!
# A101039: Pythagorean years: a Pythagorean year is one whose digits partition into two disjoint sets such that, considering digital sums, the Pythagorean relation 5^2=4^2 + 3^2 is evinced.

The programs for A101039, there is no canonical definition to state claims against.
-/

/-! ## A101039.P6455559802210649004

`A121642(A100793(n))`
-/

namespace A101039.P6455559802210649004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121642 (A100793 n).toNat

end

end A101039.P6455559802210649004

/-! ## A101039.P869494437726003336

`A121642(A001096(n)+1)`
-/

namespace A101039.P869494437726003336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121642 (A001096 n + 1).toNat

end

end A101039.P869494437726003336

/-!
# A101040: If n has one or two prime-factors then 1 else 0.

The programs for A101040, the canonical program `A101040.P6430529822999703701` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A101040 has offset 1).

The definition of A101040 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A064911, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A101040.P6430529822999703701

`A010051(n+1)+A064911(n+1)`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A101040

/-- `A010051(n+1)+A064911(n+1)` -/
def P6430529822999703701.Spec : Prop :=
  ∀ n, P6430529822999703701.a n = A101040 (n + 1)

theorem P6430529822999703701.correct : P6430529822999703701.Spec := by
  intro n
  simp only [A101040, Nat.add_sub_cancel]

end A101040

/-! ## A101040.P3039416990251882651

`C(C(3, ∑{e}[n+1, #]), 3)`
-/

namespace A101040.P3039416990251882651
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.choose 3 (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)) 3

end

end A101040.P3039416990251882651

namespace A101040

/-- `C(C(3, ∑{e}[n+1, #]), 3)` -/
def P3039416990251882651.Spec : Prop :=
  ∀ n, (P3039416990251882651.a n : ℤ) = A101040 (n + 1)

end A101040

/-! ## A101040.P4401198191175505521

`col((2^∑{e}[1+n, #])%8)`
-/

namespace A101040.P4401198191175505521
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triCol (2 ^ (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p) % 8)

end

end A101040.P4401198191175505521

namespace A101040

/-- `col((2^∑{e}[1+n, #])%8)` -/
def P4401198191175505521.Spec : Prop :=
  ∀ n, (P4401198191175505521.a n : ℤ) = A101040 (n + 1)

end A101040

/-! ## A101040.P15017229078675896111

`col(and(6, 2^∑{e}[1+n, #]))`
-/

namespace A101040.P15017229078675896111
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triCol (Nat.land 6 (2 ^ (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)))

end

end A101040.P15017229078675896111

namespace A101040

/-- `col(and(6, 2^∑{e}[1+n, #]))` -/
def P15017229078675896111.Spec : Prop :=
  ∀ n, (P15017229078675896111.a n : ℤ) = A101040 (n + 1)

end A101040

/-! ## A101040.P16180904215172351749

`round(∑{e}[n+1, #]/2^∑{e}[1+n, #])`
-/

namespace A101040.P16180904215172351749
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℚ) / (2 ^ (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p) : ℚ))

end

end A101040.P16180904215172351749

namespace A101040

/-- `round(∑{e}[n+1, #]/2^∑{e}[1+n, #])` -/
def P16180904215172351749.Spec : Prop :=
  ∀ n, P16180904215172351749.a n = A101040 (n + 1)

end A101040

/-! ## A101040.P11619454912132435622

`floor(sqrt(A105700(n+1)))`
-/

namespace A101040.P11619454912132435622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A105700 (n + 1))

end

end A101040.P11619454912132435622

namespace A101040

/-- `floor(sqrt(A105700(n+1)))` -/
def P11619454912132435622.Spec : Prop :=
  ∀ n, P11619454912132435622.a n = A101040 (n + 1)

end A101040

/-! ## A101040.P4100380581788238574

`char[A037143(n+2)-1]`
-/

namespace A101040.P4100380581788238574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037143 (n + 2) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A101040.P4100380581788238574

namespace A101040

/-- `char[A037143(n+2)-1]` -/
def P4100380581788238574.Spec : Prop :=
  ∀ n, (P4100380581788238574.a n : ℤ) = A101040 (n + 1)

end A101040

/-! ## A101040.P15051037478104595408

`char[eq[1, A339890(n+1)]]`
-/

namespace A101040.P15051037478104595408
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339890 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A101040.P15051037478104595408

namespace A101040

/-- `char[eq[1, A339890(n+1)]]` -/
def P15051037478104595408.Spec : Prop :=
  ∀ n, (P15051037478104595408.a n : ℤ) = A101040 (n + 1)

end A101040

/-! ## A101040.P5673964500782356276

`A102460(∑{e}[n+1, #]²)`
-/

namespace A101040.P5673964500782356276
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102460 ((∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p) ^ 2)

end

end A101040.P5673964500782356276

namespace A101040

/-- `A102460(∑{e}[n+1, #]²)` -/
def P5673964500782356276.Spec : Prop :=
  ∀ n, P5673964500782356276.a n = A101040 (n + 1)

end A101040

/-! ## A101040.P7228710966537409797

`C(C(2, A347708(n+1)), 2)`
-/

namespace A101040.P7228710966537409797
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.choose 2 (A347708 (n + 1)).toNat) 2

end

end A101040.P7228710966537409797

namespace A101040

/-- `C(C(2, A347708(n+1)), 2)` -/
def P7228710966537409797.Spec : Prop :=
  ∀ n, (P7228710966537409797.a n : ℤ) = A101040 (n + 1)

end A101040

/-! ## A101040.P17025256191782836524

`C(C(3, A001222(n+1)), 3)`
-/

namespace A101040.P17025256191782836524
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.choose 3 (A001222 (n + 1)).toNat) 3

end

end A101040.P17025256191782836524

namespace A101040

/-- `C(C(3, A001222(n+1)), 3)` -/
def P17025256191782836524.Spec : Prop :=
  ∀ n, (P17025256191782836524.a n : ℤ) = A101040 (n + 1)

end A101040

/-! ## A101040.P5416483928520970650

`C(2*n, A255385(n+1))`
-/

namespace A101040.P5416483928520970650
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n) (A255385 (n + 1)).toNat

end

end A101040.P5416483928520970650

namespace A101040

/-- `C(2*n, A255385(n+1))` -/
def P5416483928520970650.Spec : Prop :=
  ∀ n, (P5416483928520970650.a n : ℤ) = A101040 (n + 1)

end A101040

/-! ## A101040.P6912589911582165219

`val(A093074(∑{e}[n+1, #]+1), 3)`
-/

namespace A101040.P6912589911582165219
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A093074 (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p + 1)).toNat 3

end

end A101040.P6912589911582165219

namespace A101040

/-- `val(A093074(∑{e}[n+1, #]+1), 3)` -/
def P6912589911582165219.Spec : Prop :=
  ∀ n, (P6912589911582165219.a n : ℤ) = A101040 (n + 1)

end A101040

/-! ## A101040.P6386488178332360994

`A010051(A117818(n+1))`
-/

namespace A101040.P6386488178332360994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A117818 (n + 1)).toNat

end

end A101040.P6386488178332360994

namespace A101040

/-- `A010051(A117818(n+1))` -/
def P6386488178332360994.Spec : Prop :=
  ∀ n, P6386488178332360994.a n = A101040 (n + 1)

end A101040

/-! ## A101040.P1735621857440616907

`A010058(A289621(n+1))`
-/

namespace A101040.P1735621857440616907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010058 (A289621 (n + 1)).toNat

end

end A101040.P1735621857440616907

namespace A101040

/-- `A010058(A289621(n+1))` -/
def P1735621857440616907.Spec : Prop :=
  ∀ n, P1735621857440616907.a n = A101040 (n + 1)

end A101040

/-! ## A101040.P5412671413440621454

`A010051(A347043(n+1))`
-/

namespace A101040.P5412671413440621454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A347043 (n + 1)).toNat

end

end A101040.P5412671413440621454

namespace A101040

/-- `A010051(A347043(n+1))` -/
def P5412671413440621454.Spec : Prop :=
  ∀ n, P5412671413440621454.a n = A101040 (n + 1)

end A101040

/-! ## A101040.P121165760623268993

`A341591(A068794(n+1))`
-/

namespace A101040.P121165760623268993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341591 (A068794 (n + 1)).toNat

end

end A101040.P121165760623268993

namespace A101040

/-- `A341591(A068794(n+1))` -/
def P121165760623268993.Spec : Prop :=
  ∀ n, P121165760623268993.a n = A101040 (n + 1)

end A101040

/-! ## A101040.P16471508081761920356

`A102460(A001222(n+1)²)`
-/

namespace A101040.P16471508081761920356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102460 (A001222 (n + 1) ^ 2).toNat

end

end A101040.P16471508081761920356

namespace A101040

/-- `A102460(A001222(n+1)²)` -/
def P16471508081761920356.Spec : Prop :=
  ∀ n, P16471508081761920356.a n = A101040 (n + 1)

end A101040

/-! ## A101040.P17080606798057607712

`A380858(A105560(n+1)²)`
-/

namespace A101040.P17080606798057607712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380858 (A105560 (n + 1) ^ 2).toNat

end

end A101040.P17080606798057607712

namespace A101040

/-- `A380858(A105560(n+1)²)` -/
def P17080606798057607712.Spec : Prop :=
  ∀ n, P17080606798057607712.a n = A101040 (n + 1)

end A101040

/-! ## A101040.P5030184826570756852

`A055668(A105560(n+1)+1)`
-/

namespace A101040.P5030184826570756852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055668 (A105560 (n + 1) + 1).toNat

end

end A101040.P5030184826570756852

namespace A101040

/-- `A055668(A105560(n+1)+1)` -/
def P5030184826570756852.Spec : Prop :=
  ∀ n, P5030184826570756852.a n = A101040 (n + 1)

end A101040

/-!
# A101041: Number of numbers not greater than n having no more than two prime factors.

The programs for A101041, the canonical program `A101041.P9395477639911062119` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A101041 has offset 1).

The definition of A101041 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A072000, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A101041.P9395477639911062119

`A000720(n+1)+A072000(n+1)+1`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A101041

/-- `A000720(n+1)+A072000(n+1)+1` -/
def P9395477639911062119.Spec : Prop :=
  ∀ n, P9395477639911062119.a n = A101041 (n + 1)

theorem P9395477639911062119.correct : P9395477639911062119.Spec := by
  intro n
  simp only [A101041, Nat.add_sub_cancel]

end A101041

/-! ## A101041.P17751353036023383671

`∑[∑{e}[n+1, #]!²%3]`
-/

namespace A101041.P17751353036023383671
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p) ^ 2 % 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101041.P17751353036023383671

namespace A101041

/-- `∑[∑{e}[n+1, #]!²%3]` -/
def P17751353036023383671.Spec : Prop :=
  ∀ n, (P17751353036023383671.a n : ℤ) = A101041 (n + 1)

end A101041

/-! ## A101041.P15264275393695677677

`∑[round(1/∑{e}[n+1, #]!)]`
-/

namespace A101041.P15264275393695677677
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (1 / (Nat.factorial (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p) : ℚ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101041.P15264275393695677677

namespace A101041

/-- `∑[round(1/∑{e}[n+1, #]!)]` -/
def P15264275393695677677.Spec : Prop :=
  ∀ n, P15264275393695677677.a n = A101041 (n + 1)

end A101041

/-! ## A101041.P2225347065725165771

`∑[round(2/(∑{e}[n+1, #]+2))]`
-/

namespace A101041.P2225347065725165771
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (2 / ((∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p + 2 : ℕ) : ℚ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101041.P2225347065725165771

namespace A101041

/-- `∑[round(2/(∑{e}[n+1, #]+2))]` -/
def P2225347065725165771.Spec : Prop :=
  ∀ n, P2225347065725165771.a n = A101041 (n + 1)

end A101041

/-! ## A101041.P1831213618745454589

`∑[ceil(C(2, ∑{e}[n+1, #])/4)]`
-/

namespace A101041.P1831213618745454589
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.choose 2 (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p) : ℚ) / 4⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101041.P1831213618745454589

namespace A101041

/-- `∑[ceil(C(2, ∑{e}[n+1, #])/4)]` -/
def P1831213618745454589.Spec : Prop :=
  ∀ n, P1831213618745454589.a n = A101041 (n + 1)

end A101041

/-! ## A101041.P12549352980777379860

`∑[C(C(3, ∑{e}[n+1, #]), 3)]+1`
-/

namespace A101041.P12549352980777379860
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.choose 3 (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p)) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A101041.P12549352980777379860

namespace A101041

/-- `∑[C(C(3, ∑{e}[n+1, #]), 3)]+1` -/
def P12549352980777379860.Spec : Prop :=
  ∀ n, (P12549352980777379860.a n : ℤ) = A101041 (n + 1)

end A101041

/-! ## A101041.P9762892416035940537

`∑[C(43, ∏{e}[n+1, 3^#])%2]`
-/

namespace A101041.P9762892416035940537
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 43 (∏ p ∈ Nat.primeFactors (f2 n), 3 ^ Nat.factorization (f2 n) p) % 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101041.P9762892416035940537

namespace A101041

/-- `∑[C(43, ∏{e}[n+1, 3^#])%2]` -/
def P9762892416035940537.Spec : Prop :=
  ∀ n, (P9762892416035940537.a n : ℤ) = A101041 (n + 1)

end A101041

/-! ## A101041.P17453973601178862270

`∑[A101040(n+1)]+1`
-/

namespace A101041.P17453973601178862270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A101041.P17453973601178862270

namespace A101041

/-- `∑[A101040(n+1)]+1` -/
def P17453973601178862270.Spec : Prop :=
  ∀ n, P17453973601178862270.a n = A101041 (n + 1)

end A101041

/-! ## A101041.P11065812424496967606

`∑[A340369(2*(n+1))]`
-/

namespace A101041.P11065812424496967606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340369 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101041.P11065812424496967606

namespace A101041

/-- `∑[A340369(2*(n+1))]` -/
def P11065812424496967606.Spec : Prop :=
  ∀ n, P11065812424496967606.a n = A101041 (n + 1)

end A101041

/-! ## A101041.P15272099235806042495

`∑[round(1/A034836(n+1))]`
-/

namespace A101041.P15272099235806042495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (1 / (A034836 (n + 1) : ℚ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101041.P15272099235806042495

namespace A101041

/-- `∑[round(1/A034836(n+1))]` -/
def P15272099235806042495.Spec : Prop :=
  ∀ n, P15272099235806042495.a n = A101041 (n + 1)

end A101041

/-! ## A101041.P6548853968869441581

`∑[C(2, A000051(A122179(n+1)))]`
-/

namespace A101041.P6548853968869441581
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A000051 (A122179 (n + 1)).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101041.P6548853968869441581

namespace A101041

/-- `∑[C(2, A000051(A122179(n+1)))]` -/
def P6548853968869441581.Spec : Prop :=
  ∀ n, (P6548853968869441581.a n : ℤ) = A101041 (n + 1)

end A101041

/-! ## A101041.P7466566453819533996

`A072000(n+1)+A036234(n+1)`
-/

namespace A101041.P7466566453819533996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072000 (n + 1) + A036234 (n + 1)

end

end A101041.P7466566453819533996

namespace A101041

/-- `A072000(n+1)+A036234(n+1)` -/
def P7466566453819533996.Spec : Prop :=
  ∀ n, P7466566453819533996.a n = A101041 (n + 1)

theorem P7466566453819533996.correct : P7466566453819533996.Spec := by
  intro n
  simp only [A101041, Nat.add_sub_cancel, A101041.P7466566453819533996.a, A101041.P9395477639911062119.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A036234, A036234.P2906282677021386800.a, A072000, A072000.P3706059858088101648.a, A056811, A056811.P3378557342044572151.a, A072613, A072613.P13158909735510187267.f1, A072613.P13158909735510187267.a, A000196, A000196.P15434771586934192083.a, A230595, A230595.P9035268919760195541.a, A008615, A008615.P10410393553474300613.a, A305809, A305809.P13406550948487456153.f1, A305809.P13406550948487456153.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A101041

/-! ## A101041.P263001380835223215

`∑[C(A055212(n+1), A055212(n+1)²)]`
-/

namespace A101041.P263001380835223215
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A055212 (n + 1)).toNat (A055212 (n + 1) ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101041.P263001380835223215

namespace A101041

/-- `∑[C(A055212(n+1), A055212(n+1)²)]` -/
def P263001380835223215.Spec : Prop :=
  ∀ n, (P263001380835223215.a n : ℤ) = A101041 (n + 1)

end A101041

/-! ## A101041.P7136366148278316213

`A072000(n+1)+A078342(n+2)+A056811(n+2)`
-/

namespace A101041.P7136366148278316213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072000 (n + 1) + (A078342 (n + 2) + A056811 (n + 2))

end

end A101041.P7136366148278316213

namespace A101041

/-- `A072000(n+1)+A078342(n+2)+A056811(n+2)` -/
def P7136366148278316213.Spec : Prop :=
  ∀ n, P7136366148278316213.a n = A101041 (n + 1)

end A101041

/-! ## A101041.P3860889059244527920

`∑[char[lt[∑{e}[n+1, #], 3]]]`
-/

namespace A101041.P3860889059244527920
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f4 n), Nat.factorization (f4 n) p

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f3 j < f5 j) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101041.P3860889059244527920

namespace A101041

/-- `∑[char[lt[∑{e}[n+1, #], 3]]]` -/
def P3860889059244527920.Spec : Prop :=
  ∀ n, (P3860889059244527920.a n : ℤ) = A101041 (n + 1)

end A101041

/-! ## A101041.P17007254470459368189

`comp[lt[∑{e}[n+1, #], 3]+n]-n`
-/

namespace A101041.P17007254470459368189
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f4 j) n + n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)

end

end A101041.P17007254470459368189

namespace A101041

/-- `comp[lt[∑{e}[n+1, #], 3]+n]-n` -/
def P17007254470459368189.Spec : Prop :=
  ∀ n, P17007254470459368189.a n = A101041 (n + 1)

end A101041

/-!
# A101042: a(n) is the smallest positive d such that the n-th prime is the smallest prime p for which p+d is also prime.

The programs for A101042, there is no canonical definition to state claims against.
-/

/-! ## A101042.P14408326498255221853

`2*A091767(a(n-1))` with `a(0)=1`
-/

namespace A101042.P14408326498255221853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * A091767 (a (n - 1)).toNat

end

end A101042.P14408326498255221853

/-!
# A101043: A101042 sorted. There exists a prime p for which a(n) is the smallest positive d such that p is the smallest prime where p+d is also prime.

The programs for A101043, there is no canonical definition to state claims against.
-/

/-! ## A101043.P11059774558863381582

`A101042(A000720(A101044(n+1)))`
-/

namespace A101043.P11059774558863381582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101042 (A000720 (A101044 (n + 1)).toNat).toNat

end

end A101043.P11059774558863381582

/-! ## A101043.P9432358513645759464

`A101042(lcm(A015886(n), A277519(n+1)))`
-/

namespace A101043.P9432358513645759464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101042 (Int.lcm (A015886 n) (A277519 (n + 1)))

end

end A101043.P9432358513645759464

/-!
# A101044: Primes corresponding to A101043 (which is A101042 sorted).

The programs for A101044, there is no canonical definition to state claims against.
-/

/-! ## A101044.P10081778931032227428

`A020483(floor(A101043(n+1)/2))`
-/

namespace A101044.P10081778931032227428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020483 ⌊(A101043 (n + 1) : ℚ) / 2⌋.toNat

end

end A101044.P10081778931032227428

/-! ## A101044.P5659948982077443592

`A271353(A101043(n+1)+2)`
-/

namespace A101044.P5659948982077443592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271353 (A101043 (n + 1) + 2).toNat

end

end A101044.P5659948982077443592

/-! ## A101044.P2765353441283140310

`A204895(A101043(n+1))`
-/

namespace A101044.P2765353441283140310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204895 (A101043 (n + 1)).toNat

end

end A101044.P2765353441283140310

/-!
# A101045: Record size primes in A101044.

The programs for A101045, there is no canonical definition to state claims against.
-/

/-! ## A101045.P12134213863762752643

`A000040(A371069(n+1))`
-/

namespace A101045.P12134213863762752643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A371069 (n + 1)).toNat

end

end A101045.P12134213863762752643

/-! ## A101045.P9809342404254304221

`A008578(A371069(1+n)+1)`
-/

namespace A101045.P9809342404254304221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A371069 (1 + n) + 1).toNat

end

end A101045.P9809342404254304221

/-! ## A101045.P12854179436809803284

`record[A101044(n+1)]`
-/

namespace A101045.P12854179436809803284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101044 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A101045.P12854179436809803284

/-! ## A101045.P8088063360224841745

`A204895(A101046(n+1))`
-/

namespace A101045.P8088063360224841745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204895 (A101046 (n + 1)).toNat

end

end A101045.P8088063360224841745

/-! ## A101045.P14143516455648044089

`A094802(A024377(n+1))`
-/

namespace A101045.P14143516455648044089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094802 (A024377 (n + 1)).toNat

end

end A101045.P14143516455648044089

/-!
# A101046: d such that the smallest prime p for which p+d is also prime is larger than for any smaller d.

The programs for A101046, there is no canonical definition to state claims against.
-/

/-! ## A101046.P13439816515412736852

`A040000(n)*A239392(A028310(n))`
-/

namespace A101046.P13439816515412736852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040000 n * A239392 (A028310 n).toNat

end

end A101046.P13439816515412736852

/-! ## A101046.P14787692133323308945

`A036453(n+1)*A239392(A028310(n))`
-/

namespace A101046.P14787692133323308945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036453 (n + 1) * A239392 (A028310 n).toNat

end

end A101046.P14787692133323308945

/-! ## A101046.P7571386045483339262

`A101042(A371069(n+1))`
-/

namespace A101046.P7571386045483339262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101042 (A371069 (n + 1)).toNat

end

end A101046.P7571386045483339262

/-! ## A101046.P2834409841309862044

`A101042(A000720(A101045(n+1)))`
-/

namespace A101046.P2834409841309862044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101042 (A000720 (A101045 (n + 1)).toNat).toNat

end

end A101046.P2834409841309862044

/-! ## A101046.P11740429590657201090

`A101042(A000720(record[A101044(n+1)]))`
-/

namespace A101046.P11740429590657201090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101044 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101042 (A000720 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat).toNat

end

end A101046.P11740429590657201090

/-!
# A101048: Number of partitions of n into semiprimes (a(0) = 1 by convention).

The programs for A101048, there is no canonical definition to state claims against.
-/

/-! ## A101048.P14275394928473409546

`A204389(n)-A185238(A127684(n+1))`
-/

namespace A101048.P14275394928473409546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204389 n - A185238 (A127684 (n + 1)).toNat

end

end A101048.P14275394928473409546

/-! ## A101048.P9605587039760984882

`A204389(n)-A185238(A127683(n+1))`
-/

namespace A101048.P9605587039760984882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204389 n - A185238 (A127683 (n + 1)).toNat

end

end A101048.P9605587039760984882

/-! ## A101048.P14068271720976876243

`A204389(n)-A185238(A127686(n+1))`
-/

namespace A101048.P14068271720976876243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204389 n - A185238 (A127686 (n + 1)).toNat

end

end A101048.P14068271720976876243

/-! ## A101048.P7063809061794890481

`A204389(n)%A239747(n+1)`
-/

namespace A101048.P7063809061794890481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A204389 n) (A239747 (n + 1))

end

end A101048.P7063809061794890481

/-! ## A101048.P16709691623233672041

`A204389(n^(A174162(2*n+3)%2))`
-/

namespace A101048.P16709691623233672041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204389 (SequenceMachineLib.roundAway ((n : ℚ) ^ (Int.tmod (A174162 (2 * n + 3)) 2 : ℤ))).toNat

end

end A101048.P16709691623233672041

/-!
# A101049: Number of partitions of n into parts having at most two prime-factors.

The programs for A101049, there is no canonical definition to state claims against.
-/

/-! ## A101049.P11434676218027993818

`A281744(A033265(2^n)+n+2)`
-/

namespace A101049.P11434676218027993818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281744 (A033265 (2 ^ n) + (n + 2 : ℤ)).toNat

end

end A101049.P11434676218027993818

/-! ## A101049.P10131520409916212384

`A281744(2*(n+1))%A281728(n+1)`
-/

namespace A101049.P10131520409916212384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A281744 (2 * (n + 1))) (A281728 (n + 1))

end

end A101049.P10131520409916212384

/-! ## A101049.P6186991451493591856

`A281744(A000005(A007283(n)))`
-/

namespace A101049.P6186991451493591856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281744 (A000005 (A007283 n).toNat).toNat

end

end A101049.P6186991451493591856

/-! ## A101049.P14601115135696011384

`record[A281744(A000005(A063759(n)))]`
-/

namespace A101049.P14601115135696011384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281744 (A000005 (A063759 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A101049.P14601115135696011384

/-! ## A101049.P16073221785213142754

`A333193(A187829(n+1))`
-/

namespace A101049.P16073221785213142754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333193 (A187829 (n + 1)).toNat

end

end A101049.P16073221785213142754

/-!
# A101050: Least k such that prime(n)*2^k-1 is prime, or -1 if no such k exists.

The programs for A101050, there is no canonical definition to state claims against.
-/

/-! ## A101050.P10116912166786369515

`A128979(n+1)-char[1]`
-/

namespace A101050.P10116912166786369515
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128979 (n + 1) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A101050.P10116912166786369515

/-! ## A101050.P2907331862349336987

`A040081(p?[xor(1, n)+1])`
-/

namespace A101050.P2907331862349336987
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040081 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A101050.P2907331862349336987

/-! ## A101050.P11335956616741934446

`A040081(Δ[A007504(n)])`
-/

namespace A101050.P11335956616741934446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040081 (f1 (n + 1) - f1 n).toNat

end

end A101050.P11335956616741934446

/-! ## A101050.P8501302798971584994

`A040081(record[A051698(n)])`
-/

namespace A101050.P8501302798971584994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051698 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040081 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A101050.P8501302798971584994

/-! ## A101050.P14029381370713847153

`A040081(record[A162753(n)])`
-/

namespace A101050.P14029381370713847153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162753 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040081 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A101050.P14029381370713847153

/-! ## A101050.P13504888163353882186

`A040081(p?[A195159(n)])`
-/

namespace A101050.P13504888163353882186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195159 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040081 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A101050.P13504888163353882186

/-! ## A101050.P13575019270133536317

`A040081(A000040(n+1))`
-/

namespace A101050.P13575019270133536317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040081 (A000040 (n + 1)).toNat

end

end A101050.P13575019270133536317

/-! ## A101050.P10188118727480021030

`A040081(A161847(n+1))`
-/

namespace A101050.P10188118727480021030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040081 (A161847 (n + 1)).toNat

end

end A101050.P10188118727480021030

/-! ## A101050.P18254358616335966392

`A040081(A216886(n+1))`
-/

namespace A101050.P18254358616335966392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040081 (A216886 (n + 1)).toNat

end

end A101050.P18254358616335966392

/-! ## A101050.P3292173371214364619

`A040081(A008578(n+2))`
-/

namespace A101050.P3292173371214364619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040081 (A008578 (n + 2)).toNat

end

end A101050.P3292173371214364619

/-!
# A101051: Numbers m such that Sum_{p prime|m} p^r(p) = m, where r(p) is the least positive primitive root of p (A001918).

The programs for A101051, there is no canonical definition to state claims against.
-/

/-! ## A101051.P6820364177805615206

`A002620(eq[A038574(n), A341461(n)])`
-/

namespace A101051.P6820364177805615206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038574 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341461 (n + 11)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A101051.P6820364177805615206

/-!
# A101052: Number of preferential arrangements of n labeled elements when only k <= 3 ranks are allowed.

The programs for A101052, the canonical program `A101052.P18135241430881834357` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A101052 has offset 0).

The definition of A101052 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A101052.P18135241430881834357

`3^n+2-2*2^n`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A101052

/-- `3^n+2-2*2^n` -/
def P18135241430881834357.Spec : Prop :=
  ∀ n, P18135241430881834357.a n = A101052 n

theorem P18135241430881834357.correct : P18135241430881834357.Spec := by
  intro n
  simp only [A101052]

end A101052

/-! ## A101052.P15431033018548785089

`∑[ogf((1-5x+8x^2)/(1-5x+6x^2))]`
-/

namespace A101052.P15431033018548785089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -5, 8] [1, -5, 6] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101052.P15431033018548785089

namespace A101052

/-- `∑[ogf((1-5x+8x^2)/(1-5x+6x^2))]` -/
def P15431033018548785089.Spec : Prop :=
  ∀ n, P15431033018548785089.a n = A101052 n

end A101052

/-! ## A101052.P3870043215003535931

`or(1, 3^n-∑[2^n])`
-/

namespace A101052.P3870043215003535931
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ((3 ^ n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ))

end

end A101052.P3870043215003535931

namespace A101052

/-- `or(1, 3^n-∑[2^n])` -/
def P3870043215003535931.Spec : Prop :=
  ∀ n, P3870043215003535931.a n = A101052 n

end A101052

/-! ## A101052.P10615530939293451472

`xor(1, 3^n-∑[2^n])`
-/

namespace A101052.P10615530939293451472
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 ((3 ^ n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ))

end

end A101052.P10615530939293451472

namespace A101052

/-- `xor(1, 3^n-∑[2^n])` -/
def P10615530939293451472.Spec : Prop :=
  ∀ n, P10615530939293451472.a n = A101052 n

end A101052

/-! ## A101052.P11772868426386309926

`∑[Δ[floor(3^(n-1))]-and(-2, 2^n)]`
-/

namespace A101052.P11772868426386309926
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - Int.land (-2) (2 ^ n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101052.P11772868426386309926

namespace A101052

/-- `∑[Δ[floor(3^(n-1))]-and(-2, 2^n)]` -/
def P11772868426386309926.Spec : Prop :=
  ∀ n, P11772868426386309926.a n = A101052 n

end A101052

/-! ## A101052.P6476503866062621852

`abs(A003063(n+1)+2)`
-/

namespace A101052.P6476503866062621852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A003063 (n + 1) + 2|

end

end A101052.P6476503866062621852

namespace A101052

/-- `abs(A003063(n+1)+2)` -/
def P6476503866062621852.Spec : Prop :=
  ∀ n, P6476503866062621852.a n = A101052 n

end A101052

/-! ## A101052.P5663483755105126589

`abs(abs(A000244(n)-2^n)+2-2^n)`
-/

namespace A101052.P5663483755105126589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(|A000244 n - (2 ^ n : ℤ)| + 2 - (2 ^ n : ℤ))|

end

end A101052.P5663483755105126589

namespace A101052

/-- `abs(abs(A000244(n)-2^n)+2-2^n)` -/
def P5663483755105126589.Spec : Prop :=
  ∀ n, P5663483755105126589.a n = A101052 n

end A101052

/-! ## A101052.P6264797475615406709

`abs(A000918(n)-A001047(n))`
-/

namespace A101052.P6264797475615406709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000918 n - A001047 n|

end

end A101052.P6264797475615406709

namespace A101052

/-- `abs(A000918(n)-A001047(n))` -/
def P6264797475615406709.Spec : Prop :=
  ∀ n, P6264797475615406709.a n = A101052 n

end A101052

/-! ## A101052.P14015840969412323159

`A245023(n+1)/3`
-/

namespace A101052.P14015840969412323159
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A245023 (n + 1) : ℚ) / 3

end

end A101052.P14015840969412323159

namespace A101052

/-- `A245023(n+1)/3` -/
def P14015840969412323159.Spec : Prop :=
  ∀ n, P14015840969412323159.a n = (A101052 n : ℚ)

theorem P14015840969412323159.correct : P14015840969412323159.Spec := by
  intro n
  simp only [A101052, Nat.add_sub_cancel, A101052.P14015840969412323159.a, A101052.P18135241430881834357.a, A245023, A245023.P5269609917888441665.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A101052

/-! ## A101052.P9411550102016499335

`(A094729(n+1)+2)/3`
-/

namespace A101052.P9411550102016499335
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A094729 (n + 1) + 2 : ℚ) / 3

end

end A101052.P9411550102016499335

namespace A101052

/-- `(A094729(n+1)+2)/3` -/
def P9411550102016499335.Spec : Prop :=
  ∀ n, P9411550102016499335.a n = (A101052 n : ℚ)

end A101052

/-! ## A101052.P9140281052501104416

`(A056454(2*(n+1))+3)/3`
-/

namespace A101052.P9140281052501104416
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056454 (2 * (n + 1)) + 3 : ℚ) / 3

end

end A101052.P9140281052501104416

namespace A101052

/-- `(A056454(2*(n+1))+3)/3` -/
def P9140281052501104416.Spec : Prop :=
  ∀ n, P9140281052501104416.a n = (A101052 n : ℚ)

end A101052

/-! ## A101052.P2080175701561632220

`Δ[A094033(n+1)/3-A005803(n)]`
-/

namespace A101052.P2080175701561632220
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A094033 (n + 1) : ℚ) / 3 - (A005803 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A101052.P2080175701561632220

namespace A101052

/-- `Δ[A094033(n+1)/3-A005803(n)]` -/
def P2080175701561632220.Spec : Prop :=
  ∀ n, P2080175701561632220.a n = (A101052 n : ℚ)

end A101052

/-! ## A101052.P8598773163549193198

`Δ[A094033(n+1)/3-A070313(n)]`
-/

namespace A101052.P8598773163549193198
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A094033 (n + 1) : ℚ) / 3 - (A070313 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A101052.P8598773163549193198

namespace A101052

/-- `Δ[A094033(n+1)/3-A070313(n)]` -/
def P8598773163549193198.Spec : Prop :=
  ∀ n, P8598773163549193198.a n = (A101052 n : ℚ)

end A101052

/-! ## A101052.P2994287139070317132

`A074506(n)%A130567(n+1)`
-/

namespace A101052.P2994287139070317132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A074506 n) (A130567 (n + 1))

end

end A101052.P2994287139070317132

namespace A101052

/-- `A074506(n)%A130567(n+1)` -/
def P2994287139070317132.Spec : Prop :=
  ∀ n, P2994287139070317132.a n = A101052 n

end A101052

/-! ## A101052.P13199578132282634267

`∑{#}[n, (-1)^(n-#)*C(n, #)*A092880(#)]`
-/

namespace A101052.P13199578132282634267
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (-1 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) * (Nat.choose n k : ℚ) * (A092880 k : ℚ)

end

end A101052.P13199578132282634267

namespace A101052

/-- `∑{#}[n, (-1)^(n-#)*C(n, #)*A092880(#)]` -/
def P13199578132282634267.Spec : Prop :=
  ∀ n, P13199578132282634267.a n = (A101052 n : ℚ)

end A101052

/-!
# A101053: a(n) = n! * Sum_{k=0..n} Bell(k)/k! (cf. A000110).

The programs for A101053, there is no canonical definition to state claims against.
-/

/-! ## A101053.P10144069335703397222

`n*a(n-1)+A000110(n)` with `a(0)=1`
-/

namespace A101053.P10144069335703397222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℤ) * a (n - 1) + A000110 n

end

end A101053.P10144069335703397222

/-! ## A101053.P15803496125244029032

`abs(A292935(n))+n*a(n-1)` with `a(0)=1`
-/

namespace A101053.P15803496125244029032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  |A292935 n| + (n : ℤ) * a (n - 1)

end

end A101053.P15803496125244029032

/-! ## A101053.P3705204720030333354

`A011971(∑[n])+a(n-1)*n` with `a(0)=1`
-/

namespace A101053.P3705204720030333354
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A011971 (∑ j ∈ Finset.range (n + 1), f1 j) + a (n - 1) * (n : ℤ)

end

end A101053.P3705204720030333354

/-! ## A101053.P16200938855676386552

`A033306(∑[n])+n*a(n-1)` with `a(0)=1`
-/

namespace A101053.P16200938855676386552
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A033306 (∑ j ∈ Finset.range (n + 1), f1 j) + (n : ℤ) * a (n - 1)

end

end A101053.P16200938855676386552

/-! ## A101053.P10865644507346732061

`A095149(∑[n])+n*a(n-1)` with `a(0)=1`
-/

namespace A101053.P10865644507346732061
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A095149 (∑ j ∈ Finset.range (n + 1), f1 j) + (n : ℤ) * a (n - 1)

end

end A101053.P10865644507346732061

/-! ## A101053.P15245125165210711197

`Δ[A005001(n)]+n*a(n-1)` with `a(0)=1`
-/

namespace A101053.P15245125165210711197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005001 n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  f1 (n + 1) - f1 n + (n : ℤ) * a (n - 1)

end

end A101053.P15245125165210711197

/-! ## A101053.P5457267236533027131

`record[A205574(n+1)]+n*a(n-1)` with `a(0)=1`
-/

namespace A101053.P5457267236533027131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205574 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + (n : ℤ) * a (n - 1)

end

end A101053.P5457267236533027131

/-! ## A101053.P13764210470322531713

`A346500(∑[n])+a(n-1)/n^-1` with `a(0)=1`
-/

namespace A101053.P13764210470322531713
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (A346500 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) + a (n - 1) / (n : ℚ) ^ (-1 : ℤ)

end

end A101053.P13764210470322531713

/-! ## A101053.P8146247605049075358

`∑[A000110(n)/A000142(n)]*A000142(n)`
-/

namespace A101053.P8146247605049075358
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000110 n : ℚ) / (A000142 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * (A000142 n : ℚ)

end

end A101053.P8146247605049075358

/-!
# A101054: Expansion of e.g.f. exp(exp(x)-1)/(1-x)^2.

The programs for A101054, the canonical program `A101054.P8263502121950951539` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A101054 has offset 0).

The definition of A101054 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A101054.P8263502121950951539

`∑{#}[n, C(n, #)*(#+1)!*A000110(n-#)]`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A101054

/-- `∑{#}[n, C(n, #)*(#+1)!*A000110(n-#)]` -/
def P8263502121950951539.Spec : Prop :=
  ∀ n, P8263502121950951539.a n = A101054 n

theorem P8263502121950951539.correct : P8263502121950951539.Spec := by
  intro n
  simp only [A101054]

end A101054

/-! ## A101054.P1906119391329516100

`A101053(n)+n*a(n-1)` with `a(0)=1`
-/

namespace A101054.P1906119391329516100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A101053 n + (n : ℤ) * a (n - 1)

end

end A101054.P1906119391329516100

namespace A101054

/-- `A101053(n)+n*a(n-1)` -/
def P1906119391329516100.Spec : Prop :=
  ∀ n, P1906119391329516100.a n = A101054 n

end A101054

/-! ## A101054.P5944873904205752823

`A101053(n+1)-A113060(n)`
-/

namespace A101054.P5944873904205752823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101053 (n + 1) - A113060 n

end

end A101054.P5944873904205752823

namespace A101054

/-- `A101053(n+1)-A113060(n)` -/
def P5944873904205752823.Spec : Prop :=
  ∀ n, P5944873904205752823.a n = A101054 n

end A101054

/-! ## A101054.P4070512278542673178

`n!*∑[∑[A000110(n)/A000142(n)]]`
-/

namespace A101054.P4070512278542673178
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000110 n : ℚ) / (A000142 n : ℚ)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℚ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A101054.P4070512278542673178

namespace A101054

/-- `n!*∑[∑[A000110(n)/A000142(n)]]` -/
def P4070512278542673178.Spec : Prop :=
  ∀ n, P4070512278542673178.a n = (A101054 n : ℚ)

end A101054

/-!
# A101055: Expansion of e.g.f. exp(exp(x)-1)/(1-x)^3.

The programs for A101055, the canonical program `A101055.P11005781978966858584` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A101055 has offset 0).

The definition of A101055 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A101055.P11005781978966858584

`1/2*∑{#}[n, C(n, #)*(#+2)!*A000110(n-#)]`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A101055

/-- `1/2*∑{#}[n, C(n, #)*(#+2)!*A000110(n-#)]` -/
def P11005781978966858584.Spec : Prop :=
  ∀ n, P11005781978966858584.a n = (A101055 n : ℚ)

end A101055

/-! ## A101055.P9072243146411886529

`A101054(n)+n*a(n-1)` with `a(0)=1`
-/

namespace A101055.P9072243146411886529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A101054 n + (n : ℤ) * a (n - 1)

end

end A101055.P9072243146411886529

namespace A101055

/-- `A101054(n)+n*a(n-1)` -/
def P9072243146411886529.Spec : Prop :=
  ∀ n, P9072243146411886529.a n = A101055 n

end A101055

/-!
# A101056: Indices of primes in sequence defined by A(0) = 83, A(n) = 10*A(n-1) - 27 for n > 0.

The programs for A101056, there is no canonical definition to state claims against.
-/

/-! ## A101056.P15447858601486983490

`A103069(n+2)-1`
-/

namespace A101056.P15447858601486983490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103069 (n + 2) - 1

end

end A101056.P15447858601486983490

/-! ## A101056.P15650336985316439844

`xor(1, A103069(A028310(n+2)))`
-/

namespace A101056.P15650336985316439844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A103069 (A028310 (n + 2)).toNat)

end

end A101056.P15650336985316439844

/-! ## A101056.P5031569399809757488

`xor(1, A103069(A272074(n+3)))`
-/

namespace A101056.P5031569399809757488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A103069 (A272074 (n + 3)).toNat)

end

end A101056.P5031569399809757488

/-! ## A101056.P12032614654740702409

`xor(1, A103069(comp[A103069(n+1)]))`
-/

namespace A101056.P12032614654740702409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103069 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A103069 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n))

end

end A101056.P12032614654740702409

/-! ## A101056.P1617748064867349480

`xor(A007318(∑[n]), A103069(n+2))`
-/

namespace A101056.P1617748064867349480
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A007318 (∑ j ∈ Finset.range (n + 1), f1 j)) (A103069 (n + 2))

end

end A101056.P1617748064867349480

/-!
# A101057: Indices of primes in sequence defined by A(0) = 89, A(n) = 10*A(n-1) - 81 for n > 0.

The programs for A101057, there is no canonical definition to state claims against.
-/

/-! ## A101057.P15804594800670824214

`A103070(n+2)-1`
-/

namespace A101057.P15804594800670824214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103070 (n + 2) - 1

end

end A101057.P15804594800670824214

/-! ## A101057.P14572993444443016142

`∑[Δ[A103070(n+1)]%(2^n)]`
-/

namespace A101057.P14572993444443016142
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103070 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (n + 1) - f2 n) (2 ^ n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101057.P14572993444443016142

/-! ## A101057.P7906205815348935026

`∑[Δ[A103070(n+1)]*A057427(n)]`
-/

namespace A101057.P7906205815348935026
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103070 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) * A057427 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101057.P7906205815348935026

/-! ## A101057.P6459953320395368295

`∑[Δ[A103070(n+1)]*A178334(n)]`
-/

namespace A101057.P6459953320395368295
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103070 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) * A178334 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101057.P6459953320395368295

/-! ## A101057.P17173077071631803102

`A260196(3*(n+1))+A103070(n+2)`
-/

namespace A101057.P17173077071631803102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 (3 * (n + 1)) + A103070 (n + 2)

end

end A101057.P17173077071631803102

/-!
# A101058: Indices of primes in sequence defined by A(0) = 83, A(n) = 10*A(n-1) - 17 for n > 0.

The programs for A101058, there is no canonical definition to state claims against.
-/

/-! ## A101058.P10022507425114972041

`A103071(n+1)-1`
-/

namespace A101058.P10022507425114972041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103071 (n + 1) - 1

end

end A101058.P10022507425114972041

/-! ## A101058.P11670195563899784024

`A308778(n²)+A103071(n+1)`
-/

namespace A101058.P11670195563899784024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308778 (n ^ 2) + A103071 (n + 1)

end

end A101058.P11670195563899784024

/-! ## A101058.P4876561483170635012

`A153881(n+2)+A103071(n+1)`
-/

namespace A101058.P4876561483170635012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153881 (n + 2) + A103071 (n + 1)

end

end A101058.P4876561483170635012

/-! ## A101058.P9530097776341894965

`A103115(floor(n/10))+A103071(n+1)`
-/

namespace A101058.P9530097776341894965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103115 ⌊(n : ℚ) / 10⌋.toNat + A103071 (n + 1)

end

end A101058.P9530097776341894965

/-! ## A101058.P6820426739209001580

`A118830(2*n+1)+A103071(n+1)`
-/

namespace A101058.P6820426739209001580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118830 (2 * n + 1) + A103071 (n + 1)

end

end A101058.P6820426739209001580

/-!
# A101059: Indices of primes in sequence defined by A(0) = 87, A(n) = 10*A(n-1) - 53 for n > 0.

The programs for A101059, there is no canonical definition to state claims against.
-/

/-! ## A101059.P13637413917101251029

`A103072(n+1)-1`
-/

namespace A101059.P13637413917101251029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103072 (n + 1) - 1

end

end A101059.P13637413917101251029

/-! ## A101059.P11921457751388496217

`record[A103072(A193738(n))-1]`
-/

namespace A101059.P11921457751388496217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103072 (A193738 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A101059.P11921457751388496217

/-! ## A101059.P4096987916755098371

`record[A103072(A263131(n))-1]`
-/

namespace A101059.P4096987916755098371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103072 (A263131 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A101059.P4096987916755098371

/-! ## A101059.P17472635879898801237

`A134824(n+2)+A103072(n+1)`
-/

namespace A101059.P17472635879898801237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134824 (n + 2) + A103072 (n + 1)

end

end A101059.P17472635879898801237

/-! ## A101059.P8817773868593801313

`A154990(∑[n+2])+A103072(n+1)`
-/

namespace A101059.P8817773868593801313
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154990 (∑ j ∈ Finset.range (n + 1), f1 j) + A103072 (n + 1)

end

end A101059.P8817773868593801313

/-!
# A101060: Indices of primes in sequence defined by A(0) = 89, A(n) = 10*A(n-1) - 71 for n > 0.

The programs for A101060, there is no canonical definition to state claims against.
-/

/-! ## A101060.P7646368023262671230

`A103073(n+1)-1`
-/

namespace A101060.P7646368023262671230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103073 (n + 1) - 1

end

end A101060.P7646368023262671230

/-! ## A101060.P6404851625551970149

`record[Δ[A103073(A152271(n))]]`
-/

namespace A101060.P6404851625551970149
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103073 (A152271 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A101060.P6404851625551970149

/-! ## A101060.P1945219955261859620

`record[A103073(A263131(n))-1]`
-/

namespace A101060.P1945219955261859620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103073 (A263131 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A101060.P1945219955261859620

/-! ## A101060.P6658892624587172697

`A308778(n²)+A103073(n+1)`
-/

namespace A101060.P6658892624587172697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308778 (n ^ 2) + A103073 (n + 1)

end

end A101060.P6658892624587172697

/-! ## A101060.P779909021838812575

`A103115(floor(n/10))+A103073(n+1)`
-/

namespace A101060.P779909021838812575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103115 ⌊(n : ℚ) / 10⌋.toNat + A103073 (n + 1)

end

end A101060.P779909021838812575

/-!
# A101061: Indices of primes in sequence defined by A(0) = 81, A(n) = 10*A(n-1) + 11 for n > 0.

The programs for A101061, there is no canonical definition to state claims against.
-/

/-! ## A101061.P1946599162140350045

`A103074(n+2)-1`
-/

namespace A101061.P1946599162140350045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103074 (n + 2) - 1

end

end A101061.P1946599162140350045

/-! ## A101061.P15433390120997162473

`A103115(A049430(n+1))+A103074(n+2)`
-/

namespace A101061.P15433390120997162473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103115 (A049430 (n + 1)).toNat + A103074 (n + 2)

end

end A101061.P15433390120997162473

/-! ## A101061.P8880357211581322052

`A103115(A078134(n+1))+A103074(n+2)`
-/

namespace A101061.P8880357211581322052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103115 (A078134 (n + 1)).toNat + A103074 (n + 2)

end

end A101061.P8880357211581322052

/-! ## A101061.P16982982648366053324

`A103115(A276910(2*(n+1)))+A103074(n+2)`
-/

namespace A101061.P16982982648366053324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103115 (A276910 (2 * (n + 1))).toNat + A103074 (n + 2)

end

end A101061.P16982982648366053324

/-!
# A101062: Indices of primes in sequence defined by A(0) = 83, A(n) = 10*A(n-1) - 7 for n > 0.

The programs for A101062, there is no canonical definition to state claims against.
-/

/-! ## A101062.P12589578267259196626

`A103075(n+1)-1`
-/

namespace A101062.P12589578267259196626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103075 (n + 1) - 1

end

end A101062.P12589578267259196626

/-! ## A101062.P4059977003568522454

`abs(1-A103075(abs(xor(n, -1))))`
-/

namespace A101062.P4059977003568522454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(1 - A103075 |Int.xor (n : ℤ) (-1)|.toNat)|

end

end A101062.P4059977003568522454

/-! ## A101062.P16782427045325640379

`record[Δ[A103075(A158416(n))]]`
-/

namespace A101062.P16782427045325640379
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103075 (A158416 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A101062.P16782427045325640379

/-! ## A101062.P3646638108801322581

`record[A103075(A193592(n))-1]`
-/

namespace A101062.P3646638108801322581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103075 (A193592 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A101062.P3646638108801322581

/-! ## A101062.P9895765914397031338

`A262352(2*n+1)+A103075(n+1)`
-/

namespace A101062.P9895765914397031338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262352 (2 * n + 1) + A103075 (n + 1)

end

end A101062.P9895765914397031338

/-!
# A101063: Indices of primes in sequence defined by A(0) = 87, A(n) = 10*A(n-1) - 43 for n > 0.

The programs for A101063, there is no canonical definition to state claims against.
-/

/-! ## A101063.P14484220963889028685

`A103076(n+2)-1`
-/

namespace A101063.P14484220963889028685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103076 (n + 2) - 1

end

end A101063.P14484220963889028685

/-! ## A101063.P7112782151985251972

`abs(A103076(n+2)+A008836(A244763(n+1)))`
-/

namespace A101063.P7112782151985251972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A103076 (n + 2) + A008836 (A244763 (n + 1)).toNat|

end

end A101063.P7112782151985251972

/-! ## A101063.P9518770719801182251

`abs(A103076(n+2)+A008836(A006530(2*(n+2))))`
-/

namespace A101063.P9518770719801182251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A103076 (n + 2) + A008836 (A006530 (2 * (n + 2))).toNat|

end

end A101063.P9518770719801182251

/-! ## A101063.P6809468673031521368

`A129818(A000255((∑{d}[n, #]%2)^n))+A103076(n+2)`
-/

namespace A101063.P6809468673031521368
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129818 (A000255 (((∑ d ∈ Nat.divisors (f1 n), d) % 2) ^ n)).toNat + A103076 (n + 2)

end

end A101063.P6809468673031521368

/-! ## A101063.P1914907404887709953

`∑[A181440(Δ[A103076(n+1)])]`
-/

namespace A101063.P1914907404887709953
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103076 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181440 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101063.P1914907404887709953

/-!
# A101064: Indices of primes in sequence defined by A(0) = 89, A(n) = 10*A(n-1) - 61 for n > 0.

The programs for A101064, there is no canonical definition to state claims against.
-/

/-! ## A101064.P16272468143409842228

`A103077(n+1)-1`
-/

namespace A101064.P16272468143409842228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103077 (n + 1) - 1

end

end A101064.P16272468143409842228

/-! ## A101064.P8893991384025828773

`record[Δ[A103077(A152271(n))]]`
-/

namespace A101064.P8893991384025828773
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103077 (A152271 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A101064.P8893991384025828773

/-! ## A101064.P50226876950415500

`A103115(floor(n/10))+A103077(n+1)`
-/

namespace A101064.P50226876950415500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103115 ⌊(n : ℚ) / 10⌋.toNat + A103077 (n + 1)

end

end A101064.P50226876950415500

/-! ## A101064.P8289562142843168710

`A284313(A257462(n))+A103077(n+1)`
-/

namespace A101064.P8289562142843168710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284313 (A257462 n).toNat + A103077 (n + 1)

end

end A101064.P8289562142843168710

/-! ## A101064.P7142595416748545395

`A321804(A321804(n)²)+A103077(n+1)`
-/

namespace A101064.P7142595416748545395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321804 (A321804 n ^ 2).toNat + A103077 (n + 1)

end

end A101064.P7142595416748545395

/-!
# A101065: Indices of primes in the sequence defined by A(0) = 89, A(n) = 10*A(n-1) - 51 for n > 0.

The programs for A101065, there is no canonical definition to state claims against.
-/

/-! ## A101065.P17742552788785294023

`A103078(n+1)-1`
-/

namespace A101065.P17742552788785294023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103078 (n + 1) - 1

end

end A101065.P17742552788785294023

/-! ## A101065.P14132628885947604804

`A153881(n+2)+A103078(n+1)`
-/

namespace A101065.P14132628885947604804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153881 (n + 2) + A103078 (n + 1)

end

end A101065.P14132628885947604804

/-! ## A101065.P5557575164723919875

`A164117(2*n+1)+A103078(n+1)`
-/

namespace A101065.P5557575164723919875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164117 (2 * n + 1) + A103078 (n + 1)

end

end A101065.P5557575164723919875

/-! ## A101065.P3054275979313836917

`A122434(3*(n+1))+A103078(n+1)`
-/

namespace A101065.P3054275979313836917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122434 (3 * (n + 1)) + A103078 (n + 1)

end

end A101065.P3054275979313836917

/-! ## A101065.P4125587215312445285

`A262352(xor(n, n+1))+A103078(n+1)`
-/

namespace A101065.P4125587215312445285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262352 (Nat.xor n (n + 1)) + A103078 (n + 1)

end

end A101065.P4125587215312445285

/-!
# A101066: Indices of primes in sequence defined by A(0) = 81, A(n) = 10*A(n-1) + 31 for n > 0.

The programs for A101066, there is no canonical definition to state claims against.
-/

/-! ## A101066.P1418944275485113280

`A103079(n+2)-1`
-/

namespace A101066.P1418944275485113280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103079 (n + 2) - 1

end

end A101066.P1418944275485113280

/-! ## A101066.P16421462064051149182

`A110315(2*n+1)+A103079(n+2)+n`
-/

namespace A101066.P16421462064051149182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110315 (2 * n + 1) + (A103079 (n + 2) + (n : ℤ))

end

end A101066.P16421462064051149182

/-! ## A101066.P1432323774768933816

`A291914(A005382(n+1))+A103079(n+2)`
-/

namespace A101066.P1432323774768933816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291914 (A005382 (n + 1)).toNat + A103079 (n + 2)

end

end A101066.P1432323774768933816

/-! ## A101066.P17859789535660824812

`A260884(A260897(n+1))+A103079(n+2)`
-/

namespace A101066.P17859789535660824812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260884 (A260897 (n + 1)).toNat + A103079 (n + 2)

end

end A101066.P17859789535660824812

/-! ## A101066.P17067495337130951235

`A355690(A216468(n+1))+A103079(n+2)`
-/

namespace A101066.P17067495337130951235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355690 (A216468 (n + 1)).toNat + A103079 (n + 2)

end

end A101066.P17067495337130951235

/-!
# A101067: Indices of primes in sequence defined by A(0) = 83, A(n) = 10*A(n-1) + 13 for n > 0.

The programs for A101067, there is no canonical definition to state claims against.
-/

/-! ## A101067.P2938207411992446486

`A103080(n+2)-1`
-/

namespace A101067.P2938207411992446486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103080 (n + 2) - 1

end

end A101067.P2938207411992446486

/-! ## A101067.P14337622118542828040

`abs(A103080(n+2)+A033999(2*n+1))`
-/

namespace A101067.P14337622118542828040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A103080 (n + 2) + A033999 (2 * n + 1)|

end

end A101067.P14337622118542828040

/-! ## A101067.P12980897504267745322

`A110315(2*n+1)+A103080(n+2)+n`
-/

namespace A101067.P12980897504267745322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110315 (2 * n + 1) + (A103080 (n + 2) + (n : ℤ))

end

end A101067.P12980897504267745322

/-! ## A101067.P8751629178796423495

`A161204(A326307(n))+A103080(n+2)`
-/

namespace A101067.P8751629178796423495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161204 (A326307 n).toNat + A103080 (n + 2)

end

end A101067.P8751629178796423495

/-! ## A101067.P12230546610148918009

`A307445(A084127(n+1))+A103080(n+2)`
-/

namespace A101067.P12230546610148918009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307445 (A084127 (n + 1)).toNat + A103080 (n + 2)

end

end A101067.P12230546610148918009

/-!
# A101068: Indices of primes in sequence defined by A(0) = 87, A(n) = 10*A(n-1) - 23 for n > 0.

The programs for A101068, there is no canonical definition to state claims against.
-/

/-! ## A101068.P5575954380530413909

`A103081(n+2)-1`
-/

namespace A101068.P5575954380530413909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103081 (n + 2) - 1

end

end A101068.P5575954380530413909

/-! ## A101068.P17970901194371839211

`xor(1, A103081(A020725(n+1)))`
-/

namespace A101068.P17970901194371839211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A103081 (A020725 (n + 1)).toNat)

end

end A101068.P17970901194371839211

/-! ## A101068.P17626531263160694553

`xor(1, A103081(A331400(n+1)))`
-/

namespace A101068.P17626531263160694553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A103081 (A331400 (n + 1)).toNat)

end

end A101068.P17626531263160694553

/-! ## A101068.P3867392009775581323

`xor(1, A103081(A008619(2*(n+1))))`
-/

namespace A101068.P3867392009775581323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A103081 (A008619 (2 * (n + 1))).toNat)

end

end A101068.P3867392009775581323

/-!
# A101069: Indices of primes in sequence defined by A(0) = 89, A(n) = 10*A(n-1) - 41 for n > 0.

The programs for A101069, there is no canonical definition to state claims against.
-/

/-! ## A101069.P5770964918300329053

`A103082(n+2)-1`
-/

namespace A101069.P5770964918300329053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103082 (n + 2) - 1

end

end A101069.P5770964918300329053

/-! ## A101069.P17942022292551542736

`3*A029931(A001108(n))`
-/

namespace A101069.P17942022292551542736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A029931 (A001108 n).toNat

end

end A101069.P17942022292551542736

/-!
# A101070: Indices of primes in sequence defined by A(0) = 81, A(n) = 10*A(n-1) + 41 for n > 0.

The programs for A101070, there is no canonical definition to state claims against.
-/

/-! ## A101070.P13083350961882046474

`A103083(n+1)-1`
-/

namespace A101070.P13083350961882046474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103083 (n + 1) - 1

end

end A101070.P13083350961882046474

/-!
# A101071: Indices of primes in sequence defined by A(0) = 83, A(n) = 10*A(n-1) + 23 for n > 0.

The programs for A101071, there is no canonical definition to state claims against.
-/

/-! ## A101071.P4090303023338073007

`A103084(n+1)-1`
-/

namespace A101071.P4090303023338073007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103084 (n + 1) - 1

end

end A101071.P4090303023338073007

/-! ## A101071.P14030258937084424204

`A134824(n+2)+A103084(n+1)`
-/

namespace A101071.P14030258937084424204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134824 (n + 2) + A103084 (n + 1)

end

end A101071.P14030258937084424204

/-! ## A101071.P12614488944444261389

`A278400(gcd(n, n+1))+A103084(n+1)`
-/

namespace A101071.P12614488944444261389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278400 (Nat.gcd n (n + 1)) + A103084 (n + 1)

end

end A101071.P12614488944444261389

/-! ## A101071.P18067334563828569105

`abs(A103084(n+1)+A049347(3*n+1))`
-/

namespace A101071.P18067334563828569105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A103084 (n + 1) + A049347 (3 * n + 1)|

end

end A101071.P18067334563828569105

/-! ## A101071.P1927307188451925027

`A108086(A014634(n))+A103084(n+1)`
-/

namespace A101071.P1927307188451925027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108086 (A014634 n).toNat + A103084 (n + 1)

end

end A101071.P1927307188451925027

/-!
# A101072: Indices of primes in sequence defined by A(0) = 87, A(n) = 10*A(n-1) - 13 for n > 0.

The programs for A101072, there is no canonical definition to state claims against.
-/

/-! ## A101072.P13077372968031866763

`A103085(n+1)-1`
-/

namespace A101072.P13077372968031866763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103085 (n + 1) - 1

end

end A101072.P13077372968031866763

/-! ## A101072.P18300762411591323070

`record[A103085(A055801(n))-1]`
-/

namespace A101072.P18300762411591323070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103085 (A055801 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A101072.P18300762411591323070

/-! ## A101072.P5719810043545159740

`record[A103085(A236858(n))-1]`
-/

namespace A101072.P5719810043545159740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103085 (A236858 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A101072.P5719810043545159740

/-!
# A101073: Indices of primes in sequence defined by A(0) = 89, A(n) = 10*A(n-1) - 31 for n > 0.

The programs for A101073, there is no canonical definition to state claims against.
-/

/-! ## A101073.P5856843143831005945

`A103086(n+1)-1`
-/

namespace A101073.P5856843143831005945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103086 (n + 1) - 1

end

end A101073.P5856843143831005945

/-! ## A101073.P3205129464414919484

`record[Δ[A103086(A152271(n))]]`
-/

namespace A101073.P3205129464414919484
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103086 (A152271 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A101073.P3205129464414919484

/-! ## A101073.P1326239904533130922

`A134824(n+2)+A103086(n+1)`
-/

namespace A101073.P1326239904533130922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134824 (n + 2) + A103086 (n + 1)

end

end A101073.P1326239904533130922

/-! ## A101073.P2067027962888403010

`A153881(n+2)+A103086(n+1)`
-/

namespace A101073.P2067027962888403010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153881 (n + 2) + A103086 (n + 1)

end

end A101073.P2067027962888403010

/-! ## A101073.P10689857058336459417

`A166269(Δ[or(1, n)])+A103086(n+1)`
-/

namespace A101073.P10689857058336459417
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166269 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + A103086 (n + 1)

end

end A101073.P10689857058336459417

/-!
# A101074: Indices of primes in sequence defined by A(0) = 83, A(n) = 10*A(n-1) + 33 for n > 0.

The programs for A101074, there is no canonical definition to state claims against.
-/

/-! ## A101074.P13390826716804404493

`A103087(n+2)-1`
-/

namespace A101074.P13390826716804404493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103087 (n + 2) - 1

end

end A101074.P13390826716804404493

/-! ## A101074.P11751588407293631960

`∑[Δ[A103087(n+1)]*A057427(n)]`
-/

namespace A101074.P11751588407293631960
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103087 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) * A057427 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101074.P11751588407293631960

/-! ## A101074.P1073739246841923119

`∑[Δ[A103087(n+1)]%A000984(n)]`
-/

namespace A101074.P1073739246841923119
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103087 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (n + 1) - f2 n) (A000984 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101074.P1073739246841923119

/-! ## A101074.P1701173850811777004

`A286714(gcd(n, n+1))+A103087(n+2)`
-/

namespace A101074.P1701173850811777004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286714 (Nat.gcd n (n + 1)) + A103087 (n + 2)

end

end A101074.P1701173850811777004

/-! ## A101074.P7699277401411898134

`abs(A103087(n+2)+A033999(2*n+1))`
-/

namespace A101074.P7699277401411898134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A103087 (n + 2) + A033999 (2 * n + 1)|

end

end A101074.P7699277401411898134

/-!
# A101075: Indices of primes in sequence defined by A(0) = 89, A(n) = 10*A(n-1) - 21 for n > 0.

The programs for A101075, there is no canonical definition to state claims against.
-/

/-! ## A101075.P3739588857999080018

`A103088(n+2)-1`
-/

namespace A101075.P3739588857999080018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103088 (n + 2) - 1

end

end A101075.P3739588857999080018

/-! ## A101075.P6723782150427447153

`xor(A014860(n), A103088(n+2))`
-/

namespace A101075.P6723782150427447153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A014860 n) (A103088 (n + 2))

end

end A101075.P6723782150427447153

/-! ## A101075.P16681599666307156131

`xor(A103088(n+2), A178688(n+1))`
-/

namespace A101075.P16681599666307156131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A103088 (n + 2)) (A178688 (n + 1))

end

end A101075.P16681599666307156131

/-! ## A101075.P14030790655346464752

`xor(A007318(A000217(n)), A103088(n+2))`
-/

namespace A101075.P14030790655346464752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A007318 (A000217 n).toNat) (A103088 (n + 2))

end

end A101075.P14030790655346464752

/-!
# A101076: Indices of primes in sequence defined by A(0) = 81, A(n) = 10*A(n-1) + 61 for n > 0.

The programs for A101076, there is no canonical definition to state claims against.
-/

/-! ## A101076.P5745104853777413351

`A103089(n+2)-1`
-/

namespace A101076.P5745104853777413351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103089 (n + 2) - 1

end

end A101076.P5745104853777413351

/-! ## A101076.P8602131984168560668

`A103115(A161043(n+1))+A103089(n+2)`
-/

namespace A101076.P8602131984168560668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103115 (A161043 (n + 1)).toNat + A103089 (n + 2)

end

end A101076.P8602131984168560668

/-! ## A101076.P12840334456863140635

`A316441(A000040(n+1))+A103089(n+2)`
-/

namespace A101076.P12840334456863140635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316441 (A000040 (n + 1)).toNat + A103089 (n + 2)

end

end A101076.P12840334456863140635

/-! ## A101076.P461257199953066931

`A341035(A092670(n+1))+A103089(n+2)`
-/

namespace A101076.P461257199953066931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341035 (A092670 (n + 1)).toNat + A103089 (n + 2)

end

end A101076.P461257199953066931

/-! ## A101076.P17593822903877223331

`A349340(A216310(n+1))+A103089(n+2)`
-/

namespace A101076.P17593822903877223331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349340 (A216310 (n + 1)).toNat + A103089 (n + 2)

end

end A101076.P17593822903877223331

/-!
# A101077: Indices of primes in sequence defined by A(0) = 83, A(n) = 10*A(n-1) + 43 for n > 0.

The programs for A101077, there is no canonical definition to state claims against.
-/

/-! ## A101077.P17289575911762900953

`A103090(n+1)-1`
-/

namespace A101077.P17289575911762900953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103090 (n + 1) - 1

end

end A101077.P17289575911762900953

/-! ## A101077.P14525747256352873667

`record[Δ[A103090(A152271(n))]]`
-/

namespace A101077.P14525747256352873667
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103090 (A152271 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A101077.P14525747256352873667

/-! ## A101077.P2383121929945632588

`abs(A103090(A005555(n))-1)`
-/

namespace A101077.P2383121929945632588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A103090 (A005555 n).toNat - 1|

end

end A101077.P2383121929945632588

/-! ## A101077.P7440649763506888259

`A144403(floor(n/3))+A103090(n+1)`
-/

namespace A101077.P7440649763506888259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144403 ⌊(n : ℚ) / 3⌋.toNat + A103090 (n + 1)

end

end A101077.P7440649763506888259

/-! ## A101077.P8818162969930204053

`A165326(4*n+2)+A103090(n+1)`
-/

namespace A101077.P8818162969930204053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165326 (4 * n + 2) + A103090 (n + 1)

end

end A101077.P8818162969930204053

/-!
# A101078: Indices of primes in sequence defined by A(0) = 89, A(n) = 10*A(n-1) - 11 for n > 0.

The programs for A101078, there is no canonical definition to state claims against.
-/

/-! ## A101078.P9398601148851433783

`A103091(n+1)-1`
-/

namespace A101078.P9398601148851433783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103091 (n + 1) - 1

end

end A101078.P9398601148851433783

/-! ## A101078.P7075539491827757774

`record[Δ[A103091(A158416(n))]]`
-/

namespace A101078.P7075539491827757774
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103091 (A158416 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A101078.P7075539491827757774

/-! ## A101078.P8260002168624359625

`record[A103091(A102885(n))-1]`
-/

namespace A101078.P8260002168624359625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103091 (A102885 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A101078.P8260002168624359625

/-! ## A101078.P13859401640085794322

`record[A103091(A263131(n))-1]`
-/

namespace A101078.P13859401640085794322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103091 (A263131 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A101078.P13859401640085794322

/-! ## A101078.P3724403802917570948

`A134824(n+2)+A103091(n+1)`
-/

namespace A101078.P3724403802917570948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134824 (n + 2) + A103091 (n + 1)

end

end A101078.P3724403802917570948

/-!
# A101079: Indices of primes in sequence defined by A(0) = 83, A(n) = 10*A(n-1) + 63 for n > 0.

The programs for A101079, there is no canonical definition to state claims against.
-/

/-! ## A101079.P7470512897631875572

`A103092(n+2)-1`
-/

namespace A101079.P7470512897631875572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103092 (n + 2) - 1

end

end A101079.P7470512897631875572

/-! ## A101079.P16591495844480607066

`∑[Δ[A103092(n+1)]%A004009(n)]`
-/

namespace A101079.P16591495844480607066
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103092 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (n + 1) - f2 n) (A004009 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101079.P16591495844480607066

/-! ## A101079.P10444269191700975833

`abs(A103092(n+2)+A057428(3*n+4))`
-/

namespace A101079.P10444269191700975833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A103092 (n + 2) + A057428 (3 * n + 4)|

end

end A101079.P10444269191700975833

/-! ## A101079.P2954114337806722168

`A110315(2*n+1)+A103092(n+2)+n`
-/

namespace A101079.P2954114337806722168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110315 (2 * n + 1) + (A103092 (n + 2) + (n : ℤ))

end

end A101079.P2954114337806722168

/-! ## A101079.P16941064656849104760

`record[A103092(A028310(n))+A057428(n)]`
-/

namespace A101079.P16941064656849104760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103092 (A028310 n).toNat + A057428 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A101079.P16941064656849104760

/-!
# A101080: Table of Hamming distances between binary vectors representing i and j, for i >= 0, j >= 0, read by antidiagonals.

The programs for A101080, the canonical program `A101080.P10162260254502051975` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A101080 has offset 0).

The definition of A101080 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A101080.P10162260254502051975

`A000120(A003987(n))`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A101080

/-- `A000120(A003987(n))` -/
def P10162260254502051975.Spec : Prop :=
  ∀ n, P10162260254502051975.a n = A101080 n

theorem P10162260254502051975.correct : P10162260254502051975.Spec := by
  intro n
  simp only [A101080]

end A101080

/-! ## A101080.P3897994397629394830

`A048881(2*A003987(n))`
-/

namespace A101080.P3897994397629394830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048881 (2 * A003987 n).toNat

end

end A101080.P3897994397629394830

namespace A101080

/-- `A048881(2*A003987(n))` -/
def P3897994397629394830.Spec : Prop :=
  ∀ n, P3897994397629394830.a n = A101080 n

end A101080

/-! ## A101080.P10078801400970770819

`A151902(3*A003987(n))`
-/

namespace A101080.P10078801400970770819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151902 (3 * A003987 n).toNat

end

end A101080.P10078801400970770819

namespace A101080

/-- `A151902(3*A003987(n))` -/
def P10078801400970770819.Spec : Prop :=
  ∀ n, P10078801400970770819.a n = A101080 n

end A101080

/-! ## A101080.P1096149685654649035

`A000120(A280172(n+1)-1)`
-/

namespace A101080.P1096149685654649035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A280172 (n + 1) - 1).toNat

end

end A101080.P1096149685654649035

namespace A101080

/-- `A000120(A280172(n+1)-1)` -/
def P1096149685654649035.Spec : Prop :=
  ∀ n, P1096149685654649035.a n = A101080 n

theorem P1096149685654649035.correct : P1096149685654649035.Spec := by
  intro n
  simp only [A101080, Nat.add_sub_cancel, A101080.P1096149685654649035.a, A101080.P10162260254502051975.a, A000120, A000120.P2816527436160941581.a, A003987, A003987.P6522273903622706452.a, A280172, A280172.P14429094366416205304.a, A002262, A002262.P17823619022233514403.a, A005187, A005187.P3874015513960485494.a, A025581, A025581.P16112744757063613497.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A101080

/-! ## A101080.P16971290448989638123

`A000120(A003986(n)-A004198(n))`
-/

namespace A101080.P16971290448989638123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A003986 n - A004198 n).toNat

end

end A101080.P16971290448989638123

namespace A101080

/-- `A000120(A003986(n)-A004198(n))` -/
def P16971290448989638123.Spec : Prop :=
  ∀ n, P16971290448989638123.a n = A101080 n

theorem P16971290448989638123.correct : P16971290448989638123.Spec := by
  intro n
  simp only [A101080, Nat.add_sub_cancel, A101080.P16971290448989638123.a, A101080.P10162260254502051975.a, A000120, A000120.P2816527436160941581.a, A003986, A003986.P12926496113833734776.a, A003987, A003987.P6522273903622706452.a, A004198, A004198.P12357337643379645634.a, A002262, A002262.P17823619022233514403.a, A005187, A005187.P3874015513960485494.a, A025581, A025581.P16112744757063613497.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A101080

/-! ## A101080.P2544428876728235035

`A000120(xor(A003984(n), A004197(n)))`
-/

namespace A101080.P2544428876728235035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (Int.xor (A003984 n) (A004197 n)).toNat

end

end A101080.P2544428876728235035

namespace A101080

/-- `A000120(xor(A003984(n), A004197(n)))` -/
def P2544428876728235035.Spec : Prop :=
  ∀ n, P2544428876728235035.a n = A101080 n

end A101080

/-! ## A101080.P1629314127329303119

`A000120(xor(A002262(n), A025581(n)))`
-/

namespace A101080.P1629314127329303119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (Int.xor (A002262 n) (A025581 n)).toNat

end

end A101080.P1629314127329303119

namespace A101080

/-- `A000120(xor(A002262(n), A025581(n)))` -/
def P1629314127329303119.Spec : Prop :=
  ∀ n, P1629314127329303119.a n = A101080 n

end A101080

/-! ## A101080.P1957885262340209905

`A000120(xor(A341839(n), A341840(n)))`
-/

namespace A101080.P1957885262340209905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (Int.xor (A341839 n) (A341840 n)).toNat

end

end A101080.P1957885262340209905

namespace A101080

/-- `A000120(xor(A341839(n), A341840(n)))` -/
def P1957885262340209905.Spec : Prop :=
  ∀ n, P1957885262340209905.a n = A101080 n

end A101080

/-! ## A101080.P5307584818817407959

`A000120(xor(A004736(n+1)-1, A002262(n)))`
-/

namespace A101080.P5307584818817407959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (Int.xor (A004736 (n + 1) - 1) (A002262 n)).toNat

end

end A101080.P5307584818817407959

namespace A101080

/-- `A000120(xor(A004736(n+1)-1, A002262(n)))` -/
def P5307584818817407959.Spec : Prop :=
  ∀ n, P5307584818817407959.a n = A101080 n

end A101080

/-! ## A101080.P9909575594971462092

`A000120(xor(A002260(n+1)-1, A025581(n)))`
-/

namespace A101080.P9909575594971462092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (Int.xor (A002260 (n + 1) - 1) (A025581 n)).toNat

end

end A101080.P9909575594971462092

namespace A101080

/-- `A000120(xor(A002260(n+1)-1, A025581(n)))` -/
def P9909575594971462092.Spec : Prop :=
  ∀ n, P9909575594971462092.a n = A101080 n

theorem P9909575594971462092.correct : P9909575594971462092.Spec := by
  intro n
  simp only [A101080, Nat.add_sub_cancel, A101080.P9909575594971462092.a, A101080.P10162260254502051975.a, A000120, A000120.P2816527436160941581.a, A002260, A002260.P9170571874073898642.a, A003987, A003987.P6522273903622706452.a, A025581, A025581.P16112744757063613497.a, A002262, A002262.P17823619022233514403.a, A005187, A005187.P3874015513960485494.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A101080

/-! ## A101080.P9251956504294688629

`A000120(xor(A002262(n), A057554(2*(n+1))))`
-/

namespace A101080.P9251956504294688629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (Int.xor (A002262 n) (A057554 (2 * (n + 1)))).toNat

end

end A101080.P9251956504294688629

namespace A101080

/-- `A000120(xor(A002262(n), A057554(2*(n+1))))` -/
def P9251956504294688629.Spec : Prop :=
  ∀ n, P9251956504294688629.a n = A101080 n

end A101080

/-! ## A101080.P263190251399038451

`A000120(xor(A002260(n+1)-1, A004736(n+1)-1))`
-/

namespace A101080.P263190251399038451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (Int.xor (A002260 (n + 1) - 1) (A004736 (n + 1) - 1)).toNat

end

end A101080.P263190251399038451

namespace A101080

/-- `A000120(xor(A002260(n+1)-1, A004736(n+1)-1))` -/
def P263190251399038451.Spec : Prop :=
  ∀ n, P263190251399038451.a n = A101080 n

end A101080

/-! ## A101080.P12862783314484237386

`A000120(xor(A002260(n+1)-1, A057554(2*(n+1))))`
-/

namespace A101080.P12862783314484237386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (Int.xor (A002260 (n + 1) - 1) (A057554 (2 * (n + 1)))).toNat

end

end A101080.P12862783314484237386

namespace A101080

/-- `A000120(xor(A002260(n+1)-1, A057554(2*(n+1))))` -/
def P12862783314484237386.Spec : Prop :=
  ∀ n, P12862783314484237386.a n = A101080 n

end A101080

/-! ## A101080.P13968955267681131942

`A000120(xor(A057554(2*n+1), A057554(2*(n+1))))`
-/

namespace A101080.P13968955267681131942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (Int.xor (A057554 (2 * n + 1)) (A057554 (2 * (n + 1)))).toNat

end

end A101080.P13968955267681131942

namespace A101080

/-- `A000120(xor(A057554(2*n+1), A057554(2*(n+1))))` -/
def P13968955267681131942.Spec : Prop :=
  ∀ n, P13968955267681131942.a n = A101080 n

end A101080

/-! ## A101080.P12799794288530593724

`A000120(A002262(A286109(n)))`
-/

namespace A101080.P12799794288530593724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A002262 (A286109 n).toNat).toNat

end

end A101080.P12799794288530593724

namespace A101080

/-- `A000120(A002262(A286109(n)))` -/
def P12799794288530593724.Spec : Prop :=
  ∀ n, P12799794288530593724.a n = A101080 n

end A101080

/-! ## A101080.P12703703845043394425

`A062756(A374560(n))`
-/

namespace A101080.P12703703845043394425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062756 (A374560 n).toNat

end

end A101080.P12703703845043394425

namespace A101080

/-- `A062756(A374560(n))` -/
def P12703703845043394425.Spec : Prop :=
  ∀ n, P12703703845043394425.a n = A101080 n

end A101080

/-! ## A101080.P8220738129117262044

`A000120(A002262(A286150(n)))`
-/

namespace A101080.P8220738129117262044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A002262 (A286150 n).toNat).toNat

end

end A101080.P8220738129117262044

namespace A101080

/-- `A000120(A002262(A286150(n)))` -/
def P8220738129117262044.Spec : Prop :=
  ∀ n, P8220738129117262044.a n = A101080 n

end A101080

/-! ## A101080.P12787262348027178699

`A000120(xor(A002260(n+1)-1, A057555(2*(n+1))-1))`
-/

namespace A101080.P12787262348027178699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (Int.xor (A002260 (n + 1) - 1) (A057555 (2 * (n + 1)) - 1)).toNat

end

end A101080.P12787262348027178699

namespace A101080

/-- `A000120(xor(A002260(n+1)-1, A057555(2*(n+1))-1))` -/
def P12787262348027178699.Spec : Prop :=
  ∀ n, P12787262348027178699.a n = A101080 n

end A101080

/-! ## A101080.P6602102337002807140

`A064547(A344534(A003987(A061579(n))))`
-/

namespace A101080.P6602102337002807140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064547 (A344534 (A003987 (A061579 n).toNat).toNat).toNat

end

end A101080.P6602102337002807140

namespace A101080

/-- `A064547(A344534(A003987(A061579(n))))` -/
def P6602102337002807140.Spec : Prop :=
  ∀ n, P6602102337002807140.a n = A101080 n

end A101080

/-! ## A101080.P1317881884334064991

`A064547(A344534(A003987(A344531(A344531(n)))))`
-/

namespace A101080.P1317881884334064991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064547 (A344534 (A003987 (A344531 (A344531 n).toNat).toNat).toNat).toNat

end

end A101080.P1317881884334064991

namespace A101080

/-- `A064547(A344534(A003987(A344531(A344531(n)))))` -/
def P1317881884334064991.Spec : Prop :=
  ∀ n, P1317881884334064991.a n = A101080 n

end A101080

/-!
# A101081: Number of distinct prime factors of (prime p concatenated p times).

The programs for A101081, there is no canonical definition to state claims against.
-/

/-! ## A101081.P17674573296615586828

`floor(log2(A103189(n+1)))`
-/

namespace A101081.P17674573296615586828
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A103189 (n + 1)).toNat

end

end A101081.P17674573296615586828

/-! ## A101081.P6066054826195109841

`∑{e}[A103189(1-(n-2*n)), #]`
-/

namespace A101081.P6066054826195109841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103189 (1 - ((n : ℤ) - (2 * n : ℤ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A101081.P6066054826195109841

/-! ## A101081.P12485564618829386016

`A001222(A103189(n+1))`
-/

namespace A101081.P12485564618829386016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A103189 (n + 1)).toNat

end

end A101081.P12485564618829386016

/-! ## A101081.P1470813632367827863

`A319695(2*A103189(n+1))`
-/

namespace A101081.P1470813632367827863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319695 (2 * A103189 (n + 1)).toNat

end

end A101081.P1470813632367827863

/-! ## A101081.P6207891847823402048

`A319695(A103189(n+1)+A103189(n+1))`
-/

namespace A101081.P6207891847823402048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319695 (A103189 (n + 1) + A103189 (n + 1)).toNat

end

end A101081.P6207891847823402048

/-!
# A101082: Numbers n such that binary representation contains bit strings "10" and "01" (possibly overlapping).

The programs for A101082, the canonical program `A101082.P1876431980315651818` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A101082 has offset 1).

The definition of A101082 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A101082.P6925736773887977983

`comp[and(n, xor(n, -n)-n)]`
-/

namespace A101082.P6925736773887977983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (Int.xor (n : ℤ) (-(n : ℤ)) - (n : ℤ))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A101082.P6925736773887977983

namespace A101082

/-- `comp[and(n, xor(n, -n)-n)]` -/
def P6925736773887977983.Spec : Prop :=
  ∀ n, (P6925736773887977983.a n : ℤ) = A101082 (n + 1)

end A101082

/-! ## A101082.P11138460883282060315

`comp[2^row(n)-2^col(n)]`
-/

namespace A101082.P11138460883282060315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ SequenceMachineLib.triRow n : ℤ) - (2 ^ SequenceMachineLib.triCol n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A101082.P11138460883282060315

namespace A101082

/-- `comp[2^row(n)-2^col(n)]` -/
def P11138460883282060315.Spec : Prop :=
  ∀ n, (P11138460883282060315.a n : ℤ) = A101082 (n + 1)

end A101082

/-! ## A101082.P13367800926134597421

`comp[eq[and(n, 2*n), and(n, n-1)]]`
-/

namespace A101082.P13367800926134597421
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land n (2 * n)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) ((n : ℤ) - 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A101082.P13367800926134597421

namespace A101082

/-- `comp[eq[and(n, 2*n), and(n, n-1)]]` -/
def P13367800926134597421.Spec : Prop :=
  ∀ n, (P13367800926134597421.a n : ℤ) = A101082 (n + 1)

end A101082

/-! ## A101082.P4856537152814219975

`lt[1, a(ceil(n/2))+n%2]` with `a(0)=1, a(1)=0`
-/

namespace A101082.P4856537152814219975
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 0] fun n f2 =>
  f2 ⌈(n : ℚ) / 2⌉.toNat + n % 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A101082.P4856537152814219975

namespace A101082

/-- `lt[1, a(ceil(n/2))+n%2]` -/
def P4856537152814219975.Spec : Prop :=
  ∀ n, (P4856537152814219975.a n : ℤ) = A101082 (n + 1)

end A101082

/-! ## A101082.P6303550908951223597

`lt[2, a(2^ceil(log2(n))-n)+1]` with `a(0)=0`
-/

namespace A101082.P6303550908951223597
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f2 =>
  f2 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (⌈Real.logb 2 (n : ℝ)⌉ : ℤ) - (n : ℚ))).toNat + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A101082.P6303550908951223597

namespace A101082

/-- `lt[2, a(2^ceil(log2(n))-n)+1]` -/
def P6303550908951223597.Spec : Prop :=
  ∀ n, (P6303550908951223597.a n : ℤ) = A101082 (n + 1)

end A101082

/-! ## A101082.P1876431980315651818

`eq[0, C(and(n, 2*n), and(n, n-1))]`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A101082

/-- `eq[0, C(and(n, 2*n), and(n, n-1))]` -/
def P1876431980315651818.Spec : Prop :=
  ∀ n, (P1876431980315651818.a n : ℤ) = A101082 (n + 1)

theorem P1876431980315651818.correct : P1876431980315651818.Spec := by
  intro n
  simp only [A101082, Nat.add_sub_cancel]

end A101082

/-! ## A101082.P10797410694125618615

`lt[2, gcd(2, n)*a(floor(n/2))]+1` with `a(0)=1`
-/

namespace A101082.P10797410694125618615
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f2 =>
  Nat.gcd 2 n * f2 ⌊(n : ℚ) / 2⌋.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A101082.P10797410694125618615

namespace A101082

/-- `lt[2, gcd(2, n)*a(floor(n/2))]+1` -/
def P10797410694125618615.Spec : Prop :=
  ∀ n, (P10797410694125618615.a n : ℤ) = A101082 (n + 1)

end A101082

/-! ## A101082.P2988021335276550218

`lt[2^ceil(log2(n+1)), and(2*n, -n)]`
-/

namespace A101082.P2988021335276550218
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (⌈Real.logb 2 (n + 1 : ℝ)⌉ : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (2 * n : ℤ) (-(n : ℤ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n

end

end A101082.P2988021335276550218

namespace A101082

/-- `lt[2^ceil(log2(n+1)), and(2*n, -n)]` -/
def P2988021335276550218.Spec : Prop :=
  ∀ n, (P2988021335276550218.a n : ℤ) = A101082 (n + 1)

end A101082

/-! ## A101082.P16597660146063413448

`comp[A173787(n)]`
-/

namespace A101082.P16597660146063413448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173787 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A101082.P16597660146063413448

namespace A101082

/-- `comp[A173787(n)]` -/
def P16597660146063413448.Spec : Prop :=
  ∀ n, (P16597660146063413448.a n : ℤ) = A101082 (n + 1)

end A101082

/-! ## A101082.P601093410485024923

`eq[0, A340375(n)]`
-/

namespace A101082.P601093410485024923
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340375 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A101082.P601093410485024923

namespace A101082

/-- `eq[0, A340375(n)]` -/
def P601093410485024923.Spec : Prop :=
  ∀ n, (P601093410485024923.a n : ℤ) = A101082 (n + 1)

end A101082

/-! ## A101082.P4663984946848867739

`lt[1, A069010(n)]`
-/

namespace A101082.P4663984946848867739
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069010 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A101082.P4663984946848867739

namespace A101082

/-- `lt[1, A069010(n)]` -/
def P4663984946848867739.Spec : Prop :=
  ∀ n, (P4663984946848867739.a n : ℤ) = A101082 (n + 1)

end A101082

/-! ## A101082.P4409018267943530908

`lt[1, A124772(n)]`
-/

namespace A101082.P4409018267943530908
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124772 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A101082.P4409018267943530908

namespace A101082

/-- `lt[1, A124772(n)]` -/
def P4409018267943530908.Spec : Prop :=
  ∀ n, (P4409018267943530908.a n : ℤ) = A101082 (n + 1)

end A101082

/-! ## A101082.P16358016861318158862

`lt[1, A360288(n)]`
-/

namespace A101082.P16358016861318158862
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360288 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A101082.P16358016861318158862

namespace A101082

/-- `lt[1, A360288(n)]` -/
def P16358016861318158862.Spec : Prop :=
  ∀ n, (P16358016861318158862.a n : ℤ) = A101082 (n + 1)

end A101082

/-! ## A101082.P6933709197782598551

`lt[3, A088748(n)]`
-/

namespace A101082.P6933709197782598551
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088748 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A101082.P6933709197782598551

namespace A101082

/-- `lt[3, A088748(n)]` -/
def P6933709197782598551.Spec : Prop :=
  ∀ n, (P6933709197782598551.a n : ℤ) = A101082 (n + 1)

end A101082

/-! ## A101082.P15339721649674890374

`lt[A264977(n), n]`
-/

namespace A101082.P15339721649674890374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264977 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A101082.P15339721649674890374

namespace A101082

/-- `lt[A264977(n), n]` -/
def P15339721649674890374.Spec : Prop :=
  ∀ n, (P15339721649674890374.a n : ℤ) = A101082 (n + 1)

end A101082

/-! ## A101082.P7815838161232342797

`lt[n, A331857(n)]`
-/

namespace A101082.P7815838161232342797
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331857 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A101082.P7815838161232342797

namespace A101082

/-- `lt[n, A331857(n)]` -/
def P7815838161232342797.Spec : Prop :=
  ∀ n, (P7815838161232342797.a n : ℤ) = A101082 (n + 1)

end A101082

/-! ## A101082.P5602420952887105784

`comp[A023758(n+1)]`
-/

namespace A101082.P5602420952887105784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023758 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A101082.P5602420952887105784

namespace A101082

/-- `comp[A023758(n+1)]` -/
def P5602420952887105784.Spec : Prop :=
  ∀ n, (P5602420952887105784.a n : ℤ) = A101082 (n + 1)

end A101082

/-! ## A101082.P7658543598814696071

`comp[A089633(n)]+1`
-/

namespace A101082.P7658543598814696071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089633 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A101082.P7658543598814696071

namespace A101082

/-- `comp[A089633(n)]+1` -/
def P7658543598814696071.Spec : Prop :=
  ∀ n, (P7658543598814696071.a n : ℤ) = A101082 (n + 1)

end A101082

/-! ## A101082.P9449248026026175711

`A158582(n+1)+1`
-/

namespace A101082.P9449248026026175711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158582 (n + 1) + 1

end

end A101082.P9449248026026175711

namespace A101082

/-- `A158582(n+1)+1` -/
def P9449248026026175711.Spec : Prop :=
  ∀ n, P9449248026026175711.a n = A101082 (n + 1)

end A101082

/-!
# A101084: Numbers k such that 97*k + 101 is a prime.

The programs for A101084, there is no canonical definition to state claims against.
-/

/-! ## A101084.P12051928998440874256

`eq[1, A001222(97*(n+1)+4)]`
-/

namespace A101084.P12051928998440874256
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (97 * (n + 1) + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A101084.P12051928998440874256

/-! ## A101084.P3411802952717733902

`eq[1, A010051(97*(n+1)+4)]`
-/

namespace A101084.P3411802952717733902
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (97 * (n + 1) + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A101084.P3411802952717733902

/-! ## A101084.P4034880995302298947

`eq[2, A000005(97*(n+1)+4)]`
-/

namespace A101084.P4034880995302298947
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (97 * (n + 1) + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A101084.P4034880995302298947

/-! ## A101084.P7236568706245089959

`eq[97*(n+1)+4, A006530(97*(n+1)+4)]`
-/

namespace A101084.P7236568706245089959
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  97 * (n + 1) + 4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (97 * (n + 1) + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A101084.P7236568706245089959

/-! ## A101084.P10726528201064487069

`eq[97*(n+1)+4, A020639(97*(n+1)+4)]`
-/

namespace A101084.P10726528201064487069
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  97 * (n + 1) + 4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (97 * (n + 1) + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A101084.P10726528201064487069

/-! ## A101084.P14786329771136143136

`eq[A006530(97*(n+1)+4), A100775(n)]`
-/

namespace A101084.P14786329771136143136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (97 * (n + 1) + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100775 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A101084.P14786329771136143136

/-! ## A101084.P3882832734803410038

`eq[A001222(A100775(n)), A033999(n)]`
-/

namespace A101084.P3882832734803410038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A100775 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A101084.P3882832734803410038

/-! ## A101084.P12172899855630615041

`eq[A000005(A100775(n)), A133265(n)]`
-/

namespace A101084.P12172899855630615041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A100775 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133265 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A101084.P12172899855630615041

/-!
# A101085: Diagonal below the main diagonal of A083796, i.e., a(n) = A083796(n, n-1).

The programs for A101085, there is no canonical definition to state claims against.
-/

/-! ## A101085.P11185131124820345598

`A083796(C(n+2, 2)+n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A101085.P11185131124820345598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083796 (Nat.choose (n + 2) 2 + (n + 1))

end

end A101085.P11185131124820345598

/-! ## A101085.P7412621918641172987

`A083796(∑[n+2])`
-/

namespace A101085.P7412621918641172987
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083796 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A101085.P7412621918641172987

/-! ## A101085.P7164828203548362236

`A083799(n+2)-∑[n]`
-/

namespace A101085.P7164828203548362236
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083799 (n + 2) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A101085.P7164828203548362236

/-! ## A101085.P13361270015223791903

`A083802(n+2)*(n+2)-∑[n]`
-/

namespace A101085.P13361270015223791903
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083802 (n + 2) * (n + 2 : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A101085.P13361270015223791903

/-! ## A101085.P10197238533870513108

`(∑[n+1]%(n+2)/A014963(n+1)+1)*(n+1)`
-/

namespace A101085.P10197238533870513108
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((((∑ j ∈ Finset.range (n + 1), f1 j) % (n + 2) : ℕ) : ℚ) / (A014963 (n + 1) : ℚ) + 1) * (n + 1 : ℚ)

end

end A101085.P10197238533870513108

/-! ## A101085.P3360545346691280298

`∑[A001489(n)+Δ[A083799(n+1)]]`
-/

namespace A101085.P3360545346691280298
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083799 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001489 n + (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101085.P3360545346691280298

/-! ## A101085.P13873838707433919330

`n+1+A027656(n)*A048671(n+1)`
-/

namespace A101085.P13873838707433919330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + A027656 n * A048671 (n + 1)

end

end A101085.P13873838707433919330

/-! ## A101085.P12230904733164312924

`(n+2)*A083802(n+2)-A000217(n)`
-/

namespace A101085.P12230904733164312924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A083802 (n + 2) - A000217 n

end

end A101085.P12230904733164312924

/-! ## A101085.P15416693730181680475

`A000035(n+1)*A072504(∑[n+1])+n+1`
-/

namespace A101085.P15416693730181680475
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (n + 1) * A072504 (∑ j ∈ Finset.range (n + 1), f1 j) + (n + 1 : ℤ)

end

end A101085.P15416693730181680475

/-!
# A101086: Numbers k for which 997*k + 1009 is prime.

The programs for A101086, there is no canonical definition to state claims against.
-/

/-! ## A101086.P530159050580138393

`eq[1, A001222(A100776(n))]`
-/

namespace A101086.P530159050580138393
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A100776 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A101086.P530159050580138393

/-! ## A101086.P10951652855822014659

`lt[A017029(n), A020639(A100776(n))]`
-/

namespace A101086.P10951652855822014659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017029 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A100776 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A101086.P10951652855822014659

/-! ## A101086.P17372312031579622646

`lt[A002144(n+1), A020639(A100776(n))]`
-/

namespace A101086.P17372312031579622646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A100776 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A101086.P17372312031579622646

/-! ## A101086.P5336791024489638498

`lt[A005384(n+1), A020639(A100776(n))]`
-/

namespace A101086.P5336791024489638498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005384 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A100776 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A101086.P5336791024489638498

/-! ## A101086.P3070436432116387193

`lt[A023217(n+1), A020639(A100776(n))]`
-/

namespace A101086.P3070436432116387193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023217 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A100776 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A101086.P3070436432116387193

/-!
# A101087: Indices of prime values of A077020 (also A001607).

The programs for A101087, there is no canonical definition to state claims against.
-/

/-! ## A101087.P5370195141792009076

`eq[1, ∑{e}[A001607(n), #]]`
-/

namespace A101087.P5370195141792009076
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001607 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n).natAbs, Nat.factorization (f3 n).natAbs p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A101087.P5370195141792009076

/-! ## A101087.P11512170145050436346

`eq[1, ∑{e}[A107920(n), #]]`
-/

namespace A101087.P11512170145050436346
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107920 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n).natAbs, Nat.factorization (f3 n).natAbs p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A101087.P11512170145050436346

/-! ## A101087.P12017995354020888479

`eq[2, ∑{e}[A078020(n+1), #]]`
-/

namespace A101087.P12017995354020888479
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078020 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n).natAbs, Nat.factorization (f3 n).natAbs p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A101087.P12017995354020888479

/-! ## A101087.P16841778604969426004

`eq[1, A001222(A077020(n+3))]+1`
-/

namespace A101087.P16841778604969426004
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A077020 (n + 3)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A101087.P16841778604969426004

/-!
# A101088: Prime subsequence of A077020 (also A001607).

The programs for A101088, there is no canonical definition to state claims against.
-/

/-! ## A101088.P11019990567275296979

`abs(A001607(A101087(n+1)))`
-/

namespace A101088.P11019990567275296979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001607 (A101087 (n + 1)).toNat|

end

end A101088.P11019990567275296979

/-! ## A101088.P15334420320846951279

`A077020(A101087(n+1)+2)`
-/

namespace A101088.P15334420320846951279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077020 (A101087 (n + 1) + 2).toNat

end

end A101088.P15334420320846951279

/-! ## A101088.P15596330111845477758

`lcm(A001607(A101087(n+1)), A020985(n))`
-/

namespace A101088.P15596330111845477758
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A001607 (A101087 (n + 1)).toNat) (A020985 n)

end

end A101088.P15596330111845477758

/-! ## A101088.P13923513620133147531

`lcm(A033999(n), A107920(A101087(n+1)))`
-/

namespace A101088.P13923513620133147531
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A107920 (A101087 (n + 1)).toNat)

end

end A101088.P13923513620133147531

/-! ## A101088.P10728568220145117147

`gcd(A107920(A101087(n+1)), A279872(2*n+1))`
-/

namespace A101088.P10728568220145117147
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A107920 (A101087 (n + 1)).toNat) (A279872 (2 * n + 1))

end

end A101088.P10728568220145117147

/-!
# A101089: Second partial sums of fourth powers (A000583).

The programs for A101089, the canonical program `A101089.P3030192742958660166` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A101089 has offset 1).

The definition of A101089 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A101089.P14383319424189180976

`ogf((1+11x+11x^2+x^3)/(1-7x+21x^2-35x^3+35x^4-21x^5+7x^6-x^7))`
-/

namespace A101089.P14383319424189180976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 11, 11, 1] [1, -7, 21, -35, 35, -21, 7, -1] n

end

end A101089.P14383319424189180976

namespace A101089

/-- `ogf((1+11x+11x^2+x^3)/(1-7x+21x^2-35x^3+35x^4-21x^5+7x^6-x^7))` -/
def P14383319424189180976.Spec : Prop :=
  ∀ n, P14383319424189180976.a n = A101089 (n + 1)

end A101089

/-! ## A101089.P3030192742958660166

`2*a(n-1)-a(n-2)+(n+1)^4` with `a(0)=1, a(1)=18`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A101089

/-- `2*a(n-1)-a(n-2)+(n+1)^4` -/
def P3030192742958660166.Spec : Prop :=
  ∀ n, P3030192742958660166.a n = A101089 (n + 1)

theorem P3030192742958660166.correct : P3030192742958660166.Spec := by
  intro n
  simp only [A101089, Nat.add_sub_cancel]

end A101089

/-! ## A101089.P7596769179964775021

`(n+2)²*(2*(n+2)^4-5*(n+2)²+3)/60`
-/

namespace A101089.P7596769179964775021
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n + 2) ^ 2 : ℤ) * ((2 * (n + 2) ^ 4 : ℤ) - (5 * (n + 2) ^ 2 : ℤ) + 3) : ℚ) / 60

end

end A101089.P7596769179964775021

namespace A101089

/-- `(n+2)²*(2*(n+2)^4-5*(n+2)²+3)/60` -/
def P7596769179964775021.Spec : Prop :=
  ∀ n, P7596769179964775021.a n = (A101089 (n + 1) : ℚ)

theorem P7596769179964775021.correct : P7596769179964775021.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A101089, Nat.add_sub_cancel, A101089.P7596769179964775021.a, A101089.P3030192742958660166.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A101089, Nat.add_sub_cancel, A101089.P7596769179964775021.a, A101089.P3030192742958660166.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A101089

/-! ## A101089.P1306709230801885369

`∑[∑[record[(1-n)^4]]]`
-/

namespace A101089.P1306709230801885369
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (n : ℤ)) ^ 4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101089.P1306709230801885369

namespace A101089

/-- `∑[∑[record[(1-n)^4]]]` -/
def P1306709230801885369.Spec : Prop :=
  ∀ n, P1306709230801885369.a n = A101089 (n + 1)

end A101089

/-! ## A101089.P2774779493888779208

`or(∑[∑[(n+1)²²]], char[4])`
-/

namespace A101089.P2774779493888779208
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2) ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor (∑ j ∈ Finset.range (n + 1), f1 j) (if ∃ j, f3 j = n then 1 else 0)

end

end A101089.P2774779493888779208

namespace A101089

/-- `or(∑[∑[(n+1)²²]], char[4])` -/
def P2774779493888779208.Spec : Prop :=
  ∀ n, (P2774779493888779208.a n : ℤ) = A101089 (n + 1)

end A101089

/-! ## A101089.P10137666575011806903

`∑[∑[∑[a(n-1)-2]²]]` with `a(0)=-1`
-/

namespace A101089.P10137666575011806903
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.rec [-1] fun n f3 =>
  f3 (n - 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f3 j) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101089.P10137666575011806903

namespace A101089

/-- `∑[∑[∑[a(n-1)-2]²]]` -/
def P10137666575011806903.Spec : Prop :=
  ∀ n, P10137666575011806903.a n = A101089 (n + 1)

end A101089

/-! ## A101089.P1545586424181918337

`∑[∑[(n+1)²²]]+C(2, n+3)`
-/

namespace A101089.P1545586424181918337
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2) ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + Nat.choose 2 (n + 3)

end

end A101089.P1545586424181918337

namespace A101089

/-- `∑[∑[(n+1)²²]]+C(2, n+3)` -/
def P1545586424181918337.Spec : Prop :=
  ∀ n, (P1545586424181918337.a n : ℤ) = A101089 (n + 1)

end A101089

/-! ## A101089.P2391296401232677523

`∑[∑[(n+1)²²]]+and(1, 2*n)`
-/

namespace A101089.P2391296401232677523
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2) ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + Nat.land 1 (2 * n)

end

end A101089.P2391296401232677523

namespace A101089

/-- `∑[∑[(n+1)²²]]+and(1, 2*n)` -/
def P2391296401232677523.Spec : Prop :=
  ∀ n, (P2391296401232677523.a n : ℤ) = A101089 (n + 1)

end A101089

/-! ## A101089.P18231961618849876150

`gcd(n, n+1)*∑[∑[(n+1)²²]]`
-/

namespace A101089.P18231961618849876150
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2) ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd n (n + 1) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A101089.P18231961618849876150

namespace A101089

/-- `gcd(n, n+1)*∑[∑[(n+1)²²]]` -/
def P18231961618849876150.Spec : Prop :=
  ∀ n, (P18231961618849876150.a n : ℤ) = A101089 (n + 1)

end A101089

/-! ## A101089.P15412078793821479445

`∑[∑[(n+1)²²]]/gcd(n+2, n+3)`
-/

namespace A101089.P15412078793821479445
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2) ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / (Nat.gcd (n + 2) (n + 3) : ℚ)

end

end A101089.P15412078793821479445

namespace A101089

/-- `∑[∑[(n+1)²²]]/gcd(n+2, n+3)` -/
def P15412078793821479445.Spec : Prop :=
  ∀ n, P15412078793821479445.a n = (A101089 (n + 1) : ℚ)

end A101089

/-! ## A101089.P17820285700987672942

`A085464(n+1)-a(n-1)` with `a(0)=1`
-/

namespace A101089.P17820285700987672942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A085464 (n + 1) - a (n - 1)

end

end A101089.P17820285700987672942

namespace A101089

/-- `A085464(n+1)-a(n-1)` -/
def P17820285700987672942.Spec : Prop :=
  ∀ n, P17820285700987672942.a n = A101089 (n + 1)

end A101089

/-! ## A101089.P15579934049421961493

`gcd(∑[∑[(n+1)²²]], A000038(n))`
-/

namespace A101089.P15579934049421961493
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2) ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (A000038 n)

end

end A101089.P15579934049421961493

namespace A101089

/-- `gcd(∑[∑[(n+1)²²]], A000038(n))` -/
def P15579934049421961493.Spec : Prop :=
  ∀ n, (P15579934049421961493.a n : ℤ) = A101089 (n + 1)

end A101089

/-! ## A101089.P3331319743747112362

`lcm(∑[∑[(n+1)²²]], A062557(n))`
-/

namespace A101089.P3331319743747112362
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2) ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (A062557 n)

end

end A101089.P3331319743747112362

namespace A101089

/-- `lcm(∑[∑[(n+1)²²]], A062557(n))` -/
def P3331319743747112362.Spec : Prop :=
  ∀ n, (P3331319743747112362.a n : ℤ) = A101089 (n + 1)

end A101089

/-! ## A101089.P7826084955446822397

`∑[A000538(n+1)]`
-/

namespace A101089.P7826084955446822397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000538 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101089.P7826084955446822397

namespace A101089

/-- `∑[A000538(n+1)]` -/
def P7826084955446822397.Spec : Prop :=
  ∀ n, P7826084955446822397.a n = A101089 (n + 1)

end A101089

/-! ## A101089.P4537115928397408572

`∑[∑[A000583(n+1)]]`
-/

namespace A101089.P4537115928397408572
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000583 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101089.P4537115928397408572

namespace A101089

/-- `∑[∑[A000583(n+1)]]` -/
def P4537115928397408572.Spec : Prop :=
  ∀ n, P4537115928397408572.a n = A101089 (n + 1)

end A101089

/-! ## A101089.P14951522013358783390

`∑[A267691(n+2)]-(n+1)`
-/

namespace A101089.P14951522013358783390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267691 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n + 1 : ℤ)

end

end A101089.P14951522013358783390

namespace A101089

/-- `∑[A267691(n+2)]-(n+1)` -/
def P14951522013358783390.Spec : Prop :=
  ∀ n, P14951522013358783390.a n = A101089 (n + 1)

end A101089

/-! ## A101089.P11078005022467093051

`∑[∑[A212764(2*n+1)]]`
-/

namespace A101089.P11078005022467093051
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212764 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101089.P11078005022467093051

namespace A101089

/-- `∑[∑[A212764(2*n+1)]]` -/
def P11078005022467093051.Spec : Prop :=
  ∀ n, P11078005022467093051.a n = A101089 (n + 1)

end A101089

/-! ## A101089.P11215409737951869561

`∑[∑[A212765(2*n+1)]]`
-/

namespace A101089.P11215409737951869561
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212765 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101089.P11215409737951869561

namespace A101089

/-- `∑[∑[A212765(2*n+1)]]` -/
def P11215409737951869561.Spec : Prop :=
  ∀ n, P11215409737951869561.a n = A101089 (n + 1)

end A101089

/-! ## A101089.P8024667544861101419

`∑[∑[∩[(n+1)², n²²]]]`
-/

namespace A101089.P8024667544861101419
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n ^ 2) ^ 2

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f3 j = x) ∧ ∃ j, f4 j = x) n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101089.P8024667544861101419

namespace A101089

/-- `∑[∑[∩[(n+1)², n²²]]]` -/
def P8024667544861101419.Spec : Prop :=
  ∀ n, (P8024667544861101419.a n : ℤ) = A101089 (n + 1)

end A101089

/-! ## A101089.P10530852650225685415

`∑[∑[ceil(∑[tanh(n+1)])²²]]`
-/

namespace A101089.P10530852650225685415
noncomputable section

def f3 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.tanh (n + 1 : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (⌈∑ j ∈ Finset.range (n + 1), f3 j⌉ ^ 2) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101089.P10530852650225685415

namespace A101089

/-- `∑[∑[ceil(∑[tanh(n+1)])²²]]` -/
def P10530852650225685415.Spec : Prop :=
  ∀ n, P10530852650225685415.a n = A101089 (n + 1)

end A101089

/-!
# A101090: Third partial sums of fourth powers (A000583).

The programs for A101090, the canonical program `A101090.P13750631903223068928` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A101090 has offset 1).

The definition of A101090 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A101090.P13750631903223068928

`ogf((1+11x+11x^2+x^3)/(1-8x+28x^2-56x^3+70x^4-56x^5+28x^6-8x^7+x^8))`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A101090

/-- `ogf((1+11x+11x^2+x^3)/(1-8x+28x^2-56x^3+70x^4-56x^5+28x^6-8x^7+x^8))` -/
def P13750631903223068928.Spec : Prop :=
  ∀ n, P13750631903223068928.a n = A101090 (n + 1)

theorem P13750631903223068928.correct : P13750631903223068928.Spec := by
  intro n
  simp only [A101090, Nat.add_sub_cancel]

end A101090

/-! ## A101090.P16945181261939352223

`∑[∑[∑[(1+n)^4]]]`
-/

namespace A101090.P16945181261939352223
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (1 + n) ^ 4

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101090.P16945181261939352223

namespace A101090

/-- `∑[∑[∑[(1+n)^4]]]` -/
def P16945181261939352223.Spec : Prop :=
  ∀ n, (P16945181261939352223.a n : ℤ) = A101090 (n + 1)

end A101090

/-! ## A101090.P12520145693835080482

`∑[∑[(n+1)²²]]+a(n-1)` with `a(0)=1`
-/

namespace A101090.P12520145693835080482
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2) ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + a (n - 1)

end

end A101090.P12520145693835080482

namespace A101090

/-- `∑[∑[(n+1)²²]]+a(n-1)` -/
def P12520145693835080482.Spec : Prop :=
  ∀ n, (P12520145693835080482.a n : ℤ) = A101090 (n + 1)

end A101090

/-! ## A101090.P4871882610138553434

`floor(∑[∑[∑[∑[a(n-1)-2]²]]])` with `a(0)=-1`

`floor` is left out, it is the identity on integers.
-/

namespace A101090.P4871882610138553434
noncomputable section

def f4 : ℕ → ℤ := SequenceMachineLib.rec [-1] fun n f4 =>
  f4 (n - 1) - 2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f4 j) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101090.P4871882610138553434

namespace A101090

/-- `floor(∑[∑[∑[∑[a(n-1)-2]²]]])` -/
def P4871882610138553434.Spec : Prop :=
  ∀ n, P4871882610138553434.a n = A101090 (n + 1)

end A101090

/-! ## A101090.P14803612227177741667

`gcd(n, n+1)*∑[∑[∑[(n+1)²²]]]`
-/

namespace A101090.P14803612227177741667
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd n (n + 1) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A101090.P14803612227177741667

namespace A101090

/-- `gcd(n, n+1)*∑[∑[∑[(n+1)²²]]]` -/
def P14803612227177741667.Spec : Prop :=
  ∀ n, (P14803612227177741667.a n : ℤ) = A101090 (n + 1)

end A101090

/-! ## A101090.P15335476060676769531

`or(C(2, n), ∑[A101089(n+1)])`
-/

namespace A101090.P15335476060676769531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101089 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (Nat.choose 2 n : ℤ) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A101090.P15335476060676769531

namespace A101090

/-- `or(C(2, n), ∑[A101089(n+1)])` -/
def P15335476060676769531.Spec : Prop :=
  ∀ n, P15335476060676769531.a n = A101090 (n + 1)

end A101090

/-! ## A101090.P8658258248696061958

`gcd(∑[A101089(n+1)], A000038(n))`
-/

namespace A101090.P8658258248696061958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101089 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (∑ j ∈ Finset.range (n + 1), f1 j) (A000038 n)

end

end A101090.P8658258248696061958

namespace A101090

/-- `gcd(∑[A101089(n+1)], A000038(n))` -/
def P8658258248696061958.Spec : Prop :=
  ∀ n, (P8658258248696061958.a n : ℤ) = A101090 (n + 1)

end A101090

/-! ## A101090.P6150921145659210861

`or(∑[A101089(n+1)], A000007(n))`
-/

namespace A101090.P6150921145659210861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101089 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (∑ j ∈ Finset.range (n + 1), f1 j) (A000007 n)

end

end A101090.P6150921145659210861

namespace A101090

/-- `or(∑[A101089(n+1)], A000007(n))` -/
def P6150921145659210861.Spec : Prop :=
  ∀ n, P6150921145659210861.a n = A101090 (n + 1)

end A101090

/-! ## A101090.P10678626177231143966

`A101091(n+2)-(A101091(n+1)+A101089(n+2))`
-/

namespace A101090.P10678626177231143966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101091 (n + 2) - (A101091 (n + 1) + A101089 (n + 2))

end

end A101090.P10678626177231143966

namespace A101090

/-- `A101091(n+2)-(A101091(n+1)+A101089(n+2))` -/
def P10678626177231143966.Spec : Prop :=
  ∀ n, P10678626177231143966.a n = A101090 (n + 1)

end A101090

/-! ## A101090.P2485588444843080418

`A089798(2*n+1)+∑[∑[∑[(n+1)²²]]]`
-/

namespace A101090.P2485588444843080418
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089798 (2 * n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A101090.P2485588444843080418

namespace A101090

/-- `A089798(2*n+1)+∑[∑[∑[(n+1)²²]]]` -/
def P2485588444843080418.Spec : Prop :=
  ∀ n, P2485588444843080418.a n = A101090 (n + 1)

end A101090

/-!
# A101091: Fourth partial sums of fourth powers (A000583).

The programs for A101091, the canonical program `A101091.P6377880708237188701` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A101091 has offset 1).

The definition of A101091 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A101091.P6377880708237188701

`∑[∑[∑[∑[(1+n)^4]]]]`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A101091

/-- `∑[∑[∑[∑[(1+n)^4]]]]` -/
def P6377880708237188701.Spec : Prop :=
  ∀ n, (P6377880708237188701.a n : ℤ) = A101091 (n + 1)

theorem P6377880708237188701.correct : P6377880708237188701.Spec := by
  intro n
  simp only [A101091, Nat.add_sub_cancel]

end A101091

/-! ## A101091.P16375990840909885323

`∑[∑[∑[(n+1)²²]]]+a(n-1)` with `a(0)=1`
-/

namespace A101091.P16375990840909885323
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + a (n - 1)

end

end A101091.P16375990840909885323

namespace A101091

/-- `∑[∑[∑[(n+1)²²]]]+a(n-1)` -/
def P16375990840909885323.Spec : Prop :=
  ∀ n, (P16375990840909885323.a n : ℤ) = A101091 (n + 1)

end A101091

/-! ## A101091.P4569519258410610517

`and(∑[A101090(n+1)], -1)`
-/

namespace A101091.P4569519258410610517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101090 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (∑ j ∈ Finset.range (n + 1), f1 j) (-1)

end

end A101091.P4569519258410610517

namespace A101091

/-- `and(∑[A101090(n+1)], -1)` -/
def P4569519258410610517.Spec : Prop :=
  ∀ n, P4569519258410610517.a n = A101091 (n + 1)

end A101091

/-! ## A101091.P1479642798074803694

`or(∑[A101090(1+n)], char[2])`
-/

namespace A101091.P1479642798074803694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101090 (1 + n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (∑ j ∈ Finset.range (n + 1), f1 j) ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A101091.P1479642798074803694

namespace A101091

/-- `or(∑[A101090(1+n)], char[2])` -/
def P1479642798074803694.Spec : Prop :=
  ∀ n, P1479642798074803694.a n = A101091 (n + 1)

end A101091

/-! ## A101091.P6121641051325970568

`gcd(∑[A101090(n+1)], A000038(n))`
-/

namespace A101091.P6121641051325970568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101090 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (∑ j ∈ Finset.range (n + 1), f1 j) (A000038 n)

end

end A101091.P6121641051325970568

namespace A101091

/-- `gcd(∑[A101090(n+1)], A000038(n))` -/
def P6121641051325970568.Spec : Prop :=
  ∀ n, (P6121641051325970568.a n : ℤ) = A101091 (n + 1)

end A101091

/-! ## A101091.P12713303168648940308

`lcm(∑[A101090(n+1)], A000034(n))`
-/

namespace A101091.P12713303168648940308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101090 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (∑ j ∈ Finset.range (n + 1), f1 j) (A000034 n)

end

end A101091.P12713303168648940308

namespace A101091

/-- `lcm(∑[A101090(n+1)], A000034(n))` -/
def P12713303168648940308.Spec : Prop :=
  ∀ n, (P12713303168648940308.a n : ℤ) = A101091 (n + 1)

end A101091

/-! ## A101091.P15864877462672042507

`∑[A101090(n+1)]%A175170(n+1)`
-/

namespace A101091.P15864877462672042507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101090 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A175170 (n + 1))

end

end A101091.P15864877462672042507

namespace A101091

/-- `∑[A101090(n+1)]%A175170(n+1)` -/
def P15864877462672042507.Spec : Prop :=
  ∀ n, P15864877462672042507.a n = A101091 (n + 1)

end A101091

/-! ## A101091.P12705541586311730888

`∑[A101090(n+1)]*A054977(n+1)`
-/

namespace A101091.P12705541586311730888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101090 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A054977 (n + 1)

end

end A101091.P12705541586311730888

namespace A101091

/-- `∑[A101090(n+1)]*A054977(n+1)` -/
def P12705541586311730888.Spec : Prop :=
  ∀ n, P12705541586311730888.a n = A101091 (n + 1)

end A101091

/-! ## A101091.P16348818906746552008

`A254681(n+2)-(A254681(n+1)+A101090(n+2))`
-/

namespace A101091.P16348818906746552008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254681 (n + 2) - (A254681 (n + 1) + A101090 (n + 2))

end

end A101091.P16348818906746552008

namespace A101091

/-- `A254681(n+2)-(A254681(n+1)+A101090(n+2))` -/
def P16348818906746552008.Spec : Prop :=
  ∀ n, P16348818906746552008.a n = A101091 (n + 1)

end A101091

/-! ## A101091.P207015411259497342

`A001222(A002146(n))*∑[A101090(n+1)]`
-/

namespace A101091.P207015411259497342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101090 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A002146 n).toNat * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A101091.P207015411259497342

namespace A101091

/-- `A001222(A002146(n))*∑[A101090(n+1)]` -/
def P207015411259497342.Spec : Prop :=
  ∀ n, P207015411259497342.a n = A101091 (n + 1)

end A101091

/-!
# A101092: Second partial sums of fifth powers (A000584).

The programs for A101092, the canonical program `A101092.P11095658132057868489` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A101092 has offset 1).

The definition of A101092 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A101092.P1994826374473001307

`ogf((1+26x+66x^2+26x^3+x^4)/(1-8x+28x^2-56x^3+70x^4-56x^5+28x^6-8x^7+x^8))`
-/

namespace A101092.P1994826374473001307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 26, 66, 26, 1] [1, -8, 28, -56, 70, -56, 28, -8, 1] n

end

end A101092.P1994826374473001307

namespace A101092

/-- `ogf((1+26x+66x^2+26x^3+x^4)/(1-8x+28x^2-56x^3+70x^4-56x^5+28x^6-8x^7+x^8))` -/
def P1994826374473001307.Spec : Prop :=
  ∀ n, P1994826374473001307.a n = A101092 (n + 1)

end A101092

/-! ## A101092.P11095658132057868489

`2*a(n-1)-a(n-2)+(n+1)^5` with `a(0)=1, a(1)=34`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A101092

/-- `2*a(n-1)-a(n-2)+(n+1)^5` -/
def P11095658132057868489.Spec : Prop :=
  ∀ n, P11095658132057868489.a n = A101092 (n + 1)

theorem P11095658132057868489.correct : P11095658132057868489.Spec := by
  intro n
  simp only [A101092, Nat.add_sub_cancel]

end A101092

/-! ## A101092.P14789826796316270721

`(n+1)*(n+2)*(n+3)*((n+1)*(n+3)-1)*(2*(n+1)*(2+n+1)+1)/84`
-/

namespace A101092.P14789826796316270721
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n + 1) * (n + 2) * (n + 3) : ℤ) * (((n + 1) * (n + 3) : ℤ) - 1) * (2 * (n + 1) * (2 + (n + 1)) + 1 : ℤ) : ℚ) / 84

end

end A101092.P14789826796316270721

namespace A101092

/-- `(n+1)*(n+2)*(n+3)*((n+1)*(n+3)-1)*(2*(n+1)*(2+n+1)+1)/84` -/
def P14789826796316270721.Spec : Prop :=
  ∀ n, P14789826796316270721.a n = (A101092 (n + 1) : ℚ)

theorem P14789826796316270721.correct : P14789826796316270721.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A101092, Nat.add_sub_cancel, A101092.P14789826796316270721.a, A101092.P11095658132057868489.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A101092, Nat.add_sub_cancel, A101092.P14789826796316270721.a, A101092.P11095658132057868489.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A101092

/-! ## A101092.P7404736077542969496

`∑[(n+1)^5+a(n-1)]` with `a(0)=1`
-/

namespace A101092.P7404736077542969496
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  (n + 1) ^ 5 + f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101092.P7404736077542969496

namespace A101092

/-- `∑[(n+1)^5+a(n-1)]` -/
def P7404736077542969496.Spec : Prop :=
  ∀ n, (P7404736077542969496.a n : ℤ) = A101092 (n + 1)

end A101092

/-! ## A101092.P5724794503609916867

`∑[(n+1)*(n+1)²²]+a(n-1)` with `a(0)=1`
-/

namespace A101092.P5724794503609916867
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * ((n + 1) ^ 2) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + a (n - 1)

end

end A101092.P5724794503609916867

namespace A101092

/-- `∑[(n+1)*(n+1)²²]+a(n-1)` -/
def P5724794503609916867.Spec : Prop :=
  ∀ n, (P5724794503609916867.a n : ℤ) = A101092 (n + 1)

end A101092

/-! ## A101092.P5090024431557551495

`∑[n+1]+∑[∑[A258807(n+1)]]`
-/

namespace A101092.P5090024431557551495
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258807 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + ∑ j ∈ Finset.range (n + 1), f2 j

end

end A101092.P5090024431557551495

namespace A101092

/-- `∑[n+1]+∑[∑[A258807(n+1)]]` -/
def P5090024431557551495.Spec : Prop :=
  ∀ n, P5090024431557551495.a n = A101092 (n + 1)

end A101092

/-! ## A101092.P3471411578057945299

`∑[2*A165187(n+1)]-A001249(n)`
-/

namespace A101092.P3471411578057945299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A165187 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A001249 n

end

end A101092.P3471411578057945299

namespace A101092

/-- `∑[2*A165187(n+1)]-A001249(n)` -/
def P3471411578057945299.Spec : Prop :=
  ∀ n, P3471411578057945299.a n = A101092 (n + 1)

end A101092

/-! ## A101092.P1623053788930180379

`∑[A000539(n+1)]`
-/

namespace A101092.P1623053788930180379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000539 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101092.P1623053788930180379

namespace A101092

/-- `∑[A000539(n+1)]` -/
def P1623053788930180379.Spec : Prop :=
  ∀ n, P1623053788930180379.a n = A101092 (n + 1)

end A101092

/-! ## A101092.P5071862085960859220

`∑[∑[A000584(n+1)]]`
-/

namespace A101092.P5071862085960859220
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000584 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101092.P5071862085960859220

namespace A101092

/-- `∑[∑[A000584(n+1)]]` -/
def P5071862085960859220.Spec : Prop :=
  ∀ n, P5071862085960859220.a n = A101092 (n + 1)

end A101092

/-! ## A101092.P1909515033350151655

`∑[∑[1-A024003(n+1)]]`
-/

namespace A101092.P1909515033350151655
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A024003 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101092.P1909515033350151655

namespace A101092

/-- `∑[∑[1-A024003(n+1)]]` -/
def P1909515033350151655.Spec : Prop :=
  ∀ n, P1909515033350151655.a n = A101092 (n + 1)

end A101092

/-!
# A101093: Second partial sums of sixth powers (A001014).

The programs for A101093, the canonical program `A101093.P9900929333822465227` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A101093 has offset 1).

The definition of A101093 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A101093.P9900929333822465227

`2*a(n-1)-a(n-2)+(n+1)^6` with `a(0)=1, a(1)=66`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A101093

/-- `2*a(n-1)-a(n-2)+(n+1)^6` -/
def P9900929333822465227.Spec : Prop :=
  ∀ n, P9900929333822465227.a n = A101093 (n + 1)

theorem P9900929333822465227.correct : P9900929333822465227.Spec := by
  intro n
  simp only [A101093, Nat.add_sub_cancel]

end A101093

/-! ## A101093.P9153805078368655776

`∑[∑[(n+1)^6]]`
-/

namespace A101093.P9153805078368655776
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 6

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101093.P9153805078368655776

namespace A101093

/-- `∑[∑[(n+1)^6]]` -/
def P9153805078368655776.Spec : Prop :=
  ∀ n, (P9153805078368655776.a n : ℤ) = A101093 (n + 1)

end A101093

/-! ## A101093.P12791517386174392456

`∑[((n+1)*(n+1)²)²]+a(n-1)` with `a(0)=1`
-/

namespace A101093.P12791517386174392456
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((n + 1) * (n + 1) ^ 2) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + a (n - 1)

end

end A101093.P12791517386174392456

namespace A101093

/-- `∑[((n+1)*(n+1)²)²]+a(n-1)` -/
def P12791517386174392456.Spec : Prop :=
  ∀ n, (P12791517386174392456.a n : ℤ) = A101093 (n + 1)

end A101093

/-! ## A101093.P4580454799900104495

`∑[∑[A106318(n+1)]]/2`
-/

namespace A101093.P4580454799900104495
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106318 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A101093.P4580454799900104495

namespace A101093

/-- `∑[∑[A106318(n+1)]]/2` -/
def P4580454799900104495.Spec : Prop :=
  ∀ n, P4580454799900104495.a n = (A101093 (n + 1) : ℚ)

end A101093

/-! ## A101093.P1179474032333553864

`∑[A259109(n+1)]/2`
-/

namespace A101093.P1179474032333553864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259109 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A101093.P1179474032333553864

namespace A101093

/-- `∑[A259109(n+1)]/2` -/
def P1179474032333553864.Spec : Prop :=
  ∀ n, P1179474032333553864.a n = (A101093 (n + 1) : ℚ)

end A101093

/-! ## A101093.P7312881182919422003

`abs(1-∑[A000540(n+1)])+1`
-/

namespace A101093.P7312881182919422003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000540 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - ∑ j ∈ Finset.range (n + 1), f1 j| + 1

end

end A101093.P7312881182919422003

namespace A101093

/-- `abs(1-∑[A000540(n+1)])+1` -/
def P7312881182919422003.Spec : Prop :=
  ∀ n, P7312881182919422003.a n = A101093 (n + 1)

end A101093

/-! ## A101093.P15815196199156583805

`∑[∑[A002604(n+1)]]-∑[n+1]`
-/

namespace A101093.P15815196199156583805
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002604 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ((∑ j ∈ Finset.range (n + 1), f3 j : ℕ) : ℤ)

end

end A101093.P15815196199156583805

namespace A101093

/-- `∑[∑[A002604(n+1)]]-∑[n+1]` -/
def P15815196199156583805.Spec : Prop :=
  ∀ n, P15815196199156583805.a n = A101093 (n + 1)

end A101093

/-! ## A101093.P8782939638763701142

`A000540(n+1)+∑[A000540(n)]`
-/

namespace A101093.P8782939638763701142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000540 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000540 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101093.P8782939638763701142

namespace A101093

/-- `A000540(n+1)+∑[A000540(n)]` -/
def P8782939638763701142.Spec : Prop :=
  ∀ n, P8782939638763701142.a n = A101093 (n + 1)

end A101093

/-! ## A101093.P8101806183341630670

`∑[∑[A001014(n+1)]]%A022453(n+2)`
-/

namespace A101093.P8101806183341630670
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001014 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A022453 (n + 2))

end

end A101093.P8101806183341630670

namespace A101093

/-- `∑[∑[A001014(n+1)]]%A022453(n+2)` -/
def P8101806183341630670.Spec : Prop :=
  ∀ n, P8101806183341630670.a n = A101093 (n + 1)

end A101093

/-!
# A101094: a(n) = n*(n+1)*(n+2)*(n+3)*(1+3*n+n^2)/120.

The programs for A101094, the canonical program `A101094.P7729936501534296794` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A101094 has offset 1).

The definition of A101094 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A101094.anchor (n : ℕ) : (A101094 (n + 1) : ℚ) = ((n + 1) * (n + 2) * (n + 3) * (n + 4) * (1 + 3 * (n + 1) + (n + 1) ^ 2) : ℚ) / 120` in `Proof.A101.A101094`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A101094.P14961049775193504229

`ogf((1+4x+x^2)/(1-7x+21x^2-35x^3+35x^4-21x^5+7x^6-x^7))`
-/

namespace A101094.P14961049775193504229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 4, 1] [1, -7, 21, -35, 35, -21, 7, -1] n

end

end A101094.P14961049775193504229

namespace A101094

/-- `ogf((1+4x+x^2)/(1-7x+21x^2-35x^3+35x^4-21x^5+7x^6-x^7))` -/
def P14961049775193504229.Spec : Prop :=
  ∀ n, P14961049775193504229.a n = A101094 (n + 1)

end A101094

/-! ## A101094.P7729936501534296794

`(n+1)*(n+2)*(n+3)*(n+4)*(1+3*(n+1)+(n+1)²)/120`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A101094

/-- `(n+1)*(n+2)*(n+3)*(n+4)*(1+3*(n+1)+(n+1)²)/120` -/
def P7729936501534296794.Spec : Prop :=
  ∀ n, P7729936501534296794.a n = (A101094 (n + 1) : ℚ)

end A101094

/-! ## A101094.P10694134753568554012

`∑[∑[C(n+2, 2)²]]`
-/

namespace A101094.P10694134753568554012
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 2) 2 ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101094.P10694134753568554012

namespace A101094

/-- `∑[∑[C(n+2, 2)²]]` -/
def P10694134753568554012.Spec : Prop :=
  ∀ n, (P10694134753568554012.a n : ℤ) = A101094 (n + 1)

end A101094

/-! ## A101094.P14580560008468657991

`∑[∑[∑[a(n-1)+1]²]]` with `a(0)=1`
-/

namespace A101094.P14580560008468657991
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f3 =>
  f3 (n - 1) + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f3 j) ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101094.P14580560008468657991

namespace A101094

/-- `∑[∑[∑[a(n-1)+1]²]]` -/
def P14580560008468657991.Spec : Prop :=
  ∀ n, (P14580560008468657991.a n : ℤ) = A101094 (n + 1)

end A101094

/-! ## A101094.P10905688590011642941

`∑[∑[(n+1)^3]]+a(n-1)` with `a(0)=1`
-/

namespace A101094.P10905688590011642941
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 3

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + a (n - 1)

end

end A101094.P10905688590011642941

namespace A101094

/-- `∑[∑[(n+1)^3]]+a(n-1)` -/
def P10905688590011642941.Spec : Prop :=
  ∀ n, (P10905688590011642941.a n : ℤ) = A101094 (n + 1)

end A101094

/-! ## A101094.P5925516120480982237

`∑[A086755(n)/2]`
-/

namespace A101094.P5925516120480982237
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A086755 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101094.P5925516120480982237

namespace A101094

/-- `∑[A086755(n)/2]` -/
def P5925516120480982237.Spec : Prop :=
  ∀ n, P5925516120480982237.a n = (A101094 (n + 1) : ℚ)

end A101094

/-! ## A101094.P2665398382241759026

`2*A051923(n)-A005585(n+1)`
-/

namespace A101094.P2665398382241759026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A051923 n - A005585 (n + 1)

end

end A101094.P2665398382241759026

namespace A101094

/-- `2*A051923(n)-A005585(n+1)` -/
def P2665398382241759026.Spec : Prop :=
  ∀ n, P2665398382241759026.a n = A101094 (n + 1)

end A101094

/-! ## A101094.P721050708084700645

`A027810(n)-A277935(n+1)/2`
-/

namespace A101094.P721050708084700645
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027810 n : ℚ) - (A277935 (n + 1) : ℚ) / 2

end

end A101094.P721050708084700645

namespace A101094

/-- `A027810(n)-A277935(n+1)/2` -/
def P721050708084700645.Spec : Prop :=
  ∀ n, P721050708084700645.a n = (A101094 (n + 1) : ℚ)

end A101094

/-! ## A101094.P1077802296624979763

`A027765(n+4)-A027764(n+3)`
-/

namespace A101094.P1077802296624979763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027765 (n + 4) - A027764 (n + 3)

end

end A101094.P1077802296624979763

namespace A101094

/-- `A027765(n+4)-A027764(n+3)` -/
def P1077802296624979763.Spec : Prop :=
  ∀ n, P1077802296624979763.a n = A101094 (n + 1)

end A101094

/-! ## A101094.P10739785446989127324

`A256860(n+1)+2*A277935(n+1)`
-/

namespace A101094.P10739785446989127324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256860 (n + 1) + 2 * A277935 (n + 1)

end

end A101094.P10739785446989127324

namespace A101094

/-- `A256860(n+1)+2*A277935(n+1)` -/
def P10739785446989127324.Spec : Prop :=
  ∀ n, P10739785446989127324.a n = A101094 (n + 1)

end A101094

/-! ## A101094.P9497115681793044554

`A213563(n+1)+A277935(n+1)/2`
-/

namespace A101094.P9497115681793044554
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A213563 (n + 1) : ℚ) + (A277935 (n + 1) : ℚ) / 2

end

end A101094.P9497115681793044554

namespace A101094

/-- `A213563(n+1)+A277935(n+1)/2` -/
def P9497115681793044554.Spec : Prop :=
  ∀ n, P9497115681793044554.a n = (A101094 (n + 1) : ℚ)

end A101094

/-! ## A101094.P9732677519395574596

`∑[A024166(n+1)]`
-/

namespace A101094.P9732677519395574596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024166 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101094.P9732677519395574596

namespace A101094

/-- `∑[A024166(n+1)]` -/
def P9732677519395574596.Spec : Prop :=
  ∀ n, P9732677519395574596.a n = A101094 (n + 1)

end A101094

/-! ## A101094.P3155827311813137483

`∑[∑[A000537(n+1)]]`
-/

namespace A101094.P3155827311813137483
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000537 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101094.P3155827311813137483

namespace A101094

/-- `∑[∑[A000537(n+1)]]` -/
def P3155827311813137483.Spec : Prop :=
  ∀ n, P3155827311813137483.a n = A101094 (n + 1)

end A101094

/-! ## A101094.P1776342978140539114

`A213563(n+2)+A006542(n+4)-A006542(n+5)`
-/

namespace A101094.P1776342978140539114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213563 (n + 2) + (A006542 (n + 4) - A006542 (n + 5))

end

end A101094.P1776342978140539114

namespace A101094

/-- `A213563(n+2)+A006542(n+4)-A006542(n+5)` -/
def P1776342978140539114.Spec : Prop :=
  ∀ n, P1776342978140539114.a n = A101094 (n + 1)

end A101094

/-! ## A101094.P7600940750623820469

`∑[∑[∩[(n+1)², ∑[n]²]]]`
-/

namespace A101094.P7600940750623820469
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f5 j) ^ 2

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f3 j = x) ∧ ∃ j, f4 j = x) n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101094.P7600940750623820469

namespace A101094

/-- `∑[∑[∩[(n+1)², ∑[n]²]]]` -/
def P7600940750623820469.Spec : Prop :=
  ∀ n, (P7600940750623820469.a n : ℤ) = A101094 (n + 1)

end A101094

/-! ## A101094.P14423156599590518376

`A125166(A167614(n+2))`
-/

namespace A101094.P14423156599590518376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125166 (A167614 (n + 2)).toNat

end

end A101094.P14423156599590518376

namespace A101094

/-- `A125166(A167614(n+2))` -/
def P14423156599590518376.Spec : Prop :=
  ∀ n, P14423156599590518376.a n = A101094 (n + 1)

end A101094

/-! ## A101094.P11036882393857633407

`∑[record[A213553(n+1)]]`
-/

namespace A101094.P11036882393857633407
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213553 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101094.P11036882393857633407

namespace A101094

/-- `∑[record[A213553(n+1)]]` -/
def P11036882393857633407.Spec : Prop :=
  ∀ n, P11036882393857633407.a n = A101094 (n + 1)

end A101094

/-! ## A101094.P4263293482384966747

`∑[record[A213555(n+1)]]`
-/

namespace A101094.P4263293482384966747
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213555 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101094.P4263293482384966747

namespace A101094

/-- `∑[record[A213555(n+1)]]` -/
def P4263293482384966747.Spec : Prop :=
  ∀ n, P4263293482384966747.a n = A101094 (n + 1)

end A101094

/-! ## A101094.P9139964827618540248

`A173690(∑[n+2])`
-/

namespace A101094.P9139964827618540248
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173690 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A101094.P9139964827618540248

namespace A101094

/-- `A173690(∑[n+2])` -/
def P9139964827618540248.Spec : Prop :=
  ∀ n, P9139964827618540248.a n = A101094 (n + 1)

end A101094

/-! ## A101094.P14028651053053800927

`∑[∑[∑[ceil(∑[tanh(n+1)])]²]]`
-/

namespace A101094.P14028651053053800927
noncomputable section

def f4 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.tanh (n + 1 : ℝ)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f4 j⌉

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f3 j) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101094.P14028651053053800927

namespace A101094

/-- `∑[∑[∑[ceil(∑[tanh(n+1)])]²]]` -/
def P14028651053053800927.Spec : Prop :=
  ∀ n, P14028651053053800927.a n = A101094 (n + 1)

end A101094

/-!
# A101095: Fourth difference of fifth powers (A000584).

The programs for A101095, the canonical program `A101095.P763830308440361262` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A101095 has offset 1).

The definition of A101095 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A101095.P763830308440361262

`ogf((1+26x+66x^2+26x^3+x^4)/(1-2x+x^2))`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A101095

/-- `ogf((1+26x+66x^2+26x^3+x^4)/(1-2x+x^2))` -/
def P763830308440361262.Spec : Prop :=
  ∀ n, P763830308440361262.a n = A101095 (n + 1)

theorem P763830308440361262.correct : P763830308440361262.Spec := by
  intro n
  simp only [A101095, Nat.add_sub_cancel]

end A101095

/-!
# A101096: Third differences of fifth powers (A000584).

The programs for A101096, the canonical program `A101096.P8068327325144532149` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A101096 has offset 1).

The definition of A101096 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A101096.P8068327325144532149

`ogf((1+26x+66x^2+26x^3+x^4)/(1-3x+3x^2-x^3))`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A101096

/-- `ogf((1+26x+66x^2+26x^3+x^4)/(1-3x+3x^2-x^3))` -/
def P8068327325144532149.Spec : Prop :=
  ∀ n, P8068327325144532149.a n = A101096 (n + 1)

theorem P8068327325144532149.correct : P8068327325144532149.Spec := by
  intro n
  simp only [A101096, Nat.add_sub_cancel]

end A101096

/-! ## A101096.P15224727630853011032

`∑[A101095(n+1)]`
-/

namespace A101096.P15224727630853011032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101095 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101096.P15224727630853011032

namespace A101096

/-- `∑[A101095(n+1)]` -/
def P15224727630853011032.Spec : Prop :=
  ∀ n, P15224727630853011032.a n = A101096 (n + 1)

end A101096

/-! ## A101096.P14476022092953365656

`∑[A101100(n+1)+a(n-1)]` with `a(0)=1`
-/

namespace A101096.P14476022092953365656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A101100 (n + 1) + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101096.P14476022092953365656

namespace A101096

/-- `∑[A101100(n+1)+a(n-1)]` -/
def P14476022092953365656.Spec : Prop :=
  ∀ n, P14476022092953365656.a n = A101096 (n + 1)

end A101096

/-! ## A101096.P13289291353754690605

`∑[record[A101095(A324533(n))]]`
-/

namespace A101096.P13289291353754690605
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101095 (A324533 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101096.P13289291353754690605

namespace A101096

/-- `∑[record[A101095(A324533(n))]]` -/
def P13289291353754690605.Spec : Prop :=
  ∀ n, P13289291353754690605.a n = A101096 (n + 1)

end A101096

/-! ## A101096.P1736646354471432643

`∑[record[A101095(A344180(n))]]`
-/

namespace A101096.P1736646354471432643
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101095 (A344180 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101096.P1736646354471432643

namespace A101096

/-- `∑[record[A101095(A344180(n))]]` -/
def P1736646354471432643.Spec : Prop :=
  ∀ n, P1736646354471432643.a n = A101096 (n + 1)

end A101096

/-! ## A101096.P4509327354442713121

`A068236(n)-(A101098(n+1)+A101095(n+2))`
-/

namespace A101096.P4509327354442713121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068236 n - (A101098 (n + 1) + A101095 (n + 2))

end

end A101096.P4509327354442713121

namespace A101096

/-- `A068236(n)-(A101098(n+1)+A101095(n+2))` -/
def P4509327354442713121.Spec : Prop :=
  ∀ n, P4509327354442713121.a n = A101096 (n + 1)

end A101096

/-! ## A101096.P15998233714201812731

`A101098(n+2)-(A101098(n+1)+A101095(n+2))`
-/

namespace A101096.P15998233714201812731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101098 (n + 2) - (A101098 (n + 1) + A101095 (n + 2))

end

end A101096.P15998233714201812731

namespace A101096

/-- `A101098(n+2)-(A101098(n+1)+A101095(n+2))` -/
def P15998233714201812731.Spec : Prop :=
  ∀ n, P15998233714201812731.a n = A101096 (n + 1)

end A101096

/-! ## A101096.P681292135856538322

`∑[record[A101095(A133310(n))]]`
-/

namespace A101096.P681292135856538322
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101095 (A133310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101096.P681292135856538322

namespace A101096

/-- `∑[record[A101095(A133310(n))]]` -/
def P681292135856538322.Spec : Prop :=
  ∀ n, P681292135856538322.a n = A101096 (n + 1)

end A101096

/-! ## A101096.P13293090529204710218

`∑[record[A101095(A236858(n))]]`
-/

namespace A101096.P13293090529204710218
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101095 (A236858 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101096.P13293090529204710218

namespace A101096

/-- `∑[record[A101095(A236858(n))]]` -/
def P13293090529204710218.Spec : Prop :=
  ∀ n, P13293090529204710218.a n = A101096 (n + 1)

end A101096

/-! ## A101096.P17381421257464108015

`∑[record[A101095(A128227(n))]]`
-/

namespace A101096.P17381421257464108015
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101095 (A128227 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101096.P17381421257464108015

namespace A101096

/-- `∑[record[A101095(A128227(n))]]` -/
def P17381421257464108015.Spec : Prop :=
  ∀ n, P17381421257464108015.a n = A101096 (n + 1)

end A101096

/-! ## A101096.P3091854224003166091

`∑[record[A101095(A257213(n))]]`
-/

namespace A101096.P3091854224003166091
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101095 (A257213 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101096.P3091854224003166091

namespace A101096

/-- `∑[record[A101095(A257213(n))]]` -/
def P3091854224003166091.Spec : Prop :=
  ∀ n, P3091854224003166091.a n = A101096 (n + 1)

end A101096

/-!
# A101097: a(n) = n*(n+1)*(n+2)*(n+3)*(n+4)*(2 + 4*n + n^2)/840.

The programs for A101097, the canonical program `A101097.P12020864836844194529` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A101097 has offset 1).

The definition of A101097 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A101097.P16565515291510860034

`ogf((1+4x+x^2)/(1-8x+28x^2-56x^3+70x^4-56x^5+28x^6-8x^7+x^8))`
-/

namespace A101097.P16565515291510860034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 4, 1] [1, -8, 28, -56, 70, -56, 28, -8, 1] n

end

end A101097.P16565515291510860034

namespace A101097

/-- `ogf((1+4x+x^2)/(1-8x+28x^2-56x^3+70x^4-56x^5+28x^6-8x^7+x^8))` -/
def P16565515291510860034.Spec : Prop :=
  ∀ n, P16565515291510860034.a n = A101097 (n + 1)

end A101097

/-! ## A101097.P12020864836844194529

`C(n+5, 5)*(2+4*(n+1)+(n+1)²)/7`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A101097

/-- `C(n+5, 5)*(2+4*(n+1)+(n+1)²)/7` -/
def P12020864836844194529.Spec : Prop :=
  ∀ n, P12020864836844194529.a n = (A101097 (n + 1) : ℚ)

end A101097

/-! ## A101097.P4873148014193027619

`(n+1)*(n+2)*(n+3)*(n+4)*(n+5)*(2+4*(n+1)+(n+1)²)/840`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A101097.P4873148014193027619
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) * (n + 2) * (n + 3) * (n + 4) * (n + 5) * (2 + 4 * (n + 1) + (n + 1) ^ 2) : ℚ) / 840

end

end A101097.P4873148014193027619

namespace A101097

/-- `(n+1)*(n+2)*(n+3)*(n+4)*(n+5)*(2+4*(n+1)+(n+1)²)/840` -/
def P4873148014193027619.Spec : Prop :=
  ∀ n, P4873148014193027619.a n = (A101097 (n + 1) : ℚ)

end A101097

/-! ## A101097.P10198393029526002610

`∑{#}[n, A000217(#+1)²*A000217(n+1-#)]`
-/

namespace A101097.P10198393029526002610
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A000217 (k + 1) ^ 2 * A000217 (n + 1 - k)

end

end A101097.P10198393029526002610

namespace A101097

/-- `∑{#}[n, A000217(#+1)²*A000217(n+1-#)]` -/
def P10198393029526002610.Spec : Prop :=
  ∀ n, P10198393029526002610.a n = A101097 (n + 1)

end A101097

/-! ## A101097.P3233990128924962584

`∑[∑[∑[∑[a(n-1)-1]²]]]` with `a(0)=-1`
-/

namespace A101097.P3233990128924962584
noncomputable section

def f4 : ℕ → ℤ := SequenceMachineLib.rec [-1] fun n f4 =>
  f4 (n - 1) - 1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f4 j) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101097.P3233990128924962584

namespace A101097

/-- `∑[∑[∑[∑[a(n-1)-1]²]]]` -/
def P3233990128924962584.Spec : Prop :=
  ∀ n, P3233990128924962584.a n = A101097 (n + 1)

end A101097

/-! ## A101097.P8829144552439825999

`∑[∑[∑[(n+1)^3]]]+a(n-1)` with `a(0)=1`
-/

namespace A101097.P8829144552439825999
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + a (n - 1)

end

end A101097.P8829144552439825999

namespace A101097

/-- `∑[∑[∑[(n+1)^3]]]+a(n-1)` -/
def P8829144552439825999.Spec : Prop :=
  ∀ n, (P8829144552439825999.a n : ℤ) = A101097 (n + 1)

end A101097

/-! ## A101097.P3503785337680273455

`∑[A101094(n+1)]`
-/

namespace A101097.P3503785337680273455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101094 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101097.P3503785337680273455

namespace A101097

/-- `∑[A101094(n+1)]` -/
def P3503785337680273455.Spec : Prop :=
  ∀ n, P3503785337680273455.a n = A101097 (n + 1)

end A101097

/-! ## A101097.P5349753041583216269

`A253947(n+6)-A027765(n+4)`
-/

namespace A101097.P5349753041583216269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253947 (n + 6) - A027765 (n + 4)

end

end A101097.P5349753041583216269

namespace A101097

/-- `A253947(n+6)-A027765(n+4)` -/
def P5349753041583216269.Spec : Prop :=
  ∀ n, P5349753041583216269.a n = A101097 (n + 1)

end A101097

/-! ## A101097.P11519094319122013076

`∑[A027765(n+4)]-∑[A027764(n+3)]`
-/

namespace A101097.P11519094319122013076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027765 (n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027764 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ∑ j ∈ Finset.range (n + 1), f2 j

end

end A101097.P11519094319122013076

namespace A101097

/-- `∑[A027765(n+4)]-∑[A027764(n+3)]` -/
def P11519094319122013076.Spec : Prop :=
  ∀ n, P11519094319122013076.a n = A101097 (n + 1)

end A101097

/-! ## A101097.P8542371479575668974

`∑[∑[A024166(n+1)]]`
-/

namespace A101097.P8542371479575668974
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024166 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101097.P8542371479575668974

namespace A101097

/-- `∑[∑[A024166(n+1)]]` -/
def P8542371479575668974.Spec : Prop :=
  ∀ n, P8542371479575668974.a n = A101097 (n + 1)

end A101097

/-! ## A101097.P854197599012348848

`A101102(n+2)-(A101102(n+1)+A101094(n+2))`
-/

namespace A101097.P854197599012348848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101102 (n + 2) - (A101102 (n + 1) + A101094 (n + 2))

end

end A101097.P854197599012348848

namespace A101097

/-- `A101102(n+2)-(A101102(n+1)+A101094(n+2))` -/
def P854197599012348848.Spec : Prop :=
  ∀ n, P854197599012348848.a n = A101097 (n + 1)

end A101097

/-! ## A101097.P7495045449232979190

`∑[A173690(∑[n+2])]`
-/

namespace A101097.P7495045449232979190
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173690 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101097.P7495045449232979190

namespace A101097

/-- `∑[A173690(∑[n+2])]` -/
def P7495045449232979190.Spec : Prop :=
  ∀ n, P7495045449232979190.a n = A101097 (n + 1)

end A101097

/-! ## A101097.P17063223451266254248

`A046902(eq[6, A025581(n)])`
-/

namespace A101097.P17063223451266254248
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046902 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A101097.P17063223451266254248

namespace A101097

/-- `A046902(eq[6, A025581(n)])` -/
def P17063223451266254248.Spec : Prop :=
  ∀ n, P17063223451266254248.a n = A101097 (n + 1)

end A101097

/-!
# A101098: a(1)=1; thereafter, a(n+1) = 20*n^3 + 10*n.

The programs for A101098, the canonical program `A101098.P11972583627002305406` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A101098 has offset 1).

The definition of A101098 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A101098.P11972583627002305406

`ogf((1+26x+66x^2+26x^3+x^4)/(1-4x+6x^2-4x^3+x^4))`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A101098

/-- `ogf((1+26x+66x^2+26x^3+x^4)/(1-4x+6x^2-4x^3+x^4))` -/
def P11972583627002305406.Spec : Prop :=
  ∀ n, P11972583627002305406.a n = A101098 (n + 1)

theorem P11972583627002305406.correct : P11972583627002305406.Spec := by
  intro n
  simp only [A101098, Nat.add_sub_cancel]

end A101098

/-! ## A101098.P7047479912248879101

`∑[A101096(n+1)]`
-/

namespace A101098.P7047479912248879101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101096 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101098.P7047479912248879101

namespace A101098

/-- `∑[A101096(n+1)]` -/
def P7047479912248879101.Spec : Prop :=
  ∀ n, P7047479912248879101.a n = A101098 (n + 1)

end A101098

/-! ## A101098.P17819397386227331070

`∑[∑[A101095(n+1)]]`
-/

namespace A101098.P17819397386227331070
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101095 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101098.P17819397386227331070

namespace A101098

/-- `∑[∑[A101095(n+1)]]` -/
def P17819397386227331070.Spec : Prop :=
  ∀ n, P17819397386227331070.a n = A101098 (n + 1)

end A101098

/-! ## A101098.P17771347578707281602

`∑[∑[A101100(n+1)+a(n-1)]]` with `a(0)=1`
-/

namespace A101098.P17771347578707281602
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  A101100 (n + 1) + f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101098.P17771347578707281602

namespace A101098

/-- `∑[∑[A101100(n+1)+a(n-1)]]` -/
def P17771347578707281602.Spec : Prop :=
  ∀ n, P17771347578707281602.a n = A101098 (n + 1)

end A101098

/-! ## A101098.P8660909109149570428

`A061804(n)+A007900(n)`
-/

namespace A101098.P8660909109149570428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061804 n + A007900 n

end

end A101098.P8660909109149570428

namespace A101098

/-- `A061804(n)+A007900(n)` -/
def P8660909109149570428.Spec : Prop :=
  ∀ n, P8660909109149570428.a n = A101098 (n + 1)

end A101098

/-! ## A101098.P8873152323487076756

`A144965(n)+A008532(n)`
-/

namespace A101098.P8873152323487076756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144965 n + A008532 n

end

end A101098.P8873152323487076756

namespace A101098

/-- `A144965(n)+A008532(n)` -/
def P8873152323487076756.Spec : Prop :=
  ∀ n, P8873152323487076756.a n = A101098 (n + 1)

end A101098

/-! ## A101098.P15951314272314683495

`A019560(n)-A035597(n)`
-/

namespace A101098.P15951314272314683495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019560 n - A035597 n

end

end A101098.P15951314272314683495

namespace A101098

/-- `A019560(n)-A035597(n)` -/
def P15951314272314683495.Spec : Prop :=
  ∀ n, P15951314272314683495.a n = A101098 (n + 1)

end A101098

/-! ## A101098.P15723217154965053879

`A005899(n)*A008706(n)`
-/

namespace A101098.P15723217154965053879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005899 n * A008706 n

end

end A101098.P15723217154965053879

namespace A101098

/-- `A005899(n)*A008706(n)` -/
def P15723217154965053879.Spec : Prop :=
  ∀ n, P15723217154965053879.a n = A101098 (n + 1)

end A101098

/-! ## A101098.P14528045952433642398

`∪[A068236(n), A282672(n+1)]`
-/

namespace A101098.P14528045952433642398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068236 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282672 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A101098.P14528045952433642398

namespace A101098

/-- `∪[A068236(n), A282672(n+1)]` -/
def P14528045952433642398.Spec : Prop :=
  ∀ n, (P14528045952433642398.a n : ℤ) = A101098 (n + 1)

end A101098

/-! ## A101098.P13594392453325338359

`(A008574(n)+n)*A005899(n)`
-/

namespace A101098.P13594392453325338359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A008574 n + (n : ℤ)) * A005899 n

end

end A101098.P13594392453325338359

namespace A101098

/-- `(A008574(n)+n)*A005899(n)` -/
def P13594392453325338359.Spec : Prop :=
  ∀ n, P13594392453325338359.a n = A101098 (n + 1)

end A101098

/-! ## A101098.P8444428434289465074

`(A010001(n)-n²)*A008706(n)`
-/

namespace A101098.P8444428434289465074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A010001 n - (n ^ 2 : ℤ)) * A008706 n

end

end A101098.P8444428434289465074

namespace A101098

/-- `(A010001(n)-n²)*A008706(n)` -/
def P8444428434289465074.Spec : Prop :=
  ∀ n, P8444428434289465074.a n = A101098 (n + 1)

end A101098

/-! ## A101098.P1170798177049460230

`Δ[Δ[A000584(floor(n²/(n+1)))]]`
-/

namespace A101098.P1170798177049460230
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000584 ⌊(n ^ 2 : ℚ) / (n + 1 : ℚ)⌋.toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A101098.P1170798177049460230

namespace A101098

/-- `Δ[Δ[A000584(floor(n²/(n+1)))]]` -/
def P1170798177049460230.Spec : Prop :=
  ∀ n, P1170798177049460230.a n = A101098 (n + 1)

end A101098

/-! ## A101098.P10404400712987528037

`A068236(n)-A101096(n+2)`
-/

namespace A101098.P10404400712987528037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068236 n - A101096 (n + 2)

end

end A101098.P10404400712987528037

namespace A101098

/-- `A068236(n)-A101096(n+2)` -/
def P10404400712987528037.Spec : Prop :=
  ∀ n, P10404400712987528037.a n = A101098 (n + 1)

end A101098

/-! ## A101098.P1602892540723571503

`(A054552(n+1)-A005899(n))*A005899(n)`
-/

namespace A101098.P1602892540723571503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A054552 (n + 1) - A005899 n) * A005899 n

end

end A101098.P1602892540723571503

namespace A101098

/-- `(A054552(n+1)-A005899(n))*A005899(n)` -/
def P1602892540723571503.Spec : Prop :=
  ∀ n, P1602892540723571503.a n = A101098 (n + 1)

end A101098

/-! ## A101098.P8026723376961876312

`A022521(n+1)-(A101096(n+2)+A022521(n))`
-/

namespace A101098.P8026723376961876312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022521 (n + 1) - (A101096 (n + 2) + A022521 n)

end

end A101098.P8026723376961876312

namespace A101098

/-- `A022521(n+1)-(A101096(n+2)+A022521(n))` -/
def P8026723376961876312.Spec : Prop :=
  ∀ n, P8026723376961876312.a n = A101098 (n + 1)

end A101098

/-! ## A101098.P105452445557754625

`(2*n²+1)*A008706(2*n)`
-/

namespace A101098.P105452445557754625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n ^ 2 + 1 : ℤ) * A008706 (2 * n)

end

end A101098.P105452445557754625

namespace A101098

/-- `(2*n²+1)*A008706(2*n)` -/
def P105452445557754625.Spec : Prop :=
  ∀ n, P105452445557754625.a n = A101098 (n + 1)

end A101098

/-! ## A101098.P12840880593416845895

`A008412(2*n)-A035597(n)`
-/

namespace A101098.P12840880593416845895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008412 (2 * n) - A035597 n

end

end A101098.P12840880593416845895

namespace A101098

/-- `A008412(2*n)-A035597(n)` -/
def P12840880593416845895.Spec : Prop :=
  ∀ n, P12840880593416845895.a n = A101098 (n + 1)

end A101098

/-! ## A101098.P2371256423282263277

`A008706(2*n)*A058331(n)`
-/

namespace A101098.P2371256423282263277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 (2 * n) * A058331 n

end

end A101098.P2371256423282263277

namespace A101098

/-- `A008706(2*n)*A058331(n)` -/
def P2371256423282263277.Spec : Prop :=
  ∀ n, P2371256423282263277.a n = A101098 (n + 1)

end A101098

/-! ## A101098.P2517934963171337118

`A008706(2*n)+4*A244725(n)`
-/

namespace A101098.P2517934963171337118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 (2 * n) + 4 * A244725 n

end

end A101098.P2517934963171337118

namespace A101098

/-- `A008706(2*n)+4*A244725(n)` -/
def P2517934963171337118.Spec : Prop :=
  ∀ n, P2517934963171337118.a n = A101098 (n + 1)

end A101098

/-! ## A101098.P9413301446946120194

`A008412(2*n)-A006527(2*n)/2`
-/

namespace A101098.P9413301446946120194
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008412 (2 * n) : ℚ) - (A006527 (2 * n) : ℚ) / 2

end

end A101098.P9413301446946120194

namespace A101098

/-- `A008412(2*n)-A006527(2*n)/2` -/
def P9413301446946120194.Spec : Prop :=
  ∀ n, P9413301446946120194.a n = (A101098 (n + 1) : ℚ)

end A101098

/-!
# A101099: Third partial sums of fifth powers (A000584).

The programs for A101099, the canonical program `A101099.P17869319903234355696` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A101099 has offset 1).

The definition of A101099 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A101099.P17869319903234355696

`∑[∑[∑[(1+n)^5]]]`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A101099

/-- `∑[∑[∑[(1+n)^5]]]` -/
def P17869319903234355696.Spec : Prop :=
  ∀ n, (P17869319903234355696.a n : ℤ) = A101099 (n + 1)

theorem P17869319903234355696.correct : P17869319903234355696.Spec := by
  intro n
  simp only [A101099, Nat.add_sub_cancel]

end A101099

/-! ## A101099.P10914116226229408797

`∑[∑[(n+1)*(n+1)²²]]+a(n-1)` with `a(0)=1`
-/

namespace A101099.P10914116226229408797
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * ((n + 1) ^ 2) ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + a (n - 1)

end

end A101099.P10914116226229408797

namespace A101099

/-- `∑[∑[(n+1)*(n+1)²²]]+a(n-1)` -/
def P10914116226229408797.Spec : Prop :=
  ∀ n, (P10914116226229408797.a n : ℤ) = A101099 (n + 1)

end A101099

/-! ## A101099.P12826645189591127240

`gcd(∑[A101092(n+1)], A000038(n))`
-/

namespace A101099.P12826645189591127240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101092 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (∑ j ∈ Finset.range (n + 1), f1 j) (A000038 n)

end

end A101099.P12826645189591127240

namespace A101099

/-- `gcd(∑[A101092(n+1)], A000038(n))` -/
def P12826645189591127240.Spec : Prop :=
  ∀ n, (P12826645189591127240.a n : ℤ) = A101099 (n + 1)

end A101099

/-! ## A101099.P8969812527821203410

`or(∑[A101092(n+1)], A000007(n))`
-/

namespace A101099.P8969812527821203410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101092 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (∑ j ∈ Finset.range (n + 1), f1 j) (A000007 n)

end

end A101099.P8969812527821203410

namespace A101099

/-- `or(∑[A101092(n+1)], A000007(n))` -/
def P8969812527821203410.Spec : Prop :=
  ∀ n, P8969812527821203410.a n = A101099 (n + 1)

end A101099

/-! ## A101099.P6169443893351582842

`lcm(∑[A101092(n+1)], A309873(n+1))`
-/

namespace A101099.P6169443893351582842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101092 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (∑ j ∈ Finset.range (n + 1), f1 j) (A309873 (n + 1))

end

end A101099.P6169443893351582842

namespace A101099

/-- `lcm(∑[A101092(n+1)], A309873(n+1))` -/
def P6169443893351582842.Spec : Prop :=
  ∀ n, (P6169443893351582842.a n : ℤ) = A101099 (n + 1)

end A101099

/-! ## A101099.P15965664048901254239

`A254644(n+2)-(A254644(n+1)+A101092(n+2))`
-/

namespace A101099.P15965664048901254239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254644 (n + 2) - (A254644 (n + 1) + A101092 (n + 2))

end

end A101099.P15965664048901254239

namespace A101099

/-- `A254644(n+2)-(A254644(n+1)+A101092(n+2))` -/
def P15965664048901254239.Spec : Prop :=
  ∀ n, P15965664048901254239.a n = A101099 (n + 1)

end A101099

/-! ## A101099.P11745587979105341375

`A000035(2*n)+∑[A101092(n+1)]`
-/

namespace A101099.P11745587979105341375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101092 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (2 * n) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101099.P11745587979105341375

namespace A101099

/-- `A000035(2*n)+∑[A101092(n+1)]` -/
def P11745587979105341375.Spec : Prop :=
  ∀ n, P11745587979105341375.a n = A101099 (n + 1)

end A101099

