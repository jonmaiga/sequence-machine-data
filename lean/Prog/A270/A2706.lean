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
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C007
import Seq.B001.C009
import Seq.B001.C010
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
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
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
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

/-!
# A270600: a(n) is the smallest k > 1 not already in the sequence such that p = prime(n) is a factor of 2^k-1.

The programs for A270600, there is no canonical definition to state claims against.
-/

/-! ## A270600.P10272222079498484967

`A014664(n+2)*A038538(A084380(n))`
-/

namespace A270600.P10272222079498484967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014664 (n + 2) * A038538 (A084380 n).toNat

end

end A270600.P10272222079498484967

/-! ## A270600.P4878775658323164873

`A014664(n+2)*A331024(A195011(3*n+1))`
-/

namespace A270600.P4878775658323164873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014664 (n + 2) * A331024 (A195011 (3 * n + 1)).toNat

end

end A270600.P4878775658323164873

/-! ## A270600.P13490888973777726670

`A002326(A005097(n+1))*A038538(A084380(n))`
-/

namespace A270600.P13490888973777726670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002326 (A005097 (n + 1)).toNat * A038538 (A084380 n).toNat

end

end A270600.P13490888973777726670

/-! ## A270600.P2256889822369938646

`A007733(A065091(n+1))*A038538(A084380(n))`
-/

namespace A270600.P2256889822369938646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007733 (A065091 (n + 1)).toNat * A038538 (A084380 n).toNat

end

end A270600.P2256889822369938646

/-! ## A270600.P15960009553746872084

`lcm(A014664(n+2), A066099(A002148(n)))`
-/

namespace A270600.P15960009553746872084
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A014664 (n + 2)) (A066099 (A002148 n).toNat)

end

end A270600.P15960009553746872084

/-!
# A270601: Number of n X n X n triangular 0..3 arrays with some element plus some adjacent element totalling 3+1 or 3-1 exactly once.

The programs for A270601, there is no canonical definition to state claims against.
-/

/-! ## A270601.P17498880670122121116

`A270606(∑[n+3]+1)`
-/

namespace A270601.P17498880670122121116
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270606 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A270601.P17498880670122121116

/-! ## A270601.P7859556815794309871

`record[A270606(∑[A158416(n)])]`
-/

namespace A270601.P7859556815794309871
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158416 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270606 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270601.P7859556815794309871

/-! ## A270601.P6764190989348900887

`record[A270606(record[A134464(n+1)])]`
-/

namespace A270601.P6764190989348900887
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134464 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270606 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270601.P6764190989348900887

/-! ## A270601.P3558758073233184688

`record[char[A141214(n)]*A270606(n+1)]`
-/

namespace A270601.P3558758073233184688
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141214 n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A270606 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270601.P3558758073233184688

/-! ## A270601.P11686835289082205308

`record[and(A038498(n+1), A270606(n+1))]`
-/

namespace A270601.P11686835289082205308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A038498 (n + 1)) (A270606 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270601.P11686835289082205308

/-!
# A270602: Number of nXnXn triangular 0..4 arrays with some element plus some adjacent element totalling 4+1 or 4-1 exactly once.

The programs for A270602, there is no canonical definition to state claims against.
-/

/-! ## A270602.P5688260520394529811

`A270606(A141214(n+1))`
-/

namespace A270602.P5688260520394529811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270606 (A141214 (n + 1)).toNat

end

end A270602.P5688260520394529811

/-! ## A270602.P17934283161299759524

`A270606(A155212(n)+5)`
-/

namespace A270602.P17934283161299759524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270606 (A155212 n + 5).toNat

end

end A270602.P17934283161299759524

/-! ## A270602.P474318274201637481

`A270606(eq[3, A193592(n)])`
-/

namespace A270602.P474318274201637481
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270606 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A270602.P474318274201637481

/-! ## A270602.P17976100812818902786

`A270606(Δ[A034857(n+1)])`
-/

namespace A270602.P17976100812818902786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034857 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270606 (f1 (n + 1) - f1 n).toNat

end

end A270602.P17976100812818902786

/-! ## A270602.P7729743431490074537

`A270606(A052905(n+1)+2)`
-/

namespace A270602.P7729743431490074537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270606 (A052905 (n + 1) + 2).toNat

end

end A270602.P7729743431490074537

/-!
# A270603: Number of nXnXn triangular 0..5 arrays with some element plus some adjacent element totalling 5+1 or 5-1 exactly once.

The programs for A270603, there is no canonical definition to state claims against.
-/

/-! ## A270603.P4100916710574699517

`A270606(eq[4, A193592(n)])`
-/

namespace A270603.P4100916710574699517
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270606 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A270603.P4100916710574699517

/-! ## A270603.P10798526327112701846

`record[A270606(n+1)*A283683(n+1)]`
-/

namespace A270603.P10798526327112701846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270606 (n + 1) * A283683 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270603.P10798526327112701846

/-!
# A270604: Number of nXnXn triangular 0..6 arrays with some element plus some adjacent element totalling 6+1 or 6-1 exactly once.

The programs for A270604, there is no canonical definition to state claims against.
-/

/-! ## A270604.P1320888137242979108

`A270606(eq[5, A193592(n)])`
-/

namespace A270604.P1320888137242979108
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270606 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A270604.P1320888137242979108

/-! ## A270604.P15459316863778061716

`A270606(eq[8, A185782(n+1)])`
-/

namespace A270604.P15459316863778061716
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270606 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A270604.P15459316863778061716

/-! ## A270604.P17392822368724549343

`A270606(eq[16, A057728(n+1)])`
-/

namespace A270604.P17392822368724549343
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057728 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270606 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A270604.P17392822368724549343

/-!
# A270605: Number of nXnXn triangular 0..7 arrays with some element plus some adjacent element totalling 7+1 or 7-1 exactly once.

The programs for A270605, there is no canonical definition to state claims against.
-/

/-! ## A270605.P6991732734927767231

`A270606(eq[6, A193592(n)])`
-/

namespace A270605.P6991732734927767231
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270606 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A270605.P6991732734927767231

/-! ## A270605.P2029532485842210661

`A270606(eq[3, A316074(n+1)])`
-/

namespace A270605.P2029532485842210661
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316074 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270606 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A270605.P2029532485842210661

/-! ## A270605.P13488542979347993169

`A270606(eq[10, A185782(n+1)])`
-/

namespace A270605.P13488542979347993169
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270606 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A270605.P13488542979347993169

/-!
# A270606: T(n,k)=Number of nXnXn triangular 0..k arrays with some element plus some adjacent element totalling k+1 or k-1 exactly once.

The programs for A270606, there is no canonical definition to state claims against.
-/

/-! ## A270606.P9319487823931831872

`6*A335446(A336909(n+3))`
-/

namespace A270606.P9319487823931831872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A335446 (A336909 (n + 3)).toNat

end

end A270606.P9319487823931831872

/-! ## A270606.P16431879774934907958

`A005882(A006452(n))*A210485(n)`
-/

namespace A270606.P16431879774934907958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005882 (A006452 n).toNat * A210485 n

end

end A270606.P16431879774934907958

/-! ## A270606.P7328102181971131869

`A270205(A237593(n+2)^A278074(n))`
-/

namespace A270606.P7328102181971131869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270205 (SequenceMachineLib.roundAway ((A237593 (n + 2) : ℚ) ^ (A278074 n : ℤ))).toNat

end

end A270606.P7328102181971131869

/-! ## A270606.P10786956007713641678

`A065202(A219708(n+1))*A165827(n+3)`
-/

namespace A270606.P10786956007713641678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065202 (A219708 (n + 1)).toNat * A165827 (n + 3)

end

end A270606.P10786956007713641678

/-!
# A270607: Number of 2 X 2 X 2 triangular 0..n arrays with some element plus some adjacent element totaling n+1 or n-1 exactly once.

The programs for A270607, the canonical program `A270607.P11165730088938396743` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A270607 has offset 1).

The definition of A270607 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A270607.P11165730088938396743

`2*a(n-1)-2*a(n-3)+a(n-4)` with `a(0)=6, a(1)=0, a(2)=36, a(3)=36, a(4)=96`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A270607

/-- `2*a(n-1)-2*a(n-3)+a(n-4)` -/
def P11165730088938396743.Spec : Prop :=
  ∀ n, P11165730088938396743.a n = A270607 (n + 1)

theorem P11165730088938396743.correct : P11165730088938396743.Spec := by
  intro n
  simp only [A270607, Nat.add_sub_cancel]

end A270607

/-! ## A270607.P5497567676529182637

`A270606(∑[n+1]+2)`
-/

namespace A270607.P5497567676529182637
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270606 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A270607.P5497567676529182637

namespace A270607

/-- `A270606(∑[n+1]+2)` -/
def P5497567676529182637.Spec : Prop :=
  ∀ n, P5497567676529182637.a n = A270607 (n + 1)

end A270607

/-!
# A270608: Number of 3X3X3 triangular 0..n arrays with some element plus some adjacent element totalling n+1 or n-1 exactly once.

The programs for A270608, there is no canonical definition to state claims against.
-/

/-! ## A270608.P8145353548930467418

`A270606(∑[n+2]+4)`
-/

namespace A270608.P8145353548930467418
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270606 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A270608.P8145353548930467418

/-! ## A270608.P7819219585982570583

`lcm(2, A270606(A167614(n+1)))`
-/

namespace A270608.P7819219585982570583
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A270606 (A167614 (n + 1)).toNat)

end

end A270608.P7819219585982570583

/-! ## A270608.P14859248465226865850

`A225654(n)*A270606(A167614(n+1))`
-/

namespace A270608.P14859248465226865850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225654 n * A270606 (A167614 (n + 1)).toNat

end

end A270608.P14859248465226865850

/-! ## A270608.P7909242622778730354

`A270606(A167614(n+1))%A016828(n)`
-/

namespace A270608.P7909242622778730354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A270606 (A167614 (n + 1)).toNat) (A016828 n)

end

end A270608.P7909242622778730354

/-! ## A270608.P13583360750261689964

`A184303(n+1)*A270606(A167614(n+1))`
-/

namespace A270608.P13583360750261689964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184303 (n + 1) * A270606 (A167614 (n + 1)).toNat

end

end A270608.P13583360750261689964

/-!
# A270609: Number of 4X4X4 triangular 0..n arrays with some element plus some adjacent element totalling n+1 or n-1 exactly once.

The programs for A270609, there is no canonical definition to state claims against.
-/

/-! ## A270609.P1663622865766071524

`A270606(A141214(n)+7)`
-/

namespace A270609.P1663622865766071524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270606 (A141214 n + 7).toNat

end

end A270609.P1663622865766071524

/-! ## A270609.P4920468233537800721

`A270606(A052905(n)+9)`
-/

namespace A270609.P4920468233537800721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270606 (A052905 n + 9).toNat

end

end A270609.P4920468233537800721

/-! ## A270609.P9234282659499371833

`A270606(A055999(n)+10)`
-/

namespace A270609.P9234282659499371833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270606 (A055999 n + 10).toNat

end

end A270609.P9234282659499371833

/-! ## A270609.P10974845441426439945

`A270606(A167614(n+2)+1)`
-/

namespace A270609.P10974845441426439945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270606 (A167614 (n + 2) + 1).toNat

end

end A270609.P10974845441426439945

/-! ## A270609.P13155661902011492659

`A270606(eq[5, A131818(n+1)])`
-/

namespace A270609.P13155661902011492659
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270606 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A270609.P13155661902011492659

/-!
# A270610: Number of 5X5X5 triangular 0..n arrays with some element plus some adjacent element totalling n+1 or n-1 exactly once.

The programs for A270610, there is no canonical definition to state claims against.
-/

/-! ## A270610.P13206579779221706210

`A270606(A167499(n+3))`
-/

namespace A270610.P13206579779221706210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270606 (A167499 (n + 3)).toNat

end

end A270610.P13206579779221706210

/-! ## A270610.P2477195813432549585

`A270606(A155212(n)+13)`
-/

namespace A270610.P2477195813432549585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270606 (A155212 n + 13).toNat

end

end A270610.P2477195813432549585

/-! ## A270610.P7279988212095494690

`A270606(A056000(n)+15)`
-/

namespace A270610.P7279988212095494690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270606 (A056000 n + 15).toNat

end

end A270610.P7279988212095494690

/-! ## A270610.P8001295649239536749

`A270606(eq[7, A066657(n)])`
-/

namespace A270610.P8001295649239536749
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270606 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A270610.P8001295649239536749

/-! ## A270610.P12154734163727287077

`A270606(eq[6, A131818(n+1)])`
-/

namespace A270610.P12154734163727287077
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270606 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A270610.P12154734163727287077

/-!
# A270611: Number of 6X6X6 triangular 0..n arrays with some element plus some adjacent element totalling n+1 or n-1 exactly once.

The programs for A270611, there is no canonical definition to state claims against.
-/

/-! ## A270611.P16339391671929114393

`A270606(A167499(n+4)+1)`
-/

namespace A270611.P16339391671929114393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270606 (A167499 (n + 4) + 1).toNat

end

end A270611.P16339391671929114393

/-! ## A270611.P12684242962836246070

`A270606(A141214(n+2)+9)`
-/

namespace A270611.P12684242962836246070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270606 (A141214 (n + 2) + 9).toNat

end

end A270611.P12684242962836246070

/-! ## A270611.P45470602388419369

`A270606(A034856(n+4)+8)`
-/

namespace A270611.P45470602388419369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270606 (A034856 (n + 4) + 8).toNat

end

end A270611.P45470602388419369

/-! ## A270611.P5946836699542293036

`A270606(eq[7, A131818(n+1)])`
-/

namespace A270611.P5946836699542293036
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270606 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A270611.P5946836699542293036

/-! ## A270611.P9541679362449161851

`A270606(A133263(2*n+5-n)+4)`
-/

namespace A270611.P9541679362449161851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270606 (A133263 (2 * n + 5 - n) + 4).toNat

end

end A270611.P9541679362449161851

/-!
# A270613: Numbers k such that (68*10^k + 7)/3 is prime.

The programs for A270613, there is no canonical definition to state claims against.
-/

/-! ## A270613.P17486240965414989885

`∑[A091255(A124696(n+1))]`
-/

namespace A270613.P17486240965414989885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091255 (A124696 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270613.P17486240965414989885

/-!
# A270616: Number of ordered ways to write n as the sum of a positive square, the square of a triangular number, and a generalized pentagonal number (A001318).

The programs for A270616, there is no canonical definition to state claims against.
-/

/-! ## A270616.P15092101757785708086

`A268834(or(A001045(n), A100641(n)))`
-/

namespace A270616.P15092101757785708086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268834 (Int.lor (A001045 n) (A100641 n)).toNat

end

end A270616.P15092101757785708086

/-! ## A270616.P6532097142061528436

`A001221(A017305(n)*A221035(n+3))`
-/

namespace A270616.P6532097142061528436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A017305 n * A221035 (n + 3)).toNat

end

end A270616.P6532097142061528436

/-! ## A270616.P246905594499006647

`A069010(A020639(n+2)*A023597(n+1))`
-/

namespace A270616.P246905594499006647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069010 (A020639 (n + 2) * A023597 (n + 1)).toNat

end

end A270616.P246905594499006647

/-! ## A270616.P9975424878478277710

`A043537(or(A003352(n+1), A228300(n+1)))`
-/

namespace A270616.P9975424878478277710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043537 (Int.lor (A003352 (n + 1)) (A228300 (n + 1))).toNat

end

end A270616.P9975424878478277710

/-!
# A270617: Primes p such that A256832(p) is divisible by p.

The programs for A270617, there is no canonical definition to state claims against.
-/

/-! ## A270617.P12984873753484955029

`p?[n*A056622(A133263(n+1))]`
-/

namespace A270617.P12984873753484955029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A056622 (A133263 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A270617.P12984873753484955029

/-! ## A270617.P6960550471862178436

`p?[n*A056622(A000096(n)+3)]`
-/

namespace A270617.P6960550471862178436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A056622 (A000096 n + 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A270617.P6960550471862178436

/-! ## A270617.P9321859899022188364

`p?[A038608(n)-A056622(A133263(n))]`
-/

namespace A270617.P9321859899022188364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038608 n - A056622 (A133263 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A270617.P9321859899022188364

/-! ## A270617.P735409939890423564

`eq[A003415(n), A056623(A238531(n+2))]`
-/

namespace A270617.P735409939890423564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056623 (A238531 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A270617.P735409939890423564

/-! ## A270617.P13031219166590751247

`eq[A032741(n), A056622(A000096(n)+3)]`
-/

namespace A270617.P13031219166590751247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056622 (A000096 n + 3).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A270617.P13031219166590751247

/-!
# A270618: Number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 177", based on the 5-celled von Neumann neighborhood.

The programs for A270618, there is no canonical definition to state claims against.
-/

/-! ## A270618.P76252500420712880

`A270621(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A270618.P76252500420712880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A270621 (n - 1) + a (n - 1)

end

end A270618.P76252500420712880

/-! ## A270618.P12502530359814798121

`Δ[A270620(n)]-A270621(n)`
-/

namespace A270618.P12502530359814798121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270620 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A270621 n

end

end A270618.P12502530359814798121

/-! ## A270618.P15772738614829065904

`∑[A270621(A028310(n)-1)]-2`
-/

namespace A270618.P15772738614829065904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270621 (A028310 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2

end

end A270618.P15772738614829065904

/-! ## A270618.P17269160446108223415

`A270620(n+1)-(A270621(n)+A270620(n))`
-/

namespace A270618.P17269160446108223415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270620 (n + 1) - (A270621 n + A270620 n)

end

end A270618.P17269160446108223415

/-!
# A270619: Number of active (ON, black) cells at stage 2^n-1 of the two-dimensional cellular automaton defined by "Rule 177", based on the 5-celled von Neumann neighborhood.

The programs for A270619, there is no canonical definition to state claims against.
-/

/-! ## A270619.P12449319042917002768

`A270618(2^n-1)`
-/

namespace A270619.P12449319042917002768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270618 (2 ^ n - 1)

end

end A270619.P12449319042917002768

/-! ## A270619.P7102464461159721188

`record[A270618(A173787(n))]`
-/

namespace A270619.P7102464461159721188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270618 (A173787 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270619.P7102464461159721188

/-! ## A270619.P9199798367337250614

`record[A270618(A303763(n))]`
-/

namespace A270619.P9199798367337250614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270618 (A303763 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270619.P9199798367337250614

/-! ## A270619.P5787505956633051049

`record[A270618(A243354(n+1))]`
-/

namespace A270619.P5787505956633051049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270618 (A243354 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270619.P5787505956633051049

/-! ## A270619.P12043962152364410341

`record[A270618(A252756(n+1))]`
-/

namespace A270619.P12043962152364410341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270618 (A252756 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270619.P12043962152364410341

/-!
# A270620: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 177", based on the 5-celled von Neumann neighborhood.

The programs for A270620, there is no canonical definition to state claims against.
-/

/-! ## A270620.P17266210382985867001

`∑[∑[A270621(n)]+1-A270621(n)]`
-/

namespace A270620.P17266210382985867001
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270621 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (1 - A270621 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270620.P17266210382985867001

/-! ## A270620.P8471080926555715176

`∑[A270618(n)]`
-/

namespace A270620.P8471080926555715176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270618 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270620.P8471080926555715176

/-! ## A270620.P409206354298022483

`A270618(root(n, 2)²)+a(n-1)` with `a(0)=1`
-/

namespace A270620.P409206354298022483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A270618 (SequenceMachineLib.roundAway (((n : ℝ) ^ (1 / (2 : ℝ))) ^ 2)).toNat + a (n - 1)

end

end A270620.P409206354298022483

/-! ## A270620.P844136827122514279

`a(n-1)+A270618(n)+A000007(n)` with `a(0)=1`
-/

namespace A270620.P844136827122514279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A270618 n + A000007 n)

end

end A270620.P844136827122514279

/-! ## A270620.P9831487229510231285

`a(n-1)+A270618(n)%A009946(n)` with `a(0)=1`
-/

namespace A270620.P9831487229510231285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Int.tmod (A270618 n) (A009946 n)

end

end A270620.P9831487229510231285

/-!
# A270621: First differences of number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 177", based on the 5-celled von Neumann neighborhood.

The programs for A270621, there is no canonical definition to state claims against.
-/

/-! ## A270621.P5923343861193469738

`Δ[A270618(n)]`
-/

namespace A270621.P5923343861193469738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270618 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A270621.P5923343861193469738

/-! ## A270621.P7581224117848824954

`A270618(n+1)-A270618(n)`
-/

namespace A270621.P7581224117848824954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270618 (n + 1) - A270618 n

end

end A270621.P7581224117848824954

/-! ## A270621.P3996832548105088176

`A270618(n+1)+A001489(A270618(n)+1)+1`
-/

namespace A270621.P3996832548105088176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270618 (n + 1) + (A001489 (A270618 n + 1).toNat + 1)

end

end A270621.P3996832548105088176

/-!
# A270622: Number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 179", based on the 5-celled von Neumann neighborhood.

The programs for A270622, there is no canonical definition to state claims against.
-/

/-! ## A270622.P447043879295031601

`A270625(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A270622.P447043879295031601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A270625 (n - 1) + a (n - 1)

end

end A270622.P447043879295031601

/-! ## A270622.P8053798890629745068

`Δ[A270624(n)]-A270625(n)`
-/

namespace A270622.P8053798890629745068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270624 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A270625 n

end

end A270622.P8053798890629745068

/-! ## A270622.P6427806831331508722

`A270624(n+1)-(A270625(n)+A270624(n))`
-/

namespace A270622.P6427806831331508722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270624 (n + 1) - (A270625 n + A270624 n)

end

end A270622.P6427806831331508722

/-! ## A270622.P553191936718294262

`A124625(2*n)+∑[A270625(n)]-A270625(n)`
-/

namespace A270622.P553191936718294262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270625 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124625 (2 * n) + (∑ j ∈ Finset.range (n + 1), f1 j - A270625 n)

end

end A270622.P553191936718294262

/-! ## A270622.P10042452030958499683

`A034947(n+1)²+∑[A270625(n)]-A270625(n)`
-/

namespace A270622.P10042452030958499683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270625 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034947 (n + 1) ^ 2 + (∑ j ∈ Finset.range (n + 1), f1 j - A270625 n)

end

end A270622.P10042452030958499683

/-! ## A270622.P12137790645228631668

`A040001(2*n+1)+∑[A270625(n)]-A270625(n)`
-/

namespace A270622.P12137790645228631668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270625 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (2 * n + 1) + (∑ j ∈ Finset.range (n + 1), f1 j - A270625 n)

end

end A270622.P12137790645228631668

/-! ## A270622.P12449805878591618640

`A000027(∑[A270625(n)]-A270625(n)+1)`
-/

namespace A270622.P12449805878591618640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270625 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (∑ j ∈ Finset.range (n + 1), f1 j - A270625 n + 1).toNat

end

end A270622.P12449805878591618640

/-! ## A270622.P2291499189588109114

`A000265(∑[A270625(n)]-A270625(n)+1)`
-/

namespace A270622.P2291499189588109114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270625 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (∑ j ∈ Finset.range (n + 1), f1 j - A270625 n + 1).toNat

end

end A270622.P2291499189588109114

/-! ## A270622.P6079678555040146417

`A141310(∑[A270625(n)]-A270625(n))`
-/

namespace A270622.P6079678555040146417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270625 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141310 (∑ j ∈ Finset.range (n + 1), f1 j - A270625 n).toNat

end

end A270622.P6079678555040146417

/-!
# A270623: Number of active (ON, black) cells at stage 2^n-1 of the two-dimensional cellular automaton defined by "Rule 179", based on the 5-celled von Neumann neighborhood.

The programs for A270623, there is no canonical definition to state claims against.
-/

/-! ## A270623.P3053967529490543282

`A270622(2^n-1)`
-/

namespace A270623.P3053967529490543282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270622 (2 ^ n - 1)

end

end A270623.P3053967529490543282

/-! ## A270623.P14402105584194628421

`or(1, A270622(A000225(n)))`
-/

namespace A270623.P14402105584194628421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A270622 (A000225 n).toNat)

end

end A270623.P14402105584194628421

/-! ## A270623.P6976510767543389068

`record[A270622(Δ[A228693(n)])]`
-/

namespace A270623.P6976510767543389068
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228693 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270622 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270623.P6976510767543389068

/-! ## A270623.P2717411846041632390

`record[A270622(A269386(n+1))]`
-/

namespace A270623.P2717411846041632390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270622 (A269386 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270623.P2717411846041632390

/-! ## A270623.P13241189085499237696

`record[A270622(A302029(n+1))]`
-/

namespace A270623.P13241189085499237696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270622 (A302029 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270623.P13241189085499237696

/-!
# A270624: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 179", based on the 5-celled von Neumann neighborhood.

The programs for A270624, there is no canonical definition to state claims against.
-/

/-! ## A270624.P5977484168260974894

`∑[A270622(n)]`
-/

namespace A270624.P5977484168260974894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270622 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270624.P5977484168260974894

/-! ## A270624.P358199627985613359

`A270622(2*n-n)+a(n-1)` with `a(0)=1`
-/

namespace A270624.P358199627985613359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A270622 (2 * n - n) + a (n - 1)

end

end A270624.P358199627985613359

/-! ## A270624.P11352105083031574894

`a(n-1)+or(A157928(n), A270622(n))` with `a(0)=1`
-/

namespace A270624.P11352105083031574894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Int.lor (A157928 n) (A270622 n)

end

end A270624.P11352105083031574894

/-! ## A270624.P16735965337371154071

`A270622(n)-a(n-1)/A008683(A240710(n+2))` with `a(0)=1`
-/

namespace A270624.P16735965337371154071
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (A270622 n : ℚ) - a (n - 1) / (A008683 (A240710 (n + 2)).toNat : ℚ)

end

end A270624.P16735965337371154071

/-! ## A270624.P10941261631550512129

`∑[∑[A270625(n)]-A270625(n)+1]`
-/

namespace A270624.P10941261631550512129
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270625 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A270625 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270624.P10941261631550512129

/-!
# A270625: First differences of number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 179", based on the 5-celled von Neumann neighborhood.

The programs for A270625, there is no canonical definition to state claims against.
-/

/-! ## A270625.P4800638700944877768

`Δ[A270622(n)]`
-/

namespace A270625.P4800638700944877768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270622 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A270625.P4800638700944877768

/-! ## A270625.P6315973387792119692

`A270622(n+1)-A270622(n)`
-/

namespace A270625.P6315973387792119692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270622 (n + 1) - A270622 n

end

end A270625.P6315973387792119692

/-!
# A270626: Number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 181", based on the 5-celled von Neumann neighborhood.

The programs for A270626, there is no canonical definition to state claims against.
-/

/-! ## A270626.P16412121578871212325

`A270629(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A270626.P16412121578871212325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A270629 (n - 1) + a (n - 1)

end

end A270626.P16412121578871212325

/-! ## A270626.P4772266039677594402

`A270629(n-1)-(A000038(n)-a(n-1))` with `a(0)=1`
-/

namespace A270626.P4772266039677594402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A270629 (n - 1) - (A000038 n - a (n - 1))

end

end A270626.P4772266039677594402

/-! ## A270626.P6596450846247148682

`A270629(n-1)-(A000007(n)-a(A028310(n)-1))` with `a(0)=1`
-/

namespace A270626.P6596450846247148682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A270629 (n - 1) - (A000007 n - a (A028310 n - 1).toNat)

end

end A270626.P6596450846247148682

/-! ## A270626.P3276229389333189332

`Δ[A270628(n)]-A270629(n)`
-/

namespace A270626.P3276229389333189332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270628 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A270629 n

end

end A270626.P3276229389333189332

/-! ## A270626.P18250422448635823102

`A270628(n+1)-(A270629(n)+A270628(n))`
-/

namespace A270626.P18250422448635823102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270628 (n + 1) - (A270629 n + A270628 n)

end

end A270626.P18250422448635823102

/-!
# A270627: Number of active (ON, black) cells at stage 2^n-1 of the two-dimensional cellular automaton defined by "Rule 181", based on the 5-celled von Neumann neighborhood.

The programs for A270627, there is no canonical definition to state claims against.
-/

/-! ## A270627.P10282948390402580324

`A270626(2^n-1)`
-/

namespace A270627.P10282948390402580324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270626 (2 ^ n - 1)

end

end A270627.P10282948390402580324

/-! ## A270627.P7686630631344494253

`record[A270626(A218616(n))]`
-/

namespace A270627.P7686630631344494253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270626 (A218616 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270627.P7686630631344494253

/-! ## A270627.P8289947568271548529

`record[A270626(A257250(n))]`
-/

namespace A270627.P8289947568271548529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270626 (A257250 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270627.P8289947568271548529

/-! ## A270627.P226729362979432046

`and(-3, A270626(A000225(n)))`
-/

namespace A270627.P226729362979432046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-3) (A270626 (A000225 n).toNat)

end

end A270627.P226729362979432046

/-! ## A270627.P1270411141303980176

`record[A270626(A243071(n+1))]`
-/

namespace A270627.P1270411141303980176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270626 (A243071 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270627.P1270411141303980176

/-!
# A270628: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 181", based on the 5-celled von Neumann neighborhood.

The programs for A270628, there is no canonical definition to state claims against.
-/

/-! ## A270628.P1354118821643751760

`∑[A270626(n)]`
-/

namespace A270628.P1354118821643751760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270626 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270628.P1354118821643751760

/-! ## A270628.P1978941123885136549

`a(n-1)-1+A270626(n)+A000108(and(1, 1-n))` with `a(0)=1`
-/

namespace A270628.P1978941123885136549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) - 1 + (A270626 n + A000108 (Int.land 1 (1 - (n : ℤ))).toNat)

end

end A270628.P1978941123885136549

/-! ## A270628.P2013398553537382630

`∑[A270629(n-1)+a(n-1)]` with `a(0)=1`
-/

namespace A270628.P2013398553537382630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A270629 (n - 1) + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270628.P2013398553537382630

/-! ## A270628.P13346230966414546404

`∑[A270629(n-1)-(A000038(n)-a(n-1))]` with `a(0)=1`
-/

namespace A270628.P13346230966414546404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A270629 (n - 1) - (A000038 n - f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270628.P13346230966414546404

/-! ## A270628.P15391143970814918031

`∑[∑[A270629(n)]+1-A270629(n)]`
-/

namespace A270628.P15391143970814918031
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270629 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (1 - A270629 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270628.P15391143970814918031

/-! ## A270628.P3769638615021709815

`a(n-1)-1+A270626(n)+A241479(A264664(n+1))` with `a(0)=1`
-/

namespace A270628.P3769638615021709815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) - 1 + (A270626 n + A241479 (A264664 (n + 1)).toNat)

end

end A270628.P3769638615021709815

/-! ## A270628.P2707511650199378408

`A270626(n%A157353(n))+a(n-1)` with `a(0)=1`
-/

namespace A270628.P2707511650199378408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A270626 (Int.tmod (n : ℤ) (A157353 n)).toNat + a (n - 1)

end

end A270628.P2707511650199378408

/-!
# A270629: First differences of number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 181", based on the 5-celled von Neumann neighborhood.

The programs for A270629, there is no canonical definition to state claims against.
-/

/-! ## A270629.P1877639018812613835

`Δ[A270626(n)]`
-/

namespace A270629.P1877639018812613835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270626 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A270629.P1877639018812613835

/-! ## A270629.P12727581542694319971

`A270626(n+1)-A270626(n)`
-/

namespace A270629.P12727581542694319971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270626 (n + 1) - A270626 n

end

end A270629.P12727581542694319971

/-!
# A270630: Number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 182", based on the 5-celled von Neumann neighborhood.

The programs for A270630, there is no canonical definition to state claims against.
-/

/-! ## A270630.P851839031541327916

`A270633(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A270630.P851839031541327916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A270633 (n - 1) + a (n - 1)

end

end A270630.P851839031541327916

/-! ## A270630.P14300664819144016173

`Δ[A270632(n)]-A270633(n)`
-/

namespace A270630.P14300664819144016173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270632 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A270633 n

end

end A270630.P14300664819144016173

/-! ## A270630.P11318085196554918748

`∑[A270633(n-1)/a(A000122(n)%2)]` with `a(0)=1`
-/

namespace A270630.P11318085196554918748
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  (A270633 (n - 1) : ℚ) / f1 (Int.tmod (A000122 n) 2).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270630.P11318085196554918748

/-! ## A270630.P12398055412523688325

`∑[A270633(n-1)/a((2*A054977(n))%2)]` with `a(0)=1`
-/

namespace A270630.P12398055412523688325
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  (A270633 (n - 1) : ℚ) / f1 (Int.tmod (2 * A054977 n) 2).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270630.P12398055412523688325

/-! ## A270630.P10198853282767054140

`A270632(n+1)-(A270633(n)+A270632(n))`
-/

namespace A270630.P10198853282767054140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270632 (n + 1) - (A270633 n + A270632 n)

end

end A270630.P10198853282767054140

/-! ## A270630.P7451864555555196150

`A000007(n)+Δ[A270632(A065033(2*n)-1)]`
-/

namespace A270630.P7451864555555196150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270632 (A065033 (2 * n) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (f1 (n + 1) - f1 n)

end

end A270630.P7451864555555196150

/-!
# A270631: Number of active (ON, black) cells at stage 2^n-1 of the two-dimensional cellular automaton defined by "Rule 182", based on the 5-celled von Neumann neighborhood.

The programs for A270631, there is no canonical definition to state claims against.
-/

/-! ## A270631.P4642304981576106672

`A270630(2^n-1)`
-/

namespace A270631.P4642304981576106672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270630 (2 ^ n - 1)

end

end A270631.P4642304981576106672

/-! ## A270631.P4951123885632591443

`record[A270630(A135481(n))]`
-/

namespace A270631.P4951123885632591443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270630 (A135481 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270631.P4951123885632591443

/-! ## A270631.P4506423345295901211

`and(-1, A270630(A000225(n)))`
-/

namespace A270631.P4506423345295901211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A270630 (A000225 n).toNat)

end

end A270631.P4506423345295901211

/-! ## A270631.P9605165884325700588

`record[A270630(A324865(n+1))]`
-/

namespace A270631.P9605165884325700588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270630 (A324865 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270631.P9605165884325700588

/-! ## A270631.P14658300770691867125

`record[gcd(A048881(n), A270630(n))]`
-/

namespace A270631.P14658300770691867125
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A048881 n) (A270630 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270631.P14658300770691867125

/-!
# A270632: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 182", based on the 5-celled von Neumann neighborhood.

The programs for A270632, there is no canonical definition to state claims against.
-/

/-! ## A270632.P10759650727445336323

`∑[A270633(n-1)+a(n-1)]` with `a(0)=1`
-/

namespace A270632.P10759650727445336323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A270633 (n - 1) + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270632.P10759650727445336323

/-! ## A270632.P15609791512655605444

`∑[∑[A270633(n)]+1-A270633(n)]`
-/

namespace A270632.P15609791512655605444
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270633 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (1 - A270633 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270632.P15609791512655605444

/-! ## A270632.P13853550579176411067

`∑[A270630(n)]`
-/

namespace A270632.P13853550579176411067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270630 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270632.P13853550579176411067

/-! ## A270632.P4576084121082216549

`A270630(root(n, 2)²)+a(n-1)` with `a(0)=1`
-/

namespace A270632.P4576084121082216549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A270630 (SequenceMachineLib.roundAway (((n : ℝ) ^ (1 / (2 : ℝ))) ^ 2)).toNat + a (n - 1)

end

end A270632.P4576084121082216549

/-! ## A270632.P8188520910645026501

`A270630(n)+A028310(a(n-1))` with `a(0)=1`
-/

namespace A270632.P8188520910645026501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A270630 n + A028310 (a (n - 1)).toNat

end

end A270632.P8188520910645026501

/-!
# A270633: First differences of number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 182", based on the 5-celled von Neumann neighborhood.

The programs for A270633, there is no canonical definition to state claims against.
-/

/-! ## A270633.P66702706369016873

`Δ[A000007(n)+Δ[A270632(A065033(2*n)-1)]]`
-/

namespace A270633.P66702706369016873
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270632 (A065033 (2 * n) - 1).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A270633.P66702706369016873

/-! ## A270633.P14093841440784183727

`Δ[A270630(n)]`
-/

namespace A270633.P14093841440784183727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270630 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A270633.P14093841440784183727

/-! ## A270633.P11973394479807703020

`A270630(n+1)-A270630(n)`
-/

namespace A270633.P11973394479807703020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270630 (n + 1) - A270630 n

end

end A270633.P11973394479807703020

/-! ## A270633.P12053013054931299246

`A270630(n+1)+A270630(n)/A307445(A000040(n+1))`
-/

namespace A270633.P12053013054931299246
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A270630 (n + 1) : ℚ) + (A270630 n : ℚ) / (A307445 (A000040 (n + 1)).toNat : ℚ)

end

end A270633.P12053013054931299246

/-!
# A270634: Number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 185", based on the 5-celled von Neumann neighborhood.

The programs for A270634, there is no canonical definition to state claims against.
-/

/-! ## A270634.P339317008184018865

`A270637(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A270634.P339317008184018865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A270637 (n - 1) + a (n - 1)

end

end A270634.P339317008184018865

/-! ## A270634.P1751155455454373988

`∑[A270637(round(sqrt(n²+1))-1)]-2`
-/

namespace A270634.P1751155455454373988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270637 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ)) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2

end

end A270634.P1751155455454373988

/-! ## A270634.P1145774087353838428

`a(n-1)-(A000007(n)-A270637(n-1))` with `a(0)=1`
-/

namespace A270634.P1145774087353838428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) - (A000007 n - A270637 (n - 1))

end

end A270634.P1145774087353838428

/-! ## A270634.P14542927598369345865

`Δ[A270636(n)]-A270637(n)`
-/

namespace A270634.P14542927598369345865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270636 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A270637 n

end

end A270634.P14542927598369345865

/-! ## A270634.P10213023869631689104

`A270636(n+1)-(A270637(n)+A270636(n))`
-/

namespace A270634.P10213023869631689104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270636 (n + 1) - (A270637 n + A270636 n)

end

end A270634.P10213023869631689104

/-! ## A270634.P9936293845521232894

`∑[A270637(A025581(A167614(n+1)))]`
-/

namespace A270634.P9936293845521232894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270637 (A025581 (A167614 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270634.P9936293845521232894

/-!
# A270635: Number of active (ON, black) cells at stage 2^n-1 of the two-dimensional cellular automaton defined by "Rule 185", based on the 5-celled von Neumann neighborhood.

The programs for A270635, there is no canonical definition to state claims against.
-/

/-! ## A270635.P2165686291830960084

`A270634(2^n-1)`
-/

namespace A270635.P2165686291830960084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270634 (2 ^ n - 1)

end

end A270635.P2165686291830960084

/-! ## A270635.P16743350909015045325

`record[A270634(A173787(n))]`
-/

namespace A270635.P16743350909015045325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270634 (A173787 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270635.P16743350909015045325

/-! ## A270635.P1418443457393780036

`record[A270634(A218616(n))]`
-/

namespace A270635.P1418443457393780036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270634 (A218616 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270635.P1418443457393780036

/-! ## A270635.P2642885854863445815

`record[A270634(A227351(n))]`
-/

namespace A270635.P2642885854863445815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270634 (A227351 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270635.P2642885854863445815

/-! ## A270635.P11285301059563672987

`record[A270634(A255067(n))]`
-/

namespace A270635.P11285301059563672987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270634 (A255067 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270635.P11285301059563672987

/-!
# A270636: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 185", based on the 5-celled von Neumann neighborhood.

The programs for A270636, there is no canonical definition to state claims against.
-/

/-! ## A270636.P6733967234485547894

`∑[A270634(n)]`
-/

namespace A270636.P6733967234485547894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270634 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270636.P6733967234485547894

/-! ## A270636.P5293120438414838432

`∑[A270637(n-1)+a(n-1)]` with `a(0)=1`
-/

namespace A270636.P5293120438414838432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A270637 (n - 1) + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270636.P5293120438414838432

/-! ## A270636.P16917838666059185219

`A270634(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A270636.P16917838666059185219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A270634 n + a (A023443 n).toNat

end

end A270636.P16917838666059185219

/-! ## A270636.P4682484538000322652

`a(n-1)+A270634(n)+A000007(n)` with `a(0)=1`
-/

namespace A270636.P4682484538000322652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A270634 n + A000007 n)

end

end A270636.P4682484538000322652

/-! ## A270636.P1250956161171608959

`a(n-1)+A270634(n)%A114241(n)` with `a(0)=1`
-/

namespace A270636.P1250956161171608959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Int.tmod (A270634 n) (A114241 n)

end

end A270636.P1250956161171608959

/-! ## A270636.P3029977012484026475

`a(n-1)+(n-A014681(n))²*A270634(n)` with `a(0)=1`
-/

namespace A270636.P3029977012484026475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + ((n : ℤ) - A014681 n) ^ 2 * A270634 n

end

end A270636.P3029977012484026475

/-! ## A270636.P9724553551423774194

`a(n-1)+A165586(n²)*A270634(n)` with `a(0)=1`
-/

namespace A270636.P9724553551423774194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A165586 (n ^ 2) * A270634 n

end

end A270636.P9724553551423774194

/-!
# A270637: First differences of number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 185", based on the 5-celled von Neumann neighborhood.

The programs for A270637, there is no canonical definition to state claims against.
-/

/-! ## A270637.P12895846017245198654

`Δ[A270634(n)]`
-/

namespace A270637.P12895846017245198654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270634 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A270637.P12895846017245198654

/-! ## A270637.P12244936642039632323

`A270634(n+1)-A270634(n)`
-/

namespace A270637.P12244936642039632323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270634 (n + 1) - A270634 n

end

end A270637.P12244936642039632323

/-!
# A270640: Expansion of psi(x) * psi(x^6) / psi(-x^3) in powers of x where psi() is a Ramanujan theta function.

The programs for A270640, there is no canonical definition to state claims against.
-/

/-! ## A270640.P1240909214724197295

`A122792(n)+A015395(A018001(A193554(n)))`
-/

namespace A270640.P1240909214724197295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122792 n + A015395 (A018001 (A193554 n).toNat).toNat

end

end A270640.P1240909214724197295

/-! ## A270640.P15276288290210134317

`A122792(n)-A102683(2^n)`
-/

namespace A270640.P15276288290210134317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122792 n - A102683 (2 ^ n)

end

end A270640.P15276288290210134317

/-! ## A270640.P13796761248728444572

`A122792(n)-A178798(A001402(n))`
-/

namespace A270640.P13796761248728444572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122792 n - A178798 (A001402 n).toNat

end

end A270640.P13796761248728444572

/-! ## A270640.P2518757505868586866

`A178798(A001498(n))+A122792(n)`
-/

namespace A270640.P2518757505868586866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178798 (A001498 n).toNat + A122792 n

end

end A270640.P2518757505868586866

/-! ## A270640.P6477605641732455700

`A122792(n)-A055641(A125691(n))`
-/

namespace A270640.P6477605641732455700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122792 n - A055641 (A125691 n).toNat

end

end A270640.P6477605641732455700

/-!
# A270641: The sequence a of 1's and 2's starting with (1,1,1,1) such that a(n) is the length of the (n+1)st run of a.

The programs for A270641, there is no canonical definition to state claims against.
-/

/-! ## A270641.P5743046403693941266

`A005087(A062239(n+1)+A031369(n+1))`
-/

namespace A270641.P5743046403693941266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005087 (A062239 (n + 1) + A031369 (n + 1)).toNat

end

end A270641.P5743046403693941266

/-! ## A270641.P7756490351092895615

`A287170(or(A322475(2*(n+2)), A356232(2*(n+1))))`
-/

namespace A270641.P7756490351092895615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287170 (Int.lor (A322475 (2 * (n + 2))) (A356232 (2 * (n + 1)))).toNat

end

end A270641.P7756490351092895615

/-! ## A270641.P17521751004748106673

`A384421(or(A322475(2*(n+2)), A356232(2*(n+1))))`
-/

namespace A270641.P17521751004748106673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384421 (Int.lor (A322475 (2 * (n + 2))) (A356232 (2 * (n + 1)))).toNat

end

end A270641.P17521751004748106673

/-!
# A270642: The sequence a of 1's and 2's starting with (1,1,2,2) such that a(n) is the length of the (n+2)nd run of a.

The programs for A270642, there is no canonical definition to state claims against.
-/

/-! ## A270642.P17268944551665856127

`a(A270643(n))` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A270642.P17268944551665856127
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  a (A270643 n).toNat

end

end A270642.P17268944551665856127

/-! ## A270642.P18335182018744780377

`A270643(floor(acot(n)+n))`
-/

namespace A270642.P18335182018744780377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270643 ⌊SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌋.toNat

end

end A270642.P18335182018744780377

/-! ## A270642.P14165893915084413671

`A270643(xor(n, floor(acot(n))))`
-/

namespace A270642.P14165893915084413671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270643 (Int.xor (n : ℤ) ⌊SequenceMachineLib.acot (n : ℝ)⌋).toNat

end

end A270642.P14165893915084413671

/-! ## A270642.P14768079395667390515

`a(A270647(n-1))` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A270642.P14768079395667390515
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  a (A270647 (n - 1)).toNat

end

end A270642.P14768079395667390515

/-! ## A270642.P14968580622032828480

`A270643(char[n*char[2]]+n)`
-/

namespace A270642.P14968580622032828480
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (if ∃ j, f2 j = n then 1 else 0)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270643 ((if ∃ j, f1 j = n then 1 else 0) + n)

end

end A270642.P14968580622032828480

/-! ## A270642.P16712606347652719318

`gcd(2, A270643(A028310(n)))`
-/

namespace A270642.P16712606347652719318
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A270643 (A028310 n).toNat)

end

end A270642.P16712606347652719318

/-! ## A270642.P13098233047385872776

`or(A000007(n), A270643(A028310(n)))`
-/

namespace A270642.P13098233047385872776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A270643 (A028310 n).toNat)

end

end A270642.P13098233047385872776

/-! ## A270642.P3623541188103433308

`A270643(A028310(n))+A000038(n+1)`
-/

namespace A270642.P3623541188103433308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270643 (A028310 n).toNat + A000038 (n + 1)

end

end A270642.P3623541188103433308

/-!
# A270643: The sequence a of 1's and 2's starting with (1,2,2,1) such that a(n) is the length of the (n+3)rd run of a.

The programs for A270643, there is no canonical definition to state claims against.
-/

/-! ## A270643.P894616208029817094

`a(A270647(n)-1)` with `a(0)=1, a(1)=2`
-/

namespace A270643.P894616208029817094
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (A270647 n - 1).toNat

end

end A270643.P894616208029817094

/-! ## A270643.P539317203087063430

`A270647(A028310(n))-A000007(n)`
-/

namespace A270643.P539317203087063430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270647 (A028310 n).toNat - A000007 n

end

end A270643.P539317203087063430

/-! ## A270643.P16565812559852512470

`gcd(A040224(n), A270647(A028310(n)))`
-/

namespace A270643.P16565812559852512470
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A040224 n) (A270647 (A028310 n).toNat)

end

end A270643.P16565812559852512470

/-! ## A270643.P8614523890807160569

`A270647(n)+A247268(a(A074704(n)))` with `a(0)=1`
-/

namespace A270643.P8614523890807160569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A270647 n + A247268 (a (A074704 n).toNat).toNat

end

end A270643.P8614523890807160569

/-! ## A270643.P5783832962808411415

`A270647(n)*A324837(a(A074704(n)))` with `a(0)=1`
-/

namespace A270643.P5783832962808411415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A270647 n * A324837 (a (A074704 n).toNat).toNat

end

end A270643.P5783832962808411415

/-! ## A270643.P4911756441158310572

`A270647(n)/A038374(a(A074704(n)))` with `a(0)=1`
-/

namespace A270643.P4911756441158310572
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (A270647 n : ℚ) / (A038374 (SequenceMachineLib.roundAway (a (A074704 n).toNat)).toNat : ℚ)

end

end A270643.P4911756441158310572

/-! ## A270643.P9573198671825023771

`A270647(n)/A064989(a(A074704(n)))` with `a(0)=1`
-/

namespace A270643.P9573198671825023771
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (A270647 n : ℚ) / (A064989 (SequenceMachineLib.roundAway (a (A074704 n).toNat)).toNat : ℚ)

end

end A270643.P9573198671825023771

/-! ## A270643.P15093248428514650261

`A270642(n+2)`
-/

namespace A270643.P15093248428514650261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270642 (n + 2)

end

end A270643.P15093248428514650261

/-! ## A270643.P611878825218849426

`A270647(n)/a(A295659(A008578(n)))` with `a(0)=1`
-/

namespace A270643.P611878825218849426
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (A270647 n : ℚ) / a (A295659 (A008578 n).toNat).toNat

end

end A270643.P611878825218849426

/-!
# A270644: The sequence a of 1's and 2's starting with (1,2,2,2) such that a(n) is the length of the (n+2)nd run of a.

The programs for A270644, there is no canonical definition to state claims against.
-/

/-! ## A270644.P6913255259591448825

`A000034(A205008(n+1)+∑[A204154(n+1)])`
-/

namespace A270644.P6913255259591448825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204154 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A205008 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A270644.P6913255259591448825

/-! ## A270644.P877326322721190911

`A056832(A101042(n+1)+A001842(A072499(n+1)))`
-/

namespace A270644.P877326322721190911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056832 (A101042 (n + 1) + A001842 (A072499 (n + 1)).toNat).toNat

end

end A270644.P877326322721190911

/-! ## A270644.P10124006530481896438

`A006337(A263097(3*n+5)+A145254(n+2))`
-/

namespace A270644.P10124006530481896438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006337 (A263097 (3 * n + 5) + A145254 (n + 2)).toNat

end

end A270644.P10124006530481896438

/-!
# A270645: The sequence a of 1's and 2's starting with (2,1,1,1) such that a(n) is the length of the (n+2)nd run of a.

The programs for A270645, there is no canonical definition to state claims against.
-/

/-! ## A270645.P3886250580801805868

`A051700(A114537(n+1)-A131713(n))`
-/

namespace A270645.P3886250580801805868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051700 (A114537 (n + 1) - A131713 n).toNat

end

end A270645.P3886250580801805868

/-! ## A270645.P10572457197371594343

`gcd(2, A254671(A254051(2*(n+1))))`
-/

namespace A270645.P10572457197371594343
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A254671 (A254051 (2 * (n + 1))).toNat)

end

end A270645.P10572457197371594343

/-!
# A270646: The sequence a of 1's and 2's starting with (2,2,1,1) such that a(n) is the length of the (n+2)nd run of a.

The programs for A270646, there is no canonical definition to state claims against.
-/

/-! ## A270646.P14507721738612176818

`A054348(A185284(n)+A141213(n))`
-/

namespace A270646.P14507721738612176818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054348 (A185284 n + A141213 n).toNat

end

end A270646.P14507721738612176818

/-! ## A270646.P1621810780987342642

`A054348(gcd(A141213(n), A185284(n)))`
-/

namespace A270646.P1621810780987342642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054348 (Int.gcd (A141213 n) (A185284 n))

end

end A270646.P1621810780987342642

/-! ## A270646.P1963714792658313228

`A054348(or(A141213(n), A185284(n)))`
-/

namespace A270646.P1963714792658313228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054348 (Int.lor (A141213 n) (A185284 n)).toNat

end

end A270646.P1963714792658313228

/-! ## A270646.P7401281297893447713

`A054348(xor(A141213(n), A185284(n)))`
-/

namespace A270646.P7401281297893447713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054348 (Int.xor (A141213 n) (A185284 n)).toNat

end

end A270646.P7401281297893447713

/-!
# A270647: The sequence a of 1's and 2's starting with (2,2,1,2) such that a(n) is the length of the (n+3)rd run of a.

The programs for A270647, there is no canonical definition to state claims against.
-/

/-! ## A270647.P10167623886412310359

`A270643(n+2)`
-/

namespace A270647.P10167623886412310359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270643 (n + 2)

end

end A270647.P10167623886412310359

/-! ## A270647.P16393246257998738192

`A270642(n+3)`
-/

namespace A270647.P16393246257998738192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270642 (n + 3)

end

end A270647.P16393246257998738192

/-! ## A270647.P9486434599954378960

`A270642(comp[A004275(n)]-n)!`
-/

namespace A270647.P9486434599954378960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A270642 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n - n)).toNat

end

end A270647.P9486434599954378960

/-! ## A270647.P7117570926584432415

`A270643(A052938(A103517(n)))!`
-/

namespace A270647.P7117570926584432415
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A270643 (A052938 (A103517 n).toNat).toNat).toNat

end

end A270647.P7117570926584432415

/-! ## A270647.P3126539452902513803

`dr(A270643(A266977(A005408(n))))`
-/

namespace A270647.P3126539452902513803
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A270643 (A266977 (A005408 n).toNat).toNat)

end

end A270647.P3126539452902513803

/-!
# A270648: The sequence a of 1's and 2's starting with (2,2,2,2) such that a(n) is the length of the (n+1)st run of a.

The programs for A270648, there is no canonical definition to state claims against.
-/

/-! ## A270648.P8254342564860716803

`gcd(2, A114622(A188891(n+3)+1))`
-/

namespace A270648.P8254342564860716803
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A114622 (A188891 (n + 3) + 1).toNat)

end

end A270648.P8254342564860716803

/-! ## A270648.P12115271621902337775

`A317960(∑[A010170(A080676(n+1))])`
-/

namespace A270648.P12115271621902337775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010170 (A080676 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317960 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A270648.P12115271621902337775

/-! ## A270648.P12329976064468440067

`A245920(A196176(n+1)+A025487(n+1))`
-/

namespace A270648.P12329976064468440067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245920 (A196176 (n + 1) + A025487 (n + 1)).toNat

end

end A270648.P12329976064468440067

/-! ## A270648.P839149798135634276

`A130196(A218612(n+1)-A226137(n+1))`
-/

namespace A270648.P839149798135634276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130196 (A218612 (n + 1) - A226137 (n + 1)).toNat

end

end A270648.P839149798135634276

/-!
# A270649: Greatest m such that 2^m divides p^2 - q^2, where p = prime(n) and q is a prime < p.

The programs for A270649, there is no canonical definition to state claims against.
-/

/-! ## A270649.P17904968418631845379

`A131597(A296252(n+1)-A264142(n+1))`
-/

namespace A270649.P17904968418631845379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131597 (A296252 (n + 1) - A264142 (n + 1)).toNat

end

end A270649.P17904968418631845379

/-!
# A270650: Min(i, j), where p(i)*p(j) is the n-th term of A006881.

The programs for A270650, there is no canonical definition to state claims against.
-/

/-! ## A270650.P986161829444142329

`A055396(A006881(n+1)%A190819(n+1))`
-/

namespace A270650.P986161829444142329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (Int.tmod (A006881 (n + 1)) (A190819 (n + 1))).toNat

end

end A270650.P986161829444142329

/-! ## A270650.P829562938845226853

`A338899(Δ[n²])`
-/

namespace A270650.P829562938845226853
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338899 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A270650.P829562938845226853

/-! ## A270650.P3941073406544227499

`A055396(∏{p}[A085986(n+1), #])`
-/

namespace A270650.P3941073406544227499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085986 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A270650.P3941073406544227499

/-! ## A270650.P16060443431104475027

`filter[A338899(2*n+1), A086299(#)]`
-/

namespace A270650.P16060443431104475027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338899 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A086299 (f1 j).toNat = 1) n)

end

end A270650.P16060443431104475027

/-! ## A270650.P8668050188978906315

`filter[A338899(2*n+1), A102609(#)]`
-/

namespace A270650.P8668050188978906315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338899 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A102609 (f1 j).toNat = 1) n)

end

end A270650.P8668050188978906315

/-! ## A270650.P16346709045796193864

`A318360(eq[1, A281116(n+1)]+1)-1`
-/

namespace A270650.P16346709045796193864
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281116 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318360 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1) - 1

end

end A270650.P16346709045796193864

/-! ## A270650.P5037983109126022196

`A318360(eq[2, A008480(n+1)]+1)-1`
-/

namespace A270650.P5037983109126022196
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008480 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318360 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1) - 1

end

end A270650.P5037983109126022196

/-! ## A270650.P3481432931146793069

`A338899(2*(n+1))-A338900(n+1)`
-/

namespace A270650.P3481432931146793069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338899 (2 * (n + 1)) - A338900 (n + 1)

end

end A270650.P3481432931146793069

/-! ## A270650.P5776506546166629518

`A318360(eq[A001222(n+1)+2, A000005(n+1)]+1)-1`
-/

namespace A270650.P5776506546166629518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318360 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1) - 1

end

end A270650.P5776506546166629518

/-! ## A270650.P15543930988680100174

`A000720(A096916(n+1)%A234322(2*(n+1)))`
-/

namespace A270650.P15543930988680100174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (Int.tmod (A096916 (n + 1)) (A234322 (2 * (n + 1)))).toNat

end

end A270650.P15543930988680100174

/-! ## A270650.P11944884495061440565

`A007318(∑[n])+val(A048639(n+1), 2)`
-/

namespace A270650.P11944884495061440565
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) + (SequenceMachineLib.valuation (A048639 (n + 1)).toNat 2 : ℤ)

end

end A270650.P11944884495061440565

/-!
# A270651: Triangular array: T(n,k) = greatest m such that 2^m divides prime(n)^2 - prime(k)^2, where 3 <= k <= n.

The programs for A270651, there is no canonical definition to state claims against.
-/

/-! ## A270651.P7243885897528584075

`A051064(A260255(n+3)+A228902(n))+2`
-/

namespace A270651.P7243885897528584075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051064 (A260255 (n + 3) + A228902 n).toNat + 2

end

end A270651.P7243885897528584075

/-! ## A270651.P1887945663456364069

`A090369((A000011(n+3)+2)*(n+1))`
-/

namespace A270651.P1887945663456364069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090369 ((A000011 (n + 3) + 2) * (n + 1 : ℤ)).toNat

end

end A270651.P1887945663456364069

/-!
# A270652: Max(i,j), where p(i)*p(j) is the n-th term of A006881.

The programs for A270652, the canonical program `A270652.P2129090608778527896` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A270652 has offset 1).

The definition of A270652 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 314 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A270652.P17449515795251519007

`A139169(A006881(n+1)*A179766(2*n+1))`
-/

namespace A270652.P17449515795251519007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139169 (A006881 (n + 1) * A179766 (2 * n + 1)).toNat

end

end A270652.P17449515795251519007

namespace A270652

/-- `A139169(A006881(n+1)*A179766(2*n+1))` -/
def P17449515795251519007.Spec : Prop :=
  ∀ n, P17449515795251519007.a n = A270652 (n + 1)

end A270652

/-! ## A270652.P2129090608778527896

`A061395(A006881(n+1)*A126865(n+1))`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A270652

/-- `A061395(A006881(n+1)*A126865(n+1))` -/
def P2129090608778527896.Spec : Prop :=
  ∀ n, P2129090608778527896.a n = A270652 (n + 1)

theorem P2129090608778527896.correct : P2129090608778527896.Spec := by
  intro n
  simp only [A270652, Nat.add_sub_cancel]

end A270652

/-! ## A270652.P2503720349037440822

`A297167(lcm(9, eq[4, A077462(n)]))`
-/

namespace A270652.P2503720349037440822
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077462 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297167 (Nat.lcm 9 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n))

end

end A270652.P2503720349037440822

namespace A270652

/-- `A297167(lcm(9, eq[4, A077462(n)]))` -/
def P2503720349037440822.Spec : Prop :=
  ∀ n, P2503720349037440822.a n = A270652 (n + 1)

end A270652

/-! ## A270652.P8072509304616545275

`A061395(A006881(n+1)*A009195(2*n+5))`
-/

namespace A270652.P8072509304616545275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A006881 (n + 1) * A009195 (2 * n + 5)).toNat

end

end A270652.P8072509304616545275

namespace A270652

/-- `A061395(A006881(n+1)*A009195(2*n+5))` -/
def P8072509304616545275.Spec : Prop :=
  ∀ n, P8072509304616545275.a n = A270652 (n + 1)

end A270652

/-! ## A270652.P17547565374213518901

`A061395(A006881(n+1)*A251683(2*n+3))`
-/

namespace A270652.P17547565374213518901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A006881 (n + 1) * A251683 (2 * n + 3)).toNat

end

end A270652.P17547565374213518901

namespace A270652

/-- `A061395(A006881(n+1)*A251683(2*n+3))` -/
def P17547565374213518901.Spec : Prop :=
  ∀ n, P17547565374213518901.a n = A270652 (n + 1)

end A270652

/-! ## A270652.P5062510721276049269

`A061395(lcm(A006881(n+1), A324497(n+1)))`
-/

namespace A270652.P5062510721276049269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (Int.lcm (A006881 (n + 1)) (A324497 (n + 1)))

end

end A270652.P5062510721276049269

namespace A270652

/-- `A061395(lcm(A006881(n+1), A324497(n+1)))` -/
def P5062510721276049269.Spec : Prop :=
  ∀ n, P5062510721276049269.a n = A270652 (n + 1)

end A270652

/-! ## A270652.P7645686066155270736

`A338899(2*(n+1))`
-/

namespace A270652.P7645686066155270736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338899 (2 * (n + 1))

end

end A270652.P7645686066155270736

namespace A270652

/-- `A338899(2*(n+1))` -/
def P7645686066155270736.Spec : Prop :=
  ∀ n, P7645686066155270736.a n = A270652 (n + 1)

end A270652

/-! ## A270652.P2925033396494831021

`A061395(∏{p}[A085986(n+1), #])`
-/

namespace A270652.P2925033396494831021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085986 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A270652.P2925033396494831021

namespace A270652

/-- `A061395(∏{p}[A085986(n+1), #])` -/
def P2925033396494831021.Spec : Prop :=
  ∀ n, P2925033396494831021.a n = A270652 (n + 1)

end A270652

/-! ## A270652.P15515522181784495397

`A139169(∏{p}[A085986(n+1), #])`
-/

namespace A270652.P15515522181784495397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085986 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139169 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A270652.P15515522181784495397

namespace A270652

/-- `A139169(∏{p}[A085986(n+1), #])` -/
def P15515522181784495397.Spec : Prop :=
  ∀ n, P15515522181784495397.a n = A270652 (n + 1)

end A270652

/-! ## A270652.P734497565978718786

`A061395(∏{p}[eq[4, A077462(n)]², #])`
-/

namespace A270652.P734497565978718786
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077462 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A270652.P734497565978718786

namespace A270652

/-- `A061395(∏{p}[eq[4, A077462(n)]², #])` -/
def P734497565978718786.Spec : Prop :=
  ∀ n, P734497565978718786.a n = A270652 (n + 1)

end A270652

/-! ## A270652.P12978793702852974571

`A139169(A000188(n+1)*A006881(n+1))`
-/

namespace A270652.P12978793702852974571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139169 (A000188 (n + 1) * A006881 (n + 1)).toNat

end

end A270652.P12978793702852974571

namespace A270652

/-- `A139169(A000188(n+1)*A006881(n+1))` -/
def P12978793702852974571.Spec : Prop :=
  ∀ n, P12978793702852974571.a n = A270652 (n + 1)

end A270652

/-!
# A270653: Integers k such that A003266(k) is divisible by k.

The programs for A270653, there is no canonical definition to state claims against.
-/

/-! ## A270653.P5947169480156930046

`comp[A270777(n+1)-1]+1`
-/

namespace A270653.P5947169480156930046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270777 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A270653.P5947169480156930046

/-! ## A270653.P13616984648183714394

`∪[A056653(n+1), A230359(n+1)]`
-/

namespace A270653.P13616984648183714394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056653 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230359 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A270653.P13616984648183714394

/-! ## A270653.P17369312047066080671

`∪[A056653(n+1), A230457(n+1)]`
-/

namespace A270653.P17369312047066080671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056653 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230457 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A270653.P17369312047066080671

/-! ## A270653.P10402154520396312457

`comp[C(A270777(n+1), A270752(n+1))]`
-/

namespace A270653.P10402154520396312457
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A270777 (n + 1)).toNat (A270752 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A270653.P10402154520396312457

/-! ## A270653.P17151507016973610848

`eq[char[A270777(n+1)], A151933(n)]`
-/

namespace A270653.P17151507016973610848
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270777 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A270653.P17151507016973610848

/-!
# A270655: a(3n)=a(n), a(3n+1)=a(3n)+a(3(n+1)), a(3n+2)=a(3(n+1))-a(3n); a(0)=0, a(1)=1.

The programs for A270655, there is no canonical definition to state claims against.
-/

/-! ## A270655.P282024359753507783

`A006694(A256645(n))%4`
-/

namespace A270655.P282024359753507783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006694 (A256645 n).toNat) 4

end

end A270655.P282024359753507783

/-! ## A270655.P12997649972135598583

`A308427(or(A118891(n), A335059(n+3)))`
-/

namespace A270655.P12997649972135598583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308427 (Int.lor (A118891 n) (A335059 (n + 3))).toNat

end

end A270655.P12997649972135598583

/-! ## A270655.P2580927915698825259

`A173920(record[A099594(n)-A330613(n+1)])`
-/

namespace A270655.P2580927915698825259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099594 n - A330613 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173920 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A270655.P2580927915698825259

/-! ## A270655.P11128057154917967828

`and(A023443(A056924(2*(n+2))), A181769(n))`
-/

namespace A270655.P11128057154917967828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A023443 (A056924 (2 * (n + 2))).toNat) (A181769 n)

end

end A270655.P11128057154917967828

/-! ## A270655.P17461542700028282881

`A079978(n+2)+A037824(A212214(2*(n+2)))`
-/

namespace A270655.P17461542700028282881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079978 (n + 2) + A037824 (A212214 (2 * (n + 2))).toNat

end

end A270655.P17461542700028282881

/-!
# A270657: a(3n)=a(n), a(3n+1)=a(3(n+1))-a(3n), a(3n+2)=a(3n)+a(3(n+1)); a(0)=0, a(1)=1.

The programs for A270657, there is no canonical definition to state claims against.
-/

/-! ## A270657.P10867282359877742638

`A062157(n)*A270658(n)`
-/

namespace A270657.P10867282359877742638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 n * A270658 n

end

end A270657.P10867282359877742638

/-! ## A270657.P8224960424018817859

`A165326(n)*A270658(n)`
-/

namespace A270657.P8224960424018817859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165326 n * A270658 n

end

end A270657.P8224960424018817859

/-! ## A270657.P1899752554874429408

`(A014681(n)-n)*A270658(n)`
-/

namespace A270657.P1899752554874429408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A014681 n - (n : ℤ)) * A270658 n

end

end A270657.P1899752554874429408

/-! ## A270657.P607950511774383137

`A270658(Δ[A007494(n)])*A270658(n)`
-/

namespace A270657.P607950511774383137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007494 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270658 (f1 (n + 1) - f1 n).toNat * A270658 n

end

end A270657.P607950511774383137

/-! ## A270657.P12538532469022989644

`A164117(A020639(n+1))*A270658(n)`
-/

namespace A270657.P12538532469022989644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164117 (A020639 (n + 1)).toNat * A270658 n

end

end A270657.P12538532469022989644

/-! ## A270657.P11579655637933494553

`A270658(n)/A062157(A053831(n)+2)`
-/

namespace A270657.P11579655637933494553
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A270658 n : ℚ) / (A062157 (A053831 n + 2).toNat : ℚ)

end

end A270657.P11579655637933494553

/-! ## A270657.P107206309245671622

`A270658(n)/A062157(A286717(n)+2)`
-/

namespace A270657.P107206309245671622
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A270658 n : ℚ) / (A062157 (A286717 n + 2).toNat : ℚ)

end

end A270657.P107206309245671622

/-! ## A270657.P18058927464948731540

`A270658(n)/A062157(n+2)`
-/

namespace A270657.P18058927464948731540
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A270658 n : ℚ) / (A062157 (n + 2) : ℚ)

end

end A270657.P18058927464948731540

/-! ## A270657.P4868953613439980869

`A164117(n²+1)*A270658(n)`
-/

namespace A270657.P4868953613439980869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164117 (n ^ 2 + 1) * A270658 n

end

end A270657.P4868953613439980869

/-!
# A270658: a(3n)=a(n), a(3n+1)=a(3n)+a(3(n+1)), a(3n+2)=a(3n)-a(3(n+1)); a(0)=0, a(1)=1.

The programs for A270658, there is no canonical definition to state claims against.
-/

/-! ## A270658.P13359394951842251206

`A062157(n)*A270657(n)`
-/

namespace A270658.P13359394951842251206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 n * A270657 n

end

end A270658.P13359394951842251206

/-! ## A270658.P9569090666620974929

`A165326(n)*A270657(n)`
-/

namespace A270658.P9569090666620974929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165326 n * A270657 n

end

end A270658.P9569090666620974929

/-! ## A270658.P16692231937718818817

`A033999(n+1)*A270657(n)`
-/

namespace A270658.P16692231937718818817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (n + 1) * A270657 n

end

end A270658.P16692231937718818817

/-! ## A270658.P3715567016178229753

`(n-A004442(n))*A270657(n)`
-/

namespace A270658.P3715567016178229753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - A004442 n) * A270657 n

end

end A270658.P3715567016178229753

/-! ## A270658.P9291874470918659120

`A270657(n)/A062157(n+2)`
-/

namespace A270658.P9291874470918659120
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A270657 n : ℚ) / (A062157 (n + 2) : ℚ)

end

end A270658.P9291874470918659120

/-! ## A270658.P2721083936619361233

`A056594(A103517(n))*A270657(n)`
-/

namespace A270658.P2721083936619361233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (A103517 n).toNat * A270657 n

end

end A270658.P2721083936619361233

/-! ## A270658.P6491161490692532978

`A101675(A016777(n))*A270657(n)`
-/

namespace A270658.P6491161490692532978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101675 (A016777 n).toNat * A270657 n

end

end A270658.P6491161490692532978

/-!
# A270659: Maximal value of A270655 between indices 3^n and 3^(n+1).

The programs for A270659, there is no canonical definition to state claims against.
-/

/-! ## A270659.P2881379217537809858

`A274701((n+1)*A195904(n+1))`
-/

namespace A270659.P2881379217537809858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274701 ((n + 1 : ℤ) * A195904 (n + 1)).toNat

end

end A270659.P2881379217537809858

/-! ## A270659.P9677266289292063970

`A327534(A139077(n+2))-floor(sqrt((9/5)^n))`
-/

namespace A270659.P9677266289292063970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327534 (A139077 (n + 2)).toNat - ⌊Real.sqrt (((9 : ℚ) / 5) ^ n : ℝ)⌋

end

end A270659.P9677266289292063970

/-! ## A270659.P11621760056035066492

`A204164(∑[A026600(n+4)]*A011782(n))`
-/

namespace A270659.P11621760056035066492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026600 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204164 ((∑ j ∈ Finset.range (n + 1), f1 j) * A011782 n).toNat

end

end A270659.P11621760056035066492

/-! ## A270659.P4527421453930017371

`A000196(A005418(n+1)*A044912(n+1))`
-/

namespace A270659.P4527421453930017371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A005418 (n + 1) * A044912 (n + 1)).toNat

end

end A270659.P4527421453930017371

/-! ## A270659.P10435256733527136327

`A017982(n+2)-A055642(A073952(n+1))`
-/

namespace A270659.P10435256733527136327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017982 (n + 2) - A055642 (A073952 (n + 1)).toNat

end

end A270659.P10435256733527136327

/-!
# A270660: Numbers in the range of the sum of abundant divisors function.

The programs for A270660, there is no canonical definition to state claims against.
-/

/-! ## A270660.P2786420256387951114

`lt[acot(n), A282568(n)]`
-/

namespace A270660.P2786420256387951114
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (n : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282568 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A270660.P2786420256387951114

/-!
# A270661: a(n) = Sum_{k=0..n}((binomial(2*k,k)*Sum_{i=0..n-k}(binomial(k+1,n-k-i)*binomial(k+i,k)))/(k+1)^2)*(n+1).

The programs for A270661, there is no canonical definition to state claims against.
-/

/-! ## A270661.P13779061817948794573

`A161152(A150463(n)+n)`
-/

namespace A270661.P13779061817948794573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161152 (A150463 n + (n : ℤ)).toNat

end

end A270661.P13779061817948794573

/-! ## A270661.P1201403858976185721

`A194444(A000225(n))+A091855(n+1)`
-/

namespace A270661.P1201403858976185721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194444 (A000225 n).toNat + A091855 (n + 1)

end

end A270661.P1201403858976185721

/-!
# A270662: E.g.f.: Product_{k>=1} (1 + sin(x^k)).

The programs for A270662, there is no canonical definition to state claims against.
-/

/-! ## A270662.P14188471178715697715

`A004396(A002858(n+1)*A275527(n+1))`
-/

namespace A270662.P14188471178715697715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A002858 (n + 1) * A275527 (n + 1)).toNat

end

end A270662.P14188471178715697715

/-! ## A270662.P13365057493299179033

`A157850(or(n, A353774(n)))`
-/

namespace A270662.P13365057493299179033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157850 (Int.lor (n : ℤ) (A353774 n)).toNat

end

end A270662.P13365057493299179033

/-!
# A270664: E.g.f.: Product_{k>=1} (1 + tanh(x^k)).

The programs for A270664, there is no canonical definition to state claims against.
-/

/-! ## A270664.P13805692627448766188

`A028310(A006918(n)*A104150(n))`
-/

namespace A270664.P13805692627448766188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A006918 n * A104150 n).toNat

end

end A270664.P13805692627448766188

/-! ## A270664.P2148851899707142941

`A028310(A006918(n)*A178011(n))`
-/

namespace A270664.P2148851899707142941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A006918 n * A178011 n).toNat

end

end A270664.P2148851899707142941

/-! ## A270664.P8666488990681480695

`A239513(A038041(n+1))+A205571(n)`
-/

namespace A270664.P8666488990681480695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239513 (A038041 (n + 1)).toNat + A205571 n

end

end A270664.P8666488990681480695

/-!
# A270665: E.g.f.: Product_{k>=1} 1/(1 - tan(x^k)).

The programs for A270665, there is no canonical definition to state claims against.
-/

/-! ## A270665.P13620971557995833178

`A284726(or(1, A162435(n)))`
-/

namespace A270665.P13620971557995833178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284726 (Int.lor 1 (A162435 n)).toNat

end

end A270665.P13620971557995833178

/-! ## A270665.P4942196910473259823

`A004523(A335627(n)+A000255(n))`
-/

namespace A270665.P4942196910473259823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004523 (A335627 n + A000255 n).toNat

end

end A270665.P4942196910473259823

/-!
# A270666: E.g.f.: Product_{k>=1} (1 + tan(x^k)).

The programs for A270666, there is no canonical definition to state claims against.
-/

/-! ## A270666.P9310496392059528590

`and(A131793(A330544(n)), A330544(n))`
-/

namespace A270666.P9310496392059528590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A131793 (A330544 n).toNat) (A330544 n)

end

end A270666.P9310496392059528590

/-! ## A270666.P5680158872072826509

`A085930(A304997(n))-1`
-/

namespace A270666.P5680158872072826509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085930 (A304997 n).toNat - 1

end

end A270666.P5680158872072826509

/-!
# A270667: Nonprime and squarefree Löschian numbers (A003136).

The programs for A270667, the canonical program `A270667.P10723528526090859367` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A270667 has offset 1).

The definition of A270667 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5770 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A270667.P10723528526090859367

`filter[A034021(n+2), A354108(#)]`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A270667

/-- `filter[A034021(n+2), A354108(#)]` -/
def P10723528526090859367.Spec : Prop :=
  ∀ n, P10723528526090859367.a n = A270667 (n + 1)

theorem P10723528526090859367.correct : P10723528526090859367.Spec := by
  intro n
  simp only [A270667, Nat.add_sub_cancel]

end A270667

/-! ## A270667.P11416924606015876703

`filter[A034021(n+2), A354819(#)]`
-/

namespace A270667.P11416924606015876703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034021 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354819 (f1 j).toNat = 1) n)

end

end A270667.P11416924606015876703

namespace A270667

/-- `filter[A034021(n+2), A354819(#)]` -/
def P11416924606015876703.Spec : Prop :=
  ∀ n, P11416924606015876703.a n = A270667 (n + 1)

end A270667

/-! ## A270667.P14203985605605200101

`filter[A034017(n+2), A354819(#)]`
-/

namespace A270667.P14203985605605200101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034017 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354819 (f1 j).toNat = 1) n)

end

end A270667.P14203985605605200101

namespace A270667

/-- `filter[A034017(n+2), A354819(#)]` -/
def P14203985605605200101.Spec : Prop :=
  ∀ n, P14203985605605200101.a n = A270667 (n + 1)

end A270667

/-! ## A270667.P10581869483390913753

`filter[A364614(n+1), A354819(#)]`
-/

namespace A270667.P10581869483390913753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364614 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354819 (f1 j).toNat = 1) n)

end

end A270667.P10581869483390913753

namespace A270667

/-- `filter[A364614(n+1), A354819(#)]` -/
def P10581869483390913753.Spec : Prop :=
  ∀ n, P10581869483390913753.a n = A270667 (n + 1)

end A270667

/-! ## A270667.P3110372202097215842

`filter[A266836(n+1), A354819(#)]`
-/

namespace A270667.P3110372202097215842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266836 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354819 (f1 j).toNat = 1) n)

end

end A270667.P3110372202097215842

namespace A270667

/-- `filter[A266836(n+1), A354819(#)]` -/
def P3110372202097215842.Spec : Prop :=
  ∀ n, P3110372202097215842.a n = A270667 (n + 1)

end A270667

/-! ## A270667.P17199353154267300017

`filter[A034021(n+2), A005171(#)]`
-/

namespace A270667.P17199353154267300017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034021 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A270667.P17199353154267300017

namespace A270667

/-- `filter[A034021(n+2), A005171(#)]` -/
def P17199353154267300017.Spec : Prop :=
  ∀ n, P17199353154267300017.a n = A270667 (n + 1)

end A270667

/-! ## A270667.P11751590421971170162

`filter[A034021(n+2), A292438(#)]`
-/

namespace A270667.P11751590421971170162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034021 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A292438 (f1 j).toNat = 1) n)

end

end A270667.P11751590421971170162

namespace A270667

/-- `filter[A034021(n+2), A292438(#)]` -/
def P11751590421971170162.Spec : Prop :=
  ∀ n, P11751590421971170162.a n = A270667 (n + 1)

end A270667

/-! ## A270667.P3369935118856270712

`filter[A329963(n+1), A354819(#)]`
-/

namespace A270667.P3369935118856270712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329963 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354819 (f1 j).toNat = 1) n)

end

end A270667.P3369935118856270712

namespace A270667

/-- `filter[A329963(n+1), A354819(#)]` -/
def P3369935118856270712.Spec : Prop :=
  ∀ n, P3369935118856270712.a n = A270667 (n + 1)

end A270667

/-! ## A270667.P419719306393322482

`filter[A097503(n+1), A354819(#)]`
-/

namespace A270667.P419719306393322482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097503 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354819 (f1 j).toNat = 1) n)

end

end A270667.P419719306393322482

namespace A270667

/-- `filter[A097503(n+1), A354819(#)]` -/
def P419719306393322482.Spec : Prop :=
  ∀ n, P419719306393322482.a n = A270667 (n + 1)

end A270667

/-! ## A270667.P14746271837094708016

`filter[A003136(n+2), A354819(#)]`
-/

namespace A270667.P14746271837094708016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003136 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354819 (f1 j).toNat = 1) n)

end

end A270667.P14746271837094708016

namespace A270667

/-- `filter[A003136(n+2), A354819(#)]` -/
def P14746271837094708016.Spec : Prop :=
  ∀ n, P14746271837094708016.a n = A270667 (n + 1)

end A270667

/-! ## A270667.P16884551817329341079

`∩[A034021(n+1), A100490(n)]`
-/

namespace A270667.P16884551817329341079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034021 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100490 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A270667.P16884551817329341079

namespace A270667

/-- `∩[A034021(n+1), A100490(n)]` -/
def P16884551817329341079.Spec : Prop :=
  ∀ n, (P16884551817329341079.a n : ℤ) = A270667 (n + 1)

end A270667

/-! ## A270667.P11629742936046856520

`∩[A014076(n+1), A034021(n+1)]`
-/

namespace A270667.P11629742936046856520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014076 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034021 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A270667.P11629742936046856520

namespace A270667

/-- `∩[A014076(n+1), A034021(n+1)]` -/
def P11629742936046856520.Spec : Prop :=
  ∀ n, (P11629742936046856520.a n : ℤ) = A270667 (n + 1)

end A270667

/-! ## A270667.P10938173677942304407

`filter[A087247(n+1), A353815(#)]`
-/

namespace A270667.P10938173677942304407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087247 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353815 (f1 j).toNat = 1) n)

end

end A270667.P10938173677942304407

namespace A270667

/-- `filter[A087247(n+1), A353815(#)]` -/
def P10938173677942304407.Spec : Prop :=
  ∀ n, P10938173677942304407.a n = A270667 (n + 1)

end A270667

/-! ## A270667.P16868630675845305469

`filter[A087247(n+1), A353816(#)]`
-/

namespace A270667.P16868630675845305469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087247 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353816 (f1 j).toNat = 1) n)

end

end A270667.P16868630675845305469

namespace A270667

/-- `filter[A087247(n+1), A353816(#)]` -/
def P16868630675845305469.Spec : Prop :=
  ∀ n, P16868630675845305469.a n = A270667 (n + 1)

end A270667

/-! ## A270667.P13811573280358400894

`∩[A003136(n+1), A087247(n+1)]`
-/

namespace A270667.P13811573280358400894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003136 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087247 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A270667.P13811573280358400894

namespace A270667

/-- `∩[A003136(n+1), A087247(n+1)]` -/
def P13811573280358400894.Spec : Prop :=
  ∀ n, (P13811573280358400894.a n : ℤ) = A270667 (n + 1)

end A270667

/-! ## A270667.P12942906029572568563

`∩[A034017(n+1), A087247(n+1)]`
-/

namespace A270667.P12942906029572568563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034017 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087247 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A270667.P12942906029572568563

namespace A270667

/-- `∩[A034017(n+1), A087247(n+1)]` -/
def P12942906029572568563.Spec : Prop :=
  ∀ n, (P12942906029572568563.a n : ℤ) = A270667 (n + 1)

end A270667

/-! ## A270667.P6694698127668364838

`∩[A034021(n+1), A087247(n+1)]`
-/

namespace A270667.P6694698127668364838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034021 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087247 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A270667.P6694698127668364838

namespace A270667

/-- `∩[A034021(n+1), A087247(n+1)]` -/
def P6694698127668364838.Spec : Prop :=
  ∀ n, (P6694698127668364838.a n : ℤ) = A270667 (n + 1)

end A270667

/-! ## A270667.P4975361460635693914

`∩[A034022(n+1), A087247(n+1)]`
-/

namespace A270667.P4975361460635693914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087247 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A270667.P4975361460635693914

namespace A270667

/-- `∩[A034022(n+1), A087247(n+1)]` -/
def P4975361460635693914.Spec : Prop :=
  ∀ n, (P4975361460635693914.a n : ℤ) = A270667 (n + 1)

end A270667

/-! ## A270667.P3063869641138138083

`∩[A087247(n+1), A097503(n+1)]`
-/

namespace A270667.P3063869641138138083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087247 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097503 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A270667.P3063869641138138083

namespace A270667

/-- `∩[A087247(n+1), A097503(n+1)]` -/
def P3063869641138138083.Spec : Prop :=
  ∀ n, (P3063869641138138083.a n : ℤ) = A270667 (n + 1)

end A270667

/-! ## A270667.P6759067848259766435

`∩[A087247(n+1), A266836(n+1)]`
-/

namespace A270667.P6759067848259766435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087247 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266836 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A270667.P6759067848259766435

namespace A270667

/-- `∩[A087247(n+1), A266836(n+1)]` -/
def P6759067848259766435.Spec : Prop :=
  ∀ n, (P6759067848259766435.a n : ℤ) = A270667 (n + 1)

end A270667

/-!
# A270668: Triangle read by rows: The number of domino tilings of the (2n+1) X (2m+1) board with a central free square.

The programs for A270668, there is no canonical definition to state claims against.
-/

/-! ## A270668.P11851328452547518236

`(2*(n+2))^(2-floor(1-a(n-1)-a(n-2)))` with `a(0)=1, a(1)=0, a(2)=2, a(3)=1, a(4)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A270668.P11851328452547518236
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 0, 2, 1, 0] fun n a =>
  (2 * (n + 2) : ℚ) ^ (2 - ⌊1 - a (n - 1) - a (n - 2)⌋ : ℤ)

end

end A270668.P11851328452547518236

/-! ## A270668.P15555259918637908534

`(2*(n+2))^(4/2-(1-a(n-1)-a(n-2)))` with `a(0)=1, a(1)=0, a(2)=2, a(3)=1, a(4)=0`
-/

namespace A270668.P15555259918637908534
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [1, 0, 2, 1, 0] fun n a =>
  (2 * (n + 2) : ℝ) ^ (((4 : ℚ) / 2 : ℝ) - (1 - a (n - 1) - a (n - 2)))

end

end A270668.P15555259918637908534

/-!
# A270669: E.g.f.: Product_{k>=1} (1 + sinh(k*x^k)).

The programs for A270669, there is no canonical definition to state claims against.
-/

/-! ## A270669.P2417217940017833421

`A004151(A270670(n))`
-/

namespace A270669.P2417217940017833421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004151 (A270670 n).toNat

end

end A270669.P2417217940017833421

/-! ## A270669.P7632665054493246751

`A023443(A270670(n)+1)`
-/

namespace A270669.P7632665054493246751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A270670 n + 1).toNat

end

end A270669.P7632665054493246751

/-!
# A270671: Every even-ranked term is bigger than the two terms that surround it AND every even-ranked digit is bigger than the two digits that surround it. This is the lexicographically first such infinite sequence.

The programs for A270671, there is no canonical definition to state claims against.
-/

/-! ## A270671.P1263600108837008896

`A282650(A062399(n+1)+1)`
-/

namespace A270671.P1263600108837008896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282650 (A062399 (n + 1) + 1).toNat

end

end A270671.P1263600108837008896

/-! ## A270671.P7286556823253704127

`A282650(A249517(n+1)+2)`
-/

namespace A270671.P7286556823253704127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282650 (A249517 (n + 1) + 2).toNat

end

end A270671.P7286556823253704127

/-! ## A270671.P3355887235591907008

`A282650(n+2)%A145044(n+1)`
-/

namespace A270671.P3355887235591907008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A282650 (n + 2)) (A145044 (n + 1))

end

end A270671.P3355887235591907008

/-! ## A270671.P10787482647805911833

`C(A282650(n+2), A182857(n-∑{digits}[n, #]))`
-/

namespace A270671.P10787482647805911833
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A282650 (n + 2)).toNat (A182857 (n - ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum)).toNat

end

end A270671.P10787482647805911833

/-! ## A270671.P14818155681744119146

`A282650(n+2)+A000007(A103293(n))`
-/

namespace A270671.P14818155681744119146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282650 (n + 2) + A000007 (A103293 n).toNat

end

end A270671.P14818155681744119146

/-!
# A270672: Löschian numbers (A003136) that are multiples of 3.

The programs for A270672, the canonical program `A270672.P7077653201386938758` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A270672 has offset 1).

The definition of A270672 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A270672.P7077653201386938758

`3*A003136(n+1)`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A270672

/-- `3*A003136(n+1)` -/
def P7077653201386938758.Spec : Prop :=
  ∀ n, P7077653201386938758.a n = A270672 (n + 1)

theorem P7077653201386938758.correct : P7077653201386938758.Spec := by
  intro n
  simp only [A270672, Nat.add_sub_cancel]

end A270672

/-! ## A270672.P7925544563519393851

`3*lt[0, A033716(n)]`
-/

namespace A270672.P7925544563519393851
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033716 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A270672.P7925544563519393851

namespace A270672

/-- `3*lt[0, A033716(n)]` -/
def P7925544563519393851.Spec : Prop :=
  ∀ n, (P7925544563519393851.a n : ℤ) = A270672 (n + 1)

end A270672

/-! ## A270672.P6094371988477696309

`3*eq[1, A353816(n)]`
-/

namespace A270672.P6094371988477696309
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353816 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A270672.P6094371988477696309

namespace A270672

/-- `3*eq[1, A353816(n)]` -/
def P6094371988477696309.Spec : Prop :=
  ∀ n, (P6094371988477696309.a n : ℤ) = A270672 (n + 1)

end A270672

/-! ## A270672.P7320847913491634887

`3/2*A270050(n+1)`
-/

namespace A270672.P7320847913491634887
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) / 2 * (A270050 (n + 1) : ℚ)

end

end A270672.P7320847913491634887

namespace A270672

/-- `3/2*A270050(n+1)` -/
def P7320847913491634887.Spec : Prop :=
  ∀ n, P7320847913491634887.a n = (A270672 (n + 1) : ℚ)

end A270672

/-! ## A270672.P13207028930144902047

`3/4*A270248(n+1)`
-/

namespace A270672.P13207028930144902047
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) / 4 * (A270248 (n + 1) : ℚ)

end

end A270672.P13207028930144902047

namespace A270672

/-- `3/4*A270248(n+1)` -/
def P13207028930144902047.Spec : Prop :=
  ∀ n, P13207028930144902047.a n = (A270672 (n + 1) : ℚ)

end A270672

/-! ## A270672.P3887233208941043393

`3*∪[A024614(n+1), n²]`
-/

namespace A270672.P3887233208941043393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024614 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = x) n

end

end A270672.P3887233208941043393

namespace A270672

/-- `3*∪[A024614(n+1), n²]` -/
def P3887233208941043393.Spec : Prop :=
  ∀ n, (P3887233208941043393.a n : ℤ) = A270672 (n + 1)

end A270672

/-! ## A270672.P17264864841353104222

`A270050(n+1)+A003136(n+1)`
-/

namespace A270672.P17264864841353104222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270050 (n + 1) + A003136 (n + 1)

end

end A270672.P17264864841353104222

namespace A270672

/-- `A270050(n+1)+A003136(n+1)` -/
def P17264864841353104222.Spec : Prop :=
  ∀ n, P17264864841353104222.a n = A270672 (n + 1)

end A270672

/-! ## A270672.P6212888060231108916

`A270248(n+1)-A003136(n+1)`
-/

namespace A270672.P6212888060231108916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270248 (n + 1) - A003136 (n + 1)

end

end A270672.P6212888060231108916

namespace A270672

/-- `A270248(n+1)-A003136(n+1)` -/
def P6212888060231108916.Spec : Prop :=
  ∀ n, P6212888060231108916.a n = A270672 (n + 1)

end A270672

/-! ## A270672.P9612884001528810136

`A003136(A024608(n+1))-A003136(n+1)`
-/

namespace A270672.P9612884001528810136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003136 (A024608 (n + 1)).toNat - A003136 (n + 1)

end

end A270672.P9612884001528810136

namespace A270672

/-- `A003136(A024608(n+1))-A003136(n+1)` -/
def P9612884001528810136.Spec : Prop :=
  ∀ n, P9612884001528810136.a n = A270672 (n + 1)

end A270672

/-! ## A270672.P16294038329772779367

`A008585(A003136(n+1))`
-/

namespace A270672.P16294038329772779367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 (A003136 (n + 1)).toNat

end

end A270672.P16294038329772779367

namespace A270672

/-- `A008585(A003136(n+1))` -/
def P16294038329772779367.Spec : Prop :=
  ∀ n, P16294038329772779367.a n = A270672 (n + 1)

end A270672

/-! ## A270672.P5751035778257967800

`filter[A008585(n), A353816(#)]`
-/

namespace A270672.P5751035778257967800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353816 (f1 j).toNat = 1) n)

end

end A270672.P5751035778257967800

namespace A270672

/-- `filter[A008585(n), A353816(#)]` -/
def P5751035778257967800.Spec : Prop :=
  ∀ n, P5751035778257967800.a n = A270672 (n + 1)

end A270672

/-! ## A270672.P2624805319229674600

`A047244(A003136(n+1)+1)+A003136(n+1)`
-/

namespace A270672.P2624805319229674600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047244 (A003136 (n + 1) + 1).toNat + A003136 (n + 1)

end

end A270672.P2624805319229674600

namespace A270672

/-- `A047244(A003136(n+1)+1)+A003136(n+1)` -/
def P2624805319229674600.Spec : Prop :=
  ∀ n, P2624805319229674600.a n = A270672 (n + 1)

end A270672

/-! ## A270672.P15688234883532253272

`filter[A055264(2*n), A353816(#)]`
-/

namespace A270672.P15688234883532253272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055264 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353816 (f1 j).toNat = 1) n)

end

end A270672.P15688234883532253272

namespace A270672

/-- `filter[A055264(2*n), A353816(#)]` -/
def P15688234883532253272.Spec : Prop :=
  ∀ n, P15688234883532253272.a n = A270672 (n + 1)

end A270672

/-! ## A270672.P368124056741515023

`∩[A003136(n+1), A242660(n+1)-1]`
-/

namespace A270672.P368124056741515023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003136 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242660 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A270672.P368124056741515023

namespace A270672

/-- `∩[A003136(n+1), A242660(n+1)-1]` -/
def P368124056741515023.Spec : Prop :=
  ∀ n, (P368124056741515023.a n : ℤ) = A270672 (n + 1)

end A270672

/-! ## A270672.P7955982044747232923

`filter[A080029(n), A353816(#)]`
-/

namespace A270672.P7955982044747232923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080029 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353816 (f1 j).toNat = 1) n)

end

end A270672.P7955982044747232923

namespace A270672

/-- `filter[A080029(n), A353816(#)]` -/
def P7955982044747232923.Spec : Prop :=
  ∀ n, P7955982044747232923.a n = A270672 (n + 1)

end A270672

/-! ## A270672.P14272337246268488810

`filter[A047244(n+1), A353816(#)]`
-/

namespace A270672.P14272337246268488810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047244 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353816 (f1 j).toNat = 1) n)

end

end A270672.P14272337246268488810

namespace A270672

/-- `filter[A047244(n+1), A353816(#)]` -/
def P14272337246268488810.Spec : Prop :=
  ∀ n, P14272337246268488810.a n = A270672 (n + 1)

end A270672

/-! ## A270672.P13047800184471669025

`filter[A047271(n+1), A353816(#)]`
-/

namespace A270672.P13047800184471669025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047271 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353816 (f1 j).toNat = 1) n)

end

end A270672.P13047800184471669025

namespace A270672

/-- `filter[A047271(n+1), A353816(#)]` -/
def P13047800184471669025.Spec : Prop :=
  ∀ n, P13047800184471669025.a n = A270672 (n + 1)

end A270672

/-! ## A270672.P3683696416525431274

`filter[A278996(n+1), A353816(#)]`
-/

namespace A270672.P3683696416525431274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278996 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353816 (f1 j).toNat = 1) n)

end

end A270672.P3683696416525431274

namespace A270672

/-- `filter[A278996(n+1), A353816(#)]` -/
def P3683696416525431274.Spec : Prop :=
  ∀ n, P3683696416525431274.a n = A270672 (n + 1)

end A270672

/-! ## A270672.P15581073078159475459

`eq[A087088(n+1), A353816(n)]`
-/

namespace A270672.P15581073078159475459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087088 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353816 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A270672.P15581073078159475459

namespace A270672

/-- `eq[A087088(n+1), A353816(n)]` -/
def P15581073078159475459.Spec : Prop :=
  ∀ n, (P15581073078159475459.a n : ℤ) = A270672 (n + 1)

end A270672

/-! ## A270672.P14214176481781358220

`eq[A010125(n+2), A353816(n)]`
-/

namespace A270672.P14214176481781358220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010125 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353816 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A270672.P14214176481781358220

namespace A270672

/-- `eq[A010125(n+2), A353816(n)]` -/
def P14214176481781358220.Spec : Prop :=
  ∀ n, (P14214176481781358220.a n : ℤ) = A270672 (n + 1)

end A270672

/-!
# A270673: Number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 187", based on the 5-celled von Neumann neighborhood.

The programs for A270673, there is no canonical definition to state claims against.
-/

/-! ## A270673.P17478073515327253786

`∑[A270676(abs(1-n))]-3`
-/

namespace A270673.P17478073515327253786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270676 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 3

end

end A270673.P17478073515327253786

/-! ## A270673.P7637744045846232400

`A270676(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A270673.P7637744045846232400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A270676 (n - 1) + a (n - 1)

end

end A270673.P7637744045846232400

/-! ## A270673.P6955316503905092850

`∑[A270676((n-1)%a(n-1))]` with `a(0)=1`
-/

namespace A270673.P6955316503905092850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A270676 (Int.tmod ((n : ℤ) - 1) (f1 (n - 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270673.P6955316503905092850

/-! ## A270673.P18161106296705262159

`Δ[A270675(n)]-A270676(n)`
-/

namespace A270673.P18161106296705262159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270675 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A270676 n

end

end A270673.P18161106296705262159

/-! ## A270673.P238469136159649437

`A270675(n+1)-(A270676(n)+A270675(n))`
-/

namespace A270673.P238469136159649437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270675 (n + 1) - (A270676 n + A270675 n)

end

end A270673.P238469136159649437

/-!
# A270674: Number of active (ON, black) cells at stage 2^n-1 of the two-dimensional cellular automaton defined by "Rule 187", based on the 5-celled von Neumann neighborhood.

The programs for A270674, there is no canonical definition to state claims against.
-/

/-! ## A270674.P11700353254547794440

`A270673(2^n-1)`
-/

namespace A270674.P11700353254547794440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270673 (2 ^ n - 1)

end

end A270674.P11700353254547794440

/-! ## A270674.P14046951934592443255

`record[A270673(A173787(n))]`
-/

namespace A270674.P14046951934592443255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270673 (A173787 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270674.P14046951934592443255

/-! ## A270674.P14546446994139031026

`or(1, A270673(A000225(n)))`
-/

namespace A270674.P14546446994139031026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A270673 (A000225 n).toNat)

end

end A270674.P14546446994139031026

/-! ## A270674.P4840431956237841619

`record[A270673(A253564(n+1))]`
-/

namespace A270674.P4840431956237841619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270673 (A253564 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270674.P4840431956237841619

/-! ## A270674.P1411223885621191995

`record[A270673(A297171(n+1))]`
-/

namespace A270674.P1411223885621191995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270673 (A297171 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270674.P1411223885621191995

/-!
# A270675: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 187", based on the 5-celled von Neumann neighborhood.

The programs for A270675, there is no canonical definition to state claims against.
-/

/-! ## A270675.P15157837555455033510

`∑[A270673(n)]`
-/

namespace A270675.P15157837555455033510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270673 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270675.P15157837555455033510

/-! ## A270675.P8916394045067503959

`A270673(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A270675.P8916394045067503959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A270673 n + a (A023443 n).toNat

end

end A270675.P8916394045067503959

/-! ## A270675.P7037625091972473074

`a(n-1)+A270673(n)+A000038(n)` with `a(0)=1`
-/

namespace A270675.P7037625091972473074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A270673 n + A000038 n)

end

end A270675.P7037625091972473074

/-! ## A270675.P5666545159229546193

`a(n-1)+A270673(n)*A303280(A006530(n+1))` with `a(0)=1`
-/

namespace A270675.P5666545159229546193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A270673 n * A303280 (A006530 (n + 1)).toNat

end

end A270675.P5666545159229546193

/-! ## A270675.P5196166373724972165

`∑[∑[A270676((n-1)%a(n-1))]]` with `a(0)=1`
-/

namespace A270675.P5196166373724972165
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  A270676 (Int.tmod ((n : ℤ) - 1) (f2 (n - 1))).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270675.P5196166373724972165

/-! ## A270675.P16830425033620646808

`∑[or(1, A270676(n-1)+a(n-1))]` with `a(0)=1`
-/

namespace A270675.P16830425033620646808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  Int.lor 1 (A270676 (n - 1) + f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270675.P16830425033620646808

/-! ## A270675.P15626102932390370491

`∑[∑[A270676(n)]+1-A270676(n)]`
-/

namespace A270675.P15626102932390370491
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270676 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (1 - A270676 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270675.P15626102932390370491

/-!
# A270676: First differences of number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 187", based on the 5-celled von Neumann neighborhood.

The programs for A270676, there is no canonical definition to state claims against.
-/

/-! ## A270676.P16714884751906217095

`Δ[A270673(n)]`
-/

namespace A270676.P16714884751906217095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270673 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A270676.P16714884751906217095

/-! ## A270676.P4197306476311261156

`A270673(n+1)-A270673(n)`
-/

namespace A270676.P4197306476311261156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270673 (n + 1) - A270673 n

end

end A270676.P4197306476311261156

/-!
# A270677: Number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 189", based on the 5-celled von Neumann neighborhood.

The programs for A270677, there is no canonical definition to state claims against.
-/

/-! ## A270677.P385787446208538681

`A270680(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A270677.P385787446208538681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A270680 (n - 1) + a (n - 1)

end

end A270677.P385787446208538681

/-! ## A270677.P17927915179783758467

`∑[A270680((n-1)%a(n-1))]` with `a(0)=1`
-/

namespace A270677.P17927915179783758467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A270680 (Int.tmod ((n : ℤ) - 1) (f1 (n - 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270677.P17927915179783758467

/-! ## A270677.P6001379444571289530

`Δ[A270679(n)]-A270680(n)`
-/

namespace A270677.P6001379444571289530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270679 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A270680 n

end

end A270677.P6001379444571289530

/-! ## A270677.P7020050415562878295

`A270679(n+1)-(A270680(n)+A270679(n))`
-/

namespace A270677.P7020050415562878295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270679 (n + 1) - (A270680 n + A270679 n)

end

end A270677.P7020050415562878295

/-!
# A270678: Number of active (ON, black) cells at stage 2^n-1 of the two-dimensional cellular automaton defined by "Rule 189", based on the 5-celled von Neumann neighborhood.

The programs for A270678, there is no canonical definition to state claims against.
-/

/-! ## A270678.P7184262876611696555

`A270677(2^n-1)`
-/

namespace A270678.P7184262876611696555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270677 (2 ^ n - 1)

end

end A270678.P7184262876611696555

/-! ## A270678.P2489299913416694829

`record[A270677(A173787(n))]`
-/

namespace A270678.P2489299913416694829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270677 (A173787 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270678.P2489299913416694829

/-! ## A270678.P3710268378128712311

`record[A270677(A218616(n))]`
-/

namespace A270678.P3710268378128712311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270677 (A218616 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270678.P3710268378128712311

/-! ## A270678.P1462748915485648185

`record[A270677(A227351(n))]`
-/

namespace A270678.P1462748915485648185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270677 (A227351 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270678.P1462748915485648185

/-! ## A270678.P6495157762924650322

`record[A270677(A257250(n))]`
-/

namespace A270678.P6495157762924650322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270677 (A257250 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270678.P6495157762924650322

/-!
# A270679: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 189", based on the 5-celled von Neumann neighborhood.

The programs for A270679, there is no canonical definition to state claims against.
-/

/-! ## A270679.P12734689712832935272

`∑[∑[A270680(n)]+1-A270680(n)]`
-/

namespace A270679.P12734689712832935272
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270680 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (1 - A270680 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270679.P12734689712832935272

/-! ## A270679.P8892878268757849905

`∑[A270677(n)]`
-/

namespace A270679.P8892878268757849905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270677 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270679.P8892878268757849905

/-! ## A270679.P15735522364222879143

`A270677(A000027(n))+a(n-1)` with `a(0)=1`
-/

namespace A270679.P15735522364222879143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A270677 (A000027 n).toNat + a (n - 1)

end

end A270679.P15735522364222879143

/-! ## A270679.P13485992740025300989

`A270677(A026741(2*n))+a(n-1)` with `a(0)=1`
-/

namespace A270679.P13485992740025300989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A270677 (A026741 (2 * n)).toNat + a (n - 1)

end

end A270679.P13485992740025300989

/-! ## A270679.P15980285981284852830

`A270677(n%A008486(n))+a(n-1)` with `a(0)=1`
-/

namespace A270679.P15980285981284852830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A270677 (Int.tmod (n : ℤ) (A008486 n)).toNat + a (n - 1)

end

end A270679.P15980285981284852830

/-! ## A270679.P14959255716629729944

`A270677(n)+a(A259361(n²))` with `a(0)=1`
-/

namespace A270679.P14959255716629729944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A270677 n + a (A259361 (n ^ 2)).toNat

end

end A270679.P14959255716629729944

/-!
# A270680: First differences of number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 189", based on the 5-celled von Neumann neighborhood.

The programs for A270680, there is no canonical definition to state claims against.
-/

/-! ## A270680.P16787926136361398231

`Δ[A270677(n)]`
-/

namespace A270680.P16787926136361398231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270677 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A270680.P16787926136361398231

/-! ## A270680.P4448830333942337928

`A270677(n+1)-A270677(n)`
-/

namespace A270680.P4448830333942337928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270677 (n + 1) - A270677 n

end

end A270680.P4448830333942337928

/-! ## A270680.P18007669790222402090

`A270677(-xor(n, -1))+A001478(A270677(n))`
-/

namespace A270680.P18007669790222402090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270677 (-Int.xor (n : ℤ) (-1)).toNat + A001478 (A270677 n).toNat

end

end A270680.P18007669790222402090

/-! ## A270680.P15534629983690903032

`A270677(A000027(n+1))+A001478(A270677(n))`
-/

namespace A270680.P15534629983690903032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270677 (A000027 (n + 1)).toNat + A001478 (A270677 n).toNat

end

end A270680.P15534629983690903032

/-! ## A270680.P1834851002969538681

`A270677(A118759(n+1))+A001478(A270677(n))`
-/

namespace A270680.P1834851002969538681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270677 (A118759 (n + 1)).toNat + A001478 (A270677 n).toNat

end

end A270680.P1834851002969538681

/-!
# A270681: Number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 190", based on the 5-celled von Neumann neighborhood.

The programs for A270681, the canonical program `A270681.P13897496655340801823` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A270681 has offset 0).

The definition of A270681 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A270681.P13897496655340801823

`a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` with `a(0)=1, a(1)=5, a(2)=12, a(3)=24, a(4)=32, a(5)=52, a(6)=60`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A270681

/-- `a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` -/
def P13897496655340801823.Spec : Prop :=
  ∀ n, P13897496655340801823.a n = A270681 n

theorem P13897496655340801823.correct : P13897496655340801823.Spec := by
  intro n
  simp only [A270681]

end A270681

/-! ## A270681.P155799763691002633

`n²+A266662(n)+A130824(n)`
-/

namespace A270681.P155799763691002633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) + (A266662 n + A130824 n)

end

end A270681.P155799763691002633

namespace A270681

/-- `n²+A266662(n)+A130824(n)` -/
def P155799763691002633.Spec : Prop :=
  ∀ n, P155799763691002633.a n = A270681 n

end A270681

/-! ## A270681.P8794312396597269809

`A001844(n)-(n-A019425(n))²`
-/

namespace A270681.P8794312396597269809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001844 n - ((n : ℤ) - A019425 n) ^ 2

end

end A270681.P8794312396597269809

namespace A270681

/-- `A001844(n)-(n-A019425(n))²` -/
def P8794312396597269809.Spec : Prop :=
  ∀ n, P8794312396597269809.a n = A270681 n

end A270681

/-! ## A270681.P3298425408390465529

`floor(A034856(n+1)²/A264754(n))`
-/

namespace A270681.P3298425408390465529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A034856 (n + 1) ^ 2 : ℚ) / (A264754 n : ℚ)⌋

end

end A270681.P3298425408390465529

namespace A270681

/-- `floor(A034856(n+1)²/A264754(n))` -/
def P3298425408390465529.Spec : Prop :=
  ∀ n, P3298425408390465529.a n = A270681 n

end A270681

/-! ## A270681.P14582231490782525371

`A028552(n)+A004275(A266285(n))`
-/

namespace A270681.P14582231490782525371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028552 n + A004275 (A266285 n).toNat

end

end A270681.P14582231490782525371

namespace A270681

/-- `A028552(n)+A004275(A266285(n))` -/
def P14582231490782525371.Spec : Prop :=
  ∀ n, P14582231490782525371.a n = A270681 n

end A270681

/-! ## A270681.P12193245048844922322

`A001844(n)-A004273(A004526(n))²`
-/

namespace A270681.P12193245048844922322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001844 n - A004273 (A004526 n).toNat ^ 2

end

end A270681.P12193245048844922322

namespace A270681

/-- `A001844(n)-A004273(A004526(n))²` -/
def P12193245048844922322.Spec : Prop :=
  ∀ n, P12193245048844922322.a n = A270681 n

end A270681

/-! ## A270681.P9351497041634869216

`A001844(n)-A014681(A052928(n))²`
-/

namespace A270681.P9351497041634869216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001844 n - A014681 (A052928 n).toNat ^ 2

end

end A270681.P9351497041634869216

namespace A270681

/-- `A001844(n)-A014681(A052928(n))²` -/
def P9351497041634869216.Spec : Prop :=
  ∀ n, P9351497041634869216.a n = A270681 n

end A270681

/-! ## A270681.P10898136612026291199

`A004275(A266285(n))+2*A000096(n)`
-/

namespace A270681.P10898136612026291199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A266285 n).toNat + 2 * A000096 n

end

end A270681.P10898136612026291199

namespace A270681

/-- `A004275(A266285(n))+2*A000096(n)` -/
def P10898136612026291199.Spec : Prop :=
  ∀ n, P10898136612026291199.a n = A270681 n

end A270681

/-! ## A270681.P10757215815112932619

`A002522(n)+A130824(n)+A019425(n)`
-/

namespace A270681.P10757215815112932619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002522 n + (A130824 n + A019425 n)

end

end A270681.P10757215815112932619

namespace A270681

/-- `A002522(n)+A130824(n)+A019425(n)` -/
def P10757215815112932619.Spec : Prop :=
  ∀ n, P10757215815112932619.a n = A270681 n

end A270681

/-! ## A270681.P771484772014662228

`A008574(A052928(n))+A052928(n+1)²`
-/

namespace A270681.P771484772014662228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (A052928 n).toNat + A052928 (n + 1) ^ 2

end

end A270681.P771484772014662228

namespace A270681

/-- `A008574(A052928(n))+A052928(n+1)²` -/
def P771484772014662228.Spec : Prop :=
  ∀ n, P771484772014662228.a n = A270681 n

end A270681

/-! ## A270681.P9514877286272764609

`A270684(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A270681.P9514877286272764609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A270684 (n - 1) + a (n - 1)

end

end A270681.P9514877286272764609

namespace A270681

/-- `A270684(n-1)+a(n-1)` -/
def P9514877286272764609.Spec : Prop :=
  ∀ n, P9514877286272764609.a n = A270681 n

end A270681

/-! ## A270681.P13464044236961000922

`∑[A270684(n)]+1-A270684(n)`
-/

namespace A270681.P13464044236961000922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270684 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A270684 n)

end

end A270681.P13464044236961000922

namespace A270681

/-- `∑[A270684(n)]+1-A270684(n)` -/
def P13464044236961000922.Spec : Prop :=
  ∀ n, P13464044236961000922.a n = A270681 n

end A270681

/-! ## A270681.P8407689416488146749

`A270683(n+1)-(A270684(n)+A270683(n))`
-/

namespace A270681.P8407689416488146749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270683 (n + 1) - (A270684 n + A270683 n)

end

end A270681.P8407689416488146749

namespace A270681

/-- `A270683(n+1)-(A270684(n)+A270683(n))` -/
def P8407689416488146749.Spec : Prop :=
  ∀ n, P8407689416488146749.a n = A270681 n

end A270681

/-! ## A270681.P5924684962479119004

`A001844(n)-A293137(A002620(n))²`
-/

namespace A270681.P5924684962479119004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001844 n - A293137 (A002620 n).toNat ^ 2

end

end A270681.P5924684962479119004

namespace A270681

/-- `A001844(n)-A293137(A002620(n))²` -/
def P5924684962479119004.Spec : Prop :=
  ∀ n, P5924684962479119004.a n = A270681 n

end A270681

/-! ## A270681.P655971489854584100

`A004273(A052928(n))+A004273(A266723(n))`
-/

namespace A270681.P655971489854584100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A052928 n).toNat + A004273 (A266723 n).toNat

end

end A270681.P655971489854584100

namespace A270681

/-- `A004273(A052928(n))+A004273(A266723(n))` -/
def P655971489854584100.Spec : Prop :=
  ∀ n, P655971489854584100.a n = A270681 n

end A270681

/-! ## A270681.P4723046951785037635

`A005843(A000096(n))+A004275(A266285(n))`
-/

namespace A270681.P4723046951785037635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A000096 n).toNat + A004275 (A266285 n).toNat

end

end A270681.P4723046951785037635

namespace A270681

/-- `A005843(A000096(n))+A004275(A266285(n))` -/
def P4723046951785037635.Spec : Prop :=
  ∀ n, P4723046951785037635.a n = A270681 n

end A270681

/-!
# A270682: Number of active (ON, black) cells at stage 2^n-1 of the two-dimensional cellular automaton defined by "Rule 190", based on the 5-celled von Neumann neighborhood.

The programs for A270682, the canonical program `A270682.P12019182787832442145` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A270682 has offset 0).

The definition of A270682 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A270682.P12019182787832442145

`7*a(n-1)-14*a(n-2)+8*a(n-3)` with `a(0)=1, a(1)=5, a(2)=24, a(3)=88, a(4)=312`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A270682

/-- `7*a(n-1)-14*a(n-2)+8*a(n-3)` -/
def P12019182787832442145.Spec : Prop :=
  ∀ n, P12019182787832442145.a n = A270682 n

theorem P12019182787832442145.correct : P12019182787832442145.Spec := by
  intro n
  simp only [A270682]

end A270682

/-! ## A270682.P10897468473796984870

`A290718(n+1)-A113975(n)`
-/

namespace A270682.P10897468473796984870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290718 (n + 1) - A113975 n

end

end A270682.P10897468473796984870

namespace A270682

/-- `A290718(n+1)-A113975(n)` -/
def P10897468473796984870.Spec : Prop :=
  ∀ n, P10897468473796984870.a n = A270682 n

end A270682

/-! ## A270682.P12283536974217625650

`A131130(n)+xor(1, A267596(n))`
-/

namespace A270682.P12283536974217625650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131130 n + Int.xor 1 (A267596 n)

end

end A270682.P12283536974217625650

namespace A270682

/-- `A131130(n)+xor(1, A267596(n))` -/
def P12283536974217625650.Spec : Prop :=
  ∀ n, P12283536974217625650.a n = A270682 n

end A270682

/-! ## A270682.P15012203393727117591

`char[1]+A154252(n)+A020522(n)`
-/

namespace A270682.P15012203393727117591
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + (A154252 n + A020522 n)

end

end A270682.P15012203393727117591

namespace A270682

/-- `char[1]+A154252(n)+A020522(n)` -/
def P15012203393727117591.Spec : Prop :=
  ∀ n, P15012203393727117591.a n = A270682 n

end A270682

/-! ## A270682.P2666263458125975002

`A020522(n)+A154252(n)-A159075(n)`
-/

namespace A270682.P2666263458125975002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020522 n + (A154252 n - A159075 n)

end

end A270682.P2666263458125975002

namespace A270682

/-- `A020522(n)+A154252(n)-A159075(n)` -/
def P2666263458125975002.Spec : Prop :=
  ∀ n, P2666263458125975002.a n = A270682 n

end A270682

/-! ## A270682.P9049399111946749655

`A154252(n)+A020522(n)-(A060576(n)-1)`
-/

namespace A270682.P9049399111946749655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154252 n + A020522 n - (A060576 n - 1)

end

end A270682.P9049399111946749655

namespace A270682

/-- `A154252(n)+A020522(n)-(A060576(n)-1)` -/
def P9049399111946749655.Spec : Prop :=
  ∀ n, P9049399111946749655.a n = A270682 n

end A270682

/-! ## A270682.P14450453865152013010

`or(A154252(n)+A020522(n), A000007(n-(n%3)%2))`
-/

namespace A270682.P14450453865152013010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A154252 n + A020522 n) (A000007 (n - n % 3 % 2))

end

end A270682.P14450453865152013010

namespace A270682

/-- `or(A154252(n)+A020522(n), A000007(n-(n%3)%2))` -/
def P14450453865152013010.Spec : Prop :=
  ∀ n, P14450453865152013010.a n = A270682 n

end A270682

/-!
# A270683: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 190", based on the 5-celled von Neumann neighborhood.

The programs for A270683, the canonical program `A270683.P14854626860996153548` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A270683 has offset 0).

The definition of A270683 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3831 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A270683.P14854626860996153548

`∑[n²+A266662(n)+A130824(n)]`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A270683

/-- `∑[n²+A266662(n)+A130824(n)]` -/
def P14854626860996153548.Spec : Prop :=
  ∀ n, P14854626860996153548.a n = A270683 n

theorem P14854626860996153548.correct : P14854626860996153548.Spec := by
  intro n
  simp only [A270683]

end A270683

/-! ## A270683.P14057734831316558759

`∑[A028552(n)+A004275(A266285(n))]`
-/

namespace A270683.P14057734831316558759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028552 n + A004275 (A266285 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270683.P14057734831316558759

namespace A270683

/-- `∑[A028552(n)+A004275(A266285(n))]` -/
def P14057734831316558759.Spec : Prop :=
  ∀ n, P14057734831316558759.a n = A270683 n

end A270683

/-! ## A270683.P10283385246209727649

`∑[A001844(n)-A004273(A004526(n))²]`
-/

namespace A270683.P10283385246209727649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001844 n - A004273 (A004526 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270683.P10283385246209727649

namespace A270683

/-- `∑[A001844(n)-A004273(A004526(n))²]` -/
def P10283385246209727649.Spec : Prop :=
  ∀ n, P10283385246209727649.a n = A270683 n

end A270683

/-! ## A270683.P4540680590235562141

`∑[A001844(n)-A014681(A052928(n))²]`
-/

namespace A270683.P4540680590235562141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001844 n - A014681 (A052928 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270683.P4540680590235562141

namespace A270683

/-- `∑[A001844(n)-A014681(A052928(n))²]` -/
def P4540680590235562141.Spec : Prop :=
  ∀ n, P4540680590235562141.a n = A270683 n

end A270683

/-! ## A270683.P1335461865034355756

`A000330(n)+∑[A266662(n)+A130824(n)]`
-/

namespace A270683.P1335461865034355756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266662 n + A130824 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000330 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270683.P1335461865034355756

namespace A270683

/-- `A000330(n)+∑[A266662(n)+A130824(n)]` -/
def P1335461865034355756.Spec : Prop :=
  ∀ n, P1335461865034355756.a n = A270683 n

end A270683

/-! ## A270683.P12089593752113046352

`∑[A008574(A052928(n))+A052928(n+1)²]`
-/

namespace A270683.P12089593752113046352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (A052928 n).toNat + A052928 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270683.P12089593752113046352

namespace A270683

/-- `∑[A008574(A052928(n))+A052928(n+1)²]` -/
def P12089593752113046352.Spec : Prop :=
  ∀ n, P12089593752113046352.a n = A270683 n

end A270683

/-! ## A270683.P14193377490615384957

`∑[A270681(n)]`
-/

namespace A270683.P14193377490615384957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270681 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270683.P14193377490615384957

namespace A270683

/-- `∑[A270681(n)]` -/
def P14193377490615384957.Spec : Prop :=
  ∀ n, P14193377490615384957.a n = A270683 n

end A270683

/-! ## A270683.P11358963240005992989

`A270681(n%A168397(n+1))+a(n-1)` with `a(0)=1`
-/

namespace A270683.P11358963240005992989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A270681 (Int.tmod (n : ℤ) (A168397 (n + 1))).toNat + a (n - 1)

end

end A270683.P11358963240005992989

namespace A270683

/-- `A270681(n%A168397(n+1))+a(n-1)` -/
def P11358963240005992989.Spec : Prop :=
  ∀ n, P11358963240005992989.a n = A270683 n

end A270683

/-! ## A270683.P7210621069903465684

`a(n-1)+A270681(n)%A270681(n+1)` with `a(0)=1`
-/

namespace A270683.P7210621069903465684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Int.tmod (A270681 n) (A270681 (n + 1))

end

end A270683.P7210621069903465684

namespace A270683

/-- `a(n-1)+A270681(n)%A270681(n+1)` -/
def P7210621069903465684.Spec : Prop :=
  ∀ n, P7210621069903465684.a n = A270683 n

end A270683

/-! ## A270683.P1752558695055477614

`∑[A270684(n-1)+a(n-1)]` with `a(0)=1`
-/

namespace A270683.P1752558695055477614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A270684 (n - 1) + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270683.P1752558695055477614

namespace A270683

/-- `∑[A270684(n-1)+a(n-1)]` -/
def P1752558695055477614.Spec : Prop :=
  ∀ n, P1752558695055477614.a n = A270683 n

end A270683

/-! ## A270683.P1886365029437903136

`∑[A001844(n)-A293137(A002620(n))²]`
-/

namespace A270683.P1886365029437903136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001844 n - A293137 (A002620 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270683.P1886365029437903136

namespace A270683

/-- `∑[A001844(n)-A293137(A002620(n))²]` -/
def P1886365029437903136.Spec : Prop :=
  ∀ n, P1886365029437903136.a n = A270683 n

end A270683

/-!
# A270684: First differences of number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 190", based on the 5-celled von Neumann neighborhood.

The programs for A270684, the canonical program `A270684.P3782379711691343065` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A270684 has offset 0).

The definition of A270684 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A270684.P3782379711691343065

`2*a(n-2)-a(n-4)` with `a(0)=4, a(1)=7, a(2)=12, a(3)=8, a(4)=20, a(5)=8`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A270684

/-- `2*a(n-2)-a(n-4)` -/
def P3782379711691343065.Spec : Prop :=
  ∀ n, P3782379711691343065.a n = A270684 n

theorem P3782379711691343065.correct : P3782379711691343065.Spec := by
  intro n
  simp only [A270684]

end A270684

/-! ## A270684.P12558966528117500155

`xor(5, or(1, a(n-2)+5))` with `a(0)=4, a(1)=7`
-/

namespace A270684.P12558966528117500155
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [4, 7] fun n a =>
  Nat.xor 5 (Nat.lor 1 (a (n - 2) + 5))

end

end A270684.P12558966528117500155

namespace A270684

/-- `xor(5, or(1, a(n-2)+5))` -/
def P12558966528117500155.Spec : Prop :=
  ∀ n, (P12558966528117500155.a n : ℤ) = A270684 n

end A270684

/-! ## A270684.P113524588260324799

`(n+1)%2*a(n-2)+8` with `a(0)=4, a(1)=7`
-/

namespace A270684.P113524588260324799
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [4, 7] fun n a =>
  (n + 1) % 2 * a (n - 2) + 8

end

end A270684.P113524588260324799

namespace A270684

/-- `(n+1)%2*a(n-2)+8` -/
def P113524588260324799.Spec : Prop :=
  ∀ n, (P113524588260324799.a n : ℤ) = A270684 n

end A270684

/-! ## A270684.P6887018443249185301

`Δ[A270681(n)]`
-/

namespace A270684.P6887018443249185301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270681 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A270684.P6887018443249185301

namespace A270684

/-- `Δ[A270681(n)]` -/
def P6887018443249185301.Spec : Prop :=
  ∀ n, P6887018443249185301.a n = A270684 n

end A270684

/-! ## A270684.P11578678312784252951

`4*A141310(n)-char[1]`
-/

namespace A270684.P11578678312784252951
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A141310 n - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A270684.P11578678312784252951

namespace A270684

/-- `4*A141310(n)-char[1]` -/
def P11578678312784252951.Spec : Prop :=
  ∀ n, P11578678312784252951.a n = A270684 n

end A270684

/-! ## A270684.P7611074590374081892

`a(n-2)*A000035(n+1)+8` with `a(0)=4, a(1)=7`
-/

namespace A270684.P7611074590374081892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4, 7] fun n a =>
  a (n - 2) * A000035 (n + 1) + 8

end

end A270684.P7611074590374081892

namespace A270684

/-- `a(n-2)*A000035(n+1)+8` -/
def P7611074590374081892.Spec : Prop :=
  ∀ n, P7611074590374081892.a n = A270684 n

end A270684

/-! ## A270684.P16688170294356588229

`A008574(A141310(n))-char[1]`
-/

namespace A270684.P16688170294356588229
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (A141310 n).toNat - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A270684.P16688170294356588229

namespace A270684

/-- `A008574(A141310(n))-char[1]` -/
def P16688170294356588229.Spec : Prop :=
  ∀ n, P16688170294356588229.a n = A270684 n

end A270684

/-! ## A270684.P7880003262167628599

`A270681(n+1)-A270681(n)`
-/

namespace A270684.P7880003262167628599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270681 (n + 1) - A270681 n

end

end A270684.P7880003262167628599

namespace A270684

/-- `A270681(n+1)-A270681(n)` -/
def P7880003262167628599.Spec : Prop :=
  ∀ n, P7880003262167628599.a n = A270684 n

end A270684

/-! ## A270684.P11753011143919171646

`A266073(A266073(n)+2)-char[1]`
-/

namespace A270684.P11753011143919171646
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266073 (A266073 n + 2).toNat - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A270684.P11753011143919171646

namespace A270684

/-- `A266073(A266073(n)+2)-char[1]` -/
def P11753011143919171646.Spec : Prop :=
  ∀ n, P11753011143919171646.a n = A270684 n

end A270684

/-! ## A270684.P2092438758098186142

`A008574(lcm(2, n+1))-A008574(A004442(n))`
-/

namespace A270684.P2092438758098186142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (Nat.lcm 2 (n + 1)) - A008574 (A004442 n).toNat

end

end A270684.P2092438758098186142

namespace A270684

/-- `A008574(lcm(2, n+1))-A008574(A004442(n))` -/
def P2092438758098186142.Spec : Prop :=
  ∀ n, P2092438758098186142.a n = A270684 n

end A270684

/-!
# A270685: Number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 193", based on the 5-celled von Neumann neighborhood.

The programs for A270685, there is no canonical definition to state claims against.
-/

/-! ## A270685.P15933701385721150650

`A270688(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A270685.P15933701385721150650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A270688 (n - 1) + a (n - 1)

end

end A270685.P15933701385721150650

/-! ## A270685.P3247570634186313102

`Δ[A270687(n)]-A270688(n)`
-/

namespace A270685.P3247570634186313102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270687 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A270688 n

end

end A270685.P3247570634186313102

/-! ## A270685.P104249078625933538

`A270687(n+1)-(A270688(n)+A270687(n))`
-/

namespace A270685.P104249078625933538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270687 (n + 1) - (A270688 n + A270687 n)

end

end A270685.P104249078625933538

/-! ## A270685.P9480612880974513213

`A270687(A028310(n+1))%(A270688(n)+A270687(n))`
-/

namespace A270685.P9480612880974513213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A270687 (A028310 (n + 1)).toNat) (A270688 n + A270687 n)

end

end A270685.P9480612880974513213

/-!
# A270686: Number of active (ON, black) cells at stage 2^n-1 of the two-dimensional cellular automaton defined by "Rule 193", based on the 5-celled von Neumann neighborhood.

The programs for A270686, there is no canonical definition to state claims against.
-/

/-! ## A270686.P2177804509694719299

`A270685(2^n-1)`
-/

namespace A270686.P2177804509694719299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270685 (2 ^ n - 1)

end

end A270686.P2177804509694719299

/-! ## A270686.P678359566859633183

`record[A270685(A173787(n))]`
-/

namespace A270686.P678359566859633183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270685 (A173787 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270686.P678359566859633183

/-! ## A270686.P4533971252375957079

`record[A270685(A218616(n))]`
-/

namespace A270686.P4533971252375957079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270685 (A218616 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270686.P4533971252375957079

/-! ## A270686.P14598019293123593053

`record[A270685(A232751(n))]`
-/

namespace A270686.P14598019293123593053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270685 (A232751 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270686.P14598019293123593053

/-! ## A270686.P12598883781445432398

`record[A270685(A255565(n))]`
-/

namespace A270686.P12598883781445432398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270685 (A255565 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270686.P12598883781445432398

/-!
# A270687: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 193", based on the 5-celled von Neumann neighborhood.

The programs for A270687, there is no canonical definition to state claims against.
-/

/-! ## A270687.P13342130666742509584

`∑[A270685(n)]`
-/

namespace A270687.P13342130666742509584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270685 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270687.P13342130666742509584

/-! ## A270687.P6651034698609874915

`A270685(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A270687.P6651034698609874915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A270685 n + a (A023443 n).toNat

end

end A270687.P6651034698609874915

/-! ## A270687.P11591302196559476753

`A270685(n)+a(abs(A024000(n)))` with `a(0)=1`
-/

namespace A270687.P11591302196559476753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A270685 n + a |A024000 n|.toNat

end

end A270687.P11591302196559476753

/-! ## A270687.P1709311474192281672

`∑[∑[A270688(n)]+1-A270688(n)]`
-/

namespace A270687.P1709311474192281672
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270688 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (1 - A270688 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270687.P1709311474192281672

/-! ## A270687.P8705465612078943092

`A270685(A004525(2*n))+a(n-1)` with `a(0)=1`
-/

namespace A270687.P8705465612078943092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A270685 (A004525 (2 * n)).toNat + a (n - 1)

end

end A270687.P8705465612078943092

/-! ## A270687.P13258783512935259180

`a(n-1)+A270685(n)+A000007(n)` with `a(0)=1`
-/

namespace A270687.P13258783512935259180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A270685 n + A000007 n)

end

end A270687.P13258783512935259180

/-!
# A270688: First differences of number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 193", based on the 5-celled von Neumann neighborhood.

The programs for A270688, there is no canonical definition to state claims against.
-/

/-! ## A270688.P6923484428245668510

`Δ[A270685(n)]`
-/

namespace A270688.P6923484428245668510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270685 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A270688.P6923484428245668510

/-! ## A270688.P15494641147169055369

`A270685(n+1)-A270685(n)`
-/

namespace A270688.P15494641147169055369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270685 (n + 1) - A270685 n

end

end A270688.P15494641147169055369

/-! ## A270688.P11546600267961784817

`A270685(A000027(n+1))+A001478(A270685(n))`
-/

namespace A270688.P11546600267961784817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270685 (A000027 (n + 1)).toNat + A001478 (A270685 n).toNat

end

end A270688.P11546600267961784817

/-! ## A270688.P15141449923781691681

`A270685(A028310(n+1))+A001478(A270685(n))`
-/

namespace A270688.P15141449923781691681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270685 (A028310 (n + 1)).toNat + A001478 (A270685 n).toNat

end

end A270688.P15141449923781691681

/-!
# A270689: Number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 195", based on the 5-celled von Neumann neighborhood.

The programs for A270689, there is no canonical definition to state claims against.
-/

/-! ## A270689.P6878556525891835472

`A270692(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A270689.P6878556525891835472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A270692 (n - 1) + a (n - 1)

end

end A270689.P6878556525891835472

/-! ## A270689.P2894626291703255750

`1+∑[A270692(n)]-A270692(n)`
-/

namespace A270689.P2894626291703255750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270692 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + (∑ j ∈ Finset.range (n + 1), f1 j - A270692 n)

end

end A270689.P2894626291703255750

/-! ## A270689.P4043725137374027181

`Δ[A270691(n)]-A270692(n)`
-/

namespace A270689.P4043725137374027181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270691 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A270692 n

end

end A270689.P4043725137374027181

/-! ## A270689.P2002430057397392427

`A270691(n+1)-(A270692(n)+A270691(n))`
-/

namespace A270689.P2002430057397392427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270691 (n + 1) - (A270692 n + A270691 n)

end

end A270689.P2002430057397392427

/-!
# A270690: Number of active (ON, black) cells at stage 2^n-1 of the two-dimensional cellular automaton defined by "Rule 195", based on the 5-celled von Neumann neighborhood.

The programs for A270690, there is no canonical definition to state claims against.
-/

/-! ## A270690.P1092844048940166074

`A270689(2^n-1)`
-/

namespace A270690.P1092844048940166074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270689 (2 ^ n - 1)

end

end A270690.P1092844048940166074

/-! ## A270690.P7771541069943864340

`record[A270689(A218616(n))]`
-/

namespace A270690.P7771541069943864340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270689 (A218616 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270690.P7771541069943864340

/-! ## A270690.P3874966661848300365

`or(1, A270689(A000225(n)))`
-/

namespace A270690.P3874966661848300365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A270689 (A000225 n).toNat)

end

end A270690.P3874966661848300365

/-! ## A270690.P6086877617607205642

`record[A270689(A192112(n+1))]`
-/

namespace A270690.P6086877617607205642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270689 (A192112 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270690.P6086877617607205642

/-! ## A270690.P7220873863817057000

`record[A270689(A243071(n+1))]`
-/

namespace A270690.P7220873863817057000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270689 (A243071 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270690.P7220873863817057000

/-!
# A270691: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 195", based on the 5-celled von Neumann neighborhood.

The programs for A270691, there is no canonical definition to state claims against.
-/

/-! ## A270691.P5412821246619180971

`∑[A270689(n)]`
-/

namespace A270691.P5412821246619180971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270689 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270691.P5412821246619180971

/-! ## A270691.P936348962663631210

`∑[A270692(n-1)+a(n-1)]` with `a(0)=1`
-/

namespace A270691.P936348962663631210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A270692 (n - 1) + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270691.P936348962663631210

/-! ## A270691.P9617128781996083483

`A270689(char[1]+n)+a(n-1)` with `a(0)=1`
-/

namespace A270691.P9617128781996083483
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A270689 ((if ∃ j, f1 j = n then 1 else 0) + n) + a (n - 1)

end

end A270691.P9617128781996083483

/-! ## A270691.P17909257143091777189

`∑[∑[A270692(n)]-A270692(n)+1]`
-/

namespace A270691.P17909257143091777189
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270692 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A270692 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270691.P17909257143091777189

/-! ## A270691.P11389665035058798730

`a(n-1)+A270689(n)+A000038(n)` with `a(0)=1`
-/

namespace A270691.P11389665035058798730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A270689 n + A000038 n)

end

end A270691.P11389665035058798730

/-!
# A270692: First differences of number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 195", based on the 5-celled von Neumann neighborhood.

The programs for A270692, there is no canonical definition to state claims against.
-/

/-! ## A270692.P17660631298847289892

`Δ[A270689(n)]`
-/

namespace A270692.P17660631298847289892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270689 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A270692.P17660631298847289892

/-! ## A270692.P9198526260097156534

`A270689(n+1)-A270689(n)`
-/

namespace A270692.P9198526260097156534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270689 (n + 1) - A270689 n

end

end A270692.P9198526260097156534

/-! ## A270692.P8307550433050049901

`A270224(n)+A001591(A185254(n))`
-/

namespace A270692.P8307550433050049901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270224 n + A001591 (A185254 n).toNat

end

end A270692.P8307550433050049901

/-! ## A270692.P734571165283063459

`A324881(A147220(n+1))+A270224(n)`
-/

namespace A270692.P734571165283063459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324881 (A147220 (n + 1)).toNat + A270224 n

end

end A270692.P734571165283063459

/-! ## A270692.P459716939138218107

`A324881(A147220(n+1))+A270221(n+1)-A270221(n)`
-/

namespace A270692.P459716939138218107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324881 (A147220 (n + 1)).toNat + (A270221 (n + 1) - A270221 n)

end

end A270692.P459716939138218107

/-!
# A270693: Alternating sum of centered 25-gonal numbers.

The programs for A270693, the canonical program `A270693.P9336319168465847501` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A270693 has offset 0).

The definition of A270693 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A270693.P14931553960509097536

`∑[(∑[25*n]+1)/(-1)^n]`
-/

namespace A270693.P14931553960509097536
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  25 * n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j + 1 : ℕ) : ℚ) / ((-1) ^ n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270693.P14931553960509097536

namespace A270693

/-- `∑[(∑[25*n]+1)/(-1)^n]` -/
def P14931553960509097536.Spec : Prop :=
  ∀ n, P14931553960509097536.a n = (A270693 n : ℚ)

end A270693

/-! ## A270693.P9336319168465847501

`∑[A010015(n)*A033999(n)]+a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A270693

/-- `∑[A010015(n)*A033999(n)]+a(n-1)` -/
def P9336319168465847501.Spec : Prop :=
  ∀ n, P9336319168465847501.a n = A270693 n

theorem P9336319168465847501.correct : P9336319168465847501.Spec := by
  intro n
  simp only [A270693]

end A270693

/-! ## A270693.P1296516126307226881

`Δ[A062157(n)*A316725(n)]`
-/

namespace A270693.P1296516126307226881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 n * A316725 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A270693.P1296516126307226881

namespace A270693

/-- `Δ[A062157(n)*A316725(n)]` -/
def P1296516126307226881.Spec : Prop :=
  ∀ n, P1296516126307226881.a n = A270693 n

end A270693

/-! ## A270693.P4384061311949090642

`Δ[A033999(3*n+1)*A316725(n)]`
-/

namespace A270693.P4384061311949090642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (3 * n + 1) * A316725 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A270693.P4384061311949090642

namespace A270693

/-- `Δ[A033999(3*n+1)*A316725(n)]` -/
def P4384061311949090642.Spec : Prop :=
  ∀ n, P4384061311949090642.a n = A270693 n

end A270693

/-! ## A270693.P3121196397984609476

`Δ[A010892(3*n+4)*A316725(n)]`
-/

namespace A270693.P3121196397984609476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 (3 * n + 4) * A316725 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A270693.P3121196397984609476

namespace A270693

/-- `Δ[A010892(3*n+4)*A316725(n)]` -/
def P3121196397984609476.Spec : Prop :=
  ∀ n, P3121196397984609476.a n = A270693 n

end A270693

/-!
# A270694: Alternating sum of centered heptagonal pyramidal numbers.

The programs for A270694, the canonical program `A270694.P5641894345268994973` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A270694 has offset 0).

The definition of A270694 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A270694.P5641894345268994973

`((-1)^n*(2*n+1)*(14*n²+14*n-9)+9)/48`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A270694

/-- `((-1)^n*(2*n+1)*(14*n²+14*n-9)+9)/48` -/
def P5641894345268994973.Spec : Prop :=
  ∀ n, P5641894345268994973.a n = (A270694 n : ℚ)

end A270694

/-! ## A270694.P2986126895711423055

`∑[(-1)^n*A004126(n)]`
-/

namespace A270694.P2986126895711423055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A004126 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270694.P2986126895711423055

namespace A270694

/-- `∑[(-1)^n*A004126(n)]` -/
def P2986126895711423055.Spec : Prop :=
  ∀ n, P2986126895711423055.a n = A270694 n

end A270694

/-! ## A270694.P11884829545505413833

`∑[A004126(n)*A033999(n)]`
-/

namespace A270694.P11884829545505413833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004126 n * A033999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270694.P11884829545505413833

namespace A270694

/-- `∑[A004126(n)*A033999(n)]` -/
def P11884829545505413833.Spec : Prop :=
  ∀ n, P11884829545505413833.a n = A270694 n

end A270694

/-! ## A270694.P13979807510935239371

`∑[A195041(n)]*A033999(n)`
-/

namespace A270694.P13979807510935239371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195041 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A033999 n

end

end A270694.P13979807510935239371

namespace A270694

/-- `∑[A195041(n)]*A033999(n)` -/
def P13979807510935239371.Spec : Prop :=
  ∀ n, P13979807510935239371.a n = A270694 n

end A270694

/-! ## A270694.P9408025917549395949

`∑[A195041(n)]*A056594(2*n)`
-/

namespace A270694.P9408025917549395949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195041 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A056594 (2 * n)

end

end A270694.P9408025917549395949

namespace A270694

/-- `∑[A195041(n)]*A056594(2*n)` -/
def P9408025917549395949.Spec : Prop :=
  ∀ n, P9408025917549395949.a n = A270694 n

end A270694

/-! ## A270694.P1991008373198419118

`∑[A047291(A002522(n))]*A033999(n)`
-/

namespace A270694.P1991008373198419118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047291 (A002522 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A033999 n

end

end A270694.P1991008373198419118

namespace A270694

/-- `∑[A047291(A002522(n))]*A033999(n)` -/
def P1991008373198419118.Spec : Prop :=
  ∀ n, P1991008373198419118.a n = A270694 n

end A270694

/-!
# A270695: Alternating sum of centered octagonal pyramidal numbers.

The programs for A270695, the canonical program `A270695.P16862962495415364305` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A270695 has offset 0).

The definition of A270695 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A270695.P16862962495415364305

`((-1)^n*(4*n²-1)*(2*n+3)+3)/12`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A270695

/-- `((-1)^n*(4*n²-1)*(2*n+3)+3)/12` -/
def P16862962495415364305.Spec : Prop :=
  ∀ n, P16862962495415364305.a n = (A270695 n : ℚ)

end A270695

/-! ## A270695.P7597366814558868291

`(-1)^n*∑[∑[record[and(n, -6)]]-n]`
-/

namespace A270695.P7597366814558868291
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-6)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A270695.P7597366814558868291

namespace A270695

/-- `(-1)^n*∑[∑[record[and(n, -6)]]-n]` -/
def P7597366814558868291.Spec : Prop :=
  ∀ n, P7597366814558868291.a n = A270695 n

end A270695

/-! ## A270695.P311948198835961140

`(-1)^n*∑[2*n²-n%2]`
-/

namespace A270695.P311948198835961140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n ^ 2 : ℤ) - ((n % 2 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A270695.P311948198835961140

namespace A270695

/-- `(-1)^n*∑[2*n²-n%2]` -/
def P311948198835961140.Spec : Prop :=
  ∀ n, P311948198835961140.a n = A270695 n

end A270695

/-! ## A270695.P13562792025054625072

`∑[(-1)^n*A000447(n)]`
-/

namespace A270695.P13562792025054625072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A000447 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270695.P13562792025054625072

namespace A270695

/-- `∑[(-1)^n*A000447(n)]` -/
def P13562792025054625072.Spec : Prop :=
  ∀ n, P13562792025054625072.a n = A270695 n

end A270695

/-! ## A270695.P1561101120927747255

`(-1)^n*∑[A077221(n)]`
-/

namespace A270695.P1561101120927747255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077221 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A270695.P1561101120927747255

namespace A270695

/-- `(-1)^n*∑[A077221(n)]` -/
def P1561101120927747255.Spec : Prop :=
  ∀ n, P1561101120927747255.a n = A270695 n

end A270695

/-! ## A270695.P5265894378879967905

`∑[A077221(n)]*A033999(n)`
-/

namespace A270695.P5265894378879967905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077221 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A033999 n

end

end A270695.P5265894378879967905

namespace A270695

/-- `∑[A077221(n)]*A033999(n)` -/
def P5265894378879967905.Spec : Prop :=
  ∀ n, P5265894378879967905.a n = A270695 n

end A270695

/-! ## A270695.P1425332740965274164

`2*A270694(n)-A232599(n)`
-/

namespace A270695.P1425332740965274164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A270694 n - A232599 n

end

end A270695.P1425332740965274164

namespace A270695

/-- `2*A270694(n)-A232599(n)` -/
def P1425332740965274164.Spec : Prop :=
  ∀ n, P1425332740965274164.a n = A270695 n

end A270695

/-! ## A270695.P3158301417508378754

`∑[∑[A004273(n)²]*A033999(n)]`
-/

namespace A270695.P3158301417508378754
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) * A033999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270695.P3158301417508378754

namespace A270695

/-- `∑[∑[A004273(n)²]*A033999(n)]` -/
def P3158301417508378754.Spec : Prop :=
  ∀ n, P3158301417508378754.a n = A270695 n

end A270695

/-! ## A270695.P486192662911992725

`(A122046(2*n+1)+A122046(2*n))*A057077(2*n)`
-/

namespace A270695.P486192662911992725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A122046 (2 * n + 1) + A122046 (2 * n)) * A057077 (2 * n)

end

end A270695.P486192662911992725

namespace A270695

/-- `(A122046(2*n+1)+A122046(2*n))*A057077(2*n)` -/
def P486192662911992725.Spec : Prop :=
  ∀ n, P486192662911992725.a n = A270695 n

end A270695

/-! ## A270695.P6312390902991879672

`(A122046(2*n+1)+A122046(2*n))*A009531(2*n+1)`
-/

namespace A270695.P6312390902991879672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A122046 (2 * n + 1) + A122046 (2 * n)) * A009531 (2 * n + 1)

end

end A270695.P6312390902991879672

namespace A270695

/-- `(A122046(2*n+1)+A122046(2*n))*A009531(2*n+1)` -/
def P6312390902991879672.Spec : Prop :=
  ∀ n, P6312390902991879672.a n = A270695 n

end A270695

/-!
# A270696: Perfect powers that are the average of two consecutive primes.

The programs for A270696, there is no canonical definition to state claims against.
-/

/-! ## A270696.P17803566446426178980

`A000027(∪[A069495(n+1), A234240(n+1)])`
-/

namespace A270696.P17803566446426178980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069495 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234240 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A270696.P17803566446426178980

/-! ## A270696.P2621934750900433873

`∩[A001597(n+1), A162800(n)]`
-/

namespace A270696.P2621934750900433873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162800 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A270696.P2621934750900433873

/-! ## A270696.P12545434802589670838

`∩[A001597(n+1), A024675(n+1)]`
-/

namespace A270696.P12545434802589670838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024675 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A270696.P12545434802589670838

/-! ## A270696.P7994858683300968381

`∩[A002760(n+1), A024675(n+1)]`
-/

namespace A270696.P7994858683300968381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002760 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024675 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A270696.P7994858683300968381

/-!
# A270697: Composite numbers k == 3 (mod 4) such that (1 + i)^k == 1 - i (mod k), where i = sqrt(-1).

The programs for A270697, there is no canonical definition to state claims against.
-/

/-! ## A270697.P14122802679627354424

`∩[A001262(n+1), A177884(n+1)]`
-/

namespace A270697.P14122802679627354424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001262 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177884 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A270697.P14122802679627354424

/-! ## A270697.P666657674157112544

`A001262(eq[2, and(2, A001262(n+1))]+1)`
-/

namespace A270697.P666657674157112544
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 2 (A001262 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001262 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A270697.P666657674157112544

/-! ## A270697.P8124396231088908293

`∩[A177884(n+1), A288153(n+1)]`
-/

namespace A270697.P8124396231088908293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177884 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288153 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A270697.P8124396231088908293

/-! ## A270697.P17936840366046428117

`∩[A020234(n+1), A177884(n+1)]`
-/

namespace A270697.P17936840366046428117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020234 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177884 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A270697.P17936840366046428117

/-! ## A270697.P18434809336305087484

`∩[A047713(n+1), A177884(n+1)]`
-/

namespace A270697.P18434809336305087484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047713 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177884 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A270697.P18434809336305087484

/-! ## A270697.P6952251401557009210

`∩[A006970(n+1), A177884(n+1)]`
-/

namespace A270697.P6952251401557009210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006970 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177884 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A270697.P6952251401557009210

/-! ## A270697.P16465456086535740147

`∩[A177884(n+1), A262055(n+1)]`
-/

namespace A270697.P16465456086535740147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177884 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262055 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A270697.P16465456086535740147

/-! ## A270697.P17729988625731034525

`∩[A020258(n+1), A177884(n+1)]`
-/

namespace A270697.P17729988625731034525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020258 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177884 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A270697.P17729988625731034525

/-!
# A270698: Composite numbers k == 1 (mod 4) such that (1 + i)^k == 1 + i (mod k), where i = sqrt(-1).

The programs for A270698, there is no canonical definition to state claims against.
-/

/-! ## A270698.P8605685125216619926

`∩[A047713(n+1), A178723(n+1)]`
-/

namespace A270698.P8605685125216619926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047713 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178723 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A270698.P8605685125216619926

/-! ## A270698.P15774439004342985184

`filter[A047713(n+1), A373978(#)]`
-/

namespace A270698.P15774439004342985184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047713 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373978 (f1 j).toNat = 1) n)

end

end A270698.P15774439004342985184

/-! ## A270698.P6519203526134562498

`filter[A047713(n+1), A290098(#)]`
-/

namespace A270698.P6519203526134562498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047713 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A290098 (f1 j).toNat = 1) n)

end

end A270698.P6519203526134562498

/-! ## A270698.P3755705361785951447

`∩[A047713(n+1), A091113(n+1)]`
-/

namespace A270698.P3755705361785951447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047713 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091113 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A270698.P3755705361785951447

/-! ## A270698.P9637129399499365008

`record[gcd(A047713(n+1), A350899(n+1))]`
-/

namespace A270698.P9637129399499365008
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A047713 (n + 1)) (A350899 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270698.P9637129399499365008

/-!
# A270699: Integers n such that A084158(n) is divisible by n.

The programs for A270699, there is no canonical definition to state claims against.
-/

/-! ## A270699.P151601214948375756

`record[gcd(n+1, A084158(n+1))]`
-/

namespace A270699.P151601214948375756
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A084158 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270699.P151601214948375756

/-! ## A270699.P1130211338423174139

`record[gcd(A108475(n), A109613(n))]`
-/

namespace A270699.P1130211338423174139
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A108475 n) (A109613 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270699.P1130211338423174139

/-! ## A270699.P11438425919839204808

`record[gcd(n, (floor((sqrt(2)+1)^(2*n+1))+2)/4)]`
-/

namespace A270699.P11438425919839204808
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (SequenceMachineLib.roundAway ((⌊(Real.sqrt (2 : ℝ) + 1) ^ (2 * n + 1)⌋ + 2 : ℚ) / 4))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270699.P11438425919839204808

/-! ## A270699.P12350218467811521561

`record[A176246(A125260(n+1))]`
-/

namespace A270699.P12350218467811521561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176246 (A125260 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270699.P12350218467811521561

/-! ## A270699.P13769154259299522667

`∑[gcd(A154638(2*n+1), A359254(3*n+2))]`
-/

namespace A270699.P13769154259299522667
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A154638 (2 * n + 1)) (A359254 (3 * n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270699.P13769154259299522667

