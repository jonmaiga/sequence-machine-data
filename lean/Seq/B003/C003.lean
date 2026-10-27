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
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C039
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
import Seq.B001.C012
import Seq.B001.C013
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
import Seq.B002.C008
import SequenceMachineLib.Triangle

/-!
# Canonical definitions

Each definition is given by its canonical program and only uses definitions written before it.
-/

/-! ## A170788.P6875804851184661765

`n*A168194(n²)`
-/

namespace A170788.P6875804851184661765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A168194 (n ^ 2)

end

end A170788.P6875804851184661765

noncomputable section

/-- A170788: a(n) = n^9*(n^6 + 1)/2.

Offset 0, canonical program `A170788.P6875804851184661765`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^9*(n^6+1)/2` (program `A170788.P17515514060295524428`, by `A170788.P17515514060295524428.correct`). Lean does not check the parsing of the name. -/
def A170788 (n : ℕ) : ℤ :=
  A170788.P6875804851184661765.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^9*(n^6+1)/2` (program `A170788.P17515514060295524428`, by `A170788.P17515514060295524428.correct`). Lean does not check the parsing of the name. -/
def A170788.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A170798.P3171787492622690509

`A168371(n²)`
-/

namespace A170798.P3171787492622690509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168371 (n ^ 2)

end

end A170798.P3171787492622690509

noncomputable section

/-- A170798: a(n) = n^10*(n^6 + 1)/2.

Offset 0, canonical program `A170798.P3171787492622690509`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^10*(n^6+1)/2` (program `A170798.P12482735234320680013`, by `A170798.P12482735234320680013.correct`). Lean does not check the parsing of the name. -/
def A170798 (n : ℕ) : ℤ :=
  A170798.P3171787492622690509.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^10*(n^6+1)/2` (program `A170798.P12482735234320680013`, by `A170798.P12482735234320680013.correct`). Lean does not check the parsing of the name. -/
def A170798.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A168123.P14064034454943279005

`A168194(n)-C(n², 2)`
-/

namespace A168123.P14064034454943279005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168194 n - (Nat.choose (n ^ 2) 2 : ℤ)

end

end A168123.P14064034454943279005

noncomputable section

/-- A168123: a(n) = n^2*(n^5+1)/2.

Offset 0, canonical program `A168123.P14064034454943279005`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n²*(n^5+1)/2` (program `A168123.P6139275088796731258`, by `A168123.P6139275088796731258.correct`). Lean does not check the parsing of the name. -/
def A168123 (n : ℕ) : ℤ :=
  A168123.P14064034454943279005.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n²*(n^5+1)/2` (program `A168123.P6139275088796731258`, by `A168123.P6139275088796731258.correct`). Lean does not check the parsing of the name. -/
def A168123.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A215102.P5571390027592218489

`∪[A141852(n+1), A214888(n+1)]`
-/

namespace A215102.P5571390027592218489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141852 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214888 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215102.P5571390027592218489

noncomputable section

/-- A215102: Primes congruent to {2, 3, 5} mod 11.

Offset 1, canonical program `A215102.P5571390027592218489`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215102 (n : ℕ) : ℤ :=
  (A215102.P5571390027592218489.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215102.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A215134.P14482187140007417676

`∪[A141849(n+1), A214888(n+1)]`
-/

namespace A215134.P14482187140007417676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141849 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214888 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215134.P14482187140007417676

noncomputable section

/-- A215134: Primes congruent to {1, 2, 3} mod 11.

Offset 1, canonical program `A215134.P14482187140007417676`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215134 (n : ℕ) : ℤ :=
  (A215134.P14482187140007417676.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215134.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A215156.P6693637782986479371

`∪[A138629(n+1), A215104(n+1)]`
-/

namespace A215156.P6693637782986479371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138629 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215104 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215156.P6693637782986479371

noncomputable section

/-- A215156: Primes congruent to {2, 3, 5, 7} mod 17.

Offset 1, canonical program `A215156.P6693637782986479371`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215156 (n : ℕ) : ℤ :=
  (A215156.P6693637782986479371.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215156.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A215157.P6095938818374201116

`∪[A141872(n+1), A215105(n+1)]`
-/

namespace A215157.P6095938818374201116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141872 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215105 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215157.P6095938818374201116

noncomputable section

/-- A215157: Primes congruent to {2, 3, 5, 7} mod 19.

Offset 1, canonical program `A215157.P6095938818374201116`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215157 (n : ℕ) : ℤ :=
  (A215157.P6095938818374201116.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215157.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A215210.P12415954493624348144

`∪[A141854(n+1), A215167(n+1)]`
-/

namespace A215210.P12415954493624348144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141854 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215167 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215210.P12415954493624348144

noncomputable section

/-- A215210: Primes congruent to {2, 5, 7} mod 11.

Offset 1, canonical program `A215210.P12415954493624348144`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215210 (n : ℕ) : ℤ :=
  (A215210.P12415954493624348144.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215210.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A215211.P16553425419217108754

`∪[A102732(n+1), A215207(n+1)]`
-/

namespace A215211.P16553425419217108754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102732 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215207 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215211.P16553425419217108754

noncomputable section

/-- A215211: Primes congruent to {2, 5, 7} mod 13.

Offset 1, canonical program `A215211.P16553425419217108754`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215211 (n : ℕ) : ℤ :=
  (A215211.P16553425419217108754.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215211.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A215212.P3163214217033629190

`∪[A138629(n+1), A215169(n+1)]`
-/

namespace A215212.P3163214217033629190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138629 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215169 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215212.P3163214217033629190

noncomputable section

/-- A215212: Primes congruent to {2, 5, 7} mod 17.

Offset 1, canonical program `A215212.P3163214217033629190`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215212 (n : ℕ) : ℤ :=
  (A215212.P3163214217033629190.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215212.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A215213.P7586956025202272390

`∪[A102851(n+1), A215209(n+1)]`
-/

namespace A215213.P7586956025202272390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102851 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215209 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215213.P7586956025202272390

noncomputable section

/-- A215213: Primes congruent to {2, 5, 7} mod 19.

Offset 1, canonical program `A215213.P7586956025202272390`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215213 (n : ℕ) : ℤ :=
  (A215213.P7586956025202272390.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215213.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A215279.P11091986200909952141

`∪[A141851(n+1), A214888(n+1)]`
-/

namespace A215279.P11091986200909952141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141851 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214888 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215279.P11091986200909952141

noncomputable section

/-- A215279: Primes congruent to {2, 3, 4} mod 11.

Offset 1, canonical program `A215279.P11091986200909952141`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215279 (n : ℕ) : ℤ :=
  (A215279.P11091986200909952141.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215279.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A215305.P11149716039746470790

`∪[A141870(n+1), A215154(n+1)]`
-/

namespace A215305.P11149716039746470790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141870 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215154 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215305.P11149716039746470790

noncomputable section

/-- A215305: Primes congruent to {1, 2, 3, 4} mod 19.

Offset 1, canonical program `A215305.P11149716039746470790`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215305 (n : ℕ) : ℤ :=
  (A215305.P11149716039746470790.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215305.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A215308.P9063674107072396088

`∪[A129484(n+1), A215104(n+1)]`
-/

namespace A215308.P9063674107072396088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129484 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215104 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215308.P9063674107072396088

noncomputable section

/-- A215308: Primes congruent to {1, 2, 3, 5} mod 17.

Offset 1, canonical program `A215308.P9063674107072396088`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215308 (n : ℕ) : ℤ :=
  (A215308.P9063674107072396088.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215308.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A215309.P9097329543681950437

`∪[A102851(n+1), A215154(n+1)]`
-/

namespace A215309.P9097329543681950437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102851 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215154 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215309.P9097329543681950437

noncomputable section

/-- A215309: Primes congruent to {1, 2, 3, 5} mod 19.

Offset 1, canonical program `A215309.P9097329543681950437`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215309 (n : ℕ) : ℤ :=
  (A215309.P9097329543681950437.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215309.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A215317.P13650566873263467834

`∪[A102851(n+1), A215282(n+1)]`
-/

namespace A215317.P13650566873263467834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102851 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215282 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215317.P13650566873263467834

noncomputable section

/-- A215317: Primes congruent to {2, 3, 4, 5} mod 19.

Offset 1, canonical program `A215317.P13650566873263467834`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215317 (n : ℕ) : ℤ :=
  (A215317.P13650566873263467834.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215317.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A215351.P11878786393599793784

`∪[A093350(n+1), A215280(n+1)]`
-/

namespace A215351.P11878786393599793784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093350 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215280 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215351.P11878786393599793784

noncomputable section

/-- A215351: Primes congruent to {2, 3, 4, 6} mod 13.

Offset 1, canonical program `A215351.P11878786393599793784`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215351 (n : ℕ) : ℤ :=
  (A215351.P11878786393599793784.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215351.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A215353.P7904200068461373245

`∪[A141871(n+1), A215282(n+1)]`
-/

namespace A215353.P7904200068461373245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141871 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215282 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215353.P7904200068461373245

noncomputable section

/-- A215353: Primes congruent to {2, 3, 4, 6} mod 19.

Offset 1, canonical program `A215353.P7904200068461373245`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215353 (n : ℕ) : ℤ :=
  (A215353.P7904200068461373245.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215353.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A215384.P2905744902112368946

`∪[A140545(n+1), A215153(n+1)]`
-/

namespace A215384.P2905744902112368946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140545 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215153 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215384.P2905744902112368946

noncomputable section

/-- A215384: Primes congruent to {1, 2, 3, 6} mod 17.

Offset 1, canonical program `A215384.P2905744902112368946`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215384 (n : ℕ) : ℤ :=
  (A215384.P2905744902112368946.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215384.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A215385.P6170897729525375825

`∪[A141871(n+1), A215154(n+1)]`
-/

namespace A215385.P6170897729525375825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141871 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215154 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215385.P6170897729525375825

noncomputable section

/-- A215385: Primes congruent to {1, 2, 3, 6} mod 19.

Offset 1, canonical program `A215385.P6170897729525375825`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215385 (n : ℕ) : ℤ :=
  (A215385.P6170897729525375825.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215385.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A228039.P4227557278893953699

`A010060(n²)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A228039.P4227557278893953699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (n ^ 2)

end

end A228039.P4227557278893953699

noncomputable section

/-- A228039: Thue-Morse sequence along the squares: A010060(n^2).

Offset 0, canonical program `A228039.P4227557278893953699`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A010060(n²)` (program `A228039.P4227557278893953699`, by `A228039.P4227557278893953699.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A228039 (n : ℕ) : ℤ :=
  A228039.P4227557278893953699.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A010060(n²)` (program `A228039.P4227557278893953699`, by `A228039.P4227557278893953699.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A228039.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A161560.P15052176189256135490

`floor(A000069(n+1)/2-1/2)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A161560.P15052176189256135490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000069 (n + 1) : ℚ) / 2 - (1 : ℚ) / 2⌋

end

end A161560.P15052176189256135490

noncomputable section

/-- A161560: a(n) = floor(A000069(n)/2-1/2).

Offset 1, canonical program `A161560.P15052176189256135490`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A161560 (n : ℕ) : ℤ :=
  A161560.P15052176189256135490.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A161560.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A163369.P6880856874196380414

`A000203(A000203(A000010(n+1)))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A163369.P6880856874196380414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A000203 (A000010 (n + 1)).toNat).toNat

end

end A163369.P6880856874196380414

noncomputable section

/-- A163369: a(n) = sigma(sigma(phi(n))).

Offset 1, canonical program `A163369.P6880856874196380414`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A163369 (n : ℕ) : ℤ :=
  A163369.P6880856874196380414.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A163369.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A163370.P4114165764519939780

`A000010(A000203(A000010(n+1)))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A163370.P4114165764519939780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A000203 (A000010 (n + 1)).toNat).toNat

end

end A163370.P4114165764519939780

noncomputable section

/-- A163370: a(n) = phi(sigma(phi(n))).

Offset 1, canonical program `A163370.P4114165764519939780`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A163370 (n : ℕ) : ℤ :=
  A163370.P4114165764519939780.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A163370.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A163372.P17836874955926531341

`A000203(A000010(A000203(n+1)))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A163372.P17836874955926531341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A000010 (A000203 (n + 1)).toNat).toNat

end

end A163372.P17836874955926531341

noncomputable section

/-- A163372: a(n) = sigma(phi(sigma(n))).

Offset 1, canonical program `A163372.P17836874955926531341`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A163372 (n : ℕ) : ℤ :=
  A163372.P17836874955926531341.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A163372.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A163373.P4463186571228454000

`A000010(A000010(A000203(n+1)))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A163373.P4463186571228454000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A000010 (A000203 (n + 1)).toNat).toNat

end

end A163373.P4463186571228454000

noncomputable section

/-- A163373: a(n) = phi(phi(sigma(n))).

Offset 1, canonical program `A163373.P4463186571228454000`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A163373 (n : ℕ) : ℤ :=
  A163373.P4463186571228454000.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A163373.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A167747.P14168057760473131898

`A000010(6^n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A167747.P14168057760473131898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (6 ^ n)

end

end A167747.P14168057760473131898

noncomputable section

/-- A167747: a(n) = phi(6^n).

Offset 0, canonical program `A167747.P14168057760473131898`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A167747 (n : ℕ) : ℤ :=
  A167747.P14168057760473131898.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A167747.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A176095.P2915123819155161039

`n+1-A000010(2*(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A176095.P2915123819155161039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A000010 (2 * (n + 1))

end

end A176095.P2915123819155161039

noncomputable section

/-- A176095: a(n) = n - phi(2*n), where phi() is the Euler totient A000010().

Offset 1, canonical program `A176095.P2915123819155161039`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A176095 (n : ℕ) : ℤ :=
  A176095.P2915123819155161039.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A176095.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A178086.P8331180815501630969

`-A000010(row(n)+1)+A000010(col(n)+1)+A000010(row(n)-col(n)+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A178086.P8331180815501630969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A000010 (SequenceMachineLib.triRow n + 1) + A000010 (SequenceMachineLib.triCol n + 1) + A000010 ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) + 1).toNat

end

end A178086.P8331180815501630969

noncomputable section

/-- A178086: Triangle T(n,m) = - phi(n+1) + phi(m+1) + phi(n-m+1), 0<=m<=n, where phi = A000010 is Euler's totient.

Offset 0, canonical program `A178086.P8331180815501630969`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A178086 (n : ℕ) : ℤ :=
  A178086.P8331180815501630969.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A178086.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A179179.P432816049346132752

`A000010(n+1)-A001221(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A179179.P432816049346132752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) - A001221 (n + 1)

end

end A179179.P432816049346132752

noncomputable section

/-- A179179: a(n) = phi(n) - omega(n) = A000010(n) - A001221(n).

Offset 1, canonical program `A179179.P432816049346132752`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A001221, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A179179 (n : ℕ) : ℤ :=
  A179179.P432816049346132752.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A001221, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A179179.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A181056.P2304498049817351940

`A000040(A000010(A000045(n+1)))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A181056.P2304498049817351940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A000010 (A000045 (n + 1)).toNat).toNat

end

end A181056.P2304498049817351940

noncomputable section

/-- A181056: a(n) = prime(phi(Fibonacci(n))).

Offset 1, canonical program `A181056.P2304498049817351940`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A181056 (n : ℕ) : ℤ :=
  A181056.P2304498049817351940.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A181056.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A181058.P5190739753113495481

`A000040(A000045(A000010(n+1)))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A181058.P5190739753113495481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A000045 (A000010 (n + 1)).toNat).toNat

end

end A181058.P5190739753113495481

noncomputable section

/-- A181058: a(n) = prime(Fibonacci(phi(n))), where prime = A000040, Fibonacci = A000045 and phi = A000010.

Offset 1, canonical program `A181058.P5190739753113495481`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A181058 (n : ℕ) : ℤ :=
  A181058.P5190739753113495481.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A181058.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A186749.P8755394519025797091

`A000010(n+1-A000010(n+1)+3)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A186749.P8755394519025797091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 ((n + 1 : ℤ) - A000010 (n + 1) + 3).toNat

end

end A186749.P8755394519025797091

noncomputable section

/-- A186749: a(n) = phi(n - phi(n) + 3).

Offset 1, canonical program `A186749.P8755394519025797091`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A186749 (n : ℕ) : ℤ :=
  A186749.P8755394519025797091.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A186749.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A189393.P14759760009596929175

`A000010((n+1)^4)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A189393.P14759760009596929175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 ((n + 1) ^ 4)

end

end A189393.P14759760009596929175

noncomputable section

/-- A189393: a(n) = phi(n^4).

Offset 1, canonical program `A189393.P14759760009596929175`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A189393 (n : ℕ) : ℤ :=
  A189393.P14759760009596929175.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A189393.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A197191.P15605299056805201229

`A000010(A000032(n²))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A197191.P15605299056805201229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A000032 (n ^ 2)).toNat

end

end A197191.P15605299056805201229

noncomputable section

/-- A197191: a(n) = phi(Lucas(n^2)).

Offset 0, canonical program `A197191.P15605299056805201229`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A197191 (n : ℕ) : ℤ :=
  A197191.P15605299056805201229.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A197191.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A197218.P5916423780579939464

`A000010(A000032(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A197218.P5916423780579939464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A000032 n).toNat

end

end A197218.P5916423780579939464

noncomputable section

/-- A197218: a(n) = phi(Lucas(n)).

Offset 0, canonical program `A197218.P5916423780579939464`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A197218 (n : ℕ) : ℤ :=
  A197218.P5916423780579939464.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A197218.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A199596.P10862457242794547760

`floor(A000010(2*n+1)/A000010(2*n+2))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A199596.P10862457242794547760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000010 (2 * n + 1) : ℚ) / (A000010 (2 * n + 2) : ℚ)⌋

end

end A199596.P10862457242794547760

noncomputable section

/-- A199596: a(n) = floor(phi(2*n+1)/phi(2*n+2)).

Offset 0, canonical program `A199596.P10862457242794547760`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A199596 (n : ℕ) : ℤ :=
  A199596.P10862457242794547760.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A199596.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A200905.P16128160975711994279

`3*A000010(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A200905.P16128160975711994279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A000010 (n + 1)

end

end A200905.P16128160975711994279

noncomputable section

/-- A200905: a(n) = 3*phi(n), where phi (A000010) is the Euler totient function.

Offset 1, canonical program `A200905.P16128160975711994279`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A200905 (n : ℕ) : ℤ :=
  A200905.P16128160975711994279.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A200905.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A202535.P8089479057580425171

`(n+1)*A000010(n+1)*abs(A008683(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A202535.P8089479057580425171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000010 (n + 1) * |A008683 (n + 1)|

end

end A202535.P8089479057580425171

noncomputable section

/-- A202535: a(n) = n*phi(n)*abs( mobius(n) ).

Offset 1, canonical program `A202535.P8089479057580425171`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A008683, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A202535 (n : ℕ) : ℤ :=
  A202535.P8089479057580425171.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A008683, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A202535.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A215103.P15709415160951109386

`∪[A100202(n+1), A215168(n+1)]`
-/

namespace A215103.P15709415160951109386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100202 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215168 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215103.P15709415160951109386

noncomputable section

/-- A215103: Primes congruent to {2, 3, 5} mod 13.

Offset 1, canonical program `A215103.P15709415160951109386`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215103 (n : ℕ) : ℤ :=
  (A215103.P15709415160951109386.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215103.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A215135.P664234046293665165

`∪[A100202(n+1), A215391(n+1)]`
-/

namespace A215135.P664234046293665165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100202 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215391 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215135.P664234046293665165

noncomputable section

/-- A215135: Primes congruent to {1, 2, 3} mod 13.

Offset 1, canonical program `A215135.P664234046293665165`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215135 (n : ℕ) : ℤ :=
  (A215135.P664234046293665165.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215135.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A215319.P9914766944936450930

`∪[A215131(n+1), A215391(n+1)]`
-/

namespace A215319.P9914766944936450930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215131 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215391 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215319.P9914766944936450930

noncomputable section

/-- A215319: Primes congruent to {1, 2, 3, 5, 6} mod 13.

Offset 1, canonical program `A215319.P9914766944936450930`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215319 (n : ℕ) : ℤ :=
  (A215319.P9914766944936450930.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215319.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A219029.P12345475859855343114

`n-A000010(A000010(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A219029.P12345475859855343114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A000010 (A000010 (n + 1)).toNat

end

end A219029.P12345475859855343114

noncomputable section

/-- A219029: a(n) = n - 1 - phi(phi(n)).

Offset 1, canonical program `A219029.P12345475859855343114`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A219029 (n : ℕ) : ℤ :=
  A219029.P12345475859855343114.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A219029.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A219428.P9184341513320465947

`n-A000010(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A219428.P9184341513320465947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A000010 (n + 1)

end

end A219428.P9184341513320465947

noncomputable section

/-- A219428: a(n) = n - 1 - phi(n).

Offset 1, canonical program `A219428.P9184341513320465947`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A219428 (n : ℕ) : ℤ :=
  A219428.P9184341513320465947.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A219428.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A228498.P13150910257080311854

`A000203((n+1)²)+A000010((n+1)²)-2*(n+1)²`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A228498.P13150910257080311854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 ((n + 1) ^ 2) + A000010 ((n + 1) ^ 2) - (2 * (n + 1) ^ 2 : ℤ)

end

end A228498.P13150910257080311854

noncomputable section

/-- A228498: a(n) = sigma(n^2) + phi(n^2) - 2n^2.

Offset 1, canonical program `A228498.P13150910257080311854`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A228498 (n : ℕ) : ℤ :=
  A228498.P13150910257080311854.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A228498.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A228620.P18425281222964885815

`n+1-A000010(n+1)+A008683(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A228620.P18425281222964885815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A000010 (n + 1) + A008683 (n + 1)

end

end A228620.P18425281222964885815

noncomputable section

/-- A228620: a(n) = n - phi(n) + mu(n).

Offset 1, canonical program `A228620.P18425281222964885815`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A008683, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A228620 (n : ℕ) : ℤ :=
  A228620.P18425281222964885815.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A008683, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A228620.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A228807.P16255660433747809993

`A000010(a(n-1)+a(n-2)+1)` with `a(0)=0, a(1)=1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A228807.P16255660433747809993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A000010 (a (n - 1) + a (n - 2) + 1).toNat

end

end A228807.P16255660433747809993

noncomputable section

/-- A228807: a(n) = phi( a(n-1) + a(n-2) + 1) with a(0) = 0 and a(1) = 1.

Offset 0, canonical program `A228807.P16255660433747809993`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A228807 (n : ℕ) : ℤ :=
  A228807.P16255660433747809993.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A228807.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A228947.P1027786129053480284

`A000203(n+1)-A000010(n+1)-(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A228947.P1027786129053480284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A000010 (n + 1) - (n + 1 : ℤ)

end

end A228947.P1027786129053480284

noncomputable section

/-- A228947: a(n) = sigma(n) - phi(n) - n.

Offset 1, canonical program `A228947.P1027786129053480284`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A228947 (n : ℕ) : ℤ :=
  A228947.P1027786129053480284.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A228947.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A232637.P15784883994947189699

`A000069(A000069(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A232637.P15784883994947189699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000069 (A000069 (n + 1)).toNat

end

end A232637.P15784883994947189699

noncomputable section

/-- A232637: Odious numbers of order 2: a(n) = A000069(A000069(n)).

Offset 1, canonical program `A232637.P15784883994947189699`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A232637 (n : ℕ) : ℤ :=
  A232637.P15784883994947189699.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A232637.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A161527.P14768292491964537375

`A053144(n+1)/A058250(n+1)`
-/

namespace A161527.P14768292491964537375
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053144 (n + 1) : ℚ) / (A058250 (n + 1) : ℚ)

end

end A161527.P14768292491964537375

noncomputable section

/-- A161527: Numerators of cumulative sums of rational sequence A038110(k)/A038111(k).

Offset 1, canonical program `A161527.P14768292491964537375`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A161527 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A161527.P14768292491964537375.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A161527.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A162775.P15991706861221470785

`A141042(n+2)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A162775.P15991706861221470785
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A141042 (n + 2) : ℚ) / 2

end

end A162775.P15991706861221470785

noncomputable section

/-- A162775: a(n) = A141042(n+1)/2.

Offset 1, canonical program `A162775.P15991706861221470785`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A162775 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A162775.P15991706861221470785.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A162775.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A163405.P4015231014055549183

`A141468(n+1)+A163400(n+1)`
-/

namespace A163405.P4015231014055549183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 1) + A163400 (n + 1)

end

end A163405.P4015231014055549183

noncomputable section

/-- A163405: a(n) = (n-th nonprime) + (number of bits in binary expansion of n-th nonprime).

Offset 1, canonical program `A163405.P4015231014055549183`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A141468, A163400, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A163405 (n : ℕ) : ℤ :=
  A163405.P4015231014055549183.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A141468, A163400, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A163405.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A166456.P6034457580141109105

`2^(n+1)-A001316(n)`
-/

namespace A166456.P6034457580141109105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) : ℤ) - A001316 n

end

end A166456.P6034457580141109105

noncomputable section

/-- A166456: Row sums of triangle A166455.

Offset 0, canonical program `A166456.P6034457580141109105`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A166456 (n : ℕ) : ℤ :=
  A166456.P6034457580141109105.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A166456.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A168013.P6271669954771012062

`A024916((n+1)²+2*(n+1))`
-/

namespace A168013.P6271669954771012062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024916 ((n + 1) ^ 2 + 2 * (n + 1))

end

end A168013.P6271669954771012062

noncomputable section

/-- A168013: a(n) = Sum of all divisors of all numbers < (n+1)^2.

Offset 1, canonical program `A168013.P6271669954771012062`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A168013 (n : ℕ) : ℤ :=
  A168013.P6271669954771012062.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A168013.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A168279.P12753250464981237638

`A144570(n+2)-A000040(n+2)`
-/

namespace A168279.P12753250464981237638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144570 (n + 2) - A000040 (n + 2)

end

end A168279.P12753250464981237638

noncomputable section

/-- A168279: (n+1)-th prime nonprime minus (n+1)-th prime.

Offset 1, canonical program `A168279.P12753250464981237638`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A144570, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A168279 (n : ℕ) : ℤ :=
  A168279.P12753250464981237638.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A144570, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A168279.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A168313.P8669837144017909273

`2*A101688(n)-A023531(n)`
-/

namespace A168313.P8669837144017909273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A101688 n - A023531 n

end

end A168313.P8669837144017909273

noncomputable section

/-- A168313: Triangle read by rows, retain 1's as rightmost diagonal of A101688 and replace all other 1's with 2's.

Offset 1, canonical program `A168313.P8669837144017909273`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A168313 (n : ℕ) : ℤ :=
  A168313.P8669837144017909273.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A168313.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A168563.P15869300188145346420

`A161671(n+3)`
-/

namespace A168563.P15869300188145346420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161671 (n + 3)

end

end A168563.P15869300188145346420

noncomputable section

/-- A168563: a(n) = (n-th prime > 3) minus (n-th composite number).

Offset 1, canonical program `A168563.P15869300188145346420`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A161671, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A168563 (n : ℕ) : ℤ :=
  A168563.P15869300188145346420.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A161671, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A168563.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A169814.P16935715741195993836

`xor(n+1, A000010(n+1))`
-/

namespace A169814.P16935715741195993836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n + 1 : ℤ) (A000010 (n + 1))

end

end A169814.P16935715741195993836

noncomputable section

/-- A169814: a(n) = n XOR phi(n).

Offset 1, canonical program `A169814.P16935715741195993836`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A169814 (n : ℕ) : ℤ :=
  A169814.P16935715741195993836.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A169814.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A171503.P12332767344742414734

`a(n-1)+4*A000010(n)` with `a(0)=0, a(1)=3`
-/

namespace A171503.P12332767344742414734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 3] fun n a =>
  a (n - 1) + 4 * A000010 n

end

end A171503.P12332767344742414734

noncomputable section

/-- A171503: Number of 2 X 2 integer matrices with entries from {0,1,...,n} having determinant 1.

Offset 0, canonical program `A171503.P12332767344742414734`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A171503 (n : ℕ) : ℤ :=
  A171503.P12332767344742414734.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A171503.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A171743.P3977573141868605585

`A000010(A001043(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A171743.P3977573141868605585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A001043 (n + 1)).toNat

end

end A171743.P3977573141868605585

noncomputable section

/-- A171743: a(n) = A000010(A001043(n)).

Offset 1, canonical program `A171743.P3977573141868605585`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A171743 (n : ℕ) : ℤ :=
  A171743.P3977573141868605585.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A171743.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A171989.P6361559175671123136

`A000010(A006862(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A171989.P6361559175671123136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A006862 n).toNat

end

end A171989.P6361559175671123136

noncomputable section

/-- A171989: a(n) = A000010(A006862(n)).

Offset 0, canonical program `A171989.P6361559175671123136`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A171989 (n : ℕ) : ℤ :=
  A171989.P6361559175671123136.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A171989.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A172042.P6434497082481578345

`A000010(A083553(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A172042.P6434497082481578345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A083553 (n + 1)).toNat

end

end A172042.P6434497082481578345

noncomputable section

/-- A172042: a(n) = A000010(A083553(n)).

Offset 1, canonical program `A172042.P6434497082481578345`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A172042 (n : ℕ) : ℤ :=
  A172042.P6434497082481578345.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A172042.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A172985.P6589496241052194509

`A049614(row(n))/(A049614(col(n))*A049614(row(n)-col(n)))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A172985.P6589496241052194509
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049614 (SequenceMachineLib.triRow n) : ℚ) / (A049614 (SequenceMachineLib.triCol n) * A049614 (SequenceMachineLib.triRow n - SequenceMachineLib.triCol n) : ℚ)

end

end A172985.P6589496241052194509

noncomputable section

/-- A172985: Triangle T(n,m) = A049614(n)/ (A049614(m)*A049614(n-m)) read by rows.

Offset 0, canonical program `A172985.P6589496241052194509`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A172985 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A172985.P6589496241052194509.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A172985.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A173384.P18329896187983106844

`A001803(n)-A046161(n)`
-/

namespace A173384.P18329896187983106844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001803 n - A046161 n

end

end A173384.P18329896187983106844

noncomputable section

/-- A173384: a(n) = 2^(2*n - HammingWeight(n)) * [x^n] ((x-1)^(-1) + (1-x)^(-3/2)).

Offset 0, canonical program `A173384.P18329896187983106844`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A173384 (n : ℕ) : ℤ :=
  A173384.P18329896187983106844.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A173384.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A173396.P12524725615118793413

`A046161(n)+A001803(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A173396.P12524725615118793413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046161 n + A001803 n

end

end A173396.P12524725615118793413

noncomputable section

/-- A173396: a(n) = A046161(n) + A001803(n).

Offset 0, canonical program `A173396.P12524725615118793413`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A173396 (n : ℕ) : ℤ :=
  A173396.P12524725615118793413.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A173396.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A175417.P5052014933814601224

`2*A011371(n)-A022559(n)`
-/

namespace A175417.P5052014933814601224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A011371 n - A022559 n

end

end A175417.P5052014933814601224

noncomputable section

/-- A175417: Exponent of 2 minus sum of all other exponents, in the prime power factorization of n!

Offset 0, canonical program `A175417.P5052014933814601224`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A022559, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A175417 (n : ℕ) : ℤ :=
  A175417.P5052014933814601224.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A022559, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A175417.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A175504.P1610807204756957583

`(n+1)^(A000010(n+1)-1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A175504.P1610807204756957583
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A000010 (n + 1) - 1 : ℤ)

end

end A175504.P1610807204756957583

noncomputable section

/-- A175504: a(n) = n ^ (phi(n) - 1), phi(n) = A000010(n) = Euler totient function.

Offset 1, canonical program `A175504.P1610807204756957583`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A175504 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A175504.P1610807204756957583.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A175504.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A175540.P17413733986559148913

`A067076(n+1)+n+1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A175540.P17413733986559148913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067076 (n + 1) + (n + 1 : ℤ)

end

end A175540.P17413733986559148913

noncomputable section

/-- A175540: a(n) = A067076(n) + n.

Offset 1, canonical program `A175540.P17413733986559148913`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A175540 (n : ℕ) : ℤ :=
  A175540.P17413733986559148913.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A175540.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A175700.P1814982992144062250

`(n+1)^A000010(n+2)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A175700.P1814982992144062250
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A000010 (n + 2) : ℤ)

end

end A175700.P1814982992144062250

noncomputable section

/-- A175700: a(n) = n ^ phi(n+1), phi(n) = A000010(n) = Euler totient function.

Offset 1, canonical program `A175700.P1814982992144062250`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A175700 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A175700.P1814982992144062250.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A175700.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A175732.P1828120795872806297

`gcd(A000010(n+1), A001615(n+1))`
-/

namespace A175732.P1828120795872806297
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000010 (n + 1)) (A001615 (n + 1))

end

end A175732.P1828120795872806297

noncomputable section

/-- A175732: a(n) = gcd(phi(n), psi(n)).

Offset 1, canonical program `A175732.P1828120795872806297`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A175732 (n : ℕ) : ℤ :=
  (A175732.P1828120795872806297.a (n - 1) : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A175732.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A176893.P2873570301173375857

`2^A023416(n)*3^A000120(n)`
-/

namespace A176893.P2873570301173375857
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A023416 n : ℤ) * (3 : ℚ) ^ (A000120 n : ℤ)

end

end A176893.P2873570301173375857

noncomputable section

/-- A176893: a(n) = 2^(number of zeros in binary expansion of n) * 3^(numbers of ones in binary expansion of n).

Offset 0, canonical program `A176893.P2873570301173375857`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A176893 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A176893.P2873570301173375857.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A176893.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A178058.P1320891361642740791

`A005811(C(row(n), col(n)))`
-/

namespace A178058.P1320891361642740791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 (Nat.choose (SequenceMachineLib.triRow n) (SequenceMachineLib.triCol n))

end

end A178058.P1320891361642740791

noncomputable section

/-- A178058: Number of 1's in the Gray code for binomial(n,m).

Offset 0, canonical program `A178058.P1320891361642740791`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A178058 (n : ℕ) : ℤ :=
  A178058.P1320891361642740791.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A178058.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A178244.P17051318547944785483

`C(A000120(n)+A023416(n), A000120(n))`
-/

namespace A178244.P17051318547944785483
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A000120 n + A023416 n).toNat (A000120 n).toNat

end

end A178244.P17051318547944785483

noncomputable section

/-- A178244: Number of distinct permutations of binary digits (0's and 1's) in n.

Offset 0, canonical program `A178244.P17051318547944785483`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A178244 (n : ℕ) : ℤ :=
  (A178244.P17051318547944785483.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A178244.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A178398.P3235956670070315682

`A008864(n+1)*A036690(n+1)`
-/

namespace A178398.P3235956670070315682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (n + 1) * A036690 (n + 1)

end

end A178398.P3235956670070315682

noncomputable section

/-- A178398: a(n) = p(p+1)^2, where p is the n-th prime.

Offset 1, canonical program `A178398.P3235956670070315682`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A178398 (n : ℕ) : ℤ :=
  A178398.P3235956670070315682.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A178398.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A180017.P1955405444060819929

`A011371(n)-2*A054861(n)`
-/

namespace A180017.P1955405444060819929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011371 n - 2 * A054861 n

end

end A180017.P1955405444060819929

noncomputable section

/-- A180017: Difference of sums of digits of n in ternary and in binary.

Offset 0, canonical program `A180017.P1955405444060819929`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A180017 (n : ℕ) : ℤ :=
  A180017.P1955405444060819929.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A180017.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A180361.P8296616344209829482

`A064608(10^n)`
-/

namespace A180361.P8296616344209829482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064608 (10 ^ n)

end

end A180361.P8296616344209829482

noncomputable section

/-- A180361: Sum of number of unitary divisors (A034444) from 1 to 10^n.

Offset 0, canonical program `A180361.P8296616344209829482`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A064608, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A180361 (n : ℕ) : ℤ :=
  A180361.P8296616344209829482.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A064608, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A180361.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A180444.P789406692991955832

`2*(n+1)-A000010(n+2)`
-/

namespace A180444.P789406692991955832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - A000010 (n + 2)

end

end A180444.P789406692991955832

noncomputable section

/-- A180444: a(n) equals the number of bispecial Sturmian words of length n, that is words which are prefix to two words of length n+1, and likewise suffix. Note that prefix and suffix are not independent, unless the word is also palindromic: see A000010.

Offset 0, canonical program `A180444.P789406692991955832`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A180444 (n : ℕ) : ℤ :=
  A180444.P789406692991955832.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A180444.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A180633.P2164913276918581847

`1+a(A000010(n)-1)` with `a(0)=0, a(1)=1`
-/

namespace A180633.P2164913276918581847
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  1 + a (A000010 n - 1).toNat

end

end A180633.P2164913276918581847

noncomputable section

/-- A180633: a(n) is the number of iterations of function f(x) = phi(x)-1 needed before zero is reached, when starting from the initial value x = n.

Offset 0, canonical program `A180633.P2164913276918581847`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A180633 (n : ℕ) : ℤ :=
  (A180633.P2164913276918581847.a n : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A180633.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A181155.P6532656100866929133

`A000069(n+1)+1`
-/

namespace A181155.P6532656100866929133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000069 (n + 1) + 1

end

end A181155.P6532656100866929133

noncomputable section

/-- A181155: Odious numbers (A000069) plus one; complement of A026147.

Offset 1, canonical program `A181155.P6532656100866929133`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A181155 (n : ℕ) : ℤ :=
  A181155.P6532656100866929133.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A181155.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A186032.P2427232051721781939

`(-1)^A048881(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A186032.P2427232051721781939
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (A048881 n : ℤ)

end

end A186032.P2427232051721781939

noncomputable section

/-- A186032: a(n) = (-1)^A048881(n).

Offset 0, canonical program `A186032.P2427232051721781939`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A186032 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A186032.P2427232051721781939.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A186032.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A190902.P5214767407288776691

`A069158(n+1)*A061537(n+1)`
-/

namespace A190902.P5214767407288776691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069158 (n + 1) * A061537 (n + 1)

end

end A190902.P5214767407288776691

noncomputable section

/-- A190902: a(n) = Product_{d|n} d*mu(n/d).

Offset 1, canonical program `A190902.P5214767407288776691`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A061537, A069158, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A190902 (n : ℕ) : ℤ :=
  A190902.P5214767407288776691.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A061537, A069158, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A190902.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A192305.P9314614046236981238

`2*A190062(n+1)`
-/

namespace A192305.P9314614046236981238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A190062 (n + 1)

end

end A192305.P9314614046236981238

noncomputable section

/-- A192305: 0-sequence of reduction of (2n) by x^2 -> x+1.

Offset 1, canonical program `A192305.P9314614046236981238`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A192305 (n : ℕ) : ℤ :=
  A192305.P9314614046236981238.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A192305.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A192307.P2714161128456340537

`3*A190062(n+1)`
-/

namespace A192307.P2714161128456340537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A190062 (n + 1)

end

end A192307.P2714161128456340537

noncomputable section

/-- A192307: 0-sequence of reduction of (3n) by x^2 -> x+1.

Offset 1, canonical program `A192307.P2714161128456340537`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A192307 (n : ℕ) : ℤ :=
  A192307.P2714161128456340537.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A192307.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A192655.P14527991431701777898

`sqrt(A065738(n))`
-/

namespace A192655.P14527991431701777898
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A065738 n : ℝ)

end

end A192655.P14527991431701777898

noncomputable section

/-- A192655: Floor-Sqrt transform of central binomial coefficients (A000984).

Offset 0, canonical program `A192655.P14527991431701777898`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A192655 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A192655.P14527991431701777898.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A192655.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A193259.P11107591307749392286

`n+1+floor(log2(n+1))+A011371(n+1)`
-/

namespace A193259.P11107591307749392286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 + Nat.log 2 (n + 1) : ℤ) + A011371 (n + 1)

end

end A193259.P11107591307749392286

noncomputable section

/-- A193259: G.f.: x = Sum_{n>=1} x^n * ((1+x)^n - x^n) / (1+x)^a(n).

Offset 1, canonical program `A193259.P11107591307749392286`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A193259 (n : ℕ) : ℤ :=
  A193259.P11107591307749392286.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A193259.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A193453.P6993732054623460770

`A001227(A000010(n+1))`
-/

namespace A193453.P6993732054623460770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (A000010 (n + 1)).toNat

end

end A193453.P6993732054623460770

noncomputable section

/-- A193453: Number of odd divisors of phi(n).

Offset 1, canonical program `A193453.P6993732054623460770`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A193453 (n : ℕ) : ℤ :=
  A193453.P6993732054623460770.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A193453.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A193454.P14726844864907007468

`A000593(A000010(n+1))`
-/

namespace A193454.P14726844864907007468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000593 (A000010 (n + 1)).toNat

end

end A193454.P14726844864907007468

noncomputable section

/-- A193454: Sum of odd divisors of phi(n).

Offset 1, canonical program `A193454.P14726844864907007468`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A000593, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A193454 (n : ℕ) : ℤ :=
  A193454.P14726844864907007468.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A000593, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A193454.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A193532.P14021246929730773787

`n+1+floor(log2(n+2))+A011371(n+2)`
-/

namespace A193532.P14021246929730773787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 + Nat.log 2 (n + 2) : ℤ) + A011371 (n + 2)

end

end A193532.P14021246929730773787

noncomputable section

/-- A193532: G.f.: x = Sum_{n>=1} x^n * ((1+x)^(n+1) - x^(n+1)) / (1+x)^a(n).

Offset 1, canonical program `A193532.P14021246929730773787`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A193532 (n : ℕ) : ℤ :=
  A193532.P14021246929730773787.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A193532.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A195459.P2860711302660598050

`A000010(3*(n+1))/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A195459.P2860711302660598050
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (3 * (n + 1)) : ℚ) / 2

end

end A195459.P2860711302660598050

noncomputable section

/-- A195459: a(n) = phi(3*n)/2.

Offset 1, canonical program `A195459.P2860711302660598050`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A195459 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A195459.P2860711302660598050.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A195459.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A197863.P618205374624486698

`(n+1)*A055231(n+1)`
-/

namespace A197863.P618205374624486698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A055231 (n + 1)

end

end A197863.P618205374624486698

noncomputable section

/-- A197863: Smallest powerful number that is a multiple of n.

Offset 1, canonical program `A197863.P618205374624486698`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A197863 (n : ℕ) : ℤ :=
  A197863.P618205374624486698.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A197863.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A201208.P11775252334027749297

`A057212(n+1)+1`
-/

namespace A201208.P11775252334027749297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057212 (n + 1) + 1

end

end A201208.P11775252334027749297

noncomputable section

/-- A201208: One 1, two 2's, three 1's, four 2's, five 1's, ...

Offset 1, canonical program `A201208.P11775252334027749297`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A201208 (n : ℕ) : ℤ :=
  A201208.P11775252334027749297.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A201208.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A202342.P5796561117243952660

`A005374(A136496(n+1))`
-/

namespace A202342.P5796561117243952660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005374 (A136496 (n + 1)).toNat

end

end A202342.P5796561117243952660

noncomputable section

/-- A202342: Numbers occurring exactly twice in Hofstadter H-sequence A005374.

Offset 1, canonical program `A202342.P5796561117243952660`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A202342 (n : ℕ) : ℤ :=
  A202342.P5796561117243952660.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A202342.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A203008.P4929955156994495110

`1/2*(A024451(1+n)-A070826(1+n))`
-/

namespace A203008.P4929955156994495110
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * (A024451 (1 + n) - A070826 (1 + n) : ℚ)

end

end A203008.P4929955156994495110

noncomputable section

/-- A203008: (n-1)-st elementary symmetric function of the first n odd primes; a(0) = 0.

Offset 0, canonical program `A203008.P4929955156994495110`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A203008 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A203008.P4929955156994495110.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A203008.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A213714.P736048023233046129

`A079559(n)*(A046699(n+2)-1)`
-/

namespace A213714.P736048023233046129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079559 n * (A046699 (n + 2) - 1)

end

end A213714.P736048023233046129

noncomputable section

/-- A213714: Inverse function for injection A005187.

Offset 0, canonical program `A213714.P736048023233046129`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A213714 (n : ℕ) : ℤ :=
  A213714.P736048023233046129.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A213714.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A214560.P494932617173923030

`A023416(n²)`
-/

namespace A214560.P494932617173923030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 (n ^ 2)

end

end A214560.P494932617173923030

noncomputable section

/-- A214560: Number of 0's in binary expansion of n^2.

Offset 0, canonical program `A214560.P494932617173923030`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A214560 (n : ℕ) : ℤ :=
  A214560.P494932617173923030.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A214560.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A215486.P14905427778399820879

`n%A000010(n+1)`
-/

namespace A215486.P14905427778399820879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n : ℤ) (A000010 (n + 1))

end

end A215486.P14905427778399820879

noncomputable section

/-- A215486: n - 1 mod phi(n), where phi(n) is Euler's totient function.

Offset 1, canonical program `A215486.P14905427778399820879`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A215486 (n : ℕ) : ℤ :=
  A215486.P14905427778399820879.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A215486.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A215947.P3538818604850998885

`A239050(n+1)-A062731(n+1)`
-/

namespace A215947.P3538818604850998885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239050 (n + 1) - A062731 (n + 1)

end

end A215947.P3538818604850998885

noncomputable section

/-- A215947: Difference between the sum of the even divisors and the sum of the odd divisors of 2n.

Offset 1, canonical program `A215947.P3538818604850998885`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A215947 (n : ℕ) : ℤ :=
  A215947.P3538818604850998885.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A215947.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A216144.P10868306596373888871

`A060797(n+1)+1`
-/

namespace A216144.P10868306596373888871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060797 (n + 1) + 1

end

end A216144.P10868306596373888871

noncomputable section

/-- A216144: Square root of smallest square greater than the product of first n primes.

Offset 1, canonical program `A216144.P10868306596373888871`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A216144 (n : ℕ) : ℤ :=
  A216144.P10868306596373888871.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A216144.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A216195.P5070679371522791591

`A007302(n+1)+1`
-/

namespace A216195.P5070679371522791591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007302 (n + 1) + 1

end

end A216195.P5070679371522791591

noncomputable section

/-- A216195: Abelian complexity function of the period-doubling sequence (A096268).

Offset 1, canonical program `A216195.P5070679371522791591`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A216195 (n : ℕ) : ℤ :=
  A216195.P5070679371522791591.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A216195.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A216321.P6307569186183926854

`A000010(ceil(A000010(2*(n+1))/2))`
-/

namespace A216321.P6307569186183926854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 ⌈(A000010 (2 * (n + 1)) : ℚ) / 2⌉.toNat

end

end A216321.P6307569186183926854

noncomputable section

/-- A216321: phi(delta(n)), n >= 1, with phi = A000010 (Euler's totient) and delta = A055034 (degree of minimal polynomials with coefficients given in A187360).

Offset 1, canonical program `A216321.P6307569186183926854`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A216321 (n : ℕ) : ℤ :=
  A216321.P6307569186183926854.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A216321.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A216475.P1503443610381396525

`A000010(n+3)-(n+1)%2`
-/

namespace A216475.P1503443610381396525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 3) - (((n + 1) % 2 : ℕ) : ℤ)

end

end A216475.P1503443610381396525

noncomputable section

/-- A216475: The number of numbers coprime to and less than n+2, excluding 2.

Offset 1, canonical program `A216475.P1503443610381396525`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A216475 (n : ℕ) : ℤ :=
  A216475.P1503443610381396525.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A216475.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A216850.P1387506290551560808

`(2^A000010(n+1)-1)*2^A001221(n+1)`
-/

namespace A216850.P1387506290551560808
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 : ℚ) ^ (A000010 (n + 1) : ℤ) - 1) * (2 : ℚ) ^ (A001221 (n + 1) : ℤ)

end

end A216850.P1387506290551560808

noncomputable section

/-- A216850: Number of distinct infinite sets of primes congruent to a subset of 1..n mod n.

Offset 1, canonical program `A216850.P1387506290551560808`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A001221, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A216850 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A216850.P1387506290551560808.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A001221, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A216850.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A217863.P4277841558715900929

`A000010(A003418(n+1))`
-/

namespace A217863.P4277841558715900929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A003418 (n + 1)).toNat

end

end A217863.P4277841558715900929

noncomputable section

/-- A217863: a(n) = phi(lcm(1,2,3,...,n)), where phi is Euler's totient function.

Offset 1, canonical program `A217863.P4277841558715900929`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A217863 (n : ℕ) : ℤ :=
  A217863.P4277841558715900929.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A217863.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A224195.P2968674169476824705

`A081118(n+1)+2`
-/

namespace A224195.P2968674169476824705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081118 (n + 1) + 2

end

end A224195.P2968674169476824705

noncomputable section

/-- A224195: Ordered sequence of numbers of form (2^n - 1)*2^m + 1 where n >= 1, m >= 1.

Offset 1, canonical program `A224195.P2968674169476824705`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A224195 (n : ℕ) : ℤ :=
  A224195.P2968674169476824705.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A224195.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A225081.P6319409890311663631

`2^(A005811(n+1)-1)`
-/

namespace A225081.P6319409890311663631
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A005811 (n + 1) - 1 : ℤ)

end

end A225081.P6319409890311663631

noncomputable section

/-- A225081: Gray code variant of A048896.

Offset 0, canonical program `A225081.P6319409890311663631`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A225081 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A225081.P6319409890311663631.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A225081.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A225679.P18090508762940475823

`A000010(A005117(n+1))/gcd(A000010(A005117(n+1)), A005117(n+1))`
-/

namespace A225679.P18090508762940475823
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (A005117 (n + 1)).toNat : ℚ) / (Int.gcd (A000010 (A005117 (n + 1)).toNat) (A005117 (n + 1)) : ℚ)

end

end A225679.P18090508762940475823

noncomputable section

/-- A225679: Numerators of phi(k)/k, as k runs through the squarefree numbers (A005117).

Offset 1, canonical program `A225679.P18090508762940475823`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A005117, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A225679 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A225679.P18090508762940475823.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A005117, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A225679.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A225680.P4214717189862335148

`A005117(n+1)/gcd(A000010(A005117(n+1)), A005117(n+1))`
-/

namespace A225680.P4214717189862335148
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005117 (n + 1) : ℚ) / (Int.gcd (A000010 (A005117 (n + 1)).toNat) (A005117 (n + 1)) : ℚ)

end

end A225680.P4214717189862335148

noncomputable section

/-- A225680: Denominators of phi(k)/k, as k runs through the squarefree numbers (A005117).

Offset 1, canonical program `A225680.P4214717189862335148`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A005117, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A225680 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A225680.P4214717189862335148.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A005117, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A225680.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A226561.P4346169156950608747

`∑{d}[n+1, #*A000010(#^(n+1))]`
-/

namespace A226561.P4346169156950608747
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A000010 (d ^ (n + 1))

end

end A226561.P4346169156950608747

noncomputable section

/-- A226561: a(n) = Sum_{d|n} d^n * phi(d), where phi(n) is the Euler totient function A000010(n).

Offset 1, canonical program `A226561.P4346169156950608747`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A226561 (n : ℕ) : ℤ :=
  A226561.P4346169156950608747.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A226561.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A227169.P12999617952910354842

`3*A135389(n)/((n+2)*(n+3))`
-/

namespace A227169.P12999617952910354842
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 * A135389 n : ℚ) / ((n + 2) * (n + 3) : ℚ)

end

end A227169.P12999617952910354842

noncomputable section

/-- A227169: a(n) = 3*((2*n+2)!)^2 / (n!*(n+1)!*(n+2)!*(n+3)!).

Offset 0, canonical program `A227169.P12999617952910354842`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A227169 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A227169.P12999617952910354842.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A227169.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A227991.P607222595589635829

`3^A227990(n+1)`
-/

namespace A227991.P607222595589635829
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (A227990 (n + 1) : ℤ)

end

end A227991.P607222595589635829

noncomputable section

/-- A227991: Highest power of 3 dividing prime(n)+1.

Offset 1, canonical program `A227991.P607222595589635829`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A227991 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A227991.P607222595589635829.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A227991.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A228495.P3981489379467428454

`A000035(n)*A010060(n)`
-/

namespace A228495.P3981489379467428454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n * A010060 n

end

end A228495.P3981489379467428454

noncomputable section

/-- A228495: Characteristic function of the odd odious numbers (A092246).

Offset 0, canonical program `A228495.P3981489379467428454`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A228495 (n : ℕ) : ℤ :=
  A228495.P3981489379467428454.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A228495.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A228640.P11204383012530829131

`∑{d}[n, A000010(#)*n^(n/#)]`
-/

namespace A228640.P11204383012530829131
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (A000010 d : ℝ) * (n : ℝ) ^ ((n : ℚ) / (d : ℚ) : ℝ)

end

end A228640.P11204383012530829131

noncomputable section

/-- A228640: a(n) = Sum_{d|n} phi(d)*n^(n/d).

Offset 0, canonical program `A228640.P11204383012530829131`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A228640 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A228640.P11204383012530829131.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A228640.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A229067.P4043255727745089421

`A000040(n+1)+A145445(n+1)`
-/

namespace A229067.P4043255727745089421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + A145445 (n + 1)

end

end A229067.P4043255727745089421

noncomputable section

/-- A229067: Sum of n-th prime and next perfect square.

Offset 1, canonical program `A229067.P4043255727745089421`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A229067 (n : ℕ) : ℤ :=
  A229067.P4043255727745089421.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A229067.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A229497.P2706809178029199216

`A000040(n+1)*A145445(n+1)`
-/

namespace A229497.P2706809178029199216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A145445 (n + 1)

end

end A229497.P2706809178029199216

noncomputable section

/-- A229497: Product between n-th prime and next perfect square.

Offset 1, canonical program `A229497.P2706809178029199216`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A229497 (n : ℕ) : ℤ :=
  A229497.P2706809178029199216.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A229497.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A230714.P17564723223337425468

`n!*A205958(n)`
-/

namespace A230714.P17564723223337425468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A205958 n

end

end A230714.P17564723223337425468

noncomputable section

/-- A230714: a(n) = lcm(1,2,...,n)*a(floor(n/2))^2 for n > 0, a(0) = 1.

Offset 0, canonical program `A230714.P17564723223337425468`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A230714 (n : ℕ) : ℤ :=
  A230714.P17564723223337425468.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A230714.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A232243.P16373768799838248871

`A159918(n)-A000120(n)`
-/

namespace A232243.P16373768799838248871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159918 n - A000120 n

end

end A232243.P16373768799838248871

noncomputable section

/-- A232243: a(n) = wt(n^2) - wt(n), where wt(n) = A000120(n) is the binary weight function.

Offset 0, canonical program `A232243.P16373768799838248871`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A232243 (n : ℕ) : ℤ :=
  A232243.P16373768799838248871.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A232243.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A232245.P5094151863049896055

`A159918(n)+A000120(n)`
-/

namespace A232245.P5094151863049896055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159918 n + A000120 n

end

end A232245.P5094151863049896055

noncomputable section

/-- A232245: Sum of the number of ones in binary representation of n and n^2.

Offset 0, canonical program `A232245.P5094151863049896055`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A232245 (n : ℕ) : ℤ :=
  A232245.P5094151863049896055.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A232245.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A161150.P4576201331525909670

`A000265(n+1)*A006519(n+2)`
-/

namespace A161150.P4576201331525909670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (n + 1) * A006519 (n + 2)

end

end A161150.P4576201331525909670

noncomputable section

/-- A161150: a(n) = (largest odd divisor of n)*(largest power of 2 dividing (n+1)).

Offset 1, canonical program `A161150.P4576201331525909670`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A161150 (n : ℕ) : ℤ :=
  A161150.P4576201331525909670.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A161150.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A161151.P6562315491543427

`A000265(n+2)*A006519(n+1)`
-/

namespace A161151.P6562315491543427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (n + 2) * A006519 (n + 1)

end

end A161151.P6562315491543427

noncomputable section

/-- A161151: a(n) = (largest odd divisor of (n+1))*(largest power of 2 dividing n).

Offset 1, canonical program `A161151.P6562315491543427`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A161151 (n : ℕ) : ℤ :=
  A161151.P6562315491543427.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A161151.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A162641.P7922189454188814525

`A001221(A336643(n+1))`
-/

namespace A162641.P7922189454188814525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A336643 (n + 1)).toNat

end

end A162641.P7922189454188814525

noncomputable section

/-- A162641: Number of even exponents in canonical prime factorization of n.

Offset 1, canonical program `A162641.P7922189454188814525`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A162641 (n : ℕ) : ℤ :=
  A162641.P7922189454188814525.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A162641.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A162784.P6167208712163994257

`A151712(n)/2`
-/

namespace A162784.P6167208712163994257
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A151712 n : ℚ) / 2

end

end A162784.P6167208712163994257

noncomputable section

/-- A162784: a(n) = (A048883(n)+1)/2.

Offset 0, canonical program `A162784.P6167208712163994257`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A162784 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A162784.P6167208712163994257.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A162784.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A162867.P8413772705343167960

`(n+2)*A007504(n+1)`
-/

namespace A162867.P8413772705343167960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A007504 (n + 1)

end

end A162867.P8413772705343167960

noncomputable section

/-- A162867: a(n) is the sum of all possible pairs of the first n primes.

Offset 1, canonical program `A162867.P8413772705343167960`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A162867 (n : ℕ) : ℤ :=
  A162867.P8413772705343167960.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A162867.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A167214.P9697442408688225616

`(n+1)*A007504(n+1)`
-/

namespace A167214.P9697442408688225616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A007504 (n + 1)

end

end A167214.P9697442408688225616

noncomputable section

/-- A167214: a(n) = (sum of first n primes) * n.

Offset 1, canonical program `A167214.P9697442408688225616`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A167214 (n : ℕ) : ℤ :=
  A167214.P9697442408688225616.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A167214.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A168176.P12224044250160319688

`n*A168119(n)`
-/

namespace A168176.P12224044250160319688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A168119 n

end

end A168176.P12224044250160319688

noncomputable section

/-- A168176: a(n) = n^2*(n^10 + 1)/2.

Offset 0, canonical program `A168176.P12224044250160319688`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n²*(n^10+1)/2` (program `A168176.P7572206138590168629`, by `A168176.P7572206138590168629.correct`). Lean does not check the parsing of the name. -/
def A168176 (n : ℕ) : ℤ :=
  A168176.P12224044250160319688.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n²*(n^10+1)/2` (program `A168176.P7572206138590168629`, by `A168176.P7572206138590168629.correct`). Lean does not check the parsing of the name. -/
def A168176.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A168190.P1854175503729805304

`n*A168153(n)`
-/

namespace A168190.P1854175503729805304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A168153 n

end

end A168190.P1854175503729805304

noncomputable section

/-- A168190: a(n) = n^3*(n^9 + 1)/2.

Offset 0, canonical program `A168190.P1854175503729805304`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^3*(n^9+1)/2` (program `A168190.P6614214977692164207`, by `A168190.P6614214977692164207.correct`). Lean does not check the parsing of the name. -/
def A168190 (n : ℕ) : ℤ :=
  A168190.P1854175503729805304.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^3*(n^9+1)/2` (program `A168190.P6614214977692164207`, by `A168190.P6614214977692164207.correct`). Lean does not check the parsing of the name. -/
def A168190.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A168191.P15005594831408203501

`n²*A168119(n)`
-/

namespace A168191.P15005594831408203501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) * A168119 n

end

end A168191.P15005594831408203501

noncomputable section

/-- A168191: a(n) = n^3*(n^10 + 1)/2.

Offset 0, canonical program `A168191.P15005594831408203501`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^3*(n^10+1)/2` (program `A168191.P11844307673975364443`, by `A168191.P11844307673975364443.correct`). Lean does not check the parsing of the name. -/
def A168191 (n : ℕ) : ℤ :=
  A168191.P15005594831408203501.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^3*(n^10+1)/2` (program `A168191.P11844307673975364443`, by `A168191.P11844307673975364443.correct`). Lean does not check the parsing of the name. -/
def A168191.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A168225.P5208216902943000796

`A168153(n)+C(n², 2)`
-/

namespace A168225.P5208216902943000796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168153 n + (Nat.choose (n ^ 2) 2 : ℤ)

end

end A168225.P5208216902943000796

noncomputable section

/-- A168225: a(n) = n^4*(n^7 + 1)/2.

Offset 0, canonical program `A168225.P5208216902943000796`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^4*(n^7+1)/2` (program `A168225.P13376698782999524608`, by `A168225.P13376698782999524608.correct`). Lean does not check the parsing of the name. -/
def A168225 (n : ℕ) : ℤ :=
  A168225.P5208216902943000796.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^4*(n^7+1)/2` (program `A168225.P13376698782999524608`, by `A168225.P13376698782999524608.correct`). Lean does not check the parsing of the name. -/
def A168225.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A168345.P6982683568432476353

`n²*A168153(n)`
-/

namespace A168345.P6982683568432476353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) * A168153 n

end

end A168345.P6982683568432476353

noncomputable section

/-- A168345: a(n) = n^4*(n^9 + 1)/2.

Offset 0, canonical program `A168345.P6982683568432476353`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^4*(n^9+1)/2` (program `A168345.P4631879238593598652`, by `A168345.P4631879238593598652.correct`). Lean does not check the parsing of the name. -/
def A168345 (n : ℕ) : ℤ :=
  A168345.P6982683568432476353.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^4*(n^9+1)/2` (program `A168345.P4631879238593598652`, by `A168345.P4631879238593598652.correct`). Lean does not check the parsing of the name. -/
def A168345.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A168346.P5815712206208416061

`n^3*A168119(n)`
-/

namespace A168346.P5815712206208416061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 3 : ℤ) * A168119 n

end

end A168346.P5815712206208416061

noncomputable section

/-- A168346: a(n) = n^4*(n^10 + 1)/2.

Offset 0, canonical program `A168346.P5815712206208416061`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^4*(n^10+1)/2` (program `A168346.P6231584071021818417`, by `A168346.P6231584071021818417.correct`). Lean does not check the parsing of the name. -/
def A168346 (n : ℕ) : ℤ :=
  A168346.P5815712206208416061.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^4*(n^10+1)/2` (program `A168346.P6231584071021818417`, by `A168346.P6231584071021818417.correct`). Lean does not check the parsing of the name. -/
def A168346.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A168471.P14271287693191774711

`n^3*A168153(n)`
-/

namespace A168471.P14271287693191774711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 3 : ℤ) * A168153 n

end

end A168471.P14271287693191774711

noncomputable section

/-- A168471: a(n) = n^5*(n^9 + 1)/2.

Offset 0, canonical program `A168471.P14271287693191774711`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^5*(n^9+1)/2` (program `A168471.P7596393113812289214`, by `A168471.P7596393113812289214.correct`). Lean does not check the parsing of the name. -/
def A168471 (n : ℕ) : ℤ :=
  A168471.P14271287693191774711.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^5*(n^9+1)/2` (program `A168471.P7596393113812289214`, by `A168471.P7596393113812289214.correct`). Lean does not check the parsing of the name. -/
def A168471.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A168633.P12972347511728595871

`n²²*A168153(n)`
-/

namespace A168633.P12972347511728595871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n ^ 2) ^ 2 : ℤ) * A168153 n

end

end A168633.P12972347511728595871

noncomputable section

/-- A168633: a(n) = n^6*(n^9 + 1)/2.

Offset 0, canonical program `A168633.P12972347511728595871`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^6*(n^9+1)/2` (program `A168633.P9321221020949049552`, by `A168633.P9321221020949049552.correct`). Lean does not check the parsing of the name. -/
def A168633 (n : ℕ) : ℤ :=
  A168633.P12972347511728595871.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^6*(n^9+1)/2` (program `A168633.P9321221020949049552`, by `A168633.P9321221020949049552.correct`). Lean does not check the parsing of the name. -/
def A168633.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A174574.P9281296430949688215

`a(n-1)+A065363(n)` with `a(0)=0`
-/

namespace A174574.P9281296430949688215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + A065363 n

end

end A174574.P9281296430949688215

noncomputable section

/-- A174574: Partial sums of A065363.

Offset 0, canonical program `A174574.P9281296430949688215`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A174574 (n : ℕ) : ℤ :=
  A174574.P9281296430949688215.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A174574.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A178472.P12067930664029615455

`2^n-A000740(n+1)`
-/

namespace A178472.P12067930664029615455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A000740 (n + 1)

end

end A178472.P12067930664029615455

noncomputable section

/-- A178472: Number of compositions (ordered partitions) of n where the gcd of the part sizes is not 1.

Offset 1, canonical program `A178472.P12067930664029615455`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000740, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A178472 (n : ℕ) : ℤ :=
  A178472.P12067930664029615455.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000740, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A178472.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A179893.P13809526715996495286

`3*A005097(n+1)`
-/

namespace A179893.P13809526715996495286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A005097 (n + 1)

end

end A179893.P13809526715996495286

noncomputable section

/-- A179893: a(n) = 3/2 * (prime(n)-1).

Offset 2, canonical program `A179893.P13809526715996495286`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A179893 (n : ℕ) : ℤ :=
  A179893.P13809526715996495286.a (n - 2)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A179893.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A181962.P15147201020200271264

`A000879(n+1)+n+1`
-/

namespace A181962.P15147201020200271264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000879 (n + 1) + (n + 1 : ℤ)

end

end A181962.P15147201020200271264

noncomputable section

/-- A181962: Numbers not of the form pi(p) + pi(sqrt(p)) for some prime p.

Offset 1, canonical program `A181962.P15147201020200271264`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A181962 (n : ℕ) : ℤ :=
  A181962.P15147201020200271264.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A181962.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A189892.P11745447332243219839

`A033286(n+1)-A007504(n)`
-/

namespace A189892.P11745447332243219839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033286 (n + 1) - A007504 n

end

end A189892.P11745447332243219839

noncomputable section

/-- A189892: a(n) = n*prime(n) - sum_{i=1..n-1} prime(i).

Offset 1, canonical program `A189892.P11745447332243219839`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A189892 (n : ℕ) : ℤ :=
  A189892.P11745447332243219839.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A189892.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A193828.P7698008167923322003

`2*A154293(n+1)`
-/

namespace A193828.P7698008167923322003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A154293 (n + 1)

end

end A193828.P7698008167923322003

noncomputable section

/-- A193828: Even generalized pentagonal numbers.

Offset 0, canonical program `A193828.P7698008167923322003`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A193828 (n : ℕ) : ℤ :=
  A193828.P7698008167923322003.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A193828.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A216430.P17716969539992197610

`(-1)^A081603(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A216430.P17716969539992197610
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (A081603 (n + 1) : ℤ)

end

end A216430.P17716969539992197610

noncomputable section

/-- A216430: (-1)^A081603(n), parity of the number of 2's in the ternary expansion of n.

Offset 1, canonical program `A216430.P17716969539992197610`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A216430 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A216430.P17716969539992197610.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A216430.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A225804.P13090922353215695081

`ceil(A007504(n+1)/(n+1))`
-/

namespace A225804.P13090922353215695081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A007504 (n + 1) : ℚ) / (n + 1 : ℚ)⌉

end

end A225804.P13090922353215695081

noncomputable section

/-- A225804: Arithmetic mean of the first n primes, rounded up.

Offset 1, canonical program `A225804.P13090922353215695081`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A225804 (n : ℕ) : ℤ :=
  A225804.P13090922353215695081.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A225804.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A168116.P10140477262871652233

`A170784(n)+n-A168119(n)`
-/

namespace A168116.P10140477262871652233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170784 n + ((n : ℤ) - A168119 n)

end

end A168116.P10140477262871652233

noncomputable section

/-- A168116: a(n) = n*(n^8+1)/2.

Offset 0, canonical program `A168116.P10140477262871652233`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(n^8+1)/2` (program `A168116.P2134200745871545788`, by `A168116.P2134200745871545788.correct`). Lean does not check the parsing of the name. -/
def A168116 (n : ℕ) : ℤ :=
  A168116.P10140477262871652233.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(n^8+1)/2` (program `A168116.P2134200745871545788`, by `A168116.P2134200745871545788.correct`). Lean does not check the parsing of the name. -/
def A168116.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A160792.P10104784036141985292

`∑[A142150(n+1)+A007504(A142150(n))]`
-/

namespace A160792.P10104784036141985292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (n + 1) + A007504 (A142150 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A160792.P10104784036141985292

noncomputable section

/-- A160792: Vertex number of a rectangular spiral related to prime numbers. The distances between nearest edges of the spiral that are parallel to the initial edge are the prime numbers, while the distances between nearest edges perpendicular to the initial edge are all one.

Offset 0, canonical program `A160792.P10104784036141985292`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A160792 (n : ℕ) : ℤ :=
  A160792.P10104784036141985292.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A160792.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A160793.P11956426580748944804

`A027656(n)+A007504(∑[A001057(n)])`
-/

namespace A160793.P11956426580748944804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027656 n + A007504 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A160793.P11956426580748944804

noncomputable section

/-- A160793: Natural numbers and the sum of first n primes interleaved.

Offset 1, canonical program `A160793.P11956426580748944804`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A160793 (n : ℕ) : ℤ :=
  A160793.P11956426580748944804.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A160793.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A160799.P12754781986334410166

`∑[A160410(n)]`
-/

namespace A160799.P12754781986334410166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160410 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A160799.P12754781986334410166

noncomputable section

/-- A160799: Partial sums of A160410.

Offset 1, canonical program `A160799.P12754781986334410166`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A160799 (n : ℕ) : ℤ :=
  A160799.P12754781986334410166.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A160799.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A160833.P15780145902120907609

`A160831(n)-∑[A161680(n)]²`
-/

namespace A160833.P15780145902120907609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160831 n - (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A160833.P15780145902120907609

noncomputable section

/-- A160833: G.f.: (1+62*x+569*x^2+1086*x^3+521*x^4+56*x^5+x^6)/(1-x)^7.

Offset 0, canonical program `A160833.P15780145902120907609`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A160833 (n : ℕ) : ℤ :=
  A160833.P15780145902120907609.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A160833.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A160889.P4866696132334601097

`A059376(n+1)/A000010(n+1)`
-/

namespace A160889.P4866696132334601097
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059376 (n + 1) : ℚ) / (A000010 (n + 1) : ℚ)

end

end A160889.P4866696132334601097

noncomputable section

/-- A160889: a(n) = Sum_{d|n} Moebius(n/d)*d^(b-1)/phi(n) for b = 4.

Offset 1, canonical program `A160889.P4866696132334601097`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A059376, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A160889 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A160889.P4866696132334601097.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A059376, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A160889.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A160891.P12024979058820824222

`A059377(n+1)/A000010(n+1)`
-/

namespace A160891.P12024979058820824222
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059377 (n + 1) : ℚ) / (A000010 (n + 1) : ℚ)

end

end A160891.P12024979058820824222

noncomputable section

/-- A160891: a(n) = Sum_{d|n} Moebius(n/d)*d^(b-1)/phi(n) for b = 5.

Offset 1, canonical program `A160891.P12024979058820824222`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A059377, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A160891 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A160891.P12024979058820824222.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A059377, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A160891.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A160893.P16935836706349167096

`A059378(n+1)/A000010(n+1)`
-/

namespace A160893.P16935836706349167096
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059378 (n + 1) : ℚ) / (A000010 (n + 1) : ℚ)

end

end A160893.P16935836706349167096

noncomputable section

/-- A160893: a(n) = Sum_{d|n} Möbius(n/d)*d^5/phi(n).

Offset 1, canonical program `A160893.P16935836706349167096`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A059378, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A160893 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A160893.P16935836706349167096.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A059378, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A160893.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A160895.P2150078273942846583

`A069091(n+1)/A000010(n+1)`
-/

namespace A160895.P2150078273942846583
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069091 (n + 1) : ℚ) / (A000010 (n + 1) : ℚ)

end

end A160895.P2150078273942846583

noncomputable section

/-- A160895: a(n) = Sum_{d|n} Moebius(n/d)*d^(b-1)/phi(n) for b = 7.

Offset 1, canonical program `A160895.P2150078273942846583`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A069091, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A160895 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A160895.P2150078273942846583.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A069091, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A160895.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A160897.P16752404958731061009

`A069092(n+1)/A000010(n+1)`
-/

namespace A160897.P16752404958731061009
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069092 (n + 1) : ℚ) / (A000010 (n + 1) : ℚ)

end

end A160897.P16752404958731061009

noncomputable section

/-- A160897: a(n) = Sum_{d|n} Moebius(n/d)*d^(b-1)/phi(n) for b = 8.

Offset 1, canonical program `A160897.P16752404958731061009`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A069092, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A160897 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A160897.P16752404958731061009.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A069092, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A160897.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A160908.P5544833388897247786

`A069093(n+1)/A000010(n+1)`
-/

namespace A160908.P5544833388897247786
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069093 (n + 1) : ℚ) / (A000010 (n + 1) : ℚ)

end

end A160908.P5544833388897247786

noncomputable section

/-- A160908: a(n) = Sum_{d|n} Moebius(n/d)*d^(b-1)/phi(n) for b = 9.

Offset 1, canonical program `A160908.P5544833388897247786`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A069093, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A160908 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A160908.P5544833388897247786.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A069093, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A160908.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A160953.P8938375607108306963

`A069094(n+1)/A000010(n+1)`
-/

namespace A160953.P8938375607108306963
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069094 (n + 1) : ℚ) / (A000010 (n + 1) : ℚ)

end

end A160953.P8938375607108306963

noncomputable section

/-- A160953: a(n) = Sum_{d|n} Moebius(n/d)*d^(b-1)/phi(n) for b = 10.

Offset 1, canonical program `A160953.P8938375607108306963`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A069094, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A160953 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A160953.P8938375607108306963.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A069094, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A160953.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A160957.P14327442583971557876

`A069095(n+1)/A000010(n+1)`
-/

namespace A160957.P14327442583971557876
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069095 (n + 1) : ℚ) / (A000010 (n + 1) : ℚ)

end

end A160957.P14327442583971557876

noncomputable section

/-- A160957: a(n) = Sum_{d|n} Moebius(n/d)*d^(b-1)/phi(n) for b = 11.

Offset 1, canonical program `A160957.P14327442583971557876`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A069095, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A160957 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A160957.P14327442583971557876.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A069095, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A160957.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A161199.P11902296088430852582

`A000108(n)/A001316(n)*∑[A016754(n)]`
-/

namespace A161199.P11902296088430852582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016754 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000108 n : ℚ) / (A001316 n : ℚ) * ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)

end

end A161199.P11902296088430852582

noncomputable section

/-- A161199: Numerators in expansion of (1-x)^(-5/2).

Offset 0, canonical program `A161199.P11902296088430852582`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 163 terms. -/
def A161199 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A161199.P11902296088430852582.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 163 terms. -/
def A161199.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A161201.P10259147654263294185

`A020918(n)/A001316(n)`
-/

namespace A161201.P10259147654263294185
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020918 n : ℚ) / (A001316 n : ℚ)

end

end A161201.P10259147654263294185

noncomputable section

/-- A161201: Numerators in expansion of (1-x)^(-7/2).

Offset 0, canonical program `A161201.P10259147654263294185`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 158 terms. -/
def A161201 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A161201.P10259147654263294185.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 158 terms. -/
def A161201.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A161202.P1779684718391485559

`A002422(n)/A001316(n)`
-/

namespace A161202.P1779684718391485559
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002422 n : ℚ) / (A001316 n : ℚ)

end

end A161202.P1779684718391485559

noncomputable section

/-- A161202: Numerators in expansion of (1-x)^(5/2).

Offset 0, canonical program `A161202.P1779684718391485559`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 180 terms. -/
def A161202 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A161202.P1779684718391485559.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 180 terms. -/
def A161202.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A161219.P4715218201372608573

`2*A000031(n+1)`
-/

namespace A161219.P4715218201372608573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000031 (n + 1)

end

end A161219.P4715218201372608573

noncomputable section

/-- A161219: a(n) = (1/n) * Sum_{d|n} phi(n/d)*2^(d+1).

Offset 1, canonical program `A161219.P4715218201372608573`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000031, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A161219 (n : ℕ) : ℤ :=
  A161219.P4715218201372608573.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000031, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A161219.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A161382.P17829671909695505750

`A057212(A000217(A074279(n+1)))`
-/

namespace A161382.P17829671909695505750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057212 (A000217 (A074279 (n + 1)).toNat).toNat

end

end A161382.P17829671909695505750

noncomputable section

/-- A161382: (0,1)-sequence where n-th run has length n^2.

Offset 1, canonical program `A161382.P17829671909695505750`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A161382 (n : ℕ) : ℤ :=
  A161382.P17829671909695505750.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A161382.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A161428.P18072400539995113599

`record[A073846(4-(-1)^n+n)]`
-/

namespace A161428.P18072400539995113599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073846 (4 - (-1) ^ n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A161428.P18072400539995113599

noncomputable section

/-- A161428: a(n) = A161424(n)/4.

Offset 1, canonical program `A161428.P18072400539995113599`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A161424, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A161428 (n : ℕ) : ℤ :=
  A161428.P18072400539995113599.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A161424, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A161428.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A161673.P1088043651261816536

`eq[1, A010060(xor(n, n+8))]`
-/

namespace A161673.P1088043651261816536
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (Nat.xor n (n + 8))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A161673.P1088043651261816536

noncomputable section

/-- A161673: Positions n such that A010060(n) + A010060(n+8) = 1.

Offset 1, canonical program `A161673.P1088043651261816536`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A161673 (n : ℕ) : ℤ :=
  (A161673.P1088043651261816536.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A161673.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A161790.P974738305676753531

`eq[1, A161789(n+1)]+1`
-/

namespace A161790.P974738305676753531
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161789 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A161790.P974738305676753531

noncomputable section

/-- A161790: The positive integer n is included if 1 is the largest integer of the form {2^k - 1} to divide n.

Offset 1, canonical program `A161790.P974738305676753531`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5485 terms. -/
def A161790 (n : ℕ) : ℤ :=
  (A161790.P974738305676753531.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5485 terms. -/
def A161790.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A161824.P16062857071686495012

`eq[A010060(n+6), A010060(n)]`
-/

namespace A161824.P16062857071686495012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (n + 6)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A161824.P16062857071686495012

noncomputable section

/-- A161824: Numbers such that A010060(n) = A010060(n+6).

Offset 1, canonical program `A161824.P16062857071686495012`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A161824 (n : ℕ) : ℤ :=
  (A161824.P16062857071686495012.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A161824.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A161989.P17124297221809156559

`eq[4, A001316(A001316(n)+4)]`
-/

namespace A161989.P17124297221809156559
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 (A001316 n + 4).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A161989.P17124297221809156559

noncomputable section

/-- A161989: Numbers having more than 2 or fewer than 2 ones in their binary representation.

Offset 1, canonical program `A161989.P17124297221809156559`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A161989 (n : ℕ) : ℤ :=
  (A161989.P17124297221809156559.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A161989.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A161996.P3418427153135750794

`A000045(Δ[A100637(2*n)])`
-/

namespace A161996.P3418427153135750794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100637 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (f1 (n + 1) - f1 n).toNat

end

end A161996.P3418427153135750794

noncomputable section

/-- A161996: A (negated) characteristic function of twin composite odd numbers.

Offset 1, canonical program `A161996.P3418427153135750794`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A161996 (n : ℕ) : ℤ :=
  A161996.P3418427153135750794.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A161996.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A162326.P6298705676017396747

`A086871(n-1)+a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A162326.P6298705676017396747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A086871 (n - 1) + a (n - 1)

end

end A162326.P6298705676017396747

noncomputable section

/-- A162326: Let a(0) = a(1) = 1, and n*a(n) = 2*(-7+5*n)*a(n-1) + 9*(2-n)*a(n-2) for n >= 2.

Offset 0, canonical program `A162326.P6298705676017396747`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 110 terms. -/
def A162326 (n : ℕ) : ℤ :=
  A162326.P6298705676017396747.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 110 terms. -/
def A162326.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A162345.P16599755805380939880

`round(Δ[A011974(n+1)/2])`
-/

namespace A162345.P16599755805380939880
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A011974 (n + 1) : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (f1 (n + 1) - f1 n)

end

end A162345.P16599755805380939880

noncomputable section

/-- A162345: Length of n-th edge in the graph of the zig-zag function for prime numbers.

Offset 1, canonical program `A162345.P16599755805380939880`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A162345 (n : ℕ) : ℤ :=
  A162345.P16599755805380939880.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A162345.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A162620.P14495094572982818752

`A162619(n+1)+1`
-/

namespace A162620.P14495094572982818752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162619 (n + 1) + 1

end

end A162620.P14495094572982818752

noncomputable section

/-- A162620: Triangle read by rows in which row n lists n consecutive natural numbers A000027, starting with A000040(n)-n+1.

Offset 1, canonical program `A162620.P14495094572982818752`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A162620 (n : ℕ) : ℤ :=
  A162620.P14495094572982818752.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A162620.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A162621.P13614541246017247815

`gcd(A000038(n), A162619(A014132(n+1)))`
-/

namespace A162621.P13614541246017247815
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A162619 (A014132 (n + 1)).toNat)

end

end A162621.P13614541246017247815

noncomputable section

/-- A162621: Triangle read by rows in which row n lists n consecutive natural numbers A000027, starting with A014689(n+1) = A000040(n+1)-n-1.

Offset 1, canonical program `A162621.P13614541246017247815`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9860 terms. -/
def A162621 (n : ℕ) : ℤ :=
  (A162621.P13614541246017247815.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9860 terms. -/
def A162621.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A162645.P13090916189487860480

`eq[1, A162511(n+1)+2]+1`
-/

namespace A162645.P13090916189487860480
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162511 (n + 1) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A162645.P13090916189487860480

noncomputable section

/-- A162645: Numbers m such that A162511(m) = -1.

Offset 1, canonical program `A162645.P13090916189487860480`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2637 terms. -/
def A162645 (n : ℕ) : ℤ :=
  (A162645.P13090916189487860480.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2637 terms. -/
def A162645.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A162917.P5952952200221241721

`A066182(a(n-1)+2)` with `a(0)=1`
-/

namespace A162917.P5952952200221241721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A066182 (a (n - 1) + 2).toNat

end

end A162917.P5952952200221241721

noncomputable section

/-- A162917: Numbers n which are not in A161983.

Offset 1, canonical program `A162917.P5952952200221241721`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A162917 (n : ℕ) : ℤ :=
  A162917.P5952952200221241721.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A162917.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A163058.P17793405762297747335

`p?[A163057(n+1)]`
-/

namespace A163058.P17793405762297747335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163057 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A163058.P17793405762297747335

noncomputable section

/-- A163058: Primes in A163057.

Offset 1, canonical program `A163058.P17793405762297747335`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1004 terms. -/
def A163058 (n : ℕ) : ℤ :=
  A163058.P17793405762297747335.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1004 terms. -/
def A163058.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A163061.P15581848910612517848

`A007504(n+1)+A051349(n)`
-/

namespace A163061.P15581848910612517848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (n + 1) + A051349 n

end

end A163061.P15581848910612517848

noncomputable section

/-- A163061: Sum of the first n primes plus the first n nonprimes.

Offset 1, canonical program `A163061.P15581848910612517848`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051349, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A163061 (n : ℕ) : ℤ :=
  A163061.P15581848910612517848.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051349, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A163061.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A163116.P9298683324671648407

`A007504(n+1)-A051349(n)`
-/

namespace A163116.P9298683324671648407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (n + 1) - A051349 n

end

end A163116.P9298683324671648407

noncomputable section

/-- A163116: Partial sums of A161671.

Offset 1, canonical program `A163116.P9298683324671648407`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051349, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A163116 (n : ℕ) : ℤ :=
  A163116.P9298683324671648407.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051349, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A163116.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A163140.P8912314780080089725

`eq[2*A023416(n), A145037(n)]`
-/

namespace A163140.P8912314780080089725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A023416 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145037 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A163140.P8912314780080089725

noncomputable section

/-- A163140: Integers n such that in base 2, 3 `1`'s for each `0`.

Offset 1, canonical program `A163140.P8912314780080089725`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 189 terms. -/
def A163140 (n : ℕ) : ℤ :=
  (A163140.P8912314780080089725.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 189 terms. -/
def A163140.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A163292.P8227225209679286486

`A000040(n+1)-A163291(n+1)`
-/

namespace A163292.P8227225209679286486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - A163291 (n + 1)

end

end A163292.P8227225209679286486

noncomputable section

/-- A163292: a(n) = n-th prime minus (number of digits of n-th prime written in base 4).

Offset 1, canonical program `A163292.P8227225209679286486`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A163291, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A163292 (n : ℕ) : ℤ :=
  A163292.P8227225209679286486.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A163291, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A163292.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A163624.P2636095778930404415

`(A163623(n+1)-1)/120`
-/

namespace A163624.P2636095778930404415
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A163623 (n + 1) - 1 : ℚ) / 120

end

end A163624.P2636095778930404415

noncomputable section

/-- A163624: Numbers k such that 120*k+1 is prime.

Offset 1, canonical program `A163624.P2636095778930404415`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A163623, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A163624 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A163624.P2636095778930404415.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A163623, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A163624.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A163769.P6265540848864808962

`p?[gcd(n, A156707(n+1))]`
-/

namespace A163769.P6265540848864808962
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A156707 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A163769.P6265540848864808962

noncomputable section

/-- A163769: Primes p such that 2*p+3 is not prime.

Offset 1, canonical program `A163769.P6265540848864808962`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3828 terms. -/
def A163769 (n : ℕ) : ℤ :=
  (A163769.P6265540848864808962.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3828 terms. -/
def A163769.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A163865.P5899914044909555635

`2*A092690(n)-A109188(n+1)`
-/

namespace A163865.P5899914044909555635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A092690 n - A109188 (n + 1)

end

end A163865.P5899914044909555635

noncomputable section

/-- A163865: The binomial transform of the swinging factorial (A056040).

Offset 0, canonical program `A163865.P5899914044909555635`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 208 terms. -/
def A163865 (n : ℕ) : ℤ :=
  A163865.P5899914044909555635.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 208 terms. -/
def A163865.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A163935.P16843162133888820864

`3*A027802(n+2)-A027790(n+2)`
-/

namespace A163935.P16843162133888820864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A027802 (n + 2) - A027790 (n + 2)

end

end A163935.P16843162133888820864

noncomputable section

/-- A163935: Third right hand column of triangle A163934.

Offset 3, canonical program `A163935.P16843162133888820864`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A163935 (n : ℕ) : ℤ :=
  A163935.P16843162133888820864.a (n - 3)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A163935.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A164056.P15299414648682255323

`ceil(Δ[1/A154436(2*n+1)])`
-/

namespace A164056.P15299414648682255323
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (A154436 (2 * n + 1) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈f1 (n + 1) - f1 n⌉

end

end A164056.P15299414648682255323

noncomputable section

/-- A164056: Triangle of 2^n terms by rows, derived from A088696 as to length of continued fractions, lengths increase = 1, decrease = 0. A088696 can be generated using the following algorithm: Rows 0 and 1 begin 1; 1,2; then for all further rows, bring down current row then append to the right: (1 added to each term in current row). Row 2 (1, 2, 3, 2) then becomes: (1, 2, 3, 2, 3, 4, 3, 2).

Offset 0, canonical program `A164056.P15299414648682255323`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1023 terms. -/
def A164056 (n : ℕ) : ℤ :=
  A164056.P15299414648682255323.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1023 terms. -/
def A164056.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A164289.P14731636054711746706

`A045344(eq[5, A077218(n+1)])`
-/

namespace A164289.P14731636054711746706
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077218 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A164289.P14731636054711746706

noncomputable section

/-- A164289: Sequence of twin primes p where the middle term p+1 has 5 prime factors (here p+2 is the associated twin prime, not listed).

Offset 1, canonical program `A164289.P14731636054711746706`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 359 terms. -/
def A164289 (n : ℕ) : ℤ :=
  A164289.P14731636054711746706.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 359 terms. -/
def A164289.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A164290.P2722954149927449051

`A045344(eq[6, A077218(n+1)])`
-/

namespace A164290.P2722954149927449051
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077218 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A164290.P2722954149927449051

noncomputable section

/-- A164290: Sequence of twin prime p where the middle term p+1 has 6 prime factors (here p+2 is the associated twin prime, not listed).

Offset 1, canonical program `A164290.P2722954149927449051`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 241 terms. -/
def A164290 (n : ℕ) : ℤ :=
  A164290.P2722954149927449051.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 241 terms. -/
def A164290.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A164295.P6843823552470505705

`A054521(n+1)+A051731(n+1)`
-/

namespace A164295.P6843823552470505705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054521 (n + 1) + A051731 (n + 1)

end

end A164295.P6843823552470505705

noncomputable section

/-- A164295: Triangle T(n,k) read by rows: sum of the triangles A054521 and A051731.

Offset 1, canonical program `A164295.P6843823552470505705`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. -/
def A164295 (n : ℕ) : ℤ :=
  A164295.P6843823552470505705.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. -/
def A164295.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A164487.P18355013799103951156

`∑[A079981(C(2, n))+A068921(n)]`
-/

namespace A164487.P18355013799103951156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079981 (Nat.choose 2 n) + A068921 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164487.P18355013799103951156

noncomputable section

/-- A164487: Number of binary strings of length n with no substrings equal to 0001, 1010, or 1100.

Offset 0, canonical program `A164487.P18355013799103951156`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 600 terms. -/
def A164487 (n : ℕ) : ℤ :=
  A164487.P18355013799103951156.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 600 terms. -/
def A164487.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A164876.P16113870689143514141

`record[(n+1)²-A000203(n+1)*A000010(n+1)]`
-/

namespace A164876.P16113870689143514141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - A000203 (n + 1) * A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A164876.P16113870689143514141

noncomputable section

/-- A164876: Record differences for n^2 - phi(n)*sigma(n).

Offset 1, canonical program `A164876.P16113870689143514141`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 441 terms. -/
def A164876 (n : ℕ) : ℤ :=
  A164876.P16113870689143514141.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 441 terms. -/
def A164876.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A164941.P10750457642055664605

`∑{d}[n+1, A000010(#)^floor(n/#)]`
-/

namespace A164941.P10750457642055664605
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (A000010 d : ℚ) ^ (⌊(n : ℚ) / (d : ℚ)⌋ : ℤ)

end

end A164941.P10750457642055664605

noncomputable section

/-- A164941: a(n) = Sum_{d|n} phi(n/d)^(d-1).

Offset 1, canonical program `A164941.P10750457642055664605`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 839 terms. -/
def A164941 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A164941.P10750457642055664605.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 839 terms. -/
def A164941.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A165145.P4805269214844964162

`∑[A058183(n+1)]`
-/

namespace A165145.P4805269214844964162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058183 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A165145.P4805269214844964162

noncomputable section

/-- A165145: Partial sums of A058183.

Offset 1, canonical program `A165145.P4805269214844964162`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A165145 (n : ℕ) : ℤ :=
  A165145.P4805269214844964162.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A165145.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A165257.P5279491284380606187

`A046899(A132128(n+1))`
-/

namespace A165257.P5279491284380606187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046899 (A132128 (n + 1)).toNat

end

end A165257.P5279491284380606187

noncomputable section

/-- A165257: Triangle in which n-th row is binomial(n+k-1,k), for column k=1..n.

Offset 1, canonical program `A165257.P5279491284380606187`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A165257 (n : ℕ) : ℤ :=
  A165257.P5279491284380606187.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A165257.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A165404.P15223557212356883423

`a(n-1)+A010060(a(n-1))+A006519(a(n-1)+1)` with `a(0)=0`
-/

namespace A165404.P15223557212356883423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + (A010060 (a (n - 1)).toNat + A006519 (a (n - 1) + 1).toNat)

end

end A165404.P15223557212356883423

noncomputable section

/-- A165404: The positions of zeros in the top row of A163898 (and A163899).

Offset 0, canonical program `A165404.P15223557212356883423`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 610 terms. -/
def A165404 (n : ℕ) : ℤ :=
  A165404.P15223557212356883423.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 610 terms. -/
def A165404.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A165453.P13560885071597525990

`A022554(n)+A080344(n)`
-/

namespace A165453.P13560885071597525990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022554 n + A080344 n

end

end A165453.P13560885071597525990

noncomputable section

/-- A165453: Linear interpolation of the sequence that maps an entry of A002378 to the corresponding entry of A006331.

Offset 0, canonical program `A165453.P13560885071597525990`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A080344, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A165453 (n : ℕ) : ℤ :=
  A165453.P13560885071597525990.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A080344, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A165453.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A165513.P4193173009747102375

`eq[1, A000045(a(A136107(n)))]` with `a(0)=4`
-/

namespace A165513.P4193173009747102375
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [4] fun n f2 =>
  A000045 (f2 (A136107 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A165513.P4193173009747102375

noncomputable section

/-- A165513: Trapezoidal numbers.

Offset 1, canonical program `A165513.P4193173009747102375`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A165513 (n : ℕ) : ℤ :=
  (A165513.P4193173009747102375.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A165513.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A165721.P5437165114375339253

`A154293(n+2)+A108752(n+2)`
-/

namespace A165721.P5437165114375339253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154293 (n + 2) + A108752 (n + 2)

end

end A165721.P5437165114375339253

noncomputable section

/-- A165721: Integers of the form k*(k+13)/12.

Offset 1, canonical program `A165721.P5437165114375339253`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A165721 (n : ℕ) : ℤ :=
  A165721.P5437165114375339253.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A165721.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A165981.P15510311723054699555

`p?[A034961(n+1)+2]`
-/

namespace A165981.P15510311723054699555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034961 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A165981.P15510311723054699555

noncomputable section

/-- A165981: Primes p which are equal to 2 plus the sum of three consecutive primes.

Offset 1, canonical program `A165981.P15510311723054699555`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A165981 (n : ℕ) : ℤ :=
  A165981.P15510311723054699555.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A165981.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A165982.P7822805712144647645

`p?[A034961(n+1)+4]`
-/

namespace A165982.P7822805712144647645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034961 (n + 1) + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A165982.P7822805712144647645

noncomputable section

/-- A165982: Primes that are 4 plus the sum of three consecutive primes.

Offset 1, canonical program `A165982.P7822805712144647645`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A165982 (n : ℕ) : ℤ :=
  A165982.P7822805712144647645.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A165982.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A165985.P12541880626013702028

`p?[A034961(n+1)+8]`
-/

namespace A165985.P12541880626013702028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034961 (n + 1) + 8

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A165985.P12541880626013702028

noncomputable section

/-- A165985: Primes that are 8 plus the sum of three consecutive primes.

Offset 1, canonical program `A165985.P12541880626013702028`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A165985 (n : ℕ) : ℤ :=
  A165985.P12541880626013702028.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A165985.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A166009.P17457192223862783149

`7+2*A023206(n+1)`
-/

namespace A166009.P17457192223862783149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 + 2 * A023206 (n + 1)

end

end A166009.P17457192223862783149

noncomputable section

/-- A166009: Primes of the form 7 + 2*p, where p is a prime.

Offset 1, canonical program `A166009.P17457192223862783149`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A023206, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A166009 (n : ℕ) : ℤ :=
  A166009.P17457192223862783149.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A023206, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A166009.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A166034.P4358169721997023842

`p?[A034961(n+1)-2]`
-/

namespace A166034.P4358169721997023842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034961 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A166034.P4358169721997023842

noncomputable section

/-- A166034: Primes which are equal to the sum of three consecutive primes minus 2.

Offset 1, canonical program `A166034.P4358169721997023842`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A166034 (n : ℕ) : ℤ :=
  A166034.P4358169721997023842.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A166034.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A166142.P10122674445425206392

`∏{d}[n+1, A080304(#)]`
-/

namespace A166142.P10122674445425206392
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), A080304 d

end

end A166142.P10122674445425206392

noncomputable section

/-- A166142: Row products of A166141; Product of such divisors of n that are squarefree and have an even number of prime factors.

Offset 1, canonical program `A166142.P10122674445425206392`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A166142 (n : ℕ) : ℤ :=
  A166142.P10122674445425206392.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A166142.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A166160.P15900755279161251971

`A005097(n+1)+A047845(n+1)`
-/

namespace A166160.P15900755279161251971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005097 (n + 1) + A047845 (n + 1)

end

end A166160.P15900755279161251971

noncomputable section

/-- A166160: a(n) = (n-th odd prime + n-th odd nonprime)/2 - 1.

Offset 1, canonical program `A166160.P15900755279161251971`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A047845, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A166160 (n : ℕ) : ℤ :=
  A166160.P15900755279161251971.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A047845, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A166160.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A166253.P5914858087420238864

`(A136692(n)%3+n)%2`
-/

namespace A166253.P5914858087420238864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.tmod (A136692 n) 3 + (n : ℤ)) 2

end

end A166253.P5914858087420238864

noncomputable section

/-- A166253: String substitution 0 -> 01110, 1 -> 10001, started with 1.

Offset 1, canonical program `A166253.P5914858087420238864`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A166253 (n : ℕ) : ℤ :=
  A166253.P5914858087420238864.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A166253.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A166257.P1728091732200163006

`A139270(n+1)-1`
-/

namespace A166257.P1728091732200163006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139270 (n + 1) - 1

end

end A166257.P1728091732200163006

noncomputable section

/-- A166257: Odd numbers not of the form prime(k) + phi(prime(k)).

Offset 1, canonical program `A166257.P1728091732200163006`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A166257 (n : ℕ) : ℤ :=
  A166257.P1728091732200163006.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A166257.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A166362.P15440525138620438344

`A000010(A018252(n+1))`
-/

namespace A166362.P15440525138620438344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A018252 (n + 1)).toNat

end

end A166362.P15440525138620438344

noncomputable section

/-- A166362: a(n) = phi(nonprime(n)).

Offset 1, canonical program `A166362.P15440525138620438344`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A018252, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A166362 (n : ℕ) : ℤ :=
  A166362.P15440525138620438344.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A018252, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A166362.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A166453.P9942445130292987402

`A001316(A025581(n))*A047999(n)`
-/

namespace A166453.P9942445130292987402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 (A025581 n).toNat * A047999 n

end

end A166453.P9942445130292987402

noncomputable section

/-- A166453: Triangle read by rows, square of Sierpinski's gasket, (A047999)^2.

Offset 0, canonical program `A166453.P9942445130292987402`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A166453 (n : ℕ) : ℤ :=
  A166453.P9942445130292987402.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A166453.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A166457.P7545271108684484344

`A102546(n+1)/10`
-/

namespace A166457.P7545271108684484344
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A102546 (n + 1) : ℚ) / 10

end

end A166457.P7545271108684484344

noncomputable section

/-- A166457: Numbers n such that n*100+1 is prime.

Offset 1, canonical program `A166457.P7545271108684484344`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A166457 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A166457.P7545271108684484344.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A166457.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A166496.P5723234111422910770

`A089241(n+1)+A057428(n)`
-/

namespace A166496.P5723234111422910770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089241 (n + 1) + A057428 n

end

end A166496.P5723234111422910770

noncomputable section

/-- A166496: Prime plus the next composite.

Offset 1, canonical program `A166496.P5723234111422910770`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A166496 (n : ℕ) : ℤ :=
  A166496.P5723234111422910770.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A166496.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A166574.P5760661758022436118

`p?[A013635(n+3)]`
-/

namespace A166574.P5760661758022436118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013635 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A166574.P5760661758022436118

noncomputable section

/-- A166574: If p, q are successive primes, and there is a number k with p < k <= q such that r = p+k is a prime, then r is in the sequence.

Offset 1, canonical program `A166574.P5760661758022436118`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A166574 (n : ℕ) : ℤ :=
  A166574.P5760661758022436118.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A166574.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A166588.P6229897388527750775

`∑[A097331(n)]`
-/

namespace A166588.P6229897388527750775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097331 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A166588.P6229897388527750775

noncomputable section

/-- A166588: Partial sums of A097331; binomial transform of A166587.

Offset 0, canonical program `A166588.P6229897388527750775`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 345 terms. -/
def A166588 (n : ℕ) : ℤ :=
  A166588.P6229897388527750775.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 345 terms. -/
def A166588.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A166653.P16103000005196691296

`∏{d}[n+1, A004273(A004273(A120007(#))+1)]`
-/

namespace A166653.P16103000005196691296
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), A004273 (A004273 (A120007 d).toNat + 1).toNat

end

end A166653.P16103000005196691296

noncomputable section

/-- A166653: Totally multiplicative sequence with a(p) = 4p-1 for prime p.

Offset 1, canonical program `A166653.P16103000005196691296`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5002 terms. -/
def A166653 (n : ℕ) : ℤ :=
  A166653.P16103000005196691296.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5002 terms. -/
def A166653.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A166661.P3421275520976742187

`∏{d}[n+1, 3*A120007(#)+1]`
-/

namespace A166661.P3421275520976742187
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), (3 * A120007 d + 1)

end

end A166661.P3421275520976742187

noncomputable section

/-- A166661: Totally multiplicative sequence with a(p) = 3p+1 for prime p.

Offset 1, canonical program `A166661.P3421275520976742187`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A166661 (n : ℕ) : ℤ :=
  A166661.P3421275520976742187.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A166661.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A166662.P6981319434609647440

`∏{d}[n+1, 4*A120007(#)+1]`
-/

namespace A166662.P6981319434609647440
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), (4 * A120007 d + 1)

end

end A166662.P6981319434609647440

noncomputable section

/-- A166662: Totally multiplicative sequence with a(p) = 4p+1 for prime p.

Offset 1, canonical program `A166662.P6981319434609647440`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A166662 (n : ℕ) : ℤ :=
  A166662.P6981319434609647440.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A166662.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A166666.P16984493858278454942

`∏{d}[n+1, A017077(A120007(#))]`
-/

namespace A166666.P16984493858278454942
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), A017077 (A120007 d).toNat

end

end A166666.P16984493858278454942

noncomputable section

/-- A166666: Totally multiplicative sequence with a(p) = 8p+1 for prime p.

Offset 1, canonical program `A166666.P16984493858278454942`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A166666 (n : ℕ) : ℤ :=
  A166666.P16984493858278454942.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A166666.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A166685.P7030529592364102208

`record[A093178(A166037(n+1))]`
-/

namespace A166685.P7030529592364102208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 (A166037 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A166685.P7030529592364102208

noncomputable section

/-- A166685: Odd numbers that are the sum of two consecutive nonprimes.

Offset 1, canonical program `A166685.P7030529592364102208`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A166685 (n : ℕ) : ℤ :=
  A166685.P7030529592364102208.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A166685.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A166724.P18330365380709594796

`A000720(A166546(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A166724.P18330365380709594796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A166546 (n + 1)).toNat

end

end A166724.P18330365380709594796

noncomputable section

/-- A166724: a(n) = PrimePi(A166546(n)).

Offset 1, canonical program `A166724.P18330365380709594796`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A166546, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A166724 (n : ℕ) : ℤ :=
  A166724.P18330365380709594796.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A166546, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A166724.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A167050.P11328404290735128714

`record[A007913(A165256(n+1))]`
-/

namespace A167050.P11328404290735128714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A165256 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A167050.P11328404290735128714

noncomputable section

/-- A167050: Squarefree numbers with as many decimal digits as distinct prime factors.

Offset 1, canonical program `A167050.P11328404290735128714`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1462 terms. -/
def A167050 (n : ℕ) : ℤ :=
  A167050.P11328404290735128714.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1462 terms. -/
def A167050.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A167366.P4537059373881404542

`A131127(n)%4`
-/

namespace A167366.P4537059373881404542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A131127 n) 4

end

end A167366.P4537059373881404542

noncomputable section

/-- A167366: Triangle read by rows, 2*A047999 - A097806 (signed) = twice Sierpinski's gasket - the signed pair sum operator.

Offset 0, canonical program `A167366.P4537059373881404542`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A167366 (n : ℕ) : ℤ :=
  A167366.P4537059373881404542.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A167366.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A167371.P11386683783594765593

`round(1/A130303(n+1))`
-/

namespace A167371.P11386683783594765593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (1 / (A130303 (n + 1) : ℚ))

end

end A167371.P11386683783594765593

noncomputable section

/-- A167371: Triangle, read by rows, given by [0,1,-1,0,0,0,0,0,0,0,0,...] DELTA [1,0,-1,1,0,0,0,0,0,0,0,...] where DELTA is the operator defined in A084938.

Offset 0, canonical program `A167371.P11386683783594765593`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A167371 (n : ℕ) : ℤ :=
  A167371.P11386683783594765593.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A167371.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A167611.P18150780174357713727

`filter[A166037(n+1), A005171(#)]`
-/

namespace A167611.P18150780174357713727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166037 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A167611.P18150780174357713727

noncomputable section

/-- A167611: Nonprimes that are the sum of two consecutive nonprimes.

Offset 1, canonical program `A167611.P18150780174357713727`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7872 terms. -/
def A167611 (n : ℕ) : ℤ :=
  A167611.P18150780174357713727.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7872 terms. -/
def A167611.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A167877.P15007258767365749686

`A005823(A081611(n))-n`
-/

namespace A167877.P15007258767365749686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005823 (A081611 n).toNat - (n : ℤ)

end

end A167877.P15007258767365749686

noncomputable section

/-- A167877: Largest m<=n such that no carry occurs when adding m to n in ternary arithmetic.

Offset 0, canonical program `A167877.P15007258767365749686`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A167877 (n : ℕ) : ℤ :=
  A167877.P15007258767365749686.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A167877.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A168060.P1286338243596023875

`lt[A010816(A142150(n)), A010816(n)]`
-/

namespace A168060.P1286338243596023875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010816 (A142150 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010816 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A168060.P1286338243596023875

noncomputable section

/-- A168060: Denominators of ((n+2)/(n+1)/n) (sorted with no repeats) for n >= 1.

Offset 1, canonical program `A168060.P1286338243596023875`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 120 terms. -/
def A168060 (n : ℕ) : ℤ :=
  (A168060.P1286338243596023875.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 120 terms. -/
def A168060.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A168255.P269391709555101397

`∑[char[A051349(n)]]`
-/

namespace A168255.P269391709555101397
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051349 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168255.P269391709555101397

noncomputable section

/-- A168255: n appears n-th nonprime number times.

Offset 1, canonical program `A168255.P269391709555101397`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A168255 (n : ℕ) : ℤ :=
  (A168255.P269391709555101397.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A168255.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A168517.P3987419255871127776

`A008292(n+1)+A060187(n+1)-A141689(n+1)`
-/

namespace A168517.P3987419255871127776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008292 (n + 1) + (A060187 (n + 1) - A141689 (n + 1))

end

end A168517.P3987419255871127776

noncomputable section

/-- A168517: Expansion of g.f. (1/2)*( a*(1+x)^n + b*(1-x)^(n+2)*LerchPhi(x, -n-1, 1) + c*2^(n+1)*(1-x)^(n+1)*LerchPhi(x, -n, 1/2) ), where a = -1, b = 1, and c = 1, read by rows.

Offset 0, canonical program `A168517.P3987419255871127776`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1916 terms. -/
def A168517 (n : ℕ) : ℤ :=
  A168517.P3987419255871127776.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1916 terms. -/
def A168517.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A168567.P3820506037250447474

`A008333(n+1)+A008332(n+1)`
-/

namespace A168567.P3820506037250447474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008333 (n + 1) + A008332 (n + 1)

end

end A168567.P3820506037250447474

noncomputable section

/-- A168567: Sum of divisors (sigma(n)) of the prime's previous and next numbers.

Offset 1, canonical program `A168567.P3820506037250447474`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A168567 (n : ℕ) : ℤ :=
  A168567.P3820506037250447474.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A168567.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A169703.P13390613285210414476

`A160410(A110654(n))+A147582(A029579(n))`
-/

namespace A169703.P13390613285210414476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160410 (A110654 n).toNat + A147582 (A029579 n).toNat

end

end A169703.P13390613285210414476

noncomputable section

/-- A169703: Total number of ON cells at stage n of two-dimensional cellular automaton defined by "Rule 174".

Offset 0, canonical program `A169703.P13390613285210414476`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4050 terms. -/
def A169703 (n : ℕ) : ℤ :=
  A169703.P13390613285210414476.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4050 terms. -/
def A169703.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A169894.P10373684678199886542

`A002024(n+1)-gcd(11, A022166(n))`
-/

namespace A169894.P10373684678199886542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (n + 1) - (Int.gcd 11 (A022166 n) : ℤ)

end

end A169894.P10373684678199886542

noncomputable section

/-- A169894: Table of carryless sums i + j, i>=0, j>=0, read by antidiagonals.

Offset 0, canonical program `A169894.P10373684678199886542`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 719 terms. -/
def A169894 (n : ℕ) : ℤ :=
  A169894.P10373684678199886542.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 719 terms. -/
def A169894.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A169900.P3190041805646799674

`A003418(n)*A048671(n+1)`
-/

namespace A169900.P3190041805646799674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003418 n * A048671 (n + 1)

end

end A169900.P3190041805646799674

noncomputable section

/-- A169900: Earliest sequence such that xy | a(x+y) for all x>=1, y>=1.

Offset 1, canonical program `A169900.P3190041805646799674`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 229 terms. -/
def A169900 (n : ℕ) : ℤ :=
  A169900.P3190041805646799674.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 229 terms. -/
def A169900.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A171152.P12159337980299993144

`A000217(n+1)+A060432(n+1)+A000217(n+1)`
-/

namespace A171152.P12159337980299993144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 1) + (A060432 (n + 1) + A000217 (n + 1))

end

end A171152.P12159337980299993144

noncomputable section

/-- A171152: Partial sums of A118011.

Offset 1, canonical program `A171152.P12159337980299993144`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A171152 (n : ℕ) : ℤ :=
  A171152.P12159337980299993144.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A171152.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A171232.P120387607848267038

`A004277(A003988(n+1)*A077049(n+1))-A077049(n+1)`
-/

namespace A171232.P120387607848267038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A003988 (n + 1) * A077049 (n + 1)).toNat - A077049 (n + 1)

end

end A171232.P120387607848267038

noncomputable section

/-- A171232: Array read by antidiagonals, T(n,k) = 2*(n/k) - 1, if n mod k = 0; otherwise, T(n,k) = 1.

Offset 1, canonical program `A171232.P120387607848267038`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A171232 (n : ℕ) : ℤ :=
  A171232.P120387607848267038.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A171232.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A171262.P14994919271324457303

`eq[2*A000010(n+2), A000010(n+1)]+1`
-/

namespace A171262.P14994919271324457303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000010 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A171262.P14994919271324457303

noncomputable section

/-- A171262: Numbers k such that phi(k) = 2*phi(k+1).

Offset 1, canonical program `A171262.P14994919271324457303`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 389 terms. -/
def A171262 (n : ℕ) : ℤ :=
  (A171262.P14994919271324457303.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 389 terms. -/
def A171262.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A171491.P10077374648140217857

`comp[A098952(n+1)]`
-/

namespace A171491.P10077374648140217857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098952 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A171491.P10077374648140217857

noncomputable section

/-- A171491: Natural numbers not divisible by their number of decimal digits.

Offset 1, canonical program `A171491.P10077374648140217857`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A171491 (n : ℕ) : ℤ :=
  (A171491.P10077374648140217857.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A171491.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A171523.P12339869199135669520

`(n+1)*Δ[A051349(n)]`
-/

namespace A171523.P12339869199135669520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051349 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (f1 (n + 1) - f1 n)

end

end A171523.P12339869199135669520

noncomputable section

/-- A171523: a(n) = n*(n-th nonprime number).

Offset 1, canonical program `A171523.P12339869199135669520`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A171523 (n : ℕ) : ℤ :=
  A171523.P12339869199135669520.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A171523.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A171651.P1398147796533981043

`2*A171128(n)-A091867(n)`
-/

namespace A171651.P1398147796533981043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A171128 n - A091867 n

end

end A171651.P1398147796533981043

noncomputable section

/-- A171651: Triangle T, read by rows : T(n,k) = A007318(n,k)*A005773(n+1-k).

Offset 0, canonical program `A171651.P1398147796533981043`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A171651 (n : ℕ) : ℤ :=
  A171651.P1398147796533981043.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A171651.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A171710.P10509536871725326312

`A168380(∑[char[A168380(n+1)]]+1)+1`
-/

namespace A171710.P10509536871725326312
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168380 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168380 (∑ j ∈ Finset.range (n + 1), f1 j + 1) + 1

end

end A171710.P10509536871725326312

noncomputable section

/-- A171710: Union of A168234 and A171219, sorted.

Offset 1, canonical program `A171710.P10509536871725326312`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A171710 (n : ℕ) : ℤ :=
  A171710.P10509536871725326312.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A171710.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A171814.P9797681691333110312

`A099375(n)*A124644(n)`
-/

namespace A171814.P9797681691333110312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n * A124644 n

end

end A171814.P9797681691333110312

noncomputable section

/-- A171814: Triangle T : T(n,k)= A007318(n,k)*A001700(n-k).

Offset 0, canonical program `A171814.P9797681691333110312`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A171814 (n : ℕ) : ℤ :=
  A171814.P9797681691333110312.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A171814.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A171820.P15002892113044844994

`∪[A091178(n+1), A109119(n)]`
-/

namespace A171820.P15002892113044844994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091178 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109119 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A171820.P15002892113044844994

noncomputable section

/-- A171820: Numbers n such that the n-th prime is of the form 3k + 1/2 +- 1/2.

Offset 1, canonical program `A171820.P15002892113044844994`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A171820 (n : ℕ) : ℤ :=
  (A171820.P15002892113044844994.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A171820.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A171886.P2069845256079596505

`eq[0, A140513(n)%A008949(n)]`
-/

namespace A171886.P2069845256079596505
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A140513 n) (A008949 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A171886.P2069845256079596505

noncomputable section

/-- A171886: Numbers n such that A008949(n) is a power of 2.

Offset 1, canonical program `A171886.P2069845256079596505`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 356 terms. -/
def A171886 (n : ℕ) : ℤ :=
  (A171886.P2069845256079596505.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 356 terms. -/
def A171886.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A172063.P11418259923037975551

`A172062(n+1)-A172061(n+1)`
-/

namespace A172063.P11418259923037975551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172062 (n + 1) - A172061 (n + 1)

end

end A172063.P11418259923037975551

noncomputable section

/-- A172063: Expansion of (2/(3*sqrt(1-4*z)-1+4*z))*((1-sqrt(1-4*z))/(2*z))^k with k=6.

Offset 0, canonical program `A172063.P11418259923037975551`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A172063 (n : ℕ) : ℤ :=
  A172063.P11418259923037975551.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A172063.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A172090.P16523150407882409080

`C(A157458(n), C(A157458(n), 2))`
-/

namespace A172090.P16523150407882409080
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A157458 n).toNat (Nat.choose (A157458 n).toNat 2)

end

end A172090.P16523150407882409080

noncomputable section

/-- A172090: Triangle T(n, k) = f(n-k) + f(k) - f(n), where f(n) = -3*n with f(0) = 1, f(1) = -2, read by rows.

Offset 0, canonical program `A172090.P16523150407882409080`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. -/
def A172090 (n : ℕ) : ℤ :=
  (A172090.P16523150407882409080.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. -/
def A172090.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A172171.P2529637419829214897

`A093644(A099375(n)+1+n)`
-/

namespace A172171.P2529637419829214897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093644 (A099375 n + 1 + (n : ℤ)).toNat

end

end A172171.P2529637419829214897

noncomputable section

/-- A172171: (1, 9) Pascal Triangle read by horizontal rows. Same as A093644, but mirrored and without the additional row/column (1, 9, 9, 9, 9, ...).

Offset 1, canonical program `A172171.P2529637419829214897`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9730 terms. -/
def A172171 (n : ℕ) : ℤ :=
  A172171.P2529637419829214897.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9730 terms. -/
def A172171.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A172295.P9584074146213077135

`∑[p?[A015914(n+1)]]`
-/

namespace A172295.P9584074146213077135
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015914 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172295.P9584074146213077135

noncomputable section

/-- A172295: Partial sums of A023201.

Offset 1, canonical program `A172295.P9584074146213077135`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9993 terms. -/
def A172295 (n : ℕ) : ℤ :=
  A172295.P9584074146213077135.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9993 terms. -/
def A172295.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A172502.P9043156190337301137

`lcm(n+1, A061601(n+1)+n+1)/(n+1)`
-/

namespace A172502.P9043156190337301137
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (n + 1 : ℤ) (A061601 (n + 1) + (n + 1 : ℤ)) : ℚ) / (n + 1 : ℚ)

end

end A172502.P9043156190337301137

noncomputable section

/-- A172502: Denominator of fraction whose decimal representation has form 0.(n)(n)(n)...with repeating part n.

Offset 1, canonical program `A172502.P9043156190337301137`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A172502 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A172502.P9043156190337301137.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A172502.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A172515.P12895407565169366813

`A134868(Δ[A059563(3*n+4)])`
-/

namespace A172515.P12895407565169366813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059563 (3 * n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134868 (f1 (n + 1) - f1 n).toNat

end

end A172515.P12895407565169366813

noncomputable section

/-- A172515: First differences of A172513.

Offset 1, canonical program `A172515.P12895407565169366813`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A172515 (n : ℕ) : ℤ :=
  A172515.P12895407565169366813.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A172515.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A173025.P5198389285230754889

`eq[A048733(A048735(n)), A048735(n)]`
-/

namespace A173025.P5198389285230754889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048733 (A048735 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048735 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A173025.P5198389285230754889

noncomputable section

/-- A173025: Numbers whose binary representation contains no isolated digits "11".

Offset 1, canonical program `A173025.P5198389285230754889`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A173025 (n : ℕ) : ℤ :=
  (A173025.P5198389285230754889.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A173025.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A173178.P13841244607503590073

`3*A059325(n+1)+1`
-/

namespace A173178.P13841244607503590073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A059325 (n + 1) + 1

end

end A173178.P13841244607503590073

noncomputable section

/-- A173178: Numbers k such that 2*k+3 is a prime of the form 3*A024893(m) + 2.

Offset 1, canonical program `A173178.P13841244607503590073`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A059325, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A173178 (n : ℕ) : ℤ :=
  A173178.P13841244607503590073.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A059325, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A173178.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A173248.P13069274780353217509

`A173247(n)+A105810(A167499(n)-3)`
-/

namespace A173248.P13069274780353217509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173247 n + A105810 (A167499 n - 3).toNat

end

end A173248.P13069274780353217509

noncomputable section

/-- A173248: a(0) = -1, otherwise a(n) = (-1)^n*(n^3 - 15*n^2 + 2*n - 12)/6.

Offset 0, canonical program `A173248.P13069274780353217509`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 140 terms. -/
def A173248 (n : ℕ) : ℤ :=
  A173248.P13069274780353217509.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 140 terms. -/
def A173248.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A173284.P13127677157600122299

`A123231(A152204(n))`
-/

namespace A173284.P13127677157600122299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123231 (A152204 n).toNat

end

end A173284.P13127677157600122299

noncomputable section

/-- A173284: Triangle by columns, positive Fibonacci numbers in every column shifted down twice, for k > 0.

Offset 0, canonical program `A173284.P13127677157600122299`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A173284 (n : ℕ) : ℤ :=
  A173284.P13127677157600122299.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A173284.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A173539.P9511536219603571915

`(1-A077049(n+1))*A002260(n+1)`
-/

namespace A173539.P9511536219603571915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A077049 (n + 1)) * A002260 (n + 1)

end

end A173539.P9511536219603571915

noncomputable section

/-- A173539: Square array read by antidiagonals: T(n,k)=0 if k is a divisor of n, otherwise T(n,k)=k.

Offset 1, canonical program `A173539.P9511536219603571915`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A173539 (n : ℕ) : ℤ :=
  A173539.P9511536219603571915.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A173539.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A173667.P1180978088914052584

`A004216(n+1)-A199560(n)%A055642(n)`
-/

namespace A173667.P1180978088914052584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004216 (n + 1) - Int.tmod (A199560 n) (A055642 n)

end

end A173667.P1180978088914052584

noncomputable section

/-- A173667: Number of real zeros of the polynomial whose coefficients are the decimal expansion of n.

Offset 1, canonical program `A173667.P1180978088914052584`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A173667 (n : ℕ) : ℤ :=
  A173667.P1180978088914052584.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A173667.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A173683.P3255351781956052033

`A024934(n+1)+1-∑{p}[n+1, C(#, n)]+n`
-/

namespace A173683.P3255351781956052033
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024934 (n + 1) + (1 - ((∑ p ∈ Nat.primeFactors (f1 n), Nat.choose p n : ℕ) : ℤ) + (n : ℤ))

end

end A173683.P3255351781956052033

noncomputable section

/-- A173683: Sum of n mod p, for p = 2, 3, 5, ..., smallest prime >= n.

Offset 1, canonical program `A173683.P3255351781956052033`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A173683 (n : ℕ) : ℤ :=
  A173683.P3255351781956052033.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A173683.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A173786.P17698000632262255612

`A048645(n+2)`
-/

namespace A173786.P17698000632262255612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048645 (n + 2)

end

end A173786.P17698000632262255612

noncomputable section

/-- A173786: Triangle read by rows: T(n,k) = 2^n + 2^k, 0 <= k <= n.

Offset 0, canonical program `A173786.P17698000632262255612`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048645, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A173786 (n : ℕ) : ℤ :=
  A173786.P17698000632262255612.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048645, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A173786.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A173881.P1893856933433499034

`A007318(n)*A155865(n)`
-/

namespace A173881.P1893856933433499034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A155865 n

end

end A173881.P1893856933433499034

noncomputable section

/-- A173881: Triangle T(n,k) = k*binomial(n,k)*binomial(n-1,k) with T(n,0) = T(n,n) = 1, read by rows.

Offset 0, canonical program `A173881.P1893856933433499034`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. -/
def A173881 (n : ℕ) : ℤ :=
  A173881.P1893856933433499034.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. -/
def A173881.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A174035.P9243138014454562383

`floor(A141689(n+1)+A007318(n)/2)`
-/

namespace A174035.P9243138014454562383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A141689 (n + 1) : ℚ) + (A007318 n : ℚ) / 2⌋

end

end A174035.P9243138014454562383

noncomputable section

/-- A174035: Triangle read by rows: T(n,m) = binomial(n, m) + floor(Eulerian(n + 1, m)/2).

Offset 0, canonical program `A174035.P9243138014454562383`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2516 terms. -/
def A174035 (n : ℕ) : ℤ :=
  A174035.P9243138014454562383.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2516 terms. -/
def A174035.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A174126.P13474313142427055093

`A155865(n)²`
-/

namespace A174126.P13474313142427055093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155865 n ^ 2

end

end A174126.P13474313142427055093

noncomputable section

/-- A174126: Triangle T(n, k) = (n-k)^2 * binomial(n-1, k-1)^2 with T(n, 0) = T(n, n) = 1, read by rows.

Offset 0, canonical program `A174126.P13474313142427055093`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5151 terms. -/
def A174126 (n : ℕ) : ℤ :=
  A174126.P13474313142427055093.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5151 terms. -/
def A174126.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A174127.P6296285191855407287

`A155865(n)^3`
-/

namespace A174127.P6296285191855407287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155865 n ^ 3

end

end A174127.P6296285191855407287

noncomputable section

/-- A174127: Triangle T(n, k) = (n-k)^3 * binomial(n-1, k-1)^3 with T(n, 0) = T(n, n) = 1, read by rows.

Offset 0, canonical program `A174127.P6296285191855407287`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5151 terms. -/
def A174127 (n : ℕ) : ℤ :=
  A174127.P6296285191855407287.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5151 terms. -/
def A174127.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A174166.P8885773317569641825

`A034784(n+1)+1`
-/

namespace A174166.P8885773317569641825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034784 (n + 1) + 1

end

end A174166.P8885773317569641825

noncomputable section

/-- A174166: Composites n such that 2*n-1 is prime.

Offset 1, canonical program `A174166.P8885773317569641825`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A174166 (n : ℕ) : ℤ :=
  A174166.P8885773317569641825.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A174166.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A174223.P16110964862743191397

`A034961(A000720(2*n+1)+1)+2*n+1`
-/

namespace A174223.P16110964862743191397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034961 (A000720 (2 * n + 1) + 1).toNat + (2 * n + 1 : ℤ)

end

end A174223.P16110964862743191397

noncomputable section

/-- A174223: Add to 2n+1 the next three primes > 2n+1.

Offset 0, canonical program `A174223.P16110964862743191397`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A174223 (n : ℕ) : ℤ :=
  A174223.P16110964862743191397.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A174223.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A174373.P18021089655363768877

`A007918(A007318(n))`
-/

namespace A174373.P18021089655363768877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 (A007318 n).toNat

end

end A174373.P18021089655363768877

noncomputable section

/-- A174373: Triangle T(n,m) = nextprime(binomial(n,m)) read by rows.

Offset 0, canonical program `A174373.P18021089655363768877`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007918, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A174373 (n : ℕ) : ℤ :=
  A174373.P18021089655363768877.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007918, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A174373.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A174377.P13587580538317066246

`A108411(A157458(n))*A159623(n)`
-/

namespace A174377.P13587580538317066246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108411 (A157458 n).toNat * A159623 n

end

end A174377.P13587580538317066246

noncomputable section

/-- A174377: Triangle T(n, k) = n!*q^k/(n-k)! if floor(n/2) > k-1 otherwise n!*q^(n-k)/k!, with q = 3, read by rows.

Offset 0, canonical program `A174377.P13587580538317066246`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. -/
def A174377 (n : ℕ) : ℤ :=
  A174377.P13587580538317066246.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. -/
def A174377.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A174405.P5773883220253665986

`∑[A057660(n+1)]`
-/

namespace A174405.P5773883220253665986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057660 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174405.P5773883220253665986

noncomputable section

/-- A174405: Partial sums of Sum_{k=1..n} n/gcd(n,k), or partial sums of Sum_{d|n} d*phi(d) (see A057660).

Offset 1, canonical program `A174405.P5773883220253665986`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A174405 (n : ℕ) : ℤ :=
  A174405.P5773883220253665986.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A174405.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A174468.P1929796918282499277

`∑{d}[n+1, #*A007429(#)]`
-/

namespace A174468.P1929796918282499277
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A007429 d

end

end A174468.P1929796918282499277

noncomputable section

/-- A174468: a(n) = Sum_{d|n} d*sigma(n/d)*sigma(d).

Offset 1, canonical program `A174468.P1929796918282499277`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A174468 (n : ℕ) : ℤ :=
  A174468.P1929796918282499277.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A174468.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A174520.P16860900759774181259

`A045717(n+3)-A045717(n+1)`
-/

namespace A174520.P16860900759774181259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045717 (n + 3) - A045717 (n + 1)

end

end A174520.P16860900759774181259

noncomputable section

/-- A174520: Sum of all composite numbers in-between prime numbers p(n) and p(n+2).

Offset 1, canonical program `A174520.P16860900759774181259`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A174520 (n : ℕ) : ℤ :=
  A174520.P16860900759774181259.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A174520.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A174521.P15415351291785473139

`p?[A045717(n+3)-A045717(n+1)]`
-/

namespace A174521.P15415351291785473139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045717 (n + 3) - A045717 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A174521.P15415351291785473139

noncomputable section

/-- A174521: Primes that are the sum of all composite numbers in-between prime numbers p(n) and p(n+2).

Offset 1, canonical program `A174521.P15415351291785473139`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 176 terms. -/
def A174521 (n : ℕ) : ℤ :=
  A174521.P15415351291785473139.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 176 terms. -/
def A174521.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A174657.P17082722901622877186

`lt[A065363(n), 0]`
-/

namespace A174657.P17082722901622877186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065363 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A174657.P17082722901622877186

noncomputable section

/-- A174657: Balanced ternary numbers with more negative trits than positive trits.

Offset 1, canonical program `A174657.P17082722901622877186`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2645 terms. -/
def A174657 (n : ℕ) : ℤ :=
  (A174657.P17082722901622877186.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2645 terms. -/
def A174657.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A174659.P7843834769306507909

`lt[0, A065363(n)]`
-/

namespace A174659.P7843834769306507909
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065363 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A174659.P7843834769306507909

noncomputable section

/-- A174659: Numbers whose balanced ternary representation has more positive trits than negative trits.

Offset 1, canonical program `A174659.P7843834769306507909`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5782 terms. -/
def A174659 (n : ℕ) : ℤ :=
  (A174659.P7843834769306507909.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5782 terms. -/
def A174659.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A174695.P15433505935837686491

`A112632(n+1)-1`
-/

namespace A174695.P15433505935837686491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112632 (n + 1) - 1

end

end A174695.P15433505935837686491

noncomputable section

/-- A174695: Partial sums of A173950.

Offset 1, canonical program `A174695.P15433505935837686491`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A112632, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A174695 (n : ℕ) : ℤ :=
  A174695.P15433505935837686491.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A112632, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A174695.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A174834.P23583234180718487

`(A014473(n)+1)*A154843(A028310(n))`
-/

namespace A174834.P23583234180718487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A014473 n + 1) * A154843 (A028310 n).toNat

end

end A174834.P23583234180718487

noncomputable section

/-- A174834: Triangle read by rows: T(n,k) = (Stirling1(n,k) + Stirling1(n,n-k)) * binomial(n,k) with T(0,0)=1.

Offset 0, canonical program `A174834.P23583234180718487`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2154 terms. -/
def A174834 (n : ℕ) : ℤ :=
  A174834.P23583234180718487.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2154 terms. -/
def A174834.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A174912.P10765614382381412807

`(A168523(n)-A168524(n))²+1`
-/

namespace A174912.P10765614382381412807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A168523 n - A168524 n) ^ 2 + 1

end

end A174912.P10765614382381412807

noncomputable section

/-- A174912: Triangle read by rows: T(n, m) = 1 + (binomial(n, m) - Eulerian(n+1, m))^2.

Offset 0, canonical program `A174912.P10765614382381412807`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 879 terms. -/
def A174912 (n : ℕ) : ℤ :=
  A174912.P10765614382381412807.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 879 terms. -/
def A174912.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A174918.P17161499693219016145

`(A007318(n)-A022166(n))²+1`
-/

namespace A174918.P17161499693219016145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A007318 n - A022166 n) ^ 2 + 1

end

end A174918.P17161499693219016145

noncomputable section

/-- A174918: Triangle read by rows: T(n,k) = 1 + (A022166(n,k) - binomial(n,k))^2.

Offset 0, canonical program `A174918.P17161499693219016145`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 362 terms. -/
def A174918 (n : ℕ) : ℤ :=
  A174918.P17161499693219016145.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 362 terms. -/
def A174918.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A174980.P9143177174350052576

`A002487(A003817(n)-n)`
-/

namespace A174980.P9143177174350052576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (A003817 n - (n : ℤ)).toNat

end

end A174980.P9143177174350052576

noncomputable section

/-- A174980: Stern's diatomic series type ([0,1], 1).

Offset 0, canonical program `A174980.P9143177174350052576`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8191 terms. -/
def A174980 (n : ℕ) : ℤ :=
  A174980.P9143177174350052576.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8191 terms. -/
def A174980.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A175004.P13038235216757040563

`A035513(A066182(n+1)+1)-1`
-/

namespace A175004.P13038235216757040563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035513 (A066182 (n + 1) + 1).toNat - 1

end

end A175004.P13038235216757040563

noncomputable section

/-- A175004: Interspersion related to the Wythoff Array.

Offset 1, canonical program `A175004.P13038235216757040563`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 530 terms. -/
def A175004 (n : ℕ) : ℤ :=
  A175004.P13038235216757040563.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 530 terms. -/
def A175004.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A175308.P17929908493020829210

`eq[A260222(n+1), A270313(n+1)]`
-/

namespace A175308.P17929908493020829210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260222 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270313 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A175308.P17929908493020829210

noncomputable section

/-- A175308: Numbers k such that (Sum_{i=0..k} F(i)^2) / (k+1) is an integer, where F(i) is the i-th Fibonacci number.

Offset 1, canonical program `A175308.P17929908493020829210`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 845 terms. -/
def A175308 (n : ℕ) : ℤ :=
  (A175308.P17929908493020829210.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 845 terms. -/
def A175308.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A175744.P5492150925736287456

`2*A166629(A166629(p?[2*n+1]))`
-/

namespace A175744.P5492150925736287456
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A166629 (A166629 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))).toNat

end

end A175744.P5492150925736287456

noncomputable section

/-- A175744: Numbers with 34 divisors.

Offset 1, canonical program `A175744.P5492150925736287456`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 203 terms. -/
def A175744 (n : ℕ) : ℤ :=
  A175744.P5492150925736287456.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 203 terms. -/
def A175744.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A175917.P5961217577201396990

`A003817(n)-A175298(n)`
-/

namespace A175917.P5961217577201396990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003817 n - A175298 n

end

end A175917.P5961217577201396990

noncomputable section

/-- A175917: Convert n to binary. NOR each respective digit of binary n and binary A030101(n), where A030101(n) is the reversal of the order of the digits in the binary representation of n (given in decimal). a(n) is the decimal value of the result.

Offset 0, canonical program `A175917.P5961217577201396990`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A175917 (n : ℕ) : ℤ :=
  A175917.P5961217577201396990.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A175917.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A175920.P6563318181034372295

`A003817(n)-A175919(n)`
-/

namespace A175920.P6563318181034372295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003817 n - A175919 n

end

end A175920.P6563318181034372295

noncomputable section

/-- A175920: Convert n to binary. XNOR each respective digit of binary n and binary A030101(n), where A030101(n) is the reversal of the order of the digits in the binary representation of n (given in decimal). a(n) is the decimal value of the result.

Offset 0, canonical program `A175920.P6563318181034372295`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A175920 (n : ℕ) : ℤ :=
  A175920.P6563318181034372295.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A175920.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A175967.P17254181130027743458

`A051349(n)+1`
-/

namespace A175967.P17254181130027743458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051349 n + 1

end

end A175967.P17254181130027743458

noncomputable section

/-- A175967: Lexicographically earliest sequence with first differences as increasing sequence of nonprimes A018252.

Offset 1, canonical program `A175967.P17254181130027743458`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A175967 (n : ℕ) : ℤ :=
  A175967.P17254181130027743458.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A175967.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A175992.P4475088882485289309

`and(A051731(n+1), A071762(n))`
-/

namespace A175992.P4475088882485289309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A051731 (n + 1)) (A071762 n)

end

end A175992.P4475088882485289309

noncomputable section

/-- A175992: Triangle T(n,k) read by rows. If n=k then 0, else if k divides n then 1 else 0.

Offset 1, canonical program `A175992.P4475088882485289309`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5151 terms. -/
def A175992 (n : ℕ) : ℤ :=
  A175992.P4475088882485289309.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5151 terms. -/
def A175992.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A176126.P10682719046826631091

`A064038(n+1)-and(2, -n)!`
-/

namespace A176126.P10682719046826631091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064038 (n + 1) - (Nat.factorial (Int.land 2 (-(n : ℤ))).toNat : ℤ)

end

end A176126.P10682719046826631091

noncomputable section

/-- A176126: Numerator of -A127276(n)/A001788(n).

Offset 0, canonical program `A176126.P10682719046826631091`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A176126 (n : ℕ) : ℤ :=
  A176126.P10682719046826631091.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A176126.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A176231.P2236781922509874742

`A096713(lt[0, floor(sqrt(4*n+1))%2])`
-/

namespace A176231.P2236781922509874742
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.sqrt (4 * n + 1) % 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096713 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A176231.P2236781922509874742

noncomputable section

/-- A176231: Coefficient array of orthogonal polynomials whose moment sequence is the double factorial numbers A001147.

Offset 0, canonical program `A176231.P2236781922509874742`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1773 terms. -/
def A176231 (n : ℕ) : ℤ :=
  A176231.P2236781922509874742.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1773 terms. -/
def A176231.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A176292.P6728800770954373532

`eq[0, Δ[A062502(n+1)]]`
-/

namespace A176292.P6728800770954373532
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062502 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A176292.P6728800770954373532

noncomputable section

/-- A176292: Numbers k such that the prime factorizations of composite(k) and composite(k+1) have the same number of primes (including multiplicities).

Offset 1, canonical program `A176292.P6728800770954373532`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A176292 (n : ℕ) : ℤ :=
  (A176292.P6728800770954373532.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A176292.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A176342.P5272575056289982246

`A000010(A166546(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A176342.P5272575056289982246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A166546 (n + 1)).toNat

end

end A176342.P5272575056289982246

noncomputable section

/-- A176342: Phi(A166546(n)).

Offset 1, canonical program `A176342.P5272575056289982246`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A166546, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A176342 (n : ℕ) : ℤ :=
  A176342.P5272575056289982246.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A166546, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A176342.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A176405.P11128722629887834534

`and(1, A010876(A242603(2*n+1+n)-1))`
-/

namespace A176405.P11128722629887834534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A010876 (A242603 (2 * n + 1 + n) - 1).toNat)

end

end A176405.P11128722629887834534

noncomputable section

/-- A176405: Fixed point of morphism 0->0100110, 1->0110110.

Offset 0, canonical program `A176405.P11128722629887834534`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3335 terms. -/
def A176405 (n : ℕ) : ℤ :=
  A176405.P11128722629887834534.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3335 terms. -/
def A176405.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A176420.P16704905755318038212

`A022166(n)-A014473(n)`
-/

namespace A176420.P16704905755318038212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022166 n - A014473 n

end

end A176420.P16704905755318038212

noncomputable section

/-- A176420: Triangle read by rows: T(n,k) = 1 + (q-binomial coefficient [n,k] for q=2) - binomial(n,k).

Offset 0, canonical program `A176420.P16704905755318038212`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 719 terms. -/
def A176420 (n : ℕ) : ℤ :=
  A176420.P16704905755318038212.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 719 terms. -/
def A176420.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A176797.P15933715331666775231

`A158274(eq[1, A158275(n+1)]+1)`
-/

namespace A176797.P15933715331666775231
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158275 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158274 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A176797.P15933715331666775231

noncomputable section

/-- A176797: Antiharmonic means of divisors of antiharmonic numbers.

Offset 1, canonical program `A176797.P15933715331666775231`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 175 terms. -/
def A176797 (n : ℕ) : ℤ :=
  A176797.P15933715331666775231.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 175 terms. -/
def A176797.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A176842.P18407075080678213704

`a(n-A000010(∑{e}[n+1, #]))+1` with `a(0)=0`
-/

namespace A176842.P18407075080678213704
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a ((n : ℤ) - A000010 (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)).toNat + 1

end

end A176842.P18407075080678213704

noncomputable section

/-- A176842: The number of iterations of the map x -> x - phi(bigomega(x)) needed to reach 1 starting at x=n.

Offset 1, canonical program `A176842.P18407075080678213704`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A176842 (n : ℕ) : ℤ :=
  (A176842.P18407075080678213704.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A176842.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A177018.P4979215577074210027

`∑[A100820(n+1)]+3`
-/

namespace A177018.P4979215577074210027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100820 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 3

end

end A177018.P4979215577074210027

noncomputable section

/-- A177018: a(n) is the smallest integer >= a(n-1) such that a(n) + A067076(n) + n-1 is an odd prime.

Offset 1, canonical program `A177018.P4979215577074210027`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A177018 (n : ℕ) : ℤ :=
  A177018.P4979215577074210027.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A177018.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A177052.P2975540966760511883

`A020725(lt[-A033880(n+1), A111775(n+1)])`
-/

namespace A177052.P2975540966760511883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A033880 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111775 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A177052.P2975540966760511883

noncomputable section

/-- A177052: Ceiling(n/2)-abundant numbers.

Offset 1, canonical program `A177052.P2975540966760511883`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2494 terms. -/
def A177052 (n : ℕ) : ℤ :=
  A177052.P2975540966760511883.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2494 terms. -/
def A177052.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A177121.P3320387375115592110

`A035214(n+1)-A127093(A099375(n)+1+n)`
-/

namespace A177121.P3320387375115592110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035214 (n + 1) - A127093 (A099375 n + 1 + (n : ℤ)).toNat

end

end A177121.P3320387375115592110

noncomputable section

/-- A177121: Square array T(n,k) read by antidiagonals up: T(n,k) = 1 if n=1; otherwise if n divides k then T(n,k) = -n+1; otherwise T(n,k) = 1.

Offset 1, canonical program `A177121.P3320387375115592110`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A177121 (n : ℕ) : ℤ :=
  A177121.P3320387375115592110.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A177121.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A177492.P17512611008382585647

`A120944(n+1)²`
-/

namespace A177492.P17512611008382585647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120944 (n + 1) ^ 2

end

end A177492.P17512611008382585647

noncomputable section

/-- A177492: Products of squares of 2 or more distinct primes.

Offset 1, canonical program `A177492.P17512611008382585647`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A120944, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A177492 (n : ℕ) : ℤ :=
  A177492.P17512611008382585647.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A120944, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A177492.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A177493.P9951410185934880408

`A120944(n+1)^3`
-/

namespace A177493.P9951410185934880408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120944 (n + 1) ^ 3

end

end A177493.P9951410185934880408

noncomputable section

/-- A177493: Products of cubes of 2 or more distinct primes.

Offset 1, canonical program `A177493.P9951410185934880408`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A120944, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A177493 (n : ℕ) : ℤ :=
  A177493.P9951410185934880408.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A120944, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A177493.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A177853.P6963506388651497221

`∑[∑[A140434(n+1)]]`
-/

namespace A177853.P6963506388651497221
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140434 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A177853.P6963506388651497221

noncomputable section

/-- A177853: Partial sums of A018805.

Offset 1, canonical program `A177853.P6963506388651497221`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A177853 (n : ℕ) : ℤ :=
  A177853.P6963506388651497221.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A177853.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A178059.P15288762009250662244

`A005811(A008292(n+1))`
-/

namespace A178059.P15288762009250662244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 (A008292 (n + 1)).toNat

end

end A178059.P15288762009250662244

noncomputable section

/-- A178059: Triangle read by rows: Number of 1's in the Gray code of Eulerian(n,m), 1<=m<=n.

Offset 1, canonical program `A178059.P15288762009250662244`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008292, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A178059 (n : ℕ) : ℤ :=
  A178059.P15288762009250662244.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008292, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A178059.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A178138.P18314330425840706382

`∑[A014150(n+1)]`
-/

namespace A178138.P18314330425840706382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014150 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A178138.P18314330425840706382

noncomputable section

/-- A178138: Apply partial sum operator 4 times to primes.

Offset 1, canonical program `A178138.P18314330425840706382`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A178138 (n : ℕ) : ℤ :=
  A178138.P18314330425840706382.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A178138.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A178225.P3234126825915487550

`C(2, A175919(n))`
-/

namespace A178225.P3234126825915487550
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A175919 n).toNat

end

end A178225.P3234126825915487550

noncomputable section

/-- A178225: Characteristic function of A006995 (binary palindromes).

Offset 0, canonical program `A178225.P3234126825915487550`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A178225 (n : ℕ) : ℤ :=
  (A178225.P3234126825915487550.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A178225.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A178737.P7407555600141389909

`A010816(n)^3`
-/

namespace A178737.P7407555600141389909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010816 n ^ 3

end

end A178737.P7407555600141389909

noncomputable section

/-- A178737: Coefficients in expansion of Jacobi theta_1'''(0).

Offset 0, canonical program `A178737.P7407555600141389909`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A178737 (n : ℕ) : ℤ :=
  A178737.P7407555600141389909.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A178737.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A178914.P15550462812133884735

`A061601(n)+1`
-/

namespace A178914.P15550462812133884735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061601 n + 1

end

end A178914.P15550462812133884735

noncomputable section

/-- A178914: 10's complement of nonnegative numbers.

Offset 0, canonical program `A178914.P15550462812133884735`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A178914 (n : ℕ) : ℤ :=
  A178914.P15550462812133884735.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A178914.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A178952.P16316959360273851306

`A003991(n+1)-∏{e}[A036561(n), A117571(#)]`
-/

namespace A178952.P16316959360273851306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036561 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003991 (n + 1) - ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A117571 (Nat.factorization (f1 n).natAbs p)

end

end A178952.P16316959360273851306

noncomputable section

/-- A178952: T(n,k)=Log base 2 of the number of nXk binary arrays with no element equal to the modulo 2 sum of its king-move neighbors.

Offset 1, canonical program `A178952.P16316959360273851306`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 103 terms. -/
def A178952 (n : ℕ) : ℤ :=
  A178952.P16316959360273851306.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 103 terms. -/
def A178952.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A179208.P3750333226307364201

`A000040(eq[A159461((2*n)%(n+1)+1), A159461(n+2)]+1)`
-/

namespace A179208.P3750333226307364201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159461 (2 * n % (n + 1) + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159461 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A179208.P3750333226307364201

noncomputable section

/-- A179208: Primes prime(k) such that 2*prime(k) = prime(k-2) + prime(k+2).

Offset 1, canonical program `A179208.P3750333226307364201`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A179208 (n : ℕ) : ℤ :=
  A179208.P3750333226307364201.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A179208.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A179995.P15855146455058339385

`A101098(n+1)+3*A000584(n)`
-/

namespace A179995.P15855146455058339385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101098 (n + 1) + 3 * A000584 n

end

end A179995.P15855146455058339385

noncomputable section

/-- A179995: Generating function A(5,t)(1+t+t^2)/(1-t)^6, where A(5,t) is an Eulerian polynomial.

Offset 0, canonical program `A179995.P15855146455058339385`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A179995 (n : ℕ) : ℤ :=
  A179995.P15855146455058339385.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A179995.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A180054.P16889925413695154586

`lt[A001316(3*n), 2*a(and(n, n-1))]` with `a(0)=1`
-/

namespace A180054.P16889925413695154586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 (3 * n)

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f2 =>
  2 * f2 (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A180054.P16889925413695154586

noncomputable section

/-- A180054: In binary expansion, number of 1's in 3n is less than in n.

Offset 1, canonical program `A180054.P16889925413695154586`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4677 terms. -/
def A180054 (n : ℕ) : ℤ :=
  (A180054.P16889925413695154586.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4677 terms. -/
def A180054.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A180055.P17108974151974231138

`lt[A001316(5*n), A001316(n)]`
-/

namespace A180055.P17108974151974231138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 (5 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A180055.P17108974151974231138

noncomputable section

/-- A180055: Numbers k such that in binary expansion, the number of 1's in 5*k is less than the number of 1's in k.

Offset 1, canonical program `A180055.P17108974151974231138`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2211 terms. -/
def A180055 (n : ℕ) : ℤ :=
  (A180055.P17108974151974231138.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2211 terms. -/
def A180055.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A180304.P14450088933568604660

`(n+1)*Δ[A161187(n+1)-n]`
-/

namespace A180304.P14450088933568604660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161187 (n + 1) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (f1 (n + 1) - f1 n)

end

end A180304.P14450088933568604660

noncomputable section

/-- A180304: Sum of consecutive equal values of floor(sqrt(A000040(n))).

Offset 1, canonical program `A180304.P14450088933568604660`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A180304 (n : ℕ) : ℤ :=
  A180304.P14450088933568604660.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A180304.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A180637.P11947041617568078126

`dr(A179899(n+1))`
-/

namespace A180637.P11947041617568078126
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A179899 (n + 1))

end

end A180637.P11947041617568078126

noncomputable section

/-- A180637: Digital root of A179899.

Offset 1, canonical program `A180637.P11947041617568078126`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A180637 (n : ℕ) : ℤ :=
  (A180637.P11947041617568078126.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A180637.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A180648.P10189235092180966563

`eq[1, A193929(A000010(n+1))]+1`
-/

namespace A180648.P10189235092180966563
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193929 (A000010 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A180648.P10189235092180966563

noncomputable section

/-- A180648: Numbers k such that 1 + phi(k)^4 is a prime. Phi is Euler's totient function.

Offset 1, canonical program `A180648.P10189235092180966563`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1820 terms. -/
def A180648 (n : ℕ) : ℤ :=
  (A180648.P10189235092180966563.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1820 terms. -/
def A180648.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A181314.P4228565367849305824

`A057428(n)+A056498(n+1)`
-/

namespace A181314.P4228565367849305824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n + A056498 (n + 1)

end

end A181314.P4228565367849305824

noncomputable section

/-- A181314: a(n) = ADPE(n) is the total number of aperiodic k-double-palindromes of n up to cyclic equivalence, where 1 <= k <= n.

Offset 1, canonical program `A181314.P4228565367849305824`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 663 terms. -/
def A181314 (n : ℕ) : ℤ :=
  A181314.P4228565367849305824.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 663 terms. -/
def A181314.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A181520.P9935151336875506013

`A100661(p?[a(floor(n/2))+n])` with `a(0)=0`
-/

namespace A181520.P9935151336875506013
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 ⌊(n : ℚ) / 2⌋.toNat + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100661 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A181520.P9935151336875506013

noncomputable section

/-- A181520: 2*A181518(n)-A181516(n).

Offset 1, canonical program `A181520.P9935151336875506013`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A181520 (n : ℕ) : ℤ :=
  A181520.P9935151336875506013.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A181520.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A181766.P14155498567321335118

`lt[A156706(n+2), 1]`
-/

namespace A181766.P14155498567321335118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156706 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A181766.P14155498567321335118

noncomputable section

/-- A181766: Numbers k such that 3*k + 7 is not prime.

Offset 1, canonical program `A181766.P14155498567321335118`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A181766 (n : ℕ) : ℤ :=
  (A181766.P14155498567321335118.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A181766.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A181768.P15302864392847253434

`A055879(abs(1-2*n))`
-/

namespace A181768.P15302864392847253434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055879 |1 - (2 * n : ℤ)|.toNat

end

end A181768.P15302864392847253434

noncomputable section

/-- A181768: G.f.: (1/2)*(3 - sqrt((1-5*x)/(1-x))).

Offset 0, canonical program `A181768.P15302864392847253434`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 149 terms. -/
def A181768 (n : ℕ) : ℤ :=
  A181768.P15302864392847253434.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 149 terms. -/
def A181768.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A181923.P5871209756813184297

`Δ[A051349(n)]%2`
-/

namespace A181923.P5871209756813184297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051349 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) 2

end

end A181923.P5871209756813184297

noncomputable section

/-- A181923: Nonprimes (A018252) mod 2.

Offset 1, canonical program `A181923.P5871209756813184297`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A181923 (n : ℕ) : ℤ :=
  A181923.P5871209756813184297.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A181923.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A182126.P1631624918066832588

`A111071(n+1)%A004139(n+1)`
-/

namespace A182126.P1631624918066832588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A111071 (n + 1)) (A004139 (n + 1))

end

end A182126.P1631624918066832588

noncomputable section

/-- A182126: a(n) = prime(n)*prime(n+1) mod prime(n+2).

Offset 1, canonical program `A182126.P1631624918066832588`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A182126 (n : ℕ) : ℤ :=
  A182126.P1631624918066832588.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A182126.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A182349.P14070112260938002511

`A073373(n)+2*a(n-1)` with `a(0)=1`
-/

namespace A182349.P14070112260938002511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A073373 n + 2 * a (n - 1)

end

end A182349.P14070112260938002511

noncomputable section

/-- A182349: G.f.: exp( Sum_{n>=1} 6 * A084214(n) * x^n/n ) where g.f. of A084214 is (1+x^2)/((1+x)*(1-2*x)).

Offset 0, canonical program `A182349.P14070112260938002511`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 307 terms. -/
def A182349 (n : ℕ) : ℤ :=
  A182349.P14070112260938002511.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 307 terms. -/
def A182349.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A182459.P10129799007268171558

`A081615(n+1)-1`
-/

namespace A182459.P10129799007268171558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081615 (n + 1) - 1

end

end A182459.P10129799007268171558

noncomputable section

/-- A182459: a(n) is the number of initial persons such that the n-th person survives in the duck-duck-goose game.

Offset 1, canonical program `A182459.P10129799007268171558`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A081615, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A182459 (n : ℕ) : ℤ :=
  A182459.P10129799007268171558.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A081615, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A182459.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A182614.P10153390122333264557

`A128439(n+1)+1`
-/

namespace A182614.P10153390122333264557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128439 (n + 1) + 1

end

end A182614.P10153390122333264557

noncomputable section

/-- A182614: Least k such that floor(k/r^n)=n, where r = golden ratio = (1+sqrt(5))/2.

Offset 1, canonical program `A182614.P10153390122333264557`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 465 terms. -/
def A182614 (n : ℕ) : ℤ :=
  A182614.P10153390122333264557.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 465 terms. -/
def A182614.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A182816.P15538426458893494896

`∏{p}[n+1, gcd(n, A000010(#))+1]`
-/

namespace A182816.P15538426458893494896
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (Int.gcd (n : ℤ) (A000010 p) + 1)

end

end A182816.P15538426458893494896

noncomputable section

/-- A182816: Number of values b in Z/nZ such that b^n = b.

Offset 1, canonical program `A182816.P15538426458893494896`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A182816 (n : ℕ) : ℤ :=
  (A182816.P15538426458893494896.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A182816.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A183110.P12340529520489190935

`A128064(n)+a(n-1)` with `a(0)=1`
-/

namespace A183110.P12340529520489190935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A128064 n + a (n - 1)

end

end A183110.P12340529520489190935

noncomputable section

/-- A183110: Period-length of the ultimate periodic behavior of the orbit of a list [1,1,1,...,1] of n 1's under the mapping defined in the comments.

Offset 1, canonical program `A183110.P12340529520489190935`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A183110 (n : ℕ) : ℤ :=
  A183110.P12340529520489190935.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A183110.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A183126.P13932271397595957484

`record[A160410(A142150(n))+A004273(n)]`
-/

namespace A183126.P13932271397595957484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160410 (A142150 n).toNat + A004273 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183126.P13932271397595957484

noncomputable section

/-- A183126: Toothpick sequence with toothpicks connected by their endpoints.

Offset 0, canonical program `A183126.P13932271397595957484`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. -/
def A183126 (n : ℕ) : ℤ :=
  A183126.P13932271397595957484.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. -/
def A183126.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A184033.P5643691655713345315

`A184032(n+1)+21`
-/

namespace A184033.P5643691655713345315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184032 (n + 1) + 21

end

end A184033.P5643691655713345315

noncomputable section

/-- A184033: 1/16 the number of (n+1) X 4 0..3 arrays with all 2 X 2 subblocks having the same four values.

Offset 1, canonical program `A184033.P5643691655713345315`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 330 terms. -/
def A184033 (n : ℕ) : ℤ :=
  A184033.P5643691655713345315.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 330 terms. -/
def A184033.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A184041.P17722413965595698240

`A183980(n+3)+1`
-/

namespace A184041.P17722413965595698240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183980 (n + 3) + 1

end

end A184041.P17722413965595698240

noncomputable section

/-- A184041: 1/9 the number of (n+1) X 3 0..2 arrays with all 2 X 2 subblocks having the same four values.

Offset 1, canonical program `A184041.P17722413965595698240`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. -/
def A184041 (n : ℕ) : ℤ :=
  A184041.P17722413965595698240.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. -/
def A184041.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A184045.P13433366339287709500

`A183985(n+3)-5`
-/

namespace A184045.P13433366339287709500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183985 (n + 3) - 5

end

end A184045.P13433366339287709500

noncomputable section

/-- A184045: 1/9 the number of (n+1) X 7 0..2 arrays with all 2 X 2 subblocks having the same four values.

Offset 1, canonical program `A184045.P13433366339287709500`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. -/
def A184045 (n : ℕ) : ℤ :=
  A184045.P13433366339287709500.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. -/
def A184045.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A184362.P12277345138454522326

`(n+1)*Δ[A078616(abs(1-n))]`
-/

namespace A184362.P12277345138454522326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078616 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (f1 (n + 1) - f1 n)

end

end A184362.P12277345138454522326

noncomputable section

/-- A184362: G.f.: eta(x) + x*eta'(x).

Offset 0, canonical program `A184362.P12277345138454522326`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 419 terms. -/
def A184362 (n : ℕ) : ℤ :=
  A184362.P12277345138454522326.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 419 terms. -/
def A184362.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A184363.P2962500136500042189

`∑[A099375(n)]*A009531(A198954(n))`
-/

namespace A184363.P2962500136500042189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A009531 (A198954 n).toNat

end

end A184363.P2962500136500042189

noncomputable section

/-- A184363: G.f.: eta(x)^3*(1 + x*eta'(x)/eta(x)), where eta(x) is Dedekind's eta(q) function without the q^(1/24) factor.

Offset 0, canonical program `A184363.P2962500136500042189`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 219 terms. -/
def A184363 (n : ℕ) : ℤ :=
  A184363.P2962500136500042189.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 219 terms. -/
def A184363.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A184365.P16997047362946431375

`(1-n)*Δ[A078616(abs(1-n))]`
-/

namespace A184365.P16997047362946431375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078616 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (n : ℤ)) * (f1 (n + 1) - f1 n)

end

end A184365.P16997047362946431375

noncomputable section

/-- A184365: G.f.: eta(x) - x*eta'(x), where eta(x) is Dedekind's eta(q) function without the q^(1/24) factor.

Offset 0, canonical program `A184365.P16997047362946431375`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 837 terms. -/
def A184365 (n : ℕ) : ℤ :=
  A184365.P16997047362946431375.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 837 terms. -/
def A184365.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A184366.P5150101463797216766

`(3-n)/3*A010816(n)`
-/

namespace A184366.P5150101463797216766
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 - (n : ℤ) : ℚ) / 3 * (A010816 n : ℚ)

end

end A184366.P5150101463797216766

noncomputable section

/-- A184366: G.f.: eta(x)^3*(1 - x*eta'(x)/eta(x)), where eta(x) is Dedekind's eta(q) function without the q^(1/24) factor.

Offset 0, canonical program `A184366.P5150101463797216766`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. -/
def A184366 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A184366.P5150101463797216766.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. -/
def A184366.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A184881.P26239738405913723

`A068555(A055998(n))/A280560(n)`
-/

namespace A184881.P26239738405913723
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A068555 (A055998 n).toNat : ℚ) / (A280560 n : ℚ)

end

end A184881.P26239738405913723

noncomputable section

/-- A184881: a(n) = A184879(2*n, n) - A184879(2*n, n+1) where A184879(n, k) = Hypergeometric2F1(-2*k, 2*k-2*n, 1, -1) if 0<=k<=n.

Offset 0, canonical program `A184881.P26239738405913723`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 139 terms. -/
def A184881 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A184881.P26239738405913723.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 139 terms. -/
def A184881.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A185180.P8964455806358880815

`A064789(A038722(n+1))`
-/

namespace A185180.P8964455806358880815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064789 (A038722 (n + 1)).toNat

end

end A185180.P8964455806358880815

noncomputable section

/-- A185180: Enumeration table T(n,k) by antidiagonals. The order of the list is symmetrical movement from center to edges diagonal.

Offset 1, canonical program `A185180.P8964455806358880815`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9870 terms. -/
def A185180 (n : ℕ) : ℤ :=
  A185180.P8964455806358880815.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9870 terms. -/
def A185180.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A185269.P13063718111534956283

`p?[A005351(n)]`
-/

namespace A185269.P13063718111534956283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005351 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A185269.P13063718111534956283

noncomputable section

/-- A185269: The subsequence of primes, in order of occurrence, in A005351.

Offset 1, canonical program `A185269.P13063718111534956283`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A185269 (n : ℕ) : ℤ :=
  A185269.P13063718111534956283.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A185269.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A185271.P9882110103991236612

`A055025(n+2)-A055025(n+1)`
-/

namespace A185271.P9882110103991236612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055025 (n + 2) - A055025 (n + 1)

end

end A185271.P9882110103991236612

noncomputable section

/-- A185271: Differences between consecutive norms of Gaussian primes.

Offset 1, canonical program `A185271.P9882110103991236612`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A055025, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A185271 (n : ℕ) : ℤ :=
  A185271.P9882110103991236612.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A055025, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A185271.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A185712.P714070859971941151

`∑[A185706(n+1)]`
-/

namespace A185712.P714070859971941151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185706 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A185712.P714070859971941151

noncomputable section

/-- A185712: a(n) = number of primes <= n that end in 3.

Offset 1, canonical program `A185712.P714070859971941151`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A185712 (n : ℕ) : ℤ :=
  A185712.P714070859971941151.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A185712.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A185871.P8543721373781251179

`∑[A198954(A066182(n+1))+2]`
-/

namespace A185871.P8543721373781251179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198954 (A066182 (n + 1)).toNat + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A185871.P8543721373781251179

noncomputable section

/-- A185871: (Even,even)-polka dot array in the natural number array A000027, by antidiagonals.

Offset 1, canonical program `A185871.P8543721373781251179`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A185871 (n : ℕ) : ℤ :=
  A185871.P8543721373781251179.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A185871.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A185908.P15290961818141262910

`A002260(n+1)+val(A036561(n), 6)`
-/

namespace A185908.P15290961818141262910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) + (SequenceMachineLib.valuation (A036561 n).toNat 6 : ℤ)

end

end A185908.P15290961818141262910

noncomputable section

/-- A185908: Array: T(n,k) = n-1 + min{n,k}, by antidiagonals.

Offset 1, canonical program `A185908.P15290961818141262910`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A185908 (n : ℕ) : ℤ :=
  A185908.P15290961818141262910.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A185908.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A186037.P1859243056867817178

`A057427(n)+val(A257520(n), 2)`
-/

namespace A186037.P1859243056867817178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n + (SequenceMachineLib.valuation (A257520 n).toNat 2 : ℤ)

end

end A186037.P1859243056867817178

noncomputable section

/-- A186037: a(n) = log_2((1+A002426(n))/numerator((1+A002426(n))/2^n)).

Offset 0, canonical program `A186037.P1859243056867817178`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 214 terms. -/
def A186037 (n : ℕ) : ℤ :=
  A186037.P1859243056867817178.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 214 terms. -/
def A186037.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A186326.P9660484515861953398

`A186324(n+1)+char[A251963(n+1)]`
-/

namespace A186326.P9660484515861953398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251963 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186324 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A186326.P9660484515861953398

noncomputable section

/-- A186326: Adjusted joint rank sequence of (f(i)) and (g(j)) with f(i) after g(j) when f(i)=g(j), where f and g are the squares and octagonal numbers. Complement of A186327.

Offset 1, canonical program `A186326.P9660484515861953398`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A186326 (n : ℕ) : ℤ :=
  A186326.P9660484515861953398.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A186326.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A186396.P9270384960959991498

`eq[4, A038822(n)]`
-/

namespace A186396.P9270384960959991498
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038822 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A186396.P9270384960959991498

noncomputable section

/-- A186396: Numbers k such that there are 4 primes between 100*k and 100*k + 99.

Offset 1, canonical program `A186396.P9270384960959991498`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 372 terms. -/
def A186396 (n : ℕ) : ℤ :=
  (A186396.P9270384960959991498.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 372 terms. -/
def A186396.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A186397.P10717240694144090029

`eq[5, A038822(n)]`
-/

namespace A186397.P10717240694144090029
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038822 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A186397.P10717240694144090029

noncomputable section

/-- A186397: Numbers k such that there are 5 primes between 100*k and 100*k + 99.

Offset 1, canonical program `A186397.P10717240694144090029`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 801 terms. -/
def A186397 (n : ℕ) : ℤ :=
  (A186397.P10717240694144090029.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 801 terms. -/
def A186397.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A186398.P13833723901522807066

`eq[6, A038822(n)]`
-/

namespace A186398.P13833723901522807066
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038822 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A186398.P13833723901522807066

noncomputable section

/-- A186398: Numbers k such that there are 6 primes between 100*k and 100*k + 99.

Offset 1, canonical program `A186398.P13833723901522807066`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1362 terms. -/
def A186398 (n : ℕ) : ℤ :=
  (A186398.P13833723901522807066.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1362 terms. -/
def A186398.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A186399.P16215507080511579483

`eq[7, A038822(n)]`
-/

namespace A186399.P16215507080511579483
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038822 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A186399.P16215507080511579483

noncomputable section

/-- A186399: Numbers k such that there are 7 primes between 100*k and 100*k + 99.

Offset 1, canonical program `A186399.P16215507080511579483`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1765 terms. -/
def A186399 (n : ℕ) : ℤ :=
  (A186399.P16215507080511579483.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1765 terms. -/
def A186399.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A186400.P11758599787224733223

`eq[8, A038822(n)]`
-/

namespace A186400.P11758599787224733223
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038822 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A186400.P11758599787224733223

noncomputable section

/-- A186400: Numbers k such that there are 8 primes between 100*k and 100*k + 99.

Offset 1, canonical program `A186400.P11758599787224733223`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1821 terms. -/
def A186400 (n : ℕ) : ℤ :=
  (A186400.P11758599787224733223.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1821 terms. -/
def A186400.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A186401.P4089262343024343082

`eq[9, A038822(n)]`
-/

namespace A186401.P4089262343024343082
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038822 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A186401.P4089262343024343082

noncomputable section

/-- A186401: Numbers k such that there are 9 primes between 100*k and 100*k + 99.

Offset 1, canonical program `A186401.P4089262343024343082`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1554 terms. -/
def A186401 (n : ℕ) : ℤ :=
  (A186401.P4089262343024343082.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1554 terms. -/
def A186401.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A186402.P7756721520341911561

`eq[10, A038822(n)]`
-/

namespace A186402.P7756721520341911561
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038822 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A186402.P7756721520341911561

noncomputable section

/-- A186402: Numbers k such that there are 10 primes between 100*k and 100*k + 99.

Offset 1, canonical program `A186402.P7756721520341911561`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1058 terms. -/
def A186402 (n : ℕ) : ℤ :=
  (A186402.P7756721520341911561.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1058 terms. -/
def A186402.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A186403.P16845647133054184679

`eq[11, A038822(n)]`
-/

namespace A186403.P16845647133054184679
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038822 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A186403.P16845647133054184679

noncomputable section

/-- A186403: Numbers k such that there are 11 primes between 100*k and 100*k + 99.

Offset 1, canonical program `A186403.P16845647133054184679`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 592 terms. -/
def A186403 (n : ℕ) : ℤ :=
  (A186403.P16845647133054184679.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 592 terms. -/
def A186403.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A186404.P8566508972377476060

`eq[12, A038822(n)]`
-/

namespace A186404.P8566508972377476060
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038822 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A186404.P8566508972377476060

noncomputable section

/-- A186404: Numbers k such that there are 12 primes between 100*k and 100*k + 99.

Offset 1, canonical program `A186404.P8566508972377476060`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 316 terms. -/
def A186404 (n : ℕ) : ℤ :=
  (A186404.P8566508972377476060.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 316 terms. -/
def A186404.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A186405.P8956491586801803310

`eq[13, A038822(n)]`
-/

namespace A186405.P8956491586801803310
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038822 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A186405.P8956491586801803310

noncomputable section

/-- A186405: Numbers k such that there are 13 primes between 100*k and 100*k + 99.

Offset 1, canonical program `A186405.P8956491586801803310`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 122 terms. -/
def A186405 (n : ℕ) : ℤ :=
  (A186405.P8956491586801803310.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 122 terms. -/
def A186405.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A186826.P6773412279720560038

`A144944(A061579(n))`
-/

namespace A186826.P6773412279720560038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144944 (A061579 n).toNat

end

end A186826.P6773412279720560038

noncomputable section

/-- A186826: Riordan array (s(x),x*S(x)) where s(x) is the g.f. of the little Schroeder numbers A001003, and S(x) is the g.f. of the large Schroeder numbers A006318.

Offset 0, canonical program `A186826.P6773412279720560038`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8001 terms. -/
def A186826 (n : ℕ) : ℤ :=
  A186826.P6773412279720560038.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8001 terms. -/
def A186826.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A187038.P18235214902734965343

`abs(Δ[A274575(n)])`
-/

namespace A187038.P18235214902734965343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274575 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A187038.P18235214902734965343

noncomputable section

/-- A187038: Row sums of number triangle A187037.

Offset 0, canonical program `A187038.P18235214902734965343`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1026 terms. -/
def A187038 (n : ℕ) : ℤ :=
  A187038.P18235214902734965343.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1026 terms. -/
def A187038.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A187487.P4860417623296774577

`n*A002805(n+1)-A064169(n+1)`
-/

namespace A187487.P4860417623296774577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A002805 (n + 1) - A064169 (n + 1)

end

end A187487.P4860417623296774577

noncomputable section

/-- A187487: Numerator of n minus n-th harmonic number.

Offset 1, canonical program `A187487.P4860417623296774577`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 228 terms. -/
def A187487 (n : ℕ) : ℤ :=
  A187487.P4860417623296774577.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 228 terms. -/
def A187487.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A187555.P808605712727958012

`A180013(n+1)/A002024(n+1)*A028310(A014473(n)+1)`
-/

namespace A187555.P808605712727958012
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A180013 (n + 1) : ℚ) / (A002024 (n + 1) : ℚ) * (A028310 (A014473 n + 1).toNat : ℚ)

end

end A187555.P808605712727958012

noncomputable section

/-- A187555: Triangle read by rows, defined by T(n,k)=binomial(n,k)*|Stirling1(n,k)|, 0<=k<=n.

Offset 0, canonical program `A187555.P808605712727958012`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 143 terms. -/
def A187555 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A187555.P808605712727958012.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 143 terms. -/
def A187555.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A187677.P9791756543765287417

`∩[A091823(n+1), A065384(n+2)]`
-/

namespace A187677.P9791756543765287417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091823 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065384 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A187677.P9791756543765287417

noncomputable section

/-- A187677: Primes of the form 8*k^2 + 6*k - 1 for positive k.

Offset 1, canonical program `A187677.P9791756543765287417`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 748 terms. -/
def A187677 (n : ℕ) : ℤ :=
  (A187677.P9791756543765287417.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 748 terms. -/
def A187677.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A187767.P2032594768100003987

`A127804(n)-1`
-/

namespace A187767.P2032594768100003987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127804 n - 1

end

end A187767.P2032594768100003987

noncomputable section

/-- A187767: Number of bicolored cyclic patterns n X n.

Offset 1, canonical program `A187767.P2032594768100003987`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 200 terms. -/
def A187767 (n : ℕ) : ℤ :=
  A187767.P2032594768100003987.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 200 terms. -/
def A187767.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A187915.P10262871046590375420

`A088211(n+1)+A054459(n)`
-/

namespace A187915.P10262871046590375420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088211 (n + 1) + A054459 n

end

end A187915.P10262871046590375420

noncomputable section

/-- A187915: a(n) = (1/2)*((n+2)*P(n-1)+(5*n+1)*P(n)) where P() = A000129 are the Pell numbers.

Offset 1, canonical program `A187915.P10262871046590375420`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 255 terms. -/
def A187915 (n : ℕ) : ℤ :=
  A187915.P10262871046590375420.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 255 terms. -/
def A187915.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A187917.P7491758766845615620

`A054459(n)-A054447(n)`
-/

namespace A187917.P7491758766845615620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054459 n - A054447 n

end

end A187917.P7491758766845615620

noncomputable section

/-- A187917: a(n) = (1/4)*(5*(n-1)*P(n)+n*P(n-1)) where P() are the Pell numbers A000129.

Offset 1, canonical program `A187917.P7491758766845615620`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 255 terms. -/
def A187917 (n : ℕ) : ℤ :=
  A187917.P7491758766845615620.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 255 terms. -/
def A187917.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A187954.P4208797145457920853

`A127093(A185868(n+1))`
-/

namespace A187954.P4208797145457920853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127093 (A185868 (n + 1)).toNat

end

end A187954.P4208797145457920853

noncomputable section

/-- A187954: Triangle by rows, divisors of odd integers.

Offset 0, canonical program `A187954.P4208797145457920853`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. -/
def A187954 (n : ℕ) : ℤ :=
  A187954.P4208797145457920853.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. -/
def A187954.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A187968.P16318789548881380579

`A097508(A008619(n))+1+n`
-/

namespace A187968.P16318789548881380579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097508 (A008619 n).toNat + 1 + (n : ℤ)

end

end A187968.P16318789548881380579

noncomputable section

/-- A187968: Positions of 1 in A187967; complement (conjectured) of A098021.

Offset 1, canonical program `A187968.P16318789548881380579`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A187968 (n : ℕ) : ℤ :=
  A187968.P16318789548881380579.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A187968.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A188044.P4047038708681566993

`and(1, Δ[n-A187969(a(n-1)+1)])` with `a(0)=2`
-/

namespace A188044.P4047038708681566993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  (n : ℤ) - A187969 (f1 (n - 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (f1 (n + 1) - f1 n)

end

end A188044.P4047038708681566993

noncomputable section

/-- A188044: a(n) = [n*r] - [k*r] - [n*r-k*r], where r=sqrt(2), k=4, [ ]=floor.

Offset 1, canonical program `A188044.P4047038708681566993`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188044 (n : ℕ) : ℤ :=
  A188044.P4047038708681566993.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188044.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A188075.P9684796969811370760

`4*A188069(n+1)-n`
-/

namespace A188075.P9684796969811370760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A188069 (n + 1) - (n : ℤ)

end

end A188075.P9684796969811370760

noncomputable section

/-- A188075: Positions of 0 in the zero-one sequence [n*r]-[4*r]-[n*r-4*r], where r=sqrt(3), n>=1.

Offset 1, canonical program `A188075.P9684796969811370760`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188075 (n : ℕ) : ℤ :=
  A188075.P9684796969811370760.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188075.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A188093.P14427247559921833927

`A188090(a(n-1)+n+1)` with `a(0)=1`
-/

namespace A188093.P14427247559921833927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A188090 (a (n - 1) + (n + 1 : ℤ)).toNat

end

end A188093.P14427247559921833927

noncomputable section

/-- A188093: [nr+kr]-[nr]-[kr], where r=sqrt(3), k=6, [ ]=floor.

Offset 1, canonical program `A188093.P14427247559921833927`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A188093 (n : ℕ) : ℤ :=
  A188093.P14427247559921833927.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A188093.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A188192.P16228618120579595901

`A188189(a(n-3)+n)` with `a(0)=1, a(1)=1, a(2)=0`
-/

namespace A188192.P16228618120579595901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 0] fun n a =>
  A188189 (a (n - 3) + (n : ℤ)).toNat

end

end A188192.P16228618120579595901

noncomputable section

/-- A188192: a(n) = [n*r]-[k*r]-[n*r-k*r], where r=sqrt(5), k=3, [ ]=floor.

Offset 1, canonical program `A188192.P16228618120579595901`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188192 (n : ℕ) : ℤ :=
  A188192.P16228618120579595901.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188192.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A188300.P13558209889286680429

`A188297(A083035(n+1)+n)`
-/

namespace A188300.P13558209889286680429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188297 (A083035 (n + 1) + (n : ℤ)).toNat

end

end A188300.P13558209889286680429

noncomputable section

/-- A188300: a(n) = [n*r] - [k*r] - [n*r-k*r], where r=1/sqrt(2), k=3, [ ]=floor.

Offset 1, canonical program `A188300.P13558209889286680429`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188300 (n : ℕ) : ℤ :=
  A188300.P13558209889286680429.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188300.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A188301.P7448140245845181984

`A097508(A002264(n))+1+n`
-/

namespace A188301.P7448140245845181984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097508 (A002264 n).toNat + 1 + (n : ℤ)

end

end A188301.P7448140245845181984

noncomputable section

/-- A188301: Positions of 0 in A188300; complement of A188302.

Offset 1, canonical program `A188301.P7448140245845181984`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188301 (n : ℕ) : ℤ :=
  A188301.P7448140245845181984.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188301.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A188372.P2678500880219119319

`comp[A001952(n+1)*A188038(n+1)]`
-/

namespace A188372.P2678500880219119319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001952 (n + 1) * A188038 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A188372.P2678500880219119319

noncomputable section

/-- A188372: Positions of 0 in A188371; complement of A188373.

Offset 1, canonical program `A188372.P2678500880219119319`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188372 (n : ℕ) : ℤ :=
  (A188372.P2678500880219119319.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188372.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A188397.P1006503134452683607

`comp[A188396(n+1)-1]+1`
-/

namespace A188397.P1006503134452683607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188396 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A188397.P1006503134452683607

noncomputable section

/-- A188397: Positions of 1 in A188395; complement of A188396.

Offset 1, canonical program `A188397.P1006503134452683607`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188397 (n : ℕ) : ℤ :=
  (A188397.P1006503134452683607.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188397.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A188436.P14332046805831665438

`val(A110006(n+1), 4)`
-/

namespace A188436.P14332046805831665438
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A110006 (n + 1)).toNat 4

end

end A188436.P14332046805831665438

noncomputable section

/-- A188436: [3r]-[nr]-[3r-nr], where r=(1+sqrt(5))/2 and [.]=floor.

Offset 1, canonical program `A188436.P14332046805831665438`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188436 (n : ℕ) : ℤ :=
  (A188436.P14332046805831665438.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188436.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A188557.P4941890526069849708

`A188556(n+1)+A008859(n)`
-/

namespace A188557.P4941890526069849708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188556 (n + 1) + A008859 n

end

end A188557.P4941890526069849708

noncomputable section

/-- A188557: Number of 6 X n binary arrays without the pattern 0 1 diagonally, vertically, antidiagonally or horizontally.

Offset 1, canonical program `A188557.P4941890526069849708`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188557 (n : ℕ) : ℤ :=
  A188557.P4941890526069849708.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188557.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A188860.P1930130511050451117

`A081113(round(sqrt(n²+1)))+floor(3^(n-1))`
-/

namespace A188860.P1930130511050451117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081113 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat + ⌊(3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

end

end A188860.P1930130511050451117

noncomputable section

/-- A188860: Number of n X n binary arrays without the pattern 0 1 diagonally, vertically or antidiagonally.

Offset 0, canonical program `A188860.P1930130511050451117`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 206 terms. -/
def A188860 (n : ℕ) : ℤ :=
  A188860.P1930130511050451117.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 206 terms. -/
def A188860.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A189013.P15026936849006250875

`comp[A189012(n+1)-1]+1`
-/

namespace A189013.P15026936849006250875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189012 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A189013.P15026936849006250875

noncomputable section

/-- A189013: Positions of 1 in A189011; complement of A189012.

Offset 1, canonical program `A189013.P15026936849006250875`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A189013 (n : ℕ) : ℤ :=
  (A189013.P15026936849006250875.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A189013.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A189023.P3066450030052913835

`A189021(A062378(n+1))`
-/

namespace A189023.P3066450030052913835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189021 (A062378 (n + 1)).toNat

end

end A189023.P3066450030052913835

noncomputable section

/-- A189023: Apostol's fourth-order Mobius (Moebius) function mu_4(n).

Offset 1, canonical program `A189023.P3066450030052913835`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A189023 (n : ℕ) : ℤ :=
  A189023.P3066450030052913835.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A189023.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A189378.P12164205168119732610

`A184901(n+1)+2*(n+1)`
-/

namespace A189378.P12164205168119732610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184901 (n + 1) + (2 * (n + 1) : ℤ)

end

end A189378.P12164205168119732610

noncomputable section

/-- A189378: a(n) = n + [nr/s] + [nt/s]; r=2, s=(-1+sqrt(5))/2, t=(1+sqrt(5))/2.

Offset 1, canonical program `A189378.P12164205168119732610`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A189378 (n : ℕ) : ℤ :=
  A189378.P12164205168119732610.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A189378.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A190453.P12819835385222772038

`eq[1, A190451(n+1)]+1`
-/

namespace A190453.P12819835385222772038
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190451 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A190453.P12819835385222772038

noncomputable section

/-- A190453: Positions of 1 in A190451.

Offset 1, canonical program `A190453.P12819835385222772038`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2499 terms. -/
def A190453 (n : ℕ) : ℤ :=
  (A190453.P12819835385222772038.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2499 terms. -/
def A190453.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A190454.P17304671988381641284

`eq[2, A190451(n+1)]+1`
-/

namespace A190454.P17304671988381641284
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190451 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A190454.P17304671988381641284

noncomputable section

/-- A190454: Positions of 2 in A190451.

Offset 1, canonical program `A190454.P17304671988381641284`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2502 terms. -/
def A190454 (n : ℕ) : ℤ :=
  (A190454.P17304671988381641284.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2502 terms. -/
def A190454.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A190457.P15557048138221621682

`A190451(n+1)+A005614(A016813(n+1))`
-/

namespace A190457.P15557048138221621682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190451 (n + 1) + A005614 (A016813 (n + 1)).toNat

end

end A190457.P15557048138221621682

noncomputable section

/-- A190457: a(n) = [(bn+c)r]-b[nr]-[cr], where (r,b,c)=(golden ratio,4,3) and []=floor.

Offset 1, canonical program `A190457.P15557048138221621682`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2736 terms. -/
def A190457 (n : ℕ) : ℤ :=
  A190457.P15557048138221621682.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2736 terms. -/
def A190457.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A190484.P14590028091312245075

`record[A026253(n+1)]`
-/

namespace A190484.P14590028091312245075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026253 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A190484.P14590028091312245075

noncomputable section

/-- A190484: Positions of 0 in A190483.

Offset 1, canonical program `A190484.P14590028091312245075`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7072 terms. -/
def A190484 (n : ℕ) : ℤ :=
  A190484.P14590028091312245075.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7072 terms. -/
def A190484.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A190503.P4853042845525181551

`eq[1, A000203(n+1)%A000203(A000010(n+1))+1]+1`
-/

namespace A190503.P4853042845525181551
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000203 (n + 1)) (A000203 (A000010 (n + 1)).toNat) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A190503.P4853042845525181551

noncomputable section

/-- A190503: Numbers k such that sigma(phi(k)) divides sigma(k).

Offset 1, canonical program `A190503.P4853042845525181551`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 681 terms. -/
def A190503 (n : ℕ) : ℤ :=
  (A190503.P4853042845525181551.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 681 terms. -/
def A190503.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A190566.P4916505128148002889

`A003151(A190550(n+1))`
-/

namespace A190566.P4916505128148002889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003151 (A190550 (n + 1)).toNat

end

end A190566.P4916505128148002889

noncomputable section

/-- A190566: Positions of 4 in A190561.

Offset 1, canonical program `A190566.P4916505128148002889`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1465 terms. -/
def A190566 (n : ℕ) : ℤ :=
  A190566.P4916505128148002889.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1465 terms. -/
def A190566.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A190677.P8681336031986812165

`lt[A190676(n+1), 1]+1`
-/

namespace A190677.P8681336031986812165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190676 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A190677.P8681336031986812165

noncomputable section

/-- A190677: Positions of 0 in A190676.

Offset 1, canonical program `A190677.P8681336031986812165`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3333 terms. -/
def A190677 (n : ℕ) : ℤ :=
  (A190677.P8681336031986812165.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3333 terms. -/
def A190677.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A190683.P16248676480014471006

`A003512(A016777(n+1))%A188069(n+2)`
-/

namespace A190683.P16248676480014471006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003512 (A016777 (n + 1)).toNat) (A188069 (n + 2))

end

end A190683.P16248676480014471006

noncomputable section

/-- A190683: [(bn+c)r]-b[nr]-[cr], where (r,b,c)=(sqrt(3),3,1) and [ ]=floor.

Offset 1, canonical program `A190683.P16248676480014471006`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3333 terms. -/
def A190683 (n : ℕ) : ℤ :=
  A190683.P16248676480014471006.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3333 terms. -/
def A190683.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A190765.P11397888185412396491

`2*A190486(n+1)-A190763(n+1)`
-/

namespace A190765.P11397888185412396491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A190486 (n + 1) - A190763 (n + 1)

end

end A190765.P11397888185412396491

noncomputable section

/-- A190765: Positions of 2 in A190762.

Offset 1, canonical program `A190765.P11397888185412396491`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A190765 (n : ℕ) : ℤ :=
  A190765.P11397888185412396491.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A190765.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A190774.P847097764927375794

`∩[A184623(n+1), A083051(n)]`
-/

namespace A190774.P847097764927375794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184623 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083051 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190774.P847097764927375794

noncomputable section

/-- A190774: Positions of 3 in A190770.

Offset 1, canonical program `A190774.P847097764927375794`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8048 terms. -/
def A190774 (n : ℕ) : ℤ :=
  (A190774.P847097764927375794.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8048 terms. -/
def A190774.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A190776.P13870307466262364096

`ceil(sqrt(2)*A190500(n+1))`
-/

namespace A190776.P13870307466262364096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (2 : ℝ) * (A190500 (n + 1) : ℝ)⌉

end

end A190776.P13870307466262364096

noncomputable section

/-- A190776: Positions of 0 in A190775.

Offset 1, canonical program `A190776.P13870307466262364096`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A190776 (n : ℕ) : ℤ :=
  A190776.P13870307466262364096.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A190776.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A190941.P10346162016489397206

`n+A081610(n)`
-/

namespace A190941.P10346162016489397206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) + A081610 n

end

end A190941.P10346162016489397206

noncomputable section

/-- A190941: Partial sums of A190592.

Offset 0, canonical program `A190941.P10346162016489397206`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A190941 (n : ℕ) : ℤ :=
  A190941.P10346162016489397206.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A190941.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A191110.P14908163695247419265

`2*A153775(n+1)-1`
-/

namespace A191110.P14908163695247419265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A153775 (n + 1) - 1

end

end A191110.P14908163695247419265

noncomputable section

/-- A191110: Increasing sequence generated by these rules: a(1)=1, and if x is in a then 3x and 3x+2 are in a.

Offset 1, canonical program `A191110.P14908163695247419265`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A191110 (n : ℕ) : ℤ :=
  A191110.P14908163695247419265.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A191110.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A191307.P5108314988491942072

`∑[A037955(n)]`
-/

namespace A191307.P5108314988491942072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037955 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A191307.P5108314988491942072

noncomputable section

/-- A191307: Sum of the heights of the first peaks in all dispersed Dyck paths of length n (i.e., in Motzkin paths of length n with no (1,0)-steps at positive heights).

Offset 0, canonical program `A191307.P5108314988491942072`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 336 terms. -/
def A191307 (n : ℕ) : ℤ :=
  A191307.P5108314988491942072.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 336 terms. -/
def A191307.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A191329.P14559015055408526172

`A085002(n+1)+A171587(n)`
-/

namespace A191329.P14559015055408526172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085002 (n + 1) + A171587 n

end

end A191329.P14559015055408526172

noncomputable section

/-- A191329: (Lower Wythoff sequence mod 2)+(Upper Wythoff sequence mod 2).

Offset 1, canonical program `A191329.P14559015055408526172`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A171587, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A191329 (n : ℕ) : ℤ :=
  A191329.P14559015055408526172.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A171587, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A191329.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A191396.P7229870374882606009

`A191394(n)+a(n-2)` with `a(0)=0, a(1)=0`
-/

namespace A191396.P7229870374882606009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  A191394 n + a (n - 2)

end

end A191396.P7229870374882606009

noncomputable section

/-- A191396: Sum of the heights of the base pyramids in all dispersed Dyck paths of length n (i.e., in all Motzkin paths of length n with no (1,0)-steps at positive heights). A base pyramid is a factor of the form U^j D^j (j>0), starting at the horizontal axis. Here U=(1,1) and D=(1,-1).

Offset 0, canonical program `A191396.P7229870374882606009`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A191396 (n : ℕ) : ℤ :=
  A191396.P7229870374882606009.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A191396.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A191448.P14418744543329355143

`A075300(A066182(n+1))`
-/

namespace A191448.P14418744543329355143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075300 (A066182 (n + 1)).toNat

end

end A191448.P14418744543329355143

noncomputable section

/-- A191448: Dispersion of the odd integers greater than 1, by antidiagonals.

Offset 1, canonical program `A191448.P14418744543329355143`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5050 terms. -/
def A191448 (n : ℕ) : ℤ :=
  A191448.P14418744543329355143.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5050 terms. -/
def A191448.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A191836.P5700790045255042442

`∏[A143731(n+1)+ceil((n+1)/∏{p}[n+1, (n+1)/#])]`
-/

namespace A191836.P5700790045255042442
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143731 (n + 1) + ⌈(n + 1 : ℚ) / (∏ p ∈ Nat.primeFactors (f2 n), (n + 1 : ℚ) / (p : ℚ))⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A191836.P5700790045255042442

noncomputable section

/-- A191836: The slowest growing sequence that satisfies: a(1) = 1, a(n) is a multiple of n and a(n-1), and a(n) > a(n-1).

Offset 1, canonical program `A191836.P5700790045255042442`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 157 terms. -/
def A191836 (n : ℕ) : ℤ :=
  A191836.P5700790045255042442.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 157 terms. -/
def A191836.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A191904.P13641530380614696573

`1-A002260(n+1)*A077049(n+1)`
-/

namespace A191904.P13641530380614696573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A002260 (n + 1) * A077049 (n + 1)

end

end A191904.P13641530380614696573

noncomputable section

/-- A191904: Square array read by antidiagonals up: T(n,k) = 1-k if k divides n, else 1.

Offset 1, canonical program `A191904.P13641530380614696573`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A191904 (n : ℕ) : ℤ :=
  A191904.P13641530380614696573.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A191904.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A191910.P11685670682958930902

`A127093(n+1)+A023531(n)-1`
-/

namespace A191910.P11685670682958930902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127093 (n + 1) + A023531 n - 1

end

end A191910.P11685670682958930902

noncomputable section

/-- A191910: Triangle read by rows: T(n,n)=n; T(n,k) = k-1 if k divides n and k < n, otherwise -1.

Offset 1, canonical program `A191910.P11685670682958930902`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A191910 (n : ℕ) : ℤ :=
  A191910.P11685670682958930902.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A191910.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A192310.P2475868322072867542

`A192306(n+1)+A014286(n)`
-/

namespace A192310.P2475868322072867542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192306 (n + 1) + A014286 n

end

end A192310.P2475868322072867542

noncomputable section

/-- A192310: 1-sequence of reduction of (3n-1) by x^2 -> x+1.

Offset 1, canonical program `A192310.P2475868322072867542`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 464 terms. -/
def A192310 (n : ℕ) : ℤ :=
  A192310.P2475868322072867542.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 464 terms. -/
def A192310.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A192473.P18018568247263992611

`A192471(n+2)-1`
-/

namespace A192473.P18018568247263992611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192471 (n + 2) - 1

end

end A192473.P18018568247263992611

noncomputable section

/-- A192473: Coefficient of x in the reduction by x^2->x+1 of the polynomial p(n,x)=1+x^n+x^(2n+2).

Offset 1, canonical program `A192473.P18018568247263992611`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 239 terms. -/
def A192473 (n : ℕ) : ℤ :=
  A192473.P18018568247263992611.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 239 terms. -/
def A192473.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A192638.P5776739241010284944

`∩[A095278(n+1), A127575(n+1)]`
-/

namespace A192638.P5776739241010284944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095278 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127575 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A192638.P5776739241010284944

noncomputable section

/-- A192638: Numbers n such that 4n + 3 and 16n + 15 are prime.

Offset 1, canonical program `A192638.P5776739241010284944`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2093 terms. -/
def A192638 (n : ℕ) : ℤ :=
  (A192638.P5776739241010284944.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2093 terms. -/
def A192638.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A192817.P8246135497186958092

`eq[1, gcd(n, A061601(n))]`
-/

namespace A192817.P8246135497186958092
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A061601 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A192817.P8246135497186958092

noncomputable section

/-- A192817: Numbers that are coprime to their 9's complement.

Offset 1, canonical program `A192817.P8246135497186958092`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A192817 (n : ℕ) : ℤ :=
  (A192817.P8246135497186958092.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A192817.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A192862.P1837713112636375079

`p?[A353627(n+1)+2*n]`
-/

namespace A192862.P1837713112636375079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353627 (n + 1) + (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A192862.P1837713112636375079

noncomputable section

/-- A192862: Flat primes: odd primes p such that p+1 is a squarefree number times a power of two.

Offset 1, canonical program `A192862.P1837713112636375079`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9150 terms. -/
def A192862 (n : ℕ) : ℤ :=
  A192862.P1837713112636375079.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9150 terms. -/
def A192862.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A192864.P4257417878317545726

`abs(p?[A353627(n+1)+2*(n+1)]-1)+1`
-/

namespace A192864.P4257417878317545726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353627 (n + 1) + (2 * (n + 1) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 1| + 1

end

end A192864.P4257417878317545726

noncomputable section

/-- A192864: Lower flat primes: odd primes p such that p-1 is a squarefree number times a power of two.

Offset 1, canonical program `A192864.P4257417878317545726`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9178 terms. -/
def A192864 (n : ℕ) : ℤ :=
  A192864.P4257417878317545726.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9178 terms. -/
def A192864.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A193738.P15912685866539530359

`A002260(A132128(n+1))`
-/

namespace A193738.P15912685866539530359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A132128 (n + 1)).toNat

end

end A193738.P15912685866539530359

noncomputable section

/-- A193738: Triangular array: the fusion of polynomial sequences P and Q given by p(n,x)=q(n,x)=x^n+x^(n-1)+...+x+1.

Offset 0, canonical program `A193738.P15912685866539530359`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A193738 (n : ℕ) : ℤ :=
  A193738.P15912685866539530359.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A193738.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A193846.P9935074766537536262

`A090988(n+1)*A193842(n)`
-/

namespace A193846.P9935074766537536262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090988 (n + 1) * A193842 n

end

end A193846.P9935074766537536262

noncomputable section

/-- A193846: Triangular array: the fission of ((x+2)^n) by ((x+1)^n).

Offset 0, canonical program `A193846.P9935074766537536262`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. -/
def A193846 (n : ℕ) : ℤ :=
  A193846.P9935074766537536262.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. -/
def A193846.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A193848.P11847408491001959917

`A130321(n)*A193842(n)`
-/

namespace A193848.P11847408491001959917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130321 n * A193842 n

end

end A193848.P11847408491001959917

noncomputable section

/-- A193848: Triangular array: (1/2)*A193846.

Offset 0, canonical program `A193848.P11847408491001959917`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A193848 (n : ℕ) : ℤ :=
  A193848.P11847408491001959917.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A193848.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A193912.P17477318446375195437

`∑[A193911(n+1)]`
-/

namespace A193912.P17477318446375195437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193911 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A193912.P17477318446375195437

noncomputable section

/-- A193912: Partial sums of A193911.

Offset 1, canonical program `A193912.P17477318446375195437`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 654 terms. -/
def A193912 (n : ℕ) : ℤ :=
  A193912.P17477318446375195437.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 654 terms. -/
def A193912.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A193975.P7422222807454422260

`A177877(n-A049780(n))+A177877(n)`
-/

namespace A193975.P7422222807454422260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177877 ((n : ℤ) - A049780 n).toNat + A177877 n

end

end A193975.P7422222807454422260

noncomputable section

/-- A193975: Triangular array: the self-fission of (p(n,x)), where p(n,x)=x*p(n-1,x)+n+1, where p(0,x)=1.

Offset 0, canonical program `A193975.P7422222807454422260`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A193975 (n : ℕ) : ℤ :=
  A193975.P7422222807454422260.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A193975.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A193976.P17233718569355432960

`A104634(n+1)+abs(A122432(n))`
-/

namespace A193976.P17233718569355432960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104634 (n + 1) + |A122432 n|

end

end A193976.P17233718569355432960

noncomputable section

/-- A193976: Mirror of the triangle A193975.

Offset 0, canonical program `A193976.P17233718569355432960`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A193976 (n : ℕ) : ℤ :=
  A193976.P17233718569355432960.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A193976.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A194032.P1700617738271961526

`A002262(n)+A000196(A082156(n+1))²`
-/

namespace A194032.P1700617738271961526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n + A000196 (A082156 (n + 1)).toNat ^ 2

end

end A194032.P1700617738271961526

noncomputable section

/-- A194032: Natural interspersion of the squares (1,4,9,16,25,...), a rectangular array, by antidiagonals.

Offset 1, canonical program `A194032.P1700617738271961526`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5050 terms. -/
def A194032 (n : ℕ) : ℤ :=
  A194032.P1700617738271961526.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5050 terms. -/
def A194032.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A194138.P1802011036160146576

`A194102(n+1)+∑[n+1]`
-/

namespace A194138.P1802011036160146576
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194102 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A194138.P1802011036160146576

noncomputable section

/-- A194138: a(n) = Sum_{j=1..n} floor(j*(1+sqrt(2))), n-th partial sum of Beatty sequence for 1+sqrt(2).

Offset 1, canonical program `A194138.P1802011036160146576`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A194138 (n : ℕ) : ℤ :=
  A194138.P1802011036160146576.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A194138.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A194141.P4532975986403058293

`A194140(n+1)+∑[n+1]`
-/

namespace A194141.P4532975986403058293
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194140 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A194141.P4532975986403058293

noncomputable section

/-- A194141: Sum{floor(j*(2+sqrt(3))) : 1<=j<=n}; n-th partial sum of Beatty sequence for 2+sqrt(3).

Offset 1, canonical program `A194141.P4532975986403058293`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A194141 (n : ℕ) : ℤ :=
  A194141.P4532975986403058293.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A194141.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A194153.P3430387214408108044

`A194151(n+1)+a(n-1)` with `a(0)=1`
-/

namespace A194153.P3430387214408108044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A194151 (n + 1) + a (n - 1)

end

end A194153.P3430387214408108044

noncomputable section

/-- A194153: a(n) = Sum_{j=1..n} floor(j*(sqrt(5))/2); n-th partial sum of Beatty sequence for (sqrt(5))/2.

Offset 1, canonical program `A194153.P3430387214408108044`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A194153 (n : ℕ) : ℤ :=
  A194153.P3430387214408108044.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A194153.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A194195.P697157208742840349

`A004737(n+1)+A004739(n+1)*A079813(n+1)`
-/

namespace A194195.P697157208742840349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004737 (n + 1) + A004739 (n + 1) * A079813 (n + 1)

end

end A194195.P697157208742840349

noncomputable section

/-- A194195: First inverse function (numbers of rows) for pairing function A060734.

Offset 1, canonical program `A194195.P697157208742840349`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A194195 (n : ℕ) : ℤ :=
  A194195.P697157208742840349.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A194195.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A194196.P7947729533032304729

`∩[A006532(n+1), A164722(n+1)]`
-/

namespace A194196.P7947729533032304729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006532 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164722 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A194196.P7947729533032304729

noncomputable section

/-- A194196: Numbers k such that the sum of the divisors of k and the sum of the distinct prime divisors of k are both a square.

Offset 1, canonical program `A194196.P7947729533032304729`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 179 terms. -/
def A194196 (n : ℕ) : ℤ :=
  (A194196.P7947729533032304729.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 179 terms. -/
def A194196.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A194404.P6698143406103776618

`lt[A057428(n)+A005653(A008619(n)), n]`
-/

namespace A194404.P6698143406103776618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n + A005653 (A008619 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A194404.P6698143406103776618

noncomputable section

/-- A194404: Numbers m such that Sum_{k=1..m} (<1/2 + k*r> - <k*r>) > 0, where r=(1+sqrt(5))/2 and < > denotes fractional part.

Offset 1, canonical program `A194404.P6698143406103776618`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 971 terms. -/
def A194404 (n : ℕ) : ℤ :=
  (A194404.P6698143406103776618.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 971 terms. -/
def A194404.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A194581.P13119146017149971246

`p?[A024675(n+1)-A001223(n+1)]`
-/

namespace A194581.P13119146017149971246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024675 (n + 1) - A001223 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A194581.P13119146017149971246

noncomputable section

/-- A194581: Primes prime(k) of the form (2*prime(k-1) + prime(k+1))/3.

Offset 1, canonical program `A194581.P13119146017149971246`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 747 terms. -/
def A194581 (n : ℕ) : ℤ :=
  A194581.P13119146017149971246.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 747 terms. -/
def A194581.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A194588.P2938280453957278802

`A189912(n-1)-a(n-1)` with `a(0)=1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A194588.P2938280453957278802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A189912 (n - 1) - a (n - 1)

end

end A194588.P2938280453957278802

noncomputable section

/-- A194588: a(n) = A189912(n-1)-a(n-1) for n>0, a(0) = 1; extended Riordan numbers.

Offset 0, canonical program `A194588.P2938280453957278802`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A189912, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A194588 (n : ℕ) : ℤ :=
  A194588.P2938280453957278802.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A189912, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A194588.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A194594.P725981934005079011

`∩[A114522(n+1), A194579(n+1)]`
-/

namespace A194594.P725981934005079011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114522 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194579 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A194594.P725981934005079011

noncomputable section

/-- A194594: Numbers such that the sum of the their nonprime divisors and the sum of their prime divisors are both primes.

Offset 1, canonical program `A194594.P725981934005079011`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1632 terms. -/
def A194594 (n : ℕ) : ℤ :=
  (A194594.P725981934005079011.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1632 terms. -/
def A194594.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A194740.P1783803332448557360

`A194739(n+1)+1`
-/

namespace A194740.P1783803332448557360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194739 (n + 1) + 1

end

end A194740.P1783803332448557360

noncomputable section

/-- A194740: Number of k such that {-k*sqrt(3)} < {-n*sqrt(3)}, where { } = fractional part.

Offset 1, canonical program `A194740.P1783803332448557360`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A194740 (n : ℕ) : ℤ :=
  A194740.P1783803332448557360.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A194740.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A194743.P6637608899086095242

`1-A194742(n+1)+n`
-/

namespace A194743.P6637608899086095242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A194742 (n + 1) + (n : ℤ)

end

end A194743.P6637608899086095242

noncomputable section

/-- A194743: Number of k such that {k*sqrt(5)} > {n*sqrt(5)}, where { } = fractional part.

Offset 1, canonical program `A194743.P6637608899086095242`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A194743 (n : ℕ) : ℤ :=
  A194743.P6637608899086095242.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A194743.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A194745.P9191396942374646438

`A194742(n+1)-1`
-/

namespace A194745.P9191396942374646438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194742 (n + 1) - 1

end

end A194745.P9191396942374646438

noncomputable section

/-- A194745: Number of k such that {-k*sqrt(5)} > {-n*sqrt(5)}, where { } = fractional part.

Offset 1, canonical program `A194745.P9191396942374646438`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A194745 (n : ℕ) : ℤ :=
  A194745.P9191396942374646438.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A194745.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A194752.P8535250005586994287

`A194751(n+1)+1`
-/

namespace A194752.P8535250005586994287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194751 (n + 1) + 1

end

end A194752.P8535250005586994287

noncomputable section

/-- A194752: Number of k such that {-k*e} < {-n*e}, where { } = fractional part.

Offset 1, canonical program `A194752.P8535250005586994287`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A194752 (n : ℕ) : ℤ :=
  A194752.P8535250005586994287.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A194752.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A194813.P15364618294108284325

`∑[1-(A001966(n)+A001468(n))%2]`
-/

namespace A194813.P15364618294108284325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - Int.tmod (A001966 n + A001468 n) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194813.P15364618294108284325

noncomputable section

/-- A194813: Number of integers k in [1,n] such that {n*r + k*r} < {n*r - k*r}, where { } = fractional part and r = (1+sqrt(5))/2 (the golden ratio).

Offset 1, canonical program `A194813.P15364618294108284325`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A194813 (n : ℕ) : ℤ :=
  A194813.P15364618294108284325.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A194813.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A194847.P15779347047936523882

`A056556(n)+2`
-/

namespace A194847.P15779347047936523882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056556 n + 2

end

end A194847.P15779347047936523882

noncomputable section

/-- A194847: Write n = C(i,3)+C(j,2)+C(k,1) with i>j>k>=0; sequence gives i values.

Offset 0, canonical program `A194847.P15779347047936523882`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056556, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A194847 (n : ℕ) : ℤ :=
  A194847.P15779347047936523882.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056556, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A194847.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A194883.P13313094170097831058

`A000120(eq[2, A023416(A006257(n))])`
-/

namespace A194883.P13313094170097831058
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 (A006257 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A194883.P13313094170097831058

noncomputable section

/-- A194883: Write n = C(i,4)+C(j,3)+C(k,2)+C(l,1) with i>j>k>l>=0; sequence gives j values.

Offset 0, canonical program `A194883.P13313094170097831058`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 119 terms. -/
def A194883 (n : ℕ) : ℤ :=
  A194883.P13313094170097831058.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 119 terms. -/
def A194883.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A194959.P7468883608781216461

`A157458(n)+A101688(n)`
-/

namespace A194959.P7468883608781216461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157458 n + A101688 n

end

end A194959.P7468883608781216461

noncomputable section

/-- A194959: Fractalization of (1 + floor(n/2)).

Offset 1, canonical program `A194959.P7468883608781216461`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A194959 (n : ℕ) : ℤ :=
  A194959.P7468883608781216461.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A194959.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A195087.P7404361549987766515

`eq[3, A001222(A336551(n+1)+1)]+1`
-/

namespace A195087.P7404361549987766515
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A336551 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A195087.P7404361549987766515

noncomputable section

/-- A195087: Numbers k such that (number of prime factors of k counted with multiplicity) less (number of distinct prime factors of k) = 3.

Offset 1, canonical program `A195087.P7404361549987766515`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2381 terms. -/
def A195087 (n : ℕ) : ℤ :=
  (A195087.P7404361549987766515.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2381 terms. -/
def A195087.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A195094.P15185484469410605359

`∑{d}[n+1, A000217(#)*A087003((n+1)/#)]`
-/

namespace A195094.P15185484469410605359
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000217 d * A087003 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A195094.P15185484469410605359

noncomputable section

/-- A195094: G.f.: Sum_{n>=1} -moebius(2*n)*x^n/(1-x^n)^3.

Offset 1, canonical program `A195094.P15185484469410605359`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8200 terms. -/
def A195094 (n : ℕ) : ℤ :=
  A195094.P15185484469410605359.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8200 terms. -/
def A195094.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A195153.P11953675593454716449

`A128227(lt[A051731(n+1), A051731(n+2)])`
-/

namespace A195153.P11953675593454716449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051731 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051731 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128227 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A195153.P11953675593454716449

noncomputable section

/-- A195153: Irregular triangle read by rows in which row n lists numbers d-1 that do not divide n, where d divides n.

Offset 3, canonical program `A195153.P11953675593454716449`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 457 terms. -/
def A195153 (n : ℕ) : ℤ :=
  A195153.P11953675593454716449.a (n - 3)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 457 terms. -/
def A195153.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A196748.P1291725474753101285

`∩[A058185(n+1), A196747(n+1)]`
-/

namespace A196748.P1291725474753101285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058185 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196747 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A196748.P1291725474753101285

noncomputable section

/-- A196748: Numbers k such that 3 and 5 do not divide swing(k) = A056040(k).

Offset 1, canonical program `A196748.P1291725474753101285`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 153 terms. -/
def A196748 (n : ℕ) : ℤ :=
  (A196748.P1291725474753101285.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 153 terms. -/
def A196748.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A197219.P1176045312080678236

`A000032(floor(A000010(n)+a(n-1))-a(n-1))` with `a(0)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A197219.P1176045312080678236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A000032 (A000010 n + a (n - 1) - a (n - 1)).toNat

end

end A197219.P1176045312080678236

noncomputable section

/-- A197219: a(0) = 2, a(n) = Lucas(phi(n)) for n > 0.

Offset 0, canonical program `A197219.P1176045312080678236`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 487 terms. -/
def A197219 (n : ℕ) : ℤ :=
  A197219.P1176045312080678236.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 487 terms. -/
def A197219.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A198286.P8684758332373376771

`∑{d}[n+1, A061020(#)*A181797((n+1)/#)]`
-/

namespace A198286.P8684758332373376771
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A061020 d * A181797 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A198286.P8684758332373376771

noncomputable section

/-- A198286: a(n) = Sum_{d|n} (A053143(d) or smallest square divisible by d).

Offset 1, canonical program `A198286.P8684758332373376771`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A198286 (n : ℕ) : ℤ :=
  A198286.P8684758332373376771.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A198286.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A199595.P3367410599700455446

`A199593(n+1)-8`
-/

namespace A199595.P3367410599700455446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199593 (n + 1) - 8

end

end A199595.P3367410599700455446

noncomputable section

/-- A199595: Numbers n such that 3n+6, 3n+7 and 3n+8 are all composite.

Offset 1, canonical program `A199595.P3367410599700455446`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A199593, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A199595 (n : ℕ) : ℤ :=
  A199595.P3367410599700455446.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A199593, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A199595.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A199986.P499890319884036768

`record[A071762(A061579(n+1))]`
-/

namespace A199986.P499890319884036768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071762 (A061579 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A199986.P499890319884036768

noncomputable section

/-- A199986: Numbers with digital product = 2.

Offset 1, canonical program `A199986.P499890319884036768`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5050 terms. -/
def A199986 (n : ℕ) : ℤ :=
  A199986.P499890319884036768.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5050 terms. -/
def A199986.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A200244.P5861281741457501030

`A059841(A014499(n+1))`
-/

namespace A200244.P5861281741457501030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (A014499 (n + 1)).toNat

end

end A200244.P5861281741457501030

noncomputable section

/-- A200244: a(n)=1 iff binary weight of n-th prime is even.

Offset 1, canonical program `A200244.P5861281741457501030`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A200244 (n : ℕ) : ℤ :=
  A200244.P5861281741457501030.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A200244.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A200247.P10788717506110287263

`∑[A200246(n+1)]`
-/

namespace A200247.P10788717506110287263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200246 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A200247.P10788717506110287263

noncomputable section

/-- A200247: Partial sums of A200246.

Offset 1, canonical program `A200247.P10788717506110287263`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A200247 (n : ℕ) : ℤ :=
  A200247.P10788717506110287263.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A200247.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A202238.P14298677801126806738

`A182936(n+1)%2`
-/

namespace A202238.P14298677801126806738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A182936 (n + 1)) 2

end

end A202238.P14298677801126806738

noncomputable section

/-- A202238: Characteristic function of positive integers not prime and not a power of 2.

Offset 1, canonical program `A202238.P14298677801126806738`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A202238 (n : ℕ) : ℤ :=
  A202238.P14298677801126806738.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A202238.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A202276.P11372972948396556949

`∑[A175253(n+1)]`
-/

namespace A202276.P11372972948396556949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175253 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A202276.P11372972948396556949

noncomputable section

/-- A202276: Number of integers k <= n such that sigma(x) = k has no solution, sigma = A000203.

Offset 1, canonical program `A202276.P11372972948396556949`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A202276 (n : ℕ) : ℤ :=
  A202276.P11372972948396556949.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A202276.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A202394.P10766434799180443179

`A010816(n)*A089812(n)`
-/

namespace A202394.P10766434799180443179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010816 n * A089812 n

end

end A202394.P10766434799180443179

noncomputable section

/-- A202394: Expansion of f(-x)^3 + 9 * x * f(-x^9)^3 in powers of x where f() is a Ramanujan theta function.

Offset 0, canonical program `A202394.P10766434799180443179`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1901 terms. -/
def A202394 (n : ℕ) : ℤ :=
  A202394.P10766434799180443179.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1901 terms. -/
def A202394.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A204016.P18052484230199461045

`A027656(xor(1, A157458(n)))`
-/

namespace A204016.P18052484230199461045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027656 (Int.xor 1 (A157458 n)).toNat

end

end A204016.P18052484230199461045

noncomputable section

/-- A204016: Symmetric matrix based on f(i,j) = max(j mod i, i mod j), by antidiagonals.

Offset 1, canonical program `A204016.P18052484230199461045`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A204016 (n : ℕ) : ℤ :=
  A204016.P18052484230199461045.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A204016.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A204026.P14006372752453652619

`A000045(val(A036561(n), 6)+2)`
-/

namespace A204026.P14006372752453652619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (SequenceMachineLib.valuation (A036561 n).toNat 6 + 2)

end

end A204026.P14006372752453652619

noncomputable section

/-- A204026: Symmetric matrix based on f(i,j)=min(F(i+1),F(j+1)), where F=A000045 (Fibonacci numbers), by antidiagonals.

Offset 1, canonical program `A204026.P14006372752453652619`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A204026 (n : ℕ) : ℤ :=
  A204026.P14006372752453652619.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A204026.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A204028.P5390969343002212322

`3*val(A036561(n), 6)+1`
-/

namespace A204028.P5390969343002212322
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * SequenceMachineLib.valuation (A036561 n).toNat 6 + 1

end

end A204028.P5390969343002212322

noncomputable section

/-- A204028: Symmetric matrix based on f(i,j)=min(3i-2,3j-2), by antidiagonals.

Offset 1, canonical program `A204028.P5390969343002212322`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A204028 (n : ℕ) : ℤ :=
  (A204028.P5390969343002212322.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A204028.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A204123.P7659429009219767533

`gcd(A003988(n+1), A004199(n+1))`
-/

namespace A204123.P7659429009219767533
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003988 (n + 1)) (A004199 (n + 1))

end

end A204123.P7659429009219767533

noncomputable section

/-- A204123: Symmetric matrix based on f(i,j)=max([i/j],[j/i]), where [ ]=floor, by antidiagonals.

Offset 1, canonical program `A204123.P7659429009219767533`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A204123 (n : ℕ) : ℤ :=
  (A204123.P7659429009219767533.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A204123.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A204143.P7169083616238944113

`A010783(n+1)*A010783(A038722(n+1))`
-/

namespace A204143.P7169083616238944113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010783 (n + 1) * A010783 (A038722 (n + 1)).toNat

end

end A204143.P7169083616238944113

noncomputable section

/-- A204143: Symmetric matrix based on f(i,j)=max(ceiling(i/j),ceiling(j/i)), by antidiagonals.

Offset 1, canonical program `A204143.P7169083616238944113`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A204143 (n : ℕ) : ℤ :=
  A204143.P7169083616238944113.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A204143.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A204177.P4715536723901757887

`abs(A185917(n+1))`
-/

namespace A204177.P4715536723901757887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A185917 (n + 1)|

end

end A204177.P4715536723901757887

noncomputable section

/-- A204177: Symmetric matrix based on f(i,j)=(1 if i=1 or j=1 or i=j, and 0 otherwise), by antidiagonals.

Offset 1, canonical program `A204177.P4715536723901757887`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A204177 (n : ℕ) : ℤ :=
  A204177.P4715536723901757887.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A204177.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A204181.P7402957696718526263

`and(A099375(n), A185917(n+1))`
-/

namespace A204181.P7402957696718526263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A099375 n) (A185917 (n + 1))

end

end A204181.P7402957696718526263

noncomputable section

/-- A204181: Symmetric matrix based on f(i,j) defined by f(i,1)=f(1,j)=1; f(i,i)= 2i-1; f(i,j)=0 otherwise; by antidiagonals.

Offset 1, canonical program `A204181.P7402957696718526263`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A204181 (n : ℕ) : ℤ :=
  A204181.P7402957696718526263.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A204181.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A204221.P16762614138165113717

`A154293(n+1)+A152749(A004526(n))`
-/

namespace A204221.P16762614138165113717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154293 (n + 1) + A152749 (A004526 n).toNat

end

end A204221.P16762614138165113717

noncomputable section

/-- A204221: Integers of the form (N^2 - 1) / 15.

Offset 0, canonical program `A204221.P16762614138165113717`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A204221 (n : ℕ) : ℤ :=
  A204221.P16762614138165113717.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A204221.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A204237.P6099322334008855491

`A204156(n+1)+1`
-/

namespace A204237.P6099322334008855491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204156 (n + 1) + 1

end

end A204237.P6099322334008855491

noncomputable section

/-- A204237: Symmetric matrix given by f(i,j)=max(3i-j,3j-i).

Offset 1, canonical program `A204237.P6099322334008855491`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A204237 (n : ℕ) : ℤ :=
  A204237.P6099322334008855491.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A204237.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A204238.P6692770897565763232

`(A185251(2*(n+1))+n*A011782(n)²)/(-1)^n`
-/

namespace A204238.P6692770897565763232
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A185251 (2 * (n + 1)) + (n : ℤ) * A011782 n ^ 2 : ℚ) / ((-1) ^ n : ℚ)

end

end A204238.P6692770897565763232

noncomputable section

/-- A204238: Determinant of the n-th principal submatrix of A204237.

Offset 1, canonical program `A204238.P6692770897565763232`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 162 terms. -/
def A204238 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A204238.P6692770897565763232.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 162 terms. -/
def A204238.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A204267.P11067029943541218959

`C(2, A204263(n+1)²)`
-/

namespace A204267.P11067029943541218959
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A204263 (n + 1) ^ 2).toNat

end

end A204267.P11067029943541218959

noncomputable section

/-- A204267: Symmetric matrix: f(i,j)=(i+j+1 mod 3), by antidiagonals.

Offset 1, canonical program `A204267.P11067029943541218959`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A204267 (n : ℕ) : ℤ :=
  (A204267.P11067029943541218959.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A204267.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A204697.P15234551903142194925

`and(n, A189640(n+1))+1`
-/

namespace A204697.P15234551903142194925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (A189640 (n + 1)) + 1

end

end A204697.P15234551903142194925

noncomputable section

/-- A204697: Final nonzero digit of n^n in base 3.

Offset 0, canonical program `A204697.P15234551903142194925`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3220 terms. -/
def A204697 (n : ℕ) : ℤ :=
  A204697.P15234551903142194925.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3220 terms. -/
def A204697.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A204816.P3898216723695764510

`A277544(n^A134451(n))`
-/

namespace A204816.P3898216723695764510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277544 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A134451 n : ℤ))).toNat

end

end A204816.P3898216723695764510

noncomputable section

/-- A204816: Final nonzero digit of n^n in base 6.

Offset 0, canonical program `A204816.P3898216723695764510`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 102 terms. -/
def A204816 (n : ℕ) : ℤ :=
  A204816.P3898216723695764510.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 102 terms. -/
def A204816.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A205016.P2286842531164054448

`2*A193974(n)`
-/

namespace A205016.P2286842531164054448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A193974 n

end

end A205016.P2286842531164054448

noncomputable section

/-- A205016: Ordered differences of oblong numbers.

Offset 1, canonical program `A205016.P2286842531164054448`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A205016 (n : ℕ) : ℤ :=
  A205016.P2286842531164054448.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A205016.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A205136.P11482582398427600183

`A096037(n+1)+A099375(n)+1`
-/

namespace A205136.P11482582398427600183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096037 (n + 1) + (A099375 n + 1)

end

end A205136.P11482582398427600183

noncomputable section

/-- A205136: Ordered differences of distinct pentagonal numbers.

Offset 1, canonical program `A205136.P11482582398427600183`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A205136 (n : ℕ) : ℤ :=
  A205136.P11482582398427600183.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A205136.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A205456.P17031699656075010018

`C(A051125(n+1), A049581(n))`
-/

namespace A205456.P17031699656075010018
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A051125 (n + 1)).toNat (A049581 n).toNat

end

end A205456.P17031699656075010018

noncomputable section

/-- A205456: Symmetric matrix by antidiagonals: C(max(i,j),min(i,j)), i>=1, j>=1.

Offset 1, canonical program `A205456.P17031699656075010018`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A205456 (n : ℕ) : ℤ :=
  (A205456.P17031699656075010018.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A205456.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A205457.P628646899282360841

`A059674(A185868(n+1)-1)`
-/

namespace A205457.P628646899282360841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059674 (A185868 (n + 1) - 1).toNat

end

end A205457.P628646899282360841

noncomputable section

/-- A205457: Symmetric matrix, by antidiagonals: C(max(2i,2j),min(2i,2j)), i>=0, j>=0.

Offset 1, canonical program `A205457.P628646899282360841`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2550 terms. -/
def A205457 (n : ℕ) : ℤ :=
  A205457.P628646899282360841.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2550 terms. -/
def A205457.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A205510.P11813062267428190125

`A000120(xor(A005097(n+1), A102781(n+1)))`
-/

namespace A205510.P11813062267428190125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (Int.xor (A005097 (n + 1)) (A102781 (n + 1))).toNat

end

end A205510.P11813062267428190125

noncomputable section

/-- A205510: Binary Hamming distance between prime(n) and prime(n+1).

Offset 1, canonical program `A205510.P11813062267428190125`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1899 terms. -/
def A205510 (n : ℕ) : ℤ :=
  A205510.P11813062267428190125.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1899 terms. -/
def A205510.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A205548.P6561402102953099810

`C(A051125(n+1)+1, A049581(n))`
-/

namespace A205548.P6561402102953099810
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A051125 (n + 1) + 1).toNat (A049581 n).toNat

end

end A205548.P6561402102953099810

noncomputable section

/-- A205548: Symmetric matrix by antidiagonals: C(max(i+1,j+1),min(i+1,j+1)), i>=1, j>=1.

Offset 1, canonical program `A205548.P6561402102953099810`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A205548 (n : ℕ) : ℤ :=
  (A205548.P6561402102953099810.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A205548.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A205549.P12206282629607975759

`C(A051125(n+1)+2, A049581(n))`
-/

namespace A205549.P12206282629607975759
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A051125 (n + 1) + 2).toNat (A049581 n).toNat

end

end A205549.P12206282629607975759

noncomputable section

/-- A205549: Symmetric matrix by antidiagonals: C(max(i+2,j+2),min(i+2,j+2)), i>=1, j>=1.

Offset 1, canonical program `A205549.P12206282629607975759`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A205549 (n : ℕ) : ℤ :=
  (A205549.P12206282629607975759.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A205549.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A205559.P2583783127805785041

`eq[3, gcd(3, A204890(n+1))]+1`
-/

namespace A205559.P2583783127805785041
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 3 (A204890 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A205559.P2583783127805785041

noncomputable section

/-- A205559: Positions of multiples of 3 in A204890 (differences of primes).

Offset 1, canonical program `A205559.P2583783127805785041`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4901 terms. -/
def A205559 (n : ℕ) : ℤ :=
  (A205559.P2583783127805785041.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4901 terms. -/
def A205559.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A205676.P6623450324532988599

`eq[4, gcd(4, A204890(n+1))]+1`
-/

namespace A205676.P6623450324532988599
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 4 (A204890 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A205676.P6623450324532988599

noncomputable section

/-- A205676: Positions of multiples of 4 in A204890 (differences of primes).

Offset 1, canonical program `A205676.P6623450324532988599`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4896 terms. -/
def A205676 (n : ℕ) : ℤ :=
  (A205676.P6623450324532988599.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4896 terms. -/
def A205676.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A205683.P17912161422184643973

`eq[5, gcd(5, A204890(n+1))]+1`
-/

namespace A205683.P17912161422184643973
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 5 (A204890 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A205683.P17912161422184643973

noncomputable section

/-- A205683: Positions of multiples of 5 in A204890 (differences of primes).

Offset 1, canonical program `A205683.P17912161422184643973`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2416 terms. -/
def A205683 (n : ℕ) : ℤ :=
  (A205683.P17912161422184643973.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2416 terms. -/
def A205683.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A205697.P9126172670200338830

`lt[A204890(n+1)%7, 1]+1`
-/

namespace A205697.P9126172670200338830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A204890 (n + 1)) 7

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A205697.P9126172670200338830

noncomputable section

/-- A205697: Positions of multiples of 7 in A204890 (differences of primes).

Offset 1, canonical program `A205697.P9126172670200338830`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1589 terms. -/
def A205697 (n : ℕ) : ℤ :=
  (A205697.P9126172670200338830.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1589 terms. -/
def A205697.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A205711.P11359309019057096152

`eq[9, dr(A204890(n+1))]+1`
-/

namespace A205711.P11359309019057096152
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A204890 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A205711.P11359309019057096152

noncomputable section

/-- A205711: Positions of multiples of 9 in A204890 (differences of primes).

Offset 1, canonical program `A205711.P11359309019057096152`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1589 terms. -/
def A205711 (n : ℕ) : ℤ :=
  (A205711.P11359309019057096152.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1589 terms. -/
def A205711.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A205840.P6115930359801578087

`A205839(n+1)/2`
-/

namespace A205840.P6115930359801578087
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A205839 (n + 1) : ℚ) / 2

end

end A205840.P6115930359801578087

noncomputable section

/-- A205840: [s(k)-s(j)]/2, where the pairs (k,j) are given by A205837 and A205838.

Offset 1, canonical program `A205840.P6115930359801578087`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A205840 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A205840.P6115930359801578087.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A205840.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A205842.P9868123877778087869

`1+A002024(A205841(n+1))`
-/

namespace A205842.P9868123877778087869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A002024 (A205841 (n + 1)).toNat

end

end A205842.P9868123877778087869

noncomputable section

/-- A205842: Numbers k for which 3 divides s(k)-s(j) for some j<k; each k occurs once for each such j; s(k) denotes the (k+1)-st Fibonacci number.

Offset 1, canonical program `A205842.P9868123877778087869`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3401 terms. -/
def A205842 (n : ℕ) : ℤ :=
  A205842.P9868123877778087869.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3401 terms. -/
def A205842.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A205843.P8111042110380671226

`A002260(A205841(n+1))`
-/

namespace A205843.P8111042110380671226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A205841 (n + 1)).toNat

end

end A205843.P8111042110380671226

noncomputable section

/-- A205843: The least number j such that 3 divides s(k)-s(j), where k(n)=A205842(n) and s(k) denotes the (k+1)-st Fibonacci number.

Offset 1, canonical program `A205843.P8111042110380671226`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3839 terms. -/
def A205843 (n : ℕ) : ℤ :=
  A205843.P8111042110380671226.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3839 terms. -/
def A205843.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A205847.P17021187226599039684

`A002024(A205846(n+1))+1`
-/

namespace A205847.P17021187226599039684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A205846 (n + 1)).toNat + 1

end

end A205847.P17021187226599039684

noncomputable section

/-- A205847: Numbers k for which 4 divides s(k)-s(j) for some j<k; each k occurs once for each such j; s(k) denotes the (k+1)-st Fibonacci number.

Offset 1, canonical program `A205847.P17021187226599039684`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3285 terms. -/
def A205847 (n : ℕ) : ℤ :=
  A205847.P17021187226599039684.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3285 terms. -/
def A205847.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A205848.P7474827148853857163

`A002260(A205846(n+1))`
-/

namespace A205848.P7474827148853857163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A205846 (n + 1)).toNat

end

end A205848.P7474827148853857163

noncomputable section

/-- A205848: The least number j such that 4 divides s(k)-s(j), where k(n)=A205847(n) and s(k) denotes the (k+1)-st Fibonacci number.

Offset 1, canonical program `A205848.P7474827148853857163`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3750 terms. -/
def A205848 (n : ℕ) : ℤ :=
  A205848.P7474827148853857163.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3750 terms. -/
def A205848.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A205852.P2970175676094598334

`A003057(A205851(n+1)+1)`
-/

namespace A205852.P2970175676094598334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003057 (A205851 (n + 1) + 1).toNat

end

end A205852.P2970175676094598334

noncomputable section

/-- A205852: Numbers k for which 5 divides s(k)-s(j) for some j<k; each k occurs once for each such j; s(k) denotes the (k+1)-st Fibonacci number.

Offset 1, canonical program `A205852.P2970175676094598334`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1943 terms. -/
def A205852 (n : ℕ) : ℤ :=
  A205852.P2970175676094598334.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1943 terms. -/
def A205852.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A205853.P5082704050672343864

`A002260(A205851(n+1))`
-/

namespace A205853.P5082704050672343864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A205851 (n + 1)).toNat

end

end A205853.P5082704050672343864

noncomputable section

/-- A205853: The least number j such that 5 divides s(k)-s(j), where k(n)=A205852(n) and s(k) denotes the (k+1)-st Fibonacci number.

Offset 1, canonical program `A205853.P5082704050672343864`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2206 terms. -/
def A205853 (n : ℕ) : ℤ :=
  A205853.P5082704050672343864.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2206 terms. -/
def A205853.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A205856.P9508475719355629558

`∩[A205556(n+1), A205841(n+1)]`
-/

namespace A205856.P9508475719355629558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205556 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205841 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A205856.P9508475719355629558

noncomputable section

/-- A205856: Positions of multiples of 6 in A204922 (differences of Fibonacci numbers).

Offset 1, canonical program `A205856.P9508475719355629558`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3373 terms. -/
def A205856 (n : ℕ) : ℤ :=
  (A205856.P9508475719355629558.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3373 terms. -/
def A205856.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A205862.P9229607814627541584

`1+A002024(A205861(n+1))`
-/

namespace A205862.P9229607814627541584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A002024 (A205861 (n + 1)).toNat

end

end A205862.P9229607814627541584

noncomputable section

/-- A205862: Numbers k for which 7 divides s(k)-s(j) for some j<k; each k occurs once for each such j; s(k) denotes the (k+1)-st Fibonacci number.

Offset 1, canonical program `A205862.P9229607814627541584`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1738 terms. -/
def A205862 (n : ℕ) : ℤ :=
  A205862.P9229607814627541584.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1738 terms. -/
def A205862.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A205863.P14284149530257843342

`A002260(A205861(n+1))`
-/

namespace A205863.P14284149530257843342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A205861 (n + 1)).toNat

end

end A205863.P14284149530257843342

noncomputable section

/-- A205863: The least number j such that 7 divides s(k)-s(j), where k(n)=A205862(n) and s(k) denotes the (k+1)-st Fibonacci number.

Offset 1, canonical program `A205863.P14284149530257843342`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1963 terms. -/
def A205863 (n : ℕ) : ℤ :=
  A205863.P14284149530257843342.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1963 terms. -/
def A205863.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A205876.P8063870460233133950

`∩[A205556(n+1), A205851(n+1)]`
-/

namespace A205876.P8063870460233133950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205556 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205851 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A205876.P8063870460233133950

noncomputable section

/-- A205876: Positions of multiples of 10 in A204922 (differences of Fibonacci numbers).

Offset 1, canonical program `A205876.P8063870460233133950`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1928 terms. -/
def A205876 (n : ℕ) : ℤ :=
  (A205876.P8063870460233133950.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1928 terms. -/
def A205876.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A206297.P14886430242369453730

`A140434(n)+a(n-1)` with `a(0)=1, a(1)=3`
-/

namespace A206297.P14886430242369453730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  A140434 n + a (n - 1)

end

end A206297.P14886430242369453730

noncomputable section

/-- A206297: Position of n in the canonical bijection from the positive integers to the positive rational numbers.

Offset 1, canonical program `A206297.P14886430242369453730`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A206297 (n : ℕ) : ℤ :=
  A206297.P14886430242369453730.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A206297.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A206350.P761280235204802101

`A140434(n)+a(n-1)` with `a(0)=1`
-/

namespace A206350.P761280235204802101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A140434 n + a (n - 1)

end

end A206350.P761280235204802101

noncomputable section

/-- A206350: Position of 1/n in the canonical bijection from the positive integers to the positive rational numbers.

Offset 1, canonical program `A206350.P761280235204802101`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A206350 (n : ℕ) : ℤ :=
  A206350.P761280235204802101.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A206350.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A206369.P2534442500048428716

`abs(A061020(n+1))`
-/

namespace A206369.P2534442500048428716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A061020 (n + 1)|

end

end A206369.P2534442500048428716

noncomputable section

/-- A206369: a(p^k) = p^k - p^(k-1) + p^(k-2) - ... +- 1, and then extend by multiplicativity.

Offset 1, canonical program `A206369.P2534442500048428716`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A061020, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A206369 (n : ℕ) : ℤ :=
  A206369.P2534442500048428716.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A061020, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A206369.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A206479.P12139223227204150552

`A000120(A003985(n+1))`
-/

namespace A206479.P12139223227204150552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A003985 (n + 1)).toNat

end

end A206479.P12139223227204150552

noncomputable section

/-- A206479: Number of terms common to the binary expansions of m and n; a matrix by antidiagonals.

Offset 1, canonical program `A206479.P12139223227204150552`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A206479 (n : ℕ) : ℤ :=
  A206479.P12139223227204150552.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A206479.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A206603.P3063521816794991771

`A001787(n)-A189391(n)`
-/

namespace A206603.P3063521816794991771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001787 n - A189391 n

end

end A206603.P3063521816794991771

noncomputable section

/-- A206603: Maximal apex value of an addition triangle whose base is a permutation of {k-n/2, k=0..n}.

Offset 0, canonical program `A206603.P3063521816794991771`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A189391, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A206603 (n : ℕ) : ℤ :=
  A206603.P3063521816794991771.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A189391, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A206603.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A206626.P17427154198684155407

`A206329(n+1)-A206462(n+1)`
-/

namespace A206626.P17427154198684155407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206329 (n + 1) - A206462 (n + 1)

end

end A206626.P17427154198684155407

noncomputable section

/-- A206626: Primes p such that p + previousprime(p) is a squarefree number.

Offset 1, canonical program `A206626.P17427154198684155407`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A206329, A206462, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A206626 (n : ℕ) : ℤ :=
  A206626.P17427154198684155407.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A206329, A206462, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A206626.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A206853.P10300863134340145866

`A081118(n+1)-A057212(n+1)`
-/

namespace A206853.P10300863134340145866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081118 (n + 1) - A057212 (n + 1)

end

end A206853.P10300863134340145866

noncomputable section

/-- A206853: a(1)=1, for n>1, a(n) is the least number > a(n-1) such that the Hamming distance D(a(n-1), a(n)) = 2.

Offset 1, canonical program `A206853.P10300863134340145866`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A206853 (n : ℕ) : ℤ :=
  A206853.P10300863134340145866.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A206853.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A207063.P16806840195117011538

`A081118(n+1)-A057211(n+1)`
-/

namespace A207063.P16806840195117011538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081118 (n + 1) - A057211 (n + 1)

end

end A207063.P16806840195117011538

noncomputable section

/-- A207063: a(n) is the smallest number larger than a(n-1) with mutual Hamming distance 2 and a(1)=0.

Offset 1, canonical program `A207063.P16806840195117011538`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A207063 (n : ℕ) : ℤ :=
  A207063.P16806840195117011538.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A207063.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A207328.P8721381619634705548

`∑{p}[A057335(n), A097807(#)]`
-/

namespace A207328.P8721381619634705548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057335 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A097807 p

end

end A207328.P8721381619634705548

noncomputable section

/-- A207328: Nonlinearities of 4-variable Boolean functions ordered lexicographically.

Offset 0, canonical program `A207328.P8721381619634705548`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 191 terms. -/
def A207328 (n : ℕ) : ℤ :=
  A207328.P8721381619634705548.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 191 terms. -/
def A207328.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A207409.P10666545104290844078

`A204890(n+1)%A037126(n+1)`
-/

namespace A207409.P10666545104290844078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A204890 (n + 1)) (A037126 (n + 1))

end

end A207409.P10666545104290844078

noncomputable section

/-- A207409: Triangular array: T(n,k) = prime(n) mod prime(k), 1 <= k < n.

Offset 2, canonical program `A207409.P10666545104290844078`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A207409 (n : ℕ) : ℤ :=
  A207409.P10666545104290844078.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A207409.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A207637.P8278429149852337198

`filter[A034961(n+1), A353627(#)]`
-/

namespace A207637.P8278429149852337198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034961 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353627 (f1 j).toNat = 1) n)

end

end A207637.P8278429149852337198

noncomputable section

/-- A207637: Squarefree sums of 3 successive primes.

Offset 1, canonical program `A207637.P8278429149852337198`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A207637 (n : ℕ) : ℤ :=
  A207637.P8278429149852337198.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A207637.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A207992.P2814114464240705401

`∩[A207990(n+1), A207991(n+1)]`
-/

namespace A207992.P2814114464240705401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207990 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207991 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A207992.P2814114464240705401

noncomputable section

/-- A207992: Primes p of the form p = prime(n) + prime(n+1) - 5 and p = prime(k) + prime(k+1) + 5.

Offset 1, canonical program `A207992.P2814114464240705401`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 222 terms. -/
def A207992 (n : ℕ) : ℤ :=
  (A207992.P2814114464240705401.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 222 terms. -/
def A207992.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A208149.P8257743425623628444

`record[A000040(n+1)%A137780(n+1)]`
-/

namespace A208149.P8257743425623628444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1)) (A137780 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A208149.P8257743425623628444

noncomputable section

/-- A208149: Primes prime(k) such that prime(k) <= 2^(prime(k+1) - prime(k)).

Offset 1, canonical program `A208149.P8257743425623628444`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2213 terms. -/
def A208149 (n : ℕ) : ℤ :=
  A208149.P8257743425623628444.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2213 terms. -/
def A208149.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A208513.P6652233857505646847

`gcd(A010816(n), A110162(n))`
-/

namespace A208513.P6652233857505646847
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A010816 n) (A110162 n)

end

end A208513.P6652233857505646847

noncomputable section

/-- A208513: Triangle of coefficients of polynomials u(n,x) jointly generated with A111125; see the Formula section.

Offset 1, canonical program `A208513.P6652233857505646847`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A208513 (n : ℕ) : ℤ :=
  (A208513.P6652233857505646847.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A208513.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A208515.P6119070150029608843

`A207611(gcd(A010816(n), A038722(n+1)))`
-/

namespace A208515.P6119070150029608843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207611 (Int.gcd (A010816 n) (A038722 (n + 1)))

end

end A208515.P6119070150029608843

noncomputable section

/-- A208515: Triangle of coefficients of polynomials v(n,x) jointly generated with A208514; see the Formula section.

Offset 1, canonical program `A208515.P6119070150029608843`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9871 terms. -/
def A208515 (n : ℕ) : ℤ :=
  A208515.P6119070150029608843.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9871 terms. -/
def A208515.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A208521.P14308452571978604591

`A060546(A002262(n))*A133084(n+1)`
-/

namespace A208521.P14308452571978604591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060546 (A002262 n).toNat * A133084 (n + 1)

end

end A208521.P14308452571978604591

noncomputable section

/-- A208521: Triangle of coefficients of polynomials v(n,x) jointly generated with A208520; see the Formula section.

Offset 1, canonical program `A208521.P14308452571978604591`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A208521 (n : ℕ) : ℤ :=
  A208521.P14308452571978604591.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A208521.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A208906.P14491951014712469072

`A016116(A002262(n))*A133084(n+1)`
-/

namespace A208906.P14491951014712469072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 (A002262 n).toNat * A133084 (n + 1)

end

end A208906.P14491951014712469072

noncomputable section

/-- A208906: Triangle of coefficients of polynomials v(n,x) jointly generated with A208905; see the Formula section.

Offset 1, canonical program `A208906.P14491951014712469072`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A208906 (n : ℕ) : ℤ :=
  A208906.P14491951014712469072.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A208906.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A209127.P11508689501548597325

`A208337(n+1)+A038137(n)-A209126(n+1)`
-/

namespace A209127.P11508689501548597325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208337 (n + 1) + (A038137 n - A209126 (n + 1))

end

end A209127.P11508689501548597325

noncomputable section

/-- A209127: Triangle of coefficients of polynomials v(n,x) jointly generated with A209126; see the Formula section.

Offset 1, canonical program `A209127.P11508689501548597325`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A209127 (n : ℕ) : ℤ :=
  A209127.P11508689501548597325.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A209127.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A209492.P3658957468068443564

`2*A048645(n+1)-1`
-/

namespace A209492.P3658957468068443564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A048645 (n + 1) - 1

end

end A209492.P3658957468068443564

noncomputable section

/-- A209492: a(0)=1; for n >= 1, let k = floor((1 + sqrt(8*n-7))/2), m = n - (k^2 - k+2)/2. Then a(n) = 2^k + 2^(m+1) - 1.

Offset 0, canonical program `A209492.P3658957468068443564`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. -/
def A209492 (n : ℕ) : ℤ :=
  A209492.P3658957468068443564.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. -/
def A209492.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A209534.P9858660404653803592

`A029744(A173395(n+1))+1`
-/

namespace A209534.P9858660404653803592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029744 (A173395 (n + 1)).toNat + 1

end

end A209534.P9858660404653803592

noncomputable section

/-- A209534: T(n,k)=Half the number of (n+1)X(k+1) 0..2 arrays with every 2X2 subblock having exactly two distinct clockwise edge differences.

Offset 1, canonical program `A209534.P9858660404653803592`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1197 terms. -/
def A209534 (n : ℕ) : ℤ :=
  A209534.P9858660404653803592.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1197 terms. -/
def A209534.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A209561.P13297843710123169914

`A051597(n)-a(n-1)` with `a(0)=1`
-/

namespace A209561.P13297843710123169914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A051597 n - a (n - 1)

end

end A209561.P13297843710123169914

noncomputable section

/-- A209561: Triangle of coefficients of polynomials u(n,x) jointly generated with A209562; see the Formula section.

Offset 1, canonical program `A209561.P13297843710123169914`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A209561 (n : ℕ) : ℤ :=
  A209561.P13297843710123169914.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A209561.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A209747.P17975551538374276799

`A057428(A198954(n))+2*A037027(n)`
-/

namespace A209747.P17975551538374276799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A198954 n).toNat + 2 * A037027 n

end

end A209747.P17975551538374276799

noncomputable section

/-- A209747: Triangle of coefficients of polynomials u(n,x) jointly generated with A209748; see the Formula section.

Offset 1, canonical program `A209747.P17975551538374276799`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A209747 (n : ℕ) : ℤ :=
  A209747.P17975551538374276799.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A209747.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A209755.P4404714408825635894

`A209151(n+1)-Δ[A155161(A038722(n+1))]`
-/

namespace A209755.P4404714408825635894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155161 (A038722 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209151 (n + 1) - (f1 (n + 1) - f1 n)

end

end A209755.P4404714408825635894

noncomputable section

/-- A209755: Triangle of coefficients of polynomials u(n,x) jointly generated with A209756; see the Formula section.

Offset 1, canonical program `A209755.P4404714408825635894`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9869 terms. -/
def A209755 (n : ℕ) : ℤ :=
  A209755.P4404714408825635894.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9869 terms. -/
def A209755.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A209762.P11771980091990745712

`A209761(n+1)+A097805(n)-A177767(n)`
-/

namespace A209762.P11771980091990745712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209761 (n + 1) + A097805 n - A177767 n

end

end A209762.P11771980091990745712

noncomputable section

/-- A209762: Triangle of coefficients of polynomials v(n,x) jointly generated with A209761; see the Formula section.

Offset 1, canonical program `A209762.P11771980091990745712`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A209762 (n : ℕ) : ℤ :=
  A209762.P11771980091990745712.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A209762.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A209932.P1013292124690884436

`lt[A209929(n+1), 1]+1`
-/

namespace A209932.P1013292124690884436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209929 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A209932.P1013292124690884436

noncomputable section

/-- A209932: Numbers k such that smallest digit of all divisors of k is 0.

Offset 1, canonical program `A209932.P1013292124690884436`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8243 terms. -/
def A209932 (n : ℕ) : ℤ :=
  (A209932.P1013292124690884436.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8243 terms. -/
def A209932.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A209970.P62417713944158277

`2^n-A000031(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A209970.P62417713944158277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A000031 n

end

end A209970.P62417713944158277

noncomputable section

/-- A209970: a(n) = 2^n - A000031(n).

Offset 0, canonical program `A209970.P62417713944158277`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000031, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A209970 (n : ℕ) : ℤ :=
  A209970.P62417713944158277.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000031, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A209970.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A210190.P939011334498092116

`A105070(Δ[A055087(n)]+n+1)`
-/

namespace A210190.P939011334498092116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055087 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105070 (f1 (n + 1) - f1 n + (n + 1 : ℤ)).toNat

end

end A210190.P939011334498092116

noncomputable section

/-- A210190: Triangle of coefficients of polynomials v(n,x) jointly generated with A210189; see the Formula section.

Offset 1, canonical program `A210190.P939011334498092116`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A210190 (n : ℕ) : ℤ :=
  A210190.P939011334498092116.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A210190.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A210200.P13673094195992924329

`A209145(n+1)+A155161(A028310(n))`
-/

namespace A210200.P13673094195992924329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209145 (n + 1) + A155161 (A028310 n).toNat

end

end A210200.P13673094195992924329

noncomputable section

/-- A210200: Triangle of coefficients of polynomials v(n,x) jointly generated with A210199; see the Formula section.

Offset 1, canonical program `A210200.P13673094195992924329`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A210200 (n : ℕ) : ℤ :=
  A210200.P13673094195992924329.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A210200.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A210552.P11406578577563423596

`A053538(A099375(n)+n)`
-/

namespace A210552.P11406578577563423596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053538 (A099375 n + (n : ℤ)).toNat

end

end A210552.P11406578577563423596

noncomputable section

/-- A210552: Triangle of coefficients of polynomials u(n,x) jointly generated with A210553; see the Formula section.

Offset 1, canonical program `A210552.P11406578577563423596`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9870 terms. -/
def A210552 (n : ℕ) : ℤ :=
  A210552.P11406578577563423596.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9870 terms. -/
def A210552.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A210554.P3328515325039195703

`A105306(A099375(n)+1+n)`
-/

namespace A210554.P3328515325039195703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105306 (A099375 n + 1 + (n : ℤ)).toNat

end

end A210554.P3328515325039195703

noncomputable section

/-- A210554: Triangle of coefficients of polynomials v(n,x) jointly generated with A208341; see the Formula section.

Offset 1, canonical program `A210554.P3328515325039195703`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A210554 (n : ℕ) : ℤ :=
  A210554.P3328515325039195703.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A210554.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A210619.P17701669326897386950

`∑[A000045(A099375(n))*A035214(n)]`
-/

namespace A210619.P17701669326897386950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A099375 n).toNat * A035214 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A210619.P17701669326897386950

noncomputable section

/-- A210619: Triangle of numbers with n 1's and n 0's in their representation in base of Fibonacci numbers (A014417).

Offset 1, canonical program `A210619.P17701669326897386950`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A210619 (n : ℕ) : ℤ :=
  A210619.P17701669326897386950.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A210619.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A210628.P787028128316081024

`(-1)^n*A097331(n)`
-/

namespace A210628.P787028128316081024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A097331 n

end

end A210628.P787028128316081024

noncomputable section

/-- A210628: Expansion of (-1 + 2*x + sqrt( 1 - 4*x^2)) / (2*x) in powers of x.

Offset 0, canonical program `A210628.P787028128316081024`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A097331, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A210628 (n : ℕ) : ℤ :=
  A210628.P787028128316081024.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A097331, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A210628.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A210742.P14717416751337395312

`A199479(A014132(n+1))`
-/

namespace A210742.P14717416751337395312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199479 (A014132 (n + 1)).toNat

end

end A210742.P14717416751337395312

noncomputable section

/-- A210742: Triangle of coefficients of polynomials v(n,x) jointly generated with A210741; see the Formula section.

Offset 1, canonical program `A210742.P14717416751337395312`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9859 terms. -/
def A210742 (n : ℕ) : ℤ :=
  A210742.P14717416751337395312.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9859 terms. -/
def A210742.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A210845.P13189797381442615972

`lt[A003557(A000010(2*(n+1))), 3]+1`
-/

namespace A210845.P13189797381442615972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (A000010 (2 * (n + 1))).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A210845.P13189797381442615972

noncomputable section

/-- A210845: Values n for which A055034(n) is squarefree.

Offset 1, canonical program `A210845.P13189797381442615972`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1410 terms. -/
def A210845 (n : ℕ) : ℤ :=
  (A210845.P13189797381442615972.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1410 terms. -/
def A210845.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A211370.P13812400085331057885

`A143122(A099375(n)+1+n)`
-/

namespace A211370.P13812400085331057885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143122 (A099375 n + 1 + (n : ℤ)).toNat

end

end A211370.P13812400085331057885

noncomputable section

/-- A211370: Array read by antidiagonals: T(m,n) = Sum( n <= i <= m+n-1 ) i!.

Offset 1, canonical program `A211370.P13812400085331057885`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2415 terms. -/
def A211370 (n : ℕ) : ℤ :=
  A211370.P13812400085331057885.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2415 terms. -/
def A211370.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A211779.P11493622072280912374

`A007429(n+1)-A000203(n+1)`
-/

namespace A211779.P11493622072280912374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007429 (n + 1) - A000203 (n + 1)

end

end A211779.P11493622072280912374

noncomputable section

/-- A211779: a(n) = Sum_{d_<n | n} sigma(d_<n), where d_<n = divisors of n that are less than n, sigma(x) = A000203(x).

Offset 1, canonical program `A211779.P11493622072280912374`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007429, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A211779 (n : ℕ) : ℤ :=
  A211779.P11493622072280912374.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007429, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A211779.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A211780.P8877674507974761173

`A007429(n+1)-(n+1)`
-/

namespace A211780.P8877674507974761173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007429 (n + 1) - (n + 1 : ℤ)

end

end A211780.P8877674507974761173

noncomputable section

/-- A211780: a(n) = Sum_{d|n, d<n} d * tau(n / d), where tau = A000005 is the number of divisors.

Offset 1, canonical program `A211780.P8877674507974761173`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007429, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A211780 (n : ℕ) : ℤ :=
  A211780.P8877674507974761173.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007429, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A211780.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A212314.P11095941826537081414

`eq[A000120(n), A130724(A192085(n))]`
-/

namespace A212314.P11095941826537081414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130724 (A192085 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A212314.P11095941826537081414

noncomputable section

/-- A212314: Numbers m such that B(m^3) = 3*B(m), where B(m) is the binary weight of m (A000120).

Offset 1, canonical program `A212314.P11095941826537081414`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 845 terms. -/
def A212314 (n : ℕ) : ℤ :=
  (A212314.P11095941826537081414.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 845 terms. -/
def A212314.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A212496.P12538457052188032369

`∑[1-A359770(n+1)-A359770(n+1)]`
-/

namespace A212496.P12538457052188032369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A359770 (n + 1) - A359770 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212496.P12538457052188032369

noncomputable section

/-- A212496: a(n) = Sum_{k=1..n} (-1)^(k-Omega(k)) with Omega(k) the total number of prime factors of k (counted with multiplicity).

Offset 1, canonical program `A212496.P12538457052188032369`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A212496 (n : ℕ) : ℤ :=
  A212496.P12538457052188032369.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A212496.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A212690.P220314655135149710

`n²²-A212689(n)`
-/

namespace A212690.P220314655135149710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n ^ 2) ^ 2 : ℤ) - A212689 n

end

end A212690.P220314655135149710

noncomputable section

/-- A212690: Number of (w,x,y,z) with all terms in {1,...,n} and 2|w-x| <= n+|y-z|.

Offset 0, canonical program `A212690.P220314655135149710`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A212690 (n : ℕ) : ℤ :=
  A212690.P220314655135149710.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A212690.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A212730.P8897697622710183952

`A055217(Δ[n²])`
-/

namespace A212730.P8897697622710183952
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055217 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A212730.P8897697622710183952

noncomputable section

/-- A212730: Number of 0..2 arrays of length 2*n with sum less than 2*n in any length 2n subsequence (=less than 50% duty cycle).

Offset 1, canonical program `A212730.P8897697622710183952`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A212730 (n : ℕ) : ℤ :=
  A212730.P8897697622710183952.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A212730.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A213088.P18382071125931641229

`A209302(n+1)-1`
-/

namespace A213088.P18382071125931641229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209302 (n + 1) - 1

end

end A213088.P18382071125931641229

noncomputable section

/-- A213088: The Manhattan distance to the origin while traversing the first quadrant in a taxicab geometry.

Offset 1, canonical program `A213088.P18382071125931641229`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A209302, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A213088 (n : ℕ) : ℤ :=
  A213088.P18382071125931641229.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A209302, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A213088.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A213584.P14777536116696346004

`A213579(comp[∑[n]])-A003057(n+2)`
-/

namespace A213584.P14777536116696346004
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213579 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) - A003057 (n + 2)

end

end A213584.P14777536116696346004

noncomputable section

/-- A213584: Rectangular array: (row n) = b**c, where b(h) = F(h+1), c(h) = n-1+h, where F=A000045 (Fibonacci numbers), n>=1, h>=1, and ** = convolution.

Offset 1, canonical program `A213584.P14777536116696346004`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9860 terms. -/
def A213584 (n : ℕ) : ℤ :=
  A213584.P14777536116696346004.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9860 terms. -/
def A213584.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A213649.P8547143096557772554

`A000720(A145445(n+1))-n`
-/

namespace A213649.P8547143096557772554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A145445 (n + 1)).toNat - (n : ℤ)

end

end A213649.P8547143096557772554

noncomputable section

/-- A213649: Smallest k such that there exists a square between prime(n) and prime(n+k).

Offset 1, canonical program `A213649.P8547143096557772554`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A213649 (n : ℕ) : ℤ :=
  A213649.P8547143096557772554.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A213649.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A213724.P12963400970453454858

`Δ[(∑[A079559(abs(1-n))]-1)²]`
-/

namespace A213724.P12963400970453454858
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079559 |1 - (n : ℤ)|.toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j - 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A213724.P12963400970453454858

noncomputable section

/-- A213724: Largest natural number x such that x = n + A000120(x), or zero if no such number exists.

Offset 0, canonical program `A213724.P12963400970453454858`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1025 terms. -/
def A213724 (n : ℕ) : ℤ :=
  A213724.P12963400970453454858.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1025 terms. -/
def A213724.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A213750.P11543633709042919296

`2*A213500(n+1)-abs(A122432(n))`
-/

namespace A213750.P11543633709042919296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A213500 (n + 1) - |A122432 n|

end

end A213750.P11543633709042919296

noncomputable section

/-- A213750: Rectangular array: (row n) = b**c, where b(h) = h, c(h) = 2*(n-1+h)-1, n>=1, h>=1, and ** = convolution.

Offset 1, canonical program `A213750.P11543633709042919296`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A213750 (n : ℕ) : ℤ :=
  A213750.P11543633709042919296.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A213750.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A213766.P16960842637779880189

`A023860(2*(n+1))-A099920(n)`
-/

namespace A213766.P16960842637779880189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023860 (2 * (n + 1)) - A099920 n

end

end A213766.P16960842637779880189

noncomputable section

/-- A213766: Principal diagonal of the convolution array A213765.

Offset 1, canonical program `A213766.P16960842637779880189`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 238 terms. -/
def A213766 (n : ℕ) : ℤ :=
  A213766.P16960842637779880189.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 238 terms. -/
def A213766.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A213768.P6784078122479010732

`2*A213579(n+1)-A104582(n+1)`
-/

namespace A213768.P6784078122479010732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A213579 (n + 1) - A104582 (n + 1)

end

end A213768.P6784078122479010732

noncomputable section

/-- A213768: Rectangular array: (row n) = b**c, where b(h) = F(h), c(h) = 2*n-3+2*h, F=A000045 (Fibonacci numbers), n>=1, h>=1, and ** = convolution.

Offset 1, canonical program `A213768.P6784078122479010732`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A213768 (n : ℕ) : ℤ :=
  A213768.P6784078122479010732.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A213768.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A213821.P9578737112397043331

`A213771(n+1)+A049777(n+1)`
-/

namespace A213821.P9578737112397043331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213771 (n + 1) + A049777 (n + 1)

end

end A213821.P9578737112397043331

noncomputable section

/-- A213821: Rectangular array: (row n) = b**c, where b(h) = 3*h-1, c(h) = n-1+h, n>=1, h>=1, and ** = convolution.

Offset 1, canonical program `A213821.P9578737112397043331`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A213821 (n : ℕ) : ℤ :=
  A213821.P9578737112397043331.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A213821.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A213841.P5709133087758580350

`2*A213752(n+1)-A055461(n+1)`
-/

namespace A213841.P5709133087758580350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A213752 (n + 1) - A055461 (n + 1)

end

end A213841.P5709133087758580350

noncomputable section

/-- A213841: Rectangular array: (row n) = b**c, where b(h) = 2*h-1, c(h) = 4*n-7+4*h, n>=1, h>=1, and ** = convolution.

Offset 1, canonical program `A213841.P5709133087758580350`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A213841 (n : ℕ) : ℤ :=
  A213841.P5709133087758580350.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A213841.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A213844.P11503971655518464143

`A055461(n+1)+2*A213752(n+1)`
-/

namespace A213844.P11503971655518464143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055461 (n + 1) + 2 * A213752 (n + 1)

end

end A213844.P11503971655518464143

noncomputable section

/-- A213844: Rectangular array: (row n) = b**c, where b(h) = 2*h-1, c(h) = 4*n-5+4*h, n>=1, h>=1, and ** = convolution.

Offset 1, canonical program `A213844.P11503971655518464143`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A213844 (n : ℕ) : ℤ :=
  A213844.P11503971655518464143.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A213844.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A213902.P8697298374266597207

`A004523(A100820(n+1))`
-/

namespace A213902.P8697298374266597207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004523 (A100820 (n + 1)).toNat

end

end A213902.P8697298374266597207

noncomputable section

/-- A213902: Number of integers of the form 6*k+1 and 6*k-1 between prime(n) and prime(n+1).

Offset 1, canonical program `A213902.P8697298374266597207`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A213902 (n : ℕ) : ℤ :=
  A213902.P8697298374266597207.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A213902.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A214054.P9495975754376215366

`gcd(2, A007912(xor(3, n)+3))`
-/

namespace A214054.P9495975754376215366
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A007912 (Nat.xor 3 n + 3))

end

end A214054.P9495975754376215366

noncomputable section

/-- A214054: Least m>0 such that n!!+m and n-m have a common divisor > 1.

Offset 1, canonical program `A214054.P9495975754376215366`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8165 terms. -/
def A214054 (n : ℕ) : ℤ :=
  (A214054.P9495975754376215366.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8165 terms. -/
def A214054.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A214287.P11295175971518832110

`p?[A000010(n+1)-1]`
-/

namespace A214287.P11295175971518832110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A214287.P11295175971518832110

noncomputable section

/-- A214287: Primes of the form phi(n)-1 sorted by increasing n, where phi is the Euler totient function.

Offset 1, canonical program `A214287.P11295175971518832110`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A214287 (n : ℕ) : ℤ :=
  A214287.P11295175971518832110.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A214287.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A214288.P3436294397742324961

`p?[A000010(n+1)+1]`
-/

namespace A214288.P3436294397742324961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A214288.P3436294397742324961

noncomputable section

/-- A214288: Primes of the form phi(n)+1 sorted by increasing n, where phi is the Euler totient function.

Offset 1, canonical program `A214288.P3436294397742324961`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A214288 (n : ℕ) : ℤ :=
  A214288.P3436294397742324961.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A214288.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A214408.P1183294702136454259

`lt[A009194(n+1), A033880(n+1)]+1`
-/

namespace A214408.P1183294702136454259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009194 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033880 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A214408.P1183294702136454259

noncomputable section

/-- A214408: Abundant numbers for which the abundance is not a divisor.

Offset 1, canonical program `A214408.P1183294702136454259`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2465 terms. -/
def A214408 (n : ℕ) : ℤ :=
  (A214408.P1183294702136454259.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2465 terms. -/
def A214408.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A214651.P2445496297912900043

`A220465(record[A141419(n+1)])`
-/

namespace A214651.P2445496297912900043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141419 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220465 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A214651.P2445496297912900043

noncomputable section

/-- A214651: Count down from n to 1, n times.

Offset 1, canonical program `A214651.P2445496297912900043`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1015 terms. -/
def A214651 (n : ℕ) : ℤ :=
  A214651.P2445496297912900043.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1015 terms. -/
def A214651.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A214710.P3311664088709254903

`A007877(A007912(n+3)+A007893(n+1))`
-/

namespace A214710.P3311664088709254903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007877 (A007912 (n + 3) + A007893 (n + 1)).toNat

end

end A214710.P3311664088709254903

noncomputable section

/-- A214710: Least m>0 such that n!-m and n!!-m are relatively prime.

Offset 1, canonical program `A214710.P3311664088709254903`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 483 terms. -/
def A214710 (n : ℕ) : ℤ :=
  A214710.P3311664088709254903.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 483 terms. -/
def A214710.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A214884.P7885018717770910458

`(3*A119283(n)+(-1)^n*A001654(n))/2`
-/

namespace A214884.P7885018717770910458
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 * A119283 n + (-1) ^ n * A001654 n : ℚ) / 2

end

end A214884.P7885018717770910458

noncomputable section

/-- A214884: a(n) = Sum_{k=0..n} (-1)^k*F(k)*F(k+2), where F=A000045 (Fibonacci numbers).

Offset 0, canonical program `A214884.P7885018717770910458`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A119283, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A214884 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A214884.P7885018717770910458.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A119283, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A214884.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A214885.P1344965221170745018

`2*A119283(n)+(-1)^n*A001654(n)`
-/

namespace A214885.P1344965221170745018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A119283 n + (-1) ^ n * A001654 n

end

end A214885.P1344965221170745018

noncomputable section

/-- A214885: a(n) = Sum_{k=0..n} (-1)^k*F(k)*F(k+3), where F=A000045 (Fibonacci numbers).

Offset 0, canonical program `A214885.P1344965221170745018`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A119283, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A214885 (n : ℕ) : ℤ :=
  A214885.P1344965221170745018.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A119283, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A214885.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A215202.P9003233885417552104

`A128227(eq[A048152(n+1), A128227(n)])`
-/

namespace A215202.P9003233885417552104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048152 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128227 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128227 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A215202.P9003233885417552104

noncomputable section

/-- A215202: Irregular triangle in which n-th row gives m in 1, ..., n-1 such that m^2 == m (mod n).

Offset 2, canonical program `A215202.P9003233885417552104`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 398 terms. -/
def A215202 (n : ℕ) : ℤ :=
  A215202.P9003233885417552104.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 398 terms. -/
def A215202.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A215456.P7038399107069761046

`A007912(4*(n+1))%Δ[A002378(n)]`
-/

namespace A215456.P7038399107069761046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007912 (4 * (n + 1))) (f1 (n + 1) - f1 n)

end

end A215456.P7038399107069761046

noncomputable section

/-- A215456: a(n)=(4n-1)!! modulo 2n, n=1,2,...

Offset 1, canonical program `A215456.P7038399107069761046`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A215456 (n : ℕ) : ℤ :=
  A215456.P7038399107069761046.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A215456.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A215713.P3588067354417912298

`A000079(n+1)²/A006519(A016777(n+2))`
-/

namespace A215713.P3588067354417912298
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000079 (n + 1) ^ 2 : ℚ) / (A006519 (A016777 (n + 2)).toNat : ℚ)

end

end A215713.P3588067354417912298

noncomputable section

/-- A215713: Denominator of sum(i=1..n, 3*i/4^i).

Offset 1, canonical program `A215713.P3588067354417912298`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A215713 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A215713.P3588067354417912298.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A215713.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A215726.P9624273629466354318

`∩[A078779(n+1)-1, A078779(n+1)]`
-/

namespace A215726.P9624273629466354318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078779 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078779 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215726.P9624273629466354318

noncomputable section

/-- A215726: Numbers k such that the k-th triangular number is squarefree.

Offset 1, canonical program `A215726.P9624273629466354318`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6828 terms. -/
def A215726 (n : ℕ) : ℤ :=
  (A215726.P9624273629466354318.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6828 terms. -/
def A215726.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A215992.P12067662932436388896

`p?[A007504(n+51)-A007504(n)]`
-/

namespace A215992.P12067662932436388896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (n + 51) - A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215992.P12067662932436388896

noncomputable section

/-- A215992: Primes that are the sum of 51 consecutive primes.

Offset 1, canonical program `A215992.P12067662932436388896`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 338 terms. -/
def A215992 (n : ℕ) : ℤ :=
  A215992.P12067662932436388896.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 338 terms. -/
def A215992.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A216126.P17812320918836418919

`A000351(n)%A017512(A010816(3*n+2))`
-/

namespace A216126.P17812320918836418919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000351 n) (A017512 (A010816 (3 * n + 2)).toNat)

end

end A216126.P17812320918836418919

noncomputable section

/-- A216126: a(n) = 5^n mod 10000.

Offset 0, canonical program `A216126.P17812320918836418919`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 144 terms. -/
def A216126 (n : ℕ) : ℤ :=
  A216126.P17812320918836418919.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 144 terms. -/
def A216126.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A217139.P16840314535765683681

`eq[A000010(C(3, n)+n), A000010(n+12)]`
-/

namespace A217139.P16840314535765683681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (Nat.choose 3 n + n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 12)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A217139.P16840314535765683681

noncomputable section

/-- A217139: Numbers n such that phi(n) = phi(n+12), with Euler's totient function phi = A000010.

Offset 1, canonical program `A217139.P16840314535765683681`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 543 terms. -/
def A217139 (n : ℕ) : ℤ :=
  (A217139.P16840314535765683681.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 543 terms. -/
def A217139.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A217219.P6754064516663132838

`6*A045833(n)`
-/

namespace A217219.P6754064516663132838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A045833 n

end

end A217219.P6754064516663132838

noncomputable section

/-- A217219: Theta series of planar hexagonal net (honeycomb) with respect to deep hole.

Offset 0, canonical program `A217219.P6754064516663132838`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A045833, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A217219 (n : ℕ) : ℤ :=
  A217219.P6754064516663132838.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A045833, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A217219.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A217324.P15056833866793307979

`A005817(n+4)-A001006(n+4)`
-/

namespace A217324.P15056833866793307979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005817 (n + 4) - A001006 (n + 4)

end

end A217324.P15056833866793307979

noncomputable section

/-- A217324: Number of self-inverse permutations in S_n with longest increasing subsequence of length 4.

Offset 4, canonical program `A217324.P15056833866793307979`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005817, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A217324 (n : ℕ) : ℤ :=
  A217324.P15056833866793307979.a (n - 4)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005817, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A217324.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A218265.P4459247732749169675

`A000085(n+5)-A005817(n+5)`
-/

namespace A218265.P4459247732749169675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000085 (n + 5) - A005817 (n + 5)

end

end A218265.P4459247732749169675

noncomputable section

/-- A218265: Number of standard Young tableaux of n cells and height >= 5.

Offset 5, canonical program `A218265.P4459247732749169675`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005817, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A218265 (n : ℕ) : ℤ :=
  A218265.P4459247732749169675.a (n - 5)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005817, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A218265.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A218346.P7761468565434163924

`A066846(A007401(n+1))`
-/

namespace A218346.P7761468565434163924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066846 (A007401 (n + 1)).toNat

end

end A218346.P7761468565434163924

noncomputable section

/-- A218346: Numbers of the form a^a + b^b, with a > b > 0.

Offset 1, canonical program `A218346.P7761468565434163924`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1540 terms. -/
def A218346 (n : ℕ) : ℤ :=
  A218346.P7761468565434163924.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1540 terms. -/
def A218346.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A219194.P13841470351551942710

`A000079(abs(A036263(n+1)))`
-/

namespace A219194.P13841470351551942710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 |A036263 (n + 1)|.toNat

end

end A219194.P13841470351551942710

noncomputable section

/-- A219194: a(n) = max(A218075(n+1), A218075(n)) / min(A218075(n+1), A218075(n)).

Offset 1, canonical program `A219194.P13841470351551942710`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A219194 (n : ℕ) : ℤ :=
  A219194.P13841470351551942710.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A219194.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A220104.P13357652405321892040

`A056556(A004526(n))+1`
-/

namespace A220104.P13357652405321892040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056556 (A004526 n).toNat + 1

end

end A220104.P13357652405321892040

noncomputable section

/-- A220104: k appears k*(k+1) times.

Offset 1, canonical program `A220104.P13357652405321892040`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A220104 (n : ℕ) : ℤ :=
  A220104.P13357652405321892040.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A220104.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A220861.P3384637757439596115

`-A204993(record[A110560(n)])`
-/

namespace A220861.P3384637757439596115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110560 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A204993 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A220861.P3384637757439596115

noncomputable section

/-- A220861: Choose smallest m>0 such that the n-th rational prime p ramifies in the imaginary quadratic extension field K = Q(sqrt(-m)); a(n) = discriminant(K).

Offset 1, canonical program `A220861.P3384637757439596115`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A220861 (n : ℕ) : ℤ :=
  A220861.P3384637757439596115.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A220861.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A220883.P12342537143027041134

`abs(A008275(n+1)*A076112(A014132(n+1)))`
-/

namespace A220883.P12342537143027041134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008275 (n + 1) * A076112 (A014132 (n + 1)).toNat|

end

end A220883.P12342537143027041134

noncomputable section

/-- A220883: Triangle read by rows: row n gives coefficients of expansion of Product_{k = 1..n-1} ((n + 1)*x + k), starting with lowest power.

Offset 1, canonical program `A220883.P12342537143027041134`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1466 terms. -/
def A220883 (n : ℕ) : ℤ :=
  A220883.P12342537143027041134.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1466 terms. -/
def A220883.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A221146.P4369918167823876310

`2*A004198(n)`
-/

namespace A221146.P4369918167823876310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A004198 n

end

end A221146.P4369918167823876310

noncomputable section

/-- A221146: Table read by antidiagonals: (m+n) - (m XOR n).

Offset 0, canonical program `A221146.P4369918167823876310`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A221146 (n : ℕ) : ℤ :=
  A221146.P4369918167823876310.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A221146.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A222404.P14214754150695596768

`2*A222403(n)`
-/

namespace A222404.P14214754150695596768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A222403 n

end

end A222404.P14214754150695596768

noncomputable section

/-- A222404: Triangle read by rows: left and right edges are A002378, interior entries are filled in using the Pascal triangle rule.

Offset 0, canonical program `A222404.P14214754150695596768`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A222404 (n : ℕ) : ℤ :=
  A222404.P14214754150695596768.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A222404.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A224787.P11375264175183954260

`∑{d}[n+1, A120007((n+1)/#)^3]`
-/

namespace A224787.P11375264175183954260
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A120007 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat ^ 3

end

end A224787.P11375264175183954260

noncomputable section

/-- A224787: Sum of cubes of prime factors of n (counted with multiplicity).

Offset 1, canonical program `A224787.P11375264175183954260`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A224787 (n : ℕ) : ℤ :=
  A224787.P11375264175183954260.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A224787.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A224859.P2414491205030028482

`∩[A201734(n+1), A201818(n+1)]`
-/

namespace A224859.P2414491205030028482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201734 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201818 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A224859.P2414491205030028482

noncomputable section

/-- A224859: Numbers n such that 90*n + 47 and 90*n + 49 are twin primes.

Offset 1, canonical program `A224859.P2414491205030028482`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2565 terms. -/
def A224859 (n : ℕ) : ℤ :=
  (A224859.P2414491205030028482.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2565 terms. -/
def A224859.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A225014.P12267725668881702781

`∑[∑[A225013(n+1)]]+1`
-/

namespace A225014.P12267725668881702781
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225013 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A225014.P12267725668881702781

noncomputable section

/-- A225014: Number of 7Xn 0..1 arrays with rows unimodal and columns nondecreasing.

Offset 1, canonical program `A225014.P12267725668881702781`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A225014 (n : ℕ) : ℤ :=
  A225014.P12267725668881702781.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A225014.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A225222.P12882070343994640497

`p?[lt[A023416(n), A145037(n)]]`
-/

namespace A225222.P12882070343994640497
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145037 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A225222.P12882070343994640497

noncomputable section

/-- A225222: Primes with more than twice as many 1's as 0's in binary.

Offset 1, canonical program `A225222.P12882070343994640497`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 271 terms. -/
def A225222 (n : ℕ) : ℤ :=
  (A225222.P12882070343994640497.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 271 terms. -/
def A225222.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A225530.P14142544683776780979

`A000010(C(2, n²)+n)`
-/

namespace A225530.P14142544683776780979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (Nat.choose 2 (n ^ 2) + n)

end

end A225530.P14142544683776780979

noncomputable section

/-- A225530: Number of ordered pairs (i,j) with i,j >= 0, i + j = n and gcd(i,j) <= 1.

Offset 0, canonical program `A225530.P14142544683776780979`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 401 terms. -/
def A225530 (n : ℕ) : ℤ :=
  A225530.P14142544683776780979.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 401 terms. -/
def A225530.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A225541.P14151932172831400690

`∑[char[A058749(n+1)]]`
-/

namespace A225541.P14151932172831400690
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058749 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A225541.P14151932172831400690

noncomputable section

/-- A225541: Floor(W(n)) where W is the Lambert W function.

Offset 0, canonical program `A225541.P14151932172831400690`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A225541 (n : ℕ) : ℤ :=
  (A225541.P14151932172831400690.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A225541.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A225950.P5976257078115682793

`A222946(n+2)%2*A120070(n+2)`
-/

namespace A225950.P5976257078115682793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A222946 (n + 2)) 2 * A120070 (n + 2)

end

end A225950.P5976257078115682793

noncomputable section

/-- A225950: Triangle for odd legs of primitive Pythagorean triangles.

Offset 2, canonical program `A225950.P5976257078115682793`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A225950 (n : ℕ) : ℤ :=
  A225950.P5976257078115682793.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A225950.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A226008.P11268386641324381222

`A225975(n)²`
-/

namespace A226008.P11268386641324381222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225975 n ^ 2

end

end A226008.P11268386641324381222

noncomputable section

/-- A226008: a(0) = 0; for n>0, a(n) = denominator(1/4 - 4/n^2).

Offset 0, canonical program `A226008.P11268386641324381222`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A226008 (n : ℕ) : ℤ :=
  A226008.P11268386641324381222.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A226008.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A226385.P8581291142238122846

`lt[A336551(A000010(n+1)), A336551(n+1)]+1`
-/

namespace A226385.P8581291142238122846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336551 (A000010 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336551 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A226385.P8581291142238122846

noncomputable section

/-- A226385: Numbers n such that rad(phi(n)) > phi(rad(n)), where rad(n) is the squarefree kernel of n, and phi is Euler's totient function.

Offset 1, canonical program `A226385.P8581291142238122846`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2444 terms. -/
def A226385 (n : ℕ) : ℤ :=
  (A226385.P8581291142238122846.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2444 terms. -/
def A226385.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A226570.P10213379658734750824

`(A067462(n+1)+n)%(n+1)`
-/

namespace A226570.P10213379658734750824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A067462 (n + 1) + (n : ℤ)) (n + 1 : ℤ)

end

end A226570.P10213379658734750824

noncomputable section

/-- A226570: a(n) = Sum_{k=1..n} (k+1)! mod n.

Offset 1, canonical program `A226570.P10213379658734750824`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A226570 (n : ℕ) : ℤ :=
  A226570.P10213379658734750824.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A226570.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A226586.P1032371712486698964

`A152677(n+3)-A000010(A028982(n+3))`
-/

namespace A226586.P1032371712486698964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152677 (n + 3) - A000010 (A028982 (n + 3)).toNat

end

end A226586.P1032371712486698964

noncomputable section

/-- A226586: Odd values of sigma(n) - phi(n) in the order of appearance and with repetition.

Offset 1, canonical program `A226586.P1032371712486698964`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 537 terms. -/
def A226586 (n : ℕ) : ℤ :=
  A226586.P1032371712486698964.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 537 terms. -/
def A226586.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A226721.P17856605481448909484

`1+A066344(n+1)`
-/

namespace A226721.P17856605481448909484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A066344 (n + 1)

end

end A226721.P17856605481448909484

noncomputable section

/-- A226721: Position of 2^n in the joint ranking of all the numbers 2^j for j>=0 and 5^k for k>=1; complement of A123384.

Offset 1, canonical program `A226721.P17856605481448909484`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A066344, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A226721 (n : ℕ) : ℤ :=
  A226721.P17856605481448909484.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A066344, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A226721.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A226722.P14657880171830940678

`A156301(n)+A066344(A028310(n))`
-/

namespace A226722.P14657880171830940678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156301 n + A066344 (A028310 n).toNat

end

end A226722.P14657880171830940678

noncomputable section

/-- A226722: Positions of the numbers 2^n, for n >=0, in the joint ranking of all the numbers 2^h, 3^k, 5^k, for h >= 0, k >= 1.

Offset 1, canonical program `A226722.P14657880171830940678`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2000 terms. -/
def A226722 (n : ℕ) : ℤ :=
  A226722.P14657880171830940678.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2000 terms. -/
def A226722.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A226784.P7540790382231416408

`(2*n*A212514(n+1))%(n+1)`
-/

namespace A226784.P7540790382231416408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (2 * ((n : ℤ) * A212514 (n + 1))) (n + 1 : ℤ)

end

end A226784.P7540790382231416408

noncomputable section

/-- A226784: If gcd(n,6) != 1 then a(n)=0, otherwise a(n)=6^(-1) in Z/nZ*.

Offset 1, canonical program `A226784.P7540790382231416408`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A226784 (n : ℕ) : ℤ :=
  A226784.P7540790382231416408.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A226784.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A226806.P12892588838181652546

`∪[A173195(n+1), A055236(n)]`
-/

namespace A226806.P12892588838181652546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173195 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055236 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A226806.P12892588838181652546

noncomputable section

/-- A226806: Numbers of the form 2^j + 4^k, for j and k >= 0.

Offset 1, canonical program `A226806.P12892588838181652546`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A226806 (n : ℕ) : ℤ :=
  (A226806.P12892588838181652546.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A226806.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A226827.P13006153795325612832

`2*A226793(n+1)`
-/

namespace A226827.P13006153795325612832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A226793 (n + 1)

end

end A226827.P13006153795325612832

noncomputable section

/-- A226827: Numbers of the form 3^j + 9^k, for j and k >= 0.

Offset 1, canonical program `A226827.P13006153795325612832`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A226827 (n : ℕ) : ℤ :=
  A226827.P13006153795325612832.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A226827.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A226895.P9533121574335622783

`Δ[A226894(n+1)]`
-/

namespace A226895.P9533121574335622783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226894 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A226895.P9533121574335622783

noncomputable section

/-- A226895: Difference sequence for A226894.

Offset 1, canonical program `A226895.P9533121574335622783`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A226895 (n : ℕ) : ℤ :=
  A226895.P9533121574335622783.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A226895.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A226996.P1446342238526676326

`A226994(n)+1-A226995(n)`
-/

namespace A226996.P1446342238526676326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226994 n + (1 - A226995 n)

end

end A226996.P1446342238526676326

noncomputable section

/-- A226996: Number of lattice paths from (0,0) to (n,n) consisting of steps U=(1,1), H=(1,0) and S=(0,1) such that the first step leaving and the last step joining the diagonal (if any) is an H step.

Offset 0, canonical program `A226996.P1446342238526676326`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 133 terms. -/
def A226996 (n : ℕ) : ℤ :=
  A226996.P1446342238526676326.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 133 terms. -/
def A226996.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A227216.P6671624915462471529

`A119428(2*n)+A119428(2*n)-A119428(n)`
-/

namespace A227216.P6671624915462471529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119428 (2 * n) + (A119428 (2 * n) - A119428 n)

end

end A227216.P6671624915462471529

noncomputable section

/-- A227216: Expansion of f(-q^2, -q^3)^5 / f(-q)^3 in powers of q where f() is a Ramanujan theta function.

Offset 0, canonical program `A227216.P6671624915462471529`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A227216 (n : ℕ) : ℤ :=
  A227216.P6671624915462471529.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A227216.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A227252.P15475645311993057881

`record[A059174(n)+1-2*n]`
-/

namespace A227252.P15475645311993057881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059174 n + (1 - (2 * n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A227252.P15475645311993057881

noncomputable section

/-- A227252: Number of n X 2 binary arrays indicating whether each 2 X 2 subblock of a larger binary array has lexicographically nondecreasing rows and columns, for some larger (n+1) X 3 binary array with rows and columns of the latter in lexicographically nondecreasing order.

Offset 1, canonical program `A227252.P15475645311993057881`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A227252 (n : ℕ) : ℤ :=
  A227252.P15475645311993057881.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A227252.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A227737.P16611216507253860611

`a(n-A005811(a(n-1)))+1` with `a(0)=1`
-/

namespace A227737.P16611216507253860611
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a ((n : ℤ) - A005811 (a (n - 1))).toNat + 1

end

end A227737.P16611216507253860611

noncomputable section

/-- A227737: n occurs as many times as there are runs in binary representation of n.

Offset 1, canonical program `A227737.P16611216507253860611`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A227737 (n : ℕ) : ℤ :=
  (A227737.P16611216507253860611.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A227737.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A227742.P14170089042966495226

`A173318(2*n)+1/2*(1+A005811(2*(n+1)-1))`
-/

namespace A227742.P14170089042966495226
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A173318 (2 * n) : ℚ) + (1 : ℚ) / 2 * (1 + A005811 (2 * (n + 1) - 1) : ℚ)

end

end A227742.P14170089042966495226

noncomputable section

/-- A227742: Fixed points of permutation A227741.

Offset 1, canonical program `A227742.P14170089042966495226`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A173318, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A227742 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A227742.P14170089042966495226.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A173318, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A227742.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A227869.P7864650989961761614

`A128471(comp[A158573(n+1)])`
-/

namespace A227869.P7864650989961761614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158573 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128471 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A227869.P7864650989961761614

noncomputable section

/-- A227869: Composite numbers congruent to 7 (mod 30).

Offset 1, canonical program `A227869.P7864650989961761614`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6748 terms. -/
def A227869 (n : ℕ) : ℤ :=
  A227869.P7864650989961761614.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6748 terms. -/
def A227869.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A227872.P9091759505244018972

`∑{d}[n+1, A010060(#)]`
-/

namespace A227872.P9091759505244018972
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A010060 d

end

end A227872.P9091759505244018972

noncomputable section

/-- A227872: Number of odious divisors (A000069) of n.

Offset 1, canonical program `A227872.P9091759505244018972`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A227872 (n : ℕ) : ℤ :=
  A227872.P9091759505244018972.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A227872.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A227873.P5669908514505112701

`∑{d}[n+1, #*A010060(#)]`
-/

namespace A227873.P5669908514505112701
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A010060 d

end

end A227873.P5669908514505112701

noncomputable section

/-- A227873: Sum of odious divisors of n. See A000069 for odious numbers.

Offset 1, canonical program `A227873.P5669908514505112701`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A227873 (n : ℕ) : ℤ :=
  A227873.P5669908514505112701.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A227873.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A227982.P6866240745655209750

`lt[A039653(n), A053246(n+1)]+1`
-/

namespace A227982.P6866240745655209750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039653 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053246 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A227982.P6866240745655209750

noncomputable section

/-- A227982: Numbers n such that sigma(n+1) - sigma(n-1) > sigma(n); where sigma(n) = A000203(n) = sum of the divisors of n.

Offset 1, canonical program `A227982.P6866240745655209750`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 409 terms. -/
def A227982 (n : ℕ) : ℤ :=
  (A227982.P6866240745655209750.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 409 terms. -/
def A227982.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A228179.P8496173092229865919

`A128227(eq[1, A048152(n+1)])`
-/

namespace A228179.P8496173092229865919
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048152 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128227 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A228179.P8496173092229865919

noncomputable section

/-- A228179: Irregular table where the n-th row consists of the square roots of 1 in Z_n.

Offset 2, canonical program `A228179.P8496173092229865919`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 506 terms. -/
def A228179 (n : ℕ) : ℤ :=
  A228179.P8496173092229865919.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 506 terms. -/
def A228179.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A228197.P17697013685017105407

`A126966(n)+A068551(n)`
-/

namespace A228197.P17697013685017105407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126966 n + A068551 n

end

end A228197.P17697013685017105407

noncomputable section

/-- A228197: Number of n-edge ordered trees with bicolored boundary edges.

Offset 0, canonical program `A228197.P17697013685017105407`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A228197 (n : ℕ) : ℤ :=
  A228197.P17697013685017105407.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A228197.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A228198.P4684972850257953238

`p?[A006093(n+1)+A005171(A034964(n+1))]`
-/

namespace A228198.P4684972850257953238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1) + A005171 (A034964 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A228198.P4684972850257953238

noncomputable section

/-- A228198: Smallest of five consecutive primes whose sum is not a prime.

Offset 1, canonical program `A228198.P4684972850257953238`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1126 terms. -/
def A228198 (n : ℕ) : ℤ :=
  A228198.P4684972850257953238.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1126 terms. -/
def A228198.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A228294.P8313310365846261537

`A060885(n)-1`
-/

namespace A228294.P8313310365846261537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060885 n - 1

end

end A228294.P8313310365846261537

noncomputable section

/-- A228294: a(n) = Sum_{k=1..10} n^k.

Offset 0, canonical program `A228294.P8313310365846261537`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A228294 (n : ℕ) : ℤ :=
  A228294.P8313310365846261537.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A228294.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A228312.P16144185583148908062

`A214604(n+1)-A141418(n+1)+n`
-/

namespace A228312.P16144185583148908062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214604 (n + 1) - A141418 (n + 1) + (n : ℤ)

end

end A228312.P16144185583148908062

noncomputable section

/-- A228312: Triangle read by rows: T(m,n) (1<=n<=m) is the hyper-Wiener index of the complete bipartite graph K(m,n).

Offset 1, canonical program `A228312.P16144185583148908062`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A228312 (n : ℕ) : ℤ :=
  A228312.P16144185583148908062.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A228312.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A228338.P2629555823753106334

`A005554(n+2)+A005554(n+3)`
-/

namespace A228338.P2629555823753106334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005554 (n + 2) + A005554 (n + 3)

end

end A228338.P2629555823753106334

noncomputable section

/-- A228338: Third diagonal of Catalan difference table (A059346).

Offset 0, canonical program `A228338.P2629555823753106334`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 215 terms. -/
def A228338 (n : ℕ) : ℤ :=
  A228338.P2629555823753106334.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 215 terms. -/
def A228338.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A228343.P4320931973267472568

`Δ[A143955(n)+2*a(n-1)]` with `a(0)=1`
-/

namespace A228343.P4320931973267472568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A143955 n + 2 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A228343.P4320931973267472568

noncomputable section

/-- A228343: The number of ordered trees with bicolored single edges on the boundary.

Offset 0, canonical program `A228343.P4320931973267472568`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. -/
def A228343 (n : ℕ) : ℤ :=
  A228343.P4320931973267472568.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. -/
def A228343.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A228404.P6042679917404451421

`A026012(n)+A000108(n)%A106640(n)`
-/

namespace A228404.P6042679917404451421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026012 n + Int.tmod (A000108 n) (A106640 n)

end

end A228404.P6042679917404451421

noncomputable section

/-- A228404: The number of complete binary trees with bicolored twigs. A twig is a vertex with one child on the boundary and the other child having no descendants.

Offset 0, canonical program `A228404.P6042679917404451421`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. -/
def A228404 (n : ℕ) : ℤ :=
  A228404.P6042679917404451421.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. -/
def A228404.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A228669.P4523925343726764388

`A001281(A131694(n+2))`
-/

namespace A228669.P4523925343726764388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A131694 (n + 2)).toNat

end

end A228669.P4523925343726764388

noncomputable section

/-- A228669: Numbers k for which sum{prime(2*k) - prime(2*k-1)} is prime.

Offset 1, canonical program `A228669.P4523925343726764388`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A228669 (n : ℕ) : ℤ :=
  A228669.P4523925343726764388.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A228669.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A229089.P7074531385501001204

`lt[A229087(n+1), 0]+1`
-/

namespace A229089.P7074531385501001204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229087 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A229089.P7074531385501001204

noncomputable section

/-- A229089: Numbers n such that sigma(n) mod n < antisigma(n) mod n, where sigma(n) = A000203(n) = sum of divisor of n, antisigma(n) = A024816(n) = sum of non-divisors of n.

Offset 1, canonical program `A229089.P7074531385501001204`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7170 terms. -/
def A229089 (n : ℕ) : ℤ :=
  (A229089.P7074531385501001204.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7170 terms. -/
def A229089.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A229090.P2897396179284103415

`lt[0, A229087(n+1)]+1`
-/

namespace A229090.P2897396179284103415
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229087 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A229090.P2897396179284103415

noncomputable section

/-- A229090: Numbers n such that sigma(n) mod n > antisigma(n) mod n, where sigma(n) = A000203(n) = sum of divisors of n, antisigma(n) = A024816(n) = sum of non-divisors of n.

Offset 1, canonical program `A229090.P2897396179284103415`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2824 terms. -/
def A229090 (n : ℕ) : ℤ :=
  (A229090.P2897396179284103415.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2824 terms. -/
def A229090.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A229115.P9819039358198494583

`eq[14, A229087(n+1)]+1`
-/

namespace A229115.P9819039358198494583
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  14

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229087 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A229115.P9819039358198494583

noncomputable section

/-- A229115: Numbers n such that sigma(n) mod n - antisigma(n) mod n = 14, where sigma(n) = A000203(n) = sum of divisor of n, antisigma(n) = A024816(n) = sum of non-divisors of n.

Offset 1, canonical program `A229115.P9819039358198494583`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 366 terms. -/
def A229115 (n : ℕ) : ℤ :=
  (A229115.P9819039358198494583.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 366 terms. -/
def A229115.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A229990.P8596526445958010261

`A131737(A169647(n+2))`
-/

namespace A229990.P8596526445958010261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131737 (A169647 (n + 2)).toNat

end

end A229990.P8596526445958010261

noncomputable section

/-- A229990: Numbers k such that the interval [floor((k+1)/2), floor(3*(k+1)/2)] contains more primes than the interval [floor(k/2), floor(3*k/2)] does.

Offset 1, canonical program `A229990.P8596526445958010261`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 999 terms. -/
def A229990 (n : ℕ) : ℤ :=
  A229990.P8596526445958010261.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 999 terms. -/
def A229990.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A230048.P9001472186708211094

`record[A007913(A000069(n+1))]`
-/

namespace A230048.P9001472186708211094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A000069 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A230048.P9001472186708211094

noncomputable section

/-- A230048: Squarefree odious numbers.

Offset 1, canonical program `A230048.P9001472186708211094`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6253 terms. -/
def A230048 (n : ℕ) : ℤ :=
  A230048.P9001472186708211094.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6253 terms. -/
def A230048.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A230135.P6542863793755226928

`A000007(and(5, A145917(n)))`
-/

namespace A230135.P6542863793755226928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (Int.land 5 (A145917 n)).toNat

end

end A230135.P6542863793755226928

noncomputable section

/-- A230135: Triangle read by rows: T(n, k) = 1 if ((k mod 4 = 2) and (n mod 2 = 1)) or ((k mod 4 = 0) and (n mod 2 = 0)) else T(n, k) = 0.

Offset 0, canonical program `A230135.P6542863793755226928`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A230135 (n : ℕ) : ℤ :=
  A230135.P6542863793755226928.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A230135.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A230227.P15280561907443236401

`p?[2*A153134(n+1)+1]`
-/

namespace A230227.P15280561907443236401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A153134 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A230227.P15280561907443236401

noncomputable section

/-- A230227: Primes p with 3*p - 10 also prime.

Offset 1, canonical program `A230227.P15280561907443236401`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2381 terms. -/
def A230227 (n : ℕ) : ℤ :=
  A230227.P15280561907443236401.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2381 terms. -/
def A230227.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A230781.P11223862249852391792

`filter[A230780(n+1), A353815(#)]`
-/

namespace A230781.P11223862249852391792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230780 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353815 (f1 j).toNat = 1) n)

end

end A230781.P11223862249852391792

noncomputable section

/-- A230781: Squared radii of circles centered at a grid point in a triangular lattice hitting exactly 6 points. Squares or triple of squares that are not expressible as x^2+xy+y^2 with y > x > 0.

Offset 1, canonical program `A230781.P11223862249852391792`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 156 terms. -/
def A230781 (n : ℕ) : ℤ :=
  A230781.P11223862249852391792.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 156 terms. -/
def A230781.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A230812.P15143335762898235150

`record[A059591(2*n+3)/2]`
-/

namespace A230812.P15143335762898235150
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059591 (2 * n + 3) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A230812.P15143335762898235150

noncomputable section

/-- A230812: Smallest squarefree side lengths of primitive integer Soddyian triangles.

Offset 1, canonical program `A230812.P15143335762898235150`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4475 terms. -/
def A230812 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A230812.P15143335762898235150.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4475 terms. -/
def A230812.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A231383.P7583573279337602058

`A000040(A076298(n+1))`
-/

namespace A231383.P7583573279337602058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A076298 (n + 1)).toNat

end

end A231383.P7583573279337602058

noncomputable section

/-- A231383: Primes p such that p + 3*k is also prime, where p is k-th prime.

Offset 1, canonical program `A231383.P7583573279337602058`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1432 terms. -/
def A231383 (n : ℕ) : ℤ :=
  A231383.P7583573279337602058.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1432 terms. -/
def A231383.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A231482.P13578622432860794418

`(n+1)*∑[A086871(n)]`
-/

namespace A231482.P13578622432860794418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086871 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A231482.P13578622432860794418

noncomputable section

/-- A231482: The number of nonlinear normal modes for a fully resonant Hamiltonian system with n degrees of freedom.

Offset 1, canonical program `A231482.P13578622432860794418`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 107 terms. -/
def A231482 (n : ℕ) : ℤ :=
  A231482.P13578622432860794418.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 107 terms. -/
def A231482.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A231507.P7530821481580684819

`record[A113646(2*n+1)-n]`
-/

namespace A231507.P7530821481580684819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113646 (2 * n + 1) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231507.P7530821481580684819

noncomputable section

/-- A231507: a(n) is smallest number greater than a(n-1) such that a(n)+a(n-1) is composite.

Offset 1, canonical program `A231507.P7530821481580684819`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A231507 (n : ℕ) : ℤ :=
  A231507.P7530821481580684819.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A231507.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A231947.P3420748892416134547

`A103440(3*n+1)`
-/

namespace A231947.P3420748892416134547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103440 (3 * n + 1)

end

end A231947.P3420748892416134547

noncomputable section

/-- A231947: Expansion of q^(-1/3) * a(q)^2 * c(q) / 3 in powers of q where a(), c() are cubic AGM theta functions.

Offset 0, canonical program `A231947.P3420748892416134547`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2501 terms. -/
def A231947 (n : ℕ) : ℤ :=
  A231947.P3420748892416134547.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2501 terms. -/
def A231947.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A233182.P15043265348537409818

`comp[(n+1)*A358769(n+1)]`
-/

namespace A233182.P15043265348537409818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A358769 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A233182.P15043265348537409818

noncomputable section

/-- A233182: Numbers that are not the product of a prime and a square.

Offset 1, canonical program `A233182.P15043265348537409818`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A233182 (n : ℕ) : ℤ :=
  (A233182.P15043265348537409818.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A233182.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A160811.P17665539378844618350

`round(∑[9/∑[A207605(n+1)]]/2+n)`
-/

namespace A160811.P17665539378844618350
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207605 (n + 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  9 / ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((∑ j ∈ Finset.range (n + 1), f1 j) / 2 + (n : ℚ))

end

end A160811.P17665539378844618350

noncomputable section

/-- A160811: Numbers not dividing 24.

Offset 1, canonical program `A160811.P17665539378844618350`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A160811 (n : ℕ) : ℤ :=
  A160811.P17665539378844618350.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A160811.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A160813.P14776211626939802739

`A005117(n+1)+A004709(n+1)`
-/

namespace A160813.P14776211626939802739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1) + A004709 (n + 1)

end

end A160813.P14776211626939802739

noncomputable section

/-- A160813: a(n) = n-th squarefree number plus n-th cubefree number.

Offset 1, canonical program `A160813.P14776211626939802739`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004709, A005117, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A160813 (n : ℕ) : ℤ :=
  A160813.P14776211626939802739.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004709, A005117, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A160813.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A161400.P17131858128479350872

`A076877(A082662(n+1))*A175298(A082662(n+1))`
-/

namespace A161400.P17131858128479350872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076877 (A082662 (n + 1)).toNat * A175298 (A082662 (n + 1)).toNat

end

end A161400.P17131858128479350872

noncomputable section

/-- A161400: Positive integers that are palindromes (of even length) in binary, each made by concatenating two identical binary palindromes.

Offset 1, canonical program `A161400.P17131858128479350872`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 205 terms. -/
def A161400 (n : ℕ) : ℤ :=
  A161400.P17131858128479350872.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 205 terms. -/
def A161400.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A161517.P13785156033217621972

`A004125(A002808(n+1))`
-/

namespace A161517.P13785156033217621972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004125 (A002808 (n + 1)).toNat

end

end A161517.P13785156033217621972

noncomputable section

/-- A161517: Sum of remainders of c mod k where k = 1, 2, 3, ..., c and c is the n-th composite number.

Offset 1, canonical program `A161517.P13785156033217621972`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002808, A004125, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A161517 (n : ℕ) : ℤ :=
  A161517.P13785156033217621972.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002808, A004125, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A161517.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A161537.P5701896001486132994

`A002808(n+1)+n+1`
-/

namespace A161537.P5701896001486132994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1) + (n + 1 : ℤ)

end

end A161537.P5701896001486132994

noncomputable section

/-- A161537: a(n) = n-th composite + n.

Offset 1, canonical program `A161537.P5701896001486132994`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002808, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A161537 (n : ℕ) : ℤ :=
  A161537.P5701896001486132994.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002808, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A161537.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A161654.P13899316953508437492

`1-A054008(n+1)+n`
-/

namespace A161654.P13899316953508437492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A054008 (n + 1) + (n : ℤ)

end

end A161654.P13899316953508437492

noncomputable section

/-- A161654: a(n) = the largest multiple of {the number of divisors of n} that is <= n.

Offset 1, canonical program `A161654.P13899316953508437492`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A161654 (n : ℕ) : ℤ :=
  A161654.P13899316953508437492.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A161654.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A161664.P17260438586018701071

`A000217(n+1)-A006218(n+1)`
-/

namespace A161664.P17260438586018701071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 1) - A006218 (n + 1)

end

end A161664.P17260438586018701071

noncomputable section

/-- A161664: a(n) = Sum_{i=1..n} (i - d(i)), where d(n) is the number of divisors of n (A000005).

Offset 1, canonical program `A161664.P17260438586018701071`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A161664 (n : ℕ) : ℤ :=
  A161664.P17260438586018701071.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A161664.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A161756.P14246026735596547033

`A000217(A002808(n+1)-3)-A000217(n)`
-/

namespace A161756.P14246026735596547033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A002808 (n + 1) - 3).toNat - A000217 n

end

end A161756.P14246026735596547033

noncomputable section

/-- A161756: The sum of all numbers from n up to A002808(n)-3.

Offset 1, canonical program `A161756.P14246026735596547033`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002808, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A161756 (n : ℕ) : ℤ :=
  A161756.P14246026735596547033.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002808, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A161756.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A161825.P16867486800459318953

`gcd(A030101(n+1), n+1)`
-/

namespace A161825.P16867486800459318953
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A030101 (n + 1)) (n + 1 : ℤ)

end

end A161825.P16867486800459318953

noncomputable section

/-- A161825: a(n) is the GCD of n and {the number made by reversing the order of the digits of n written in binary}.

Offset 1, canonical program `A161825.P16867486800459318953`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A030101, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A161825 (n : ℕ) : ℤ :=
  (A161825.P16867486800459318953.a (n - 1) : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A030101, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A161825.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A161842.P12055032570686258273

`2*A094820(n+1)`
-/

namespace A161842.P12055032570686258273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A094820 (n + 1)

end

end A161842.P12055032570686258273

noncomputable section

/-- A161842: Partial sums of A161841.

Offset 1, canonical program `A161842.P12055032570686258273`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A094820, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A161842 (n : ℕ) : ℤ :=
  A161842.P12055032570686258273.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A094820, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A161842.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A161843.P14238606548560197180

`A002808(n+1)+A141468(n+1)`
-/

namespace A161843.P14238606548560197180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1) + A141468 (n + 1)

end

end A161843.P14238606548560197180

noncomputable section

/-- A161843: a(n) = n-th composite plus n-th nonprime.

Offset 1, canonical program `A161843.P14238606548560197180`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002808, A141468, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A161843 (n : ℕ) : ℤ :=
  A161843.P14238606548560197180.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002808, A141468, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A161843.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A161844.P543762527301748495

`A002808(n+1)*A141468(n+1)`
-/

namespace A161844.P543762527301748495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1) * A141468 (n + 1)

end

end A161844.P543762527301748495

noncomputable section

/-- A161844: Product of the n-th composite by the n-th nonprime.

Offset 1, canonical program `A161844.P543762527301748495`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002808, A141468, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A161844 (n : ℕ) : ℤ :=
  A161844.P543762527301748495.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002808, A141468, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A161844.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A161845.P15767429707514864025

`A002808(n+1)^A141468(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A161845.P15767429707514864025
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002808 (n + 1) : ℚ) ^ (A141468 (n + 1) : ℤ)

end

end A161845.P15767429707514864025

noncomputable section

/-- A161845: a(n) = A002808(n)^A141468(n).

Offset 1, canonical program `A161845.P15767429707514864025`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002808, A141468, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A161845 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A161845.P15767429707514864025.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002808, A141468, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A161845.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A161912.P2457371058280528067

`A040976(n+1)-A006218(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A161912.P2457371058280528067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (n + 1) - A006218 n

end

end A161912.P2457371058280528067

noncomputable section

/-- A161912: a(n) = A040976(n+1) - A006218(n).

Offset 0, canonical program `A161912.P2457371058280528067`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A040976(n+1)-A006218(n)` (program `A161912.P2457371058280528067`, by `A161912.P2457371058280528067.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A161912 (n : ℕ) : ℤ :=
  A161912.P2457371058280528067.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A040976(n+1)-A006218(n)` (program `A161912.P2457371058280528067`, by `A161912.P2457371058280528067.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A161912.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A161913.P5348750324054830820

`comp[A068526(n+1)-1]+1`
-/

namespace A161913.P5348750324054830820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068526 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A161913.P5348750324054830820

noncomputable section

/-- A161913: Numbers k such that A001223(k) <> A000005(k).

Offset 1, canonical program `A161913.P5348750324054830820`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A161913 (n : ℕ) : ℤ :=
  (A161913.P5348750324054830820.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A161913.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A161984.P11462578962919127866

`2*A271439(n)-A167407(n)`
-/

namespace A161984.P11462578962919127866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A271439 n - A167407 n

end

end A161984.P11462578962919127866

noncomputable section

/-- A161984: Table read by rows: the number n followed by the odd numbers from n(n-1)+1 to (n-1)(n+2)+1.

Offset 0, canonical program `A161984.P11462578962919127866`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A161984 (n : ℕ) : ℤ :=
  A161984.P11462578962919127866.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A161984.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A162143.P2076456533087592741

`A007304(n+1)²`
-/

namespace A162143.P2076456533087592741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007304 (n + 1) ^ 2

end

end A162143.P2076456533087592741

noncomputable section

/-- A162143: Numbers that are the squares of the product of three distinct primes.

Offset 1, canonical program `A162143.P2076456533087592741`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007304, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A162143 (n : ℕ) : ℤ :=
  A162143.P2076456533087592741.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007304, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A162143.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A162144.P1786924221262426532

`A007304(n+1)^3`
-/

namespace A162144.P1786924221262426532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007304 (n + 1) ^ 3

end

end A162144.P1786924221262426532

noncomputable section

/-- A162144: Products of cubes of 3 distinct primes.

Offset 1, canonical program `A162144.P1786924221262426532`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007304, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A162144 (n : ℕ) : ℤ :=
  A162144.P1786924221262426532.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007304, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A162144.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A162237.P16848246924117746447

`p?[2*A241266(n+1)-1]`
-/

namespace A162237.P16848246924117746447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A241266 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A162237.P16848246924117746447

noncomputable section

/-- A162237: Primes p such that p^2+3*p+1 is not prime.

Offset 1, canonical program `A162237.P16848246924117746447`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A162237 (n : ℕ) : ℤ :=
  A162237.P16848246924117746447.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A162237.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A162515.P17021776676229320120

`abs(A049310(A038722(n+1)))`
-/

namespace A162515.P17021776676229320120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A049310 (A038722 (n + 1)).toNat|

end

end A162515.P17021776676229320120

noncomputable section

/-- A162515: Triangle of coefficients of polynomials defined by Binet form: P(n,x) = (U^n - L^n)/d, where U = (x + d)/2, L = (x - d)/2, d = sqrt(x^2 + 4).

Offset 0, canonical program `A162515.P17021776676229320120`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5152 terms. -/
def A162515 (n : ℕ) : ℤ :=
  A162515.P17021776676229320120.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5152 terms. -/
def A162515.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A162568.P12841247606361069732

`p?[A323139(n+1)+3]`
-/

namespace A162568.P12841247606361069732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323139 (n + 1) + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A162568.P12841247606361069732

noncomputable section

/-- A162568: Primes of the form prime(k)+prime(k+1)+3.

Offset 1, canonical program `A162568.P12841247606361069732`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2340 terms. -/
def A162568 (n : ℕ) : ℤ :=
  A162568.P12841247606361069732.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2340 terms. -/
def A162568.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A162569.P4146132423405660050

`p?[A323139(n+1)-3]`
-/

namespace A162569.P4146132423405660050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323139 (n + 1) - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A162569.P4146132423405660050

noncomputable section

/-- A162569: Primes of the form A001043(j)-3.

Offset 1, canonical program `A162569.P4146132423405660050`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2370 terms. -/
def A162569 (n : ℕ) : ℤ :=
  A162569.P4146132423405660050.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2370 terms. -/
def A162569.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A162738.P1285176498515320745

`A002808(n+1)*ceil(A000040(n+1)/A002808(n+1))`
-/

namespace A162738.P1285176498515320745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1) * ⌈(A000040 (n + 1) : ℚ) / (A002808 (n + 1) : ℚ)⌉

end

end A162738.P1285176498515320745

noncomputable section

/-- A162738: a(n) is the smallest positive multiple of {the n-th composite} that is greater than the n-th prime.

Offset 1, canonical program `A162738.P1285176498515320745`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002808, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A162738 (n : ℕ) : ℤ :=
  A162738.P1285176498515320745.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002808, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A162738.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A162906.P6107126863955034378

`n+1-A081707(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A162906.P6107126863955034378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A081707 (n + 1)

end

end A162906.P6107126863955034378

noncomputable section

/-- A162906: a(n) = n - A081707(n).

Offset 1, canonical program `A162906.P6107126863955034378`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A081707, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A162906 (n : ℕ) : ℤ :=
  A162906.P6107126863955034378.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A081707, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A162906.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A163109.P21367379206329699

`A000010(A000005(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A163109.P21367379206329699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A000005 (n + 1)).toNat

end

end A163109.P21367379206329699

noncomputable section

/-- A163109: a(n) = phi(tau(n)).

Offset 1, canonical program `A163109.P21367379206329699`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A163109 (n : ℕ) : ℤ :=
  A163109.P21367379206329699.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A163109.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A163205.P15967753427940304355

`record[A143088(n)%A176204(n)]`
-/

namespace A163205.P15967753427940304355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A143088 n) (A176204 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A163205.P15967753427940304355

noncomputable section

/-- A163205: The non-repetitive Kaprekar binary numbers in decimal.

Offset 1, canonical program `A163205.P15967753427940304355`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1219 terms. -/
def A163205 (n : ℕ) : ℤ :=
  A163205.P15967753427940304355.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1219 terms. -/
def A163205.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A163327.P8461444291336420103

`A037314(A163326(n))+3*A037314(A163325(n))`
-/

namespace A163327.P8461444291336420103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037314 (A163326 n).toNat + 3 * A037314 (A163325 n).toNat

end

end A163327.P8461444291336420103

noncomputable section

/-- A163327: Self-inverse permutation of integers: swap the odd- and even-positioned digits in the ternary expansion of n, then convert back to decimal.

Offset 0, canonical program `A163327.P8461444291336420103`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A037314, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A163327 (n : ℕ) : ℤ :=
  A163327.P8461444291336420103.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A037314, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A163327.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A163328.P953906288300287245

`A037314(A025581(n))+3*A037314(A002262(n))`
-/

namespace A163328.P953906288300287245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037314 (A025581 n).toNat + 3 * A037314 (A002262 n).toNat

end

end A163328.P953906288300287245

noncomputable section

/-- A163328: Square array A, where entry A(y,x) has the ternary digits of x interleaved with the ternary digits of y, converted back to decimal. Listed by antidiagonals: A(0,0), A(0,1), A(1,0), A(0,2), A(1,1), A(2,0), ...

Offset 0, canonical program `A163328.P953906288300287245`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A037314, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A163328 (n : ℕ) : ℤ :=
  A163328.P953906288300287245.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A037314, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A163328.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A163330.P8412886999285810611

`3*A037314(A025581(n))+A037314(A002262(n))`
-/

namespace A163330.P8412886999285810611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A037314 (A025581 n).toNat + A037314 (A002262 n).toNat

end

end A163330.P8412886999285810611

noncomputable section

/-- A163330: Square array A, where entry A(y,x) has the ternary digits of y interleaved with the ternary digits of x, converted back to decimal. Listed by antidiagonals: A(0,0), A(0,1), A(1,0), A(0,2), A(1,1), A(2,0), ...

Offset 0, canonical program `A163330.P8412886999285810611`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A037314, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A163330 (n : ℕ) : ℤ :=
  A163330.P8412886999285810611.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A037314, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A163330.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A163367.P15952926791181661414

`A000010(A000005(A000203(n+1)))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A163367.P15952926791181661414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A000005 (A000203 (n + 1)).toNat).toNat

end

end A163367.P15952926791181661414

noncomputable section

/-- A163367: a(n) = phi(tau(sigma(n))).

Offset 1, canonical program `A163367.P15952926791181661414`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A163367 (n : ℕ) : ℤ :=
  A163367.P15952926791181661414.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A163367.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A163368.P9680519141476713225

`A000010(A000203(A000005(n+1)))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A163368.P9680519141476713225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A000203 (A000005 (n + 1)).toNat).toNat

end

end A163368.P9680519141476713225

noncomputable section

/-- A163368: a(n) = phi(sigma(tau(n))).

Offset 1, canonical program `A163368.P9680519141476713225`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A163368 (n : ℕ) : ℤ :=
  A163368.P9680519141476713225.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A163368.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A163371.P10998090504912762373

`A000005(A000010(A000203(n+1)))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A163371.P10998090504912762373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A000010 (A000203 (n + 1)).toNat).toNat

end

end A163371.P10998090504912762373

noncomputable section

/-- A163371: a(n) = tau(phi(sigma(n))).

Offset 1, canonical program `A163371.P10998090504912762373`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A163371 (n : ℕ) : ℤ :=
  A163371.P10998090504912762373.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A163371.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A163374.P15707926758281421446

`A000005(A000005(A000010(n+1)))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A163374.P15707926758281421446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A000005 (A000010 (n + 1)).toNat).toNat

end

end A163374.P15707926758281421446

noncomputable section

/-- A163374: a(n) = tau(tau(phi(n))).

Offset 1, canonical program `A163374.P15707926758281421446`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A163374 (n : ℕ) : ℤ :=
  A163374.P15707926758281421446.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A163374.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A163375.P9377041068603477864

`A000203(A000005(A000010(n+1)))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A163375.P9377041068603477864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A000005 (A000010 (n + 1)).toNat).toNat

end

end A163375.P9377041068603477864

noncomputable section

/-- A163375: a(n) = sigma(tau(phi(n))).

Offset 1, canonical program `A163375.P9377041068603477864`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A163375 (n : ℕ) : ℤ :=
  A163375.P9377041068603477864.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A163375.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A163376.P6895278780957745168

`A000010(A000005(A000010(n+1)))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A163376.P6895278780957745168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A000005 (A000010 (n + 1)).toNat).toNat

end

end A163376.P6895278780957745168

noncomputable section

/-- A163376: a(n) = phi(tau(phi(n))).

Offset 1, canonical program `A163376.P6895278780957745168`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A163376 (n : ℕ) : ℤ :=
  A163376.P6895278780957745168.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A163376.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A163377.P15752887626135507846

`A000005(A000010(A000005(n+1)))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A163377.P15752887626135507846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A000010 (A000005 (n + 1)).toNat).toNat

end

end A163377.P15752887626135507846

noncomputable section

/-- A163377: a(n) = tau(phi(tau(n))).

Offset 1, canonical program `A163377.P15752887626135507846`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A163377 (n : ℕ) : ℤ :=
  A163377.P15752887626135507846.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A163377.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A163378.P13784000735218118010

`A000203(A000010(A000005(n+1)))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A163378.P13784000735218118010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A000010 (A000005 (n + 1)).toNat).toNat

end

end A163378.P13784000735218118010

noncomputable section

/-- A163378: a(n) = sigma(phi(tau(n))).

Offset 1, canonical program `A163378.P13784000735218118010`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A163378 (n : ℕ) : ℤ :=
  A163378.P13784000735218118010.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A163378.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A163379.P17513264851460552106

`A000010(A000010(A000005(n+1)))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A163379.P17513264851460552106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A000010 (A000005 (n + 1)).toNat).toNat

end

end A163379.P17513264851460552106

noncomputable section

/-- A163379: a(n) = phi(phi(tau(n))).

Offset 1, canonical program `A163379.P17513264851460552106`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A163379 (n : ℕ) : ℤ :=
  A163379.P17513264851460552106.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A163379.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A163408.P15967600564679834179

`comp[A114518(n+1)-2]+2`
-/

namespace A163408.P15967600564679834179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114518 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 2

end

end A163408.P15967600564679834179

noncomputable section

/-- A163408: Positive integers n such that A008475(n) is composite.

Offset 1, canonical program `A163408.P15967600564679834179`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A163408 (n : ℕ) : ℤ :=
  (A163408.P15967600564679834179.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A163408.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A163504.P9591765712020297815

`abs(A000040(n+1)-A014076(n+1))`
-/

namespace A163504.P9591765712020297815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000040 (n + 1) - A014076 (n + 1)|

end

end A163504.P9591765712020297815

noncomputable section

/-- A163504: a(n) = abs(n-th prime minus n-th odd nonprime).

Offset 1, canonical program `A163504.P9591765712020297815`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014076, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A163504 (n : ℕ) : ℤ :=
  A163504.P9591765712020297815.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014076, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A163504.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A163505.P16929550261276324882

`A014076(n+1)%(2*(n+1)-1)`
-/

namespace A163505.P16929550261276324882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A014076 (n + 1)) ((2 * (n + 1) : ℤ) - 1)

end

end A163505.P16929550261276324882

noncomputable section

/-- A163505: a(n) = (n-th odd nonprime) mod (n-th odd number).

Offset 1, canonical program `A163505.P16929550261276324882`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014076, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A163505 (n : ℕ) : ℤ :=
  A163505.P16929550261276324882.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014076, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A163505.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A163506.P13187708398187560085

`A014076(n+1)*(2*(n+1)-1)`
-/

namespace A163506.P13187708398187560085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014076 (n + 1) * ((2 * (n + 1) : ℤ) - 1)

end

end A163506.P13187708398187560085

noncomputable section

/-- A163506: a(n) = n-th odd nonprime * n-th odd number.

Offset 1, canonical program `A163506.P13187708398187560085`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014076, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A163506 (n : ℕ) : ℤ :=
  A163506.P13187708398187560085.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014076, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A163506.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A163631.P18137767789929216853

`∑[A014076(n+1)]`
-/

namespace A163631.P18137767789929216853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014076 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A163631.P18137767789929216853

noncomputable section

/-- A163631: Partial sums of the odd nonprimes, A014076.

Offset 1, canonical program `A163631.P18137767789929216853`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A163631 (n : ℕ) : ℤ :=
  A163631.P18137767789929216853.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A163631.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A163636.P17482581980774521076

`(A014076(n+1)+2*(n+1)-1)*(A014076(n+1)-2*(n+1)+3)/4`
-/

namespace A163636.P17482581980774521076
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A014076 (n + 1) + (2 * (n + 1) : ℤ) - 1) * (A014076 (n + 1) - (2 * (n + 1) : ℤ) + 3) : ℚ) / 4

end

end A163636.P17482581980774521076

noncomputable section

/-- A163636: The sum of all odd numbers from 2n-1 up to the n-th odd nonprime.

Offset 1, canonical program `A163636.P17482581980774521076`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014076, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A163636 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A163636.P17482581980774521076.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014076, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A163636.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A163775.P4626799535494798513

`A002457(n+1)-A163872(n+1)`
-/

namespace A163775.P4626799535494798513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002457 (n + 1) - A163872 (n + 1)

end

end A163775.P4626799535494798513

noncomputable section

/-- A163775: Row sums of triangle A163772.

Offset 0, canonical program `A163775.P4626799535494798513`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 164 terms. -/
def A163775 (n : ℕ) : ℤ :=
  A163775.P4626799535494798513.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 164 terms. -/
def A163775.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A163831.P18027603680090053005

`A002808(n+1)-A163515(n+1)`
-/

namespace A163831.P18027603680090053005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1) - A163515 (n + 1)

end

end A163831.P18027603680090053005

noncomputable section

/-- A163831: a(n) is the n-th composite minus the sum of the indices of the primes in its prime factorization.

Offset 1, canonical program `A163831.P18027603680090053005`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002808, A163515, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A163831 (n : ℕ) : ℤ :=
  A163831.P18027603680090053005.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002808, A163515, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A163831.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A164028.P16722215845011041546

`A002808(n+1)-3`
-/

namespace A164028.P16722215845011041546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1) - 3

end

end A164028.P16722215845011041546

noncomputable section

/-- A164028: The n-th composite minus 3.

Offset 1, canonical program `A164028.P16722215845011041546`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002808, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A164028 (n : ℕ) : ℤ :=
  A164028.P16722215845011041546.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002808, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A164028.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A164292.P14089630238313038939

`A353464(A169609(n)+n)`
-/

namespace A164292.P14089630238313038939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353464 (A169609 n + (n : ℤ)).toNat

end

end A164292.P14089630238313038939

noncomputable section

/-- A164292: Binary sequence identifying the twin primes (characteristic function of twin primes: 1 if n is a twin prime else 0).

Offset 1, canonical program `A164292.P14089630238313038939`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A164292 (n : ℕ) : ℤ :=
  A164292.P14089630238313038939.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A164292.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A164383.P6548176081872317167

`A067775(n+1)+4`
-/

namespace A164383.P6548176081872317167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067775 (n + 1) + 4

end

end A164383.P6548176081872317167

noncomputable section

/-- A164383: Composite numbers of the form 4 + some prime.

Offset 1, canonical program `A164383.P6548176081872317167`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A164383 (n : ℕ) : ℤ :=
  A164383.P6548176081872317167.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A164383.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A164931.P11447713035022642152

`(n+1)*A008578(n+1)`
-/

namespace A164931.P11447713035022642152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A008578 (n + 1)

end

end A164931.P11447713035022642152

noncomputable section

/-- A164931: n times the n-th noncomposite.

Offset 1, canonical program `A164931.P11447713035022642152`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008578, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A164931 (n : ℕ) : ℤ :=
  A164931.P11447713035022642152.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008578, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A164931.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A164990.P7616358503839349732

`A121285(n)+A100071(n)`
-/

namespace A164990.P7616358503839349732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121285 n + A100071 n

end

end A164990.P7616358503839349732

noncomputable section

/-- A164990: Number of square involutions of n.

Offset 1, canonical program `A164990.P7616358503839349732`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 326 terms. -/
def A164990 (n : ℕ) : ℤ :=
  A164990.P7616358503839349732.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 326 terms. -/
def A164990.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A165797.P12784172842606566617

`(n+1)^A065608(n+1)`
-/

namespace A165797.P12784172842606566617
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A065608 (n + 1) : ℤ)

end

end A165797.P12784172842606566617

noncomputable section

/-- A165797: a(n) = n^( sigma(n) - tau(n) ).

Offset 1, canonical program `A165797.P12784172842606566617`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A165797 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A165797.P12784172842606566617.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A165797.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A165930.P10363881907716294125

`A028310(Δ[A064491(A028310(n))])`
-/

namespace A165930.P10363881907716294125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064491 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (f1 (n + 1) - f1 n).toNat

end

end A165930.P10363881907716294125

noncomputable section

/-- A165930: a(1) = 1, for n > 1: a(n) = tau(sum of the previous terms) where tau(k) = number of the divisors of k.

Offset 1, canonical program `A165930.P10363881907716294125`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A165930 (n : ℕ) : ℤ :=
  A165930.P10363881907716294125.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A165930.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A165947.P15194943752302719736

`p?[2*A002808(n+1)+3]`
-/

namespace A165947.P15194943752302719736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A002808 (n + 1) + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A165947.P15194943752302719736

noncomputable section

/-- A165947: Primes of the form 2q + 3 where q is composite.

Offset 1, canonical program `A165947.P15194943752302719736`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2500 terms. -/
def A165947 (n : ℕ) : ℤ :=
  A165947.P15194943752302719736.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2500 terms. -/
def A165947.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A165955.P529933159275814728

`A014076(n+1)+A163300(n+1)`
-/

namespace A165955.P529933159275814728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014076 (n + 1) + A163300 (n + 1)

end

end A165955.P529933159275814728

noncomputable section

/-- A165955: n-th odd nonprime plus n-th even nonprime.

Offset 1, canonical program `A165955.P529933159275814728`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014076, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A165955 (n : ℕ) : ℤ :=
  A165955.P529933159275814728.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014076, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A165955.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A165971.P2237179008475242652

`A014076(n+1)-A163300(n+1)`
-/

namespace A165971.P2237179008475242652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014076 (n + 1) - A163300 (n + 1)

end

end A165971.P2237179008475242652

noncomputable section

/-- A165971: The n-th odd nonprime minus the n-th even nonprime.

Offset 1, canonical program `A165971.P2237179008475242652`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014076, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A165971 (n : ℕ) : ℤ :=
  A165971.P2237179008475242652.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014076, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A165971.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A166039.P12293682533427347331

`A166037(n+1)+A002808(n+1)`
-/

namespace A166039.P12293682533427347331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166037 (n + 1) + A002808 (n + 1)

end

end A166039.P12293682533427347331

noncomputable section

/-- A166039: Sums of three consecutive nonprimes A141468.

Offset 1, canonical program `A166039.P12293682533427347331`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A166039 (n : ℕ) : ℤ :=
  A166039.P12293682533427347331.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A166039.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A166074.P4614613457811451958

`A194029((n+1)²)-1`
-/

namespace A166074.P4614613457811451958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194029 ((n + 1) ^ 2) - 1

end

end A166074.P4614613457811451958

noncomputable section

/-- A166074: a(n) = n^2 - [largest Fibonacci number <= n^2].

Offset 1, canonical program `A166074.P4614613457811451958`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 133 terms. -/
def A166074 (n : ℕ) : ℤ :=
  A166074.P4614613457811451958.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 133 terms. -/
def A166074.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A166104.P3960484114915730117

`eq[n%2, A005071(n+1)]+1`
-/

namespace A166104.P3960484114915730117
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005071 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A166104.P3960484114915730117

noncomputable section

/-- A166104: Natural numbers whose prime factors are all congruent to 3 or 5 mod 6 (i.e., are in the sequence A045410).

Offset 1, canonical program `A166104.P3960484114915730117`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. -/
def A166104 (n : ℕ) : ℤ :=
  (A166104.P3960484114915730117.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. -/
def A166104.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A166236.P17306406694189176569

`abs(A065091(n+1)-A014076(n+1))/2`
-/

namespace A166236.P17306406694189176569
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (|A065091 (n + 1) - A014076 (n + 1)| : ℚ) / 2

end

end A166236.P17306406694189176569

noncomputable section

/-- A166236: Absolute value of (n-th odd prime minus n-th odd nonprime)/2.

Offset 1, canonical program `A166236.P17306406694189176569`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014076, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A166236 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A166236.P17306406694189176569.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014076, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A166236.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A166238.P1577242016306719435

`val(record[A265263(A265263(n)+1+n)], 2)`
-/

namespace A166238.P1577242016306719435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265263 (A265263 n + 1 + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat 2

end

end A166238.P1577242016306719435

noncomputable section

/-- A166238: Horizontal para-Narayana sequence: says which column of 3rd-order Zeckendorf array (starting column count at 0) contains n.

Offset 1, canonical program `A166238.P1577242016306719435`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A166238 (n : ℕ) : ℤ :=
  (A166238.P1577242016306719435.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A166238.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A166527.P3407768485719253100

`eq[1, A077478(n+1)]+1`
-/

namespace A166527.P3407768485719253100
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077478 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A166527.P3407768485719253100

noncomputable section

/-- A166527: Complement of A076537.

Offset 1, canonical program `A166527.P3407768485719253100`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7007 terms. -/
def A166527 (n : ℕ) : ℤ :=
  (A166527.P3407768485719253100.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7007 terms. -/
def A166527.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A166570.P9171743488612248024

`comp[A167057(n+1)]`
-/

namespace A166570.P9171743488612248024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167057 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A166570.P9171743488612248024

noncomputable section

/-- A166570: Numbers n such that 12*n+11 is not prime.

Offset 1, canonical program `A166570.P9171743488612248024`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A166570 (n : ℕ) : ℤ :=
  (A166570.P9171743488612248024.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A166570.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A166684.P17288971262866478246

`∪[A000430(n+1), A008578(n+1)]`
-/

namespace A166684.P17288971262866478246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000430 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A166684.P17288971262866478246

noncomputable section

/-- A166684: Numbers n such that d(n)<4.

Offset 1, canonical program `A166684.P17288971262866478246`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A166684 (n : ℕ) : ℤ :=
  (A166684.P17288971262866478246.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A166684.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A166687.P18219030986989704232

`A001481(n+1)+1`
-/

namespace A166687.P18219030986989704232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001481 (n + 1) + 1

end

end A166687.P18219030986989704232

noncomputable section

/-- A166687: Numbers of the form x^2 + y^2 + 1, x, y integers.

Offset 1, canonical program `A166687.P18219030986989704232`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A166687 (n : ℕ) : ℤ :=
  A166687.P18219030986989704232.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A166687.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A166983.P2428815246008838013

`A002808(n+1)-A035004(n+2)`
-/

namespace A166983.P2428815246008838013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1) - A035004 (n + 2)

end

end A166983.P2428815246008838013

noncomputable section

/-- A166983: The n-th composite minus the number of its divisors.

Offset 1, canonical program `A166983.P2428815246008838013`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002808, A035004, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A166983 (n : ℕ) : ℤ :=
  A166983.P2428815246008838013.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002808, A035004, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A166983.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A167135.P14473219385980026343

`A000040(lt[2, A180217(n+1)]+1)`
-/

namespace A167135.P14473219385980026343
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180217 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A167135.P14473219385980026343

noncomputable section

/-- A167135: Primes congruent to {2, 3, 5, 7, 11} mod 12.

Offset 1, canonical program `A167135.P14473219385980026343`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7523 terms. -/
def A167135 (n : ℕ) : ℤ :=
  A167135.P14473219385980026343.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7523 terms. -/
def A167135.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A167136.P17162096113252504066

`n+A008578(n+1)`
-/

namespace A167136.P17162096113252504066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) + A008578 (n + 1)

end

end A167136.P17162096113252504066

noncomputable section

/-- A167136: a(n) = b(n)-th highest positive integer not equal to any a(k), 1 <= k <= n-1, where b(n) = noncomposite numbers = A008578(n).

Offset 1, canonical program `A167136.P17162096113252504066`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008578, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A167136 (n : ℕ) : ℤ :=
  A167136.P17162096113252504066.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008578, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A167136.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A167464.P9940011156032082583

`p?[comp[A157977(n+1)]]`
-/

namespace A167464.P9940011156032082583
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157977 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A167464.P9940011156032082583

noncomputable section

/-- A167464: Primes p such that 20*p+19 is composite.

Offset 1, canonical program `A167464.P9940011156032082583`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1042 terms. -/
def A167464 (n : ℕ) : ℤ :=
  (A167464.P9940011156032082583.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1042 terms. -/
def A167464.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A167626.P6697217771751986165

`1000*A105106(n+1)+101`
-/

namespace A167626.P6697217771751986165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1000 * A105106 (n + 1) + 101

end

end A167626.P6697217771751986165

noncomputable section

/-- A167626: Prime numbers ending in the prime number 101.

Offset 1, canonical program `A167626.P6697217771751986165`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A105106, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A167626 (n : ℕ) : ℤ :=
  A167626.P6697217771751986165.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A105106, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A167626.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A168271.P11427339168696885429

`A007821(n+1)-A144570(n+1)`
-/

namespace A168271.P11427339168696885429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007821 (n + 1) - A144570 (n + 1)

end

end A168271.P11427339168696885429

noncomputable section

/-- A168271: a(n) = prime(nonprime(n)) - nonprime(prime(n)).

Offset 1, canonical program `A168271.P11427339168696885429`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007821, A144570, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A168271 (n : ℕ) : ℤ :=
  A168271.P11427339168696885429.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007821, A144570, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A168271.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A168272.P13748373025009212725

`abs(A006450(n+1)-A007821(n+1))`
-/

namespace A168272.P13748373025009212725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A006450 (n + 1) - A007821 (n + 1)|

end

end A168272.P13748373025009212725

noncomputable section

/-- A168272: a(n) = abs(prime(prime(n))-prime(nonprime(n))).

Offset 1, canonical program `A168272.P13748373025009212725`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007821, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A168272 (n : ℕ) : ℤ :=
  A168272.P13748373025009212725.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007821, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A168272.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A168285.P1652759272398697817

`A007821(n+1)-A018252(n+1)`
-/

namespace A168285.P1652759272398697817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007821 (n + 1) - A018252 (n + 1)

end

end A168285.P1652759272398697817

noncomputable section

/-- A168285: a(n) = ((n-th nonprime)-th prime) - (n-th nonprime).

Offset 1, canonical program `A168285.P1652759272398697817`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007821, A018252, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A168285 (n : ℕ) : ℤ :=
  A168285.P1652759272398697817.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007821, A018252, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A168285.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A169606.P1555157006490763150

`A093515(n+4)-3`
-/

namespace A169606.P1555157006490763150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093515 (n + 4) - 3

end

end A169606.P1555157006490763150

noncomputable section

/-- A169606: a(2n-1) = prime(n+2)-3, a(2n) = prime(n+2)-2.

Offset 1, canonical program `A169606.P1555157006490763150`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A169606 (n : ℕ) : ℤ :=
  A169606.P1555157006490763150.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A169606.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A169613.P2033703515470004183

`A169615(A038722(n+1))+C(n, A008486(n))`
-/

namespace A169613.P2033703515470004183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169615 (A038722 (n + 1)).toNat + (Nat.choose n (A008486 n).toNat : ℤ)

end

end A169613.P2033703515470004183

noncomputable section

/-- A169613: Triangular array: T(n,k)=floor(F(n)/F(n-k)), k=1,2,...,n-2; n>=3, where F=A000045 (Fibonacci numbers).

Offset 3, canonical program `A169613.P2033703515470004183`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9870 terms. -/
def A169613 (n : ℕ) : ℤ :=
  A169613.P2033703515470004183.a (n - 3)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9870 terms. -/
def A169613.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A169683.P18438697268812114690

`A007089(eq[A081603(n), A189640(n+1)])`
-/

namespace A169683.P18438697268812114690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081603 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189640 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A169683.P18438697268812114690

noncomputable section

/-- A169683: The canonical skew-binary numbers.

Offset 0, canonical program `A169683.P18438697268812114690`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1020 terms. -/
def A169683 (n : ℕ) : ℤ :=
  A169683.P18438697268812114690.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1020 terms. -/
def A169683.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A171153.P4763760712593806838

`A308833(n+1)+A057428(n)`
-/

namespace A171153.P4763760712593806838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308833 (n + 1) + A057428 n

end

end A171153.P4763760712593806838

noncomputable section

/-- A171153: Numbers that are not in A169606.

Offset 1, canonical program `A171153.P4763760712593806838`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A171153 (n : ℕ) : ℤ :=
  A171153.P4763760712593806838.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A171153.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A171424.P10085515601653152791

`A171228(n)+A000027(n+1)`
-/

namespace A171424.P10085515601653152791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171228 n + A000027 (n + 1)

end

end A171424.P10085515601653152791

noncomputable section

/-- A171424: (n-1)^(p-n+1)+n where p is the smallest prime > n-1.

Offset 1, canonical program `A171424.P10085515601653152791`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A171228, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A171424 (n : ℕ) : ℤ :=
  A171424.P10085515601653152791.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A171228, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A171424.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A171575.P2892916473500616437

`A008578(n+1)+A163300(n+1)`
-/

namespace A171575.P2892916473500616437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1) + A163300 (n + 1)

end

end A171575.P2892916473500616437

noncomputable section

/-- A171575: n-th noncomposite number plus n-th even nonprime number.

Offset 1, canonical program `A171575.P2892916473500616437`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008578, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A171575 (n : ℕ) : ℤ :=
  A171575.P2892916473500616437.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008578, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A171575.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A171576.P12426591826192478319

`abs(A008578(n+1)-A163300(n+1))`
-/

namespace A171576.P12426591826192478319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008578 (n + 1) - A163300 (n + 1)|

end

end A171576.P12426591826192478319

noncomputable section

/-- A171576: a(n) = abs(n-th noncomposite number minus n-th even nonprime number).

Offset 1, canonical program `A171576.P12426591826192478319`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008578, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A171576 (n : ℕ) : ℤ :=
  A171576.P12426591826192478319.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008578, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A171576.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A171622.P9340769267017668227

`floor(A008578(n+1)/(n+1))`
-/

namespace A171622.P9340769267017668227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A008578 (n + 1) : ℚ) / (n + 1 : ℚ)⌋

end

end A171622.P9340769267017668227

noncomputable section

/-- A171622: a(n) = floor(n-th noncomposite / n).

Offset 1, canonical program `A171622.P9340769267017668227`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008578, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A171622 (n : ℕ) : ℤ :=
  A171622.P9340769267017668227.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008578, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A171622.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A171623.P4321114191881075899

`floor(A002808(n+1)/(n+1))`
-/

namespace A171623.P4321114191881075899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A002808 (n + 1) : ℚ) / (n + 1 : ℚ)⌋

end

end A171623.P4321114191881075899

noncomputable section

/-- A171623: a(n) = floor(n-th composite / n).

Offset 1, canonical program `A171623.P4321114191881075899`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002808, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A171623 (n : ℕ) : ℤ :=
  A171623.P4321114191881075899.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002808, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A171623.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A171626.P12911912347420491639

`ceil(A008578(n+1)/(n+1))`
-/

namespace A171626.P12911912347420491639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A008578 (n + 1) : ℚ) / (n + 1 : ℚ)⌉

end

end A171626.P12911912347420491639

noncomputable section

/-- A171626: a(n) = ceiling(n-th noncomposite/n).

Offset 1, canonical program `A171626.P12911912347420491639`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008578, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A171626 (n : ℕ) : ℤ :=
  A171626.P12911912347420491639.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008578, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A171626.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A171627.P3720226198752426776

`ceil(A002808(n+1)/A000027(n+1))`
-/

namespace A171627.P3720226198752426776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A002808 (n + 1) : ℚ) / (A000027 (n + 1) : ℚ)⌉

end

end A171627.P3720226198752426776

noncomputable section

/-- A171627: a(n) = ceiling(n-th composite/n).

Offset 1, canonical program `A171627.P3720226198752426776`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002808, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A171627 (n : ℕ) : ℤ :=
  A171627.P3720226198752426776.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002808, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A171627.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A171730.P9109354056744307278

`A193922(n)+char[∑[n+1]]`
-/

namespace A171730.P9109354056744307278
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193922 n + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A171730.P9109354056744307278

noncomputable section

/-- A171730: Triangle of differences of Fibonacci numbers, rows descending.

Offset 1, canonical program `A171730.P9109354056744307278`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A171730 (n : ℕ) : ℤ :=
  A171730.P9109354056744307278.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A171730.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A172243.P15321904317358311032

`∑[A080076(n+1)]`
-/

namespace A172243.P15321904317358311032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080076 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172243.P15321904317358311032

noncomputable section

/-- A172243: Partial sums of A080076.

Offset 1, canonical program `A172243.P15321904317358311032`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A172243 (n : ℕ) : ℤ :=
  A172243.P15321904317358311032.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A172243.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A172370.P12160375368130657257

`A120072(∑[char[∑[n]]]²-n+1)`
-/

namespace A172370.P12160375368130657257
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120072 ((((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) - (n : ℤ) + 1).toNat

end

end A172370.P12160375368130657257

noncomputable section

/-- A172370: Mirrored triangle A120072 read by rows.

Offset 2, canonical program `A172370.P12160375368130657257`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9870 terms. -/
def A172370 (n : ℕ) : ℤ :=
  A172370.P12160375368130657257.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9870 terms. -/
def A172370.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A172458.P6857060045200463812

`record[A191558(A174047(n+1))]`
-/

namespace A172458.P6857060045200463812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191558 (A174047 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A172458.P6857060045200463812

noncomputable section

/-- A172458: Nonprimes n such that exactly one of 2n-1 and 2n+1 is prime.

Offset 1, canonical program `A172458.P6857060045200463812`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A172458 (n : ℕ) : ℤ :=
  A172458.P6857060045200463812.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A172458.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A172469.P4342047015468027813

`p?[A376506(n+1)]`
-/

namespace A172469.P4342047015468027813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376506 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A172469.P4342047015468027813

noncomputable section

/-- A172469: Primes congruent to +/ -1 or +/ -7 modulo 25.

Offset 1, canonical program `A172469.P4342047015468027813`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2332 terms. -/
def A172469 (n : ℕ) : ℤ :=
  A172469.P4342047015468027813.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2332 terms. -/
def A172469.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A172969.P13289703455094161202

`eq[A016789(A032741(n)), A114003(n+1)]`
-/

namespace A172969.P13289703455094161202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016789 (A032741 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114003 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A172969.P13289703455094161202

noncomputable section

/-- A172969: Numbers k such that 3*A000005(k) = 2*A000005(k+1).

Offset 1, canonical program `A172969.P13289703455094161202`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 430 terms. -/
def A172969 (n : ℕ) : ℤ :=
  (A172969.P13289703455094161202.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 430 terms. -/
def A172969.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A173136.P16019285385718865064

`∩[A014076(n+1), A174047(n+1)]`
-/

namespace A173136.P16019285385718865064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014076 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174047 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A173136.P16019285385718865064

noncomputable section

/-- A173136: Odd nonprimes n such that exactly one of 2n-1 and 2n+1 is prime.

Offset 1, canonical program `A173136.P16019285385718865064`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A173136 (n : ℕ) : ℤ :=
  (A173136.P16019285385718865064.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A173136.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A173144.P12457585745625327984

`eq[A048448(n)%6, (n+3)²%(n+1)]`
-/

namespace A173144.P12457585745625327984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A048448 n) 6

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 3) ^ 2 % (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℤ)) n

end

end A173144.P12457585745625327984

noncomputable section

/-- A173144: Numbers n such that neither prime(n-1) nor prime(n+1) is of form 6k+1.

Offset 1, canonical program `A173144.P12457585745625327984`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A173144 (n : ℕ) : ℤ :=
  (A173144.P12457585745625327984.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A173144.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A173256.P14061795327720257061

`∑[A001481(n+1)]`
-/

namespace A173256.P14061795327720257061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001481 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173256.P14061795327720257061

noncomputable section

/-- A173256: Partial sums of A001481.

Offset 1, canonical program `A173256.P14061795327720257061`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A173256 (n : ℕ) : ℤ :=
  A173256.P14061795327720257061.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A173256.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A173327.P8802107638902619474

`eq[A000005(A000010(n+1)), A008472(n+1)]+1`
-/

namespace A173327.P8802107638902619474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A000010 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A173327.P8802107638902619474

noncomputable section

/-- A173327: Numbers k such that tau(phi(k))= sopf(k).

Offset 1, canonical program `A173327.P8802107638902619474`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 126 terms. -/
def A173327 (n : ℕ) : ℤ :=
  (A173327.P8802107638902619474.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 126 terms. -/
def A173327.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A173438.P11158591540045006980

`A000005(n+1)-A073802(n+1)`
-/

namespace A173438.P11158591540045006980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A073802 (n + 1)

end

end A173438.P11158591540045006980

noncomputable section

/-- A173438: Number of divisors d of number n such that d does not divide sigma(n).

Offset 1, canonical program `A173438.P11158591540045006980`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A173438 (n : ℕ) : ℤ :=
  A173438.P11158591540045006980.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A173438.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A173540.P7434116664741020737

`A173541(record[gcd(n+1, A126988(n+1))])`
-/

namespace A173540.P7434116664741020737
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A126988 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173541 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A173540.P7434116664741020737

noncomputable section

/-- A173540: Triangle read by rows in which row n lists the proper nondivisors of n, or zero if n <= 2.

Offset 1, canonical program `A173540.P7434116664741020737`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9280 terms. -/
def A173540 (n : ℕ) : ℤ :=
  A173540.P7434116664741020737.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9280 terms. -/
def A173540.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A173828.P5328705190027313365

`∩[A135932(n+1), A173827(n+1)]`
-/

namespace A173828.P5328705190027313365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135932 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173827 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A173828.P5328705190027313365

noncomputable section

/-- A173828: Primes p such that p-+(floor(Sqrt(p)))^2 are primes.

Offset 1, canonical program `A173828.P5328705190027313365`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 985 terms. -/
def A173828 (n : ℕ) : ℤ :=
  (A173828.P5328705190027313365.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 985 terms. -/
def A173828.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A173919.P13920908538941556849

`A093515(n+1)-1`
-/

namespace A173919.P13920908538941556849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093515 (n + 1) - 1

end

end A173919.P13920908538941556849

noncomputable section

/-- A173919: Numbers that are prime or one less than a prime.

Offset 1, canonical program `A173919.P13920908538941556849`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A173919 (n : ℕ) : ℤ :=
  A173919.P13920908538941556849.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A173919.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A173922.P17619675527876589984

`A000035(A002265(A030101(n+4)))`
-/

namespace A173922.P17619675527876589984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A002265 (A030101 (n + 4)).toNat).toNat

end

end A173922.P17619675527876589984

noncomputable section

/-- A173922: In the sequence of nonnegative integers substitute all n by 2^floor(n/4) occurrences of (n mod 2).

Offset 0, canonical program `A173922.P17619675527876589984`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A030101, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A173922 (n : ℕ) : ℤ :=
  A173922.P17619675527876589984.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A030101, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A173922.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A174219.P9674562942544645615

`∩[A093515(n+1)-1, A093515(n+1)]`
-/

namespace A174219.P9674562942544645615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093515 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093515 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A174219.P9674562942544645615

noncomputable section

/-- A174219: Integers equal to sqrt of A147846(n) + A147846(n+1).

Offset 1, canonical program `A174219.P9674562942544645615`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A174219 (n : ℕ) : ℤ :=
  (A174219.P9674562942544645615.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A174219.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A174440.P16633761848471278973

`∑[A022544(n+1)]`
-/

namespace A174440.P16633761848471278973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022544 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174440.P16633761848471278973

noncomputable section

/-- A174440: Partial sums of A022544.

Offset 1, canonical program `A174440.P16633761848471278973`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A174440 (n : ℕ) : ℤ :=
  A174440.P16633761848471278973.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A174440.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A174660.P18203838442809272468

`(2^A158611(n+1))%A002808(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A174660.P18203838442809272468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A158611 (n + 1) : ℤ))) (A002808 (n + 1))

end

end A174660.P18203838442809272468

noncomputable section

/-- A174660: a(n) = 2^A158611(n) mod A002808(n).

Offset 1, canonical program `A174660.P18203838442809272468`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002808, A158611, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A174660 (n : ℕ) : ℤ :=
  A174660.P18203838442809272468.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002808, A158611, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A174660.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A174813.P5082787198500863838

`∩[A039132(n+1), A136333(n+1)]`
-/

namespace A174813.P5082787198500863838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039132 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136333 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A174813.P5082787198500863838

noncomputable section

/-- A174813: a(n) = number whose product of digits equals a power of 3.

Offset 1, canonical program `A174813.P5082787198500863838`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 201 terms. -/
def A174813 (n : ℕ) : ℤ :=
  (A174813.P5082787198500863838.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 201 terms. -/
def A174813.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A175077.P1987853210808797040

`a(A064722(n))` with `a(0)=1, a(1)=2`
-/

namespace A175077.P1987853210808797040
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (A064722 n).toNat

end

end A175077.P1987853210808797040

noncomputable section

/-- A175077: Final number reached by iterating r -> A049711(r) starting at r = n.

Offset 1, canonical program `A175077.P1987853210808797040`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 106 terms. -/
def A175077 (n : ℕ) : ℤ :=
  (A175077.P1987853210808797040.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 106 terms. -/
def A175077.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A175078.P8983791659663241691

`a(A064722(n))+1` with `a(0)=0, a(1)=0`
-/

namespace A175078.P8983791659663241691
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0] fun n a =>
  a (A064722 n).toNat + 1

end

end A175078.P8983791659663241691

noncomputable section

/-- A175078: Number of iterations of {r mod (max prime p < r)} needed to reach 1 or 2 starting at r = n.

Offset 1, canonical program `A175078.P8983791659663241691`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A175078 (n : ℕ) : ℤ :=
  (A175078.P8983791659663241691.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A175078.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A175116.P9810145318194581764

`eq[A014681(A092517(n+1)), A032741(n)]`
-/

namespace A175116.P9810145318194581764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (A092517 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A175116.P9810145318194581764

noncomputable section

/-- A175116: A positive integer k is included if d(k) = d(k+1) * d(k+2), where d(k) is the number of divisors of k.

Offset 1, canonical program `A175116.P9810145318194581764`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 219 terms. -/
def A175116 (n : ℕ) : ℤ :=
  (A175116.P9810145318194581764.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 219 terms. -/
def A175116.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A175153.P2056557595373446709

`eq[1, A353464(A190991(n))]`
-/

namespace A175153.P2056557595373446709
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353464 (A190991 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A175153.P2056557595373446709

noncomputable section

/-- A175153: Numbers k such that 13*k-1, 13*k+1 are twin primes.

Offset 1, canonical program `A175153.P2056557595373446709`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 107 terms. -/
def A175153 (n : ℕ) : ℤ :=
  (A175153.P2056557595373446709.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 107 terms. -/
def A175153.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A175156.P17258388974337502969

`(2^n)%A002808(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A175156.P17258388974337502969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (2 ^ n : ℤ) (A002808 (n + 1))

end

end A175156.P17258388974337502969

noncomputable section

/-- A175156: a(n) = 2^(n-1) mod composite(n).

Offset 1, canonical program `A175156.P17258388974337502969`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002808, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A175156 (n : ℕ) : ℤ :=
  A175156.P17258388974337502969.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002808, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A175156.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A175219.P11185620326442108862

`A002808(p?[abs(xor(n, -2))]+2-n)`
-/

namespace A175219.P11185620326442108862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (n : ℤ) (-2)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 2 - (n : ℤ)).toNat

end

end A175219.P11185620326442108862

noncomputable section

/-- A175219: The fourth nonprimes after the primes.

Offset 1, canonical program `A175219.P11185620326442108862`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A175219 (n : ℕ) : ℤ :=
  A175219.P11185620326442108862.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A175219.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A175220.P9357636915036204970

`A002808(A014692(n+1)+3)`
-/

namespace A175220.P9357636915036204970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (A014692 (n + 1) + 3).toNat

end

end A175220.P9357636915036204970

noncomputable section

/-- A175220: The fifth nonprimes after the primes.

Offset 1, canonical program `A175220.P9357636915036204970`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2261 terms. -/
def A175220 (n : ℕ) : ℤ :=
  A175220.P9357636915036204970.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2261 terms. -/
def A175220.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A175247.P4698162389150652956

`A000040(A008578(n+1))`
-/

namespace A175247.P4698162389150652956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A008578 (n + 1)).toNat

end

end A175247.P4698162389150652956

noncomputable section

/-- A175247: Primes (A000040) with noncomposite (A008578) subscripts.

Offset 1, canonical program `A175247.P4698162389150652956`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008578, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A175247 (n : ℕ) : ℤ :=
  A175247.P4698162389150652956.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008578, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A175247.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A175248.P3451421000021238238

`A008578(A008578(n+1))`
-/

namespace A175248.P3451421000021238238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A008578 (n + 1)).toNat

end

end A175248.P3451421000021238238

noncomputable section

/-- A175248: Noncomposites (A008578) with noncomposite (A008578) subscripts.

Offset 1, canonical program `A175248.P3451421000021238238`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008578, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A175248 (n : ℕ) : ℤ :=
  A175248.P3451421000021238238.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008578, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A175248.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A175249.P14139215036818513482

`A008578(A018252(n+1))`
-/

namespace A175249.P14139215036818513482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A018252 (n + 1)).toNat

end

end A175249.P14139215036818513482

noncomputable section

/-- A175249: Noncomposites (A008578) with nonprime (A018252) subscripts.

Offset 1, canonical program `A175249.P14139215036818513482`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008578, A018252, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A175249 (n : ℕ) : ℤ :=
  A175249.P14139215036818513482.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008578, A018252, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A175249.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A175442.P4363524815792533233

`A045344(A270189(n+2))-C(3, (n+1)²)`
-/

namespace A175442.P4363524815792533233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (A270189 (n + 2)).toNat - (Nat.choose 3 ((n + 1) ^ 2) : ℤ)

end

end A175442.P4363524815792533233

noncomputable section

/-- A175442: a(n)>a(n-1), a(n) = smallest prime such that a(n)+a(n-1) is multiple of m, a(1)=2, m=3.

Offset 1, canonical program `A175442.P4363524815792533233`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5980 terms. -/
def A175442 (n : ℕ) : ℤ :=
  A175442.P4363524815792533233.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5980 terms. -/
def A175442.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A175553.P5108297307299290706

`A176423(n+1)-2`
-/

namespace A175553.P5108297307299290706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176423 (n + 1) - 2

end

end A175553.P5108297307299290706

noncomputable section

/-- A175553: Product of first k triangular numbers divided by the sum of first k triangular numbers is an integer.

Offset 1, canonical program `A175553.P5108297307299290706`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A175553 (n : ℕ) : ℤ :=
  A175553.P5108297307299290706.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A175553.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A175621.P9450483601849473088

`(2^(A002808(n+1)-4))%A002808(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A175621.P9450483601849473088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A002808 (n + 1) - 4 : ℤ))) (A002808 (n + 1))

end

end A175621.P9450483601849473088

noncomputable section

/-- A175621: a(n) = 2^(composite(n)-4) mod composite(n).

Offset 1, canonical program `A175621.P9450483601849473088`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002808, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A175621 (n : ℕ) : ℤ :=
  A175621.P9450483601849473088.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002808, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A175621.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A175743.P361553405530527540

`∩[A030630(n+1), A145784(n+1)]²`
-/

namespace A175743.P361553405530527540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030630 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145784 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A175743.P361553405530527540

noncomputable section

/-- A175743: Numbers with 33 divisors.

Offset 1, canonical program `A175743.P361553405530527540`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 198 terms. -/
def A175743 (n : ℕ) : ℤ :=
  (A175743.P361553405530527540.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 198 terms. -/
def A175743.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A175893.P14973154944427096017

`lt[A000005(A011974(n+2)+A000040(n+1)), 3]+1`
-/

namespace A175893.P14973154944427096017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A011974 (n + 2) + A000040 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A175893.P14973154944427096017

noncomputable section

/-- A175893: Numbers m such that 2*prime(m)+prime(m+1) is prime.

Offset 1, canonical program `A175893.P14973154944427096017`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 505 terms. -/
def A175893 (n : ℕ) : ℤ :=
  (A175893.P14973154944427096017.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 505 terms. -/
def A175893.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A175942.P12736010176665163979

`p?[-A187307(A015921(n+1))]`
-/

namespace A175942.P12736010176665163979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A187307 (A015921 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A175942.P12736010176665163979

noncomputable section

/-- A175942: Odd numbers k such that 4^k == 4 (mod 3*k) and 2^(k-1) == 4 (mod 3*(k-1)).

Offset 1, canonical program `A175942.P12736010176665163979`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 118 terms. -/
def A175942 (n : ℕ) : ℤ :=
  A175942.P12736010176665163979.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 118 terms. -/
def A175942.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A176003.P16816734743549634336

`3*A008578(n+1)-2`
-/

namespace A176003.P16816734743549634336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A008578 (n + 1) - 2

end

end A176003.P16816734743549634336

noncomputable section

/-- A176003: a(n) = 3*(n-th noncomposite number) - 2.

Offset 1, canonical program `A176003.P16816734743549634336`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008578, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A176003 (n : ℕ) : ℤ :=
  A176003.P16816734743549634336.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008578, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A176003.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A176101.P13722665777164572792

`(4^(A002808(n+1)-4))%A002808(n+5)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A176101.P13722665777164572792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((4 : ℚ) ^ (A002808 (n + 1) - 4 : ℤ))) (A002808 (n + 5))

end

end A176101.P13722665777164572792

noncomputable section

/-- A176101: a(n) = 4^(composite(n) - 4) mod composite(n+4).

Offset 1, canonical program `A176101.P13722665777164572792`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002808, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A176101 (n : ℕ) : ℤ :=
  A176101.P13722665777164572792.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002808, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A176101.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A176346.P2858540763397008978

`A048158(n+1)+A051777(n+1)+1`
-/

namespace A176346.P2858540763397008978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048158 (n + 1) + (A051777 (n + 1) + 1)

end

end A176346.P2858540763397008978

noncomputable section

/-- A176346: A dual remainder symmetrical triangle sequence T(n, m) = 1 + 2*(n+1) - (m+1)*floor((n+1)/(m+1)) - (n-m+1)*floor((n+1)/( n-m+1)), read by rows.

Offset 0, canonical program `A176346.P2858540763397008978`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5151 terms. -/
def A176346 (n : ℕ) : ℤ :=
  A176346.P2858540763397008978.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5151 terms. -/
def A176346.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A176872.P1535203004164108294

`∩[A135932(n+1), A176870(n+1)]`
-/

namespace A176872.P1535203004164108294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135932 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176870 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A176872.P1535203004164108294

noncomputable section

/-- A176872: Prime numbers p such that p-LargestSquare is prime and p-LargestCube is also prime, (LargestSquare <= p, LargestCube <= p).

Offset 1, canonical program `A176872.P1535203004164108294`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 223 terms. -/
def A176872 (n : ℕ) : ℤ :=
  (A176872.P1535203004164108294.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 223 terms. -/
def A176872.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A176988.P11168993376640129873

`A064789(A218890(n+1))`
-/

namespace A176988.P11168993376640129873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064789 (A218890 (n + 1)).toNat

end

end A176988.P11168993376640129873

noncomputable section

/-- A176988: Triangle read by rows, which contains Noll's indices of Zernike polynomials in row n sorted along increasing index of the azimuthal quantum number.

Offset 0, canonical program `A176988.P11168993376640129873`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 120 terms. -/
def A176988 (n : ℕ) : ℤ :=
  A176988.P11168993376640129873.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 120 terms. -/
def A176988.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A176997.P9587439984867558596

`A015919(n+2)-C(2, n+2)`
-/

namespace A176997.P9587439984867558596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015919 (n + 2) - (Nat.choose 2 (n + 2) : ℤ)

end

end A176997.P9587439984867558596

noncomputable section

/-- A176997: Integers k such that 2^(k-1) == 1 (mod k).

Offset 1, canonical program `A176997.P9587439984867558596`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A176997 (n : ℕ) : ℤ :=
  A176997.P9587439984867558596.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A176997.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A177236.P14113996674392224070

`A049820(n+1)-A177235(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A177236.P14113996674392224070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049820 (n + 1) - A177235 (n + 1)

end

end A177236.P14113996674392224070

noncomputable section

/-- A177236: a(n) = A049820(n) - A177235(n).

Offset 1, canonical program `A177236.P14113996674392224070`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A177235, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A177236 (n : ℕ) : ℤ :=
  A177236.P14113996674392224070.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A177235, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A177236.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A177733.P18146593740982256021

`∩[A105441(n+1), A187811(n+1)]`
-/

namespace A177733.P18146593740982256021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105441 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187811 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A177733.P18146593740982256021

noncomputable section

/-- A177733: Integers that can be expressed as the sum of two or more positive consecutive numbers (the largest being even) AND also as the sum of two or more positive consecutive numbers (the largest being odd).

Offset 1, canonical program `A177733.P18146593740982256021`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8278 terms. -/
def A177733 (n : ℕ) : ℤ :=
  (A177733.P18146593740982256021.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8278 terms. -/
def A177733.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A177962.P7538067305498914461

`A008480(A002808(n+1))`
-/

namespace A177962.P7538067305498914461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008480 (A002808 (n + 1)).toNat

end

end A177962.P7538067305498914461

noncomputable section

/-- A177962: Number of distinct transpositions of prime factors of n-th composite number.

Offset 1, canonical program `A177962.P7538067305498914461`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002808, A008480, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A177962 (n : ℕ) : ℤ :=
  A177962.P7538067305498914461.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002808, A008480, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A177962.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A177970.P282440303243635367

`A003506(A185868(n+1))-A279891(n)`
-/

namespace A177970.P282440303243635367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003506 (A185868 (n + 1)).toNat - A279891 n

end

end A177970.P282440303243635367

noncomputable section

/-- A177970: Array T(n,m) = A177944(2*n,2*m) read by antidiagonals.

Offset 0, canonical program `A177970.P282440303243635367`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2550 terms. -/
def A177970 (n : ℕ) : ℤ :=
  A177970.P282440303243635367.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2550 terms. -/
def A177970.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A177991.P11359817822590575411

`A115514(n+1)/A177994(n)`
-/

namespace A177991.P11359817822590575411
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A115514 (n + 1) : ℚ) / (A177994 n : ℚ)

end

end A177991.P11359817822590575411

noncomputable section

/-- A177991: Triangle read by rows, A070909 * A177990.

Offset 0, canonical program `A177991.P11359817822590575411`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A177991 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A177991.P11359817822590575411.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A177991.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A178763.P16595432844807789865

`lcm(A061446(n+1), A299232(n+1))/A299232(n+1)`
-/

namespace A178763.P16595432844807789865
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A061446 (n + 1)) (A299232 (n + 1)) : ℚ) / (A299232 (n + 1) : ℚ)

end

end A178763.P16595432844807789865

noncomputable section

/-- A178763: Product of primitive prime factors of Fibonacci(n).

Offset 1, canonical program `A178763.P16595432844807789865`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 466 terms. -/
def A178763 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A178763.P16595432844807789865.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 466 terms. -/
def A178763.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A179214.P16221757055703750119

`A179215(2*(n+1))/A179215(n)`
-/

namespace A179214.P16221757055703750119
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A179215 (2 * (n + 1)) : ℚ) / (A179215 n : ℚ)

end

end A179214.P16221757055703750119

noncomputable section

/-- A179214: Product of squarefree numbers between n and 2*n (inclusive).

Offset 1, canonical program `A179214.P16221757055703750119`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A179215, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A179214 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A179214.P16221757055703750119.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A179215, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A179214.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A179699.P1483605779152392052

`A178739(n+1)²`
-/

namespace A179699.P1483605779152392052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178739 (n + 1) ^ 2

end

end A179699.P1483605779152392052

noncomputable section

/-- A179699: Numbers of the form p^8*q^2 where p and q are distinct primes.

Offset 1, canonical program `A179699.P1483605779152392052`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A179699 (n : ℕ) : ℤ :=
  A179699.P1483605779152392052.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A179699.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A179871.P2683143761159696687

`eq[1, A365428(n+1)]+1`
-/

namespace A179871.P2683143761159696687
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365428 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A179871.P2683143761159696687

noncomputable section

/-- A179871: Numbers h such that antiharmonic mean B(h) of the numbers k < h such that gcd(k, h) = 1 is an integer.

Offset 1, canonical program `A179871.P2683143761159696687`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A179871 (n : ℕ) : ℤ :=
  (A179871.P2683143761159696687.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A179871.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A179872.P11054619685292049350

`lt[A365428(n+1), 1]+1`
-/

namespace A179872.P11054619685292049350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365428 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A179872.P11054619685292049350

noncomputable section

/-- A179872: Numbers h such that antiharmonic mean B(h) of the numbers k < h such that gcd(k, h) = 1 is not integer.

Offset 1, canonical program `A179872.P11054619685292049350`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A179872 (n : ℕ) : ℤ :=
  (A179872.P11054619685292049350.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A179872.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A180157.P3041833401943682686

`lt[0, A180160(n)]`
-/

namespace A180157.P3041833401943682686
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180160 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A180157.P3041833401943682686

noncomputable section

/-- A180157: Arithmetic mean of digits is not an integer.

Offset 1, canonical program `A180157.P3041833401943682686`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A180157 (n : ℕ) : ℤ :=
  (A180157.P3041833401943682686.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A180157.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A180198.P17584943030396836814

`A180200(A180200(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A180198.P17584943030396836814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180200 (A180200 n).toNat

end

end A180198.P17584943030396836814

noncomputable section

/-- A180198: a(n) = A180200(A180200(n)).

Offset 0, canonical program `A180198.P17584943030396836814`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A180200, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A180198 (n : ℕ) : ℤ :=
  A180198.P17584943030396836814.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A180200, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A180198.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A180199.P7858093965837242731

`A180201(A180201(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A180199.P7858093965837242731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180201 (A180201 n).toNat

end

end A180199.P7858093965837242731

noncomputable section

/-- A180199: a(n) = A180201(A180201(n)).

Offset 0, canonical program `A180199.P7858093965837242731`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A180201, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A180199 (n : ℕ) : ℤ :=
  A180199.P7858093965837242731.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A180201, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A180199.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A180364.P12544978778859971724

`Δ[n²*A002002(n)]`
-/

namespace A180364.P12544978778859971724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) * A002002 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A180364.P12544978778859971724

noncomputable section

/-- A180364: a(n) = sum_{k=0..n} C(n,k)*C(n+k,k)*(2*k+1)^2, where C(m,k) denotes the binomial coefficient m!/(k!*(m-k)!).

Offset 0, canonical program `A180364.P12544978778859971724`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 127 terms. -/
def A180364 (n : ℕ) : ℤ :=
  A180364.P12544978778859971724.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 127 terms. -/
def A180364.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A180499.P14708687511346327286

`(n+1)^3+A004709(n+1)`
-/

namespace A180499.P14708687511346327286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 3 : ℤ) + A004709 (n + 1)

end

end A180499.P14708687511346327286

noncomputable section

/-- A180499: n^3 + n-th cubefree number.

Offset 1, canonical program `A180499.P14708687511346327286`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004709, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A180499 (n : ℕ) : ℤ :=
  A180499.P14708687511346327286.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004709, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A180499.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A180643.P1113260082687038800

`eq[1, A053000(A000010(n+1))]+1`
-/

namespace A180643.P1113260082687038800
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053000 (A000010 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A180643.P1113260082687038800

noncomputable section

/-- A180643: Numbers n such that 1+phi(n)^2 is prime. Phi is the Euler totient function.

Offset 1, canonical program `A180643.P1113260082687038800`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2006 terms. -/
def A180643 (n : ℕ) : ℤ :=
  (A180643.P1113260082687038800.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2006 terms. -/
def A180643.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A181183.P18430112990416005991

`A000035(A062069(n+1))`
-/

namespace A181183.P18430112990416005991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A062069 (n + 1)).toNat

end

end A181183.P18430112990416005991

noncomputable section

/-- A181183: a(n) = sigma(tau(n)) (mod 2).

Offset 1, canonical program `A181183.P18430112990416005991`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A181183 (n : ℕ) : ℤ :=
  A181183.P18430112990416005991.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A181183.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A181326.P4111225017154132152

`A181296(n)-a(n-1)` with `a(0)=0`
-/

namespace A181326.P4111225017154132152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A181296 n - a (n - 1)

end

end A181326.P4111225017154132152

noncomputable section

/-- A181326: Number of columns with an odd sum in all 2-compositions of n. A 2-composition of n is a nonnegative matrix with two rows, such that each column has at least one nonzero entry and whose entries sum up to n.

Offset 0, canonical program `A181326.P4111225017154132152`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 185 terms. -/
def A181326 (n : ℕ) : ℤ :=
  A181326.P4111225017154132152.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 185 terms. -/
def A181326.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A181337.P8014274062187864923

`A181305(n)+A181300(n)`
-/

namespace A181337.P8014274062187864923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181305 n + A181300 n

end

end A181337.P8014274062187864923

noncomputable section

/-- A181337: Number of even entries in the top rows of all 2-compositions of n. A 2-composition of n is a nonnegative matrix with two rows, such that each column has at least one nonzero entry and whose entries sum up to n.

Offset 0, canonical program `A181337.P8014274062187864923`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 185 terms. -/
def A181337 (n : ℕ) : ℤ :=
  A181337.P8014274062187864923.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 185 terms. -/
def A181337.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A181435.P17617308443401127913

`xor(A063524(n), A181434(n+1))`
-/

namespace A181435.P17617308443401127913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A063524 n) (A181434 (n + 1))

end

end A181435.P17617308443401127913

noncomputable section

/-- A181435: First column in matrix inverse of a mixed convolution of A052906.

Offset 1, canonical program `A181435.P17617308443401127913`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1085 terms. -/
def A181435 (n : ℕ) : ℤ :=
  A181435.P17617308443401127913.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1085 terms. -/
def A181435.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A181550.P13432480176131539971

`floor((row(n)+1)/(col(n)+1))*A181549(col(n)+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A181550.P13432480176131539971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(SequenceMachineLib.triRow n + 1 : ℚ) / (SequenceMachineLib.triCol n + 1 : ℚ)⌋ * A181549 (SequenceMachineLib.triCol n + 1)

end

end A181550.P13432480176131539971

noncomputable section

/-- A181550: T(n,k) = floor(n/k)*A181549(k), triangle read by rows.

Offset 1, canonical program `A181550.P13432480176131539971`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A181549, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A181550 (n : ℕ) : ℤ :=
  A181550.P13432480176131539971.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A181549, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A181550.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A181552.P14371791422649182277

`gcd(row(n)+1, col(n)+1)*A181549(col(n)+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A181552.P14371791422649182277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd (SequenceMachineLib.triRow n + 1) (SequenceMachineLib.triCol n + 1) : ℤ) * A181549 (SequenceMachineLib.triCol n + 1)

end

end A181552.P14371791422649182277

noncomputable section

/-- A181552: T(n,k) = gcd(n,k) A181549(k), triangle read by rows.

Offset 1, canonical program `A181552.P14371791422649182277`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A181549, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A181552 (n : ℕ) : ℤ :=
  A181552.P14371791422649182277.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A181549, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A181552.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A181932.P11204992688967279884

`A003136(n+1)%2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A181932.P11204992688967279884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003136 (n + 1)) 2

end

end A181932.P11204992688967279884

noncomputable section

/-- A181932: A003136(n) mod 2.

Offset 1, canonical program `A181932.P11204992688967279884`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003136, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A181932 (n : ℕ) : ℤ :=
  A181932.P11204992688967279884.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003136, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A181932.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A182394.P11897336731762600311

`round(atan(atan(A051950(n+2))))`
-/

namespace A182394.P11897336731762600311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.arctan (Real.arctan (A051950 (n + 2) : ℝ)))

end

end A182394.P11897336731762600311

noncomputable section

/-- A182394: Signs of differences of number of divisors function: a(n) = sign(d(n)-d(n-1)), cf. A000005.

Offset 2, canonical program `A182394.P11897336731762600311`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A182394 (n : ℕ) : ℤ :=
  A182394.P11897336731762600311.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A182394.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A182626.P6575455807757680894

`or(1, A002002(n)*A033999(n))`
-/

namespace A182626.P6575455807757680894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A002002 n * A033999 n)

end

end A182626.P6575455807757680894

noncomputable section

/-- A182626: a(n) = Hypergeometric([-n, n], [1], 2).

Offset 0, canonical program `A182626.P6575455807757680894`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 133 terms. -/
def A182626 (n : ℕ) : ℤ :=
  A182626.P6575455807757680894.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 133 terms. -/
def A182626.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A183063.P14549643650991336837

`A062011(n+1)-A099777(n+1)`
-/

namespace A183063.P14549643650991336837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062011 (n + 1) - A099777 (n + 1)

end

end A183063.P14549643650991336837

noncomputable section

/-- A183063: Number of even divisors of n.

Offset 1, canonical program `A183063.P14549643650991336837`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A183063 (n : ℕ) : ℤ :=
  A183063.P14549643650991336837.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A183063.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A183093.P17608197149960352927

`A000005(n+1)-A005361(n+1)`
-/

namespace A183093.P17608197149960352927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A005361 (n + 1)

end

end A183093.P17608197149960352927

noncomputable section

/-- A183093: a(n) = number of divisors d of n such that d > 1 and if d = Product_(i) (p_i^e_i) then e_i = 1 for at least one i.

Offset 1, canonical program `A183093.P17608197149960352927`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A183093 (n : ℕ) : ℤ :=
  A183093.P17608197149960352927.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A183093.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A183094.P2300528291682876645

`A005361(n+1)-1`
-/

namespace A183094.P2300528291682876645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (n + 1) - 1

end

end A183094.P2300528291682876645

noncomputable section

/-- A183094: a(n) = number of powerful divisors d (excluding 1) of n.

Offset 1, canonical program `A183094.P2300528291682876645`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A183094 (n : ℕ) : ℤ :=
  A183094.P2300528291682876645.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A183094.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A183103.P15947555032237724278

`A007955(n+1)/A183102(n+1)`
-/

namespace A183103.P15947555032237724278
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007955 (n + 1) : ℚ) / (A183102 (n + 1) : ℚ)

end

end A183103.P15947555032237724278

noncomputable section

/-- A183103: a(n) = product of non-powerful divisors d of n.

Offset 1, canonical program `A183103.P15947555032237724278`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A183102, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A183103 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A183103.P15947555032237724278.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A183102, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A183103.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A184390.P5275387814831515097

`A000217(A007955(n+1))`
-/

namespace A184390.P5275387814831515097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A007955 (n + 1)).toNat

end

end A184390.P5275387814831515097

noncomputable section

/-- A184390: a(n) = sum of numbers from 1 to pi(n), where pi(n) = A007955(n).

Offset 1, canonical program `A184390.P5275387814831515097`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A184390 (n : ℕ) : ℤ :=
  A184390.P5275387814831515097.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A184390.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A184391.P2181629435017711796

`A007955(n+1)!`
-/

namespace A184391.P2181629435017711796
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A007955 (n + 1)).toNat

end

end A184391.P2181629435017711796

noncomputable section

/-- A184391: a(n) = product of numbers from 1 to A007955(n).

Offset 1, canonical program `A184391.P2181629435017711796`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A184391 (n : ℕ) : ℤ :=
  (A184391.P2181629435017711796.a (n - 1) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A184391.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A184815.P17423450562420843

`A000720(p?[A184812(n+1)])`
-/

namespace A184815.P17423450562420843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184812 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A184815.P17423450562420843

noncomputable section

/-- A184815: Numbers m such that prime(m) is of the form k+floor(ks/r)+floor(kt/r), where r=sqrt(2), s=sqrt(3), t=sqrt(5).

Offset 1, canonical program `A184815.P17423450562420843`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1067 terms. -/
def A184815 (n : ℕ) : ℤ :=
  A184815.P17423450562420843.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1067 terms. -/
def A184815.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A184856.P17031283218585029754

`A000040(A184858(n+1))`
-/

namespace A184856.P17031283218585029754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A184858 (n + 1)).toNat

end

end A184856.P17031283218585029754

noncomputable section

/-- A184856: Primes of the form floor(k*e/(e-1)).

Offset 1, canonical program `A184856.P17031283218585029754`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6292 terms. -/
def A184856 (n : ℕ) : ℤ :=
  A184856.P17031283218585029754.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6292 terms. -/
def A184856.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A185587.P7291945286253065846

`2*A348647(n)-1`
-/

namespace A185587.P7291945286253065846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A348647 n - 1

end

end A185587.P7291945286253065846

noncomputable section

/-- A185587: Irregular triangle read by rows: row n gives a list of the lengths of the free spaces at the n-th stage in a Rule 18 cellular automaton.

Offset 1, canonical program `A185587.P7291945286253065846`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6305 terms. -/
def A185587 (n : ℕ) : ℤ :=
  A185587.P7291945286253065846.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6305 terms. -/
def A185587.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A185934.P5020716041999348457

`filter[A258578(n+1), A070563(#)]`
-/

namespace A185934.P5020716041999348457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258578 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A070563 (f1 j).toNat = 1) n)

end

end A185934.P5020716041999348457

noncomputable section

/-- A185934: Lesser of two consecutive primes which both equal 1 (mod 3).

Offset 1, canonical program `A185934.P5020716041999348457`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A185934 (n : ℕ) : ℤ :=
  A185934.P5020716041999348457.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A185934.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A186035.P7318932329708112188

`(-1)^A186034(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A186035.P7318932329708112188
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (A186034 n : ℤ)

end

end A186035.P7318932329708112188

noncomputable section

/-- A186035: a(n) = (-1)^A186034(n).

Offset 0, canonical program `A186035.P7318932329708112188`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A186034, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A186035 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A186035.P7318932329708112188.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A186034, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A186035.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A186227.P15814989772072999567

`eq[char[A186228(n+1)], A000007(n)]`
-/

namespace A186227.P15814989772072999567
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186228 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A186227.P15814989772072999567

noncomputable section

/-- A186227: Adjusted joint rank sequence of (f(i)) and (g(j)) with f(i) before g(j) when f(i)=g(j), where f and g are the triangular numbers and heptagonal numbers. Complement of A186228.

Offset 1, canonical program `A186227.P15814989772072999567`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6909 terms. -/
def A186227 (n : ℕ) : ℤ :=
  (A186227.P15814989772072999567.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6909 terms. -/
def A186227.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A186344.P1154538610229371672

`comp[A186345(n+1)-1]+1`
-/

namespace A186344.P1154538610229371672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186345 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A186344.P1154538610229371672

noncomputable section

/-- A186344: Adjusted joint rank sequence of (f(i)) and (g(j)) with f(i) after g(j) when f(i)=g(j), where f and g are the pentagonal numbers and the octagonal numbers. Complement of A186345.

Offset 1, canonical program `A186344.P1154538610229371672`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A186344 (n : ℕ) : ℤ :=
  (A186344.P1154538610229371672.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A186344.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A186356.P6573468704115705023

`A193832(n+2)+A183295(n+1)`
-/

namespace A186356.P6573468704115705023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193832 (n + 2) + A183295 (n + 1)

end

end A186356.P6573468704115705023

noncomputable section

/-- A186356: Adjusted joint rank sequence of (f(i)) and (g(j)) with f(i) after g(j) when f(i)=g(j), where f(i)=3i and g(j)=j(j+1)/2 (triangular number). Complement of A186357.

Offset 1, canonical program `A186356.P6573468704115705023`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A186356 (n : ℕ) : ℤ :=
  A186356.P6573468704115705023.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A186356.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A186648.P1074601965307673804

`(A264960(n)-A000984(n))/2`
-/

namespace A186648.P1074601965307673804
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A264960 n - A000984 n : ℚ) / 2

end

end A186648.P1074601965307673804

noncomputable section

/-- A186648: Number of walks f length n on a square lattice ending with x > 0 and y > 0.

Offset 0, canonical program `A186648.P1074601965307673804`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A186648 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A186648.P1074601965307673804.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A186648.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A187500.P11324648320385359507

`A187502(n+3)-(A187502(n)+A187501(n))`
-/

namespace A187500.P11324648320385359507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187502 (n + 3) - (A187502 n + A187501 n)

end

end A187500.P11324648320385359507

noncomputable section

/-- A187500: Let i be in {1,2,3,4} and let r >= 0 be an integer. Let p = {p_1, p_2, p_3, p_4} = {-2,0,1,2}, n=3*r+p_i, and define a(-2)=0. Then a(n)=a(3*r+p_i) gives the quantity of H_(9,2,0) tiles in a subdivided H_(9,i,r) tile after linear scaling by the factor Q^r, where Q=sqrt(x^2-1) with x=2*cos(Pi/9).

Offset 0, canonical program `A187500.P11324648320385359507`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 745 terms. -/
def A187500 (n : ℕ) : ℤ :=
  A187500.P11324648320385359507.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 745 terms. -/
def A187500.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A187581.P17957234280026754368

`xor(1, A137709(n+1))`
-/

namespace A187581.P17957234280026754368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A137709 (n + 1))

end

end A187581.P17957234280026754368

noncomputable section

/-- A187581: Complement of A187580.

Offset 1, canonical program `A187581.P17957234280026754368`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A187581 (n : ℕ) : ℤ :=
  A187581.P17957234280026754368.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A187581.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A187680.P7320752672487898907

`A007955(n+1)%A000203(n+1)`
-/

namespace A187680.P7320752672487898907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007955 (n + 1)) (A000203 (n + 1))

end

end A187680.P7320752672487898907

noncomputable section

/-- A187680: a(n) = (product of divisors of n) mod (sum of divisors of n).

Offset 1, canonical program `A187680.P7320752672487898907`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A187680 (n : ℕ) : ℤ :=
  A187680.P7320752672487898907.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A187680.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A188019.P17014770103561860153

`comp[A188018(n+1)-1]+1`
-/

namespace A188019.P17014770103561860153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188018 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A188019.P17014770103561860153

noncomputable section

/-- A188019: Positions of 1 in A188017; complement of A188018.

Offset 1, canonical program `A188019.P17014770103561860153`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188019 (n : ℕ) : ℤ :=
  (A188019.P17014770103561860153.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188019.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A188025.P8051068989946620211

`A188469(n+1)+A188013(n+1)`
-/

namespace A188025.P8051068989946620211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188469 (n + 1) + A188013 (n + 1)

end

end A188025.P8051068989946620211

noncomputable section

/-- A188025: Positions of 1 in A188020; complement of A188024.

Offset 1, canonical program `A188025.P8051068989946620211`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188025 (n : ℕ) : ℤ :=
  A188025.P8051068989946620211.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188025.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A188045.P18393744390427798970

`2*A188298(n+1)-A004526(n)`
-/

namespace A188045.P18393744390427798970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A188298 (n + 1) - A004526 n

end

end A188045.P18393744390427798970

noncomputable section

/-- A188045: Positions of 0 in A188044; complement of A188046.

Offset 1, canonical program `A188045.P18393744390427798970`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188045 (n : ℕ) : ℤ :=
  A188045.P18393744390427798970.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188045.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A188088.P12262049233856946859

`abs(3-A188074(n+1))`
-/

namespace A188088.P12262049233856946859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |3 - A188074 (n + 1)|

end

end A188088.P12262049233856946859

noncomputable section

/-- A188088: Positions of 1 in A188086; complement of A188087.

Offset 1, canonical program `A188088.P12262049233856946859`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188088 (n : ℕ) : ℤ :=
  A188088.P12262049233856946859.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188088.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A188171.P17289095504074848112

`A001842(n+1)+A002654(n+1)-A188169(n+1)`
-/

namespace A188171.P17289095504074848112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001842 (n + 1) + (A002654 (n + 1) - A188169 (n + 1))

end

end A188171.P17289095504074848112

noncomputable section

/-- A188171: The number of divisors d of n of the form d == 5 (mod 8).

Offset 1, canonical program `A188171.P17289095504074848112`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188171 (n : ℕ) : ℤ :=
  A188171.P17289095504074848112.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188171.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A188257.P11681210939291988659

`A188260(a(n-1)+n)` with `a(0)=0`
-/

namespace A188257.P11681210939291988659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A188260 (a (n - 1) + (n : ℤ)).toNat

end

end A188257.P11681210939291988659

noncomputable section

/-- A188257: [nr+kr]-[nr]-[kr], where r=sqrt(5), k=2, [ ]=floor.

Offset 1, canonical program `A188257.P11681210939291988659`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188257 (n : ℕ) : ℤ :=
  A188257.P11681210939291988659.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188257.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A188341.P7441460803417477000

`floor(A044966(n+2)/3)`
-/

namespace A188341.P7441460803417477000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A044966 (n + 2) : ℚ) / 3⌋

end

end A188341.P7441460803417477000

noncomputable section

/-- A188341: Numbers having no 0's and not more than one 1 in their representation in base 3.

Offset 1, canonical program `A188341.P7441460803417477000`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 120 terms. -/
def A188341 (n : ℕ) : ℤ :=
  A188341.P7441460803417477000.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 120 terms. -/
def A188341.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A188395.P9222550659096500199

`A080764(n*A288997(n+1))`
-/

namespace A188395.P9222550659096500199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080764 ((n : ℤ) * A288997 (n + 1)).toNat

end

end A188395.P9222550659096500199

noncomputable section

/-- A188395: a(n) = [n*r +k*r]-[n*r]-[k*r], where r=1/sqrt(2), k=4, [ ]=floor.

Offset 1, canonical program `A188395.P9222550659096500199`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188395 (n : ℕ) : ℤ :=
  A188395.P9222550659096500199.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188395.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A188467.P12427925613613652829

`A267871(n)-A188014(n+1)`
-/

namespace A188467.P12427925613613652829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267871 n - A188014 (n + 1)

end

end A188467.P12427925613613652829

noncomputable section

/-- A188467: [4r]-[nr]-[4r-nr], where r=(1+sqrt(5))/2 and [.]=floor.

Offset 1, canonical program `A188467.P12427925613613652829`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188467 (n : ℕ) : ℤ :=
  A188467.P12427925613613652829.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188467.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A188472.P12778231603659369171

`A005614(n)*A188014(A019446(n+1))`
-/

namespace A188472.P12778231603659369171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005614 n * A188014 (A019446 (n + 1)).toNat

end

end A188472.P12778231603659369171

noncomputable section

/-- A188472: a(n) = [6r]-[nr]-[6r-nr], where r=(1+sqrt(5))/2 and []=floor.

Offset 1, canonical program `A188472.P12778231603659369171`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188472 (n : ℕ) : ℤ :=
  A188472.P12778231603659369171.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188472.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A188633.P1960431883035544566

`4*A105441(n+1)`
-/

namespace A188633.P1960431883035544566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A105441 (n + 1)

end

end A188633.P1960431883035544566

noncomputable section

/-- A188633: Numbers of the form 2^k * m, with k > 1 and m an odd composite number.

Offset 1, canonical program `A188633.P1960431883035544566`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188633 (n : ℕ) : ℤ :=
  A188633.P1960431883035544566.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188633.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A189390.P722462694232908460

`n*2^n-A189391(n)`
-/

namespace A189390.P722462694232908460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n * 2 ^ n : ℤ) - A189391 n

end

end A189390.P722462694232908460

noncomputable section

/-- A189390: The maximum possible value for the apex of a triangle of numbers whose base consists of a permutation of the numbers 0 to n, and each number in a higher row is the sum of the two numbers directly below it.

Offset 0, canonical program `A189390.P722462694232908460`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A189391, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A189390 (n : ℕ) : ℤ :=
  A189390.P722462694232908460.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A189391, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A189390.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A189634.P909356562777891474

`A287529(n+1)+2-A287528(n+1)²`
-/

namespace A189634.P909356562777891474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287529 (n + 1) + (2 - A287528 (n + 1) ^ 2)

end

end A189634.P909356562777891474

noncomputable section

/-- A189634: Positions of 1 in A189632; complement of A189633.

Offset 1, canonical program `A189634.P909356562777891474`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A189634 (n : ℕ) : ℤ :=
  A189634.P909356562777891474.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A189634.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A189665.P13427667427402099611

`A189667(A320928(n+1))+1+n`
-/

namespace A189665.P13427667427402099611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189667 (A320928 (n + 1)).toNat + 1 + (n : ℤ)

end

end A189665.P13427667427402099611

noncomputable section

/-- A189665: Positions of 0's in A189664; complement of A189666.

Offset 1, canonical program `A189665.P13427667427402099611`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6667 terms. -/
def A189665 (n : ℕ) : ℤ :=
  A189665.P13427667427402099611.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6667 terms. -/
def A189665.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A189709.P16099882615266385270

`∑[A189706(n+1)]`
-/

namespace A189709.P16099882615266385270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189706 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189709.P16099882615266385270

noncomputable section

/-- A189709: Partial sums of A189706.

Offset 1, canonical program `A189709.P16099882615266385270`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A189709 (n : ℕ) : ℤ :=
  A189709.P16099882615266385270.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A189709.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A189725.P7436048816723822181

`A320928(n+1)+1`
-/

namespace A189725.P7436048816723822181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320928 (n + 1) + 1

end

end A189725.P7436048816723822181

noncomputable section

/-- A189725: Positions of 1 in A189723; complement of A189724.

Offset 1, canonical program `A189725.P7436048816723822181`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A189725 (n : ℕ) : ℤ :=
  A189725.P7436048816723822181.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A189725.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A189729.P3541793079639853341

`comp[A189728(n+1)-1]+1`
-/

namespace A189729.P3541793079639853341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189728 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A189729.P3541793079639853341

noncomputable section

/-- A189729: Positions of 1 in A189727; complement of A189728.

Offset 1, canonical program `A189729.P3541793079639853341`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A189729 (n : ℕ) : ℤ :=
  (A189729.P3541793079639853341.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A189729.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A189816.P3550546103248011916

`A215879(n)%2`
-/

namespace A189816.P3550546103248011916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A215879 n) 2

end

end A189816.P3550546103248011916

noncomputable section

/-- A189816: a(3*k-2)=0, a(3*k-1)=1-a(k), a(3*k)=1-a(k); k>0, a(1)=0.

Offset 1, canonical program `A189816.P3550546103248011916`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A189816 (n : ℕ) : ℤ :=
  A189816.P3550546103248011916.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A189816.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A189827.P11786162763296381781

`A092405(n+1)+A051950(n+3)`
-/

namespace A189827.P11786162763296381781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092405 (n + 1) + A051950 (n + 3)

end

end A189827.P11786162763296381781

noncomputable section

/-- A189827: a(n) = d(n-1) + d(n+1), where d(k) is the number of divisors of k.

Offset 2, canonical program `A189827.P11786162763296381781`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A189827 (n : ℕ) : ℤ :=
  A189827.P11786162763296381781.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A189827.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A189835.P10100538785749668856

`A001157(n+1)-A038040(n+1)`
-/

namespace A189835.P10100538785749668856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001157 (n + 1) - A038040 (n + 1)

end

end A189835.P10100538785749668856

noncomputable section

/-- A189835: Number of representations of n as a*b + b*c + c*d + d*e where a, b, d, e>0, c>=0 are integers.

Offset 1, canonical program `A189835.P10100538785749668856`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001157, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A189835 (n : ℕ) : ℤ :=
  A189835.P10100538785749668856.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001157, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A189835.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A189883.P14118951556328521303

`A047928(A069977(n+1)+2)`
-/

namespace A189883.P14118951556328521303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047928 (A069977 (n + 1) + 2).toNat

end

end A189883.P14118951556328521303

noncomputable section

/-- A189883: Numbers k such that the square part of k is one greater than the squarefree part of k.

Offset 1, canonical program `A189883.P14118951556328521303`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A189883 (n : ℕ) : ℤ :=
  A189883.P14118951556328521303.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A189883.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A190088.P10356372276694908

`C(A131894(n), 2*A002262(n))`
-/

namespace A190088.P10356372276694908
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A131894 n).toNat (2 * A002262 n).toNat

end

end A190088.P10356372276694908

noncomputable section

/-- A190088: Triangle of binomial coefficients binomial(3*n-k+1,3*n-3*k+1).

Offset 0, canonical program `A190088.P10356372276694908`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6509 terms. -/
def A190088 (n : ℕ) : ℤ :=
  (A190088.P10356372276694908.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6509 terms. -/
def A190088.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A190152.P9394055725372174339

`C(A131894(n)-1, A005843(A002262(n)))`
-/

namespace A190152.P9394055725372174339
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A131894 n - 1).toNat (A005843 (A002262 n).toNat).toNat

end

end A190152.P9394055725372174339

noncomputable section

/-- A190152: Triangle of binomial coefficients binomial(3*n-k,3*n-3*k).

Offset 0, canonical program `A190152.P9394055725372174339`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6622 terms. -/
def A190152 (n : ℕ) : ℤ :=
  (A190152.P9394055725372174339.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6622 terms. -/
def A190152.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A190355.P15183790579650426373

`∩[A030630(n+1)+1, A030630(n+1)-1]`
-/

namespace A190355.P15183790579650426373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030630 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030630 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190355.P15183790579650426373

noncomputable section

/-- A190355: Numbers n such that d(n-1)=d(n+1)=12 where d(k)=A000005(k) (number of divisors of k).

Offset 1, canonical program `A190355.P15183790579650426373`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 809 terms. -/
def A190355 (n : ℕ) : ℤ :=
  (A190355.P15183790579650426373.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 809 terms. -/
def A190355.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A190493.P8493265097139754522

`eq[1, A190491(n+1)]+1`
-/

namespace A190493.P8493265097139754522
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190491 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A190493.P8493265097139754522

noncomputable section

/-- A190493: Positions of 1 in A190491.

Offset 1, canonical program `A190493.P8493265097139754522`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3335 terms. -/
def A190493 (n : ℕ) : ℤ :=
  (A190493.P8493265097139754522.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3335 terms. -/
def A190493.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A190494.P15760637447860569934

`eq[2, A190491(n+1)]+1`
-/

namespace A190494.P15760637447860569934
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190491 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A190494.P15760637447860569934

noncomputable section

/-- A190494: Positions of 2 in A190491.

Offset 1, canonical program `A190494.P15760637447860569934`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3332 terms. -/
def A190494 (n : ℕ) : ℤ :=
  (A190494.P15760637447860569934.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3332 terms. -/
def A190494.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A190671.P5074073965687265744

`∪[A188069(n+1), A190696(n+1)]`
-/

namespace A190671.P5074073965687265744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188069 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190696 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A190671.P5074073965687265744

noncomputable section

/-- A190671: Positions of 1 in A190669; complement of A190670.

Offset 1, canonical program `A190671.P5074073965687265744`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A190671 (n : ℕ) : ℤ :=
  (A190671.P5074073965687265744.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A190671.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A190673.P14157910734428056466

`A003512(A190670(n+1))`
-/

namespace A190673.P14157910734428056466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003512 (A190670 (n + 1)).toNat

end

end A190673.P14157910734428056466

noncomputable section

/-- A190673: Positions of 0 in A190672.

Offset 1, canonical program `A190673.P14157910734428056466`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A190673 (n : ℕ) : ℤ :=
  A190673.P14157910734428056466.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A190673.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A190674.P7150787188508338340

`∪[A190706(n+1), A190707(n+1)]`
-/

namespace A190674.P7150787188508338340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190706 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190707 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A190674.P7150787188508338340

noncomputable section

/-- A190674: Positions of 1 in A190672.

Offset 1, canonical program `A190674.P7150787188508338340`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A190674 (n : ℕ) : ℤ :=
  (A190674.P7150787188508338340.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A190674.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A190675.P10535900529426331608

`∪[A188069(n+1), A190708(n+1)]`
-/

namespace A190675.P10535900529426331608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188069 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190708 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A190675.P10535900529426331608

noncomputable section

/-- A190675: Positions of 2 in A190672.

Offset 1, canonical program `A190675.P10535900529426331608`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A190675 (n : ℕ) : ℤ :=
  (A190675.P10535900529426331608.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A190675.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A190692.P17579498809585757927

`eq[A024548(A022838(n+1)), A327180(n)]`
-/

namespace A190692.P17579498809585757927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024548 (A022838 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327180 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A190692.P17579498809585757927

noncomputable section

/-- A190692: Positions of 3 in A190688.

Offset 1, canonical program `A190692.P17579498809585757927`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 893 terms. -/
def A190692 (n : ℕ) : ℤ :=
  (A190692.P17579498809585757927.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 893 terms. -/
def A190692.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A190698.P11569126701504910814

`A190672(2*(n+1))+A005843(val(A022847(n+1), A198081(n+1)))`
-/

namespace A190698.P11569126701504910814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190672 (2 * (n + 1)) + A005843 (SequenceMachineLib.valuation (A022847 (n + 1)).toNat (A198081 (n + 1)).toNat)

end

end A190698.P11569126701504910814

noncomputable section

/-- A190698: a(n) = [(bn+c)r]-b[nr]-[cr], where (r,b,c)=(sqrt(3),4,1) and [ ]=floor.

Offset 1, canonical program `A190698.P11569126701504910814`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A190698 (n : ℕ) : ℤ :=
  A190698.P11569126701504910814.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A190698.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A190714.P2012202855424019024

`eq[1, A190672(2*n+1)*A190672(n+2)]`
-/

namespace A190714.P2012202855424019024
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190672 (2 * n + 1) * A190672 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190714.P2012202855424019024

noncomputable section

/-- A190714: Positions of 3 in A190710.

Offset 1, canonical program `A190714.P2012202855424019024`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1251 terms. -/
def A190714 (n : ℕ) : ℤ :=
  (A190714.P2012202855424019024.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1251 terms. -/
def A190714.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A191026.P14743048384192298842

`p?[eq[2, A035155(n+1)]+1]`
-/

namespace A191026.P14743048384192298842
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035155 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A191026.P14743048384192298842

noncomputable section

/-- A191026: Primes p that have Jacobi symbol (p|35) = 1.

Offset 1, canonical program `A191026.P14743048384192298842`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 606 terms. -/
def A191026 (n : ℕ) : ℤ :=
  (A191026.P14743048384192298842.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 606 terms. -/
def A191026.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A191029.P9038524740072031153

`p?[eq[2, A035151(n+1)]+1]`
-/

namespace A191029.P9038524740072031153
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035151 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A191029.P9038524740072031153

noncomputable section

/-- A191029: Primes p with Jacobi symbol (p|39) = 1.

Offset 1, canonical program `A191029.P9038524740072031153`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 606 terms. -/
def A191029 (n : ℕ) : ℤ :=
  (A191029.P9038524740072031153.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 606 terms. -/
def A191029.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A191068.P6506479572961148821

`p?[(n+1)*(1-A035155(n+1))]`
-/

namespace A191068.P6506479572961148821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (1 - A035155 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A191068.P6506479572961148821

noncomputable section

/-- A191068: Primes p that have Kronecker symbol (p|35) = -1.

Offset 1, canonical program `A191068.P6506479572961148821`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 621 terms. -/
def A191068 (n : ℕ) : ℤ :=
  A191068.P6506479572961148821.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 621 terms. -/
def A191068.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A191070.P10123948899731297363

`p?[(n+1)*(1-A035151(n+1))]`
-/

namespace A191070.P10123948899731297363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (1 - A035151 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A191070.P10123948899731297363

noncomputable section

/-- A191070: Primes p that have Kronecker symbol (p|39) = -1.

Offset 1, canonical program `A191070.P10123948899731297363`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 621 terms. -/
def A191070 (n : ℕ) : ℤ :=
  A191070.P10123948899731297363.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 621 terms. -/
def A191070.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A191790.P8584163521288311520

`A086905(n)-char[2*n]`
-/

namespace A191790.P8584163521288311520
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086905 n - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A191790.P8584163521288311520

noncomputable section

/-- A191790: Number of base pyramids in all length n left factors of Dyck paths.

Offset 0, canonical program `A191790.P8584163521288311520`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 338 terms. -/
def A191790 (n : ℕ) : ℤ :=
  A191790.P8584163521288311520.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 338 terms. -/
def A191790.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A192142.P14644412906987799282

`A192245(n+1)+A117152(n)`
-/

namespace A192142.P14644412906987799282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192245 (n + 1) + A117152 n

end

end A192142.P14644412906987799282

noncomputable section

/-- A192142: 1-sequence of reduction of (n^2+n+1) by x^2 -> x+1.

Offset 1, canonical program `A192142.P14644412906987799282`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 453 terms. -/
def A192142 (n : ℕ) : ℤ :=
  A192142.P14644412906987799282.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 453 terms. -/
def A192142.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A192450.P13811939200402364126

`∪[A059267(n+1), A187811(n+1)]`
-/

namespace A192450.P13811939200402364126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059267 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187811 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A192450.P13811939200402364126

noncomputable section

/-- A192450: Numbers k such that -1 is not a square mod k.

Offset 1, canonical program `A192450.P13811939200402364126`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A192450 (n : ℕ) : ℤ :=
  (A192450.P13811939200402364126.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A192450.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A192869.P9466224486082789538

`p?[2*A093641(n+1)-1]`
-/

namespace A192869.P9466224486082789538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A093641 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A192869.P9466224486082789538

noncomputable section

/-- A192869: Thin primes: odd primes p such that p+1 is a prime (or 1) times a power of two.

Offset 1, canonical program `A192869.P9466224486082789538`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A192869 (n : ℕ) : ℤ :=
  A192869.P9466224486082789538.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A192869.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A193350.P7605107557020847514

`A062069(n+1)-A193349(n+1)`
-/

namespace A193350.P7605107557020847514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062069 (n + 1) - A193349 (n + 1)

end

end A193350.P7605107557020847514

noncomputable section

/-- A193350: Sum of even divisors of tau(n).

Offset 1, canonical program `A193350.P7605107557020847514`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A193349, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A193350 (n : ℕ) : ℤ :=
  A193350.P7605107557020847514.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A193349, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A193350.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A193383.P14072576358167787959

`∑[-A193382(n+1)]`
-/

namespace A193383.P14072576358167787959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A193382 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A193383.P14072576358167787959

noncomputable section

/-- A193383: G.f. is the imaginary part of the function C(x) that satisfies: C(x) = 1 + x/C(I*x).

Offset 2, canonical program `A193383.P14072576358167787959`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 672 terms. -/
def A193383 (n : ℕ) : ℤ :=
  A193383.P14072576358167787959.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 672 terms. -/
def A193383.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A193426.P7960739282691465682

`A131719(2*n)*A261884(2*(n+1))`
-/

namespace A193426.P7960739282691465682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131719 (2 * n) * A261884 (2 * (n + 1))

end

end A193426.P7960739282691465682

noncomputable section

/-- A193426: Expansion of (a(q^2) + a(q^3) - 2*a(q^6)) / 6 in powers of q where a() is a cubic AGM function.

Offset 1, canonical program `A193426.P7960739282691465682`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A193426 (n : ℕ) : ℤ :=
  A193426.P7960739282691465682.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A193426.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A193736.P14164612170582133847

`A209151(gcd(A010816(n), A083920(n)))`
-/

namespace A193736.P14164612170582133847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209151 (Int.gcd (A010816 n) (A083920 n))

end

end A193736.P14164612170582133847

noncomputable section

/-- A193736: Triangular array: the fusion of polynomial sequences P and Q given by p(n,x) = (n+1)-st Fibonacci polynomial and q(n,x) = (x+1)^n.

Offset 0, canonical program `A193736.P14164612170582133847`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A193736 (n : ℕ) : ℤ :=
  A193736.P14164612170582133847.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A193736.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A193829.P10500776787776175054

`A208460(n+2)%A208460(n+3)`
-/

namespace A193829.P10500776787776175054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A208460 (n + 2)) (A208460 (n + 3))

end

end A193829.P10500776787776175054

noncomputable section

/-- A193829: Irregular triangle read by rows in which row n lists the differences between consecutive divisors of n.

Offset 2, canonical program `A193829.P10500776787776175054`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A193829 (n : ℕ) : ℤ :=
  A193829.P10500776787776175054.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A193829.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A194371.P12996466738484531238

`record[(n+1)%A190670(A008619(n))]`
-/

namespace A194371.P12996466738484531238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A190670 (A008619 n).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A194371.P12996466738484531238

noncomputable section

/-- A194371: Numbers m such that Sum_{k=1..m} (<1/2 + k*r> - <k*r>) < 0, where r=sqrt(3) and fractional part is denoted by < >.

Offset 1, canonical program `A194371.P12996466738484531238`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A194371 (n : ℕ) : ℤ :=
  A194371.P12996466738484531238.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A194371.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A194373.P2131192760433905498

`lt[A190670(A008619(n))-n, 1]`
-/

namespace A194373.P2131192760433905498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190670 (A008619 n).toNat - (n : ℤ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A194373.P2131192760433905498

noncomputable section

/-- A194373: Numbers m such that Sum_{k=1..m} (<1/2 + k*r> - <k*r>) > 0, where r=sqrt(3) and < > denotes fractional part.

Offset 1, canonical program `A194373.P2131192760433905498`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A194373 (n : ℕ) : ℤ :=
  (A194373.P2131192760433905498.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A194373.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A194736.P10753671586819030676

`1-A194737(n+1)+n`
-/

namespace A194736.P10753671586819030676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A194737 (n + 1) + (n : ℤ)

end

end A194736.P10753671586819030676

noncomputable section

/-- A194736: Number of k such that {-k*sqrt(2)} < {-n*sqrt(2)}, where { } = fractional part.

Offset 1, canonical program `A194736.P10753671586819030676`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A194736 (n : ℕ) : ℤ :=
  A194736.P10753671586819030676.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A194736.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A194817.P12896036413848016526

`∑[A327180(n)]`
-/

namespace A194817.P12896036413848016526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327180 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194817.P12896036413848016526

noncomputable section

/-- A194817: Number of integers k in [1,n] such that {n*r+k*r} < {n*r-k*r}, where { } = fractional part and r=sqrt(3).

Offset 1, canonical program `A194817.P12896036413848016526`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A194817 (n : ℕ) : ℤ :=
  A194817.P12896036413848016526.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A194817.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A194818.P8981448949594921892

`∑[1-A327180(n)]`
-/

namespace A194818.P8981448949594921892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A327180 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194818.P8981448949594921892

noncomputable section

/-- A194818: Number of integers k in [1,n] such that {n*r+k*r} > {n*r-k*r}, where { } = fractional part and r=sqrt(3).

Offset 1, canonical program `A194818.P8981448949594921892`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A194818 (n : ℕ) : ℤ :=
  A194818.P8981448949594921892.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A194818.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A195052.P8855072573721883915

`A195051(n+1)/2`
-/

namespace A195052.P8855072573721883915
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A195051 (n + 1) : ℚ) / 2

end

end A195052.P8855072573721883915

noncomputable section

/-- A195052: Number of divisors of 24*n - 1 divided by 2.

Offset 1, canonical program `A195052.P8855072573721883915`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A195052 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A195052.P8855072573721883915.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A195052.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A195065.P14907772542944478463

`lt[n, A036044(n)]`
-/

namespace A195065.P14907772542944478463
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036044 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A195065.P14907772542944478463

noncomputable section

/-- A195065: Numbers n such that BCR(n) is greater than n, where BCR = binary-complement-and-reverse = A036044.

Offset 1, canonical program `A195065.P14907772542944478463`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2816 terms. -/
def A195065 (n : ℕ) : ℤ :=
  (A195065.P14907772542944478463.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2816 terms. -/
def A195065.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A196524.P2546210231834918335

`A000010(n+1)*A000005((n+1)²)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A196524.P2546210231834918335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) * A000005 ((n + 1) ^ 2)

end

end A196524.P2546210231834918335

noncomputable section

/-- A196524: a(n) = phi(n)*tau(n^2).

Offset 1, canonical program `A196524.P2546210231834918335`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A196524 (n : ℕ) : ℤ :=
  A196524.P2546210231834918335.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A196524.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A197208.P16904640746338435843

`A168577(n+2)*A209518(n)*A135278(n)`
-/

namespace A197208.P16904640746338435843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168577 (n + 2) * A209518 n * A135278 n

end

end A197208.P16904640746338435843

noncomputable section

/-- A197208: Triangular array: T(n,k) = sqrt(C(n-1,k-1)*C(n-1,k)*C(n,k+1)* C(n+1,k+1)*C(n+1,k)*C(n,k-1)), where C(n,k) = binomial(n,k).

Offset 2, canonical program `A197208.P16904640746338435843`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6493 terms. -/
def A197208 (n : ℕ) : ℤ :=
  A197208.P16904640746338435843.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6493 terms. -/
def A197208.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A197637.P7917936694828647143

`comp[A197636(n+1)+n-1]-n`
-/

namespace A197637.P7917936694828647143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197636 (n + 1) + ((n : ℤ) - 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A197637.P7917936694828647143

noncomputable section

/-- A197637: Number of non-Wilson primes <= n.

Offset 1, canonical program `A197637.P7917936694828647143`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A197637 (n : ℕ) : ℤ :=
  A197637.P7917936694828647143.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A197637.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A199427.P16032660571928218146

`∑[A110655(Δ[A103579(n+1)])]`
-/

namespace A199427.P16032660571928218146
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103579 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110655 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A199427.P16032660571928218146

noncomputable section

/-- A199427: Numbers n such that 4n+1 and 8n+3 are prime.

Offset 1, canonical program `A199427.P16032660571928218146`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 999 terms. -/
def A199427 (n : ℕ) : ℤ :=
  A199427.P16032660571928218146.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 999 terms. -/
def A199427.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A199805.P3565271180669152033

`(A199929(n)+A199927(n))/3`
-/

namespace A199805.P3565271180669152033
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A199929 n + A199927 n : ℚ) / 3

end

end A199805.P3565271180669152033

noncomputable section

/-- A199805: G.f.: 1/(1 + x + 5*x^2 - x^3 + x^4).

Offset 0, canonical program `A199805.P3565271180669152033`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 281 terms. -/
def A199805 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A199805.P3565271180669152033.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 281 terms. -/
def A199805.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A200811.P737774431781934220

`A200810(A035004(n+2))`
-/

namespace A200811.P737774431781934220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200810 (A035004 (n + 2)).toNat

end

end A200811.P737774431781934220

noncomputable section

/-- A200811: Iterate k -> d(k) until an odd prime is reached, starting from the n-th composite.

Offset 1, canonical program `A200811.P737774431781934220`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A200811 (n : ℕ) : ℤ :=
  A200811.P737774431781934220.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A200811.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A202057.P9210268420412961846

`filter[A072437(n+1), A049240(#)]`
-/

namespace A202057.P9210268420412961846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072437 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A049240 (f1 j).toNat = 1) n)

end

end A202057.P9210268420412961846

noncomputable section

/-- A202057: Numbers which are not perfect squares and such that all prime divisors are congruent to 1 or 2 mod 4.

Offset 1, canonical program `A202057.P9210268420412961846`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9932 terms. -/
def A202057 (n : ℕ) : ℤ :=
  A202057.P9210268420412961846.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9932 terms. -/
def A202057.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A202335.P3583749144337499304

`A027170(eq[0, A103451(n)])+6`
-/

namespace A202335.P3583749144337499304
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103451 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027170 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) + 6

end

end A202335.P3583749144337499304

noncomputable section

/-- A202335: T(n,k)=Number of (n+1)X(k+1) binary arrays with consecutive windows of two bits considered as a binary number nondecreasing in every row and column.

Offset 1, canonical program `A202335.P3583749144337499304`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9720 terms. -/
def A202335 (n : ℕ) : ℤ :=
  A202335.P3583749144337499304.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9720 terms. -/
def A202335.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A202822.P8406521791768772267

`filter[A003136(n+2), A187074(#)]`
-/

namespace A202822.P8406521791768772267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003136 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A187074 (f1 j).toNat = 1) n)

end

end A202822.P8406521791768772267

noncomputable section

/-- A202822: Numbers of the form 3*(x^2 + xy + y^2 + x + y) + 1 where x and y are integers.

Offset 1, canonical program `A202822.P8406521791768772267`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6444 terms. -/
def A202822 (n : ℕ) : ℤ :=
  A202822.P8406521791768772267.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6444 terms. -/
def A202822.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A203639.P16011470496757075944

`A005361(n+1)*A003557(n+1)`
-/

namespace A203639.P16011470496757075944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (n + 1) * A003557 (n + 1)

end

end A203639.P16011470496757075944

noncomputable section

/-- A203639: Multiplicative with a(p^e) = e*p^(e-1).

Offset 1, canonical program `A203639.P16011470496757075944`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A203639 (n : ℕ) : ℤ :=
  A203639.P16011470496757075944.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A203639.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A203640.P11471034263871899350

`A046951(A046951(57*n+1)^A046951(n+1)+1)`
-/

namespace A203640.P11471034263871899350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046951 (SequenceMachineLib.roundAway ((A046951 (57 * n + 1) : ℚ) ^ (A046951 (n + 1) : ℤ) + 1)).toNat

end

end A203640.P11471034263871899350

noncomputable section

/-- A203640: Length of the cycle reached for the map x->A203639(x), starting at n.

Offset 1, canonical program `A203640.P11471034263871899350`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 176 terms. -/
def A203640 (n : ℕ) : ℤ :=
  A203640.P11471034263871899350.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 176 terms. -/
def A203640.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A204232.P14925845568226415786

`eq[1, ∑{e}[A030101(n), #]]`
-/

namespace A204232.P14925845568226415786
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n).natAbs, Nat.factorization (f3 n).natAbs p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A204232.P14925845568226415786

noncomputable section

/-- A204232: Numbers whose binary reversal is prime.

Offset 1, canonical program `A204232.P14925845568226415786`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A204232 (n : ℕ) : ℤ :=
  (A204232.P14925845568226415786.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A204232.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A205098.P10471539786565330894

`A204822(n+1)-A005101(n+1)`
-/

namespace A205098.P10471539786565330894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204822 (n + 1) - A005101 (n + 1)

end

end A205098.P10471539786565330894

noncomputable section

/-- A205098: Sum of proper divisors (A001065) of abundant numbers (A005101).

Offset 1, canonical program `A205098.P10471539786565330894`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005101, A204822, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A205098 (n : ℕ) : ℤ :=
  A205098.P10471539786565330894.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005101, A204822, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A205098.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A205099.P16915794968075742101

`A204823(n+1)-A005100(n+1)`
-/

namespace A205099.P16915794968075742101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204823 (n + 1) - A005100 (n + 1)

end

end A205099.P16915794968075742101

noncomputable section

/-- A205099: Sum of proper divisors (A001065) of deficient numbers (A005100).

Offset 1, canonical program `A205099.P16915794968075742101`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005100, A204823, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A205099 (n : ℕ) : ℤ :=
  A205099.P16915794968075742101.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005100, A204823, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A205099.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A205523.P3343605037505574197

`lt[A272008(n+1), 2]+1`
-/

namespace A205523.P3343605037505574197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272008 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A205523.P3343605037505574197

noncomputable section

/-- A205523: Numbers k such that gcd(k, sigma(k)) == sigma(k) (mod k).

Offset 1, canonical program `A205523.P3343605037505574197`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5222 terms. -/
def A205523 (n : ℕ) : ℤ :=
  (A205523.P3343605037505574197.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5222 terms. -/
def A205523.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A206023.P1386977352654447418

`∩[A015919(n+1)+2, A015919(n+1)]`
-/

namespace A206023.P1386977352654447418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015919 (n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015919 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A206023.P1386977352654447418

noncomputable section

/-- A206023: 2^n == 3n+2 (mod n^2-2n).

Offset 1, canonical program `A206023.P1386977352654447418`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2416 terms. -/
def A206023 (n : ℕ) : ℤ :=
  (A206023.P1386977352654447418.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2416 terms. -/
def A206023.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A206778.P8563083119957903362

`filter[A162306(n+1), A008966(#)]`
-/

namespace A206778.P8563083119957903362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162306 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A206778.P8563083119957903362

noncomputable section

/-- A206778: Irregular triangle in which n-th row lists squarefree divisors (A005117) of n.

Offset 1, canonical program `A206778.P8563083119957903362`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4987 terms. -/
def A206778 (n : ℕ) : ℤ :=
  A206778.P8563083119957903362.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4987 terms. -/
def A206778.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A207536.P11378481812331935203

`A034839(n+1)/A034867(n+1)*A105070(n+2)`
-/

namespace A207536.P11378481812331935203
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034839 (n + 1) : ℚ) / (A034867 (n + 1) : ℚ) * (A105070 (n + 2) : ℚ)

end

end A207536.P11378481812331935203

noncomputable section

/-- A207536: Triangle of coefficients of polynomials u(n,x) jointly generated with A105070; see Formula section.

Offset 1, canonical program `A207536.P11378481812331935203`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A207536 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A207536.P11378481812331935203.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A207536.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A208251.P10196813765732907531

`∑[A000007(A054008(n+1))]`
-/

namespace A208251.P10196813765732907531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A054008 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A208251.P10196813765732907531

noncomputable section

/-- A208251: Number of refactorable numbers less than or equal to n.

Offset 1, canonical program `A208251.P10196813765732907531`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A208251 (n : ℕ) : ℤ :=
  A208251.P10196813765732907531.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A208251.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A208449.P536335789057244037

`A007955(n+2)/gcd(A007955(n+2), A377484(n+2))`
-/

namespace A208449.P536335789057244037
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007955 (n + 2) : ℚ) / (Int.gcd (A007955 (n + 2)) (A377484 (n + 2)) : ℚ)

end

end A208449.P536335789057244037

noncomputable section

/-- A208449: Numerator of A010786(n+1) / A010786(n).

Offset 1, canonical program `A208449.P536335789057244037`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A377484, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A208449 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A208449.P536335789057244037.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A377484, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A208449.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A208450.P18341200880370467894

`A377484(n+2)/gcd(A007955(n+2), A377484(n+2))`
-/

namespace A208450.P18341200880370467894
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A377484 (n + 2) : ℚ) / (Int.gcd (A007955 (n + 2)) (A377484 (n + 2)) : ℚ)

end

end A208450.P18341200880370467894

noncomputable section

/-- A208450: Denominator of A010786(n+1) / A010786(n).

Offset 1, canonical program `A208450.P18341200880370467894`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A377484, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A208450 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A208450.P18341200880370467894.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A377484, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A208450.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A208511.P7476908769405234328

`A209758(n+1)-2*A049600(n)`
-/

namespace A208511.P7476908769405234328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209758 (n + 1) - 2 * A049600 n

end

end A208511.P7476908769405234328

noncomputable section

/-- A208511: Triangle of coefficients of polynomials u(n,x) jointly generated with A208512; see the Formula section.

Offset 1, canonical program `A208511.P7476908769405234328`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A208511 (n : ℕ) : ℤ :=
  A208511.P7476908769405234328.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A208511.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A209061.P16956751986298849818

`eq[A049419(n+1), A278908(n+1)]+1`
-/

namespace A209061.P16956751986298849818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049419 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278908 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A209061.P16956751986298849818

noncomputable section

/-- A209061: Exponentially squarefree numbers.

Offset 1, canonical program `A209061.P16956751986298849818`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9560 terms. -/
def A209061 (n : ℕ) : ℤ :=
  (A209061.P16956751986298849818.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9560 terms. -/
def A209061.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A210189.P11192886446134679088

`A011782(A122197(n+1))*A210039(n+1)`
-/

namespace A210189.P11192886446134679088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A122197 (n + 1)).toNat * A210039 (n + 1)

end

end A210189.P11192886446134679088

noncomputable section

/-- A210189: Triangle of coefficients of polynomials u(n,x) jointly generated with A210190; see the Formula section.

Offset 1, canonical program `A210189.P11192886446134679088`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A210189 (n : ℕ) : ℤ :=
  A210189.P11192886446134679088.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A210189.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A210198.P1741042711181140859

`A207538(n+2)-Δ[A000267(n)]`
-/

namespace A210198.P1741042711181140859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000267 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207538 (n + 2) - (f1 (n + 1) - f1 n)

end

end A210198.P1741042711181140859

noncomputable section

/-- A210198: Triangle of coefficients of polynomials v(n,x) jointly generated with A210197; see the Formula section.

Offset 1, canonical program `A210198.P1741042711181140859`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A210198 (n : ℕ) : ℤ :=
  A210198.P1741042711181140859.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A210198.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A210360.P3038244278204255362

`p?[A067775(n+1)-2]`
-/

namespace A210360.P3038244278204255362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067775 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A210360.P3038244278204255362

noncomputable section

/-- A210360: Prime numbers p such that x^2 + x + p produces primes for x = 0..1 but not x = 2.

Offset 1, canonical program `A210360.P3038244278204255362`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1140 terms. -/
def A210360 (n : ℕ) : ℤ :=
  A210360.P3038244278204255362.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1140 terms. -/
def A210360.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A210441.P7469224644423689987

`filter[A010784(n+2), A005171(#)]`
-/

namespace A210441.P7469224644423689987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010784 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A210441.P7469224644423689987

noncomputable section

/-- A210441: Nonprime numbers with distinct decimal digits.

Offset 1, canonical program `A210441.P7469224644423689987`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8913 terms. -/
def A210441 (n : ℕ) : ℤ :=
  A210441.P7469224644423689987.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8913 terms. -/
def A210441.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A210635.P12986531844571725851

`A003056(n)-2*A051777(n+1)`
-/

namespace A210635.P12986531844571725851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 n - 2 * A051777 (n + 1)

end

end A210635.P12986531844571725851

noncomputable section

/-- A210635: Array read by descending antidiagonals: a(n,w) = ((w - (n mod w) - 1) + n) - (n mod w), n >= 0, w >= 1.

Offset 0, canonical program `A210635.P12986531844571725851`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A210635 (n : ℕ) : ℤ :=
  A210635.P12986531844571725851.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A210635.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A211117.P3659241348641989542

`A211479(n+1)+A211490(n+1)-9`
-/

namespace A211117.P3659241348641989542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211479 (n + 1) + (A211490 (n + 1) - 9)

end

end A211117.P3659241348641989542

noncomputable section

/-- A211117: Number of (n+1) X (n+1) -2..2 symmetric matrices with every 2 X 2 subblock having sum zero and two, three or four distinct values.

Offset 1, canonical program `A211117.P3659241348641989542`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 259 terms. -/
def A211117 (n : ℕ) : ℤ :=
  A211117.P3659241348641989542.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 259 terms. -/
def A211117.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A211266.P4070917168156634709

`∑[A140106(A092405(2*n+1))]`
-/

namespace A211266.P4070917168156634709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140106 (A092405 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A211266.P4070917168156634709

noncomputable section

/-- A211266: Number of integer pairs (x,y) such that 0<x<y<=n and x*y<=2n.

Offset 1, canonical program `A211266.P4070917168156634709`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A211266 (n : ℕ) : ℤ :=
  A211266.P4070917168156634709.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A211266.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A211776.P3808314914225811013

`∏{d}[n+1, sqrt(A035116(#))]`
-/

namespace A211776.P3808314914225811013
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), Real.sqrt (A035116 d : ℝ)

end

end A211776.P3808314914225811013

noncomputable section

/-- A211776: a(n) = Product_{d | n} tau(d).

Offset 1, canonical program `A211776.P3808314914225811013`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A211776 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A211776.P3808314914225811013.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A211776.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A212499.P7791444323466826119

`∪[A037124(n+1), A098394(n+1)]`
-/

namespace A212499.P7791444323466826119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037124 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098394 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A212499.P7791444323466826119

noncomputable section

/-- A212499: Numbers k that divide the product of digits of k.

Offset 1, canonical program `A212499.P7791444323466826119`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A212499 (n : ℕ) : ℤ :=
  (A212499.P7791444323466826119.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A212499.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A212508.P16126103335911313118

`A212503(n)+A212505(n)-A212511(n)`
-/

namespace A212508.P16126103335911313118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212503 n + (A212505 n - A212511 n)

end

end A212508.P16126103335911313118

noncomputable section

/-- A212508: Number of (w,x,y,z) with all terms in {1,...,n} and w<2x and y<3z.

Offset 0, canonical program `A212508.P16126103335911313118`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3430 terms. -/
def A212508 (n : ℕ) : ℤ :=
  A212508.P16126103335911313118.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3430 terms. -/
def A212508.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A212563.P15478231082037985725

`A212562(n)+A212561(n)`
-/

namespace A212563.P15478231082037985725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212562 n + A212561 n

end

end A212563.P15478231082037985725

noncomputable section

/-- A212563: Number of (w,x,y,z) with all terms in {1,...,n} and w+x<=2y+2z.

Offset 0, canonical program `A212563.P15478231082037985725`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A212563 (n : ℕ) : ℤ :=
  A212563.P15478231082037985725.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A212563.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A212572.P15356776701281447964

`A212571(n)+A212570(n)`
-/

namespace A212572.P15356776701281447964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212571 n + A212570 n

end

end A212572.P15356776701281447964

noncomputable section

/-- A212572: Number of (w,x,y,z) with all terms in {1,...,n} and |w-x| <= |x-y| + |y-z|.

Offset 0, canonical program `A212572.P15356776701281447964`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A212572 (n : ℕ) : ℤ :=
  A212572.P15356776701281447964.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A212572.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A212600.P11668726103471995510

`filter[A136437(n+3), A066247(#)]`
-/

namespace A212600.P11668726103471995510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136437 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A212600.P11668726103471995510

noncomputable section

/-- A212600: Composite numbers p-m! arising in A212266.

Offset 1, canonical program `A212600.P11668726103471995510`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5599 terms. -/
def A212600 (n : ℕ) : ℤ :=
  A212600.P11668726103471995510.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5599 terms. -/
def A212600.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A212793.P4153428830166235404

`abs(A053864(n+1))`
-/

namespace A212793.P4153428830166235404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A053864 (n + 1)|

end

end A212793.P4153428830166235404

noncomputable section

/-- A212793: Characteristic function of cubefree numbers, A004709.

Offset 1, canonical program `A212793.P4153428830166235404`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A053864, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A212793 (n : ℕ) : ℤ :=
  A212793.P4153428830166235404.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A053864, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A212793.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A213392.P13729878407923535789

`A213393(n)+A092076(n)`
-/

namespace A213392.P13729878407923535789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213393 n + A092076 n

end

end A213392.P13729878407923535789

noncomputable section

/-- A213392: Number of (w,x,y) with all terms in {0,...,n} and 2*max(w,x,y) >= 3*min(w,x,y).

Offset 0, canonical program `A213392.P13729878407923535789`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A213393, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A213392 (n : ℕ) : ℤ :=
  A213392.P13729878407923535789.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A213393, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A213392.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A213408.P6728982217744308874

`filter[A002654(n+1), A011558(#)]`
-/

namespace A213408.P6728982217744308874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002654 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A011558 (f1 j).toNat = 1) n)

end

end A213408.P6728982217744308874

noncomputable section

/-- A213408: Sequence A002654 with the zero terms omitted.

Offset 1, canonical program `A213408.P6728982217744308874`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 113 terms. -/
def A213408 (n : ℕ) : ℤ :=
  A213408.P6728982217744308874.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 113 terms. -/
def A213408.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A213594.P8203987678726154595

`val(A048784(n+1), 2)`
-/

namespace A213594.P8203987678726154595
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A048784 (n + 1)).toNat 2

end

end A213594.P8203987678726154595

noncomputable section

/-- A213594: Greatest number k such that A048784(n) / 2^k is an integer.

Offset 1, canonical program `A213594.P8203987678726154595`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1692 terms. -/
def A213594 (n : ℕ) : ℤ :=
  (A213594.P8203987678726154595.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1692 terms. -/
def A213594.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A214153.P12597963895467344712

`filter[A211337(n+1), A373977(#)]`
-/

namespace A214153.P12597963895467344712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211337 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373977 (f1 j).toNat = 1) n)

end

end A214153.P12597963895467344712

noncomputable section

/-- A214153: Numbers k for which k and tau(k) are both congruent to 1 modulo 3.

Offset 1, canonical program `A214153.P12597963895467344712`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3607 terms. -/
def A214153 (n : ℕ) : ℤ :=
  A214153.P12597963895467344712.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3607 terms. -/
def A214153.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A215260.P2192226197169425689

`round(∑[log(A008578(n+1))])`
-/

namespace A215260.P2192226197169425689
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.log (A008578 (n + 1) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A215260.P2192226197169425689

noncomputable section

/-- A215260: Nearest integer to log(A002110(n)).

Offset 0, canonical program `A215260.P2192226197169425689`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215260 (n : ℕ) : ℤ :=
  A215260.P2192226197169425689.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215260.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A215312.P10401023248749367399

`∪[A138623(n+1), A215304(n+1)]`
-/

namespace A215312.P10401023248749367399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138623 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215304 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215312.P10401023248749367399

noncomputable section

/-- A215312: Primes congruent to {1, 2, 3, 4, 5} mod 17.

Offset 1, canonical program `A215312.P10401023248749367399`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215312 (n : ℕ) : ℤ :=
  (A215312.P10401023248749367399.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215312.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A215324.P2756159153333768749

`∪[A140545(n+1), A215304(n+1)]`
-/

namespace A215324.P2756159153333768749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140545 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215304 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215324.P2756159153333768749

noncomputable section

/-- A215324: Primes congruent to {1, 2, 3, 4, 6} mod 17.

Offset 1, canonical program `A215324.P2756159153333768749`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215324 (n : ℕ) : ℤ :=
  (A215324.P2756159153333768749.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215324.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A215386.P6364758896401244281

`∪[A141853(n+1), A214888(n+1)]`
-/

namespace A215386.P6364758896401244281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141853 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214888 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215386.P6364758896401244281

noncomputable section

/-- A215386: Primes congruent to {2, 3, 6} mod 11.

Offset 1, canonical program `A215386.P6364758896401244281`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215386 (n : ℕ) : ℤ :=
  (A215386.P6364758896401244281.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215386.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A215523.P5248230795343589178

`A005097(∑[A091237(n+1)])`
-/

namespace A215523.P5248230795343589178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091237 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005097 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A215523.P5248230795343589178

noncomputable section

/-- A215523: Slowest increasing sequence of alternate-parity integers m such that 2m+1 is prime.

Offset 1, canonical program `A215523.P5248230795343589178`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A215523 (n : ℕ) : ℤ :=
  A215523.P5248230795343589178.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A215523.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A216319.P7848709272495986412

`A038566(eq[1, A038566(n+1)%2]+1)`
-/

namespace A216319.P7848709272495986412
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A038566 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038566 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A216319.P7848709272495986412

noncomputable section

/-- A216319: Irregular triangle: row n lists the odd numbers of the reduced residue system modulo n.

Offset 1, canonical program `A216319.P7848709272495986412`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A216319 (n : ℕ) : ℤ :=
  A216319.P7848709272495986412.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A216319.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A216637.P16074414252254142737

`A329355(3*(n+1))%8`
-/

namespace A216637.P16074414252254142737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A329355 (3 * (n + 1))) 8

end

end A216637.P16074414252254142737

noncomputable section

/-- A216637: Kolakoski sequence by 3-words.

Offset 1, canonical program `A216637.P16074414252254142737`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 111 terms. -/
def A216637 (n : ℕ) : ℤ :=
  A216637.P16074414252254142737.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 111 terms. -/
def A216637.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A216864.P16380076787172319000

`A046951(A007955(n+1))`
-/

namespace A216864.P16380076787172319000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046951 (A007955 (n + 1)).toNat

end

end A216864.P16380076787172319000

noncomputable section

/-- A216864: Number of squares that divide the product of divisors of n.

Offset 1, canonical program `A216864.P16380076787172319000`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046951, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A216864 (n : ℕ) : ℤ :=
  A216864.P16380076787172319000.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046951, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A216864.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A217564.P832865562934600438

`A079952(n+2)-A079952(n+1)`
-/

namespace A217564.P832865562934600438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079952 (n + 2) - A079952 (n + 1)

end

end A217564.P832865562934600438

noncomputable section

/-- A217564: Number of primes between prime(n)/2 and prime(n+1)/2.

Offset 1, canonical program `A217564.P832865562934600438`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A079952, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A217564 (n : ℕ) : ℤ :=
  A217564.P832865562934600438.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A079952, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A217564.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A217587.P11225916945597616311

`∩[A073102(n+1), A093359(n+1)]`
-/

namespace A217587.P11225916945597616311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073102 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093359 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A217587.P11225916945597616311

noncomputable section

/-- A217587: Primes p of the form 420k + 1 for some k.

Offset 1, canonical program `A217587.P11225916945597616311`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1224 terms. -/
def A217587 (n : ℕ) : ℤ :=
  (A217587.P11225916945597616311.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1224 terms. -/
def A217587.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A218567.P2187862195306331309

`A218506(n+6)-A117143(n+6)`
-/

namespace A218567.P2187862195306331309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218506 (n + 6) - A117143 (n + 6)

end

end A218567.P2187862195306331309

noncomputable section

/-- A218567: Number of partitions p of n such that max(p)-min(p) = 4.

Offset 6, canonical program `A218567.P2187862195306331309`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A117143, A218506, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A218567 (n : ℕ) : ℤ :=
  A218567.P2187862195306331309.a (n - 6)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A117143, A218506, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A218567.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A219636.P17854170644708396736

`A307295(n)-2`
-/

namespace A219636.P17854170644708396736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307295 n - 2

end

end A219636.P17854170644708396736

noncomputable section

/-- A219636: Complement of A035336.

Offset 1, canonical program `A219636.P17854170644708396736`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A219636 (n : ℕ) : ℤ :=
  A219636.P17854170644708396736.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A219636.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A220053.P10350376442709660528

`A220075(A014132(n+1))%(n+2)`
-/

namespace A220053.P10350376442709660528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A220075 (A014132 (n + 1)).toNat) (n + 2 : ℤ)

end

end A220053.P10350376442709660528

noncomputable section

/-- A220053: Partial sums in rows of A130517, triangle read by rows.

Offset 1, canonical program `A220053.P10350376442709660528`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7140 terms. -/
def A220053 (n : ℕ) : ℤ :=
  A220053.P10350376442709660528.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7140 terms. -/
def A220053.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A220218.P17141423938851254412

`eq[A001221(n+1), A058061(n+1)]+1`
-/

namespace A220218.P17141423938851254412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058061 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A220218.P17141423938851254412

noncomputable section

/-- A220218: Numbers where all exponents in its prime factorization are one less than a prime.

Offset 1, canonical program `A220218.P17141423938851254412`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8796 terms. -/
def A220218 (n : ℕ) : ℤ :=
  (A220218.P17141423938851254412.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8796 terms. -/
def A220218.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A222548.P12009654421931561066

`2*A024916(n+1)-A006218(n+1)`
-/

namespace A222548.P12009654421931561066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A024916 (n + 1) - A006218 (n + 1)

end

end A222548.P12009654421931561066

noncomputable section

/-- A222548: a(n) = Sum_{k=1..n} floor(n/k)^2.

Offset 1, canonical program `A222548.P12009654421931561066`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A222548 (n : ℕ) : ℤ :=
  A222548.P12009654421931561066.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A222548.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A224770.P4749613609057412326

`A020725(eq[4, A000089(n+1)])`
-/

namespace A224770.P4749613609057412326
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000089 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A224770.P4749613609057412326

noncomputable section

/-- A224770: Numbers that are the primitive sum of two squares in exactly two ways.

Offset 1, canonical program `A224770.P4749613609057412326`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 615 terms. -/
def A224770 (n : ℕ) : ℤ :=
  A224770.P4749613609057412326.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 615 terms. -/
def A224770.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A224865.P6084895308211863179

`∩[A202116(n+1), A224889(n+1)]`
-/

namespace A224865.P6084895308211863179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202116 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224889 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A224865.P6084895308211863179

noncomputable section

/-- A224865: Numbers n such that 90*n + 89 and 90*n + 91 are twin primes.

Offset 1, canonical program `A224865.P6084895308211863179`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2571 terms. -/
def A224865 (n : ℕ) : ℤ :=
  (A224865.P6084895308211863179.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2571 terms. -/
def A224865.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A225822.P16967575723394986569

`2*A131323(n+1)+1`
-/

namespace A225822.P16967575723394986569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A131323 (n + 1) + 1

end

end A225822.P16967575723394986569

noncomputable section

/-- A225822: Lesser of adjacent odd numbers with different parity of binary weight and both isolated from odd numbers of same parity of binary weight.

Offset 1, canonical program `A225822.P16967575723394986569`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A131323, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A225822 (n : ℕ) : ℤ :=
  A225822.P16967575723394986569.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A131323, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A225822.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A225837.P15943743665974385746

`eq[A189640(n+1), A284948(n+1)]`
-/

namespace A225837.P15943743665974385746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189640 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284948 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A225837.P15943743665974385746

noncomputable section

/-- A225837: Numbers of form 2^i*3^j*(6k+1), i, j, k >= 0.

Offset 1, canonical program `A225837.P15943743665974385746`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5025 terms. -/
def A225837 (n : ℕ) : ℤ :=
  (A225837.P15943743665974385746.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5025 terms. -/
def A225837.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A225887.P18168249121695771555

`6*a(n-1)-A006318(n)` with `a(0)=1`
-/

namespace A225887.P18168249121695771555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  6 * a (n - 1) - A006318 n

end

end A225887.P18168249121695771555

noncomputable section

/-- A225887: a(n) = A212205(2*n + 1).

Offset 0, canonical program `A225887.P18168249121695771555`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 134 terms. -/
def A225887 (n : ℕ) : ℤ :=
  A225887.P18168249121695771555.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 134 terms. -/
def A225887.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A225948.P11567398781708977786

`(A225975(n)-A106609(n+4))*A106609(n+4)`
-/

namespace A225948.P11567398781708977786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A225975 n - A106609 (n + 4)) * A106609 (n + 4)

end

end A225948.P11567398781708977786

noncomputable section

/-- A225948: a(0) = -1; for n>0, a(n) = numerator(1/4 - 4/n^2).

Offset 0, canonical program `A225948.P11567398781708977786`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9997 terms. -/
def A225948 (n : ℕ) : ℤ :=
  A225948.P11567398781708977786.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9997 terms. -/
def A225948.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A226333.P9778864042201279343

`∑{d}[n+1, A035207(#)*A059376((n+1)/#)]`
-/

namespace A226333.P9778864042201279343
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A035207 d * A059376 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A226333.P9778864042201279343

noncomputable section

/-- A226333: Expansion of (E_4(q) - E_4(q^5)) / 240 in powers of q where E_4 is an Eisenstein series.

Offset 1, canonical program `A226333.P9778864042201279343`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A226333 (n : ℕ) : ℤ :=
  A226333.P9778864042201279343.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A226333.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A226693.P1469923415629545988

`A007913(A079896(n+1))`
-/

namespace A226693.P1469923415629545988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A079896 (n + 1)).toNat

end

end A226693.P1469923415629545988

noncomputable section

/-- A226693: Squarefree parts of A079896(n), n>= 1.

Offset 1, canonical program `A226693.P1469923415629545988`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A226693 (n : ℕ) : ℤ :=
  A226693.P1469923415629545988.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A226693.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A226934.P2791961928592230860

`eq[0, A054025(2*(n+1))]+1`
-/

namespace A226934.P2791961928592230860
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054025 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A226934.P2791961928592230860

noncomputable section

/-- A226934: Numbers k such that tau(2k) | sigma(2k).

Offset 1, canonical program `A226934.P2791961928592230860`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A226934 (n : ℕ) : ℤ :=
  (A226934.P2791961928592230860.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A226934.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A226983.P11734956806688182577

`A004526(n+2)-A035250(n+1)`
-/

namespace A226983.P11734956806688182577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (n + 2) - A035250 (n + 1)

end

end A226983.P11734956806688182577

noncomputable section

/-- A226983: a(n) = ceiling(n/2) - pi(2n) + pi(n-1).

Offset 1, canonical program `A226983.P11734956806688182577`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A035250, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A226983 (n : ℕ) : ℤ :=
  A226983.P11734956806688182577.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A035250, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A226983.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A227128.P9558132721139232292

`∑{d}[n+1, #*A365428((n+1)/#)]`
-/

namespace A227128.P9558132721139232292
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A365428 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A227128.P9558132721139232292

noncomputable section

/-- A227128: The twisted Euler phi-function for the non-principal Dirichlet character mod 3.

Offset 1, canonical program `A227128.P9558132721139232292`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A227128 (n : ℕ) : ℤ :=
  A227128.P9558132721139232292.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A227128.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A227182.P3655183784156601540

`A006527(A227177(n))-A227179(n)`
-/

namespace A227182.P3655183784156601540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006527 (A227177 n).toNat - A227179 n

end

end A227182.P3655183784156601540

noncomputable section

/-- A227182: Simple self-inverse permutation of natural numbers: List each block of n^2 - n + 1 numbers from ((n-1)^3 + 2*(n-1))/3 + 1 to (n^3 + 2*n)/3 in reverse order.

Offset 0, canonical program `A227182.P3655183784156601540`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A227177, A227179, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A227182 (n : ℕ) : ℤ :=
  A227182.P3655183784156601540.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A227177, A227179, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A227182.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A227868.P6045472964894764945

`∩[A063226(3*n+5), A002808(n+1)]`
-/

namespace A227868.P6045472964894764945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063226 (3 * n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A227868.P6045472964894764945

noncomputable section

/-- A227868: Composite numbers congruent to 7 or 23 (mod 30).

Offset 1, canonical program `A227868.P6045472964894764945`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 763 terms. -/
def A227868 (n : ℕ) : ℤ :=
  (A227868.P6045472964894764945.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 763 terms. -/
def A227868.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A228056.P11606014909607671869

`filter[A229125(n+1), A005171(#)]`
-/

namespace A228056.P11606014909607671869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229125 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A228056.P11606014909607671869

noncomputable section

/-- A228056: Numbers of the form p * m^2, where p is prime and m > 1.

Offset 1, canonical program `A228056.P11606014909607671869`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4902 terms. -/
def A228056 (n : ℕ) : ℤ :=
  A228056.P11606014909607671869.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4902 terms. -/
def A228056.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A228102.P7143956737170160369

`eq[1, ∑{e}[A063960(2*n+1), #]]`
-/

namespace A228102.P7143956737170160369
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063960 (2 * n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n).natAbs, Nat.factorization (f3 n).natAbs p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A228102.P7143956737170160369

noncomputable section

/-- A228102: Numbers n such that sum of all primes <=n is prime.

Offset 1, canonical program `A228102.P7143956737170160369`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 353 terms. -/
def A228102 (n : ℕ) : ℤ :=
  (A228102.P7143956737170160369.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 353 terms. -/
def A228102.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A228372.P12115013803354651000

`A006218(A002808(n+1))-2*A002808(n+1)+1`
-/

namespace A228372.P12115013803354651000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 (A002808 (n + 1)).toNat - 2 * A002808 (n + 1) + 1

end

end A228372.P12115013803354651000

noncomputable section

/-- A228372: Number of nontrivial divisors in the first n composites.

Offset 1, canonical program `A228372.P12115013803354651000`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002808, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A228372 (n : ℕ) : ℤ :=
  A228372.P12115013803354651000.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002808, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A228372.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A229064.P12986880071610748840

`A084400(eq[2, A084400(n+2)-A084400(n+1)]+1)`
-/

namespace A229064.P12986880071610748840
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084400 (n + 2) - A084400 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084400 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A229064.P12986880071610748840

noncomputable section

/-- A229064: Lesser of Fermi-Dirac twin primes: both a(n)(>=5) and a(n)+2 are in A050376.

Offset 1, canonical program `A229064.P12986880071610748840`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1291 terms. -/
def A229064 (n : ℕ) : ℤ :=
  A229064.P12986880071610748840.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1291 terms. -/
def A229064.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A229335.P12546027953543292786

`A000203(n+1)*(A100587(n+1)+1)/2`
-/

namespace A229335.P12546027953543292786
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) * (A100587 (n + 1) + 1) : ℚ) / 2

end

end A229335.P12546027953543292786

noncomputable section

/-- A229335: Sum of sums of elements of subsets of divisors of n.

Offset 1, canonical program `A229335.P12546027953543292786`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A229335 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A229335.P12546027953543292786.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A229335.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A230403.P10181876793047725075

`A055881(n+1)-1`
-/

namespace A230403.P10181876793047725075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055881 (n + 1) - 1

end

end A230403.P10181876793047725075

noncomputable section

/-- A230403: a(n) = the largest k such that (k+1)! divides n; the number of trailing zeros in the factorial base representation of n (A007623(n)).

Offset 1, canonical program `A230403.P10181876793047725075`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A055881, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A230403 (n : ℕ) : ℤ :=
  A230403.P10181876793047725075.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A055881, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A230403.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A230654.P9728224852520061212

`eq[4, A051950(n+2)]+1`
-/

namespace A230654.P9728224852520061212
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051950 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A230654.P9728224852520061212

noncomputable section

/-- A230654: Numbers n such that tau(n+1) - tau(n) = 4, where tau(n) = the number of divisors of n (A000005).

Offset 1, canonical program `A230654.P9728224852520061212`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1883 terms. -/
def A230654 (n : ℕ) : ℤ :=
  (A230654.P9728224852520061212.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1883 terms. -/
def A230654.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A231167.P16208437102851873404

`A024816(n+1)%A028310(A049820(n+1))`
-/

namespace A231167.P16208437102851873404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A024816 (n + 1)) (A028310 (A049820 (n + 1)).toNat)

end

end A231167.P16208437102851873404

noncomputable section

/-- A231167: a(1) = a(2) = 0, for n>=3: (sum of non-divisors of n) modulo (number of non-divisors of n).

Offset 1, canonical program `A231167.P16208437102851873404`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A231167 (n : ℕ) : ℤ :=
  A231167.P16208437102851873404.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A231167.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A231550.P13029068904856309270

`A229763(n)+2*A292944(n)`
-/

namespace A231550.P13029068904856309270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229763 n + 2 * A292944 n

end

end A231550.P13029068904856309270

noncomputable section

/-- A231550: Permutation of nonnegative integers: for each bit[i] in the binary representation, except the most and the least significant bits, set bit[i] = bit[i] XOR bit[i-1], where bit[i-1] is the less significant bit, XOR is the binary logical exclusive or operator.

Offset 0, canonical program `A231550.P13029068904856309270`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8193 terms. -/
def A231550 (n : ℕ) : ℤ :=
  A231550.P13029068904856309270.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8193 terms. -/
def A231550.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A231624.P3333891316420223626

`A005100(eq[A125238(n+2), A125238(n+1)]+1)`
-/

namespace A231624.P3333891316420223626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125238 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125238 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005100 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A231624.P3333891316420223626

noncomputable section

/-- A231624: Smallest sets of 3 consecutive deficient numbers in arithmetic progression. The initial deficient number is listed.

Offset 1, canonical program `A231624.P3333891316420223626`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A231624 (n : ℕ) : ℤ :=
  A231624.P3333891316420223626.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A231624.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A232096.P3607466228667116580

`A055881(A000217(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A232096.P3607466228667116580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055881 (A000217 (n + 1)).toNat

end

end A232096.P3607466228667116580

noncomputable section

/-- A232096: a(n) = largest m such that m! divides 1+2+...+n; a(n) = A055881(A000217(n)).

Offset 1, canonical program `A232096.P3607466228667116580`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A055881, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A232096 (n : ℕ) : ℤ :=
  A232096.P3607466228667116580.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A055881, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A232096.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A232741.P5104032373726736522

`record[(n+1)/A055881(xor(n+1, A055881(n+1))+1)]`
-/

namespace A232741.P5104032373726736522
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A055881 (Int.xor (n + 1 : ℤ) (A055881 (n + 1)) + 1).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A232741.P5104032373726736522

noncomputable section

/-- A232741: Numbers n for which the largest m such that (m-1)! divides n is a prime.

Offset 1, canonical program `A232741.P5104032373726736522`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8748 terms. -/
def A232741 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A232741.P5104032373726736522.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8748 terms. -/
def A232741.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A232744.P13120240317739843502

`record[and(1, A055881(n+1))*(n+1)]`
-/

namespace A232744.P13120240317739843502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A055881 (n + 1)) * (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A232744.P13120240317739843502

noncomputable section

/-- A232744: Numbers k for which the largest m such that m! divides k is odd.

Offset 1, canonical program `A232744.P13120240317739843502`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6372 terms. -/
def A232744 (n : ℕ) : ℤ :=
  A232744.P13120240317739843502.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6372 terms. -/
def A232744.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A233285.P7127810014733158196

`A055881(A000045(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A233285.P7127810014733158196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055881 (A000045 (n + 1)).toNat

end

end A233285.P7127810014733158196

noncomputable section

/-- A233285: a(n) = largest m such that m! divides n-th Fibonacci number; a(n) = A055881(A000045(n)).

Offset 1, canonical program `A233285.P7127810014733158196`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A055881, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A233285 (n : ℕ) : ℤ :=
  A233285.P7127810014733158196.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A055881, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A233285.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A160785.P2444679081168475481

`A039956(n+1)+1`
-/

namespace A160785.P2444679081168475481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039956 (n + 1) + 1

end

end A160785.P2444679081168475481

noncomputable section

/-- A160785: Even squarefree numbers plus 1.

Offset 1, canonical program `A160785.P2444679081168475481`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A039956, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A160785 (n : ℕ) : ℤ :=
  A160785.P2444679081168475481.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A039956, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A160785.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A161655.P10866109253187541948

`Δ[A006218(n)]*A334762(n+1)`
-/

namespace A161655.P10866109253187541948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A334762 (n + 1)

end

end A161655.P10866109253187541948

noncomputable section

/-- A161655: a(n) = the smallest multiple of {the number of divisors of n} that is >= n.

Offset 1, canonical program `A161655.P10866109253187541948`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A161655 (n : ℕ) : ℤ :=
  A161655.P10866109253187541948.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A161655.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A162318.P14374044090284231223

`∪[A227874(n+1), A230115(n+1)]`
-/

namespace A162318.P14374044090284231223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227874 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230115 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A162318.P14374044090284231223

noncomputable section

/-- A162318: A positive integer n is included if |d(n+1)-d(n)| = 2, where d(n) is the number of divisors of n.

Offset 1, canonical program `A162318.P14374044090284231223`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3997 terms. -/
def A162318 (n : ℕ) : ℤ :=
  (A162318.P14374044090284231223.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3997 terms. -/
def A162318.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A162410.P3316117402567756503

`floor(A289413(n+1)/10)`
-/

namespace A162410.P3316117402567756503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A289413 (n + 1) : ℚ) / 10⌋

end

end A162410.P3316117402567756503

noncomputable section

/-- A162410: Numbers n such that 10*n + 3 and 10*n + 7 are prime.

Offset 1, canonical program `A162410.P3316117402567756503`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A162410 (n : ℕ) : ℤ :=
  A162410.P3316117402567756503.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A162410.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A163095.P4667298633254708483

`A000788(n)²`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A163095.P4667298633254708483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000788 n ^ 2

end

end A163095.P4667298633254708483

noncomputable section

/-- A163095: a(n) = A000788(n)^2.

Offset 0, canonical program `A163095.P4667298633254708483`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000788, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A163095 (n : ℕ) : ℤ :=
  A163095.P4667298633254708483.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000788, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A163095.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A164041.P12661298805710206916

`2*A164042(n+1)²+4*A164042(n+1)+1`
-/

namespace A164041.P12661298805710206916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A164042 (n + 1) ^ 2 + 4 * A164042 (n + 1) + 1

end

end A164041.P12661298805710206916

noncomputable section

/-- A164041: Primes of the form 2*p^2 + 4*p + 1, where p is also prime.

Offset 1, canonical program `A164041.P12661298805710206916`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A164042, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A164041 (n : ℕ) : ℤ :=
  A164041.P12661298805710206916.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A164042, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A164041.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A166340.P14544244281529848433

`2*A166344(n+1)-A008292(n+1)`
-/

namespace A166340.P14544244281529848433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A166344 (n + 1) - A008292 (n + 1)

end

end A166340.P14544244281529848433

noncomputable section

/-- A166340: Triangle T(n, k) = coefficients of ( t(n, x) ) where t(n, x) = (1-x)^(n+1)*p(n, x)/x, p(n, x) = x*D( p(n-1, x) ), with p(1, x) = x/(1-x)^2, p(2, x) = x*(1+x)/(1-x)^3, and p(3, x) = x*(1+8*x+x^2)/(1-x)^4, read by rows.

Offset 1, canonical program `A166340.P14544244281529848433`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. -/
def A166340 (n : ℕ) : ℤ :=
  A166340.P14544244281529848433.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. -/
def A166340.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A166566.P16003818886933794123

`p?[A244607(n+1)]`
-/

namespace A166566.P16003818886933794123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244607 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A166566.P16003818886933794123

noncomputable section

/-- A166566: Primes p such that product of digits - 1 is prime.

Offset 1, canonical program `A166566.P16003818886933794123`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1225 terms. -/
def A166566 (n : ℕ) : ℤ :=
  A166566.P16003818886933794123.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1225 terms. -/
def A166566.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A167692.P14273374061267607574

`filter[2*n, A292438(#)]`
-/

namespace A167692.P14273374061267607574
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A292438 (f1 j) = 1) n)

end

end A167692.P14273374061267607574

noncomputable section

/-- A167692: The even nonisolated nonprimes.

Offset 1, canonical program `A167692.P14273374061267607574`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A167692 (n : ℕ) : ℤ :=
  (A167692.P14273374061267607574.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A167692.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A168160.P1475307849848817311

`A380230(n+1)-A000788(n+1)`
-/

namespace A168160.P1475307849848817311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380230 (n + 1) - A000788 (n + 1)

end

end A168160.P1475307849848817311

noncomputable section

/-- A168160: Number of 0's in the matrix whose lines are the binary expansion of the numbers 1,...,n.

Offset 1, canonical program `A168160.P1475307849848817311`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000788, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A168160 (n : ℕ) : ℤ :=
  A168160.P1475307849848817311.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000788, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A168160.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A171435.P13410132754094429905

`gcd(A113646(n+1), A299149(n+1))`
-/

namespace A171435.P13410132754094429905
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A113646 (n + 1)) (A299149 (n + 1))

end

end A171435.P13410132754094429905

noncomputable section

/-- A171435: Product of odd prime factors < n, with multiplicity.

Offset 1, canonical program `A171435.P13410132754094429905`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A171435 (n : ℕ) : ℤ :=
  (A171435.P13410132754094429905.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A171435.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A174605.P3556819156427171389

`n*(n+1)/2-A000788(n)`
-/

namespace A174605.P3556819156427171389
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n * (n + 1) : ℚ) / 2 - (A000788 n : ℚ)

end

end A174605.P3556819156427171389

noncomputable section

/-- A174605: Partial sums of A011371.

Offset 0, canonical program `A174605.P3556819156427171389`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000788, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A174605 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A174605.P3556819156427171389.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000788, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A174605.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A175496.P16856827143371470346

`filter[A336593(n+1), A359473(#)]`
-/

namespace A175496.P16856827143371470346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336593 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359473 (f1 j).toNat = 1) n)

end

end A175496.P16856827143371470346

noncomputable section

/-- A175496: Positive integers k where k is not squarefree but the number of divisors of k is a power of 2.

Offset 1, canonical program `A175496.P16856827143371470346`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7997 terms. -/
def A175496 (n : ℕ) : ℤ :=
  A175496.P16856827143371470346.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7997 terms. -/
def A175496.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A178787.P4102547761582682700

`∑[A178788(n)]`
-/

namespace A178787.P4102547761582682700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178788 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A178787.P4102547761582682700

noncomputable section

/-- A178787: Number of numbers <= n having distinct digits in their decimal representation, cf. A010784.

Offset 0, canonical program `A178787.P4102547761582682700`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A178787 (n : ℕ) : ℤ :=
  A178787.P4102547761582682700.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A178787.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A181290.P6424768068439069294

`A181300(n)+A181296(n)`
-/

namespace A181290.P6424768068439069294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181300 n + A181296 n

end

end A181290.P6424768068439069294

noncomputable section

/-- A181290: The sum of the lengths of the 2-compositions of n. A 2-composition of n is a nonnegative matrix with two rows, such that each column has at least one nonzero entry and whose entries sum up to n. The length of the 2-composition is the number of columns.

Offset 0, canonical program `A181290.P6424768068439069294`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 185 terms. -/
def A181290 (n : ℕ) : ℤ :=
  A181290.P6424768068439069294.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 185 terms. -/
def A181290.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A181780.P1093225155761129335

`∩[A002808(n+1), A280199(n+1)]`
-/

namespace A181780.P1093225155761129335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280199 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A181780.P1093225155761129335

noncomputable section

/-- A181780: Numbers n which are Fermat pseudoprimes to some base b, 2 <= b <= n-2.

Offset 1, canonical program `A181780.P1093225155761129335`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A181780 (n : ℕ) : ℤ :=
  (A181780.P1093225155761129335.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A181780.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A182859.P12166969725301177304

`lt[A262684(n+1), 1]+1`
-/

namespace A182859.P12166969725301177304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262684 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A182859.P12166969725301177304

noncomputable section

/-- A182859: Numbers n such that A036459(n) is even.

Offset 1, canonical program `A182859.P12166969725301177304`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A182859 (n : ℕ) : ℤ :=
  (A182859.P12166969725301177304.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A182859.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A184007.P6942563530479342197

`floor(A184655(2*(n+1))/2)`
-/

namespace A184007.P6942563530479342197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A184655 (2 * (n + 1)) : ℚ) / 2⌋

end

end A184007.P6942563530479342197

noncomputable section

/-- A184007: floor(n*s+h-h*s), where s=(3+sqrt(3))/2, h=-1/3. Complement of A184006.

Offset 1, canonical program `A184007.P6942563530479342197`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A184007 (n : ℕ) : ℤ :=
  A184007.P6942563530479342197.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A184007.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A185013.P16152479727158586121

`A179184(n)-A185114(n)`
-/

namespace A185013.P16152479727158586121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179184 n - A185114 n

end

end A185013.P16152479727158586121

noncomputable section

/-- A185013: Characteristic function of {3}.

Offset 0, canonical program `A185013.P16152479727158586121`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A179184, A185114, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A185013 (n : ℕ) : ℤ :=
  A185013.P16152479727158586121.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A179184, A185114, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A185013.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A185014.P14310411706898602348

`A185114(n)-A185115(n)`
-/

namespace A185014.P14310411706898602348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185114 n - A185115 n

end

end A185014.P14310411706898602348

noncomputable section

/-- A185014: Characteristic function of four.

Offset 0, canonical program `A185014.P14310411706898602348`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A185114, A185115, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A185014 (n : ℕ) : ℤ :=
  A185014.P14310411706898602348.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A185114, A185115, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A185014.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A185164.P14849761123550653350

`A075856(A056536(n+1))`
-/

namespace A185164.P14849761123550653350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075856 (A056536 (n + 1)).toNat

end

end A185164.P14849761123550653350

noncomputable section

/-- A185164: Coefficients of a set of polynomials associated with the derivatives of x^x.

Offset 2, canonical program `A185164.P14849761123550653350`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 870 terms. -/
def A185164 (n : ℕ) : ℤ :=
  A185164.P14849761123550653350.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 870 terms. -/
def A185164.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A187059.P4673971385048971106

`2*A000788(n)-A249154(n)`
-/

namespace A187059.P4673971385048971106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000788 n - A249154 n

end

end A187059.P4673971385048971106

noncomputable section

/-- A187059: The exponent of highest power of 2 dividing the product of the elements of the n-th row of Pascal's triangle (A001142).

Offset 0, canonical program `A187059.P4673971385048971106`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000788, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A187059 (n : ℕ) : ℤ :=
  A187059.P4673971385048971106.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000788, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A187059.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A188011.P12941502559468805709

`A188014(A014675(n)+n)`
-/

namespace A188011.P12941502559468805709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188014 (A014675 n + (n : ℤ)).toNat

end

end A188011.P12941502559468805709

noncomputable section

/-- A188011: a(n) = floor(n*r) - floor(n*r-k*r) - floor(k*r), where r=(1+sqrt(5))/2, k=3.

Offset 1, canonical program `A188011.P12941502559468805709`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188011 (n : ℕ) : ℤ :=
  A188011.P12941502559468805709.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188011.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A188016.P8834039496715161497

`2*A188435(n+1)-A110654(n)`
-/

namespace A188016.P8834039496715161497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A188435 (n + 1) - A110654 n

end

end A188016.P8834039496715161497

noncomputable section

/-- A188016: Positions of 1 in A188014; complement of A188015.

Offset 1, canonical program `A188016.P8834039496715161497`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188016 (n : ℕ) : ℤ :=
  A188016.P8834039496715161497.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188016.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A193347.P15363500856293231746

`A010553(n+1)-A193348(n+1)`
-/

namespace A193347.P15363500856293231746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010553 (n + 1) - A193348 (n + 1)

end

end A193347.P15363500856293231746

noncomputable section

/-- A193347: Number of even divisors of tau(n).

Offset 1, canonical program `A193347.P15363500856293231746`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A193347 (n : ℕ) : ℤ :=
  A193347.P15363500856293231746.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A193347.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A200091.P16058359386735906279

`A122197(n+1)!*A134991(A056536(n+1))`
-/

namespace A200091.P16058359386735906279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A122197 (n + 1)).toNat : ℤ) * A134991 (A056536 (n + 1)).toNat

end

end A200091.P16058359386735906279

noncomputable section

/-- A200091: The number of ways of putting n labeled items into k labeled boxes so that each box receives at least 2 objects.

Offset 2, canonical program `A200091.P16058359386735906279`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 625 terms. -/
def A200091 (n : ℕ) : ℤ :=
  A200091.P16058359386735906279.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 625 terms. -/
def A200091.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A201783.P15874828586244477610

`∩[A030433(n+1), A134538(n+1)]`
-/

namespace A201783.P15874828586244477610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030433 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134538 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A201783.P15874828586244477610

noncomputable section

/-- A201783: Primes of the form 5n^2 - 1.

Offset 1, canonical program `A201783.P15874828586244477610`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 134 terms. -/
def A201783 (n : ℕ) : ℤ :=
  (A201783.P15874828586244477610.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 134 terms. -/
def A201783.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A202097.P9792887605728792110

`sqrt(A202096(n+1)*A202098(n+1))`
-/

namespace A202097.P9792887605728792110
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A202096 (n + 1) * A202098 (n + 1) : ℝ)

end

end A202097.P9792887605728792110

noncomputable section

/-- A202097: Number of (n+2) X 7 binary arrays avoiding patterns 001 and 011 in rows and columns.

Offset 1, canonical program `A202097.P9792887605728792110`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A202097 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A202097.P9792887605728792110.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A202097.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A207616.P15871925610082526903

`A210039(n+1)+A034839(n)-A034867(n)`
-/

namespace A207616.P15871925610082526903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210039 (n + 1) + (A034839 n - A034867 n)

end

end A207616.P15871925610082526903

noncomputable section

/-- A207616: Triangle of coefficients of polynomials u(n,x) jointly generated with A207617; see the Formula section.

Offset 1, canonical program `A207616.P15871925610082526903`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A207616 (n : ℕ) : ℤ :=
  A207616.P15871925610082526903.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A207616.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A207946.P1343383528588518597

`A207249(n+1)/A206981(n+1)*A207250(n+1)`
-/

namespace A207946.P1343383528588518597
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A207249 (n + 1) : ℚ) / (A206981 (n + 1) : ℚ) * (A207250 (n + 1) : ℚ)

end

end A207946.P1343383528588518597

noncomputable section

/-- A207946: Number of nX5 0..1 arrays avoiding 0 0 1 and 0 1 1 horizontally and 0 1 0 and 1 0 1 vertically.

Offset 1, canonical program `A207946.P1343383528588518597`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 136 terms. -/
def A207946 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A207946.P1343383528588518597.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 136 terms. -/
def A207946.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A208115.P15927855600313523114

`sqrt(A208114(n+1)*A208116(n+1))`
-/

namespace A208115.P15927855600313523114
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A208114 (n + 1) * A208116 (n + 1) : ℝ)

end

end A208115.P15927855600313523114

noncomputable section

/-- A208115: Number of n X 5 0..1 arrays avoiding 0 0 0 and 0 1 0 horizontally and 0 0 1 and 0 1 1 vertically.

Offset 1, canonical program `A208115.P15927855600313523114`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A208115 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A208115.P15927855600313523114.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A208115.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A208273.P479560889702569818

`filter[A011532(n+1), A005171(#)]`
-/

namespace A208273.P479560889702569818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011532 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A208273.P479560889702569818

noncomputable section

/-- A208273: Composite numbers containing a digit 2.

Offset 1, canonical program `A208273.P479560889702569818`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9049 terms. -/
def A208273 (n : ℕ) : ℤ :=
  A208273.P479560889702569818.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9049 terms. -/
def A208273.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A209144.P4568866588798003918

`A209149(A056536(n+1))`
-/

namespace A209144.P4568866588798003918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209149 (A056536 (n + 1)).toNat

end

end A209144.P4568866588798003918

noncomputable section

/-- A209144: Triangle of coefficients of polynomials v(n,x) jointly generated with A209143; see the Formula section.

Offset 1, canonical program `A209144.P4568866588798003918`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5041 terms. -/
def A209144 (n : ℕ) : ℤ :=
  A209144.P4568866588798003918.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5041 terms. -/
def A209144.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A228359.P12401264959366660209

`eq[0, A055671(A061601(n))]+1`
-/

namespace A228359.P12401264959366660209
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055671 (A061601 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A228359.P12401264959366660209

noncomputable section

/-- A228359: Numbers m whose 10's complement is not prime, i.e., 10^k-m, where k is the number of digits of m, is not prime.

Offset 1, canonical program `A228359.P12401264959366660209`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A228359 (n : ℕ) : ℤ :=
  (A228359.P12401264959366660209.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A228359.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A229143.P13243434220709827465

`∑{d}[n+1, A117188(#-1)*A259024((n+1)/#)]`
-/

namespace A229143.P13243434220709827465
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A117188 (d - 1) * A259024 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A229143.P13243434220709827465

noncomputable section

/-- A229143: Expansion of (b(q^3) - b(q)) / 3 in powers of q where b() is a cubic AGM theta function.

Offset 1, canonical program `A229143.P13243434220709827465`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A229143 (n : ℕ) : ℤ :=
  A229143.P13243434220709827465.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A229143.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A162630.P7067745107647930616

`2*A130517(n+1)`
-/

namespace A162630.P7067745107647930616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A130517 (n + 1)

end

end A162630.P7067745107647930616

noncomputable section

/-- A162630: Triangle read by rows in which row n lists the number of states of the subshells of the n-th shell of the nuclear shell model ordered by energy level in increasing order.

Offset 1, canonical program `A162630.P7067745107647930616`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A130517, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A162630 (n : ℕ) : ℤ :=
  A162630.P7067745107647930616.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A130517, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A162630.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A163464.P1746648833047574952

`A054896(Δ[A007504(n)])`
-/

namespace A163464.P1746648833047574952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054896 (f1 (n + 1) - f1 n).toNat

end

end A163464.P1746648833047574952

noncomputable section

/-- A163464: Cumulative sum of a repeated shift-and-add operation on the base-7 representation of prime(n).

Offset 1, canonical program `A163464.P1746648833047574952`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1229 terms. -/
def A163464 (n : ℕ) : ℤ :=
  A163464.P1746648833047574952.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1229 terms. -/
def A163464.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A175256.P189772592712157047

`sqrt(A175255(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A175256.P189772592712157047
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A175255 (n + 1) : ℝ)

end

end A175256.P189772592712157047

noncomputable section

/-- A175256: a(n) = sqrt(A175255(n)).

Offset 1, canonical program `A175256.P189772592712157047`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A175255, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A175256 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A175256.P189772592712157047.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A175255, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A175256.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A178637.P1570303736559003244

`A035321(n+1)+1`
-/

namespace A178637.P1570303736559003244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035321 (n + 1) + 1

end

end A178637.P1570303736559003244

noncomputable section

/-- A178637: a(n) = sum of divisors d of n such that d is not equal to p^k where p = prime, k >=1.

Offset 1, canonical program `A178637.P1570303736559003244`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A035321, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A178637 (n : ℕ) : ℤ :=
  A178637.P1570303736559003244.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A035321, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A178637.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A179017.P6095337465077806677

`filter[A295243(n+1), A008966(#)]`
-/

namespace A179017.P6095337465077806677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295243 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A179017.P6095337465077806677

noncomputable section

/-- A179017: Odd numbers c such that c*(c^2 - 1)/4 is squarefree.

Offset 1, canonical program `A179017.P6095337465077806677`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7776 terms. -/
def A179017 (n : ℕ) : ℤ :=
  A179017.P6095337465077806677.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7776 terms. -/
def A179017.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A179180.P10718591488616343433

`∑[A143299(n+1)-1]`
-/

namespace A179180.P10718591488616343433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143299 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A179180.P10718591488616343433

noncomputable section

/-- A179180: Partial sums of A007895.

Offset 0, canonical program `A179180.P10718591488616343433`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A179180 (n : ℕ) : ℤ :=
  A179180.P10718591488616343433.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A179180.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A179245.P18371884009470140886

`eq[6, A143299(n+1)]`
-/

namespace A179245.P18371884009470140886
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143299 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A179245.P18371884009470140886

noncomputable section

/-- A179245: Numbers that have 5 terms in their Zeckendorf representation.

Offset 1, canonical program `A179245.P18371884009470140886`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3003 terms. -/
def A179245 (n : ℕ) : ℤ :=
  (A179245.P18371884009470140886.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3003 terms. -/
def A179245.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A183092.P9748846358186423691

`A007955(n+1)/A183091(n+1)`
-/

namespace A183092.P9748846358186423691
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007955 (n + 1) : ℚ) / (A183091 (n + 1) : ℚ)

end

end A183092.P9748846358186423691

noncomputable section

/-- A183092: a(n) is the product of divisors d of n such that d is not equal to m^k where m = noncomposite number, k >= 1.

Offset 1, canonical program `A183092.P9748846358186423691`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A183091, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A183092 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A183092.P9748846358186423691.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A183091, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A183092.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A183100.P18299511243728987249

`A183098(n+1)+1`
-/

namespace A183100.P18299511243728987249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183098 (n + 1) + 1

end

end A183100.P18299511243728987249

noncomputable section

/-- A183100: a(n) is the sum of divisors d of n which are either 1 or of the form Product_{i} (p_i^e_i) where at least one e_i = 1.

Offset 1, canonical program `A183100.P18299511243728987249`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A183098, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A183100 (n : ℕ) : ℤ :=
  A183100.P18299511243728987249.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A183098, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A183100.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A184616.P11536552118196738147

`A184615(n)-n`
-/

namespace A184616.P11536552118196738147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184615 n - (n : ℤ)

end

end A184616.P11536552118196738147

noncomputable section

/-- A184616: Negated negative parts of the nonadjacent forms.

Offset 0, canonical program `A184616.P11536552118196738147`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A184615, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A184616 (n : ℕ) : ℤ :=
  A184616.P11536552118196738147.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A184615, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A184616.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A198192.P297267374256015153

`n*A000120(n)-A073642(n)`
-/

namespace A198192.P297267374256015153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A000120 n - A073642 n

end

end A198192.P297267374256015153

noncomputable section

/-- A198192: Replace 2^k in the binary representation of n with n-k (i.e. if n = 2^a + 2^b + 2^c + ... then a(n) = (n-a) + (n-b) + (n-c) + ...).

Offset 0, canonical program `A198192.P297267374256015153`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A073642, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A198192 (n : ℕ) : ℤ :=
  A198192.P297267374256015153.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A073642, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A198192.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A198772.P17358713934612375480

`eq[1, A088534(n)]`
-/

namespace A198772.P17358713934612375480
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088534 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A198772.P17358713934612375480

noncomputable section

/-- A198772: Numbers having exactly one representation by the quadratic form x^2 + xy + y^2 with 0 <= x <= y.

Offset 1, canonical program `A198772.P17358713934612375480`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1602 terms. -/
def A198772 (n : ℕ) : ℤ :=
  (A198772.P17358713934612375480.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1602 terms. -/
def A198772.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A198773.P9580269409749445234

`eq[2, A088534(n)]`
-/

namespace A198773.P9580269409749445234
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088534 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A198773.P9580269409749445234

noncomputable section

/-- A198773: Numbers having exactly two representations by the quadratic form x^2+xy+y^2 with 0<=x<=y.

Offset 1, canonical program `A198773.P9580269409749445234`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 620 terms. -/
def A198773 (n : ℕ) : ℤ :=
  (A198773.P9580269409749445234.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 620 terms. -/
def A198773.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A217575.P8898210276207211588

`A063657(n+1)-1`
-/

namespace A217575.P8898210276207211588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063657 (n + 1) - 1

end

end A217575.P8898210276207211588

noncomputable section

/-- A217575: Numbers n such that floor(sqrt(n)) = floor(n/floor(sqrt(n)))-1.

Offset 1, canonical program `A217575.P8898210276207211588`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A063657, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A217575 (n : ℕ) : ℤ :=
  A217575.P8898210276207211588.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A063657, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A217575.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A219637.P9877023548532234555

`A003622(n+1)-A143299(n+1)`
-/

namespace A219637.P9877023548532234555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003622 (n + 1) - A143299 (n + 1)

end

end A219637.P9877023548532234555

noncomputable section

/-- A219637: Numbers that occur twice in A219641.

Offset 1, canonical program `A219637.P9877023548532234555`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A219637 (n : ℕ) : ℤ :=
  A219637.P9877023548532234555.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A219637.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A220116.P3171378606926799839

`eq[A063787(n+1), A143299(n+1)]`
-/

namespace A220116.P3171378606926799839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063787 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143299 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A220116.P3171378606926799839

noncomputable section

/-- A220116: Numbers k such that the number of 1's in binary expansion of k equals the number of terms in Zeckendorf representation of k.

Offset 1, canonical program `A220116.P3171378606926799839`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1689 terms. -/
def A220116 (n : ℕ) : ℤ :=
  (A220116.P3171378606926799839.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1689 terms. -/
def A220116.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A227428.P16365958953958314226

`A006047(n)-A206424(n)`
-/

namespace A227428.P16365958953958314226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006047 n - A206424 n

end

end A227428.P16365958953958314226

noncomputable section

/-- A227428: Number of twos in row n of triangle A083093.

Offset 0, canonical program `A227428.P16365958953958314226`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006047, A206424, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A227428 (n : ℕ) : ℤ :=
  A227428.P16365958953958314226.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006047, A206424, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A227428.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A227696.P2497490565356281867

`(-1)^n*A033687(n)`
-/

namespace A227696.P2497490565356281867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A033687 n

end

end A227696.P2497490565356281867

noncomputable section

/-- A227696: Expansion of f(x^3)^3 / f(x) in powers of x where f() is a Ramanujan theta function.

Offset 0, canonical program `A227696.P2497490565356281867`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A033687, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A227696 (n : ℕ) : ℤ :=
  A227696.P2497490565356281867.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A033687, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A227696.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A230877.P5743359450081405431

`A000120(n)*A070939(n)-A073642(n)`
-/

namespace A230877.P5743359450081405431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n * A070939 n - A073642 n

end

end A230877.P5743359450081405431

noncomputable section

/-- A230877: If n = Sum_{i=0..m} c(i)*2^i, c(i) = 0 or 1, then a(n) = Sum_{i=0..m} (m+1-i)*c(i).

Offset 0, canonical program `A230877.P5743359450081405431`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8193 terms. -/
def A230877 (n : ℕ) : ℤ :=
  A230877.P5743359450081405431.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8193 terms. -/
def A230877.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A231086.P15220536245985747541

`A005101(eq[2, A125115(n+1)]+1)`
-/

namespace A231086.P15220536245985747541
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125115 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005101 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A231086.P15220536245985747541

noncomputable section

/-- A231086: Initial members of abundant twins, i.e., values of k such that (k, k+2) are both abundant numbers.

Offset 1, canonical program `A231086.P15220536245985747541`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3248 terms. -/
def A231086 (n : ℕ) : ℤ :=
  A231086.P15220536245985747541.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3248 terms. -/
def A231086.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A160939.P10335950988782502839

`A062028(n)+1`
-/

namespace A160939.P10335950988782502839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062028 n + 1

end

end A160939.P10335950988782502839

noncomputable section

/-- A160939: a(n) = n + digital sum (n-1).

Offset 1, canonical program `A160939.P10335950988782502839`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A062028, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A160939 (n : ℕ) : ℤ :=
  A160939.P10335950988782502839.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A062028, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A160939.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A161349.P9220623831723814997

`eq[1, A053186(A061762(n)+1)]`
-/

namespace A161349.P9220623831723814997
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053186 (A061762 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A161349.P9220623831723814997

noncomputable section

/-- A161349: Positive numbers with property that the digital sum plus the product of the digits is a square.

Offset 1, canonical program `A161349.P9220623831723814997`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 701 terms. -/
def A161349 (n : ℕ) : ℤ :=
  (A161349.P9220623831723814997.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 701 terms. -/
def A161349.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A162720.P4575705943581837590

`A007088(A014499(n+1))`
-/

namespace A162720.P4575705943581837590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A014499 (n + 1)).toNat

end

end A162720.P4575705943581837590

noncomputable section

/-- A162720: A014499 represented in binary.

Offset 1, canonical program `A162720.P4575705943581837590`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A162720 (n : ℕ) : ℤ :=
  A162720.P4575705943581837590.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A162720.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A163235.P15833778733709445613

`A057300(A163233(n))`
-/

namespace A163235.P15833778733709445613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057300 (A163233 n).toNat

end

end A163235.P15833778733709445613

noncomputable section

/-- A163235: Two-dimensional Binary Reflected Gray Code, transposed version: a(i,j) = bits of binary expansion of A003188(j) interleaved with that of A003188(i).

Offset 0, canonical program `A163235.P15833778733709445613`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2080 terms. -/
def A163235 (n : ℕ) : ℤ :=
  A163235.P15833778733709445613.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2080 terms. -/
def A163235.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A163239.P2622362110739984627

`A004468(A163233(n))`
-/

namespace A163239.P2622362110739984627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004468 (A163233 n).toNat

end

end A163239.P2622362110739984627

noncomputable section

/-- A163239: Transpose of array A163237.

Offset 0, canonical program `A163239.P2622362110739984627`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2080 terms. -/
def A163239 (n : ℕ) : ℤ :=
  A163239.P2622362110739984627.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2080 terms. -/
def A163239.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A163242.P5709867109998046641

`∑[A001196(xor(n, floor(n/2)))]`
-/

namespace A163242.P5709867109998046641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001196 (Int.xor (n : ℤ) ⌊(n : ℚ) / 2⌋).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A163242.P5709867109998046641

noncomputable section

/-- A163242: Row sums of A163233 and A163235.

Offset 0, canonical program `A163242.P5709867109998046641`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. -/
def A163242 (n : ℕ) : ℤ :=
  A163242.P5709867109998046641.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. -/
def A163242.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A164370.P15740221419071987727

`∪[10*A163449(n), A163449(n)]`
-/

namespace A164370.P15740221419071987727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * A163449 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163449 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A164370.P15740221419071987727

noncomputable section

/-- A164370: Sequence A005418 written in base 2.

Offset 1, canonical program `A164370.P15740221419071987727`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A164370 (n : ℕ) : ℤ :=
  (A164370.P15740221419071987727.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A164370.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A175522.P8282898112769869061

`eq[0, A192895(n+1)]+1`
-/

namespace A175522.P8282898112769869061
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192895 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A175522.P8282898112769869061

noncomputable section

/-- A175522: A000120-perfect numbers.

Offset 1, canonical program `A175522.P8282898112769869061`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 234 terms. -/
def A175522 (n : ℕ) : ℤ :=
  (A175522.P8282898112769869061.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 234 terms. -/
def A175522.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A175524.P5660943286196365058

`lt[A192895(n+1), 0]+1`
-/

namespace A175524.P5660943286196365058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192895 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A175524.P5660943286196365058

noncomputable section

/-- A175524: A000120-deficient numbers.

Offset 1, canonical program `A175524.P5660943286196365058`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A175524 (n : ℕ) : ℤ :=
  (A175524.P5660943286196365058.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A175524.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A180636.P9143062899493612538

`∩[A343107(n+1), A343110(n+1)]`
-/

namespace A180636.P9143062899493612538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343107 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343110 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A180636.P9143062899493612538

noncomputable section

/-- A180636: Positive integers that are divisible by neither 8k-1 nor 8k+1, for all k > 0.

Offset 1, canonical program `A180636.P9143062899493612538`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3002 terms. -/
def A180636 (n : ℕ) : ℤ :=
  (A180636.P9143062899493612538.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3002 terms. -/
def A180636.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A185300.P2066547640795483324

`eq[1, ∑{e}[A061762(n), #]]`
-/

namespace A185300.P2066547640795483324
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061762 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n).natAbs, Nat.factorization (f3 n).natAbs p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A185300.P2066547640795483324

noncomputable section

/-- A185300: Numbers k such that (sum of the decimal digits of k) + (product of the decimal digits of k) is prime.

Offset 1, canonical program `A185300.P2066547640795483324`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2361 terms. -/
def A185300 (n : ℕ) : ℤ :=
  (A185300.P2066547640795483324.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2361 terms. -/
def A185300.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A185400.P10088178791459838251

`eq[1, A000120(A062028(n)-A070565(n))]`
-/

namespace A185400.P10088178791459838251
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A062028 n - A070565 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A185400.P10088178791459838251

noncomputable section

/-- A185400: Numbers with property that the digital sum plus the product of the digits is a power of 2.

Offset 1, canonical program `A185400.P10088178791459838251`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 407 terms. -/
def A185400 (n : ℕ) : ℤ :=
  (A185400.P10088178791459838251.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 407 terms. -/
def A185400.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A188641.P10949182267148863194

`A000007(A070635(n+1))`
-/

namespace A188641.P10949182267148863194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A070635 (n + 1)).toNat

end

end A188641.P10949182267148863194

noncomputable section

/-- A188641: Characteristic function of Niven (or Harshad) numbers.

Offset 1, canonical program `A188641.P10949182267148863194`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A070635, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A188641 (n : ℕ) : ℤ :=
  A188641.P10949182267148863194.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A070635, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A188641.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A197125.P18255023952800122517

`∩[A028839(n+1), A175396(n+1)]`
-/

namespace A197125.P18255023952800122517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028839 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175396 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A197125.P18255023952800122517

noncomputable section

/-- A197125: Numbers such that sum of digits and sum of the square of digits are both a square.

Offset 1, canonical program `A197125.P18255023952800122517`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 499 terms. -/
def A197125 (n : ℕ) : ℤ :=
  (A197125.P18255023952800122517.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 499 terms. -/
def A197125.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A216836.P6437354700397976852

`eq[0, A000010(n+1)%A007953(n+1)]+1`
-/

namespace A216836.P6437354700397976852
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000010 (n + 1)) (A007953 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A216836.P6437354700397976852

noncomputable section

/-- A216836: Numbers n such that sum of decimal digits of n divides phi(n).

Offset 1, canonical program `A216836.P6437354700397976852`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2688 terms. -/
def A216836 (n : ℕ) : ℤ :=
  (A216836.P6437354700397976852.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2688 terms. -/
def A216836.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A224915.P15850589756246024201

`(A001196(n)-n)/2`
-/

namespace A224915.P15850589756246024201
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001196 n - (n : ℤ) : ℚ) / 2

end

end A224915.P15850589756246024201

noncomputable section

/-- A224915: a(n) = Sum_{k=0..n} n XOR k where XOR is the bitwise logical exclusive-or operator.

Offset 0, canonical program `A224915.P15850589756246024201`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001196, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A224915 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A224915.P15850589756246024201.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001196, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A224915.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A224924.P9265397642440561853

`∑[6*A213673(n)+n]`
-/

namespace A224924.P9265397642440561853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A213673 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A224924.P9265397642440561853

noncomputable section

/-- A224924: Sum_{i=0..n} Sum_{j=0..n} (i AND j), where AND is the binary logical AND operator.

Offset 0, canonical program `A224924.P9265397642440561853`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2492 terms. -/
def A224924 (n : ℕ) : ℤ :=
  A224924.P9265397642440561853.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2492 terms. -/
def A224924.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A227095.P16618635948200259415

`eq[9, A173528(n+1)]`
-/

namespace A227095.P16618635948200259415
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173528 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A227095.P16618635948200259415

noncomputable section

/-- A227095: Numbers whose base-8 sum of digits is 8.

Offset 1, canonical program `A227095.P16618635948200259415`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 355 terms. -/
def A227095 (n : ℕ) : ℤ :=
  (A227095.P16618635948200259415.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 355 terms. -/
def A227095.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A229527.P13631613153917723795

`A062028(a(n-1))+1` with `a(0)=1`
-/

namespace A229527.P13631613153917723795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A062028 (a (n - 1)).toNat + 1

end

end A229527.P13631613153917723795

noncomputable section

/-- A229527: Start with 1, skip (sum of digits of n) numbers, accept next number.

Offset 1, canonical program `A229527.P13631613153917723795`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 561 terms. -/
def A229527 (n : ℕ) : ℤ :=
  A229527.P13631613153917723795.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 561 terms. -/
def A229527.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A231682.P14854101076037231145

`∑[(A173528(n+1)-1)^3]`
-/

namespace A231682.P14854101076037231145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A173528 (n + 1) - 1) ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231682.P14854101076037231145

noncomputable section

/-- A231682: a(n) = Sum_{i=0..n} digsum_8(i)^3, where digsum_8(i) = A053829(i).

Offset 0, canonical program `A231682.P14854101076037231145`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A231682 (n : ℕ) : ℤ :=
  A231682.P14854101076037231145.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A231682.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A232709.P8146322751901021874

`eq[A010879(A007954(n)), A053837(n)]`
-/

namespace A232709.P8146322751901021874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 (A007954 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053837 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A232709.P8146322751901021874

noncomputable section

/-- A232709: Nonnegative integers such that the sum of digits mod 10 equals the product of digits mod 10.

Offset 1, canonical program `A232709.P8146322751901021874`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 926 terms. -/
def A232709 (n : ℕ) : ℤ :=
  (A232709.P8146322751901021874.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 926 terms. -/
def A232709.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A165265.P11785887504436960033

`∑{digits}[A176894(n), A006370(#)]`
-/

namespace A165265.P11785887504436960033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176894 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A006370 x).sum

end

end A165265.P11785887504436960033

noncomputable section

/-- A165265: Concatenate the number of 1's and number of 0's in the binary expansion of n.

Offset 0, canonical program `A165265.P11785887504436960033`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1024 terms. -/
def A165265 (n : ℕ) : ℤ :=
  A165265.P11785887504436960033.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1024 terms. -/
def A165265.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A165502.P13417243480787722624

`p?[eq[31, A004159(n)]]`
-/

namespace A165502.P13417243480787722624
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  31

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004159 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A165502.P13417243480787722624

noncomputable section

/-- A165502: Primes p where the digital sum of p^2 is equal to 31.

Offset 1, canonical program `A165502.P13417243480787722624`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 152 terms. -/
def A165502 (n : ℕ) : ℤ :=
  (A165502.P13417243480787722624.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 152 terms. -/
def A165502.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A165503.P17759622746799329389

`p?[eq[37, A004159(n)]]`
-/

namespace A165503.P17759622746799329389
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  37

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004159 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A165503.P17759622746799329389

noncomputable section

/-- A165503: Primes p with a digits sum of p^2 equal to 37.

Offset 1, canonical program `A165503.P17759622746799329389`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 150 terms. -/
def A165503 (n : ℕ) : ℤ :=
  (A165503.P17759622746799329389.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 150 terms. -/
def A165503.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A166550.P9048680061311345364

`eq[A004159(n+1), A007605(n+1)]+1`
-/

namespace A166550.P9048680061311345364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004159 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007605 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A166550.P9048680061311345364

noncomputable section

/-- A166550: Numbers n with property that n^2 and n-th prime have the same sum of digits.

Offset 1, canonical program `A166550.P9048680061311345364`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 239 terms. -/
def A166550 (n : ℕ) : ℤ :=
  (A166550.P9048680061311345364.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 239 terms. -/
def A166550.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A166561.P14281956629878694271

`p?[A000040(n+1)*A001222(A007605(n+1)+1)]`
-/

namespace A166561.P14281956629878694271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A001222 (A007605 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A166561.P14281956629878694271

noncomputable section

/-- A166561: Primes p such that sum of digits + 1 is prime.

Offset 1, canonical program `A166561.P14281956629878694271`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2252 terms. -/
def A166561 (n : ℕ) : ℤ :=
  A166561.P14281956629878694271.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2252 terms. -/
def A166561.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A169884.P13403275088466269213

`∪[A014263(n+1), A169964(n+1)]`
-/

namespace A169884.P13403275088466269213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014263 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169964 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A169884.P13403275088466269213

noncomputable section

/-- A169884: Numbers consisting of either all even digits or just 5's and 0's.

Offset 1, canonical program `A169884.P13403275088466269213`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A169884 (n : ℕ) : ℤ :=
  (A169884.P13403275088466269213.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A169884.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A173639.P4181958568565848688

`eq[0, A059841(A245627(n))]`
-/

namespace A173639.P4181958568565848688
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (A245627 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A173639.P4181958568565848688

noncomputable section

/-- A173639: Numbers n such that the sum of the digits of 11*n is odd.

Offset 1, canonical program `A173639.P4181958568565848688`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A173639 (n : ℕ) : ℤ :=
  (A173639.P4181958568565848688.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A173639.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A175434.P3715413086087298136

`A001370(n+1)%(n+1)`
-/

namespace A175434.P3715413086087298136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001370 (n + 1)) (n + 1 : ℤ)

end

end A175434.P3715413086087298136

noncomputable section

/-- A175434: (Digit sum of 2^n) mod n.

Offset 1, canonical program `A175434.P3715413086087298136`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A175434 (n : ℕ) : ℤ :=
  A175434.P3715413086087298136.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A175434.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A178359.P15358575876907738801

`A008592(n)+A004427(n)`
-/

namespace A178359.P15358575876907738801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008592 n + A004427 n

end

end A178359.P15358575876907738801

noncomputable section

/-- A178359: Rounded up arithmetic mean of digits of n appended to n, cf. A004427.

Offset 0, canonical program `A178359.P15358575876907738801`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004427, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A178359 (n : ℕ) : ℤ :=
  A178359.P15358575876907738801.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004427, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A178359.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A178361.P8231128193257540818

`eq[1, A004427(n)]`
-/

namespace A178361.P8231128193257540818
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A178361.P8231128193257540818

noncomputable section

/-- A178361: Numbers with rounded up arithmetic mean of digits = 1.

Offset 1, canonical program `A178361.P8231128193257540818`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 154 terms. -/
def A178361 (n : ℕ) : ℤ :=
  (A178361.P8231128193257540818.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 154 terms. -/
def A178361.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A178362.P9238834026581198290

`eq[2, A004427(n)]`
-/

namespace A178362.P9238834026581198290
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A178362.P9238834026581198290

noncomputable section

/-- A178362: Numbers with rounded up arithmetic mean of digits = 2.

Offset 1, canonical program `A178362.P9238834026581198290`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1420 terms. -/
def A178362 (n : ℕ) : ℤ :=
  (A178362.P9238834026581198290.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1420 terms. -/
def A178362.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A178363.P6844550535724786784

`eq[3, A004427(n)]`
-/

namespace A178363.P6844550535724786784
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A178363.P6844550535724786784

noncomputable section

/-- A178363: Numbers with rounded up arithmetic mean of digits = 3.

Offset 1, canonical program `A178363.P6844550535724786784`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4511 terms. -/
def A178363 (n : ℕ) : ℤ :=
  (A178363.P6844550535724786784.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4511 terms. -/
def A178363.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A178364.P433863543401046388

`eq[4, A004427(n)]`
-/

namespace A178364.P433863543401046388
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A178364.P433863543401046388

noncomputable section

/-- A178364: Numbers with rounded up arithmetic mean of digits = 4.

Offset 1, canonical program `A178364.P433863543401046388`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7140 terms. -/
def A178364 (n : ℕ) : ℤ :=
  (A178364.P433863543401046388.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7140 terms. -/
def A178364.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A178365.P3974075218934298230

`eq[5, A004427(n)]`
-/

namespace A178365.P3974075218934298230
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A178365.P3974075218934298230

noncomputable section

/-- A178365: Numbers with rounded up arithmetic mean of digits = 5.

Offset 1, canonical program `A178365.P3974075218934298230`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6441 terms. -/
def A178365 (n : ℕ) : ℤ :=
  (A178365.P3974075218934298230.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6441 terms. -/
def A178365.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A178366.P7518788595640063131

`eq[6, A004427(n)]`
-/

namespace A178366.P7518788595640063131
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A178366.P7518788595640063131

noncomputable section

/-- A178366: Numbers with rounded up arithmetic mean of digits = 6.

Offset 1, canonical program `A178366.P7518788595640063131`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3585 terms. -/
def A178366 (n : ℕ) : ℤ :=
  (A178366.P7518788595640063131.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3585 terms. -/
def A178366.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A178367.P10805478532378323265

`eq[7, A004427(n)]`
-/

namespace A178367.P10805478532378323265
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A178367.P10805478532378323265

noncomputable section

/-- A178367: Numbers with rounded up arithmetic mean of digits = 7.

Offset 1, canonical program `A178367.P10805478532378323265`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1346 terms. -/
def A178367 (n : ℕ) : ℤ :=
  (A178367.P10805478532378323265.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1346 terms. -/
def A178367.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A178368.P9202168423804180073

`eq[8, A004427(n)]`
-/

namespace A178368.P9202168423804180073
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A178368.P9202168423804180073

noncomputable section

/-- A178368: Numbers with rounded up arithmetic mean of digits = 8.

Offset 1, canonical program `A178368.P9202168423804180073`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 354 terms. -/
def A178368 (n : ℕ) : ℤ :=
  (A178368.P9202168423804180073.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 354 terms. -/
def A178368.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A178404.P8715085228926204478

`eq[dr(n), A004427(n)]`
-/

namespace A178404.P8715085228926204478
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A178404.P8715085228926204478

noncomputable section

/-- A178404: Numbers such that the rounded up arithmetic mean of their digits equals their digital root.

Offset 1, canonical program `A178404.P8715085228926204478`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A178404 (n : ℕ) : ℤ :=
  (A178404.P8715085228926204478.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A178404.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A186278.P5249949395028030588

`eq[1, A032741(A007953(n)+A004159(n))]`
-/

namespace A186278.P5249949395028030588
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (A007953 n + A004159 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A186278.P5249949395028030588

noncomputable section

/-- A186278: Numbers k such that the sum of the digits of k plus the sum of the digits of k^2 is prime.

Offset 1, canonical program `A186278.P5249949395028030588`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1075 terms. -/
def A186278 (n : ℕ) : ℤ :=
  (A186278.P5249949395028030588.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1075 terms. -/
def A186278.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A186775.P3396256789162687716

`lt[Δ[A001370(n)], 0]`
-/

namespace A186775.P3396256789162687716
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001370 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n

end

end A186775.P3396256789162687716

noncomputable section

/-- A186775: Numbers k such that digitsum(2^k) > digitsum(2^(k+1)).

Offset 1, canonical program `A186775.P3396256789162687716`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4919 terms. -/
def A186775 (n : ℕ) : ℤ :=
  (A186775.P3396256789162687716.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4919 terms. -/
def A186775.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A187794.P17499645583050046868

`A000203(n+1)-(A187795(n+1)+A187793(n+1))`
-/

namespace A187794.P17499645583050046868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - (A187795 (n + 1) + A187793 (n + 1))

end

end A187794.P17499645583050046868

noncomputable section

/-- A187794: Sum of the perfect divisors of n.

Offset 1, canonical program `A187794.P17499645583050046868`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A187794 (n : ℕ) : ℤ :=
  A187794.P17499645583050046868.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A187794.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A198471.P1128838665379452486

`lt[n+1, A294886(n+1)]+1`
-/

namespace A198471.P1128838665379452486
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294886 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A198471.P1128838665379452486

noncomputable section

/-- A198471: Abundant numbers that are smaller than the sum of their deficient divisors.

Offset 1, canonical program `A198471.P1128838665379452486`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1847 terms. -/
def A198471 (n : ℕ) : ℤ :=
  (A198471.P1128838665379452486.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1847 terms. -/
def A198471.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A199339.P3756374579669110308

`∑[A033999(A007605(n+1))]`
-/

namespace A199339.P3756374579669110308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A007605 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A199339.P3756374579669110308

noncomputable section

/-- A199339: a(n) = number of primes with an even digit sum among the first n primes minus the number with an odd digit sum.

Offset 1, canonical program `A199339.P3756374579669110308`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A199339 (n : ℕ) : ℤ :=
  A199339.P3756374579669110308.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A199339.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A200259.P8572923408309876952

`lt[0, val(A007605(n+1), 2)]+1`
-/

namespace A200259.P8572923408309876952
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A007605 (n + 1)).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A200259.P8572923408309876952

noncomputable section

/-- A200259: Numbers k such that k-th prime has an even digit sum.

Offset 1, canonical program `A200259.P8572923408309876952`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4925 terms. -/
def A200259 (n : ℕ) : ℤ :=
  (A200259.P8572923408309876952.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4925 terms. -/
def A200259.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A200261.P2236305596718294823

`A059841(A007605(n+1))`
-/

namespace A200261.P2236305596718294823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (A007605 (n + 1)).toNat

end

end A200261.P2236305596718294823

noncomputable section

/-- A200261: a(n) = 1 iff n-th prime has an even digit sum.

Offset 1, canonical program `A200261.P2236305596718294823`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A200261 (n : ℕ) : ℤ :=
  A200261.P2236305596718294823.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A200261.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A202089.P7430434944876183357

`eq[A004159(n+1), A004159(n)]`
-/

namespace A202089.P7430434944876183357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004159 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004159 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A202089.P7430434944876183357

noncomputable section

/-- A202089: Numbers n such that n^2 and (n+1)^2 have same digit sum.

Offset 1, canonical program `A202089.P7430434944876183357`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 471 terms. -/
def A202089 (n : ℕ) : ℤ :=
  (A202089.P7430434944876183357.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 471 terms. -/
def A202089.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A216676.P8042148901367579546

`dr(A388539(n+1))`
-/

namespace A216676.P8042148901367579546
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A388539 (n + 1))

end

end A216676.P8042148901367579546

noncomputable section

/-- A216676: Digital roots of squares of Fibonacci numbers.

Offset 1, canonical program `A216676.P8042148901367579546`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A216676 (n : ℕ) : ℤ :=
  (A216676.P8042148901367579546.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A216676.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A216699.P2293991450571384298

`dr(A004090(n)²*A004090(n))`
-/

namespace A216699.P2293991450571384298
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A004090 n ^ 2 * A004090 n)

end

end A216699.P2293991450571384298

noncomputable section

/-- A216699: Digital root of cubes of Fibonacci numbers.

Offset 0, canonical program `A216699.P2293991450571384298`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A216699 (n : ℕ) : ℤ :=
  (A216699.P2293991450571384298.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A216699.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A216754.P14933782455688842539

`dr(A388539(n)²)`
-/

namespace A216754.P14933782455688842539
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A388539 n ^ 2)

end

end A216754.P14933782455688842539

noncomputable section

/-- A216754: Digital root of fourth power of Fibonacci numbers.

Offset 0, canonical program `A216754.P14933782455688842539`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A216754 (n : ℕ) : ℤ :=
  (A216754.P14933782455688842539.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A216754.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A216997.P2574361776485171840

`∩[8*n, A273188(n+2)]`
-/

namespace A216997.P2574361776485171840
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273188 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A216997.P2574361776485171840

noncomputable section

/-- A216997: Multiples of 8 that have a digit sum which is a multiple of 8.

Offset 1, canonical program `A216997.P2574361776485171840`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1249 terms. -/
def A216997 (n : ℕ) : ℤ :=
  (A216997.P2574361776485171840.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1249 terms. -/
def A216997.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A224977.P2433633673610591437

`A000290(n)-A004159(n)`
-/

namespace A224977.P2433633673610591437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 n - A004159 n

end

end A224977.P2433633673610591437

noncomputable section

/-- A224977: n^2 minus sum of digits of n^2.

Offset 0, canonical program `A224977.P2433633673610591437`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004159, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A224977 (n : ℕ) : ℤ :=
  A224977.P2433633673610591437.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004159, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A224977.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A229058.P11987760245482579737

`p?[eq[25, A004159(n)]]`
-/

namespace A229058.P11987760245482579737
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  25

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004159 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A229058.P11987760245482579737

noncomputable section

/-- A229058: Primes p where the digital sum of p^2 is equal to 25.

Offset 1, canonical program `A229058.P11987760245482579737`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 111 terms. -/
def A229058 (n : ℕ) : ℤ :=
  (A229058.P11987760245482579737.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 111 terms. -/
def A229058.provenance : SequenceMachineLib.Provenance := .conjectured

