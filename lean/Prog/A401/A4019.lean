import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C014
import Seq.B000.C016
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C037
import Seq.B000.C040
import Seq.B000.C042
import Seq.B000.C044
import Seq.B000.C046
import Seq.B000.C051
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C011
import Seq.B001.C013
import Seq.B001.C014
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C003
import Seq.B002.C005
import Seq.B002.C008
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C003
import Seq.B005.C001
import Seq.B005.C002
import Seq.B005.C003
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
import Seq.B007.C001
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
import Seq.Opaque.C000
import Seq.Opaque.C001
import Seq.Opaque.C002
import Seq.Opaque.C004
import Seq.Opaque.C005
import Seq.Opaque.C006
import Seq.Opaque.C007
import Seq.Opaque.C008
import Seq.Opaque.C009
import Seq.Opaque.C010
import Seq.Opaque.C011
import Seq.Opaque.C012
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
# A401901: a(n) is the term removed at step n from the front of a queue that is initially 1, 2, 3, ..., where after each removal every remaining term j > 1 is replaced by the pair j, j-1.

The programs for A401901, there is no canonical definition to state claims against.
-/

/-! ## A401901.P3227724494001441016

`A340673(A326889(n+2))`
-/

namespace A401901.P3227724494001441016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340673 (A326889 (n + 2)).toNat

end

end A401901.P3227724494001441016

/-! ## A401901.P6097850086518605488

`A332289(A073547(n+1))`
-/

namespace A401901.P6097850086518605488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332289 (A073547 (n + 1)).toNat

end

end A401901.P6097850086518605488

/-! ## A401901.P2987590707747917515

`A261095(A276322(n+1))`
-/

namespace A401901.P2987590707747917515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261095 (A276322 (n + 1)).toNat

end

end A401901.P2987590707747917515

/-! ## A401901.P10967972998641162079

`A082391(A380821(n))`
-/

namespace A401901.P10967972998641162079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082391 (A380821 n).toNat

end

end A401901.P10967972998641162079

/-! ## A401901.P8178300597933853950

`A332278(A386308(n+1))`
-/

namespace A401901.P8178300597933853950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332278 (A386308 (n + 1)).toNat

end

end A401901.P8178300597933853950

/-!
# A401905: Least m >= 0 such that k/2^n is a fusible number for every k >= m.

The programs for A401905, there is no canonical definition to state claims against.
-/

/-! ## A401905.P9355801735420973658

`A027556(n+1)`
-/

namespace A401905.P9355801735420973658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027556 (n + 1)

end

end A401905.P9355801735420973658

/-!
# A401906: Numbers not of the form abs(k - reversal of k in base 2) for at least one k (written in base 10).

The programs for A401906, there is no canonical definition to state claims against.
-/

/-! ## A401906.P6818124066085931780

`comp[A400463(n+1)]`
-/

namespace A401906.P6818124066085931780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400463 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A401906.P6818124066085931780

/-!
# A401911: The greatest common divisor of n and A342001(n), where A342001(n) = A003415(n)/A003557(n).

The programs for A401911, the canonical program `A401911.P1278241965479012` is in `Seq.B005.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A401911 has offset 1).

The definition of A401911 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A401911.P1278241965479012

`gcd(n+1, A342001(n+1))`

The canonical program, it is in `Seq.B005.C003`.
-/

namespace A401911

/-- `gcd(n+1, A342001(n+1))` -/
def P1278241965479012.Spec : Prop :=
  ∀ n, (P1278241965479012.a n : ℤ) = A401911 (n + 1)

theorem P1278241965479012.correct : P1278241965479012.Spec := by
  intro n
  simp only [A401911, Nat.add_sub_cancel]

end A401911

/-! ## A401911.P3479805608327039928

`A401912(n+1)*A369008(n+1)`
-/

namespace A401911.P3479805608327039928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A401912 (n + 1) * A369008 (n + 1)

end

end A401911.P3479805608327039928

namespace A401911

/-- `A401912(n+1)*A369008(n+1)` -/
def P3479805608327039928.Spec : Prop :=
  ∀ n, P3479805608327039928.a n = A401911 (n + 1)

end A401911

/-! ## A401911.P10985807033216153102

`A085731(n+1)*A401912(n+1)/A003557(n+1)`
-/

namespace A401911.P10985807033216153102
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A085731 (n + 1) * A401912 (n + 1) : ℚ) / (A003557 (n + 1) : ℚ)

end

end A401911.P10985807033216153102

namespace A401911

/-- `A085731(n+1)*A401912(n+1)/A003557(n+1)` -/
def P10985807033216153102.Spec : Prop :=
  ∀ n, P10985807033216153102.a n = (A401911 (n + 1) : ℚ)

end A401911

/-! ## A401911.P10105584495862459386

`gcd(A195507(n+1), A346244(n+1))`
-/

namespace A401911.P10105584495862459386
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A195507 (n + 1)) (A346244 (n + 1))

end

end A401911.P10105584495862459386

namespace A401911

/-- `gcd(A195507(n+1), A346244(n+1))` -/
def P10105584495862459386.Spec : Prop :=
  ∀ n, (P10105584495862459386.a n : ℤ) = A401911 (n + 1)

end A401911

/-! ## A401911.P8118348503557409925

`gcd(A126352(n), A346244(n+1))`
-/

namespace A401911.P8118348503557409925
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A126352 n) (A346244 (n + 1))

end

end A401911.P8118348503557409925

namespace A401911

/-- `gcd(A126352(n), A346244(n+1))` -/
def P8118348503557409925.Spec : Prop :=
  ∀ n, (P8118348503557409925.a n : ℤ) = A401911 (n + 1)

end A401911

/-!
# A401912: a(n) = A401911(n) / A369008(n).

The programs for A401912, the canonical program `A401912.P12126294774194375001` is in `Seq.B006.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A401912 has offset 1).

The definition of A401912 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A401912.P12126294774194375001

`A401911(n+1)/A369008(n+1)`

The canonical program, it is in `Seq.B006.C002`.
-/

namespace A401912

/-- `A401911(n+1)/A369008(n+1)` -/
def P12126294774194375001.Spec : Prop :=
  ∀ n, P12126294774194375001.a n = (A401912 (n + 1) : ℚ)

end A401912

/-! ## A401912.P4837645832125558673

`A003557(A401911(n+1))`
-/

namespace A401912.P4837645832125558673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (A401911 (n + 1)).toNat

end

end A401912.P4837645832125558673

namespace A401912

/-- `A003557(A401911(n+1))` -/
def P4837645832125558673.Spec : Prop :=
  ∀ n, P4837645832125558673.a n = A401912 (n + 1)

end A401912

/-! ## A401912.P13934905782111685664

`gcd(A175690(n+1), A317145(n+1))`
-/

namespace A401912.P13934905782111685664
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A175690 (n + 1)) (A317145 (n + 1))

end

end A401912.P13934905782111685664

namespace A401912

/-- `gcd(A175690(n+1), A317145(n+1))` -/
def P13934905782111685664.Spec : Prop :=
  ∀ n, (P13934905782111685664.a n : ℤ) = A401912 (n + 1)

end A401912

/-! ## A401912.P4573567277152644547

`gcd(A294923(n+1), A374034(n+1))`
-/

namespace A401912.P4573567277152644547
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A294923 (n + 1)) (A374034 (n + 1))

end

end A401912.P4573567277152644547

namespace A401912

/-- `gcd(A294923(n+1), A374034(n+1))` -/
def P4573567277152644547.Spec : Prop :=
  ∀ n, (P4573567277152644547.a n : ℤ) = A401912 (n + 1)

end A401912

/-! ## A401912.P7054876887302550936

`A354614(A173801(n+1))`
-/

namespace A401912.P7054876887302550936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354614 (A173801 (n + 1)).toNat

end

end A401912.P7054876887302550936

namespace A401912

/-- `A354614(A173801(n+1))` -/
def P7054876887302550936.Spec : Prop :=
  ∀ n, P7054876887302550936.a n = A401912 (n + 1)

end A401912

/-!
# A401913: Numbers that occur in A401723.

The programs for A401913, there is no canonical definition to state claims against.
-/

/-! ## A401913.P17457695016629049629

`filter[A213367(n+1), A401915(#)]`
-/

namespace A401913.P17457695016629049629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213367 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A401915 (f1 j).toNat = 1) n)

end

end A401913.P17457695016629049629

/-! ## A401913.P3532628974411104499

`filter[A038459(n+1), A401915(#)]`
-/

namespace A401913.P3532628974411104499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038459 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A401915 (f1 j).toNat = 1) n)

end

end A401913.P3532628974411104499

/-! ## A401913.P7957544805878394073

`filter[A072356(n+1), A401915(#)]`
-/

namespace A401913.P7957544805878394073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072356 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A401915 (f1 j).toNat = 1) n)

end

end A401913.P7957544805878394073

/-! ## A401913.P4327916132754371089

`filter[A118759(n+1), A401915(#)]`
-/

namespace A401913.P4327916132754371089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A401915 (f1 j).toNat = 1) n)

end

end A401913.P4327916132754371089

/-! ## A401913.P2376746155832797363

`filter[A085736(n+1), A401915(#)]`
-/

namespace A401913.P2376746155832797363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A401915 (f1 j).toNat = 1) n)

end

end A401913.P2376746155832797363

/-!
# A401914: Numbers that do not occur in A401723.

The programs for A401914, there is no canonical definition to state claims against.
-/

/-! ## A401914.P13540335285958099424

`A370076(n+1)`
-/

namespace A401914.P13540335285958099424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370076 (n + 1)

end

end A401914.P13540335285958099424

/-!
# A401915: Number of divisors d of n for which A112622(d)*d is equal to n, where A112622 is multiplicative with a(p^e) = e^e.

The programs for A401915, there is no canonical definition to state claims against.
-/

/-! ## A401915.P11396463335964208906

`Δ[fp[A401913(n+1)]]`
-/

namespace A401915.P11396463335964208906
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A401913 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (n : ℤ) < f2 j) 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A401915.P11396463335964208906

/-! ## A401915.P12889775546418319622

`A030658(A037291(n+1))`
-/

namespace A401915.P12889775546418319622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030658 (A037291 (n + 1)).toNat

end

end A401915.P12889775546418319622

/-! ## A401915.P11013534856106746842

`A015374(A127707(n+1))`
-/

namespace A401915.P11013534856106746842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015374 (A127707 (n + 1)).toNat

end

end A401915.P11013534856106746842

/-! ## A401915.P13730174738935691338

`A074937(A016003(n+1))`
-/

namespace A401915.P13730174738935691338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074937 (A016003 (n + 1)).toNat

end

end A401915.P13730174738935691338

/-! ## A401915.P13605026521420851889

`A121802(A286875(n+1))`
-/

namespace A401915.P13605026521420851889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121802 (A286875 (n + 1)).toNat

end

end A401915.P13605026521420851889

/-!
# A401917: a(n) = 1 if A347395(n) is even, and 0 if it is odd, where A347395 is the Dirichlet convolution of Liouville's lambda (A008836) with A342001.

The programs for A401917, the canonical program `A401917.P10147892513690949782` is in `Seq.B006.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A401917 has offset 1).

The definition of A401917 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A401917.P10147892513690949782

`A059841(A347395(n+1))`

The canonical program, it is in `Seq.B006.C002`.
-/

namespace A401917

/-- `A059841(A347395(n+1))` -/
def P10147892513690949782.Spec : Prop :=
  ∀ n, P10147892513690949782.a n = A401917 (n + 1)

theorem P10147892513690949782.correct : P10147892513690949782.Spec := by
  intro n
  simp only [A401917, Nat.add_sub_cancel]

end A401917

/-! ## A401917.P9121621366931365223

`Δ[fp[A401918(n+1)]]`
-/

namespace A401917.P9121621366931365223
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A401918 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (n : ℤ) < f2 j) 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A401917.P9121621366931365223

namespace A401917

/-- `Δ[fp[A401918(n+1)]]` -/
def P9121621366931365223.Spec : Prop :=
  ∀ n, P9121621366931365223.a n = A401917 (n + 1)

end A401917

/-! ## A401917.P14195738382201210892

`and(A195053(n+1), A202025(n+1))`
-/

namespace A401917.P14195738382201210892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A195053 (n + 1)) (A202025 (n + 1))

end

end A401917.P14195738382201210892

namespace A401917

/-- `and(A195053(n+1), A202025(n+1))` -/
def P14195738382201210892.Spec : Prop :=
  ∀ n, P14195738382201210892.a n = A401917 (n + 1)

end A401917

/-! ## A401917.P13013699542484854033

`and(A202025(n+1), A356163(n+1))`
-/

namespace A401917.P13013699542484854033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A202025 (n + 1)) (A356163 (n + 1))

end

end A401917.P13013699542484854033

namespace A401917

/-- `and(A202025(n+1), A356163(n+1))` -/
def P13013699542484854033.Spec : Prop :=
  ∀ n, P13013699542484854033.a n = A401917 (n + 1)

end A401917

/-! ## A401917.P7408236555504856845

`and(A176137(n), A340635(n+1))`
-/

namespace A401917.P7408236555504856845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A176137 n) (A340635 (n + 1))

end

end A401917.P7408236555504856845

namespace A401917

/-- `and(A176137(n), A340635(n+1))` -/
def P7408236555504856845.Spec : Prop :=
  ∀ n, P7408236555504856845.a n = A401917 (n + 1)

end A401917

/-!
# A401918: Numbers k for which A347395(k) is even, where A347395 is the Dirichlet convolution of Liouville's lambda (A008836) with A342001.

The programs for A401918, the canonical program `A401918.P547971025018737801` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A401918 has offset 1).

The definition of A401918 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6283 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A401918.P14131839310727785447

`filter[A089088(n), A401917(#)]`
-/

namespace A401918.P14131839310727785447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A401917 (f1 j).toNat = 1) n)

end

end A401918.P14131839310727785447

namespace A401918

/-- `filter[A089088(n), A401917(#)]` -/
def P14131839310727785447.Spec : Prop :=
  ∀ n, P14131839310727785447.a n = A401918 (n + 1)

end A401918

/-! ## A401918.P547971025018737801

`filter[A018252(n+1), A401917(#)]`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A401918

/-- `filter[A018252(n+1), A401917(#)]` -/
def P547971025018737801.Spec : Prop :=
  ∀ n, P547971025018737801.a n = A401918 (n + 1)

theorem P547971025018737801.correct : P547971025018737801.Spec := by
  intro n
  simp only [A401918, Nat.add_sub_cancel]

end A401918

/-! ## A401918.P12941357956430098188

`filter[A056653(n+1), A401917(#)]`
-/

namespace A401918.P12941357956430098188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056653 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A401917 (f1 j).toNat = 1) n)

end

end A401918.P12941357956430098188

namespace A401918

/-- `filter[A056653(n+1), A401917(#)]` -/
def P12941357956430098188.Spec : Prop :=
  ∀ n, P12941357956430098188.a n = A401918 (n + 1)

end A401918

/-! ## A401918.P15047887589866903910

`filter[A065090(n+1), A401917(#)]`
-/

namespace A401918.P15047887589866903910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065090 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A401917 (f1 j).toNat = 1) n)

end

end A401918.P15047887589866903910

namespace A401918

/-- `filter[A065090(n+1), A401917(#)]` -/
def P15047887589866903910.Spec : Prop :=
  ∀ n, P15047887589866903910.a n = A401918 (n + 1)

end A401918

/-! ## A401918.P14892766244963817809

`filter[A073899(n+1), A401917(#)]`
-/

namespace A401918.P14892766244963817809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073899 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A401917 (f1 j).toNat = 1) n)

end

end A401918.P14892766244963817809

namespace A401918

/-- `filter[A073899(n+1), A401917(#)]` -/
def P14892766244963817809.Spec : Prop :=
  ∀ n, P14892766244963817809.a n = A401918 (n + 1)

end A401918

/-! ## A401918.P8587729775197088909

`filter[A073900(n+1), A401917(#)]`
-/

namespace A401918.P8587729775197088909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073900 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A401917 (f1 j).toNat = 1) n)

end

end A401918.P8587729775197088909

namespace A401918

/-- `filter[A073900(n+1), A401917(#)]` -/
def P8587729775197088909.Spec : Prop :=
  ∀ n, P8587729775197088909.a n = A401918 (n + 1)

end A401918

/-! ## A401918.P11745594926418875878

`filter[A084408(n+1), A401917(#)]`
-/

namespace A401918.P11745594926418875878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084408 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A401917 (f1 j).toNat = 1) n)

end

end A401918.P11745594926418875878

namespace A401918

/-- `filter[A084408(n+1), A401917(#)]` -/
def P11745594926418875878.Spec : Prop :=
  ∀ n, P11745594926418875878.a n = A401918 (n + 1)

end A401918

/-! ## A401918.P596044664067560142

`filter[A077157(n), A401917(#)]`
-/

namespace A401918.P596044664067560142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A401917 (f1 j).toNat = 1) n)

end

end A401918.P596044664067560142

namespace A401918

/-- `filter[A077157(n), A401917(#)]` -/
def P596044664067560142.Spec : Prop :=
  ∀ n, P596044664067560142.a n = A401918 (n + 1)

end A401918

/-! ## A401918.P4761256320114877581

`filter[A073846(n+1), A401917(#)]`
-/

namespace A401918.P4761256320114877581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073846 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A401917 (f1 j).toNat = 1) n)

end

end A401918.P4761256320114877581

namespace A401918

/-- `filter[A073846(n+1), A401917(#)]` -/
def P4761256320114877581.Spec : Prop :=
  ∀ n, P4761256320114877581.a n = A401918 (n + 1)

end A401918

/-! ## A401918.P16326163736812641985

`filter[A077156(n), A401917(#)]`
-/

namespace A401918.P16326163736812641985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077156 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A401917 (f1 j).toNat = 1) n)

end

end A401918.P16326163736812641985

namespace A401918

/-- `filter[A077156(n), A401917(#)]` -/
def P16326163736812641985.Spec : Prop :=
  ∀ n, P16326163736812641985.a n = A401918 (n + 1)

end A401918

/-! ## A401918.P14066326740359358237

`filter[A083197(n+1), A401917(#)]`
-/

namespace A401918.P14066326740359358237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083197 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A401917 (f1 j).toNat = 1) n)

end

end A401918.P14066326740359358237

namespace A401918

/-- `filter[A083197(n+1), A401917(#)]` -/
def P14066326740359358237.Spec : Prop :=
  ∀ n, P14066326740359358237.a n = A401918 (n + 1)

end A401918

/-! ## A401918.P6813666526119289969

`filter[A082500(n+1), A401917(#)]`
-/

namespace A401918.P6813666526119289969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082500 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A401917 (f1 j).toNat = 1) n)

end

end A401918.P6813666526119289969

namespace A401918

/-- `filter[A082500(n+1), A401917(#)]` -/
def P6813666526119289969.Spec : Prop :=
  ∀ n, P6813666526119289969.a n = A401918 (n + 1)

end A401918

/-! ## A401918.P12684775073785589603

`filter[A096457(n+1), A401917(#)]`
-/

namespace A401918.P12684775073785589603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096457 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A401917 (f1 j).toNat = 1) n)

end

end A401918.P12684775073785589603

namespace A401918

/-- `filter[A096457(n+1), A401917(#)]` -/
def P12684775073785589603.Spec : Prop :=
  ∀ n, P12684775073785589603.a n = A401918 (n + 1)

end A401918

/-! ## A401918.P11614246970897272512

`filter[A096458(n+1), A401917(#)]`
-/

namespace A401918.P11614246970897272512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096458 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A401917 (f1 j).toNat = 1) n)

end

end A401918.P11614246970897272512

namespace A401918

/-- `filter[A096458(n+1), A401917(#)]` -/
def P11614246970897272512.Spec : Prop :=
  ∀ n, P11614246970897272512.a n = A401918 (n + 1)

end A401918

/-! ## A401918.P4015476447350084546

`filter[A085049(n+1), A401917(#)]`
-/

namespace A401918.P4015476447350084546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085049 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A401917 (f1 j).toNat = 1) n)

end

end A401918.P4015476447350084546

namespace A401918

/-- `filter[A085049(n+1), A401917(#)]` -/
def P4015476447350084546.Spec : Prop :=
  ∀ n, P4015476447350084546.a n = A401918 (n + 1)

end A401918

/-! ## A401918.P6495160537863447325

`filter[A154726(n+1), A401917(#)]`
-/

namespace A401918.P6495160537863447325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154726 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A401917 (f1 j).toNat = 1) n)

end

end A401918.P6495160537863447325

namespace A401918

/-- `filter[A154726(n+1), A401917(#)]` -/
def P6495160537863447325.Spec : Prop :=
  ∀ n, P6495160537863447325.a n = A401918 (n + 1)

end A401918

/-! ## A401918.P5634527338513093373

`filter[A026239(n+1), A401917(#)]`
-/

namespace A401918.P5634527338513093373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026239 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A401917 (f1 j).toNat = 1) n)

end

end A401918.P5634527338513093373

namespace A401918

/-- `filter[A026239(n+1), A401917(#)]` -/
def P5634527338513093373.Spec : Prop :=
  ∀ n, P5634527338513093373.a n = A401918 (n + 1)

end A401918

/-! ## A401918.P16877766363817404010

`filter[A373290(n+1), A401917(#)]`
-/

namespace A401918.P16877766363817404010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373290 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A401917 (f1 j).toNat = 1) n)

end

end A401918.P16877766363817404010

namespace A401918

/-- `filter[A373290(n+1), A401917(#)]` -/
def P16877766363817404010.Spec : Prop :=
  ∀ n, P16877766363817404010.a n = A401918 (n + 1)

end A401918

/-! ## A401918.P9098397058175664992

`filter[A026234(n+1), A401917(#)]`
-/

namespace A401918.P9098397058175664992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026234 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A401917 (f1 j).toNat = 1) n)

end

end A401918.P9098397058175664992

namespace A401918

/-- `filter[A026234(n+1), A401917(#)]` -/
def P9098397058175664992.Spec : Prop :=
  ∀ n, P9098397058175664992.a n = A401918 (n + 1)

end A401918

/-!
# A401919: a(n) = A276085(n) mod A007947(n), where A276085 is fully additive with a(p) = p#/p, and A007947 is squarefree kernel (rad).

The programs for A401919, the canonical program `A401919.P14921605172644302542` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A401919 has offset 1).

The definition of A401919 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A276085, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A401919.P14921605172644302542

`A276085(n+1)%A007947(n+1)`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A401919

/-- `A276085(n+1)%A007947(n+1)` -/
def P14921605172644302542.Spec : Prop :=
  ∀ n, P14921605172644302542.a n = A401919 (n + 1)

theorem P14921605172644302542.correct : P14921605172644302542.Spec := by
  intro n
  simp only [A401919, Nat.add_sub_cancel]

end A401919

/-!
# A401921: Position of the first occurrence of n in A342001.

The programs for A401921, the canonical program `A401921.P16439554682903368677` is in `Seq.B005.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A401921 has offset 0).

The definition of A401921 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 245 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A401921.P16439554682903368677

`fo[A342001(n+1)]+1`

The canonical program, it is in `Seq.B005.C003`.
-/

namespace A401921

/-- `fo[A342001(n+1)]+1` -/
def P16439554682903368677.Spec : Prop :=
  ∀ n, (P16439554682903368677.a n : ℤ) = A401921 n

theorem P16439554682903368677.correct : P16439554682903368677.Spec := by
  intro n
  simp only [A401921]

end A401921

/-!
# A401922: Position of the first occurrence of n in A342002.

The programs for A401922, there is no canonical definition to state claims against.
-/

/-! ## A401922.P12997659277881623311

`fo[A342002(n)]`
-/

namespace A401922.P12997659277881623311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342002 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (n : ℤ)) 0

end

end A401922.P12997659277881623311

/-!
# A401925: Lexicographically earliest infinite sequence such that a(i) = a(j) => A401924(i) = A401924(j), for all i, j >= 1, where A401924(n) = -p if n is a prime power of the form p^k, k >= 1, otherwise A401924(n) is the position of n in A361102, numbers that are not prime powers.

The programs for A401925, there is no canonical definition to state claims against.
-/

/-! ## A401925.P12878935910037795970

`A295280(A085818(n+1))`
-/

namespace A401925.P12878935910037795970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295280 (A085818 (n + 1)).toNat

end

end A401925.P12878935910037795970

/-! ## A401925.P11354984269554524969

`A085985(n+1)+1`
-/

namespace A401925.P11354984269554524969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085985 (n + 1) + 1

end

end A401925.P11354984269554524969

/-! ## A401925.P12846120633505927322

`A304492(A052410((n+1)²²))`
-/

namespace A401925.P12846120633505927322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304492 (A052410 (((n + 1) ^ 2) ^ 2)).toNat

end

end A401925.P12846120633505927322

/-!
# A401926: a(n) = A124859(A276086(n)), where A124859 is multiplicative with p^e -> primorial(e), and A276086 is the primorial base exp-function.

The programs for A401926, the canonical program `A401926.P808076150525910650` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A401926 has offset 0).

The definition of A401926 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A124859, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A401926.P12458207468106128038

`A124859(A278226(n))`
-/

namespace A401926.P12458207468106128038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124859 (A278226 n).toNat

end

end A401926.P12458207468106128038

namespace A401926

/-- `A124859(A278226(n))` -/
def P12458207468106128038.Spec : Prop :=
  ∀ n, P12458207468106128038.a n = A401926 n

end A401926

/-! ## A401926.P808076150525910650

`A124859(A276086(n))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A401926

/-- `A124859(A276086(n))` -/
def P808076150525910650.Spec : Prop :=
  ∀ n, P808076150525910650.a n = A401926 n

theorem P808076150525910650.correct : P808076150525910650.Spec := by
  intro n
  simp only [A401926]

end A401926

/-! ## A401926.P4405760173542348470

`A108951(A328835(n))`
-/

namespace A401926.P4405760173542348470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108951 (A328835 n).toNat

end

end A401926.P4405760173542348470

namespace A401926

/-- `A108951(A328835(n))` -/
def P4405760173542348470.Spec : Prop :=
  ∀ n, P4405760173542348470.a n = A401926 n

end A401926

/-! ## A401926.P8844981825015151128

`A278159(A277022(n))`
-/

namespace A401926.P8844981825015151128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278159 (A277022 n).toNat

end

end A401926.P8844981825015151128

namespace A401926

/-- `A278159(A277022(n))` -/
def P8844981825015151128.Spec : Prop :=
  ∀ n, P8844981825015151128.a n = A401926 n

end A401926

/-!
# A401927: a(n) = A108951(A328571(n)), where A108951 is fully multiplicative with a(p) = p# (A034386), and A328571(n) = A007947(A276086(n)), i.e., the squarefree kernel of the primorial base exp-function.

The programs for A401927, the canonical program `A401927.P17143892616351538426` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A401927 has offset 0).

The definition of A401927 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A108951, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A401927.P17143892616351538426

`A108951(A328571(n))`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A401927

/-- `A108951(A328571(n))` -/
def P17143892616351538426.Spec : Prop :=
  ∀ n, P17143892616351538426.a n = A401927 n

theorem P17143892616351538426.correct : P17143892616351538426.Spec := by
  intro n
  simp only [A401927]

end A401927

/-!
# A401928: Lexicographically earliest infinite sequence such that a(i) = a(j) => A328571(i) = A328571(j) for all i, j >= 0, where A328571(n) = A007947(A276086(n)), the squarefree kernel of the primorial base exp-function.

The programs for A401928, there is no canonical definition to state claims against.
-/

/-! ## A401928.P13598966878355175343

`A331309(A328571(n))`
-/

namespace A401928.P13598966878355175343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331309 (A328571 n).toNat

end

end A401928.P13598966878355175343

/-!
# A401934: a(n) = A276085(n) mod A083345(n), where A083345 is the numerator of the fully additive function with a(p) = 1/p, and A276085 is fully additive with a(p) = p#/p.

The programs for A401934, the canonical program `A401934.P9155567986873409358` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A401934 has offset 2).

The definition of A401934 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A276085, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A401934.P9155567986873409358

`A276085(n+2)%A083345(n+2)`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A401934

/-- `A276085(n+2)%A083345(n+2)` -/
def P9155567986873409358.Spec : Prop :=
  ∀ n, P9155567986873409358.a n = A401934 (n + 2)

theorem P9155567986873409358.correct : P9155567986873409358.Spec := by
  intro n
  simp only [A401934, Nat.add_sub_cancel]

end A401934

/-!
# A401936: Numerator of ratio 2*n*sigma(A003961(2*n)) / sigma(2*n)*A003961(2*n), where sigma is the sum of divisors of n, and A003961 shifts the prime factorization of n one step towards larger primes.

The programs for A401936, the canonical program `A401936.P12641626855241721071` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A401936 has offset 1).

The definition of A401936 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A341526, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A401936.P12641626855241721071

`A341526(2*(n+1))`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A401936

/-- `A341526(2*(n+1))` -/
def P12641626855241721071.Spec : Prop :=
  ∀ n, P12641626855241721071.a n = A401936 (n + 1)

theorem P12641626855241721071.correct : P12641626855241721071.Spec := by
  intro n
  simp only [A401936, Nat.add_sub_cancel]

end A401936

/-! ## A401936.P14226806851315497660

`A341528(2*(n+1))/A341530(2*(n+1))`
-/

namespace A401936.P14226806851315497660
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A341528 (2 * (n + 1)) : ℚ) / (A341530 (2 * (n + 1)) : ℚ)

end

end A401936.P14226806851315497660

namespace A401936

/-- `A341528(2*(n+1))/A341530(2*(n+1))` -/
def P14226806851315497660.Spec : Prop :=
  ∀ n, P14226806851315497660.a n = (A401936 (n + 1) : ℚ)

end A401936

/-! ## A401936.P793774041755260808

`A342664(A249734(n+1))`
-/

namespace A401936.P793774041755260808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342664 (A249734 (n + 1)).toNat

end

end A401936.P793774041755260808

namespace A401936

/-- `A342664(A249734(n+1))` -/
def P793774041755260808.Spec : Prop :=
  ∀ n, P793774041755260808.a n = A401936 (n + 1)

end A401936

/-! ## A401936.P2742320174131852694

`A341626(∑[n]+1)`
-/

namespace A401936.P2742320174131852694
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341626 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A401936.P2742320174131852694

namespace A401936

/-- `A341626(∑[n]+1)` -/
def P2742320174131852694.Spec : Prop :=
  ∀ n, P2742320174131852694.a n = A401936 (n + 1)

end A401936

/-!
# A401937: Denominator of ratio 2*n*sigma(A003961(2*n)) / sigma(2*n)*A003961(2*n), where sigma is the sum of divisors of n, and A003961 shifts the prime factorization of n one step towards larger primes.

The programs for A401937, the canonical program `A401937.P5621126651802657141` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A401937 has offset 1).

The definition of A401937 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A341527, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A401937.P5621126651802657141

`A341527(2*(n+1))`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A401937

/-- `A341527(2*(n+1))` -/
def P5621126651802657141.Spec : Prop :=
  ∀ n, P5621126651802657141.a n = A401937 (n + 1)

theorem P5621126651802657141.correct : P5621126651802657141.Spec := by
  intro n
  simp only [A401937, Nat.add_sub_cancel]

end A401937

/-! ## A401937.P17325614637800829970

`A341529(2*(n+1))/A341530(2*(n+1))`
-/

namespace A401937.P17325614637800829970
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A341529 (2 * (n + 1)) : ℚ) / (A341530 (2 * (n + 1)) : ℚ)

end

end A401937.P17325614637800829970

namespace A401937

/-- `A341529(2*(n+1))/A341530(2*(n+1))` -/
def P17325614637800829970.Spec : Prop :=
  ∀ n, P17325614637800829970.a n = (A401937 (n + 1) : ℚ)

end A401937

/-! ## A401937.P8600511713110525145

`A342663(A249734(n+1))`
-/

namespace A401937.P8600511713110525145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342663 (A249734 (n + 1)).toNat

end

end A401937.P8600511713110525145

namespace A401937

/-- `A342663(A249734(n+1))` -/
def P8600511713110525145.Spec : Prop :=
  ∀ n, P8600511713110525145.a n = A401937 (n + 1)

end A401937

/-! ## A401937.P9985358679309451533

`A341627(∑[n]+1)`
-/

namespace A401937.P9985358679309451533
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341627 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A401937.P9985358679309451533

namespace A401937

/-- `A341627(∑[n]+1)` -/
def P9985358679309451533.Spec : Prop :=
  ∀ n, P9985358679309451533.a n = A401937 (n + 1)

end A401937

/-!
# A401941: Largest m such that one defective in an m-item set and one in a disjoint 7-item set can always be identified in at most n adaptive tests, each returning the number of defectives in a selected subset (0 if no positive m is feasible).

The programs for A401941, the canonical program `A401941.P2048066233153413981` is in `Seq.B000.C051`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A401941 has offset 2).

The definition of A401941 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A401941.P2048066233153413981

`ogf((2x-4x^2+5x^3-3x^4+2x^5-x^9+3x^10-2x^11-2x^12+3x^13+4x^14-4x^15)/(1-5x+9x^2-7x^3+2x^4))`

The canonical program, it is in `Seq.B000.C051`.
-/

namespace A401941

/-- `ogf((2x-4x^2+5x^3-3x^4+2x^5-x^9+3x^10-2x^11-2x^12+3x^13+4x^14-4x^15)/(1-5x+9x^2-7x^3+2x^4))` -/
def P2048066233153413981.Spec : Prop :=
  ∀ n, P2048066233153413981.a n = A401941 (n + 2)

theorem P2048066233153413981.correct : P2048066233153413981.Spec := by
  intro n
  simp only [A401941, Nat.add_sub_cancel]

end A401941

/-!
# A401942: Largest m such that one defective in an m-item set and one in a disjoint 8-item set can always be identified in at most n adaptive tests, each returning the number of defectives in a selected subset (0 if no positive m is feasible).

The programs for A401942, the canonical program `A401942.P262636704600290227` is in `Seq.B000.C051`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A401942 has offset 2).

The definition of A401942 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A401942.P262636704600290227

`ogf((x+x^2+3x^5+2x^6+x^7-5x^8+3x^9+3x^10+7x^11-x^12-x^13-x^14-3x^15+2x^16)/(1-4x+5x^2-3x^3+4x^4-5x^5+2x^6))`

The canonical program, it is in `Seq.B000.C051`.
-/

namespace A401942

/-- `ogf((x+x^2+3x^5+2x^6+x^7-5x^8+3x^9+3x^10+7x^11-x^12-x^13-x^14-3x^15+2x^16)/(1-4x+5x^2-3x^3+4x^4-5x^5+2x^6))` -/
def P262636704600290227.Spec : Prop :=
  ∀ n, P262636704600290227.a n = A401942 (n + 2)

theorem P262636704600290227.correct : P262636704600290227.Spec := by
  intro n
  simp only [A401942, Nat.add_sub_cancel]

end A401942

/-! ## A401942.P14779354882473097757

`A054404(A274327(n))`
-/

namespace A401942.P14779354882473097757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054404 (A274327 n).toNat

end

end A401942.P14779354882473097757

namespace A401942

/-- `A054404(A274327(n))` -/
def P14779354882473097757.Spec : Prop :=
  ∀ n, P14779354882473097757.a n = A401942 (n + 2)

end A401942

/-!
# A401943: Primes of the form 3*k^2 - 3*k + 1 where k > 1 is a 3-smooth number.

The programs for A401943, there is no canonical definition to state claims against.
-/

/-! ## A401943.P15163961292915935916

`A003215(A401944(n+1)-1)`
-/

namespace A401943.P15163961292915935916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003215 (A401944 (n + 1) - 1).toNat

end

end A401943.P15163961292915935916

/-!
# A401944: 3-smooth numbers k > 1 such that 3*k^2 - 3*k + 1 is prime.

The programs for A401944, there is no canonical definition to state claims against.
-/

/-! ## A401944.P4134698496844480161

`∩[A002504(n+1), A003586(n+1)]`
-/

namespace A401944.P4134698496844480161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002504 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003586 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A401944.P4134698496844480161

/-! ## A401944.P15465335568981317748

`filter[A002504(n+1), A065333(#)]`
-/

namespace A401944.P15465335568981317748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002504 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A065333 (f1 j).toNat = 1) n)

end

end A401944.P15465335568981317748

/-! ## A401944.P10005204017082104661

`filter[A133431(n+2), A065333(#)]`
-/

namespace A401944.P10005204017082104661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133431 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A065333 (f1 j).toNat = 1) n)

end

end A401944.P10005204017082104661

/-!
# A401947: Irregular triangle read by rows: T(n,k) is the number of k-element sets of line sizes that can arise from configurations of n distinct points in the real plane, for n >= 1 and 0 <= k <= floor(sqrt(4*n+3)) - 2.

The programs for A401947, there is no canonical definition to state claims against.
-/

/-! ## A401947.P9584012151418028724

`A078089(A317327(n))`
-/

namespace A401947.P9584012151418028724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078089 (A317327 n).toNat

end

end A401947.P9584012151418028724

/-! ## A401947.P11326252972058376349

`A270740(A352838(n))`
-/

namespace A401947.P11326252972058376349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270740 (A352838 n).toNat

end

end A401947.P11326252972058376349

/-! ## A401947.P8066300404690598465

`A333815(A217261(n+1))`
-/

namespace A401947.P8066300404690598465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333815 (A217261 (n + 1)).toNat

end

end A401947.P8066300404690598465

/-! ## A401947.P8595645894718777617

`A221168(A390118(n+1))`
-/

namespace A401947.P8595645894718777617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221168 (A390118 (n + 1)).toNat

end

end A401947.P8595645894718777617

/-! ## A401947.P12837983852689855726

`A026609(A090548(n+2))`
-/

namespace A401947.P12837983852689855726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026609 (A090548 (n + 2)).toNat

end

end A401947.P12837983852689855726

/-!
# A401948: Number of distinct sets of line sizes determined by n points in the real plane.

The programs for A401948, there is no canonical definition to state claims against.
-/

/-! ## A401948.P16290626406946526473

`A035963(n+1)`
-/

namespace A401948.P16290626406946526473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035963 (n + 1)

end

end A401948.P16290626406946526473

/-! ## A401948.P11378439249309040248

`A000196(A023548(n+1)-A002522(n))`
-/

namespace A401948.P11378439249309040248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A023548 (n + 1) - A002522 n).toNat

end

end A401948.P11378439249309040248

/-! ## A401948.P3096179924372182998

`A027336(n+1)`
-/

namespace A401948.P3096179924372182998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027336 (n + 1)

end

end A401948.P3096179924372182998

/-! ## A401948.P8853247963055576943

`A124943(∑[n]+1)`
-/

namespace A401948.P8853247963055576943
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124943 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A401948.P8853247963055576943

/-! ## A401948.P10037604531837072342

`A338555(A035950(n+1))`
-/

namespace A401948.P10037604531837072342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338555 (A035950 (n + 1)).toNat

end

end A401948.P10037604531837072342

/-!
# A401951: Number of labeled connected graphs with n vertices in which every edge belongs to a triangle.

The programs for A401951, there is no canonical definition to state claims against.
-/

/-! ## A401951.P4871004843330680301

`A349780(A033641(n+1))`
-/

namespace A401951.P4871004843330680301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349780 (A033641 (n + 1)).toNat

end

end A401951.P4871004843330680301

/-! ## A401951.P12884894844486992538

`A379309(n*A000009(2*n))`
-/

namespace A401951.P12884894844486992538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379309 ((n : ℤ) * A000009 (2 * n)).toNat

end

end A401951.P12884894844486992538

/-!
# A401952: Number of labeled 2-connected graphs with n vertices in which every edge belongs to a triangle.

The programs for A401952, there is no canonical definition to state claims against.
-/

/-! ## A401952.P14560230626721489299

`A397851(C(n+3, 6))`
-/

namespace A401952.P14560230626721489299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397851 (Nat.choose (n + 3) 6)

end

end A401952.P14560230626721489299

/-! ## A401952.P8032085948986691686

`A210718(A019456(n))`
-/

namespace A401952.P8032085948986691686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210718 (A019456 n).toNat

end

end A401952.P8032085948986691686

/-!
# A401953: Number of words of length 4*n over the alphabet [4] such that c(2) = c(3) = c(4), any prefix satisfies c(1) >= c(2), c(1) >= c(3), c(2) >= c(4), c(3) >= c(4), and (c(1) - c(4)) <= 2. Here c(i) is the number of occurrences of the letter i.

The programs for A401953, the canonical program `A401953.P11526694948262770859` is in `Seq.B000.C051`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A401953 has offset 0).

The definition of A401953 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A401953.P11526694948262770859

`ogf((1-13x-6x^2)/(1-15x-24x^2))`

The canonical program, it is in `Seq.B000.C051`.
-/

namespace A401953

/-- `ogf((1-13x-6x^2)/(1-15x-24x^2))` -/
def P11526694948262770859.Spec : Prop :=
  ∀ n, P11526694948262770859.a n = A401953 n

theorem P11526694948262770859.correct : P11526694948262770859.Spec := by
  intro n
  simp only [A401953]

end A401953

/-!
# A401961: Number of distinct binary words of length n obtained by reading equally spaced entries from left to right within a single row of Pascal's triangle modulo 2.

The programs for A401961, there is no canonical definition to state claims against.
-/

/-! ## A401961.P8857943453309182637

`A104103(A077835(n+1))`
-/

namespace A401961.P8857943453309182637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104103 (A077835 (n + 1)).toNat

end

end A401961.P8857943453309182637

/-! ## A401961.P13466415158063466785

`A109680(A164205(n+1))`
-/

namespace A401961.P13466415158063466785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109680 (A164205 (n + 1)).toNat

end

end A401961.P13466415158063466785

/-! ## A401961.P16987314126760097205

`A090792(2^n)-1`
-/

namespace A401961.P16987314126760097205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090792 (2 ^ n) - 1

end

end A401961.P16987314126760097205

/-!
# A401963: Period of row 2^m - 1 - n in the Laver table of size 2^m, for any m such that 2^m > n + 1.

The programs for A401963, there is no canonical definition to state claims against.
-/

/-! ## A401963.P8514335928936634699

`gcd(A131949(n), A193234(n))`
-/

namespace A401963.P8514335928936634699
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A131949 n) (A193234 n)

end

end A401963.P8514335928936634699

/-! ## A401963.P6818368882276035795

`gcd(A145109(n+1), A396198(n))`
-/

namespace A401963.P6818368882276035795
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A145109 (n + 1)) (A396198 n)

end

end A401963.P6818368882276035795

/-! ## A401963.P3934936420038838682

`A156260(A075426(n))`
-/

namespace A401963.P3934936420038838682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156260 (A075426 n).toNat

end

end A401963.P3934936420038838682

/-! ## A401963.P11616461525035671413

`A096776(A248591(n+1))`
-/

namespace A401963.P11616461525035671413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096776 (A248591 (n + 1)).toNat

end

end A401963.P11616461525035671413

/-! ## A401963.P12933223700547385862

`A090387(A333072(n+2))`
-/

namespace A401963.P12933223700547385862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090387 (A333072 (n + 2)).toNat

end

end A401963.P12933223700547385862

/-!
# A401964: a(n) with a(1) = 1, a(2*n) = a(2*n-1) + (2*n+1) and a(2*n+1) = a(2*n) - (n+1).

The programs for A401964, the canonical program `A401964.P10035881465254829424` is in `Seq.B000.C051`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A401964 has offset 1).

The definition of A401964 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A401964.P10035881465254829424

`ogf((1+3x-4x^2-x^3+2x^4)/(1-x-2x^2+2x^3+x^4-x^5))`

The canonical program, it is in `Seq.B000.C051`.
-/

namespace A401964

/-- `ogf((1+3x-4x^2-x^3+2x^4)/(1-x-2x^2+2x^3+x^4-x^5))` -/
def P10035881465254829424.Spec : Prop :=
  ∀ n, P10035881465254829424.a n = A401964 (n + 1)

theorem P10035881465254829424.correct : P10035881465254829424.Spec := by
  intro n
  simp only [A401964, Nat.add_sub_cancel]

end A401964

/-! ## A401964.P5393185736988667874

`a(n-1)+(1+(-1)^(n+1)*3)*(n+2)/4` with `a(0)=1`
-/

namespace A401964.P5393185736988667874
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + ((1 + (-1) ^ (n + 1) * 3) * (n + 2 : ℤ) : ℚ) / 4

end

end A401964.P5393185736988667874

namespace A401964

/-- `a(n-1)+(1+(-1)^(n+1)*3)*(n+2)/4` -/
def P5393185736988667874.Spec : Prop :=
  ∀ n, P5393185736988667874.a n = (A401964 (n + 1) : ℚ)

end A401964

/-! ## A401964.P10401582030170735820

`(2*(n+1)*(n+4)+23+(-1)^(n+1)*(6*(n+1)+9))/16`
-/

namespace A401964.P10401582030170735820
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 * (n + 1) * (n + 4) + 23 : ℤ) + (-1) ^ (n + 1) * (6 * (n + 1) + 9 : ℤ) : ℚ) / 16

end

end A401964.P10401582030170735820

namespace A401964

/-- `(2*(n+1)*(n+4)+23+(-1)^(n+1)*(6*(n+1)+9))/16` -/
def P10401582030170735820.Spec : Prop :=
  ∀ n, P10401582030170735820.a n = (A401964 (n + 1) : ℚ)

end A401964

/-! ## A401964.P11391700580304173564

`a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` with `a(0)=1, a(1)=4, a(2)=2, a(3)=7, a(4)=4`
-/

namespace A401964.P11391700580304173564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4, 2, 7, 4] fun n a =>
  a (n - 1) + 2 * a (n - 2) - 2 * a (n - 3) - a (n - 4) + a (n - 5)

end

end A401964.P11391700580304173564

namespace A401964

/-- `a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` -/
def P11391700580304173564.Spec : Prop :=
  ∀ n, P11391700580304173564.a n = A401964 (n + 1)

end A401964

/-! ## A401964.P6403647927096123153

`∑[-(∑[n+1]/a(n-1))]` with `a(0)=1, a(1)=3`
-/

namespace A401964.P6403647927096123153
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 3] fun n f1 =>
  -(((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℚ) / f1 (n - 1))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A401964.P6403647927096123153

namespace A401964

/-- `∑[-(∑[n+1]/a(n-1))]` -/
def P6403647927096123153.Spec : Prop :=
  ∀ n, P6403647927096123153.a n = (A401964 (n + 1) : ℚ)

end A401964

/-! ## A401964.P13193390241224687977

`∑[(∑[n]-(n+1)²)/a(n-1)]` with `a(0)=1, a(1)=3`
-/

namespace A401964.P13193390241224687977
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 3] fun n f1 =>
  (((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - ((n + 1) ^ 2 : ℤ) : ℚ) / f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A401964.P13193390241224687977

namespace A401964

/-- `∑[(∑[n]-(n+1)²)/a(n-1)]` -/
def P13193390241224687977.Spec : Prop :=
  ∀ n, P13193390241224687977.a n = (A401964 (n + 1) : ℚ)

end A401964

/-! ## A401964.P9937342315816632632

`a(n-1)-(n+2)/Δ[n+3-a(n-1)]` with `a(0)=1`
-/

namespace A401964.P9937342315816632632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  (n + 3 : ℤ) - f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) - (n + 2 : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A401964.P9937342315816632632

namespace A401964

/-- `a(n-1)-(n+2)/Δ[n+3-a(n-1)]` -/
def P9937342315816632632.Spec : Prop :=
  ∀ n, P9937342315816632632.a n = (A401964 (n + 1) : ℚ)

end A401964

/-! ## A401964.P16423609592092075557

`a(n-3)+a(n-2)+n+1-a(n-1)` with `a(0)=1, a(1)=4, a(2)=2`
-/

namespace A401964.P16423609592092075557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4, 2] fun n a =>
  a (n - 3) + a (n - 2) + (n + 1 : ℤ) - a (n - 1)

end

end A401964.P16423609592092075557

namespace A401964

/-- `a(n-3)+a(n-2)+n+1-a(n-1)` -/
def P16423609592092075557.Spec : Prop :=
  ∀ n, P16423609592092075557.a n = A401964 (n + 1)

end A401964

/-! ## A401964.P9400765800342947760

`1+A008795(n+1)`
-/

namespace A401964.P9400765800342947760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A008795 (n + 1)

end

end A401964.P9400765800342947760

namespace A401964

/-- `1+A008795(n+1)` -/
def P9400765800342947760.Spec : Prop :=
  ∀ n, P9400765800342947760.a n = A401964 (n + 1)

end A401964

/-! ## A401964.P16355694329011986011

`A000124(A030451(n))`
-/

namespace A401964.P16355694329011986011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 (A030451 n).toNat

end

end A401964.P16355694329011986011

namespace A401964

/-- `A000124(A030451(n))` -/
def P16355694329011986011.Spec : Prop :=
  ∀ n, P16355694329011986011.a n = A401964 (n + 1)

end A401964

/-! ## A401964.P11559180065023837006

`A152947(A060762(n+1))`
-/

namespace A401964.P11559180065023837006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152947 (A060762 (n + 1)).toNat

end

end A401964.P11559180065023837006

namespace A401964

/-- `A152947(A060762(n+1))` -/
def P11559180065023837006.Spec : Prop :=
  ∀ n, P11559180065023837006.a n = A401964 (n + 1)

end A401964

/-! ## A401964.P16435033415153535853

`A316671(n+1)-A001318(n)`
-/

namespace A401964.P16435033415153535853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316671 (n + 1) - A001318 n

end

end A401964.P16435033415153535853

namespace A401964

/-- `A316671(n+1)-A001318(n)` -/
def P16435033415153535853.Spec : Prop :=
  ∀ n, P16435033415153535853.a n = A401964 (n + 1)

end A401964

/-! ## A401964.P6483691692808630814

`A111710(n+1)-A359329(n+3)`
-/

namespace A401964.P6483691692808630814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111710 (n + 1) - A359329 (n + 3)

end

end A401964.P6483691692808630814

namespace A401964

/-- `A111710(n+1)-A359329(n+3)` -/
def P6483691692808630814.Spec : Prop :=
  ∀ n, P6483691692808630814.a n = A401964 (n + 1)

end A401964

/-! ## A401964.P17197188534483674712

`Δ[A053307(n)]+1`
-/

namespace A401964.P17197188534483674712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053307 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A401964.P17197188534483674712

namespace A401964

/-- `Δ[A053307(n)]+1` -/
def P17197188534483674712.Spec : Prop :=
  ∀ n, P17197188534483674712.a n = A401964 (n + 1)

end A401964

/-! ## A401964.P10079915448941423398

`A000217(A028242(n+1))+1`
-/

namespace A401964.P10079915448941423398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A028242 (n + 1)).toNat + 1

end

end A401964.P10079915448941423398

namespace A401964

/-- `A000217(A028242(n+1))+1` -/
def P10079915448941423398.Spec : Prop :=
  ∀ n, P10079915448941423398.a n = A401964 (n + 1)

end A401964

/-! ## A401964.P4075457585372842426

`A008805(n+1)+A008805(n+1)-A101881(n)`
-/

namespace A401964.P4075457585372842426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008805 (n + 1) + A008805 (n + 1) - A101881 n

end

end A401964.P4075457585372842426

namespace A401964

/-- `A008805(n+1)+A008805(n+1)-A101881(n)` -/
def P4075457585372842426.Spec : Prop :=
  ∀ n, P4075457585372842426.a n = A401964 (n + 1)

end A401964

/-! ## A401964.P8196620847622492824

`A106247(A168232(n+2))`
-/

namespace A401964.P8196620847622492824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106247 (A168232 (n + 2)).toNat

end

end A401964.P8196620847622492824

namespace A401964

/-- `A106247(A168232(n+2))` -/
def P8196620847622492824.Spec : Prop :=
  ∀ n, P8196620847622492824.a n = A401964 (n + 1)

end A401964

/-! ## A401964.P10007299114646461221

`A000217(A246552(2*n+1))+1`
-/

namespace A401964.P10007299114646461221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A246552 (2 * n + 1)).toNat + 1

end

end A401964.P10007299114646461221

namespace A401964

/-- `A000217(A246552(2*n+1))+1` -/
def P10007299114646461221.Spec : Prop :=
  ∀ n, P10007299114646461221.a n = A401964 (n + 1)

end A401964

/-! ## A401964.P16278079874192629823

`A004482(A008795(n+1))`
-/

namespace A401964.P16278079874192629823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004482 (A008795 (n + 1)).toNat

end

end A401964.P16278079874192629823

namespace A401964

/-- `A004482(A008795(n+1))` -/
def P16278079874192629823.Spec : Prop :=
  ∀ n, P16278079874192629823.a n = A401964 (n + 1)

end A401964

/-! ## A401964.P11495455700338225671

`A027656(A110660(n+1))+A027656(n+1)`
-/

namespace A401964.P11495455700338225671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027656 (A110660 (n + 1)).toNat + A027656 (n + 1)

end

end A401964.P11495455700338225671

namespace A401964

/-- `A027656(A110660(n+1))+A027656(n+1)` -/
def P11495455700338225671.Spec : Prop :=
  ∀ n, P11495455700338225671.a n = A401964 (n + 1)

end A401964

/-!
# A401965: a(n) is the smallest number k such that 2*(k+n) = sigma(k) + n*tau(k).

The programs for A401965, there is no canonical definition to state claims against.
-/

/-! ## A401965.P6139416153866949369

`A398713(∑[n+1]+1)`
-/

namespace A401965.P6139416153866949369
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398713 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A401965.P6139416153866949369

/-!
# A401967: a(n) = n!^2 / 2^(n - A000120(n)).

The programs for A401967, the canonical program `A401967.P9455221643257520614` is in `Seq.B002.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A401967 has offset 0).

The definition of A401967 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A401967.P9455221643257520614

`n!²/2^(n-A000120(n))`

The canonical program, it is in `Seq.B002.C008`.
-/

namespace A401967

/-- `n!²/2^(n-A000120(n))` -/
def P9455221643257520614.Spec : Prop :=
  ∀ n, P9455221643257520614.a n = (A401967 n : ℚ)

end A401967

/-! ## A401967.P14228543357134689330

`gcd(n!, ∏[2*n+1])*n!`
-/

namespace A401967.P14228543357134689330
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (Nat.factorial n) (∏ j ∈ Finset.range (n + 1), f1 j) * Nat.factorial n

end

end A401967.P14228543357134689330

namespace A401967

/-- `gcd(n!, ∏[2*n+1])*n!` -/
def P14228543357134689330.Spec : Prop :=
  ∀ n, (P14228543357134689330.a n : ℤ) = A401967 n

end A401967

/-! ## A401967.P817024387660015003

`A000142(n)*A049606(n)`
-/

namespace A401967.P817024387660015003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A049606 n

end

end A401967.P817024387660015003

namespace A401967

/-- `A000142(n)*A049606(n)` -/
def P817024387660015003.Spec : Prop :=
  ∀ n, P817024387660015003.a n = A401967 n

end A401967

/-! ## A401967.P8216890882586324932

`A000142(n)²/A060818(n)`
-/

namespace A401967.P8216890882586324932
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 n ^ 2 : ℚ) / (A060818 n : ℚ)

end

end A401967.P8216890882586324932

namespace A401967

/-- `A000142(n)²/A060818(n)` -/
def P8216890882586324932.Spec : Prop :=
  ∀ n, P8216890882586324932.a n = (A401967 n : ℚ)

end A401967

/-!
# A401968: a(n) = denominator(r(n)), where r(n) = euler(2*n-3, 1)*(1-n)/(1-2^(2*n-1)) for n >= 2, r(1) = 1/2.

The programs for A401968, there is no canonical definition to state claims against.
-/

/-! ## A401968.P12713070303543643274

`A401970(Δ[n²])`
-/

namespace A401968.P12713070303543643274
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A401970 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A401968.P12713070303543643274

/-! ## A401968.P10721446079077059654

`filter[A401970(n), A116178(#)]`
-/

namespace A401968.P10721446079077059654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A401970 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A116178 (f1 j).toNat = 1) n)

end

end A401968.P10721446079077059654

/-! ## A401968.P3746314366310799997

`filter[A401970(n), A120325(#)]`
-/

namespace A401968.P3746314366310799997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A401970 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A120325 (f1 j).toNat = 1) n)

end

end A401968.P3746314366310799997

/-! ## A401968.P6551156578142452291

`filter[A401970(n), A182582(#)]`
-/

namespace A401968.P6551156578142452291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A401970 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A182582 (f1 j).toNat = 1) n)

end

end A401968.P6551156578142452291

/-!
# A401970: a(n) = denominator(b(n)), where b(n) = (-1)^m * 2*m * (2^(2*m) - 1)*zeta(1 - 2*m) / (2^n - 1), for n >= 2, and m = floor(n/2). b(0) = 1, b(1) = 1/2.

The programs for A401970, there is no canonical definition to state claims against.
-/

/-! ## A401970.P13678197240191978960

`∏{p}[A193473(n), #]`
-/

namespace A401970.P13678197240191978960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193473 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A401970.P13678197240191978960

/-! ## A401970.P10093039668824770112

`∏{p}[A342319(n), #]`
-/

namespace A401970.P10093039668824770112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342319 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A401970.P10093039668824770112

/-! ## A401970.P7674412861953455207

`A007947(A271061(n))`
-/

namespace A401970.P7674412861953455207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A271061 n).toNat

end

end A401970.P7674412861953455207

/-!
# A401972: Minimum possible size of a maximum cut in a triangle-free simple graph with n edges.

The programs for A401972, there is no canonical definition to state claims against.
-/

/-! ## A401972.P5341862427968089078

`floor(∑[cos(cos(∑[(n+1)²²]))])`
-/

namespace A401972.P5341862427968089078
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2) ^ 2

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cos (Real.cos ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A401972.P5341862427968089078

/-! ## A401972.P8959696398098412762

`A336112(A352077(n))`
-/

namespace A401972.P8959696398098412762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336112 (A352077 n).toNat

end

end A401972.P8959696398098412762

/-! ## A401972.P806691343341291931

`A000201(n+1)-A329548(n+1)`
-/

namespace A401972.P806691343341291931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000201 (n + 1) - A329548 (n + 1)

end

end A401972.P806691343341291931

/-! ## A401972.P408340539669862044

`A292644(n+1)-A329548(n+1)`
-/

namespace A401972.P408340539669862044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292644 (n + 1) - A329548 (n + 1)

end

end A401972.P408340539669862044

/-! ## A401972.P2133865650608064439

`A330063(n+1)-A329548(n+1)`
-/

namespace A401972.P2133865650608064439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330063 (n + 1) - A329548 (n + 1)

end

end A401972.P2133865650608064439

/-!
# A401974: Numbers k such that the k-th composition in standard order has unequal first and last parts.

The programs for A401974, there is no canonical definition to state claims against.
-/

/-! ## A401974.P8858381797773121294

`eq[A015526(n), A333382(n)]`
-/

namespace A401974.P8858381797773121294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015526 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333382 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A401974.P8858381797773121294

/-! ## A401974.P6719251509337070647

`eq[A161618(n+1), A333382(n)]`
-/

namespace A401974.P6719251509337070647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161618 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333382 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A401974.P6719251509337070647

/-! ## A401974.P5349646278755817314

`eq[A291168(n), A333382(n)]`
-/

namespace A401974.P5349646278755817314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291168 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333382 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A401974.P5349646278755817314

/-! ## A401974.P12922893978575487879

`eq[A333382(n), A363749(n)]`
-/

namespace A401974.P12922893978575487879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333382 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363749 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A401974.P12922893978575487879

/-! ## A401974.P1261240219605914251

`eq[A136640(n+1), A333382(n)]`
-/

namespace A401974.P1261240219605914251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136640 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333382 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A401974.P1261240219605914251

/-!
# A401979: Number of tilings of a strip of length n using squares (length 1) and dominoes (length 2) such that the number of dominoes is a Fibonacci number.

The programs for A401979, the canonical program `A401979.P11378696931870036672` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A401979 has offset 0).

The definition of A401979 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 408 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A401979.P11378696931870036672

`∑{#}[floor(n/2), C(n-#, #)*A010056(#)]`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A401979

/-- `∑{#}[floor(n/2), C(n-#, #)*A010056(#)]` -/
def P11378696931870036672.Spec : Prop :=
  ∀ n, P11378696931870036672.a n = A401979 n

theorem P11378696931870036672.correct : P11378696931870036672.Spec := by
  intro n
  simp only [A401979]

end A401979

/-! ## A401979.P15336569452426352584

`A252649(A213709(n))`
-/

namespace A401979.P15336569452426352584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252649 (A213709 n).toNat

end

end A401979.P15336569452426352584

namespace A401979

/-- `A252649(A213709(n))` -/
def P15336569452426352584.Spec : Prop :=
  ∀ n, P15336569452426352584.a n = A401979 n

end A401979

/-! ## A401979.P7214035246983875891

`A364274(A181600(n))`
-/

namespace A401979.P7214035246983875891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364274 (A181600 n).toNat

end

end A401979.P7214035246983875891

namespace A401979

/-- `A364274(A181600(n))` -/
def P7214035246983875891.Spec : Prop :=
  ∀ n, P7214035246983875891.a n = A401979 n

end A401979

/-! ## A401979.P13372303222085641455

`A351115(A121956(n+1))`
-/

namespace A401979.P13372303222085641455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351115 (A121956 (n + 1)).toNat

end

end A401979.P13372303222085641455

namespace A401979

/-- `A351115(A121956(n+1))` -/
def P13372303222085641455.Spec : Prop :=
  ∀ n, P13372303222085641455.a n = A401979 n

end A401979

/-!
# A401984: Triangle read by rows: Riordan array ( 1/(1 + 2*x + 3*x^2), x/(1 + 2*x + 3*x^2) ).

The programs for A401984, the canonical program `A401984.P10170782051611890604` is in `Seq.B000.C051`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A401984 has offset 0).

The definition of A401984 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A401984.P10170782051611890604

`T(n-1,k-1)-(T(n-2,k)+2*(T(n-2,k)+T(n-1,k)))` with `a(0)=1`

The canonical program, it is in `Seq.B000.C051`.
-/

namespace A401984

/-- `T(n-1,k-1)-(T(n-2,k)+2*(T(n-2,k)+T(n-1,k)))` -/
def P10170782051611890604.Spec : Prop :=
  ∀ n, P10170782051611890604.a n = A401984 n

theorem P10170782051611890604.correct : P10170782051611890604.Spec := by
  intro n
  simp only [A401984]

end A401984

/-! ## A401984.P16356730791113663525

`T(n-1,k-1)-2*T(n-1,k)-T(n-2,k)-2*T(n-2,k)` with `a(0)=1`
-/

namespace A401984.P16356730791113663525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.triUpLeft a n - 2 * SequenceMachineLib.triUp a n - SequenceMachineLib.triUp2 a n - 2 * SequenceMachineLib.triUp2 a n

end

end A401984.P16356730791113663525

namespace A401984

/-- `T(n-1,k-1)-2*T(n-1,k)-T(n-2,k)-2*T(n-2,k)` -/
def P16356730791113663525.Spec : Prop :=
  ∀ n, P16356730791113663525.a n = A401984 n

end A401984

/-!
# A401985: Triangle read by rows: Riordan array ( (1 - 2*x - sqrt(1 - 4*x - 8*x^2))/(6*x^2), (1 - 2*x - sqrt(1 - 4*x - 8*x^2))/(6*x) ).

The programs for A401985, the canonical program `A401985.P6740903989099232752` is in `Seq.B000.C051`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A401985 has offset 0).

The definition of A401985 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9870 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A401985.P6740903989099232752

`T(n-1,k-1)+3*T(n-1,k+1)+2*T(n-1,k)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C051`.
-/

namespace A401985

/-- `T(n-1,k-1)+3*T(n-1,k+1)+2*T(n-1,k)` -/
def P6740903989099232752.Spec : Prop :=
  ∀ n, (P6740903989099232752.a n : ℤ) = A401985 n

theorem P6740903989099232752.correct : P6740903989099232752.Spec := by
  intro n
  simp only [A401985]

end A401985

/-!
# A401986: Row sums of the triangle A401985.

The programs for A401986, there is no canonical definition to state claims against.
-/

/-! ## A401986.P6399719332213516526

`∑{#}[n, C(n, #)*A151292(#)]`
-/

namespace A401986.P6399719332213516526
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.choose n k : ℤ) * A151292 k

end

end A401986.P6399719332213516526

/-!
# A401990: Position of records in A401489: integers m whose number of divisors d that are brilliant sets a new record.

The programs for A401990, there is no canonical definition to state claims against.
-/

/-! ## A401990.P120615724076895301

`A401490(A048311(n))`
-/

namespace A401990.P120615724076895301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A401490 (A048311 n).toNat

end

end A401990.P120615724076895301

/-!
# A401999: Array read by antidiagonals: T(n,k) is the number of free k-celled polyominoes that do not contain a copy of the free quasi-polyomino with binary code A401998(n), n >= 2, k >= 1.

The programs for A401999, there is no canonical definition to state claims against.
-/

/-! ## A401999.P10490801754159970236

`and(A129201(n), A316675(n))`
-/

namespace A401999.P10490801754159970236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A129201 n) (A316675 n)

end

end A401999.P10490801754159970236

/-! ## A401999.P11307402975218638871

`and(A089540(n+1), A316675(n))`
-/

namespace A401999.P11307402975218638871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A089540 (n + 1)) (A316675 n)

end

end A401999.P11307402975218638871

/-! ## A401999.P5534260379259162233

`and(A276132(n+1), A316675(n))`
-/

namespace A401999.P5534260379259162233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A276132 (n + 1)) (A316675 n)

end

end A401999.P5534260379259162233

/-! ## A401999.P13143518615060900695

`and(A316675(n), A346591(n+1))`
-/

namespace A401999.P13143518615060900695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A316675 n) (A346591 (n + 1))

end

end A401999.P13143518615060900695

/-! ## A401999.P8363946661465462854

`and(A316675(n), A378697(n+1))`
-/

namespace A401999.P8363946661465462854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A316675 n) (A378697 (n + 1))

end

end A401999.P8363946661465462854

