import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C038
import Seq.B000.C042
import Seq.B000.C045
import Seq.B000.C047
import Seq.B000.C050
import Seq.B001.C009
import Seq.B001.C013
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C007
import Seq.B002.C008
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B007.C000
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
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C024

/-!
# A399102: Number of independent vertex sets in the n X n Klein bottle graph.

The programs for A399102, there is no canonical definition to state claims against.
-/

/-! ## A399102.P14376611511470538045

`A399101((n+1)²+n²)`
-/

namespace A399102.P14376611511470538045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399101 ((n + 1) ^ 2 + n ^ 2)

end

end A399102.P14376611511470538045

/-!
# A399104: Number of independent vertex sets in the n X n Moebius strip graph.

The programs for A399104, there is no canonical definition to state claims against.
-/

/-! ## A399104.P16441085115072940867

`A399103(4*∑[n])`
-/

namespace A399104.P16441085115072940867
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399103 (4 * (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A399104.P16441085115072940867

/-!
# A399105: Primes that are the concatenation of a prime and a square.

The programs for A399105, there is no canonical definition to state claims against.
-/

/-! ## A399105.P3407365749200643897

`∩[A227919(n+1), A232658(n+1)]`
-/

namespace A399105.P3407365749200643897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227919 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232658 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A399105.P3407365749200643897

/-! ## A399105.P5226653305445534993

`∩[A237415(n), A240898(n+1)]`
-/

namespace A399105.P5226653305445534993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237415 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240898 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A399105.P5226653305445534993

/-! ## A399105.P4737750700531608157

`∩[A240898(n+1), A275068(n)]`
-/

namespace A399105.P4737750700531608157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240898 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275068 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A399105.P4737750700531608157

/-! ## A399105.P5537546722235371596

`∩[A008854(n+1), A240898(n+1)]`
-/

namespace A399105.P5537546722235371596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008854 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240898 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A399105.P5537546722235371596

/-! ## A399105.P16469504249316274238

`∩[A023173(n+1), A240898(n+1)]`
-/

namespace A399105.P16469504249316274238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023173 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240898 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A399105.P16469504249316274238

/-!
# A399107: Number of nonisomorphic posets on n elements with trivial automorphism group.

The programs for A399107, there is no canonical definition to state claims against.
-/

/-! ## A399107.P17069209241193005202

`A380409(a(n-1)²)` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A399107.P17069209241193005202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  A380409 (a (n - 1) ^ 2).toNat

end

end A399107.P17069209241193005202

/-! ## A399107.P2827198280350981308

`A140437(A008073(n))`
-/

namespace A399107.P2827198280350981308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140437 (A008073 n).toNat

end

end A399107.P2827198280350981308

/-!
# A399110: Number of endofunctions on [2n] with exactly n isolated fixed points.

The programs for A399110, the canonical program `A399110.P15232046065306847275` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A399110 has offset 0).

The definition of A399110 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A399110.P15232046065306847275

`∑{#}[n, (-1)^(n-#)*#^#*(2*n)!/((n-#)!*#!*n!)]`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A399110

/-- `∑{#}[n, (-1)^(n-#)*#^#*(2*n)!/((n-#)!*#!*n!)]` -/
def P15232046065306847275.Spec : Prop :=
  ∀ n, P15232046065306847275.a n = (A399110 n : ℚ)

end A399110

/-! ## A399110.P10772667249483228549

`A350212(4*∑[n])`
-/

namespace A399110.P10772667249483228549
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350212 (4 * (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A399110.P10772667249483228549

namespace A399110

/-- `A350212(4*∑[n])` -/
def P10772667249483228549.Spec : Prop :=
  ∀ n, P10772667249483228549.a n = A399110 n

end A399110

/-!
# A399112: G.f.: (Sum_{k>=1} x^(4*k)/(1 + x^(4*k))) / Product_{k>=1} (1 - x^k).

The programs for A399112, there is no canonical definition to state claims against.
-/

/-! ## A399112.P8876689537200416996

`A382019(A399074(n))`
-/

namespace A399112.P8876689537200416996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382019 (A399074 n).toNat

end

end A399112.P8876689537200416996

/-!
# A399115: Expansion of e.g.f. 1/(cosh(x) - x*cosh(x)^2).

The programs for A399115, there is no canonical definition to state claims against.
-/

/-! ## A399115.P5777074042346438224

`A175137(A097123(n))`
-/

namespace A399115.P5777074042346438224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175137 (A097123 n).toNat

end

end A399115.P5777074042346438224

/-!
# A399116: Expansion of e.g.f. 1/(cosh(x) - x*cosh(x)^3).

The programs for A399116, there is no canonical definition to state claims against.
-/

/-! ## A399116.P8310847112983431118

`A300945(A055864(n+1))`
-/

namespace A399116.P8310847112983431118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300945 (A055864 (n + 1)).toNat

end

end A399116.P8310847112983431118

/-!
# A399119: a(n) is the number of distinct cardinalities of inclusion-maximal Sidon subsets of {1, ..., n}.

The programs for A399119, there is no canonical definition to state claims against.
-/

/-! ## A399119.P1522532936123323215

`A143824(n)-A382397(n)+1`
-/

namespace A399119.P1522532936123323215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143824 n - A382397 n + 1

end

end A399119.P1522532936123323215

/-!
# A399125: Numbers k = rad(k) * lpf(k)^2 such that A008479(k) = 3, where rad = A007947 and lpf(k) is the least prime factor of k.

The programs for A399125, there is no canonical definition to state claims against.
-/

/-! ## A399125.P9356543056236350126

`∩[A048109(n+1), A397742(n+1)]`
-/

namespace A399125.P9356543056236350126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048109 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397742 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A399125.P9356543056236350126

/-! ## A399125.P7446137929253887846

`∩[A175496(n+1), A397742(n+1)]`
-/

namespace A399125.P7446137929253887846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175496 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397742 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A399125.P7446137929253887846

/-! ## A399125.P18325601280240769532

`∩[A176297(n+1), A397742(n+1)]`
-/

namespace A399125.P18325601280240769532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176297 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397742 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A399125.P18325601280240769532

/-! ## A399125.P7623060106051791168

`∩[A195086(n+1), A397742(n+1)]`
-/

namespace A399125.P7623060106051791168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195086 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397742 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A399125.P7623060106051791168

/-! ## A399125.P17848480257217723863

`∩[A301517(n+1), A397742(n+1)]`
-/

namespace A399125.P17848480257217723863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301517 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397742 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A399125.P17848480257217723863

/-! ## A399125.P15817764953292786666

`∩[A336593(n+1), A397742(n+1)]`
-/

namespace A399125.P15817764953292786666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336593 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397742 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A399125.P15817764953292786666

/-! ## A399125.P422755403670867054

`filter[A048109(n+1), A355453(#)]`
-/

namespace A399125.P422755403670867054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048109 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355453 (f1 j).toNat = 1) n)

end

end A399125.P422755403670867054

/-! ## A399125.P7292923491748856798

`filter[A397458(n+1), A355453(#)]`
-/

namespace A399125.P7292923491748856798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397458 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355453 (f1 j).toNat = 1) n)

end

end A399125.P7292923491748856798

/-! ## A399125.P13955872476637925639

`filter[A397742(n+1), A355453(#)]`
-/

namespace A399125.P13955872476637925639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397742 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355453 (f1 j).toNat = 1) n)

end

end A399125.P13955872476637925639

/-! ## A399125.P10098824317413908210

`filter[A397742(n+1), A359472(#)]`
-/

namespace A399125.P10098824317413908210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397742 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359472 (f1 j).toNat = 1) n)

end

end A399125.P10098824317413908210

/-! ## A399125.P3991596830466703364

`filter[A397742(n+1), A359473(#)]`
-/

namespace A399125.P3991596830466703364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397742 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359473 (f1 j).toNat = 1) n)

end

end A399125.P3991596830466703364

/-! ## A399125.P17536067438474824645

`∩[A366761(n+1), A397742(n+1)]`
-/

namespace A399125.P17536067438474824645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366761 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397742 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A399125.P17536067438474824645

/-! ## A399125.P11884747738784205091

`∩[A240111(n+1), A397742(n+1)]`
-/

namespace A399125.P11884747738784205091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240111 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397742 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A399125.P11884747738784205091

/-! ## A399125.P12916299056937239345

`∩[A177899(n+1), A397742(n+1)]`
-/

namespace A399125.P12916299056937239345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177899 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397742 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A399125.P12916299056937239345

/-! ## A399125.P2167003393151454405

`∩[A060476(n+1), A397742(n+1)]`
-/

namespace A399125.P2167003393151454405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060476 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397742 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A399125.P2167003393151454405

/-! ## A399125.P2059223661958831825

`∩[A295661(n+1), A397742(n+1)]`
-/

namespace A399125.P2059223661958831825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295661 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397742 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A399125.P2059223661958831825

/-! ## A399125.P634323147841424828

`∩[A325990(n+1), A397742(n+1)]`
-/

namespace A399125.P634323147841424828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325990 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397742 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A399125.P634323147841424828

/-! ## A399125.P6781576429278707852

`∩[A173743(n+1), A397742(n+1)]`
-/

namespace A399125.P6781576429278707852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173743 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397742 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A399125.P6781576429278707852

/-! ## A399125.P14961407658160466620

`∩[A365866(n+1), A397742(n+1)]`
-/

namespace A399125.P14961407658160466620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365866 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397742 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A399125.P14961407658160466620

/-!
# A399126: Numbers k = rad(k) * lpf(k)^3 such that A008479(k) = 4, where rad = A007947 and lpf = least prime factor.

The programs for A399126, there is no canonical definition to state claims against.
-/

/-! ## A399126.P4618340006660141252

`∩[A048946(n+1), A398804(n+1)]`
-/

namespace A399126.P4618340006660141252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398804 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A399126.P4618340006660141252

/-! ## A399126.P1976223575575625694

`∩[A336595(n+1), A398804(n+1)]`
-/

namespace A399126.P1976223575575625694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336595 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398804 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A399126.P1976223575575625694

/-! ## A399126.P17632367437450948134

`∩[A383264(n+1), A398804(n+1)]`
-/

namespace A399126.P17632367437450948134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383264 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398804 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A399126.P17632367437450948134

/-! ## A399126.P3750027388614353785

`∩[A386804(n+1), A398804(n+1)]`
-/

namespace A399126.P3750027388614353785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386804 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398804 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A399126.P3750027388614353785

/-! ## A399126.P6643299764527445196

`∩[A397459(n+1), A398804(n+1)]`
-/

namespace A399126.P6643299764527445196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397459 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398804 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A399126.P6643299764527445196

/-! ## A399126.P15902390229987517985

`∩[A130897(n+1), A398804(n+1)]`
-/

namespace A399126.P15902390229987517985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130897 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398804 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A399126.P15902390229987517985

/-! ## A399126.P6163885008814038927

`∩[A082294(n+1), A398804(n+1)]`
-/

namespace A399126.P6163885008814038927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082294 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398804 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A399126.P6163885008814038927

/-! ## A399126.P16064241638127218748

`∩[A195087(n+1), A398804(n+1)]`
-/

namespace A399126.P16064241638127218748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195087 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398804 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A399126.P16064241638127218748

/-! ## A399126.P17775778105674233166

`∩[A354181(n+1), A398804(n+1)]`
-/

namespace A399126.P17775778105674233166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354181 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398804 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A399126.P17775778105674233166

/-! ## A399126.P6374193161545619828

`∩[A322448(n+1), A398804(n+1)]`
-/

namespace A399126.P6374193161545619828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322448 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398804 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A399126.P6374193161545619828

/-! ## A399126.P13419467819636549778

`∩[A360723(n+1), A398804(n+1)]`
-/

namespace A399126.P13419467819636549778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360723 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398804 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A399126.P13419467819636549778

/-! ## A399126.P13330405157031257018

`∩[A377563(n+1), A398804(n+1)]`
-/

namespace A399126.P13330405157031257018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377563 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398804 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A399126.P13330405157031257018

/-! ## A399126.P5603896972786237432

`∩[A046101(n+1), A398804(n+1)]`
-/

namespace A399126.P5603896972786237432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046101 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398804 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A399126.P5603896972786237432

/-! ## A399126.P5328959526779293867

`filter[A398804(n+1), A355453(#)]`
-/

namespace A399126.P5328959526779293867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398804 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355453 (f1 j).toNat = 1) n)

end

end A399126.P5328959526779293867

/-! ## A399126.P4689483460555846657

`filter[A398804(n+1), A380454(#)]`
-/

namespace A399126.P4689483460555846657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398804 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A380454 (f1 j).toNat = 1) n)

end

end A399126.P4689483460555846657

/-! ## A399126.P13432954294175489559

`∩[A048111(n+1), A398804(n+1)]`
-/

namespace A399126.P13432954294175489559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048111 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398804 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A399126.P13432954294175489559

/-!
# A399127: Numbers k = rad(k) * q(k) such that A008479(k) = 3, where rad = A007947 and q(k) = second smallest distinct prime factor of k.

The programs for A399127, there is no canonical definition to state claims against.
-/

/-! ## A399127.P18370435880873031044

`∩[A093617(n+1), A397742(n+1)]`
-/

namespace A399127.P18370435880873031044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093617 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397742 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A399127.P18370435880873031044

/-! ## A399127.P15740864207613808901

`∩[A397742(n+1), A398442(n+1)]`
-/

namespace A399127.P15740864207613808901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397742 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398442 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A399127.P15740864207613808901

/-! ## A399127.P4186424580068141960

`∩[A397742(n+1), A400801(n+1)]`
-/

namespace A399127.P4186424580068141960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397742 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400801 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A399127.P4186424580068141960

/-! ## A399127.P14085222558995415133

`∩[A071365(n+1), A397742(n+1)]`
-/

namespace A399127.P14085222558995415133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071365 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397742 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A399127.P14085222558995415133

/-! ## A399127.P16829207472418849877

`∩[A397742(n+1), A398375(n+1)]`
-/

namespace A399127.P16829207472418849877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397742 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398375 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A399127.P16829207472418849877

/-! ## A399127.P14157493730811847732

`filter[A397742(n+1), A212793(#)]`
-/

namespace A399127.P14157493730811847732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397742 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A212793 (f1 j).toNat = 1) n)

end

end A399127.P14157493730811847732

/-! ## A399127.P9241255409782814532

`filter[A397742(n+1), A355823(#)]`
-/

namespace A399127.P9241255409782814532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397742 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355823 (f1 j).toNat = 1) n)

end

end A399127.P9241255409782814532

/-! ## A399127.P6610192949509362859

`filter[A397742(n+1), A355825(#)]`
-/

namespace A399127.P6610192949509362859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397742 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355825 (f1 j).toNat = 1) n)

end

end A399127.P6610192949509362859

/-! ## A399127.P11456030875043911583

`filter[A397742(n+1), A359429(#)]`
-/

namespace A399127.P11456030875043911583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397742 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359429 (f1 j).toNat = 1) n)

end

end A399127.P11456030875043911583

/-! ## A399127.P7728143437688913559

`filter[A397742(n+1), A359471(#)]`
-/

namespace A399127.P7728143437688913559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397742 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359471 (f1 j).toNat = 1) n)

end

end A399127.P7728143437688913559

/-! ## A399127.P2281299086278162633

`filter[A397742(n+1), A359474(#)]`
-/

namespace A399127.P2281299086278162633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397742 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359474 (f1 j).toNat = 1) n)

end

end A399127.P2281299086278162633

/-! ## A399127.P3147549555246461639

`filter[A397742(n+1), A359475(#)]`
-/

namespace A399127.P3147549555246461639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397742 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359475 (f1 j).toNat = 1) n)

end

end A399127.P3147549555246461639

/-! ## A399127.P5352660462172883592

`∩[A375397(n+1), A397742(n+1)]`
-/

namespace A399127.P5352660462172883592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375397 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397742 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A399127.P5352660462172883592

/-! ## A399127.P15642978004724569260

`filter[A397742(n+1), A353470(#)]`
-/

namespace A399127.P15642978004724569260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397742 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353470 (f1 j).toNat = 1) n)

end

end A399127.P15642978004724569260

/-! ## A399127.P13455091683669714266

`∩[A376216(n+1), A397742(n+1)]`
-/

namespace A399127.P13455091683669714266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376216 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397742 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A399127.P13455091683669714266

/-! ## A399127.P5558177638257093935

`∩[A360768(n+1), A397742(n+1)]`
-/

namespace A399127.P5558177638257093935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360768 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397742 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A399127.P5558177638257093935

/-! ## A399127.P16834129546027261431

`∩[A072357(n+1), A397742(n+1)]`
-/

namespace A399127.P16834129546027261431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072357 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397742 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A399127.P16834129546027261431

/-! ## A399127.P3347006427010508900

`∩[A060687(n+1), A397742(n+1)]`
-/

namespace A399127.P3347006427010508900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060687 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397742 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A399127.P3347006427010508900

/-! ## A399127.P5014586179974707170

`∩[A376249(n+1), A397742(n+1)]`
-/

namespace A399127.P5014586179974707170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376249 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397742 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A399127.P5014586179974707170

/-! ## A399127.P18268019216667954168

`∩[A386684(n+1), A397742(n+1)]`
-/

namespace A399127.P18268019216667954168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386684 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397742 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A399127.P18268019216667954168

/-!
# A399128: Numbers k = rad(k) * lpf(k)^4 such that A008479(k) = 5, where rad = A007947 and lpf = least prime factor of k.

The programs for A399128, there is no canonical definition to state claims against.
-/

/-! ## A399128.P5542130320919489493

`∩[A195088(n+1), A399320(n+1)]`
-/

namespace A399128.P5542130320919489493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195088 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399320 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A399128.P5542130320919489493

/-! ## A399128.P16416300113073180108

`∩[A362841(n+1), A399320(n+1)]`
-/

namespace A399128.P16416300113073180108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362841 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399320 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A399128.P16416300113073180108

/-! ## A399128.P3168508295194042618

`∩[A398443(n+1), A399320(n+1)]`
-/

namespace A399128.P3168508295194042618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398443 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399320 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A399128.P3168508295194042618

/-!
# A399129: Primes of the forms 10*k+1 and 10*k+9 for which the number of primes of the forms 10*k+1 and 10*k+9 are equal.

The programs for A399129, there is no canonical definition to state claims against.
-/

/-! ## A399129.P11840326606498126245

`A103804(A337854(n+1))`
-/

namespace A399129.P11840326606498126245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103804 (A337854 (n + 1)).toNat

end

end A399129.P11840326606498126245

/-!
# A399131: Number of moves to solve the Tower of Hanoi whose disks are the prime factors of n.

The programs for A399131, there is no canonical definition to state claims against.
-/

/-! ## A399131.P10848441228586635458

`A048675(A331580(n+1))`
-/

namespace A399131.P10848441228586635458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048675 (A331580 (n + 1)).toNat

end

end A399131.P10848441228586635458

/-! ## A399131.P11832711968004964644

`A244158(A037916(n+1))`
-/

namespace A399131.P11832711968004964644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244158 (A037916 (n + 1)).toNat

end

end A399131.P11832711968004964644

/-! ## A399131.P3267671766594734847

`and(A037916(n+1), A130602(n+1))`
-/

namespace A399131.P3267671766594734847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A037916 (n + 1)) (A130602 (n + 1))

end

end A399131.P3267671766594734847

/-! ## A399131.P5954013964802298935

`A239707(A111681(n+1))`
-/

namespace A399131.P5954013964802298935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239707 (A111681 (n + 1)).toNat

end

end A399131.P5954013964802298935

/-! ## A399131.P3230843752263509335

`A333750(A379481(n+1))`
-/

namespace A399131.P3230843752263509335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333750 (A379481 (n + 1)).toNat

end

end A399131.P3230843752263509335

/-!
# A399132: Square array T(n,k), n >= 0, k >= 0, read by antidiagonals: T(n,k) = Sum_{j=0..n} Stirling2(n,j) * binomial(k+j-1, j-1), where Stirling2 are the Stirling numbers of the second kind (A008277).

The programs for A399132, there is no canonical definition to state claims against.
-/

/-! ## A399132.P599866871634409204

`A082861(A216806(n))`
-/

namespace A399132.P599866871634409204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082861 (A216806 n).toNat

end

end A399132.P599866871634409204

/-! ## A399132.P3635680878262711329

`A117707(A290776(n))`
-/

namespace A399132.P3635680878262711329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117707 (A290776 n).toNat

end

end A399132.P3635680878262711329

/-!
# A399134: Triangle read by rows: T(n,m) = 2 * d_GH(S_n, S_m) for 1 <= m <= n, where d_GH is the Gromov-Hausdorff distance between symmetric groups equipped with the Hamming metric.

The programs for A399134, there is no canonical definition to state claims against.
-/

/-! ## A399134.P6081146413036602823

`A303370(A027466(n))`
-/

namespace A399134.P6081146413036602823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303370 (A027466 n).toNat

end

end A399134.P6081146413036602823

/-! ## A399134.P9876530735099546379

`A303370(A038279(n))`
-/

namespace A399134.P9876530735099546379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303370 (A038279 n).toNat

end

end A399134.P9876530735099546379

/-! ## A399134.P1465994733869376754

`A303370(A113365(n))`
-/

namespace A399134.P1465994733869376754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303370 (A113365 n).toNat

end

end A399134.P1465994733869376754

/-! ## A399134.P11631257885098327251

`A303370(A113378(n))`
-/

namespace A399134.P11631257885098327251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303370 (A113378 n).toNat

end

end A399134.P11631257885098327251

/-! ## A399134.P3762385608599125781

`A303370(A113384(n))`
-/

namespace A399134.P3762385608599125781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303370 (A113384 n).toNat

end

end A399134.P3762385608599125781

/-!
# A399137: Number of 4-element subsets of {(x,y,z) in Z^3: |x|+|y|+|z| <= n} that are the vertices of a regular tetrahedron.

The programs for A399137, there is no canonical definition to state claims against.
-/

/-! ## A399137.P16465510586098465333

`A154485(A126939(n))`
-/

namespace A399137.P16465510586098465333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154485 (A126939 n).toNat

end

end A399137.P16465510586098465333

/-!
# A399139: Maximum size of a subset of {1,...,n} in which no prime divides more than 3 elements.

The programs for A399139, there is no canonical definition to state claims against.
-/

/-! ## A399139.P8049913216357022478

`A085423(A326507(n+7))`
-/

namespace A399139.P8049913216357022478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085423 (A326507 (n + 7)).toNat

end

end A399139.P8049913216357022478

/-! ## A399139.P5005974929368722920

`A061555(A392816(n))`
-/

namespace A399139.P5005974929368722920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061555 (A392816 n).toNat

end

end A399139.P5005974929368722920

/-! ## A399139.P2157221284600738229

`A061555(A003594(n+1))`
-/

namespace A399139.P2157221284600738229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061555 (A003594 (n + 1)).toNat

end

end A399139.P2157221284600738229

/-! ## A399139.P13363095251997871734

`A070939(A066624(n+1))`
-/

namespace A399139.P13363095251997871734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (A066624 (n + 1)).toNat

end

end A399139.P13363095251997871734

/-! ## A399139.P9003890016556738326

`A061555(A288342(n+1))`
-/

namespace A399139.P9003890016556738326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061555 (A288342 (n + 1)).toNat

end

end A399139.P9003890016556738326

/-!
# A399140: Integers that are both pseudoperfect and pseudo-antiperfect.

The programs for A399140, there is no canonical definition to state claims against.
-/

/-! ## A399140.P3650678020949549030

`∩[A005835(n+1), A192270(n+1)]`
-/

namespace A399140.P3650678020949549030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005835 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192270 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A399140.P3650678020949549030

/-! ## A399140.P12730000277567810844

`filter[A192270(n+1), A210455(#)]`
-/

namespace A399140.P12730000277567810844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192270 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A210455 (f1 j).toNat = 1) n)

end

end A399140.P12730000277567810844

/-!
# A399142: Triangle read by rows: T(n,k) counts trees on [n] rooted at 1 together with a level assignment L:[n]->{0,...,k} that uses every level, has L(1)=0, and strictly increases from parent to child, 0<=k<=n-1.

The programs for A399142, there is no canonical definition to state claims against.
-/

/-! ## A399142.P16382229450126550973

`A172152(A323128(n))`
-/

namespace A399142.P16382229450126550973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172152 (A323128 n).toNat

end

end A399142.P16382229450126550973

/-!
# A399146: G.f.: (Sum_{k>=1} x^(k^4)/(1 - x^(k^4))) / Product_{k>=1} (1 - x^k).

The programs for A399146, there is no canonical definition to state claims against.
-/

/-! ## A399146.P11523069973183205429

`∑{#}[n-1, A063775(#+1)*A000041(n-(#+1))]`
-/

namespace A399146.P11523069973183205429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, A063775 (k + 1) * A000041 (n - (k + 1))

end

end A399146.P11523069973183205429

/-! ## A399146.P10030894142058503125

`A208478(A140064(n))`
-/

namespace A399146.P10030894142058503125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208478 (A140064 n).toNat

end

end A399146.P10030894142058503125

/-! ## A399146.P10681649861493819714

`A208478(A006137(n))`
-/

namespace A399146.P10681649861493819714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208478 (A006137 n).toNat

end

end A399146.P10681649861493819714

/-! ## A399146.P1244046507618646199

`A000070(n)-A002260(A086737(n))`
-/

namespace A399146.P1244046507618646199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 n - A002260 (A086737 n).toNat

end

end A399146.P1244046507618646199

/-! ## A399146.P5328278080166840216

`A339564(2^n)`
-/

namespace A399146.P5328278080166840216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339564 (2 ^ n)

end

end A399146.P5328278080166840216

/-!
# A399147: Number of distinct proper side-crossing points among regular polygons inscribed in a common circle and aligned by their side midpoints.

The programs for A399147, there is no canonical definition to state claims against.
-/

/-! ## A399147.P12500359016505647180

`A243117(A300741(n))`
-/

namespace A399147.P12500359016505647180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243117 (A300741 n).toNat

end

end A399147.P12500359016505647180

/-!
# A399148: a(n) is the number of trees with n unlabeled vertices with at most two peripheral vertices.

The programs for A399148, there is no canonical definition to state claims against.
-/

/-! ## A399148.P1847095098785746266

`A399096(A133263(n))`
-/

namespace A399148.P1847095098785746266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399096 (A133263 n).toNat

end

end A399148.P1847095098785746266

/-! ## A399148.P15650347428691458912

`A399096(A238531(n+1))`
-/

namespace A399148.P15650347428691458912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399096 (A238531 (n + 1)).toNat

end

end A399148.P15650347428691458912

/-! ## A399148.P11124970726078584480

`A323347(A309545(n))`
-/

namespace A399148.P11124970726078584480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323347 (A309545 n).toNat

end

end A399148.P11124970726078584480

/-! ## A399148.P5655276917898977684

`A101886(A295637(n+1))`
-/

namespace A399148.P5655276917898977684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101886 (A295637 (n + 1)).toNat

end

end A399148.P5655276917898977684

/-!
# A399149: G.f.: (Sum_{k>=1} x^(k^2)/(1 - x^(k^2))) * Product_{k>=1} (1 + x^k).

The programs for A399149, there is no canonical definition to state claims against.
-/

/-! ## A399149.P6215728408494837604

`∑{#}[n-1, A046951(#+1)*A000009(n-(#+1))]`
-/

namespace A399149.P6215728408494837604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, A046951 (k + 1) * A000009 (n - (k + 1))

end

end A399149.P6215728408494837604

/-!
# A399150: G.f.: (Sum_{k>=1} x^(k^3)/(1 - x^(k^3))) * Product_{k>=1} (1 + x^k).

The programs for A399150, there is no canonical definition to state claims against.
-/

/-! ## A399150.P15235747163421592863

`∑{#}[n-1, A061704(#+1)*A000009(n-(#+1))]`
-/

namespace A399150.P15235747163421592863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, A061704 (k + 1) * A000009 (n - (k + 1))

end

end A399150.P15235747163421592863

/-! ## A399150.P3655106460022794774

`A105566(A096778(n+1))`
-/

namespace A399150.P3655106460022794774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105566 (A096778 (n + 1)).toNat

end

end A399150.P3655106460022794774

/-! ## A399150.P17954193697008280831

`A353086(A069259(n+1))`
-/

namespace A399150.P17954193697008280831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353086 (A069259 (n + 1)).toNat

end

end A399150.P17954193697008280831

/-! ## A399150.P8387442759505583012

`A121902(A124633(n+1))`
-/

namespace A399150.P8387442759505583012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121902 (A124633 (n + 1)).toNat

end

end A399150.P8387442759505583012

/-! ## A399150.P15686538467815709886

`A090532(A198950(n+1))`
-/

namespace A399150.P15686538467815709886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090532 (A198950 (n + 1)).toNat

end

end A399150.P15686538467815709886

/-!
# A399151: G.f.: (Sum_{k>=1} x^(k^4)/(1 - x^(k^4))) * Product_{k>=1} (1 + x^k).

The programs for A399151, there is no canonical definition to state claims against.
-/

/-! ## A399151.P9563022123794853734

`∑{#}[n-1, A063775(#+1)*A000009(n-(#+1))]`
-/

namespace A399151.P9563022123794853734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, A063775 (k + 1) * A000009 (n - (k + 1))

end

end A399151.P9563022123794853734

/-! ## A399151.P16729502844879588915

`A395308(A131577(n))`
-/

namespace A399151.P16729502844879588915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395308 (A131577 n).toNat

end

end A399151.P16729502844879588915

/-! ## A399151.P8264653835548391001

`A395308(A034008(n+1))`
-/

namespace A399151.P8264653835548391001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395308 (A034008 (n + 1)).toNat

end

end A399151.P8264653835548391001

/-! ## A399151.P5438773314854332449

`eq[A139551(n), A309992(n)]`
-/

namespace A399151.P5438773314854332449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139551 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309992 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A399151.P5438773314854332449

/-! ## A399151.P18350661816032123041

`eq[A139551(n), A370614(n)]`
-/

namespace A399151.P18350661816032123041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139551 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370614 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A399151.P18350661816032123041

/-!
# A399155: a(n) = f(n) - g(n), where f(n) is the number of steps to reach 0 by repeatedly subtracting the smallest prime factor of the current value, and g(n) is the number of steps to reach 0 by repeatedly subtracting the largest prime factor.

The programs for A399155, the canonical program `A399155.P3147471134997394495` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A399155 has offset 2).

The definition of A399155 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A399155.P3147471134997394495

`A175126(n+2)-A309892(n+2)`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A399155

/-- `A175126(n+2)-A309892(n+2)` -/
def P3147471134997394495.Spec : Prop :=
  ∀ n, P3147471134997394495.a n = A399155 (n + 2)

theorem P3147471134997394495.correct : P3147471134997394495.Spec := by
  intro n
  simp only [A399155, Nat.add_sub_cancel]

end A399155

/-!
# A399158: Squares visited by a Dabbaba moving on a spirally numbered board always to the lowest available unvisited square.

The programs for A399158, there is no canonical definition to state claims against.
-/

/-! ## A399158.P1835509268835509836

`A316884(A316884(n+1))`
-/

namespace A399158.P1835509268835509836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316884 (A316884 (n + 1)).toNat

end

end A399158.P1835509268835509836

/-! ## A399158.P16585411523454608703

`A316967(A316967(n))+1`
-/

namespace A399158.P16585411523454608703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316967 (A316967 n).toNat + 1

end

end A399158.P16585411523454608703

/-! ## A399158.P15851970553142109509

`A223925(A337254(n+1))`
-/

namespace A399158.P15851970553142109509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223925 (A337254 (n + 1)).toNat

end

end A399158.P15851970553142109509

/-! ## A399158.P11218306035962349427

`A337254(n+1)%A002189(n)`
-/

namespace A399158.P11218306035962349427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A337254 (n + 1)) (A002189 n)

end

end A399158.P11218306035962349427

/-! ## A399158.P2802553658999366640

`lcm(A123271(n+2), A337254(n+1))`
-/

namespace A399158.P2802553658999366640
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A123271 (n + 2)) (A337254 (n + 1))

end

end A399158.P2802553658999366640

/-!
# A399159: G.f. A(x) satisfies A(x) = 1/(1 - x * A(x^3)^2).

The programs for A399159, there is no canonical definition to state claims against.
-/

/-! ## A399159.P4030857587299992391

`A373654(A004896(n+1))`
-/

namespace A399159.P4030857587299992391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373654 (A004896 (n + 1)).toNat

end

end A399159.P4030857587299992391

/-! ## A399159.P935980027671599675

`A373654(A004907(n+1))`
-/

namespace A399159.P935980027671599675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373654 (A004907 (n + 1)).toNat

end

end A399159.P935980027671599675

/-! ## A399159.P9953413767443446571

`A373654(A004918(n+1))`
-/

namespace A399159.P9953413767443446571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373654 (A004918 (n + 1)).toNat

end

end A399159.P9953413767443446571

/-! ## A399159.P14496995156325448844

`A216455(A373654(n))`
-/

namespace A399159.P14496995156325448844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216455 (A373654 n).toNat

end

end A399159.P14496995156325448844

/-! ## A399159.P16654041755799168638

`A373654(A004895(n+1))`
-/

namespace A399159.P16654041755799168638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373654 (A004895 (n + 1)).toNat

end

end A399159.P16654041755799168638

/-!
# A399163: Number of roots modulo the n-th prime of x^6+2*x^5+2*x^4+2*x^3+x^2+1.

The programs for A399163, there is no canonical definition to state claims against.
-/

/-! ## A399163.P8496052389653496405

`A107110(A165307(n+1))`
-/

namespace A399163.P8496052389653496405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107110 (A165307 (n + 1)).toNat

end

end A399163.P8496052389653496405

/-! ## A399163.P8253470149878572629

`A287397(A066455(n+1))`
-/

namespace A399163.P8253470149878572629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287397 (A066455 (n + 1)).toNat

end

end A399163.P8253470149878572629

/-! ## A399163.P8076511912234991659

`A330961(A314217(n+1))`
-/

namespace A399163.P8076511912234991659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330961 (A314217 (n + 1)).toNat

end

end A399163.P8076511912234991659

/-! ## A399163.P7128044348311963576

`A191261(A059801(n+2))`
-/

namespace A399163.P7128044348311963576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191261 (A059801 (n + 2)).toNat

end

end A399163.P7128044348311963576

/-!
# A399164: Number of fixed point free involutions in S_{2n} (or perfect matchings on [2n]) which avoid the patterns {123, 132, 321}.

The programs for A399164, the canonical program `A399164.P4069160883750986696` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A399164 has offset 0).

The definition of A399164 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A399164.P4069160883750986696

`ogf((1-3x-3x^2+2x^3)/(1-4x-2x^2+4x^3-x^4))`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A399164

/-- `ogf((1-3x-3x^2+2x^3)/(1-4x-2x^2+4x^3-x^4))` -/
def P4069160883750986696.Spec : Prop :=
  ∀ n, P4069160883750986696.a n = A399164 n

theorem P4069160883750986696.correct : P4069160883750986696.Spec := by
  intro n
  simp only [A399164]

end A399164

/-! ## A399164.P6690525050479892965

`4*a(n-1)+2*a(n-2)-4*a(n-3)+a(n-4)` with `a(0)=1, a(1)=1, a(2)=3, a(3)=12`
-/

namespace A399164.P6690525050479892965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 3, 12] fun n a =>
  4 * a (n - 1) + 2 * a (n - 2) - 4 * a (n - 3) + a (n - 4)

end

end A399164.P6690525050479892965

namespace A399164

/-- `4*a(n-1)+2*a(n-2)-4*a(n-3)+a(n-4)` -/
def P6690525050479892965.Spec : Prop :=
  ∀ n, P6690525050479892965.a n = A399164 n

end A399164

/-!
# A399166: G.f. A(x) satisfies A(x) = 1/(1 - x * A(x^4)^2).

The programs for A399166, there is no canonical definition to state claims against.
-/

/-! ## A399166.P7905753303851008592

`A291146(2*n*A291149(n))`
-/

namespace A399166.P7905753303851008592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291146 ((2 * n : ℤ) * A291149 n).toNat

end

end A399166.P7905753303851008592

/-! ## A399166.P8854823024902913095

`A291146(2*n*A291168(2*n))`
-/

namespace A399166.P8854823024902913095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291146 ((2 * n : ℤ) * A291168 (2 * n)).toNat

end

end A399166.P8854823024902913095

/-! ## A399166.P1661896550303535092

`A291146(2*n*A363748(n))`
-/

namespace A399166.P1661896550303535092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291146 ((2 * n : ℤ) * A363748 n).toNat

end

end A399166.P1661896550303535092

/-! ## A399166.P15672416708618195273

`A291146(2*n*A363749(2*n))`
-/

namespace A399166.P15672416708618195273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291146 ((2 * n : ℤ) * A363749 (2 * n)).toNat

end

end A399166.P15672416708618195273

/-! ## A399166.P9918324721324302115

`A291146(A322131(n))`
-/

namespace A399166.P9918324721324302115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291146 (A322131 n).toNat

end

end A399166.P9918324721324302115

/-!
# A399169: Number of solutions to x^2 + 4*y^2 = n in positive integers x and y.

The programs for A399169, there is no canonical definition to state claims against.
-/

/-! ## A399169.P10887979037798054439

`A272178(n)%A337743(n+1)`
-/

namespace A399169.P10887979037798054439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A272178 n) (A337743 (n + 1))

end

end A399169.P10887979037798054439

/-! ## A399169.P1919660964128005784

`and(A010414(n+1), A342154(n))`
-/

namespace A399169.P1919660964128005784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A010414 (n + 1)) (A342154 n)

end

end A399169.P1919660964128005784

/-! ## A399169.P11163523032344880538

`and(A218604(n), A362152(n+1))`
-/

namespace A399169.P11163523032344880538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A218604 n) (A362152 (n + 1))

end

end A399169.P11163523032344880538

/-! ## A399169.P3230900993714416475

`A037135(A195892(n+1))`
-/

namespace A399169.P3230900993714416475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037135 (A195892 (n + 1)).toNat

end

end A399169.P3230900993714416475

/-! ## A399169.P2744525027496418216

`A374059(n)%A140207(n)`
-/

namespace A399169.P2744525027496418216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A374059 n) (A140207 n)

end

end A399169.P2744525027496418216

/-!
# A399172: a(n) = 2^((2^n-(-1)^n)/3).

The programs for A399172, the canonical program `A399172.P1208699379547714089` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A399172 has offset 0).

The definition of A399172 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A399172.P1208699379547714089

`2^round(2^n/3)`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A399172

/-- `2^round(2^n/3)` -/
def P1208699379547714089.Spec : Prop :=
  ∀ n, P1208699379547714089.a n = (A399172 n : ℚ)

end A399172

/-! ## A399172.P7311806714402582312

`2^((2^n-(-1)^n)/3)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A399172.P7311806714402582312
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (2 : ℝ) ^ (((2 ^ n : ℤ) - (-1) ^ n : ℚ) / 3 : ℝ)

end

end A399172.P7311806714402582312

namespace A399172

/-- `2^((2^n-(-1)^n)/3)` -/
def P7311806714402582312.Spec : Prop :=
  ∀ n, P7311806714402582312.a n = (A399172 n : ℝ)

end A399172

/-! ## A399172.P7938150377058837482

`2*(a(n-1)/gcd(2, n))²` with `a(0)=1`
-/

namespace A399172.P7938150377058837482
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  2 * (a (n - 1) / (Nat.gcd 2 n : ℚ)) ^ 2

end

end A399172.P7938150377058837482

namespace A399172

/-- `2*(a(n-1)/gcd(2, n))²` -/
def P7938150377058837482.Spec : Prop :=
  ∀ n, P7938150377058837482.a n = (A399172 n : ℚ)

end A399172

/-! ## A399172.P17112359975407879708

`a(n-1)*a(n-2)²` with `a(0)=1, a(1)=2`
-/

namespace A399172.P17112359975407879708
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 1) * a (n - 2) ^ 2

end

end A399172.P17112359975407879708

namespace A399172

/-- `a(n-1)*a(n-2)²` -/
def P17112359975407879708.Spec : Prop :=
  ∀ n, (P17112359975407879708.a n : ℤ) = A399172 n

end A399172

/-! ## A399172.P2206954176585034257

`2^2^(n-1)/a(n-1)` with `a(0)=1`
-/

namespace A399172.P2206954176585034257
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [1] fun n a =>
  (2 : ℝ) ^ ((2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) : ℝ) / a (n - 1)

end

end A399172.P2206954176585034257

namespace A399172

/-- `2^2^(n-1)/a(n-1)` -/
def P2206954176585034257.Spec : Prop :=
  ∀ n, P2206954176585034257.a n = (A399172 n : ℝ)

end A399172

/-!
# A399176: A well-defined quasi-periodic solution to the recurrence (a(n) = a(n-a(n-2)) + a(n-a(n-3))).

The programs for A399176, the canonical program `A399176.P9600605657478409595` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A399176 has offset 1).

The definition of A399176 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-a(n-2))+a(n-a(n-3))` (program `A399176.P9600605657478409595`, by `A399176.P9600605657478409595.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A399176.P9600605657478409595

`a(n-a(n-2))+a(n-a(n-3))` with `a(0)=4, a(1)=2, a(2)=5, a(3)=3, a(4)=1, a(5)=4, a(6)=7, a(7)=5`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A399176

/-- `a(n-a(n-2))+a(n-a(n-3))` -/
def P9600605657478409595.Spec : Prop :=
  ∀ n, (P9600605657478409595.a n : ℤ) = A399176 (n + 1)

theorem P9600605657478409595.correct : P9600605657478409595.Spec := by
  intro n
  simp only [A399176, Nat.add_sub_cancel]

end A399176

/-!
# A399178: The sequence R(n) defined by Alkan et al. (2020).

The programs for A399178, there is no canonical definition to state claims against.
-/

/-! ## A399178.P18267950346737542214

`A096907(A022644(n))`
-/

namespace A399178.P18267950346737542214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096907 (A022644 n).toNat

end

end A399178.P18267950346737542214

/-!
# A399180: Period 7: repeat 0,1,2,1,2,1,0.

The programs for A399180, the canonical program `A399180.P3731468127804606697` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A399180 has offset 0).

The definition of A399180 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A399180.P3731468127804606697

`ogf((x+2x^2+x^3+2x^4+x^5)/(1-x^7))`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A399180

/-- `ogf((x+2x^2+x^3+2x^4+x^5)/(1-x^7))` -/
def P3731468127804606697.Spec : Prop :=
  ∀ n, P3731468127804606697.a n = A399180 n

theorem P3731468127804606697.correct : P3731468127804606697.Spec := by
  intro n
  simp only [A399180]

end A399180

/-!
# A399181: Absolute values of A379078.

The programs for A399181, there is no canonical definition to state claims against.
-/

/-! ## A399181.P11645718850596584

`abs(A379078(n))`
-/

namespace A399181.P11645718850596584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A379078 n|

end

end A399181.P11645718850596584

/-! ## A399181.P15074728438626485269

`abs(∑[A377091(n)])`
-/

namespace A399181.P15074728438626485269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377091 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A399181.P15074728438626485269

/-! ## A399181.P7966406558389545549

`lcm(A123271(n+2), A379078(n))`
-/

namespace A399181.P7966406558389545549
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A123271 (n + 2)) (A379078 n)

end

end A399181.P7966406558389545549

/-!
# A399183: Indices of 0's in A379078 and A399181.

The programs for A399183, there is no canonical definition to state claims against.
-/

/-! ## A399183.P9087080613055389757

`eq[0, A379078(n)]`
-/

namespace A399183.P9087080613055389757
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379078 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A399183.P9087080613055389757

/-! ## A399183.P5987622556693724913

`eq[0, A399181(n)]`
-/

namespace A399183.P5987622556693724913
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399181 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A399183.P5987622556693724913

/-!
# A399184: First differences of A164888.

The programs for A399184, there is no canonical definition to state claims against.
-/

/-! ## A399184.P17342758513873784776

`Δ[A164888(n+1)]`
-/

namespace A399184.P17342758513873784776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164888 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A399184.P17342758513873784776

/-! ## A399184.P16704786176658579335

`A164888(n+2)-A164888(n+1)`
-/

namespace A399184.P16704786176658579335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164888 (n + 2) - A164888 (n + 1)

end

end A399184.P16704786176658579335

/-!
# A399185: a(n) is the number of tilings of a 5 X 2n rectangle into Z-tetrominoes and U-pentominoes.

The programs for A399185, the canonical program `A399185.P9420212230745504611` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A399185 has offset 0).

The definition of A399185 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A399185.P9420212230745504611

`a(n-4)+4*a(n-5)+a(n-6)` with `a(0)=1, a(1)=0, a(2)=0, a(3)=0, a(4)=0, a(5)=2, a(6)=0`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A399185

/-- `a(n-4)+4*a(n-5)+a(n-6)` -/
def P9420212230745504611.Spec : Prop :=
  ∀ n, (P9420212230745504611.a n : ℤ) = A399185 n

theorem P9420212230745504611.correct : P9420212230745504611.Spec := by
  intro n
  simp only [A399185]

end A399185

/-! ## A399185.P9684703329168566523

`ogf((1-x^4-2x^5-x^6)/(1-x^4-4x^5-x^6))`
-/

namespace A399185.P9684703329168566523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, 0, 0, -1, -2, -1] [1, 0, 0, 0, -1, -4, -1] n

end

end A399185.P9684703329168566523

namespace A399185

/-- `ogf((1-x^4-2x^5-x^6)/(1-x^4-4x^5-x^6))` -/
def P9684703329168566523.Spec : Prop :=
  ∀ n, P9684703329168566523.a n = A399185 n

end A399185

/-!
# A399186: Number of square (0,1)-matrices with n ones, no zero rows or columns, and the same multiset of row sums as of column sums.

The programs for A399186, there is no canonical definition to state claims against.
-/

/-! ## A399186.P12888949533072806322

`A095726(A005773(n))`
-/

namespace A399186.P12888949533072806322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095726 (A005773 n).toNat

end

end A399186.P12888949533072806322

/-!
# A399188: Numbers x such that recursion {x -> A000005(x)+1} reaches a fixed-point of 4 rather than 3.

The programs for A399188, there is no canonical definition to state claims against.
-/

/-! ## A399188.P17149977144586057981

`∩[A063806(n+1), A139586(n+1)]`
-/

namespace A399188.P17149977144586057981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063806 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139586 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A399188.P17149977144586057981

/-! ## A399188.P1148577433939630737

`∩[A102554(n+1), A325266(n+1)]`
-/

namespace A399188.P1148577433939630737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102554 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325266 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A399188.P1148577433939630737

/-! ## A399188.P14310103262093408594

`∩[A174896(n+1), A325266(n+1)]`
-/

namespace A399188.P14310103262093408594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174896 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325266 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A399188.P14310103262093408594

/-! ## A399188.P13618453377751132598

`∩[A139588(n+1), A368904(n+1)]`
-/

namespace A399188.P13618453377751132598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139588 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368904 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A399188.P13618453377751132598

/-! ## A399188.P13748502797203933275

`∩[A325266(n+1), A340058(n+1)]`
-/

namespace A399188.P13748502797203933275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325266 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340058 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A399188.P13748502797203933275

/-!
# A399189: a(n) = n^3 - A283626(n): number of lattice points in the cube [1,n]^3 not covered by any box [1,p] X [1,q] X [1,r] with p*q*r = n.

The programs for A399189, there is no canonical definition to state claims against.
-/

/-! ## A399189.P9802972255134161803

`(n+1)^3-A283626(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A399189.P9802972255134161803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 3 : ℤ) - A283626 (n + 1)

end

end A399189.P9802972255134161803

/-!
# A399190: Number of numbers equal to the sum of the swinging factorials (A056040) of their base-n digits.

The programs for A399190, there is no canonical definition to state claims against.
-/

/-! ## A399190.P13581747010515173917

`A306323(A030770(n+1))`
-/

namespace A399190.P13581747010515173917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306323 (A030770 (n + 1)).toNat

end

end A399190.P13581747010515173917

/-! ## A399190.P2951079360694632613

`A288569(A067943(n+2))`
-/

namespace A399190.P2951079360694632613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288569 (A067943 (n + 2)).toNat

end

end A399190.P2951079360694632613

/-!
# A399192: a(n) = number of integers k <= n with g(k)^4 < k, where g(k) is the largest divisor d of k satisfying d <= sqrt(k) (A033676).

The programs for A399192, there is no canonical definition to state claims against.
-/

/-! ## A399192.P5538442838482842053

`ceil(log(A276465(n+1)))`
-/

namespace A399192.P5538442838482842053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.log (A276465 (n + 1) : ℝ)⌉

end

end A399192.P5538442838482842053

/-! ## A399192.P15817276216553506904

`∑[A288818(n+1)^(n+1)²]`
-/

namespace A399192.P15817276216553506904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288818 (n + 1) ^ (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A399192.P15817276216553506904

/-!
# A399195: Number of inequivalent self-dual Boolean functions of n variables with trivial automorphism group under permutations of the variables.

The programs for A399195, there is no canonical definition to state claims against.
-/

/-! ## A399195.P7566715390616317736

`2*A273712(∑[n²])`
-/

namespace A399195.P7566715390616317736
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A273712 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A399195.P7566715390616317736

/-!
# A399199: Table of T(n, k) read by antidiagonals: Exact inverse of Pascal's triangle (A007318) such that T(binomial(N, k), k) = N, for n >= 0, k >= 1.

The programs for A399199, there is no canonical definition to state claims against.
-/

/-! ## A399199.P15930696858687676270

`floor(log2(A066884(n+1)))`
-/

namespace A399199.P15930696858687676270
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A066884 (n + 1)).toNat

end

end A399199.P15930696858687676270

/-! ## A399199.P14520399115673752317

`A067586(n)+A025581(n)`
-/

namespace A399199.P14520399115673752317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067586 n + A025581 n

end

end A399199.P14520399115673752317

/-! ## A399199.P7837870042607188481

`A000523(A066884(n+1))`
-/

namespace A399199.P7837870042607188481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (A066884 (n + 1)).toNat

end

end A399199.P7837870042607188481

/-! ## A399199.P6297148127568682719

`A059829(A264872(n))`
-/

namespace A399199.P6297148127568682719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059829 (A264872 n).toNat

end

end A399199.P6297148127568682719

