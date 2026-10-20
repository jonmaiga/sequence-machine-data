import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
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
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C002
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
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
# A348300: a(n) is the largest number that is the digit sum of the square of an n-digit number.

The programs for A348300, there is no canonical definition to state claims against.
-/

/-! ## A348300.P14009091865679571578

`A371728(2*(n+1))`
-/

namespace A348300.P14009091865679571578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371728 (2 * (n + 1))

end

end A348300.P14009091865679571578

/-! ## A348300.P6819939958203386349

`record[A371728(A366789(n+1)+1)]`
-/

namespace A348300.P6819939958203386349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371728 (A366789 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A348300.P6819939958203386349

/-! ## A348300.P6611453796641407372

`A371728(A004277(n+1))%A090782(n+1)`
-/

namespace A348300.P6611453796641407372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A371728 (A004277 (n + 1)).toNat) (A090782 (n + 1))

end

end A348300.P6611453796641407372

/-! ## A348300.P9122443836295031654

`∪[A092002(n+1), A371728(A004277(n+1))]`
-/

namespace A348300.P9122443836295031654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092002 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371728 (A004277 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A348300.P9122443836295031654

/-!
# A348301: a(n) is the difference between the numerator and denominator of the (reduced) fraction Sum_{i = 1..n} 1/prime(i).

The programs for A348301, there is no canonical definition to state claims against.
-/

/-! ## A348301.P2857658852260466201

`A024451(n+1)-A002110(n+1)`
-/

namespace A348301.P2857658852260466201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024451 (n + 1) - A002110 (n + 1)

end

end A348301.P2857658852260466201

/-! ## A348301.P7218269566034719226

`A024451(n+1)-∏[A008578(n+2)]`
-/

namespace A348301.P7218269566034719226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024451 (n + 1) - ∏ j ∈ Finset.range (n + 1), f1 j

end

end A348301.P7218269566034719226

/-! ## A348301.P6846541402838940656

`A024451(n+1)-∏[A015919(n+2)]`
-/

namespace A348301.P6846541402838940656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015919 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024451 (n + 1) - ∏ j ∈ Finset.range (n + 1), f1 j

end

end A348301.P6846541402838940656

/-! ## A348301.P2058385617620741284

`A024451(n+1)-∏[A064555(n+2)]`
-/

namespace A348301.P2058385617620741284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064555 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024451 (n + 1) - ∏ j ∈ Finset.range (n + 1), f1 j

end

end A348301.P2058385617620741284

/-! ## A348301.P16810303118091248406

`A024451(n+1)-record[A108951(n+2)]`
-/

namespace A348301.P16810303118091248406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108951 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024451 (n + 1) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A348301.P16810303118091248406

/-! ## A348301.P1123118765639309247

`A024451(n+1)-∏[record[A006530(n+2)]]`
-/

namespace A348301.P1123118765639309247
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024451 (n + 1) - ∏ j ∈ Finset.range (n + 1), f1 j

end

end A348301.P1123118765639309247

/-! ## A348301.P3000875063471131173

`A024451(n+1)-∏[record[A020639(n+2)]]`
-/

namespace A348301.P3000875063471131173
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024451 (n + 1) - ∏ j ∈ Finset.range (n + 1), f1 j

end

end A348301.P3000875063471131173

/-! ## A348301.P7910223774470349593

`A024451(n+1)-A034386(A000040(n+1))`
-/

namespace A348301.P7910223774470349593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024451 (n + 1) - A034386 (A000040 (n + 1)).toNat

end

end A348301.P7910223774470349593

/-! ## A348301.P3120903350821175116

`A106830(A000040(n+1))-A002110(n+1)`
-/

namespace A348301.P3120903350821175116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106830 (A000040 (n + 1)).toNat - A002110 (n + 1)

end

end A348301.P3120903350821175116

/-! ## A348301.P7618469928049501281

`A024451(n+1)+A143293(n)-A143293(n+1)`
-/

namespace A348301.P7618469928049501281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024451 (n + 1) + (A143293 n - A143293 (n + 1))

end

end A348301.P7618469928049501281

/-!
# A348303: a(n) is the largest n-digit number whose square has a digital sum equal to A348300(n).

The programs for A348303, there is no canonical definition to state claims against.
-/

/-! ## A348303.P12500629171894343371

`A379298(2*(n+1))`
-/

namespace A348303.P12500629171894343371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379298 (2 * (n + 1))

end

end A348303.P12500629171894343371

/-! ## A348303.P13920520451289639615

`sqrt(A069666(2*(n+1)))`
-/

namespace A348303.P13920520451289639615
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A069666 (2 * (n + 1)) : ℝ)

end

end A348303.P13920520451289639615

/-!
# A348304: a(n) = Sum_{d|n} d'', where d'' is the second arithmetic derivative of d (A068346).

The programs for A348304, the canonical program `A348304.P16790100513106976712` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A348304 has offset 1).

The definition of A348304 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A348304.P16790100513106976712

`∑{d}[n+1, A068346(#)]`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A348304

/-- `∑{d}[n+1, A068346(#)]` -/
def P16790100513106976712.Spec : Prop :=
  ∀ n, P16790100513106976712.a n = A348304 (n + 1)

theorem P16790100513106976712.correct : P16790100513106976712.Spec := by
  intro n
  simp only [A348304, Nat.add_sub_cancel]

end A348304

/-! ## A348304.P240736639723202969

`∑{d}[n+1, A003415(A003415(#))]`
-/

namespace A348304.P240736639723202969
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A003415 (A003415 d).toNat

end

end A348304.P240736639723202969

namespace A348304

/-- `∑{d}[n+1, A003415(A003415(#))]` -/
def P240736639723202969.Spec : Prop :=
  ∀ n, P240736639723202969.a n = A348304 (n + 1)

end A348304

/-!
# A348306: List of Agathokakological Numbers "k": string of digits of the juxtaposition of the prime factors of k has the same length as k but these digits do not appear in k.

The programs for A348306, there is no canonical definition to state claims against.
-/

/-! ## A348306.P6411263014438889134

`∩[A035139(n+1), A109608(n+1)]`
-/

namespace A348306.P6411263014438889134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109608 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A348306.P6411263014438889134

/-!
# A348307: Primes p such that (p-1)/2, (p-2)/3, 2*p+1, 3*p+2 are all prime numbers.

The programs for A348307, there is no canonical definition to state claims against.
-/

/-! ## A348307.P17137697897455430504

`∩[A059455(n+1), A152292(n+1)]`
-/

namespace A348307.P17137697897455430504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059455 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152292 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A348307.P17137697897455430504

/-! ## A348307.P3349278249842982882

`∩[floor(A066179(n+1)/2), A152292(n+1)]`
-/

namespace A348307.P3349278249842982882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A066179 (n + 1) : ℚ) / 2⌋

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152292 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A348307.P3349278249842982882

/-! ## A348307.P6409872265034531839

`∩[2*A007700(n+1)+1, A152292(n+1)]`
-/

namespace A348307.P6409872265034531839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A007700 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152292 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A348307.P6409872265034531839

/-! ## A348307.P2808761757385543637

`∩[3*A023246(n+1)+2, A059455(n+1)]`
-/

namespace A348307.P2808761757385543637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A023246 (n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059455 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A348307.P2808761757385543637

/-! ## A348307.P5115294850176247572

`∩[2*A007700(n+1)+1, 3*A023246(n+1)+2]`
-/

namespace A348307.P5115294850176247572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A007700 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A023246 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A348307.P5115294850176247572

/-!
# A348308: a(n) = Sum_{k=0..floor(n/6)} (-1)^k * binomial(n-3*k,3*k).

The programs for A348308, the canonical program `A348308.P413617674430131361` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A348308 has offset 0).

The definition of A348308 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A348308.P413617674430131361

`3*a(n-1)-3*a(n-2)+a(n-3)-a(n-6)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1, a(4)=1, a(5)=1`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A348308

/-- `3*a(n-1)-3*a(n-2)+a(n-3)-a(n-6)` -/
def P413617674430131361.Spec : Prop :=
  ∀ n, P413617674430131361.a n = A348308 n

theorem P413617674430131361.correct : P413617674430131361.Spec := by
  intro n
  simp only [A348308]

end A348308

/-! ## A348308.P8200067092519246368

`A119326(n)-A118759(A101552(n))`
-/

namespace A348308.P8200067092519246368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119326 n - A118759 (A101552 n).toNat

end

end A348308.P8200067092519246368

namespace A348308

/-- `A119326(n)-A118759(A101552(n))` -/
def P8200067092519246368.Spec : Prop :=
  ∀ n, P8200067092519246368.a n = A348308 n

end A348308

/-! ## A348308.P17127987732770713355

`A196929(n+1)-A118759(A101552(n))`
-/

namespace A348308.P17127987732770713355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196929 (n + 1) - A118759 (A101552 n).toNat

end

end A348308.P17127987732770713355

namespace A348308

/-- `A196929(n+1)-A118759(A101552(n))` -/
def P17127987732770713355.Spec : Prop :=
  ∀ n, P17127987732770713355.a n = A348308 n

end A348308

/-! ## A348308.P1957248977119365272

`A259094(A147342(n+3))-A101552(n)`
-/

namespace A348308.P1957248977119365272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259094 (A147342 (n + 3)).toNat - A101552 n

end

end A348308.P1957248977119365272

namespace A348308

/-- `A259094(A147342(n+3))-A101552(n)` -/
def P1957248977119365272.Spec : Prop :=
  ∀ n, P1957248977119365272.a n = A348308 n

end A348308

/-! ## A348308.P11491675712607434504

`A187223(A000051(n))-A100134(n)`
-/

namespace A348308.P11491675712607434504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187223 (A000051 n).toNat - A100134 n

end

end A348308.P11491675712607434504

namespace A348308

/-- `A187223(A000051(n))-A100134(n)` -/
def P11491675712607434504.Spec : Prop :=
  ∀ n, P11491675712607434504.a n = A348308 n

end A348308

/-!
# A348309: a(n) = Sum_{k=0..floor(n/8)} (-1)^k * binomial(n-4*k,4*k).

The programs for A348309, the canonical program `A348309.P10307987278490151087` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A348309 has offset 0).

The definition of A348309 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A348309.P10307987278490151087

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)-a(n-8)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1, a(4)=1, a(5)=1, a(6)=1, a(7)=1`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A348309

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)-a(n-8)` -/
def P10307987278490151087.Spec : Prop :=
  ∀ n, P10307987278490151087.a n = A348309 n

theorem P10307987278490151087.correct : P10307987278490151087.Spec := by
  intro n
  simp only [A348309]

end A348309

/-! ## A348309.P6795229547736237128

`A000005(A014234(n+1))-A348289(n)`
-/

namespace A348309.P6795229547736237128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A014234 (n + 1)).toNat - A348289 n

end

end A348309.P6795229547736237128

namespace A348309

/-- `A000005(A014234(n+1))-A348289(n)` -/
def P6795229547736237128.Spec : Prop :=
  ∀ n, P6795229547736237128.a n = A348309 n

end A348309

/-! ## A348309.P7999554724118968685

`A007978(A357234(n+1))-A348289(n)`
-/

namespace A348309.P7999554724118968685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007978 (A357234 (n + 1)).toNat - A348289 n

end

end A348309.P7999554724118968685

namespace A348309

/-- `A007978(A357234(n+1))-A348289(n)` -/
def P7999554724118968685.Spec : Prop :=
  ∀ n, P7999554724118968685.a n = A348309 n

end A348309

/-! ## A348309.P14840430322282956699

`A297169(A265772(n+1))-A348289(n)`
-/

namespace A348309.P14840430322282956699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297169 (A265772 (n + 1)).toNat - A348289 n

end

end A348309.P14840430322282956699

namespace A348309

/-- `A297169(A265772(n+1))-A348289(n)` -/
def P14840430322282956699.Spec : Prop :=
  ∀ n, P14840430322282956699.a n = A348309 n

end A348309

/-!
# A348310: a(n) = Sum_{k=0..floor(n/10)} (-1)^k * binomial(n-5*k,5*k).

The programs for A348310, there is no canonical definition to state claims against.
-/

/-! ## A348310.P5711996746596896725

`A218878(A290850(n))-A348290(n)`
-/

namespace A348310.P5711996746596896725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218878 (A290850 n).toNat - A348290 n

end

end A348310.P5711996746596896725

/-! ## A348310.P3448922872941570078

`A002828(A338762(n+1))-A348290(n)`
-/

namespace A348310.P3448922872941570078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002828 (A338762 (n + 1)).toNat - A348290 n

end

end A348310.P3448922872941570078

/-! ## A348310.P1684111633766299486

`A000005(A069675(3*(n+1)))-A348290(n)`
-/

namespace A348310.P1684111633766299486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A069675 (3 * (n + 1))).toNat - A348290 n

end

end A348310.P1684111633766299486

/-! ## A348310.P15818211006066210284

`A010846(A216823(n+1))-A348290(n)`
-/

namespace A348310.P15818211006066210284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010846 (A216823 (n + 1)).toNat - A348290 n

end

end A348310.P15818211006066210284

/-! ## A348310.P14026835645710464114

`A222084(A175791(n+1))-A348290(n)`
-/

namespace A348310.P14026835645710464114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222084 (A175791 (n + 1)).toNat - A348290 n

end

end A348310.P14026835645710464114

/-!
# A348311: a(n) = n! * Sum_{k=1..n} (-1)^k * (k-2) / (k-1)!.

The programs for A348311, the canonical program `A348311.P16411032212301037777` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A348311 has offset 0).

The definition of A348311 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A348311.P16411032212301037777

`n*(a(n-1)+(-1)^n*(n-2))` with `a(0)=0`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A348311

/-- `n*(a(n-1)+(-1)^n*(n-2))` -/
def P16411032212301037777.Spec : Prop :=
  ∀ n, P16411032212301037777.a n = A348311 n

theorem P16411032212301037777.correct : P16411032212301037777.Spec := by
  intro n
  simp only [A348311]

end A348311

/-! ## A348311.P17830473147705891958

`n*A212291(abs(1-n))`
-/

namespace A348311.P17830473147705891958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A212291 |1 - (n : ℤ)|.toNat

end

end A348311.P17830473147705891958

namespace A348311

/-- `n*A212291(abs(1-n))` -/
def P17830473147705891958.Spec : Prop :=
  ∀ n, P17830473147705891958.a n = A348311 n

end A348311

/-! ## A348311.P13822799522725814258

`abs(n-2*(1-A182386(n)))`
-/

namespace A348311.P13822799522725814258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) - 2 * (1 - A182386 n)|

end

end A348311.P13822799522725814258

namespace A348311

/-- `abs(n-2*(1-A182386(n)))` -/
def P13822799522725814258.Spec : Prop :=
  ∀ n, P13822799522725814258.a n = A348311 n

end A348311

/-! ## A348311.P14130845637053693528

`abs(3*n-4*A009574(n))`
-/

namespace A348311.P14130845637053693528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(3 * n : ℤ) - 4 * A009574 n|

end

end A348311.P14130845637053693528

namespace A348311

/-- `abs(3*n-4*A009574(n))` -/
def P14130845637053693528.Spec : Prop :=
  ∀ n, P14130845637053693528.a n = A348311 n

end A348311

/-! ## A348311.P3571505354281137304

`n*(A097141(n)+a(n-1))` with `a(0)=0`
-/

namespace A348311.P3571505354281137304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (n : ℤ) * (A097141 n + a (n - 1))

end

end A348311.P3571505354281137304

namespace A348311

/-- `n*(A097141(n)+a(n-1))` -/
def P3571505354281137304.Spec : Prop :=
  ∀ n, P3571505354281137304.a n = A348311 n

end A348311

/-! ## A348311.P10167239037271205406

`A131386(n)+n*a(n-1)` with `a(0)=0`
-/

namespace A348311.P10167239037271205406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A131386 n + (n : ℤ) * a (n - 1)

end

end A348311.P10167239037271205406

namespace A348311

/-- `A131386(n)+n*a(n-1)` -/
def P10167239037271205406.Spec : Prop :=
  ∀ n, P10167239037271205406.a n = A348311 n

end A348311

/-!
# A348312: a(n) = n! * Sum_{k=0..n-1} 3^k / k!.

The programs for A348312, the canonical program `A348312.P15396232427706488755` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A348312 has offset 0).

The definition of A348312 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A348312.P15396232427706488755

`n*(a(n-1)+3^(n-1))` with `a(0)=0`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A348312

/-- `n*(a(n-1)+3^(n-1))` -/
def P15396232427706488755.Spec : Prop :=
  ∀ n, P15396232427706488755.a n = (A348312 n : ℚ)

end A348312

/-! ## A348312.P14197904768028223949

`n*(3^(n-1)-floor(-a(n-1)))` with `a(0)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A348312.P14197904768028223949
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  (n : ℚ) * ((3 : ℚ) ^ ((n : ℤ) - 1 : ℤ) - (⌊-a (n - 1)⌋ : ℚ))

end

end A348312.P14197904768028223949

namespace A348312

/-- `n*(3^(n-1)-floor(-a(n-1)))` -/
def P14197904768028223949.Spec : Prop :=
  ∀ n, P14197904768028223949.a n = (A348312 n : ℚ)

end A348312

/-! ## A348312.P10990514686061466342

`n*(3^(n-1)-ceil(-a(n-1)))` with `a(0)=0`

`ceil` is left out, it is the identity on integers.
-/

namespace A348312.P10990514686061466342
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  (n : ℚ) * ((3 : ℚ) ^ ((n : ℤ) - 1 : ℤ) - (⌈-a (n - 1)⌉ : ℚ))

end

end A348312.P10990514686061466342

namespace A348312

/-- `n*(3^(n-1)-ceil(-a(n-1)))` -/
def P10990514686061466342.Spec : Prop :=
  ∀ n, P10990514686061466342.a n = (A348312 n : ℚ)

end A348312

/-! ## A348312.P10469111411663728454

`n*(3^(n-1)-round(-a(n-1)))` with `a(0)=0`

`round` is left out, it is the identity on integers.
-/

namespace A348312.P10469111411663728454
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  (n : ℚ) * ((3 : ℚ) ^ ((n : ℤ) - 1 : ℤ) - (SequenceMachineLib.roundAway (-a (n - 1)) : ℚ))

end

end A348312.P10469111411663728454

namespace A348312

/-- `n*(3^(n-1)-round(-a(n-1)))` -/
def P10469111411663728454.Spec : Prop :=
  ∀ n, P10469111411663728454.a n = (A348312 n : ℚ)

end A348312

/-! ## A348312.P17032513599497445206

`n/3*A195255(n)`
-/

namespace A348312.P17032513599497445206
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 3 * (A195255 n : ℚ)

end

end A348312.P17032513599497445206

namespace A348312

/-- `n/3*A195255(n)` -/
def P17032513599497445206.Spec : Prop :=
  ∀ n, P17032513599497445206.a n = (A348312 n : ℚ)

end A348312

/-! ## A348312.P11696588896204345775

`A053486(n)-3^n`
-/

namespace A348312.P11696588896204345775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053486 n - (3 ^ n : ℤ)

end

end A348312.P11696588896204345775

namespace A348312

/-- `A053486(n)-3^n` -/
def P11696588896204345775.Spec : Prop :=
  ∀ n, P11696588896204345775.a n = A348312 n

end A348312

/-!
# A348314: a(n) = n! * Sum_{k=0..n-1} 4^k / k!.

The programs for A348314, the canonical program `A348314.P1546331014970432338` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A348314 has offset 0).

The definition of A348314 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A348314.P1546331014970432338

`n*(a(n-1)+4^(n-1))` with `a(0)=0`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A348314

/-- `n*(a(n-1)+4^(n-1))` -/
def P1546331014970432338.Spec : Prop :=
  ∀ n, P1546331014970432338.a n = (A348314 n : ℚ)

end A348314

/-! ## A348314.P13341484668803129935

`n*(4^(n-1)-floor(-a(n-1)))` with `a(0)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A348314.P13341484668803129935
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  (n : ℚ) * ((4 : ℚ) ^ ((n : ℤ) - 1 : ℤ) - (⌊-a (n - 1)⌋ : ℚ))

end

end A348314.P13341484668803129935

namespace A348314

/-- `n*(4^(n-1)-floor(-a(n-1)))` -/
def P13341484668803129935.Spec : Prop :=
  ∀ n, P13341484668803129935.a n = (A348314 n : ℚ)

end A348314

/-! ## A348314.P13523105613740186667

`n*(4^(n-1)-ceil(-a(n-1)))` with `a(0)=0`

`ceil` is left out, it is the identity on integers.
-/

namespace A348314.P13523105613740186667
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  (n : ℚ) * ((4 : ℚ) ^ ((n : ℤ) - 1 : ℤ) - (⌈-a (n - 1)⌉ : ℚ))

end

end A348314.P13523105613740186667

namespace A348314

/-- `n*(4^(n-1)-ceil(-a(n-1)))` -/
def P13523105613740186667.Spec : Prop :=
  ∀ n, P13523105613740186667.a n = (A348314 n : ℚ)

end A348314

/-! ## A348314.P5313986140025778732

`n*(4^(n-1)-round(-a(n-1)))` with `a(0)=0`

`round` is left out, it is the identity on integers.
-/

namespace A348314.P5313986140025778732
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  (n : ℚ) * ((4 : ℚ) ^ ((n : ℤ) - 1 : ℤ) - (SequenceMachineLib.roundAway (-a (n - 1)) : ℚ))

end

end A348314.P5313986140025778732

namespace A348314

/-- `n*(4^(n-1)-round(-a(n-1)))` -/
def P5313986140025778732.Spec : Prop :=
  ∀ n, P5313986140025778732.a n = (A348314 n : ℚ)

end A348314

/-! ## A348314.P8941088131416074860

`n/4*A195256(n)`
-/

namespace A348314.P8941088131416074860
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 4 * (A195256 n : ℚ)

end

end A348314.P8941088131416074860

namespace A348314

/-- `n/4*A195256(n)` -/
def P8941088131416074860.Spec : Prop :=
  ∀ n, P8941088131416074860.a n = (A348314 n : ℚ)

end A348314

/-! ## A348314.P8269178542961830547

`A053487(n)-4^n`
-/

namespace A348314.P8269178542961830547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053487 n - (4 ^ n : ℤ)

end

end A348314.P8269178542961830547

namespace A348314

/-- `A053487(n)-4^n` -/
def P8269178542961830547.Spec : Prop :=
  ∀ n, P8269178542961830547.a n = A348314 n

end A348314

/-!
# A348315: a(n) = Sum_{k=0..n} binomial(n^2 - k,n*k).

The programs for A348315, there is no canonical definition to state claims against.
-/

/-! ## A348315.P15031331384597808190

`A311731(∑[∑{e}[n, #]]^(n+1))`
-/

namespace A348315.P15031331384597808190
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311731 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ (n + 1))

end

end A348315.P15031331384597808190

/-!
# A348316: a(n) is the largest Niven (or Harshad) number with exactly n digits and not containing the digit 0.

The programs for A348316, there is no canonical definition to state claims against.
-/

/-! ## A348316.P2317137744377457229

`A217973(∑[A348318(n+1)])`
-/

namespace A348316.P2317137744377457229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348318 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217973 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A348316.P2317137744377457229

/-!
# A348317: a(n) = A348150(n) - A002275(n) where A002275(n) = R_n is the repunit with n times digit 1.

The programs for A348317, there is no canonical definition to state claims against.
-/

/-! ## A348317.P15807991421831873214

`A348150(n+1)-A002275(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A348317.P15807991421831873214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348150 (n + 1) - A002275 (n + 1)

end

end A348317.P15807991421831873214

/-! ## A348317.P1832588552129472950

`A348150(n+1)-∑[A011557(n)]`
-/

namespace A348317.P1832588552129472950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011557 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348150 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A348317.P1832588552129472950

/-! ## A348317.P947631360687136144

`A348150(n+1)-record[A287468(n)]`
-/

namespace A348317.P947631360687136144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287468 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348150 (n + 1) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A348317.P947631360687136144

/-! ## A348317.P6070377613701972842

`A348150(n+1)-A000042(n+1)`
-/

namespace A348317.P6070377613701972842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348150 (n + 1) - A000042 (n + 1)

end

end A348317.P6070377613701972842

/-! ## A348317.P11754965657047914351

`A348150(n+1)-A287468(2*n)`
-/

namespace A348317.P11754965657047914351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348150 (n + 1) - A287468 (2 * n)

end

end A348317.P11754965657047914351

/-! ## A348317.P5741628021214097415

`A348150(A000027(n+1))%A000042(n+1)`
-/

namespace A348317.P5741628021214097415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A348150 (A000027 (n + 1)).toNat) (A000042 (n + 1))

end

end A348317.P5741628021214097415

/-!
# A348320: Perfect powers m^k, k >= 2 of palindromes m when m^k is not a palindrome.

The programs for A348320, there is no canonical definition to state claims against.
-/

/-! ## A348320.P3336933016169436014

`A227651(lt[A375600(n), A008444(n)])`
-/

namespace A348320.P3336933016169436014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375600 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008444 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227651 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A348320.P3336933016169436014

/-! ## A348320.P3156745056925477521

`A075309(A087051(n)+5)`
-/

namespace A348320.P3156745056925477521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075309 (A087051 n + 5).toNat

end

end A348320.P3156745056925477521

/-! ## A348320.P3407426406910220388

`A075309(A047842(n)-5)`
-/

namespace A348320.P3407426406910220388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075309 (A047842 n - 5).toNat

end

end A348320.P3407426406910220388

/-! ## A348320.P148386500591228754

`A075309(A244112(n)-5)`
-/

namespace A348320.P148386500591228754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075309 (A244112 n - 5).toNat

end

end A348320.P148386500591228754

/-! ## A348320.P16013808568856709438

`A056622(A075309(n+5)²)`
-/

namespace A348320.P16013808568856709438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056622 (A075309 (n + 5) ^ 2).toNat

end

end A348320.P16013808568856709438

/-!
# A348321: a(n) = Sum_{k=0..floor(n/2)} (-1)^k * binomial(n*(n-k),n*k).

The programs for A348321, there is no canonical definition to state claims against.
-/

/-! ## A348321.P2401947429700593337

`A234300(A234294(n))-A020547(n)`
-/

namespace A348321.P2401947429700593337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234300 (A234294 n).toNat - A020547 n

end

end A348321.P2401947429700593337

/-!
# A348322: a(n) = Sum_{k=0..n} (-1)^k * binomial(n^2 - k,n*k).

The programs for A348322, there is no canonical definition to state claims against.
-/

/-! ## A348322.P18231081381101117294

`A082672(A000079(n))-A135112(2*n+1)`
-/

namespace A348322.P18231081381101117294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082672 (A000079 n).toNat - A135112 (2 * n + 1)

end

end A348322.P18231081381101117294

/-!
# A348323: Number of partitions of n into two or more primes.

The programs for A348323, there is no canonical definition to state claims against.
-/

/-! ## A348323.P6636985177328665335

`A000607(n)-C(∑{p}[n, #], n)`
-/

namespace A348323.P6636985177328665335
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000607 n - (Nat.choose (∑ p ∈ Nat.primeFactors (f1 n), p) n : ℤ)

end

end A348323.P6636985177328665335

/-! ## A348323.P14882951654007851896

`A000607(n)-char[A047814(n)]`
-/

namespace A348323.P14882951654007851896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047814 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000607 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A348323.P14882951654007851896

/-! ## A348323.P2233311356118513880

`A000607(n)-char[A331044(n)]`
-/

namespace A348323.P2233311356118513880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331044 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000607 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A348323.P2233311356118513880

/-! ## A348323.P8031537702996703342

`A000607(n)-char[A331097(n)]`
-/

namespace A348323.P8031537702996703342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331097 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000607 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A348323.P8031537702996703342

/-! ## A348323.P10408188023613733810

`A000607(n)-char[A007610(n+1)]`
-/

namespace A348323.P10408188023613733810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007610 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000607 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A348323.P10408188023613733810

/-! ## A348323.P1026914784978984864

`A000607(n)-char[A023049(n+1)]`
-/

namespace A348323.P1026914784978984864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023049 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000607 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A348323.P1026914784978984864

/-! ## A348323.P16861641786649016277

`A000607(n)-char[A033920(n+1)]`
-/

namespace A348323.P16861641786649016277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033920 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000607 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A348323.P16861641786649016277

/-! ## A348323.P5083772981106936726

`A000607(n)-char[A061397(n+1)]`
-/

namespace A348323.P5083772981106936726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061397 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000607 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A348323.P5083772981106936726

/-! ## A348323.P192641150491531247

`A000607(n)-char[A075860(n+1)]`
-/

namespace A348323.P192641150491531247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075860 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000607 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A348323.P192641150491531247

/-! ## A348323.P17897054712662661214

`A000607(n)-char[comp[A018252(n+1)]]`
-/

namespace A348323.P17897054712662661214
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000607 n - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A348323.P17897054712662661214

/-!
# A348324: Number of compositions (ordered partitions) of n into two or more primes.

The programs for A348324, there is no canonical definition to state claims against.
-/

/-! ## A348324.P14585578449245916432

`A023360(n)-char[record[∑{p}[n, #]]]`
-/

namespace A348324.P14585578449245916432
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), p

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023360 n - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A348324.P14585578449245916432

/-! ## A348324.P10526210359507461940

`A023360(n)-char[A047814(n)]`
-/

namespace A348324.P10526210359507461940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047814 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023360 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A348324.P10526210359507461940

/-! ## A348324.P15956648450443279502

`A023360(n)-char[A086134(n)]`
-/

namespace A348324.P15956648450443279502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086134 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023360 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A348324.P15956648450443279502

/-! ## A348324.P15963090367887997270

`A023360(n)-char[A331044(n)]`
-/

namespace A348324.P15963090367887997270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331044 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023360 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A348324.P15963090367887997270

/-! ## A348324.P6393671712496745803

`A023360(n)-char[A331097(n)]`
-/

namespace A348324.P6393671712496745803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331097 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023360 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A348324.P6393671712496745803

/-!
# A348325: Number of compositions (ordered partitions) of n into two or more distinct primes.

The programs for A348325, there is no canonical definition to state claims against.
-/

/-! ## A348325.P17995626506217811278

`and(-2, A219107(n))`
-/

namespace A348325.P17995626506217811278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-2) (A219107 n)

end

end A348325.P17995626506217811278

/-! ## A348325.P5057741886824173668

`or(1, A219107(2*n-n))-1`
-/

namespace A348325.P5057741886824173668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A219107 (2 * n - n)) - 1

end

end A348325.P5057741886824173668

/-! ## A348325.P6138491519849175565

`A052928(A219107(n))`
-/

namespace A348325.P6138491519849175565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052928 (A219107 n).toNat

end

end A348325.P6138491519849175565

/-! ## A348325.P13334346545424264021

`A004442(or(1, A219107(n)))`
-/

namespace A348325.P13334346545424264021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (Int.lor 1 (A219107 n)).toNat

end

end A348325.P13334346545424264021

/-! ## A348325.P7298109459359608146

`A276093(or(1, A219107(n)))`
-/

namespace A348325.P7298109459359608146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276093 (Int.lor 1 (A219107 n)).toNat

end

end A348325.P7298109459359608146

/-! ## A348325.P7514171215559788449

`A219107(n)-char[A047814(n)]`
-/

namespace A348325.P7514171215559788449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047814 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219107 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A348325.P7514171215559788449

/-! ## A348325.P11614468268120894940

`A219107(n)-char[A331044(n)]`
-/

namespace A348325.P11614468268120894940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331044 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219107 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A348325.P11614468268120894940

/-! ## A348325.P9120617378636083552

`floor(or(1, A219107(n))-1/A007318(n))`
-/

namespace A348325.P9120617378636083552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Int.lor 1 (A219107 n) : ℚ) - 1 / (A007318 n : ℚ)⌋

end

end A348325.P9120617378636083552

/-! ## A348325.P3119639613289233409

`floor(A219107(n)/2)*A020639(2*(n+1))`
-/

namespace A348325.P3119639613289233409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A219107 n : ℚ) / 2⌋ * A020639 (2 * (n + 1))

end

end A348325.P3119639613289233409

/-! ## A348325.P1678365029915270222

`floor(A219107(n)/2)*A000040(C(2, n)+1)`
-/

namespace A348325.P1678365029915270222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A219107 n : ℚ) / 2⌋ * A000040 (Nat.choose 2 n + 1)

end

end A348325.P1678365029915270222

/-!
# A348326: Number of compositions (ordered partitions) of n into two or more distinct squares.

The programs for A348326, there is no canonical definition to state claims against.
-/

/-! ## A348326.P6438137433351759552

`and(-2, A331844(n))`
-/

namespace A348326.P6438137433351759552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-2) (A331844 n)

end

end A348326.P6438137433351759552

/-! ## A348326.P16783243369574449996

`or(1, A331844(char[1]+n))-1`
-/

namespace A348326.P16783243369574449996
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A331844 ((if ∃ j, f1 j = n then 1 else 0) + n)) - 1

end

end A348326.P16783243369574449996

/-! ## A348326.P16560633353289732469

`A052928(A331844(n))`
-/

namespace A348326.P16560633353289732469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052928 (A331844 n).toNat

end

end A348326.P16560633353289732469

/-! ## A348326.P16170356316644629079

`A004524(2*A331844(n))`
-/

namespace A348326.P16170356316644629079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (2 * A331844 n).toNat

end

end A348326.P16170356316644629079

/-! ## A348326.P9337105334656449520

`A331844(n)-A010052(n)`
-/

namespace A348326.P9337105334656449520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331844 n - A010052 n

end

end A348326.P9337105334656449520

/-! ## A348326.P2150610022780868572

`2*A002265(2*A331844(n))`
-/

namespace A348326.P2150610022780868572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A002265 (2 * A331844 n).toNat

end

end A348326.P2150610022780868572

/-!
# A348327: Characteristic function of numbers that have no middle divisors.

The programs for A348327, the canonical program `A348327.P11076907261933524591` is in `Seq.B006.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A348327 has offset 1).

The definition of A348327 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A347950, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A348327.P11076907261933524591

`1-A347950(n+1)`

The canonical program, it is in `Seq.B006.C002`.
-/

namespace A348327

/-- `1-A347950(n+1)` -/
def P11076907261933524591.Spec : Prop :=
  ∀ n, P11076907261933524591.a n = A348327 (n + 1)

theorem P11076907261933524591.correct : P11076907261933524591.Spec := by
  intro n
  simp only [A348327, Nat.add_sub_cancel]

end A348327

/-! ## A348327.P2144731103080812265

`A000035(A340833(n+1))`
-/

namespace A348327.P2144731103080812265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A340833 (n + 1)).toNat

end

end A348327.P2144731103080812265

namespace A348327

/-- `A000035(A340833(n+1))` -/
def P2144731103080812265.Spec : Prop :=
  ∀ n, P2144731103080812265.a n = A348327 (n + 1)

end A348327

/-! ## A348327.P4308217152769310513

`2-A348364(n+1)`
-/

namespace A348327.P4308217152769310513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A348364 (n + 1)

end

end A348327.P4308217152769310513

namespace A348327

/-- `2-A348364(n+1)` -/
def P4308217152769310513.Spec : Prop :=
  ∀ n, P4308217152769310513.a n = A348327 (n + 1)

end A348327

/-! ## A348327.P18293474874291423678

`char[comp[A100345(n)-1]]`
-/

namespace A348327.P18293474874291423678
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100345 n - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A348327.P18293474874291423678

namespace A348327

/-- `char[comp[A100345(n)-1]]` -/
def P18293474874291423678.Spec : Prop :=
  ∀ n, (P18293474874291423678.a n : ℤ) = A348327 (n + 1)

end A348327

/-! ## A348327.P5846949093304495419

`floor(acot(A067742(n+1)))`
-/

namespace A348327.P5846949093304495419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (A067742 (n + 1) : ℝ)⌋

end

end A348327.P5846949093304495419

namespace A348327

/-- `floor(acot(A067742(n+1)))` -/
def P5846949093304495419.Spec : Prop :=
  ∀ n, P5846949093304495419.a n = A348327 (n + 1)

end A348327

/-! ## A348327.P13983677936897089789

`floor(acot(A071090(n+1)))`
-/

namespace A348327.P13983677936897089789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (A071090 (n + 1) : ℝ)⌋

end

end A348327.P13983677936897089789

namespace A348327

/-- `floor(acot(A071090(n+1)))` -/
def P13983677936897089789.Spec : Prop :=
  ∀ n, P13983677936897089789.a n = A348327 (n + 1)

end A348327

/-! ## A348327.P10630943755074714886

`char[A071561(n+1)-1]`
-/

namespace A348327.P10630943755074714886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071561 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A348327.P10630943755074714886

namespace A348327

/-- `char[A071561(n+1)-1]` -/
def P10630943755074714886.Spec : Prop :=
  ∀ n, (P10630943755074714886.a n : ℤ) = A348327 (n + 1)

end A348327

/-! ## A348327.P10337371374551968042

`gcd(2, A237271(n+1))-1`
-/

namespace A348327.P10337371374551968042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 2 (A237271 (n + 1)) : ℤ) - 1

end

end A348327.P10337371374551968042

namespace A348327

/-- `gcd(2, A237271(n+1))-1` -/
def P10337371374551968042.Spec : Prop :=
  ∀ n, P10337371374551968042.a n = A348327 (n + 1)

end A348327

/-! ## A348327.P15607003093048701954

`1-char[A071562(n+1)-1]`
-/

namespace A348327.P15607003093048701954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071562 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A348327.P15607003093048701954

namespace A348327

/-- `1-char[A071562(n+1)-1]` -/
def P15607003093048701954.Spec : Prop :=
  ∀ n, P15607003093048701954.a n = A348327 (n + 1)

end A348327

/-! ## A348327.P18311393282500400623

`1-char[A244367(n+1)-1]`
-/

namespace A348327.P18311393282500400623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244367 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A348327.P18311393282500400623

namespace A348327

/-- `1-char[A244367(n+1)-1]` -/
def P18311393282500400623.Spec : Prop :=
  ∀ n, P18311393282500400623.a n = A348327 (n + 1)

end A348327

/-! ## A348327.P6086097012065954767

`A000007(A071090(n+1))`
-/

namespace A348327.P6086097012065954767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A071090 (n + 1)).toNat

end

end A348327.P6086097012065954767

namespace A348327

/-- `A000007(A071090(n+1))` -/
def P6086097012065954767.Spec : Prop :=
  ∀ n, P6086097012065954767.a n = A348327 (n + 1)

end A348327

/-! ## A348327.P15619900177406314374

`A059841(A340833(n+1)+1)`
-/

namespace A348327.P15619900177406314374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (A340833 (n + 1) + 1).toNat

end

end A348327.P15619900177406314374

namespace A348327

/-- `A059841(A340833(n+1)+1)` -/
def P15619900177406314374.Spec : Prop :=
  ∀ n, P15619900177406314374.a n = A348327 (n + 1)

end A348327

/-! ## A348327.P523751785420926351

`A000007(A348406(n+1)-1)`
-/

namespace A348327.P523751785420926351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A348406 (n + 1) - 1).toNat

end

end A348327.P523751785420926351

namespace A348327

/-- `A000007(A348406(n+1)-1)` -/
def P523751785420926351.Spec : Prop :=
  ∀ n, P523751785420926351.a n = A348327 (n + 1)

end A348327

/-! ## A348327.P3940607714736312638

`A049084(2*A348406(n+1))`
-/

namespace A348327.P3940607714736312638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (2 * A348406 (n + 1)).toNat

end

end A348327.P3940607714736312638

namespace A348327

/-- `A049084(2*A348406(n+1))` -/
def P3940607714736312638.Spec : Prop :=
  ∀ n, P3940607714736312638.a n = A348327 (n + 1)

end A348327

/-! ## A348327.P13633323489118800421

`A000007(xor(1, A348406(n+1)))`
-/

namespace A348327.P13633323489118800421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (Int.xor 1 (A348406 (n + 1))).toNat

end

end A348327.P13633323489118800421

namespace A348327

/-- `A000007(xor(1, A348406(n+1)))` -/
def P13633323489118800421.Spec : Prop :=
  ∀ n, P13633323489118800421.a n = A348327 (n + 1)

end A348327

/-! ## A348327.P4331988936667874469

`and(A000328(n), A348364(n+1))`
-/

namespace A348327.P4331988936667874469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000328 n) (A348364 (n + 1))

end

end A348327.P4331988936667874469

namespace A348327

/-- `and(A000328(n), A348364(n+1))` -/
def P4331988936667874469.Spec : Prop :=
  ∀ n, P4331988936667874469.a n = A348327 (n + 1)

end A348327

/-! ## A348327.P3309785485350750792

`and(A001513(n), A348364(n+1))`
-/

namespace A348327.P3309785485350750792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001513 n) (A348364 (n + 1))

end

end A348327.P3309785485350750792

namespace A348327

/-- `and(A001513(n), A348364(n+1))` -/
def P3309785485350750792.Spec : Prop :=
  ∀ n, P3309785485350750792.a n = A348327 (n + 1)

end A348327

/-! ## A348327.P3723028699631342137

`and(A001535(n), A348364(n+1))`
-/

namespace A348327.P3723028699631342137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001535 n) (A348364 (n + 1))

end

end A348327.P3723028699631342137

namespace A348327

/-- `and(A001535(n), A348364(n+1))` -/
def P3723028699631342137.Spec : Prop :=
  ∀ n, P3723028699631342137.a n = A348327 (n + 1)

end A348327

/-! ## A348327.P4210257265039188382

`and(A001546(n), A348364(n+1))`
-/

namespace A348327.P4210257265039188382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001546 n) (A348364 (n + 1))

end

end A348327.P4210257265039188382

namespace A348327

/-- `and(A001546(n), A348364(n+1))` -/
def P4210257265039188382.Spec : Prop :=
  ∀ n, P4210257265039188382.a n = A348327 (n + 1)

end A348327

/-! ## A348327.P14152191551490054435

`and(A001844(n), A348364(n+1))`
-/

namespace A348327.P14152191551490054435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001844 n) (A348364 (n + 1))

end

end A348327.P14152191551490054435

namespace A348327

/-- `and(A001844(n), A348364(n+1))` -/
def P14152191551490054435.Spec : Prop :=
  ∀ n, P14152191551490054435.a n = A348327 (n + 1)

end A348327

/-!
# A348328: Records inventory sequence: Record the number of record terms seen thus far, then the number of zero terms, then number of 1's, then 2's, etc until recording another zero term, at which point the count is repeated, as above.

The programs for A348328, there is no canonical definition to state claims against.
-/

/-! ## A348328.P10751180145143790967

`lcm(A333624(2*n+1), A333632(A333615(n)))`
-/

namespace A348328.P10751180145143790967
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A333624 (2 * n + 1)) (A333632 (A333615 n).toNat)

end

end A348328.P10751180145143790967

/-! ## A348328.P2442878733397448958

`A003056((A094192(2^(n+1)+1)-2)%A115216(n))`
-/

namespace A348328.P2442878733397448958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (Int.tmod (A094192 (2 ^ (n + 1) + 1) - 2) (A115216 n)).toNat

end

end A348328.P2442878733397448958

/-! ## A348328.P18100622538781570668

`A290500(A201142(3*n+4))%4`
-/

namespace A348328.P18100622538781570668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A290500 (A201142 (3 * n + 4)).toNat) 4

end

end A348328.P18100622538781570668

/-! ## A348328.P18215494999397604727

`A206588(A250120(n)+A052284(n))`
-/

namespace A348328.P18215494999397604727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206588 (A250120 n + A052284 n).toNat

end

end A348328.P18215494999397604727

/-! ## A348328.P2413455364188355311

`A307193(A005934(n+1)-A005347(n))`
-/

namespace A348328.P2413455364188355311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307193 (A005934 (n + 1) - A005347 n).toNat

end

end A348328.P2413455364188355311

/-!
# A348329: Numbers k such that k' = k'', where ' is the arithmetic derivative.

The programs for A348329, there is no canonical definition to state claims against.
-/

/-! ## A348329.P15133179422885247657

`∪[A274834(n+1), A391828(n+1)]`
-/

namespace A348329.P15133179422885247657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274834 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391828 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A348329.P15133179422885247657

/-! ## A348329.P405794575031863870

`∪[A335839(n+1), A391828(n+1)]`
-/

namespace A348329.P405794575031863870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335839 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391828 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A348329.P405794575031863870

/-!
# A348331: Lexicographically earliest sequence of positive integers such that for any n > 0, the sum of the indices k < n such that a(k) = a(n) is less than or equal to n.

The programs for A348331, there is no canonical definition to state claims against.
-/

/-! ## A348331.P6722448691194457248

`A003602(ceil(Δ[n²]/3))`
-/

namespace A348331.P6722448691194457248
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 ⌈((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℚ) / 3⌉.toNat

end

end A348331.P6722448691194457248

/-! ## A348331.P9240253158058936448

`A110963(comp[n*and(2, n)!])`
-/

namespace A348331.P9240253158058936448
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.factorial (Nat.land 2 n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110963 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A348331.P9240253158058936448

/-! ## A348331.P14911457398053917172

`A025480(floor(2*n/3))+1`
-/

namespace A348331.P14911457398053917172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 ⌊2 * ((n : ℚ) / 3)⌋.toNat + 1

end

end A348331.P14911457398053917172

/-! ## A348331.P13419159072096367779

`A110963(or(1, round(4*n/3)))`
-/

namespace A348331.P13419159072096367779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110963 (Int.lor 1 (SequenceMachineLib.roundAway (4 * ((n : ℚ) / 3)))).toNat

end

end A348331.P13419159072096367779

/-! ## A348331.P12584878186678961212

`A110963(A168056(n))`
-/

namespace A348331.P12584878186678961212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110963 (A168056 n).toNat

end

end A348331.P12584878186678961212

/-! ## A348331.P12250758863034392701

`A110963(A047402(n+1))`
-/

namespace A348331.P12250758863034392701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110963 (A047402 (n + 1)).toNat

end

end A348331.P12250758863034392701

/-! ## A348331.P18328217983637408691

`A110963(A047455(n+1))`
-/

namespace A348331.P18328217983637408691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110963 (A047455 (n + 1)).toNat

end

end A348331.P18328217983637408691

/-! ## A348331.P11111335260652162213

`A110963(A047531(n+1))`
-/

namespace A348331.P11111335260652162213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110963 (A047531 (n + 1)).toNat

end

end A348331.P11111335260652162213

/-!
# A348332: a(n) = (2^n-1) * 2^(2^n-n).

The programs for A348332, the canonical program `A348332.P12436743131677701112` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A348332 has offset 1).

The definition of A348332 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A348332.P12436743131677701112

`(2^(n+1)-1)*2^(2^(n+1)-(n+1))`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A348332

/-- `(2^(n+1)-1)*2^(2^(n+1)-(n+1))` -/
def P12436743131677701112.Spec : Prop :=
  ∀ n, P12436743131677701112.a n = (A348332 (n + 1) : ℚ)

end A348332

/-! ## A348332.P2232572294152377813

`xor(1, A213255(∑[2^n]+2))`
-/

namespace A348332.P2232572294152377813
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A213255 (∑ j ∈ Finset.range (n + 1), f1 j + 2))

end

end A348332.P2232572294152377813

namespace A348332

/-- `xor(1, A213255(∑[2^n]+2))` -/
def P2232572294152377813.Spec : Prop :=
  ∀ n, P2232572294152377813.a n = A348332 (n + 1)

end A348332

/-! ## A348332.P3907594144117628668

`A213255(A048578(n))-1`
-/

namespace A348332.P3907594144117628668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213255 (A048578 n).toNat - 1

end

end A348332.P3907594144117628668

namespace A348332

/-- `A213255(A048578(n))-1` -/
def P3907594144117628668.Spec : Prop :=
  ∀ n, P3907594144117628668.a n = A348332 (n + 1)

end A348332

/-!
# A348334: Table read by downward antidiagonals: T(n,k) is the number of self-avoiding walks on a 2D square lattice for a chain growing to total length n after taking k steps (see Comments lines).

The programs for A348334, there is no canonical definition to state claims against.
-/

/-! ## A348334.P15708611901191916870

`4*A000265(A025627(n+1))`
-/

namespace A348334.P15708611901191916870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A000265 (A025627 (n + 1)).toNat

end

end A348334.P15708611901191916870

/-! ## A348334.P6175816017977902936

`4*A329900(A025626(n+1))`
-/

namespace A348334.P6175816017977902936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A329900 (A025626 (n + 1)).toNat

end

end A348334.P6175816017977902936

/-! ## A348334.P16349822353369447661

`(4*A140303(n))%A333137(n+1)`
-/

namespace A348334.P16349822353369447661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (4 * A140303 n) (A333137 (n + 1))

end

end A348334.P16349822353369447661

/-! ## A348334.P17481669705084656149

`A123932(A319541(n+1))*A140303(n)`
-/

namespace A348334.P17481669705084656149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123932 (A319541 (n + 1)).toNat * A140303 n

end

end A348334.P17481669705084656149

/-! ## A348334.P1373609333031526190

`A168729(A004736(n+1)%A372682(n))`
-/

namespace A348334.P1373609333031526190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168729 (Int.tmod (A004736 (n + 1)) (A372682 n)).toNat

end

end A348334.P1373609333031526190

/-!
# A348336: Number of positive integers <= n that have no middle divisors.

The programs for A348336, the canonical program `A348336.P6212997742014445552` is in `Seq.B006.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A348336 has offset 1).

The definition of A348336 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A348336.P16143758662635149104

`∑[A348327(n+1)]`
-/

namespace A348336.P16143758662635149104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348327 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A348336.P16143758662635149104

namespace A348336

/-- `∑[A348327(n+1)]` -/
def P16143758662635149104.Spec : Prop :=
  ∀ n, P16143758662635149104.a n = A348336 (n + 1)

end A348336

/-! ## A348336.P12892312677966696251

`∑[1-A347950(n+1)]`
-/

namespace A348336.P12892312677966696251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A347950 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A348336.P12892312677966696251

namespace A348336

/-- `∑[1-A347950(n+1)]` -/
def P12892312677966696251.Spec : Prop :=
  ∀ n, P12892312677966696251.a n = A348336 (n + 1)

end A348336

/-! ## A348336.P13567898824276360975

`∑[2-A348364(n+1)]`
-/

namespace A348336.P13567898824276360975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A348364 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A348336.P13567898824276360975

namespace A348336

/-- `∑[2-A348364(n+1)]` -/
def P13567898824276360975.Spec : Prop :=
  ∀ n, P13567898824276360975.a n = A348336 (n + 1)

end A348336

/-! ## A348336.P13751728212178193556

`∑[A340833(n+1)%2]`
-/

namespace A348336.P13751728212178193556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A340833 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A348336.P13751728212178193556

namespace A348336

/-- `∑[A340833(n+1)%2]` -/
def P13751728212178193556.Spec : Prop :=
  ∀ n, P13751728212178193556.a n = A348336 (n + 1)

end A348336

/-! ## A348336.P922484981532749883

`∑[char[comp[A100345(n)-1]]]`
-/

namespace A348336.P922484981532749883
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100345 n - 1

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A348336.P922484981532749883

namespace A348336

/-- `∑[char[comp[A100345(n)-1]]]` -/
def P922484981532749883.Spec : Prop :=
  ∀ n, (P922484981532749883.a n : ℤ) = A348336 (n + 1)

end A348336

/-! ## A348336.P5189487195896452217

`∑[floor(acot(A067742(n+1)))]`
-/

namespace A348336.P5189487195896452217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (A067742 (n + 1) : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A348336.P5189487195896452217

namespace A348336

/-- `∑[floor(acot(A067742(n+1)))]` -/
def P5189487195896452217.Spec : Prop :=
  ∀ n, P5189487195896452217.a n = A348336 (n + 1)

end A348336

/-! ## A348336.P15953299177895003263

`∑[floor(acot(A071090(n+1)))]`
-/

namespace A348336.P15953299177895003263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (A071090 (n + 1) : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A348336.P15953299177895003263

namespace A348336

/-- `∑[floor(acot(A071090(n+1)))]` -/
def P15953299177895003263.Spec : Prop :=
  ∀ n, P15953299177895003263.a n = A348336 (n + 1)

end A348336

/-! ## A348336.P6212997742014445552

`1-A348110(n+1)+n`

The canonical program, it is in `Seq.B006.C002`.
-/

namespace A348336

/-- `1-A348110(n+1)+n` -/
def P6212997742014445552.Spec : Prop :=
  ∀ n, P6212997742014445552.a n = A348336 (n + 1)

theorem P6212997742014445552.correct : P6212997742014445552.Spec := by
  intro n
  simp only [A348336, Nat.add_sub_cancel]

end A348336

/-! ## A348336.P2334832728716657569

`A348110(A276112(n+1))+A001489(A348110(n+1))`
-/

namespace A348336.P2334832728716657569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348110 (A276112 (n + 1)).toNat + A001489 (A348110 (n + 1)).toNat

end

end A348336.P2334832728716657569

namespace A348336

/-- `A348110(A276112(n+1))+A001489(A348110(n+1))` -/
def P2334832728716657569.Spec : Prop :=
  ∀ n, P2334832728716657569.a n = A348336 (n + 1)

end A348336

/-!
# A348338: a(n) is the number of distinct numbers of steps required for the last n digits of integers to repeat themselves by iterating the map m -> 2*m.

The programs for A348338, there is no canonical definition to state claims against.
-/

/-! ## A348338.P11052132956493735114

`∑[∑[A363944(A005878(n))]]`
-/

namespace A348338.P11052132956493735114
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363944 (A005878 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A348338.P11052132956493735114

/-! ## A348338.P15044450577739513104

`∑[∑[A026513(A005179(n+1))]]`
-/

namespace A348338.P15044450577739513104
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026513 (A005179 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A348338.P15044450577739513104

/-! ## A348338.P13657037814296540922

`∑[∑[A040001(A018565(n+1))]]`
-/

namespace A348338.P13657037814296540922
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (A018565 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A348338.P13657037814296540922

/-! ## A348338.P16484753097061468759

`∑[∑[A043529(A031153(n+1))]]`
-/

namespace A348338.P16484753097061468759
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043529 (A031153 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A348338.P16484753097061468759

/-! ## A348338.P2743768933205343190

`∑[∑[A014963(A115034(n+1))]]`
-/

namespace A348338.P2743768933205343190
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A115034 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A348338.P2743768933205343190

/-!
# A348339: a(n) is the number of distinct numbers of steps required for the last n digits of integers to repeat themselves by iterating the map m -> m^2.

The programs for A348339, there is no canonical definition to state claims against.
-/

/-! ## A348339.P12987625587983938472

`n*(C(2, n)+n)+3`
-/

namespace A348339.P12987625587983938472
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (Nat.choose 2 n + n) + 3

end

end A348339.P12987625587983938472

/-! ## A348339.P11896549242486339925

`∑[a(n-1)+2]` with `a(0)=3, a(1)=3, a(2)=3, a(3)=3, a(4)=7`
-/

namespace A348339.P11896549242486339925
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3, 3, 3, 3, 7] fun n f1 =>
  f1 (n - 1) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A348339.P11896549242486339925

/-! ## A348339.P5896032321572169300

`ogf((3-3x+4x^4-2x^5)/(1-3x+3x^2-x^3))`
-/

namespace A348339.P5896032321572169300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -3, 0, 0, 4, -2] [1, -3, 3, -1] n

end

end A348339.P5896032321572169300

/-! ## A348339.P8199324654021633330

`comp[ceil(sqrt(a(n-2)))+n]` with `a(0)=5, a(1)=1, a(2)=0, a(3)=2`
-/

namespace A348339.P8199324654021633330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [5, 1, 0, 2] fun n f1 =>
  ⌈Real.sqrt (f1 (n - 2) : ℝ)⌉ + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A348339.P8199324654021633330

/-! ## A348339.P12147836042694047681

`a(floor(n/(a(floor(1/(n+1)))+n²)))+n²` with `a(0)=3, a(1)=6, a(2)=9`
-/

namespace A348339.P12147836042694047681
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3, 6, 9] fun n a =>
  a ⌊(n : ℚ) / (a ⌊1 / (n + 1 : ℚ)⌋.toNat + n ^ 2 : ℚ)⌋.toNat + n ^ 2

end

end A348339.P12147836042694047681

/-!
# A348341: a(n) is the number of noninfinitary divisors of n.

The programs for A348341, the canonical program `A348341.P11276104296330033514` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A348341 has offset 1).

The definition of A348341 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A037445, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A348341.P11276104296330033514

`A000005(n+1)-A037445(n+1)`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A348341

/-- `A000005(n+1)-A037445(n+1)` -/
def P11276104296330033514.Spec : Prop :=
  ∀ n, P11276104296330033514.a n = A348341 (n + 1)

theorem P11276104296330033514.correct : P11276104296330033514.Spec := by
  intro n
  simp only [A348341, Nat.add_sub_cancel]

end A348341

/-! ## A348341.P14317346118797567227

`Δ[A054519(n)]-A037445(n+1)`
-/

namespace A348341.P14317346118797567227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054519 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A037445 (n + 1)

end

end A348341.P14317346118797567227

namespace A348341

/-- `Δ[A054519(n)]-A037445(n+1)` -/
def P14317346118797567227.Spec : Prop :=
  ∀ n, P14317346118797567227.a n = A348341 (n + 1)

end A348341

/-! ## A348341.P8670449880460347597

`A000005(n+1)-2^A064547(n+1)`
-/

namespace A348341.P8670449880460347597
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000005 (n + 1) : ℚ) - (2 : ℚ) ^ (A064547 (n + 1) : ℤ)

end

end A348341.P8670449880460347597

namespace A348341

/-- `A000005(n+1)-2^A064547(n+1)` -/
def P8670449880460347597.Spec : Prop :=
  ∀ n, P8670449880460347597.a n = (A348341 (n + 1) : ℚ)

end A348341

/-! ## A348341.P16170700130490187155

`A000005(n+1)-A000079(∑{e}[n+1, #-val(#!, 2)])`
-/

namespace A348341.P16170700130490187155
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A000079 (∑ p ∈ Nat.primeFactors (f1 n), ((Nat.factorization (f1 n) p : ℤ) - (SequenceMachineLib.valuation (Nat.factorial (Nat.factorization (f1 n) p)) 2 : ℤ))).toNat

end

end A348341.P16170700130490187155

namespace A348341

/-- `A000005(n+1)-A000079(∑{e}[n+1, #-val(#!, 2)])` -/
def P16170700130490187155.Spec : Prop :=
  ∀ n, P16170700130490187155.a n = A348341 (n + 1)

end A348341

/-! ## A348341.P9280448472430220128

`Δ[A006218(n)]-A000005(A160102(n+1))`
-/

namespace A348341.P9280448472430220128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A000005 (A160102 (n + 1)).toNat

end

end A348341.P9280448472430220128

namespace A348341

/-- `Δ[A006218(n)]-A000005(A160102(n+1))` -/
def P9280448472430220128.Spec : Prop :=
  ∀ n, P9280448472430220128.a n = A348341 (n + 1)

end A348341

/-! ## A348341.P8480134574303336635

`A000005(n+1)-A000005(A160102(n+1))`
-/

namespace A348341.P8480134574303336635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A000005 (A160102 (n + 1)).toNat

end

end A348341.P8480134574303336635

namespace A348341

/-- `A000005(n+1)-A000005(A160102(n+1))` -/
def P8480134574303336635.Spec : Prop :=
  ∀ n, P8480134574303336635.a n = A348341 (n + 1)

end A348341

/-! ## A348341.P126674450856982537

`A006218(n+1)-(A037445(n+1)+A006218(n))`
-/

namespace A348341.P126674450856982537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 (n + 1) - (A037445 (n + 1) + A006218 n)

end

end A348341.P126674450856982537

namespace A348341

/-- `A006218(n+1)-(A037445(n+1)+A006218(n))` -/
def P126674450856982537.Spec : Prop :=
  ∀ n, P126674450856982537.a n = A348341 (n + 1)

end A348341

/-! ## A348341.P7246467531021735133

`A000005(n+1)-A000079(∑{e}[n+1, A000120(#)])`
-/

namespace A348341.P7246467531021735133
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A000079 (∑ p ∈ Nat.primeFactors (f1 n), A000120 (Nat.factorization (f1 n) p)).toNat

end

end A348341.P7246467531021735133

namespace A348341

/-- `A000005(n+1)-A000079(∑{e}[n+1, A000120(#)])` -/
def P7246467531021735133.Spec : Prop :=
  ∀ n, P7246467531021735133.a n = A348341 (n + 1)

end A348341

/-! ## A348341.P12529933611547487603

`A034444(n+1)+A048105(n+1)-A037445(n+1)`
-/

namespace A348341.P12529933611547487603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (n + 1) + (A048105 (n + 1) - A037445 (n + 1))

end

end A348341.P12529933611547487603

namespace A348341

/-- `A034444(n+1)+A048105(n+1)-A037445(n+1)` -/
def P12529933611547487603.Spec : Prop :=
  ∀ n, P12529933611547487603.a n = A348341 (n + 1)

end A348341

/-! ## A348341.P6543718684430108291

`(A357669(n+1)-A368106(n+1))*A056671(n+1)`
-/

namespace A348341.P6543718684430108291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A357669 (n + 1) - A368106 (n + 1)) * A056671 (n + 1)

end

end A348341.P6543718684430108291

namespace A348341

/-- `(A357669(n+1)-A368106(n+1))*A056671(n+1)` -/
def P6543718684430108291.Spec : Prop :=
  ∀ n, P6543718684430108291.a n = A348341 (n + 1)

end A348341

/-! ## A348341.P14949631611590653719

`A358261(A278254(n+1))`
-/

namespace A348341.P14949631611590653719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358261 (A278254 (n + 1)).toNat

end

end A348341.P14949631611590653719

namespace A348341

/-- `A358261(A278254(n+1))` -/
def P14949631611590653719.Spec : Prop :=
  ∀ n, P14949631611590653719.a n = A348341 (n + 1)

end A348341

/-! ## A348341.P17199464875547741501

`A358261(A103390(n+2))`
-/

namespace A348341.P17199464875547741501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358261 (A103390 (n + 2)).toNat

end

end A348341.P17199464875547741501

namespace A348341

/-- `A358261(A103390(n+2))` -/
def P17199464875547741501.Spec : Prop :=
  ∀ n, P17199464875547741501.a n = A348341 (n + 1)

end A348341

/-! ## A348341.P14076148108768066029

`A358261((n+1)²)`
-/

namespace A348341.P14076148108768066029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358261 ((n + 1) ^ 2)

end

end A348341.P14076148108768066029

namespace A348341

/-- `A358261((n+1)²)` -/
def P14076148108768066029.Spec : Prop :=
  ∀ n, P14076148108768066029.a n = A348341 (n + 1)

end A348341

/-! ## A348341.P7959389858344079489

`dr(A358261(∑[2*n+1]))`
-/

namespace A348341.P7959389858344079489
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A358261 (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A348341.P7959389858344079489

namespace A348341

/-- `dr(A358261(∑[2*n+1]))` -/
def P7959389858344079489.Spec : Prop :=
  ∀ n, (P7959389858344079489.a n : ℤ) = A348341 (n + 1)

end A348341

/-!
# A348342: Noninfinitary highly composite numbers: where the number of noninfinitary divisors (A348341) increases to a record.

The programs for A348342, there is no canonical definition to state claims against.
-/

/-! ## A348342.P12962168404924015998

`sqrt(A358263(n+1))`
-/

namespace A348342.P12962168404924015998
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A358263 (n + 1) : ℝ)

end

end A348342.P12962168404924015998

/-! ## A348342.P17730061497990529495

`root(A358263(n+1), A036453(n+1))`
-/

namespace A348342.P17730061497990529495
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A358263 (n + 1) : ℝ) ^ (1 / (A036453 (n + 1) : ℝ))

end

end A348342.P17730061497990529495

/-! ## A348342.P9227356234420580189

`A028310(root(A358263(n+1), 2))`
-/

namespace A348342.P9227356234420580189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (SequenceMachineLib.roundAway ((A358263 (n + 1) : ℝ) ^ (1 / (2 : ℝ)))).toNat

end

end A348342.P9227356234420580189

/-! ## A348342.P15694560265234083944

`A046523(root(A358263(n+1), 2))`
-/

namespace A348342.P15694560265234083944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (SequenceMachineLib.roundAway ((A358263 (n + 1) : ℝ) ^ (1 / (2 : ℝ)))).toNat

end

end A348342.P15694560265234083944

/-!
# A348345: Number k such that k and k+1 have the same positive number of noninfinitary divisors (A348341).

The programs for A348345, the canonical program `A348345.P4539488916826781607` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A348345 has offset 1).

The definition of A348345 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A348345.P4539488916826781607

`A023443(∩[A083795(n+1), A162643(n+1)])`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A348345

/-- `A023443(∩[A083795(n+1), A162643(n+1)])` -/
def P4539488916826781607.Spec : Prop :=
  ∀ n, P4539488916826781607.a n = A348345 (n + 1)

theorem P4539488916826781607.correct : P4539488916826781607.Spec := by
  intro n
  simp only [A348345, Nat.add_sub_cancel]

end A348345

/-! ## A348345.P13811673332332334716

`∩[A139587(n+1), A171665(n+1)]`
-/

namespace A348345.P13811673332332334716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139587 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171665 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A348345.P13811673332332334716

namespace A348345

/-- `∩[A139587(n+1), A171665(n+1)]` -/
def P13811673332332334716.Spec : Prop :=
  ∀ n, (P13811673332332334716.a n : ℤ) = A348345 (n + 1)

end A348345

/-!
# A348347: Smallest k such that in the pairs of numbers j*k +- 1, none is prime for 1 <= j < n but at least one is prime for j = n; or 0 if no such k exists.

The programs for A348347, there is no canonical definition to state claims against.
-/

/-! ## A348347.P12608785629688259789

`A234025(A176552(n+1)^A112798(3*n+2))`
-/

namespace A348347.P12608785629688259789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234025 (SequenceMachineLib.roundAway ((A176552 (n + 1) : ℚ) ^ (A112798 (3 * n + 2) : ℤ))).toNat

end

end A348347.P12608785629688259789

/-!
# A348349: a(n) = Sum_{d|n} d^(tau(d) - 1).

The programs for A348349, the canonical program `A348349.P12517223108730079146` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A348349 has offset 1).

The definition of A348349 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1259 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A348349.P3715761730600057344

`∑{d}[n+1, A062758(#)/#]`
-/

namespace A348349.P3715761730600057344
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (A062758 d : ℚ) / (d : ℚ)

end

end A348349.P3715761730600057344

namespace A348349

/-- `∑{d}[n+1, A062758(#)/#]` -/
def P3715761730600057344.Spec : Prop :=
  ∀ n, P3715761730600057344.a n = (A348349 (n + 1) : ℚ)

end A348349

/-! ## A348349.P12517223108730079146

`∑{d}[n+1, #^A032741(#)]`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A348349

/-- `∑{d}[n+1, #^A032741(#)]` -/
def P12517223108730079146.Spec : Prop :=
  ∀ n, P12517223108730079146.a n = (A348349 (n + 1) : ℚ)

end A348349

/-! ## A348349.P4307122612343305050

`∑{d}[n+1, #^(A000005(#)-1)]`
-/

namespace A348349.P4307122612343305050
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℚ) ^ (A000005 d - 1 : ℤ)

end

end A348349.P4307122612343305050

namespace A348349

/-- `∑{d}[n+1, #^(A000005(#)-1)]` -/
def P4307122612343305050.Spec : Prop :=
  ∀ n, P4307122612343305050.a n = (A348349 (n + 1) : ℚ)

end A348349

/-!
# A348350: a(n) = Sum_{d|n} d^(sigma(d) - 1).

The programs for A348350, there is no canonical definition to state claims against.
-/

/-! ## A348350.P8184178051030901407

`∑{d}[n+1, #^(A000203(#)-1)]`
-/

namespace A348350.P8184178051030901407
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℚ) ^ (A000203 d - 1 : ℤ)

end

end A348350.P8184178051030901407

/-!
# A348351: Number of permutations of [n] avoiding the patterns 2-41-3, 3-14-2, 2-14-3, and 3-41-2.

The programs for A348351, there is no canonical definition to state claims against.
-/

/-! ## A348351.P12621987407405265320

`A383278(A149491(n))`
-/

namespace A348351.P12621987407405265320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383278 (A149491 n).toNat

end

end A348351.P12621987407405265320

/-!
# A348352: Primes p where p-1 is in A328596 (reversed binary expansion is an aperiodic necklace) and the same count of numbers smaller than p-1 are found in A328596 as primes smaller than p exist.

The programs for A348352, there is no canonical definition to state claims against.
-/

/-! ## A348352.P5227252633055537143

`p?[lcm(n+1, A348268(n))]`
-/

namespace A348352.P5227252633055537143
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n + 1 : ℤ) (A348268 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A348352.P5227252633055537143

/-! ## A348352.P18419315583209485209

`A329303(p?[A268199(n)])`
-/

namespace A348352.P18419315583209485209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268199 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329303 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A348352.P18419315583209485209

/-! ## A348352.P7128347068981356864

`p?[∑[A039717(A275043(n))]]`
-/

namespace A348352.P7128347068981356864
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039717 (A275043 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A348352.P7128347068981356864

/-!
# A348357: Square array T(n, k), n, k > 0, read by antidiagonal upwards; the k-th column contains, in ascending order, the integers m such that A348331(m) = k.

The programs for A348357, there is no canonical definition to state claims against.
-/

/-! ## A348357.P5317765392428473766

`A006368(A075300(n))+1`
-/

namespace A348357.P5317765392428473766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006368 (A075300 n).toNat + 1

end

end A348357.P5317765392428473766

/-! ## A348357.P9007247023323071849

`A006368(A054582(n)-1)+1`
-/

namespace A348357.P9007247023323071849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006368 (A054582 n - 1).toNat + 1

end

end A348357.P9007247023323071849

/-! ## A348357.P13716821746744199006

`A178804(A014682(A241957(n+1)))`
-/

namespace A348357.P13716821746744199006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178804 (A014682 (A241957 (n + 1)).toNat).toNat

end

end A348357.P13716821746744199006

/-! ## A348357.P11397860164677011112

`A178804(A241957(n+1)+A054582(n))`
-/

namespace A348357.P11397860164677011112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178804 (A241957 (n + 1) + A054582 n).toNat

end

end A348357.P11397860164677011112

/-! ## A348357.P2114322984722242822

`A006368(A191448(n+1)%A013620(n))+1`
-/

namespace A348357.P2114322984722242822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006368 (Int.tmod (A191448 (n + 1)) (A013620 n)).toNat + 1

end

end A348357.P2114322984722242822

/-! ## A348357.P5917645579899137067

`n-(A023443(n)-A006368(A054582(n)-1))`
-/

namespace A348357.P5917645579899137067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (A023443 n - A006368 (A054582 n - 1).toNat)

end

end A348357.P5917645579899137067

/-!
# A348360: a(n) = Product_{d|n} d^(d'), where ' is the arithmetic derivative.

The programs for A348360, there is no canonical definition to state claims against.
-/

/-! ## A348360.P6944307739759286008

`∏{d}[n+1, #]^A095002(A095149(n))`
-/

namespace A348360.P6944307739759286008
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ d ∈ Nat.divisors (f1 n), d : ℕ) : ℚ) ^ (A095002 (A095149 n).toNat : ℤ)

end

end A348360.P6944307739759286008

/-! ## A348360.P4172270682541324338

`A007955(n+1)^A065363(A067275(n))`
-/

namespace A348360.P4172270682541324338
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007955 (n + 1) : ℚ) ^ (A065363 (A067275 n).toNat : ℤ)

end

end A348360.P4172270682541324338

/-!
# A348361: a(n) = Sum_{k=1..n} k^(k'), where ' is the arithmetic derivative.

The programs for A348361, there is no canonical definition to state claims against.
-/

/-! ## A348361.P15866393223337781730

`∑[(n+1)^∑[A258057(n)]]`
-/

namespace A348361.P15866393223337781730
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258057 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (∑ j ∈ Finset.range (n + 1), f2 j : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A348361.P15866393223337781730

/-! ## A348361.P11529140792126424957

`∑[(n+1)^A003415(n+1)]`
-/

namespace A348361.P11529140792126424957
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A003415 (n + 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A348361.P11529140792126424957

/-!
# A348363: The 1's in the binary expansion of a(n) encode the distances between the 1's in the binary expansion of n.

The programs for A348363, the canonical program `A348363.P17555852829905755091` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A348363 has offset 0).

The definition of A348363 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8193 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A348363.P10942612597870542095

`or(a(floor(n/2)), A000265(n))` with `a(0)=0`
-/

namespace A348363.P10942612597870542095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  Int.lor (a ⌊(n : ℚ) / 2⌋.toNat) (A000265 n)

end

end A348363.P10942612597870542095

namespace A348363

/-- `or(a(floor(n/2)), A000265(n))` -/
def P10942612597870542095.Spec : Prop :=
  ∀ n, P10942612597870542095.a n = A348363 n

end A348363

/-! ## A348363.P17555852829905755091

`or(a(floor(n/2)), A093178(n))` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A348363

/-- `or(a(floor(n/2)), A093178(n))` -/
def P17555852829905755091.Spec : Prop :=
  ∀ n, P17555852829905755091.a n = A348363 n

theorem P17555852829905755091.correct : P17555852829905755091.Spec := by
  intro n
  simp only [A348363]

end A348363

/-! ## A348363.P11255034911742687224

`or(a(floor(n/2)), A124625(n))` with `a(0)=0, a(1)=1`
-/

namespace A348363.P11255034911742687224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  Int.lor (a ⌊(n : ℚ) / 2⌋.toNat) (A124625 n)

end

end A348363.P11255034911742687224

namespace A348363

/-- `or(a(floor(n/2)), A124625(n))` -/
def P11255034911742687224.Spec : Prop :=
  ∀ n, P11255034911742687224.a n = A348363 n

end A348363

/-! ## A348363.P7777069554567100331

`or(a(floor(n/2)), A302044(2*n))` with `a(0)=0`
-/

namespace A348363.P7777069554567100331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  Int.lor (a ⌊(n : ℚ) / 2⌋.toNat) (A302044 (2 * n))

end

end A348363.P7777069554567100331

namespace A348363

/-- `or(a(floor(n/2)), A302044(2*n))` -/
def P7777069554567100331.Spec : Prop :=
  ∀ n, P7777069554567100331.a n = A348363 n

end A348363

/-! ## A348363.P10968784021727173703

`or(a(floor(n/2)), A237420(n-1))` with `a(0)=0, a(1)=1`
-/

namespace A348363.P10968784021727173703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  Int.lor (a ⌊(n : ℚ) / 2⌋.toNat) (A237420 (n - 1))

end

end A348363.P10968784021727173703

namespace A348363

/-- `or(a(floor(n/2)), A237420(n-1))` -/
def P10968784021727173703.Spec : Prop :=
  ∀ n, P10968784021727173703.a n = A348363 n

end A348363

/-! ## A348363.P11544438183815973984

`or(a(n-A053644(n)), A030101(n))` with `a(0)=0`
-/

namespace A348363.P11544438183815973984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  Int.lor (a ((n : ℤ) - A053644 n).toNat) (A030101 n)

end

end A348363.P11544438183815973984

namespace A348363

/-- `or(a(n-A053644(n)), A030101(n))` -/
def P11544438183815973984.Spec : Prop :=
  ∀ n, P11544438183815973984.a n = A348363 n

end A348363

/-! ## A348363.P944609475379847710

`or(a(floor(n/2)), A163575(2*n))` with `a(0)=0, a(1)=1`
-/

namespace A348363.P944609475379847710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  Int.lor (a ⌊(n : ℚ) / 2⌋.toNat) (A163575 (2 * n))

end

end A348363.P944609475379847710

namespace A348363

/-- `or(a(floor(n/2)), A163575(2*n))` -/
def P944609475379847710.Spec : Prop :=
  ∀ n, P944609475379847710.a n = A348363 n

end A348363

/-!
# A348364: Number of vertices on the axis of symmetry of the symmetric representation of sigma(n).

The programs for A348364, the canonical program `A348364.P5163504315235711716` is in `Seq.B006.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A348364 has offset 1).

The definition of A348364 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A347950, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A348364.P5163504315235711716

`1+A347950(n+1)`

The canonical program, it is in `Seq.B006.C002`.
-/

namespace A348364

/-- `1+A347950(n+1)` -/
def P5163504315235711716.Spec : Prop :=
  ∀ n, P5163504315235711716.a n = A348364 (n + 1)

theorem P5163504315235711716.correct : P5163504315235711716.Spec := by
  intro n
  simp only [A348364, Nat.add_sub_cancel]

end A348364

/-! ## A348364.P5440491778838919717

`2-A348327(n+1)`
-/

namespace A348364.P5440491778838919717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A348327 (n + 1)

end

end A348364.P5440491778838919717

namespace A348364

/-- `2-A348327(n+1)` -/
def P5440491778838919717.Spec : Prop :=
  ∀ n, P5440491778838919717.a n = A348364 (n + 1)

end A348364

/-! ## A348364.P5912770624815194077

`gcd(2, A340833(n+1))`
-/

namespace A348364.P5912770624815194077
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A340833 (n + 1))

end

end A348364.P5912770624815194077

namespace A348364

/-- `gcd(2, A340833(n+1))` -/
def P5912770624815194077.Spec : Prop :=
  ∀ n, (P5912770624815194077.a n : ℤ) = A348364 (n + 1)

end A348364

/-! ## A348364.P15285034791265780018

`char[A100345(n)-1]+1`
-/

namespace A348364.P15285034791265780018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100345 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f1 j = (n : ℤ) then 1 else 0) + 1

end

end A348364.P15285034791265780018

namespace A348364

/-- `char[A100345(n)-1]+1` -/
def P15285034791265780018.Spec : Prop :=
  ∀ n, (P15285034791265780018.a n : ℤ) = A348364 (n + 1)

end A348364

/-! ## A348364.P12726535016417232718

`A237271(n+1)%2+1`
-/

namespace A348364.P12726535016417232718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A237271 (n + 1)) 2 + 1

end

end A348364.P12726535016417232718

namespace A348364

/-- `A237271(n+1)%2+1` -/
def P12726535016417232718.Spec : Prop :=
  ∀ n, P12726535016417232718.a n = A348364 (n + 1)

end A348364

/-! ## A348364.P7043431541038471720

`2-floor(acot(A067742(n+1)))`
-/

namespace A348364.P7043431541038471720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ⌊SequenceMachineLib.acot (A067742 (n + 1) : ℝ)⌋

end

end A348364.P7043431541038471720

namespace A348364

/-- `2-floor(acot(A067742(n+1)))` -/
def P7043431541038471720.Spec : Prop :=
  ∀ n, P7043431541038471720.a n = A348364 (n + 1)

end A348364

/-! ## A348364.P12707961269032202413

`2-floor(acot(A071090(n+1)))`
-/

namespace A348364.P12707961269032202413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ⌊SequenceMachineLib.acot (A071090 (n + 1) : ℝ)⌋

end

end A348364.P12707961269032202413

namespace A348364

/-- `2-floor(acot(A071090(n+1)))` -/
def P12707961269032202413.Spec : Prop :=
  ∀ n, P12707961269032202413.a n = A348364 (n + 1)

end A348364

/-! ## A348364.P4055182438563526587

`char[A071562(n+1)-1]+1`
-/

namespace A348364.P4055182438563526587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071562 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f1 j = (n : ℤ) then 1 else 0) + 1

end

end A348364.P4055182438563526587

namespace A348364

/-- `char[A071562(n+1)-1]+1` -/
def P4055182438563526587.Spec : Prop :=
  ∀ n, (P4055182438563526587.a n : ℤ) = A348364 (n + 1)

end A348364

/-! ## A348364.P2811512344202770471

`char[A244367(n+1)-1]+1`
-/

namespace A348364.P2811512344202770471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244367 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f1 j = (n : ℤ) then 1 else 0) + 1

end

end A348364.P2811512344202770471

namespace A348364

/-- `char[A244367(n+1)-1]+1` -/
def P2811512344202770471.Spec : Prop :=
  ∀ n, (P2811512344202770471.a n : ℤ) = A348364 (n + 1)

end A348364

/-! ## A348364.P14923457610405706368

`2-char[A071561(n+1)-1]`
-/

namespace A348364.P14923457610405706368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071561 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A348364.P14923457610405706368

namespace A348364

/-- `2-char[A071561(n+1)-1]` -/
def P14923457610405706368.Spec : Prop :=
  ∀ n, P14923457610405706368.a n = A348364 (n + 1)

end A348364

/-! ## A348364.P14613148491284363426

`A040001(A340833(n+1))`
-/

namespace A348364.P14613148491284363426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (A340833 (n + 1)).toNat

end

end A348364.P14613148491284363426

namespace A348364

/-- `A040001(A340833(n+1))` -/
def P14613148491284363426.Spec : Prop :=
  ∀ n, P14613148491284363426.a n = A348364 (n + 1)

end A348364

/-! ## A348364.P1906240164863242892

`A000035(A340833(n+1)+1)+1`
-/

namespace A348364.P1906240164863242892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A340833 (n + 1) + 1).toNat + 1

end

end A348364.P1906240164863242892

namespace A348364

/-- `A000035(A340833(n+1)+1)+1` -/
def P1906240164863242892.Spec : Prop :=
  ∀ n, P1906240164863242892.a n = A348364 (n + 1)

end A348364

/-! ## A348364.P15847877870014535168

`A164441(ceil(A067742(n+1)/(n+1)))`
-/

namespace A348364.P15847877870014535168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164441 ⌈(A067742 (n + 1) : ℚ) / (n + 1 : ℚ)⌉.toNat

end

end A348364.P15847877870014535168

namespace A348364

/-- `A164441(ceil(A067742(n+1)/(n+1)))` -/
def P15847877870014535168.Spec : Prop :=
  ∀ n, P15847877870014535168.a n = A348364 (n + 1)

end A348364

/-! ## A348364.P18276605559589994469

`∏{e}[A006530(A071090(n+1)+1), #+1]`
-/

namespace A348364.P18276605559589994469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A071090 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1)

end

end A348364.P18276605559589994469

namespace A348364

/-- `∏{e}[A006530(A071090(n+1)+1), #+1]` -/
def P18276605559589994469.Spec : Prop :=
  ∀ n, (P18276605559589994469.a n : ℤ) = A348364 (n + 1)

end A348364

/-! ## A348364.P17939533875301480185

`∏{e}[A020639(A071090(n+1)+1), #+1]`
-/

namespace A348364.P17939533875301480185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A071090 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1)

end

end A348364.P17939533875301480185

namespace A348364

/-- `∏{e}[A020639(A071090(n+1)+1), #+1]` -/
def P17939533875301480185.Spec : Prop :=
  ∀ n, (P17939533875301480185.a n : ℤ) = A348364 (n + 1)

end A348364

/-! ## A348364.P560222151455494772

`A000034(A348327(n+1)+A109613(n))`
-/

namespace A348364.P560222151455494772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A348327 (n + 1) + A109613 n).toNat

end

end A348364.P560222151455494772

namespace A348364

/-- `A000034(A348327(n+1)+A109613(n))` -/
def P560222151455494772.Spec : Prop :=
  ∀ n, P560222151455494772.a n = A348364 (n + 1)

end A348364

/-! ## A348364.P730589592327617050

`A000034(A379379(n+1))`
-/

namespace A348364.P730589592327617050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A379379 (n + 1)).toNat

end

end A348364.P730589592327617050

namespace A348364

/-- `A000034(A379379(n+1))` -/
def P730589592327617050.Spec : Prop :=
  ∀ n, P730589592327617050.a n = A348364 (n + 1)

end A348364

/-! ## A348364.P6929642071675067935

`2-A056594(Δ[A294723(n)])`
-/

namespace A348364.P6929642071675067935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294723 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A056594 (f1 (n + 1) - f1 n).toNat

end

end A348364.P6929642071675067935

namespace A348364

/-- `2-A056594(Δ[A294723(n)])` -/
def P6929642071675067935.Spec : Prop :=
  ∀ n, P6929642071675067935.a n = A348364 (n + 1)

end A348364

/-! ## A348364.P12249348854988809425

`A262619(n+1)+2-A237271(n+1)`
-/

namespace A348364.P12249348854988809425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262619 (n + 1) + (2 - A237271 (n + 1))

end

end A348364.P12249348854988809425

namespace A348364

/-- `A262619(n+1)+2-A237271(n+1)` -/
def P12249348854988809425.Spec : Prop :=
  ∀ n, P12249348854988809425.a n = A348364 (n + 1)

end A348364

/-!
# A348365: Number of connected realizable graphs on n vertices.

The programs for A348365, there is no canonical definition to state claims against.
-/

/-! ## A348365.P13172609676757428004

`floor(sqrt(∑[n])*a(n-1))` with `a(0)=1, a(1)=1, a(2)=2, a(3)=5`
-/

namespace A348365.P13172609676757428004
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2, 5] fun n a =>
  ⌊Real.sqrt ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ) * (a (n - 1) : ℝ)⌋

end

end A348365.P13172609676757428004

/-! ## A348365.P18333158202186749556

`floor(sqrt(∑[A218673(n)]))`
-/

namespace A348365.P18333158202186749556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218673 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A348365.P18333158202186749556

/-! ## A348365.P7213872156048040041

`A306356(n)+C(n, 2)`
-/

namespace A348365.P7213872156048040041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306356 n + (Nat.choose n 2 : ℤ)

end

end A348365.P7213872156048040041

/-!
# A348366: a(n) = 2*a(n - A130312(n)) + (A072649(n) - A072649(n - A130312(n))) mod 2 for n > 1 with a(0) = 0, a(1) = 1.

The programs for A348366, there is no canonical definition to state claims against.
-/

/-! ## A348366.P8050784994881867775

`A030109(A353654(n+1))`
-/

namespace A348366.P8050784994881867775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030109 (A353654 (n + 1)).toNat

end

end A348366.P8050784994881867775

/-! ## A348366.P17826420539588251298

`A030109(eq[A008687(n), A087117(n)])`
-/

namespace A348366.P17826420539588251298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008687 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087117 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030109 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A348366.P17826420539588251298

/-! ## A348366.P1799226968488640594

`A385816(filter[A052499(n), A135528(#)]-1)`
-/

namespace A348366.P1799226968488640594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052499 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385816 (f1 (SequenceMachineLib.nth (fun j => A135528 (f1 j).toNat = 1) n) - 1).toNat

end

end A348366.P1799226968488640594

/-! ## A348366.P6624613965890852123

`A030109(eq[A001511(n+1), A023416(n)]+1)`
-/

namespace A348366.P6624613965890852123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030109 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A348366.P6624613965890852123

/-! ## A348366.P15053541624244215120

`A385816(A385890(n+1)-1)`
-/

namespace A348366.P15053541624244215120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385816 (A385890 (n + 1) - 1).toNat

end

end A348366.P15053541624244215120

/-!
# A348367: a(n) = w(n + w(n)), where w(n) is the binary weight of n, A000120(n).

The programs for A348367, the canonical program `A348367.P5134569712884376342` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A348367 has offset 1).

The definition of A348367 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A348367.P5134569712884376342

`A000120(A092391(n+1))`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A348367

/-- `A000120(A092391(n+1))` -/
def P5134569712884376342.Spec : Prop :=
  ∀ n, P5134569712884376342.a n = A348367 (n + 1)

theorem P5134569712884376342.correct : P5134569712884376342.Spec := by
  intro n
  simp only [A348367, Nat.add_sub_cancel]

end A348367

/-! ## A348367.P16952292014410590869

`A000120(n+1+A000120(n+1))`
-/

namespace A348367.P16952292014410590869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 ((n + 1 : ℤ) + A000120 (n + 1)).toNat

end

end A348367.P16952292014410590869

namespace A348367

/-- `A000120(n+1+A000120(n+1))` -/
def P16952292014410590869.Spec : Prop :=
  ∀ n, P16952292014410590869.a n = A348367 (n + 1)

end A348367

/-! ## A348367.P6192804725234496845

`log2(A001316(∑[2-val(n+1, 2)]))`
-/

namespace A348367.P6192804725234496845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (SequenceMachineLib.valuation (n + 1) 2 : ℤ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A001316 (∑ j ∈ Finset.range (n + 1), f1 j).toNat : ℝ)

end

end A348367.P6192804725234496845

namespace A348367

/-- `log2(A001316(∑[2-val(n+1, 2)]))` -/
def P6192804725234496845.Spec : Prop :=
  ∀ n, P6192804725234496845.a n = (A348367 (n + 1) : ℝ)

end A348367

/-! ## A348367.P10345964499210618028

`A000120(A230300(n+2)-1)`
-/

namespace A348367.P10345964499210618028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A230300 (n + 2) - 1).toNat

end

end A348367.P10345964499210618028

namespace A348367

/-- `A000120(A230300(n+2)-1)` -/
def P10345964499210618028.Spec : Prop :=
  ∀ n, P10345964499210618028.a n = A348367 (n + 1)

end A348367

/-! ## A348367.P14386671079866301531

`A000120(A048881(n)+2+n)`
-/

namespace A348367.P14386671079866301531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A048881 n + 2 + (n : ℤ)).toNat

end

end A348367.P14386671079866301531

namespace A348367

/-- `A000120(A048881(n)+2+n)` -/
def P14386671079866301531.Spec : Prop :=
  ∀ n, P14386671079866301531.a n = A348367 (n + 1)

end A348367

/-! ## A348367.P6225238813998745331

`A000120(A063787(n+2)+n)`
-/

namespace A348367.P6225238813998745331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A063787 (n + 2) + (n : ℤ)).toNat

end

end A348367.P6225238813998745331

namespace A348367

/-- `A000120(A063787(n+2)+n)` -/
def P6225238813998745331.Spec : Prop :=
  ∀ n, P6225238813998745331.a n = A348367 (n + 1)

end A348367

/-! ## A348367.P17542223983441119047

`A000120(∑[2-A007814(n+1)])`
-/

namespace A348367.P17542223983441119047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A007814 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A348367.P17542223983441119047

namespace A348367

/-- `A000120(∑[2-A007814(n+1)])` -/
def P17542223983441119047.Spec : Prop :=
  ∀ n, P17542223983441119047.a n = A348367 (n + 1)

end A348367

/-! ## A348367.P8577321043475193770

`A000120(A001511(A001316(n+1))+n)`
-/

namespace A348367.P8577321043475193770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A001511 (A001316 (n + 1)).toNat + (n : ℤ)).toNat

end

end A348367.P8577321043475193770

namespace A348367

/-- `A000120(A001511(A001316(n+1))+n)` -/
def P8577321043475193770.Spec : Prop :=
  ∀ n, P8577321043475193770.a n = A348367 (n + 1)

end A348367

/-! ## A348367.P11720498750423039231

`A000120(A070939(A001316(n+1))+n)`
-/

namespace A348367.P11720498750423039231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A070939 (A001316 (n + 1)).toNat + (n : ℤ)).toNat

end

end A348367.P11720498750423039231

namespace A348367

/-- `A000120(A070939(A001316(n+1))+n)` -/
def P11720498750423039231.Spec : Prop :=
  ∀ n, P11720498750423039231.a n = A348367 (n + 1)

end A348367

/-! ## A348367.P5387309484249663575

`A000120(A135533(A001316(n+1))+n)`
-/

namespace A348367.P5387309484249663575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A135533 (A001316 (n + 1)).toNat + (n : ℤ)).toNat

end

end A348367.P5387309484249663575

namespace A348367

/-- `A000120(A135533(A001316(n+1))+n)` -/
def P5387309484249663575.Spec : Prop :=
  ∀ n, P5387309484249663575.a n = A348367 (n + 1)

end A348367

/-! ## A348367.P5902054485963897715

`A000120(A304106(A057334(n+1))+n)`
-/

namespace A348367.P5902054485963897715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A304106 (A057334 (n + 1)).toNat + (n : ℤ)).toNat

end

end A348367.P5902054485963897715

namespace A348367

/-- `A000120(A304106(A057334(n+1))+n)` -/
def P5902054485963897715.Spec : Prop :=
  ∀ n, P5902054485963897715.a n = A348367 (n + 1)

end A348367

/-! ## A348367.P3177413185729532136

`A000120(A135587(A001316(n+1))+n)`
-/

namespace A348367.P3177413185729532136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A135587 (A001316 (n + 1)).toNat + (n : ℤ)).toNat

end

end A348367.P3177413185729532136

namespace A348367

/-- `A000120(A135587(A001316(n+1))+n)` -/
def P3177413185729532136.Spec : Prop :=
  ∀ n, P3177413185729532136.a n = A348367 (n + 1)

end A348367

/-! ## A348367.P16143859770741362718

`A000120(A220466(A000120(n+1)+n))`
-/

namespace A348367.P16143859770741362718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A220466 (A000120 (n + 1) + (n : ℤ)).toNat).toNat

end

end A348367.P16143859770741362718

namespace A348367

/-- `A000120(A220466(A000120(n+1)+n))` -/
def P16143859770741362718.Spec : Prop :=
  ∀ n, P16143859770741362718.a n = A348367 (n + 1)

end A348367

/-! ## A348367.P6941302226746138723

`A357134(A048896(A000120(n+1)+n))`
-/

namespace A348367.P6941302226746138723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357134 (A048896 (A000120 (n + 1) + (n : ℤ)).toNat).toNat

end

end A348367.P6941302226746138723

namespace A348367

/-- `A357134(A048896(A000120(n+1)+n))` -/
def P6941302226746138723.Spec : Prop :=
  ∀ n, P6941302226746138723.a n = A348367 (n + 1)

end A348367

/-!
# A348368: Numbers k such that w(k + w(k)) < w(k), where w(k) is the binary weight of k, A000120(k).

The programs for A348368, the canonical program `A348368.P5469906356835698158` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A348368 has offset 1).

The definition of A348368 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3154 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A348368.P5469906356835698158

`lt[A229745(n), 0]`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A348368

/-- `lt[A229745(n), 0]` -/
def P5469906356835698158.Spec : Prop :=
  ∀ n, (P5469906356835698158.a n : ℤ) = A348368 (n + 1)

theorem P5469906356835698158.correct : P5469906356835698158.Spec := by
  intro n
  simp only [A348368, Nat.add_sub_cancel]

end A348368

/-! ## A348368.P4910732254088137791

`lt[A100661(n+1), A000120(n)]`
-/

namespace A348368.P4910732254088137791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100661 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A348368.P4910732254088137791

namespace A348368

/-- `lt[A100661(n+1), A000120(n)]` -/
def P4910732254088137791.Spec : Prop :=
  ∀ n, (P4910732254088137791.a n : ℤ) = A348368 (n + 1)

end A348368

/-! ## A348368.P7807516683032430016

`lt[A080468(n+2)+1, A000120(n)]`
-/

namespace A348368.P7807516683032430016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080468 (n + 2) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A348368.P7807516683032430016

namespace A348368

/-- `lt[A080468(n+2)+1, A000120(n)]` -/
def P7807516683032430016.Spec : Prop :=
  ∀ n, (P7807516683032430016.a n : ℤ) = A348368 (n + 1)

end A348368

/-! ## A348368.P17968325798257327985

`lt[A045412(n+1)-2*(n+1), A000120(n)]`
-/

namespace A348368.P17968325798257327985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045412 (n + 1) - (2 * (n + 1) : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A348368.P17968325798257327985

namespace A348368

/-- `lt[A045412(n+1)-2*(n+1), A000120(n)]` -/
def P17968325798257327985.Spec : Prop :=
  ∀ n, (P17968325798257327985.a n : ℤ) = A348368 (n + 1)

end A348368

/-! ## A348368.P11512771011143983665

`lt[2*A046699(n+2)-(n+1), A000120(n)]`
-/

namespace A348368.P11512771011143983665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A046699 (n + 2) - (n + 1 : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A348368.P11512771011143983665

namespace A348368

/-- `lt[2*A046699(n+2)-(n+1), A000120(n)]` -/
def P11512771011143983665.Spec : Prop :=
  ∀ n, (P11512771011143983665.a n : ℤ) = A348368 (n + 1)

end A348368

/-! ## A348368.P2031504802160381100

`lt[A001316(A092391(n)), A001316(n)]`
-/

namespace A348368.P2031504802160381100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 (A092391 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A348368.P2031504802160381100

namespace A348368

/-- `lt[A001316(A092391(n)), A001316(n)]` -/
def P2031504802160381100.Spec : Prop :=
  ∀ n, (P2031504802160381100.a n : ℤ) = A348368 (n + 1)

end A348368

/-! ## A348368.P9874167648690930173

`lt[A257126(n+1), A048881(n)+A000120(n)]`
-/

namespace A348368.P9874167648690930173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257126 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048881 n + A000120 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A348368.P9874167648690930173

namespace A348368

/-- `lt[A257126(n+1), A048881(n)+A000120(n)]` -/
def P9874167648690930173.Spec : Prop :=
  ∀ n, (P9874167648690930173.a n : ℤ) = A348368 (n + 1)

end A348368

/-! ## A348368.P14871327368368343509

`lt[n, A011371(A092391(n))]`
-/

namespace A348368.P14871327368368343509
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011371 (A092391 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A348368.P14871327368368343509

namespace A348368

/-- `lt[n, A011371(A092391(n))]` -/
def P14871327368368343509.Spec : Prop :=
  ∀ n, (P14871327368368343509.a n : ℤ) = A348368 (n + 1)

end A348368

/-! ## A348368.P1588994229527296640

`lt[n, A011371(A000120(n)+n)]`
-/

namespace A348368.P1588994229527296640
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011371 (A000120 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A348368.P1588994229527296640

namespace A348368

/-- `lt[n, A011371(A000120(n)+n)]` -/
def P1588994229527296640.Spec : Prop :=
  ∀ n, (P1588994229527296640.a n : ℤ) = A348368 (n + 1)

end A348368

/-! ## A348368.P7825858288246782310

`lt[A000120(A092391(n)), A000120(n)]`
-/

namespace A348368.P7825858288246782310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A092391 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A348368.P7825858288246782310

namespace A348368

/-- `lt[A000120(A092391(n)), A000120(n)]` -/
def P7825858288246782310.Spec : Prop :=
  ∀ n, (P7825858288246782310.a n : ℤ) = A348368 (n + 1)

end A348368

/-! ## A348368.P17002003166520437011

`lt[A048680(A092391(n)), A048680(n)]`
-/

namespace A348368.P17002003166520437011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048680 (A092391 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048680 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A348368.P17002003166520437011

namespace A348368

/-- `lt[A048680(A092391(n)), A048680(n)]` -/
def P17002003166520437011.Spec : Prop :=
  ∀ n, (P17002003166520437011.a n : ℤ) = A348368 (n + 1)

end A348368

/-! ## A348368.P14933039664031707865

`lt[A000120(A000120(n)+n), A000120(n)]`
-/

namespace A348368.P14933039664031707865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A000120 n + (n : ℤ)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A348368.P14933039664031707865

namespace A348368

/-- `lt[A000120(A000120(n)+n), A000120(n)]` -/
def P14933039664031707865.Spec : Prop :=
  ∀ n, (P14933039664031707865.a n : ℤ) = A348368 (n + 1)

end A348368

/-! ## A348368.P2376512391563127779

`lt[n, A011371(A005843(n)-A011371(n))]`
-/

namespace A348368.P2376512391563127779
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011371 (A005843 n - A011371 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A348368.P2376512391563127779

namespace A348368

/-- `lt[n, A011371(A005843(n)-A011371(n))]` -/
def P2376512391563127779.Spec : Prop :=
  ∀ n, (P2376512391563127779.a n : ℤ) = A348368 (n + 1)

end A348368

/-! ## A348368.P3245995263645306295

`lt[A063787(A063787(n+1)+n), A063787(n+1)]`
-/

namespace A348368.P3245995263645306295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063787 (A063787 (n + 1) + (n : ℤ)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063787 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A348368.P3245995263645306295

namespace A348368

/-- `lt[A063787(A063787(n+1)+n), A063787(n+1)]` -/
def P3245995263645306295.Spec : Prop :=
  ∀ n, (P3245995263645306295.a n : ℤ) = A348368 (n + 1)

end A348368

/-!
# A348369: Number of ways A328596(n) (the reversed binary expansion is an aperiodic necklace) can be expressed as sum A328596(k) + A328596(m) with 0 < k,m < n. The cases A328596(k) + A328596(m) and A328596(m) + A328596(k) are considered equal.

The programs for A348369, there is no canonical definition to state claims against.
-/

/-! ## A348369.P9898851681800855414

`A008624(A232640(n+1))%A167247(n+1)`
-/

namespace A348369.P9898851681800855414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008624 (A232640 (n + 1)).toNat) (A167247 (n + 1))

end

end A348369.P9898851681800855414

/-! ## A348369.P2266448496440319173

`A348522(A247714(2*n))%A110600(n+2)`
-/

namespace A348369.P2266448496440319173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A348522 (A247714 (2 * n)).toNat) (A110600 (n + 2))

end

end A348369.P2266448496440319173

/-! ## A348369.P4099611523016460934

`A008624(A232640(n+1)%A085589(3*n+7))`
-/

namespace A348369.P4099611523016460934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008624 (Int.tmod (A232640 (n + 1)) (A085589 (3 * n + 7))).toNat

end

end A348369.P4099611523016460934

/-! ## A348369.P4084143222212632520

`A316864(A192232(n+1))+A000196(n)`
-/

namespace A348369.P4084143222212632520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316864 (A192232 (n + 1)).toNat + A000196 n

end

end A348369.P4084143222212632520

/-! ## A348369.P15222415241059797164

`A001221(A030077(n+1)*A059832(n))`
-/

namespace A348369.P15222415241059797164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A030077 (n + 1) * A059832 n).toNat

end

end A348369.P15222415241059797164

/-!
# A348370: Numbers k such that pi(reversal(prime(k))) = reversal(k). Ignore leading 0's.

The programs for A348370, there is no canonical definition to state claims against.
-/

/-! ## A348370.P5719980947550514631

`A069469(n+1)%(A244551(n+1)+3)`
-/

namespace A348370.P5719980947550514631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A069469 (n + 1)) (A244551 (n + 1) + 3)

end

end A348370.P5719980947550514631

/-! ## A348370.P17218396238419413083

`A069469(n+1)%A103286(A188473(n+1))`
-/

namespace A348370.P17218396238419413083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A069469 (n + 1)) (A103286 (A188473 (n + 1)).toNat)

end

end A348370.P17218396238419413083

/-!
# A348375: a(n) = Sum_{k=1..n} (n^k)' where ' is the arithmetic derivative.

The programs for A348375, there is no canonical definition to state claims against.
-/

/-! ## A348375.P15891357458645209180

`∑[A258057(n)]*A068475(n+1)`
-/

namespace A348375.P15891357458645209180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258057 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A068475 (n + 1)

end

end A348375.P15891357458645209180

/-! ## A348375.P5847479782074296511

`A003415(n+1)*A068475(n+1)`
-/

namespace A348375.P5847479782074296511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (n + 1) * A068475 (n + 1)

end

end A348375.P5847479782074296511

/-! ## A348375.P11990395951363232886

`A068475(n+1)*A068512(2*(n+1))`
-/

namespace A348375.P11990395951363232886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068475 (n + 1) * A068512 (2 * (n + 1))

end

end A348375.P11990395951363232886

/-! ## A348375.P11833327720528659935

`A068475(n+1)*A319703(2*(n+1))`
-/

namespace A348375.P11833327720528659935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068475 (n + 1) * A319703 (2 * (n + 1))

end

end A348375.P11833327720528659935

/-!
# A348376: a(n) = Sum_{k=1..n} n^(k'), where ' is the arithmetic derivative.

The programs for A348376, there is no canonical definition to state claims against.
-/

/-! ## A348376.P1067990243256943221

`record[A183169(A183244(n+1))]+n²`
-/

namespace A348376.P1067990243256943221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183169 (A183244 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + (n ^ 2 : ℤ)

end

end A348376.P1067990243256943221

/-!
# A348377: Number of non-alternating compositions of n, excluding twins (x,x).

The programs for A348377, there is no canonical definition to state claims against.
-/

/-! ## A348377.P7516472928453844901

`ceil(2^(n-1))-A344604(n)`
-/

namespace A348377.P7516472928453844901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉ - A344604 n

end

end A348377.P7516472928453844901

/-! ## A348377.P16975592891251241175

`A345192(n)-char[2*(n+1)]`
-/

namespace A348377.P16975592891251241175
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345192 n - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A348377.P16975592891251241175

/-! ## A348377.P8836772007570712611

`round(2^(n-1))-(A025047(n)+char[2*(n+1)])`
-/

namespace A348377.P8836772007570712611
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)) - (A025047 n + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ))

end

end A348377.P8836772007570712611

/-! ## A348377.P2193592185013669299

`A348382(n)+A345195(n)`
-/

namespace A348377.P2193592185013669299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348382 n + A345195 n

end

end A348377.P2193592185013669299

/-! ## A348377.P8476832471991680185

`abs(A011782(n)-A344604(n))`
-/

namespace A348377.P8476832471991680185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A011782 n - A344604 n|

end

end A348377.P8476832471991680185

/-!
# A348378: Number of ways to reach n by starting with any positive integer, and repeatedly adding any positive integer or multiplying by any integer greater than 1.

The programs for A348378, there is no canonical definition to state claims against.
-/

/-! ## A348378.P5993779948532478290

`floor(A348396(n+1)+A348396(n+1)/2)`
-/

namespace A348378.P5993779948532478290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A348396 (n + 1) : ℚ) + (A348396 (n + 1) : ℚ) / 2⌋

end

end A348378.P5993779948532478290

/-! ## A348378.P3571830745723572548

`floor(3*A348396(n+1)/2)`
-/

namespace A348378.P3571830745723572548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(3 * A348396 (n + 1) : ℚ) / 2⌋

end

end A348378.P3571830745723572548

/-! ## A348378.P10363559958999570692

`3*A348396(n+1)/(A000007(n)+2)`
-/

namespace A348378.P10363559958999570692
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 * A348396 (n + 1) : ℚ) / (A000007 n + 2 : ℚ)

end

end A348378.P10363559958999570692

/-! ## A348378.P1188729296515200242

`(3*A348396(n+1)-A000038(n)/2)/2`
-/

namespace A348378.P1188729296515200242
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((3 * A348396 (n + 1) : ℚ) - (A000038 n : ℚ) / 2) / 2

end

end A348378.P1188729296515200242

/-! ## A348378.P1193413976143521328

`3*A348396(n+1)/A020639(9*A006093(n+1))`
-/

namespace A348378.P1193413976143521328
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 * A348396 (n + 1) : ℚ) / (A020639 (9 * A006093 (n + 1)).toNat : ℚ)

end

end A348378.P1193413976143521328

/-!
# A348382: Number of compositions of n that are not a twin (x,x) but have adjacent equal parts.

The programs for A348382, there is no canonical definition to state claims against.
-/

/-! ## A348382.P2998892827135930246

`A348377(n)-A345195(n)`
-/

namespace A348382.P2998892827135930246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348377 n - A345195 n

end

end A348382.P2998892827135930246

/-! ## A348382.P5076294417851089860

`A261983(n)-log2(A040001(n))`
-/

namespace A348382.P5076294417851089860
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A261983 n : ℝ) - Real.logb 2 (A040001 n : ℝ)

end

end A348382.P5076294417851089860

/-! ## A348382.P5028944471936098049

`A261983(n)-Δ[A065033(n)]`
-/

namespace A348382.P5028944471936098049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261983 n - (f1 (n + 1) - f1 n)

end

end A348382.P5028944471936098049

/-! ## A348382.P3489287012466158411

`A261983(n)-∑[comp[A018252(n+1)]²]%2`
-/

namespace A348382.P3489287012466158411
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261983 n - (((∑ j ∈ Finset.range (n + 1), f1 j) % 2 : ℕ) : ℤ)

end

end A348382.P3489287012466158411

/-! ## A348382.P14750033201919412562

`A261983(n)-A000035(A014681(n))`
-/

namespace A348382.P14750033201919412562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261983 n - A000035 (A014681 n).toNat

end

end A348382.P14750033201919412562

/-! ## A348382.P16914745295807842689

`A025047(n)+A348377(n)-A003242(n)`
-/

namespace A348382.P16914745295807842689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025047 n + (A348377 n - A003242 n)

end

end A348382.P16914745295807842689

/-! ## A348382.P1712281724506245191

`A261983(n)-A328496(A238531(n))`
-/

namespace A348382.P1712281724506245191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261983 n - A328496 (A238531 n).toNat

end

end A348382.P1712281724506245191

/-!
# A348384: Heinz numbers of integer partitions whose length is 2/3 their sum.

The programs for A348384, there is no canonical definition to state claims against.
-/

/-! ## A348384.P342125010919595242

`filter[A347452(n+1), A065043(#)]`
-/

namespace A348384.P342125010919595242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347452 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A065043 (f1 j).toNat = 1) n)

end

end A348384.P342125010919595242

/-! ## A348384.P14247739149149576828

`∩[A347452(n+1), A014682(A347452(n+2))]`
-/

namespace A348384.P14247739149149576828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347452 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A347452 (n + 2)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A348384.P14247739149149576828

/-! ## A348384.P4748760670405346470

`∩[A347452(n+1), A348550(n+1)]`
-/

namespace A348384.P4748760670405346470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347452 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348550 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A348384.P4748760670405346470

/-! ## A348384.P10122589306923825622

`A034444(A004394(2*n+1))*A340387(n+1)`
-/

namespace A348384.P10122589306923825622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (A004394 (2 * n + 1)).toNat * A340387 (n + 1)

end

end A348384.P10122589306923825622

/-!
# A348385: Lexicographically earliest sequence of positive integers such that for any n > 0, a(n) is the number of nonempty runs of consecutive terms whose product is n.

The programs for A348385, there is no canonical definition to state claims against.
-/

/-! ## A348385.P280934821405777773

`A029836(or(A000041(n), A000203(n+1)))`
-/

namespace A348385.P280934821405777773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029836 (Int.lor (A000041 n) (A000203 (n + 1))).toNat

end

end A348385.P280934821405777773

/-! ## A348385.P11273641660509345299

`A067693(A102798(n+1)+char[A126279(n+1)])`
-/

namespace A348385.P11273641660509345299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126279 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067693 (A102798 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)).toNat

end

end A348385.P11273641660509345299

/-! ## A348385.P16690247485810482887

`A002024(record[A260731(A260300(n+1))])`
-/

namespace A348385.P16690247485810482887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260731 (A260300 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A348385.P16690247485810482887

/-! ## A348385.P6958932870866142360

`A339276(A336984(n+1))`
-/

namespace A348385.P6958932870866142360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339276 (A336984 (n + 1)).toNat

end

end A348385.P6958932870866142360

/-!
# A348386: Lexicographically earliest sequence of positive integers such that for any n > 0, a(n) is the number of nonempty runs of consecutive terms whose sum is n.

The programs for A348386, there is no canonical definition to state claims against.
-/

/-! ## A348386.P7419695819240511393

`A000196(A312722(n))%A179919(A028310(n))`
-/

namespace A348386.P7419695819240511393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000196 (A312722 n).toNat) (A179919 (A028310 n).toNat)

end

end A348386.P7419695819240511393

/-! ## A348386.P1687071174945633636

`A257639(A077472(2*n+1))`
-/

namespace A348386.P1687071174945633636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257639 (A077472 (2 * n + 1)).toNat

end

end A348386.P1687071174945633636

/-! ## A348386.P3220707795374662794

`A003056(∑[A010123(A256292(n+1))])`
-/

namespace A348386.P3220707795374662794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010123 (A256292 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A348386.P3220707795374662794

/-! ## A348386.P13702941348453644037

`A000196(A312722(n)%A179918(n+1))`
-/

namespace A348386.P13702941348453644037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (Int.tmod (A312722 n) (A179918 (n + 1))).toNat

end

end A348386.P13702941348453644037

/-! ## A348386.P8336791792415074917

`A003056(A260181(n+1))%A001153(n+1)`
-/

namespace A348386.P8336791792415074917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003056 (A260181 (n + 1)).toNat) (A001153 (n + 1))

end

end A348386.P8336791792415074917

/-!
# A348387: Place the numbers 1 to n on a square grid and for all created orthogonally adjacent pairs divide the larger value by the smaller, using integer division; a(n) gives the maximum possible value of the sum of all pair quotients.

The programs for A348387, there is no canonical definition to state claims against.
-/

/-! ## A348387.P16644300020558603867

`A005228(n+1)-A134914(A277346(n))`
-/

namespace A348387.P16644300020558603867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005228 (n + 1) - A134914 (A277346 n).toNat

end

end A348387.P16644300020558603867

/-! ## A348387.P1184554938716147784

`∑[A001222(A141420(Δ[n²]))]`
-/

namespace A348387.P1184554938716147784
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A141420 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A348387.P1184554938716147784

/-! ## A348387.P7681549898564199464

`∑[A072644(∑[A072635(3*n)])]`
-/

namespace A348387.P7681549898564199464
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072635 (3 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072644 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A348387.P7681549898564199464

/-! ## A348387.P2583414393989238912

`∑[A167866(record[A167883(n+3)])]`
-/

namespace A348387.P2583414393989238912
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167883 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167866 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A348387.P2583414393989238912

/-! ## A348387.P15452213533393321180

`∑[n+1-A094428(A027941(n))]`
-/

namespace A348387.P15452213533393321180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A094428 (A027941 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A348387.P15452213533393321180

/-!
# A348388: Irregular triangle read by rows: T(n, k) = floor((n-k)/k), for k = 1, 2, ..., floor(n/2) and n >= 2.

The programs for A348388, the canonical program `A348388.P14390426255970003515` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A348388 has offset 2).

The definition of A348388 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A348388.P14390426255970003515

`ceil(A122196(n+1)/A122197(n+1))`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A348388

/-- `ceil(A122196(n+1)/A122197(n+1))` -/
def P14390426255970003515.Spec : Prop :=
  ∀ n, P14390426255970003515.a n = A348388 (n + 2)

theorem P14390426255970003515.correct : P14390426255970003515.Spec := by
  intro n
  simp only [A348388, Nat.add_sub_cancel]

end A348388

/-! ## A348388.P13967358331225031334

`A075994(n+2)-1`
-/

namespace A348388.P13967358331225031334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075994 (n + 2) - 1

end

end A348388.P13967358331225031334

namespace A348388

/-- `A075994(n+2)-1` -/
def P13967358331225031334.Spec : Prop :=
  ∀ n, P13967358331225031334.a n = A348388 (n + 2)

end A348388

/-! ## A348388.P17642116297974710475

`A010766(A056536(n+1))`
-/

namespace A348388.P17642116297974710475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010766 (A056536 (n + 1)).toNat

end

end A348388.P17642116297974710475

namespace A348388

/-- `A010766(A056536(n+1))` -/
def P17642116297974710475.Spec : Prop :=
  ∀ n, P17642116297974710475.a n = A348388 (n + 2)

end A348388

/-! ## A348388.P8404732631417368157

`A000720(p?[A008578(A010766(n+1))])`
-/

namespace A348388.P8404732631417368157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A010766 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A348388.P8404732631417368157

namespace A348388

/-- `A000720(p?[A008578(A010766(n+1))])` -/
def P8404732631417368157.Spec : Prop :=
  ∀ n, P8404732631417368157.a n = A348388 (n + 2)

end A348388

/-! ## A348388.P6416827078665591815

`A003963(p?[A008578(A010766(n+1))])`
-/

namespace A348388.P6416827078665591815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A010766 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A348388.P6416827078665591815

namespace A348388

/-- `A003963(p?[A008578(A010766(n+1))])` -/
def P6416827078665591815.Spec : Prop :=
  ∀ n, P6416827078665591815.a n = A348388 (n + 2)

end A348388

/-! ## A348388.P12080348176398049819

`A061395(p?[A008578(A010766(n+1))])`
-/

namespace A348388.P12080348176398049819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A010766 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A348388.P12080348176398049819

namespace A348388

/-- `A061395(p?[A008578(A010766(n+1))])` -/
def P12080348176398049819.Spec : Prop :=
  ∀ n, P12080348176398049819.a n = A348388 (n + 2)

end A348388

/-! ## A348388.P7313084129575611184

`A230980(p?[A008578(A010766(n+1))])`
-/

namespace A348388.P7313084129575611184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A010766 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A348388.P7313084129575611184

namespace A348388

/-- `A230980(p?[A008578(A010766(n+1))])` -/
def P7313084129575611184.Spec : Prop :=
  ∀ n, P7313084129575611184.a n = A348388 (n + 2)

end A348388

/-! ## A348388.P4626186371355966146

`A003988(A274427(n+1))`
-/

namespace A348388.P4626186371355966146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003988 (A274427 (n + 1)).toNat

end

end A348388.P4626186371355966146

namespace A348388

/-- `A003988(A274427(n+1))` -/
def P4626186371355966146.Spec : Prop :=
  ∀ n, P4626186371355966146.a n = A348388 (n + 2)

end A348388

/-! ## A348388.P11717717310596095078

`floor(A199474(n+1)/A122197(n+1))`
-/

namespace A348388.P11717717310596095078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A199474 (n + 1) : ℚ) / (A122197 (n + 1) : ℚ)⌋

end

end A348388.P11717717310596095078

namespace A348388

/-- `floor(A199474(n+1)/A122197(n+1))` -/
def P11717717310596095078.Spec : Prop :=
  ∀ n, P11717717310596095078.a n = A348388 (n + 2)

end A348388

/-! ## A348388.P1083431849624700337

`A366421(A271647(n+1))`
-/

namespace A348388.P1083431849624700337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366421 (A271647 (n + 1)).toNat

end

end A348388.P1083431849624700337

namespace A348388

/-- `A366421(A271647(n+1))` -/
def P1083431849624700337.Spec : Prop :=
  ∀ n, P1083431849624700337.a n = A348388 (n + 2)

end A348388

/-!
# A348389: Irregular triangle read by rows: row n gives for n >= 2 a concatenation of the finite sequences of the multiples of k, larger than k and not exceeding n, for k = 1, 2, ..., floor(n/2).

The programs for A348389, there is no canonical definition to state claims against.
-/

/-! ## A348389.P17711597253313618116

`A330036(eq[A175599(n+1), A284583(n)])`
-/

namespace A348389.P17711597253313618116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175599 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284583 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330036 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A348389.P17711597253313618116

/-! ## A348389.P9842609020414998935

`A358550(A103371(n+2)+2)`
-/

namespace A348389.P9842609020414998935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358550 (A103371 (n + 2) + 2).toNat

end

end A348389.P9842609020414998935

/-! ## A348389.P2219510020784640825

`A083399(A074377(n)+A000051(n))`
-/

namespace A348389.P2219510020784640825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083399 (A074377 n + A000051 n).toNat

end

end A348389.P2219510020784640825

/-! ## A348389.P549970483070536538

`A320658(A069202(n+1))+A262813(n+1)`
-/

namespace A348389.P549970483070536538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320658 (A069202 (n + 1)).toNat + A262813 (n + 1)

end

end A348389.P549970483070536538

/-! ## A348389.P10582648059108683164

`A043530(n+1)+A043529(A174693(n+2))`
-/

namespace A348389.P10582648059108683164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043530 (n + 1) + A043529 (A174693 (n + 2)).toNat

end

end A348389.P10582648059108683164

/-!
# A348390: Irregular triangle read by rows: for n >= 2 the row members a(n, m) give the proper divisors of k, followed by the multiples of k larger than k and not exceeding n, for k = 1, 2, ..., n.

The programs for A348390, there is no canonical definition to state claims against.
-/

/-! ## A348390.P11500503349850875473

`A026792(A347395(3*(n+1))+A035469(n+1))`
-/

namespace A348390.P11500503349850875473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026792 (A347395 (3 * (n + 1)) + A035469 (n + 1)).toNat

end

end A348390.P11500503349850875473

/-!
# A348391: Row sums of irregular triangle A348390.

The programs for A348391, the canonical program `A348391.P12587816717728795562` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A348391 has offset 2).

The definition of A348391 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A153485, A348392, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A348391.P12587816717728795562

`A153485(n+2)+A348392(n+2)`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A348391

/-- `A153485(n+2)+A348392(n+2)` -/
def P12587816717728795562.Spec : Prop :=
  ∀ n, P12587816717728795562.a n = A348391 (n + 2)

theorem P12587816717728795562.correct : P12587816717728795562.Spec := by
  intro n
  simp only [A348391, Nat.add_sub_cancel]

end A348391

/-! ## A348391.P14735908598357604612

`Δ[A123329(n)]+∑[(n+2)*(A000005(n+2)-1)]`
-/

namespace A348391.P14735908598357604612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123329 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * (A000005 (n + 2) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + ∑ j ∈ Finset.range (n + 1), f2 j

end

end A348391.P14735908598357604612

namespace A348391

/-- `Δ[A123329(n)]+∑[(n+2)*(A000005(n+2)-1)]` -/
def P14735908598357604612.Spec : Prop :=
  ∀ n, P14735908598357604612.a n = A348391 (n + 2)

end A348391

/-! ## A348391.P784676577134944729

`∑[∑[Δ[A152211(n+1)]-2]]`
-/

namespace A348391.P784676577134944729
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152211 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n - 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A348391.P784676577134944729

namespace A348391

/-- `∑[∑[Δ[A152211(n+1)]-2]]` -/
def P784676577134944729.Spec : Prop :=
  ∀ n, P784676577134944729.a n = A348391 (n + 2)

end A348391

/-! ## A348391.P5498476779521597455

`Δ[A123329(n)]+∑[A038040(n+2)-(n+2)]`
-/

namespace A348391.P5498476779521597455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123329 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038040 (n + 2) - (n + 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + ∑ j ∈ Finset.range (n + 1), f2 j

end

end A348391.P5498476779521597455

namespace A348391

/-- `Δ[A123329(n)]+∑[A038040(n+2)-(n+2)]` -/
def P5498476779521597455.Spec : Prop :=
  ∀ n, P5498476779521597455.a n = A348391 (n + 2)

end A348391

/-! ## A348391.P16983221812842047896

`A153485(n+2)+∑[(n+2)*(A000005(n+2)-1)]`
-/

namespace A348391.P16983221812842047896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * (A000005 (n + 2) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153485 (n + 2) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A348391.P16983221812842047896

namespace A348391

/-- `A153485(n+2)+∑[(n+2)*(A000005(n+2)-1)]` -/
def P16983221812842047896.Spec : Prop :=
  ∀ n, P16983221812842047896.a n = A348391 (n + 2)

end A348391

/-! ## A348391.P16072818852221978332

`A348392(n+2)+A244048(n+3)`
-/

namespace A348391.P16072818852221978332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348392 (n + 2) + A244048 (n + 3)

end

end A348391.P16072818852221978332

namespace A348391

/-- `A348392(n+2)+A244048(n+3)` -/
def P16072818852221978332.Spec : Prop :=
  ∀ n, P16072818852221978332.a n = A348391 (n + 2)

end A348391

/-! ## A348391.P11334351658313343518

`Δ[A123329(n)]+∑[A168014(n+2)]`
-/

namespace A348391.P11334351658313343518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123329 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168014 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + ∑ j ∈ Finset.range (n + 1), f2 j

end

end A348391.P11334351658313343518

namespace A348391

/-- `Δ[A123329(n)]+∑[A168014(n+2)]` -/
def P11334351658313343518.Spec : Prop :=
  ∀ n, P11334351658313343518.a n = A348391 (n + 2)

end A348391

/-!
# A348392: Row sums of the irregular triangle A348389.

The programs for A348392, the canonical program `A348392.P612105050756570634` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A348392 has offset 2).

The definition of A348392 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A143127, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A348392.P612105050756570634

`A143127(n+2)-A000217(n+2)`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A348392

/-- `A143127(n+2)-A000217(n+2)` -/
def P612105050756570634.Spec : Prop :=
  ∀ n, P612105050756570634.a n = A348392 (n + 2)

theorem P612105050756570634.correct : P612105050756570634.Spec := by
  intro n
  simp only [A348392, Nat.add_sub_cancel]

end A348392

/-! ## A348392.P2293578184417606192

`A348391(n+2)-A153485(n+2)`
-/

namespace A348392.P2293578184417606192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348391 (n + 2) - A153485 (n + 2)

end

end A348392.P2293578184417606192

namespace A348392

/-- `A348391(n+2)-A153485(n+2)` -/
def P2293578184417606192.Spec : Prop :=
  ∀ n, P2293578184417606192.a n = A348392 (n + 2)

end A348392

/-! ## A348392.P9624918627882441706

`∑[(n+2)*(∏{e}[n+2, #+1]-1)]`
-/

namespace A348392.P9624918627882441706
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * (((∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1) : ℕ) : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A348392.P9624918627882441706

namespace A348392

/-- `∑[(n+2)*(∏{e}[n+2, #+1]-1)]` -/
def P9624918627882441706.Spec : Prop :=
  ∀ n, P9624918627882441706.a n = A348392 (n + 2)

end A348392

/-! ## A348392.P15197140193739433716

`∑[(n+2)*(A000005(n+2)-1)]`
-/

namespace A348392.P15197140193739433716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * (A000005 (n + 2) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A348392.P15197140193739433716

namespace A348392

/-- `∑[(n+2)*(A000005(n+2)-1)]` -/
def P15197140193739433716.Spec : Prop :=
  ∀ n, P15197140193739433716.a n = A348392 (n + 2)

end A348392

/-! ## A348392.P2704105539454126669

`∑[∑{d}[n+2, n+2-A000010(#)]]`
-/

namespace A348392.P2704105539454126669
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), ((n + 2 : ℤ) - A000010 d)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A348392.P2704105539454126669

namespace A348392

/-- `∑[∑{d}[n+2, n+2-A000010(#)]]` -/
def P2704105539454126669.Spec : Prop :=
  ∀ n, P2704105539454126669.a n = A348392 (n + 2)

end A348392

/-! ## A348392.P13326560290982060906

`A348391(n+2)+A123329(n)-A123329(n+1)`
-/

namespace A348392.P13326560290982060906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348391 (n + 2) + (A123329 n - A123329 (n + 1))

end

end A348392.P13326560290982060906

namespace A348392

/-- `A348391(n+2)+A123329(n)-A123329(n+1)` -/
def P13326560290982060906.Spec : Prop :=
  ∀ n, P13326560290982060906.a n = A348392 (n + 2)

end A348392

/-! ## A348392.P18372386364092969324

`∑[A038040(n+2)-(n+2)]`
-/

namespace A348392.P18372386364092969324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038040 (n + 2) - (n + 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A348392.P18372386364092969324

namespace A348392

/-- `∑[A038040(n+2)-(n+2)]` -/
def P18372386364092969324.Spec : Prop :=
  ∀ n, P18372386364092969324.a n = A348392 (n + 2)

end A348392

/-! ## A348392.P17981251394198057256

`A153485(n+2)+A339370(n+2)-A330285(n+2)`
-/

namespace A348392.P17981251394198057256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153485 (n + 2) + (A339370 (n + 2) - A330285 (n + 2))

end

end A348392.P17981251394198057256

namespace A348392

/-- `A153485(n+2)+A339370(n+2)-A330285(n+2)` -/
def P17981251394198057256.Spec : Prop :=
  ∀ n, P17981251394198057256.a n = A348392 (n + 2)

end A348392

/-! ## A348392.P3919809110270306887

`∑[A168014(n+2)]`
-/

namespace A348392.P3919809110270306887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168014 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A348392.P3919809110270306887

namespace A348392

/-- `∑[A168014(n+2)]` -/
def P3919809110270306887.Spec : Prop :=
  ∀ n, P3919809110270306887.a n = A348392 (n + 2)

end A348392

/-!
# A348393: a(n) = Sum_{d|n} (n^d)', where ' is the arithmetic derivative.

The programs for A348393, there is no canonical definition to state claims against.
-/

/-! ## A348393.P16114100986185578090

`∑{d}[n+1, A003415((n+1)^#)]`
-/

namespace A348393.P16114100986185578090
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A003415 ((n + 1) ^ d)

end

end A348393.P16114100986185578090

/-!
# A348395: Terms in A307730 in order of appearance.

The programs for A348395, there is no canonical definition to state claims against.
-/

/-! ## A348395.P3763331675339326812

`A307730(record[A348246(A307730(n+1))])`
-/

namespace A348395.P3763331675339326812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348246 (A307730 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307730 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A348395.P3763331675339326812

/-!
# A348396: Number of ways to reach n by starting with 1 and repeatedly adding any positive integer or multiplying by any integer greater than 1.

The programs for A348396, there is no canonical definition to state claims against.
-/

/-! ## A348396.P16893650196204399492

`A332057(A348378(n+1))`
-/

namespace A348396.P16893650196204399492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332057 (A348378 (n + 1)).toNat

end

end A348396.P16893650196204399492

/-! ## A348396.P14524294560137710798

`A005131(A348378(n+1)+1)`
-/

namespace A348396.P14524294560137710798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005131 (A348378 (n + 1) + 1).toNat

end

end A348396.P14524294560137710798

/-! ## A348396.P4289548687295652267

`A004396(and(-1, A348378(n+1)))`
-/

namespace A348396.P4289548687295652267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (Int.land (-1) (A348378 (n + 1))).toNat

end

end A348396.P4289548687295652267

/-! ## A348396.P3516794635755815735

`A004396(A348378(n+1)+A000007(n))`
-/

namespace A348396.P3516794635755815735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A348378 (n + 1) + A000007 n).toNat

end

end A348396.P3516794635755815735

/-! ## A348396.P550432110675320994

`A004396(A348378(n+1))^A000045(n²%(n+1))`
-/

namespace A348396.P550432110675320994
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004396 (A348378 (n + 1)).toNat : ℚ) ^ (A000045 (n ^ 2 % (n + 1)) : ℤ)

end

end A348396.P550432110675320994

/-!
# A348398: a(n) = Sum_{d|n} sigma_[n/d](d), where sigma_[k](n) is the sum of the k-th powers of the divisors of n.

The programs for A348398, the canonical program `A348398.P4128592750755971602` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A348398 has offset 1).

The definition of A348398 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 629 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A348398.P4128592750755971602

`∑{d}[n+1, A055225(#)]`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A348398

/-- `∑{d}[n+1, A055225(#)]` -/
def P4128592750755971602.Spec : Prop :=
  ∀ n, P4128592750755971602.a n = A348398 (n + 1)

theorem P4128592750755971602.correct : P4128592750755971602.Spec := by
  intro n
  simp only [A348398, Nat.add_sub_cancel]

end A348398

/-!
# A348399: a(n) = Sum_{d|n} sigma_[d](n), where sigma_[k](n) is the sum of the k-th powers of the divisors of n.

The programs for A348399, there is no canonical definition to state claims against.
-/

/-! ## A348399.P11171083546581909555

`A363646(n+1)-A352588(A265270(n+1))`
-/

namespace A348399.P11171083546581909555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363646 (n + 1) - A352588 (A265270 (n + 1)).toNat

end

end A348399.P11171083546581909555

