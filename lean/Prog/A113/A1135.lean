import SequenceMachineLib
import Mathlib.Tactic
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
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C040
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
import Seq.B001.C011
import Seq.B001.C012
import Seq.B001.C013
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A113500: Maximum element in the continued fraction for F(5n+3)^5/F(5n+2)^5 where F=A000045 are Fibonacci numbers.

The programs for A113500, there is no canonical definition to state claims against.
-/

/-! ## A113500.P15132556381821926832

`A113506(5*n+2)`
-/

namespace A113500.P15132556381821926832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113506 (5 * n + 2)

end

end A113500.P15132556381821926832

/-! ## A113500.P3368715176996292579

`record[A113506(∑[gcd(2, n)]+n)]`
-/

namespace A113500.P3368715176996292579
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113506 (∑ j ∈ Finset.range (n + 1), f2 j + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A113500.P3368715176996292579

/-! ## A113500.P14712773515221608194

`record[A113506(∑[A316828(n+3)])]`
-/

namespace A113500.P14712773515221608194
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316828 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113506 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A113500.P14712773515221608194

/-!
# A113501: Indices of prime NSW numbers A088165.

The programs for A113501, there is no canonical definition to state claims against.
-/

/-! ## A113501.P17795162971343359335

`floor(p?[A099088(n+2)]/2)`
-/

namespace A113501.P17795162971343359335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099088 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / 2⌋

end

end A113501.P17795162971343359335

/-! ## A113501.P5791344131561084041

`floor(A005850(n+1)/2)`
-/

namespace A113501.P5791344131561084041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A005850 (n + 1) : ℚ) / 2⌋

end

end A113501.P5791344131561084041

/-! ## A113501.P6655455671758736974

`A014682(A005850(n+1)-1)`
-/

namespace A113501.P6655455671758736974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A005850 (n + 1) - 1).toNat

end

end A113501.P6655455671758736974

/-! ## A113501.P364312029914061354

`A273943(A005850(n+1)-1)`
-/

namespace A113501.P364312029914061354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A005850 (n + 1) - 1).toNat

end

end A113501.P364312029914061354

/-! ## A113501.P410459100085039033

`A000010(A005850(n+1))/A239374(n+2)`
-/

namespace A113501.P410459100085039033
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (A005850 (n + 1)).toNat : ℚ) / (A239374 (n + 2) : ℚ)

end

end A113501.P410459100085039033

/-!
# A113502: A number n is included if at least one of its divisors > 1 is a triangular number (i.e., is of the form m(m+1)/2, m >= 2).

The programs for A113502, the canonical program `A113502.P1834460873008757009` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A113502 has offset 1).

The definition of A113502 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A088723, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A113502.P1834460873008757009

`A088723(n+1)/2`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A113502

/-- `A088723(n+1)/2` -/
def P1834460873008757009.Spec : Prop :=
  ∀ n, P1834460873008757009.a n = (A113502 (n + 1) : ℚ)

end A113502

/-! ## A113502.P7450040534611455223

`lt[0, A325334(n)]`
-/

namespace A113502.P7450040534611455223
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325334 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A113502.P7450040534611455223

namespace A113502

/-- `lt[0, A325334(n)]` -/
def P7450040534611455223.Spec : Prop :=
  ∀ n, (P7450040534611455223.a n : ℤ) = A113502 (n + 1)

end A113502

/-! ## A113502.P5234387051392401519

`A275340(n+1)-1`
-/

namespace A113502.P5234387051392401519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275340 (n + 1) - 1

end

end A113502.P5234387051392401519

namespace A113502

/-- `A275340(n+1)-1` -/
def P5234387051392401519.Spec : Prop :=
  ∀ n, P5234387051392401519.a n = A113502 (n + 1)

end A113502

/-! ## A113502.P4753882315815168584

`eq[2, A000122(A325334(n)²)]`
-/

namespace A113502.P4753882315815168584
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (A325334 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A113502.P4753882315815168584

namespace A113502

/-- `eq[2, A000122(A325334(n)²)]` -/
def P4753882315815168584.Spec : Prop :=
  ∀ n, (P4753882315815168584.a n : ℤ) = A113502 (n + 1)

end A113502

/-! ## A113502.P5613512929067934196

`lt[1, A294334(n)]`
-/

namespace A113502.P5613512929067934196
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294334 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A113502.P5613512929067934196

namespace A113502

/-- `lt[1, A294334(n)]` -/
def P5613512929067934196.Spec : Prop :=
  ∀ n, (P5613512929067934196.a n : ℤ) = A113502 (n + 1)

end A113502

/-! ## A113502.P14772492273986868158

`lt[1, A007862(n+1)]+1`
-/

namespace A113502.P14772492273986868158
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007862 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A113502.P14772492273986868158

namespace A113502

/-- `lt[1, A007862(n+1)]+1` -/
def P14772492273986868158.Spec : Prop :=
  ∀ n, (P14772492273986868158.a n : ℤ) = A113502 (n + 1)

end A113502

/-! ## A113502.P11589754208675532712

`lt[1, A185027(n+1)]+1`
-/

namespace A113502.P11589754208675532712
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185027 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A113502.P11589754208675532712

namespace A113502

/-- `lt[1, A185027(n+1)]+1` -/
def P11589754208675532712.Spec : Prop :=
  ∀ n, (P11589754208675532712.a n : ℤ) = A113502 (n + 1)

end A113502

/-! ## A113502.P17526049676118403958

`eq[2*A000007(n), A000007(A325334(n))]`
-/

namespace A113502.P17526049676118403958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A325334 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A113502.P17526049676118403958

namespace A113502

/-- `eq[2*A000007(n), A000007(A325334(n))]` -/
def P17526049676118403958.Spec : Prop :=
  ∀ n, (P17526049676118403958.a n : ℤ) = A113502 (n + 1)

end A113502

/-! ## A113502.P1394844675751881920

`A023443(A275340(n+1))`
-/

namespace A113502.P1394844675751881920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A275340 (n + 1)).toNat

end

end A113502.P1394844675751881920

namespace A113502

/-- `A023443(A275340(n+1))` -/
def P1394844675751881920.Spec : Prop :=
  ∀ n, P1394844675751881920.a n = A113502 (n + 1)

end A113502

/-! ## A113502.P12448256232304148833

`lt[1, A133565(2*n+1)]`
-/

namespace A113502.P12448256232304148833
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133565 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A113502.P12448256232304148833

namespace A113502

/-- `lt[1, A133565(2*n+1)]` -/
def P12448256232304148833.Spec : Prop :=
  ∀ n, (P12448256232304148833.a n : ℤ) = A113502 (n + 1)

end A113502

/-! ## A113502.P11799739836079033679

`lt[1, A133565(n+1)]/2`
-/

namespace A113502.P11799739836079033679
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133565 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n : ℚ) / 2

end

end A113502.P11799739836079033679

namespace A113502

/-- `lt[1, A133565(n+1)]/2` -/
def P11799739836079033679.Spec : Prop :=
  ∀ n, P11799739836079033679.a n = (A113502 (n + 1) : ℚ)

end A113502

/-! ## A113502.P12109839510581865300

`A008619(A088723(n+1)-2)`
-/

namespace A113502.P12109839510581865300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A088723 (n + 1) - 2).toNat

end

end A113502.P12109839510581865300

namespace A113502

/-- `A008619(A088723(n+1)-2)` -/
def P12109839510581865300.Spec : Prop :=
  ∀ n, P12109839510581865300.a n = A113502 (n + 1)

end A113502

/-! ## A113502.P15323427554183007379

`lt[1, A129308(2*(n+1))]+1`
-/

namespace A113502.P15323427554183007379
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129308 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A113502.P15323427554183007379

namespace A113502

/-- `lt[1, A129308(2*(n+1))]+1` -/
def P15323427554183007379.Spec : Prop :=
  ∀ n, (P15323427554183007379.a n : ℤ) = A113502 (n + 1)

end A113502

/-! ## A113502.P1660606239568139228

`lt[2, A132747(2*(n+1))]+1`
-/

namespace A113502.P1660606239568139228
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132747 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A113502.P1660606239568139228

namespace A113502

/-- `lt[2, A132747(2*(n+1))]+1` -/
def P1660606239568139228.Spec : Prop :=
  ∀ n, (P1660606239568139228.a n : ℤ) = A113502 (n + 1)

end A113502

/-! ## A113502.P14607702624979069135

`lt[2, A195155(2*(n+1))]+1`
-/

namespace A113502.P14607702624979069135
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195155 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A113502.P14607702624979069135

namespace A113502

/-- `lt[2, A195155(2*(n+1))]+1` -/
def P14607702624979069135.Spec : Prop :=
  ∀ n, (P14607702624979069135.a n : ℤ) = A113502 (n + 1)

end A113502

/-! ## A113502.P17998293561898412084

`lt[1, A129308(n+2)]/2+1`
-/

namespace A113502.P17998293561898412084
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129308 (n + 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n : ℚ) / 2 + 1

end

end A113502.P17998293561898412084

namespace A113502

/-- `lt[1, A129308(n+2)]/2+1` -/
def P17998293561898412084.Spec : Prop :=
  ∀ n, P17998293561898412084.a n = (A113502 (n + 1) : ℚ)

end A113502

/-! ## A113502.P11411439147504670941

`A060681(A088723(n+1))`
-/

namespace A113502.P11411439147504670941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060681 (A088723 (n + 1)).toNat

end

end A113502.P11411439147504670941

namespace A113502

/-- `A060681(A088723(n+1))` -/
def P11411439147504670941.Spec : Prop :=
  ∀ n, P11411439147504670941.a n = A113502 (n + 1)

end A113502

/-! ## A113502.P13196028476856358688

`lt[1, A129308(A004277(n))]`
-/

namespace A113502.P13196028476856358688
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129308 (A004277 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A113502.P13196028476856358688

namespace A113502

/-- `lt[1, A129308(A004277(n))]` -/
def P13196028476856358688.Spec : Prop :=
  ∀ n, (P13196028476856358688.a n : ℤ) = A113502 (n + 1)

end A113502

/-! ## A113502.P7528279324273415818

`lt[1, A129308(A028310(2*n))]`
-/

namespace A113502.P7528279324273415818
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129308 (A028310 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A113502.P7528279324273415818

namespace A113502

/-- `lt[1, A129308(A028310(2*n))]` -/
def P7528279324273415818.Spec : Prop :=
  ∀ n, (P7528279324273415818.a n : ℤ) = A113502 (n + 1)

end A113502

/-! ## A113502.P17644645440272632872

`A001281(A088723(n+1)+2)-1`
-/

namespace A113502.P17644645440272632872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A088723 (n + 1) + 2).toNat - 1

end

end A113502.P17644645440272632872

namespace A113502

/-- `A001281(A088723(n+1)+2)-1` -/
def P17644645440272632872.Spec : Prop :=
  ∀ n, P17644645440272632872.a n = A113502 (n + 1)

end A113502

/-!
# A113503: a(1) = 1. For n >= 2, a(n) is the number of earlier terms of the sequence that have the same number of ones in their binary representations as n.

The programs for A113503, there is no canonical definition to state claims against.
-/

/-! ## A113503.P14368146802093114703

`round(A008612(4*n)/A093655(2*(n+2)))`
-/

namespace A113503.P14368146802093114703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A008612 (4 * n) : ℚ) / (A093655 (2 * (n + 2)) : ℚ))

end

end A113503.P14368146802093114703

/-! ## A113503.P8147906709779374473

`round(A005408(A002264(n))/A093655(2*(n+2)))`
-/

namespace A113503.P8147906709779374473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A005408 (A002264 n).toNat : ℚ) / (A093655 (2 * (n + 2)) : ℚ))

end

end A113503.P8147906709779374473

/-! ## A113503.P8290082252736381889

`floor((n+3)/A280984(A245565(n+1)+1))`
-/

namespace A113503.P8290082252736381889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 3 : ℚ) / (A280984 (A245565 (n + 1) + 1).toNat : ℚ)⌋

end

end A113503.P8290082252736381889

/-! ## A113503.P13864148544389261991

`val(A127975(n+3), A128001(A127973(2*n+1)))`
-/

namespace A113503.P13864148544389261991
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A127975 (n + 3)).toNat (A128001 (A127973 (2 * n + 1)).toNat).toNat

end

end A113503.P13864148544389261991

/-!
# A113504: a(0) = 1. For n >= 1, a(n) = number of earlier terms of the sequence that have the same number of ones in their binary representations as n.

The programs for A113504, there is no canonical definition to state claims against.
-/

/-! ## A113504.P5189068657745091361

`A000120(C(A061313(n+1), A056792(n))²)`
-/

namespace A113504.P5189068657745091361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (Nat.choose (A061313 (n + 1)).toNat (A056792 n).toNat ^ 2)

end

end A113504.P5189068657745091361

/-! ## A113504.P3148302860771981396

`round(A069571(n+1)/A101519(A001316(n)))`
-/

namespace A113504.P3148302860771981396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A069571 (n + 1) : ℚ) / (A101519 (A001316 n).toNat : ℚ))

end

end A113504.P3148302860771981396

/-! ## A113504.P14720143646742634077

`A006530(A005940(n+1))-A080342(A187829(n+1))`
-/

namespace A113504.P14720143646742634077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A005940 (n + 1)).toNat - A080342 (A187829 (n + 1)).toNat

end

end A113504.P14720143646742634077

/-! ## A113504.P1274038801178471367

`A325273(A086601(n))+A037861(n)`
-/

namespace A113504.P1274038801178471367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325273 (A086601 n).toNat + A037861 n

end

end A113504.P1274038801178471367

/-! ## A113504.P9312402887542197362

`A075962(A302492(n+2))%A057958(n+2)`
-/

namespace A113504.P9312402887542197362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A075962 (A302492 (n + 2)).toNat) (A057958 (n + 2))

end

end A113504.P9312402887542197362

/-!
# A113505: Numbers not the sum of at most three perfect powers (A001597).

The programs for A113505, there is no canonical definition to state claims against.
-/

/-! ## A113505.P4746809231086959077

`lt[3, A274459(abs(xor(n, -2)))]`
-/

namespace A113505.P4746809231086959077
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274459 |Int.xor (n : ℤ) (-2)|.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A113505.P4746809231086959077

/-! ## A113505.P13265868622125844170

`eq[4, A274459(n+1)]+1`
-/

namespace A113505.P13265868622125844170
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274459 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A113505.P13265868622125844170

/-! ## A113505.P6175278959697106394

`lt[3, A274459(-xor(n, C(n, n²)-2))]`
-/

namespace A113505.P6175278959697106394
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274459 (-Int.xor (n : ℤ) ((Nat.choose n (n ^ 2) : ℤ) - 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A113505.P6175278959697106394

/-! ## A113505.P15320710161266871432

`eq[A129667(n+1), A282499(n)]`
-/

namespace A113505.P15320710161266871432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129667 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282499 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A113505.P15320710161266871432

/-! ## A113505.P14965024021914866732

`eq[A266143(n+1), A282499(n)]`
-/

namespace A113505.P14965024021914866732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266143 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282499 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A113505.P14965024021914866732

/-!
# A113508: Pentagon-free numbers: numbers k such that no divisor of k is a pentagonal number > 1.

The programs for A113508, there is no canonical definition to state claims against.
-/

/-! ## A113508.P8732481782181414395

`eq[A083945(A287881(n+1)), A083945(n)]`
-/

namespace A113508.P8732481782181414395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083945 (A287881 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083945 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A113508.P8732481782181414395

/-! ## A113508.P10766551258126675626

`eq[A010122(n), A056059(A027642(n)+1)]`
-/

namespace A113508.P10766551258126675626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010122 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056059 (A027642 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A113508.P10766551258126675626

/-!
# A113510: Numbers k such that 29*k + 2 is prime.

The programs for A113510, there is no canonical definition to state claims against.
-/

/-! ## A113510.P5471477464084536181

`floor(A141978(n+1)/29)`
-/

namespace A113510.P5471477464084536181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A141978 (n + 1) : ℚ) / 29⌋

end

end A113510.P5471477464084536181

/-! ## A113510.P12391447941957406751

`floor(p?[29*n+2]/29)`
-/

namespace A113510.P12391447941957406751
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  29 * n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℚ) / 29⌋

end

end A113510.P12391447941957406751

/-! ## A113510.P8921833474766992917

`round(p?[29*n+2]/29)`
-/

namespace A113510.P8921833474766992917
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  29 * n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℚ) / 29)

end

end A113510.P8921833474766992917

/-! ## A113510.P15386290361882276314

`eq[1, A001221(29*n+2)]`
-/

namespace A113510.P15386290361882276314
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (29 * n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A113510.P15386290361882276314

/-! ## A113510.P12861767823646345533

`eq[1, A001222(29*n+2)]`
-/

namespace A113510.P12861767823646345533
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (29 * n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A113510.P12861767823646345533

/-! ## A113510.P5206295593690977054

`eq[2, A000005(29*n+2)]`
-/

namespace A113510.P5206295593690977054
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (29 * n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A113510.P5206295593690977054

/-! ## A113510.P15937195070644842959

`eq[29*n+2, A020639(29*n+2)]`
-/

namespace A113510.P15937195070644842959
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  29 * n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (29 * n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A113510.P15937195070644842959

/-! ## A113510.P15470773904244187293

`lt[A346089(2*(n+1)+27*n), 2]`
-/

namespace A113510.P15470773904244187293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346089 (2 * (n + 1) + 27 * n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A113510.P15470773904244187293

/-!
# A113511: Product of first A000217(n) = n(n+1)/2 primes.

The programs for A113511, the canonical program `A113511.P7287160080811230179` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A113511 has offset 0).

The definition of A113511 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A113511.P7287160080811230179

`A002110(A000217(n))`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A113511

/-- `A002110(A000217(n))` -/
def P7287160080811230179.Spec : Prop :=
  ∀ n, P7287160080811230179.a n = A113511 n

theorem P7287160080811230179.correct : P7287160080811230179.Spec := by
  intro n
  simp only [A113511]

end A113511

/-! ## A113511.P10109363731582183005

`A002110(∑[n])`
-/

namespace A113511.P10109363731582183005
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002110 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A113511.P10109363731582183005

namespace A113511

/-- `A002110(∑[n])` -/
def P10109363731582183005.Spec : Prop :=
  ∀ n, P10109363731582183005.a n = A113511 n

end A113511

/-! ## A113511.P1509885393094843043

`A006862(∑[n])-1`
-/

namespace A113511.P1509885393094843043
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006862 (∑ j ∈ Finset.range (n + 1), f1 j) - 1

end

end A113511.P1509885393094843043

namespace A113511

/-- `A006862(∑[n])-1` -/
def P1509885393094843043.Spec : Prop :=
  ∀ n, P1509885393094843043.a n = A113511 n

end A113511

/-! ## A113511.P2447780599206993620

`floor((A097250(∑[n])+1)/2)`
-/

namespace A113511.P2447780599206993620
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A097250 (∑ j ∈ Finset.range (n + 1), f1 j) + 1 : ℚ) / 2⌋

end

end A113511.P2447780599206993620

namespace A113511

/-- `floor((A097250(∑[n])+1)/2)` -/
def P2447780599206993620.Spec : Prop :=
  ∀ n, P2447780599206993620.a n = A113511 n

end A113511

/-! ## A113511.P7585423367368496389

`A096334(A002817(n))`
-/

namespace A113511.P7585423367368496389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096334 (A002817 n).toNat

end

end A113511.P7585423367368496389

namespace A113511

/-- `A096334(A002817(n))` -/
def P7585423367368496389.Spec : Prop :=
  ∀ n, P7585423367368496389.a n = A113511 n

end A113511

/-!
# A113512: Number of preceding primes or nonprimes whichever is greater.

The programs for A113512, there is no canonical definition to state claims against.
-/

/-! ## A113512.P15825935300947461224

`round(A102683(A028274(n+1))+n/2)`
-/

namespace A113512.P15825935300947461224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A102683 (A028274 (n + 1)).toNat : ℚ) + (n : ℚ) / 2)

end

end A113512.P15825935300947461224

/-! ## A113512.P13731532090850472815

`A102683(A028274(n+1))+∑[A000035(n)]`
-/

namespace A113512.P13731532090850472815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102683 (A028274 (n + 1)).toNat + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113512.P13731532090850472815

/-! ## A113512.P14734898429763536893

`A102683(A028274(n+1))+Δ[A002620(n)]`
-/

namespace A113512.P14734898429763536893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102683 (A028274 (n + 1)).toNat + (f1 (n + 1) - f1 n)

end

end A113512.P14734898429763536893

/-! ## A113512.P9061526958799423083

`A102683(A028274(n+1))+A004526(n+1)`
-/

namespace A113512.P9061526958799423083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102683 (A028274 (n + 1)).toNat + A004526 (n + 1)

end

end A113512.P9061526958799423083

/-! ## A113512.P18251849090217911150

`∑[A284935(∑[A073251(n+1)])]`
-/

namespace A113512.P18251849090217911150
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073251 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284935 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113512.P18251849090217911150

/-!
# A113515: If the name of the n-th Pope is Pope XXX the k-th, then the n-th term is k.

The programs for A113515, there is no canonical definition to state claims against.
-/

/-! ## A113515.P1716816258056652588

`A065941(and(A023141(n+1), A236829(n+6)))`
-/

namespace A113515.P1716816258056652588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065941 (Int.land (A023141 (n + 1)) (A236829 (n + 6))).toNat

end

end A113515.P1716816258056652588

/-! ## A113515.P14167995825674411773

`gcd(A008289(A024462(n)), A066099(2*n+3))`
-/

namespace A113515.P14167995825674411773
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008289 (A024462 n).toNat) (A066099 (2 * n + 3))

end

end A113515.P14167995825674411773

/-! ## A113515.P11281294372924428080

`gcd(A169808(n), A322494(A029618(n)))`
-/

namespace A113515.P11281294372924428080
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A169808 n) (A322494 (A029618 n).toNat)

end

end A113515.P11281294372924428080

/-! ## A113515.P11541997375497327491

`A179807(gcd(A133265(n), A350846(n)))`
-/

namespace A113515.P11541997375497327491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179807 (Int.gcd (A133265 n) (A350846 n))

end

end A113515.P11541997375497327491

/-! ## A113515.P1242022058963552896

`A355662(2*n+3)`
-/

namespace A113515.P1242022058963552896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355662 (2 * n + 3)

end

end A113515.P1242022058963552896

/-!
# A113519: Semiprimes in A056105.

The programs for A113519, there is no canonical definition to state claims against.
-/

/-! ## A113519.P7224150200634598722

`∩[A112393(n+1), A056105(n)]`
-/

namespace A113519.P7224150200634598722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112393 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056105 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A113519.P7224150200634598722

/-! ## A113519.P1961104833847494385

`∩[A112393(n+1), A397107(n)]`
-/

namespace A113519.P1961104833847494385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112393 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397107 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A113519.P1961104833847494385

/-! ## A113519.P12449645832243494544

`∩[A112393(n+1), A397990(n)]`
-/

namespace A113519.P12449645832243494544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112393 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397990 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A113519.P12449645832243494544

/-! ## A113519.P1450536624827526927

`∩[A112393(n+1), A000567(n)+1]`
-/

namespace A113519.P1450536624827526927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112393 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000567 n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A113519.P1450536624827526927

/-! ## A113519.P3329598803665995226

`∩[A112393(n+1), A130205(n+1)+1]`
-/

namespace A113519.P3329598803665995226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112393 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130205 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A113519.P3329598803665995226

/-! ## A113519.P4733569245080898237

`∩[A238377(2*n+1)-n, A112393(n+2)]`
-/

namespace A113519.P4733569245080898237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238377 (2 * n + 1) - (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112393 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A113519.P4733569245080898237

/-! ## A113519.P10979729605930932340

`∩[A112393(n+1), A056109(n)+1+n+n]`
-/

namespace A113519.P10979729605930932340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112393 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056109 n + 1 + (n : ℤ) + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A113519.P10979729605930932340

/-! ## A113519.P3571507283234323360

`A056105(eq[2, A001222(A056105(n))])`
-/

namespace A113519.P3571507283234323360
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A056105 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056105 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A113519.P3571507283234323360

/-! ## A113519.P3879263913930613128

`∩[A001358(n+1), A056105(n)]`
-/

namespace A113519.P3879263913930613128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056105 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A113519.P3879263913930613128

/-! ## A113519.P7909187561142248160

`∩[A001358(n+1), A397107(n)]`
-/

namespace A113519.P7909187561142248160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397107 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A113519.P7909187561142248160

/-!
# A113520: a(n) = largest nonprime nonnegative integer < n which is coprime to n.

The programs for A113520, the canonical program `A113520.P10089445824807879536` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A113520 has offset 1).

The definition of A113520 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 240 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A113520.P10089445824807879536

`A285788(∑[A048864(n+1)])%(n+1)`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A113520

/-- `A285788(∑[A048864(n+1)])%(n+1)` -/
def P10089445824807879536.Spec : Prop :=
  ∀ n, P10089445824807879536.a n = A113520 (n + 1)

theorem P10089445824807879536.correct : P10089445824807879536.Spec := by
  intro n
  simp only [A113520, Nat.add_sub_cancel]

end A113520

/-! ## A113520.P10469824690986541920

`A285788(∑[A048864(n+1)])-A000007(n)`
-/

namespace A113520.P10469824690986541920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048864 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285788 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - A000007 n

end

end A113520.P10469824690986541920

namespace A113520

/-- `A285788(∑[A048864(n+1)])-A000007(n)` -/
def P10469824690986541920.Spec : Prop :=
  ∀ n, P10469824690986541920.a n = A113520 (n + 1)

end A113520

/-! ## A113520.P11400065343118543127

`A057427(n)*A285788(∑[A048864(n+1)])`
-/

namespace A113520.P11400065343118543127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048864 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A285788 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A113520.P11400065343118543127

namespace A113520

/-- `A057427(n)*A285788(∑[A048864(n+1)])` -/
def P11400065343118543127.Spec : Prop :=
  ∀ n, P11400065343118543127.a n = A113520 (n + 1)

end A113520

/-! ## A113520.P11356967796666144129

`and(A057428(n), A285788(∑[A048864(n+1)]))`
-/

namespace A113520.P11356967796666144129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048864 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A057428 n) (A285788 (∑ j ∈ Finset.range (n + 1), f1 j).toNat)

end

end A113520.P11356967796666144129

namespace A113520

/-- `and(A057428(n), A285788(∑[A048864(n+1)]))` -/
def P11356967796666144129.Spec : Prop :=
  ∀ n, P11356967796666144129.a n = A113520 (n + 1)

end A113520

/-! ## A113520.P6716592893090345453

`A134824(n)²*A285788(∑[A048864(n+1)])`
-/

namespace A113520.P6716592893090345453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048864 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134824 n ^ 2 * A285788 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A113520.P6716592893090345453

namespace A113520

/-- `A134824(n)²*A285788(∑[A048864(n+1)])` -/
def P6716592893090345453.Spec : Prop :=
  ∀ n, P6716592893090345453.a n = A113520 (n + 1)

end A113520

/-! ## A113520.P8916707854567082844

`A178334(A246277(n+1))*A285788(∑[A048864(n+1)])`
-/

namespace A113520.P8916707854567082844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048864 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 (A246277 (n + 1)).toNat * A285788 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A113520.P8916707854567082844

namespace A113520

/-- `A178334(A246277(n+1))*A285788(∑[A048864(n+1)])` -/
def P8916707854567082844.Spec : Prop :=
  ∀ n, P8916707854567082844.a n = A113520 (n + 1)

end A113520

/-! ## A113520.P240263506466055291

`A178334(A178334(2*n))*A285788(∑[A048864(n+1)])`
-/

namespace A113520.P240263506466055291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048864 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 (A178334 (2 * n)).toNat * A285788 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A113520.P240263506466055291

namespace A113520

/-- `A178334(A178334(2*n))*A285788(∑[A048864(n+1)])` -/
def P240263506466055291.Spec : Prop :=
  ∀ n, P240263506466055291.a n = A113520 (n + 1)

end A113520

/-! ## A113520.P14916206286707404959

`A285788(∑[A048864(n+1)])*A342507(A048896(2*n))`
-/

namespace A113520.P14916206286707404959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048864 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285788 (∑ j ∈ Finset.range (n + 1), f1 j).toNat * A342507 (A048896 (2 * n)).toNat

end

end A113520.P14916206286707404959

namespace A113520

/-- `A285788(∑[A048864(n+1)])*A342507(A048896(2*n))` -/
def P14916206286707404959.Spec : Prop :=
  ∀ n, P14916206286707404959.a n = A113520 (n + 1)

end A113520

/-! ## A113520.P14255448138569320901

`A285788(∑[A048864(n+1)])+A008683(2*(n+1)²)`
-/

namespace A113520.P14255448138569320901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048864 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285788 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + A008683 (2 * (n + 1) ^ 2)

end

end A113520.P14255448138569320901

namespace A113520

/-- `A285788(∑[A048864(n+1)])+A008683(2*(n+1)²)` -/
def P14255448138569320901.Spec : Prop :=
  ∀ n, P14255448138569320901.a n = A113520 (n + 1)

end A113520

/-!
# A113521: a(n) = largest nonprime nonnegative integer < c(n) which is coprime to c(n), where c(n) is the n-th composite positive integer.

The programs for A113521, the canonical program `A113521.P3809801254930279300` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A113521 has offset 1).

The definition of A113521 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 970 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A113521.P3809801254930279300

`A113520(A002808(n+1))`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A113521

/-- `A113520(A002808(n+1))` -/
def P3809801254930279300.Spec : Prop :=
  ∀ n, P3809801254930279300.a n = A113521 (n + 1)

theorem P3809801254930279300.correct : P3809801254930279300.Spec := by
  intro n
  simp only [A113521, Nat.add_sub_cancel]

end A113521

/-! ## A113521.P2528483222282821397

`A113520(A018252(n+2))`
-/

namespace A113521.P2528483222282821397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113520 (A018252 (n + 2)).toNat

end

end A113521.P2528483222282821397

namespace A113521

/-- `A113520(A018252(n+2))` -/
def P2528483222282821397.Spec : Prop :=
  ∀ n, P2528483222282821397.a n = A113521 (n + 1)

end A113521

/-! ## A113521.P15335273641544124037

`A113520(record[A113520(n+5)])`
-/

namespace A113521.P15335273641544124037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113520 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113520 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A113521.P15335273641544124037

namespace A113521

/-- `A113520(record[A113520(n+5)])` -/
def P15335273641544124037.Spec : Prop :=
  ∀ n, P15335273641544124037.a n = A113521 (n + 1)

end A113521

/-! ## A113521.P5053987157311320826

`A113520(A072668(n+1)+1)`
-/

namespace A113521.P5053987157311320826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113520 (A072668 (n + 1) + 1).toNat

end

end A113521.P5053987157311320826

namespace A113521

/-- `A113520(A072668(n+1)+1)` -/
def P5053987157311320826.Spec : Prop :=
  ∀ n, P5053987157311320826.a n = A113521 (n + 1)

theorem P5053987157311320826.correct : P5053987157311320826.Spec := by
  intro n
  simp only [A113521, Nat.add_sub_cancel, A113521.P5053987157311320826.a, A113521.P3809801254930279300.a, A002808, A002808.P568819275912777150.f1, A002808.P568819275912777150.f2, A002808.P568819275912777150.a, A072668, A072668.P5648318357023435289.a, A113520, A113520.P10089445824807879536.f1, A113520.P10089445824807879536.a, A000005, A000005.P16091521709108585461.a, A048864, A048864.P16915682539637834600.a, A285788, A285788.P13809897660344118351.f1, A285788.P13809897660344118351.a, A005171, A005171.P15860856746370777121.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, A036997, A036997.P9898190539809888575.a, A038566, A038566.P5775218228113679093.a, A001221, A001221.P14816172234621668833.f1, A001221.P14816172234621668833.a, A002260, A002260.P9170571874073898642.a, A010051, A010051.P2964579406648181973.f1, A010051.P2964579406648181973.a, A037228, A037228.P4220557198165153324.a, A169581, A169581.P5880074655837136645.f1, A169581.P5880074655837136645.f2, A169581.P5880074655837136645.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A113521

/-! ## A113521.P115158384235859675

`A113520(A060462(n+2)+1)`
-/

namespace A113521.P115158384235859675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113520 (A060462 (n + 2) + 1).toNat

end

end A113521.P115158384235859675

namespace A113521

/-- `A113520(A060462(n+2)+1)` -/
def P115158384235859675.Spec : Prop :=
  ∀ n, P115158384235859675.a n = A113521 (n + 1)

end A113521

/-!
# A113522: Divisors of 10^18 - 1.

The programs for A113522, there is no canonical definition to state claims against.
-/

/-! ## A113522.P1650900733541691418

`A324695(lt[0, ∏{digits}[n, #]])%A187550(n+4)`
-/

namespace A113522.P1650900733541691418
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f3 n)).map fun (x : ℕ) => x).prod

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A324695 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)) (A187550 (n + 4 + 65))

end

end A113522.P1650900733541691418

/-! ## A113522.P12516620332236417589

`A324695(comp[A009101(n)])%A187550(n+4)`
-/

namespace A113522.P12516620332236417589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009101 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A324695 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)) (A187550 (n + 4 + 65))

end

end A113522.P12516620332236417589

/-! ## A113522.P10093771273819243314

`A324695(lt[0, A054054(n)])%A187550(n+4)`
-/

namespace A113522.P10093771273819243314
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054054 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A324695 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)) (A187550 (n + 4 + 65))

end

end A113522.P10093771273819243314

/-! ## A113522.P18271409052393315248

`A324695(A106000(n+1))`
-/

namespace A113522.P18271409052393315248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324695 (A106000 (n + 1)).toNat

end

end A113522.P18271409052393315248

/-! ## A113522.P16938870448410632414

`A324695(A064704(n+1))`
-/

namespace A113522.P16938870448410632414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324695 (A064704 (n + 1)).toNat

end

end A113522.P16938870448410632414

/-!
# A113523: a(n) = largest composite nonnegative integer <= n.

The programs for A113523, the canonical program `A113523.P10057498902693183324` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A113523 has offset 1).

The definition of A113523 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A113523.P10057498902693183324

`gcd(n+1, C(5, n²))-∑{e}[n+1, #]!%2`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A113523

/-- `gcd(n+1, C(5, n²))-∑{e}[n+1, #]!%2` -/
def P10057498902693183324.Spec : Prop :=
  ∀ n, P10057498902693183324.a n = A113523 (n + 1)

theorem P10057498902693183324.correct : P10057498902693183324.Spec := by
  intro n
  simp only [A113523, Nat.add_sub_cancel]

end A113523

/-! ## A113523.P509928803743281082

`n+2-C(2, ∑{e}[n+1, #])!-C(2, C(n, 2))`
-/

namespace A113523.P509928803743281082
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) - (Nat.factorial (Nat.choose 2 (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)) : ℤ) - (Nat.choose 2 (Nat.choose n 2) : ℤ)

end

end A113523.P509928803743281082

namespace A113523

/-- `n+2-C(2, ∑{e}[n+1, #])!-C(2, C(n, 2))` -/
def P509928803743281082.Spec : Prop :=
  ∀ n, P509928803743281082.a n = A113523 (n + 1)

end A113523

/-! ## A113523.P17743106903683264877

`(∑{p}[n+1, C(#, n)]+1+n)%gcd(n+2, C(8, n²))`
-/

namespace A113523.P17743106903683264877
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ p ∈ Nat.primeFactors (f1 n), Nat.choose p n + 1 + n) % Nat.gcd (n + 2) (Nat.choose 8 (n ^ 2))

end

end A113523.P17743106903683264877

namespace A113523

/-- `(∑{p}[n+1, C(#, n)]+1+n)%gcd(n+2, C(8, n²))` -/
def P17743106903683264877.Spec : Prop :=
  ∀ n, (P17743106903683264877.a n : ℤ) = A113523 (n + 1)

end A113523

/-! ## A113523.P16416636524381368507

`A179278(n+1)%(n²-(n+1))`
-/

namespace A113523.P16416636524381368507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A179278 (n + 1)) ((n ^ 2 : ℤ) - (n + 1 : ℤ))

end

end A113523.P16416636524381368507

namespace A113523

/-- `A179278(n+1)%(n²-(n+1))` -/
def P16416636524381368507.Spec : Prop :=
  ∀ n, P16416636524381368507.a n = A113523 (n + 1)

end A113523

/-! ## A113523.P9117200359499000232

`(A005171(n+1)+n)%(n²-(n+1))`
-/

namespace A113523.P9117200359499000232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005171 (n + 1) + (n : ℤ)) ((n ^ 2 : ℤ) - (n + 1 : ℤ))

end

end A113523.P9117200359499000232

namespace A113523

/-- `(A005171(n+1)+n)%(n²-(n+1))` -/
def P9117200359499000232.Spec : Prop :=
  ∀ n, P9117200359499000232.a n = A113523 (n + 1)

end A113523

/-! ## A113523.P13673884877392869220

`n+1-floor(A006530(n+1)/floor(sqrt(n+1))²)`
-/

namespace A113523.P13673884877392869220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - ⌊(A006530 (n + 1) : ℚ) / (Nat.sqrt (n + 1) ^ 2 : ℚ)⌋

end

end A113523.P13673884877392869220

namespace A113523

/-- `n+1-floor(A006530(n+1)/floor(sqrt(n+1))²)` -/
def P13673884877392869220.Spec : Prop :=
  ∀ n, P13673884877392869220.a n = A113523 (n + 1)

end A113523

/-! ## A113523.P18435572469117028230

`A014684(n+1)-A130779(n)`
-/

namespace A113523.P18435572469117028230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014684 (n + 1) - A130779 n

end

end A113523.P18435572469117028230

namespace A113523

/-- `A014684(n+1)-A130779(n)` -/
def P18435572469117028230.Spec : Prop :=
  ∀ n, P18435572469117028230.a n = A113523 (n + 1)

end A113523

/-! ## A113523.P14577035412840183787

`A179278(n+1)-A130716(n)`
-/

namespace A113523.P14577035412840183787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179278 (n + 1) - A130716 n

end

end A113523.P14577035412840183787

namespace A113523

/-- `A179278(n+1)-A130716(n)` -/
def P14577035412840183787.Spec : Prop :=
  ∀ n, P14577035412840183787.a n = A113523 (n + 1)

end A113523

/-! ## A113523.P6924522392174689530

`A066560(n+1)%A057544(n)`
-/

namespace A113523.P6924522392174689530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A066560 (n + 1)) (A057544 n)

end

end A113523.P6924522392174689530

namespace A113523

/-- `A066560(n+1)%A057544(n)` -/
def P6924522392174689530.Spec : Prop :=
  ∀ n, P6924522392174689530.a n = A113523 (n + 1)

end A113523

/-! ## A113523.P2271293687964562444

`A143545(n+1)%A057544(n)`
-/

namespace A113523.P2271293687964562444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A143545 (n + 1)) (A057544 n)

end

end A113523.P2271293687964562444

namespace A113523

/-- `A143545(n+1)%A057544(n)` -/
def P2271293687964562444.Spec : Prop :=
  ∀ n, P2271293687964562444.a n = A113523 (n + 1)

end A113523

/-! ## A113523.P12032154737009356636

`A171526(n+1)-A080339(n+1)`
-/

namespace A113523.P12032154737009356636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171526 (n + 1) - A080339 (n + 1)

end

end A113523.P12032154737009356636

namespace A113523

/-- `A171526(n+1)-A080339(n+1)` -/
def P12032154737009356636.Spec : Prop :=
  ∀ n, P12032154737009356636.a n = A113523 (n + 1)

end A113523

/-! ## A113523.P18357793230614348916

`comp[A113646(n+1)+n-1]-n`
-/

namespace A113523.P18357793230614348916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113646 (n + 1) + ((n : ℤ) - 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A113523.P18357793230614348916

namespace A113523

/-- `comp[A113646(n+1)+n-1]-n` -/
def P18357793230614348916.Spec : Prop :=
  ∀ n, P18357793230614348916.a n = A113523 (n + 1)

end A113523

/-! ## A113523.P18045851184109867321

`floor(atan(∑{e}[n+1, #]))+n%A069916(n)`
-/

namespace A113523.P18045851184109867321
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.arctan ((∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℝ)⌋ + Int.tmod (n : ℤ) (A069916 n)

end

end A113523.P18045851184109867321

namespace A113523

/-- `floor(atan(∑{e}[n+1, #]))+n%A069916(n)` -/
def P18045851184109867321.Spec : Prop :=
  ∀ n, P18045851184109867321.a n = A113523 (n + 1)

end A113523

/-! ## A113523.P16322060034584010682

`A014684(n+1)%A050344(n)`
-/

namespace A113523.P16322060034584010682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A014684 (n + 1)) (A050344 n)

end

end A113523.P16322060034584010682

namespace A113523

/-- `A014684(n+1)%A050344(n)` -/
def P16322060034584010682.Spec : Prop :=
  ∀ n, P16322060034584010682.a n = A113523 (n + 1)

end A113523

/-! ## A113523.P900194124761396651

`and(A089226(n+1), A179278(n+1))`
-/

namespace A113523.P900194124761396651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A089226 (n + 1)) (A179278 (n + 1))

end

end A113523.P900194124761396651

namespace A113523

/-- `and(A089226(n+1), A179278(n+1))` -/
def P900194124761396651.Spec : Prop :=
  ∀ n, P900194124761396651.a n = A113523 (n + 1)

end A113523

/-! ## A113523.P233537095145014540

`and(A014684(n+1), A070050(n+1))`
-/

namespace A113523.P233537095145014540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A014684 (n + 1)) (A070050 (n + 1))

end

end A113523.P233537095145014540

namespace A113523

/-- `and(A014684(n+1), A070050(n+1))` -/
def P233537095145014540.Spec : Prop :=
  ∀ n, P233537095145014540.a n = A113523 (n + 1)

end A113523

/-! ## A113523.P14631781619180096398

`and(A102029(n+1), A179278(n+1))`
-/

namespace A113523.P14631781619180096398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A102029 (n + 1)) (A179278 (n + 1))

end

end A113523.P14631781619180096398

namespace A113523

/-- `and(A102029(n+1), A179278(n+1))` -/
def P14631781619180096398.Spec : Prop :=
  ∀ n, P14631781619180096398.a n = A113523 (n + 1)

end A113523

/-!
# A113524: Semiprimes in A056106.

The programs for A113524, there is no canonical definition to state claims against.
-/

/-! ## A113524.P1941243874483880275

`filter[A056106(n+1), A359828(#)]`
-/

namespace A113524.P1941243874483880275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056106 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359828 (f1 j).toNat = 1) n)

end

end A113524.P1941243874483880275

/-! ## A113524.P17284734791379451373

`filter[A263807(2*n+1), A359828(#)]`
-/

namespace A113524.P17284734791379451373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263807 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359828 (f1 j).toNat = 1) n)

end

end A113524.P17284734791379451373

/-! ## A113524.P12438528947082001965

`A056106(eq[2, A001222(A056106(n))])`
-/

namespace A113524.P12438528947082001965
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A056106 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056106 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A113524.P12438528947082001965

/-! ## A113524.P8784856958884046121

`∩[A001358(n+1), A056106(n)]`
-/

namespace A113524.P8784856958884046121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056106 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A113524.P8784856958884046121

/-! ## A113524.P5666714154662892781

`filter[A056106(n), A064911(#)]`
-/

namespace A113524.P5666714154662892781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056106 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A113524.P5666714154662892781

/-! ## A113524.P6047512466436498179

`filter[A056106(n), A353480(#)]`
-/

namespace A113524.P6047512466436498179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056106 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353480 (f1 j).toNat = 1) n)

end

end A113524.P6047512466436498179

/-! ## A113524.P4271762460642743933

`filter[A329482(2*n), A064911(#)]`
-/

namespace A113524.P4271762460642743933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329482 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A113524.P4271762460642743933

/-! ## A113524.P16344929552553636828

`filter[A329482(2*n), A353480(#)]`
-/

namespace A113524.P16344929552553636828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329482 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353480 (f1 j).toNat = 1) n)

end

end A113524.P16344929552553636828

/-! ## A113524.P5343180878765683121

`filter[A263807(2*n+1), A064911(#)]`
-/

namespace A113524.P5343180878765683121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263807 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A113524.P5343180878765683121

/-! ## A113524.P14410883480353932135

`filter[A263807(2*n+1), A353480(#)]`
-/

namespace A113524.P14410883480353932135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263807 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353480 (f1 j).toNat = 1) n)

end

end A113524.P14410883480353932135

/-!
# A113525: Semiprimes in A056107.

The programs for A113525, there is no canonical definition to state claims against.
-/

/-! ## A113525.P5665683379768156632

`∩[A230834(n+1), A056107(n)]`
-/

namespace A113525.P5665683379768156632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230834 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056107 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A113525.P5665683379768156632

/-! ## A113525.P14157561104277964635

`∩[A230834(n+1), A084684(n)]`
-/

namespace A113525.P14157561104277964635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230834 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084684 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A113525.P14157561104277964635

/-! ## A113525.P17254928878266692585

`∩[A230834(n+1), A077043(n)+1]`
-/

namespace A113525.P17254928878266692585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230834 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077043 n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A113525.P17254928878266692585

/-! ## A113525.P12257325413087557574

`∩[A230834(n+1), A354673(n+1)]`
-/

namespace A113525.P12257325413087557574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230834 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354673 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A113525.P12257325413087557574

/-! ## A113525.P838441740030098075

`A056107(eq[2, A001222(A056107(n))])`
-/

namespace A113525.P838441740030098075
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A056107 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056107 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A113525.P838441740030098075

/-!
# A113526: Define the first two terms to be 1 and 3. All the other terms are obtained by concatenating the two previous terms.

The programs for A113526, there is no canonical definition to state claims against.
-/

/-! ## A113526.P3606433297378882963

`2*A008352(n)-A108047(n+1)`
-/

namespace A113526.P3606433297378882963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008352 n - A108047 (n + 1)

end

end A113526.P3606433297378882963

/-! ## A113526.P5839489012884049811

`2*A008352(n)-A131293(n+1)`
-/

namespace A113526.P5839489012884049811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008352 n - A131293 (n + 1)

end

end A113526.P5839489012884049811

/-! ## A113526.P16426101443223520355

`3*A008352(n)-A104458(n+1)`
-/

namespace A113526.P16426101443223520355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A008352 n - A104458 (n + 1)

end

end A113526.P16426101443223520355

/-! ## A113526.P10350911544667003239

`2*(A104458(n+1)-A108047(n+1))-A108047(n+1)`
-/

namespace A113526.P10350911544667003239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A104458 (n + 1) - A108047 (n + 1)) - A108047 (n + 1)

end

end A113526.P10350911544667003239

/-! ## A113526.P5354950239727105712

`2*(A104458(n+1)+A061107(n)-A008351(n+1))-A131293(n+1)`
-/

namespace A113526.P5354950239727105712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A104458 (n + 1) + (A061107 n - A008351 (n + 1))) - A131293 (n + 1)

end

end A113526.P5354950239727105712

/-!
# A113527: Semiprimes in A056108.

The programs for A113527, there is no canonical definition to state claims against.
-/

/-! ## A113527.P3954807216330469369

`filter[A056108(n+1), A354927(#)]`
-/

namespace A113527.P3954807216330469369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056108 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354927 (f1 j).toNat = 1) n)

end

end A113527.P3954807216330469369

/-! ## A113527.P9911030377460459430

`filter[A056108(n+1), A359828(#)]`
-/

namespace A113527.P9911030377460459430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056108 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359828 (f1 j).toNat = 1) n)

end

end A113527.P9911030377460459430

/-! ## A113527.P7335764842369000971

`A056108(eq[2, A001222(A056108(n))])`
-/

namespace A113527.P7335764842369000971
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A056108 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056108 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A113527.P7335764842369000971

/-! ## A113527.P5959981873302037865

`A056108(eq[4, A000005(A056108(n))])`
-/

namespace A113527.P5959981873302037865
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A056108 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056108 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A113527.P5959981873302037865

/-! ## A113527.P2055247610550631255

`∩[A001358(n+1), A056108(n)]`
-/

namespace A113527.P2055247610550631255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056108 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A113527.P2055247610550631255

/-!
# A113528: Semiprimes in A056109.

The programs for A113528, there is no canonical definition to state claims against.
-/

/-! ## A113528.P8565122763584595411

`A056109(A122488(n+1))`
-/

namespace A113528.P8565122763584595411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056109 (A122488 (n + 1)).toNat

end

end A113528.P8565122763584595411

/-! ## A113528.P18089260460893179067

`A238377(2*A122488(n+1))`
-/

namespace A113528.P18089260460893179067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238377 (2 * A122488 (n + 1)).toNat

end

end A113528.P18089260460893179067

/-! ## A113528.P11305577976767602505

`A257083(2*A122488(n+1))`
-/

namespace A113528.P11305577976767602505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257083 (2 * A122488 (n + 1)).toNat

end

end A113528.P11305577976767602505

/-! ## A113528.P14685370851301997766

`A087483(3*A122488(n+1))`
-/

namespace A113528.P14685370851301997766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087483 (3 * A122488 (n + 1)).toNat

end

end A113528.P14685370851301997766

/-! ## A113528.P11355424897127412562

`∩[A112393(n+1), A056109(n)]`
-/

namespace A113528.P11355424897127412562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112393 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056109 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A113528.P11355424897127412562

/-! ## A113528.P4486478776126596136

`∩[A112393(n+1), A238377(n)]`
-/

namespace A113528.P4486478776126596136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112393 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238377 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A113528.P4486478776126596136

/-! ## A113528.P14865732902188771069

`∩[A112393(n+1), A263807(n)]`
-/

namespace A113528.P14865732902188771069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112393 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263807 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A113528.P14865732902188771069

/-! ## A113528.P11897216511023175786

`∩[A112393(n+1), A397108(n)]`
-/

namespace A113528.P11897216511023175786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112393 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397108 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A113528.P11897216511023175786

/-! ## A113528.P3743891754104861393

`∩[A112393(n+1), A130205(n+1)]`
-/

namespace A113528.P3743891754104861393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112393 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130205 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A113528.P3743891754104861393

/-! ## A113528.P4377832686608056655

`∩[A112393(n+1), A378788(n+1)]`
-/

namespace A113528.P4377832686608056655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112393 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378788 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A113528.P4377832686608056655

/-!
# A113529: Opus numbers skipped over by Carl Nielsen.

The programs for A113529, there is no canonical definition to state claims against.
-/

/-! ## A113529.P14903722588708621461

`lt[A088060(A083368(n+1)), A094570(n)]`
-/

namespace A113529.P14903722588708621461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088060 (A083368 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094570 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A113529.P14903722588708621461

/-! ## A113529.P7369695820076820776

`lt[A126005(A232559(n+1)), A125964(n+1)]`
-/

namespace A113529.P7369695820076820776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126005 (A232559 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125964 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A113529.P7369695820076820776

/-! ## A113529.P1806156282422147068

`lt[A069462(A307782(n+1)), A288315(n+1)]`
-/

namespace A113529.P1806156282422147068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069462 (A307782 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288315 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A113529.P1806156282422147068

/-! ## A113529.P1122036714641409818

`lt[A166913(A356301(n+1)), A071865(n+5)]`
-/

namespace A113529.P1122036714641409818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166913 (A356301 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071865 (n + 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A113529.P1122036714641409818

/-!
# A113530: Semiprimes in A003215.

The programs for A113530, there is no canonical definition to state claims against.
-/

/-! ## A113530.P3258178349335941141

`∩[A085367(n+1), A003215(n)]`
-/

namespace A113530.P3258178349335941141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085367 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003215 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A113530.P3258178349335941141

/-! ## A113530.P9636182847926486113

`∩[A085367(n+1), A077043(n)]`
-/

namespace A113530.P9636182847926486113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085367 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077043 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A113530.P9636182847926486113

/-! ## A113530.P14731707700090762641

`∩[A085367(n+1), A354343(n)]`
-/

namespace A113530.P14731707700090762641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085367 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354343 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A113530.P14731707700090762641

/-! ## A113530.P9406363997313169248

`∩[A085367(n+1), A159961(n+1)]`
-/

namespace A113530.P9406363997313169248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085367 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159961 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A113530.P9406363997313169248

/-! ## A113530.P14140764443556655195

`∩[A085367(n+1), A298125(n+1)]`
-/

namespace A113530.P14140764443556655195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085367 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298125 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A113530.P14140764443556655195

/-! ## A113530.P9737272045060762851

`∩[A085367(n+1), A309805(n+1)]`
-/

namespace A113530.P9737272045060762851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085367 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309805 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A113530.P9737272045060762851

/-! ## A113530.P14505273631318110071

`∩[A213389(2*n+1)-A213389(2*n), A085367(n+2)]`
-/

namespace A113530.P14505273631318110071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213389 (2 * n + 1) - A213389 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085367 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A113530.P14505273631318110071

/-! ## A113530.P15150077034130183457

`∩[A085367(n+1), A092094(n+4)]`
-/

namespace A113530.P15150077034130183457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085367 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092094 (n + 4)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A113530.P15150077034130183457

/-! ## A113530.P5848498950024051438

`∩[A085367(n+1), A007980(n)]`
-/

namespace A113530.P5848498950024051438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085367 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007980 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A113530.P5848498950024051438

/-! ## A113530.P13817998608596494809

`∩[A085367(n+1), A389430(n)]`
-/

namespace A113530.P13817998608596494809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085367 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389430 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A113530.P13817998608596494809

/-! ## A113530.P14952841766568380434

`∩[A085367(n+1), A352243(n+1)]`
-/

namespace A113530.P14952841766568380434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085367 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352243 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A113530.P14952841766568380434

/-! ## A113530.P6997952313360814929

`∩[A108164(n+1), A003215(n)]`
-/

namespace A113530.P6997952313360814929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108164 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003215 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A113530.P6997952313360814929

/-! ## A113530.P15987026330972190537

`∩[A108164(n+1), A007980(n)]`
-/

namespace A113530.P15987026330972190537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108164 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007980 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A113530.P15987026330972190537

/-! ## A113530.P15877033352028490339

`∩[A108164(n+1), A077043(n)]`
-/

namespace A113530.P15877033352028490339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108164 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077043 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A113530.P15877033352028490339

/-! ## A113530.P14368402444754895694

`∩[A108164(n+1), A354343(n)]`
-/

namespace A113530.P14368402444754895694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108164 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354343 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A113530.P14368402444754895694

/-! ## A113530.P17328746951769570160

`∩[A108164(n+1), A389430(n)]`
-/

namespace A113530.P17328746951769570160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108164 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389430 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A113530.P17328746951769570160

/-! ## A113530.P14413737672570342927

`∩[A108164(n+1), A159961(n+1)]`
-/

namespace A113530.P14413737672570342927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108164 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159961 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A113530.P14413737672570342927

/-! ## A113530.P410528148737363508

`∩[A108164(n+1), A298125(n+1)]`
-/

namespace A113530.P410528148737363508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108164 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298125 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A113530.P410528148737363508

/-! ## A113530.P681955143320637921

`∩[A108164(n+1), A309805(n+1)]`
-/

namespace A113530.P681955143320637921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108164 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309805 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A113530.P681955143320637921

/-! ## A113530.P17218547286483481698

`∩[A108164(n+1), A352243(n+1)]`
-/

namespace A113530.P17218547286483481698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108164 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352243 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A113530.P17218547286483481698

/-!
# A113531: a(n) = 1 + 2*n + 3*n^2 + 4*n^3 + 5*n^4 + 6*n^5.

The programs for A113531, the canonical program `A113531.P992856171180466167` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A113531 has offset 0).

The definition of A113531 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `1+2*n+3*n²+4*n^3+5*n^4+6*n^5` (program `A113531.P992856171180466167`, by `A113531.P992856171180466167.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A113531.P992856171180466167

`1+2*n+3*n²+4*n^3+5*n^4+6*n^5`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A113531

/-- `1+2*n+3*n²+4*n^3+5*n^4+6*n^5` -/
def P992856171180466167.Spec : Prop :=
  ∀ n, (P992856171180466167.a n : ℤ) = A113531 n

theorem P992856171180466167.correct : P992856171180466167.Spec := by
  intro n
  simp only [A113531]

end A113531

/-! ## A113531.P2048407049289142587

`ceil(A209264(n)/A028310(n))`
-/

namespace A113531.P2048407049289142587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A209264 n : ℚ) / (A028310 n : ℚ)⌉

end

end A113531.P2048407049289142587

namespace A113531

/-- `ceil(A209264(n)/A028310(n))` -/
def P2048407049289142587.Spec : Prop :=
  ∀ n, P2048407049289142587.a n = A113531 n

end A113531

/-! ## A113531.P3388106909374790925

`Δ[A005900(n)+A045991(n)²]`
-/

namespace A113531.P3388106909374790925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005900 n + A045991 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A113531.P3388106909374790925

namespace A113531

/-- `Δ[A005900(n)+A045991(n)²]` -/
def P3388106909374790925.Spec : Prop :=
  ∀ n, P3388106909374790925.a n = A113531 n

end A113531

/-! ## A113531.P11139666272776981724

`ceil(A209264(n)/A065033(2*n))`
-/

namespace A113531.P11139666272776981724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A209264 n : ℚ) / (A065033 (2 * n) : ℚ)⌉

end

end A113531.P11139666272776981724

namespace A113531

/-- `ceil(A209264(n)/A065033(2*n))` -/
def P11139666272776981724.Spec : Prop :=
  ∀ n, P11139666272776981724.a n = A113531 n

end A113531

/-! ## A113531.P8460017900557134656

`ceil(A209264(n)/A123108(2*n))`
-/

namespace A113531.P8460017900557134656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A209264 n : ℚ) / (A123108 (2 * n) : ℚ)⌉

end

end A113531.P8460017900557134656

namespace A113531

/-- `ceil(A209264(n)/A123108(2*n))` -/
def P8460017900557134656.Spec : Prop :=
  ∀ n, P8460017900557134656.a n = A113531 n

end A113531

/-! ## A113531.P18398486527807437260

`ceil(A209264(n)/A003056(A000124(n)))`
-/

namespace A113531.P18398486527807437260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A209264 n : ℚ) / (A003056 (A000124 n).toNat : ℚ)⌉

end

end A113531.P18398486527807437260

namespace A113531

/-- `ceil(A209264(n)/A003056(A000124(n)))` -/
def P18398486527807437260.Spec : Prop :=
  ∀ n, P18398486527807437260.a n = A113531 n

end A113531

/-!
# A113532: a(n) = 1 + 2*n + 3*n^2 + 4*n^3 + 5*n^4 + 6*n^5 + 7*n^6.

The programs for A113532, there is no canonical definition to state claims against.
-/

/-! ## A113532.P9834831848049533206

`ceil(A209265(n)/A028310(n))`
-/

namespace A113532.P9834831848049533206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A209265 n : ℚ) / (A028310 n : ℚ)⌉

end

end A113532.P9834831848049533206

/-! ## A113532.P254131415906998103

`floor(A157928(n)+A209265(n)/A028310(n))`
-/

namespace A113532.P254131415906998103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A157928 n : ℚ) + (A209265 n : ℚ) / (A028310 n : ℚ)⌋

end

end A113532.P254131415906998103

/-! ## A113532.P4774021420198918787

`A059045(eq[7, A025581(n)])`
-/

namespace A113532.P4774021420198918787
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059045 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A113532.P4774021420198918787

/-! ## A113532.P2873984773478076342

`A059045(eq[8, A193739(n)])`
-/

namespace A113532.P2873984773478076342
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059045 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A113532.P2873984773478076342

/-! ## A113532.P14351833878619873109

`A059045(A000096(n+6)+1+n)`
-/

namespace A113532.P14351833878619873109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059045 (A000096 (n + 6) + 1 + (n : ℤ)).toNat

end

end A113532.P14351833878619873109

/-!
# A113533: Ascending descending base exponent transform of the infinite Fibonacci word (A003842).

The programs for A113533, there is no canonical definition to state claims against.
-/

/-! ## A113533.P4068043502992642726

`∑[A003842(n)]+2*A080844(n)`
-/

namespace A113533.P4068043502992642726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003842 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2 * A080844 n

end

end A113533.P4068043502992642726

/-!
# A113536: Numbers k such that k^2 + 13 is prime.

The programs for A113536, there is no canonical definition to state claims against.
-/

/-! ## A113536.P15647733866717613432

`sqrt(A138375(n+1)-13)`
-/

namespace A113536.P15647733866717613432
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A138375 (n + 1) - 13 : ℝ)

end

end A113536.P15647733866717613432

/-! ## A113536.P14367640223184547020

`sqrt(p?[n²+13]-13)`
-/

namespace A113536.P14367640223184547020
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + 13

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) - 13 : ℝ)

end

end A113536.P14367640223184547020

/-! ## A113536.P8279732465243168661

`(p?[n²+13]-13)^(1/2)`
-/

namespace A113536.P8279732465243168661
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + 13

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) - 13 : ℝ) ^ ((1 : ℚ) / 2 : ℝ)

end

end A113536.P8279732465243168661

/-! ## A113536.P15010686365456458726

`floor(sqrt(p?[n^gcd(2, n)+13]-13))`
-/

namespace A113536.P15010686365456458726
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ Nat.gcd 2 n + 13

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt ((f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) - 13)

end

end A113536.P15010686365456458726

/-! ## A113536.P6207971688863559258

`sqrt(lcm(p?[A241749(n)], A158388(n))-13)`
-/

namespace A113536.P6207971688863559258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241749 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((Int.lcm (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A158388 n) : ℤ) - 13 : ℝ)

end

end A113536.P6207971688863559258

/-! ## A113536.P17909303984658474681

`sqrt(p?[A241749(n)]%A030514(n+1)-13)`
-/

namespace A113536.P17909303984658474681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241749 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A030514 (n + 1)) - 13 : ℝ)

end

end A113536.P17909303984658474681

/-!
# A113537: Numbers k such that k^2 + 11 and k^2 + 13 are primes.

The programs for A113537, there is no canonical definition to state claims against.
-/

/-! ## A113537.P28982893274046350

`∩[A113536(n+1), A114274(n+2)]`
-/

namespace A113537.P28982893274046350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113536 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114274 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A113537.P28982893274046350

/-!
# A113541: Numbers k such that 18*k^2+1 is multiple of 19.

The programs for A113541, the canonical program `A113541.P4125873829437478774` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A113541 has offset 1).

The definition of A113541 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A113541.P4125873829437478774

`19*n-a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A113541

/-- `19*n-a(n-1)` -/
def P4125873829437478774.Spec : Prop :=
  ∀ n, P4125873829437478774.a n = A113541 (n + 1)

theorem P4125873829437478774.correct : P4125873829437478774.Spec := by
  intro n
  simp only [A113541, Nat.add_sub_cancel]

end A113541

/-! ## A113541.P13896728536721194475

`a(n-2)+19` with `a(0)=1, a(1)=18`
-/

namespace A113541.P13896728536721194475
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 18] fun n a =>
  a (n - 2) + 19

end

end A113541.P13896728536721194475

namespace A113541

/-- `a(n-2)+19` -/
def P13896728536721194475.Spec : Prop :=
  ∀ n, (P13896728536721194475.a n : ℤ) = A113541 (n + 1)

end A113541

/-! ## A113541.P12542867561153545164

`∑[19-a(n-1)]` with `a(0)=1, a(1)=17`
-/

namespace A113541.P12542867561153545164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 17] fun n f1 =>
  19 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113541.P12542867561153545164

namespace A113541

/-- `∑[19-a(n-1)]` -/
def P12542867561153545164.Spec : Prop :=
  ∀ n, P12542867561153545164.a n = A113541 (n + 1)

end A113541

/-! ## A113541.P11747548282331799660

`∑[(4^(n%2))²]+n`
-/

namespace A113541.P11747548282331799660
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (4 ^ (n % 2)) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n

end

end A113541.P11747548282331799660

namespace A113541

/-- `∑[(4^(n%2))²]+n` -/
def P11747548282331799660.Spec : Prop :=
  ∀ n, (P11747548282331799660.a n : ℤ) = A113541 (n + 1)

end A113541

/-! ## A113541.P6104138769964911854

`∑[(4^and(1, n))²]+n`
-/

namespace A113541.P6104138769964911854
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (4 ^ Nat.land 1 n) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n

end

end A113541.P6104138769964911854

namespace A113541

/-- `∑[(4^and(1, n))²]+n` -/
def P6104138769964911854.Spec : Prop :=
  ∀ n, (P6104138769964911854.a n : ℤ) = A113541 (n + 1)

end A113541

/-! ## A113541.P2504890541237218913

`∑[gcd(2, n+1)^4]+n`
-/

namespace A113541.P2504890541237218913
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 (n + 1) ^ 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n

end

end A113541.P2504890541237218913

namespace A113541

/-- `∑[gcd(2, n+1)^4]+n` -/
def P2504890541237218913.Spec : Prop :=
  ∀ n, (P2504890541237218913.a n : ℤ) = A113541 (n + 1)

end A113541

/-! ## A113541.P6231974834191897924

`∑[4^(2*and(1, n))]+n`
-/

namespace A113541.P6231974834191897924
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 ^ (2 * Nat.land 1 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n

end

end A113541.P6231974834191897924

namespace A113541

/-- `∑[4^(2*and(1, n))]+n` -/
def P6231974834191897924.Spec : Prop :=
  ∀ n, (P6231974834191897924.a n : ℤ) = A113541 (n + 1)

end A113541

/-! ## A113541.P18083472676696131125

`∑[gcd(4, (n+1)²)²]+n`
-/

namespace A113541.P18083472676696131125
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 4 ((n + 1) ^ 2) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n

end

end A113541.P18083472676696131125

namespace A113541

/-- `∑[gcd(4, (n+1)²)²]+n` -/
def P18083472676696131125.Spec : Prop :=
  ∀ n, (P18083472676696131125.a n : ℤ) = A113541 (n + 1)

end A113541

/-! ## A113541.P8682338545622692588

`∑[(and(1, n)+1)²²]+n`
-/

namespace A113541.P8682338545622692588
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((Nat.land 1 n + 1) ^ 2) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n

end

end A113541.P8682338545622692588

namespace A113541

/-- `∑[(and(1, n)+1)²²]+n` -/
def P8682338545622692588.Spec : Prop :=
  ∀ n, (P8682338545622692588.a n : ℤ) = A113541 (n + 1)

end A113541

/-! ## A113541.P14199173046406954974

`∑[4^(1-(-1)^n)]+n`
-/

namespace A113541.P14199173046406954974
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 : ℚ) ^ (1 - (-1) ^ n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℚ)

end

end A113541.P14199173046406954974

namespace A113541

/-- `∑[4^(1-(-1)^n)]+n` -/
def P14199173046406954974.Spec : Prop :=
  ∀ n, P14199173046406954974.a n = (A113541 (n + 1) : ℚ)

end A113541

/-! ## A113541.P5460036563581518909

`∑[A040240(n)-A040211(n)]`
-/

namespace A113541.P5460036563581518909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040240 n - A040211 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113541.P5460036563581518909

namespace A113541

/-- `∑[A040240(n)-A040211(n)]` -/
def P5460036563581518909.Spec : Prop :=
  ∀ n, P5460036563581518909.a n = A113541 (n + 1)

end A113541

/-! ## A113541.P10206329220887184388

`Δ[A195147(n)+A002620(n)]`
-/

namespace A113541.P10206329220887184388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195147 n + A002620 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A113541.P10206329220887184388

namespace A113541

/-- `Δ[A195147(n)+A002620(n)]` -/
def P10206329220887184388.Spec : Prop :=
  ∀ n, P10206329220887184388.a n = A113541 (n + 1)

end A113541

/-! ## A113541.P8385848835776178460

`A159754(n+1)%A164131(n+1)`
-/

namespace A113541.P8385848835776178460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A159754 (n + 1)) (A164131 (n + 1))

end

end A113541.P8385848835776178460

namespace A113541

/-- `A159754(n+1)%A164131(n+1)` -/
def P8385848835776178460.Spec : Prop :=
  ∀ n, P8385848835776178460.a n = A113541 (n + 1)

end A113541

/-! ## A113541.P6629111940334284623

`Δ[A195048(n)]`
-/

namespace A113541.P6629111940334284623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195048 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A113541.P6629111940334284623

namespace A113541

/-- `Δ[A195048(n)]` -/
def P6629111940334284623.Spec : Prop :=
  ∀ n, P6629111940334284623.a n = A113541 (n + 1)

end A113541

/-! ## A113541.P14451909402678122618

`A063247(A047225(n+2))`
-/

namespace A113541.P14451909402678122618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063247 (A047225 (n + 2)).toNat

end

end A113541.P14451909402678122618

namespace A113541

/-- `A063247(A047225(n+2))` -/
def P14451909402678122618.Spec : Prop :=
  ∀ n, P14451909402678122618.a n = A113541 (n + 1)

end A113541

/-! ## A113541.P9713963765138726097

`A160544(A118510(n+1))`
-/

namespace A113541.P9713963765138726097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160544 (A118510 (n + 1)).toNat

end

end A113541.P9713963765138726097

namespace A113541

/-- `A160544(A118510(n+1))` -/
def P9713963765138726097.Spec : Prop :=
  ∀ n, P9713963765138726097.a n = A113541 (n + 1)

end A113541

/-! ## A113541.P15046931763137300746

`eq[A070441(n), A267537(n)]`
-/

namespace A113541.P15046931763137300746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070441 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267537 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A113541.P15046931763137300746

namespace A113541

/-- `eq[A070441(n), A267537(n)]` -/
def P15046931763137300746.Spec : Prop :=
  ∀ n, (P15046931763137300746.a n : ℤ) = A113541 (n + 1)

end A113541

/-! ## A113541.P16114349374324799574

`eq[A070538(n), A267537(n)]`
-/

namespace A113541.P16114349374324799574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070538 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267537 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A113541.P16114349374324799574

namespace A113541

/-- `eq[A070538(n), A267537(n)]` -/
def P16114349374324799574.Spec : Prop :=
  ∀ n, (P16114349374324799574.a n : ℤ) = A113541 (n + 1)

end A113541

/-! ## A113541.P6301321092039526085

`eq[A070441(n), A267869(n)]`
-/

namespace A113541.P6301321092039526085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070441 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267869 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A113541.P6301321092039526085

namespace A113541

/-- `eq[A070441(n), A267869(n)]` -/
def P6301321092039526085.Spec : Prop :=
  ∀ n, (P6301321092039526085.a n : ℤ) = A113541 (n + 1)

end A113541

/-! ## A113541.P4106950245224023304

`eq[A070441(n), A267871(n)]`
-/

namespace A113541.P4106950245224023304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070441 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267871 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A113541.P4106950245224023304

namespace A113541

/-- `eq[A070441(n), A267871(n)]` -/
def P4106950245224023304.Spec : Prop :=
  ∀ n, (P4106950245224023304.a n : ℤ) = A113541 (n + 1)

end A113541

/-!
# A113543: Numbers both squarefree and triangle-free.

The programs for A113543, the canonical program `A113543.P2223141436279316752` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A113543 has offset 1).

The definition of A113543 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A113543.P2223141436279316752

`filter[A112886(n+1), A008966(#)]`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A113543

/-- `filter[A112886(n+1), A008966(#)]` -/
def P2223141436279316752.Spec : Prop :=
  ∀ n, P2223141436279316752.a n = A113543 (n + 1)

theorem P2223141436279316752.correct : P2223141436279316752.Spec := by
  intro n
  simp only [A113543, Nat.add_sub_cancel]

end A113543

/-! ## A113543.P3336778896208114961

`filter[A112886(n+1), A323154(#)]`
-/

namespace A113543.P3336778896208114961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112886 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323154 (f1 j).toNat = 1) n)

end

end A113543.P3336778896208114961

namespace A113543

/-- `filter[A112886(n+1), A323154(#)]` -/
def P3336778896208114961.Spec : Prop :=
  ∀ n, P3336778896208114961.a n = A113543 (n + 1)

end A113543

/-! ## A113543.P14952697162030332910

`filter[A112886(n+1), A353559(#)]`
-/

namespace A113543.P14952697162030332910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112886 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353559 (f1 j).toNat = 1) n)

end

end A113543.P14952697162030332910

namespace A113543

/-- `filter[A112886(n+1), A353559(#)]` -/
def P14952697162030332910.Spec : Prop :=
  ∀ n, P14952697162030332910.a n = A113543 (n + 1)

end A113543

/-! ## A113543.P4584585937758348946

`filter[A112886(n+1), A359377(#)]`
-/

namespace A113543.P4584585937758348946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112886 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359377 (f1 j).toNat = 1) n)

end

end A113543.P4584585937758348946

namespace A113543

/-- `filter[A112886(n+1), A359377(#)]` -/
def P4584585937758348946.Spec : Prop :=
  ∀ n, P4584585937758348946.a n = A113543 (n + 1)

end A113543

/-! ## A113543.P6937891109107410215

`eq[A285718(n+1), A294334(n)]`
-/

namespace A113543.P6937891109107410215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285718 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294334 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A113543.P6937891109107410215

namespace A113543

/-- `eq[A285718(n+1), A294334(n)]` -/
def P6937891109107410215.Spec : Prop :=
  ∀ n, (P6937891109107410215.a n : ℤ) = A113543 (n + 1)

end A113543

/-! ## A113543.P13385664678411801385

`∩[A005117(n+1), A112886(n+1)]`
-/

namespace A113543.P13385664678411801385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112886 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A113543.P13385664678411801385

namespace A113543

/-- `∩[A005117(n+1), A112886(n+1)]` -/
def P13385664678411801385.Spec : Prop :=
  ∀ n, (P13385664678411801385.a n : ℤ) = A113543 (n + 1)

end A113543

/-! ## A113543.P9793352587195434611

`∩[A064594(n+1), A112886(n+1)]`
-/

namespace A113543.P9793352587195434611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064594 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112886 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A113543.P9793352587195434611

namespace A113543

/-- `∩[A064594(n+1), A112886(n+1)]` -/
def P9793352587195434611.Spec : Prop :=
  ∀ n, (P9793352587195434611.a n : ℤ) = A113543 (n + 1)

end A113543

/-! ## A113543.P9729786188730006641

`∩[A087246(n+1), A112886(n+1)]`
-/

namespace A113543.P9729786188730006641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087246 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112886 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A113543.P9729786188730006641

namespace A113543

/-- `∩[A087246(n+1), A112886(n+1)]` -/
def P9729786188730006641.Spec : Prop :=
  ∀ n, (P9729786188730006641.a n : ℤ) = A113543 (n + 1)

end A113543

/-! ## A113543.P12151047238565620607

`∩[A112886(n+1), A193303(n+1)]`
-/

namespace A113543.P12151047238565620607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112886 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193303 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A113543.P12151047238565620607

namespace A113543

/-- `∩[A112886(n+1), A193303(n+1)]` -/
def P12151047238565620607.Spec : Prop :=
  ∀ n, (P12151047238565620607.a n : ℤ) = A113543 (n + 1)

end A113543

/-! ## A113543.P5138824922235535429

`∩[A112886(n+1), A348499(n+1)]`
-/

namespace A113543.P5138824922235535429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112886 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348499 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A113543.P5138824922235535429

namespace A113543

/-- `∩[A112886(n+1), A348499(n+1)]` -/
def P5138824922235535429.Spec : Prop :=
  ∀ n, (P5138824922235535429.a n : ℤ) = A113543 (n + 1)

end A113543

/-! ## A113543.P3606915125096001353

`∩[A112886(n+1), A348506(n+1)]`
-/

namespace A113543.P3606915125096001353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112886 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348506 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A113543.P3606915125096001353

namespace A113543

/-- `∩[A112886(n+1), A348506(n+1)]` -/
def P3606915125096001353.Spec : Prop :=
  ∀ n, (P3606915125096001353.a n : ℤ) = A113543 (n + 1)

end A113543

/-! ## A113543.P4464522456403706880

`∩[A112886(n+1), A349026(n+1)]`
-/

namespace A113543.P4464522456403706880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112886 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349026 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A113543.P4464522456403706880

namespace A113543

/-- `∩[A112886(n+1), A349026(n+1)]` -/
def P4464522456403706880.Spec : Prop :=
  ∀ n, (P4464522456403706880.a n : ℤ) = A113543 (n + 1)

end A113543

/-! ## A113543.P12664222538623999062

`∩[A112886(n+1), A225354(n+1)]`
-/

namespace A113543.P12664222538623999062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112886 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225354 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A113543.P12664222538623999062

namespace A113543

/-- `∩[A112886(n+1), A225354(n+1)]` -/
def P12664222538623999062.Spec : Prop :=
  ∀ n, (P12664222538623999062.a n : ℤ) = A113543 (n + 1)

end A113543

/-!
# A113544: Numbers simultaneously pentagon-free, squarefree and triangle-free.

The programs for A113544, the canonical program `A113544.P4237946756288578196` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A113544 has offset 1).

The definition of A113544 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 750 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A113544.P1026077675390041417

`eq[char[A113545(n+1)], A294334(n)]`
-/

namespace A113544.P1026077675390041417
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113545 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294334 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A113544.P1026077675390041417

namespace A113544

/-- `eq[char[A113545(n+1)], A294334(n)]` -/
def P1026077675390041417.Spec : Prop :=
  ∀ n, (P1026077675390041417.a n : ℤ) = A113544 (n + 1)

end A113544

/-! ## A113544.P11996631371058973228

`∩[A112886(n+1), A113545(n+1)]`
-/

namespace A113544.P11996631371058973228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112886 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113545 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A113544.P11996631371058973228

namespace A113544

/-- `∩[A112886(n+1), A113545(n+1)]` -/
def P11996631371058973228.Spec : Prop :=
  ∀ n, (P11996631371058973228.a n : ℤ) = A113544 (n + 1)

end A113544

/-! ## A113544.P4237946756288578196

`∩[A113543(n+1), A113545(n+1)]`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A113544

/-- `∩[A113543(n+1), A113545(n+1)]` -/
def P4237946756288578196.Spec : Prop :=
  ∀ n, (P4237946756288578196.a n : ℤ) = A113544 (n + 1)

theorem P4237946756288578196.correct : P4237946756288578196.Spec := by
  intro n
  simp only [A113544, Nat.add_sub_cancel]

end A113544

/-!
# A113545: Numbers both pentagon-free and squarefree.

The programs for A113545, the canonical program `A113545.P13162396840576441610` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A113545 has offset 1).

The definition of A113545 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A113545.P5820120602646921039

`record[A003967(n+1)/A279497(n+1)]`
-/

namespace A113545.P5820120602646921039
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003967 (n + 1) : ℚ) / (A279497 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A113545.P5820120602646921039

namespace A113545

/-- `record[A003967(n+1)/A279497(n+1)]` -/
def P5820120602646921039.Spec : Prop :=
  ∀ n, P5820120602646921039.a n = (A113545 (n + 1) : ℚ)

end A113545

/-! ## A113545.P13162396840576441610

`record[A007913(n+1)/A279497(n+1)]`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A113545

/-- `record[A007913(n+1)/A279497(n+1)]` -/
def P13162396840576441610.Spec : Prop :=
  ∀ n, P13162396840576441610.a n = (A113545 (n + 1) : ℚ)

end A113545

/-! ## A113545.P8151058215357605576

`record[A007947(n+1)/A279497(n+1)]`
-/

namespace A113545.P8151058215357605576
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007947 (n + 1) : ℚ) / (A279497 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A113545.P8151058215357605576

namespace A113545

/-- `record[A007947(n+1)/A279497(n+1)]` -/
def P8151058215357605576.Spec : Prop :=
  ∀ n, P8151058215357605576.a n = (A113545 (n + 1) : ℚ)

end A113545

/-! ## A113545.P9664118956229365368

`record[A015052(n+1)/A279497(n+1)]`
-/

namespace A113545.P9664118956229365368
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A015052 (n + 1) : ℚ) / (A279497 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A113545.P9664118956229365368

namespace A113545

/-- `record[A015052(n+1)/A279497(n+1)]` -/
def P9664118956229365368.Spec : Prop :=
  ∀ n, P9664118956229365368.a n = (A113545 (n + 1) : ℚ)

end A113545

/-! ## A113545.P4870851291660975418

`record[A015053(n+1)/A279497(n+1)]`
-/

namespace A113545.P4870851291660975418
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A015053 (n + 1) : ℚ) / (A279497 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A113545.P4870851291660975418

namespace A113545

/-- `record[A015053(n+1)/A279497(n+1)]` -/
def P4870851291660975418.Spec : Prop :=
  ∀ n, P4870851291660975418.a n = (A113545 (n + 1) : ℚ)

end A113545

/-! ## A113545.P17590616359963796342

`record[A019554(n+1)/A279497(n+1)]`
-/

namespace A113545.P17590616359963796342
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A019554 (n + 1) : ℚ) / (A279497 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A113545.P17590616359963796342

namespace A113545

/-- `record[A019554(n+1)/A279497(n+1)]` -/
def P17590616359963796342.Spec : Prop :=
  ∀ n, P17590616359963796342.a n = (A113545 (n + 1) : ℚ)

end A113545

/-! ## A113545.P14406498770513475244

`record[A056554(n+1)/A279497(n+1)]`
-/

namespace A113545.P14406498770513475244
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056554 (n + 1) : ℚ) / (A279497 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A113545.P14406498770513475244

namespace A113545

/-- `record[A056554(n+1)/A279497(n+1)]` -/
def P14406498770513475244.Spec : Prop :=
  ∀ n, P14406498770513475244.a n = (A113545 (n + 1) : ℚ)

end A113545

/-! ## A113545.P2307731735802754856

`record[A071975(n+1)/A279497(n+1)]`
-/

namespace A113545.P2307731735802754856
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A071975 (n + 1) : ℚ) / (A279497 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A113545.P2307731735802754856

namespace A113545

/-- `record[A071975(n+1)/A279497(n+1)]` -/
def P2307731735802754856.Spec : Prop :=
  ∀ n, P2307731735802754856.a n = (A113545 (n + 1) : ℚ)

end A113545

/-! ## A113545.P6336191045424605720

`eq[abs(A008683(n+1)), A279497(n+1)]+1`
-/

namespace A113545.P6336191045424605720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008683 (n + 1)|

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279497 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A113545.P6336191045424605720

namespace A113545

/-- `eq[abs(A008683(n+1)), A279497(n+1)]+1` -/
def P6336191045424605720.Spec : Prop :=
  ∀ n, (P6336191045424605720.a n : ℤ) = A113545 (n + 1)

end A113545

/-! ## A113545.P12262535330047440724

`∩[A113508(n+1), A301899(n+1)]`
-/

namespace A113545.P12262535330047440724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113508 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301899 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A113545.P12262535330047440724

namespace A113545

/-- `∩[A113508(n+1), A301899(n+1)]` -/
def P12262535330047440724.Spec : Prop :=
  ∀ n, (P12262535330047440724.a n : ℤ) = A113545 (n + 1)

end A113545

/-!
# A113546: Let S(n)=sigma(n)/3. Numbers k such that S(S(k))=k, 1/3-sociable number of order 1 or 2.

The programs for A113546, there is no canonical definition to state claims against.
-/

/-! ## A113546.P12984606977148500839

`A356548(A333992(n+2))`
-/

namespace A113546.P12984606977148500839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356548 (A333992 (n + 2)).toNat

end

end A113546.P12984606977148500839

/-!
# A113547: Triangle read by rows: number of labeled partitions of n with maximin m.

The programs for A113547, there is no canonical definition to state claims against.
-/

/-! ## A113547.P18396535387890780085

`A362925(∑[char[∑[n]]]²-n-1)`
-/

namespace A113547.P18396535387890780085
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362925 ((((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) - (n : ℤ) - 1).toNat

end

end A113547.P18396535387890780085

/-! ## A113547.P15054879368123198393

`A362925(A061579(n))+A353495(2*(n+2))`
-/

namespace A113547.P15054879368123198393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362925 (A061579 n).toNat + A353495 (2 * (n + 2))

end

end A113547.P15054879368123198393

/-! ## A113547.P14854615696980143619

`A362925(A061579(n))+A000038(3*n+1)`
-/

namespace A113547.P14854615696980143619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362925 (A061579 n).toNat + A000038 (3 * n + 1)

end

end A113547.P14854615696980143619

/-! ## A113547.P9877722184795031838

`A286477(A032765(2*(n+2)))*A362925(A061579(n))`
-/

namespace A113547.P9877722184795031838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286477 (A032765 (2 * (n + 2))).toNat * A362925 (A061579 n).toNat

end

end A113547.P9877722184795031838

/-!
# A113549: a(n) = product of n successive numbers up to n, if n is even a(n) = n*(n-1)*.. = n!, if n is odd a(n) = n(n+1)(n+2)... 'n' terms.

The programs for A113549, there is no canonical definition to state claims against.
-/

/-! ## A113549.P15677118743413738079

`(n+1)!+∏[4*n+2]/2-A113550(n+1)`
-/

namespace A113549.P15677118743413738079
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 1) : ℚ) + ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 2 - (A113550 (n + 1) : ℚ)

end

end A113549.P15677118743413738079

/-! ## A113549.P685643434103695395

`A105725(A128918(n+1))`
-/

namespace A113549.P685643434103695395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105725 (A128918 (n + 1)).toNat

end

end A113549.P685643434103695395

/-! ## A113549.P9086674738583330290

`A156991(A266257(n+1))`
-/

namespace A113549.P9086674738583330290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156991 (A266257 (n + 1)).toNat

end

end A113549.P9086674738583330290

/-! ## A113549.P2030450773634628026

`A226730(n+1)-A113550(n+1)`
-/

namespace A113549.P2030450773634628026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226730 (n + 1) - A113550 (n + 1)

end

end A113549.P2030450773634628026

/-! ## A113549.P7914016583148150668

`(Δ[n²]*A000108(n)+1)*∏[n+1]-A113550(n+1)`
-/

namespace A113549.P7914016583148150668
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((f1 (n + 1) : ℤ) - (f1 n : ℤ)) * A000108 n + 1) * ((∏ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - A113550 (n + 1)

end

end A113549.P7914016583148150668

/-! ## A113549.P2744364432494032601

`(A007318(A046092(n+1))/2+1)*(n+1)!-A113550(n+1)`
-/

namespace A113549.P2744364432494032601
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A007318 (A046092 (n + 1)).toNat : ℚ) / 2 + 1) * (Nat.factorial (n + 1) : ℚ) - (A113550 (n + 1) : ℚ)

end

end A113549.P2744364432494032601

/-!
# A113550: a(n) = product of n successive numbers up to n, if n is odd a(n) = n*(n-1)*.. = n!, if n is even a(n) = n(n+1)(n+2)... 'n' terms.

The programs for A113550, there is no canonical definition to state claims against.
-/

/-! ## A113550.P18446059530140146708

`A001405(2*n+1)^(n%2)*∏[n+1]`
-/

namespace A113550.P18446059530140146708
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 (2 * n + 1) ^ (n % 2) * ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A113550.P18446059530140146708

/-! ## A113550.P2134261259593707036

`A105725(A131179(n+1))`
-/

namespace A113550.P2134261259593707036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105725 (A131179 (n + 1)).toNat

end

end A113550.P2134261259593707036

/-! ## A113550.P2077179349798830473

`A156991(A266259(n+1))`
-/

namespace A113550.P2077179349798830473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156991 (A266259 (n + 1)).toNat

end

end A113550.P2077179349798830473

/-! ## A113550.P654049096065399229

`A000142(n+1)*A088218(A124625(n+2))`
-/

namespace A113550.P654049096065399229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 (n + 1) * A088218 (A124625 (n + 2)).toNat

end

end A113550.P654049096065399229

/-! ## A113550.P3690931591856367513

`record[A166350(n+1)]*A088218(A124625(n+2))`
-/

namespace A113550.P3690931591856367513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166350 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A088218 (A124625 (n + 2)).toNat

end

end A113550.P3690931591856367513

/-!
# A113551: a(n) = product of next n even numbers beginning with n if n is even, otherwise product of next n odd numbers beginning with n.

The programs for A113551, there is no canonical definition to state claims against.
-/

/-! ## A113551.P7334417059020531021

`A343445(n+2)/3`
-/

namespace A113551.P7334417059020531021
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A343445 (n + 2) : ℚ) / 3

end

end A113551.P7334417059020531021

/-! ## A113551.P15012785620056041062

`A128811(n+1)*A248809(∑[n])`
-/

namespace A113551.P15012785620056041062
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128811 (n + 1) * A248809 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A113551.P15012785620056041062

/-! ## A113551.P3496156461004050266

`Δ[A129981(n)]*A128811(n+1)`
-/

namespace A113551.P3496156461004050266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129981 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A128811 (n + 1)

end

end A113551.P3496156461004050266

/-! ## A113551.P15200541042984383608

`A006882(n+1)*A128811(n+1)`
-/

namespace A113551.P15200541042984383608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006882 (n + 1) * A128811 (n + 1)

end

end A113551.P15200541042984383608

/-! ## A113551.P7658311132201463237

`A370419(∑[4*(n+1)])`
-/

namespace A113551.P7658311132201463237
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370419 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A113551.P7658311132201463237

/-!
# A113552: Beginning with 1, least divisor of the previous term not included earlier, otherwise the least multiple of the previous term having at least one prime divisor coprime to it and not included earlier.

The programs for A113552, there is no canonical definition to state claims against.
-/

/-! ## A113552.P6711381961252811384

`gcd(A073771(n+1), A304752(n+1))`
-/

namespace A113552.P6711381961252811384
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A073771 (n + 1)) (A304752 (n + 1))

end

end A113552.P6711381961252811384

/-! ## A113552.P14667127730318484973

`A304752(n+1)+A024362(A211971(n))`
-/

namespace A113552.P14667127730318484973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304752 (n + 1) + A024362 (A211971 n).toNat

end

end A113552.P14667127730318484973

/-!
# A113553: Numbers k such that A113552(k) is odd.

The programs for A113553, the canonical program `A113553.P315012750750507759` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A113553 has offset 1).

The definition of A113553 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A113553.P15927190656301809549

`char[or(2, n)]+3*n+floor(atan(n/2))+1`
-/

namespace A113553.P15927190656301809549
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((if ∃ j, f1 j = n then 1 else 0) + 3 * n : ℕ) : ℤ) + (⌊Real.arctan ((n : ℚ) / 2 : ℝ)⌋ + 1)

end

end A113553.P15927190656301809549

namespace A113553

/-- `char[or(2, n)]+3*n+floor(atan(n/2))+1` -/
def P15927190656301809549.Spec : Prop :=
  ∀ n, P15927190656301809549.a n = A113553 (n + 1)

end A113553

/-! ## A113553.P1317724120827650069

`∑[A164358(char[4]+n)]`
-/

namespace A113553.P1317724120827650069
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164358 ((if ∃ j, f2 j = n then 1 else 0) + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113553.P1317724120827650069

namespace A113553

/-- `∑[A164358(char[4]+n)]` -/
def P1317724120827650069.Spec : Prop :=
  ∀ n, P1317724120827650069.a n = A113553 (n + 1)

end A113553

/-! ## A113553.P4110904793721557681

`∑[or(char[4], A164358(n))]`
-/

namespace A113553.P4110904793721557681
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ) (A164358 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113553.P4110904793721557681

namespace A113553

/-- `∑[or(char[4], A164358(n))]` -/
def P4110904793721557681.Spec : Prop :=
  ∀ n, P4110904793721557681.a n = A113553 (n + 1)

end A113553

/-! ## A113553.P315012750750507759

`A174296(floor(n/2))+3*n`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A113553

/-- `A174296(floor(n/2))+3*n` -/
def P315012750750507759.Spec : Prop :=
  ∀ n, P315012750750507759.a n = A113553 (n + 1)

theorem P315012750750507759.correct : P315012750750507759.Spec := by
  intro n
  simp only [A113553, Nat.add_sub_cancel]

end A113553

/-! ## A113553.P9297230717142574400

`A130543(n)+∑[A164358(n)]`
-/

namespace A113553.P9297230717142574400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164358 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130543 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113553.P9297230717142574400

namespace A113553

/-- `A130543(n)+∑[A164358(n)]` -/
def P9297230717142574400.Spec : Prop :=
  ∀ n, P9297230717142574400.a n = A113553 (n + 1)

end A113553

/-! ## A113553.P8236679385461970217

`A047385(n+1)-A092533(n)`
-/

namespace A113553.P8236679385461970217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047385 (n + 1) - A092533 n

end

end A113553.P8236679385461970217

namespace A113553

/-- `A047385(n+1)-A092533(n)` -/
def P8236679385461970217.Spec : Prop :=
  ∀ n, P8236679385461970217.a n = A113553 (n + 1)

end A113553

/-! ## A113553.P7576902004480508427

`∏{e}[A006530(a(n-2))+1, A000040(#)]+3*n` with `a(0)=1, a(1)=1`
-/

namespace A113553.P7576902004480508427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  A006530 (f1 (n - 2)).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000040 (Nat.factorization (f1 n).natAbs p) + (3 * n : ℤ)

end

end A113553.P7576902004480508427

namespace A113553

/-- `∏{e}[A006530(a(n-2))+1, A000040(#)]+3*n` -/
def P7576902004480508427.Spec : Prop :=
  ∀ n, P7576902004480508427.a n = A113553 (n + 1)

end A113553

/-! ## A113553.P6584011104257879448

`A011760(∑[A164358(n)])`
-/

namespace A113553.P6584011104257879448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164358 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011760 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A113553.P6584011104257879448

namespace A113553

/-- `A011760(∑[A164358(n)])` -/
def P6584011104257879448.Spec : Prop :=
  ∀ n, P6584011104257879448.a n = A113553 (n + 1)

end A113553

/-! ## A113553.P667785374052405723

`A011760(A319279(n+1)+1)`
-/

namespace A113553.P667785374052405723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011760 (A319279 (n + 1) + 1).toNat

end

end A113553.P667785374052405723

namespace A113553

/-- `A011760(A319279(n+1)+1)` -/
def P667785374052405723.Spec : Prop :=
  ∀ n, P667785374052405723.a n = A113553 (n + 1)

end A113553

/-! ## A113553.P8594365304636091521

`A011760(A021913(n)+3*n+1)`
-/

namespace A113553.P8594365304636091521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011760 (A021913 n + (3 * n + 1 : ℤ)).toNat

end

end A113553.P8594365304636091521

namespace A113553

/-- `A011760(A021913(n)+3*n+1)` -/
def P8594365304636091521.Spec : Prop :=
  ∀ n, P8594365304636091521.a n = A113553 (n + 1)

end A113553

/-!
# A113563: Least multiple of n in which the n-th digit from left is 8.

The programs for A113563, there is no canonical definition to state claims against.
-/

/-! ## A113563.P292237824062551300

`A173045(n)*A283611(A155666(n))`
-/

namespace A113563.P292237824062551300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173045 n * A283611 (A155666 n).toNat

end

end A113563.P292237824062551300

/-!
# A113565: a(0) = 1; then skip 2^n digits in the concatenation of natural numbers. 1234567891011121314151617181920212223242526... 1 3 6 0 1 3...

The programs for A113565, there is no canonical definition to state claims against.
-/

/-! ## A113565.P17644394856962826114

`A007376(A006127(n)%A039989(n))`
-/

namespace A113565.P17644394856962826114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007376 (Int.tmod (A006127 n) (A039989 n)).toNat

end

end A113565.P17644394856962826114

/-! ## A113565.P18075455433062551748

`A007376(A188917(2*n)%A126657(2*n+1))`
-/

namespace A113565.P18075455433062551748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007376 (Int.tmod (A188917 (2 * n)) (A126657 (2 * n + 1))).toNat

end

end A113565.P18075455433062551748

/-! ## A113565.P405843890298944705

`A007376(2^n+n)`
-/

namespace A113565.P405843890298944705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007376 (2 ^ n + n)

end

end A113565.P405843890298944705

/-! ## A113565.P11199348669438164974

`dr(A007376(xor(n, 2^n)))`
-/

namespace A113565.P11199348669438164974
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A007376 (Nat.xor n (2 ^ n)))

end

end A113565.P11199348669438164974

/-! ## A113565.P11222798593124875520

`dr(A007376(A006127(n)))`
-/

namespace A113565.P11222798593124875520
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A007376 (A006127 n).toNat)

end

end A113565.P11222798593124875520

/-!
# A113566: Prime(n)-th digit in the concatenation of natural numbers. 1234567891011121314151617181920212223242526... 23 5 7 0 1 3 4 6 9 0 3 5...

The programs for A113566, there is no canonical definition to state claims against.
-/

/-! ## A113566.P12312158434529332755

`A007376(eq[1, ∑{e}[n, #]])`
-/

namespace A113566.P12312158434529332755
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007376 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A113566.P12312158434529332755

/-! ## A113566.P8903384460181636573

`A007376(p?[xor(1, n)+1])`
-/

namespace A113566.P8903384460181636573
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007376 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A113566.P8903384460181636573

/-! ## A113566.P8737207037202720941

`A007376(p?[n%3+n])`
-/

namespace A113566.P8737207037202720941
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 3 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007376 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A113566.P8737207037202720941

/-! ## A113566.P4856137214697286745

`A033307(p?[abs(xor(n, -2))]-1)`
-/

namespace A113566.P4856137214697286745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (n : ℤ) (-2)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033307 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 1).toNat

end

end A113566.P4856137214697286745

/-! ## A113566.P12363493875113380606

`A007376(p?[a(n-1)+2])` with `a(0)=2, a(1)=1`
-/

namespace A113566.P12363493875113380606
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 1] fun n f1 =>
  f1 (n - 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007376 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A113566.P12363493875113380606

/-! ## A113566.P12962004429621693581

`A007376(p?[floor(3/acot(n))-(n-1)])`
-/

namespace A113566.P12962004429621693581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊3 / SequenceMachineLib.acot (n : ℝ)⌋ - ((n : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007376 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A113566.P12962004429621693581

/-! ## A113566.P2177533798371219116

`A007376(∑{p}[p?[round(8*n/7)]², #])`
-/

namespace A113566.P2177533798371219116
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007376 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A113566.P2177533798371219116

/-! ## A113566.P13808952505563431220

`A007376(∏{p}[p?[round(8*n/7)]², #])`
-/

namespace A113566.P13808952505563431220
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007376 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A113566.P13808952505563431220

/-! ## A113566.P8205600747208958250

`A007376(Δ[A007504(n)])`
-/

namespace A113566.P8205600747208958250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007376 (f1 (n + 1) - f1 n).toNat

end

end A113566.P8205600747208958250

/-! ## A113566.P7959051032805847558

`A007376(record[A051698(n)])`
-/

namespace A113566.P7959051032805847558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051698 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007376 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A113566.P7959051032805847558

/-! ## A113566.P15415833779813625061

`A033307(record[A037225(n)])`
-/

namespace A113566.P15415833779813625061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037225 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033307 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A113566.P15415833779813625061

/-! ## A113566.P8789025569547207053

`A007376(p?[A131732(n)])`
-/

namespace A113566.P8789025569547207053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131732 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007376 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A113566.P8789025569547207053

/-! ## A113566.P4340657956182320925

`A007376(A000040(n+1))`
-/

namespace A113566.P4340657956182320925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007376 (A000040 (n + 1)).toNat

end

end A113566.P4340657956182320925

/-! ## A113566.P16516433799817618038

`A108202(A100484(n+1))`
-/

namespace A113566.P16516433799817618038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108202 (A100484 (n + 1)).toNat

end

end A113566.P16516433799817618038

/-! ## A113566.P12484054177946155013

`A007376(A008578(n+2))`
-/

namespace A113566.P12484054177946155013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007376 (A008578 (n + 2)).toNat

end

end A113566.P12484054177946155013

/-! ## A113566.P5202989738491556058

`A108202(A001747(n+2))`
-/

namespace A113566.P5202989738491556058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108202 (A001747 (n + 2)).toNat

end

end A113566.P5202989738491556058

/-! ## A113566.P8218443782431428335

`A108712(A076274(n+2))`
-/

namespace A113566.P8218443782431428335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108712 (A076274 (n + 2)).toNat

end

end A113566.P8218443782431428335

/-! ## A113566.P6759381509560610420

`A007376(A182986(n+2))`
-/

namespace A113566.P6759381509560610420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007376 (A182986 (n + 2)).toNat

end

end A113566.P6759381509560610420

/-! ## A113566.P2826726955620058273

`A007376(eq[1, A003415(n)])`
-/

namespace A113566.P2826726955620058273
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007376 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A113566.P2826726955620058273

/-!
# A113570: Consider the function f(k) in A110545, i.e., the smallest positive integer j such that k divides either the numerator or the denominator of the reduced Harmonic number H(j). This sequence lists numbers k where f(k)=k.

The programs for A113570, there is no canonical definition to state claims against.
-/

/-! ## A113570.P2420900447048879727

`record[C(A110545(n+1), n)]`
-/

namespace A113570.P2420900447048879727
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A110545 (n + 1)).toNat n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A113570.P2420900447048879727

/-! ## A113570.P12655852516823448796

`eq[n, A110545(A028310(n))]`
-/

namespace A113570.P12655852516823448796
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110545 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A113570.P12655852516823448796

/-! ## A113570.P16206037977687966457

`record[A110545(A014684(n+1))]`
-/

namespace A113570.P16206037977687966457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110545 (A014684 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A113570.P16206037977687966457

/-! ## A113570.P6979424661525940098

`record[A028233(A110545(n+1))]`
-/

namespace A113570.P6979424661525940098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028233 (A110545 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A113570.P6979424661525940098

/-! ## A113570.P1085142667475731810

`eq[n, A110545(A123108(2*n))]`
-/

namespace A113570.P1085142667475731810
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110545 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A113570.P1085142667475731810

/-!
# A113572: Least n-digit multiple of n such that the r-th digit is prime if r is a prime else it is composite. The location and value of the most significant digit is 1. 0 if no such number exists.

The programs for A113572, there is no canonical definition to state claims against.
-/

/-! ## A113572.P5907787952008472886

`(n+1)*A113573(n+1)`
-/

namespace A113572.P5907787952008472886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A113573 (n + 1)

end

end A113572.P5907787952008472886

/-!
# A113573: a(n) = A113572(n)/n.

The programs for A113573, there is no canonical definition to state claims against.
-/

/-! ## A113573.P5664019250557589841

`A113572(n+1)/(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A113573.P5664019250557589841
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A113572 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A113573.P5664019250557589841

/-!
# A113574: a(n) is the least n-digit number whose k-th digit is prime if k is prime, composite if k is composite, and 1 if k=1.

The programs for A113574, there is no canonical definition to state claims against.
-/

/-! ## A113574.P3543137258804743748

`A255307(n+1)-A333275(A012248(n))`
-/

namespace A113574.P3543137258804743748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255307 (n + 1) - A333275 (A012248 n).toNat

end

end A113574.P3543137258804743748

/-!
# A113575: Least (2n-1)-digit palindromic prime == 1 (mod n), or 0 if no such prime exists.

The programs for A113575, there is no canonical definition to state claims against.
-/

/-! ## A113575.P12314732661908999542

`A088053(A103288(3*n+1)+A004125(n+1))`
-/

namespace A113575.P12314732661908999542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088053 (A103288 (3 * n + 1) + A004125 (n + 1)).toNat

end

end A113575.P12314732661908999542

/-!
# A113578: a(1) = 1, then the rearrangement of odd palindromes such that every concatenation is a prime for n > 1.

The programs for A113578, there is no canonical definition to state claims against.
-/

/-! ## A113578.P8228012255544281508

`A245718(A041652(n))`
-/

namespace A113578.P8228012255544281508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245718 (A041652 n).toNat

end

end A113578.P8228012255544281508

/-! ## A113578.P493484379485092677

`A047679(A027618(n)-1)`
-/

namespace A113578.P493484379485092677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047679 (A027618 n - 1).toNat

end

end A113578.P493484379485092677

/-!
# A113580: Define prime(0) = 1; then a(n) = sum prime(d), where d ranges over the decimal digits of n.

The programs for A113580, the canonical program `A113580.P2441658852264608091` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A113580 has offset 0).

The definition of A113580 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A113580.P1296472150225686809

`∑{digits}[n, A048380(#)]`
-/

namespace A113580.P1296472150225686809
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A048380 x).sum

end

end A113580.P1296472150225686809

namespace A113580

/-- `∑{digits}[n, A048380(#)]` -/
def P1296472150225686809.Spec : Prop :=
  ∀ n, P1296472150225686809.a n = A113580 n

end A113580

/-! ## A113580.P16236750457115577035

`∑{digits}[n, A113581(#)]`
-/

namespace A113580.P16236750457115577035
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A113581 x).sum

end

end A113580.P16236750457115577035

namespace A113580

/-- `∑{digits}[n, A113581(#)]` -/
def P16236750457115577035.Spec : Prop :=
  ∀ n, P16236750457115577035.a n = A113580 n

end A113580

/-! ## A113580.P8985015232504858185

`∑{digits}[n, A005180(#+1)]`
-/

namespace A113580.P8985015232504858185
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A005180 (x + 1)).sum

end

end A113580.P8985015232504858185

namespace A113580

/-- `∑{digits}[n, A005180(#+1)]` -/
def P8985015232504858185.Spec : Prop :=
  ∀ n, P8985015232504858185.a n = A113580 n

end A113580

/-! ## A113580.P2441658852264608091

`∑{digits}[n, A008578(#+1)]`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A113580

/-- `∑{digits}[n, A008578(#+1)]` -/
def P2441658852264608091.Spec : Prop :=
  ∀ n, P2441658852264608091.a n = A113580 n

theorem P2441658852264608091.correct : P2441658852264608091.Spec := by
  intro n
  simp only [A113580]

end A113580

/-! ## A113580.P10544164810453542642

`∑{digits}[n, A012883(#+1)]`
-/

namespace A113580.P10544164810453542642
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A012883 (x + 1)).sum

end

end A113580.P10544164810453542642

namespace A113580

/-- `∑{digits}[n, A012883(#+1)]` -/
def P10544164810453542642.Spec : Prop :=
  ∀ n, P10544164810453542642.a n = A113580 n

end A113580

/-! ## A113580.P7696121676349314201

`∑{digits}[n, A015919(#+1)]`
-/

namespace A113580.P7696121676349314201
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A015919 (x + 1)).sum

end

end A113580.P7696121676349314201

namespace A113580

/-- `∑{digits}[n, A015919(#+1)]` -/
def P7696121676349314201.Spec : Prop :=
  ∀ n, P7696121676349314201.a n = A113580 n

end A113580

/-! ## A113580.P9654816346057654123

`∑{digits}[n, A064555(#+1)]`
-/

namespace A113580.P9654816346057654123
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A064555 (x + 1)).sum

end

end A113580.P9654816346057654123

namespace A113580

/-- `∑{digits}[n, A064555(#+1)]` -/
def P9654816346057654123.Spec : Prop :=
  ∀ n, P9654816346057654123.a n = A113580 n

end A113580

/-! ## A113580.P14835850916298727137

`A373149(A359802(n))`
-/

namespace A113580.P14835850916298727137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373149 (A359802 n).toNat

end

end A113580.P14835850916298727137

namespace A113580

/-- `A373149(A359802(n))` -/
def P14835850916298727137.Spec : Prop :=
  ∀ n, P14835850916298727137.a n = A113580 n

end A113580

/-!
# A113581: Define prime(0) = 1; then a(n) = product prime(d), where d ranges over all the decimal digits of n.

The programs for A113581, the canonical program `A113581.P305408065948707674` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A113581 has offset 0).

The definition of A113581 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A113581.P14377643174955519897

`∏{digits}[n, A048380(#)]`
-/

namespace A113581.P14377643174955519897
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A048380 x).prod

end

end A113581.P14377643174955519897

namespace A113581

/-- `∏{digits}[n, A048380(#)]` -/
def P14377643174955519897.Spec : Prop :=
  ∀ n, P14377643174955519897.a n = A113581 n

end A113581

/-! ## A113581.P305408065948707674

`∏{digits}[n, A113580(#)]`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A113581

/-- `∏{digits}[n, A113580(#)]` -/
def P305408065948707674.Spec : Prop :=
  ∀ n, P305408065948707674.a n = A113581 n

theorem P305408065948707674.correct : P305408065948707674.Spec := by
  intro n
  simp only [A113581]

end A113581

/-! ## A113581.P2502283561036473514

`∏{digits}[n, A005180(#+1)]`
-/

namespace A113581.P2502283561036473514
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A005180 (x + 1)).prod

end

end A113581.P2502283561036473514

namespace A113581

/-- `∏{digits}[n, A005180(#+1)]` -/
def P2502283561036473514.Spec : Prop :=
  ∀ n, P2502283561036473514.a n = A113581 n

end A113581

/-! ## A113581.P8473725127739323509

`∏{digits}[n, A008578(#+1)]`
-/

namespace A113581.P8473725127739323509
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A008578 (x + 1)).prod

end

end A113581.P8473725127739323509

namespace A113581

/-- `∏{digits}[n, A008578(#+1)]` -/
def P8473725127739323509.Spec : Prop :=
  ∀ n, P8473725127739323509.a n = A113581 n

end A113581

/-! ## A113581.P214289453749745701

`∏{digits}[n, A012883(#+1)]`
-/

namespace A113581.P214289453749745701
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A012883 (x + 1)).prod

end

end A113581.P214289453749745701

namespace A113581

/-- `∏{digits}[n, A012883(#+1)]` -/
def P214289453749745701.Spec : Prop :=
  ∀ n, P214289453749745701.a n = A113581 n

end A113581

/-! ## A113581.P4214534394074335828

`∏{digits}[n, A015919(#+1)]`
-/

namespace A113581.P4214534394074335828
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A015919 (x + 1)).prod

end

end A113581.P4214534394074335828

namespace A113581

/-- `∏{digits}[n, A015919(#+1)]` -/
def P4214534394074335828.Spec : Prop :=
  ∀ n, P4214534394074335828.a n = A113581 n

end A113581

/-! ## A113581.P4013990160616169975

`∏{digits}[n, A064555(#+1)]`
-/

namespace A113581.P4013990160616169975
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A064555 (x + 1)).prod

end

end A113581.P4013990160616169975

namespace A113581

/-- `∏{digits}[n, A064555(#+1)]` -/
def P4013990160616169975.Spec : Prop :=
  ∀ n, P4013990160616169975.a n = A113581 n

end A113581

/-! ## A113581.P12897552399092850249

`∏{digits}[n, A158611(#+2)]`
-/

namespace A113581.P12897552399092850249
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A158611 (x + 2)).prod

end

end A113581.P12897552399092850249

namespace A113581

/-- `∏{digits}[n, A158611(#+2)]` -/
def P12897552399092850249.Spec : Prop :=
  ∀ n, P12897552399092850249.a n = A113581 n

end A113581

/-! ## A113581.P14391359075516068061

`A064989(A359802(n))`
-/

namespace A113581.P14391359075516068061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (A359802 n).toNat

end

end A113581.P14391359075516068061

namespace A113581

/-- `A064989(A359802(n))` -/
def P14391359075516068061.Spec : Prop :=
  ∀ n, P14391359075516068061.a n = A113581 n

end A113581

/-! ## A113581.P17175416297895688499

`∏{e}[A069877(n), A000040(#)]`
-/

namespace A113581.P17175416297895688499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069877 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000040 (Nat.factorization (f1 n).natAbs p)

end

end A113581.P17175416297895688499

namespace A113581

/-- `∏{e}[A069877(n), A000040(#)]` -/
def P17175416297895688499.Spec : Prop :=
  ∀ n, P17175416297895688499.a n = A113581 n

end A113581

/-!
# A113582: Triangle T(n,m) read by rows: T(n,m) = (n - m)*(n - m + 1)*m*(m + 1)/4 + 1.

The programs for A113582, the canonical program `A113582.P7154011532379744885` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A113582 has offset 1).

The definition of A113582 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A113582.anchor (n : ℕ) : (A113582 (n + 1) : ℚ) = (((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ)) * ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) + 1) * (SequenceMachineLib.triCol n : ℤ) * (SequenceMachineLib.triCol n + 1 : ℤ) : ℚ) / 4 + 1` in `Proof.A113.A113582`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A113582.P7154011532379744885

`(row(n)-col(n))*(row(n)-col(n)+1)*col(n)*(col(n)+1)/4+1`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A113582

/-- `(row(n)-col(n))*(row(n)-col(n)+1)*col(n)*(col(n)+1)/4+1` -/
def P7154011532379744885.Spec : Prop :=
  ∀ n, P7154011532379744885.a n = (A113582 (n + 1) : ℚ)

end A113582

/-! ## A113582.P16875032056713855079

`A049207(n)/4+1`
-/

namespace A113582.P16875032056713855079
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049207 n : ℚ) / 4 + 1

end

end A113582.P16875032056713855079

namespace A113582

/-- `A049207(n)/4+1` -/
def P16875032056713855079.Spec : Prop :=
  ∀ n, P16875032056713855079.a n = (A113582 (n + 1) : ℚ)

end A113582

/-! ## A113582.P11616305401560476543

`A003991(n+1)*A004247(n)/4+1`
-/

namespace A113582.P11616305401560476543
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003991 (n + 1) * A004247 n : ℚ) / 4 + 1

end

end A113582.P11616305401560476543

namespace A113582

/-- `A003991(n+1)*A004247(n)/4+1` -/
def P11616305401560476543.Spec : Prop :=
  ∀ n, P11616305401560476543.a n = (A113582 (n + 1) : ℚ)

end A113582

/-! ## A113582.P16626873563599467874

`A000124(A003991(n+1))-A098358(n)`
-/

namespace A113582.P16626873563599467874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 (A003991 (n + 1)).toNat - A098358 n

end

end A113582.P16626873563599467874

namespace A113582

/-- `A000124(A003991(n+1))-A098358(n)` -/
def P16626873563599467874.Spec : Prop :=
  ∀ n, P16626873563599467874.a n = A113582 (n + 1)

end A113582

/-! ## A113582.P17444924942008598900

`A000217(A002262(n))*A000217(A025581(n))+1`
-/

namespace A113582.P17444924942008598900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A002262 n).toNat * A000217 (A025581 n).toNat + 1

end

end A113582.P17444924942008598900

namespace A113582

/-- `A000217(A002262(n))*A000217(A025581(n))+1` -/
def P17444924942008598900.Spec : Prop :=
  ∀ n, P17444924942008598900.a n = A113582 (n + 1)

end A113582

/-! ## A113582.P13231053092400770899

`A008619(A002260(n+1)*A062707(n))`
-/

namespace A113582.P13231053092400770899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A002260 (n + 1) * A062707 n).toNat

end

end A113582.P13231053092400770899

namespace A113582

/-- `A008619(A002260(n+1)*A062707(n))` -/
def P13231053092400770899.Spec : Prop :=
  ∀ n, P13231053092400770899.a n = A113582 (n + 1)

end A113582

/-! ## A113582.P1432035579624085333

`A028242(A002260(n+1)*A062707(n))`
-/

namespace A113582.P1432035579624085333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (A002260 (n + 1) * A062707 n).toNat

end

end A113582.P1432035579624085333

namespace A113582

/-- `A028242(A002260(n+1)*A062707(n))` -/
def P1432035579624085333.Spec : Prop :=
  ∀ n, P1432035579624085333.a n = A113582 (n + 1)

end A113582

/-! ## A113582.P7073300763829776120

`A008619(A062707(n)*A134868(n+1))`
-/

namespace A113582.P7073300763829776120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A062707 n * A134868 (n + 1)).toNat

end

end A113582.P7073300763829776120

namespace A113582

/-- `A008619(A062707(n)*A134868(n+1))` -/
def P7073300763829776120.Spec : Prop :=
  ∀ n, P7073300763829776120.a n = A113582 (n + 1)

end A113582

/-! ## A113582.P16647599347785893264

`A008621(A049207(n))`
-/

namespace A113582.P16647599347785893264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (A049207 n).toNat

end

end A113582.P16647599347785893264

namespace A113582

/-- `A008621(A049207(n))` -/
def P16647599347785893264.Spec : Prop :=
  ∀ n, P16647599347785893264.a n = A113582 (n + 1)

end A113582

/-! ## A113582.P17826582646855525499

`A134172(A049207(n)+1)+1`
-/

namespace A113582.P17826582646855525499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134172 (A049207 n + 1).toNat + 1

end

end A113582.P17826582646855525499

namespace A113582

/-- `A134172(A049207(n)+1)+1` -/
def P17826582646855525499.Spec : Prop :=
  ∀ n, P17826582646855525499.a n = A113582 (n + 1)

end A113582

/-! ## A113582.P3944524562012153611

`A268759(A285721(∑[n-1]+2))+1`
-/

namespace A113582.P3944524562012153611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268759 (A285721 (∑ j ∈ Finset.range (n + 1), f1 j + 2).toNat).toNat + 1

end

end A113582.P3944524562012153611

namespace A113582

/-- `A268759(A285721(∑[n-1]+2))+1` -/
def P3944524562012153611.Spec : Prop :=
  ∀ n, P3944524562012153611.a n = A113582 (n + 1)

end A113582

/-! ## A113582.P7883695776155101997

`A268759(A114327(∑[n]-n))+1`
-/

namespace A113582.P7883695776155101997
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268759 (A114327 (∑ j ∈ Finset.range (n + 1), f1 j - n)).toNat + 1

end

end A113582.P7883695776155101997

namespace A113582

/-- `A268759(A114327(∑[n]-n))+1` -/
def P7883695776155101997.Spec : Prop :=
  ∀ n, P7883695776155101997.a n = A113582 (n + 1)

end A113582

/-! ## A113582.P4059865536576339999

`A268759(A141387(∑[n]-n))+1`
-/

namespace A113582.P4059865536576339999
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268759 (A141387 (∑ j ∈ Finset.range (n + 1), f1 j - n)).toNat + 1

end

end A113582.P4059865536576339999

namespace A113582

/-- `A268759(A141387(∑[n]-n))+1` -/
def P4059865536576339999.Spec : Prop :=
  ∀ n, P4059865536576339999.a n = A113582 (n + 1)

end A113582

/-!
# A113583: Number of permutations of length 2*n-1 with no local maxima in even positions.

The programs for A113583, there is no canonical definition to state claims against.
-/

/-! ## A113583.P13809006040640117920

`A360514(2*(n+1)-1)`
-/

namespace A113583.P13809006040640117920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360514 (2 * (n + 1) - 1)

end

end A113583.P13809006040640117920

/-! ## A113583.P9269544263692040599

`A272640(Δ[n²])`
-/

namespace A113583.P9269544263692040599
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272640 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A113583.P9269544263692040599

/-! ## A113583.P16114850095408981277

`2^n*A122647(n+1)`
-/

namespace A113583.P16114850095408981277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A122647 (n + 1)

end

end A113583.P16114850095408981277

/-! ## A113583.P9353420627466443788

`A261683(n+1)/(2*(n+1))*2^n`
-/

namespace A113583.P9353420627466443788
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A261683 (n + 1) : ℚ) / (2 * (n + 1) : ℚ) * (2 ^ n : ℚ)

end

end A113583.P9353420627466443788

/-!
# A113584: Beginning with 3, least prime such that concatenation of first n terms and its digit reversal both are primes.

The programs for A113584, there is no canonical definition to state claims against.
-/

/-! ## A113584.P12408790600811516920

`A006530(∑[A291902(n)]+5)`
-/

namespace A113584.P12408790600811516920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291902 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (∑ j ∈ Finset.range (n + 1), f1 j + 5).toNat

end

end A113584.P12408790600811516920

/-! ## A113584.P13350211310617111039

`A247244(xor(A001787(n), A167499(n)))`
-/

namespace A113584.P13350211310617111039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247244 (Int.xor (A001787 n) (A167499 n)).toNat

end

end A113584.P13350211310617111039

/-!
# A113585: Numbers formed by arranging the digits of n in increasing order concatenated with arranging the digits in decreasing order.

The programs for A113585, there is no canonical definition to state claims against.
-/

/-! ## A113585.P15440133651886719990

`A071273(A004186(n+1))`
-/

namespace A113585.P15440133651886719990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071273 (A004186 (n + 1)).toNat

end

end A113585.P15440133651886719990

/-! ## A113585.P10779253844581132323

`A052008(A056524(n+1))-A056524(A068637(n+1))`
-/

namespace A113585.P10779253844581132323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052008 (A056524 (n + 1)).toNat - A056524 (A068637 (n + 1)).toNat

end

end A113585.P10779253844581132323

/-! ## A113585.P10478439018137695084

`A071273(A068637(n+1)%A335448(n+1))`
-/

namespace A113585.P10478439018137695084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071273 (Int.tmod (A068637 (n + 1)) (A335448 (n + 1))).toNat

end

end A113585.P10478439018137695084

/-! ## A113585.P3888452090693133147

`A056524(n+1)%A262868(A163393(n+1))`
-/

namespace A113585.P3888452090693133147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A056524 (n + 1)) (A262868 (A163393 (n + 1)).toNat)

end

end A113585.P3888452090693133147

/-!
# A113586: Indices of terms of A113585 such that n divides A113585(n).

The programs for A113586, there is no canonical definition to state claims against.
-/

/-! ## A113586.P779754285668027371

`record[gcd(n+1, A113585(n+1))]`
-/

namespace A113586.P779754285668027371
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A113585 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A113586.P779754285668027371

/-! ## A113586.P7756968012411512977

`A125289(n+1)-A151795(A000931(n))`
-/

namespace A113586.P7756968012411512977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125289 (n + 1) - A151795 (A000931 n).toNat

end

end A113586.P7756968012411512977

/-! ## A113586.P5539943019204262991

`A084050(n+1)-A212619(A146767(n))`
-/

namespace A113586.P5539943019204262991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084050 (n + 1) - A212619 (A146767 n).toNat

end

end A113586.P5539943019204262991

/-! ## A113586.P9321752028404129745

`A096091(n+1)-A212619(A146767(n))`
-/

namespace A113586.P9321752028404129745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096091 (n + 1) - A212619 (A146767 n).toNat

end

end A113586.P9321752028404129745

/-! ## A113586.P8760972956574380958

`A281625(n+1)-A212619(A146767(n))`
-/

namespace A113586.P8760972956574380958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281625 (n + 1) - A212619 (A146767 n).toNat

end

end A113586.P8760972956574380958

/-!
# A113587: A113585(A113586(n))/n.

The programs for A113587, there is no canonical definition to state claims against.
-/

/-! ## A113587.P17495919841613764131

`A113585(A113586(n+1))/A113586(n+1)`
-/

namespace A113587.P17495919841613764131
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A113585 (A113586 (n + 1)).toNat : ℚ) / (A113586 (n + 1) : ℚ)

end

end A113587.P17495919841613764131

/-! ## A113587.P7942413948528348990

`p?[A230891(A087466(n+1))]`
-/

namespace A113587.P7942413948528348990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230891 (A087466 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A113587.P7942413948528348990

/-! ## A113587.P35137046055956317

`p?[A281096(A211262(n+1))]`
-/

namespace A113587.P35137046055956317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281096 (A211262 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A113587.P35137046055956317

/-! ## A113587.P11517417656255092127

`p?[A083971(n+1)%A078862(n+1)]`
-/

namespace A113587.P11517417656255092127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083971 (n + 1)) (A078862 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A113587.P11517417656255092127

/-! ## A113587.P15952548108813551557

`A279247((∑{digits}[n, 10^#]%9)^A219252(3*n+5))`
-/

namespace A113587.P15952548108813551557
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279247 (SequenceMachineLib.roundAway (((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => 10 ^ x).sum % 9 : ℕ) : ℚ) ^ (A219252 (3 * n + 5) : ℤ))).toNat

end

end A113587.P15952548108813551557

/-!
# A113588: 

The programs for A113588, there is no canonical definition to state claims against.
-/

/-! ## A113588.P12133210731360060660

`lcm(3, A067862(n+1)!)`
-/

namespace A113588.P12133210731360060660
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 3 (Nat.factorial (A067862 (n + 1)).toNat)

end

end A113588.P12133210731360060660

/-!
# A113589: A complementary variation of 'n described': if n is read as "a ones b twos" then a(n) = "one a's two b's", etc.

The programs for A113589, there is no canonical definition to state claims against.
-/

/-! ## A113589.P2758259164108322876

`A056967(A330286(n))`
-/

namespace A113589.P2758259164108322876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056967 (A330286 n).toNat

end

end A113589.P2758259164108322876

/-! ## A113589.P9443619002134143085

`and(A002275(n), A345255(A324099(n+1)))`
-/

namespace A113589.P9443619002134143085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A002275 n) (A345255 (A324099 (n + 1)).toNat)

end

end A113589.P9443619002134143085

/-! ## A113589.P11821725417830885589

`∑{digits}[n+1-A054977(A054455(n+1)), A002275(#)]`
-/

namespace A113589.P11821725417830885589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A054977 (A054455 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A002275 x).sum

end

end A113589.P11821725417830885589

/-!
# A113590: Least multiple of prime(n) containing only prime digits (2,3,5,7).

The programs for A113590, there is no canonical definition to state claims against.
-/

/-! ## A113590.P14977036277939883304

`A078239(A000040(n+1))`
-/

namespace A113590.P14977036277939883304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078239 (A000040 (n + 1)).toNat

end

end A113590.P14977036277939883304

/-! ## A113590.P17188536496395798364

`A078239(A006005(n+1))`
-/

namespace A113590.P17188536496395798364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078239 (A006005 (n + 1)).toNat

end

end A113590.P17188536496395798364

/-! ## A113590.P5302858888180511984

`A078239(A008578(n+2))`
-/

namespace A113590.P5302858888180511984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078239 (A008578 (n + 2)).toNat

end

end A113590.P5302858888180511984

/-! ## A113590.P509108598594090152

`A078239(A075643(n+2))`
-/

namespace A113590.P509108598594090152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078239 (A075643 (n + 2)).toNat

end

end A113590.P509108598594090152

/-! ## A113590.P3735815771405642872

`A078239(A182986(n+2))`
-/

namespace A113590.P3735815771405642872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078239 (A182986 (n + 2)).toNat

end

end A113590.P3735815771405642872

/-! ## A113590.P979890257683073556

`A078239(record[A006530(n+2)])`
-/

namespace A113590.P979890257683073556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078239 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A113590.P979890257683073556

/-! ## A113590.P6040586568740319535

`A078239(record[A014963(n+2)])`
-/

namespace A113590.P6040586568740319535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078239 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A113590.P6040586568740319535

/-! ## A113590.P15948165917708226944

`A078239(record[A020639(n+2)])`
-/

namespace A113590.P15948165917708226944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078239 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A113590.P15948165917708226944

/-! ## A113590.P9757736618283103258

`A078239(eq[1, A245715(n+1)])`
-/

namespace A113590.P9757736618283103258
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245715 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078239 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A113590.P9757736618283103258

/-!
# A113592: Array of quadratic pseudofibonacci sequences, read by antidiagonals.

The programs for A113592, there is no canonical definition to state claims against.
-/

/-! ## A113592.P17838989016733809012

`A193159(A059481(n))`
-/

namespace A113592.P17838989016733809012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193159 (A059481 n).toNat

end

end A113592.P17838989016733809012

/-! ## A113592.P3867908771126034391

`A193159(A213742(n))`
-/

namespace A113592.P3867908771126034391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193159 (A213742 n).toNat

end

end A113592.P3867908771126034391

/-! ## A113592.P6222770484931883686

`A193159(A213743(n))`
-/

namespace A113592.P6222770484931883686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193159 (A213743 n).toNat

end

end A113592.P6222770484931883686

/-! ## A113592.P4689944993166080984

`A193159(A213744(n))`
-/

namespace A113592.P4689944993166080984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193159 (A213744 n).toNat

end

end A113592.P4689944993166080984

/-! ## A113592.P6813900591579430403

`A193159(A213745(n))`
-/

namespace A113592.P6813900591579430403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193159 (A213745 n).toNat

end

end A113592.P6813900591579430403

/-!
# A113593: Minimal differences that appear in arithmetic progressions of primes.

The programs for A113593, there is no canonical definition to state claims against.
-/

/-! ## A113593.P18207357845079826885

`record[A346092(n+1)/A006530(n+1)]`
-/

namespace A113593.P18207357845079826885
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A346092 (n + 1) : ℚ) / (A006530 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A113593.P18207357845079826885

/-! ## A113593.P5351891916811387687

`record[A346092(n+1)/A033677(n+1)]`
-/

namespace A113593.P5351891916811387687
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A346092 (n + 1) : ℚ) / (A033677 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A113593.P5351891916811387687

/-! ## A113593.P13349095107320510994

`record[A346092(n+1)/A085392(n+1)]`
-/

namespace A113593.P13349095107320510994
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A346092 (n + 1) : ℚ) / (A085392 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A113593.P13349095107320510994

/-! ## A113593.P3723047327496765852

`record[A346092(n+1)/A111089(n+1)]`
-/

namespace A113593.P3723047327496765852
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A346092 (n + 1) : ℚ) / (A111089 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A113593.P3723047327496765852

/-! ## A113593.P1910446065219804212

`record[A346092(n+1)/A284695(n+1)]`
-/

namespace A113593.P1910446065219804212
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A346092 (n + 1) : ℚ) / (A284695 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A113593.P1910446065219804212

/-!
# A113596: P(P(n))-P(P(n-1)), where P(n) = n(n+1)(n+2)/6 (cf. A000292).

The programs for A113596, the canonical program `A113596.P2702111345057308089` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A113596 has offset 0).

The definition of A113596 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A113596.P2702111345057308089

`Δ[C(C(n+1, 3)+2, 3)]`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A113596

/-- `Δ[C(C(n+1, 3)+2, 3)]` -/
def P2702111345057308089.Spec : Prop :=
  ∀ n, P2702111345057308089.a n = A113596 n

theorem P2702111345057308089.correct : P2702111345057308089.Spec := by
  intro n
  simp only [A113596]

end A113596

/-! ## A113596.P3109606462389967185

`record[Δ[A140236(A056847(n))]]`
-/

namespace A113596.P3109606462389967185
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140236 (A056847 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A113596.P3109606462389967185

namespace A113596

/-- `record[Δ[A140236(A056847(n))]]` -/
def P3109606462389967185.Spec : Prop :=
  ∀ n, P3109606462389967185.a n = A113596 n

end A113596

/-! ## A113596.P5932505463255963542

`record[Δ[A140236(A004523(n))]]`
-/

namespace A113596.P5932505463255963542
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140236 (A004523 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A113596.P5932505463255963542

namespace A113596

/-- `record[Δ[A140236(A004523(n))]]` -/
def P5932505463255963542.Spec : Prop :=
  ∀ n, P5932505463255963542.a n = A113596 n

end A113596

/-! ## A113596.P5669776950717564308

`record[Δ[A140236(A002264(n))]]`
-/

namespace A113596.P5669776950717564308
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140236 (A002264 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A113596.P5669776950717564308

namespace A113596

/-- `record[Δ[A140236(A002264(n))]]` -/
def P5669776950717564308.Spec : Prop :=
  ∀ n, P5669776950717564308.a n = A113596 n

end A113596

/-! ## A113596.P14930051360103975150

`A140236(n)-A140236(log2(A011782(n)))`
-/

namespace A113596.P14930051360103975150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140236 n - A140236 (SequenceMachineLib.roundAway (Real.logb 2 (A011782 n : ℝ))).toNat

end

end A113596.P14930051360103975150

namespace A113596

/-- `A140236(n)-A140236(log2(A011782(n)))` -/
def P14930051360103975150.Spec : Prop :=
  ∀ n, P14930051360103975150.a n = A113596 n

end A113596

/-! ## A113596.P1142291462886205802

`Δ[A140236(log2(A011782(n)))]`
-/

namespace A113596.P1142291462886205802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140236 (SequenceMachineLib.roundAway (Real.logb 2 (A011782 n : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A113596.P1142291462886205802

namespace A113596

/-- `Δ[A140236(log2(A011782(n)))]` -/
def P1142291462886205802.Spec : Prop :=
  ∀ n, P1142291462886205802.a n = A113596 n

end A113596

/-!
# A113597: a(n) = F(F(n+1)) - F(F(n)), where F() = Fibonacci numbers.

The programs for A113597, the canonical program `A113597.P2999506805378957679` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A113597 has offset 0).

The definition of A113597 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000045(A000045(n+1))-A000045(A000045(n))` (program `A113597.P2999506805378957679`, by `A113597.P2999506805378957679.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A113597.P2999506805378957679

`A000045(A000045(n+1))-A000045(A000045(n))`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A113597

/-- `A000045(A000045(n+1))-A000045(A000045(n))` -/
def P2999506805378957679.Spec : Prop :=
  ∀ n, P2999506805378957679.a n = A113597 n

theorem P2999506805378957679.correct : P2999506805378957679.Spec := by
  intro n
  simp only [A113597]

end A113597

/-! ## A113597.P11353739985290790464

`Δ[A007570(n)]`
-/

namespace A113597.P11353739985290790464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007570 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A113597.P11353739985290790464

namespace A113597

/-- `Δ[A007570(n)]` -/
def P11353739985290790464.Spec : Prop :=
  ∀ n, P11353739985290790464.a n = A113597 n

end A113597

/-! ## A113597.P7317742083199304273

`Δ[A000045(A000045(n))]`
-/

namespace A113597.P7317742083199304273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A000045 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A113597.P7317742083199304273

namespace A113597

/-- `Δ[A000045(A000045(n))]` -/
def P7317742083199304273.Spec : Prop :=
  ∀ n, P7317742083199304273.a n = A113597 n

theorem P7317742083199304273.correct : P7317742083199304273.Spec := by
  intro n
  simp only [A113597, Nat.add_sub_cancel, A113597.P7317742083199304273.f1, A113597.P7317742083199304273.a, A113597.P2999506805378957679.a, SequenceMachineLib.memo_apply]

end A113597

/-! ## A113597.P934332795694678186

`Δ[A103609(A001588(n))]`
-/

namespace A113597.P934332795694678186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103609 (A001588 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A113597.P934332795694678186

namespace A113597

/-- `Δ[A103609(A001588(n))]` -/
def P934332795694678186.Spec : Prop :=
  ∀ n, P934332795694678186.a n = A113597 n

end A113597

/-! ## A113597.P14800540399563039963

`Δ[A157726(abs(A236191(n)))]`
-/

namespace A113597.P14800540399563039963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157726 |A236191 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A113597.P14800540399563039963

namespace A113597

/-- `Δ[A157726(abs(A236191(n)))]` -/
def P14800540399563039963.Spec : Prop :=
  ∀ n, P14800540399563039963.a n = A113597 n

end A113597

/-!
# A113598: Least n-digit prime whose digit permutations yield at least n distinct primes, or 0 if no such prime exists.

The programs for A113598, there is no canonical definition to state claims against.
-/

/-! ## A113598.P14298171626398862040

`A139053(A047444(n+1)+A032555(n+1))`
-/

namespace A113598.P14298171626398862040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139053 (A047444 (n + 1) + A032555 (n + 1)).toNat

end

end A113598.P14298171626398862040

/-! ## A113598.P16172447205617858537

`A075610(A006880(n)+2)`
-/

namespace A113598.P16172447205617858537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075610 (A006880 n + 2).toNat

end

end A113598.P16172447205617858537

/-!
# A113599: Least n-digit multiple of n whose digit permutations yield at least n distinct multiples of n, or 0 if no such number exists.

The programs for A113599, there is no canonical definition to state claims against.
-/

/-! ## A113599.P15334355900813226654

`A057169(a(n-1)+1)-A053644(n)+n` with `a(0)=1`
-/

namespace A113599.P15334355900813226654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A057169 (a (n - 1) + 1).toNat - A053644 n + (n : ℤ)

end

end A113599.P15334355900813226654

