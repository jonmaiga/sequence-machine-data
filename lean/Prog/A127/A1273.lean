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
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C024
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C004
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A127300: Signature-permutation of A057164-conjugate of the inverse of Elizalde's and Deutsch's 2003 bijection for Dyck paths.

The programs for A127300, there is no canonical definition to state claims against.
-/

/-! ## A127300.P7089736477943730381

`A069771(A127290(n))`
-/

namespace A127300.P7089736477943730381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069771 (A127290 n).toNat

end

end A127300.P7089736477943730381

/-! ## A127300.P1257191304034189460

`A069772(A127292(n))`
-/

namespace A127300.P1257191304034189460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069772 (A127292 n).toNat

end

end A127300.P1257191304034189460

/-! ## A127300.P733829501037538898

`A057164(A127292(A057164(n)))`
-/

namespace A127300.P733829501037538898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057164 (A127292 (A057164 n).toNat).toNat

end

end A127300.P733829501037538898

/-! ## A127300.P1753635425702193257

`A127290(A057164(n))`
-/

namespace A127300.P1753635425702193257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127290 (A057164 n).toNat

end

end A127300.P1753635425702193257

/-! ## A127300.P8212631107348020555

`A127290(A057505(A057163(n)))`
-/

namespace A127300.P8212631107348020555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127290 (A057505 (A057163 n).toNat).toNat

end

end A127300.P8212631107348020555

/-! ## A127300.P513630442393872536

`A127290(A127292(A127289(n)))`
-/

namespace A127300.P513630442393872536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127290 (A127292 (A127289 n).toNat).toNat

end

end A127300.P513630442393872536

/-! ## A127300.P14591523101115813193

`A127290(A127290(A127291(n)))`
-/

namespace A127300.P14591523101115813193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127290 (A127290 (A127291 n).toNat).toNat

end

end A127300.P14591523101115813193

/-!
# A127301: Matula-Goebel signatures for plane general trees encoded by A014486.

The programs for A127301, there is no canonical definition to state claims against.
-/

/-! ## A127301.P12866739677282999743

`A395051(A057163(n))`
-/

namespace A127301.P12866739677282999743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395051 (A057163 n).toNat

end

end A127301.P12866739677282999743

/-! ## A127301.P5071307482776868031

`A395051(A057506(n))`
-/

namespace A127301.P5071307482776868031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395051 (A057506 n).toNat

end

end A127301.P5071307482776868031

/-! ## A127301.P11554268891264431005

`A395051(A073283(n))`
-/

namespace A127301.P11554268891264431005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395051 (A073283 n).toNat

end

end A127301.P11554268891264431005

/-! ## A127301.P4678458138962731954

`A243491(A069787(n))`
-/

namespace A127301.P4678458138962731954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243491 (A069787 n).toNat

end

end A127301.P4678458138962731954

/-! ## A127301.P17868549349405205602

`A243491(A071662(n))`
-/

namespace A127301.P17868549349405205602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243491 (A071662 n).toNat

end

end A127301.P17868549349405205602

/-! ## A127301.P7030288712644794631

`A243491(n)-A243492(n)`
-/

namespace A127301.P7030288712644794631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243491 n - A243492 n

end

end A127301.P7030288712644794631

/-! ## A127301.P841521272089402184

`A243491(A057164(A071661(n)))`
-/

namespace A127301.P841521272089402184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243491 (A057164 (A071661 n).toNat).toNat

end

end A127301.P841521272089402184

/-! ## A127301.P12344816523235644200

`A395051(A122297(n))`
-/

namespace A127301.P12344816523235644200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395051 (A122297 n).toNat

end

end A127301.P12344816523235644200

/-! ## A127301.P16516045983722736671

`A395051(A122358(n))`
-/

namespace A127301.P16516045983722736671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395051 (A122358 n).toNat

end

end A127301.P16516045983722736671

/-! ## A127301.P15564926402814331706

`A243491(A057163(A126320(n)))`
-/

namespace A127301.P15564926402814331706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243491 (A057163 (A126320 n).toNat).toNat

end

end A127301.P15564926402814331706

/-!
# A127302: Matula-Goebel signatures for plane binary trees encoded by A014486.

The programs for A127302, there is no canonical definition to state claims against.
-/

/-! ## A127302.P10780881477626584503

`A127301(A057123(n))`
-/

namespace A127302.P10780881477626584503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127301 (A057123 n).toNat

end

end A127302.P10780881477626584503

/-!
# A127303: A doubly-fractal simple sequence. Erase the first (leftmost) digit of every integer: what is left is the sequence itself. The erased digits, one by one, form also the sequence itself.

The programs for A127303, there is no canonical definition to state claims against.
-/

/-! ## A127303.P7639862926674522251

`filter[A105116(n), A188642(#)]`
-/

namespace A127303.P7639862926674522251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105116 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A188642 (f1 j).toNat = 1) n)

end

end A127303.P7639862926674522251

/-! ## A127303.P16689502336312908832

`A065031(∑[∑[A051451(n+1)]])`
-/

namespace A127303.P16689502336312908832
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051451 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065031 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A127303.P16689502336312908832

/-! ## A127303.P17153257619127361698

`eq[A007954(n), A277543(A016825(n))]`
-/

namespace A127303.P17153257619127361698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007954 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277543 (A016825 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A127303.P17153257619127361698

/-!
# A127304: a(n) = floor(n^(n + 1/2)).

The programs for A127304, the canonical program `A127304.P16400119085437083283` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A127304 has offset 0).

The definition of A127304 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(n^(n+1/2))` (program `A127304.P16400119085437083283`, by `A127304.P16400119085437083283.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A127304.P16400119085437083283

`floor(n^(n+1/2))`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A127304

/-- `floor(n^(n+1/2))` -/
def P16400119085437083283.Spec : Prop :=
  ∀ n, P16400119085437083283.a n = A127304 n

theorem P16400119085437083283.correct : P16400119085437083283.Spec := by
  intro n
  simp only [A127304]

end A127304

/-! ## A127304.P4487911457083993451

`record[floor(sqrt(A025480(n)^(n+1)))]`
-/

namespace A127304.P4487911457083993451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A025480 n ^ (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A127304.P4487911457083993451

namespace A127304

/-- `record[floor(sqrt(A025480(n)^(n+1)))]` -/
def P4487911457083993451.Spec : Prop :=
  ∀ n, P4487911457083993451.a n = A127304 n

end A127304

/-! ## A127304.P16179532925158736072

`ceil(sqrt(A206344(2*n+1)+1+n))-1`
-/

namespace A127304.P16179532925158736072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A206344 (2 * n + 1) + 1 + (n : ℤ) : ℝ)⌉ - 1

end

end A127304.P16179532925158736072

namespace A127304

/-- `ceil(sqrt(A206344(2*n+1)+1+n))-1` -/
def P16179532925158736072.Spec : Prop :=
  ∀ n, P16179532925158736072.a n = A127304 n

end A127304

/-! ## A127304.P1703906023572310146

`ceil(sqrt(2^A002262(n)+n^(2*n+1)))-1`
-/

namespace A127304.P1703906023572310146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt ((2 : ℚ) ^ (A002262 n : ℤ) + (n ^ (2 * n + 1) : ℚ) : ℝ)⌉ - 1

end

end A127304.P1703906023572310146

namespace A127304

/-- `ceil(sqrt(2^A002262(n)+n^(2*n+1)))-1` -/
def P1703906023572310146.Spec : Prop :=
  ∀ n, P1703906023572310146.a n = A127304 n

end A127304

/-!
# A127305: Primes p such that p + (sum of the prime factors of p-1) + (sum of prime factors of p+1) is prime.

The programs for A127305, there is no canonical definition to state claims against.
-/

/-! ## A127305.P3615787982714256847

`A307895(A352107(3*n+2)+A307872(n+1))`
-/

namespace A127305.P3615787982714256847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307895 (A352107 (3 * n + 2) + A307872 (n + 1)).toNat

end

end A127305.P3615787982714256847

/-! ## A127305.P2711619378564016593

`A304713(A368680(2*(n+2))-A368688(n+1))`
-/

namespace A127305.P2711619378564016593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304713 (A368680 (2 * (n + 2)) - A368688 (n + 1)).toNat

end

end A127305.P2711619378564016593

/-!
# A127306: Fixed points of permutation A126313/A126314.

The programs for A127306, there is no canonical definition to state claims against.
-/

/-! ## A127306.P2418497489680543393

`eq[n, A126313(n)]`
-/

namespace A127306.P2418497489680543393
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126313 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A127306.P2418497489680543393

/-! ## A127306.P5083354550915496597

`eq[n, A126315(A057164(n))]`
-/

namespace A127306.P5083354550915496597
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126315 (A057164 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A127306.P5083354550915496597

/-! ## A127306.P8601491266700404245

`eq[n, A125976(A069772(n))]`
-/

namespace A127306.P8601491266700404245
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125976 (A069772 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A127306.P8601491266700404245

/-! ## A127306.P5841902220462534915

`eq[n, A126315(A057505(A057163(n)))]`
-/

namespace A127306.P5841902220462534915
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126315 (A057505 (A057163 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A127306.P5841902220462534915

/-! ## A127306.P15476759487562522612

`eq[n, A126314(n)]`
-/

namespace A127306.P15476759487562522612
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126314 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A127306.P15476759487562522612

/-!
# A127307: Positions of Dyck words beginning as UUD (110) in A014486/A063171.

The programs for A127307, there is no canonical definition to state claims against.
-/

/-! ## A127307.P349699914112043621

`eq[3, A072800(n)%8]`
-/

namespace A127307.P349699914112043621
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A072800 n) 8

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A127307.P349699914112043621

/-! ## A127307.P14469754860216390761

`2*A072795(n+1)-(n+1)`
-/

namespace A127307.P14469754860216390761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A072795 (n + 1) - (n + 1 : ℤ)

end

end A127307.P14469754860216390761

/-! ## A127307.P15233426583609868914

`A057162(A057518(n+1))`
-/

namespace A127307.P15233426583609868914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057162 (A057518 (n + 1)).toNat

end

end A127307.P15233426583609868914

/-! ## A127307.P16819195450907393903

`A082351(A057548(n+1))`
-/

namespace A127307.P16819195450907393903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082351 (A057548 (n + 1)).toNat

end

end A127307.P16819195450907393903

/-! ## A127307.P10798581499870396049

`A074679(A072795(n+1))`
-/

namespace A127307.P10798581499870396049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074679 (A072795 (n + 1)).toNat

end

end A127307.P10798581499870396049

/-! ## A127307.P8455273861711547825

`A057118(A122227(n+1))`
-/

namespace A127307.P8455273861711547825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057118 (A122227 (n + 1)).toNat

end

end A127307.P8455273861711547825

/-! ## A127307.P3776539314013951397

`A081291(A244217(n+1))`
-/

namespace A127307.P3776539314013951397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081291 (A244217 (n + 1)).toNat

end

end A127307.P3776539314013951397

/-! ## A127307.P7556735225745514405

`eq[1, A057516(A057505(n))]`
-/

namespace A127307.P7556735225745514405
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057516 (A057505 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A127307.P7556735225745514405

/-! ## A127307.P11455710424527556494

`eq[1, A057516(A125981(n))]`
-/

namespace A127307.P11455710424527556494
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057516 (A125981 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A127307.P11455710424527556494

/-! ## A127307.P1007671867531420573

`eq[1, A057516(A125985(n))]`
-/

namespace A127307.P1007671867531420573
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057516 (A125985 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A127307.P1007671867531420573

/-!
# A127308: Number of ways of writing the n-th prime prime(n) as a sum of 24 squares.

The programs for A127308, there is no canonical definition to state claims against.
-/

/-! ## A127308.P989416672574019842

`A000156(Δ[A007504(n)])`
-/

namespace A127308.P989416672574019842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000156 (f1 (n + 1) - f1 n).toNat

end

end A127308.P989416672574019842

/-! ## A127308.P5925057598030198855

`A000156(A000040(n+1))`
-/

namespace A127308.P5925057598030198855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000156 (A000040 (n + 1)).toNat

end

end A127308.P5925057598030198855

/-! ## A127308.P12270228437605496141

`A000156(record[A006530(n+2)])`
-/

namespace A127308.P12270228437605496141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000156 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A127308.P12270228437605496141

/-! ## A127308.P9169658430363683618

`A000156(record[A014963(n+2)])`
-/

namespace A127308.P9169658430363683618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000156 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A127308.P9169658430363683618

/-! ## A127308.P8229157362687280294

`A000156(record[A020639(n+2)])`
-/

namespace A127308.P8229157362687280294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000156 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A127308.P8229157362687280294

/-! ## A127308.P17052976891057752085

`A022077(record[A006530(n+2)])`
-/

namespace A127308.P17052976891057752085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022077 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A127308.P17052976891057752085

/-! ## A127308.P7862676087156928341

`A022077(record[A014963(n+2)])`
-/

namespace A127308.P7862676087156928341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022077 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A127308.P7862676087156928341

/-! ## A127308.P150538706791994906

`A022077(record[A020639(n+2)])`
-/

namespace A127308.P150538706791994906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022077 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A127308.P150538706791994906

/-!
# A127310: a(n) = |E(GF(p))| = number of rational points on the elliptic curve E: y^2 + y = x^3 - x^2 mod p where the prime p is p(n) or p(n+1) according as n < 5 or n >= 5.

The programs for A127310, there is no canonical definition to state claims against.
-/

/-! ## A127310.P3009033617305420422

`5*A127311(n+1)`
-/

namespace A127310.P3009033617305420422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A127311 (n + 1)

end

end A127310.P3009033617305420422

/-! ## A127310.P14233211693899077141

`A008587(A127311(n+1))`
-/

namespace A127310.P14233211693899077141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008587 (A127311 (n + 1)).toNat

end

end A127310.P14233211693899077141

/-! ## A127310.P8531250500975805133

`A135042(A127311(n+1)+1)`
-/

namespace A127310.P8531250500975805133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135042 (A127311 (n + 1) + 1).toNat

end

end A127310.P8531250500975805133

/-!
# A127311: a(n) = |E(GF(p))/H| where E(GF(p)) is the group of rational points on the elliptic curve E: y^2 + y = x^3 - x^2 mod p, the prime p is prime(n) or prime(n+1) according as n < 5 or n >= 5 and H = {oo, (0,0), (0,-1), (1,0), (1,-1)}.

The programs for A127311, there is no canonical definition to state claims against.
-/

/-! ## A127311.P13343026710841462348

`A127310(n+1)/5`
-/

namespace A127311.P13343026710841462348
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127310 (n + 1) : ℚ) / 5

end

end A127311.P13343026710841462348

/-! ## A127311.P17999971052754272368

`A002266(A127310(n+1))`
-/

namespace A127311.P17999971052754272368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002266 (A127310 (n + 1)).toNat

end

end A127311.P17999971052754272368

/-! ## A127311.P7512737706458983051

`A283442(A127310(n+1))%A062316(n+1)`
-/

namespace A127311.P7512737706458983051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A283442 (A127310 (n + 1)).toNat) (A062316 (n + 1))

end

end A127311.P7512737706458983051

/-! ## A127311.P8566381305068911607

`A283442(A127310(n+1)%A073102(n+1))`
-/

namespace A127311.P8566381305068911607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283442 (Int.tmod (A127310 (n + 1)) (A073102 (n + 1))).toNat

end

end A127311.P8566381305068911607

/-! ## A127311.P8006284855063366675

`A076314(2*A127310(n+1))`
-/

namespace A127311.P8006284855063366675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076314 (2 * A127310 (n + 1)).toNat

end

end A127311.P8006284855063366675

/-!
# A127312: Numbers k such that the sum of the digits of k and of k+1 is prime and 2k + 1 is also prime.

The programs for A127312, there is no canonical definition to state claims against.
-/

/-! ## A127312.P10779177836536476232

`lt[A199343(n+1), A139466(A199343(n))]`
-/

namespace A127312.P10779177836536476232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199343 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139466 (A199343 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A127312.P10779177836536476232

/-! ## A127312.P15021439985569123851

`lt[A225649(n+1), A139466(A004151(n+1))]`
-/

namespace A127312.P15021439985569123851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225649 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139466 (A004151 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A127312.P15021439985569123851

/-! ## A127312.P15071205842501977097

`lt[A062028(A329562(n)), A055671(2*n+1)]`
-/

namespace A127312.P15071205842501977097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062028 (A329562 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055671 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A127312.P15071205842501977097

/-! ## A127312.P2292389044414593348

`A004526(p?[∑[A326647(n+1)]])`
-/

namespace A127312.P2292389044414593348
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326647 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A127312.P2292389044414593348

/-! ## A127312.P1842922858693594042

`A055034(p?[∑[A326647(n+1)]])`
-/

namespace A127312.P1842922858693594042
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326647 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055034 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A127312.P1842922858693594042

/-!
# A127315: Numbers n such that n^4 divides 19^(n^2)-1.

The programs for A127315, there is no canonical definition to state claims against.
-/

/-! ## A127315.P15825176640329867128

`filter[A018511(n+1), A379968(#)]`
-/

namespace A127315.P15825176640329867128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018511 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379968 (f1 j).toNat = 1) n)

end

end A127315.P15825176640329867128

/-! ## A127315.P14340286000613620844

`∩[A014822(n+1), A354361(n+1)]`
-/

namespace A127315.P14340286000613620844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014822 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354361 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A127315.P14340286000613620844

/-! ## A127315.P14192618724597953913

`∩[A106741(n+1), A324022(n+1)]`
-/

namespace A127315.P14192618724597953913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106741 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324022 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A127315.P14192618724597953913

/-!
# A127316: a(n) = 2*n^2 - 4*n + 73.

The programs for A127316, the canonical program `A127316.P591630359575799054` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A127316 has offset 1).

The definition of A127316 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*(n+1)²-4*(n+1)+73` (program `A127316.P591630359575799054`, by `A127316.P591630359575799054.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A127316.P591630359575799054

`2*(n+1)²-4*(n+1)+73`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A127316

/-- `2*(n+1)²-4*(n+1)+73` -/
def P591630359575799054.Spec : Prop :=
  ∀ n, P591630359575799054.a n = A127316 (n + 1)

theorem P591630359575799054.correct : P591630359575799054.Spec := by
  intro n
  simp only [A127316, Nat.add_sub_cancel]

end A127316

/-! ## A127316.P5525365086519660002

`∑[a(n-1)+4]` with `a(0)=71, a(1)=2`
-/

namespace A127316.P5525365086519660002
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [71, 2] fun n f1 =>
  f1 (n - 1) + 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A127316.P5525365086519660002

namespace A127316

/-- `∑[a(n-1)+4]` -/
def P5525365086519660002.Spec : Prop :=
  ∀ n, (P5525365086519660002.a n : ℤ) = A127316 (n + 1)

end A127316

/-! ## A127316.P16503065676218087610

`abs(A056220(n)+72)`
-/

namespace A127316.P16503065676218087610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A056220 n + 72|

end

end A127316.P16503065676218087610

namespace A127316

/-- `abs(A056220(n)+72)` -/
def P16503065676218087610.Spec : Prop :=
  ∀ n, P16503065676218087610.a n = A127316 (n + 1)

end A127316

/-! ## A127316.P10778784347457215076

`(A056220(n)+72)%A001561(n)`
-/

namespace A127316.P10778784347457215076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A056220 n + 72) (A001561 n)

end

end A127316.P10778784347457215076

namespace A127316

/-- `(A056220(n)+72)%A001561(n)` -/
def P10778784347457215076.Spec : Prop :=
  ∀ n, P10778784347457215076.a n = A127316 (n + 1)

end A127316

/-! ## A127316.P12373297008015720881

`or(A056220(n)+72, Δ[A004525(n)])`
-/

namespace A127316.P12373297008015720881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A056220 n + 72) (f1 (n + 1) - f1 n)

end

end A127316.P12373297008015720881

namespace A127316

/-- `or(A056220(n)+72, Δ[A004525(n)])` -/
def P12373297008015720881.Spec : Prop :=
  ∀ n, P12373297008015720881.a n = A127316 (n + 1)

end A127316

/-! ## A127316.P15313735638008386520

`or(A056220(n)+72, A019590(n+1))`
-/

namespace A127316.P15313735638008386520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A056220 n + 72) (A019590 (n + 1))

end

end A127316.P15313735638008386520

namespace A127316

/-- `or(A056220(n)+72, A019590(n+1))` -/
def P15313735638008386520.Spec : Prop :=
  ∀ n, P15313735638008386520.a n = A127316 (n + 1)

end A127316

/-! ## A127316.P13236315833961952833

`A000027(or(1, n*2*n)+70)`
-/

namespace A127316.P13236315833961952833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (Nat.lor 1 (n * (2 * n)) + 70)

end

end A127316.P13236315833961952833

namespace A127316

/-- `A000027(or(1, n*2*n)+70)` -/
def P13236315833961952833.Spec : Prop :=
  ∀ n, P13236315833961952833.a n = A127316 (n + 1)

end A127316

/-! ## A127316.P14577514922427334907

`A000027(A058331(n)+70)`
-/

namespace A127316.P14577514922427334907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A058331 n + 70).toNat

end

end A127316.P14577514922427334907

namespace A127316

/-- `A000027(A058331(n)+70)` -/
def P14577514922427334907.Spec : Prop :=
  ∀ n, P14577514922427334907.a n = A127316 (n + 1)

end A127316

/-! ## A127316.P4224278782024266968

`A000027(A001105(n)+71)`
-/

namespace A127316.P4224278782024266968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A001105 n + 71).toNat

end

end A127316.P4224278782024266968

namespace A127316

/-- `A000027(A001105(n)+71)` -/
def P4224278782024266968.Spec : Prop :=
  ∀ n, P4224278782024266968.a n = A127316 (n + 1)

end A127316

/-! ## A127316.P2527851499561149915

`A000027(A056220(n)+72)`
-/

namespace A127316.P2527851499561149915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A056220 n + 72).toNat

end

end A127316.P2527851499561149915

namespace A127316

/-- `A000027(A056220(n)+72)` -/
def P2527851499561149915.Spec : Prop :=
  ∀ n, P2527851499561149915.a n = A127316 (n + 1)

end A127316

/-! ## A127316.P4759334603531725414

`∑{d}[A056220(n)+72, A000010(#)]`
-/

namespace A127316.P4759334603531725414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056220 n + 72

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A127316.P4759334603531725414

namespace A127316

/-- `∑{d}[A056220(n)+72, A000010(#)]` -/
def P4759334603531725414.Spec : Prop :=
  ∀ n, P4759334603531725414.a n = A127316 (n + 1)

end A127316

/-! ## A127316.P13379264692018631037

`A005408(n²+35)`
-/

namespace A127316.P13379264692018631037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (n ^ 2 + 35)

end

end A127316.P13379264692018631037

namespace A127316

/-- `A005408(n²+35)` -/
def P13379264692018631037.Spec : Prop :=
  ∀ n, P13379264692018631037.a n = A127316 (n + 1)

theorem P13379264692018631037.correct : P13379264692018631037.Spec := by
  intro n
  simp only [A127316, Nat.add_sub_cancel, A127316.P13379264692018631037.a, A127316.P591630359575799054.a, A005408, A005408.P17437947328870227736.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A127316

/-! ## A127316.P16976403558860455716

`A004273(n²+36)`
-/

namespace A127316.P16976403558860455716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (n ^ 2 + 36)

end

end A127316.P16976403558860455716

namespace A127316

/-- `A004273(n²+36)` -/
def P16976403558860455716.Spec : Prop :=
  ∀ n, P16976403558860455716.a n = A127316 (n + 1)

end A127316

/-! ## A127316.P1008790026996285344

`A004280(n²+37)`
-/

namespace A127316.P1008790026996285344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004280 (n ^ 2 + 37)

end

end A127316.P1008790026996285344

namespace A127316

/-- `A004280(n²+37)` -/
def P1008790026996285344.Spec : Prop :=
  ∀ n, P1008790026996285344.a n = A127316 (n + 1)

end A127316

/-! ## A127316.P16589344057687459625

`A005818(A114965(n))`
-/

namespace A127316.P16589344057687459625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005818 (A114965 n).toNat

end

end A127316.P16589344057687459625

namespace A127316

/-- `A005818(A114965(n))` -/
def P16589344057687459625.Spec : Prop :=
  ∀ n, P16589344057687459625.a n = A127316 (n + 1)

end A127316

/-! ## A127316.P6146665089212132446

`A296602(A241890(n))`
-/

namespace A127316.P6146665089212132446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296602 (A241890 n).toNat

end

end A127316.P6146665089212132446

namespace A127316

/-- `A296602(A241890(n))` -/
def P6146665089212132446.Spec : Prop :=
  ∀ n, P6146665089212132446.a n = A127316 (n + 1)

end A127316

/-!
# A127318: a(n) = binomial(n, sd) mod sd, with sd = sum of decimal digits of n.

The programs for A127318, the canonical program `A127318.P4194245990836492332` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A127318 has offset 1).

The definition of A127318 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A127318.P4194245990836492332

`A128936(n+1)%A007953(n+1)`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A127318

/-- `A128936(n+1)%A007953(n+1)` -/
def P4194245990836492332.Spec : Prop :=
  ∀ n, P4194245990836492332.a n = A127318 (n + 1)

theorem P4194245990836492332.correct : P4194245990836492332.Spec := by
  intro n
  simp only [A127318, Nat.add_sub_cancel]

end A127318

/-! ## A127318.P11021785303805143799

`C(A000027(n+1), A007953(n+1))%A007953(n+1)`
-/

namespace A127318.P11021785303805143799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Nat.choose (A000027 (n + 1)).toNat (A007953 (n + 1)).toNat : ℤ) (A007953 (n + 1))

end

end A127318.P11021785303805143799

namespace A127318

/-- `C(A000027(n+1), A007953(n+1))%A007953(n+1)` -/
def P11021785303805143799.Spec : Prop :=
  ∀ n, P11021785303805143799.a n = A127318 (n + 1)

end A127318

/-! ## A127318.P8185488963662643361

`A081371(A007953(n+1)+∑[n])`
-/

namespace A127318.P8185488963662643361
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081371 (A007953 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A127318.P8185488963662643361

namespace A127318

/-- `A081371(A007953(n+1)+∑[n])` -/
def P8185488963662643361.Spec : Prop :=
  ∀ n, P8185488963662643361.a n = A127318 (n + 1)

end A127318

/-!
# A127319: a(n) = binomial(n, sd) mod n, with sd = sum of decimal digits of n.

The programs for A127319, the canonical program `A127319.P15269089589835204550` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A127319 has offset 1).

The definition of A127319 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A127319.P15269089589835204550

`A128936(n+1)%(n+1)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A127319

/-- `A128936(n+1)%(n+1)` -/
def P15269089589835204550.Spec : Prop :=
  ∀ n, P15269089589835204550.a n = A127319 (n + 1)

theorem P15269089589835204550.correct : P15269089589835204550.Spec := by
  intro n
  simp only [A127319, Nat.add_sub_cancel]

end A127319

/-! ## A127319.P8859650264963771574

`C(n+1, ∑{digits}[n+1, #])%(n+1)`
-/

namespace A127319.P8859650264963771574
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 1) ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum % (n + 1)

end

end A127319.P8859650264963771574

namespace A127319

/-- `C(n+1, ∑{digits}[n+1, #])%(n+1)` -/
def P8859650264963771574.Spec : Prop :=
  ∀ n, (P8859650264963771574.a n : ℤ) = A127319 (n + 1)

end A127319

/-! ## A127319.P17408491599508182234

`C(n+1, A007953(n+1))%(n+1)`
-/

namespace A127319.P17408491599508182234
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 1) (A007953 (n + 1)).toNat % (n + 1)

end

end A127319.P17408491599508182234

namespace A127319

/-- `C(n+1, A007953(n+1))%(n+1)` -/
def P17408491599508182234.Spec : Prop :=
  ∀ n, (P17408491599508182234.a n : ℤ) = A127319 (n + 1)

end A127319

/-!
# A127321: First 4-dimensional hyper-tetrahedral coordinate; repeat m C(m+3,3) times; 4-D analog of A056556.

The programs for A127321, the canonical program `A127321.P9706133412639531946` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A127321 has offset 0).

The definition of A127321 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A127321.P9706133412639531946

`floor(sqrt(5/4+sqrt(24*n+1))-3/2)`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A127321

/-- `floor(sqrt(5/4+sqrt(24*n+1))-3/2)` -/
def P9706133412639531946.Spec : Prop :=
  ∀ n, P9706133412639531946.a n = A127321 n

theorem P9706133412639531946.correct : P9706133412639531946.Spec := by
  intro n
  simp only [A127321]

end A127321

/-! ## A127321.P1640636986937590293

`∑[char[C(n, 4)]]-1`
-/

namespace A127321.P1640636986937590293
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 4

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A127321.P1640636986937590293

namespace A127321

/-- `∑[char[C(n, 4)]]-1` -/
def P1640636986937590293.Spec : Prop :=
  ∀ n, P1640636986937590293.a n = A127321 n

end A127321

/-! ## A127321.P6041224512124388134

`∑[char[C(n+4, 4)]]`
-/

namespace A127321.P6041224512124388134
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 4) 4

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A127321.P6041224512124388134

namespace A127321

/-- `∑[char[C(n+4, 4)]]` -/
def P6041224512124388134.Spec : Prop :=
  ∀ n, (P6041224512124388134.a n : ℤ) = A127321 n

end A127321

/-! ## A127321.P15350731162681297854

`∑[A256436(n)]-1`
-/

namespace A127321.P15350731162681297854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256436 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A127321.P15350731162681297854

namespace A127321

/-- `∑[A256436(n)]-1` -/
def P15350731162681297854.Spec : Prop :=
  ∀ n, P15350731162681297854.a n = A127321 n

end A127321

/-! ## A127321.P14679526333464050893

`∑[char[A000332(n)]]-1`
-/

namespace A127321.P14679526333464050893
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000332 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A127321.P14679526333464050893

namespace A127321

/-- `∑[char[A000332(n)]]-1` -/
def P14679526333464050893.Spec : Prop :=
  ∀ n, P14679526333464050893.a n = A127321 n

end A127321

/-! ## A127321.P15780280122150736816

`A003056(A073188(n)+2)-1`
-/

namespace A127321.P15780280122150736816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A073188 n + 2).toNat - 1

end

end A127321.P15780280122150736816

namespace A127321

/-- `A003056(A073188(n)+2)-1` -/
def P15780280122150736816.Spec : Prop :=
  ∀ n, P15780280122150736816.a n = A127321 n

end A127321

/-! ## A127321.P17346873570957294261

`A052146(A003056(3*n)+1)`
-/

namespace A127321.P17346873570957294261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052146 (A003056 (3 * n) + 1).toNat

end

end A127321.P17346873570957294261

namespace A127321

/-- `A052146(A003056(3*n)+1)` -/
def P17346873570957294261.Spec : Prop :=
  ∀ n, P17346873570957294261.a n = A127321 n

end A127321

/-! ## A127321.P6858394463338924368

`A052146(A002024(2*n+1+n))`
-/

namespace A127321.P6858394463338924368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052146 (A002024 (2 * n + 1 + n)).toNat

end

end A127321.P6858394463338924368

namespace A127321

/-- `A052146(A002024(2*n+1+n))` -/
def P6858394463338924368.Spec : Prop :=
  ∀ n, P6858394463338924368.a n = A127321 n

end A127321

/-! ## A127321.P10086712777280684935

`A023416(A014312(n+1))`
-/

namespace A127321.P10086712777280684935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 (A014312 (n + 1)).toNat

end

end A127321.P10086712777280684935

namespace A127321

/-- `A023416(A014312(n+1))` -/
def P10086712777280684935.Spec : Prop :=
  ∀ n, P10086712777280684935.a n = A127321 n

end A127321

/-! ## A127321.P2747657042205479599

`A023416(eq[4, A000120(n)])`
-/

namespace A127321.P2747657042205479599
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A127321.P2747657042205479599

namespace A127321

/-- `A023416(eq[4, A000120(n)])` -/
def P2747657042205479599.Spec : Prop :=
  ∀ n, P2747657042205479599.a n = A127321 n

end A127321

/-! ## A127321.P15817983322744136392

`A080791(eq[4, A000120(n)])`
-/

namespace A127321.P15817983322744136392
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080791 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A127321.P15817983322744136392

namespace A127321

/-- `A080791(eq[4, A000120(n)])` -/
def P15817983322744136392.Spec : Prop :=
  ∀ n, P15817983322744136392.a n = A127321 n

end A127321

/-! ## A127321.P8668528904346790325

`A276134(A023747(n+1))`
-/

namespace A127321.P8668528904346790325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276134 (A023747 (n + 1)).toNat

end

end A127321.P8668528904346790325

namespace A127321

/-- `A276134(A023747(n+1))` -/
def P8668528904346790325.Spec : Prop :=
  ∀ n, P8668528904346790325.a n = A127321 n

end A127321

/-! ## A127321.P3595321318459010255

`A062756(A044992(n+1))`
-/

namespace A127321.P3595321318459010255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062756 (A044992 (n + 1)).toNat

end

end A127321.P3595321318459010255

namespace A127321

/-- `A062756(A044992(n+1))` -/
def P3595321318459010255.Spec : Prop :=
  ∀ n, P3595321318459010255.a n = A127321 n

end A127321

/-! ## A127321.P16074533799802706176

`A081603(A044968(n+1))`
-/

namespace A127321.P16074533799802706176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081603 (A044968 (n + 1)).toNat

end

end A127321.P16074533799802706176

namespace A127321

/-- `A081603(A044968(n+1))` -/
def P16074533799802706176.Spec : Prop :=
  ∀ n, P16074533799802706176.a n = A127321 n

end A127321

/-! ## A127321.P11046891672379929863

`A053735(A045004(n+1))-1`
-/

namespace A127321.P11046891672379929863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053735 (A045004 (n + 1)).toNat - 1

end

end A127321.P11046891672379929863

namespace A127321

/-- `A053735(A045004(n+1))-1` -/
def P11046891672379929863.Spec : Prop :=
  ∀ n, P11046891672379929863.a n = A127321 n

end A127321

/-! ## A127321.P16677039305610776660

`A194882(n)-3`
-/

namespace A127321.P16677039305610776660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194882 n - 3

end

end A127321.P16677039305610776660

namespace A127321

/-- `A194882(n)-3` -/
def P16677039305610776660.Spec : Prop :=
  ∀ n, P16677039305610776660.a n = A127321 n

end A127321

/-! ## A127321.P18402506650615377119

`∑[C(2, A194883(n))]-1`
-/

namespace A127321.P18402506650615377119
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A194883 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A127321.P18402506650615377119

namespace A127321

/-- `∑[C(2, A194883(n))]-1` -/
def P18402506650615377119.Spec : Prop :=
  ∀ n, P18402506650615377119.a n = A127321 n

end A127321

/-! ## A127321.P13156639801673943590

`A127327(n)+A127322(n)`
-/

namespace A127321.P13156639801673943590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127327 n + A127322 n

end

end A127321.P13156639801673943590

namespace A127321

/-- `A127327(n)+A127322(n)` -/
def P13156639801673943590.Spec : Prop :=
  ∀ n, P13156639801673943590.a n = A127321 n

theorem P13156639801673943590.correct : P13156639801673943590.Spec := by
  intro n
  simp only [A127321, Nat.add_sub_cancel, A127321.P13156639801673943590.a, A127321.P9706133412639531946.a, A127322, A127322.P8390602753419418213.f1, A127322.P8390602753419418213.f2, A127322.P8390602753419418213.a, A127327, A127327.P1609288249831228995.a, A000120, A000120.P2816527436160941581.a, A006257, A006257.P8910165504183276925.a, A023416, A023416.P8124303482289229133.a, A005187, A005187.P3874015513960485494.a, A070939, A070939.P14677302147902843740.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A127321

/-! ## A127321.P5929752872567039241

`A127323(n)+A127327(n)+A127326(n)`
-/

namespace A127321.P5929752872567039241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127323 n + (A127327 n + A127326 n)

end

end A127321.P5929752872567039241

namespace A127321

/-- `A127323(n)+A127327(n)+A127326(n)` -/
def P5929752872567039241.Spec : Prop :=
  ∀ n, P5929752872567039241.a n = A127321 n

theorem P5929752872567039241.correct : P5929752872567039241.Spec := by
  intro n
  simp only [A127321, Nat.add_sub_cancel, A127321.P5929752872567039241.a, A127321.P9706133412639531946.a, A127323, A127323.P11295704530914292071.a, A127326, A127326.P13116696764520975307.a, A127327, A127327.P1609288249831228995.a, A127322, A127322.P8390602753419418213.f1, A127322.P8390602753419418213.f2, A127322.P8390602753419418213.a, A194884, A194884.P9953674383290406264.f1, A194884.P9953674383290406264.f2, A194884.P9953674383290406264.a, A000120, A000120.P2816527436160941581.a, A006257, A006257.P8910165504183276925.a, A007814, A007814.P13537437864234730737.a, A023416, A023416.P8124303482289229133.a, A129760, A129760.P2320931579254019860.a, A001511, A001511.P17146462531039486101.a, A005187, A005187.P3874015513960485494.a, A070939, A070939.P14677302147902843740.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A127321

/-!
# A127322: Second 4-dimensional hyper-tetrahedral coordinate; 4-D analog of A056557.

The programs for A127322, the canonical program `A127322.P8390602753419418213` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A127322 has offset 0).

The definition of A127322 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A127322.P13799297239970943783

`A194883(n)-2`
-/

namespace A127322.P13799297239970943783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194883 n - 2

end

end A127322.P13799297239970943783

namespace A127322

/-- `A194883(n)-2` -/
def P13799297239970943783.Spec : Prop :=
  ∀ n, P13799297239970943783.a n = A127322 n

end A127322

/-! ## A127322.P5022150095409218671

`∑[char[C(n, 4)]]-1-A127327(n)`
-/

namespace A127322.P5022150095409218671
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 4

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1 - A127327 n

end

end A127322.P5022150095409218671

namespace A127322

/-- `∑[char[C(n, 4)]]-1-A127327(n)` -/
def P5022150095409218671.Spec : Prop :=
  ∀ n, P5022150095409218671.a n = A127322 n

end A127322

/-! ## A127322.P17031259880786328451

`A127326(n)+A127323(n)`
-/

namespace A127322.P17031259880786328451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127326 n + A127323 n

end

end A127322.P17031259880786328451

namespace A127322

/-- `A127326(n)+A127323(n)` -/
def P17031259880786328451.Spec : Prop :=
  ∀ n, P17031259880786328451.a n = A127322 n

theorem P17031259880786328451.correct : P17031259880786328451.Spec := by
  intro n
  simp only [A127322, Nat.add_sub_cancel, A127322.P17031259880786328451.a, A127322.P8390602753419418213.f1, A127322.P8390602753419418213.f2, A127322.P8390602753419418213.a, A000120, A000120.P2816527436160941581.a, A006257, A006257.P8910165504183276925.a, A023416, A023416.P8124303482289229133.a, A127323, A127323.P11295704530914292071.a, A127326, A127326.P13116696764520975307.a, A005187, A005187.P3874015513960485494.a, A070939, A070939.P14677302147902843740.a, A194884, A194884.P9953674383290406264.f1, A194884.P9953674383290406264.f2, A194884.P9953674383290406264.a, A007814, A007814.P13537437864234730737.a, A129760, A129760.P2320931579254019860.a, A001511, A001511.P17146462531039486101.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A127322

/-! ## A127322.P7258946988169789417

`A127321(n)-A127327(n)`
-/

namespace A127322.P7258946988169789417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127321 n - A127327 n

end

end A127322.P7258946988169789417

namespace A127322

/-- `A127321(n)-A127327(n)` -/
def P7258946988169789417.Spec : Prop :=
  ∀ n, P7258946988169789417.a n = A127322 n

theorem P7258946988169789417.correct : P7258946988169789417.Spec := by
  intro n
  simp only [A127322, Nat.add_sub_cancel, A127322.P7258946988169789417.a, A127322.P8390602753419418213.f1, A127322.P8390602753419418213.f2, A127322.P8390602753419418213.a, A000120, A000120.P2816527436160941581.a, A006257, A006257.P8910165504183276925.a, A023416, A023416.P8124303482289229133.a, A127321, A127321.P9706133412639531946.a, A127327, A127327.P1609288249831228995.a, A005187, A005187.P3874015513960485494.a, A070939, A070939.P14677302147902843740.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A127322

/-! ## A127322.P406429389556167988

`A155155(n)%A194883(n)`
-/

namespace A127322.P406429389556167988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A155155 n) (A194883 n)

end

end A127322.P406429389556167988

namespace A127322

/-- `A155155(n)%A194883(n)` -/
def P406429389556167988.Spec : Prop :=
  ∀ n, P406429389556167988.a n = A127322 n

end A127322

/-! ## A127322.P1946313020708474116

`A127326(n)+A194884(n)-1`
-/

namespace A127322.P1946313020708474116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127326 n + (A194884 n - 1)

end

end A127322.P1946313020708474116

namespace A127322

/-- `A127326(n)+A194884(n)-1` -/
def P1946313020708474116.Spec : Prop :=
  ∀ n, P1946313020708474116.a n = A127322 n

theorem P1946313020708474116.correct : P1946313020708474116.Spec := by
  intro n
  simp only [A127322, Nat.add_sub_cancel, A127322.P1946313020708474116.a, A127322.P8390602753419418213.f1, A127322.P8390602753419418213.f2, A127322.P8390602753419418213.a, A000120, A000120.P2816527436160941581.a, A006257, A006257.P8910165504183276925.a, A023416, A023416.P8124303482289229133.a, A127326, A127326.P13116696764520975307.a, A194884, A194884.P9953674383290406264.f1, A194884.P9953674383290406264.f2, A194884.P9953674383290406264.a, A005187, A005187.P3874015513960485494.a, A007814, A007814.P13537437864234730737.a, A070939, A070939.P14677302147902843740.a, A127323, A127323.P11295704530914292071.a, A129760, A129760.P2320931579254019860.a, A001511, A001511.P17146462531039486101.a, A006519, A006519.P10435570611646570274.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A127322

/-! ## A127322.P5379767766747866902

`A254078(n+2)%A194883(n)`
-/

namespace A127322.P5379767766747866902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A254078 (n + 2)) (A194883 n)

end

end A127322.P5379767766747866902

namespace A127322

/-- `A254078(n+2)%A194883(n)` -/
def P5379767766747866902.Spec : Prop :=
  ∀ n, P5379767766747866902.a n = A127322 n

end A127322

/-! ## A127322.P5465421908887059489

`A002262(∑[char[A051677(n+1)]])`
-/

namespace A127322.P5465421908887059489
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051677 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A127322.P5465421908887059489

namespace A127322

/-- `A002262(∑[char[A051677(n+1)]])` -/
def P5465421908887059489.Spec : Prop :=
  ∀ n, P5465421908887059489.a n = A127322 n

end A127322

/-! ## A127322.P8390602753419418213

`A023416(A006257(eq[4, A000120(n)]))`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A127322

/-- `A023416(A006257(eq[4, A000120(n)]))` -/
def P8390602753419418213.Spec : Prop :=
  ∀ n, P8390602753419418213.a n = A127322 n

theorem P8390602753419418213.correct : P8390602753419418213.Spec := by
  intro n
  simp only [A127322]

end A127322

/-! ## A127322.P9633065523918966943

`A127324(n)+A127326(n)+A127325(n)`
-/

namespace A127322.P9633065523918966943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127324 n + (A127326 n + A127325 n)

end

end A127322.P9633065523918966943

namespace A127322

/-- `A127324(n)+A127326(n)+A127325(n)` -/
def P9633065523918966943.Spec : Prop :=
  ∀ n, P9633065523918966943.a n = A127322 n

theorem P9633065523918966943.correct : P9633065523918966943.Spec := by
  intro n
  simp only [A127322, Nat.add_sub_cancel, A127322.P9633065523918966943.a, A127322.P8390602753419418213.f1, A127322.P8390602753419418213.f2, A127322.P8390602753419418213.a, A000120, A000120.P2816527436160941581.a, A006257, A006257.P8910165504183276925.a, A023416, A023416.P8124303482289229133.a, A127324, A127324.P10851335711510860639.a, A127325, A127325.P362483209747612631.a, A127326, A127326.P13116696764520975307.a, A005187, A005187.P3874015513960485494.a, A038466, A038466.P7851219286122095135.f1, A038466.P7851219286122095135.f2, A038466.P7851219286122095135.a, A070939, A070939.P14677302147902843740.a, A127323, A127323.P11295704530914292071.a, A005836, A005836.P12367569128854000442.a, A194884, A194884.P9953674383290406264.f1, A194884.P9953674383290406264.f2, A194884.P9953674383290406264.a, A007814, A007814.P13537437864234730737.a, A129760, A129760.P2320931579254019860.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A127322

/-!
# A127323: Third 4-dimensional hyper-tetrahedral coordinate; 4-D analog of A056557.

The programs for A127323, the canonical program `A127323.P11295704530914292071` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A127323 has offset 0).

The definition of A127323 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A127323.P11295704530914292071

`A194884(n)-1`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A127323

/-- `A194884(n)-1` -/
def P11295704530914292071.Spec : Prop :=
  ∀ n, P11295704530914292071.a n = A127323 n

theorem P11295704530914292071.correct : P11295704530914292071.Spec := by
  intro n
  simp only [A127323]

end A127323

/-! ## A127323.P7597085094189320281

`A285099(eq[4, a(and(n, n-1))+1])-1` with `a(0)=0`
-/

namespace A127323.P7597085094189320281
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f2 =>
  f2 (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285099 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n) - 1

end

end A127323.P7597085094189320281

namespace A127323

/-- `A285099(eq[4, a(and(n, n-1))+1])-1` -/
def P7597085094189320281.Spec : Prop :=
  ∀ n, P7597085094189320281.a n = A127323 n

end A127323

/-! ## A127323.P1348140732379930026

`A285099(eq[16, 2*a(and(n, n-1))])-1` with `a(0)=1`
-/

namespace A127323.P1348140732379930026
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f2 =>
  2 * f2 (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285099 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n) - 1

end

end A127323.P1348140732379930026

namespace A127323

/-- `A285099(eq[16, 2*a(and(n, n-1))])-1` -/
def P1348140732379930026.Spec : Prop :=
  ∀ n, P1348140732379930026.a n = A127323 n

end A127323

/-! ## A127323.P4617924261891137567

`A127324(A127325(n)+n)`
-/

namespace A127323.P4617924261891137567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127324 (A127325 n + (n : ℤ)).toNat

end

end A127323.P4617924261891137567

namespace A127323

/-- `A127324(A127325(n)+n)` -/
def P4617924261891137567.Spec : Prop :=
  ∀ n, P4617924261891137567.a n = A127323 n

end A127323

/-! ## A127323.P17169681720433467369

`A127325(n-A127324(n))`
-/

namespace A127323.P17169681720433467369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127325 ((n : ℤ) - A127324 n).toNat

end

end A127323.P17169681720433467369

namespace A127323

/-- `A127325(n-A127324(n))` -/
def P17169681720433467369.Spec : Prop :=
  ∀ n, P17169681720433467369.a n = A127323 n

end A127323

/-! ## A127323.P5174869986322122874

`A127322(n)-A127326(n)`
-/

namespace A127323.P5174869986322122874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127322 n - A127326 n

end

end A127323.P5174869986322122874

namespace A127323

/-- `A127322(n)-A127326(n)` -/
def P5174869986322122874.Spec : Prop :=
  ∀ n, P5174869986322122874.a n = A127323 n

theorem P5174869986322122874.correct : P5174869986322122874.Spec := by
  intro n
  simp only [A127323, Nat.add_sub_cancel, A127323.P5174869986322122874.a, A127323.P11295704530914292071.a, A127322, A127322.P8390602753419418213.f1, A127322.P8390602753419418213.f2, A127322.P8390602753419418213.a, A127326, A127326.P13116696764520975307.a, A194884, A194884.P9953674383290406264.f1, A194884.P9953674383290406264.f2, A194884.P9953674383290406264.a, A000120, A000120.P2816527436160941581.a, A006257, A006257.P8910165504183276925.a, A007814, A007814.P13537437864234730737.a, A023416, A023416.P8124303482289229133.a, A129760, A129760.P2320931579254019860.a, A001511, A001511.P17146462531039486101.a, A005187, A005187.P3874015513960485494.a, A070939, A070939.P14677302147902843740.a, A006519, A006519.P10435570611646570274.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A127323

/-! ## A127323.P9749010077021760211

`A070198(n)%A194884(n)`
-/

namespace A127323.P9749010077021760211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A070198 n) (A194884 n)

end

end A127323.P9749010077021760211

namespace A127323

/-- `A070198(n)%A194884(n)` -/
def P9749010077021760211.Spec : Prop :=
  ∀ n, P9749010077021760211.a n = A127323 n

end A127323

/-! ## A127323.P16286608961958094783

`A285099(A014312(n+1))-1`
-/

namespace A127323.P16286608961958094783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285099 (A014312 (n + 1)).toNat - 1

end

end A127323.P16286608961958094783

namespace A127323

/-- `A285099(A014312(n+1))-1` -/
def P16286608961958094783.Spec : Prop :=
  ∀ n, P16286608961958094783.a n = A127323 n

end A127323

/-! ## A127323.P1255916567774504056

`A030494(n+1)%A194884(n)`
-/

namespace A127323.P1255916567774504056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A030494 (n + 1)) (A194884 n)

end

end A127323.P1255916567774504056

namespace A127323

/-- `A030494(n+1)%A194884(n)` -/
def P1255916567774504056.Spec : Prop :=
  ∀ n, P1255916567774504056.a n = A127323 n

end A127323

/-! ## A127323.P7581898737255864118

`A058197(n+1)%A194884(n)`
-/

namespace A127323.P7581898737255864118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A058197 (n + 1)) (A194884 n)

end

end A127323.P7581898737255864118

namespace A127323

/-- `A058197(n+1)%A194884(n)` -/
def P7581898737255864118.Spec : Prop :=
  ∀ n, P7581898737255864118.a n = A127323 n

end A127323

/-! ## A127323.P7559480939779540169

`A072828(n+1)%A194884(n)`
-/

namespace A127323.P7559480939779540169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A072828 (n + 1)) (A194884 n)

end

end A127323.P7559480939779540169

namespace A127323

/-- `A072828(n+1)%A194884(n)` -/
def P7559480939779540169.Spec : Prop :=
  ∀ n, P7559480939779540169.a n = A127323 n

end A127323

/-! ## A127323.P12025317490623428288

`A079782(n+1)%A194884(n)`
-/

namespace A127323.P12025317490623428288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A079782 (n + 1)) (A194884 n)

end

end A127323.P12025317490623428288

namespace A127323

/-- `A079782(n+1)%A194884(n)` -/
def P12025317490623428288.Spec : Prop :=
  ∀ n, P12025317490623428288.a n = A127323 n

end A127323

/-! ## A127323.P2987278609316182403

`A083685(n+1)%A194884(n)`
-/

namespace A127323.P2987278609316182403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083685 (n + 1)) (A194884 n)

end

end A127323.P2987278609316182403

namespace A127323

/-- `A083685(n+1)%A194884(n)` -/
def P2987278609316182403.Spec : Prop :=
  ∀ n, P2987278609316182403.a n = A127323 n

end A127323

/-! ## A127323.P6570849825913995055

`A083800(n+1)%A194884(n)`
-/

namespace A127323.P6570849825913995055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083800 (n + 1)) (A194884 n)

end

end A127323.P6570849825913995055

namespace A127323

/-- `A083800(n+1)%A194884(n)` -/
def P6570849825913995055.Spec : Prop :=
  ∀ n, P6570849825913995055.a n = A127323 n

end A127323

/-! ## A127323.P11056480018965349230

`A121934(n+1)%A194884(n)`
-/

namespace A127323.P11056480018965349230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A121934 (n + 1)) (A194884 n)

end

end A127323.P11056480018965349230

namespace A127323

/-- `A121934(n+1)%A194884(n)` -/
def P11056480018965349230.Spec : Prop :=
  ∀ n, P11056480018965349230.a n = A127323 n

end A127323

/-! ## A127323.P9565601956819436480

`A127229(n+5)%A194884(n)`
-/

namespace A127323.P9565601956819436480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A127229 (n + 5)) (A194884 n)

end

end A127323.P9565601956819436480

namespace A127323

/-- `A127229(n+5)%A194884(n)` -/
def P9565601956819436480.Spec : Prop :=
  ∀ n, P9565601956819436480.a n = A127323 n

end A127323

/-! ## A127323.P18022983739221990635

`(A194884(n)+A017653(n))%6`
-/

namespace A127323.P18022983739221990635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A194884 n + A017653 n) 6

end

end A127323.P18022983739221990635

namespace A127323

/-- `(A194884(n)+A017653(n))%6` -/
def P18022983739221990635.Spec : Prop :=
  ∀ n, P18022983739221990635.a n = A127323 n

end A127323

/-! ## A127323.P2372706704957833829

`(A194884(n)+A005563(n))%(n+1)`
-/

namespace A127323.P2372706704957833829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A194884 n + A005563 n) (n + 1 : ℤ)

end

end A127323.P2372706704957833829

namespace A127323

/-- `(A194884(n)+A005563(n))%(n+1)` -/
def P2372706704957833829.Spec : Prop :=
  ∀ n, P2372706704957833829.a n = A127323 n

end A127323

/-! ## A127323.P9463295737644622968

`(A194884(n)+n)%A019554(n+1)`
-/

namespace A127323.P9463295737644622968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A194884 n + (n : ℤ)) (A019554 (n + 1))

end

end A127323.P9463295737644622968

namespace A127323

/-- `(A194884(n)+n)%A019554(n+1)` -/
def P9463295737644622968.Spec : Prop :=
  ∀ n, P9463295737644622968.a n = A127323 n

end A127323

/-! ## A127323.P13328818379886142966

`(A194884(n)+A028310(n))%(n+1)`
-/

namespace A127323.P13328818379886142966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A194884 n + A028310 n) (n + 1 : ℤ)

end

end A127323.P13328818379886142966

namespace A127323

/-- `(A194884(n)+A028310(n))%(n+1)` -/
def P13328818379886142966.Spec : Prop :=
  ∀ n, P13328818379886142966.a n = A127323 n

end A127323

/-!
# A127324: Fourth 4-dimensional hyper-tetrahedral coordinate; 4-D analog of A056558.

The programs for A127324, the canonical program `A127324.P10851335711510860639` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A127324 has offset 0).

The definition of A127324 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A127324.P8980343835487013189

`val(A014312(n+1), 2)`
-/

namespace A127324.P8980343835487013189
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A014312 (n + 1)).toNat 2

end

end A127324.P8980343835487013189

namespace A127324

/-- `val(A014312(n+1), 2)` -/
def P8980343835487013189.Spec : Prop :=
  ∀ n, (P8980343835487013189.a n : ℤ) = A127324 n

end A127324

/-! ## A127324.P5591473346308754075

`val(A038446(n+1), 2)`
-/

namespace A127324.P5591473346308754075
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A038446 (n + 1)).toNat 2

end

end A127324.P5591473346308754075

namespace A127324

/-- `val(A038446(n+1), 2)` -/
def P5591473346308754075.Spec : Prop :=
  ∀ n, (P5591473346308754075.a n : ℤ) = A127324 n

end A127324

/-! ## A127324.P11918038309077328606

`val(A038480(n+1), 2)`
-/

namespace A127324.P11918038309077328606
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A038480 (n + 1)).toNat 2

end

end A127324.P11918038309077328606

namespace A127324

/-- `val(A038480(n+1), 2)` -/
def P11918038309077328606.Spec : Prop :=
  ∀ n, (P11918038309077328606.a n : ℤ) = A127324 n

end A127324

/-! ## A127324.P10851335711510860639

`val(A038466(n+1), 3)`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A127324

/-- `val(A038466(n+1), 3)` -/
def P10851335711510860639.Spec : Prop :=
  ∀ n, (P10851335711510860639.a n : ℤ) = A127324 n

theorem P10851335711510860639.correct : P10851335711510860639.Spec := by
  intro n
  simp only [A127324]

end A127324

/-! ## A127324.P14300192691663981075

`val(A038472(n+1), 4)`
-/

namespace A127324.P14300192691663981075
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A038472 (n + 1)).toNat 4

end

end A127324.P14300192691663981075

namespace A127324

/-- `val(A038472(n+1), 4)` -/
def P14300192691663981075.Spec : Prop :=
  ∀ n, (P14300192691663981075.a n : ℤ) = A127324 n

end A127324

/-! ## A127324.P16458942698475844170

`val(A038476(n+1), 5)`
-/

namespace A127324.P16458942698475844170
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A038476 (n + 1)).toNat 5

end

end A127324.P16458942698475844170

namespace A127324

/-- `val(A038476(n+1), 5)` -/
def P16458942698475844170.Spec : Prop :=
  ∀ n, (P16458942698475844170.a n : ℤ) = A127324 n

end A127324

/-! ## A127324.P5669068096795993991

`val(A052218(n+1), 5)`
-/

namespace A127324.P5669068096795993991
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A052218 (n + 1)).toNat 5

end

end A127324.P5669068096795993991

namespace A127324

/-- `val(A052218(n+1), 5)` -/
def P5669068096795993991.Spec : Prop :=
  ∀ n, (P5669068096795993991.a n : ℤ) = A127324 n

end A127324

/-! ## A127324.P3938054902452058152

`val(A038483(n+1), 7)`
-/

namespace A127324.P3938054902452058152
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A038483 (n + 1)).toNat 7

end

end A127324.P3938054902452058152

namespace A127324

/-- `val(A038483(n+1), 7)` -/
def P3938054902452058152.Spec : Prop :=
  ∀ n, (P3938054902452058152.a n : ℤ) = A127324 n

end A127324

/-! ## A127324.P5752422866504809288

`val(A038486(n+1), 8)`
-/

namespace A127324.P5752422866504809288
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A038486 (n + 1)).toNat 8

end

end A127324.P5752422866504809288

namespace A127324

/-- `val(A038486(n+1), 8)` -/
def P5752422866504809288.Spec : Prop :=
  ∀ n, (P5752422866504809288.a n : ℤ) = A127324 n

end A127324

/-! ## A127324.P10840733584065453277

`val(A038489(n+1), 9)`
-/

namespace A127324.P10840733584065453277
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A038489 (n + 1)).toNat 9

end

end A127324.P10840733584065453277

namespace A127324

/-- `val(A038489(n+1), 9)` -/
def P10840733584065453277.Spec : Prop :=
  ∀ n, (P10840733584065453277.a n : ℤ) = A127324 n

end A127324

/-! ## A127324.P5670786429465963003

`val(4*(A023747(n+1)+1), 5)`
-/

namespace A127324.P5670786429465963003
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (4 * (A023747 (n + 1) + 1)).toNat 5

end

end A127324.P5670786429465963003

namespace A127324

/-- `val(4*(A023747(n+1)+1), 5)` -/
def P5670786429465963003.Spec : Prop :=
  ∀ n, (P5670786429465963003.a n : ℤ) = A127324 n

end A127324

/-! ## A127324.P3871906168037444795

`val(A102861(n+1), 5)`
-/

namespace A127324.P3871906168037444795
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A102861 (n + 1)).toNat 5

end

end A127324.P3871906168037444795

namespace A127324

/-- `val(A102861(n+1), 5)` -/
def P3871906168037444795.Spec : Prop :=
  ∀ n, (P3871906168037444795.a n : ℤ) = A127324 n

end A127324

/-! ## A127324.P5963292249244047797

`val(eq[4, A000120(n)], 2)`
-/

namespace A127324.P5963292249244047797
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) 2

end

end A127324.P5963292249244047797

namespace A127324

/-- `val(eq[4, A000120(n)], 2)` -/
def P5963292249244047797.Spec : Prop :=
  ∀ n, (P5963292249244047797.a n : ℤ) = A127324 n

end A127324

/-! ## A127324.P6975767542215633625

`A007814(A014312(n+1))`
-/

namespace A127324.P6975767542215633625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A014312 (n + 1)).toNat

end

end A127324.P6975767542215633625

namespace A127324

/-- `A007814(A014312(n+1))` -/
def P6975767542215633625.Spec : Prop :=
  ∀ n, P6975767542215633625.a n = A127324 n

end A127324

/-! ## A127324.P7925794053191068076

`A007814(eq[4, A000120(n)])`
-/

namespace A127324.P7925794053191068076
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A127324.P7925794053191068076

namespace A127324

/-- `A007814(eq[4, A000120(n)])` -/
def P7925794053191068076.Spec : Prop :=
  ∀ n, P7925794053191068076.a n = A127324 n

end A127324

/-! ## A127324.P16038714100463985246

`A007814(eq[4, log2(A001316(n))])`
-/

namespace A127324.P16038714100463985246
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A001316 n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (SequenceMachineLib.nth (fun j => (f1 j : ℝ) = f2 j) n)

end

end A127324.P16038714100463985246

namespace A127324

/-- `A007814(eq[4, log2(A001316(n))])` -/
def P16038714100463985246.Spec : Prop :=
  ∀ n, P16038714100463985246.a n = A127324 n

end A127324

/-! ## A127324.P6417788496434772167

`A007814(eq[4, n-A011371(n)])`
-/

namespace A127324.P6417788496434772167
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A011371 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A127324.P6417788496434772167

namespace A127324

/-- `A007814(eq[4, n-A011371(n)])` -/
def P6417788496434772167.Spec : Prop :=
  ∀ n, P6417788496434772167.a n = A127324 n

end A127324

/-! ## A127324.P16811181793390309274

`A007814(eq[4, 2*n-A005187(n)])`
-/

namespace A127324.P16811181793390309274
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - A005187 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A127324.P16811181793390309274

namespace A127324

/-- `A007814(eq[4, 2*n-A005187(n)])` -/
def P16811181793390309274.Spec : Prop :=
  ∀ n, P16811181793390309274.a n = A127324 n

end A127324

/-! ## A127324.P12983161670892093450

`A007814(eq[4, n-A005187(n)+n])`
-/

namespace A127324.P12983161670892093450
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A005187 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A127324.P12983161670892093450

namespace A127324

/-- `A007814(eq[4, n-A005187(n)+n])` -/
def P12983161670892093450.Spec : Prop :=
  ∀ n, P12983161670892093450.a n = A127324 n

end A127324

/-! ## A127324.P5191501725508908083

`A001222(A006519(eq[4, A000120(n)]))`
-/

namespace A127324.P5191501725508908083
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A006519 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)).toNat

end

end A127324.P5191501725508908083

namespace A127324

/-- `A001222(A006519(eq[4, A000120(n)]))` -/
def P5191501725508908083.Spec : Prop :=
  ∀ n, P5191501725508908083.a n = A127324 n

end A127324

/-!
# A127325: Hypertetrahedron with T(W,X,Y,Z) = Y - Z.

The programs for A127325, the canonical program `A127325.P362483209747612631` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A127325 has offset 0).

The definition of A127325 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A127323, A127324, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A127325.P362483209747612631

`A127323(n)-A127324(n)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A127325

/-- `A127323(n)-A127324(n)` -/
def P362483209747612631.Spec : Prop :=
  ∀ n, P362483209747612631.a n = A127325 n

theorem P362483209747612631.correct : P362483209747612631.Spec := by
  intro n
  simp only [A127325]

end A127325

/-! ## A127325.P103821622112286575

`∑[val(A014312(n+1)-1, 2)-1]`
-/

namespace A127325.P103821622112286575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (A014312 (n + 1) - 1).toNat 2 : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A127325.P103821622112286575

namespace A127325

/-- `∑[val(A014312(n+1)-1, 2)-1]` -/
def P103821622112286575.Spec : Prop :=
  ∀ n, P103821622112286575.a n = A127325 n

end A127325

/-! ## A127325.P16422381667602775367

`A285097(A014312(n+1))-1`
-/

namespace A127325.P16422381667602775367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285097 (A014312 (n + 1)).toNat - 1

end

end A127325.P16422381667602775367

namespace A127325

/-- `A285097(A014312(n+1))-1` -/
def P16422381667602775367.Spec : Prop :=
  ∀ n, P16422381667602775367.a n = A127325 n

end A127325

/-! ## A127325.P9636902153100187001

`A285097(eq[4, A000120(n)])-1`
-/

namespace A127325.P9636902153100187001
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285097 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) - 1

end

end A127325.P9636902153100187001

namespace A127325

/-- `A285097(eq[4, A000120(n)])-1` -/
def P9636902153100187001.Spec : Prop :=
  ∀ n, P9636902153100187001.a n = A127325 n

end A127325

/-! ## A127325.P11836535120979928472

`val(A101279(eq[15, A038573(n)]), 2)`
-/

namespace A127325.P11836535120979928472
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038573 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A101279 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)).toNat 2

end

end A127325.P11836535120979928472

namespace A127325

/-- `val(A101279(eq[15, A038573(n)]), 2)` -/
def P11836535120979928472.Spec : Prop :=
  ∀ n, (P11836535120979928472.a n : ℤ) = A127325 n

end A127325

/-! ## A127325.P16656873058024935637

`A194884(n)-(A127324(n)+1)`
-/

namespace A127325.P16656873058024935637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194884 n - (A127324 n + 1)

end

end A127325.P16656873058024935637

namespace A127325

/-- `A194884(n)-(A127324(n)+1)` -/
def P16656873058024935637.Spec : Prop :=
  ∀ n, P16656873058024935637.a n = A127325 n

theorem P16656873058024935637.correct : P16656873058024935637.Spec := by
  intro n
  simp only [A127325, Nat.add_sub_cancel, A127325.P16656873058024935637.a, A127325.P362483209747612631.a, A127323, A127323.P11295704530914292071.a, A127324, A127324.P10851335711510860639.a, A194884, A194884.P9953674383290406264.f1, A194884.P9953674383290406264.f2, A194884.P9953674383290406264.a, A000120, A000120.P2816527436160941581.a, A007814, A007814.P13537437864234730737.a, A038466, A038466.P7851219286122095135.f1, A038466.P7851219286122095135.f2, A038466.P7851219286122095135.a, A129760, A129760.P2320931579254019860.a, A001511, A001511.P17146462531039486101.a, A005187, A005187.P3874015513960485494.a, A005836, A005836.P12367569128854000442.a, A006519, A006519.P10435570611646570274.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A127325

/-! ## A127325.P10246576501205624147

`A033619(A285097(eq[4, A000120(n)]))`
-/

namespace A127325.P10246576501205624147
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033619 (A285097 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)).toNat

end

end A127325.P10246576501205624147

namespace A127325

/-- `A033619(A285097(eq[4, A000120(n)]))` -/
def P10246576501205624147.Spec : Prop :=
  ∀ n, P10246576501205624147.a n = A127325 n

end A127325

/-! ## A127325.P12025831792160809109

`A001633(A194884(n)-A127324(n))`
-/

namespace A127325.P12025831792160809109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001633 (A194884 n - A127324 n).toNat

end

end A127325.P12025831792160809109

namespace A127325

/-- `A001633(A194884(n)-A127324(n))` -/
def P12025831792160809109.Spec : Prop :=
  ∀ n, P12025831792160809109.a n = A127325 n

end A127325

/-! ## A127325.P5011305977234662193

`A002113(A194884(n)-A127324(n))`
-/

namespace A127325.P5011305977234662193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (A194884 n - A127324 n).toNat

end

end A127325.P5011305977234662193

namespace A127325

/-- `A002113(A194884(n)-A127324(n))` -/
def P5011305977234662193.Spec : Prop :=
  ∀ n, P5011305977234662193.a n = A127325 n

end A127325

/-! ## A127325.P9377647537897767067

`A002837(A194884(n)-A127324(n))`
-/

namespace A127325.P9377647537897767067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002837 (A194884 n - A127324 n).toNat

end

end A127325.P9377647537897767067

namespace A127325

/-- `A002837(A194884(n)-A127324(n))` -/
def P9377647537897767067.Spec : Prop :=
  ∀ n, P9377647537897767067.a n = A127325 n

end A127325

/-! ## A127325.P4455968804614977799

`A004859(A194884(n)-A127324(n))`
-/

namespace A127325.P4455968804614977799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004859 (A194884 n - A127324 n).toNat

end

end A127325.P4455968804614977799

namespace A127325

/-- `A004859(A194884(n)-A127324(n))` -/
def P4455968804614977799.Spec : Prop :=
  ∀ n, P4455968804614977799.a n = A127325 n

end A127325

/-! ## A127325.P15796731141694033632

`A023443(A194884(n)-A127324(n))`
-/

namespace A127325.P15796731141694033632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A194884 n - A127324 n).toNat

end

end A127325.P15796731141694033632

namespace A127325

/-- `A023443(A194884(n)-A127324(n))` -/
def P15796731141694033632.Spec : Prop :=
  ∀ n, P15796731141694033632.a n = A127325 n

end A127325

/-! ## A127325.P2715945839322815487

`A033619(A194884(n)-A127324(n))`
-/

namespace A127325.P2715945839322815487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033619 (A194884 n - A127324 n).toNat

end

end A127325.P2715945839322815487

namespace A127325

/-- `A033619(A194884(n)-A127324(n))` -/
def P2715945839322815487.Spec : Prop :=
  ∀ n, P2715945839322815487.a n = A127325 n

end A127325

/-! ## A127325.P11101355366753718154

`A330350(A194884(n)-A127324(n))`
-/

namespace A127325.P11101355366753718154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330350 (A194884 n - A127324 n).toNat

end

end A127325.P11101355366753718154

namespace A127325

/-- `A330350(A194884(n)-A127324(n))` -/
def P11101355366753718154.Spec : Prop :=
  ∀ n, P11101355366753718154.a n = A127325 n

end A127325

/-! ## A127325.P17702589414330854769

`A127323(n)-A007814(A014312(n+1))`
-/

namespace A127325.P17702589414330854769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127323 n - A007814 (A014312 (n + 1)).toNat

end

end A127325.P17702589414330854769

namespace A127325

/-- `A127323(n)-A007814(A014312(n+1))` -/
def P17702589414330854769.Spec : Prop :=
  ∀ n, P17702589414330854769.a n = A127325 n

end A127325

/-! ## A127325.P191875586481795706

`A127322(n)-(A127326(n)+A127324(n))`
-/

namespace A127325.P191875586481795706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127322 n - (A127326 n + A127324 n)

end

end A127325.P191875586481795706

namespace A127325

/-- `A127322(n)-(A127326(n)+A127324(n))` -/
def P191875586481795706.Spec : Prop :=
  ∀ n, P191875586481795706.a n = A127325 n

theorem P191875586481795706.correct : P191875586481795706.Spec := by
  intro n
  simp only [A127325, Nat.add_sub_cancel, A127325.P191875586481795706.a, A127325.P362483209747612631.a, A127322, A127322.P8390602753419418213.f1, A127322.P8390602753419418213.f2, A127322.P8390602753419418213.a, A127323, A127323.P11295704530914292071.a, A127324, A127324.P10851335711510860639.a, A127326, A127326.P13116696764520975307.a, A000120, A000120.P2816527436160941581.a, A006257, A006257.P8910165504183276925.a, A023416, A023416.P8124303482289229133.a, A038466, A038466.P7851219286122095135.f1, A038466.P7851219286122095135.f2, A038466.P7851219286122095135.a, A194884, A194884.P9953674383290406264.f1, A194884.P9953674383290406264.f2, A194884.P9953674383290406264.a, A005187, A005187.P3874015513960485494.a, A005836, A005836.P12367569128854000442.a, A007814, A007814.P13537437864234730737.a, A070939, A070939.P14677302147902843740.a, A129760, A129760.P2320931579254019860.a, A001511, A001511.P17146462531039486101.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A127325

/-! ## A127325.P4259428313242807106

`(A127323(n)*A127324(n+1))%A194884(n)`
-/

namespace A127325.P4259428313242807106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A127323 n * A127324 (n + 1)) (A194884 n)

end

end A127325.P4259428313242807106

namespace A127325

/-- `(A127323(n)*A127324(n+1))%A194884(n)` -/
def P4259428313242807106.Spec : Prop :=
  ∀ n, P4259428313242807106.a n = A127325 n

end A127325

/-!
# A127326: Hypertetrahedron with T(W,X,Y,Z) = X - Y.

The programs for A127326, the canonical program `A127326.P13116696764520975307` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A127326 has offset 0).

The definition of A127326 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A127322, A127323, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A127326.P13116696764520975307

`A127322(n)-A127323(n)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A127326

/-- `A127322(n)-A127323(n)` -/
def P13116696764520975307.Spec : Prop :=
  ∀ n, P13116696764520975307.a n = A127326 n

theorem P13116696764520975307.correct : P13116696764520975307.Spec := by
  intro n
  simp only [A127326]

end A127326

/-! ## A127326.P2625877460944989642

`val(A253563(A014312(n+1)), 3)`
-/

namespace A127326.P2625877460944989642
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A253563 (A014312 (n + 1)).toNat).toNat 3

end

end A127326.P2625877460944989642

namespace A127326

/-- `val(A253563(A014312(n+1)), 3)` -/
def P2625877460944989642.Spec : Prop :=
  ∀ n, (P2625877460944989642.a n : ℤ) = A127326 n

end A127326

/-! ## A127326.P12186402559451264525

`A127322(n)+1-A194884(n)`
-/

namespace A127326.P12186402559451264525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127322 n + (1 - A194884 n)

end

end A127326.P12186402559451264525

namespace A127326

/-- `A127322(n)+1-A194884(n)` -/
def P12186402559451264525.Spec : Prop :=
  ∀ n, P12186402559451264525.a n = A127326 n

theorem P12186402559451264525.correct : P12186402559451264525.Spec := by
  intro n
  simp only [A127326, Nat.add_sub_cancel, A127326.P12186402559451264525.a, A127326.P13116696764520975307.a, A127322, A127322.P8390602753419418213.f1, A127322.P8390602753419418213.f2, A127322.P8390602753419418213.a, A127323, A127323.P11295704530914292071.a, A194884, A194884.P9953674383290406264.f1, A194884.P9953674383290406264.f2, A194884.P9953674383290406264.a, A000120, A000120.P2816527436160941581.a, A006257, A006257.P8910165504183276925.a, A007814, A007814.P13537437864234730737.a, A023416, A023416.P8124303482289229133.a, A129760, A129760.P2320931579254019860.a, A001511, A001511.P17146462531039486101.a, A005187, A005187.P3874015513960485494.a, A070939, A070939.P14677302147902843740.a, A006519, A006519.P10435570611646570274.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A127326

/-! ## A127326.P18313602463661201535

`A194883(n)-(A194884(n)+1)`
-/

namespace A127326.P18313602463661201535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194883 n - (A194884 n + 1)

end

end A127326.P18313602463661201535

namespace A127326

/-- `A194883(n)-(A194884(n)+1)` -/
def P18313602463661201535.Spec : Prop :=
  ∀ n, P18313602463661201535.a n = A127326 n

end A127326

/-! ## A127326.P10445911928146699818

`A194883(n)-(A127323(n)+2)`
-/

namespace A127326.P10445911928146699818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194883 n - (A127323 n + 2)

end

end A127326.P10445911928146699818

namespace A127326

/-- `A194883(n)-(A127323(n)+2)` -/
def P10445911928146699818.Spec : Prop :=
  ∀ n, P10445911928146699818.a n = A127326 n

end A127326

/-! ## A127326.P9488718873656198355

`A127321(n)-(A127327(n)+A127323(n))`
-/

namespace A127326.P9488718873656198355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127321 n - (A127327 n + A127323 n)

end

end A127326.P9488718873656198355

namespace A127326

/-- `A127321(n)-(A127327(n)+A127323(n))` -/
def P9488718873656198355.Spec : Prop :=
  ∀ n, P9488718873656198355.a n = A127326 n

theorem P9488718873656198355.correct : P9488718873656198355.Spec := by
  intro n
  simp only [A127326, Nat.add_sub_cancel, A127326.P9488718873656198355.a, A127326.P13116696764520975307.a, A127321, A127321.P9706133412639531946.a, A127322, A127322.P8390602753419418213.f1, A127322.P8390602753419418213.f2, A127322.P8390602753419418213.a, A127323, A127323.P11295704530914292071.a, A127327, A127327.P1609288249831228995.a, A000120, A000120.P2816527436160941581.a, A006257, A006257.P8910165504183276925.a, A023416, A023416.P8124303482289229133.a, A194884, A194884.P9953674383290406264.f1, A194884.P9953674383290406264.f2, A194884.P9953674383290406264.a, A005187, A005187.P3874015513960485494.a, A007814, A007814.P13537437864234730737.a, A070939, A070939.P14677302147902843740.a, A129760, A129760.P2320931579254019860.a, A001511, A001511.P17146462531039486101.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A127326

/-! ## A127326.P9655018275535825444

`A127322(n)-A127324(A127325(n)+n)`
-/

namespace A127326.P9655018275535825444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127322 n - A127324 (A127325 n + (n : ℤ)).toNat

end

end A127326.P9655018275535825444

namespace A127326

/-- `A127322(n)-A127324(A127325(n)+n)` -/
def P9655018275535825444.Spec : Prop :=
  ∀ n, P9655018275535825444.a n = A127326 n

end A127326

/-! ## A127326.P10382578439721305343

`A127322(n)-A127325(n-A127324(n))`
-/

namespace A127326.P10382578439721305343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127322 n - A127325 ((n : ℤ) - A127324 n).toNat

end

end A127326.P10382578439721305343

namespace A127326

/-- `A127322(n)-A127325(n-A127324(n))` -/
def P10382578439721305343.Spec : Prop :=
  ∀ n, P10382578439721305343.a n = A127326 n

end A127326

/-!
# A127327: Hypertetrahedron with T(W,X,Y,Z) = W - X.

The programs for A127327, the canonical program `A127327.P1609288249831228995` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A127327 has offset 0).

The definition of A127327 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A127322, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A127327.P1609288249831228995

`A127321(n)-A127322(n)`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A127327

/-- `A127321(n)-A127322(n)` -/
def P1609288249831228995.Spec : Prop :=
  ∀ n, P1609288249831228995.a n = A127327 n

theorem P1609288249831228995.correct : P1609288249831228995.Spec := by
  intro n
  simp only [A127327]

end A127327

/-! ## A127327.P3155846125992005544

`∑[char[C(n, 4)]]-A194883(n)+1`
-/

namespace A127327.P3155846125992005544
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 4

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A194883 n + 1

end

end A127327.P3155846125992005544

namespace A127327

/-- `∑[char[C(n, 4)]]-A194883(n)+1` -/
def P3155846125992005544.Spec : Prop :=
  ∀ n, P3155846125992005544.a n = A127327 n

end A127327

/-! ## A127327.P11403142193370126995

`A290255(eq[7, a(and(n, n-1))+1])` with `a(0)=3`
-/

namespace A127327.P11403142193370126995
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℕ := SequenceMachineLib.rec [3] fun n f2 =>
  f2 (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290255 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A127327.P11403142193370126995

namespace A127327

/-- `A290255(eq[7, a(and(n, n-1))+1])` -/
def P11403142193370126995.Spec : Prop :=
  ∀ n, P11403142193370126995.a n = A127327 n

end A127327

/-! ## A127327.P8181572446356743281

`A290255(A014312(n+1))`
-/

namespace A127327.P8181572446356743281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290255 (A014312 (n + 1)).toNat

end

end A127327.P8181572446356743281

namespace A127327

/-- `A290255(A014312(n+1))` -/
def P8181572446356743281.Spec : Prop :=
  ∀ n, P8181572446356743281.a n = A127327 n

end A127327

/-! ## A127327.P11093730024033572687

`A290255(eq[3, A048881(n)])`
-/

namespace A127327.P11093730024033572687
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048881 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290255 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A127327.P11093730024033572687

namespace A127327

/-- `A290255(eq[3, A048881(n)])` -/
def P11093730024033572687.Spec : Prop :=
  ∀ n, P11093730024033572687.a n = A127327 n

end A127327

/-! ## A127327.P6399838821098083513

`A290255(eq[4, A000120(n)])`
-/

namespace A127327.P6399838821098083513
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290255 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A127327.P6399838821098083513

namespace A127327

/-- `A290255(eq[4, A000120(n)])` -/
def P6399838821098083513.Spec : Prop :=
  ∀ n, P6399838821098083513.a n = A127327 n

end A127327

/-! ## A127327.P8476962005818699128

`A290255(eq[8, A048896(n)])`
-/

namespace A127327.P8476962005818699128
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048896 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290255 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A127327.P8476962005818699128

namespace A127327

/-- `A290255(eq[8, A048896(n)])` -/
def P8476962005818699128.Spec : Prop :=
  ∀ n, P8476962005818699128.a n = A127327 n

end A127327

/-! ## A127327.P11068662833515179816

`A290255(eq[15, A038573(n)])`
-/

namespace A127327.P11068662833515179816
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038573 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290255 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A127327.P11068662833515179816

namespace A127327

/-- `A290255(eq[15, A038573(n)])` -/
def P11068662833515179816.Spec : Prop :=
  ∀ n, P11068662833515179816.a n = A127327 n

end A127327

/-! ## A127327.P3522159794978321038

`A290255(eq[16, A001316(n)])`
-/

namespace A127327.P3522159794978321038
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290255 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A127327.P3522159794978321038

namespace A127327

/-- `A290255(eq[16, A001316(n)])` -/
def P3522159794978321038.Spec : Prop :=
  ∀ n, P3522159794978321038.a n = A127327 n

end A127327

/-! ## A127327.P12063779962026268356

`val(A059893(eq[4, A000120(n)]), 2)`
-/

namespace A127327.P12063779962026268356
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A059893 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)).toNat 2

end

end A127327.P12063779962026268356

namespace A127327

/-- `val(A059893(eq[4, A000120(n)]), 2)` -/
def P12063779962026268356.Spec : Prop :=
  ∀ n, (P12063779962026268356.a n : ℤ) = A127327 n

end A127327

/-! ## A127327.P1768284049929901075

`A127321(n)+2-A194883(n)`
-/

namespace A127327.P1768284049929901075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127321 n + (2 - A194883 n)

end

end A127327.P1768284049929901075

namespace A127327

/-- `A127321(n)+2-A194883(n)` -/
def P1768284049929901075.Spec : Prop :=
  ∀ n, P1768284049929901075.a n = A127327 n

end A127327

/-! ## A127327.P3672403857461018820

`A194882(n)-(A127322(n)+3)`
-/

namespace A127327.P3672403857461018820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194882 n - (A127322 n + 3)

end

end A127327.P3672403857461018820

namespace A127327

/-- `A194882(n)-(A127322(n)+3)` -/
def P3672403857461018820.Spec : Prop :=
  ∀ n, P3672403857461018820.a n = A127327 n

end A127327

/-! ## A127327.P17204189946910719507

`A025581(∑[char[A051677(n+1)]])`
-/

namespace A127327.P17204189946910719507
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051677 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A127327.P17204189946910719507

namespace A127327

/-- `A025581(∑[char[A051677(n+1)]])` -/
def P17204189946910719507.Spec : Prop :=
  ∀ n, P17204189946910719507.a n = A127327 n

end A127327

/-! ## A127327.P2492115712311813279

`val(A253563(A014312(n+1)-1), 2)`
-/

namespace A127327.P2492115712311813279
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A253563 (A014312 (n + 1) - 1).toNat).toNat 2

end

end A127327.P2492115712311813279

namespace A127327

/-- `val(A253563(A014312(n+1)-1), 2)` -/
def P2492115712311813279.Spec : Prop :=
  ∀ n, (P2492115712311813279.a n : ℤ) = A127327 n

end A127327

/-! ## A127327.P11314222413237636154

`val(A253563(2*A014312(n+1)), 2)`
-/

namespace A127327.P11314222413237636154
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A253563 (2 * A014312 (n + 1)).toNat).toNat 2

end

end A127327.P11314222413237636154

namespace A127327

/-- `val(A253563(2*A014312(n+1)), 2)` -/
def P11314222413237636154.Spec : Prop :=
  ∀ n, (P11314222413237636154.a n : ℤ) = A127327 n

end A127327

/-! ## A127327.P7666898777799459496

`A163510(A000788(eq[4, A000120(n)]))`
-/

namespace A127327.P7666898777799459496
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163510 (A000788 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)).toNat

end

end A127327.P7666898777799459496

namespace A127327

/-- `A163510(A000788(eq[4, A000120(n)]))` -/
def P7666898777799459496.Spec : Prop :=
  ∀ n, P7666898777799459496.a n = A127327 n

end A127327

/-! ## A127327.P1244548648688959603

`A127321(n)-(A127326(n)+A127323(n))`
-/

namespace A127327.P1244548648688959603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127321 n - (A127326 n + A127323 n)

end

end A127327.P1244548648688959603

namespace A127327

/-- `A127321(n)-(A127326(n)+A127323(n))` -/
def P1244548648688959603.Spec : Prop :=
  ∀ n, P1244548648688959603.a n = A127327 n

theorem P1244548648688959603.correct : P1244548648688959603.Spec := by
  intro n
  simp only [A127327, Nat.add_sub_cancel, A127327.P1244548648688959603.a, A127327.P1609288249831228995.a, A127321, A127321.P9706133412639531946.a, A127322, A127322.P8390602753419418213.f1, A127322.P8390602753419418213.f2, A127322.P8390602753419418213.a, A127323, A127323.P11295704530914292071.a, A127326, A127326.P13116696764520975307.a, A000120, A000120.P2816527436160941581.a, A006257, A006257.P8910165504183276925.a, A023416, A023416.P8124303482289229133.a, A194884, A194884.P9953674383290406264.f1, A194884.P9953674383290406264.f2, A194884.P9953674383290406264.a, A005187, A005187.P3874015513960485494.a, A007814, A007814.P13537437864234730737.a, A070939, A070939.P14677302147902843740.a, A129760, A129760.P2320931579254019860.a, A001511, A001511.P17146462531039486101.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A127327

/-!
# A127329: Semiprimes equal to the sum of three primes in arithmetic progression.

The programs for A127329, there is no canonical definition to state claims against.
-/

/-! ## A127329.P6827342377052202450

`3*p?[2*n+5]`
-/

namespace A127329.P6827342377052202450
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A127329.P6827342377052202450

/-! ## A127329.P4818415174419680693

`record[3*∑{p}[n+5, #]]`
-/

namespace A127329.P4818415174419680693
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * (∑ p ∈ Nat.primeFactors (f2 n), p)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A127329.P4818415174419680693

/-! ## A127329.P9985732303487978857

`lcm(3, p?[Δ[(n+2)²]])`
-/

namespace A127329.P9985732303487978857
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 2) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 3 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A127329.P9985732303487978857

/-! ## A127329.P3120397934452721387

`Δ[3*∑[p?[Δ[n²]]]]`
-/

namespace A127329.P3120397934452721387
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f4 (n + 1) : ℤ) - (f4 n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => (f3 j).toNat.Prime) n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A127329.P3120397934452721387

/-! ## A127329.P7824883650996089601

`record[∑{p}[2*n-5, 3*#]]`
-/

namespace A127329.P7824883650996089601
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - 5

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, 3 * p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A127329.P7824883650996089601

/-! ## A127329.P15143178616978880490

`A001748(n+3)`
-/

namespace A127329.P15143178616978880490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001748 (n + 3)

end

end A127329.P15143178616978880490

/-! ## A127329.P16226399755264744913

`A063534(n+3)`
-/

namespace A127329.P16226399755264744913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063534 (n + 3)

end

end A127329.P16226399755264744913

/-! ## A127329.P11821119950551482445

`A112773(n+4)`
-/

namespace A127329.P11821119950551482445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112773 (n + 4)

end

end A127329.P11821119950551482445

/-! ## A127329.P7769718845668462849

`A288313(n+4)`
-/

namespace A127329.P7769718845668462849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288313 (n + 4)

end

end A127329.P7769718845668462849

/-! ## A127329.P13464883710383997761

`3*A066047(n+1)`
-/

namespace A127329.P13464883710383997761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A066047 (n + 1)

end

end A127329.P13464883710383997761

/-!
# A127330: Begin with the empty sequence and a starting number s = 0. At step k (k >= 1) append the k consecutive numbers s to s+k-1 and change the starting number (for the next step) to 2s+2.

The programs for A127330, the canonical program `A127330.P16633446527090742344` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A127330 has offset 0).

The definition of A127330 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8001 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A127330.P16633446527090742344

`A084634(A003056(n))-1+n`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A127330

/-- `A084634(A003056(n))-1+n` -/
def P16633446527090742344.Spec : Prop :=
  ∀ n, P16633446527090742344.a n = A127330 n

theorem P16633446527090742344.correct : P16633446527090742344.Spec := by
  intro n
  simp only [A127330]

end A127330

/-! ## A127330.P3914410801600108547

`A002262(n)+A140513(n)-2`
-/

namespace A127330.P3914410801600108547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n + (A140513 n - 2)

end

end A127330.P3914410801600108547

namespace A127330

/-- `A002262(n)+A140513(n)-2` -/
def P3914410801600108547.Spec : Prop :=
  ∀ n, P3914410801600108547.a n = A127330 n

end A127330

/-! ## A127330.P14671538084666868523

`log2(A059268(n))+A140513(n)-2`
-/

namespace A127330.P14671538084666868523
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A059268 n : ℝ) + (A140513 n - 2 : ℝ)

end

end A127330.P14671538084666868523

namespace A127330

/-- `log2(A059268(n))+A140513(n)-2` -/
def P14671538084666868523.Spec : Prop :=
  ∀ n, P14671538084666868523.a n = (A127330 n : ℝ)

end A127330

/-! ## A127330.P17126273793211979125

`A002262(n)+A000918(A002024(n+1))`
-/

namespace A127330.P17126273793211979125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n + A000918 (A002024 (n + 1)).toNat

end

end A127330.P17126273793211979125

namespace A127330

/-- `A002262(n)+A000918(A002024(n+1))` -/
def P17126273793211979125.Spec : Prop :=
  ∀ n, P17126273793211979125.a n = A127330 n

end A127330

/-! ## A127330.P15617365093886261613

`A002262(n)+2*A000225(A003056(n))`
-/

namespace A127330.P15617365093886261613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n + 2 * A000225 (A003056 n).toNat

end

end A127330.P15617365093886261613

namespace A127330

/-- `A002262(n)+2*A000225(A003056(n))` -/
def P15617365093886261613.Spec : Prop :=
  ∀ n, P15617365093886261613.a n = A127330 n

theorem P15617365093886261613.correct : P15617365093886261613.Spec := by
  intro n
  simp only [A127330, Nat.add_sub_cancel, A127330.P15617365093886261613.a, A127330.P16633446527090742344.a, A000225, A000225.P6535533121115206393.a, A002262, A002262.P12129691700837801527.a, A003056, A003056.P5318256527314048597.a, A084634, A084634.P2714212107151663742.a, A057944, A057944.P16851463738746886639.a, A000217, A000217.P10269402890581615239.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A127330

/-! ## A127330.P18220541078928270504

`A023758(A004736(n+1)+n)+A002262(n)`
-/

namespace A127330.P18220541078928270504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023758 (A004736 (n + 1) + (n : ℤ)).toNat + A002262 n

end

end A127330.P18220541078928270504

namespace A127330

/-- `A023758(A004736(n+1)+n)+A002262(n)` -/
def P18220541078928270504.Spec : Prop :=
  ∀ n, P18220541078928270504.a n = A127330 n

end A127330

/-! ## A127330.P12757094414860580517

`A023758(A025581(n)+1+n)+A002262(n)`
-/

namespace A127330.P12757094414860580517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023758 (A025581 n + 1 + (n : ℤ)).toNat + A002262 n

end

end A127330.P12757094414860580517

namespace A127330

/-- `A023758(A025581(n)+1+n)+A002262(n)` -/
def P12757094414860580517.Spec : Prop :=
  ∀ n, P12757094414860580517.a n = A127330 n

end A127330

/-! ## A127330.P7937168372712719301

`abs(2-(A002262(n)+A000079(A003056(n)+1)))`
-/

namespace A127330.P7937168372712719301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - (A002262 n + A000079 (A003056 n + 1).toNat)|

end

end A127330.P7937168372712719301

namespace A127330

/-- `abs(2-(A002262(n)+A000079(A003056(n)+1)))` -/
def P7937168372712719301.Spec : Prop :=
  ∀ n, P7937168372712719301.a n = A127330 n

end A127330

/-! ## A127330.P4226284581094441129

`A000225(A002024(n+1))+A002260(n+1)-2`
-/

namespace A127330.P4226284581094441129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (A002024 (n + 1)).toNat + (A002260 (n + 1) - 2)

end

end A127330.P4226284581094441129

namespace A127330

/-- `A000225(A002024(n+1))+A002260(n+1)-2` -/
def P4226284581094441129.Spec : Prop :=
  ∀ n, P4226284581094441129.a n = A127330 n

end A127330

/-! ## A127330.P16135785944016499613

`A129143(comp[∑[n]])-2`
-/

namespace A127330.P16135785944016499613
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129143 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) - 2

end

end A127330.P16135785944016499613

namespace A127330

/-- `A129143(comp[∑[n]])-2` -/
def P16135785944016499613.Spec : Prop :=
  ∀ n, P16135785944016499613.a n = A127330 n

end A127330

/-! ## A127330.P11635791368939675879

`A277046(A004201(n+1))-1`
-/

namespace A127330.P11635791368939675879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277046 (A004201 (n + 1)).toNat - 1

end

end A127330.P11635791368939675879

namespace A127330

/-- `A277046(A004201(n+1))-1` -/
def P11635791368939675879.Spec : Prop :=
  ∀ n, P11635791368939675879.a n = A127330 n

end A127330

/-! ## A127330.P15606321982253696954

`A002262(n)+A000203(A137688(n))-1`
-/

namespace A127330.P15606321982253696954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n + (A000203 (A137688 n).toNat - 1)

end

end A127330.P15606321982253696954

namespace A127330

/-- `A002262(n)+A000203(A137688(n))-1` -/
def P15606321982253696954.Spec : Prop :=
  ∀ n, P15606321982253696954.a n = A127330 n

end A127330

/-! ## A127330.P6837066584248394376

`A092754(A129143(n+1))-1`
-/

namespace A127330.P6837066584248394376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092754 (A129143 (n + 1)).toNat - 1

end

end A127330.P6837066584248394376

namespace A127330

/-- `A092754(A129143(n+1))-1` -/
def P6837066584248394376.Spec : Prop :=
  ∀ n, P6837066584248394376.a n = A127330 n

end A127330

/-!
# A127331: Primes p such that 6p-7 and 6p+7 are also primes.

The programs for A127331, the canonical program `A127331.P7890648957461590311` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A127331 has offset 1).

The definition of A127331 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1949 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A127331.P7890648957461590311

`∩[A023222(n+1), A153135(n+1)]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A127331

/-- `∩[A023222(n+1), A153135(n+1)]` -/
def P7890648957461590311.Spec : Prop :=
  ∀ n, (P7890648957461590311.a n : ℤ) = A127331 (n + 1)

theorem P7890648957461590311.correct : P7890648957461590311.Spec := by
  intro n
  simp only [A127331, Nat.add_sub_cancel]

end A127331

/-! ## A127331.P15961722492928688504

`record[A020639(A087697(n+2)/6)]`
-/

namespace A127331.P15961722492928688504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (SequenceMachineLib.roundAway ((A087697 (n + 2) : ℚ) / 6)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A127331.P15961722492928688504

namespace A127331

/-- `record[A020639(A087697(n+2)/6)]` -/
def P15961722492928688504.Spec : Prop :=
  ∀ n, P15961722492928688504.a n = A127331 (n + 1)

end A127331

/-! ## A127331.P8104063142101205123

`∩[A023222(n+1), A153134(n+1)]`
-/

namespace A127331.P8104063142101205123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023222 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153134 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A127331.P8104063142101205123

namespace A127331

/-- `∩[A023222(n+1), A153134(n+1)]` -/
def P8104063142101205123.Spec : Prop :=
  ∀ n, (P8104063142101205123.a n : ℤ) = A127331 (n + 1)

end A127331

/-! ## A127331.P4497828045122861862

`∩[A153135(n+1), A153218(n+1)]`
-/

namespace A127331.P4497828045122861862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153135 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153218 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A127331.P4497828045122861862

namespace A127331

/-- `∩[A153135(n+1), A153218(n+1)]` -/
def P4497828045122861862.Spec : Prop :=
  ∀ n, (P4497828045122861862.a n : ℤ) = A127331 (n + 1)

end A127331

/-! ## A127331.P17810497413243805679

`record[A014963(A087697(n+2)/6)]`
-/

namespace A127331.P17810497413243805679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (SequenceMachineLib.roundAway ((A087697 (n + 2) : ℚ) / 6)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A127331.P17810497413243805679

namespace A127331

/-- `record[A014963(A087697(n+2)/6)]` -/
def P17810497413243805679.Spec : Prop :=
  ∀ n, P17810497413243805679.a n = A127331 (n + 1)

end A127331

/-! ## A127331.P2783830958240842894

`p?[A255591(A087697(n+1))]`
-/

namespace A127331.P2783830958240842894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255591 (A087697 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A127331.P2783830958240842894

namespace A127331

/-- `p?[A255591(A087697(n+1))]` -/
def P2783830958240842894.Spec : Prop :=
  ∀ n, P2783830958240842894.a n = A127331 (n + 1)

end A127331

/-! ## A127331.P10119460015487315700

`p?[A255591(A153417(n+1)+7)]`
-/

namespace A127331.P10119460015487315700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255591 (A153417 (n + 1) + 7).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A127331.P10119460015487315700

namespace A127331

/-- `p?[A255591(A153417(n+1)+7)]` -/
def P10119460015487315700.Spec : Prop :=
  ∀ n, P10119460015487315700.a n = A127331 (n + 1)

end A127331

/-!
# A127332: A126988 * A002321.

The programs for A127332, the canonical program `A127332.P16514336127862808940` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A127332 has offset 1).

The definition of A127332 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A127332.P16514336127862808940

`∑{d}[n+1, #*A002321((n+1)/#)]`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A127332

/-- `∑{d}[n+1, #*A002321((n+1)/#)]` -/
def P16514336127862808940.Spec : Prop :=
  ∀ n, P16514336127862808940.a n = A127332 (n + 1)

theorem P16514336127862808940.correct : P16514336127862808940.Spec := by
  intro n
  simp only [A127332, Nat.add_sub_cancel]

end A127332

/-!
# A127333: Numbers that are the sum of 6 consecutive primes.

The programs for A127333, the canonical program `A127333.P6306977747944234696` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A127333 has offset 1).

The definition of A127333 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A127333.P3059084014079478681

`A007504(n+6)-A007504(n)`
-/

namespace A127333.P3059084014079478681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (n + 6) - A007504 n

end

end A127333.P3059084014079478681

namespace A127333

/-- `A007504(n+6)-A007504(n)` -/
def P3059084014079478681.Spec : Prop :=
  ∀ n, P3059084014079478681.a n = A127333 (n + 1)

end A127333

/-! ## A127333.P6306977747944234696

`A034964(n+2)+A000040(n+1)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A127333

/-- `A034964(n+2)+A000040(n+1)` -/
def P6306977747944234696.Spec : Prop :=
  ∀ n, P6306977747944234696.a n = A127333 (n + 1)

theorem P6306977747944234696.correct : P6306977747944234696.Spec := by
  intro n
  simp only [A127333, Nat.add_sub_cancel]

end A127333

/-! ## A127333.P10728158576455927231

`A034964(n+2)+A008578(n+2)`
-/

namespace A127333.P10728158576455927231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034964 (n + 2) + A008578 (n + 2)

end

end A127333.P10728158576455927231

namespace A127333

/-- `A034964(n+2)+A008578(n+2)` -/
def P10728158576455927231.Spec : Prop :=
  ∀ n, P10728158576455927231.a n = A127333 (n + 1)

end A127333

/-! ## A127333.P6796200657380491317

`A127334(n+1)-A157996(n+2)`
-/

namespace A127333.P6796200657380491317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127334 (n + 1) - A157996 (n + 2)

end

end A127333.P6796200657380491317

namespace A127333

/-- `A127334(n+1)-A157996(n+2)` -/
def P6796200657380491317.Spec : Prop :=
  ∀ n, P6796200657380491317.a n = A127333 (n + 1)

end A127333

/-! ## A127333.P4377183964852676348

`A034964(n+2)+A040976(n+1)+2`
-/

namespace A127333.P4377183964852676348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034964 (n + 2) + (A040976 (n + 1) + 2)

end

end A127333.P4377183964852676348

namespace A127333

/-- `A034964(n+2)+A040976(n+1)+2` -/
def P4377183964852676348.Spec : Prop :=
  ∀ n, P4377183964852676348.a n = A127333 (n + 1)

theorem P4377183964852676348.correct : P4377183964852676348.Spec := by
  intro n
  simp only [A127333, Nat.add_sub_cancel, A127333.P4377183964852676348.a, A127333.P6306977747944234696.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A034964, A034964.P11682848730202211862.a, A040976, A040976.P11599754272797435513.a, A131019, A131019.P15986658586892712231.f1, A131019.P15986658586892712231.a, A031166, A031166.P2833534787462873208.a, A031131, A031131.P2453725465626413076.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A127333

/-! ## A127333.P14424380901617413307

`A034961(n+1)+A034964(n+2)-A001043(n+2)`
-/

namespace A127333.P14424380901617413307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034961 (n + 1) + (A034964 (n + 2) - A001043 (n + 2))

end

end A127333.P14424380901617413307

namespace A127333

/-- `A034961(n+1)+A034964(n+2)-A001043(n+2)` -/
def P14424380901617413307.Spec : Prop :=
  ∀ n, P14424380901617413307.a n = A127333 (n + 1)

theorem P14424380901617413307.correct : P14424380901617413307.Spec := by
  intro n
  simp only [A127333, Nat.add_sub_cancel, A127333.P14424380901617413307.a, A127333.P6306977747944234696.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001043, A001043.P18269783162673735460.a, A034961, A034961.P9480249767911558173.a, A034964, A034964.P11682848730202211862.a, A131019, A131019.P15986658586892712231.f1, A131019.P15986658586892712231.a, A031166, A031166.P2833534787462873208.a, A031131, A031131.P2453725465626413076.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A127333

/-! ## A127333.P4469069848324466958

`A034963(n+1)+A034964(n+2)-A034961(n+2)`
-/

namespace A127333.P4469069848324466958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034963 (n + 1) + (A034964 (n + 2) - A034961 (n + 2))

end

end A127333.P4469069848324466958

namespace A127333

/-- `A034963(n+1)+A034964(n+2)-A034961(n+2)` -/
def P4469069848324466958.Spec : Prop :=
  ∀ n, P4469069848324466958.a n = A127333 (n + 1)

theorem P4469069848324466958.correct : P4469069848324466958.Spec := by
  intro n
  simp only [A127333, Nat.add_sub_cancel, A127333.P4469069848324466958.a, A127333.P6306977747944234696.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A034961, A034961.P9480249767911558173.a, A034963, A034963.P11708242366348853171.a, A034964, A034964.P11682848730202211862.a, A001043, A001043.P18269783162673735460.a, A131019, A131019.P15986658586892712231.f1, A131019.P15986658586892712231.a, A031166, A031166.P2833534787462873208.a, A031131, A031131.P2453725465626413076.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A127333

/-! ## A127333.P916746323005842852

`A034964(n+1)+A034964(n+2)-A034963(n+2)`
-/

namespace A127333.P916746323005842852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034964 (n + 1) + (A034964 (n + 2) - A034963 (n + 2))

end

end A127333.P916746323005842852

namespace A127333

/-- `A034964(n+1)+A034964(n+2)-A034963(n+2)` -/
def P916746323005842852.Spec : Prop :=
  ∀ n, P916746323005842852.a n = A127333 (n + 1)

end A127333

/-! ## A127333.P14221619145631201380

`A127335(n+1)+A034964(n+2)-A127334(n+2)`
-/

namespace A127333.P14221619145631201380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127335 (n + 1) + (A034964 (n + 2) - A127334 (n + 2))

end

end A127333.P14221619145631201380

namespace A127333

/-- `A127335(n+1)+A034964(n+2)-A127334(n+2)` -/
def P14221619145631201380.Spec : Prop :=
  ∀ n, P14221619145631201380.a n = A127333 (n + 1)

theorem P14221619145631201380.correct : P14221619145631201380.Spec := by
  intro n
  simp only [A127333, Nat.add_sub_cancel, A127333.P14221619145631201380.a, A127333.P6306977747944234696.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A034964, A034964.P11682848730202211862.a, A127334, A127334.P6228238072744643247.a, A127335, A127335.P9630767717206448625.a, A131019, A131019.P15986658586892712231.f1, A131019.P15986658586892712231.a, A031166, A031166.P2833534787462873208.a, A031131, A031131.P2453725465626413076.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A127333

/-! ## A127333.P3488920355079943166

`A127336(n+1)+A034964(n+2)-A127335(n+2)`
-/

namespace A127333.P3488920355079943166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127336 (n + 1) + (A034964 (n + 2) - A127335 (n + 2))

end

end A127333.P3488920355079943166

namespace A127333

/-- `A127336(n+1)+A034964(n+2)-A127335(n+2)` -/
def P3488920355079943166.Spec : Prop :=
  ∀ n, P3488920355079943166.a n = A127333 (n + 1)

end A127333

/-! ## A127333.P2861030344648036633

`A127337(n+1)+A034964(n+2)-A127336(n+2)`
-/

namespace A127333.P2861030344648036633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127337 (n + 1) + (A034964 (n + 2) - A127336 (n + 2))

end

end A127333.P2861030344648036633

namespace A127333

/-- `A127337(n+1)+A034964(n+2)-A127336(n+2)` -/
def P2861030344648036633.Spec : Prop :=
  ∀ n, P2861030344648036633.a n = A127333 (n + 1)

end A127333

/-! ## A127333.P7907709079472522614

`A034964(n+2)+A046301(n+1)/A006094(n+2)`
-/

namespace A127333.P7907709079472522614
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034964 (n + 2) : ℚ) + (A046301 (n + 1) : ℚ) / (A006094 (n + 2) : ℚ)

end

end A127333.P7907709079472522614

namespace A127333

/-- `A034964(n+2)+A046301(n+1)/A006094(n+2)` -/
def P7907709079472522614.Spec : Prop :=
  ∀ n, P7907709079472522614.a n = (A127333 (n + 1) : ℚ)

end A127333

/-! ## A127333.P16256218969688191764

`A034963(n+3)+A001043(n+1)`
-/

namespace A127333.P16256218969688191764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034963 (n + 3) + A001043 (n + 1)

end

end A127333.P16256218969688191764

namespace A127333

/-- `A034963(n+3)+A001043(n+1)` -/
def P16256218969688191764.Spec : Prop :=
  ∀ n, P16256218969688191764.a n = A127333 (n + 1)

end A127333

/-! ## A127333.P4410908644146946704

`A034963(n+3)+A011974(n+2)`
-/

namespace A127333.P4410908644146946704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034963 (n + 3) + A011974 (n + 2)

end

end A127333.P4410908644146946704

namespace A127333

/-- `A034963(n+3)+A011974(n+2)` -/
def P4410908644146946704.Spec : Prop :=
  ∀ n, P4410908644146946704.a n = A127333 (n + 1)

end A127333

/-! ## A127333.P13516484887204583593

`A034961(n+1)+A034961(n+4)`
-/

namespace A127333.P13516484887204583593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034961 (n + 1) + A034961 (n + 4)

end

end A127333.P13516484887204583593

namespace A127333

/-- `A034961(n+1)+A034961(n+4)` -/
def P13516484887204583593.Spec : Prop :=
  ∀ n, P13516484887204583593.a n = A127333 (n + 1)

end A127333

/-! ## A127333.P16328709765949117484

`A034964(n+2)+record[A006530(n+2)]`
-/

namespace A127333.P16328709765949117484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034964 (n + 2) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A127333.P16328709765949117484

namespace A127333

/-- `A034964(n+2)+record[A006530(n+2)]` -/
def P16328709765949117484.Spec : Prop :=
  ∀ n, P16328709765949117484.a n = A127333 (n + 1)

end A127333

/-! ## A127333.P14890483587543681265

`A034964(n+2)+p?[A004277(n)+1]`
-/

namespace A127333.P14890483587543681265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034964 (n + 2) + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A127333.P14890483587543681265

namespace A127333

/-- `A034964(n+2)+p?[A004277(n)+1]` -/
def P14890483587543681265.Spec : Prop :=
  ∀ n, P14890483587543681265.a n = A127333 (n + 1)

end A127333

/-! ## A127333.P12630455699595254665

`A034964(n+2)+p?[A064524(n)]`
-/

namespace A127333.P12630455699595254665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064524 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034964 (n + 2) + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A127333.P12630455699595254665

namespace A127333

/-- `A034964(n+2)+p?[A064524(n)]` -/
def P12630455699595254665.Spec : Prop :=
  ∀ n, P12630455699595254665.a n = A127333 (n + 1)

end A127333

/-! ## A127333.P2890882939160868852

`A034964(n+2)+record[A014963(n+2)]`
-/

namespace A127333.P2890882939160868852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034964 (n + 2) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A127333.P2890882939160868852

namespace A127333

/-- `A034964(n+2)+record[A014963(n+2)]` -/
def P2890882939160868852.Spec : Prop :=
  ∀ n, P2890882939160868852.a n = A127333 (n + 1)

end A127333

/-!
# A127334: Numbers that are the sum of 7 consecutive primes.

The programs for A127334, the canonical program `A127334.P6228238072744643247` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A127334 has offset 1).

The definition of A127334 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A127334.P538367046257857071

`A007504(n+7)-A007504(n)`
-/

namespace A127334.P538367046257857071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (n + 7) - A007504 n

end

end A127334.P538367046257857071

namespace A127334

/-- `A007504(n+7)-A007504(n)` -/
def P538367046257857071.Spec : Prop :=
  ∀ n, P538367046257857071.a n = A127334 (n + 1)

end A127334

/-! ## A127334.P6228238072744643247

`A127333(n+2)+A000040(n+1)`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A127334

/-- `A127333(n+2)+A000040(n+1)` -/
def P6228238072744643247.Spec : Prop :=
  ∀ n, P6228238072744643247.a n = A127334 (n + 1)

theorem P6228238072744643247.correct : P6228238072744643247.Spec := by
  intro n
  simp only [A127334, Nat.add_sub_cancel]

end A127334

/-! ## A127334.P337460012422244789

`A034961(n+1)+A127333(n+2)-A001043(n+2)`
-/

namespace A127334.P337460012422244789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034961 (n + 1) + (A127333 (n + 2) - A001043 (n + 2))

end

end A127334.P337460012422244789

namespace A127334

/-- `A034961(n+1)+A127333(n+2)-A001043(n+2)` -/
def P337460012422244789.Spec : Prop :=
  ∀ n, P337460012422244789.a n = A127334 (n + 1)

theorem P337460012422244789.correct : P337460012422244789.Spec := by
  intro n
  simp only [A127334, Nat.add_sub_cancel, A127334.P337460012422244789.a, A127334.P6228238072744643247.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001043, A001043.P18269783162673735460.a, A034961, A034961.P9480249767911558173.a, A127333, A127333.P6306977747944234696.a, A034964, A034964.P11682848730202211862.a, A131019, A131019.P15986658586892712231.f1, A131019.P15986658586892712231.a, A031166, A031166.P2833534787462873208.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A127334

/-! ## A127334.P12306163390166418171

`A034963(n+1)+A127333(n+2)-A034961(n+2)`
-/

namespace A127334.P12306163390166418171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034963 (n + 1) + (A127333 (n + 2) - A034961 (n + 2))

end

end A127334.P12306163390166418171

namespace A127334

/-- `A034963(n+1)+A127333(n+2)-A034961(n+2)` -/
def P12306163390166418171.Spec : Prop :=
  ∀ n, P12306163390166418171.a n = A127334 (n + 1)

theorem P12306163390166418171.correct : P12306163390166418171.Spec := by
  intro n
  simp only [A127334, Nat.add_sub_cancel, A127334.P12306163390166418171.a, A127334.P6228238072744643247.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A034961, A034961.P9480249767911558173.a, A034963, A034963.P11708242366348853171.a, A127333, A127333.P6306977747944234696.a, A001043, A001043.P18269783162673735460.a, A034964, A034964.P11682848730202211862.a, A131019, A131019.P15986658586892712231.f1, A131019.P15986658586892712231.a, A031166, A031166.P2833534787462873208.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A127334

/-! ## A127334.P9318485556048257305

`A034964(n+1)+A127333(n+2)-A034963(n+2)`
-/

namespace A127334.P9318485556048257305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034964 (n + 1) + (A127333 (n + 2) - A034963 (n + 2))

end

end A127334.P9318485556048257305

namespace A127334

/-- `A034964(n+1)+A127333(n+2)-A034963(n+2)` -/
def P9318485556048257305.Spec : Prop :=
  ∀ n, P9318485556048257305.a n = A127334 (n + 1)

end A127334

/-! ## A127334.P3352555404346522034

`A127333(n+1)+A127333(n+2)-A034964(n+2)`
-/

namespace A127334.P3352555404346522034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127333 (n + 1) + (A127333 (n + 2) - A034964 (n + 2))

end

end A127334.P3352555404346522034

namespace A127334

/-- `A127333(n+1)+A127333(n+2)-A034964(n+2)` -/
def P3352555404346522034.Spec : Prop :=
  ∀ n, P3352555404346522034.a n = A127334 (n + 1)

theorem P3352555404346522034.correct : P3352555404346522034.Spec := by
  intro n
  simp only [A127334, Nat.add_sub_cancel, A127334.P3352555404346522034.a, A127334.P6228238072744643247.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A034964, A034964.P11682848730202211862.a, A127333, A127333.P6306977747944234696.a, A131019, A131019.P15986658586892712231.f1, A131019.P15986658586892712231.a, A031166, A031166.P2833534787462873208.a, A031131, A031131.P2453725465626413076.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A127334

/-! ## A127334.P8355500074592561780

`A127336(n+1)+A127333(n+2)-A127335(n+2)`
-/

namespace A127334.P8355500074592561780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127336 (n + 1) + (A127333 (n + 2) - A127335 (n + 2))

end

end A127334.P8355500074592561780

namespace A127334

/-- `A127336(n+1)+A127333(n+2)-A127335(n+2)` -/
def P8355500074592561780.Spec : Prop :=
  ∀ n, P8355500074592561780.a n = A127334 (n + 1)

end A127334

/-! ## A127334.P2522242459387895293

`A127337(n+1)+A127333(n+2)-A127336(n+2)`
-/

namespace A127334.P2522242459387895293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127337 (n + 1) + (A127333 (n + 2) - A127336 (n + 2))

end

end A127334.P2522242459387895293

namespace A127334

/-- `A127337(n+1)+A127333(n+2)-A127336(n+2)` -/
def P2522242459387895293.Spec : Prop :=
  ∀ n, P2522242459387895293.a n = A127334 (n + 1)

end A127334

/-! ## A127334.P11969155269111878965

`A127338(n+1)+A127333(n+2)-A127337(n+2)`
-/

namespace A127334.P11969155269111878965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127338 (n + 1) + (A127333 (n + 2) - A127337 (n + 2))

end

end A127334.P11969155269111878965

namespace A127334

/-- `A127338(n+1)+A127333(n+2)-A127337(n+2)` -/
def P11969155269111878965.Spec : Prop :=
  ∀ n, P11969155269111878965.a n = A127334 (n + 1)

theorem P11969155269111878965.correct : P11969155269111878965.Spec := by
  intro n
  simp only [A127334, Nat.add_sub_cancel, A127334.P11969155269111878965.a, A127334.P6228238072744643247.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A127333, A127333.P6306977747944234696.a, A127337, A127337.P16134071994512097218.a, A127338, A127338.P4331655473129175239.a, A034964, A034964.P11682848730202211862.a, A127336, A127336.P17802364800562295121.a, A127335, A127335.P9630767717206448625.a, A131019, A131019.P15986658586892712231.f1, A131019.P15986658586892712231.a, A031166, A031166.P2833534787462873208.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A127334

/-! ## A127334.P17327745325030644566

`A034964(n+3)+A001043(n+1)`
-/

namespace A127334.P17327745325030644566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034964 (n + 3) + A001043 (n + 1)

end

end A127334.P17327745325030644566

namespace A127334

/-- `A034964(n+3)+A001043(n+1)` -/
def P17327745325030644566.Spec : Prop :=
  ∀ n, P17327745325030644566.a n = A127334 (n + 1)

theorem P17327745325030644566.correct : P17327745325030644566.Spec := by
  intro n
  simp only [A127334, Nat.add_sub_cancel, A127334.P17327745325030644566.a, A127334.P6228238072744643247.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001043, A001043.P18269783162673735460.a, A034964, A034964.P11682848730202211862.a, A127333, A127333.P6306977747944234696.a, A131019, A131019.P15986658586892712231.f1, A131019.P15986658586892712231.a, A031166, A031166.P2833534787462873208.a, A031131, A031131.P2453725465626413076.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A127334

/-! ## A127334.P3194586581660808253

`A034964(n+3)+A011974(n+2)`
-/

namespace A127334.P3194586581660808253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034964 (n + 3) + A011974 (n + 2)

end

end A127334.P3194586581660808253

namespace A127334

/-- `A034964(n+3)+A011974(n+2)` -/
def P3194586581660808253.Spec : Prop :=
  ∀ n, P3194586581660808253.a n = A127334 (n + 1)

end A127334

/-! ## A127334.P8803333366743534195

`A164653(n+3)+A034964(n+3)`
-/

namespace A127334.P8803333366743534195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164653 (n + 3) + A034964 (n + 3)

end

end A127334.P8803333366743534195

namespace A127334

/-- `A164653(n+3)+A034964(n+3)` -/
def P8803333366743534195.Spec : Prop :=
  ∀ n, P8803333366743534195.a n = A127334 (n + 1)

end A127334

/-! ## A127334.P11503545396581617865

`A034963(n+4)+A034961(n+1)`
-/

namespace A127334.P11503545396581617865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034963 (n + 4) + A034961 (n + 1)

end

end A127334.P11503545396581617865

namespace A127334

/-- `A034963(n+4)+A034961(n+1)` -/
def P11503545396581617865.Spec : Prop :=
  ∀ n, P11503545396581617865.a n = A127334 (n + 1)

end A127334

/-! ## A127334.P13325795908642792525

`A127335(n+1)-A000040(n+8)`
-/

namespace A127334.P13325795908642792525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127335 (n + 1) - A000040 (n + 8)

end

end A127334.P13325795908642792525

namespace A127334

/-- `A127335(n+1)-A000040(n+8)` -/
def P13325795908642792525.Spec : Prop :=
  ∀ n, P13325795908642792525.a n = A127334 (n + 1)

end A127334

/-! ## A127334.P2063343569157716061

`A127333(n+2)+A203836(n+1)/A247252(n+1)`
-/

namespace A127334.P2063343569157716061
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127333 (n + 2) : ℚ) + (A203836 (n + 1) : ℚ) / (A247252 (n + 1) : ℚ)

end

end A127334.P2063343569157716061

namespace A127334

/-- `A127333(n+2)+A203836(n+1)/A247252(n+1)` -/
def P2063343569157716061.Spec : Prop :=
  ∀ n, P2063343569157716061.a n = (A127334 (n + 1) : ℚ)

end A127334

/-!
# A127335: Numbers that are the sum of 8 successive primes.

The programs for A127335, the canonical program `A127335.P9630767717206448625` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A127335 has offset 1).

The definition of A127335 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A127335.P2720058750706471445

`A007504(n+8)-A007504(n)`
-/

namespace A127335.P2720058750706471445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (n + 8) - A007504 n

end

end A127335.P2720058750706471445

namespace A127335

/-- `A007504(n+8)-A007504(n)` -/
def P2720058750706471445.Spec : Prop :=
  ∀ n, P2720058750706471445.a n = A127335 (n + 1)

end A127335

/-! ## A127335.P9630767717206448625

`A127334(n+2)+A000040(n+1)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A127335

/-- `A127334(n+2)+A000040(n+1)` -/
def P9630767717206448625.Spec : Prop :=
  ∀ n, P9630767717206448625.a n = A127335 (n + 1)

theorem P9630767717206448625.correct : P9630767717206448625.Spec := by
  intro n
  simp only [A127335, Nat.add_sub_cancel]

end A127335

/-! ## A127335.P13443255425193725639

`A127334(n+2)+A008578(n+2)`
-/

namespace A127335.P13443255425193725639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127334 (n + 2) + A008578 (n + 2)

end

end A127335.P13443255425193725639

namespace A127335

/-- `A127334(n+2)+A008578(n+2)` -/
def P13443255425193725639.Spec : Prop :=
  ∀ n, P13443255425193725639.a n = A127335 (n + 1)

end A127335

/-! ## A127335.P3336088628751202549

`A034961(n+1)+A127334(n+2)-A001043(n+2)`
-/

namespace A127335.P3336088628751202549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034961 (n + 1) + (A127334 (n + 2) - A001043 (n + 2))

end

end A127335.P3336088628751202549

namespace A127335

/-- `A034961(n+1)+A127334(n+2)-A001043(n+2)` -/
def P3336088628751202549.Spec : Prop :=
  ∀ n, P3336088628751202549.a n = A127335 (n + 1)

theorem P3336088628751202549.correct : P3336088628751202549.Spec := by
  intro n
  simp only [A127335, Nat.add_sub_cancel, A127335.P3336088628751202549.a, A127335.P9630767717206448625.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001043, A001043.P18269783162673735460.a, A034961, A034961.P9480249767911558173.a, A127334, A127334.P6228238072744643247.a, A127333, A127333.P6306977747944234696.a, A034964, A034964.P11682848730202211862.a, A131019, A131019.P15986658586892712231.f1, A131019.P15986658586892712231.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A127335

/-! ## A127335.P3253904885505291632

`A034963(n+1)+A127334(n+2)-A034961(n+2)`
-/

namespace A127335.P3253904885505291632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034963 (n + 1) + (A127334 (n + 2) - A034961 (n + 2))

end

end A127335.P3253904885505291632

namespace A127335

/-- `A034963(n+1)+A127334(n+2)-A034961(n+2)` -/
def P3253904885505291632.Spec : Prop :=
  ∀ n, P3253904885505291632.a n = A127335 (n + 1)

theorem P3253904885505291632.correct : P3253904885505291632.Spec := by
  intro n
  simp only [A127335, Nat.add_sub_cancel, A127335.P3253904885505291632.a, A127335.P9630767717206448625.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A034961, A034961.P9480249767911558173.a, A034963, A034963.P11708242366348853171.a, A127334, A127334.P6228238072744643247.a, A001043, A001043.P18269783162673735460.a, A127333, A127333.P6306977747944234696.a, A034964, A034964.P11682848730202211862.a, A131019, A131019.P15986658586892712231.f1, A131019.P15986658586892712231.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A127335

/-! ## A127335.P12143757287188965809

`A034964(n+1)+A127334(n+2)-A034963(n+2)`
-/

namespace A127335.P12143757287188965809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034964 (n + 1) + (A127334 (n + 2) - A034963 (n + 2))

end

end A127335.P12143757287188965809

namespace A127335

/-- `A034964(n+1)+A127334(n+2)-A034963(n+2)` -/
def P12143757287188965809.Spec : Prop :=
  ∀ n, P12143757287188965809.a n = A127335 (n + 1)

end A127335

/-! ## A127335.P8330537926546091319

`A127333(n+1)+A127334(n+2)-A034964(n+2)`
-/

namespace A127335.P8330537926546091319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127333 (n + 1) + (A127334 (n + 2) - A034964 (n + 2))

end

end A127335.P8330537926546091319

namespace A127335

/-- `A127333(n+1)+A127334(n+2)-A034964(n+2)` -/
def P8330537926546091319.Spec : Prop :=
  ∀ n, P8330537926546091319.a n = A127335 (n + 1)

theorem P8330537926546091319.correct : P8330537926546091319.Spec := by
  intro n
  simp only [A127335, Nat.add_sub_cancel, A127335.P8330537926546091319.a, A127335.P9630767717206448625.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A034964, A034964.P11682848730202211862.a, A127333, A127333.P6306977747944234696.a, A127334, A127334.P6228238072744643247.a, A131019, A131019.P15986658586892712231.f1, A131019.P15986658586892712231.a, A031166, A031166.P2833534787462873208.a, A031131, A031131.P2453725465626413076.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A127335

/-! ## A127335.P655165326501928269

`A127334(n+1)+A127334(n+2)-A127333(n+2)`
-/

namespace A127335.P655165326501928269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127334 (n + 1) + (A127334 (n + 2) - A127333 (n + 2))

end

end A127335.P655165326501928269

namespace A127335

/-- `A127334(n+1)+A127334(n+2)-A127333(n+2)` -/
def P655165326501928269.Spec : Prop :=
  ∀ n, P655165326501928269.a n = A127335 (n + 1)

theorem P655165326501928269.correct : P655165326501928269.Spec := by
  intro n
  simp only [A127335, Nat.add_sub_cancel, A127335.P655165326501928269.a, A127335.P9630767717206448625.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A127333, A127333.P6306977747944234696.a, A127334, A127334.P6228238072744643247.a, A034964, A034964.P11682848730202211862.a, A131019, A131019.P15986658586892712231.f1, A131019.P15986658586892712231.a, A031166, A031166.P2833534787462873208.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A127335

/-! ## A127335.P15190872060281224906

`A127337(n+1)+A127334(n+2)-A127336(n+2)`
-/

namespace A127335.P15190872060281224906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127337 (n + 1) + (A127334 (n + 2) - A127336 (n + 2))

end

end A127335.P15190872060281224906

namespace A127335

/-- `A127337(n+1)+A127334(n+2)-A127336(n+2)` -/
def P15190872060281224906.Spec : Prop :=
  ∀ n, P15190872060281224906.a n = A127335 (n + 1)

end A127335

/-! ## A127335.P2112514193079322131

`A127338(n+1)+A127334(n+2)-A127337(n+2)`
-/

namespace A127335.P2112514193079322131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127338 (n + 1) + (A127334 (n + 2) - A127337 (n + 2))

end

end A127335.P2112514193079322131

namespace A127335

/-- `A127338(n+1)+A127334(n+2)-A127337(n+2)` -/
def P2112514193079322131.Spec : Prop :=
  ∀ n, P2112514193079322131.a n = A127335 (n + 1)

theorem P2112514193079322131.correct : P2112514193079322131.Spec := by
  intro n
  simp only [A127335, Nat.add_sub_cancel, A127335.P2112514193079322131.a, A127335.P9630767717206448625.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A127334, A127334.P6228238072744643247.a, A127337, A127337.P16134071994512097218.a, A127338, A127338.P4331655473129175239.a, A127333, A127333.P6306977747944234696.a, A127336, A127336.P17802364800562295121.a, A034964, A034964.P11682848730202211862.a, A131019, A131019.P15986658586892712231.f1, A131019.P15986658586892712231.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A127335

/-! ## A127335.P18112835349595620110

`A127339(n+1)+A127334(n+2)-A127338(n+2)`
-/

namespace A127335.P18112835349595620110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127339 (n + 1) + (A127334 (n + 2) - A127338 (n + 2))

end

end A127335.P18112835349595620110

namespace A127335

/-- `A127339(n+1)+A127334(n+2)-A127338(n+2)` -/
def P18112835349595620110.Spec : Prop :=
  ∀ n, P18112835349595620110.a n = A127335 (n + 1)

theorem P18112835349595620110.correct : P18112835349595620110.Spec := by
  intro n
  simp only [A127335, Nat.add_sub_cancel, A127335.P18112835349595620110.a, A127335.P9630767717206448625.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A127334, A127334.P6228238072744643247.a, A127338, A127338.P4331655473129175239.a, A127339, A127339.P14276880927291350081.a, A127333, A127333.P6306977747944234696.a, A127337, A127337.P16134071994512097218.a, A034964, A034964.P11682848730202211862.a, A127336, A127336.P17802364800562295121.a, A131019, A131019.P15986658586892712231.f1, A131019.P15986658586892712231.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A127335

/-! ## A127335.P784855600695448329

`A127333(n+3)+A001043(n+1)`
-/

namespace A127335.P784855600695448329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127333 (n + 3) + A001043 (n + 1)

end

end A127335.P784855600695448329

namespace A127335

/-- `A127333(n+3)+A001043(n+1)` -/
def P784855600695448329.Spec : Prop :=
  ∀ n, P784855600695448329.a n = A127335 (n + 1)

theorem P784855600695448329.correct : P784855600695448329.Spec := by
  intro n
  simp only [A127335, Nat.add_sub_cancel, A127335.P784855600695448329.a, A127335.P9630767717206448625.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001043, A001043.P18269783162673735460.a, A127333, A127333.P6306977747944234696.a, A127334, A127334.P6228238072744643247.a, A034964, A034964.P11682848730202211862.a, A131019, A131019.P15986658586892712231.f1, A131019.P15986658586892712231.a, A031166, A031166.P2833534787462873208.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A127335

/-! ## A127335.P16401855427200725320

`A127333(n+3)+A011974(n+2)`
-/

namespace A127335.P16401855427200725320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127333 (n + 3) + A011974 (n + 2)

end

end A127335.P16401855427200725320

namespace A127335

/-- `A127333(n+3)+A011974(n+2)` -/
def P16401855427200725320.Spec : Prop :=
  ∀ n, P16401855427200725320.a n = A127335 (n + 1)

end A127335

/-! ## A127335.P16092904855873073303

`A164653(n+3)+A127333(n+3)`
-/

namespace A127335.P16092904855873073303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164653 (n + 3) + A127333 (n + 3)

end

end A127335.P16092904855873073303

namespace A127335

/-- `A164653(n+3)+A127333(n+3)` -/
def P16092904855873073303.Spec : Prop :=
  ∀ n, P16092904855873073303.a n = A127335 (n + 1)

end A127335

/-! ## A127335.P7585856079646172251

`A034964(n+4)+A034961(n+1)`
-/

namespace A127335.P7585856079646172251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034964 (n + 4) + A034961 (n + 1)

end

end A127335.P7585856079646172251

namespace A127335

/-- `A034964(n+4)+A034961(n+1)` -/
def P7585856079646172251.Spec : Prop :=
  ∀ n, P7585856079646172251.a n = A127335 (n + 1)

theorem P7585856079646172251.correct : P7585856079646172251.Spec := by
  intro n
  simp only [A127335, Nat.add_sub_cancel, A127335.P7585856079646172251.a, A127335.P9630767717206448625.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A034961, A034961.P9480249767911558173.a, A034964, A034964.P11682848730202211862.a, A127334, A127334.P6228238072744643247.a, A001043, A001043.P18269783162673735460.a, A127333, A127333.P6306977747944234696.a, A131019, A131019.P15986658586892712231.f1, A131019.P15986658586892712231.a, A031166, A031166.P2833534787462873208.a, A031131, A031131.P2453725465626413076.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A127335

/-! ## A127335.P5059692033554157910

`A127334(n+2)+A203836(n+1)/A247252(n+1)`
-/

namespace A127335.P5059692033554157910
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127334 (n + 2) : ℚ) + (A203836 (n + 1) : ℚ) / (A247252 (n + 1) : ℚ)

end

end A127335.P5059692033554157910

namespace A127335

/-- `A127334(n+2)+A203836(n+1)/A247252(n+1)` -/
def P5059692033554157910.Spec : Prop :=
  ∀ n, P5059692033554157910.a n = (A127335 (n + 1) : ℚ)

end A127335

/-!
# A127336: Numbers that are the sum of 9 consecutive primes.

The programs for A127336, the canonical program `A127336.P17802364800562295121` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A127336 has offset 1).

The definition of A127336 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A127335, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A127336.P17802364800562295121

`A127335(n+1)+A000040(n+9)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A127336

/-- `A127335(n+1)+A000040(n+9)` -/
def P17802364800562295121.Spec : Prop :=
  ∀ n, P17802364800562295121.a n = A127336 (n + 1)

theorem P17802364800562295121.correct : P17802364800562295121.Spec := by
  intro n
  simp only [A127336, Nat.add_sub_cancel]

end A127336

/-! ## A127336.P6472044835148252036

`A007504(n+9)-A007504(n)`
-/

namespace A127336.P6472044835148252036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (n + 9) - A007504 n

end

end A127336.P6472044835148252036

namespace A127336

/-- `A007504(n+9)-A007504(n)` -/
def P6472044835148252036.Spec : Prop :=
  ∀ n, P6472044835148252036.a n = A127336 (n + 1)

end A127336

/-! ## A127336.P15226486644880123047

`A127335(n+2)+A008578(n+2)`
-/

namespace A127336.P15226486644880123047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127335 (n + 2) + A008578 (n + 2)

end

end A127336.P15226486644880123047

namespace A127336

/-- `A127335(n+2)+A008578(n+2)` -/
def P15226486644880123047.Spec : Prop :=
  ∀ n, P15226486644880123047.a n = A127336 (n + 1)

end A127336

/-! ## A127336.P17538102178384369617

`A034961(n+1)+A127335(n+2)-A001043(n+2)`
-/

namespace A127336.P17538102178384369617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034961 (n + 1) + (A127335 (n + 2) - A001043 (n + 2))

end

end A127336.P17538102178384369617

namespace A127336

/-- `A034961(n+1)+A127335(n+2)-A001043(n+2)` -/
def P17538102178384369617.Spec : Prop :=
  ∀ n, P17538102178384369617.a n = A127336 (n + 1)

end A127336

/-! ## A127336.P12615669021938330299

`A034963(n+1)+A127335(n+2)-A034961(n+2)`
-/

namespace A127336.P12615669021938330299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034963 (n + 1) + (A127335 (n + 2) - A034961 (n + 2))

end

end A127336.P12615669021938330299

namespace A127336

/-- `A034963(n+1)+A127335(n+2)-A034961(n+2)` -/
def P12615669021938330299.Spec : Prop :=
  ∀ n, P12615669021938330299.a n = A127336 (n + 1)

end A127336

/-! ## A127336.P1525219080234514908

`A034964(n+1)+A127335(n+2)-A034963(n+2)`
-/

namespace A127336.P1525219080234514908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034964 (n + 1) + (A127335 (n + 2) - A034963 (n + 2))

end

end A127336.P1525219080234514908

namespace A127336

/-- `A034964(n+1)+A127335(n+2)-A034963(n+2)` -/
def P1525219080234514908.Spec : Prop :=
  ∀ n, P1525219080234514908.a n = A127336 (n + 1)

end A127336

/-! ## A127336.P5882903867884177141

`A127333(n+1)+A127335(n+2)-A034964(n+2)`
-/

namespace A127336.P5882903867884177141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127333 (n + 1) + (A127335 (n + 2) - A034964 (n + 2))

end

end A127336.P5882903867884177141

namespace A127336

/-- `A127333(n+1)+A127335(n+2)-A034964(n+2)` -/
def P5882903867884177141.Spec : Prop :=
  ∀ n, P5882903867884177141.a n = A127336 (n + 1)

end A127336

/-! ## A127336.P2279441219980534765

`A127334(n+1)+A127335(n+2)-A127333(n+2)`
-/

namespace A127336.P2279441219980534765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127334 (n + 1) + (A127335 (n + 2) - A127333 (n + 2))

end

end A127336.P2279441219980534765

namespace A127336

/-- `A127334(n+1)+A127335(n+2)-A127333(n+2)` -/
def P2279441219980534765.Spec : Prop :=
  ∀ n, P2279441219980534765.a n = A127336 (n + 1)

end A127336

/-! ## A127336.P5882038636729282227

`A127335(n+1)+A127335(n+2)-A127334(n+2)`
-/

namespace A127336.P5882038636729282227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127335 (n + 1) + (A127335 (n + 2) - A127334 (n + 2))

end

end A127336.P5882038636729282227

namespace A127336

/-- `A127335(n+1)+A127335(n+2)-A127334(n+2)` -/
def P5882038636729282227.Spec : Prop :=
  ∀ n, P5882038636729282227.a n = A127336 (n + 1)

end A127336

/-! ## A127336.P9917556105680451928

`A127338(n+1)+A127335(n+2)-A127337(n+2)`
-/

namespace A127336.P9917556105680451928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127338 (n + 1) + (A127335 (n + 2) - A127337 (n + 2))

end

end A127336.P9917556105680451928

namespace A127336

/-- `A127338(n+1)+A127335(n+2)-A127337(n+2)` -/
def P9917556105680451928.Spec : Prop :=
  ∀ n, P9917556105680451928.a n = A127336 (n + 1)

end A127336

/-! ## A127336.P7780725039086660668

`A127334(n+3)+A001043(n+1)`
-/

namespace A127336.P7780725039086660668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127334 (n + 3) + A001043 (n + 1)

end

end A127336.P7780725039086660668

namespace A127336

/-- `A127334(n+3)+A001043(n+1)` -/
def P7780725039086660668.Spec : Prop :=
  ∀ n, P7780725039086660668.a n = A127336 (n + 1)

end A127336

/-! ## A127336.P8249744323581786341

`A127334(n+3)+A011974(n+2)`
-/

namespace A127336.P8249744323581786341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127334 (n + 3) + A011974 (n + 2)

end

end A127336.P8249744323581786341

namespace A127336

/-- `A127334(n+3)+A011974(n+2)` -/
def P8249744323581786341.Spec : Prop :=
  ∀ n, P8249744323581786341.a n = A127336 (n + 1)

end A127336

/-! ## A127336.P1453192662362051649

`A164653(n+3)+A127334(n+3)`
-/

namespace A127336.P1453192662362051649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164653 (n + 3) + A127334 (n + 3)

end

end A127336.P1453192662362051649

namespace A127336

/-- `A164653(n+3)+A127334(n+3)` -/
def P1453192662362051649.Spec : Prop :=
  ∀ n, P1453192662362051649.a n = A127336 (n + 1)

end A127336

/-! ## A127336.P8411669390559598689

`A127333(n+4)+A034961(n+1)`
-/

namespace A127336.P8411669390559598689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127333 (n + 4) + A034961 (n + 1)

end

end A127336.P8411669390559598689

namespace A127336

/-- `A127333(n+4)+A034961(n+1)` -/
def P8411669390559598689.Spec : Prop :=
  ∀ n, P8411669390559598689.a n = A127336 (n + 1)

end A127336

/-! ## A127336.P4485734990871791495

`A014284(n+10)-A014284(n+1)`
-/

namespace A127336.P4485734990871791495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014284 (n + 10) - A014284 (n + 1)

end

end A127336.P4485734990871791495

namespace A127336

/-- `A014284(n+10)-A014284(n+1)` -/
def P4485734990871791495.Spec : Prop :=
  ∀ n, P4485734990871791495.a n = A127336 (n + 1)

end A127336

/-! ## A127336.P5928375367563454041

`A036439(n+10)-A036439(n+1)`
-/

namespace A127336.P5928375367563454041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036439 (n + 10) - A036439 (n + 1)

end

end A127336.P5928375367563454041

namespace A127336

/-- `A036439(n+10)-A036439(n+1)` -/
def P5928375367563454041.Spec : Prop :=
  ∀ n, P5928375367563454041.a n = A127336 (n + 1)

end A127336

/-! ## A127336.P3358865209310977520

`A127335(n+2)+record[A020639(n+2)]`
-/

namespace A127336.P3358865209310977520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127335 (n + 2) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A127336.P3358865209310977520

namespace A127336

/-- `A127335(n+2)+record[A020639(n+2)]` -/
def P3358865209310977520.Spec : Prop :=
  ∀ n, P3358865209310977520.a n = A127336 (n + 1)

end A127336

/-! ## A127336.P13364152850570881159

`A127335(n+2)+p?[A056847(n)]`
-/

namespace A127336.P13364152850570881159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056847 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127335 (n + 2) + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A127336.P13364152850570881159

namespace A127336

/-- `A127335(n+2)+p?[A056847(n)]` -/
def P13364152850570881159.Spec : Prop :=
  ∀ n, P13364152850570881159.a n = A127336 (n + 1)

end A127336

/-! ## A127336.P13879119508083881202

`A127335(n+2)+A203836(n+1)/A247252(n+1)`
-/

namespace A127336.P13879119508083881202
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127335 (n + 2) : ℚ) + (A203836 (n + 1) : ℚ) / (A247252 (n + 1) : ℚ)

end

end A127336.P13879119508083881202

namespace A127336

/-- `A127335(n+2)+A203836(n+1)/A247252(n+1)` -/
def P13879119508083881202.Spec : Prop :=
  ∀ n, P13879119508083881202.a n = (A127336 (n + 1) : ℚ)

end A127336

/-!
# A127337: Numbers that are the sum of 10 consecutive primes.

The programs for A127337, the canonical program `A127337.P16134071994512097218` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A127337 has offset 1).

The definition of A127337 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A127336, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A127337.P16134071994512097218

`A127336(n+1)+A000040(n+10)`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A127337

/-- `A127336(n+1)+A000040(n+10)` -/
def P16134071994512097218.Spec : Prop :=
  ∀ n, P16134071994512097218.a n = A127337 (n + 1)

theorem P16134071994512097218.correct : P16134071994512097218.Spec := by
  intro n
  simp only [A127337, Nat.add_sub_cancel]

end A127337

/-! ## A127337.P13705471814312030825

`A007504(n+10)-A007504(n)`
-/

namespace A127337.P13705471814312030825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (n + 10) - A007504 n

end

end A127337.P13705471814312030825

namespace A127337

/-- `A007504(n+10)-A007504(n)` -/
def P13705471814312030825.Spec : Prop :=
  ∀ n, P13705471814312030825.a n = A127337 (n + 1)

end A127337

/-! ## A127337.P13418292282010235808

`A127336(n+2)+A008578(n+2)`
-/

namespace A127337.P13418292282010235808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127336 (n + 2) + A008578 (n + 2)

end

end A127337.P13418292282010235808

namespace A127337

/-- `A127336(n+2)+A008578(n+2)` -/
def P13418292282010235808.Spec : Prop :=
  ∀ n, P13418292282010235808.a n = A127337 (n + 1)

end A127337

/-! ## A127337.P11772664434580731325

`A034961(n+1)+A127336(n+2)-A001043(n+2)`
-/

namespace A127337.P11772664434580731325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034961 (n + 1) + (A127336 (n + 2) - A001043 (n + 2))

end

end A127337.P11772664434580731325

namespace A127337

/-- `A034961(n+1)+A127336(n+2)-A001043(n+2)` -/
def P11772664434580731325.Spec : Prop :=
  ∀ n, P11772664434580731325.a n = A127337 (n + 1)

end A127337

/-! ## A127337.P2551834396092548341

`A034963(n+1)+A127336(n+2)-A034961(n+2)`
-/

namespace A127337.P2551834396092548341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034963 (n + 1) + (A127336 (n + 2) - A034961 (n + 2))

end

end A127337.P2551834396092548341

namespace A127337

/-- `A034963(n+1)+A127336(n+2)-A034961(n+2)` -/
def P2551834396092548341.Spec : Prop :=
  ∀ n, P2551834396092548341.a n = A127337 (n + 1)

end A127337

/-! ## A127337.P14742078022849883622

`A034964(n+1)+A127336(n+2)-A034963(n+2)`
-/

namespace A127337.P14742078022849883622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034964 (n + 1) + (A127336 (n + 2) - A034963 (n + 2))

end

end A127337.P14742078022849883622

namespace A127337

/-- `A034964(n+1)+A127336(n+2)-A034963(n+2)` -/
def P14742078022849883622.Spec : Prop :=
  ∀ n, P14742078022849883622.a n = A127337 (n + 1)

end A127337

/-! ## A127337.P1148585072616061253

`A127333(n+1)+A127336(n+2)-A034964(n+2)`
-/

namespace A127337.P1148585072616061253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127333 (n + 1) + (A127336 (n + 2) - A034964 (n + 2))

end

end A127337.P1148585072616061253

namespace A127337

/-- `A127333(n+1)+A127336(n+2)-A034964(n+2)` -/
def P1148585072616061253.Spec : Prop :=
  ∀ n, P1148585072616061253.a n = A127337 (n + 1)

end A127337

/-! ## A127337.P6712483980674677715

`A127334(n+1)+A127336(n+2)-A127333(n+2)`
-/

namespace A127337.P6712483980674677715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127334 (n + 1) + (A127336 (n + 2) - A127333 (n + 2))

end

end A127337.P6712483980674677715

namespace A127337

/-- `A127334(n+1)+A127336(n+2)-A127333(n+2)` -/
def P6712483980674677715.Spec : Prop :=
  ∀ n, P6712483980674677715.a n = A127337 (n + 1)

end A127337

/-! ## A127337.P16132013193675313801

`A127335(n+1)+A127336(n+2)-A127334(n+2)`
-/

namespace A127337.P16132013193675313801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127335 (n + 1) + (A127336 (n + 2) - A127334 (n + 2))

end

end A127337.P16132013193675313801

namespace A127337

/-- `A127335(n+1)+A127336(n+2)-A127334(n+2)` -/
def P16132013193675313801.Spec : Prop :=
  ∀ n, P16132013193675313801.a n = A127337 (n + 1)

end A127337

/-! ## A127337.P10391189754888470917

`A127336(n+1)+A127336(n+2)-A127335(n+2)`
-/

namespace A127337.P10391189754888470917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127336 (n + 1) + (A127336 (n + 2) - A127335 (n + 2))

end

end A127337.P10391189754888470917

namespace A127337

/-- `A127336(n+1)+A127336(n+2)-A127335(n+2)` -/
def P10391189754888470917.Spec : Prop :=
  ∀ n, P10391189754888470917.a n = A127337 (n + 1)

theorem P10391189754888470917.correct : P10391189754888470917.Spec := by
  intro n
  simp only [A127337, Nat.add_sub_cancel, A127337.P10391189754888470917.a, A127337.P16134071994512097218.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A127335, A127335.P9630767717206448625.a, A127336, A127336.P17802364800562295121.a, A127334, A127334.P6228238072744643247.a, A127333, A127333.P6306977747944234696.a, A034964, A034964.P11682848730202211862.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A127337

/-! ## A127337.P12255070322860251365

`A127339(n+1)+A127336(n+2)-A127338(n+2)`
-/

namespace A127337.P12255070322860251365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127339 (n + 1) + (A127336 (n + 2) - A127338 (n + 2))

end

end A127337.P12255070322860251365

namespace A127337

/-- `A127339(n+1)+A127336(n+2)-A127338(n+2)` -/
def P12255070322860251365.Spec : Prop :=
  ∀ n, P12255070322860251365.a n = A127337 (n + 1)

end A127337

/-! ## A127337.P3233509877936993799

`A127336(n+2)+A046301(n+1)/A006094(n+2)`
-/

namespace A127337.P3233509877936993799
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127336 (n + 2) : ℚ) + (A046301 (n + 1) : ℚ) / (A006094 (n + 2) : ℚ)

end

end A127337.P3233509877936993799

namespace A127337

/-- `A127336(n+2)+A046301(n+1)/A006094(n+2)` -/
def P3233509877936993799.Spec : Prop :=
  ∀ n, P3233509877936993799.a n = (A127337 (n + 1) : ℚ)

end A127337

/-! ## A127337.P11409231243148715206

`A127335(n+3)+A001043(n+1)`
-/

namespace A127337.P11409231243148715206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127335 (n + 3) + A001043 (n + 1)

end

end A127337.P11409231243148715206

namespace A127337

/-- `A127335(n+3)+A001043(n+1)` -/
def P11409231243148715206.Spec : Prop :=
  ∀ n, P11409231243148715206.a n = A127337 (n + 1)

end A127337

/-! ## A127337.P13437114867144240400

`A127335(n+3)+A011974(n+2)`
-/

namespace A127337.P13437114867144240400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127335 (n + 3) + A011974 (n + 2)

end

end A127337.P13437114867144240400

namespace A127337

/-- `A127335(n+3)+A011974(n+2)` -/
def P13437114867144240400.Spec : Prop :=
  ∀ n, P13437114867144240400.a n = A127337 (n + 1)

end A127337

/-! ## A127337.P1675785914176450945

`A164653(n+3)+A127335(n+3)`
-/

namespace A127337.P1675785914176450945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164653 (n + 3) + A127335 (n + 3)

end

end A127337.P1675785914176450945

namespace A127337

/-- `A164653(n+3)+A127335(n+3)` -/
def P1675785914176450945.Spec : Prop :=
  ∀ n, P1675785914176450945.a n = A127337 (n + 1)

end A127337

/-! ## A127337.P2205222881699411063

`A127334(n+4)+A034961(n+1)`
-/

namespace A127337.P2205222881699411063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127334 (n + 4) + A034961 (n + 1)

end

end A127337.P2205222881699411063

namespace A127337

/-- `A127334(n+4)+A034961(n+1)` -/
def P2205222881699411063.Spec : Prop :=
  ∀ n, P2205222881699411063.a n = A127337 (n + 1)

end A127337

/-! ## A127337.P11574598866960808062

`A127336(n+2)+record[A006530(n+2)]`
-/

namespace A127337.P11574598866960808062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127336 (n + 2) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A127337.P11574598866960808062

namespace A127337

/-- `A127336(n+2)+record[A006530(n+2)]` -/
def P11574598866960808062.Spec : Prop :=
  ∀ n, P11574598866960808062.a n = A127337 (n + 1)

end A127337

/-! ## A127337.P2224129523346916678

`A127336(n+2)+record[A014963(n+2)]`
-/

namespace A127337.P2224129523346916678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127336 (n + 2) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A127337.P2224129523346916678

namespace A127337

/-- `A127336(n+2)+record[A014963(n+2)]` -/
def P2224129523346916678.Spec : Prop :=
  ∀ n, P2224129523346916678.a n = A127337 (n + 1)

end A127337

/-! ## A127337.P12339381150377176246

`A127336(n+2)+A203836(n+1)/A247252(n+1)`
-/

namespace A127337.P12339381150377176246
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127336 (n + 2) : ℚ) + (A203836 (n + 1) : ℚ) / (A247252 (n + 1) : ℚ)

end

end A127337.P12339381150377176246

namespace A127337

/-- `A127336(n+2)+A203836(n+1)/A247252(n+1)` -/
def P12339381150377176246.Spec : Prop :=
  ∀ n, P12339381150377176246.a n = (A127337 (n + 1) : ℚ)

end A127337

/-!
# A127338: Numbers that are the sum of 11 consecutive primes.

The programs for A127338, the canonical program `A127338.P4331655473129175239` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A127338 has offset 1).

The definition of A127338 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A127338.P10212388276847828871

`A007504(n+11)-A007504(n)`
-/

namespace A127338.P10212388276847828871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (n + 11) - A007504 n

end

end A127338.P10212388276847828871

namespace A127338

/-- `A007504(n+11)-A007504(n)` -/
def P10212388276847828871.Spec : Prop :=
  ∀ n, P10212388276847828871.a n = A127338 (n + 1)

end A127338

/-! ## A127338.P4331655473129175239

`A127337(n+2)+A000040(n+1)`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A127338

/-- `A127337(n+2)+A000040(n+1)` -/
def P4331655473129175239.Spec : Prop :=
  ∀ n, P4331655473129175239.a n = A127338 (n + 1)

theorem P4331655473129175239.correct : P4331655473129175239.Spec := by
  intro n
  simp only [A127338, Nat.add_sub_cancel]

end A127338

/-! ## A127338.P5711931314034868499

`A127337(n+2)+A008578(n+2)`
-/

namespace A127338.P5711931314034868499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127337 (n + 2) + A008578 (n + 2)

end

end A127338.P5711931314034868499

namespace A127338

/-- `A127337(n+2)+A008578(n+2)` -/
def P5711931314034868499.Spec : Prop :=
  ∀ n, P5711931314034868499.a n = A127338 (n + 1)

end A127338

/-! ## A127338.P3462815508356207442

`A034961(n+1)+A127337(n+2)-A001043(n+2)`
-/

namespace A127338.P3462815508356207442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034961 (n + 1) + (A127337 (n + 2) - A001043 (n + 2))

end

end A127338.P3462815508356207442

namespace A127338

/-- `A034961(n+1)+A127337(n+2)-A001043(n+2)` -/
def P3462815508356207442.Spec : Prop :=
  ∀ n, P3462815508356207442.a n = A127338 (n + 1)

theorem P3462815508356207442.correct : P3462815508356207442.Spec := by
  intro n
  simp only [A127338, Nat.add_sub_cancel, A127338.P3462815508356207442.a, A127338.P4331655473129175239.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001043, A001043.P18269783162673735460.a, A034961, A034961.P9480249767911558173.a, A127337, A127337.P16134071994512097218.a, A127336, A127336.P17802364800562295121.a, A127335, A127335.P9630767717206448625.a, A127334, A127334.P6228238072744643247.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A127338

/-! ## A127338.P5791435289651244027

`A034963(n+1)+A127337(n+2)-A034961(n+2)`
-/

namespace A127338.P5791435289651244027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034963 (n + 1) + (A127337 (n + 2) - A034961 (n + 2))

end

end A127338.P5791435289651244027

namespace A127338

/-- `A034963(n+1)+A127337(n+2)-A034961(n+2)` -/
def P5791435289651244027.Spec : Prop :=
  ∀ n, P5791435289651244027.a n = A127338 (n + 1)

theorem P5791435289651244027.correct : P5791435289651244027.Spec := by
  intro n
  simp only [A127338, Nat.add_sub_cancel, A127338.P5791435289651244027.a, A127338.P4331655473129175239.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A034961, A034961.P9480249767911558173.a, A034963, A034963.P11708242366348853171.a, A127337, A127337.P16134071994512097218.a, A001043, A001043.P18269783162673735460.a, A127336, A127336.P17802364800562295121.a, A127335, A127335.P9630767717206448625.a, A127334, A127334.P6228238072744643247.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A127338

/-! ## A127338.P6529152438503472241

`A034964(n+1)+A127337(n+2)-A034963(n+2)`
-/

namespace A127338.P6529152438503472241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034964 (n + 1) + (A127337 (n + 2) - A034963 (n + 2))

end

end A127338.P6529152438503472241

namespace A127338

/-- `A034964(n+1)+A127337(n+2)-A034963(n+2)` -/
def P6529152438503472241.Spec : Prop :=
  ∀ n, P6529152438503472241.a n = A127338 (n + 1)

end A127338

/-! ## A127338.P2004347488067497220

`A127333(n+1)+A127337(n+2)-A034964(n+2)`
-/

namespace A127338.P2004347488067497220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127333 (n + 1) + (A127337 (n + 2) - A034964 (n + 2))

end

end A127338.P2004347488067497220

namespace A127338

/-- `A127333(n+1)+A127337(n+2)-A034964(n+2)` -/
def P2004347488067497220.Spec : Prop :=
  ∀ n, P2004347488067497220.a n = A127338 (n + 1)

theorem P2004347488067497220.correct : P2004347488067497220.Spec := by
  intro n
  simp only [A127338, Nat.add_sub_cancel, A127338.P2004347488067497220.a, A127338.P4331655473129175239.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A034964, A034964.P11682848730202211862.a, A127333, A127333.P6306977747944234696.a, A127337, A127337.P16134071994512097218.a, A127336, A127336.P17802364800562295121.a, A131019, A131019.P15986658586892712231.f1, A131019.P15986658586892712231.a, A031166, A031166.P2833534787462873208.a, A127335, A127335.P9630767717206448625.a, A031131, A031131.P2453725465626413076.a, A127334, A127334.P6228238072744643247.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A127338

/-! ## A127338.P10718417420802279508

`A127334(n+1)+A127337(n+2)-A127333(n+2)`
-/

namespace A127338.P10718417420802279508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127334 (n + 1) + (A127337 (n + 2) - A127333 (n + 2))

end

end A127338.P10718417420802279508

namespace A127338

/-- `A127334(n+1)+A127337(n+2)-A127333(n+2)` -/
def P10718417420802279508.Spec : Prop :=
  ∀ n, P10718417420802279508.a n = A127338 (n + 1)

theorem P10718417420802279508.correct : P10718417420802279508.Spec := by
  intro n
  simp only [A127338, Nat.add_sub_cancel, A127338.P10718417420802279508.a, A127338.P4331655473129175239.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A127333, A127333.P6306977747944234696.a, A127334, A127334.P6228238072744643247.a, A127337, A127337.P16134071994512097218.a, A034964, A034964.P11682848730202211862.a, A127336, A127336.P17802364800562295121.a, A127335, A127335.P9630767717206448625.a, A131019, A131019.P15986658586892712231.f1, A131019.P15986658586892712231.a, A031166, A031166.P2833534787462873208.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A127338

/-! ## A127338.P263666962130148661

`A127335(n+1)+A127337(n+2)-A127334(n+2)`
-/

namespace A127338.P263666962130148661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127335 (n + 1) + (A127337 (n + 2) - A127334 (n + 2))

end

end A127338.P263666962130148661

namespace A127338

/-- `A127335(n+1)+A127337(n+2)-A127334(n+2)` -/
def P263666962130148661.Spec : Prop :=
  ∀ n, P263666962130148661.a n = A127338 (n + 1)

theorem P263666962130148661.correct : P263666962130148661.Spec := by
  intro n
  simp only [A127338, Nat.add_sub_cancel, A127338.P263666962130148661.a, A127338.P4331655473129175239.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A127334, A127334.P6228238072744643247.a, A127335, A127335.P9630767717206448625.a, A127337, A127337.P16134071994512097218.a, A127333, A127333.P6306977747944234696.a, A127336, A127336.P17802364800562295121.a, A034964, A034964.P11682848730202211862.a, A131019, A131019.P15986658586892712231.f1, A131019.P15986658586892712231.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A127338

/-! ## A127338.P3890011482171365316

`A127336(n+1)+A127337(n+2)-A127335(n+2)`
-/

namespace A127338.P3890011482171365316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127336 (n + 1) + (A127337 (n + 2) - A127335 (n + 2))

end

end A127338.P3890011482171365316

namespace A127338

/-- `A127336(n+1)+A127337(n+2)-A127335(n+2)` -/
def P3890011482171365316.Spec : Prop :=
  ∀ n, P3890011482171365316.a n = A127338 (n + 1)

end A127338

/-! ## A127338.P3164163828275943573

`A127337(n+1)+A127337(n+2)-A127336(n+2)`
-/

namespace A127338.P3164163828275943573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127337 (n + 1) + (A127337 (n + 2) - A127336 (n + 2))

end

end A127338.P3164163828275943573

namespace A127338

/-- `A127337(n+1)+A127337(n+2)-A127336(n+2)` -/
def P3164163828275943573.Spec : Prop :=
  ∀ n, P3164163828275943573.a n = A127338 (n + 1)

end A127338

/-! ## A127338.P14306997252897644797

`A127337(n+2)+A046301(n+1)/A006094(n+2)`
-/

namespace A127338.P14306997252897644797
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127337 (n + 2) : ℚ) + (A046301 (n + 1) : ℚ) / (A006094 (n + 2) : ℚ)

end

end A127338.P14306997252897644797

namespace A127338

/-- `A127337(n+2)+A046301(n+1)/A006094(n+2)` -/
def P14306997252897644797.Spec : Prop :=
  ∀ n, P14306997252897644797.a n = (A127338 (n + 1) : ℚ)

end A127338

/-! ## A127338.P1085125345284500639

`A127336(n+3)+A001043(n+1)`
-/

namespace A127338.P1085125345284500639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127336 (n + 3) + A001043 (n + 1)

end

end A127338.P1085125345284500639

namespace A127338

/-- `A127336(n+3)+A001043(n+1)` -/
def P1085125345284500639.Spec : Prop :=
  ∀ n, P1085125345284500639.a n = A127338 (n + 1)

end A127338

/-! ## A127338.P10882196083794473337

`A127336(n+3)+A011974(n+2)`
-/

namespace A127338.P10882196083794473337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127336 (n + 3) + A011974 (n + 2)

end

end A127338.P10882196083794473337

namespace A127338

/-- `A127336(n+3)+A011974(n+2)` -/
def P10882196083794473337.Spec : Prop :=
  ∀ n, P10882196083794473337.a n = A127338 (n + 1)

end A127338

/-! ## A127338.P1276322132403267103

`A127335(n+4)+A034961(n+1)`
-/

namespace A127338.P1276322132403267103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127335 (n + 4) + A034961 (n + 1)

end

end A127338.P1276322132403267103

namespace A127338

/-- `A127335(n+4)+A034961(n+1)` -/
def P1276322132403267103.Spec : Prop :=
  ∀ n, P1276322132403267103.a n = A127338 (n + 1)

end A127338

/-! ## A127338.P13658396858740108746

`A127337(n+2)+record[A014963(n+2)]`
-/

namespace A127338.P13658396858740108746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127337 (n + 2) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A127338.P13658396858740108746

namespace A127338

/-- `A127337(n+2)+record[A014963(n+2)]` -/
def P13658396858740108746.Spec : Prop :=
  ∀ n, P13658396858740108746.a n = A127338 (n + 1)

end A127338

/-! ## A127338.P13048155906578500874

`A127337(n+2)+A203836(n+1)/A247252(n+1)`
-/

namespace A127338.P13048155906578500874
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127337 (n + 2) : ℚ) + (A203836 (n + 1) : ℚ) / (A247252 (n + 1) : ℚ)

end

end A127338.P13048155906578500874

namespace A127338

/-- `A127337(n+2)+A203836(n+1)/A247252(n+1)` -/
def P13048155906578500874.Spec : Prop :=
  ∀ n, P13048155906578500874.a n = (A127338 (n + 1) : ℚ)

end A127338

/-!
# A127339: Numbers that are the sum of 12 consecutive primes.

The programs for A127339, the canonical program `A127339.P14276880927291350081` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A127339 has offset 1).

The definition of A127339 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A127339.P10630634630819023768

`A007504(n+12)-A007504(n)`
-/

namespace A127339.P10630634630819023768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (n + 12) - A007504 n

end

end A127339.P10630634630819023768

namespace A127339

/-- `A007504(n+12)-A007504(n)` -/
def P10630634630819023768.Spec : Prop :=
  ∀ n, P10630634630819023768.a n = A127339 (n + 1)

end A127339

/-! ## A127339.P14276880927291350081

`A127338(n+2)+A000040(n+1)`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A127339

/-- `A127338(n+2)+A000040(n+1)` -/
def P14276880927291350081.Spec : Prop :=
  ∀ n, P14276880927291350081.a n = A127339 (n + 1)

theorem P14276880927291350081.correct : P14276880927291350081.Spec := by
  intro n
  simp only [A127339, Nat.add_sub_cancel]

end A127339

/-! ## A127339.P14246866402324112699

`A127338(n+2)+A008578(n+2)`
-/

namespace A127339.P14246866402324112699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127338 (n + 2) + A008578 (n + 2)

end

end A127339.P14246866402324112699

namespace A127339

/-- `A127338(n+2)+A008578(n+2)` -/
def P14246866402324112699.Spec : Prop :=
  ∀ n, P14246866402324112699.a n = A127339 (n + 1)

end A127339

/-! ## A127339.P10796832508951520548

`A034961(n+1)+A127338(n+2)-A001043(n+2)`
-/

namespace A127339.P10796832508951520548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034961 (n + 1) + (A127338 (n + 2) - A001043 (n + 2))

end

end A127339.P10796832508951520548

namespace A127339

/-- `A034961(n+1)+A127338(n+2)-A001043(n+2)` -/
def P10796832508951520548.Spec : Prop :=
  ∀ n, P10796832508951520548.a n = A127339 (n + 1)

theorem P10796832508951520548.correct : P10796832508951520548.Spec := by
  intro n
  simp only [A127339, Nat.add_sub_cancel, A127339.P10796832508951520548.a, A127339.P14276880927291350081.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001043, A001043.P18269783162673735460.a, A034961, A034961.P9480249767911558173.a, A127338, A127338.P4331655473129175239.a, A127337, A127337.P16134071994512097218.a, A127336, A127336.P17802364800562295121.a, A127335, A127335.P9630767717206448625.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A127339

/-! ## A127339.P2701421109812610864

`A034963(n+1)+A127338(n+2)-A034961(n+2)`
-/

namespace A127339.P2701421109812610864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034963 (n + 1) + (A127338 (n + 2) - A034961 (n + 2))

end

end A127339.P2701421109812610864

namespace A127339

/-- `A034963(n+1)+A127338(n+2)-A034961(n+2)` -/
def P2701421109812610864.Spec : Prop :=
  ∀ n, P2701421109812610864.a n = A127339 (n + 1)

theorem P2701421109812610864.correct : P2701421109812610864.Spec := by
  intro n
  simp only [A127339, Nat.add_sub_cancel, A127339.P2701421109812610864.a, A127339.P14276880927291350081.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A034961, A034961.P9480249767911558173.a, A034963, A034963.P11708242366348853171.a, A127338, A127338.P4331655473129175239.a, A001043, A001043.P18269783162673735460.a, A127337, A127337.P16134071994512097218.a, A127336, A127336.P17802364800562295121.a, A127335, A127335.P9630767717206448625.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A127339

/-! ## A127339.P2552255499311490266

`A034964(n+1)+A127338(n+2)-A034963(n+2)`
-/

namespace A127339.P2552255499311490266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034964 (n + 1) + (A127338 (n + 2) - A034963 (n + 2))

end

end A127339.P2552255499311490266

namespace A127339

/-- `A034964(n+1)+A127338(n+2)-A034963(n+2)` -/
def P2552255499311490266.Spec : Prop :=
  ∀ n, P2552255499311490266.a n = A127339 (n + 1)

end A127339

/-! ## A127339.P5681649257178589700

`A127333(n+1)+A127338(n+2)-A034964(n+2)`
-/

namespace A127339.P5681649257178589700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127333 (n + 1) + (A127338 (n + 2) - A034964 (n + 2))

end

end A127339.P5681649257178589700

namespace A127339

/-- `A127333(n+1)+A127338(n+2)-A034964(n+2)` -/
def P5681649257178589700.Spec : Prop :=
  ∀ n, P5681649257178589700.a n = A127339 (n + 1)

theorem P5681649257178589700.correct : P5681649257178589700.Spec := by
  intro n
  simp only [A127339, Nat.add_sub_cancel, A127339.P5681649257178589700.a, A127339.P14276880927291350081.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A034964, A034964.P11682848730202211862.a, A127333, A127333.P6306977747944234696.a, A127338, A127338.P4331655473129175239.a, A127337, A127337.P16134071994512097218.a, A131019, A131019.P15986658586892712231.f1, A131019.P15986658586892712231.a, A031166, A031166.P2833534787462873208.a, A127336, A127336.P17802364800562295121.a, A031131, A031131.P2453725465626413076.a, A127335, A127335.P9630767717206448625.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A127339

/-! ## A127339.P9312901707409078796

`A127334(n+1)+A127338(n+2)-A127333(n+2)`
-/

namespace A127339.P9312901707409078796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127334 (n + 1) + (A127338 (n + 2) - A127333 (n + 2))

end

end A127339.P9312901707409078796

namespace A127339

/-- `A127334(n+1)+A127338(n+2)-A127333(n+2)` -/
def P9312901707409078796.Spec : Prop :=
  ∀ n, P9312901707409078796.a n = A127339 (n + 1)

theorem P9312901707409078796.correct : P9312901707409078796.Spec := by
  intro n
  simp only [A127339, Nat.add_sub_cancel, A127339.P9312901707409078796.a, A127339.P14276880927291350081.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A127333, A127333.P6306977747944234696.a, A127334, A127334.P6228238072744643247.a, A127338, A127338.P4331655473129175239.a, A034964, A034964.P11682848730202211862.a, A127337, A127337.P16134071994512097218.a, A127336, A127336.P17802364800562295121.a, A131019, A131019.P15986658586892712231.f1, A131019.P15986658586892712231.a, A031166, A031166.P2833534787462873208.a, A127335, A127335.P9630767717206448625.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A127339

/-! ## A127339.P14835711426357713165

`A127335(n+1)+A127338(n+2)-A127334(n+2)`
-/

namespace A127339.P14835711426357713165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127335 (n + 1) + (A127338 (n + 2) - A127334 (n + 2))

end

end A127339.P14835711426357713165

namespace A127339

/-- `A127335(n+1)+A127338(n+2)-A127334(n+2)` -/
def P14835711426357713165.Spec : Prop :=
  ∀ n, P14835711426357713165.a n = A127339 (n + 1)

theorem P14835711426357713165.correct : P14835711426357713165.Spec := by
  intro n
  simp only [A127339, Nat.add_sub_cancel, A127339.P14835711426357713165.a, A127339.P14276880927291350081.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A127334, A127334.P6228238072744643247.a, A127335, A127335.P9630767717206448625.a, A127338, A127338.P4331655473129175239.a, A127333, A127333.P6306977747944234696.a, A127337, A127337.P16134071994512097218.a, A034964, A034964.P11682848730202211862.a, A127336, A127336.P17802364800562295121.a, A131019, A131019.P15986658586892712231.f1, A131019.P15986658586892712231.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A127339

/-! ## A127339.P15840855505821649417

`A127336(n+1)+A127338(n+2)-A127335(n+2)`
-/

namespace A127339.P15840855505821649417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127336 (n + 1) + (A127338 (n + 2) - A127335 (n + 2))

end

end A127339.P15840855505821649417

namespace A127339

/-- `A127336(n+1)+A127338(n+2)-A127335(n+2)` -/
def P15840855505821649417.Spec : Prop :=
  ∀ n, P15840855505821649417.a n = A127339 (n + 1)

end A127339

/-! ## A127339.P12803312796394210196

`A127337(n+1)+A127338(n+2)-A127336(n+2)`
-/

namespace A127339.P12803312796394210196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127337 (n + 1) + (A127338 (n + 2) - A127336 (n + 2))

end

end A127339.P12803312796394210196

namespace A127339

/-- `A127337(n+1)+A127338(n+2)-A127336(n+2)` -/
def P12803312796394210196.Spec : Prop :=
  ∀ n, P12803312796394210196.a n = A127339 (n + 1)

end A127339

/-! ## A127339.P15915799158218612607

`A127338(n+1)+A127338(n+2)-A127337(n+2)`
-/

namespace A127339.P15915799158218612607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127338 (n + 1) + (A127338 (n + 2) - A127337 (n + 2))

end

end A127339.P15915799158218612607

namespace A127339

/-- `A127338(n+1)+A127338(n+2)-A127337(n+2)` -/
def P15915799158218612607.Spec : Prop :=
  ∀ n, P15915799158218612607.a n = A127339 (n + 1)

theorem P15915799158218612607.correct : P15915799158218612607.Spec := by
  intro n
  simp only [A127339, Nat.add_sub_cancel, A127339.P15915799158218612607.a, A127339.P14276880927291350081.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A127337, A127337.P16134071994512097218.a, A127338, A127338.P4331655473129175239.a, A127336, A127336.P17802364800562295121.a, A127335, A127335.P9630767717206448625.a, A127334, A127334.P6228238072744643247.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A127339

/-! ## A127339.P3886913436610612175

`A127337(n+3)+A001043(n+1)`
-/

namespace A127339.P3886913436610612175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127337 (n + 3) + A001043 (n + 1)

end

end A127339.P3886913436610612175

namespace A127339

/-- `A127337(n+3)+A001043(n+1)` -/
def P3886913436610612175.Spec : Prop :=
  ∀ n, P3886913436610612175.a n = A127339 (n + 1)

theorem P3886913436610612175.correct : P3886913436610612175.Spec := by
  intro n
  simp only [A127339, Nat.add_sub_cancel, A127339.P3886913436610612175.a, A127339.P14276880927291350081.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001043, A001043.P18269783162673735460.a, A127337, A127337.P16134071994512097218.a, A127338, A127338.P4331655473129175239.a, A127336, A127336.P17802364800562295121.a, A127335, A127335.P9630767717206448625.a, A127334, A127334.P6228238072744643247.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A127339

/-! ## A127339.P9991854095264693346

`A127337(n+3)+A011974(n+2)`
-/

namespace A127339.P9991854095264693346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127337 (n + 3) + A011974 (n + 2)

end

end A127339.P9991854095264693346

namespace A127339

/-- `A127337(n+3)+A011974(n+2)` -/
def P9991854095264693346.Spec : Prop :=
  ∀ n, P9991854095264693346.a n = A127339 (n + 1)

end A127339

/-! ## A127339.P2355669928462485148

`A127336(n+4)+A034961(n+1)`
-/

namespace A127339.P2355669928462485148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127336 (n + 4) + A034961 (n + 1)

end

end A127339.P2355669928462485148

namespace A127339

/-- `A127336(n+4)+A034961(n+1)` -/
def P2355669928462485148.Spec : Prop :=
  ∀ n, P2355669928462485148.a n = A127339 (n + 1)

end A127339

/-! ## A127339.P6695833849011966905

`A014284(n+13)-A014284(n+1)`
-/

namespace A127339.P6695833849011966905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014284 (n + 13) - A014284 (n + 1)

end

end A127339.P6695833849011966905

namespace A127339

/-- `A014284(n+13)-A014284(n+1)` -/
def P6695833849011966905.Spec : Prop :=
  ∀ n, P6695833849011966905.a n = A127339 (n + 1)

end A127339

/-! ## A127339.P18376061171755538352

`A127338(n+2)+record[A006530(n+2)]`
-/

namespace A127339.P18376061171755538352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127338 (n + 2) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A127339.P18376061171755538352

namespace A127339

/-- `A127338(n+2)+record[A006530(n+2)]` -/
def P18376061171755538352.Spec : Prop :=
  ∀ n, P18376061171755538352.a n = A127339 (n + 1)

end A127339

/-! ## A127339.P12174116097217599549

`A127338(n+2)+record[A020639(n+2)]`
-/

namespace A127339.P12174116097217599549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127338 (n + 2) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A127339.P12174116097217599549

namespace A127339

/-- `A127338(n+2)+record[A020639(n+2)]` -/
def P12174116097217599549.Spec : Prop :=
  ∀ n, P12174116097217599549.a n = A127339 (n + 1)

end A127339

/-! ## A127339.P18002328125678942185

`A127338(n+2)+record[A014963(n+2)]`
-/

namespace A127339.P18002328125678942185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127338 (n + 2) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A127339.P18002328125678942185

namespace A127339

/-- `A127338(n+2)+record[A014963(n+2)]` -/
def P18002328125678942185.Spec : Prop :=
  ∀ n, P18002328125678942185.a n = A127339 (n + 1)

end A127339

/-! ## A127339.P17611954218706122495

`A127338(n+2)+A203836(n+1)/A247252(n+1)`
-/

namespace A127339.P17611954218706122495
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127338 (n + 2) : ℚ) + (A203836 (n + 1) : ℚ) / (A247252 (n + 1) : ℚ)

end

end A127339.P17611954218706122495

namespace A127339

/-- `A127338(n+2)+A203836(n+1)/A247252(n+1)` -/
def P17611954218706122495.Spec : Prop :=
  ∀ n, P17611954218706122495.a n = (A127339 (n + 1) : ℚ)

end A127339

/-!
# A127340: Primes that are the sum of 11 consecutive primes.

The programs for A127340, the canonical program `A127340.P14444602876428206398` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A127340 has offset 1).

The definition of A127340 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1437 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A127340.P5932667112875264027

`A127338(∑{p}[A180950(n+1), A000720(#)])`
-/

namespace A127340.P5932667112875264027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180950 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127338 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, A000720 p).toNat

end

end A127340.P5932667112875264027

namespace A127340

/-- `A127338(∑{p}[A180950(n+1), A000720(#)])` -/
def P5932667112875264027.Spec : Prop :=
  ∀ n, P5932667112875264027.a n = A127340 (n + 1)

end A127340

/-! ## A127340.P14444602876428206398

`p?[A127338(n+1)]`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A127340

/-- `p?[A127338(n+1)]` -/
def P14444602876428206398.Spec : Prop :=
  ∀ n, P14444602876428206398.a n = A127340 (n + 1)

theorem P14444602876428206398.correct : P14444602876428206398.Spec := by
  intro n
  simp only [A127340, Nat.add_sub_cancel]

end A127340

/-! ## A127340.P7059787872418740052

`p?[A007504(n+11)-A007504(n)]`
-/

namespace A127340.P7059787872418740052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (n + 11) - A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A127340.P7059787872418740052

namespace A127340

/-- `p?[A007504(n+11)-A007504(n)]` -/
def P7059787872418740052.Spec : Prop :=
  ∀ n, P7059787872418740052.a n = A127340 (n + 1)

end A127340

/-! ## A127340.P11867826256602594202

`∩[A067377(n+1), A127338(n+1)]`
-/

namespace A127340.P11867826256602594202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067377 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127338 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A127340.P11867826256602594202

namespace A127340

/-- `∩[A067377(n+1), A127338(n+1)]` -/
def P11867826256602594202.Spec : Prop :=
  ∀ n, (P11867826256602594202.a n : ℤ) = A127340 (n + 1)

end A127340

/-! ## A127340.P7287147258703777059

`p?[A127337(n+2)+A000040(n+1)]`
-/

namespace A127340.P7287147258703777059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127337 (n + 2) + A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A127340.P7287147258703777059

namespace A127340

/-- `p?[A127337(n+2)+A000040(n+1)]` -/
def P7287147258703777059.Spec : Prop :=
  ∀ n, P7287147258703777059.a n = A127340 (n + 1)

end A127340

/-! ## A127340.P8369437359413183289

`p?[A127336(n+3)+A001043(n+1)]`
-/

namespace A127340.P8369437359413183289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127336 (n + 3) + A001043 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A127340.P8369437359413183289

namespace A127340

/-- `p?[A127336(n+3)+A001043(n+1)]` -/
def P8369437359413183289.Spec : Prop :=
  ∀ n, P8369437359413183289.a n = A127340 (n + 1)

end A127340

/-! ## A127340.P5614793178641588120

`p?[A034961(n+1)+A127337(n+2)-A001043(n+2)]`
-/

namespace A127340.P5614793178641588120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034961 (n + 1) + (A127337 (n + 2) - A001043 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A127340.P5614793178641588120

namespace A127340

/-- `p?[A034961(n+1)+A127337(n+2)-A001043(n+2)]` -/
def P5614793178641588120.Spec : Prop :=
  ∀ n, P5614793178641588120.a n = A127340 (n + 1)

end A127340

/-! ## A127340.P10049741677668256931

`∩[A065867(n+1), A127338(n+1)]`
-/

namespace A127340.P10049741677668256931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065867 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127338 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A127340.P10049741677668256931

namespace A127340

/-- `∩[A065867(n+1), A127338(n+1)]` -/
def P10049741677668256931.Spec : Prop :=
  ∀ n, (P10049741677668256931.a n : ℤ) = A127340 (n + 1)

end A127340

/-! ## A127340.P14070287242086395141

`∩[A073485(n+1), A127338(n+1)]`
-/

namespace A127340.P14070287242086395141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073485 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127338 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A127340.P14070287242086395141

namespace A127340

/-- `∩[A073485(n+1), A127338(n+1)]` -/
def P14070287242086395141.Spec : Prop :=
  ∀ n, (P14070287242086395141.a n : ℤ) = A127340 (n + 1)

end A127340

/-! ## A127340.P17498675027366363587

`∩[A000040(n+1), A127338(n+1)]`
-/

namespace A127340.P17498675027366363587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127338 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A127340.P17498675027366363587

namespace A127340

/-- `∩[A000040(n+1), A127338(n+1)]` -/
def P17498675027366363587.Spec : Prop :=
  ∀ n, (P17498675027366363587.a n : ℤ) = A127340 (n + 1)

end A127340

/-! ## A127340.P7379741487118232032

`∩[A004139(n+1), A127338(n+1)]`
-/

namespace A127340.P7379741487118232032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127338 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A127340.P7379741487118232032

namespace A127340

/-- `∩[A004139(n+1), A127338(n+1)]` -/
def P7379741487118232032.Spec : Prop :=
  ∀ n, (P7379741487118232032.a n : ℤ) = A127340 (n + 1)

end A127340

/-! ## A127340.P3170810505755598517

`∩[A006005(n+1), A127338(n+1)]`
-/

namespace A127340.P3170810505755598517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127338 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A127340.P3170810505755598517

namespace A127340

/-- `∩[A006005(n+1), A127338(n+1)]` -/
def P3170810505755598517.Spec : Prop :=
  ∀ n, (P3170810505755598517.a n : ℤ) = A127340 (n + 1)

end A127340

/-! ## A127340.P14998617854500910502

`∩[A038672(n+1), A127338(n+1)]`
-/

namespace A127340.P14998617854500910502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038672 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127338 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A127340.P14998617854500910502

namespace A127340

/-- `∩[A038672(n+1), A127338(n+1)]` -/
def P14998617854500910502.Spec : Prop :=
  ∀ n, (P14998617854500910502.a n : ℤ) = A127340 (n + 1)

end A127340

/-! ## A127340.P11360512877218113293

`∩[A045319(n+1), A127338(n+1)]`
-/

namespace A127340.P11360512877218113293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127338 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A127340.P11360512877218113293

namespace A127340

/-- `∩[A045319(n+1), A127338(n+1)]` -/
def P11360512877218113293.Spec : Prop :=
  ∀ n, (P11360512877218113293.a n : ℤ) = A127340 (n + 1)

end A127340

/-! ## A127340.P10814372310562034558

`∩[A045344(n+1), A127338(n+1)]`
-/

namespace A127340.P10814372310562034558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127338 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A127340.P10814372310562034558

namespace A127340

/-- `∩[A045344(n+1), A127338(n+1)]` -/
def P10814372310562034558.Spec : Prop :=
  ∀ n, (P10814372310562034558.a n : ℤ) = A127340 (n + 1)

end A127340

/-! ## A127340.P8870479876484154539

`∩[A065091(n+1), A127338(n+1)]`
-/

namespace A127340.P8870479876484154539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127338 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A127340.P8870479876484154539

namespace A127340

/-- `∩[A065091(n+1), A127338(n+1)]` -/
def P8870479876484154539.Spec : Prop :=
  ∀ n, (P8870479876484154539.a n : ℤ) = A127340 (n + 1)

end A127340

/-! ## A127340.P3624126781953857234

`∩[A065376(n+1), A127338(n+1)]`
-/

namespace A127340.P3624126781953857234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065376 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127338 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A127340.P3624126781953857234

namespace A127340

/-- `∩[A065376(n+1), A127338(n+1)]` -/
def P3624126781953857234.Spec : Prop :=
  ∀ n, (P3624126781953857234.a n : ℤ) = A127340 (n + 1)

end A127340

/-! ## A127340.P7303855181053545209

`∩[A065396(n+1), A127338(n+1)]`
-/

namespace A127340.P7303855181053545209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065396 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127338 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A127340.P7303855181053545209

namespace A127340

/-- `∩[A065396(n+1), A127338(n+1)]` -/
def P7303855181053545209.Spec : Prop :=
  ∀ n, (P7303855181053545209.a n : ℤ) = A127340 (n + 1)

end A127340

/-! ## A127340.P6240063284699011922

`∩[A071621(n+1), A127338(n+1)]`
-/

namespace A127340.P6240063284699011922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071621 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127338 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A127340.P6240063284699011922

namespace A127340

/-- `∩[A071621(n+1), A127338(n+1)]` -/
def P6240063284699011922.Spec : Prop :=
  ∀ n, (P6240063284699011922.a n : ℤ) = A127340 (n + 1)

end A127340

/-! ## A127340.P12693320016214612440

`∩[A078132(n+1), A127338(n+1)]`
-/

namespace A127340.P12693320016214612440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078132 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127338 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A127340.P12693320016214612440

namespace A127340

/-- `∩[A078132(n+1), A127338(n+1)]` -/
def P12693320016214612440.Spec : Prop :=
  ∀ n, (P12693320016214612440.a n : ℤ) = A127340 (n + 1)

end A127340

/-!
# A127341: Primes that can be written as the sum of 13 consecutive primes.

The programs for A127341, the canonical program `A127341.P14709455034491234769` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A127341 has offset 1).

The definition of A127341 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1274 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A127341.P10983584686902281608

`p?[A007504(n+13)-A007504(n)]`
-/

namespace A127341.P10983584686902281608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (n + 13) - A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A127341.P10983584686902281608

namespace A127341

/-- `p?[A007504(n+13)-A007504(n)]` -/
def P10983584686902281608.Spec : Prop :=
  ∀ n, P10983584686902281608.a n = A127341 (n + 1)

end A127341

/-! ## A127341.P10570174104154085961

`p?[A127338(n+3)+A001043(n+1)]`
-/

namespace A127341.P10570174104154085961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127338 (n + 3) + A001043 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A127341.P10570174104154085961

namespace A127341

/-- `p?[A127338(n+3)+A001043(n+1)]` -/
def P10570174104154085961.Spec : Prop :=
  ∀ n, P10570174104154085961.a n = A127341 (n + 1)

end A127341

/-! ## A127341.P3574447276128616784

`p?[A127338(n+3)+A011974(n+2)]`
-/

namespace A127341.P3574447276128616784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127338 (n + 3) + A011974 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A127341.P3574447276128616784

namespace A127341

/-- `p?[A127338(n+3)+A011974(n+2)]` -/
def P3574447276128616784.Spec : Prop :=
  ∀ n, P3574447276128616784.a n = A127341 (n + 1)

end A127341

/-! ## A127341.P5246978205152312973

`p?[A014284(n+14)-A014284(n+1)]`
-/

namespace A127341.P5246978205152312973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014284 (n + 14) - A014284 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A127341.P5246978205152312973

namespace A127341

/-- `p?[A014284(n+14)-A014284(n+1)]` -/
def P5246978205152312973.Spec : Prop :=
  ∀ n, P5246978205152312973.a n = A127341 (n + 1)

end A127341

/-! ## A127341.P14709455034491234769

`p?[A036439(n+14)-A036439(n+1)]`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A127341

/-- `p?[A036439(n+14)-A036439(n+1)]` -/
def P14709455034491234769.Spec : Prop :=
  ∀ n, P14709455034491234769.a n = A127341 (n + 1)

theorem P14709455034491234769.correct : P14709455034491234769.Spec := by
  intro n
  simp only [A127341, Nat.add_sub_cancel]

end A127341

/-! ## A127341.P4820237114486709386

`p?[A071148(n+14)-A071148(n+1)]`
-/

namespace A127341.P4820237114486709386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071148 (n + 14) - A071148 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A127341.P4820237114486709386

namespace A127341

/-- `p?[A071148(n+14)-A071148(n+1)]` -/
def P4820237114486709386.Spec : Prop :=
  ∀ n, P4820237114486709386.a n = A127341 (n + 1)

end A127341

/-! ## A127341.P6739695617027934036

`p?[A082548(n+14)-A082548(n+1)]`
-/

namespace A127341.P6739695617027934036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082548 (n + 14) - A082548 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A127341.P6739695617027934036

namespace A127341

/-- `p?[A082548(n+14)-A082548(n+1)]` -/
def P6739695617027934036.Spec : Prop :=
  ∀ n, P6739695617027934036.a n = A127341 (n + 1)

end A127341

/-! ## A127341.P13729072421174270895

`p?[A175965(n+14)-A175965(n+1)]`
-/

namespace A127341.P13729072421174270895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175965 (n + 14) - A175965 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A127341.P13729072421174270895

namespace A127341

/-- `p?[A175965(n+14)-A175965(n+1)]` -/
def P13729072421174270895.Spec : Prop :=
  ∀ n, P13729072421174270895.a n = A127341 (n + 1)

end A127341

/-! ## A127341.P4471989647341461101

`p?[A227547(n+14)-A227547(n+1)]`
-/

namespace A127341.P4471989647341461101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227547 (n + 14) - A227547 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A127341.P4471989647341461101

namespace A127341

/-- `p?[A227547(n+14)-A227547(n+1)]` -/
def P4471989647341461101.Spec : Prop :=
  ∀ n, P4471989647341461101.a n = A127341 (n + 1)

theorem P4471989647341461101.correct : P4471989647341461101.Spec := by
  intro n
  simp only [A127341, Nat.add_sub_cancel, A127341.P4471989647341461101.f1, A127341.P4471989647341461101.a, A127341.P14709455034491234769.f1, A127341.P14709455034491234769.a, A036439, A036439.P376659802180600074.a, A227547, A227547.P9561160085571280683.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A127341

/-!
# A127342: Product of 10 consecutive primes.

The programs for A127342, there is no canonical definition to state claims against.
-/

/-! ## A127342.P4467528606070889072

`A096334(A056000(n+7)-1)`
-/

namespace A127342.P4467528606070889072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096334 (A056000 (n + 7) - 1).toNat

end

end A127342.P4467528606070889072

/-! ## A127342.P4006726638086754250

`A000040(n+1)*A046327(n+2)`
-/

namespace A127342.P4006726638086754250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A046327 (n + 2)

end

end A127342.P4006726638086754250

/-! ## A127342.P2691729116705512971

`A006094(n+1)*A046326(n+3)`
-/

namespace A127342.P2691729116705512971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006094 (n + 1) * A046326 (n + 3)

end

end A127342.P2691729116705512971

/-! ## A127342.P1319512836177518565

`A008578(n+2)*A046327(n+2)`
-/

namespace A127342.P1319512836177518565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 2) * A046327 (n + 2)

end

end A127342.P1319512836177518565

/-! ## A127342.P12232249829639304504

`A046301(n+1)*A046325(n+4)`
-/

namespace A127342.P12232249829639304504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046301 (n + 1) * A046325 (n + 4)

end

end A127342.P12232249829639304504

/-!
# A127343: Product of 11 consecutive primes.

The programs for A127343, there is no canonical definition to state claims against.
-/

/-! ## A127343.P9726569156797896552

`A006094(n+1)*A046327(n+3)`
-/

namespace A127343.P9726569156797896552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006094 (n + 1) * A046327 (n + 3)

end

end A127343.P9726569156797896552

/-! ## A127343.P7328808933884397897

`A000040(n+1)*A127342(n+2)`
-/

namespace A127343.P7328808933884397897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A127342 (n + 2)

end

end A127343.P7328808933884397897

/-!
# A127345: a(n) = pq + pr + qr with p = prime(n), q = prime(n+1), and r = prime(n+2).

The programs for A127345, the canonical program `A127345.P18035437064499472931` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A127345 has offset 1).

The definition of A127345 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A127345.P18035437064499472931

`A357679(n+2)+A090076(n+1)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A127345

/-- `A357679(n+2)+A090076(n+1)` -/
def P18035437064499472931.Spec : Prop :=
  ∀ n, P18035437064499472931.a n = A127345 (n + 1)

theorem P18035437064499472931.correct : P18035437064499472931.Spec := by
  intro n
  simp only [A127345, Nat.add_sub_cancel]

end A127345

/-! ## A127345.P297817194945641994

`∪[A127346(n+1), A127347(n+1)]`
-/

namespace A127345.P297817194945641994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127346 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127347 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A127345.P297817194945641994

namespace A127345

/-- `∪[A127346(n+1), A127347(n+1)]` -/
def P297817194945641994.Spec : Prop :=
  ∀ n, (P297817194945641994.a n : ℤ) = A127345 (n + 1)

end A127345

/-! ## A127345.P4959607540566402037

`A006094(n+1)+A001043(n+1)*A215848(n+1)`
-/

namespace A127345.P4959607540566402037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006094 (n + 1) + A001043 (n + 1) * A215848 (n + 1)

end

end A127345.P4959607540566402037

namespace A127345

/-- `A006094(n+1)+A001043(n+1)*A215848(n+1)` -/
def P4959607540566402037.Spec : Prop :=
  ∀ n, P4959607540566402037.a n = A127345 (n + 1)

theorem P4959607540566402037.correct : P4959607540566402037.Spec := by
  intro n
  simp only [A127345, Nat.add_sub_cancel, A127345.P4959607540566402037.a, A127345.P18035437064499472931.a, A001043, A001043.P18269783162673735460.a, A006094, A006094.P10257567645245129766.a, A090076, A090076.P14041092475761084439.a, A215848, A215848.P17068717743202425727.a, A357679, A357679.P3047207656668672575.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A205955, A205955.P11019694915119694483.a, A096379, A096379.P11420595779051591420.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A127345

/-! ## A127345.P12830679327052786353

`A006094(n+1)+A090076(n+1)+A006094(n+2)`
-/

namespace A127345.P12830679327052786353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006094 (n + 1) + (A090076 (n + 1) + A006094 (n + 2))

end

end A127345.P12830679327052786353

namespace A127345

/-- `A006094(n+1)+A090076(n+1)+A006094(n+2)` -/
def P12830679327052786353.Spec : Prop :=
  ∀ n, P12830679327052786353.a n = A127345 (n + 1)

theorem P12830679327052786353.correct : P12830679327052786353.Spec := by
  intro n
  simp only [A127345, Nat.add_sub_cancel, A127345.P12830679327052786353.a, A127345.P18035437064499472931.a, A006094, A006094.P10257567645245129766.a, A090076, A090076.P14041092475761084439.a, A357679, A357679.P3047207656668672575.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A205955, A205955.P11019694915119694483.a, A096379, A096379.P11420595779051591420.a, A001043, A001043.P18269783162673735460.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A127345

/-! ## A127345.P16413334645748622932

`A006094(n+2)+A000040(n+1)*A001043(n+2)`
-/

namespace A127345.P16413334645748622932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006094 (n + 2) + A000040 (n + 1) * A001043 (n + 2)

end

end A127345.P16413334645748622932

namespace A127345

/-- `A006094(n+2)+A000040(n+1)*A001043(n+2)` -/
def P16413334645748622932.Spec : Prop :=
  ∀ n, P16413334645748622932.a n = A127345 (n + 1)

theorem P16413334645748622932.correct : P16413334645748622932.Spec := by
  intro n
  simp only [A127345, Nat.add_sub_cancel, A127345.P16413334645748622932.a, A127345.P18035437064499472931.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001043, A001043.P18269783162673735460.a, A006094, A006094.P10257567645245129766.a, A090076, A090076.P14041092475761084439.a, A357679, A357679.P3047207656668672575.a, A205955, A205955.P11019694915119694483.a, A096379, A096379.P11420595779051591420.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A127345

/-! ## A127345.P12112609019398899991

`A001043(n+1)*A001043(n+2)-A001248(n+2)`
-/

namespace A127345.P12112609019398899991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001043 (n + 1) * A001043 (n + 2) - A001248 (n + 2)

end

end A127345.P12112609019398899991

namespace A127345

/-- `A001043(n+1)*A001043(n+2)-A001248(n+2)` -/
def P12112609019398899991.Spec : Prop :=
  ∀ n, P12112609019398899991.a n = A127345 (n + 1)

theorem P12112609019398899991.correct : P12112609019398899991.Spec := by
  intro n
  simp only [A127345, Nat.add_sub_cancel, A127345.P12112609019398899991.a, A127345.P18035437064499472931.a, A001043, A001043.P18269783162673735460.a, A001248, A001248.P16278241061688229202.a, A090076, A090076.P14041092475761084439.a, A357679, A357679.P3047207656668672575.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A006094, A006094.P10257567645245129766.a, A205955, A205955.P11019694915119694483.a, A096379, A096379.P11420595779051591420.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A127345

/-! ## A127345.P14264341751945714451

`A333747(2*(n+1))+A006094(n+1)+A006094(n+2)`
-/

namespace A127345.P14264341751945714451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333747 (2 * (n + 1)) + (A006094 (n + 1) + A006094 (n + 2))

end

end A127345.P14264341751945714451

namespace A127345

/-- `A333747(2*(n+1))+A006094(n+1)+A006094(n+2)` -/
def P14264341751945714451.Spec : Prop :=
  ∀ n, P14264341751945714451.a n = A127345 (n + 1)

end A127345

/-!
# A127346: Primes in A127345.

The programs for A127346, there is no canonical definition to state claims against.
-/

/-! ## A127346.P231220766437133219

`A127345(A204231(n+1))`
-/

namespace A127346.P231220766437133219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127345 (A204231 (n + 1)).toNat

end

end A127346.P231220766437133219

/-! ## A127346.P8892531712977018325

`p?[A127345(n+1)]`
-/

namespace A127346.P8892531712977018325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127345 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A127346.P8892531712977018325

/-! ## A127346.P18414075701897357666

`p?[record[A331260(n+1)]]`
-/

namespace A127346.P18414075701897357666
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331260 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A127346.P18414075701897357666

/-! ## A127346.P3553059343221108328

`p?[record[A127345(A133310(n))]]`
-/

namespace A127346.P3553059343221108328
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127345 (A133310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A127346.P3553059343221108328

/-! ## A127346.P17859514566810288458

`p?[record[A127345(A203814(n))]]`
-/

namespace A127346.P17859514566810288458
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127345 (A203814 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A127346.P17859514566810288458

/-!
# A127347: Composites in A127345.

The programs for A127347, there is no canonical definition to state claims against.
-/

/-! ## A127347.P8115606529753137567

`filter[A127345(n+1), A354108(#)]`
-/

namespace A127347.P8115606529753137567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127345 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354108 (f1 j).toNat = 1) n)

end

end A127347.P8115606529753137567

/-! ## A127347.P693694014066106076

`filter[A127345(n+1), A373979(#)]`
-/

namespace A127347.P693694014066106076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127345 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373979 (f1 j).toNat = 1) n)

end

end A127347.P693694014066106076

/-! ## A127347.P7939933993548788991

`filter[A127345(n+1), A005171(#)]`
-/

namespace A127347.P7939933993548788991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127345 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A127347.P7939933993548788991

/-! ## A127347.P8607572261998681025

`filter[A127345(n+1), A066247(#)]`
-/

namespace A127347.P8607572261998681025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127345 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A127347.P8607572261998681025

/-! ## A127347.P6384772387785827233

`filter[A127345(n+1), A202238(#)]`
-/

namespace A127347.P6384772387785827233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127345 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A202238 (f1 j).toNat = 1) n)

end

end A127347.P6384772387785827233

/-!
# A127348: Coefficient of x^2 in the polynomial (x-p(n))*(x-p(n+1))*(x-p(n+2))*(x-p(n+3)), where p(k) is the k-th prime.

The programs for A127348, the canonical program `A127348.P2677906627502020316` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A127348 has offset 1).

The definition of A127348 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A127348.P2677906627502020316

`A127345(n+2)+A000040(n+1)*A034961(n+2)`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A127348

/-- `A127345(n+2)+A000040(n+1)*A034961(n+2)` -/
def P2677906627502020316.Spec : Prop :=
  ∀ n, P2677906627502020316.a n = A127348 (n + 1)

theorem P2677906627502020316.correct : P2677906627502020316.Spec := by
  intro n
  simp only [A127348, Nat.add_sub_cancel]

end A127348

/-!
# A127349: a(n) = Sum_{i=n..n+1} Sum_{j=i+1..n+2} Sum_{k=j+1..n+3} prime(i)*prime(j)*prime(k).

The programs for A127349, the canonical program `A127349.P7412496947134571041` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A127349 has offset 1).

The definition of A127349 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A127349.P7412496947134571041

`A046301(n+2)+A000040(n+1)*A127345(n+2)`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A127349

/-- `A046301(n+2)+A000040(n+1)*A127345(n+2)` -/
def P7412496947134571041.Spec : Prop :=
  ∀ n, P7412496947134571041.a n = A127349 (n + 1)

theorem P7412496947134571041.correct : P7412496947134571041.Spec := by
  intro n
  simp only [A127349, Nat.add_sub_cancel]

end A127349

/-! ## A127349.P2041308114020938120

`A342921(15*2^n)`
-/

namespace A127349.P2041308114020938120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342921 (15 * 2 ^ n)

end

end A127349.P2041308114020938120

namespace A127349

/-- `A342921(15*2^n)` -/
def P2041308114020938120.Spec : Prop :=
  ∀ n, P2041308114020938120.a n = A127349 (n + 1)

end A127349

/-! ## A127349.P14788965999769411402

`∑{p}[A046302(n+1), A046302(n+1)/#]`
-/

namespace A127349.P14788965999769411402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046302 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, (A046302 (n + 1) : ℚ) / (p : ℚ)

end

end A127349.P14788965999769411402

namespace A127349

/-- `∑{p}[A046302(n+1), A046302(n+1)/#]` -/
def P14788965999769411402.Spec : Prop :=
  ∀ n, P14788965999769411402.a n = (A127349 (n + 1) : ℚ)

end A127349

/-! ## A127349.P5338663816773707622

`A344028(85*A000079(n))`
-/

namespace A127349.P5338663816773707622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344028 (85 * A000079 n).toNat

end

end A127349.P5338663816773707622

namespace A127349

/-- `A344028(85*A000079(n))` -/
def P5338663816773707622.Spec : Prop :=
  ∀ n, P5338663816773707622.a n = A127349 (n + 1)

end A127349

/-!
# A127353: A007376(2n).

The programs for A127353, there is no canonical definition to state claims against.
-/

/-! ## A127353.P7959627286566196556

`A007376(2*(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A127353.P7959627286566196556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007376 (2 * (n + 1))

end

end A127353.P7959627286566196556

/-! ## A127353.P17832604859719180478

`A033307(Δ[n²])`
-/

namespace A127353.P17832604859719180478
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033307 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A127353.P17832604859719180478

/-! ## A127353.P2573619693163553488

`A059805(n+1)%10`
-/

namespace A127353.P2573619693163553488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A059805 (n + 1)) 10

end

end A127353.P2573619693163553488

/-! ## A127353.P1643385319698431857

`dr(A007376(n+2+n))`
-/

namespace A127353.P1643385319698431857
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A007376 (n + 2 + n))

end

end A127353.P1643385319698431857

/-! ## A127353.P3581415042940533173

`A033307(2*n+1)%10`
-/

namespace A127353.P3581415042940533173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A033307 (2 * n + 1)) 10

end

end A127353.P3581415042940533173

/-! ## A127353.P9450102855103656157

`A010879(A059805(n+1))`
-/

namespace A127353.P9450102855103656157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 (A059805 (n + 1)).toNat

end

end A127353.P9450102855103656157

/-! ## A127353.P14494285641328396364

`and(15, A033307(A005408(n)))`
-/

namespace A127353.P14494285641328396364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 15 (A033307 (A005408 n).toNat)

end

end A127353.P14494285641328396364

/-! ## A127353.P13803641015016585300

`A007376(n+2+n)/A007318(C(n, n²))`
-/

namespace A127353.P13803641015016585300
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007376 (n + 2 + n) : ℚ) / (A007318 (Nat.choose n (n ^ 2)) : ℚ)

end

end A127353.P13803641015016585300

/-! ## A127353.P2115750413760200528

`lcm(A000041(C(2, n+1)), A007376(n+2+n))`
-/

namespace A127353.P2115750413760200528
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000041 (Nat.choose 2 (n + 1))) (A007376 (n + 2 + n))

end

end A127353.P2115750413760200528

/-! ## A127353.P15098257757848097478

`A136414(Δ[n²])%10`
-/

namespace A127353.P15098257757848097478
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A136414 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat) 10

end

end A127353.P15098257757848097478

/-! ## A127353.P17958244557912573798

`9-A031310(2*(n+1))`
-/

namespace A127353.P17958244557912573798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A031310 (2 * (n + 1))

end

end A127353.P17958244557912573798

/-! ## A127353.P5816685969463968161

`A261333(2*n+1)%10`
-/

namespace A127353.P5816685969463968161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A261333 (2 * n + 1)) 10

end

end A127353.P5816685969463968161

/-! ## A127353.P16793849461359846895

`A010879(A136414(2*n+1))`
-/

namespace A127353.P16793849461359846895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 (A136414 (2 * n + 1)).toNat

end

end A127353.P16793849461359846895

/-! ## A127353.P4407914678814468463

`A054899(A136414(2*(n+1)))`
-/

namespace A127353.P4407914678814468463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054899 (A136414 (2 * (n + 1))).toNat

end

end A127353.P4407914678814468463

/-! ## A127353.P17348437752840441517

`A098727(2*(n+1))+A001478(2*(n+1))`
-/

namespace A127353.P17348437752840441517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098727 (2 * (n + 1)) + A001478 (2 * (n + 1))

end

end A127353.P17348437752840441517

/-! ## A127353.P14894086761868647894

`A054632(2*(n+1))-A054632(2*n+1)`
-/

namespace A127353.P14894086761868647894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054632 (2 * (n + 1)) - A054632 (2 * n + 1)

end

end A127353.P14894086761868647894

/-! ## A127353.P3534338321718898906

`A167232(2*n+1)-A167232(2*(n+1))`
-/

namespace A127353.P3534338321718898906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167232 (2 * n + 1) - A167232 (2 * (n + 1))

end

end A127353.P3534338321718898906

/-! ## A127353.P14898447651633622900

`A108712(3*(n+1)+n)`
-/

namespace A127353.P14898447651633622900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108712 (3 * (n + 1) + n)

end

end A127353.P14898447651633622900

/-! ## A127353.P10995722264208253531

`A108202(4*(n+1))`
-/

namespace A127353.P10995722264208253531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108202 (4 * (n + 1))

end

end A127353.P10995722264208253531

/-! ## A127353.P4910349804555959696

`A010879(A261333(2*n+1))`
-/

namespace A127353.P4910349804555959696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 (A261333 (2 * n + 1)).toNat

end

end A127353.P4910349804555959696

/-!
# A127354: Digit count of prime(n). The digit count numerically summarizes the frequency of digits 0 through 9 in that order when they occur in a number.

The programs for A127354, there is no canonical definition to state claims against.
-/

/-! ## A127354.P5401230062169547116

`A047842(A000040(n+1))`
-/

namespace A127354.P5401230062169547116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047842 (A000040 (n + 1)).toNat

end

end A127354.P5401230062169547116

/-! ## A127354.P12898519503233719008

`A047842(p?[comp[n²]])`
-/

namespace A127354.P12898519503233719008
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047842 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A127354.P12898519503233719008

/-! ## A127354.P1276434652921966745

`A047842(Δ[A007504(n)])`
-/

namespace A127354.P1276434652921966745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047842 (f1 (n + 1) - f1 n).toNat

end

end A127354.P1276434652921966745

/-! ## A127354.P7845923939821079351

`A047842(A004087(n+1))`
-/

namespace A127354.P7845923939821079351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047842 (A004087 (n + 1)).toNat

end

end A127354.P7845923939821079351

/-! ## A127354.P12651426792737189487

`A047842(A028906(n+1))`
-/

namespace A127354.P12651426792737189487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047842 (A028906 (n + 1)).toNat

end

end A127354.P12651426792737189487

/-! ## A127354.P429664071340098419

`A047842(A008578(n+2))`
-/

namespace A127354.P429664071340098419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047842 (A008578 (n + 2)).toNat

end

end A127354.P429664071340098419

/-! ## A127354.P10129882877467283764

`A047842(A182986(n+2))`
-/

namespace A127354.P10129882877467283764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047842 (A182986 (n + 2)).toNat

end

end A127354.P10129882877467283764

/-! ## A127354.P18331475983063751628

`A047842(eq[1, A003415(n)])`
-/

namespace A127354.P18331475983063751628
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047842 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A127354.P18331475983063751628

/-! ## A127354.P9587039261152314816

`A047842(eq[2, A327859(n)])`
-/

namespace A127354.P9587039261152314816
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327859 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047842 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A127354.P9587039261152314816

/-! ## A127354.P15128535979044016781

`A047842(record[A006530(n+2)])`
-/

namespace A127354.P15128535979044016781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047842 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A127354.P15128535979044016781

/-! ## A127354.P5403991554974455378

`A047842(record[A020639(n+2)])`
-/

namespace A127354.P5403991554974455378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047842 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A127354.P5403991554974455378

/-! ## A127354.P14654866037113508379

`A047842(record[A000010(n+1)+1])`
-/

namespace A127354.P14654866037113508379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047842 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A127354.P14654866037113508379

/-! ## A127354.P11517826256344394443

`A047842(eq[1, A001222(n+1)]+1)`
-/

namespace A127354.P11517826256344394443
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047842 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A127354.P11517826256344394443

/-! ## A127354.P6809050376019201116

`A047842(eq[2, A000005(n+1)]+1)`
-/

namespace A127354.P6809050376019201116
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047842 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A127354.P6809050376019201116

/-! ## A127354.P3157555719813743853

`A047842(lt[A001222(n+2), 2]+2)`
-/

namespace A127354.P3157555719813743853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047842 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 2)

end

end A127354.P3157555719813743853

/-! ## A127354.P6399632011712951705

`A047842(lt[n, A000010(n+2)]+2)`
-/

namespace A127354.P6399632011712951705
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047842 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 2)

end

end A127354.P6399632011712951705

/-! ## A127354.P17318010192778276940

`A047842(comp[A018252(n+1)-1]+1)`
-/

namespace A127354.P17318010192778276940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047842 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1)

end

end A127354.P17318010192778276940

/-! ## A127354.P2739841760610036051

`A047842(eq[n+2, A000203(n+1)]+1)`
-/

namespace A127354.P2739841760610036051
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047842 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A127354.P2739841760610036051

/-! ## A127354.P1098412946294844289

`A047842(lt[n, A006530(2*(n+1)+2)]+2)`
-/

namespace A127354.P1098412946294844289
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (2 * (n + 1) + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047842 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 2)

end

end A127354.P1098412946294844289

/-! ## A127354.P2699299483882333989

`A047842(A101989(n+1))`
-/

namespace A127354.P2699299483882333989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047842 (A101989 (n + 1)).toNat

end

end A127354.P2699299483882333989

/-!
# A127355: Primes with prime digit counts. The digit count numerically summarizes the frequency of digits 0 through 9 in that order when they occur in a number.

The programs for A127355, there is no canonical definition to state claims against.
-/

/-! ## A127355.P5019398209639546585

`A078133(A316774(n)+A215799(n+1))`
-/

namespace A127355.P5019398209639546585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078133 (A316774 n + A215799 (n + 1)).toNat

end

end A127355.P5019398209639546585

/-! ## A127355.P4226203021724841341

`A109258(A301693(n))`
-/

namespace A127355.P4226203021724841341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109258 (A301693 n).toNat

end

end A127355.P4226203021724841341

/-!
# A127356: a(n) is the smallest k > 0 such that k^2 + prime(n) is prime.

The programs for A127356, there is no canonical definition to state claims against.
-/

/-! ## A127356.P7115294300715766101

`A085099(p?[comp[n²]])`
-/

namespace A127356.P7115294300715766101
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085099 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A127356.P7115294300715766101

/-! ## A127356.P2095837773448644498

`A085099(record[p?[∏{p}[n+1, #]]])`
-/

namespace A127356.P2095837773448644498
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), p

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085099 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A127356.P2095837773448644498

/-! ## A127356.P9560535770003871619

`A085099(A000040(n+1))`
-/

namespace A127356.P9560535770003871619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085099 (A000040 (n + 1)).toNat

end

end A127356.P9560535770003871619

/-! ## A127356.P9952734046768951690

`A085099(A006005(n+1))`
-/

namespace A127356.P9952734046768951690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085099 (A006005 (n + 1)).toNat

end

end A127356.P9952734046768951690

/-! ## A127356.P13209589224016662038

`A085099(A008578(n+2))`
-/

namespace A127356.P13209589224016662038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085099 (A008578 (n + 2)).toNat

end

end A127356.P13209589224016662038

/-! ## A127356.P8987396234827167071

`A085099(A075643(n+2))`
-/

namespace A127356.P8987396234827167071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085099 (A075643 (n + 2)).toNat

end

end A127356.P8987396234827167071

/-! ## A127356.P6631432391892515122

`A085099(A182986(n+2))`
-/

namespace A127356.P6631432391892515122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085099 (A182986 (n + 2)).toNat

end

end A127356.P6631432391892515122

/-! ## A127356.P10055096191767496364

`A085099(record[A006530(n+2)])`
-/

namespace A127356.P10055096191767496364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085099 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A127356.P10055096191767496364

/-! ## A127356.P8217347924896235273

`A085099(record[A014963(n+2)])`
-/

namespace A127356.P8217347924896235273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085099 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A127356.P8217347924896235273

/-! ## A127356.P5289939762938696363

`A085099(record[A020639(n+2)])`
-/

namespace A127356.P5289939762938696363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085099 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A127356.P5289939762938696363

/-! ## A127356.P7093202284155104476

`A085099(A006093(n+1)+1)`
-/

namespace A127356.P7093202284155104476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085099 (A006093 (n + 1) + 1).toNat

end

end A127356.P7093202284155104476

/-! ## A127356.P16740784587903819469

`A085099(eq[1, A085099(n+1)]+2)`
-/

namespace A127356.P16740784587903819469
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085099 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085099 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2)

end

end A127356.P16740784587903819469

/-! ## A127356.P2406192274345680555

`A085099(lt[A085099(n+1), 2]+2)`
-/

namespace A127356.P2406192274345680555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085099 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085099 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 2)

end

end A127356.P2406192274345680555

/-!
# A127357: Expansion of 1/(1 - 2*x + 9*x^2).

The programs for A127357, the canonical program `A127357.P7199833740638939363` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A127357 has offset 0).

The definition of A127357 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-2x+9x^2))` (program `A127357.P7199833740638939363`, by `A127357.P7199833740638939363.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A127357.P7199833740638939363

`ogf(1/(1-2x+9x^2))`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A127357

/-- `ogf(1/(1-2x+9x^2))` -/
def P7199833740638939363.Spec : Prop :=
  ∀ n, P7199833740638939363.a n = A127357 n

theorem P7199833740638939363.correct : P7199833740638939363.Spec := by
  intro n
  simp only [A127357]

end A127357

/-! ## A127357.P11927279263324995446

`2*a(n-1)-9*a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A127357.P11927279263324995446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  2 * a (n - 1) - 9 * a (n - 2)

end

end A127357.P11927279263324995446

namespace A127357

/-- `2*a(n-1)-9*a(n-2)` -/
def P11927279263324995446.Spec : Prop :=
  ∀ n, P11927279263324995446.a n = A127357 n

end A127357

/-! ## A127357.P12908347563720908778

`(-1)^n*A025170(n)`
-/

namespace A127357.P12908347563720908778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A025170 n

end

end A127357.P12908347563720908778

namespace A127357

/-- `(-1)^n*A025170(n)` -/
def P12908347563720908778.Spec : Prop :=
  ∀ n, P12908347563720908778.a n = A127357 n

end A127357

/-! ## A127357.P7985346234727914579

`a(n-1)+a(n-1)-a(n-2)/(1/3)²` with `a(0)=1, a(1)=2`
-/

namespace A127357.P7985346234727914579
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 1) + (a (n - 1) - a (n - 2) / ((1 : ℚ) / 3) ^ 2)

end

end A127357.P7985346234727914579

namespace A127357

/-- `a(n-1)+a(n-1)-a(n-2)/(1/3)²` -/
def P7985346234727914579.Spec : Prop :=
  ∀ n, P7985346234727914579.a n = (A127357 n : ℚ)

end A127357

/-! ## A127357.P9445936387557810809

`a(n-1)-(a(n-2)/(1/3)²-a(n-1))` with `a(0)=1, a(1)=2`
-/

namespace A127357.P9445936387557810809
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 1) - (a (n - 2) / ((1 : ℚ) / 3) ^ 2 - a (n - 1))

end

end A127357.P9445936387557810809

namespace A127357

/-- `a(n-1)-(a(n-2)/(1/3)²-a(n-1))` -/
def P9445936387557810809.Spec : Prop :=
  ∀ n, P9445936387557810809.a n = (A127357 n : ℚ)

end A127357

/-! ## A127357.P12366716408919413665

`∑[A025172(n)]`
-/

namespace A127357.P12366716408919413665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025172 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A127357.P12366716408919413665

namespace A127357

/-- `∑[A025172(n)]` -/
def P12366716408919413665.Spec : Prop :=
  ∀ n, P12366716408919413665.a n = A127357 n

end A127357

/-! ## A127357.P14221718076635357071

`A025170(n)*A033999(n)`
-/

namespace A127357.P14221718076635357071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025170 n * A033999 n

end

end A127357.P14221718076635357071

namespace A127357

/-- `A025170(n)*A033999(n)` -/
def P14221718076635357071.Spec : Prop :=
  ∀ n, P14221718076635357071.a n = A127357 n

end A127357

/-!
# A127358: a(n) = Sum_{k=0..n} binomial(n, floor(k/2))*2^(n-k).

The programs for A127358, there is no canonical definition to state claims against.
-/

/-! ## A127358.P13674823495235325691

`2*a(n-1)+A054341(n-1)` with `a(0)=1`
-/

namespace A127358.P13674823495235325691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * a (n - 1) + A054341 (n - 1)

end

end A127358.P13674823495235325691

/-! ## A127358.P1277844138207748406

`A100099(n)+A100067(n)`
-/

namespace A127358.P1277844138207748406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100099 n + A100067 n

end

end A127358.P1277844138207748406

/-! ## A127358.P14337223358936768357

`A100098(n)+2*A100099(n)`
-/

namespace A127358.P14337223358936768357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100098 n + 2 * A100099 n

end

end A127358.P14337223358936768357

/-! ## A127358.P355319000118625041

`2*A054341(n)-A001405(n)`
-/

namespace A127358.P355319000118625041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A054341 n - A001405 n

end

end A127358.P355319000118625041

/-! ## A127358.P6292561724964364871

`2*A100067(n)-A100098(n)`
-/

namespace A127358.P6292561724964364871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A100067 n - A100098 n

end

end A127358.P6292561724964364871

/-! ## A127358.P3631857705984093903

`abs(A127361(n))+2*A100099(n)`
-/

namespace A127358.P3631857705984093903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A127361 n| + 2 * A100099 n

end

end A127358.P3631857705984093903

/-! ## A127358.P3548579493163449557

`A100096(n+1)+2*A100096(n)`
-/

namespace A127358.P3548579493163449557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100096 (n + 1) + 2 * A100096 n

end

end A127358.P3548579493163449557

/-! ## A127358.P8138017862027165146

`record[2*A126075(n)-A061554(n)]`
-/

namespace A127358.P8138017862027165146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A126075 n - A061554 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A127358.P8138017862027165146

/-! ## A127358.P6924622346366338073

`record[2*A126075(n)-A054336(n)]`
-/

namespace A127358.P6924622346366338073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A126075 n - A054336 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A127358.P6924622346366338073

/-!
# A127359: a(n) = Sum_{k=0..n} binomial(n, floor(k/2))*3^(n-k).

The programs for A127359, there is no canonical definition to state claims against.
-/

/-! ## A127359.P8046199037389662008

`2*A133443(n)-A126869(n)`
-/

namespace A127359.P8046199037389662008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A133443 n - A126869 n

end

end A127359.P8046199037389662008

/-! ## A127359.P2085416660864102498

`A004277(A133443(n))-A126869(n)`
-/

namespace A127359.P2085416660864102498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A133443 n).toNat - A126869 n

end

end A127359.P2085416660864102498

/-! ## A127359.P15197790670266338602

`A152423(A047038(n))`
-/

namespace A127359.P15197790670266338602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152423 (A047038 n).toNat

end

end A127359.P15197790670266338602

/-!
# A127360: a(n) = Sum_{k=0..n} binomial(n, floor(k/2))*4^(n-k).

The programs for A127360, there is no canonical definition to state claims against.
-/

/-! ## A127360.P7589412197423414520

`A061288(A004215(a(n-1)))` with `a(0)=1`
-/

namespace A127360.P7589412197423414520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A061288 (A004215 (a (n - 1)).toNat).toNat

end

end A127360.P7589412197423414520

/-! ## A127360.P16425815687898007536

`A141222(n)+A067169(A080872(n))`
-/

namespace A127360.P16425815687898007536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141222 n + A067169 ((A080872 n).toNat + 11)

end

end A127360.P16425815687898007536

/-!
# A127361: a(n) = Sum_{k=0..n} binomial(n, floor(k/2))*(-2)^(n-k).

The programs for A127361, there is no canonical definition to state claims against.
-/

/-! ## A127361.P5008339129305105317

`A033999(n)*A100098(n)`
-/

namespace A127361.P5008339129305105317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A100098 n

end

end A127361.P5008339129305105317

/-! ## A127361.P15743519352679038410

`A100098(n)/A033999(n+2)`
-/

namespace A127361.P15743519352679038410
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A100098 n : ℚ) / (A033999 (n + 2) : ℚ)

end

end A127361.P15743519352679038410

/-! ## A127361.P7432347080187356575

`A056594(2*n)*A100098(n)`
-/

namespace A127361.P7432347080187356575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (2 * n) * A100098 n

end

end A127361.P7432347080187356575

/-! ## A127361.P6377327093617365427

`A100098(n)/A010892(3*n)`
-/

namespace A127361.P6377327093617365427
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A100098 n : ℚ) / (A010892 (3 * n) : ℚ)

end

end A127361.P6377327093617365427

/-! ## A127361.P7899223368977088254

`A000007(2*n+3)+A100098(n)/(-1)^n`
-/

namespace A127361.P7899223368977088254
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000007 (2 * n + 3) : ℚ) + (A100098 n : ℚ) / ((-1) ^ n : ℚ)

end

end A127361.P7899223368977088254

/-!
# A127362: a(n) = Sum_{k=0..n} C(n,floor(k/2))*(-3)^(n-k).

The programs for A127362, there is no canonical definition to state claims against.
-/

/-! ## A127362.P17363397670307225417

`A033999(n)*A133443(n)`
-/

namespace A127362.P17363397670307225417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A133443 n

end

end A127362.P17363397670307225417

/-! ## A127362.P1531421267972065195

`∑[A280560(n)]*A133443(n)`
-/

namespace A127362.P1531421267972065195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280560 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A133443 n

end

end A127362.P1531421267972065195

/-! ## A127362.P2584377177143113404

`A057428(n)^n*A133443(n)`
-/

namespace A127362.P2584377177143113404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n ^ n * A133443 n

end

end A127362.P2584377177143113404

/-! ## A127362.P13804353386070876071

`A133443(n)*A195017(A000040(n+1))`
-/

namespace A127362.P13804353386070876071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133443 n * A195017 (A000040 (n + 1)).toNat

end

end A127362.P13804353386070876071

/-! ## A127362.P8254108802291033511

`A076756(A000217(n))*A133443(n)`
-/

namespace A127362.P8254108802291033511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076756 (A000217 n).toNat * A133443 n

end

end A127362.P8254108802291033511

/-!
# A127363: a(n) = Sum_{k=0..n} C(n,floor(k/2))*(-4)^(n-k).

The programs for A127363, there is no canonical definition to state claims against.
-/

/-! ## A127363.P13536129924024204590

`A033999(n)*A133444(n)`
-/

namespace A127363.P13536129924024204590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A133444 n

end

end A127363.P13536129924024204590

/-! ## A127363.P4199962988050002556

`A133444(n)/A033999(n+2)`
-/

namespace A127363.P4199962988050002556
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A133444 n : ℚ) / (A033999 (n + 2) : ℚ)

end

end A127363.P4199962988050002556

/-! ## A127363.P15392322704387116583

`A087960(2*n)*A133444(n)`
-/

namespace A127363.P15392322704387116583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087960 (2 * n) * A133444 n

end

end A127363.P15392322704387116583

/-! ## A127363.P17219003552070498214

`A009531(2*n+1)*A133444(n)`
-/

namespace A127363.P17219003552070498214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009531 (2 * n + 1) * A133444 n

end

end A127363.P17219003552070498214

/-! ## A127363.P584881095165542153

`A008683(-or(n+1, -2))*A133444(n)`
-/

namespace A127363.P584881095165542153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (-Int.lor (n + 1 : ℤ) (-2)).toNat * A133444 n

end

end A127363.P584881095165542153

/-! ## A127363.P14820494273971934342

`A133444(n)/A009531(A017377(n))`
-/

namespace A127363.P14820494273971934342
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A133444 n : ℚ) / (A009531 (A017377 n).toNat : ℚ)

end

end A127363.P14820494273971934342

/-!
# A127365: Signed repeated natural numbers.

The programs for A127365, the canonical program `A127365.P16635661420336530327` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A127365 has offset 0).

The definition of A127365 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A127365.P16635661420336530327

`floor(n/2)*(-1)^floor(n/2)`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A127365

/-- `floor(n/2)*(-1)^floor(n/2)` -/
def P16635661420336530327.Spec : Prop :=
  ∀ n, P16635661420336530327.a n = (A127365 n : ℚ)

end A127365

/-! ## A127365.P5580550492902803457

`-xor(1, a(n-2))` with `a(0)=0, a(1)=0`
-/

namespace A127365.P5580550492902803457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  -Int.xor 1 (a (n - 2))

end

end A127365.P5580550492902803457

namespace A127365

/-- `-xor(1, a(n-2))` -/
def P5580550492902803457.Spec : Prop :=
  ∀ n, P5580550492902803457.a n = A127365 n

end A127365

/-! ## A127365.P2877575443931502805

`floor(n/2)/(1-and(2, n))`
-/

namespace A127365.P2877575443931502805
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌊(n : ℚ) / 2⌋ : ℚ) / (1 - (Nat.land 2 n : ℤ) : ℚ)

end

end A127365.P2877575443931502805

namespace A127365

/-- `floor(n/2)/(1-and(2, n))` -/
def P2877575443931502805.Spec : Prop :=
  ∀ n, P2877575443931502805.a n = (A127365 n : ℚ)

end A127365

/-! ## A127365.P8702246331325507569

`ogf((-x^2-x^3)/(1+2x^2+x^4))`
-/

namespace A127365.P8702246331325507569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, -1, -1] [1, 0, 2, 0, 1] n

end

end A127365.P8702246331325507569

namespace A127365

/-- `ogf((-x^2-x^3)/(1+2x^2+x^4))` -/
def P8702246331325507569.Spec : Prop :=
  ∀ n, P8702246331325507569.a n = A127365 n

end A127365

/-! ## A127365.P12268375083577561956

`2-xor(1, a(n-2)+2)` with `a(0)=0, a(1)=0`
-/

namespace A127365.P12268375083577561956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  2 - Int.xor 1 (a (n - 2) + 2)

end

end A127365.P12268375083577561956

namespace A127365

/-- `2-xor(1, a(n-2)+2)` -/
def P12268375083577561956.Spec : Prop :=
  ∀ n, P12268375083577561956.a n = A127365 n

end A127365

/-! ## A127365.P5099036053831824534

`1-(a(n-2)+and(2, n))` with `a(0)=0, a(1)=0`
-/

namespace A127365.P5099036053831824534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  1 - (a (n - 2) + (Nat.land 2 n : ℤ))

end

end A127365.P5099036053831824534

namespace A127365

/-- `1-(a(n-2)+and(2, n))` -/
def P5099036053831824534.Spec : Prop :=
  ∀ n, P5099036053831824534.a n = A127365 n

end A127365

/-! ## A127365.P8361118676559190831

`1-and(2, n)-a(n-2)` with `a(0)=0, a(1)=0`
-/

namespace A127365.P8361118676559190831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  1 - (Nat.land 2 n : ℤ) - a (n - 2)

end

end A127365.P8361118676559190831

namespace A127365

/-- `1-and(2, n)-a(n-2)` -/
def P8361118676559190831.Spec : Prop :=
  ∀ n, P8361118676559190831.a n = A127365 n

end A127365

/-! ## A127365.P17086149861909275281

`(-1)^floor(n/2)-a(n-2)` with `a(0)=0, a(1)=0`
-/

namespace A127365.P17086149861909275281
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 0] fun n a =>
  (-1 : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ) - a (n - 2)

end

end A127365.P17086149861909275281

namespace A127365

/-- `(-1)^floor(n/2)-a(n-2)` -/
def P17086149861909275281.Spec : Prop :=
  ∀ n, P17086149861909275281.a n = (A127365 n : ℚ)

end A127365

/-! ## A127365.P4483068770164753490

`floor((-1)^(a(n-2)+1)-a(n-2))` with `a(0)=0, a(1)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A127365.P4483068770164753490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  ⌊(-1 : ℚ) ^ (a (n - 2) + 1 : ℤ) - (a (n - 2) : ℚ)⌋

end

end A127365.P4483068770164753490

namespace A127365

/-- `floor((-1)^(a(n-2)+1)-a(n-2))` -/
def P4483068770164753490.Spec : Prop :=
  ∀ n, P4483068770164753490.a n = A127365 n

end A127365

/-! ## A127365.P15314009623722257030

`(-1)^(a(n-2)-1)-floor(a(n-2))` with `a(0)=0, a(1)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A127365.P15314009623722257030
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [0, 0] fun n a =>
  (-1 : ℝ) ^ (a (n - 2) - 1) - (⌊a (n - 2)⌋ : ℝ)

end

end A127365.P15314009623722257030

namespace A127365

/-- `(-1)^(a(n-2)-1)-floor(a(n-2))` -/
def P15314009623722257030.Spec : Prop :=
  ∀ n, P15314009623722257030.a n = (A127365 n : ℝ)

end A127365

/-! ## A127365.P11753203948114128663

`3-(a(n-2)+2*gcd(2, a(n-2)))` with `a(0)=0, a(1)=0`
-/

namespace A127365.P11753203948114128663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  3 - (a (n - 2) + (2 * Int.gcd 2 (a (n - 2)) : ℤ))

end

end A127365.P11753203948114128663

namespace A127365

/-- `3-(a(n-2)+2*gcd(2, a(n-2)))` -/
def P11753203948114128663.Spec : Prop :=
  ∀ n, P11753203948114128663.a n = A127365 n

end A127365

/-! ## A127365.P14309866169326731539

`3-a(n-2)-gcd(4, 2*a(n-2))` with `a(0)=0, a(1)=0`
-/

namespace A127365.P14309866169326731539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  3 - a (n - 2) - (Int.gcd 4 (2 * a (n - 2)) : ℤ)

end

end A127365.P14309866169326731539

namespace A127365

/-- `3-a(n-2)-gcd(4, 2*a(n-2))` -/
def P14309866169326731539.Spec : Prop :=
  ∀ n, P14309866169326731539.a n = A127365 n

end A127365

/-! ## A127365.P7568833046100182726

`2-(a(n-2)+gcd(3, a(n-2)%2))` with `a(0)=0, a(1)=0`
-/

namespace A127365.P7568833046100182726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  2 - (a (n - 2) + (Int.gcd 3 (Int.tmod (a (n - 2)) 2) : ℤ))

end

end A127365.P7568833046100182726

namespace A127365

/-- `2-(a(n-2)+gcd(3, a(n-2)%2))` -/
def P7568833046100182726.Spec : Prop :=
  ∀ n, P7568833046100182726.a n = A127365 n

end A127365

/-! ## A127365.P13069878644967327560

`A038608(floor(n/2))`
-/

namespace A127365.P13069878644967327560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038608 ⌊(n : ℚ) / 2⌋.toNat

end

end A127365.P13069878644967327560

namespace A127365

/-- `A038608(floor(n/2))` -/
def P13069878644967327560.Spec : Prop :=
  ∀ n, P13069878644967327560.a n = A127365 n

end A127365

/-! ## A127365.P1319757581409469816

`Δ[A374139(abs(1-n))]`
-/

namespace A127365.P1319757581409469816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374139 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A127365.P1319757581409469816

namespace A127365

/-- `Δ[A374139(abs(1-n))]` -/
def P1319757581409469816.Spec : Prop :=
  ∀ n, P1319757581409469816.a n = A127365 n

end A127365

/-! ## A127365.P8947011527616025827

`A099570(A266977(n))`
-/

namespace A127365.P8947011527616025827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099570 (A266977 n).toNat

end

end A127365.P8947011527616025827

namespace A127365

/-- `A099570(A266977(n))` -/
def P8947011527616025827.Spec : Prop :=
  ∀ n, P8947011527616025827.a n = A127365 n

end A127365

/-! ## A127365.P16858169096150376238

`A004526(n)/A057077(n)`
-/

namespace A127365.P16858169096150376238
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004526 n : ℚ) / (A057077 n : ℚ)

end

end A127365.P16858169096150376238

namespace A127365

/-- `A004526(n)/A057077(n)` -/
def P16858169096150376238.Spec : Prop :=
  ∀ n, P16858169096150376238.a n = (A127365 n : ℚ)

end A127365

/-! ## A127365.P9262712037036634212

`A052928(n)/A084100(n)`
-/

namespace A127365.P9262712037036634212
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052928 n : ℚ) / (A084100 n : ℚ)

end

end A127365.P9262712037036634212

namespace A127365

/-- `A052928(n)/A084100(n)` -/
def P9262712037036634212.Spec : Prop :=
  ∀ n, P9262712037036634212.a n = (A127365 n : ℚ)

end A127365

/-! ## A127365.P5367691605160737133

`A071045(n)/A112030(n)`
-/

namespace A127365.P5367691605160737133
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A071045 n : ℚ) / (A112030 n : ℚ)

end

end A127365.P5367691605160737133

namespace A127365

/-- `A071045(n)/A112030(n)` -/
def P5367691605160737133.Spec : Prop :=
  ∀ n, P5367691605160737133.a n = (A127365 n : ℚ)

end A127365

/-! ## A127365.P13129592129932304435

`A127630(n)%A008619(n)`
-/

namespace A127365.P13129592129932304435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A127630 n) (A008619 n)

end

end A127365.P13129592129932304435

namespace A127365

/-- `A127630(n)%A008619(n)` -/
def P13129592129932304435.Spec : Prop :=
  ∀ n, P13129592129932304435.a n = A127365 n

end A127365

/-!
# A127366: Let m = floor(sqrt(n)); if n and m have the same parity, a(n) = n + m, otherwise a(n) = n - m.

The programs for A127366, the canonical program `A127366.P8947721637193413628` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A127366 has offset 0).

The definition of A127366 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A127366.P8947721637193413628

`abs(A038608(A000196(n))+A038608(n))`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A127366

/-- `abs(A038608(A000196(n))+A038608(n))` -/
def P8947721637193413628.Spec : Prop :=
  ∀ n, P8947721637193413628.a n = A127366 n

theorem P8947721637193413628.correct : P8947721637193413628.Spec := by
  intro n
  simp only [A127366]

end A127366

/-! ## A127366.P8353173344518610649

`A033999(n)*A038608(A000196(n))+n`
-/

namespace A127366.P8353173344518610649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A038608 (A000196 n).toNat + (n : ℤ)

end

end A127366.P8353173344518610649

namespace A127366

/-- `A033999(n)*A038608(A000196(n))+n` -/
def P8353173344518610649.Spec : Prop :=
  ∀ n, P8353173344518610649.a n = A127366 n

end A127366

/-! ## A127366.P8721673284480241578

`n-A038608(A000196(n))*A062157(n)`
-/

namespace A127366.P8721673284480241578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A038608 (A000196 n).toNat * A062157 n

end

end A127366.P8721673284480241578

namespace A127366

/-- `n-A038608(A000196(n))*A062157(n)` -/
def P8721673284480241578.Spec : Prop :=
  ∀ n, P8721673284480241578.a n = A127366 n

end A127366

/-! ## A127366.P15582063294182530558

`(A038608(A000196(n))+A038608(n))/A033999(n)`
-/

namespace A127366.P15582063294182530558
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038608 (A000196 n).toNat + A038608 n : ℚ) / (A033999 n : ℚ)

end

end A127366.P15582063294182530558

namespace A127366

/-- `(A038608(A000196(n))+A038608(n))/A033999(n)` -/
def P15582063294182530558.Spec : Prop :=
  ∀ n, P15582063294182530558.a n = (A127366 n : ℚ)

end A127366

/-! ## A127366.P15645890031442204818

`(A038608(A000196(n))+A038608(n))*A062157(n+1)`
-/

namespace A127366.P15645890031442204818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A038608 (A000196 n).toNat + A038608 n) * A062157 (n + 1)

end

end A127366.P15645890031442204818

namespace A127366

/-- `(A038608(A000196(n))+A038608(n))*A062157(n+1)` -/
def P15645890031442204818.Spec : Prop :=
  ∀ n, P15645890031442204818.a n = A127366 n

end A127366

/-! ## A127366.P5836471417837272157

`(A038608(A000196(n))+A038608(n))*(A004442(n)-n)`
-/

namespace A127366.P5836471417837272157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A038608 (A000196 n).toNat + A038608 n) * (A004442 n - (n : ℤ))

end

end A127366.P5836471417837272157

namespace A127366

/-- `(A038608(A000196(n))+A038608(n))*(A004442(n)-n)` -/
def P5836471417837272157.Spec : Prop :=
  ∀ n, P5836471417837272157.a n = A127366 n

end A127366

/-! ## A127366.P16509687146911333116

`n-A038608(A003059(n+1)+n)%(n+1)`
-/

namespace A127366.P16509687146911333116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - Int.tmod (A038608 (A003059 (n + 1) + (n : ℤ)).toNat) (n + 1 : ℤ)

end

end A127366.P16509687146911333116

namespace A127366

/-- `n-A038608(A003059(n+1)+n)%(n+1)` -/
def P16509687146911333116.Spec : Prop :=
  ∀ n, P16509687146911333116.a n = A127366 n

end A127366

/-! ## A127366.P17732731188752049668

`(A038608(A000196(n))+A038608(n))*A209615(2*n+1)`
-/

namespace A127366.P17732731188752049668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A038608 (A000196 n).toNat + A038608 n) * A209615 (2 * n + 1)

end

end A127366.P17732731188752049668

namespace A127366

/-- `(A038608(A000196(n))+A038608(n))*A209615(2*n+1)` -/
def P17732731188752049668.Spec : Prop :=
  ∀ n, P17732731188752049668.a n = A127366 n

end A127366

/-! ## A127366.P636975025981754339

`A004273(A117384(n+1))-A071028(n)`
-/

namespace A127366.P636975025981754339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A117384 (n + 1)).toNat - A071028 n

end

end A127366.P636975025981754339

namespace A127366

/-- `A004273(A117384(n+1))-A071028(n)` -/
def P636975025981754339.Spec : Prop :=
  ∀ n, P636975025981754339.a n = A127366 n

end A127366

/-! ## A127366.P9806905096549985021

`A000196(n*A118012(n+1))`
-/

namespace A127366.P9806905096549985021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 ((n : ℤ) * A118012 (n + 1)).toNat

end

end A127366.P9806905096549985021

namespace A127366

/-- `A000196(n*A118012(n+1))` -/
def P9806905096549985021.Spec : Prop :=
  ∀ n, P9806905096549985021.a n = A127366 n

end A127366

/-!
# A127367: Inverse permutation to A127366.

The programs for A127367, the canonical program `A127367.P16713287783412300096` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A127367 has offset 0).

The definition of A127367 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A127367.P16713287783412300096

`abs(A259361(n)+Δ[A237420(n)])`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A127367

/-- `abs(A259361(n)+Δ[A237420(n)])` -/
def P16713287783412300096.Spec : Prop :=
  ∀ n, P16713287783412300096.a n = A127367 n

theorem P16713287783412300096.correct : P16713287783412300096.Spec := by
  intro n
  simp only [A127367]

end A127367

/-! ## A127367.P5147194627290061972

`A014682(n)+Δ[A083920(A057979(n))]`
-/

namespace A127367.P5147194627290061972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083920 (A057979 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 n + (f1 (n + 1) - f1 n)

end

end A127367.P5147194627290061972

namespace A127367

/-- `A014682(n)+Δ[A083920(A057979(n))]` -/
def P5147194627290061972.Spec : Prop :=
  ∀ n, P5147194627290061972.a n = A127367 n

end A127367

/-! ## A127367.P12713873524141186972

`Δ[A007590(n)-A002024(A152271(n))]`
-/

namespace A127367.P12713873524141186972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007590 n - A002024 (A152271 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A127367.P12713873524141186972

namespace A127367

/-- `Δ[A007590(n)-A002024(A152271(n))]` -/
def P12713873524141186972.Spec : Prop :=
  ∀ n, P12713873524141186972.a n = A127367 n

end A127367

/-! ## A127367.P1097541375201222505

`Δ[A007590(n)-A095861(A266662(n))]`
-/

namespace A127367.P1097541375201222505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007590 n - A095861 (A266662 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A127367.P1097541375201222505

namespace A127367

/-- `Δ[A007590(n)-A095861(A266662(n))]` -/
def P1097541375201222505.Spec : Prop :=
  ∀ n, P1097541375201222505.a n = A127367 n

end A127367

/-! ## A127367.P6697671151791599226

`Δ[A007590(n)-A095861(A266722(n))]`
-/

namespace A127367.P6697671151791599226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007590 n - A095861 (A266722 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A127367.P6697671151791599226

namespace A127367

/-- `Δ[A007590(n)-A095861(A266722(n))]` -/
def P6697671151791599226.Spec : Prop :=
  ∀ n, P6697671151791599226.a n = A127367 n

end A127367

/-! ## A127367.P4324266981502674674

`A127366(A000037(n+1))-A086520(A000037(n+1))`
-/

namespace A127367.P4324266981502674674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127366 (A000037 (n + 1)).toNat - A086520 (A000037 (n + 1)).toNat

end

end A127367.P4324266981502674674

namespace A127367

/-- `A127366(A000037(n+1))-A086520(A000037(n+1))` -/
def P4324266981502674674.Spec : Prop :=
  ∀ n, P4324266981502674674.a n = A127367 n

end A127367

/-!
# A127368: Relative prime triangle, read by rows.

The programs for A127368, the canonical program `A127368.P5347369318367987090` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A127368 has offset 1).

The definition of A127368 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A127368.P8336071124953174783

`(1-C(∑[char[∑[n]]], 2)+n)*A054521(n+1)`
-/

namespace A127368.P8336071124953174783
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) + (n : ℤ)) * A054521 (n + 1)

end

end A127368.P8336071124953174783

namespace A127368

/-- `(1-C(∑[char[∑[n]]], 2)+n)*A054521(n+1)` -/
def P8336071124953174783.Spec : Prop :=
  ∀ n, P8336071124953174783.a n = A127368 (n + 1)

end A127368

/-! ## A127368.P11000370816726449173

`(1-C(∑[char[∑[n]]], 2)+n)*A215200(n+1)²`
-/

namespace A127368.P11000370816726449173
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) + (n : ℤ)) * A215200 (n + 1) ^ 2

end

end A127368.P11000370816726449173

namespace A127368

/-- `(1-C(∑[char[∑[n]]], 2)+n)*A215200(n+1)²` -/
def P11000370816726449173.Spec : Prop :=
  ∀ n, P11000370816726449173.a n = A127368 (n + 1)

end A127368

/-! ## A127368.P8746087730424227845

`C(1-C(∑[char[∑[n]]], 2)+n, A001017(gcd(eq[0, floor(2*sqrt(n))%2]², ∑[char[∑[n]]])))`
-/

namespace A127368.P8746087730424227845
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f5 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊2 * Real.sqrt (n : ℝ)⌋ 2

def f8 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f7 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f8 j

open Classical in
def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f7 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (1 - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) + (n : ℤ)).toNat (A001017 (Nat.gcd (SequenceMachineLib.nth (fun j => (f4 j : ℤ) = f5 j) n ^ 2) (∑ j ∈ Finset.range (n + 1), f6 j))).toNat

end

end A127368.P8746087730424227845

namespace A127368

/-- `C(1-C(∑[char[∑[n]]], 2)+n, A001017(gcd(eq[0, floor(2*sqrt(n))%2]², ∑[char[∑[n]]])))` -/
def P8746087730424227845.Spec : Prop :=
  ∀ n, (P8746087730424227845.a n : ℤ) = A127368 (n + 1)

end A127368

/-! ## A127368.P5347369318367987090

`A054521(n+1)*A128227(n)`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A127368

/-- `A054521(n+1)*A128227(n)` -/
def P5347369318367987090.Spec : Prop :=
  ∀ n, P5347369318367987090.a n = A127368 (n + 1)

theorem P5347369318367987090.correct : P5347369318367987090.Spec := by
  intro n
  simp only [A127368, Nat.add_sub_cancel]

end A127368

/-! ## A127368.P4467393205183965457

`A054521(n+1)*A193738(n)`
-/

namespace A127368.P4467393205183965457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054521 (n + 1) * A193738 n

end

end A127368.P4467393205183965457

namespace A127368

/-- `A054521(n+1)*A193738(n)` -/
def P4467393205183965457.Spec : Prop :=
  ∀ n, P4467393205183965457.a n = A127368 (n + 1)

end A127368

/-! ## A127368.P9471745422634078027

`lcm(A128227(n), A215200(n+1))`
-/

namespace A127368.P9471745422634078027
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A128227 n) (A215200 (n + 1))

end

end A127368.P9471745422634078027

namespace A127368

/-- `lcm(A128227(n), A215200(n+1))` -/
def P9471745422634078027.Spec : Prop :=
  ∀ n, (P9471745422634078027.a n : ℤ) = A127368 (n + 1)

end A127368

/-! ## A127368.P15818560950312447046

`A002260(n+1)*A054521(n+1)`
-/

namespace A127368.P15818560950312447046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) * A054521 (n + 1)

end

end A127368.P15818560950312447046

namespace A127368

/-- `A002260(n+1)*A054521(n+1)` -/
def P15818560950312447046.Spec : Prop :=
  ∀ n, P15818560950312447046.a n = A127368 (n + 1)

end A127368

/-! ## A127368.P2594842195789421476

`(A002262(n)+1)*A054521(n+1)`
-/

namespace A127368.P2594842195789421476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002262 n + 1) * A054521 (n + 1)

end

end A127368.P2594842195789421476

namespace A127368

/-- `(A002262(n)+1)*A054521(n+1)` -/
def P2594842195789421476.Spec : Prop :=
  ∀ n, P2594842195789421476.a n = A127368 (n + 1)

end A127368

/-! ## A127368.P4970834336930620255

`A054521(n+1)*A080511(n+1)`
-/

namespace A127368.P4970834336930620255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054521 (n + 1) * A080511 (n + 1)

end

end A127368.P4970834336930620255

namespace A127368

/-- `A054521(n+1)*A080511(n+1)` -/
def P4970834336930620255.Spec : Prop :=
  ∀ n, P4970834336930620255.a n = A127368 (n + 1)

end A127368

/-! ## A127368.P10189635782198979658

`A054521(n+1)*A080818(n+1)`
-/

namespace A127368.P10189635782198979658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054521 (n + 1) * A080818 (n + 1)

end

end A127368.P10189635782198979658

namespace A127368

/-- `A054521(n+1)*A080818(n+1)` -/
def P10189635782198979658.Spec : Prop :=
  ∀ n, P10189635782198979658.a n = A127368 (n + 1)

end A127368

/-! ## A127368.P15708673092562548371

`A054521(n+1)*A128077(n+1)`
-/

namespace A127368.P15708673092562548371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054521 (n + 1) * A128077 (n + 1)

end

end A127368.P15708673092562548371

namespace A127368

/-- `A054521(n+1)*A128077(n+1)` -/
def P15708673092562548371.Spec : Prop :=
  ∀ n, P15708673092562548371.a n = A127368 (n + 1)

end A127368

/-! ## A127368.P15005670096564630871

`A054521(n+1)*A164306(n+1)`
-/

namespace A127368.P15005670096564630871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054521 (n + 1) * A164306 (n + 1)

end

end A127368.P15005670096564630871

namespace A127368

/-- `A054521(n+1)*A164306(n+1)` -/
def P15005670096564630871.Spec : Prop :=
  ∀ n, P15005670096564630871.a n = A127368 (n + 1)

end A127368

/-! ## A127368.P5392067906486265399

`(1-A349317(n+1))*A128227(n)`
-/

namespace A127368.P5392067906486265399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A349317 (n + 1)) * A128227 n

end

end A127368.P5392067906486265399

namespace A127368

/-- `(1-A349317(n+1))*A128227(n)` -/
def P5392067906486265399.Spec : Prop :=
  ∀ n, P5392067906486265399.a n = A127368 (n + 1)

theorem P5392067906486265399.correct : P5392067906486265399.Spec := by
  intro n
  simp only [A127368, Nat.add_sub_cancel, A127368.P5392067906486265399.a, A127368.P5347369318367987090.a, A054521, A054521.P4283920493715643574.a, A128227, A128227.P3230400421110190082.f1, A128227.P3230400421110190082.a, A349317, A349317.P2877834298764922178.a, A010054, A010054.P18347828677204923252.a, A050873, A050873.P9978690137907043901.a, A063524, A063524.P5631347671191003537.a, A000007, A000007.P6599383543502402472.a, A002024, A002024.P11700297927830783882.a, A002260, A002260.P769748059679640451.a, A005369, A005369.P10796159359873341658.a, A002262, A002262.P12129691700837801527.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A127368

/-! ## A127368.P7768159471552188411

`(1-A349317(n+1))*A193738(n)`
-/

namespace A127368.P7768159471552188411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A349317 (n + 1)) * A193738 n

end

end A127368.P7768159471552188411

namespace A127368

/-- `(1-A349317(n+1))*A193738(n)` -/
def P7768159471552188411.Spec : Prop :=
  ∀ n, P7768159471552188411.a n = A127368 (n + 1)

end A127368

/-! ## A127368.P4291171796284712835

`(1-A349317(n+1))*A002260(n+1)`
-/

namespace A127368.P4291171796284712835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A349317 (n + 1)) * A002260 (n + 1)

end

end A127368.P4291171796284712835

namespace A127368

/-- `(1-A349317(n+1))*A002260(n+1)` -/
def P4291171796284712835.Spec : Prop :=
  ∀ n, P4291171796284712835.a n = A127368 (n + 1)

end A127368

/-! ## A127368.P4048393848469787445

`round(acot(A050873(n+1)))*A002260(n+1)`
-/

namespace A127368.P4048393848469787445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (SequenceMachineLib.acot (A050873 (n + 1) : ℝ)) * A002260 (n + 1)

end

end A127368.P4048393848469787445

namespace A127368

/-- `round(acot(A050873(n+1)))*A002260(n+1)` -/
def P4048393848469787445.Spec : Prop :=
  ∀ n, P4048393848469787445.a n = A127368 (n + 1)

end A127368

/-! ## A127368.P3446937371142094996

`round(acot(A050873(n+1)))*A164306(n+1)`
-/

namespace A127368.P3446937371142094996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (SequenceMachineLib.acot (A050873 (n + 1) : ℝ)) * A164306 (n + 1)

end

end A127368.P3446937371142094996

namespace A127368

/-- `round(acot(A050873(n+1)))*A164306(n+1)` -/
def P3446937371142094996.Spec : Prop :=
  ∀ n, P3446937371142094996.a n = A127368 (n + 1)

end A127368

/-! ## A127368.P8040561218215226359

`A051537(n+1)*A054521(n+1)/A054531(n+1)`
-/

namespace A127368.P8040561218215226359
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051537 (n + 1) * A054521 (n + 1) : ℚ) / (A054531 (n + 1) : ℚ)

end

end A127368.P8040561218215226359

namespace A127368

/-- `A051537(n+1)*A054521(n+1)/A054531(n+1)` -/
def P8040561218215226359.Spec : Prop :=
  ∀ n, P8040561218215226359.a n = (A127368 (n + 1) : ℚ)

end A127368

/-! ## A127368.P9825704818938380000

`A002260(n+1)*A058348(A008516(n)%A050873(n+1))`
-/

namespace A127368.P9825704818938380000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) * A058348 (Int.tmod (A008516 n) (A050873 (n + 1))).toNat

end

end A127368.P9825704818938380000

namespace A127368

/-- `A002260(n+1)*A058348(A008516(n)%A050873(n+1))` -/
def P9825704818938380000.Spec : Prop :=
  ∀ n, P9825704818938380000.a n = A127368 (n + 1)

end A127368

/-! ## A127368.P6407755906657147964

`A002260(n+1)*A058348(A016754(n)%A050873(n+1))`
-/

namespace A127368.P6407755906657147964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) * A058348 (Int.tmod (A016754 n) (A050873 (n + 1))).toNat

end

end A127368.P6407755906657147964

namespace A127368

/-- `A002260(n+1)*A058348(A016754(n)%A050873(n+1))` -/
def P6407755906657147964.Spec : Prop :=
  ∀ n, P6407755906657147964.a n = A127368 (n + 1)

end A127368

/-!
# A127369: a(n) = (n^3+n)*4^n.

The programs for A127369, the canonical program `A127369.P1128060656276061951` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A127369 has offset 1).

The definition of A127369 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `((n+1)^3+n+1)*4^(n+1)` (program `A127369.P1128060656276061951`, by `A127369.P1128060656276061951.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A127369.P1128060656276061951

`((n+1)^3+n+1)*4^(n+1)`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A127369

/-- `((n+1)^3+n+1)*4^(n+1)` -/
def P1128060656276061951.Spec : Prop :=
  ∀ n, (P1128060656276061951.a n : ℤ) = A127369 (n + 1)

theorem P1128060656276061951.correct : P1128060656276061951.Spec := by
  intro n
  simp only [A127369, Nat.add_sub_cancel]

end A127369

/-! ## A127369.P9982884498016825104

`A128987(n+1)+A116144(n+1)`
-/

namespace A127369.P9982884498016825104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128987 (n + 1) + A116144 (n + 1)

end

end A127369.P9982884498016825104

namespace A127369

/-- `A128987(n+1)+A116144(n+1)` -/
def P9982884498016825104.Spec : Prop :=
  ∀ n, P9982884498016825104.a n = A127369 (n + 1)

theorem P9982884498016825104.correct : P9982884498016825104.Spec := by
  intro n
  simp only [A127369, Nat.add_sub_cancel, A127369.P9982884498016825104.a, A127369.P1128060656276061951.a, A116144, A116144.P18441866221327377996.a, A128987, A128987.P6165647653934997466.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A127369

/-! ## A127369.P13970515832325289839

`A116144(n+1)+A036289(n+1)*A128796(n+1)`
-/

namespace A127369.P13970515832325289839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116144 (n + 1) + A036289 (n + 1) * A128796 (n + 1)

end

end A127369.P13970515832325289839

namespace A127369

/-- `A116144(n+1)+A036289(n+1)*A128796(n+1)` -/
def P13970515832325289839.Spec : Prop :=
  ∀ n, P13970515832325289839.a n = A127369 (n + 1)

end A127369

/-! ## A127369.P2118555793006803418

`A129004(n+1)-A000079(n+1)*A128796(n+1)`
-/

namespace A127369.P2118555793006803418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129004 (n + 1) - A000079 (n + 1) * A128796 (n + 1)

end

end A127369.P2118555793006803418

namespace A127369

/-- `A129004(n+1)-A000079(n+1)*A128796(n+1)` -/
def P2118555793006803418.Spec : Prop :=
  ∀ n, P2118555793006803418.a n = A127369 (n + 1)

end A127369

/-! ## A127369.P8341524521968088938

`A014477(n+1)*A036289(n+1)-A014477(2*n+1)`
-/

namespace A127369.P8341524521968088938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014477 (n + 1) * A036289 (n + 1) - A014477 (2 * n + 1)

end

end A127369.P8341524521968088938

namespace A127369

/-- `A014477(n+1)*A036289(n+1)-A014477(2*n+1)` -/
def P8341524521968088938.Spec : Prop :=
  ∀ n, P8341524521968088938.a n = A127369 (n + 1)

end A127369

/-! ## A127369.P15325177429867271183

`A128048(n+1)/A000079(n+1)`
-/

namespace A127369.P15325177429867271183
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A128048 (n + 1) : ℚ) / (A000079 (n + 1) : ℚ)

end

end A127369.P15325177429867271183

namespace A127369

/-- `A128048(n+1)/A000079(n+1)` -/
def P15325177429867271183.Spec : Prop :=
  ∀ n, P15325177429867271183.a n = (A127369 (n + 1) : ℚ)

end A127369

/-! ## A127369.P12196392947198425508

`A119635(n+1)*A128043(n+1)/A121607(n+1)`
-/

namespace A127369.P12196392947198425508
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A119635 (n + 1) * A128043 (n + 1) : ℚ) / (A121607 (n + 1) : ℚ)

end

end A127369.P12196392947198425508

namespace A127369

/-- `A119635(n+1)*A128043(n+1)/A121607(n+1)` -/
def P12196392947198425508.Spec : Prop :=
  ∀ n, P12196392947198425508.a n = (A127369 (n + 1) : ℚ)

end A127369

/-! ## A127369.P1322230360560938801

`A121607(n+1)*A128048(n+1)/A128043(n+1)`
-/

namespace A127369.P1322230360560938801
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A121607 (n + 1) * A128048 (n + 1) : ℚ) / (A128043 (n + 1) : ℚ)

end

end A127369.P1322230360560938801

namespace A127369

/-- `A121607(n+1)*A128048(n+1)/A128043(n+1)` -/
def P1322230360560938801.Spec : Prop :=
  ∀ n, P1322230360560938801.a n = (A127369 (n + 1) : ℚ)

end A127369

/-!
# A127371: Triangle read by rows: A051731 * A054521, as infinite lower triangular matrices.

The programs for A127371, there is no canonical definition to state claims against.
-/

/-! ## A127371.P1733936698293927369

`A143613(n+1)/A128227(n)`
-/

namespace A127371.P1733936698293927369
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A143613 (n + 1) : ℚ) / (A128227 n : ℚ)

end

end A127371.P1733936698293927369

/-! ## A127371.P7346044195113568114

`A143613(n+1)/A193738(n)`
-/

namespace A127371.P7346044195113568114
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A143613 (n + 1) : ℚ) / (A193738 n : ℚ)

end

end A127371.P7346044195113568114

/-! ## A127371.P8439933918759455456

`A127447(n+1)/A002024(n+1)`
-/

namespace A127371.P8439933918759455456
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127447 (n + 1) : ℚ) / (A002024 (n + 1) : ℚ)

end

end A127371.P8439933918759455456

/-! ## A127371.P12949044589948122783

`A143613(n+1)/A002260(n+1)`
-/

namespace A127371.P12949044589948122783
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A143613 (n + 1) : ℚ) / (A002260 (n + 1) : ℚ)

end

end A127371.P12949044589948122783

/-! ## A127371.P9955315089238340972

`A143613(n+1)/A080511(n+1)`
-/

namespace A127371.P9955315089238340972
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A143613 (n + 1) : ℚ) / (A080511 (n + 1) : ℚ)

end

end A127371.P9955315089238340972

/-! ## A127371.P2243324739062446804

`A143613(n+1)/A080818(n+1)`
-/

namespace A127371.P2243324739062446804
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A143613 (n + 1) : ℚ) / (A080818 (n + 1) : ℚ)

end

end A127371.P2243324739062446804

/-! ## A127371.P1488387992586444697

`A143613(n+1)/A128077(n+1)`
-/

namespace A127371.P1488387992586444697
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A143613 (n + 1) : ℚ) / (A128077 (n + 1) : ℚ)

end

end A127371.P1488387992586444697

/-! ## A127371.P469680030798141175

`A127447(n+1)/(A075362(n+2)-A075362(n+1))`
-/

namespace A127371.P469680030798141175
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127447 (n + 1) : ℚ) / (A075362 (n + 2) - A075362 (n + 1) : ℚ)

end

end A127371.P469680030798141175

/-! ## A127371.P11258950226028070610

`A143613(n+1)/A081517(n+1)`
-/

namespace A127371.P11258950226028070610
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A143613 (n + 1) : ℚ) / (A081517 (n + 1) : ℚ)

end

end A127371.P11258950226028070610

/-! ## A127371.P15975956388637092013

`A127447(n+1)/A183110(n+1)`
-/

namespace A127371.P15975956388637092013
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127447 (n + 1) : ℚ) / (A183110 (n + 1) : ℚ)

end

end A127371.P15975956388637092013

/-! ## A127371.P16663400389650766745

`A143613(n+1)/A080508(n+1)`
-/

namespace A127371.P16663400389650766745
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A143613 (n + 1) : ℚ) / (A080508 (n + 1) : ℚ)

end

end A127371.P16663400389650766745

/-!
# A127372: Triangle read by rows: A127170 * A054521 as infinite lower triangular matrices.

The programs for A127372, there is no canonical definition to state claims against.
-/

/-! ## A127372.P18348949516386914171

`A348288(A157030(n+1)^3)`
-/

namespace A127372.P18348949516386914171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348288 (A157030 (n + 1) ^ 3).toNat

end

end A127372.P18348949516386914171

/-! ## A127372.P8471421235077000468

`A000193(4^A157030(n+1))`
-/

namespace A127372.P8471421235077000468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000193 (SequenceMachineLib.roundAway ((4 : ℚ) ^ (A157030 (n + 1) : ℤ))).toNat

end

end A127372.P8471421235077000468

/-! ## A127372.P2917912174128783219

`A000195(5^A157030(n+1))`
-/

namespace A127372.P2917912174128783219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000195 (SequenceMachineLib.roundAway ((5 : ℚ) ^ (A157030 (n + 1) : ℤ))).toNat

end

end A127372.P2917912174128783219

/-! ## A127372.P4127756698409745663

`A007895(A157030(n+1)^6)`
-/

namespace A127372.P4127756698409745663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007895 (A157030 (n + 1) ^ 6).toNat

end

end A127372.P4127756698409745663

/-! ## A127372.P17329812253030079909

`A060130(A157030(n+1)^7)`
-/

namespace A127372.P17329812253030079909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060130 (A157030 (n + 1) ^ 7).toNat

end

end A127372.P17329812253030079909

/-!
# A127373: Triangle, row sums = A023896, left column = A053570.

The programs for A127373, there is no canonical definition to state claims against.
-/

/-! ## A127373.P11153417296016806874

`A340988(A128434(n+3))+A194812(n+1)`
-/

namespace A127373.P11153417296016806874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340988 ((A128434 (n + 3)).toNat + 91) + A194812 (n + 1)

end

end A127373.P11153417296016806874

/-! ## A127373.P2360150963994127078

`A194812(n+1)+A007814(A060920(3*n))`
-/

namespace A127373.P2360150963994127078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194812 (n + 1) + A007814 (A060920 (3 * n)).toNat

end

end A127373.P2360150963994127078

/-! ## A127373.P1507816777247330600

`A340988(A028951(3*n+4))+A194812(n+1)`
-/

namespace A127373.P1507816777247330600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340988 ((A028951 (3 * n + 4)).toNat + 91) + A194812 (n + 1)

end

end A127373.P1507816777247330600

/-! ## A127373.P5678722764806804603

`xor(A124764(A000045(n)), A238343(n))`
-/

namespace A127373.P5678722764806804603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A124764 (A000045 n).toNat) (A238343 n)

end

end A127373.P5678722764806804603

/-!
# A127374: Triangle, row sums = A029935.

The programs for A127374, there is no canonical definition to state claims against.
-/

/-! ## A127374.P11280198159348505878

`A130296(n+1)%A221794(A127479(n+1))`
-/

namespace A127374.P11280198159348505878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A130296 (n + 1)) (A221794 (A127479 (n + 1)).toNat)

end

end A127374.P11280198159348505878

/-! ## A127374.P12829472161765857984

`A001222(A175353(n))*A287698(A287698(n))`
-/

namespace A127374.P12829472161765857984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A175353 n).toNat * A287698 (A287698 n).toNat

end

end A127374.P12829472161765857984

/-! ## A127374.P10767591041178109203

`and(A130296(n+1), A161000(A026491(n)))`
-/

namespace A127374.P10767591041178109203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A130296 (n + 1)) (A161000 (A026491 n).toNat)

end

end A127374.P10767591041178109203

/-! ## A127374.P12175668208609522577

`ceil(A127479(n+1)/A000005(A176639(n)))`
-/

namespace A127374.P12175668208609522577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A127479 (n + 1) : ℚ) / (A000005 (A176639 n).toNat : ℚ)⌉

end

end A127374.P12175668208609522577

/-! ## A127374.P13594295774640343329

`A187637((n+1)^A147861(n+1))`
-/

namespace A127374.P13594295774640343329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187637 (SequenceMachineLib.roundAway ((n + 1 : ℚ) ^ (A147861 (n + 1) : ℤ))).toNat

end

end A127374.P13594295774640343329

/-!
# A127375: Triangle A126988 * A054521, as infinite lower triangular matrices.

The programs for A127375, there is no canonical definition to state claims against.
-/

/-! ## A127375.P3024333283127785960

`A127445(n+1)/A128227(n)`
-/

namespace A127375.P3024333283127785960
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127445 (n + 1) : ℚ) / (A128227 n : ℚ)

end

end A127375.P3024333283127785960

/-! ## A127375.P6909125767153158902

`A127445(n+1)/A193738(n)`
-/

namespace A127375.P6909125767153158902
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127445 (n + 1) : ℚ) / (A193738 n : ℚ)

end

end A127375.P6909125767153158902

/-! ## A127375.P6651667882683659818

`A127445(n+1)/A002260(n+1)`
-/

namespace A127375.P6651667882683659818
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127445 (n + 1) : ℚ) / (A002260 (n + 1) : ℚ)

end

end A127375.P6651667882683659818

/-! ## A127375.P9906080740588229458

`A127445(n+1)/A080511(n+1)`
-/

namespace A127375.P9906080740588229458
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127445 (n + 1) : ℚ) / (A080511 (n + 1) : ℚ)

end

end A127375.P9906080740588229458

/-! ## A127375.P11031710639824428276

`A127445(n+1)/A080818(n+1)`
-/

namespace A127375.P11031710639824428276
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127445 (n + 1) : ℚ) / (A080818 (n + 1) : ℚ)

end

end A127375.P11031710639824428276

/-! ## A127375.P5551282024904901306

`A127445(n+1)/A128077(n+1)`
-/

namespace A127375.P5551282024904901306
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127445 (n + 1) : ℚ) / (A128077 (n + 1) : ℚ)

end

end A127375.P5551282024904901306

/-! ## A127375.P1516095911699644676

`A127445(n+1)/A081517(n+1)`
-/

namespace A127375.P1516095911699644676
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127445 (n + 1) : ℚ) / (A081517 (n + 1) : ℚ)

end

end A127375.P1516095911699644676

/-! ## A127375.P15916975489007673104

`A127445(n+1)/A080508(n+1)`
-/

namespace A127375.P15916975489007673104
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127445 (n + 1) : ℚ) / (A080508 (n + 1) : ℚ)

end

end A127375.P15916975489007673104

/-!
# A127376: Perpetual calendar, giving the calendar for successive years of the 400-year cycle starting in year xy01, where xy is a 2-digit multiple of 4. Calendars 1 to 7 are for normal years starting on Monday, Tuesday, ..., Sunday; 8 to 14 are for leap years likewise.

The programs for A127376, there is no canonical definition to state claims against.
-/

/-! ## A127376.P11385729822088186464

`A090651(n+4)`
-/

namespace A127376.P11385729822088186464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090651 (n + 4 + 1901)

end

end A127376.P11385729822088186464

/-! ## A127376.P15329536683307561222

`A090651(A020705(n))%15`
-/

namespace A127376.P15329536683307561222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A090651 ((A020705 n).toNat + 1901)) 15

end

end A127376.P15329536683307561222

/-! ## A127376.P16754191330384613424

`A090651(A020705(n))^A178334(n)`
-/

namespace A127376.P16754191330384613424
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A090651 ((A020705 n).toNat + 1901) : ℚ) ^ (A178334 n : ℤ)

end

end A127376.P16754191330384613424

/-! ## A127376.P14865508615691160829

`gcd(A000038(n), A090651(A020705(n)))`
-/

namespace A127376.P14865508615691160829
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A090651 ((A020705 n).toNat + 1901))

end

end A127376.P14865508615691160829

/-! ## A127376.P8377657089262159484

`lcm(A033999(n), A090651(A020705(n)))`
-/

namespace A127376.P8377657089262159484
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A090651 ((A020705 n).toNat + 1901))

end

end A127376.P8377657089262159484

/-! ## A127376.P4019804897938403025

`or(A000007(n), A090651(A020705(n)))`
-/

namespace A127376.P4019804897938403025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A090651 ((A020705 n).toNat + 1901))

end

end A127376.P4019804897938403025

/-! ## A127376.P11506648221272360393

`A007318(∑[n])*A090651(A020705(n))`
-/

namespace A127376.P11506648221272360393
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A090651 ((A020705 n).toNat + 1901)

end

end A127376.P11506648221272360393

/-! ## A127376.P9824345594657006865

`A014963(A008458(n))*A090651(A020705(n))`
-/

namespace A127376.P9824345594657006865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A008458 n).toNat * A090651 ((A020705 n).toNat + 1901)

end

end A127376.P9824345594657006865

/-!
# A127377: Signature-permutation of a Catalan automorphism, auxiliary bijection for Callan's 2006 bijection on Dyck Paths.

The programs for A127377, there is no canonical definition to state claims against.
-/

/-! ## A127377.P11559326572442952859

`A127379(A154126(n))`
-/

namespace A127377.P11559326572442952859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127379 (A154126 n).toNat

end

end A127377.P11559326572442952859

/-! ## A127377.P646956009369199376

`A127379(A127378(A127379(n)))`
-/

namespace A127377.P646956009369199376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127379 (A127378 (A127379 n).toNat).toNat

end

end A127377.P646956009369199376

/-! ## A127377.P6603890229629564135

`A127387(A127380(A127378(A127387(A127380(n)))))`
-/

namespace A127377.P6603890229629564135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127387 (A127380 (A127378 (A127387 (A127380 n).toNat).toNat).toNat).toNat

end

end A127377.P6603890229629564135

/-! ## A127377.P1736577357815467275

`A122354(lt[A057862(n+1), 233])`
-/

namespace A127377.P1736577357815467275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057862 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  233

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122354 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A127377.P1736577357815467275

/-! ## A127377.P4412206603431771307

`A127387(A127380(n)%A127302(3*n))`
-/

namespace A127377.P4412206603431771307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127387 (Int.tmod (A127380 n) (A127302 (3 * n))).toNat

end

end A127377.P4412206603431771307

/-!
# A127378: Signature-permutation of a Catalan automorphism, inverse of A127377.

The programs for A127378, there is no canonical definition to state claims against.
-/

/-! ## A127378.P8751195455418142858

`A154126(A127380(n))`
-/

namespace A127378.P8751195455418142858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154126 (A127380 n).toNat

end

end A127378.P8751195455418142858

/-! ## A127378.P11795571029471821823

`A127380(A127377(A127380(n)%A014137(n)))`
-/

namespace A127378.P11795571029471821823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127380 (A127377 (Int.tmod (A127380 n) (A014137 n)).toNat).toNat

end

end A127378.P11795571029471821823

/-! ## A127378.P6577203456932207677

`A127380(A127377(A127380(n))%A031443(n+1))`
-/

namespace A127378.P6577203456932207677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127380 (Int.tmod (A127377 (A127380 n).toNat) (A031443 (n + 1))).toNat

end

end A127378.P6577203456932207677

/-! ## A127378.P6353707075549650340

`A014963(A247640(n))*A154125(A122302(n))`
-/

namespace A127378.P6353707075549650340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A247640 n).toNat * A154125 (A122302 n).toNat

end

end A127378.P6353707075549650340

/-! ## A127378.P16922171500566576978

`A127380(A127387(n)%A127302(3*n))`
-/

namespace A127378.P16922171500566576978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127380 (Int.tmod (A127387 n) (A127302 (3 * n))).toNat

end

end A127378.P16922171500566576978

/-!
# A127379: Signature-permutation of Callan's 2006 bijection on Dyck Paths, mirrored version (A057164-conjugate).

The programs for A127379, there is no canonical definition to state claims against.
-/

/-! ## A127379.P12332564940053171201

`A127377(A154126(n))`
-/

namespace A127379.P12332564940053171201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127377 (A154126 n).toNat

end

end A127379.P12332564940053171201

/-! ## A127379.P1819026582269072135

`A057164(A127381(A057164(n)))`
-/

namespace A127379.P1819026582269072135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057164 (A127381 (A057164 n).toNat).toNat

end

end A127379.P1819026582269072135

/-! ## A127379.P6301598273929971758

`A127380(A127380(A127380(n)))`
-/

namespace A127379.P6301598273929971758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127380 (A127380 (A127380 n).toNat).toNat

end

end A127379.P6301598273929971758

/-! ## A127379.P10295268928405064103

`A127388(A089870(n))%A179679(n+1)`
-/

namespace A127379.P10295268928405064103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A127388 (A089870 n).toNat) (A179679 (n + 1))

end

end A127379.P10295268928405064103

/-!
# A127380: Signature-permutation of the inverse of Callan's 2006 bijection on Dyck Paths, mirrored version (A057164-conjugate).

The programs for A127380, there is no canonical definition to state claims against.
-/

/-! ## A127380.P17201206899307708841

`A057164(A127382(A057164(n)))`
-/

namespace A127380.P17201206899307708841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057164 (A127382 (A057164 n).toNat).toNat

end

end A127380.P17201206899307708841

/-! ## A127380.P13917196272360707173

`A122349(A127379(A122349(n)))`
-/

namespace A127380.P13917196272360707173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122349 (A127379 (A122349 n).toNat).toNat

end

end A127380.P13917196272360707173

/-! ## A127380.P15648367416167541387

`A127379(A127379(A127379(n)))`
-/

namespace A127380.P15648367416167541387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127379 (A127379 (A127379 n).toNat).toNat

end

end A127380.P15648367416167541387

/-! ## A127380.P2010558399714276018

`A154126(A127378(n))`
-/

namespace A127380.P2010558399714276018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154126 (A127378 n).toNat

end

end A127380.P2010558399714276018

/-! ## A127380.P11614855068209747107

`A122350(n)%A196174(n+1)`
-/

namespace A127380.P11614855068209747107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A122350 n) (A196174 (n + 1))

end

end A127380.P11614855068209747107

/-! ## A127380.P11343702905122468811

`A122350(n)/A001065(A322551(n+1))`
-/

namespace A127380.P11343702905122468811
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A122350 n : ℚ) / (A001065 (A322551 (n + 1)).toNat : ℚ)

end

end A127380.P11343702905122468811

/-!
# A127381: Signature-permutation of Callan's 2006 bijection on Dyck Paths.

The programs for A127381, there is no canonical definition to state claims against.
-/

/-! ## A127381.P5117173476630464744

`A057164(A127379(A057164(n)))`
-/

namespace A127381.P5117173476630464744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057164 (A127379 (A057164 n).toNat).toNat

end

end A127381.P5117173476630464744

/-! ## A127381.P6071704368499157111

`A127382(A127382(A127382(n)))%A115761(n+1)`
-/

namespace A127381.P6071704368499157111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A127382 (A127382 (A127382 n).toNat).toNat) (A115761 (n + 1))

end

end A127381.P6071704368499157111

/-! ## A127381.P16836566456803975762

`A123719(A085169(n)%A127302(n))`
-/

namespace A127381.P16836566456803975762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123719 (Int.tmod (A085169 n) (A127302 n)).toNat

end

end A127381.P16836566456803975762

/-!
# A127382: Signature-permutation of the inverse of Callan's 2006 bijection (A127381) on Dyck Paths.

The programs for A127382, there is no canonical definition to state claims against.
-/

/-! ## A127382.P15632090045952313274

`A057164(A127380(A057164(n)))`
-/

namespace A127382.P15632090045952313274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057164 (A127380 (A057164 n).toNat).toNat

end

end A127382.P15632090045952313274

/-! ## A127382.P7946514697695603792

`A085170(A123719(n)%A127302(n))`
-/

namespace A127382.P7946514697695603792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085170 (Int.tmod (A123719 n) (A127302 n)).toNat

end

end A127382.P7946514697695603792

/-! ## A127382.P6586522364030683654

`A085169(lt[A174502(n), A115172(n+1)])`
-/

namespace A127382.P6586522364030683654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174502 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115172 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085169 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A127382.P6586522364030683654

/-! ## A127382.P6591810931641823671

`A085169(lt[A308857(n), A008443(n+1)])`
-/

namespace A127382.P6591810931641823671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308857 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008443 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085169 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A127382.P6591810931641823671

/-! ## A127382.P15988322115706127988

`A085169(lt[A319475(n), A138673(n+2)])`
-/

namespace A127382.P15988322115706127988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319475 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138673 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085169 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A127382.P15988322115706127988

/-!
# A127383: Number of cycles in range [A014137(n-1)..A014138(n-1)] of permutation A127377/A127378.

The programs for A127383, there is no canonical definition to state claims against.
-/

/-! ## A127383.P15289953134396988145

`∏{p}[A192262(n²), #]`
-/

namespace A127383.P15289953134396988145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192262 (n ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A127383.P15289953134396988145

/-! ## A127383.P17339457626878479025

`A192262((char[1]+n)²)`
-/

namespace A127383.P17339457626878479025
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192262 (((if ∃ j, f1 j = n then 1 else 0) + n) ^ 2)

end

end A127383.P17339457626878479025

/-! ## A127383.P13487017338898542447

`A371587(A222589(n))`
-/

namespace A127383.P13487017338898542447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371587 (A222589 n).toNat

end

end A127383.P13487017338898542447

/-! ## A127383.P12900392449843398071

`A028310(A192262(n²))`
-/

namespace A127383.P12900392449843398071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A192262 (n ^ 2)).toNat

end

end A127383.P12900392449843398071

/-!
# A127384: Number of cycles in range [A014137(n-1)..A014138(n-1)] of permutations A127379/A127380 and A127381/A127382.

The programs for A127384, there is no canonical definition to state claims against.
-/

/-! ## A127384.P221675332799181600

`A230980(A000237(n+1)+1)-6*A336757(n+1)`
-/

namespace A127384.P221675332799181600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (A000237 (n + 1) + 1).toNat - 6 * A336757 (n + 1)

end

end A127384.P221675332799181600

/-! ## A127384.P5967025366530142692

`A230980(A000237(n+1)+1)-A336757(A093083(n))`
-/

namespace A127384.P5967025366530142692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (A000237 (n + 1) + 1).toNat - A336757 (A093083 n).toNat

end

end A127384.P5967025366530142692

/-! ## A127384.P15773903053300031398

`A230980(A000237(n+1)+1)-A336757(A337720(n))`
-/

namespace A127384.P15773903053300031398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (A000237 (n + 1) + 1).toNat - A336757 (A337720 n).toNat

end

end A127384.P15773903053300031398

/-! ## A127384.P10145842298838355411

`A337721(A024645(n))`
-/

namespace A127384.P10145842298838355411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337721 (A024645 n).toNat

end

end A127384.P10145842298838355411

/-!
# A127385: Number of cycles in range [A014137(n-1)..A014138(n-1)] of permutation A127387.

The programs for A127385, there is no canonical definition to state claims against.
-/

/-! ## A127385.P5883120318112682550

`(A127389(n)+A000108(n))/2`
-/

namespace A127385.P5883120318112682550
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127389 n + A000108 n : ℚ) / 2

end

end A127385.P5883120318112682550

/-! ## A127385.P18332259428569710598

`A302042(A127389(n)+A000108(n))`
-/

namespace A127385.P18332259428569710598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302042 (A127389 n + A000108 n).toNat

end

end A127385.P18332259428569710598

/-! ## A127385.P8179713889967942825

`A332893(A127389(n)+A000108(n))`
-/

namespace A127385.P8179713889967942825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332893 (A127389 n + A000108 n).toNat

end

end A127385.P8179713889967942825

/-! ## A127385.P7837598532532397725

`A004525(A127389(n)+A000108(n))`
-/

namespace A127385.P7837598532532397725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A127389 n + A000108 n).toNat

end

end A127385.P7837598532532397725

/-! ## A127385.P3520424543449582744

`A004526(A127389(n)+A000108(n))`
-/

namespace A127385.P3520424543449582744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A127389 n + A000108 n).toNat

end

end A127385.P3520424543449582744

/-!
# A127386: Number of cycles in range [A014137(n-1)..A014138(n-1)] of permutation A127388.

The programs for A127386, there is no canonical definition to state claims against.
-/

/-! ## A127386.P4932860484982203526

`(A152172(n)+A000108(n))/2`
-/

namespace A127386.P4932860484982203526
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A152172 n + A000108 n : ℚ) / 2

end

end A127386.P4932860484982203526

/-! ## A127386.P9408926450843768739

`A026741(A152172(n)+A000108(n))`
-/

namespace A127386.P9408926450843768739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A152172 n + A000108 n).toNat

end

end A127386.P9408926450843768739

/-! ## A127386.P261410688717203065

`A210357(A003080(n))`
-/

namespace A127386.P261410688717203065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210357 (A003080 n).toNat

end

end A127386.P261410688717203065

/-! ## A127386.P1837943564703239776

`A210357(A114509(n))`
-/

namespace A127386.P1837943564703239776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210357 (A114509 n).toNat

end

end A127386.P1837943564703239776

/-!
# A127387: Signature-permutation of a Catalan automorphism, a self-inverse variant of A127377.

The programs for A127387, there is no canonical definition to state claims against.
-/

/-! ## A127387.P12468043931546073484

`A122334(A082353(n*A278657(n)))`
-/

namespace A127387.P12468043931546073484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122334 (A082353 ((n : ℤ) * A278657 n).toNat).toNat

end

end A127387.P12468043931546073484

/-! ## A127387.P6005857232826787812

`A122334(A082353(n)^A278657(n))`
-/

namespace A127387.P6005857232826787812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122334 (SequenceMachineLib.roundAway ((A082353 n : ℚ) ^ (A278657 n : ℤ))).toNat

end

end A127387.P6005857232826787812

/-! ## A127387.P14404733528047980606

`A122334(lcm(A082353(n), A278657(n)))`
-/

namespace A127387.P14404733528047980606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122334 (Int.lcm (A082353 n) (A278657 n))

end

end A127387.P14404733528047980606

/-! ## A127387.P10623293024935739653

`A122334(C(A082353(n), A278657(n)))`
-/

namespace A127387.P10623293024935739653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122334 (Nat.choose (A082353 n).toNat (A278657 n).toNat)

end

end A127387.P10623293024935739653

/-! ## A127387.P6604258944016900919

`A122335(A122293(n)%A050921(3*(n+1)))`
-/

namespace A127387.P6604258944016900919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122335 (Int.tmod (A122293 n) (A050921 (3 * (n + 1)))).toNat

end

end A127387.P6604258944016900919

/-!
# A127388: Signature-permutation of a Catalan automorphism, a self-inverse variant of A127379.

The programs for A127388, there is no canonical definition to state claims against.
-/

/-! ## A127388.P12478517893874002796

`A127379(A089869(n))%A179679(n+1)`
-/

namespace A127388.P12478517893874002796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A127379 (A089869 n).toNat) (A179679 (n + 1))

end

end A127388.P12478517893874002796

/-! ## A127388.P2869438262604852468

`A127379(A089870(n))+A000007(A185545(n+1))`
-/

namespace A127388.P2869438262604852468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127379 (A089870 n).toNat + A000007 (A185545 (n + 1)).toNat

end

end A127388.P2869438262604852468

/-! ## A127388.P13721214158646918529

`A033999(A048243(n+1))*A127379(A089869(n))`
-/

namespace A127388.P13721214158646918529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A048243 (n + 1)).toNat * A127379 (A089869 n).toNat

end

end A127388.P13721214158646918529

/-! ## A127388.P2935916187424860233

`A127379(A089870(n))*A217668(A179679(n+1))`
-/

namespace A127388.P2935916187424860233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127379 (A089870 n).toNat * A217668 (A179679 (n + 1)).toNat

end

end A127388.P2935916187424860233

/-! ## A127388.P6111130403431541324

`A127379(A089870(n))^A192015(A080663(n+1))`
-/

namespace A127388.P6111130403431541324
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127379 (A089870 n).toNat : ℚ) ^ (A192015 (A080663 (n + 1)).toNat : ℤ)

end

end A127388.P6111130403431541324

/-! ## A127388.P10802649723999318261

`A001221(A161681(n+1))*A127379(A089870(n))`
-/

namespace A127388.P10802649723999318261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A161681 (n + 1)).toNat * A127379 (A089870 n).toNat

end

end A127388.P10802649723999318261

/-!
# A127389: Number of fixed points in range [A014137(n-1)..A014138(n-1)] of permutations A127377/A127378 and A127387.

The programs for A127389, there is no canonical definition to state claims against.
-/

/-! ## A127389.P7428168227654189996

`A152173(floor(acot(n))+n+1)`
-/

namespace A127389.P7428168227654189996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152173 (⌊SequenceMachineLib.acot (n : ℝ)⌋ + (n + 1 : ℤ)).toNat

end

end A127389.P7428168227654189996

/-! ## A127389.P3031990243444717260

`A025243(n+1)-a(n-1)` with `a(0)=1`
-/

namespace A127389.P3031990243444717260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A025243 (n + 1) - a (n - 1)

end

end A127389.P3031990243444717260

/-! ## A127389.P6693643180371525856

`A152173(A028310(n)+1)`
-/

namespace A127389.P6693643180371525856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152173 (A028310 n + 1).toNat

end

end A127389.P6693643180371525856

/-! ## A127389.P4390720508284837390

`A152173(A254667(n+1))`
-/

namespace A127389.P4390720508284837390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152173 (A254667 (n + 1)).toNat

end

end A127389.P4390720508284837390

/-! ## A127389.P181580396409412398

`A152173(A233583(n+2))`
-/

namespace A127389.P181580396409412398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152173 (A233583 (n + 2)).toNat

end

end A127389.P181580396409412398

/-! ## A127389.P14559420819352408333

`A152173(A054977(n)+n)`
-/

namespace A127389.P14559420819352408333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152173 (A054977 n + (n : ℤ)).toNat

end

end A127389.P14559420819352408333

/-! ## A127389.P10592743929328402839

`A152173(ceil(log2(A052548(n))))`
-/

namespace A127389.P10592743929328402839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152173 ⌈Real.logb 2 (A052548 n : ℝ)⌉.toNat

end

end A127389.P10592743929328402839

/-! ## A127389.P18075675305823727158

`A152173(A000007(n)+1+n)`
-/

namespace A127389.P18075675305823727158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152173 (A000007 n + 1 + (n : ℤ)).toNat

end

end A127389.P18075675305823727158

/-! ## A127389.P6442303188624332220

`A152173(A004277(n)+1-n)`
-/

namespace A127389.P6442303188624332220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152173 (A004277 n + (1 - (n : ℤ))).toNat

end

end A127389.P6442303188624332220

/-! ## A127389.P8296655670640093304

`A152173(1-(n-A004277(n)))`
-/

namespace A127389.P8296655670640093304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152173 (1 - ((n : ℤ) - A004277 n)).toNat

end

end A127389.P8296655670640093304

/-! ## A127389.P1723234957316934992

`A152173(A004273(n)+2-n)`
-/

namespace A127389.P1723234957316934992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152173 (A004273 n + (2 - (n : ℤ))).toNat

end

end A127389.P1723234957316934992

/-! ## A127389.P12505094210686561087

`A152173(2-(n-A004273(n)))`
-/

namespace A127389.P12505094210686561087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152173 (2 - ((n : ℤ) - A004273 n)).toNat

end

end A127389.P12505094210686561087

/-!
# A127391: Series expansion of the elliptic function sqrt(k) = theta_2/theta_3 in powers of q^(1/4).

The programs for A127391, there is no canonical definition to state claims against.
-/

/-! ## A127391.P12035072169823486113

`and(-2, A208274(n))`
-/

namespace A127391.P12035072169823486113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-2) (A208274 n)

end

end A127391.P12035072169823486113

/-! ## A127391.P8929414319893163499

`A208274(abs(1-n)+1)`
-/

namespace A127391.P8929414319893163499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208274 (|1 - (n : ℤ)| + 1).toNat

end

end A127391.P8929414319893163499

/-! ## A127391.P13196234297385727076

`(a(n-1)-1)*A208604(n)` with `a(0)=0`
-/

namespace A127391.P13196234297385727076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (a (n - 1) - 1) * A208604 n

end

end A127391.P13196234297385727076

/-! ## A127391.P1130074573653795406

`A208274(n)-A000007(n)`
-/

namespace A127391.P1130074573653795406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208274 n - A000007 n

end

end A127391.P1130074573653795406

/-! ## A127391.P11230270108691213207

`A000007(n)-A208604(n)`
-/

namespace A127391.P11230270108691213207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n - A208604 n

end

end A127391.P11230270108691213207

/-! ## A127391.P18053984064511381430

`A000035(n)*A208274(n)`
-/

namespace A127391.P18053984064511381430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n * A208274 n

end

end A127391.P18053984064511381430

/-! ## A127391.P11070433842668630159

`A003815(n)*A208274(n)`
-/

namespace A127391.P11070433842668630159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003815 n * A208274 n

end

end A127391.P11070433842668630159

/-! ## A127391.P17054345002516607182

`A007877(n)*A208274(n)`
-/

namespace A127391.P17054345002516607182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007877 n * A208274 n

end

end A127391.P17054345002516607182

/-! ## A127391.P10900022344710653715

`A009531(n)*A208274(n)`
-/

namespace A127391.P10900022344710653715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009531 n * A208274 n

end

end A127391.P10900022344710653715

/-! ## A127391.P1715327917921476745

`A010873(n)*A208274(n)`
-/

namespace A127391.P1715327917921476745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010873 n * A208274 n

end

end A127391.P1715327917921476745

/-! ## A127391.P4411743332468380054

`A010673(n)*A214639(n)`
-/

namespace A127391.P4411743332468380054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010673 n * A214639 n

end

end A127391.P4411743332468380054

/-! ## A127391.P195513035038897525

`A036580(n)*A208274(n)`
-/

namespace A127391.P195513035038897525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036580 n * A208274 n

end

end A127391.P195513035038897525

/-! ## A127391.P10782232435033654956

`and(A208274(n), A228826(n))`
-/

namespace A127391.P10782232435033654956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A208274 n) (A228826 n)

end

end A127391.P10782232435033654956

/-! ## A127391.P8304144179570550752

`A007814(n+1)*A208274(n)`
-/

namespace A127391.P8304144179570550752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (n + 1) * A208274 n

end

end A127391.P8304144179570550752

/-! ## A127391.P3262018117670564712

`A049046(n+1)*A208274(n)`
-/

namespace A127391.P3262018117670564712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049046 (n + 1) * A208274 n

end

end A127391.P3262018117670564712

/-! ## A127391.P17345860815936580700

`A049240(n+1)*A208274(n)`
-/

namespace A127391.P17345860815936580700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049240 (n + 1) * A208274 n

end

end A127391.P17345860815936580700

/-! ## A127391.P6397846448587976659

`A208274(n)*A284893(n+1)`
-/

namespace A127391.P6397846448587976659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208274 n * A284893 (n + 1)

end

end A127391.P6397846448587976659

/-! ## A127391.P11480288613515967623

`A208274(n)*A284939(n+1)`
-/

namespace A127391.P11480288613515967623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208274 n * A284939 (n + 1)

end

end A127391.P11480288613515967623

/-! ## A127391.P16735740575244237063

`(1-A014457(n))*A208274(n)`
-/

namespace A127391.P16735740575244237063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A014457 n) * A208274 n

end

end A127391.P16735740575244237063

/-! ## A127391.P8116609184213679474

`(1-A029672(n))*A208274(n)`
-/

namespace A127391.P8116609184213679474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A029672 n) * A208274 n

end

end A127391.P8116609184213679474

/-!
# A127392: Expansion of the elliptic function sqrt(k(q))/q^(1/4) in powers of q, where sqrt(k(q)) = theta_2(q)/theta_3(q).

The programs for A127392, there is no canonical definition to state claims against.
-/

/-! ## A127392.P3972755512813513692

`2*A079006(n)`
-/

namespace A127392.P3972755512813513692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A079006 n

end

end A127392.P3972755512813513692

/-! ## A127392.P890685160424758874

`2*A281731(2*n)`
-/

namespace A127392.P890685160424758874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A281731 (2 * n)

end

end A127392.P890685160424758874

/-! ## A127392.P11579583042653115211

`A029841(Δ[n²])/2`
-/

namespace A127392.P11579583042653115211
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A029841 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 2

end

end A127392.P11579583042653115211

/-! ## A127392.P8605119396959149758

`1/2*A029841(2*n+1)`
-/

namespace A127392.P8605119396959149758
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * (A029841 (2 * n + 1) : ℚ)

end

end A127392.P8605119396959149758

/-! ## A127392.P8738110518951949631

`A230534(2*n)+A092869(2*n)`
-/

namespace A127392.P8738110518951949631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230534 (2 * n) + A092869 (2 * n)

end

end A127392.P8738110518951949631

/-! ## A127392.P7568174020590931078

`A230534(2*n)+A111374(2*n+1)`
-/

namespace A127392.P7568174020590931078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230534 (2 * n) + A111374 (2 * n + 1)

end

end A127392.P7568174020590931078

/-! ## A127392.P8298207468727179660

`A245434(2*n+1)-A111374(2*n+1)`
-/

namespace A127392.P8298207468727179660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245434 (2 * n + 1) - A111374 (2 * n + 1)

end

end A127392.P8298207468727179660

/-! ## A127392.P15468437744487837084

`A112152(2*n+1)/(2*A033999(n+1))`
-/

namespace A127392.P15468437744487837084
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112152 (2 * n + 1) : ℚ) / (2 * A033999 (n + 1) : ℚ)

end

end A127392.P15468437744487837084

/-! ## A127392.P16936500311323380645

`A112151(2*n+1)/(2*A057077(2*n))`
-/

namespace A127392.P16936500311323380645
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112151 (2 * n + 1) : ℚ) / (2 * A057077 (2 * n) : ℚ)

end

end A127392.P16936500311323380645

/-! ## A127392.P5369830483098150496

`A112151(2*n+1)/(2*A087960(2*n))`
-/

namespace A127392.P5369830483098150496
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112151 (2 * n + 1) : ℚ) / (2 * A087960 (2 * n) : ℚ)

end

end A127392.P5369830483098150496

/-! ## A127392.P813876988799750720

`A112143(2*n+1)/(A033999(2*n+1)-1)`
-/

namespace A127392.P813876988799750720
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112143 (2 * n + 1) : ℚ) / (A033999 (2 * n + 1) - 1 : ℚ)

end

end A127392.P813876988799750720

/-! ## A127392.P15340988294740214927

`A245434(2*n+1)-A208589(2*n+1)/2`
-/

namespace A127392.P15340988294740214927
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A245434 (2 * n + 1) : ℚ) - (A208589 (2 * n + 1) : ℚ) / 2

end

end A127392.P15340988294740214927

/-! ## A127392.P1298689566941843426

`A087960(2*n+1)*A112152(2*n+1)/2`
-/

namespace A127392.P1298689566941843426
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A087960 (2 * n + 1) * A112152 (2 * n + 1) : ℚ) / 2

end

end A127392.P1298689566941843426

/-! ## A127392.P14432281500198322877

`A127391(4*n+1)`
-/

namespace A127392.P14432281500198322877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127391 (4 * n + 1)

end

end A127392.P14432281500198322877

/-! ## A127392.P8646447383030887906

`A208274(4*n+1)`
-/

namespace A127392.P8646447383030887906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208274 (4 * n + 1)

end

end A127392.P8646447383030887906

/-! ## A127392.P3539956365253672936

`2*A214639(A016813(n))`
-/

namespace A127392.P3539956365253672936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A214639 (A016813 n).toNat

end

end A127392.P3539956365253672936

/-! ## A127392.P14098539782994205637

`2*A001936(n)*A033999(n)`
-/

namespace A127392.P14098539782994205637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A001936 n * A033999 n)

end

end A127392.P14098539782994205637

/-!
# A127393: Expansion of k/q^(1/2) in powers of q, where k is the elliptic function defined by sqrt(k) = theta_2/theta_3.

The programs for A127393, there is no canonical definition to state claims against.
-/

/-! ## A127393.P15320539796488450285

`4*A001938(n)`
-/

namespace A127393.P15320539796488450285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A001938 n

end

end A127393.P15320539796488450285

/-! ## A127393.P15543364695008014438

`A134746(Δ[n²])`
-/

namespace A127393.P15543364695008014438
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134746 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A127393.P15543364695008014438

/-! ## A127393.P17665605117691131544

`A216060(4*n+2)`
-/

namespace A127393.P17665605117691131544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216060 (4 * n + 2)

end

end A127393.P17665605117691131544

/-! ## A127393.P11951914361049995319

`-A210067(2*n+1)`
-/

namespace A127393.P11951914361049995319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A210067 (2 * n + 1)

end

end A127393.P11951914361049995319

/-! ## A127393.P4218089070696218332

`(-1)^n*A007096(2*n+1)`
-/

namespace A127393.P4218089070696218332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A007096 (2 * n + 1)

end

end A127393.P4218089070696218332

/-! ## A127393.P3591975252178836127

`or(1, A134746(A005408(n)))-1`
-/

namespace A127393.P3591975252178836127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A134746 (A005408 n).toNat) - 1

end

end A127393.P3591975252178836127

/-! ## A127393.P6635445056879367457

`A001938(n)/(A033999(n)/2)²`
-/

namespace A127393.P6635445056879367457
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001938 n : ℚ) / ((A033999 n : ℚ) / 2) ^ 2

end

end A127393.P6635445056879367457

/-! ## A127393.P16907800220870621283

`A007096(2*n+1)*A033999(n)`
-/

namespace A127393.P16907800220870621283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007096 (2 * n + 1) * A033999 n

end

end A127393.P16907800220870621283

/-! ## A127393.P463104137628967627

`A000038(n+1)-A210067(2*n+1)`
-/

namespace A127393.P463104137628967627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (n + 1) - A210067 (2 * n + 1)

end

end A127393.P463104137628967627

/-! ## A127393.P239395299377858271

`A033999(n+1)*A189925(2*n+1)`
-/

namespace A127393.P239395299377858271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (n + 1) * A189925 (2 * n + 1)

end

end A127393.P239395299377858271

/-! ## A127393.P11872505484229620283

`A112128(2*n+1)*A280560(n+1)`
-/

namespace A127393.P11872505484229620283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112128 (2 * n + 1) * A280560 (n + 1)

end

end A127393.P11872505484229620283

/-! ## A127393.P10921566321099771280

`A134746(2*n+1)+A127391(2*n)`
-/

namespace A127393.P10921566321099771280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134746 (2 * n + 1) + A127391 (2 * n)

end

end A127393.P10921566321099771280

/-! ## A127393.P15337609957092860619

`A153881(n+2)*A210067(2*n+1)`
-/

namespace A127393.P15337609957092860619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153881 (n + 2) * A210067 (2 * n + 1)

end

end A127393.P15337609957092860619

/-! ## A127393.P3359159167146756825

`char[A069762(n+4)]-A210067(2*n+1)`
-/

namespace A127393.P3359159167146756825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069762 (n + 4)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) - A210067 (2 * n + 1)

end

end A127393.P3359159167146756825

/-! ## A127393.P15830007893610258673

`A134746(2*n+1)+A134746(2*(n+1))`
-/

namespace A127393.P15830007893610258673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134746 (2 * n + 1) + A134746 (2 * (n + 1))

end

end A127393.P15830007893610258673

/-! ## A127393.P12699873821633551824

`1-(A210067(2*n+1)+A000034(2*n))`
-/

namespace A127393.P12699873821633551824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A210067 (2 * n + 1) + A000034 (2 * n))

end

end A127393.P12699873821633551824

/-! ## A127393.P7398768622691885901

`1-(A210067(2*n+1)+A033999(2*n))`
-/

namespace A127393.P7398768622691885901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A210067 (2 * n + 1) + A033999 (2 * n))

end

end A127393.P7398768622691885901

/-! ## A127393.P5703158410477437170

`A007096(2*n+1)*A117569(2*n+1)`
-/

namespace A127393.P5703158410477437170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007096 (2 * n + 1) * A117569 (2 * n + 1)

end

end A127393.P5703158410477437170

/-! ## A127393.P5759028321800859672

`A033999(2*n+1)*A210067(2*n+1)`
-/

namespace A127393.P5759028321800859672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (2 * n + 1) * A210067 (2 * n + 1)

end

end A127393.P5759028321800859672

/-! ## A127393.P7641097937475477112

`A084099(2*n+1)*A208933(2*n+1)`
-/

namespace A127393.P7641097937475477112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084099 (2 * n + 1) * A208933 (2 * n + 1)

end

end A127393.P7641097937475477112

/-!
# A127394: Number of irreducible representations of Sp(2n,R) with same infinitesimal character as the trivial representation.

The programs for A127394, the canonical program `A127394.P15450185928964947763` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A127394 has offset 1).

The definition of A127394 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A127394.P15450185928964947763

`4*a(n-1)+2*n*a(n-2)` with `a(0)=4, a(1)=18`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A127394

/-- `4*a(n-1)+2*n*a(n-2)` -/
def P15450185928964947763.Spec : Prop :=
  ∀ n, (P15450185928964947763.a n : ℤ) = A127394 (n + 1)

theorem P15450185928964947763.correct : P15450185928964947763.Spec := by
  intro n
  simp only [A127394, Nat.add_sub_cancel]

end A127394

/-! ## A127394.P14541935307243205575

`∏[2*n/a(n-1)+4]` with `a(0)=4`
-/

namespace A127394.P14541935307243205575
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [4] fun n f1 =>
  (2 * n : ℚ) / f1 (n - 1) + 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A127394.P14541935307243205575

namespace A127394

/-- `∏[2*n/a(n-1)+4]` -/
def P14541935307243205575.Spec : Prop :=
  ∀ n, P14541935307243205575.a n = (A127394 (n + 1) : ℚ)

end A127394

/-! ## A127394.P5047432709219290735

`record[2*(a(n-1)-((2-n)*a(n-2)-a(n-1)))]` with `a(0)=4, a(1)=1`
-/

namespace A127394.P5047432709219290735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [4, 1] fun n f1 =>
  2 * (f1 (n - 1) - ((2 - (n : ℤ)) * f1 (n - 2) - f1 (n - 1)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A127394.P5047432709219290735

namespace A127394

/-- `record[2*(a(n-1)-((2-n)*a(n-2)-a(n-1)))]` -/
def P5047432709219290735.Spec : Prop :=
  ∀ n, P5047432709219290735.a n = A127394 (n + 1)

end A127394

/-!
# A127395: Product((2*i)!, i = 1..n) - ((n+1)!)^n.

The programs for A127395, there is no canonical definition to state claims against.
-/

/-! ## A127395.P13892900645447043478

`∏[(2*n)!]-(n+1)!^n`
-/

namespace A127395.P13892900645447043478
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (Nat.factorial (n + 1) ^ n : ℤ)

end

end A127395.P13892900645447043478

/-!
# A127396: Number of 3-almost-primes <= 2^n.

The programs for A127396, the canonical program `A127396.P17057220394794836426` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A127396 has offset 1).

The definition of A127396 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A072114, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A127396.P17057220394794836426

`A072114(2^(n+1))`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A127396

/-- `A072114(2^(n+1))` -/
def P17057220394794836426.Spec : Prop :=
  ∀ n, P17057220394794836426.a n = A127396 (n + 1)

theorem P17057220394794836426.correct : P17057220394794836426.Spec := by
  intro n
  simp only [A127396, Nat.add_sub_cancel]

end A127396

/-! ## A127396.P14266974479169170095

`A126279(∑[n]+3)%(2^n)`
-/

namespace A127396.P14266974479169170095
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A126279 (∑ j ∈ Finset.range (n + 1), f1 j + 3)) (2 ^ n : ℤ)

end

end A127396.P14266974479169170095

namespace A127396

/-- `A126279(∑[n]+3)%(2^n)` -/
def P14266974479169170095.Spec : Prop :=
  ∀ n, P14266974479169170095.a n = A127396 (n + 1)

end A127396

/-! ## A127396.P14040724838741832053

`and(A000225(n), A126279(∑[n]+3))`
-/

namespace A127396.P14040724838741832053
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000225 n) (A126279 (∑ j ∈ Finset.range (n + 1), f1 j + 3))

end

end A127396.P14040724838741832053

namespace A127396

/-- `and(A000225(n), A126279(∑[n]+3))` -/
def P14040724838741832053.Spec : Prop :=
  ∀ n, P14040724838741832053.a n = A127396 (n + 1)

end A127396

/-! ## A127396.P3489593911568487208

`floor(atan(n))*A126279(A152950(n+1))`
-/

namespace A127396.P3489593911568487208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.arctan (n : ℝ)⌋ * A126279 (A152950 (n + 1)).toNat

end

end A127396.P3489593911568487208

namespace A127396

/-- `floor(atan(n))*A126279(A152950(n+1))` -/
def P3489593911568487208.Spec : Prop :=
  ∀ n, P3489593911568487208.a n = A127396 (n + 1)

end A127396

/-! ## A127396.P15864621579345040865

`A126279(A152950(n+1))*A157928(n)`
-/

namespace A127396.P15864621579345040865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126279 (A152950 (n + 1)).toNat * A157928 n

end

end A127396.P15864621579345040865

namespace A127396

/-- `A126279(A152950(n+1))*A157928(n)` -/
def P15864621579345040865.Spec : Prop :=
  ∀ n, P15864621579345040865.a n = A127396 (n + 1)

end A127396

/-! ## A127396.P8260905822124522792

`A126279(A152950(n+1))-A130706(n)²`
-/

namespace A127396.P8260905822124522792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126279 (A152950 (n + 1)).toNat - A130706 n ^ 2

end

end A127396.P8260905822124522792

namespace A127396

/-- `A126279(A152950(n+1))-A130706(n)²` -/
def P8260905822124522792.Spec : Prop :=
  ∀ n, P8260905822124522792.a n = A127396 (n + 1)

end A127396

/-! ## A127396.P9624346624649988426

`A094495(∑[n])*A126279(A152950(n+1))`
-/

namespace A127396.P9624346624649988426
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094495 (∑ j ∈ Finset.range (n + 1), f1 j) * A126279 (A152950 (n + 1)).toNat

end

end A127396.P9624346624649988426

namespace A127396

/-- `A094495(∑[n])*A126279(A152950(n+1))` -/
def P9624346624649988426.Spec : Prop :=
  ∀ n, P9624346624649988426.a n = A127396 (n + 1)

end A127396

/-! ## A127396.P3856416054646544859

`A126279(A000124(n)+2)-a(A020639(2*(n+1))-1)` with `a(0)=0, a(1)=0`
-/

namespace A127396.P3856416054646544859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  A126279 (A000124 n + 2).toNat - a (A020639 (2 * (n + 1)) - 1).toNat

end

end A127396.P3856416054646544859

namespace A127396

/-- `A126279(A000124(n)+2)-a(A020639(2*(n+1))-1)` -/
def P3856416054646544859.Spec : Prop :=
  ∀ n, P3856416054646544859.a n = A127396 (n + 1)

end A127396

/-! ## A127396.P15783554706025160682

`A126279(A152950(n+1))-A126279(n+1)*A130706(n)`
-/

namespace A127396.P15783554706025160682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126279 (A152950 (n + 1)).toNat - A126279 (n + 1) * A130706 n

end

end A127396.P15783554706025160682

namespace A127396

/-- `A126279(A152950(n+1))-A126279(n+1)*A130706(n)` -/
def P15783554706025160682.Spec : Prop :=
  ∀ n, P15783554706025160682.a n = A127396 (n + 1)

end A127396

/-!
# A127397: a(0)=0; a(n) = smallest positive integer not occurring earlier in the sequence such that a(n-1)+a(n) = j^k, j = any positive integer, k = any integer >= 2.

The programs for A127397, there is no canonical definition to state claims against.
-/

/-! ## A127397.P8821682003174083098

`A127398(n)-a(n-1)` with `a(0)=0`
-/

namespace A127397.P8821682003174083098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A127398 n - a (n - 1)

end

end A127397.P8821682003174083098

/-! ## A127397.P4242469786675789277

`A284048(round(sqrt(n²+1)))%A197926(n+1)`
-/

namespace A127397.P4242469786675789277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A284048 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat) (A197926 (n + 1))

end

end A127397.P4242469786675789277

/-! ## A127397.P15718681449423185480

`A284048(A028310(n))%A273327(n)`
-/

namespace A127397.P15718681449423185480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A284048 (A028310 n).toNat) (A273327 n)

end

end A127397.P15718681449423185480

/-!
# A127398: a(0)=0; a(n) = A127397(n-1)+A127397(n), which is j^k, j = any positive integer, k = any integer >= 2.

The programs for A127398, there is no canonical definition to state claims against.
-/

/-! ## A127398.P4252857033344263835

`A127397(n)+A127397((2*n)%(n+1))`
-/

namespace A127398.P4252857033344263835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127397 n + A127397 (2 * n % (n + 1))

end

end A127398.P4252857033344263835

/-! ## A127398.P15538386662885090428

`A127397(round(sqrt(n²+1))-1)+A127397(n)`
-/

namespace A127398.P15538386662885090428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127397 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ)) - 1).toNat + A127397 n

end

end A127398.P15538386662885090428

