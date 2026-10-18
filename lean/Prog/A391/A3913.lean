import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
import Seq.B007.C001
import Seq.B007.C002
import Seq.B008.C001
import Seq.B009.C000
import Seq.B009.C001
import Seq.B010.C000
import Seq.B011.C000
import Seq.B011.C001
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
# A391300: Expansion of g^2/(1 + x^3*g^3), where g = 1+x*g^3 is the g.f. of A001764.

The programs for A391300, there is no canonical definition to state claims against.
-/

/-! ## A391300.P18253956011932069243

`A360102(n)-A360118(A003046(n))`
-/

namespace A391300.P18253956011932069243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360102 n - A360118 (A003046 n).toNat

end

end A391300.P18253956011932069243

/-!
# A391301: Expansion of g^2/(1 + x^2*g^4), where g = 1+x*g^3 is the g.f. of A001764.

The programs for A391301, there is no canonical definition to state claims against.
-/

/-! ## A391301.P11137286947275680316

`A247911(A243948(n))+A091848(2*n+3)`
-/

namespace A391301.P11137286947275680316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247911 (A243948 n).toNat + A091848 (2 * n + 3)

end

end A391301.P11137286947275680316

/-! ## A391301.P16514486836207059165

`A341123(n+5)+A060715(A080014(3*n))`
-/

namespace A391301.P16514486836207059165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341123 (n + 5) + A060715 (A080014 (3 * n)).toNat

end

end A391301.P16514486836207059165

/-!
# A391302: Expansion of g^2/(1 + x^3*g^4), where g = 1+x*g^3 is the g.f. of A001764.

The programs for A391302, there is no canonical definition to state claims against.
-/

/-! ## A391302.P10928605359455025923

`A006013(n)-A374638(A374618(n))`
-/

namespace A391302.P10928605359455025923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006013 n - A374638 (A374618 n).toNat

end

end A391302.P10928605359455025923

/-! ## A391302.P3271393191970457176

`A006013(n)-A374638(A374619(n))`
-/

namespace A391302.P3271393191970457176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006013 n - A374638 (A374619 n).toNat

end

end A391302.P3271393191970457176

/-!
# A391303: Expansion of g^2/(1 + x^4*g^4), where g = 1+x*g^3 is the g.f. of A001764.

The programs for A391303, there is no canonical definition to state claims against.
-/

/-! ## A391303.P9056664004921165659

`A006013(n)-A335446(A001710(n))`
-/

namespace A391303.P9056664004921165659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006013 n - A335446 (A001710 n).toNat

end

end A391303.P9056664004921165659

/-! ## A391303.P1709683722200059234

`A006013(n)-A239499(A272484(n+1))`
-/

namespace A391303.P1709683722200059234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006013 n - A239499 (A272484 (n + 1)).toNat

end

end A391303.P1709683722200059234

/-!
# A391306: Expansion of g/(1 + x^2*g^4), where g = 1+x*g^3 is the g.f. of A001764.

The programs for A391306, there is no canonical definition to state claims against.
-/

/-! ## A391306.P10425040482916324508

`A122651(∏[2*a(n-1)-a(n-2)])` with `a(0)=1, a(1)=1, a(2)=4, a(3)=6`
-/

namespace A391306.P10425040482916324508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 4, 6] fun n f1 =>
  2 * f1 (n - 1) - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122651 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A391306.P10425040482916324508

/-! ## A391306.P15872639729837384264

`A184242(A077851(n))`
-/

namespace A391306.P15872639729837384264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184242 (A077851 n).toNat

end

end A391306.P15872639729837384264

/-!
# A391307: Expansion of g^3/(1 + x^2*g^4), where g = 1+x*g^3 is the g.f. of A001764.

The programs for A391307, there is no canonical definition to state claims against.
-/

/-! ## A391307.P15641335639243207562

`A181807(A054447(n))`
-/

namespace A391307.P15641335639243207562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181807 (A054447 n).toNat

end

end A391307.P15641335639243207562

/-!
# A391309: Positive integers that cannot be represented as the difference of a triangular number and a square number.

The programs for A391309, there is no canonical definition to state claims against.
-/

/-! ## A391309.P1308745225223966054

`comp[A229118(n+1)]%A155629(n+2)`
-/

namespace A391309.P1308745225223966054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229118 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) (A155629 (n + 2))

end

end A391309.P1308745225223966054

/-! ## A391309.P7224226985856191870

`∩[A175034(n+1), A328792(n+1)]`
-/

namespace A391309.P7224226985856191870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175034 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328792 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391309.P7224226985856191870

/-! ## A391309.P12138645477122891009

`comp[A229118(2*(n+1))]%A225321(2*n+3)`
-/

namespace A391309.P12138645477122891009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229118 (2 * (n + 1))

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) (A225321 (2 * n + 3))

end

end A391309.P12138645477122891009

/-!
# A391311: a(n) = Sum_{k=0..n} HurwitzZeta(k-n, k) - HurwitzZeta(k-n, n).

The programs for A391311, there is no canonical definition to state claims against.
-/

/-! ## A391311.P9747607872935196259

`2*A391313(n)`
-/

namespace A391311.P9747607872935196259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A391313 n

end

end A391311.P9747607872935196259

/-!
# A391313: a(n) = ( Sum_{k=0..n} HurwitzZeta(k-n, k) - HurwitzZeta(k-n, n) ) / 2.

The programs for A391313, there is no canonical definition to state claims against.
-/

/-! ## A391313.P12954137803636684622

`A391311(n)/2`
-/

namespace A391313.P12954137803636684622
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A391311 n : ℚ) / 2

end

end A391313.P12954137803636684622

/-! ## A391313.P1307713323449683000

`A141418(n+1)*A230980(A345258(n+1))`
-/

namespace A391313.P1307713323449683000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141418 (n + 1) * A230980 (A345258 (n + 1)).toNat

end

end A391313.P1307713323449683000

/-!
# A391315: Number of 1324-avoiding permutations of [n] in which the largest element is not in the final position.

The programs for A391315, there is no canonical definition to state claims against.
-/

/-! ## A391315.P9035311091040367445

`A061552(n+1)-A000108(n)`
-/

namespace A391315.P9035311091040367445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061552 (n + 1) - A000108 n

end

end A391315.P9035311091040367445

/-! ## A391315.P5152113169453124690

`record[Δ[A395725(n+1)]]`
-/

namespace A391315.P5152113169453124690
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395725 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A391315.P5152113169453124690

/-!
# A391318: Triangle array read by rows: T(n,k) = T(n-1,k) + T(n-1,k-1) + T(n-2,k-1) + 1 with T(0,0) = T(n,-1) = T(n,n+1) = 0.

The programs for A391318, there is no canonical definition to state claims against.
-/

/-! ## A391318.P15061409354765990485

`A047662(n+1)-A008288(n)`
-/

namespace A391318.P15061409354765990485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047662 (n + 1) - A008288 n

end

end A391318.P15061409354765990485

/-! ## A391318.P6516202508203476710

`A047666(n+1)-A108350(n)`
-/

namespace A391318.P6516202508203476710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047666 (n + 1) - A108350 n

end

end A391318.P6516202508203476710

/-! ## A391318.P2482546109782775495

`A319951(A360199(n+1))`
-/

namespace A391318.P2482546109782775495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319951 (A360199 (n + 1)).toNat

end

end A391318.P2482546109782775495

/-! ## A391318.P8206757966190281833

`A134636(n)-A353861(A223263(n+1))`
-/

namespace A391318.P8206757966190281833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134636 n - A353861 (A223263 (n + 1)).toNat

end

end A391318.P8206757966190281833

/-! ## A391318.P17448057065917474043

`A359276(A094305(n))`
-/

namespace A391318.P17448057065917474043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359276 (A094305 n).toNat

end

end A391318.P17448057065917474043

/-!
# A391319: Numbers that are neither cubefree nor powerful.

The programs for A391319, the canonical program `A391319.P17833975388560488226` is in `Seq.B006.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A391319 has offset 1).

The definition of A391319 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9779 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A391319.P15189903902789751784

`∪[A390128(n+1), A392360(n+1)]`
-/

namespace A391319.P15189903902789751784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390128 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392360 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A391319.P15189903902789751784

namespace A391319

/-- `∪[A390128(n+1), A392360(n+1)]` -/
def P15189903902789751784.Spec : Prop :=
  ∀ n, (P15189903902789751784.a n : ℤ) = A391319 (n + 1)

end A391319

/-! ## A391319.P14505878793782956015

`∪[A391922(n+1), A396323(n+1)]`
-/

namespace A391319.P14505878793782956015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391922 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396323 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A391319.P14505878793782956015

namespace A391319

/-- `∪[A391922(n+1), A396323(n+1)]` -/
def P14505878793782956015.Spec : Prop :=
  ∀ n, (P14505878793782956015.a n : ℤ) = A391319 (n + 1)

end A391319

/-! ## A391319.P3427790036648889301

`filter[A391415(n+1), A389905(#)]`
-/

namespace A391319.P3427790036648889301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391415 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A389905 (f1 j).toNat = 1) n)

end

end A391319.P3427790036648889301

namespace A391319

/-- `filter[A391415(n+1), A389905(#)]` -/
def P3427790036648889301.Spec : Prop :=
  ∀ n, P3427790036648889301.a n = A391319 (n + 1)

end A391319

/-! ## A391319.P17833975388560488226

`filter[A362148(n+1), A389905(#)]`

The canonical program, it is in `Seq.B006.C002`.
-/

namespace A391319

/-- `filter[A362148(n+1), A389905(#)]` -/
def P17833975388560488226.Spec : Prop :=
  ∀ n, P17833975388560488226.a n = A391319 (n + 1)

theorem P17833975388560488226.correct : P17833975388560488226.Spec := by
  intro n
  simp only [A391319, Nat.add_sub_cancel]

end A391319

/-! ## A391319.P17240946403393960166

`filter[A074451(n+1), A389905(#)]`
-/

namespace A391319.P17240946403393960166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074451 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A389905 (f1 j).toNat = 1) n)

end

end A391319.P17240946403393960166

namespace A391319

/-- `filter[A074451(n+1), A389905(#)]` -/
def P17240946403393960166.Spec : Prop :=
  ∀ n, P17240946403393960166.a n = A391319 (n + 1)

end A391319

/-! ## A391319.P11273014532767969067

`filter[A378767(n+1), A389905(#)]`
-/

namespace A391319.P11273014532767969067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378767 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A389905 (f1 j).toNat = 1) n)

end

end A391319.P11273014532767969067

namespace A391319

/-- `filter[A378767(n+1), A389905(#)]` -/
def P11273014532767969067.Spec : Prop :=
  ∀ n, P11273014532767969067.a n = A391319 (n + 1)

end A391319

/-! ## A391319.P6984114563891770558

`filter[A046099(n+1), A389905(#)]`
-/

namespace A391319.P6984114563891770558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046099 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A389905 (f1 j).toNat = 1) n)

end

end A391319.P6984114563891770558

namespace A391319

/-- `filter[A046099(n+1), A389905(#)]` -/
def P6984114563891770558.Spec : Prop :=
  ∀ n, P6984114563891770558.a n = A391319 (n + 1)

end A391319

/-! ## A391319.P7360050065846867134

`∩[A046099(n+1), A332785(n+1)]`
-/

namespace A391319.P7360050065846867134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046099 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332785 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391319.P7360050065846867134

namespace A391319

/-- `∩[A046099(n+1), A332785(n+1)]` -/
def P7360050065846867134.Spec : Prop :=
  ∀ n, (P7360050065846867134.a n : ℤ) = A391319 (n + 1)

end A391319

/-! ## A391319.P16717130147519174222

`∩[A074451(n+1), A332785(n+1)]`
-/

namespace A391319.P16717130147519174222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074451 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332785 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391319.P16717130147519174222

namespace A391319

/-- `∩[A074451(n+1), A332785(n+1)]` -/
def P16717130147519174222.Spec : Prop :=
  ∀ n, (P16717130147519174222.a n : ℤ) = A391319 (n + 1)

end A391319

/-! ## A391319.P9573330283551848906

`∩[A332785(n+1), A362148(n+1)]`
-/

namespace A391319.P9573330283551848906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332785 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362148 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391319.P9573330283551848906

namespace A391319

/-- `∩[A332785(n+1), A362148(n+1)]` -/
def P9573330283551848906.Spec : Prop :=
  ∀ n, (P9573330283551848906.a n : ℤ) = A391319 (n + 1)

end A391319

/-! ## A391319.P9349913963622443313

`∩[A332785(n+1), A378767(n+1)]`
-/

namespace A391319.P9349913963622443313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332785 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378767 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391319.P9349913963622443313

namespace A391319

/-- `∩[A332785(n+1), A378767(n+1)]` -/
def P9349913963622443313.Spec : Prop :=
  ∀ n, (P9349913963622443313.a n : ℤ) = A391319 (n + 1)

end A391319

/-! ## A391319.P7194917130635252131

`∩[A332785(n+1), A391415(n+1)]`
-/

namespace A391319.P7194917130635252131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332785 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391415 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391319.P7194917130635252131

namespace A391319

/-- `∩[A332785(n+1), A391415(n+1)]` -/
def P7194917130635252131.Spec : Prop :=
  ∀ n, (P7194917130635252131.a n : ℤ) = A391319 (n + 1)

end A391319

/-! ## A391319.P12489935718509039212

`∩[A046099(n+1), A389065(n+1)]`
-/

namespace A391319.P12489935718509039212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046099 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389065 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391319.P12489935718509039212

namespace A391319

/-- `∩[A046099(n+1), A389065(n+1)]` -/
def P12489935718509039212.Spec : Prop :=
  ∀ n, (P12489935718509039212.a n : ℤ) = A391319 (n + 1)

end A391319

/-! ## A391319.P13042934770647307110

`∩[A074451(n+1), A389065(n+1)]`
-/

namespace A391319.P13042934770647307110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074451 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389065 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391319.P13042934770647307110

namespace A391319

/-- `∩[A074451(n+1), A389065(n+1)]` -/
def P13042934770647307110.Spec : Prop :=
  ∀ n, (P13042934770647307110.a n : ℤ) = A391319 (n + 1)

end A391319

/-! ## A391319.P18156384948678632430

`∩[A362148(n+1), A389065(n+1)]`
-/

namespace A391319.P18156384948678632430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362148 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389065 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391319.P18156384948678632430

namespace A391319

/-- `∩[A362148(n+1), A389065(n+1)]` -/
def P18156384948678632430.Spec : Prop :=
  ∀ n, (P18156384948678632430.a n : ℤ) = A391319 (n + 1)

end A391319

/-! ## A391319.P4182994305750533245

`∩[A378767(n+1), A389065(n+1)]`
-/

namespace A391319.P4182994305750533245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378767 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389065 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391319.P4182994305750533245

namespace A391319

/-- `∩[A378767(n+1), A389065(n+1)]` -/
def P4182994305750533245.Spec : Prop :=
  ∀ n, (P4182994305750533245.a n : ℤ) = A391319 (n + 1)

end A391319

/-! ## A391319.P7777249996304609284

`∩[A389065(n+1), A391415(n+1)]`
-/

namespace A391319.P7777249996304609284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389065 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391415 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391319.P7777249996304609284

namespace A391319

/-- `∩[A389065(n+1), A391415(n+1)]` -/
def P7777249996304609284.Spec : Prop :=
  ∀ n, (P7777249996304609284.a n : ℤ) = A391319 (n + 1)

end A391319

/-! ## A391319.P5925151697194878794

`∩[A046099(n+1), A052485(n+1)]`
-/

namespace A391319.P5925151697194878794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046099 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052485 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391319.P5925151697194878794

namespace A391319

/-- `∩[A046099(n+1), A052485(n+1)]` -/
def P5925151697194878794.Spec : Prop :=
  ∀ n, (P5925151697194878794.a n : ℤ) = A391319 (n + 1)

end A391319

/-! ## A391319.P8222784813775823550

`∩[A052485(n+1), A074451(n+1)]`
-/

namespace A391319.P8222784813775823550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052485 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074451 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391319.P8222784813775823550

namespace A391319

/-- `∩[A052485(n+1), A074451(n+1)]` -/
def P8222784813775823550.Spec : Prop :=
  ∀ n, (P8222784813775823550.a n : ℤ) = A391319 (n + 1)

end A391319

/-!
# A391320: Squares of squarefree numbers that have at least 3 distinct prime factors.

The programs for A391320, there is no canonical definition to state claims against.
-/

/-! ## A391320.P6895723863427923887

`A350352(n+1)²`
-/

namespace A391320.P6895723863427923887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350352 (n + 1) ^ 2

end

end A391320.P6895723863427923887

/-! ## A391320.P12262244997371085587

`∩[A177492(n+1), A392741(n+1)]`
-/

namespace A391320.P12262244997371085587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177492 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392741 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391320.P12262244997371085587

/-! ## A391320.P4894723835581608013

`∩[A062503(n+1), A392741(n+1)]`
-/

namespace A391320.P4894723835581608013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062503 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392741 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391320.P4894723835581608013

/-! ## A391320.P541502935962496136

`∩[A366243(n+1), A392741(n+1)]`
-/

namespace A391320.P541502935962496136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366243 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392741 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391320.P541502935962496136

/-! ## A391320.P14852326435242113646

`∩[A374458(n+1), A392741(n+1)]`
-/

namespace A391320.P14852326435242113646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374458 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392741 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391320.P14852326435242113646

/-! ## A391320.P14325917081614237475

`∩[A387254(n+1), A392741(n+1)]`
-/

namespace A391320.P14325917081614237475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387254 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392741 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391320.P14325917081614237475

/-! ## A391320.P14541121081621614740

`∩[A355058(n+1), A392741(n+1)]`
-/

namespace A391320.P14541121081621614740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355058 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392741 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391320.P14541121081621614740

/-! ## A391320.P8681937782694866609

`∩[A153158(n+1), A392741(n+1)]`
-/

namespace A391320.P8681937782694866609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153158 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392741 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391320.P8681937782694866609

/-! ## A391320.P5618757083650373215

`∩[A030140(n+1), A392741(n+1)]`
-/

namespace A391320.P5618757083650373215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030140 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392741 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391320.P5618757083650373215

/-! ## A391320.P9505053052647697720

`∩[A062503(n+1), A390950(n+1)]`
-/

namespace A391320.P9505053052647697720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062503 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390950 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391320.P9505053052647697720

/-! ## A391320.P14906665948383449811

`∩[A177492(n+1), A390950(n+1)]`
-/

namespace A391320.P14906665948383449811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177492 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390950 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391320.P14906665948383449811

/-! ## A391320.P16821577082808420307

`∩[A387256(n+1), A392741(n+1)]`
-/

namespace A391320.P16821577082808420307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387256 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392741 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391320.P16821577082808420307

/-! ## A391320.P8560970149573085910

`∩[A325240(n+1), A392741(n+1)]`
-/

namespace A391320.P8560970149573085910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325240 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392741 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391320.P8560970149573085910

/-! ## A391320.P6494505221619145732

`∩[A062503(n+1), A318720(n+1)]`
-/

namespace A391320.P6494505221619145732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062503 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318720 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391320.P6494505221619145732

/-! ## A391320.P16377395832615808978

`∩[A177492(n+1), A318720(n+1)]`
-/

namespace A391320.P16377395832615808978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177492 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318720 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391320.P16377395832615808978

/-! ## A391320.P6396010133162578956

`∩[A368780(n+1), A390950(n+1)]`
-/

namespace A391320.P6396010133162578956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368780 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390950 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391320.P6396010133162578956

/-! ## A391320.P16336293639738433553

`∩[A368780(n+1), A392741(n+1)]`
-/

namespace A391320.P16336293639738433553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368780 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392741 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391320.P16336293639738433553

/-! ## A391320.P12107549995452479884

`∩[A062503(n+1), A365263(n+1)]`
-/

namespace A391320.P12107549995452479884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062503 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365263 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391320.P12107549995452479884

/-! ## A391320.P13285595724686481294

`∩[A177492(n+1), A365263(n+1)]`
-/

namespace A391320.P13285595724686481294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177492 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365263 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391320.P13285595724686481294

/-! ## A391320.P7044266074896957085

`∩[A338325(n+1), A365263(n+1)]`
-/

namespace A391320.P7044266074896957085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338325 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365263 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391320.P7044266074896957085

/-!
# A391321: Primes of the form 3*p+2 in which p and p+2 are twin primes.

The programs for A391321, there is no canonical definition to state claims against.
-/

/-! ## A391321.P15848534723364512844

`3*A174913(n+1)+2`
-/

namespace A391321.P15848534723364512844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A174913 (n + 1) + 2

end

end A391321.P15848534723364512844

/-! ## A391321.P9451958588622878402

`∩[A094104(n+1), A228353(n+1)]`
-/

namespace A391321.P9451958588622878402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094104 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228353 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391321.P9451958588622878402

/-! ## A391321.P10287355177175329516

`∩[A094104(n+1), A094524(n+1)]`
-/

namespace A391321.P10287355177175329516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094104 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094524 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391321.P10287355177175329516

/-! ## A391321.P10887514777673022132

`∩[A094524(n+1), A228353(n+1)]`
-/

namespace A391321.P10887514777673022132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094524 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228353 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391321.P10887514777673022132

/-! ## A391321.P11470875454833848262

`∩[A162337(n+1), A228353(n+1)]`
-/

namespace A391321.P11470875454833848262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162337 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228353 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391321.P11470875454833848262

/-! ## A391321.P6640301133907828668

`∩[A063638(n+1), A228353(n+1)]`
-/

namespace A391321.P6640301133907828668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063638 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228353 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391321.P6640301133907828668

/-! ## A391321.P15701338107555327044

`∩[A094524(n+1), A289250(n+1)]`
-/

namespace A391321.P15701338107555327044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094524 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289250 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391321.P15701338107555327044

/-! ## A391321.P6280624302492810326

`∩[A162337(n+1), A289250(n+1)]`
-/

namespace A391321.P6280624302492810326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162337 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289250 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391321.P6280624302492810326

/-! ## A391321.P12124555482301008530

`A016789(A174913(n+1))`
-/

namespace A391321.P12124555482301008530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016789 (A174913 (n + 1)).toNat

end

end A391321.P12124555482301008530

/-!
# A391323: Expansion of g/(1 + x^2*g^2), where g = 1+x*g^4 is the g.f. of A002293.

The programs for A391323, there is no canonical definition to state claims against.
-/

/-! ## A391323.P1985223933328827750

`A338719(∑[n]^n)`
-/

namespace A391323.P1985223933328827750
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338719 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ n)

end

end A391323.P1985223933328827750

/-!
# A391324: Expansion of g/(1 + x^3*g^2), where g = 1+x*g^4 is the g.f. of A002293.

The programs for A391324, there is no canonical definition to state claims against.
-/

/-! ## A391324.P14547366526295494480

`A002293(n)-A385860(A385875(n))`
-/

namespace A391324.P14547366526295494480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002293 n - A385860 (A385875 n).toNat

end

end A391324.P14547366526295494480

/-! ## A391324.P18164733621475987619

`A350126(A054354(n+1)+A023000(n))`
-/

namespace A391324.P18164733621475987619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350126 (A054354 (n + 1) + A023000 n).toNat

end

end A391324.P18164733621475987619

/-!
# A391325: Expansion of g/(1 + x^2*g^3), where g = 1+x*g^4 is the g.f. of A002293.

The programs for A391325, there is no canonical definition to state claims against.
-/

/-! ## A391325.P15794168033714664584

`A329143(∑[(n+1)²+1])`
-/

namespace A391325.P15794168033714664584
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2 + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329143 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A391325.P15794168033714664584

/-!
# A391326: Expansion of g/(1 + x^3*g^3), where g = 1+x*g^4 is the g.f. of A002293.

The programs for A391326, there is no canonical definition to state claims against.
-/

/-! ## A391326.P10543069287480433968

`A082479((n+1)^n-n)`
-/

namespace A391326.P10543069287480433968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082479 ((n + 1) ^ n - n)

end

end A391326.P10543069287480433968

/-! ## A391326.P14423369246459852385

`A088468(A277358(n)-A088501(n))`
-/

namespace A391326.P14423369246459852385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088468 (A277358 n - A088501 n).toNat

end

end A391326.P14423369246459852385

/-!
# A391327: Expansion of g/(1 + x^2*g^6), where g = 1+x*g^4 is the g.f. of A002293.

The programs for A391327, there is no canonical definition to state claims against.
-/

/-! ## A391327.P3828141261858038484

`A337635(A004187(n)+A001223(n+1))`
-/

namespace A391327.P3828141261858038484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337635 (A004187 n + A001223 (n + 1)).toNat

end

end A391327.P3828141261858038484

/-!
# A391328: Odd semiprimes k = p*q, p, q primes > 3, such that either k = A048720(p,x) or k = A048720(q,x) for some x, where A048720 is the carryless binary multiplication.

The programs for A391328, there is no canonical definition to state claims against.
-/

/-! ## A391328.P2375866098494967932

`filter[A391253(n+1), A187074(#)]`
-/

namespace A391328.P2375866098494967932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391253 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A187074 (f1 j).toNat = 1) n)

end

end A391328.P2375866098494967932

/-! ## A391328.P12894472390398662241

`filter[A391253(n+1), A359170(#)]`
-/

namespace A391328.P12894472390398662241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391253 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359170 (f1 j).toNat = 1) n)

end

end A391328.P12894472390398662241

/-! ## A391328.P12329723741042168925

`filter[A391253(n+1), A359374(#)]`
-/

namespace A391328.P12329723741042168925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391253 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359374 (f1 j).toNat = 1) n)

end

end A391328.P12329723741042168925

/-! ## A391328.P8622051865580371442

`filter[A391253(n+1), A372573(#)]`
-/

namespace A391328.P8622051865580371442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391253 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A372573 (f1 j).toNat = 1) n)

end

end A391328.P8622051865580371442

/-! ## A391328.P8881574755677391778

`filter[A391253(n+1), A373155(#)]`
-/

namespace A391328.P8881574755677391778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391253 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373155 (f1 j).toNat = 1) n)

end

end A391328.P8881574755677391778

/-! ## A391328.P7114090477384657186

`filter[A391253(n+1), A373156(#)]`
-/

namespace A391328.P7114090477384657186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391253 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373156 (f1 j).toNat = 1) n)

end

end A391328.P7114090477384657186

/-! ## A391328.P344171227287612860

`filter[A391253(n+1), A374041(#)]`
-/

namespace A391328.P344171227287612860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391253 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374041 (f1 j).toNat = 1) n)

end

end A391328.P344171227287612860

/-! ## A391328.P14161678019682788610

`filter[A391253(n+1), A374043(#)]`
-/

namespace A391328.P14161678019682788610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391253 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374043 (f1 j).toNat = 1) n)

end

end A391328.P14161678019682788610

/-! ## A391328.P18155342239070307857

`filter[A391253(n+2), A014578(#)]`
-/

namespace A391328.P18155342239070307857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391253 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A014578 (f1 j).toNat = 1) n)

end

end A391328.P18155342239070307857

/-! ## A391328.P13711659585476553523

`filter[A391253(n+2), A372574(#)]`
-/

namespace A391328.P13711659585476553523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391253 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A372574 (f1 j).toNat = 1) n)

end

end A391328.P13711659585476553523

/-! ## A391328.P8917978546594157845

`filter[A391253(n+2), A373136(#)]`
-/

namespace A391328.P8917978546594157845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391253 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373136 (f1 j).toNat = 1) n)

end

end A391328.P8917978546594157845

/-! ## A391328.P12708981060110700330

`filter[A391253(n+2), A373585(#)]`
-/

namespace A391328.P12708981060110700330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391253 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373585 (f1 j).toNat = 1) n)

end

end A391328.P12708981060110700330

/-! ## A391328.P14383469191008893645

`filter[A391253(n+2), A373991(#)]`
-/

namespace A391328.P14383469191008893645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391253 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373991 (f1 j).toNat = 1) n)

end

end A391328.P14383469191008893645

/-! ## A391328.P6656937628756995801

`filter[A391253(n+2), A374039(#)]`
-/

namespace A391328.P6656937628756995801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391253 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374039 (f1 j).toNat = 1) n)

end

end A391328.P6656937628756995801

/-! ## A391328.P6943850533805725400

`filter[A391253(n+2), A374045(#)]`
-/

namespace A391328.P6943850533805725400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391253 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374045 (f1 j).toNat = 1) n)

end

end A391328.P6943850533805725400

/-! ## A391328.P16063295913413116834

`filter[A391253(n+2), A374107(#)]`
-/

namespace A391328.P16063295913413116834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391253 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374107 (f1 j).toNat = 1) n)

end

end A391328.P16063295913413116834

/-! ## A391328.P17359630145122829057

`∩[A391253(n+1), A391330(n+1)]`
-/

namespace A391328.P17359630145122829057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391253 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391330 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391328.P17359630145122829057

/-! ## A391328.P12544626230271975223

`filter[A391253(n+1), A320106(#)]`
-/

namespace A391328.P12544626230271975223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391253 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A320106 (f1 j).toNat = 1) n)

end

end A391328.P12544626230271975223

/-! ## A391328.P13100065832367652834

`filter[A391253(n+1), A354354(#)]`
-/

namespace A391328.P13100065832367652834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391253 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354354 (f1 j).toNat = 1) n)

end

end A391328.P13100065832367652834

/-! ## A391328.P11395674222829048544

`∩[A067793(n+1), A391253(n+1)]`
-/

namespace A391328.P11395674222829048544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067793 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391253 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391328.P11395674222829048544

/-!
# A391329: Odd semiprimes p*q, p, q > 3, such that Stern polynomial B(p*q,x) is a multiple of either B(p,x) or B(q,x).

The programs for A391329, there is no canonical definition to state claims against.
-/

/-! ## A391329.P2719015587286741757

`filter[A391257(n+1), A187074(#)]`
-/

namespace A391329.P2719015587286741757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391257 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A187074 (f1 j).toNat = 1) n)

end

end A391329.P2719015587286741757

/-! ## A391329.P9020395803269274347

`filter[A391257(n+1), A359170(#)]`
-/

namespace A391329.P9020395803269274347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391257 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359170 (f1 j).toNat = 1) n)

end

end A391329.P9020395803269274347

/-! ## A391329.P14060002261359035499

`filter[A391257(n+1), A359374(#)]`
-/

namespace A391329.P14060002261359035499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391257 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359374 (f1 j).toNat = 1) n)

end

end A391329.P14060002261359035499

/-! ## A391329.P14246810897809954788

`filter[A391257(n+1), A372573(#)]`
-/

namespace A391329.P14246810897809954788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391257 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A372573 (f1 j).toNat = 1) n)

end

end A391329.P14246810897809954788

/-! ## A391329.P5788485859035968319

`filter[A391257(n+1), A373155(#)]`
-/

namespace A391329.P5788485859035968319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391257 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373155 (f1 j).toNat = 1) n)

end

end A391329.P5788485859035968319

/-! ## A391329.P15854867103426779990

`filter[A391257(n+1), A373156(#)]`
-/

namespace A391329.P15854867103426779990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391257 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373156 (f1 j).toNat = 1) n)

end

end A391329.P15854867103426779990

/-! ## A391329.P8604822780130835674

`∩[A391257(n+1), A391330(n+1)]`
-/

namespace A391329.P8604822780130835674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391257 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391330 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391329.P8604822780130835674

/-! ## A391329.P7965045577140752388

`filter[A391257(n+1), A320106(#)]`
-/

namespace A391329.P7965045577140752388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391257 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A320106 (f1 j).toNat = 1) n)

end

end A391329.P7965045577140752388

/-! ## A391329.P4788035854194547480

`filter[A391257(n+1), A354354(#)]`
-/

namespace A391329.P4788035854194547480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391257 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354354 (f1 j).toNat = 1) n)

end

end A391329.P4788035854194547480

/-! ## A391329.P8513348134113715138

`∩[A067793(n+1), A391257(n+1)]`
-/

namespace A391329.P8513348134113715138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067793 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391257 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391329.P8513348134113715138

/-! ## A391329.P14303986230469876071

`∩[A038509(n+1), A391257(n+1)]`
-/

namespace A391329.P14303986230469876071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038509 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391257 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391329.P14303986230469876071

/-! ## A391329.P8872347992389851763

`∩[A090818(n+1), A391257(n+1)]`
-/

namespace A391329.P8872347992389851763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090818 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391257 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391329.P8872347992389851763

/-! ## A391329.P3489194333457582081

`∩[A359171(n+1), A391257(n+1)]`
-/

namespace A391329.P3489194333457582081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359171 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391257 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391329.P3489194333457582081

/-! ## A391329.P14969844873706563367

`∩[A007310(n+1), A391257(n+1)]`
-/

namespace A391329.P14969844873706563367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007310 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391257 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391329.P14969844873706563367

/-! ## A391329.P8546196605482972055

`∩[A038179(n+1), A391257(n+1)]`
-/

namespace A391329.P8546196605482972055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038179 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391257 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391329.P8546196605482972055

/-! ## A391329.P9650873821356228702

`∩[A367227(n+1), A391257(n+1)]`
-/

namespace A391329.P9650873821356228702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367227 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391257 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391329.P9650873821356228702

/-! ## A391329.P6767877923423391887

`∩[A374044(n+1), A391257(n+1)]`
-/

namespace A391329.P6767877923423391887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374044 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391257 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391329.P6767877923423391887

/-! ## A391329.P1239610892739787582

`∩[A064615(n+1), A391257(n+1)]`
-/

namespace A391329.P1239610892739787582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064615 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391257 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391329.P1239610892739787582

/-! ## A391329.P2228042009523076800

`∩[A374042(n+1), A391257(n+1)]`
-/

namespace A391329.P2228042009523076800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374042 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391257 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391329.P2228042009523076800

/-! ## A391329.P14290241331331857550

`∩[A259749(n+1), A391257(n+1)]`
-/

namespace A391329.P14290241331331857550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259749 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391257 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391329.P14290241331331857550

/-!
# A391330: Odd semiprimes that are not multiples of 3; Semiprimes congruent to 1 or 5 mod 6.

The programs for A391330, the canonical program `A391330.P4375504528357201074` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A391330 has offset 1).

The definition of A391330 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7952 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A391330.P15963211490744110536

`filter[A280389(n+1), A014578(#)]`
-/

namespace A391330.P15963211490744110536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280389 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A014578 (f1 j).toNat = 1) n)

end

end A391330.P15963211490744110536

namespace A391330

/-- `filter[A280389(n+1), A014578(#)]` -/
def P15963211490744110536.Spec : Prop :=
  ∀ n, P15963211490744110536.a n = A391330 (n + 1)

end A391330

/-! ## A391330.P13000256513671050372

`filter[A280389(n+1), A187074(#)]`
-/

namespace A391330.P13000256513671050372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280389 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A187074 (f1 j).toNat = 1) n)

end

end A391330.P13000256513671050372

namespace A391330

/-- `filter[A280389(n+1), A187074(#)]` -/
def P13000256513671050372.Spec : Prop :=
  ∀ n, P13000256513671050372.a n = A391330 (n + 1)

end A391330

/-! ## A391330.P3150066406623335283

`filter[A280389(n+1), A320106(#)]`
-/

namespace A391330.P3150066406623335283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280389 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A320106 (f1 j).toNat = 1) n)

end

end A391330.P3150066406623335283

namespace A391330

/-- `filter[A280389(n+1), A320106(#)]` -/
def P3150066406623335283.Spec : Prop :=
  ∀ n, P3150066406623335283.a n = A391330 (n + 1)

end A391330

/-! ## A391330.P18140679656054120900

`filter[A280389(n+1), A354354(#)]`
-/

namespace A391330.P18140679656054120900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280389 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354354 (f1 j).toNat = 1) n)

end

end A391330.P18140679656054120900

namespace A391330

/-- `filter[A280389(n+1), A354354(#)]` -/
def P18140679656054120900.Spec : Prop :=
  ∀ n, P18140679656054120900.a n = A391330 (n + 1)

end A391330

/-! ## A391330.P16195104719070308598

`filter[A280389(n+1), A359170(#)]`
-/

namespace A391330.P16195104719070308598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280389 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359170 (f1 j).toNat = 1) n)

end

end A391330.P16195104719070308598

namespace A391330

/-- `filter[A280389(n+1), A359170(#)]` -/
def P16195104719070308598.Spec : Prop :=
  ∀ n, P16195104719070308598.a n = A391330 (n + 1)

end A391330

/-! ## A391330.P18250036750253977952

`filter[A280389(n+1), A359374(#)]`
-/

namespace A391330.P18250036750253977952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280389 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359374 (f1 j).toNat = 1) n)

end

end A391330.P18250036750253977952

namespace A391330

/-- `filter[A280389(n+1), A359374(#)]` -/
def P18250036750253977952.Spec : Prop :=
  ∀ n, P18250036750253977952.a n = A391330 (n + 1)

end A391330

/-! ## A391330.P10487641445055684857

`filter[A280389(n+1), A372573(#)]`
-/

namespace A391330.P10487641445055684857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280389 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A372573 (f1 j).toNat = 1) n)

end

end A391330.P10487641445055684857

namespace A391330

/-- `filter[A280389(n+1), A372573(#)]` -/
def P10487641445055684857.Spec : Prop :=
  ∀ n, P10487641445055684857.a n = A391330 (n + 1)

end A391330

/-! ## A391330.P12113088571646253229

`filter[A280389(n+1), A372574(#)]`
-/

namespace A391330.P12113088571646253229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280389 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A372574 (f1 j).toNat = 1) n)

end

end A391330.P12113088571646253229

namespace A391330

/-- `filter[A280389(n+1), A372574(#)]` -/
def P12113088571646253229.Spec : Prop :=
  ∀ n, P12113088571646253229.a n = A391330 (n + 1)

end A391330

/-! ## A391330.P16131232095861319359

`filter[A280389(n+1), A373136(#)]`
-/

namespace A391330.P16131232095861319359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280389 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373136 (f1 j).toNat = 1) n)

end

end A391330.P16131232095861319359

namespace A391330

/-- `filter[A280389(n+1), A373136(#)]` -/
def P16131232095861319359.Spec : Prop :=
  ∀ n, P16131232095861319359.a n = A391330 (n + 1)

end A391330

/-! ## A391330.P789044590769205102

`filter[A280389(n+1), A373155(#)]`
-/

namespace A391330.P789044590769205102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280389 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373155 (f1 j).toNat = 1) n)

end

end A391330.P789044590769205102

namespace A391330

/-- `filter[A280389(n+1), A373155(#)]` -/
def P789044590769205102.Spec : Prop :=
  ∀ n, P789044590769205102.a n = A391330 (n + 1)

end A391330

/-! ## A391330.P17452447260425413316

`filter[A280389(n+1), A373156(#)]`
-/

namespace A391330.P17452447260425413316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280389 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373156 (f1 j).toNat = 1) n)

end

end A391330.P17452447260425413316

namespace A391330

/-- `filter[A280389(n+1), A373156(#)]` -/
def P17452447260425413316.Spec : Prop :=
  ∀ n, P17452447260425413316.a n = A391330 (n + 1)

end A391330

/-! ## A391330.P6065743015157067571

`filter[A280389(n+1), A373585(#)]`
-/

namespace A391330.P6065743015157067571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280389 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373585 (f1 j).toNat = 1) n)

end

end A391330.P6065743015157067571

namespace A391330

/-- `filter[A280389(n+1), A373585(#)]` -/
def P6065743015157067571.Spec : Prop :=
  ∀ n, P6065743015157067571.a n = A391330 (n + 1)

end A391330

/-! ## A391330.P5099983488266682606

`filter[A280389(n+1), A373991(#)]`
-/

namespace A391330.P5099983488266682606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280389 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373991 (f1 j).toNat = 1) n)

end

end A391330.P5099983488266682606

namespace A391330

/-- `filter[A280389(n+1), A373991(#)]` -/
def P5099983488266682606.Spec : Prop :=
  ∀ n, P5099983488266682606.a n = A391330 (n + 1)

end A391330

/-! ## A391330.P11419228785241835406

`filter[A280389(n+1), A374039(#)]`
-/

namespace A391330.P11419228785241835406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280389 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374039 (f1 j).toNat = 1) n)

end

end A391330.P11419228785241835406

namespace A391330

/-- `filter[A280389(n+1), A374039(#)]` -/
def P11419228785241835406.Spec : Prop :=
  ∀ n, P11419228785241835406.a n = A391330 (n + 1)

end A391330

/-! ## A391330.P15063917970847656117

`filter[A280389(n+1), A374041(#)]`
-/

namespace A391330.P15063917970847656117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280389 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374041 (f1 j).toNat = 1) n)

end

end A391330.P15063917970847656117

namespace A391330

/-- `filter[A280389(n+1), A374041(#)]` -/
def P15063917970847656117.Spec : Prop :=
  ∀ n, P15063917970847656117.a n = A391330 (n + 1)

end A391330

/-! ## A391330.P16428424803814069603

`filter[A280389(n+1), A374043(#)]`
-/

namespace A391330.P16428424803814069603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280389 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374043 (f1 j).toNat = 1) n)

end

end A391330.P16428424803814069603

namespace A391330

/-- `filter[A280389(n+1), A374043(#)]` -/
def P16428424803814069603.Spec : Prop :=
  ∀ n, P16428424803814069603.a n = A391330 (n + 1)

end A391330

/-! ## A391330.P17005097959390453980

`filter[A280389(n+1), A374045(#)]`
-/

namespace A391330.P17005097959390453980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280389 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374045 (f1 j).toNat = 1) n)

end

end A391330.P17005097959390453980

namespace A391330

/-- `filter[A280389(n+1), A374045(#)]` -/
def P17005097959390453980.Spec : Prop :=
  ∀ n, P17005097959390453980.a n = A391330 (n + 1)

end A391330

/-! ## A391330.P2735221001038551119

`filter[A280389(n+1), A374107(#)]`
-/

namespace A391330.P2735221001038551119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280389 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374107 (f1 j).toNat = 1) n)

end

end A391330.P2735221001038551119

namespace A391330

/-- `filter[A280389(n+1), A374107(#)]` -/
def P2735221001038551119.Spec : Prop :=
  ∀ n, P2735221001038551119.a n = A391330 (n + 1)

end A391330

/-! ## A391330.P4375504528357201074

`filter[A046315(n+1), A187074(#)]`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A391330

/-- `filter[A046315(n+1), A187074(#)]` -/
def P4375504528357201074.Spec : Prop :=
  ∀ n, P4375504528357201074.a n = A391330 (n + 1)

theorem P4375504528357201074.correct : P4375504528357201074.Spec := by
  intro n
  simp only [A391330, Nat.add_sub_cancel]

end A391330

/-! ## A391330.P15453635437655312120

`filter[A046315(n+1), A320106(#)]`
-/

namespace A391330.P15453635437655312120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046315 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A320106 (f1 j).toNat = 1) n)

end

end A391330.P15453635437655312120

namespace A391330

/-- `filter[A046315(n+1), A320106(#)]` -/
def P15453635437655312120.Spec : Prop :=
  ∀ n, P15453635437655312120.a n = A391330 (n + 1)

end A391330

/-!
# A391331: Odd semiprimes k = p*q such that k = A325820(p,q), with p, q primes > 3, and A325820 is the carryless base-3 multiplication.

The programs for A391331, there is no canonical definition to state claims against.
-/

/-! ## A391331.P17856581441857187423

`∩[A391332(n+1), A391335(n+1)]`
-/

namespace A391331.P17856581441857187423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391332 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391335 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391331.P17856581441857187423

/-! ## A391331.P10865094385768120812

`∩[A177512(n+1), A391332(n+1)]`
-/

namespace A391331.P10865094385768120812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177512 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391332 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391331.P10865094385768120812

/-! ## A391331.P6285358678584724174

`∩[A391330(n+1), A391332(n+1)]`
-/

namespace A391331.P6285358678584724174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391330 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391332 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391331.P6285358678584724174

/-! ## A391331.P8783833467176346144

`∩[A067794(n+1), A391332(n+1)]`
-/

namespace A391331.P8783833467176346144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067794 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391332 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391331.P8783833467176346144

/-! ## A391331.P12399276183717179597

`∩[A067793(n+1), A391332(n+1)]`
-/

namespace A391331.P12399276183717179597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067793 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391332 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391331.P12399276183717179597

/-! ## A391331.P11330640430170859942

`∩[A038509(n+1), A391332(n+1)]`
-/

namespace A391331.P11330640430170859942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038509 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391332 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391331.P11330640430170859942

/-! ## A391331.P15502390508319335738

`∩[A060976(n+1), A391332(n+1)]`
-/

namespace A391331.P15502390508319335738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060976 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391332 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391331.P15502390508319335738

/-! ## A391331.P10772515162972597361

`∩[A052202(n+1), A391332(n+1)]`
-/

namespace A391331.P10772515162972597361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052202 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391332 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391331.P10772515162972597361

/-!
# A391332: Odd semiprimes k = p*q such that k = A325820(p,q), with p, q primes, where A325820 is the carryless base-3 multiplication.

The programs for A391332, there is no canonical definition to state claims against.
-/

/-! ## A391332.P16424742960344936218

`3*A360006(2*(n+2))`
-/

namespace A391332.P16424742960344936218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A360006 (2 * (n + 2))

end

end A391332.P16424742960344936218

/-! ## A391332.P17217952149961128519

`3*A340202(2*n+3)`
-/

namespace A391332.P17217952149961128519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A340202 (2 * n + 3)

end

end A391332.P17217952149961128519

/-! ## A391332.P3368158018809590200

`A325351(A006094(n+2))`
-/

namespace A391332.P3368158018809590200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325351 (A006094 (n + 2)).toNat

end

end A391332.P3368158018809590200

/-! ## A391332.P4967892440913463768

`A166466(A341361(n+2))`
-/

namespace A391332.P4967892440913463768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166466 (A341361 (n + 2)).toNat

end

end A391332.P4967892440913463768

/-! ## A391332.P14963508675865923306

`∩[A063139(n+1), A123722(n+1)]`
-/

namespace A391332.P14963508675865923306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123722 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391332.P14963508675865923306

/-!
# A391333: Odd semiprimes k = p*q, with p, q primes, such that either k = A325820(p,x) or k = A325820(q,x) for some x, where A325820 is the carryless base-3 multiplication.

The programs for A391333, there is no canonical definition to state claims against.
-/

/-! ## A391333.P17751934458028681709

`∪[A391332(n+1), A391335(n+1)]`
-/

namespace A391333.P17751934458028681709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391332 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391335 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A391333.P17751934458028681709

/-! ## A391333.P5804730056364605925

`filter[A046315(n+1), A136442(#)]`
-/

namespace A391333.P5804730056364605925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046315 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A136442 (f1 j).toNat = 1) n)

end

end A391333.P5804730056364605925

/-! ## A391333.P3388637793913814953

`filter[A359596(n+2), A136442(#)]`
-/

namespace A391333.P3388637793913814953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359596 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A136442 (f1 j).toNat = 1) n)

end

end A391333.P3388637793913814953

/-! ## A391333.P15628345638445356679

`filter[A384940(2*n+1), A136442(#)]`
-/

namespace A391333.P15628345638445356679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384940 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A136442 (f1 j).toNat = 1) n)

end

end A391333.P15628345638445356679

/-! ## A391333.P8572596658291397869

`∩[A207670(n+1), A362910(n+1)]`
-/

namespace A391333.P8572596658291397869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207670 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362910 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391333.P8572596658291397869

/-!
# A391334: Odd semiprimes k = p*q, with p, q primes, such that neither k = A325820(p,x) nor k = A325820(q,x) for any x, where A325820 is the carryless base-3 multiplication.

The programs for A391334, there is no canonical definition to state claims against.
-/

/-! ## A391334.P15322572484427847919

`∩[A107472(n+1), A166021(n+1)]`
-/

namespace A391334.P15322572484427847919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107472 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166021 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391334.P15322572484427847919

/-! ## A391334.P5353393689940531637

`A093513(A000961(2*n+5)*A038605(n+5))`
-/

namespace A391334.P5353393689940531637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093513 (A000961 (2 * n + 5) * A038605 (n + 5)).toNat

end

end A391334.P5353393689940531637

/-!
# A391335: Odd semiprimes k = p*q, with p, q primes > 3, such that either k = A325820(p,x) or k = A325820(q,x) for some x, where A325820 is the carryless base-3 multiplication.

The programs for A391335, there is no canonical definition to state claims against.
-/

/-! ## A391335.P14821696059769163734

`filter[A391333(n+1), A187074(#)]`
-/

namespace A391335.P14821696059769163734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391333 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A187074 (f1 j).toNat = 1) n)

end

end A391335.P14821696059769163734

/-! ## A391335.P5367694248245458706

`filter[A391333(n+1), A359170(#)]`
-/

namespace A391335.P5367694248245458706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391333 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359170 (f1 j).toNat = 1) n)

end

end A391335.P5367694248245458706

/-! ## A391335.P3925297141868212980

`filter[A391333(n+1), A359374(#)]`
-/

namespace A391335.P3925297141868212980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391333 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359374 (f1 j).toNat = 1) n)

end

end A391335.P3925297141868212980

/-! ## A391335.P6402320801394819781

`filter[A391333(n+1), A372573(#)]`
-/

namespace A391335.P6402320801394819781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391333 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A372573 (f1 j).toNat = 1) n)

end

end A391335.P6402320801394819781

/-! ## A391335.P4778808355132097479

`filter[A391333(n+1), A373155(#)]`
-/

namespace A391335.P4778808355132097479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391333 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373155 (f1 j).toNat = 1) n)

end

end A391335.P4778808355132097479

/-! ## A391335.P13441691003272348560

`filter[A391333(n+1), A373156(#)]`
-/

namespace A391335.P13441691003272348560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391333 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373156 (f1 j).toNat = 1) n)

end

end A391335.P13441691003272348560

/-! ## A391335.P8991915425300509885

`filter[A391333(n+1), A374041(#)]`
-/

namespace A391335.P8991915425300509885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391333 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374041 (f1 j).toNat = 1) n)

end

end A391335.P8991915425300509885

/-! ## A391335.P18328372671649131792

`filter[A391333(n+1), A374043(#)]`
-/

namespace A391335.P18328372671649131792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391333 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374043 (f1 j).toNat = 1) n)

end

end A391335.P18328372671649131792

/-! ## A391335.P11602752627294958337

`filter[A391333(n+2), A014578(#)]`
-/

namespace A391335.P11602752627294958337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391333 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A014578 (f1 j).toNat = 1) n)

end

end A391335.P11602752627294958337

/-! ## A391335.P7585821038403952711

`filter[A391333(n+2), A372574(#)]`
-/

namespace A391335.P7585821038403952711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391333 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A372574 (f1 j).toNat = 1) n)

end

end A391335.P7585821038403952711

/-! ## A391335.P15665091936080235868

`filter[A391333(n+2), A373136(#)]`
-/

namespace A391335.P15665091936080235868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391333 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373136 (f1 j).toNat = 1) n)

end

end A391335.P15665091936080235868

/-! ## A391335.P6933949350215486786

`filter[A391333(n+2), A373585(#)]`
-/

namespace A391335.P6933949350215486786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391333 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373585 (f1 j).toNat = 1) n)

end

end A391335.P6933949350215486786

/-! ## A391335.P6760313216263522908

`∩[A391330(n+1), A391333(n+1)]`
-/

namespace A391335.P6760313216263522908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391330 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391333 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391335.P6760313216263522908

/-! ## A391335.P6772765035566511768

`filter[A391333(n+1), A320106(#)]`
-/

namespace A391335.P6772765035566511768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391333 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A320106 (f1 j).toNat = 1) n)

end

end A391335.P6772765035566511768

/-! ## A391335.P11999758385615467982

`filter[A391333(n+1), A354354(#)]`
-/

namespace A391335.P11999758385615467982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391333 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354354 (f1 j).toNat = 1) n)

end

end A391335.P11999758385615467982

/-! ## A391335.P13975874124070801434

`∩[A067793(n+1), A391333(n+1)]`
-/

namespace A391335.P13975874124070801434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067793 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391333 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391335.P13975874124070801434

/-! ## A391335.P3324059118398027585

`∩[A038509(n+1), A391333(n+1)]`
-/

namespace A391335.P3324059118398027585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038509 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391333 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391335.P3324059118398027585

/-! ## A391335.P17615305059914647284

`∩[A389633(n+1), A391333(n+1)]`
-/

namespace A391335.P17615305059914647284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389633 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391333 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391335.P17615305059914647284

/-! ## A391335.P4989117143799801814

`∩[A367734(n+1), A391333(n+1)]`
-/

namespace A391335.P4989117143799801814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367734 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391333 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391335.P4989117143799801814

/-! ## A391335.P5404283969564729391

`∩[A090818(n+1), A391333(n+1)]`
-/

namespace A391335.P5404283969564729391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090818 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391333 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391335.P5404283969564729391

/-!
# A391336: Odd semiprimes p*q such that Stern polynomial B(p*q,x) is reducible.

The programs for A391336, there is no canonical definition to state claims against.
-/

/-! ## A391336.P7498399379994860334

`filter[A389917(n+1), A064911(#)]`
-/

namespace A391336.P7498399379994860334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389917 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A391336.P7498399379994860334

/-! ## A391336.P13222085058036885710

`filter[A389917(n+1), A101040(#)]`
-/

namespace A391336.P13222085058036885710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389917 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A101040 (f1 j).toNat = 1) n)

end

end A391336.P13222085058036885710

/-! ## A391336.P10285037555128420240

`filter[A389917(n+1), A353480(#)]`
-/

namespace A391336.P10285037555128420240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389917 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353480 (f1 j).toNat = 1) n)

end

end A391336.P10285037555128420240

/-! ## A391336.P10543344884101041317

`filter[A389917(n+1), A359828(#)]`
-/

namespace A391336.P10543344884101041317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389917 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359828 (f1 j).toNat = 1) n)

end

end A391336.P10543344884101041317

/-! ## A391336.P11192880028128592

`∩[A046315(n+1), A389917(n+1)]`
-/

namespace A391336.P11192880028128592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046315 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389917 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391336.P11192880028128592

/-! ## A391336.P13659511412158793691

`∩[A001358(n+1), A389917(n+1)]`
-/

namespace A391336.P13659511412158793691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389917 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391336.P13659511412158793691

/-! ## A391336.P5110772362700890346

`∩[A176540(n+1), A389917(n+1)]`
-/

namespace A391336.P5110772362700890346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176540 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389917 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391336.P5110772362700890346

/-! ## A391336.P18354090698361237270

`∩[A077135(n+1), A389917(n+1)]`
-/

namespace A391336.P18354090698361237270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077135 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389917 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391336.P18354090698361237270

/-! ## A391336.P16380321559344278994

`∩[A077136(n+1), A389917(n+1)]`
-/

namespace A391336.P16380321559344278994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077136 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389917 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391336.P16380321559344278994

/-! ## A391336.P4766677134848531924

`∩[A037143(n+1), A389917(n+1)]`
-/

namespace A391336.P4766677134848531924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037143 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389917 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391336.P4766677134848531924

/-! ## A391336.P12417139560973419302

`filter[A389916(n+1), A353480(#)]`
-/

namespace A391336.P12417139560973419302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389916 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353480 (f1 j).toNat = 1) n)

end

end A391336.P12417139560973419302

/-! ## A391336.P3214503867493874735

`∩[A046315(n+1), A389916(n+1)]`
-/

namespace A391336.P3214503867493874735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046315 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389916 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391336.P3214503867493874735

/-!
# A391337: Odd semiprimes p*q, such that Stern polynomial B(p*q,x) is irreducible.

The programs for A391337, there is no canonical definition to state claims against.
-/

/-! ## A391337.P10332185800164836850

`filter[A391258(n+1), A283991(#)]`
-/

namespace A391337.P10332185800164836850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391258 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A283991 (f1 j).toNat = 1) n)

end

end A391337.P10332185800164836850

/-! ## A391337.P4509484637223498359

`filter[A391330(n+1), A283991(#)]`
-/

namespace A391337.P4509484637223498359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391330 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A283991 (f1 j).toNat = 1) n)

end

end A391337.P4509484637223498359

/-! ## A391337.P7037202188823669343

`filter[A391258(n+1), A305892(#)]`
-/

namespace A391337.P7037202188823669343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391258 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A305892 (f1 j).toNat = 1) n)

end

end A391337.P7037202188823669343

/-! ## A391337.P15089647561683392688

`filter[A391330(n+1), A305892(#)]`
-/

namespace A391337.P15089647561683392688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391330 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A305892 (f1 j).toNat = 1) n)

end

end A391337.P15089647561683392688

/-! ## A391337.P15930451996614654317

`filter[A280389(n+1), A283991(#)]`
-/

namespace A391337.P15930451996614654317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280389 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A283991 (f1 j).toNat = 1) n)

end

end A391337.P15930451996614654317

/-! ## A391337.P3380134316722034221

`filter[A280389(n+1), A305892(#)]`
-/

namespace A391337.P3380134316722034221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280389 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A305892 (f1 j).toNat = 1) n)

end

end A391337.P3380134316722034221

/-! ## A391337.P8041690178522621561

`filter[A046315(n+1), A283991(#)]`
-/

namespace A391337.P8041690178522621561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046315 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A283991 (f1 j).toNat = 1) n)

end

end A391337.P8041690178522621561

/-! ## A391337.P4824336839052592997

`filter[A046315(n+1), A305892(#)]`
-/

namespace A391337.P4824336839052592997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046315 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A305892 (f1 j).toNat = 1) n)

end

end A391337.P4824336839052592997

/-! ## A391337.P12756588062302149397

`filter[A186892(n+1), A064911(#)]`
-/

namespace A391337.P12756588062302149397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186892 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A391337.P12756588062302149397

/-! ## A391337.P15532947572391353449

`filter[A186892(n+1), A101040(#)]`
-/

namespace A391337.P15532947572391353449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186892 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A101040 (f1 j).toNat = 1) n)

end

end A391337.P15532947572391353449

/-! ## A391337.P4827163888547733307

`filter[A186892(n+1), A353480(#)]`
-/

namespace A391337.P4827163888547733307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186892 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353480 (f1 j).toNat = 1) n)

end

end A391337.P4827163888547733307

/-! ## A391337.P4206434598503696529

`∩[A046315(n+1), A186892(n+1)]`
-/

namespace A391337.P4206434598503696529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046315 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186892 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391337.P4206434598503696529

/-! ## A391337.P9865160978005476808

`∩[A186892(n+1), A280389(n+1)]`
-/

namespace A391337.P9865160978005476808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186892 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280389 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391337.P9865160978005476808

/-! ## A391337.P4639618917369083325

`filter[A001358(n+1), A283991(#)]`
-/

namespace A391337.P4639618917369083325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A283991 (f1 j).toNat = 1) n)

end

end A391337.P4639618917369083325

/-! ## A391337.P3884129081905607720

`filter[A001358(n+1), A305892(#)]`
-/

namespace A391337.P3884129081905607720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A305892 (f1 j).toNat = 1) n)

end

end A391337.P3884129081905607720

/-! ## A391337.P17261395809981662206

`filter[A176540(n+1), A283991(#)]`
-/

namespace A391337.P17261395809981662206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176540 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A283991 (f1 j).toNat = 1) n)

end

end A391337.P17261395809981662206

/-! ## A391337.P4342543421907571869

`filter[A176540(n+1), A305892(#)]`
-/

namespace A391337.P4342543421907571869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176540 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A305892 (f1 j).toNat = 1) n)

end

end A391337.P4342543421907571869

/-! ## A391337.P9297172656180832601

`∩[A001358(n+1), A186892(n+1)]`
-/

namespace A391337.P9297172656180832601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186892 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391337.P9297172656180832601

/-! ## A391337.P8017714108429458951

`filter[A077135(n+1), A283991(#)]`
-/

namespace A391337.P8017714108429458951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077135 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A283991 (f1 j).toNat = 1) n)

end

end A391337.P8017714108429458951

/-! ## A391337.P11183977878351745621

`filter[A077135(n+1), A305892(#)]`
-/

namespace A391337.P11183977878351745621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077135 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A305892 (f1 j).toNat = 1) n)

end

end A391337.P11183977878351745621

/-!
# A391338: Numbers k such that Stern polynomial B(3*k,x) is equal to B(3,x) * B(k,x).

The programs for A391338, there is no canonical definition to state claims against.
-/

/-! ## A391338.P4114480193154511260

`lt[A203346(A103391(3*n+1)), A374995(3*n+1)]`
-/

namespace A391338.P4114480193154511260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203346 (A103391 (3 * n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374995 (3 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A391338.P4114480193154511260

/-! ## A391338.P13050540511696383169

`lt[A180279(A103391(3*n+1)), A337565(3*n+4)]`
-/

namespace A391338.P13050540511696383169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180279 (A103391 (3 * n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337565 (3 * n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A391338.P13050540511696383169

/-!
# A391339: Numbers k such that Stern polynomial B(3*k,x) is not equal to B(3,x) * B(k,x).

The programs for A391339, there is no canonical definition to state claims against.
-/

/-! ## A391339.P11153612916507531807

`comp[A391338(n+1)-1]+1`
-/

namespace A391339.P11153612916507531807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391338 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A391339.P11153612916507531807

/-! ## A391339.P2937384797981113461

`A195879(A311084(n+1))`
-/

namespace A391339.P2937384797981113461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195879 (A311084 (n + 1)).toNat

end

end A391339.P2937384797981113461

/-! ## A391339.P16615386717691275239

`lt[A290771(3*n), A180279(A103391(3*n+1))]`
-/

namespace A391339.P16615386717691275239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290771 (3 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180279 (A103391 (3 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A391339.P16615386717691275239

/-! ## A391339.P17579377574495917169

`lt[A374995(3*n+1), A203346(A103391(3*n+1))]`
-/

namespace A391339.P17579377574495917169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374995 (3 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203346 (A103391 (3 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A391339.P17579377574495917169

/-!
# A391340: Odd numbers k such that Stern polynomial B(3*k,x) is equal to B(3,x) * B(k,x).

The programs for A391340, there is no canonical definition to state claims against.
-/

/-! ## A391340.P9145397760542743410

`filter[A391338(n+1), A000035(#)]`
-/

namespace A391340.P9145397760542743410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391338 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A391340.P9145397760542743410

/-! ## A391340.P12609018177228642718

`∩[A391338(n+1), A004273(n)]`
-/

namespace A391340.P12609018177228642718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391338 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391340.P12609018177228642718

/-! ## A391340.P16553005691012761037

`∩[A391338(n+1), A060747(n)]`
-/

namespace A391340.P16553005691012761037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391338 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060747 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391340.P16553005691012761037

/-!
# A391341: Numbers k such that Stern polynomial B(5*k,x) is irreducible.

The programs for A391341, there is no canonical definition to state claims against.
-/

/-! ## A391341.P4460623492850284193

`A391345(n+1)/5`
-/

namespace A391341.P4460623492850284193
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A391345 (n + 1) : ℚ) / 5

end

end A391341.P4460623492850284193

/-! ## A391341.P4036768765241716842

`A002266(A391345(n+1))`
-/

namespace A391341.P4036768765241716842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002266 (A391345 (n + 1)).toNat

end

end A391341.P4036768765241716842

/-! ## A391341.P11805785057591877782

`eq[A010052(A363814(3*n+2)), A363035(2*n+3)]`
-/

namespace A391341.P11805785057591877782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (A363814 (3 * n + 2)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363035 (2 * n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A391341.P11805785057591877782

/-! ## A391341.P17286725863496165266

`lt[A162910(2*(n+2)), Δ[A342414(n+4)]]`
-/

namespace A391341.P17286725863496165266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162910 (2 * (n + 2))

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342414 (n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A391341.P17286725863496165266

/-! ## A391341.P835397135564700085

`A242179(A000108(n))+A016825(n)`
-/

namespace A391341.P835397135564700085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242179 (A000108 n).toNat + A016825 n

end

end A391341.P835397135564700085

/-!
# A391342: Numbers k such that Stern polynomial B(5*k,x) is reducible.

The programs for A391342, there is no canonical definition to state claims against.
-/

/-! ## A391342.P4147435016737158714

`comp[A391341(n+1)-1]+1`
-/

namespace A391342.P4147435016737158714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391341 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A391342.P4147435016737158714

/-! ## A391342.P10832186129369204032

`lt[A101941(A000203(n+1)), A003415(n)]`
-/

namespace A391342.P10832186129369204032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101941 (A000203 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A391342.P10832186129369204032

/-!
# A391343: Odd semiprimes k = p*q such that either k = A048720(A065621(p),x) or k = A048720(A065621(q),x) for some x.

The programs for A391343, there is no canonical definition to state claims against.
-/

/-! ## A391343.P3002961162110297533

`∩[A103607(n+1), A325573(n+1)]`
-/

namespace A391343.P3002961162110297533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103607 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325573 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391343.P3002961162110297533

/-! ## A391343.P5788221096384079466

`∩[A131457(n+1), A325573(n+1)]`
-/

namespace A391343.P5788221096384079466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131457 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325573 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391343.P5788221096384079466

/-! ## A391343.P2597741776307194845

`∩[A175515(n+1), A325573(n+1)]`
-/

namespace A391343.P2597741776307194845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175515 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325573 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391343.P2597741776307194845

/-! ## A391343.P11879179681318466388

`∩[A325573(n+1), A358675(n+1)]`
-/

namespace A391343.P11879179681318466388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325573 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358675 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391343.P11879179681318466388

/-! ## A391343.P8253638078872237180

`∩[A325573(n+1), A359829(n+1)]`
-/

namespace A391343.P8253638078872237180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325573 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359829 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391343.P8253638078872237180

/-!
# A391344: Odd semiprimes k = p*q such that neither k = A048720(A065621(p),x) nor k = A048720(A065621(q),x) for any x.

The programs for A391344, there is no canonical definition to state claims against.
-/

/-! ## A391344.P15834558981952306995

`∩[A325571(n+1), A359829(n+1)]`
-/

namespace A391344.P15834558981952306995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325571 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359829 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391344.P15834558981952306995

/-! ## A391344.P9969778484326608044

`∩[A359829(n+1), A383363(n+1)]`
-/

namespace A391344.P9969778484326608044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359829 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383363 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391344.P9969778484326608044

/-! ## A391344.P17143901542899373593

`∩[A108793(n+1), A325571(n+1)]`
-/

namespace A391344.P17143901542899373593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108793 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325571 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391344.P17143901542899373593

/-! ## A391344.P1526171737112552914

`∩[A108793(n+1), A383363(n+1)]`
-/

namespace A391344.P1526171737112552914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108793 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383363 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391344.P1526171737112552914

/-! ## A391344.P12032959926744839026

`∩[A175515(n+1), A325571(n+1)]`
-/

namespace A391344.P12032959926744839026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175515 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325571 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391344.P12032959926744839026

/-!
# A391345: Numbers k that are multiples of 5 and for which Stern polynomial B(k,x) is irreducible.

The programs for A391345, there is no canonical definition to state claims against.
-/

/-! ## A391345.P2258284916258286477

`5*A391341(n+1)`
-/

namespace A391345.P2258284916258286477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A391341 (n + 1)

end

end A391345.P2258284916258286477

/-! ## A391345.P16087214430440665118

`filter[A017329(n), A283991(#)]`
-/

namespace A391345.P16087214430440665118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017329 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A283991 (f1 j).toNat = 1) n)

end

end A391345.P16087214430440665118

/-! ## A391345.P4025501275612874772

`filter[A072703(n+1), A283991(#)]`
-/

namespace A391345.P4025501275612874772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072703 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A283991 (f1 j).toNat = 1) n)

end

end A391345.P4025501275612874772

/-! ## A391345.P1646168935820515664

`filter[A084967(n+1), A283991(#)]`
-/

namespace A391345.P1646168935820515664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084967 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A283991 (f1 j).toNat = 1) n)

end

end A391345.P1646168935820515664

/-! ## A391345.P13218300083982104898

`filter[A121025(n+1), A283991(#)]`
-/

namespace A391345.P13218300083982104898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121025 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A283991 (f1 j).toNat = 1) n)

end

end A391345.P13218300083982104898

/-! ## A391345.P3574511488884092453

`filter[A277592(n+1), A283991(#)]`
-/

namespace A391345.P3574511488884092453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277592 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A283991 (f1 j).toNat = 1) n)

end

end A391345.P3574511488884092453

/-! ## A391345.P6605038488836331484

`filter[A166621(3*n+1), A283991(#)]`
-/

namespace A391345.P6605038488836331484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166621 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A283991 (f1 j).toNat = 1) n)

end

end A391345.P6605038488836331484

/-! ## A391345.P4793315363370761015

`A008587(A391341(n+1))`
-/

namespace A391345.P4793315363370761015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008587 (A391341 (n + 1)).toNat

end

end A391345.P4793315363370761015

/-! ## A391345.P10130954870496771622

`filter[A008706(n), A283991(#)]`
-/

namespace A391345.P10130954870496771622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A283991 (f1 j).toNat = 1) n)

end

end A391345.P10130954870496771622

/-! ## A391345.P788312346017839699

`filter[A091574(n), A283991(#)]`
-/

namespace A391345.P788312346017839699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091574 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A283991 (f1 j).toNat = 1) n)

end

end A391345.P788312346017839699

/-! ## A391345.P11284732946636066635

`filter[A008587(n+1), A283991(#)]`
-/

namespace A391345.P11284732946636066635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008587 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A283991 (f1 j).toNat = 1) n)

end

end A391345.P11284732946636066635

/-! ## A391345.P18379722106907930548

`filter[A135042(n+2), A283991(#)]`
-/

namespace A391345.P18379722106907930548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135042 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A283991 (f1 j).toNat = 1) n)

end

end A391345.P18379722106907930548

/-! ## A391345.P13116941536533041757

`filter[A063284(n+3), A283991(#)]`
-/

namespace A391345.P13116941536533041757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063284 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A283991 (f1 j).toNat = 1) n)

end

end A391345.P13116941536533041757

/-! ## A391345.P12399543330410660759

`filter[A164355(2*n+1), A283991(#)]`
-/

namespace A391345.P12399543330410660759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164355 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A283991 (f1 j).toNat = 1) n)

end

end A391345.P12399543330410660759

/-! ## A391345.P3689848051543315236

`∩[A186891(n+1), A008587(n)]`
-/

namespace A391345.P3689848051543315236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186891 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008587 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391345.P3689848051543315236

/-! ## A391345.P16794454679636551636

`∩[A186891(n+1), A017329(n)]`
-/

namespace A391345.P16794454679636551636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186891 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017329 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391345.P16794454679636551636

/-! ## A391345.P5480120189325738745

`∩[A072703(n+1), A186891(n+1)]`
-/

namespace A391345.P5480120189325738745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072703 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186891 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391345.P5480120189325738745

/-! ## A391345.P4457978459524489472

`∩[A084967(n+1), A186891(n+1)]`
-/

namespace A391345.P4457978459524489472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084967 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186891 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391345.P4457978459524489472

/-! ## A391345.P12916610026791551502

`∩[A121025(n+1), A186891(n+1)]`
-/

namespace A391345.P12916610026791551502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121025 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186891 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391345.P12916610026791551502

/-! ## A391345.P2130719439165942680

`∩[A186891(n+1), A277592(n+1)]`
-/

namespace A391345.P2130719439165942680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186891 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277592 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391345.P2130719439165942680

/-!
# A391346: Numbers k such that Stern polynomial B(5*k,x) is a multiple of B(5,x).

The programs for A391346, there is no canonical definition to state claims against.
-/

/-! ## A391346.P596828018885557199

`A391566(n+1)/5`
-/

namespace A391346.P596828018885557199
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A391566 (n + 1) : ℚ) / 5

end

end A391346.P596828018885557199

/-! ## A391346.P8311777565730986188

`A002266(A391566(n+1))`
-/

namespace A391346.P8311777565730986188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002266 (A391566 (n + 1)).toNat

end

end A391346.P8311777565730986188

/-!
# A391348: Numbers k such that Stern polynomial B(5*k,x) is equal to B(5,x)*B(k,x).

The programs for A391348, there is no canonical definition to state claims against.
-/

/-! ## A391348.P14259620575261230791

`eq[A031285(n), A269373(n+1)]`
-/

namespace A391348.P14259620575261230791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031285 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269373 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A391348.P14259620575261230791

/-!
# A391349: Numbers k such that Stern polynomial B(5*k,x) is not equal to B(5,x)*B(k,x).

The programs for A391349, there is no canonical definition to state claims against.
-/

/-! ## A391349.P5590461074194950052

`∪[A391347(n+1), A391350(n+1)]`
-/

namespace A391349.P5590461074194950052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391347 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391350 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A391349.P5590461074194950052

/-!
# A391350: Numbers k such that Stern polynomial B(5*k,x) is reducible, but not equal to B(5,x)*B(k,x).

The programs for A391350, there is no canonical definition to state claims against.
-/

/-! ## A391350.P17594160682174311295

`∩[A391342(n+1), A391349(n+1)]`
-/

namespace A391350.P17594160682174311295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391342 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391349 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391350.P17594160682174311295

/-!
# A391353: Numbers k such that 3*k - (greatest prime < 3*k) > (least prime > 3*k) - 3*k.

The programs for A391353, there is no canonical definition to state claims against.
-/

/-! ## A391353.P16416317105280027719

`∩[A182049(n+1), A199593(n+1)]`
-/

namespace A391353.P16416317105280027719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182049 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199593 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391353.P16416317105280027719

/-! ## A391353.P1934145425402535759

`∩[A199593(n+1), A346132(n+1)]`
-/

namespace A391353.P1934145425402535759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199593 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346132 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391353.P1934145425402535759

/-!
# A391354: Numbers k such that 4*k - (greatest prime < 4*k) < (least prime > 4*k) - 4*k.

The programs for A391354, the canonical program `A391354.P10099738109848602557` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A391354 has offset 1).

The definition of A391354 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2175 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A391354.P10099738109848602557

`record[A246277(A390788(n+1))]`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A391354

/-- `record[A246277(A390788(n+1))]` -/
def P10099738109848602557.Spec : Prop :=
  ∀ n, P10099738109848602557.a n = A391354 (n + 1)

theorem P10099738109848602557.correct : P10099738109848602557.Spec := by
  intro n
  simp only [A391354, Nat.add_sub_cancel]

end A391354

/-!
# A391357: Rectangular array R read by falling antidiagonals: R(n,k) = prime(n) + prime(n+k).

The programs for A391357, the canonical program `A391357.P17529039197337556772` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A391357 has offset 1).

The definition of A391357 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A391357.P17529039197337556772

`A389809(n+1)+A037126(n+1)`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A391357

/-- `A389809(n+1)+A037126(n+1)` -/
def P17529039197337556772.Spec : Prop :=
  ∀ n, P17529039197337556772.a n = A391357 (n + 1)

theorem P17529039197337556772.correct : P17529039197337556772.Spec := by
  intro n
  simp only [A391357, Nat.add_sub_cancel]

end A391357

/-! ## A391357.P11664834455728087006

`A204914(n+1)/A204890(n+1)`
-/

namespace A391357.P11664834455728087006
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A204914 (n + 1) : ℚ) / (A204890 (n + 1) : ℚ)

end

end A391357.P11664834455728087006

namespace A391357

/-- `A204914(n+1)/A204890(n+1)` -/
def P11664834455728087006.Spec : Prop :=
  ∀ n, P11664834455728087006.a n = (A391357 (n + 1) : ℚ)

end A391357

/-! ## A391357.P9234761840036298689

`A391358(A038722(n+1))`
-/

namespace A391357.P9234761840036298689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391358 (A038722 (n + 1)).toNat

end

end A391357.P9234761840036298689

namespace A391357

/-- `A391358(A038722(n+1))` -/
def P9234761840036298689.Spec : Prop :=
  ∀ n, P9234761840036298689.a n = A391357 (n + 1)

end A391357

/-! ## A391357.P6358570546045171169

`A065342(comp[∑[n]])`
-/

namespace A391357.P6358570546045171169
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065342 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A391357.P6358570546045171169

namespace A391357

/-- `A065342(comp[∑[n]])` -/
def P6358570546045171169.Spec : Prop :=
  ∀ n, P6358570546045171169.a n = A391357 (n + 1)

end A391357

/-! ## A391357.P7079234274207925790

`∑{p}[A339116(n+2), #]`
-/

namespace A391357.P7079234274207925790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339116 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A391357.P7079234274207925790

namespace A391357

/-- `∑{p}[A339116(n+2), #]` -/
def P7079234274207925790.Spec : Prop :=
  ∀ n, (P7079234274207925790.a n : ℤ) = A391357 (n + 1)

end A391357

/-! ## A391357.P17399707532677287272

`A001414(A339116(n+2))`
-/

namespace A391357.P17399707532677287272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A339116 (n + 2)).toNat

end

end A391357.P17399707532677287272

namespace A391357

/-- `A001414(A339116(n+2))` -/
def P17399707532677287272.Spec : Prop :=
  ∀ n, P17399707532677287272.a n = A391357 (n + 1)

end A391357

/-! ## A391357.P11974394147109192835

`A228578(A393286(n+1))`
-/

namespace A391357.P11974394147109192835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228578 (A393286 (n + 1)).toNat

end

end A391357.P11974394147109192835

namespace A391357

/-- `A228578(A393286(n+1))` -/
def P11974394147109192835.Spec : Prop :=
  ∀ n, P11974394147109192835.a n = A391357 (n + 1)

end A391357

/-! ## A391357.P5109811733390080630

`A089625(A018900(n+1))`
-/

namespace A391357.P5109811733390080630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089625 (A018900 (n + 1)).toNat

end

end A391357.P5109811733390080630

namespace A391357

/-- `A089625(A018900(n+1))` -/
def P5109811733390080630.Spec : Prop :=
  ∀ n, P5109811733390080630.a n = A391357 (n + 1)

end A391357

/-! ## A391357.P2953506480895407948

`A302054(A204985(n+1))`
-/

namespace A391357.P2953506480895407948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302054 (A204985 (n + 1)).toNat

end

end A391357.P2953506480895407948

namespace A391357

/-- `A302054(A204985(n+1))` -/
def P2953506480895407948.Spec : Prop :=
  ∀ n, P2953506480895407948.a n = A391357 (n + 1)

end A391357

/-! ## A391357.P9056575362775680411

`A344026(A136318(n+1))`
-/

namespace A391357.P9056575362775680411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344026 (A136318 (n + 1)).toNat

end

end A391357.P9056575362775680411

namespace A391357

/-- `A344026(A136318(n+1))` -/
def P9056575362775680411.Spec : Prop :=
  ∀ n, P9056575362775680411.a n = A391357 (n + 1)

end A391357

/-!
# A391358: Rectangular array R read by falling antidiagonals: R(n,k) = prime(k) + prime(n+k).

The programs for A391358, the canonical program `A391358.P1151688618796119787` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A391358 has offset 1).

The definition of A391358 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A391358.P1151688618796119787

`A389809(n+1)+A104887(n+1)`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A391358

/-- `A389809(n+1)+A104887(n+1)` -/
def P1151688618796119787.Spec : Prop :=
  ∀ n, P1151688618796119787.a n = A391358 (n + 1)

theorem P1151688618796119787.correct : P1151688618796119787.Spec := by
  intro n
  simp only [A391358, Nat.add_sub_cancel]

end A391358

/-! ## A391358.P13395796777116083960

`A391357(A038722(n+1))`
-/

namespace A391358.P13395796777116083960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391357 (A038722 (n + 1)).toNat

end

end A391358.P13395796777116083960

namespace A391358

/-- `A391357(A038722(n+1))` -/
def P13395796777116083960.Spec : Prop :=
  ∀ n, P13395796777116083960.a n = A391358 (n + 1)

end A391358

/-! ## A391358.P17375263344729265880

`A302054(A043569(n+1))`
-/

namespace A391358.P17375263344729265880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302054 (A043569 (n + 1)).toNat

end

end A391358.P17375263344729265880

namespace A391358

/-- `A302054(A043569(n+1))` -/
def P17375263344729265880.Spec : Prop :=
  ∀ n, P17375263344729265880.a n = A391358 (n + 1)

end A391358

/-!
# A391360: Number of irreducible elements of Z[(1+sqrt(-15))/2] (the ring of integers of Q(sqrt(-15))) of norm n up to association.

The programs for A391360, there is no canonical definition to state claims against.
-/

/-! ## A391360.P11484507408763709256

`A001511(n+1)*A260455(A051190(n+1))`
-/

namespace A391360.P11484507408763709256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (n + 1) * A260455 (A051190 (n + 1)).toNat

end

end A391360.P11484507408763709256

/-!
# A391361: Number of irreducible elements of Z[sqrt(-6)] of norm n up to association.

The programs for A391361, there is no canonical definition to state claims against.
-/

/-! ## A391361.P3183731440720271586

`A078588(A114412(n+1))*A156537(n+2)`
-/

namespace A391361.P3183731440720271586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078588 (A114412 (n + 1)).toNat * A156537 (n + 2)

end

end A391361.P3183731440720271586

/-! ## A391361.P1327662335584410515

`A286998(A332833(n)+∏{d}[n+1, #]/(n+1))`
-/

namespace A391361.P1327662335584410515
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286998 (SequenceMachineLib.roundAway ((A332833 n : ℚ) + ((∏ d ∈ Nat.divisors (f1 n), d : ℕ) : ℚ) / (n + 1 : ℚ))).toNat

end

end A391361.P1327662335584410515

/-! ## A391361.P17010426505548524024

`A124762(lt[A124801(n+1), A163626(n)])`
-/

namespace A391361.P17010426505548524024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124801 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163626 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124762 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A391361.P17010426505548524024

/-! ## A391361.P1176481119337288236

`and(A014417(n+1), A270644(A269194(n+1)))`
-/

namespace A391361.P1176481119337288236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A014417 (n + 1)) (A270644 (A269194 (n + 1)).toNat)

end

end A391361.P1176481119337288236

/-! ## A391361.P8451915567433766369

`A325780(3*n+4)%A327239(A189935(3*(n+1)))`
-/

namespace A391361.P8451915567433766369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A325780 (3 * n + 4)) (A327239 (A189935 (3 * (n + 1))).toNat)

end

end A391361.P8451915567433766369

/-!
# A391363: Numbers with more than one factorization (up to association) in Z[(1+sqrt(-15))/2], the ring of integers of Q(sqrt(-15)).

The programs for A391363, there is no canonical definition to state claims against.
-/

/-! ## A391363.P8673421790664155221

`lt[A268448(n+1), A319708(n+1)]+1`
-/

namespace A391363.P8673421790664155221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268448 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319708 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A391363.P8673421790664155221

/-! ## A391363.P6100985625651424832

`lt[A163809(n+1), A000234(A304442(n))]`
-/

namespace A391363.P6100985625651424832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163809 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000234 (A304442 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A391363.P6100985625651424832

/-! ## A391363.P8642951386770979591

`lt[A000196(A353842(2*(n+1))), A353845(n)]`
-/

namespace A391363.P8642951386770979591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A353842 (2 * (n + 1))).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353845 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A391363.P8642951386770979591

/-!
# A391364: Numbers with more than one factorization (up to association) in Z[sqrt(-6)].

The programs for A391364, there is no canonical definition to state claims against.
-/

/-! ## A391364.P291492368724662918

`A007916(2*n+5)-A133886(A114246(n+1))`
-/

namespace A391364.P291492368724662918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007916 (2 * n + 5) - A133886 (A114246 (n + 1)).toNat

end

end A391364.P291492368724662918

/-!
# A391365: Array read by antidiagonals: A(n,k) = reverse(n*k) = A004086(n*k).

The programs for A391365, there is no canonical definition to state claims against.
-/

/-! ## A391365.P12487281235831758715

`A004086(A004247(n))`
-/

namespace A391365.P12487281235831758715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (A004247 n).toNat

end

end A391365.P12487281235831758715

/-! ## A391365.P8060226854132025719

`A004086(A086460(n)-char[∑[n]])`
-/

namespace A391365.P8060226854132025719
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (A086460 n - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)).toNat

end

end A391365.P8060226854132025719

/-! ## A391365.P7656864834709741497

`A004086(log2(A117401(n)))`
-/

namespace A391365.P7656864834709741497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (SequenceMachineLib.roundAway (Real.logb 2 (A117401 n : ℝ))).toNat

end

end A391365.P7656864834709741497

/-! ## A391365.P5514066515372785096

`A004086(∑{e}[A118180(n), #])`
-/

namespace A391365.P5514066515372785096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118180 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p)

end

end A391365.P5514066515372785096

/-!
# A391366: Norms of prime ideals of Z[sqrt(-6)].

The programs for A391366, there is no canonical definition to state claims against.
-/

/-! ## A391366.P14899030419373683620

`∩[A116000(n+1), A296924(n+1)]`
-/

namespace A391366.P14899030419373683620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116000 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296924 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391366.P14899030419373683620

/-! ## A391366.P12172618260089715912

`∩[A178156(n+1), A296924(n+1)]`
-/

namespace A391366.P12172618260089715912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178156 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296924 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391366.P12172618260089715912

/-! ## A391366.P8260596404469517515

`∩[A273200(n+1), A296924(n+1)]`
-/

namespace A391366.P8260596404469517515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273200 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296924 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391366.P8260596404469517515

/-! ## A391366.P13802425122410169513

`∩[A294472(n+1), A296924(n+1)]`
-/

namespace A391366.P13802425122410169513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294472 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296924 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391366.P13802425122410169513

/-! ## A391366.P16724707638854384744

`∩[A296924(n+1), A300273(n+1)]`
-/

namespace A391366.P16724707638854384744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296924 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300273 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391366.P16724707638854384744

/-!
# A391372: a(n) = 2*a(n-1)^2 + a(n-1) + 1 with a(0) = 0.

The programs for A391372, the canonical program `A391372.P15563272751612175895` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A391372 has offset 0).

The definition of A391372 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A391372.P15563272751612175895

`A084849(a(n-1))` with `a(0)=0`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A391372

/-- `A084849(a(n-1))` -/
def P15563272751612175895.Spec : Prop :=
  ∀ n, P15563272751612175895.a n = A391372 n

theorem P15563272751612175895.correct : P15563272751612175895.Spec := by
  intro n
  simp only [A391372]

end A391372

/-! ## A391372.P10785249458918876412

`2*a(n-1)²+a(n-1)+1` with `a(0)=0`
-/

namespace A391372.P10785249458918876412
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  2 * a (n - 1) ^ 2 + (a (n - 1) + 1)

end

end A391372.P10785249458918876412

namespace A391372

/-- `2*a(n-1)²+a(n-1)+1` -/
def P10785249458918876412.Spec : Prop :=
  ∀ n, (P10785249458918876412.a n : ℤ) = A391372 n

end A391372

/-! ## A391372.P1140421297520487946

`(2*a(n-1)+1)*a(n-1)+1` with `a(0)=0`
-/

namespace A391372.P1140421297520487946
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  (2 * a (n - 1) + 1) * a (n - 1) + 1

end

end A391372.P1140421297520487946

namespace A391372

/-- `(2*a(n-1)+1)*a(n-1)+1` -/
def P1140421297520487946.Spec : Prop :=
  ∀ n, (P1140421297520487946.a n : ℤ) = A391372 n

end A391372

/-! ## A391372.P420815364228740185

`a(n-1)+a(n-1)²+a(n-1)²+1` with `a(0)=0`
-/

namespace A391372.P420815364228740185
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + (a (n - 1) ^ 2 + (a (n - 1) ^ 2 + 1))

end

end A391372.P420815364228740185

namespace A391372

/-- `a(n-1)+a(n-1)²+a(n-1)²+1` -/
def P420815364228740185.Spec : Prop :=
  ∀ n, (P420815364228740185.a n : ℤ) = A391372 n

end A391372

/-!
# A391375: Powers k^m, m > 1, where k is an odd Achilles number.

The programs for A391375, there is no canonical definition to state claims against.
-/

/-! ## A391375.P6832634899594975879

`A390953(A128555(A358820(n+1)))²`
-/

namespace A391375.P6832634899594975879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390953 (A128555 (A358820 (n + 1)).toNat).toNat ^ 2

end

end A391375.P6832634899594975879

/-! ## A391375.P8494002719044400576

`A390953(n+1)^A124771(A011782(n))`
-/

namespace A391375.P8494002719044400576
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A390953 (n + 1) : ℚ) ^ (A124771 (A011782 n).toNat : ℤ)

end

end A391375.P8494002719044400576

/-! ## A391375.P10992580537841990144

`A000290(A390953(n+1))`
-/

namespace A391375.P10992580537841990144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (A390953 (n + 1)).toNat

end

end A391375.P10992580537841990144

/-! ## A391375.P2773782169213858306

`A390953(n+1)^A010882(A300579(n))`
-/

namespace A391375.P2773782169213858306
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A390953 (n + 1) : ℚ) ^ (A010882 (A300579 n).toNat : ℤ)

end

end A391375.P2773782169213858306

/-!
# A391376: Powers k^m, m > 1, where k is an even Achilles number.

The programs for A391376, there is no canonical definition to state claims against.
-/

/-! ## A391376.P13878157908926386144

`A383394(comp[2*A164555(3*n+4)])`
-/

namespace A391376.P13878157908926386144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A164555 (3 * n + 4)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383394 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A391376.P13878157908926386144

/-!
# A391378: Expansion of g^2/(1 + x*g), where g = 1+x*g^4 is the g.f. of A002293.

The programs for A391378, there is no canonical definition to state claims against.
-/

/-! ## A391378.P17528094506059543768

`A389835(A149763(n))`
-/

namespace A391378.P17528094506059543768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389835 (A149763 n).toNat

end

end A391378.P17528094506059543768

/-!
# A391379: Expansion of g^2/(1 + x*g^2), where g = 1+x*g^4 is the g.f. of A002293.

The programs for A391379, there is no canonical definition to state claims against.
-/

/-! ## A391379.P763834948745110542

`abs(A156065(2*n+1))`
-/

namespace A391379.P763834948745110542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A156065 (2 * n + 1)|

end

end A391379.P763834948745110542

/-!
# A391380: Expansion of g*(1 + x*g), where g = 1+x*g^3 is the g.f. of A001764.

The programs for A391380, there is no canonical definition to state claims against.
-/

/-! ## A391380.P3490567202100149909

`A001764(n)+A001764(n)-A102893(n)`
-/

namespace A391380.P3490567202100149909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001764 n + (A001764 n - A102893 n)

end

end A391380.P3490567202100149909

/-! ## A391380.P11929040141354127772

`A101409(∑[n]+2)`
-/

namespace A391380.P11929040141354127772
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101409 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A391380.P11929040141354127772

/-!
# A391381: Expansion of g*(1 + x*g^2), where g = 1+x*g^4 is the g.f. of A002293.

The programs for A391381, there is no canonical definition to state claims against.
-/

/-! ## A391381.P65933740128031857

`A128139((n+1)*n^n)`
-/

namespace A391381.P65933740128031857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128139 ((n + 1) * n ^ n)

end

end A391381.P65933740128031857

/-!
# A391382: Expansion of g*(1 + x*g^3), where g = 1+x*g^5 is the g.f. of A002294.

The programs for A391382, there is no canonical definition to state claims against.
-/

/-! ## A391382.P13231128732498210874

`A105266(A258797(n+1))`
-/

namespace A391382.P13231128732498210874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105266 (A258797 (n + 1)).toNat

end

end A391382.P13231128732498210874

/-!
# A391383: Expansion of g/(1 - x*g^6), where g = 1+x*g^5 is the g.f. of A002294.

The programs for A391383, there is no canonical definition to state claims against.
-/

/-! ## A391383.P13388911807144086567

`A320813((n+1)²-n²)+char[xor(n, 2*n)]`
-/

namespace A391383.P13388911807144086567
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320813 ((n + 1) ^ 2 - n ^ 2) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A391383.P13388911807144086567

/-!
# A391384: Primes p such that p - 1 has exactly as many odd divisors as p + 1.

The programs for A391384, the canonical program `A391384.P18148672950887766433` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A391384 has offset 1).

The definition of A391384 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 792 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A391384.P18148672950887766433

`p?[A275418(n+1)]`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A391384

/-- `p?[A275418(n+1)]` -/
def P18148672950887766433.Spec : Prop :=
  ∀ n, P18148672950887766433.a n = A391384 (n + 1)

theorem P18148672950887766433.correct : P18148672950887766433.Spec := by
  intro n
  simp only [A391384, Nat.add_sub_cancel]

end A391384

/-! ## A391384.P824900380178125758

`filter[A275418(n+1), A010051(#)]`
-/

namespace A391384.P824900380178125758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275418 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A391384.P824900380178125758

namespace A391384

/-- `filter[A275418(n+1), A010051(#)]` -/
def P824900380178125758.Spec : Prop :=
  ∀ n, P824900380178125758.a n = A391384 (n + 1)

end A391384

/-! ## A391384.P17386263348624313116

`∩[A000040(n+1), A275418(n+1)]`
-/

namespace A391384.P17386263348624313116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275418 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391384.P17386263348624313116

namespace A391384

/-- `∩[A000040(n+1), A275418(n+1)]` -/
def P17386263348624313116.Spec : Prop :=
  ∀ n, (P17386263348624313116.a n : ℤ) = A391384 (n + 1)

end A391384

/-! ## A391384.P4554435313109239204

`∩[A004139(n+1), A275418(n+1)]`
-/

namespace A391384.P4554435313109239204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275418 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391384.P4554435313109239204

namespace A391384

/-- `∩[A004139(n+1), A275418(n+1)]` -/
def P4554435313109239204.Spec : Prop :=
  ∀ n, (P4554435313109239204.a n : ℤ) = A391384 (n + 1)

end A391384

/-! ## A391384.P5081172817980438094

`∩[A006005(n+1), A275418(n+1)]`
-/

namespace A391384.P5081172817980438094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275418 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391384.P5081172817980438094

namespace A391384

/-- `∩[A006005(n+1), A275418(n+1)]` -/
def P5081172817980438094.Spec : Prop :=
  ∀ n, (P5081172817980438094.a n : ℤ) = A391384 (n + 1)

end A391384

/-! ## A391384.P14628698173803037547

`∩[A008578(n+1), A275418(n+1)]`
-/

namespace A391384.P14628698173803037547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275418 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391384.P14628698173803037547

namespace A391384

/-- `∩[A008578(n+1), A275418(n+1)]` -/
def P14628698173803037547.Spec : Prop :=
  ∀ n, (P14628698173803037547.a n : ℤ) = A391384 (n + 1)

end A391384

/-! ## A391384.P6803378858737682066

`∩[A033946(n+1), A275418(n+1)]`
-/

namespace A391384.P6803378858737682066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275418 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391384.P6803378858737682066

namespace A391384

/-- `∩[A033946(n+1), A275418(n+1)]` -/
def P6803378858737682066.Spec : Prop :=
  ∀ n, (P6803378858737682066.a n : ℤ) = A391384 (n + 1)

end A391384

/-! ## A391384.P9020987405748096556

`∩[A045319(n+1), A275418(n+1)]`
-/

namespace A391384.P9020987405748096556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275418 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391384.P9020987405748096556

namespace A391384

/-- `∩[A045319(n+1), A275418(n+1)]` -/
def P9020987405748096556.Spec : Prop :=
  ∀ n, (P9020987405748096556.a n : ℤ) = A391384 (n + 1)

end A391384

/-! ## A391384.P15663261220535362208

`∩[A065091(n+1), A275418(n+1)]`
-/

namespace A391384.P15663261220535362208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275418 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391384.P15663261220535362208

namespace A391384

/-- `∩[A065091(n+1), A275418(n+1)]` -/
def P15663261220535362208.Spec : Prop :=
  ∀ n, (P15663261220535362208.a n : ℤ) = A391384 (n + 1)

end A391384

/-! ## A391384.P4692918238364201920

`∩[A065396(n+1), A275418(n+1)]`
-/

namespace A391384.P4692918238364201920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065396 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275418 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391384.P4692918238364201920

namespace A391384

/-- `∩[A065396(n+1), A275418(n+1)]` -/
def P4692918238364201920.Spec : Prop :=
  ∀ n, (P4692918238364201920.a n : ℤ) = A391384 (n + 1)

end A391384

/-! ## A391384.P10673115201206313639

`∩[A158611(n+1), A275418(n+1)]`
-/

namespace A391384.P10673115201206313639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275418 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391384.P10673115201206313639

namespace A391384

/-- `∩[A158611(n+1), A275418(n+1)]` -/
def P10673115201206313639.Spec : Prop :=
  ∀ n, (P10673115201206313639.a n : ℤ) = A391384 (n + 1)

end A391384

/-! ## A391384.P15785934189780467164

`∩[A182986(n+1), A275418(n+1)]`
-/

namespace A391384.P15785934189780467164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275418 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391384.P15785934189780467164

namespace A391384

/-- `∩[A182986(n+1), A275418(n+1)]` -/
def P15785934189780467164.Spec : Prop :=
  ∀ n, (P15785934189780467164.a n : ℤ) = A391384 (n + 1)

end A391384

/-! ## A391384.P8061611652678736780

`∩[A189710(n+1), A275418(n+1)]`
-/

namespace A391384.P8061611652678736780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189710 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275418 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391384.P8061611652678736780

namespace A391384

/-- `∩[A189710(n+1), A275418(n+1)]` -/
def P8061611652678736780.Spec : Prop :=
  ∀ n, (P8061611652678736780.a n : ℤ) = A391384 (n + 1)

end A391384

/-! ## A391384.P7172288370673375422

`∩[A210494(n+1), A275418(n+1)]`
-/

namespace A391384.P7172288370673375422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210494 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275418 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391384.P7172288370673375422

namespace A391384

/-- `∩[A210494(n+1), A275418(n+1)]` -/
def P7172288370673375422.Spec : Prop :=
  ∀ n, (P7172288370673375422.a n : ℤ) = A391384 (n + 1)

end A391384

/-! ## A391384.P13522346461092073600

`filter[A275418(n+1), A080339(#)]`
-/

namespace A391384.P13522346461092073600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275418 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A391384.P13522346461092073600

namespace A391384

/-- `filter[A275418(n+1), A080339(#)]` -/
def P13522346461092073600.Spec : Prop :=
  ∀ n, P13522346461092073600.a n = A391384 (n + 1)

end A391384

/-! ## A391384.P3076225191879679617

`filter[A275418(n+1), A080545(#)]`
-/

namespace A391384.P3076225191879679617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275418 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080545 (f1 j).toNat = 1) n)

end

end A391384.P3076225191879679617

namespace A391384

/-- `filter[A275418(n+1), A080545(#)]` -/
def P3076225191879679617.Spec : Prop :=
  ∀ n, P3076225191879679617.a n = A391384 (n + 1)

end A391384

/-!
# A391386: Irregular triangle read by rows: powers of 2 in the factorization of A391261; 0 if A391261(n,k) = 0.

The programs for A391386, there is no canonical definition to state claims against.
-/

/-! ## A391386.P6784234242592984764

`A175267(lcm(A351241(n+1), A391261(n+1)))`
-/

namespace A391386.P6784234242592984764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175267 (Int.lcm (A351241 (n + 1)) (A391261 (n + 1)))

end

end A391386.P6784234242592984764

/-! ## A391386.P4812033508800437368

`A085975(A222263(n+1))`
-/

namespace A391386.P4812033508800437368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085975 (A222263 (n + 1)).toNat

end

end A391386.P4812033508800437368

/-! ## A391386.P4611306384615068858

`A083917(A224731(n+1)*A227888(n+1))`
-/

namespace A391386.P4611306384615068858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083917 (A224731 (n + 1) * A227888 (n + 1)).toNat

end

end A391386.P4611306384615068858

/-! ## A391386.P5229721824492635873

`A180160(A001222(n+1)^A241917(2*n+1))`
-/

namespace A391386.P5229721824492635873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180160 (SequenceMachineLib.roundAway ((A001222 (n + 1) : ℚ) ^ (A241917 (2 * n + 1) : ℤ))).toNat

end

end A391386.P5229721824492635873

/-! ## A391386.P15253184324452658682

`A337690(A032251(n))`
-/

namespace A391386.P15253184324452658682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337690 (A032251 n).toNat

end

end A391386.P15253184324452658682

/-!
# A391387: Irregular triangle read by rows: greatest odd divisor of A391261(n,k), signed; 0 if A391261(n,k) = 0.

The programs for A391387, there is no canonical definition to state claims against.
-/

/-! ## A391387.P5218828723203074386

`A390279(A232102(n+1))`
-/

namespace A391387.P5218828723203074386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390279 (A232102 (n + 1)).toNat

end

end A391387.P5218828723203074386

/-! ## A391387.P15593360138288754751

`A117569(A279985(n)%A265506(2*n))`
-/

namespace A391387.P15593360138288754751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117569 (Int.tmod (A279985 n) (A265506 (2 * n))).toNat

end

end A391387.P15593360138288754751

/-! ## A391387.P5909918387341462518

`A054354(A005578(n+2)-A000002(n+1))`
-/

namespace A391387.P5909918387341462518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054354 (A005578 (n + 2) - A000002 (n + 1)).toNat

end

end A391387.P5909918387341462518

/-! ## A391387.P9468674642643508040

`A270646(A263859(3*n+1))-A028334(n+2)`
-/

namespace A391387.P9468674642643508040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270646 (A263859 (3 * n + 1)).toNat - A028334 (n + 2)

end

end A391387.P9468674642643508040

/-! ## A391387.P6159920469176800557

`A008683(A096399(2*n+3)-A117278(n+2))`
-/

namespace A391387.P6159920469176800557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A096399 (2 * n + 3) - A117278 (n + 2)).toNat

end

end A391387.P6159920469176800557

/-!
# A391388: Site percolation series for square lattice: coefficients of the power series expansion in powers of q=1-p of the probability that a given site (not assumed to be open) belongs to the infinite cluster, where p is the probability that a site is open.

The programs for A391388, there is no canonical definition to state claims against.
-/

/-! ## A391388.P7432700589276398512

`Δ[A391389(abs(1-n))]`
-/

namespace A391388.P7432700589276398512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391389 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A391388.P7432700589276398512

/-!
# A391389: Site percolation series for square lattice: coefficients of the power series expansion in powers of q=1-p of the probability that a given open site belongs to the infinite cluster, where p is the probability that a site is open.

The programs for A391389, there is no canonical definition to state claims against.
-/

/-! ## A391389.P5666151797714431779

`∑[A391388(n)]`
-/

namespace A391389.P5666151797714431779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391388 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A391389.P5666151797714431779

/-!
# A391390: Site percolation series for triangular lattice: coefficients of the power series expansion in powers of q=1-p of the probability that a given site (not assumed to be open) belongs to the infinite cluster, where p is the probability that a site is open.

The programs for A391390, there is no canonical definition to state claims against.
-/

/-! ## A391390.P6726465420753176190

`Δ[A391391(abs(1-n))]`
-/

namespace A391390.P6726465420753176190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391391 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A391390.P6726465420753176190

/-!
# A391391: Site percolation series for triangular lattice: coefficients of the power series expansion in powers of q=1-p of the probability that a given open site belongs to the infinite cluster, where p is the probability that a site is open.

The programs for A391391, there is no canonical definition to state claims against.
-/

/-! ## A391391.P11907045004652153941

`∑[A391390(n)]`
-/

namespace A391391.P11907045004652153941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391390 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A391391.P11907045004652153941

/-!
# A391393: Site percolation series for hexagonal lattice: coefficients of the power series expansion in powers of q=1-p of the probability that a given open site belongs to the infinite cluster, where p is the probability that a site is open.

The programs for A391393, there is no canonical definition to state claims against.
-/

/-! ## A391393.P15443254413959152980

`∑[A391392(n)]`
-/

namespace A391393.P15443254413959152980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391392 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A391393.P15443254413959152980

/-!
# A391394: Possible contents of pin 3 (encoded) during execution of the optimal tower of Hanoi algorithm solving the problem on infinitely many disks on pin 1.

The programs for A391394, there is no canonical definition to state claims against.
-/

/-! ## A391394.P6808343719861227877

`eq[A063695(n), A265263(n)]`
-/

namespace A391394.P6808343719861227877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063695 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265263 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A391394.P6808343719861227877

/-! ## A391394.P3687049498290002142

`eq[A063694(n), A377404(n)]`
-/

namespace A391394.P3687049498290002142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063694 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377404 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A391394.P3687049498290002142

/-! ## A391394.P4344991726570088825

`∩[A053754(n+1), A336231(n+1)]`
-/

namespace A391394.P4344991726570088825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053754 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336231 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391394.P4344991726570088825

/-! ## A391394.P16161105001820261977

`eq[A010060(n), A343029(A001969(n+1))]`
-/

namespace A391394.P16161105001820261977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343029 (A001969 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A391394.P16161105001820261977

/-! ## A391394.P10127604702602058469

`eq[A001285(n)-1, A343029(A001969(n+1))]`
-/

namespace A391394.P10127604702602058469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001285 n - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343029 (A001969 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A391394.P10127604702602058469

/-! ## A391394.P7529145077776887744

`A004524(A360800(n+1))`
-/

namespace A391394.P7529145077776887744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A360800 (n + 1)).toNat

end

end A391394.P7529145077776887744

/-!
# A391396: Numbers k such that k and k+1 are both numbers whose number of divisors is 3 times a power of 2 (A377562).

The programs for A391396, there is no canonical definition to state claims against.
-/

/-! ## A391396.P15464255815972696813

`∩[A377562(n+1), A391397(n+1)]`
-/

namespace A391396.P15464255815972696813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377562 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391397 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391396.P15464255815972696813

/-! ## A391396.P9898999505597046856

`A085651(A032551(n+2))`
-/

namespace A391396.P9898999505597046856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085651 (A032551 (n + 2)).toNat

end

end A391396.P9898999505597046856

/-! ## A391396.P16280944519266647661

`∩[A071318(n+1), A087920(n+1)]`
-/

namespace A391396.P16280944519266647661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071318 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087920 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391396.P16280944519266647661

/-!
# A391398: Number of compositions of n where the median of parts equals 1.

The programs for A391398, there is no canonical definition to state claims against.
-/

/-! ## A391398.P16336916693597413018

`∑{d}[n+1, A008683(#)*A388070((n+1)/#)]`
-/

namespace A391398.P16336916693597413018
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A388070 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A391398.P16336916693597413018

/-! ## A391398.P17669076332193318013

`A000079(n)+A371358(n)-A371358(n+1)`
-/

namespace A391398.P17669076332193318013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n + (A371358 n - A371358 (n + 1))

end

end A391398.P17669076332193318013

/-!
# A391399: a(n) = Sum_{k=0..floor(n/3)} binomial(k,2*n-6*k).

The programs for A391399, the canonical program `A391399.P4179791730406078398` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A391399 has offset 0).

The definition of A391399 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A391399.P4179791730406078398

`2*a(n-3)-a(n-6)+a(n-7)` with `a(0)=1, a(1)=0, a(2)=0, a(3)=1, a(4)=0, a(5)=0, a(6)=1`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A391399

/-- `2*a(n-3)-a(n-6)+a(n-7)` -/
def P4179791730406078398.Spec : Prop :=
  ∀ n, P4179791730406078398.a n = A391399 n

theorem P4179791730406078398.correct : P4179791730406078398.Spec := by
  intro n
  simp only [A391399]

end A391399

/-! ## A391399.P15558205604223755574

`A017847(2*n)`
-/

namespace A391399.P15558205604223755574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017847 (2 * n)

end

end A391399.P15558205604223755574

namespace A391399

/-- `A017847(2*n)` -/
def P15558205604223755574.Spec : Prop :=
  ∀ n, P15558205604223755574.a n = A391399 n

end A391399

/-! ## A391399.P14238472958282031197

`A127841(2*(n+4))`
-/

namespace A391399.P14238472958282031197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127841 (2 * (n + 4))

end

end A391399.P14238472958282031197

namespace A391399

/-- `A127841(2*(n+4))` -/
def P14238472958282031197.Spec : Prop :=
  ∀ n, P14238472958282031197.a n = A391399 n

end A391399

/-! ## A391399.P16289622983072965496

`A060396(A116523(n+1))`
-/

namespace A391399.P16289622983072965496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060396 (A116523 (n + 1)).toNat

end

end A391399.P16289622983072965496

namespace A391399

/-- `A060396(A116523(n+1))` -/
def P16289622983072965496.Spec : Prop :=
  ∀ n, P16289622983072965496.a n = A391399 n

end A391399

/-! ## A391399.P12980359991308203542

`A178725(A192220(n+1))`
-/

namespace A391399.P12980359991308203542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178725 (A192220 (n + 1)).toNat

end

end A391399.P12980359991308203542

namespace A391399

/-- `A178725(A192220(n+1))` -/
def P12980359991308203542.Spec : Prop :=
  ∀ n, P12980359991308203542.a n = A391399 n

end A391399

