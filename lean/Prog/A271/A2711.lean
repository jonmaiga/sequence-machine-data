import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
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
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C030
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
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
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C024

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A271101: Squarefree semiprimes (A006881) whose average prime factor is prime.

The programs for A271101, there is no canonical definition to state claims against.
-/

/-! ## A271101.P7133288325376876039

`∩[A070006(n+1), A108181(n+1)]`
-/

namespace A271101.P7133288325376876039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070006 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108181 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A271101.P7133288325376876039

/-! ## A271101.P11882151471155943835

`filter[A070006(n+1), A354927(#)]`
-/

namespace A271101.P11882151471155943835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070006 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354927 (f1 j).toNat = 1) n)

end

end A271101.P11882151471155943835

/-! ## A271101.P4127736789421667760

`filter[A070006(n+1), A359828(#)]`
-/

namespace A271101.P4127736789421667760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070006 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359828 (f1 j).toNat = 1) n)

end

end A271101.P4127736789421667760

/-! ## A271101.P7414715183642879300

`filter[A070006(n+1), A368701(#)]`
-/

namespace A271101.P7414715183642879300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070006 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A368701 (f1 j).toNat = 1) n)

end

end A271101.P7414715183642879300

/-! ## A271101.P4759007122380153455

`filter[A189986(n+1), A368701(#)]`
-/

namespace A271101.P4759007122380153455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189986 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A368701 (f1 j).toNat = 1) n)

end

end A271101.P4759007122380153455

/-! ## A271101.P14245531936104201192

`filter[A089765(n+3), A354927(#)]`
-/

namespace A271101.P14245531936104201192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089765 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354927 (f1 j).toNat = 1) n)

end

end A271101.P14245531936104201192

/-! ## A271101.P4660521454825720567

`filter[A089765(n+3), A374128(#)]`
-/

namespace A271101.P4660521454825720567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089765 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374128 (f1 j).toNat = 1) n)

end

end A271101.P4660521454825720567

/-! ## A271101.P1724074569693315051

`∩[A001358(n+1), A070006(n+1)]`
-/

namespace A271101.P1724074569693315051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070006 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A271101.P1724074569693315051

/-! ## A271101.P14983283406446576867

`∩[A001358(n+1), A187073(n+1)]`
-/

namespace A271101.P14983283406446576867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187073 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A271101.P14983283406446576867

/-! ## A271101.P11699298905975138017

`filter[A339963(n+1), A368701(#)]`
-/

namespace A271101.P11699298905975138017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339963 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A368701 (f1 j).toNat = 1) n)

end

end A271101.P11699298905975138017

/-! ## A271101.P4411146537181151001

`∩[A045835(n+1), A187073(n+1)]`
-/

namespace A271101.P4411146537181151001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045835 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187073 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A271101.P4411146537181151001

/-! ## A271101.P587849560047629600

`filter[A070006(n+1), A064911(#)]`
-/

namespace A271101.P587849560047629600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070006 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A271101.P587849560047629600

/-! ## A271101.P10147127216361406848

`filter[A070006(n+1), A101040(#)]`
-/

namespace A271101.P10147127216361406848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070006 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A101040 (f1 j).toNat = 1) n)

end

end A271101.P10147127216361406848

/-! ## A271101.P7770885609696353709

`filter[A187073(n+1), A064911(#)]`
-/

namespace A271101.P7770885609696353709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187073 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A271101.P7770885609696353709

/-! ## A271101.P4197289276540212461

`filter[A187073(n+1), A101040(#)]`
-/

namespace A271101.P4197289276540212461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187073 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A101040 (f1 j).toNat = 1) n)

end

end A271101.P4197289276540212461

/-! ## A271101.P12384315585567153738

`filter[A187073(n+1), A123927(#)]`
-/

namespace A271101.P12384315585567153738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187073 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A123927 (f1 j).toNat = 1) n)

end

end A271101.P12384315585567153738

/-! ## A271101.P3455066143592128644

`filter[A070006(n+1), A280710(#)]`
-/

namespace A271101.P3455066143592128644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070006 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A280710 (f1 j).toNat = 1) n)

end

end A271101.P3455066143592128644

/-! ## A271101.P9338046409539100853

`filter[A089765(n+1), A280710(#)]`
-/

namespace A271101.P9338046409539100853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089765 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A280710 (f1 j).toNat = 1) n)

end

end A271101.P9338046409539100853

/-! ## A271101.P6219458081650003441

`filter[A045835(n+1), A353481(#)]`
-/

namespace A271101.P6219458081650003441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045835 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353481 (f1 j).toNat = 1) n)

end

end A271101.P6219458081650003441

/-! ## A271101.P13657892676009182995

`filter[A045835(n+1), A353482(#)]`
-/

namespace A271101.P13657892676009182995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045835 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353482 (f1 j).toNat = 1) n)

end

end A271101.P13657892676009182995

/-!
# A271102: a(n) is multiplicative with a(p^e) = -1 if e=2, a(p^e) = 0 if e=1 or e>2.

The programs for A271102, the canonical program `A271102.P1341188632352803855` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A271102 has offset 1).

The definition of A271102 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A271102.P1341188632352803855

`∏{e}[n+1, -val(n+2, #+n)]`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A271102

/-- `∏{e}[n+1, -val(n+2, #+n)]` -/
def P1341188632352803855.Spec : Prop :=
  ∀ n, P1341188632352803855.a n = A271102 (n + 1)

theorem P1341188632352803855.correct : P1341188632352803855.Spec := by
  intro n
  simp only [A271102, Nat.add_sub_cancel]

end A271102

/-! ## A271102.P9850030768515296896

`A346246(n+1)%2`
-/

namespace A271102.P9850030768515296896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A346246 (n + 1)) 2

end

end A271102.P9850030768515296896

namespace A271102

/-- `A346246(n+1)%2` -/
def P9850030768515296896.Spec : Prop :=
  ∀ n, P9850030768515296896.a n = A271102 (n + 1)

end A271102

/-! ## A271102.P13793885117249641244

`∑{d}[n+1, A307445(#)]`
-/

namespace A271102.P13793885117249641244
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A307445 d

end

end A271102.P13793885117249641244

namespace A271102

/-- `∑{d}[n+1, A307445(#)]` -/
def P13793885117249641244.Spec : Prop :=
  ∀ n, P13793885117249641244.a n = A271102 (n + 1)

end A271102

/-! ## A271102.P15946754390308108744

`A154271(A181819(n+1))`
-/

namespace A271102.P15946754390308108744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154271 (A181819 (n + 1)).toNat

end

end A271102.P15946754390308108744

namespace A271102

/-- `A154271(A181819(n+1))` -/
def P15946754390308108744.Spec : Prop :=
  ∀ n, P15946754390308108744.a n = A271102 (n + 1)

end A271102

/-! ## A271102.P17801449375247960139

`∏{e}[n+1, A121373(A283178(#))]`
-/

namespace A271102.P17801449375247960139
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A121373 (A283178 (Nat.factorization (f1 n) p)).toNat

end

end A271102.P17801449375247960139

namespace A271102

/-- `∏{e}[n+1, A121373(A283178(#))]` -/
def P17801449375247960139.Spec : Prop :=
  ∀ n, P17801449375247960139.a n = A271102 (n + 1)

end A271102

/-! ## A271102.P7861218805237484146

`A053864(n+1)*A075802(n+1)`
-/

namespace A271102.P7861218805237484146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053864 (n + 1) * A075802 (n + 1)

end

end A271102.P7861218805237484146

namespace A271102

/-- `A053864(n+1)*A075802(n+1)` -/
def P7861218805237484146.Spec : Prop :=
  ∀ n, P7861218805237484146.a n = A271102 (n + 1)

end A271102

/-! ## A271102.P9252570425717849743

`A053864(n+1)*A095683(n+1)`
-/

namespace A271102.P9252570425717849743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053864 (n + 1) * A095683 (n + 1)

end

end A271102.P9252570425717849743

namespace A271102

/-- `A053864(n+1)*A095683(n+1)` -/
def P9252570425717849743.Spec : Prop :=
  ∀ n, P9252570425717849743.a n = A271102 (n + 1)

end A271102

/-! ## A271102.P4346522663307440613

`A053864(n+1)*A112526(n+1)`
-/

namespace A271102.P4346522663307440613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053864 (n + 1) * A112526 (n + 1)

end

end A271102.P4346522663307440613

namespace A271102

/-- `A053864(n+1)*A112526(n+1)` -/
def P4346522663307440613.Spec : Prop :=
  ∀ n, P4346522663307440613.a n = A271102 (n + 1)

end A271102

/-! ## A271102.P574446266344763088

`A053864(n+1)*A227291(n+1)`
-/

namespace A271102.P574446266344763088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053864 (n + 1) * A227291 (n + 1)

end

end A271102.P574446266344763088

namespace A271102

/-- `A053864(n+1)*A227291(n+1)` -/
def P574446266344763088.Spec : Prop :=
  ∀ n, P574446266344763088.a n = A271102 (n + 1)

end A271102

/-! ## A271102.P12852039189740858453

`A010052(n+1)*A307445(n+1)`
-/

namespace A271102.P12852039189740858453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (n + 1) * A307445 (n + 1)

end

end A271102.P12852039189740858453

namespace A271102

/-- `A010052(n+1)*A307445(n+1)` -/
def P12852039189740858453.Spec : Prop :=
  ∀ n, P12852039189740858453.a n = A271102 (n + 1)

end A271102

/-! ## A271102.P10735105845388509447

`A053864(n+1)*A307423(n+1)`
-/

namespace A271102.P10735105845388509447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053864 (n + 1) * A307423 (n + 1)

end

end A271102.P10735105845388509447

namespace A271102

/-- `A053864(n+1)*A307423(n+1)` -/
def P10735105845388509447.Spec : Prop :=
  ∀ n, P10735105845388509447.a n = A271102 (n + 1)

end A271102

/-! ## A271102.P591585718390027825

`A065043(n+1)*A369453(n+1)`
-/

namespace A271102.P591585718390027825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065043 (n + 1) * A369453 (n + 1)

end

end A271102.P591585718390027825

namespace A271102

/-- `A065043(n+1)*A369453(n+1)` -/
def P591585718390027825.Spec : Prop :=
  ∀ n, P591585718390027825.a n = A271102 (n + 1)

end A271102

/-! ## A271102.P5370387876988801204

`A227291(n+1)*A307424(n+1)`
-/

namespace A271102.P5370387876988801204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227291 (n + 1) * A307424 (n + 1)

end

end A271102.P5370387876988801204

namespace A271102

/-- `A227291(n+1)*A307424(n+1)` -/
def P5370387876988801204.Spec : Prop :=
  ∀ n, P5370387876988801204.a n = A271102 (n + 1)

end A271102

/-! ## A271102.P12508935408146428906

`A227291(n+1)*A307427(n+1)`
-/

namespace A271102.P12508935408146428906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227291 (n + 1) * A307427 (n + 1)

end

end A271102.P12508935408146428906

namespace A271102

/-- `A227291(n+1)*A307427(n+1)` -/
def P12508935408146428906.Spec : Prop :=
  ∀ n, P12508935408146428906.a n = A271102 (n + 1)

end A271102

/-! ## A271102.P2677028607879184890

`A227291(n+1)*A307445(n+1)`
-/

namespace A271102.P2677028607879184890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227291 (n + 1) * A307445 (n + 1)

end

end A271102.P2677028607879184890

namespace A271102

/-- `A227291(n+1)*A307445(n+1)` -/
def P2677028607879184890.Spec : Prop :=
  ∀ n, P2677028607879184890.a n = A271102 (n + 1)

end A271102

/-! ## A271102.P15344495356526340653

`A227291(n+1)*A355684(n+1)`
-/

namespace A271102.P15344495356526340653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227291 (n + 1) * A355684 (n + 1)

end

end A271102.P15344495356526340653

namespace A271102

/-- `A227291(n+1)*A355684(n+1)` -/
def P15344495356526340653.Spec : Prop :=
  ∀ n, P15344495356526340653.a n = A271102 (n + 1)

end A271102

/-! ## A271102.P10861815487993659428

`A307424(n+1)*A363551(n+1)`
-/

namespace A271102.P10861815487993659428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307424 (n + 1) * A363551 (n + 1)

end

end A271102.P10861815487993659428

namespace A271102

/-- `A307424(n+1)*A363551(n+1)` -/
def P10861815487993659428.Spec : Prop :=
  ∀ n, P10861815487993659428.a n = A271102 (n + 1)

end A271102

/-! ## A271102.P6550792781910554902

`A369453(n+1)%A007421(n+1)`
-/

namespace A271102.P6550792781910554902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A369453 (n + 1)) (A007421 (n + 1))

end

end A271102.P6550792781910554902

namespace A271102

/-- `A369453(n+1)%A007421(n+1)` -/
def P6550792781910554902.Spec : Prop :=
  ∀ n, P6550792781910554902.a n = A271102 (n + 1)

end A271102

/-! ## A271102.P17463137083900885066

`and(A053864(n+1), A307424(n+1))`
-/

namespace A271102.P17463137083900885066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A053864 (n + 1)) (A307424 (n + 1))

end

end A271102.P17463137083900885066

namespace A271102

/-- `and(A053864(n+1), A307424(n+1))` -/
def P17463137083900885066.Spec : Prop :=
  ∀ n, P17463137083900885066.a n = A271102 (n + 1)

end A271102

/-! ## A271102.P448384563118745570

`and(A053864(n+1), A355683(n+1))`
-/

namespace A271102.P448384563118745570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A053864 (n + 1)) (A355683 (n + 1))

end

end A271102.P448384563118745570

namespace A271102

/-- `and(A053864(n+1), A355683(n+1))` -/
def P448384563118745570.Spec : Prop :=
  ∀ n, P448384563118745570.a n = A271102 (n + 1)

end A271102

/-!
# A271103: Number of magic and semi-magic squares of order n composed of the numbers from 1 to n^2, counted up to rotations and reflections.

The programs for A271103, there is no canonical definition to state claims against.
-/

/-! ## A271103.P17270670817732506630

`A271104(n+1)*(n+1)²`
-/

namespace A271103.P17270670817732506630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271104 (n + 1) * ((n + 1) ^ 2 : ℤ)

end

end A271103.P17270670817732506630

/-!
# A271104: Number of magic and semi-magic tori of order n composed of the numbers from 1 to n^2.

The programs for A271104, there is no canonical definition to state claims against.
-/

/-! ## A271104.P15082729772415861882

`A271103(n+1)/(n+1)²`
-/

namespace A271104.P15082729772415861882
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A271103 (n + 1) : ℚ) / ((n + 1) ^ 2 : ℚ)

end

end A271104.P15082729772415861882

/-!
# A271105: 

The programs for A271105, there is no canonical definition to state claims against.
-/

/-! ## A271105.P11721093771259368893

`A271115(n+1)²`
-/

namespace A271105.P11721093771259368893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271115 (n + 1) ^ 2

end

end A271105.P11721093771259368893

/-! ## A271105.P10864214461988434010

`A271115(n+1)^(2%A028078(n))`
-/

namespace A271105.P10864214461988434010
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A271115 (n + 1) : ℚ) ^ (Int.tmod 2 (A028078 n) : ℤ)

end

end A271105.P10864214461988434010

/-! ## A271105.P5685197035026748192

`A271115(n+1)^A131064(A274835(n))`
-/

namespace A271105.P5685197035026748192
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A271115 (n + 1) : ℚ) ^ (A131064 (A274835 n).toNat : ℤ)

end

end A271105.P5685197035026748192

/-! ## A271105.P8687149674951881626

`A271115(n+1)^A053090(A274835(n)+5)`
-/

namespace A271105.P8687149674951881626
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A271115 (n + 1) : ℚ) ^ (A053090 (A274835 n + 5).toNat : ℤ)

end

end A271105.P8687149674951881626

/-!
# A271106: Number of ordered ways to write n as x^6 + 3*y^3 + z^3 + w*(w+1)/2, where x and y are nonnegative integers, and z and w are positive integers.

The programs for A271106, there is no canonical definition to state claims against.
-/

/-! ## A271106.P7052070206422987563

`A001222(A096194(n+1)+A006211(n+1))`
-/

namespace A271106.P7052070206422987563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A096194 (n + 1) + A006211 (n + 1)).toNat

end

end A271106.P7052070206422987563

/-! ## A271106.P83428348090876947

`A322811(A130472(n)+A038754(n))`
-/

namespace A271106.P83428348090876947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322811 (A130472 n + A038754 n).toNat

end

end A271106.P83428348090876947

/-! ## A271106.P16253930900990051141

`A336121(lcm(A232824(n+1), A336110(n+1)))`
-/

namespace A271106.P16253930900990051141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336121 (Int.lcm (A232824 (n + 1)) (A336110 (n + 1)))

end

end A271106.P16253930900990051141

/-! ## A271106.P7192818923775416353

`A064547(A042069(n))`
-/

namespace A271106.P7192818923775416353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064547 (A042069 n).toNat

end

end A271106.P7192818923775416353

/-!
# A271109: Numbers k such that (5 * 10^k - 119)/3 is prime.

The programs for A271109, there is no canonical definition to state claims against.
-/

/-! ## A271109.P16781544117904464770

`A354057(A094670(3*(n+1)))+A270613(n+1)`
-/

namespace A271109.P16781544117904464770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354057 (A094670 (3 * (n + 1))).toNat + A270613 (n + 1)

end

end A271109.P16781544117904464770

/-!
# A271110: a(n) = A101036(n) - A076336(n).

The programs for A271110, there is no canonical definition to state claims against.
-/

/-! ## A271110.P13856530940945395168

`A101036(n+1)-A076336(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A271110.P13856530940945395168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101036 (n + 1) - A076336 (n + 1)

end

end A271110.P13856530940945395168

/-! ## A271110.P4777314499448609931

`A101036(n+1)+A033999(2*n+1)*A076336(n+1)`
-/

namespace A271110.P4777314499448609931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101036 (n + 1) + A033999 (2 * n + 1) * A076336 (n + 1)

end

end A271110.P4777314499448609931

/-! ## A271110.P6493722175582910576

`A101036(n+1)+A008683(A335653(n))*A076336(n+1)`
-/

namespace A271110.P6493722175582910576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101036 (n + 1) + A008683 (A335653 n).toNat * A076336 (n + 1)

end

end A271110.P6493722175582910576

/-! ## A271110.P18073061963998787503

`A101036(n+1)+A008683(A052333(n+1))*A076336(n+1)`
-/

namespace A271110.P18073061963998787503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101036 (n + 1) + A008683 (A052333 (n + 1)).toNat * A076336 (n + 1)

end

end A271110.P18073061963998787503

/-! ## A271110.P5799490586463540046

`A101036(n+1)+-A076336(n+1)%A076336(A305473(n+1))`
-/

namespace A271110.P5799490586463540046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101036 (n + 1) + Int.tmod (-A076336 (n + 1)) (A076336 (A305473 (n + 1)).toNat)

end

end A271110.P5799490586463540046

/-!
# A271113: Numbers not in the range of the sum of abundant divisors function.

The programs for A271113, there is no canonical definition to state claims against.
-/

/-! ## A271113.P7222743197082593101

`record[gcd(n, A282568(n))]`
-/

namespace A271113.P7222743197082593101
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A282568 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A271113.P7222743197082593101

/-! ## A271113.P18084466045814058837

`lt[A112215(n), sin(n)+1]`
-/

namespace A271113.P18084466045814058837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112215 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sin (n : ℝ) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A271113.P18084466045814058837

/-! ## A271113.P5665500246496094375

`record[n+1-A282568(n+1)]`
-/

namespace A271113.P5665500246496094375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A282568 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A271113.P5665500246496094375

/-! ## A271113.P17118171793061189557

`A283550(A033619(n+1)+1)`
-/

namespace A271113.P17118171793061189557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283550 (A033619 (n + 1) + 1).toNat

end

end A271113.P17118171793061189557

/-! ## A271113.P13502127145335888243

`filter[A048242(n+1), A294935(#)]`
-/

namespace A271113.P13502127145335888243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048242 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A294935 (f1 j).toNat = 1) n)

end

end A271113.P13502127145335888243

/-! ## A271113.P8670764705065183597

`∪[A283550(n+1), A075930(n)²]`
-/

namespace A271113.P8670764705065183597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283550 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075930 n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A271113.P8670764705065183597

/-! ## A271113.P3028503093326871541

`∪[eq[0, A282568(n)], A250120(n)²]`
-/

namespace A271113.P3028503093326871541
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282568 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f4 j = (x : ℤ)) n

end

end A271113.P3028503093326871541

/-! ## A271113.P4788763552814253849

`A283550(n+1)%A280877(n+1)`
-/

namespace A271113.P4788763552814253849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A283550 (n + 1)) (A280877 (n + 1))

end

end A271113.P4788763552814253849

/-! ## A271113.P9690522092591920414

`∩[A048242(n+1), A263837(n+1)]`
-/

namespace A271113.P9690522092591920414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048242 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263837 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A271113.P9690522092591920414

/-!
# A271114: Expansion of (1+x)*(2+x)/(1-x)^2.

The programs for A271114, the canonical program `A271114.P10500926701269547597` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A271114 has offset 0).

The definition of A271114 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((2+3x+x^2)/(1-2x+x^2))` (program `A271114.P10500926701269547597`, by `A271114.P10500926701269547597.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A271114.P10500926701269547597

`ogf((2+3x+x^2)/(1-2x+x^2))`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A271114

/-- `ogf((2+3x+x^2)/(1-2x+x^2))` -/
def P10500926701269547597.Spec : Prop :=
  ∀ n, P10500926701269547597.a n = A271114 n

theorem P10500926701269547597.correct : P10500926701269547597.Spec := by
  intro n
  simp only [A271114]

end A271114

/-!
# A271116: Integers n such that round(3^n/12) is divisible by n.

The programs for A271116, there is no canonical definition to state claims against.
-/

/-! ## A271116.P9620945431133709544

`∪[A140475(n+1), A351336(n+1)]`
-/

namespace A271116.P9620945431133709544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140475 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351336 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A271116.P9620945431133709544

/-! ## A271116.P1861879371827849531

`eq[A019426(n), A062174(n+1)]+1`
-/

namespace A271116.P1861879371827849531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019426 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062174 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A271116.P1861879371827849531

/-! ## A271116.P2080989959700871704

`record[gcd(n+1, A009001(A062174(n+1)+n))]`
-/

namespace A271116.P2080989959700871704
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A009001 (A062174 (n + 1) + (n : ℤ)).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A271116.P2080989959700871704

/-! ## A271116.P3817578415576077165

`A004442(eq[A019426(n), A062174(n+1)])`
-/

namespace A271116.P3817578415576077165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019426 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062174 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A271116.P3817578415576077165

/-! ## A271116.P9559374963648014151

`A079097(eq[A019426(n), A062174(n+1)])`
-/

namespace A271116.P9559374963648014151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019426 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062174 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079097 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A271116.P9559374963648014151

/-! ## A271116.P10899442247183775335

`eq[A010126(n), A062174(A114112(n+1))]`
-/

namespace A271116.P10899442247183775335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010126 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062174 (A114112 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A271116.P10899442247183775335

/-! ## A271116.P13532438706633668577

`eq[A010135(n), A062174(A114112(n+1))]`
-/

namespace A271116.P13532438706633668577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010135 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062174 (A114112 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A271116.P13532438706633668577

/-! ## A271116.P364122164816904547

`eq[A010144(n), A062174(A114112(n+1))]`
-/

namespace A271116.P364122164816904547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010144 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062174 (A114112 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A271116.P364122164816904547

/-! ## A271116.P3154494484809755808

`A109613(eq[A019426(n), A062174(n+1)])`
-/

namespace A271116.P3154494484809755808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019426 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062174 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A271116.P3154494484809755808

/-! ## A271116.P5753474199045758954

`A141310(eq[A019426(n), A062174(n+1)])`
-/

namespace A271116.P5753474199045758954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019426 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062174 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141310 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A271116.P5753474199045758954

/-! ## A271116.P2192171952647091591

`A165998(eq[A019426(n), A062174(n+1)])`
-/

namespace A271116.P2192171952647091591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019426 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062174 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165998 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A271116.P2192171952647091591

/-!
# A271117: Number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 283", based on the 5-celled von Neumann neighborhood.

The programs for A271117, there is no canonical definition to state claims against.
-/

/-! ## A271117.P15420141466902604520

`A271120(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A271117.P15420141466902604520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A271120 (n - 1) + a (n - 1)

end

end A271117.P15420141466902604520

/-! ## A271117.P14974073972975113037

`Δ[A271119(n)]-A271120(n)`
-/

namespace A271117.P14974073972975113037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271119 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A271120 n

end

end A271117.P14974073972975113037

/-! ## A271117.P3073580875648898305

`A271119(n+1)-(A271120(n)+A271119(n))`
-/

namespace A271117.P3073580875648898305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271119 (n + 1) - (A271120 n + A271119 n)

end

end A271117.P3073580875648898305

/-! ## A271117.P12133054435261974076

`or(3, 2*n)²-A270329(n+1)`
-/

namespace A271117.P12133054435261974076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 3 (2 * n) ^ 2 : ℤ) - A270329 (n + 1)

end

end A271117.P12133054435261974076

/-!
# A271118: Number of active (ON, black) cells at stage 2^n-1 of the two-dimensional cellular automaton defined by "Rule 283", based on the 5-celled von Neumann neighborhood.

The programs for A271118, there is no canonical definition to state claims against.
-/

/-! ## A271118.P5834607283647965288

`A271117(2^n-1)`
-/

namespace A271118.P5834607283647965288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271117 (2 ^ n - 1)

end

end A271118.P5834607283647965288

/-! ## A271118.P14647195017484560808

`record[A271117(A255067(n))]`
-/

namespace A271118.P14647195017484560808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271117 (A255067 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A271118.P14647195017484560808

/-! ## A271118.P6952674594836552919

`record[A271117(A226038(n+1))]`
-/

namespace A271118.P6952674594836552919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271117 (A226038 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A271118.P6952674594836552919

/-! ## A271118.P6841878114753165030

`record[A271117(A243354(n+1))]`
-/

namespace A271118.P6841878114753165030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271117 (A243354 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A271118.P6841878114753165030

/-! ## A271118.P15632409012339158249

`record[A271117(A253564(n+1))]`
-/

namespace A271118.P15632409012339158249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271117 (A253564 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A271118.P15632409012339158249

/-!
# A271119: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 283", based on the 5-celled von Neumann neighborhood.

The programs for A271119, there is no canonical definition to state claims against.
-/

/-! ## A271119.P12707252442196133511

`∑[A271120(n-1)+a(n-1)]` with `a(0)=1`
-/

namespace A271119.P12707252442196133511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A271120 (n - 1) + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271119.P12707252442196133511

/-! ## A271119.P3715106973122820555

`∑[∑[A271120(n)]+1-A271120(n)]`
-/

namespace A271119.P3715106973122820555
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271120 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (1 - A271120 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271119.P3715106973122820555

/-! ## A271119.P826178650660750169

`∑[A271117(n)]`
-/

namespace A271119.P826178650660750169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271117 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271119.P826178650660750169

/-! ## A271119.P736955309602322152

`A271117(root(n, 2)²)+a(n-1)` with `a(0)=1`
-/

namespace A271119.P736955309602322152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A271117 (SequenceMachineLib.roundAway (((n : ℝ) ^ (1 / (2 : ℝ))) ^ 2)).toNat + a (n - 1)

end

end A271119.P736955309602322152

/-! ## A271119.P7518464577082863678

`∑[or(3, 2*n)²-A270329(n+1)]`
-/

namespace A271119.P7518464577082863678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 3 (2 * n) ^ 2 : ℤ) - A270329 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271119.P7518464577082863678

/-!
# A271120: First differences of number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 283", based on the 5-celled von Neumann neighborhood.

The programs for A271120, there is no canonical definition to state claims against.
-/

/-! ## A271120.P14303960071598835927

`Δ[A271117(n)]`
-/

namespace A271120.P14303960071598835927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271117 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A271120.P14303960071598835927

/-! ## A271120.P8874546794752817999

`A271117(n+1)-A271117(n)`
-/

namespace A271120.P8874546794752817999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271117 (n + 1) - A271117 n

end

end A271120.P8874546794752817999

/-! ## A271120.P82137223852142330

`Δ[or(3, 2*n)²-A270329(n+1)]`
-/

namespace A271120.P82137223852142330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 3 (2 * n) ^ 2 : ℤ) - A270329 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A271120.P82137223852142330

/-!
# A271121: Number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 286", based on the 5-celled von Neumann neighborhood.

The programs for A271121, there is no canonical definition to state claims against.
-/

/-! ## A271121.P8730557158482622689

`A271124(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A271121.P8730557158482622689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A271124 (n - 1) + a (n - 1)

end

end A271121.P8730557158482622689

/-! ## A271121.P9013853023280495746

`Δ[A271123(n)]-A271124(n)`
-/

namespace A271121.P9013853023280495746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271123 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A271124 n

end

end A271121.P9013853023280495746

/-! ## A271121.P3612718089823143758

`A271123(n+1)-(A271124(n)+A271123(n))`
-/

namespace A271121.P3612718089823143758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271123 (n + 1) - (A271124 n + A271123 n)

end

end A271121.P3612718089823143758

/-! ## A271121.P2238801765455577002

`(2*n+3)²-A272805(n+1)`
-/

namespace A271121.P2238801765455577002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n + 3) ^ 2 : ℤ) - A272805 (n + 1)

end

end A271121.P2238801765455577002

/-! ## A271121.P15129794421378461416

`A000217(2*(n+1))+A000217(2*n+3)-A272805(n+1)`
-/

namespace A271121.P15129794421378461416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (2 * (n + 1)) + (A000217 (2 * n + 3) - A272805 (n + 1))

end

end A271121.P15129794421378461416

/-! ## A271121.P13297257386498204929

`∑[A008590(n+1)-A272808(n)]`
-/

namespace A271121.P13297257386498204929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008590 (n + 1) - A272808 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271121.P13297257386498204929

/-!
# A271122: Number of active (ON, black) cells at stage 2^n-1 of the two-dimensional cellular automaton defined by "Rule 286", based on the 5-celled von Neumann neighborhood.

The programs for A271122, there is no canonical definition to state claims against.
-/

/-! ## A271122.P13455759647695254802

`A271121(2^n-1)`
-/

namespace A271122.P13455759647695254802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271121 (2 ^ n - 1)

end

end A271122.P13455759647695254802

/-! ## A271122.P16263278654553699187

`and(-1, A271121(A000225(n)))`
-/

namespace A271122.P16263278654553699187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A271121 (A000225 n).toNat)

end

end A271122.P16263278654553699187

/-! ## A271122.P8069229204435366606

`record[A271121(A253564(n+1))]`
-/

namespace A271122.P8069229204435366606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271121 (A253564 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A271122.P8069229204435366606

/-! ## A271122.P16273449123821856851

`A326460(n)+A271121(A000225(n))`
-/

namespace A271122.P16273449123821856851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326460 n + A271121 (A000225 n).toNat

end

end A271122.P16273449123821856851

/-! ## A271122.P4697038265100476712

`A271121(A000225(n))%A087662(n)`
-/

namespace A271122.P4697038265100476712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A271121 (A000225 n).toNat) (A087662 n)

end

end A271122.P4697038265100476712

/-!
# A271123: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 286", based on the 5-celled von Neumann neighborhood.

The programs for A271123, there is no canonical definition to state claims against.
-/

/-! ## A271123.P7567861270210097320

`∑[A271121(n)]`
-/

namespace A271123.P7567861270210097320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271121 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271123.P7567861270210097320

/-! ## A271123.P15543862912396929617

`A271121(n%A046092(n))+a(n-1)` with `a(0)=1`
-/

namespace A271123.P15543862912396929617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A271121 (Int.tmod (n : ℤ) (A046092 n)).toNat + a (n - 1)

end

end A271123.P15543862912396929617

/-! ## A271123.P703143568408692885

`∑[∑[A271124(n)]+1-A271124(n)]`
-/

namespace A271123.P703143568408692885
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271124 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (1 - A271124 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271123.P703143568408692885

/-! ## A271123.P4286998635108247807

`∑[(2*n+3)²-A272805(n+1)]`
-/

namespace A271123.P4286998635108247807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n + 3) ^ 2 : ℤ) - A272805 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271123.P4286998635108247807

/-! ## A271123.P6109603253752938029

`Δ[A006324(n+1)]-A272807(n+1)`
-/

namespace A271123.P6109603253752938029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006324 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A272807 (n + 1)

end

end A271123.P6109603253752938029

/-!
# A271124: First differences of number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 286", based on the 5-celled von Neumann neighborhood.

The programs for A271124, there is no canonical definition to state claims against.
-/

/-! ## A271124.P7440971630048454556

`Δ[A271121(n)]`
-/

namespace A271124.P7440971630048454556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271121 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A271124.P7440971630048454556

/-! ## A271124.P11529164112641800127

`A271121(n+1)-A271121(n)`
-/

namespace A271124.P11529164112641800127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271121 (n + 1) - A271121 n

end

end A271124.P11529164112641800127

/-! ## A271124.P9801532746526405906

`Δ[(2*n+3)²-A272805(n+1)]`
-/

namespace A271124.P9801532746526405906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n + 3) ^ 2 : ℤ) - A272805 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A271124.P9801532746526405906

/-! ## A271124.P10359429480213014239

`Δ[A000217(2*(n+1))+A000217(2*n+3)-A272805(n+1)]`
-/

namespace A271124.P10359429480213014239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (2 * (n + 1)) + (A000217 (2 * n + 3) - A272805 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A271124.P10359429480213014239

/-! ## A271124.P7413129534537998985

`-Δ[-∑[A008590(n+1)-A272808(n)]]`
-/

namespace A271124.P7413129534537998985
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008590 (n + 1) - A272808 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(f1 (n + 1) - f1 n)

end

end A271124.P7413129534537998985

/-!
# A271125: Number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 289", based on the 5-celled von Neumann neighborhood.

The programs for A271125, there is no canonical definition to state claims against.
-/

/-! ## A271125.P17789909513918679342

`∑[A271128(abs(1-n))]`
-/

namespace A271125.P17789909513918679342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271128 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271125.P17789909513918679342

/-! ## A271125.P8601324795349125737

`A271128(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A271125.P8601324795349125737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A271128 (n - 1) + a (n - 1)

end

end A271125.P8601324795349125737

/-! ## A271125.P15771093182254740510

`∑[A271128(n)]+1-A271128(n)`
-/

namespace A271125.P15771093182254740510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271128 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A271128 n)

end

end A271125.P15771093182254740510

/-! ## A271125.P14635110727561334539

`Δ[A271127(n)]-A271128(n)`
-/

namespace A271125.P14635110727561334539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271127 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A271128 n

end

end A271125.P14635110727561334539

/-! ## A271125.P18370263982920357494

`A271127(n+1)-(A271128(n)+A271127(n))`
-/

namespace A271125.P18370263982920357494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271127 (n + 1) - (A271128 n + A271127 n)

end

end A271125.P18370263982920357494

/-!
# A271126: Number of active (ON, black) cells at stage 2^n-1 of the two-dimensional cellular automaton defined by "Rule 289", based on the 5-celled von Neumann neighborhood.

The programs for A271126, there is no canonical definition to state claims against.
-/

/-! ## A271126.P14278470360711005769

`A271125(2^n-1)`
-/

namespace A271126.P14278470360711005769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271125 (2 ^ n - 1)

end

end A271126.P14278470360711005769

/-! ## A271126.P16357571745155977292

`record[A271125(A173787(n))]`
-/

namespace A271126.P16357571745155977292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271125 (A173787 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A271126.P16357571745155977292

/-! ## A271126.P13944047572201685860

`record[A271125(A218616(n))]`
-/

namespace A271126.P13944047572201685860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271125 (A218616 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A271126.P13944047572201685860

/-! ## A271126.P5097866569075613436

`record[A271125(A303763(n))]`
-/

namespace A271126.P5097866569075613436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271125 (A303763 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A271126.P5097866569075613436

/-! ## A271126.P18330617127663301878

`and(-1, A271125(A000225(n)))`
-/

namespace A271126.P18330617127663301878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A271125 (A000225 n).toNat)

end

end A271126.P18330617127663301878

/-!
# A271127: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 289", based on the 5-celled von Neumann neighborhood.

The programs for A271127, there is no canonical definition to state claims against.
-/

/-! ## A271127.P926460647981883256

`∑[A271125(n)]`
-/

namespace A271127.P926460647981883256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271125 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271127.P926460647981883256

/-! ## A271127.P15943097820810052727

`∑[∑[A271128(abs(1-n))]]`
-/

namespace A271127.P15943097820810052727
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271128 |1 - (n : ℤ)|.toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271127.P15943097820810052727

/-! ## A271127.P1458727948844941825

`∑[∑[A271128(n)]+1-A271128(n)]`
-/

namespace A271127.P1458727948844941825
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271128 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (1 - A271128 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271127.P1458727948844941825

/-! ## A271127.P7652073061612453913

`a(n-1)+A271125(n)+A000007(n)` with `a(0)=1`
-/

namespace A271127.P7652073061612453913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A271125 n + A000007 n)

end

end A271127.P7652073061612453913

/-! ## A271127.P12706951891603696276

`a(n-1)+A271125(n)+A000038(n)` with `a(0)=1`
-/

namespace A271127.P12706951891603696276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A271125 n + A000038 n)

end

end A271127.P12706951891603696276

/-! ## A271127.P10587458118257277943

`a(n-1)+and(1, A000040(n+1))*A271125(n)` with `a(0)=1`
-/

namespace A271127.P10587458118257277943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Int.land 1 (A000040 (n + 1)) * A271125 n

end

end A271127.P10587458118257277943

/-!
# A271128: First differences of number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 289", based on the 5-celled von Neumann neighborhood.

The programs for A271128, there is no canonical definition to state claims against.
-/

/-! ## A271128.P7669642477325743826

`Δ[A271125(n)]`
-/

namespace A271128.P7669642477325743826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271125 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A271128.P7669642477325743826

/-! ## A271128.P18443435369675509227

`A271125(n+1)-A271125(n)`
-/

namespace A271128.P18443435369675509227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271125 (n + 1) - A271125 n

end

end A271128.P18443435369675509227

/-!
# A271129: Number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 291", based on the 5-celled von Neumann neighborhood.

The programs for A271129, there is no canonical definition to state claims against.
-/

/-! ## A271129.P17917471741625669465

`∑[A271132(abs(1-n))]-3`
-/

namespace A271129.P17917471741625669465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271132 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 3

end

end A271129.P17917471741625669465

/-! ## A271129.P6720355926342551047

`A271132(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A271129.P6720355926342551047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A271132 (n - 1) + a (n - 1)

end

end A271129.P6720355926342551047

/-! ## A271129.P17278737674360419315

`Δ[A271131(n-1-a(A033999(n)²-1))]` with `a(0)=0`
-/

namespace A271129.P17278737674360419315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  A271131 ((n : ℤ) - 1 - f1 (A033999 n ^ 2 - 1).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A271129.P17278737674360419315

/-! ## A271129.P5264813607851660494

`Δ[A271131(n)]-A271132(n)`
-/

namespace A271129.P5264813607851660494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271131 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A271132 n

end

end A271129.P5264813607851660494

/-! ## A271129.P4717328373201102728

`A271131(n+1)-(A271132(n)+A271131(n))`
-/

namespace A271129.P4717328373201102728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271131 (n + 1) - (A271132 n + A271131 n)

end

end A271129.P4717328373201102728

/-!
# A271130: Number of active (ON, black) cells at stage 2^n-1 of the two-dimensional cellular automaton defined by "Rule 291", based on the 5-celled von Neumann neighborhood.

The programs for A271130, there is no canonical definition to state claims against.
-/

/-! ## A271130.P8785300008058726051

`A271129(2^n-1)`
-/

namespace A271130.P8785300008058726051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271129 (2 ^ n - 1)

end

end A271130.P8785300008058726051

/-! ## A271130.P11943155967521019531

`record[A271129(A153154(n))]`
-/

namespace A271130.P11943155967521019531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271129 (A153154 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A271130.P11943155967521019531

/-! ## A271130.P1743423784316624413

`record[A271129(A245611(n+1))]`
-/

namespace A271130.P1743423784316624413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271129 (A245611 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A271130.P1743423784316624413

/-! ## A271130.P13054191021182207366

`record[gcd(A023416(n), A271129(n))]`
-/

namespace A271130.P13054191021182207366
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A023416 n) (A271129 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A271130.P13054191021182207366

/-! ## A271130.P5349410366147454126

`record[A271129(n)/A000593(n+1)]`
-/

namespace A271130.P5349410366147454126
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A271129 n : ℚ) / (A000593 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A271130.P5349410366147454126

/-!
# A271131: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 291", based on the 5-celled von Neumann neighborhood.

The programs for A271131, there is no canonical definition to state claims against.
-/

/-! ## A271131.P2298494270664301970

`∑[A271129(n)]`
-/

namespace A271131.P2298494270664301970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271129 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271131.P2298494270664301970

/-! ## A271131.P5144829544623060442

`∑[∑[A271132(abs(1-n))]-3]`
-/

namespace A271131.P5144829544623060442
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271132 |1 - (n : ℤ)|.toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271131.P5144829544623060442

/-! ## A271131.P400385909513118089

`∑[A271132(n-1)+a(n-1)]` with `a(0)=1`
-/

namespace A271131.P400385909513118089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A271132 (n - 1) + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271131.P400385909513118089

/-! ## A271131.P13587508293949008433

`a(n-1)+A271129(n)+A000007(n)` with `a(0)=1`
-/

namespace A271131.P13587508293949008433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A271129 n + A000007 n)

end

end A271131.P13587508293949008433

/-! ## A271131.P12767816580546967548

`a(n-1)+A054977(n)*A271129(n)` with `a(0)=1`
-/

namespace A271131.P12767816580546967548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A054977 n * A271129 n

end

end A271131.P12767816580546967548

/-! ## A271131.P11615910914935422711

`A271129(n)+a(A025581(A000124(n)))` with `a(0)=1`
-/

namespace A271131.P11615910914935422711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A271129 n + a (A025581 (A000124 n).toNat).toNat

end

end A271131.P11615910914935422711

/-!
# A271132: First differences of number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 291", based on the 5-celled von Neumann neighborhood.

The programs for A271132, there is no canonical definition to state claims against.
-/

/-! ## A271132.P1802836987111311936

`Δ[A271129(n)]`
-/

namespace A271132.P1802836987111311936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271129 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A271132.P1802836987111311936

/-! ## A271132.P14858447726852600827

`A271129(n+1)-A271129(n)`
-/

namespace A271132.P14858447726852600827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271129 (n + 1) - A271129 n

end

end A271132.P14858447726852600827

/-!
# A271133: Number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 294", based on the 5-celled von Neumann neighborhood.

The programs for A271133, there is no canonical definition to state claims against.
-/

/-! ## A271133.P6941372414518462356

`∑[A271135(abs(1-n))]+2`
-/

namespace A271133.P6941372414518462356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271135 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A271133.P6941372414518462356

/-! ## A271133.P1601292241015114826

`A271135(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A271133.P1601292241015114826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A271135 (n - 1) + a (n - 1)

end

end A271133.P1601292241015114826

/-! ## A271133.P1956908788753384366

`Δ[A271134(n)]-A271135(n)`
-/

namespace A271133.P1956908788753384366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271134 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A271135 n

end

end A271133.P1956908788753384366

/-! ## A271133.P10657070912200315268

`A271134(n+1)-(A271135(n)+A271134(n))`
-/

namespace A271133.P10657070912200315268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271134 (n + 1) - (A271135 n + A271134 n)

end

end A271133.P10657070912200315268

/-! ## A271133.P3709140980320895281

`∑[8*(n+1)-Δ[A273266(n)]]`
-/

namespace A271133.P3709140980320895281
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273266 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (8 * (n + 1) : ℤ) - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271133.P3709140980320895281

/-! ## A271133.P16363108730187947525

`A016754(n+1)-A273266(n+1)`
-/

namespace A271133.P16363108730187947525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016754 (n + 1) - A273266 (n + 1)

end

end A271133.P16363108730187947525

/-! ## A271133.P16791020497196069244

`∑[Δ[A016754(n)]-A273269(n)]`
-/

namespace A271133.P16791020497196069244
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016754 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - A273269 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271133.P16791020497196069244

/-! ## A271133.P15745757496058495638

`A016754(n+1)-Δ[A273268(n)]`
-/

namespace A271133.P15745757496058495638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273268 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016754 (n + 1) - (f1 (n + 1) - f1 n)

end

end A271133.P15745757496058495638

/-! ## A271133.P3284335277224974128

`Δ[A005563(n)]²-Δ[A273268(n)]`
-/

namespace A271133.P3284335277224974128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005563 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273268 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2 - (f2 (n + 1) - f2 n)

end

end A271133.P3284335277224974128

/-!
# A271134: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 294", based on the 5-celled von Neumann neighborhood.

The programs for A271134, there is no canonical definition to state claims against.
-/

/-! ## A271134.P12369192772397870832

`∑[A271133(n)]`
-/

namespace A271134.P12369192772397870832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271133 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271134.P12369192772397870832

/-! ## A271134.P12262711917950850710

`∑[∑[A271135(abs(1-n))]+2]`
-/

namespace A271134.P12262711917950850710
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271135 |1 - (n : ℤ)|.toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271134.P12262711917950850710

/-! ## A271134.P8263550737815976224

`a(n-1)+A271133(n)+A000007(n)` with `a(0)=1`
-/

namespace A271134.P8263550737815976224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A271133 n + A000007 n)

end

end A271134.P8263550737815976224

/-! ## A271134.P3548199821619015367

`a(n-1)+A057427(n)*A271133(n)` with `a(0)=1`
-/

namespace A271134.P3548199821619015367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A057427 n * A271133 n

end

end A271134.P3548199821619015367

/-! ## A271134.P961258637964771406

`a(n-1)+A271133(n)%A271131(n)` with `a(0)=1`
-/

namespace A271134.P961258637964771406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Int.tmod (A271133 n) (A271131 n)

end

end A271134.P961258637964771406

/-! ## A271134.P7971964254873993468

`∑[(2*n+3)²-A273266(n+1)]`
-/

namespace A271134.P7971964254873993468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n + 3) ^ 2 : ℤ) - A273266 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271134.P7971964254873993468

/-! ## A271134.P8764138278077490326

`∑[∑[8*(n+1)-A273269(n)]]`
-/

namespace A271134.P8764138278077490326
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (8 * (n + 1) : ℤ) - A273269 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271134.P8764138278077490326

/-! ## A271134.P10261209536940805956

`a(n-1)+A007318(A000217(n))*A271133(n)` with `a(0)=1`
-/

namespace A271134.P10261209536940805956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A007318 (A000217 n).toNat * A271133 n

end

end A271134.P10261209536940805956

/-!
# A271135: First differences of number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 294", based on the 5-celled von Neumann neighborhood.

The programs for A271135, there is no canonical definition to state claims against.
-/

/-! ## A271135.P8678856609689614467

`Δ[A271133(n)]`
-/

namespace A271135.P8678856609689614467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271133 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A271135.P8678856609689614467

/-! ## A271135.P9088349818723151901

`A271133(n+1)-A271133(n)`
-/

namespace A271135.P9088349818723151901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271133 (n + 1) - A271133 n

end

end A271135.P9088349818723151901

/-! ## A271135.P6983837013246266554

`Δ[(2*n+3)²-A273266(n+1)]`
-/

namespace A271135.P6983837013246266554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n + 3) ^ 2 : ℤ) - A273266 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A271135.P6983837013246266554

/-! ## A271135.P5790406980196685982

`Δ[abs(A016754(n+1)-A273266(n+1))]`
-/

namespace A271135.P5790406980196685982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A016754 (n + 1) - A273266 (n + 1)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A271135.P5790406980196685982

/-! ## A271135.P5628138577823182936

`Δ[A000007(2*n+3)+A016754(n+1)-A273266(n+1)]`
-/

namespace A271135.P5628138577823182936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (2 * n + 3) + (A016754 (n + 1) - A273266 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A271135.P5628138577823182936

/-! ## A271135.P7419191593651253280

`∑[8-Δ[A273269(n)]]+1`
-/

namespace A271135.P7419191593651253280
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273269 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A271135.P7419191593651253280

/-! ## A271135.P14500354642515743205

`8*(n+2)-A273269(n+1)`
-/

namespace A271135.P14500354642515743205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (8 * (n + 2) : ℤ) - A273269 (n + 1)

end

end A271135.P14500354642515743205

/-!
# A271136: Number of active (ON, black) cells at stage 2^n-1 of the two-dimensional cellular automaton defined by "Rule 294", based on the 5-celled von Neumann neighborhood.

The programs for A271136, there is no canonical definition to state claims against.
-/

/-! ## A271136.P14236254325278226627

`A271133(2^n-1)`
-/

namespace A271136.P14236254325278226627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271133 (2 ^ n - 1)

end

end A271136.P14236254325278226627

/-! ## A271136.P18409467174957583461

`record[A271133(A232751(n))]`
-/

namespace A271136.P18409467174957583461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271133 (A232751 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A271136.P18409467174957583461

/-! ## A271136.P12905172123430755325

`record[A271133(abs(A286546(n)))]`
-/

namespace A271136.P12905172123430755325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271133 |A286546 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A271136.P12905172123430755325

/-! ## A271136.P16702163327265829303

`and(-1, A271133(A000225(n)))`
-/

namespace A271136.P16702163327265829303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A271133 (A000225 n).toNat)

end

end A271136.P16702163327265829303

/-! ## A271136.P8340995975771012333

`record[A271133(A243071(n+1))]`
-/

namespace A271136.P8340995975771012333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271133 (A243071 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A271136.P8340995975771012333

/-!
# A271137: Number of n X n X n triangular 0..2 arrays with new values introduced in sequential zero-upwards order and exactly one 2 X 2 X 2 triangle having values all different.

The programs for A271137, there is no canonical definition to state claims against.
-/

/-! ## A271137.P6248522462733468516

`A271141(∑[n+2])`
-/

namespace A271137.P6248522462733468516
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271141 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A271137.P6248522462733468516

/-! ## A271137.P5276947038889708923

`record[Δ[-A271141(n+1)]]`
-/

namespace A271137.P5276947038889708923
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A271141 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A271137.P5276947038889708923

/-! ## A271137.P2101317920181207613

`record[A271141(n+1)/A213275(n)]`
-/

namespace A271137.P2101317920181207613
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A271141 (n + 1) : ℚ) / (A213275 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A271137.P2101317920181207613

/-! ## A271137.P13569220724867189897

`record[(A119879(n)+1)*A271141(n+1)]`
-/

namespace A271137.P13569220724867189897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A119879 n + 1) * A271141 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A271137.P13569220724867189897

/-! ## A271137.P8134383191947331625

`record[A271141(n+1)-A271141(n+2)]`
-/

namespace A271137.P8134383191947331625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271141 (n + 1) - A271141 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A271137.P8134383191947331625

/-!
# A271138: Number of nXnXn triangular 0..3 arrays with new values introduced in sequential zero-upwards order and exactly one 2x2x2 triangle having values all different.

The programs for A271138, there is no canonical definition to state claims against.
-/

/-! ## A271138.P6708442549149192542

`A271141(∑[n+3]+1)`
-/

namespace A271138.P6708442549149192542
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271141 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A271138.P6708442549149192542

/-! ## A271138.P17119210975284238010

`record[A271141(record[A097807(n)+n])]`
-/

namespace A271138.P17119210975284238010
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097807 n + (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271141 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A271138.P17119210975284238010

/-! ## A271138.P14637241731686416299

`record[and(A119879(n), A271141(n+1))]`
-/

namespace A271138.P14637241731686416299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A119879 n) (A271141 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A271138.P14637241731686416299

/-! ## A271138.P12770643846373793207

`record[A271141(abs(1-A025581(n))+n)]`
-/

namespace A271138.P12770643846373793207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271141 (|1 - A025581 n| + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A271138.P12770643846373793207

/-! ## A271138.P9477787291741565459

`record[and(A110503(n+4), A271141(n+1))]`
-/

namespace A271138.P9477787291741565459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A110503 (n + 4)) (A271141 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A271138.P9477787291741565459

/-!
# A271139: Number of nXnXn triangular 0..4 arrays with new values introduced in sequential zero-upwards order and exactly one 2x2x2 triangle having values all different.

The programs for A271139, there is no canonical definition to state claims against.
-/

/-! ## A271139.P11962994615421257554

`A271141(∑[n+4]+3)`
-/

namespace A271139.P11962994615421257554
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271141 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A271139.P11962994615421257554

/-! ## A271139.P10200768327241885582

`A318886(2*(n+1))+A271141(A165157(2*(n+2)))`
-/

namespace A271139.P10200768327241885582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318886 (2 * (n + 1)) + A271141 (A165157 (2 * (n + 2))).toNat

end

end A271139.P10200768327241885582

/-!
# A271140: Number of nXnXn triangular 0..5 arrays with new values introduced in sequential zero-upwards order and exactly one 2x2x2 triangle having values all different.

The programs for A271140, there is no canonical definition to state claims against.
-/

/-! ## A271140.P12223245476772502677

`A271141(eq[4, A193592(n)])`
-/

namespace A271140.P12223245476772502677
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271141 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A271140.P12223245476772502677

/-! ## A271140.P1756737779846713274

`A271141(Δ[A023545(n+1)])`
-/

namespace A271140.P1756737779846713274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271141 (f1 (n + 1) - f1 n).toNat

end

end A271140.P1756737779846713274

/-! ## A271140.P15414711803842392715

`A271141(eq[5, A200370(n+1)])`
-/

namespace A271140.P15414711803842392715
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271141 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A271140.P15414711803842392715

/-! ## A271140.P15443452446840429852

`A271141(eq[6, A185782(n+1)])`
-/

namespace A271140.P15443452446840429852
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271141 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A271140.P15443452446840429852

/-! ## A271140.P10458944590152136713

`A271141(eq[8, A057728(n+1)])`
-/

namespace A271140.P10458944590152136713
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057728 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271141 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A271140.P10458944590152136713

/-!
# A271141: T(n,k)=Number of nXnXn triangular 0..k arrays with new values introduced in sequential zero-upwards order and exactly one 2x2x2 triangle having values all different.

The programs for A271141, there is no canonical definition to state claims against.
-/

/-! ## A271141.P12171022465147835897

`A230980((6*n+1)*a(n-1)*n/2)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=0, a(4)=1, a(5)=0, a(6)=0, a(7)=1`
-/

namespace A271141.P12171022465147835897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 0, 0, 1, 0, 0, 1] fun n a =>
  A230980 (SequenceMachineLib.roundAway (((6 * n + 1 : ℤ) * a (n - 1) : ℚ) * ((n : ℚ) / 2))).toNat

end

end A271141.P12171022465147835897

/-! ## A271141.P2792472176754098893

`A089233(A149255(n))`
-/

namespace A271141.P2792472176754098893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089233 (A149255 n).toNat

end

end A271141.P2792472176754098893

/-! ## A271141.P6755056620299582375

`A116663(A156825(n))`
-/

namespace A271141.P6755056620299582375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116663 (A156825 n).toNat

end

end A271141.P6755056620299582375

/-! ## A271141.P8045591313640084884

`A180196(A153188(n))`
-/

namespace A271141.P8045591313640084884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180196 (A153188 n).toNat

end

end A271141.P8045591313640084884

/-! ## A271141.P2247249781904880089

`A277004(A157284(n))`
-/

namespace A271141.P2247249781904880089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277004 (A157284 n).toNat

end

end A271141.P2247249781904880089

/-!
# A271143: Numbers k such that 42*k^3 + 270*k^2 - 26436*k + 250703 is prime.

The programs for A271143, there is no canonical definition to state claims against.
-/

/-! ## A271143.P7627088490412303006

`lt[A112239(A112220(n)), A055741(n+1)]`
-/

namespace A271143.P7627088490412303006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112239 (A112220 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055741 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A271143.P7627088490412303006

/-! ## A271143.P13782235384730766350

`lt[A112239(A112220(n)), A112234(n+1)]`
-/

namespace A271143.P13782235384730766350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112239 (A112220 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112234 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A271143.P13782235384730766350

/-! ## A271143.P6346943600181857359

`lt[A112239(A112220(n)), A112212(n+3)]`
-/

namespace A271143.P6346943600181857359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112239 (A112220 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112212 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A271143.P6346943600181857359

/-! ## A271143.P14910694653759632711

`lt[A327109(n+1), A074373(A219110(n+5))]`
-/

namespace A271143.P14910694653759632711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327109 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074373 (A219110 (n + 5)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A271143.P14910694653759632711

/-! ## A271143.P18388126272219352053

`lt[A112802(3*(n+1)), A036036(A005117(n+1))]`
-/

namespace A271143.P18388126272219352053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112802 (3 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036036 (A005117 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A271143.P18388126272219352053

/-!
# A271148: Number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 297", based on the 5-celled von Neumann neighborhood.

The programs for A271148, there is no canonical definition to state claims against.
-/

/-! ## A271148.P951912085517236133

`∑[A271151(abs(1-n))]`
-/

namespace A271148.P951912085517236133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271151 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271148.P951912085517236133

/-! ## A271148.P9854224265497726131

`A271151(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A271148.P9854224265497726131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A271151 (n - 1) + a (n - 1)

end

end A271148.P9854224265497726131

/-! ## A271148.P10898164873494680394

`Δ[A271150(n)]-A271151(n)`
-/

namespace A271148.P10898164873494680394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271150 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A271151 n

end

end A271148.P10898164873494680394

/-! ## A271148.P4449077441274606197

`A271150(n+1)-(A271151(n)+A271150(n))`
-/

namespace A271148.P4449077441274606197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271150 (n + 1) - (A271151 n + A271150 n)

end

end A271148.P4449077441274606197

/-! ## A271148.P16920420477891868121

`∑[A271151(n)]+(1-A271151(n))%A285450(n+1)`
-/

namespace A271148.P16920420477891868121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271151 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + Int.tmod (1 - A271151 n) (A285450 (n + 1))

end

end A271148.P16920420477891868121

/-!
# A271149: Number of active (ON, black) cells at stage 2^n-1 of the two-dimensional cellular automaton defined by "Rule 297", based on the 5-celled von Neumann neighborhood.

The programs for A271149, there is no canonical definition to state claims against.
-/

/-! ## A271149.P16082842568127702611

`A271148(2^n-1)`
-/

namespace A271149.P16082842568127702611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271148 (2 ^ n - 1)

end

end A271149.P16082842568127702611

/-! ## A271149.P8298287280065508474

`record[A271148(A218616(n))]`
-/

namespace A271149.P8298287280065508474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271148 (A218616 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A271149.P8298287280065508474

/-! ## A271149.P14993374787885521528

`record[A271148(A303765(n))]`
-/

namespace A271149.P14993374787885521528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271148 (A303765 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A271149.P14993374787885521528

/-! ## A271149.P15615405850488514735

`record[A271148(A297156(n+1))]`
-/

namespace A271149.P15615405850488514735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271148 (A297156 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A271149.P15615405850488514735

/-! ## A271149.P11532671101291407395

`record[A271148(A323243(n+1))]`
-/

namespace A271149.P11532671101291407395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271148 (A323243 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A271149.P11532671101291407395

/-!
# A271150: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 297", based on the 5-celled von Neumann neighborhood.

The programs for A271150, there is no canonical definition to state claims against.
-/

/-! ## A271150.P13391145479789393418

`∑[A271148(n)]`
-/

namespace A271150.P13391145479789393418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271148 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271150.P13391145479789393418

/-! ## A271150.P8113944879521503298

`a(n-1)+A271148(n)%A001386(n)` with `a(0)=1`
-/

namespace A271150.P8113944879521503298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Int.tmod (A271148 n) (A001386 n)

end

end A271150.P8113944879521503298

/-! ## A271150.P12672678263053389365

`A271148(A004524(2*n+1))+a(n-1)` with `a(0)=1`
-/

namespace A271150.P12672678263053389365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A271148 (A004524 (2 * n + 1)).toNat + a (n - 1)

end

end A271150.P12672678263053389365

/-! ## A271150.P12454619684354263008

`A271148(n%A000203(n+1))+a(n-1)` with `a(0)=1`
-/

namespace A271150.P12454619684354263008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A271148 (Int.tmod (n : ℤ) (A000203 (n + 1))).toNat + a (n - 1)

end

end A271150.P12454619684354263008

/-! ## A271150.P15550462806345574608

`∑[∑[A271151(abs(1-n))]]`
-/

namespace A271150.P15550462806345574608
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271151 |1 - (n : ℤ)|.toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271150.P15550462806345574608

/-! ## A271150.P3072385486868697314

`∑[∑[A271151(n)]+1-A271151(n)]`
-/

namespace A271150.P3072385486868697314
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271151 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (1 - A271151 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271150.P3072385486868697314

/-! ## A271150.P792186299680951142

`A271148(n+1)+a(n-1)-A271151(n)` with `a(0)=1`
-/

namespace A271150.P792186299680951142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A271148 (n + 1) + (a (n - 1) - A271151 n)

end

end A271150.P792186299680951142

/-!
# A271151: First differences of number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 297", based on the 5-celled von Neumann neighborhood.

The programs for A271151, there is no canonical definition to state claims against.
-/

/-! ## A271151.P6480551294563292047

`Δ[A271148(n)]`
-/

namespace A271151.P6480551294563292047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271148 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A271151.P6480551294563292047

/-! ## A271151.P5144403453055983760

`A271148(n+1)-A271148(n)`
-/

namespace A271151.P5144403453055983760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271148 (n + 1) - A271148 n

end

end A271151.P5144403453055983760

/-!
# A271152: Number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 299", based on the 5-celled von Neumann neighborhood.

The programs for A271152, there is no canonical definition to state claims against.
-/

/-! ## A271152.P5068659390811406648

`A271155(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A271152.P5068659390811406648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A271155 (n - 1) + a (n - 1)

end

end A271152.P5068659390811406648

/-! ## A271152.P343589926162011484

`Δ[A271154(n)]-A271155(n)`
-/

namespace A271152.P343589926162011484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271154 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A271155 n

end

end A271152.P343589926162011484

/-! ## A271152.P17078116158849817241

`A168269(n+1)²-A270465(n+1)`
-/

namespace A271152.P17078116158849817241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168269 (n + 1) ^ 2 - A270465 (n + 1)

end

end A271152.P17078116158849817241

/-! ## A271152.P7067162755293707174

`A271154(n+1)-(A271155(n)+A271154(n))`
-/

namespace A271152.P7067162755293707174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271154 (n + 1) - (A271155 n + A271154 n)

end

end A271152.P7067162755293707174

/-! ## A271152.P15597030933459263455

`A020725(∑[A271155(n)])-A271155(n)`
-/

namespace A271152.P15597030933459263455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271155 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - A271155 n

end

end A271152.P15597030933459263455

/-!
# A271153: Number of active (ON, black) cells at stage 2^n-1 of the two-dimensional cellular automaton defined by "Rule 299", based on the 5-celled von Neumann neighborhood.

The programs for A271153, there is no canonical definition to state claims against.
-/

/-! ## A271153.P12111448760896465707

`A271152(2^n-1)`
-/

namespace A271153.P12111448760896465707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271152 (2 ^ n - 1)

end

end A271153.P12111448760896465707

/-! ## A271153.P13623041466719076628

`record[A271152(A218616(n))]`
-/

namespace A271153.P13623041466719076628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271152 (A218616 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A271153.P13623041466719076628

/-! ## A271153.P15013282152985536854

`and(-1, A271152(A000225(n)))`
-/

namespace A271153.P15013282152985536854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A271152 (A000225 n).toNat)

end

end A271153.P15013282152985536854

/-! ## A271153.P16603432865736497320

`record[A271152(n)/A292270(n)]`
-/

namespace A271153.P16603432865736497320
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A271152 n : ℚ) / (A292270 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A271153.P16603432865736497320

/-! ## A271153.P10359936023477601713

`gcd(A000038(n), A271152(A000225(n)))`
-/

namespace A271153.P10359936023477601713
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A271152 (A000225 n).toNat)

end

end A271153.P10359936023477601713

/-!
# A271154: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 299", based on the 5-celled von Neumann neighborhood.

The programs for A271154, there is no canonical definition to state claims against.
-/

/-! ## A271154.P5471849858043060892

`∑[A168269(n+1)²-A270465(n+1)]`
-/

namespace A271154.P5471849858043060892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168269 (n + 1) ^ 2 - A270465 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271154.P5471849858043060892

/-! ## A271154.P12463802096281129198

`∑[A271155(n-1)+a(n-1)]` with `a(0)=1`
-/

namespace A271154.P12463802096281129198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A271155 (n - 1) + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271154.P12463802096281129198

/-! ## A271154.P7653829435922482530

`∑[∑[A271155(n)]+1-A271155(n)]`
-/

namespace A271154.P7653829435922482530
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271155 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (1 - A271155 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271154.P7653829435922482530

/-! ## A271154.P11044730972175796676

`∑[A271152(n)]`
-/

namespace A271154.P11044730972175796676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271152 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271154.P11044730972175796676

/-! ## A271154.P3314233145509067933

`A271152(n)+a(A028310(n)-1)` with `a(0)=1`
-/

namespace A271154.P3314233145509067933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A271152 n + a (A028310 n - 1).toNat

end

end A271154.P3314233145509067933

/-! ## A271154.P3784773301462709384

`a(n-1)+A271152(n)+A000038(n)` with `a(0)=1`
-/

namespace A271154.P3784773301462709384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A271152 n + A000038 n)

end

end A271154.P3784773301462709384

/-!
# A271155: First differences of number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 299", based on the 5-celled von Neumann neighborhood.

The programs for A271155, there is no canonical definition to state claims against.
-/

/-! ## A271155.P18261773500189750776

`Δ[A168269(n+1)²-A270465(n+1)]`
-/

namespace A271155.P18261773500189750776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168269 (n + 1) ^ 2 - A270465 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A271155.P18261773500189750776

/-! ## A271155.P11576980768957817316

`Δ[A271152(n)]`
-/

namespace A271155.P11576980768957817316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271152 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A271155.P11576980768957817316

/-! ## A271155.P13710667709543563189

`A271152(n+1)-A271152(n)`
-/

namespace A271155.P13710667709543563189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271152 (n + 1) - A271152 n

end

end A271155.P13710667709543563189

/-!
# A271156: Number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 302", based on the 5-celled von Neumann neighborhood.

The programs for A271156, there is no canonical definition to state claims against.
-/

/-! ## A271156.P1808040620005405734

`A271159(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A271156.P1808040620005405734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A271159 (n - 1) + a (n - 1)

end

end A271156.P1808040620005405734

/-! ## A271156.P15399397556829893643

`∑[A271159(n)]+1-A271159(n)`
-/

namespace A271156.P15399397556829893643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271159 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A271159 n)

end

end A271156.P15399397556829893643

/-! ## A271156.P9920665641917292963

`Δ[A271158(n)]-A271159(n)`
-/

namespace A271156.P9920665641917292963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271158 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A271159 n

end

end A271156.P9920665641917292963

/-! ## A271156.P17795555809949493261

`A271158(n+1)-(A271159(n)+A271158(n))`
-/

namespace A271156.P17795555809949493261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271158 (n + 1) - (A271159 n + A271158 n)

end

end A271156.P17795555809949493261

/-! ## A271156.P4519376633028611580

`A033996(n+1)-∑[A272927(n)]`
-/

namespace A271156.P4519376633028611580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272927 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033996 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271156.P4519376633028611580

/-! ## A271156.P1849759157004602841

`(2*n+3)²-A272924(n+1)`
-/

namespace A271156.P1849759157004602841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n + 3) ^ 2 : ℤ) - A272924 (n + 1)

end

end A271156.P1849759157004602841

/-! ## A271156.P1603894618405185049

`(2*n+3)²%A272924(A008619(2*n))`
-/

namespace A271156.P1603894618405185049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((2 * n + 3) ^ 2 : ℤ) (A272924 (A008619 (2 * n)).toNat)

end

end A271156.P1603894618405185049

/-! ## A271156.P2534217357833127250

`A016754(n+1)-Δ[A272926(n)]`
-/

namespace A271156.P2534217357833127250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272926 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016754 (n + 1) - (f1 (n + 1) - f1 n)

end

end A271156.P2534217357833127250

/-! ## A271156.P9303587901328898399

`A016754(n)-Δ[A272926(n)-A016754(n)]`
-/

namespace A271156.P9303587901328898399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272926 n - A016754 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016754 n - (f1 (n + 1) - f1 n)

end

end A271156.P9303587901328898399

/-!
# A271157: Number of active (ON, black) cells at stage 2^n-1 of the two-dimensional cellular automaton defined by "Rule 302", based on the 5-celled von Neumann neighborhood.

The programs for A271157, there is no canonical definition to state claims against.
-/

/-! ## A271157.P5550565544924335488

`A271156(2^n-1)`
-/

namespace A271157.P5550565544924335488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271156 (2 ^ n - 1)

end

end A271157.P5550565544924335488

/-! ## A271157.P9450725164144467342

`record[A271156(A173787(n))]`
-/

namespace A271157.P9450725164144467342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271156 (A173787 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A271157.P9450725164144467342

/-! ## A271157.P12640174694445006814

`record[A271156(A303763(n))]`
-/

namespace A271157.P12640174694445006814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271156 (A303763 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A271157.P12640174694445006814

/-! ## A271157.P10100821324950452873

`record[A271156(abs(A286546(n)))]`
-/

namespace A271157.P10100821324950452873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271156 |A286546 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A271157.P10100821324950452873

/-! ## A271157.P14187876383576169290

`record[A271156(A200714(n+1))]`
-/

namespace A271157.P14187876383576169290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271156 (A200714 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A271157.P14187876383576169290

/-!
# A271158: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 302", based on the 5-celled von Neumann neighborhood.

The programs for A271158, there is no canonical definition to state claims against.
-/

/-! ## A271158.P8003915624704117564

`∑[A271156(n)]`
-/

namespace A271158.P8003915624704117564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271156 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271158.P8003915624704117564

/-! ## A271158.P2882385772422524772

`A271156(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A271158.P2882385772422524772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A271156 n + a (A023443 n).toNat

end

end A271158.P2882385772422524772

/-! ## A271158.P6970619671451350986

`∑[∑[A271159(n)]+1-A271159(n)]`
-/

namespace A271158.P6970619671451350986
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271159 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (1 - A271159 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271158.P6970619671451350986

/-! ## A271158.P1059937465631901940

`a(n-1)+A271156(n)%A008412(n)` with `a(0)=1`
-/

namespace A271158.P1059937465631901940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Int.tmod (A271156 n) (A008412 n)

end

end A271158.P1059937465631901940

/-! ## A271158.P17915292458140176656

`∑[A016754(n+1)-A272924(n+1)]`
-/

namespace A271158.P17915292458140176656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016754 (n + 1) - A272924 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271158.P17915292458140176656

/-!
# A271159: First differences of number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 302", based on the 5-celled von Neumann neighborhood.

The programs for A271159, there is no canonical definition to state claims against.
-/

/-! ## A271159.P14825199950235410240

`Δ[A271156(n)]`
-/

namespace A271159.P14825199950235410240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271156 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A271159.P14825199950235410240

/-! ## A271159.P7913763059147233539

`A271156(n+1)-A271156(n)`
-/

namespace A271159.P7913763059147233539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271156 (n + 1) - A271156 n

end

end A271159.P7913763059147233539

/-! ## A271159.P2609907554395143826

`∑[8-Δ[A272927(n)]]+1`
-/

namespace A271159.P2609907554395143826
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272927 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A271159.P2609907554395143826

/-! ## A271159.P12103270324926941568

`8*(n+2)-A272927(n+1)`
-/

namespace A271159.P12103270324926941568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (8 * (n + 2) : ℤ) - A272927 (n + 1)

end

end A271159.P12103270324926941568

/-! ## A271159.P2522848813054007964

`Δ[(2*n+3)²-A272924(n+1)]`
-/

namespace A271159.P2522848813054007964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n + 3) ^ 2 : ℤ) - A272924 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A271159.P2522848813054007964

/-!
# A271160: Number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 305", based on the 5-celled von Neumann neighborhood.

The programs for A271160, there is no canonical definition to state claims against.
-/

/-! ## A271160.P3326102633366877984

`∑[A271163(abs(1-n))]`
-/

namespace A271160.P3326102633366877984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271163 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271160.P3326102633366877984

/-! ## A271160.P4167966964287789832

`A271163(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A271160.P4167966964287789832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A271163 (n - 1) + a (n - 1)

end

end A271160.P4167966964287789832

/-! ## A271160.P13194115719838767701

`Δ[A271162(n)]-A271163(n)`
-/

namespace A271160.P13194115719838767701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271162 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A271163 n

end

end A271160.P13194115719838767701

/-! ## A271160.P9211668275405141632

`A059029(or(1, n))²-A272291(n+1)`
-/

namespace A271160.P9211668275405141632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059029 (Nat.lor 1 n) ^ 2 - A272291 (n + 1)

end

end A271160.P9211668275405141632

/-! ## A271160.P8205830617622609238

`A271162(n+1)-(A271163(n)+A271162(n))`
-/

namespace A271160.P8205830617622609238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271162 (n + 1) - (A271163 n + A271162 n)

end

end A271160.P8205830617622609238

/-!
# A271161: Number of active (ON, black) cells at stage 2^n-1 of the two-dimensional cellular automaton defined by "Rule 305", based on the 5-celled von Neumann neighborhood.

The programs for A271161, there is no canonical definition to state claims against.
-/

/-! ## A271161.P10939084768556004677

`A271160(2^n-1)`
-/

namespace A271161.P10939084768556004677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271160 (2 ^ n - 1)

end

end A271161.P10939084768556004677

/-! ## A271161.P11256408237452909082

`record[A271160(A173787(n))]`
-/

namespace A271161.P11256408237452909082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271160 (A173787 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A271161.P11256408237452909082

/-! ## A271161.P675047702743720116

`record[A271160(A255067(n))]`
-/

namespace A271161.P675047702743720116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271160 (A255067 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A271161.P675047702743720116

/-! ## A271161.P2086319573421658261

`record[A271160(A243071(n+1))]`
-/

namespace A271161.P2086319573421658261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271160 (A243071 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A271161.P2086319573421658261

/-! ## A271161.P9139379511825786417

`record[A271160(A245611(n+1))]`
-/

namespace A271161.P9139379511825786417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271160 (A245611 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A271161.P9139379511825786417

/-!
# A271162: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 305", based on the 5-celled von Neumann neighborhood.

The programs for A271162, there is no canonical definition to state claims against.
-/

/-! ## A271162.P5871460477662212626

`∑[∑[A271163(abs(1-n))]]`
-/

namespace A271162.P5871460477662212626
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271163 |1 - (n : ℤ)|.toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271162.P5871460477662212626

/-! ## A271162.P11060285998848726333

`∑[A271163(n-1)+a(n-1)]` with `a(0)=1`
-/

namespace A271162.P11060285998848726333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A271163 (n - 1) + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271162.P11060285998848726333

/-! ## A271162.P15004821646034186075

`∑[∑[A271163(n)]+1-A271163(n)]`
-/

namespace A271162.P15004821646034186075
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271163 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (1 - A271163 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271162.P15004821646034186075

/-! ## A271162.P976270525085092967

`∑[A059029(or(1, n))²-A272291(n+1)]`
-/

namespace A271162.P976270525085092967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059029 (Nat.lor 1 n) ^ 2 - A272291 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271162.P976270525085092967

/-! ## A271162.P15184333929146681544

`∑[A271160(n)]`
-/

namespace A271162.P15184333929146681544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271160 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271162.P15184333929146681544

/-! ## A271162.P15581795116669871041

`a(n-1)+A271160(n)+A000007(n)` with `a(0)=1`
-/

namespace A271162.P15581795116669871041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A271160 n + A000007 n)

end

end A271162.P15581795116669871041

/-! ## A271162.P475483942779304718

`a(n-1)+A271160(n)%A270231(n+2)` with `a(0)=1`
-/

namespace A271162.P475483942779304718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Int.tmod (A271160 n) (A270231 (n + 2))

end

end A271162.P475483942779304718

/-!
# A271163: First differences of number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 305", based on the 5-celled von Neumann neighborhood.

The programs for A271163, there is no canonical definition to state claims against.
-/

/-! ## A271163.P12101194354482922819

`Δ[A059029(or(1, n))²-A272291(n+1)]`
-/

namespace A271163.P12101194354482922819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059029 (Nat.lor 1 n) ^ 2 - A272291 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A271163.P12101194354482922819

/-! ## A271163.P11494085060707073969

`Δ[A271160(n)]`
-/

namespace A271163.P11494085060707073969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271160 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A271163.P11494085060707073969

/-! ## A271163.P7945971462655327157

`A271160(n+1)-A271160(n)`
-/

namespace A271163.P7945971462655327157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271160 (n + 1) - A271160 n

end

end A271163.P7945971462655327157

/-! ## A271163.P6522011749215330867

`or(A000005(A255985(n)), A270017(n))`
-/

namespace A271163.P6522011749215330867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000005 (A255985 n).toNat) (A270017 n)

end

end A271163.P6522011749215330867

/-!
# A271164: Number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 307", based on the 5-celled von Neumann neighborhood.

The programs for A271164, there is no canonical definition to state claims against.
-/

/-! ## A271164.P12051049345373586793

`A271167(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A271164.P12051049345373586793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A271167 (n - 1) + a (n - 1)

end

end A271164.P12051049345373586793

/-! ## A271164.P7891670866695477544

`∑[A271167(n-a(A000038(n)))]` with `a(0)=1`
-/

namespace A271164.P7891670866695477544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A271167 ((n : ℤ) - f1 (A000038 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271164.P7891670866695477544

/-! ## A271164.P10188582235145578455

`Δ[A271166(n)]-A271167(n)`
-/

namespace A271164.P10188582235145578455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271166 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A271167 n

end

end A271164.P10188582235145578455

/-! ## A271164.P17734651950632425411

`A271166(n+1)-(A271167(n)+A271166(n))`
-/

namespace A271164.P17734651950632425411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271166 (n + 1) - (A271167 n + A271166 n)

end

end A271164.P17734651950632425411

/-!
# A271165: Number of active (ON, black) cells at stage 2^n-1 of the two-dimensional cellular automaton defined by "Rule 307", based on the 5-celled von Neumann neighborhood.

The programs for A271165, there is no canonical definition to state claims against.
-/

/-! ## A271165.P4445394662287859283

`A271164(2^n-1)`
-/

namespace A271165.P4445394662287859283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271164 (2 ^ n - 1)

end

end A271165.P4445394662287859283

/-! ## A271165.P15738642975769450993

`record[A271164(A173787(n))]`
-/

namespace A271165.P15738642975769450993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271164 (A173787 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A271165.P15738642975769450993

/-! ## A271165.P2446952817573425616

`record[A271164(A175920(n))]`
-/

namespace A271165.P2446952817573425616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271164 (A175920 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A271165.P2446952817573425616

/-! ## A271165.P1323136544352862991

`record[A271164(A227351(n))]`
-/

namespace A271165.P1323136544352862991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271164 (A227351 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A271165.P1323136544352862991

/-! ## A271165.P9381642753861322061

`record[A271164(A232751(n))]`
-/

namespace A271165.P9381642753861322061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271164 (A232751 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A271165.P9381642753861322061

/-!
# A271166: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 307", based on the 5-celled von Neumann neighborhood.

The programs for A271166, there is no canonical definition to state claims against.
-/

/-! ## A271166.P8882594057634498781

`∑[A271164(n)]`
-/

namespace A271166.P8882594057634498781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271164 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271166.P8882594057634498781

/-! ## A271166.P3911606326581066695

`A271164(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A271166.P3911606326581066695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A271164 n + a (A023443 n).toNat

end

end A271166.P3911606326581066695

/-! ## A271166.P6036084383142443763

`A271164(sqrt(A000290(n)))+a(n-1)` with `a(0)=1`
-/

namespace A271166.P6036084383142443763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A271164 (SequenceMachineLib.roundAway (Real.sqrt (A000290 n : ℝ))).toNat + a (n - 1)

end

end A271166.P6036084383142443763

/-! ## A271166.P8731448457115531001

`A271164(A004526(n+n))+a(n-1)` with `a(0)=1`
-/

namespace A271166.P8731448457115531001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A271164 (A004526 (n + n)).toNat + a (n - 1)

end

end A271166.P8731448457115531001

/-! ## A271166.P12433292698079678127

`∑[∑[A271167(n)]+1-A271167(n)]`
-/

namespace A271166.P12433292698079678127
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271167 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (1 - A271167 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271166.P12433292698079678127

/-!
# A271167: First differences of number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 307", based on the 5-celled von Neumann neighborhood.

The programs for A271167, there is no canonical definition to state claims against.
-/

/-! ## A271167.P17357684979074094920

`Δ[A271164(n)]`
-/

namespace A271167.P17357684979074094920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271164 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A271167.P17357684979074094920

/-! ## A271167.P2832401571741769390

`A271164(n+1)-A271164(n)`
-/

namespace A271167.P2832401571741769390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271164 (n + 1) - A271164 n

end

end A271167.P2832401571741769390

/-! ## A271167.P16115913127414521922

`A271249(n)-A123056(A011815(n))`
-/

namespace A271167.P16115913127414521922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271249 n - A123056 (A011815 n).toNat

end

end A271167.P16115913127414521922

/-! ## A271167.P3088246320917784361

`Δ[A266206(n)]-A123056(A011815(n))`
-/

namespace A271167.P3088246320917784361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266206 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A123056 (A011815 n).toNat

end

end A271167.P3088246320917784361

/-!
# A271168: Numbers n such that Fibonacci(n) divides p! where p is n-th prime.

The programs for A271168, there is no canonical definition to state claims against.
-/

/-! ## A271168.P5983553899180001273

`lt[n!, 3^∑{d}[n, #]]`
-/

namespace A271168.P5983553899180001273
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ (∑ d ∈ Nat.divisors (f3 n), d)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A271168.P5983553899180001273

/-! ## A271168.P605926849683304694

`lt[n!, ∏{d}[n, 3^#]]`
-/

namespace A271168.P605926849683304694
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f3 n), 3 ^ d

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A271168.P605926849683304694

/-! ## A271168.P13156696418315781018

`lt[3*(n+1)-∑{d}[n+1, #], 19]+1`
-/

namespace A271168.P13156696418315781018
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * (n + 1) : ℤ) - ((∑ d ∈ Nat.divisors (f2 n), d : ℕ) : ℤ)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  19

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n + 1

end

end A271168.P13156696418315781018

/-! ## A271168.P3169995981462398649

`lt[A036997(n+1), 3]+1`
-/

namespace A271168.P3169995981462398649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036997 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A271168.P3169995981462398649

/-! ## A271168.P9064581360685420809

`lt[A048864(n+1), 4]+1`
-/

namespace A271168.P9064581360685420809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048864 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A271168.P9064581360685420809

/-!
# A271169: Number of ordered ways to write n as s^5 + t^5 + 2*u^5 + 3*v^5 + 4*w^5 + 5*x^5 + 7*y^5 + 14*z^5, where s,t,u,v,w,x,y,z are nonnegative integers with s <= t.

The programs for A271169, there is no canonical definition to state claims against.
-/

/-! ## A271169.P1116260074091108981

`A126302(A068491(n)+A051584(n+1))`
-/

namespace A271169.P1116260074091108981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126302 (A068491 n + A051584 (n + 1)).toNat

end

end A271169.P1116260074091108981

/-!
# A271176: Expansion of -(4*x^3-7*x^2+4*x-1)/(2*x^4-5*x^3+8*x^2-5*x+1).

The programs for A271176, the canonical program `A271176.P6834116620356974670` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A271176 has offset 0).

The definition of A271176 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-4x+7x^2-4x^3)/(1-5x+8x^2-5x^3+2x^4))` (program `A271176.P6834116620356974670`, by `A271176.P6834116620356974670.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A271176.P6834116620356974670

`ogf((1-4x+7x^2-4x^3)/(1-5x+8x^2-5x^3+2x^4))`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A271176

/-- `ogf((1-4x+7x^2-4x^3)/(1-5x+8x^2-5x^3+2x^4))` -/
def P6834116620356974670.Spec : Prop :=
  ∀ n, P6834116620356974670.a n = A271176 n

theorem P6834116620356974670.correct : P6834116620356974670.Spec := by
  intro n
  simp only [A271176]

end A271176

/-! ## A271176.P16186344650678006430

`5*a(n-1)-8*a(n-2)+5*a(n-3)-2*a(n-4)` with `a(0)=1, a(1)=1, a(2)=4, a(3)=13`
-/

namespace A271176.P16186344650678006430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 4, 13] fun n a =>
  5 * a (n - 1) - 8 * a (n - 2) + 5 * a (n - 3) - 2 * a (n - 4)

end

end A271176.P16186344650678006430

namespace A271176

/-- `5*a(n-1)-8*a(n-2)+5*a(n-3)-2*a(n-4)` -/
def P16186344650678006430.Spec : Prop :=
  ∀ n, P16186344650678006430.a n = A271176 n

end A271176

/-! ## A271176.P4419620500498306268

`A001608(3*(n+1))-Δ[A048578(n)]`
-/

namespace A271176.P4419620500498306268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048578 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001608 (3 * (n + 1)) - (f1 (n + 1) - f1 n)

end

end A271176.P4419620500498306268

namespace A271176

/-- `A001608(3*(n+1))-Δ[A048578(n)]` -/
def P4419620500498306268.Spec : Prop :=
  ∀ n, P4419620500498306268.a n = A271176 n

end A271176

/-! ## A271176.P8493812373644426278

`A001608(3*(n+1))-Δ[A126646(n)]`
-/

namespace A271176.P8493812373644426278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126646 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001608 (3 * (n + 1)) - (f1 (n + 1) - f1 n)

end

end A271176.P8493812373644426278

namespace A271176

/-- `A001608(3*(n+1))-Δ[A126646(n)]` -/
def P8493812373644426278.Spec : Prop :=
  ∀ n, P8493812373644426278.a n = A271176 n

end A271176

/-! ## A271176.P17668772715329400479

`A001608(3*(n+1))-A000079(n+1)`
-/

namespace A271176.P17668772715329400479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001608 (3 * (n + 1)) - A000079 (n + 1)

end

end A271176.P17668772715329400479

namespace A271176

/-- `A001608(3*(n+1))-A000079(n+1)` -/
def P17668772715329400479.Spec : Prop :=
  ∀ n, P17668772715329400479.a n = A271176 n

end A271176

/-! ## A271176.P14030080588776658745

`A001608(3*(n+1))-Δ[A000051(n+1)]`
-/

namespace A271176.P14030080588776658745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001608 (3 * (n + 1)) - (f1 (n + 1) - f1 n)

end

end A271176.P14030080588776658745

namespace A271176

/-- `A001608(3*(n+1))-Δ[A000051(n+1)]` -/
def P14030080588776658745.Spec : Prop :=
  ∀ n, P14030080588776658745.a n = A271176 n

end A271176

/-!
# A271180: Expansion of (4*x^3-7*x^2+4*x-1)/(x^6-4*x^5+4*x^4+x^3-7*x^2+5*x-1).

The programs for A271180, the canonical program `A271180.P6898479063740694586` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A271180 has offset 0).

The definition of A271180 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-4x+7x^2-4x^3)/(1-5x+7x^2-x^3-4x^4+4x^5-x^6))` (program `A271180.P6898479063740694586`, by `A271180.P6898479063740694586.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A271180.P6898479063740694586

`ogf((1-4x+7x^2-4x^3)/(1-5x+7x^2-x^3-4x^4+4x^5-x^6))`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A271180

/-- `ogf((1-4x+7x^2-4x^3)/(1-5x+7x^2-x^3-4x^4+4x^5-x^6))` -/
def P6898479063740694586.Spec : Prop :=
  ∀ n, P6898479063740694586.a n = A271180 n

theorem P6898479063740694586.correct : P6898479063740694586.Spec := by
  intro n
  simp only [A271180]

end A271180

/-! ## A271180.P8945731082230015615

`A002266(A269650(n+1))+A000007(n)`
-/

namespace A271180.P8945731082230015615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002266 (A269650 (n + 1)).toNat + A000007 n

end

end A271180.P8945731082230015615

namespace A271180

/-- `A002266(A269650(n+1))+A000007(n)` -/
def P8945731082230015615.Spec : Prop :=
  ∀ n, P8945731082230015615.a n = A271180 n

end A271180

/-! ## A271180.P16833490718688785621

`A002266(A269650(n+1)+A000038(n))`
-/

namespace A271180.P16833490718688785621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002266 (A269650 (n + 1) + A000038 n).toNat

end

end A271180.P16833490718688785621

namespace A271180

/-- `A002266(A269650(n+1)+A000038(n))` -/
def P16833490718688785621.Spec : Prop :=
  ∀ n, P16833490718688785621.a n = A271180 n

end A271180

/-! ## A271180.P15037092051598087234

`or(A002266(A269650(n+1)), A023533(n))`
-/

namespace A271180.P15037092051598087234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A002266 (A269650 (n + 1)).toNat) (A023533 n)

end

end A271180.P15037092051598087234

namespace A271180

/-- `or(A002266(A269650(n+1)), A023533(n))` -/
def P15037092051598087234.Spec : Prop :=
  ∀ n, P15037092051598087234.a n = A271180 n

end A271180

/-!
# A271182: a(n) = prime(n)^(2*n) - prime(n)^(n-1).

The programs for A271182, there is no canonical definition to state claims against.
-/

/-! ## A271182.P4621070438885925799

`A062457(n+1)²-A093360(n+1)`
-/

namespace A271182.P4621070438885925799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062457 (n + 1) ^ 2 - A093360 (n + 1)

end

end A271182.P4621070438885925799

/-! ## A271182.P12039545292641081749

`(A197987(n+1)-1)*A093360(n+1)`
-/

namespace A271182.P12039545292641081749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A197987 (n + 1) - 1) * A093360 (n + 1)

end

end A271182.P12039545292641081749

/-!
# A271183: Löschian numbers (A003136) k such that k + 1 is also Löschian number.

The programs for A271183, the canonical program `A271183.P13519153737086807592` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A271183 has offset 1).

The definition of A271183 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1128 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A271183.P13519153737086807592

`eq[1, A353816(A353816(n)+n)]`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A271183

/-- `eq[1, A353816(A353816(n)+n)]` -/
def P13519153737086807592.Spec : Prop :=
  ∀ n, (P13519153737086807592.a n : ℤ) = A271183 (n + 1)

theorem P13519153737086807592.correct : P13519153737086807592.Spec := by
  intro n
  simp only [A271183, Nat.add_sub_cancel]

end A271183

/-! ## A271183.P10643888010727854462

`lt[acot(A353816(n+1)), A353816(n)]`
-/

namespace A271183.P10643888010727854462
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (A353816 (n + 1) : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353816 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A271183.P10643888010727854462

namespace A271183

/-- `lt[acot(A353816(n+1)), A353816(n)]` -/
def P10643888010727854462.Spec : Prop :=
  ∀ n, (P10643888010727854462.a n : ℤ) = A271183 (n + 1)

end A271183

/-! ## A271183.P10364729064240157403

`∩[A003136(n+1)-1, A003136(n+1)]`
-/

namespace A271183.P10364729064240157403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003136 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003136 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A271183.P10364729064240157403

namespace A271183

/-- `∩[A003136(n+1)-1, A003136(n+1)]` -/
def P10364729064240157403.Spec : Prop :=
  ∀ n, (P10364729064240157403.a n : ℤ) = A271183 (n + 1)

end A271183

/-! ## A271183.P5337273686398901463

`A003136(eq[1, A003136(n+2)-A003136(n+1)]+1)`
-/

namespace A271183.P5337273686398901463
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003136 (n + 2) - A003136 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003136 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A271183.P5337273686398901463

namespace A271183

/-- `A003136(eq[1, A003136(n+2)-A003136(n+1)]+1)` -/
def P5337273686398901463.Spec : Prop :=
  ∀ n, P5337273686398901463.a n = A271183 (n + 1)

end A271183

/-! ## A271183.P13074971501407597322

`lt[2, A004016(n+1)*A005928(n)]`
-/

namespace A271183.P13074971501407597322
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004016 (n + 1) * A005928 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A271183.P13074971501407597322

namespace A271183

/-- `lt[2, A004016(n+1)*A005928(n)]` -/
def P13074971501407597322.Spec : Prop :=
  ∀ n, (P13074971501407597322.a n : ℤ) = A271183 (n + 1)

end A271183

/-! ## A271183.P8999026909683078940

`lt[2, (A005928(n+1)*A033716(n))²]`
-/

namespace A271183.P8999026909683078940
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A005928 (n + 1) * A033716 n) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A271183.P8999026909683078940

namespace A271183

/-- `lt[2, (A005928(n+1)*A033716(n))²]` -/
def P8999026909683078940.Spec : Prop :=
  ∀ n, (P8999026909683078940.a n : ℤ) = A271183 (n + 1)

end A271183

/-! ## A271183.P9893817319370067471

`lt[2, abs(A005928(n+1))*A005928(n)+1]`
-/

namespace A271183.P9893817319370067471
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A005928 (n + 1)| * A005928 n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A271183.P9893817319370067471

namespace A271183

/-- `lt[2, abs(A005928(n+1))*A005928(n)+1]` -/
def P9893817319370067471.Spec : Prop :=
  ∀ n, (P9893817319370067471.a n : ℤ) = A271183 (n + 1)

end A271183

/-! ## A271183.P2420434435557772644

`lt[A005090(A007913(n+1)), A353816(n)]`
-/

namespace A271183.P2420434435557772644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005090 (A007913 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353816 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A271183.P2420434435557772644

namespace A271183

/-- `lt[A005090(A007913(n+1)), A353816(n)]` -/
def P2420434435557772644.Spec : Prop :=
  ∀ n, (P2420434435557772644.a n : ℤ) = A271183 (n + 1)

end A271183

/-! ## A271183.P10844037816186925352

`lt[2, (A005928(n+1)^A025474(A033716(n)+1))²]`
-/

namespace A271183.P10844037816186925352
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A005928 (n + 1) : ℚ) ^ (A025474 (A033716 n + 1).toNat : ℤ)) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n

end

end A271183.P10844037816186925352

namespace A271183

/-- `lt[2, (A005928(n+1)^A025474(A033716(n)+1))²]` -/
def P10844037816186925352.Spec : Prop :=
  ∀ n, (P10844037816186925352.a n : ℤ) = A271183 (n + 1)

end A271183

/-! ## A271183.P13878357302584168348

`lt[2, (A033685(n+1)*A033716(n))²]`
-/

namespace A271183.P13878357302584168348
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A033685 (n + 1) * A033716 n) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A271183.P13878357302584168348

namespace A271183

/-- `lt[2, (A033685(n+1)*A033716(n))²]` -/
def P13878357302584168348.Spec : Prop :=
  ∀ n, (P13878357302584168348.a n : ℤ) = A271183 (n + 1)

end A271183

/-!
# A271184: Löschian numbers (A003136) of the form k^2+1.

The programs for A271184, there is no canonical definition to state claims against.
-/

/-! ## A271184.P6919462963259942257

`∩[A271183(n+1), n²]+1`
-/

namespace A271184.P6919462963259942257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271183 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n + 1

end

end A271184.P6919462963259942257

/-! ## A271184.P9367562984650638666

`∩[A155563(n+1), n²+1]`
-/

namespace A271184.P9367562984650638666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155563 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A271184.P9367562984650638666

/-! ## A271184.P10125454764390807734

`∩[A002522(n), A155563(n+1)]`
-/

namespace A271184.P10125454764390807734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002522 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155563 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A271184.P10125454764390807734

/-! ## A271184.P5226802288537364805

`∩[A000290(n)+1, A155563(n+1)]`
-/

namespace A271184.P5226802288537364805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155563 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A271184.P5226802288537364805

/-! ## A271184.P4792169246257495968

`filter[A002522(n), A070563(#)]`
-/

namespace A271184.P4792169246257495968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002522 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A070563 (f1 j).toNat = 1) n)

end

end A271184.P4792169246257495968

/-!
# A271185: Löschian numbers (A003136) of the form k^3+1.

The programs for A271185, the canonical program `A271185.P10888630706129519928` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A271185 has offset 1).

The definition of A271185 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2299 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A271185.P10888630706129519928

`A000578(A003136(n+2)-1)+1`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A271185

/-- `A000578(A003136(n+2)-1)+1` -/
def P10888630706129519928.Spec : Prop :=
  ∀ n, P10888630706129519928.a n = A271185 (n + 1)

theorem P10888630706129519928.correct : P10888630706129519928.Spec := by
  intro n
  simp only [A271185, Nat.add_sub_cancel]

end A271185

/-! ## A271185.P15605770496813348241

`A002061(A003136(n+2)-1)*A003136(n+2)`
-/

namespace A271185.P15605770496813348241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002061 (A003136 (n + 2) - 1).toNat * A003136 (n + 2)

end

end A271185.P15605770496813348241

namespace A271185

/-- `A002061(A003136(n+2)-1)*A003136(n+2)` -/
def P15605770496813348241.Spec : Prop :=
  ∀ n, P15605770496813348241.a n = A271185 (n + 1)

end A271185

/-!
# A271186: Odd integers k such that k^k + 1 is the sum of 2 nonzero squares.

The programs for A271186, there is no canonical definition to state claims against.
-/

/-! ## A271186.P10871740370047114205

`eq[1, gcd(n, A330315(n))]`
-/

namespace A271186.P10871740370047114205
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A330315 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A271186.P10871740370047114205

/-! ## A271186.P18094450386712195607

`lt[A104794(C(n+1, 2)), 0]`
-/

namespace A271186.P18094450386712195607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104794 (Nat.choose (n + 1) 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A271186.P18094450386712195607

/-! ## A271186.P7907218071323709320

`lt[A256282(C(n+1, 2)), 0]`
-/

namespace A271186.P7907218071323709320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256282 (Nat.choose (n + 1) 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A271186.P7907218071323709320

/-! ## A271186.P5123363716281966065

`lt[A104794((n²+n)/2), 0]`
-/

namespace A271186.P5123363716281966065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104794 (SequenceMachineLib.roundAway ((n ^ 2 + n : ℚ) / 2)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A271186.P5123363716281966065

/-! ## A271186.P11828967166089128996

`lt[A256282(n²-C(n, 2)), 0]`
-/

namespace A271186.P11828967166089128996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256282 (n ^ 2 - Nat.choose n 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A271186.P11828967166089128996

/-!
# A271187: Triangle T(n,k) read by rows: T(n,k) is the squarefree part of C(n,k).

The programs for A271187, the canonical program `A271187.P2014690052428888649` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A271187 has offset 0).

The definition of A271187 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 218 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A271187.P2014690052428888649

`A007913(A007318(n))`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A271187

/-- `A007913(A007318(n))` -/
def P2014690052428888649.Spec : Prop :=
  ∀ n, P2014690052428888649.a n = A271187 n

theorem P2014690052428888649.correct : P2014690052428888649.Spec := by
  intro n
  simp only [A271187]

end A271187

/-! ## A271187.P15579314881710175559

`A007913(abs(A108086(n)))`
-/

namespace A271187.P15579314881710175559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 |A108086 n|.toNat

end

end A271187.P15579314881710175559

namespace A271187

/-- `A007913(abs(A108086(n)))` -/
def P15579314881710175559.Spec : Prop :=
  ∀ n, P15579314881710175559.a n = A271187 n

end A271187

/-! ## A271187.P7052537914706156282

`A007913(abs(A117440(n)))`
-/

namespace A271187.P7052537914706156282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 |A117440 n|.toNat

end

end A271187.P7052537914706156282

namespace A271187

/-- `A007913(abs(A117440(n)))` -/
def P7052537914706156282.Spec : Prop :=
  ∀ n, P7052537914706156282.a n = A271187 n

end A271187

/-! ## A271187.P13096976662876458127

`A007913(abs(A130595(n)))`
-/

namespace A271187.P13096976662876458127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 |A130595 n|.toNat

end

end A271187.P13096976662876458127

namespace A271187

/-- `A007913(abs(A130595(n)))` -/
def P13096976662876458127.Spec : Prop :=
  ∀ n, P13096976662876458127.a n = A271187 n

end A271187

/-! ## A271187.P4594574174930239652

`A007913(sqrt(A008459(n)))`
-/

namespace A271187.P4594574174930239652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (SequenceMachineLib.roundAway (Real.sqrt (A008459 n : ℝ))).toNat

end

end A271187.P4594574174930239652

namespace A271187

/-- `A007913(sqrt(A008459(n)))` -/
def P4594574174930239652.Spec : Prop :=
  ∀ n, P4594574174930239652.a n = A271187 n

end A271187

/-! ## A271187.P4456507526522122325

`A007913(Δ[A102363(n)])`
-/

namespace A271187.P4456507526522122325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (f1 (n + 1) - f1 n).toNat

end

end A271187.P4456507526522122325

namespace A271187

/-- `A007913(Δ[A102363(n)])` -/
def P4456507526522122325.Spec : Prop :=
  ∀ n, P4456507526522122325.a n = A271187 n

end A271187

/-! ## A271187.P6494029381212555740

`A007913(A014473(n)+1)`
-/

namespace A271187.P6494029381212555740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A014473 n + 1).toNat

end

end A271187.P6494029381212555740

namespace A271187

/-- `A007913(A014473(n)+1)` -/
def P6494029381212555740.Spec : Prop :=
  ∀ n, P6494029381212555740.a n = A271187 n

theorem P6494029381212555740.correct : P6494029381212555740.Spec := by
  intro n
  simp only [A271187, Nat.add_sub_cancel, A271187.P6494029381212555740.a, A271187.P2014690052428888649.a, A007318, A007318.P302227728145965961.a, A007913, A007913.P11359412940648999332.a, A014473, A014473.P9301799580602651200.a, A059479, A059479.P17464652159649958448.a, A259525, A259525.P15603515225238104540.f1, A259525.P15603515225238104540.a, A003056, A003056.P5318256527314048597.a, A074909, A074909.P6707642907239843837.f1, A074909.P6707642907239843837.a, A355264, A355264.P1842573885147649764.f1, A355264.P1842573885147649764.a, A002262, A002262.P12129691700837801527.a, A010054, A010054.P18347828677204923252.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A271187

/-! ## A271187.P12627678678567851365

`A007913(A028326(n)/2)`
-/

namespace A271187.P12627678678567851365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (SequenceMachineLib.roundAway ((A028326 n : ℚ) / 2)).toNat

end

end A271187.P12627678678567851365

namespace A271187

/-- `A007913(A028326(n)/2)` -/
def P12627678678567851365.Spec : Prop :=
  ∀ n, P12627678678567851365.a n = A271187 n

end A271187

/-! ## A271187.P6635503331047664032

`A007913(root(A008459(n), 2))`
-/

namespace A271187.P6635503331047664032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (SequenceMachineLib.roundAway ((A008459 n : ℝ) ^ (1 / (2 : ℝ)))).toNat

end

end A271187.P6635503331047664032

namespace A271187

/-- `A007913(root(A008459(n), 2))` -/
def P6635503331047664032.Spec : Prop :=
  ∀ n, P6635503331047664032.a n = A271187 n

end A271187

/-! ## A271187.P11374256483217629246

`A007913((A109128(n)+1)/2)`
-/

namespace A271187.P11374256483217629246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (SequenceMachineLib.roundAway ((A109128 n + 1 : ℚ) / 2)).toNat

end

end A271187.P11374256483217629246

namespace A271187

/-- `A007913((A109128(n)+1)/2)` -/
def P11374256483217629246.Spec : Prop :=
  ∀ n, P11374256483217629246.a n = A271187 n

end A271187

/-! ## A271187.P12094559709688504874

`A007913(C(A003056(n), A002262(n)))`
-/

namespace A271187.P12094559709688504874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (Nat.choose (A003056 n).toNat (A002262 n).toNat)

end

end A271187.P12094559709688504874

namespace A271187

/-- `A007913(C(A003056(n), A002262(n)))` -/
def P12094559709688504874.Spec : Prop :=
  ∀ n, P12094559709688504874.a n = A271187 n

end A271187

/-! ## A271187.P13997724783256593902

`A007913(A131112(n))`
-/

namespace A271187.P13997724783256593902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A131112 n).toNat

end

end A271187.P13997724783256593902

namespace A271187

/-- `A007913(A131112(n))` -/
def P13997724783256593902.Spec : Prop :=
  ∀ n, P13997724783256593902.a n = A271187 n

end A271187

/-! ## A271187.P3004462283608391229

`A007913(A132200(n))`
-/

namespace A271187.P3004462283608391229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A132200 n).toNat

end

end A271187.P3004462283608391229

namespace A271187

/-- `A007913(A132200(n))` -/
def P3004462283608391229.Spec : Prop :=
  ∀ n, P3004462283608391229.a n = A271187 n

end A271187

/-! ## A271187.P18276158209283515107

`A007913(2*A028326(n))`
-/

namespace A271187.P18276158209283515107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (2 * A028326 n).toNat

end

end A271187.P18276158209283515107

namespace A271187

/-- `A007913(2*A028326(n))` -/
def P18276158209283515107.Spec : Prop :=
  ∀ n, P18276158209283515107.a n = A271187 n

end A271187

/-! ## A271187.P3541642813104263945

`A007913(2*(A109128(n)+1))`
-/

namespace A271187.P3541642813104263945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (2 * (A109128 n + 1)).toNat

end

end A271187.P3541642813104263945

namespace A271187

/-- `A007913(2*(A109128(n)+1))` -/
def P3541642813104263945.Spec : Prop :=
  ∀ n, P3541642813104263945.a n = A271187 n

end A271187

/-! ## A271187.P13027240636075595885

`A007913(A168623(n))`
-/

namespace A271187.P13027240636075595885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A168623 n).toNat

end

end A271187.P13027240636075595885

namespace A271187

/-- `A007913(A168623(n))` -/
def P13027240636075595885.Spec : Prop :=
  ∀ n, P13027240636075595885.a n = A271187 n

end A271187

/-! ## A271187.P8634271353591501020

`A117811(A109128(n))`
-/

namespace A271187.P8634271353591501020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117811 (A109128 n).toNat

end

end A271187.P8634271353591501020

namespace A271187

/-- `A117811(A109128(n))` -/
def P8634271353591501020.Spec : Prop :=
  ∀ n, P8634271353591501020.a n = A271187 n

end A271187

/-! ## A271187.P6479048483774813446

`A038387(2*A007318(n))/2`
-/

namespace A271187.P6479048483774813446
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038387 (2 * A007318 n).toNat : ℚ) / 2

end

end A271187.P6479048483774813446

namespace A271187

/-- `A038387(2*A007318(n))/2` -/
def P6479048483774813446.Spec : Prop :=
  ∀ n, P6479048483774813446.a n = (A271187 n : ℚ)

end A271187

/-! ## A271187.P14769462551642473309

`A056135(4*A007318(n))`
-/

namespace A271187.P14769462551642473309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056135 (4 * A007318 n).toNat

end

end A271187.P14769462551642473309

namespace A271187

/-- `A056135(4*A007318(n))` -/
def P14769462551642473309.Spec : Prop :=
  ∀ n, P14769462551642473309.a n = A271187 n

end A271187

/-! ## A271187.P16268295329928501826

`∏{p}[A055491(A007318(n)), A006530(#)]`
-/

namespace A271187.P16268295329928501826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055491 (A007318 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A006530 p

end

end A271187.P16268295329928501826

namespace A271187

/-- `∏{p}[A055491(A007318(n)), A006530(#)]` -/
def P16268295329928501826.Spec : Prop :=
  ∀ n, P16268295329928501826.a n = A271187 n

end A271187

/-!
# A271188: Number of nXnXn triangular 0..2 arrays with new values introduced in sequential zero-upwards order and exactly one upright 2x2x2 triangle having values all different.

The programs for A271188, there is no canonical definition to state claims against.
-/

/-! ## A271188.P3326868755873978416

`A271194(∑[n+2])`
-/

namespace A271188.P3326868755873978416
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271194 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A271188.P3326868755873978416

/-! ## A271188.P4324575940033928753

`record[Δ[-A271194(n+1)]]`
-/

namespace A271188.P4324575940033928753
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A271194 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A271188.P4324575940033928753

/-! ## A271188.P870635900704266258

`record[A271194(A038722(n+1))]`
-/

namespace A271188.P870635900704266258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271194 (A038722 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A271188.P870635900704266258

/-! ## A271188.P7963676618089526892

`record[A072784(n)*A271194(n+1)]`
-/

namespace A271188.P7963676618089526892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072784 n * A271194 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A271188.P7963676618089526892

/-! ## A271188.P4675381359474267354

`record[record[A271194(n+1)]^A033999(n)]`
-/

namespace A271188.P4675381359474267354
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271194 (n + 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) : ℚ) ^ (A033999 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A271188.P4675381359474267354

/-!
# A271189: Number of n X n X n triangular 0..3 arrays with new values introduced in sequential zero-upwards order and exactly one upright 2 X 2 X 2 triangle having values all different.

The programs for A271189, there is no canonical definition to state claims against.
-/

/-! ## A271189.P11464309950046219087

`A271194(∑[n+3]+1)`
-/

namespace A271189.P11464309950046219087
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271194 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A271189.P11464309950046219087

/-! ## A271189.P10906409770865072139

`record[and(A127672(n), A271194(n+1))]`
-/

namespace A271189.P10906409770865072139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A127672 n) (A271194 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A271189.P10906409770865072139

/-! ## A271189.P9592958576746023629

`record[char[A141214(n)]*A271194(n+1)]`
-/

namespace A271189.P9592958576746023629
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141214 n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A271194 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A271189.P9592958576746023629

/-! ## A271189.P229287431568315074

`record[record[A271194(n+1)]*A033999(n+1)]`
-/

namespace A271189.P229287431568315074
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271194 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) * A033999 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A271189.P229287431568315074

/-! ## A271189.P879102776434919523

`record[A271194(A038722(n+1)+A003056(n))]`
-/

namespace A271189.P879102776434919523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271194 (A038722 (n + 1) + A003056 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A271189.P879102776434919523

/-!
# A271190: Number of nXnXn triangular 0..4 arrays with new values introduced in sequential zero-upwards order and exactly one upright 2x2x2 triangle having values all different.

The programs for A271190, there is no canonical definition to state claims against.
-/

/-! ## A271190.P12569408741979974911

`A271194(A141214(n+1))`
-/

namespace A271190.P12569408741979974911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271194 (A141214 (n + 1)).toNat

end

end A271190.P12569408741979974911

/-! ## A271190.P16672578161824212957

`A271194(A027379(n+2))`
-/

namespace A271190.P16672578161824212957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271194 (A027379 (n + 2)).toNat

end

end A271190.P16672578161824212957

/-! ## A271190.P484846994169316784

`A271194(A055998(n+2))`
-/

namespace A271190.P484846994169316784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271194 (A055998 (n + 2)).toNat

end

end A271190.P484846994169316784

/-! ## A271190.P9022928871227308846

`A271194(A155212(n)+5)`
-/

namespace A271190.P9022928871227308846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271194 (A155212 n + 5).toNat

end

end A271190.P9022928871227308846

/-! ## A271190.P14493321257999604540

`A271194(A056000(n)+7)`
-/

namespace A271190.P14493321257999604540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271194 (A056000 n + 7).toNat

end

end A271190.P14493321257999604540

/-!
# A271191: Number of nXnXn triangular 0..5 arrays with new values introduced in sequential zero-upwards order and exactly one upright 2x2x2 triangle having values all different.

The programs for A271191, there is no canonical definition to state claims against.
-/

/-! ## A271191.P535957594992712333

`A271194(A046691(n+3))`
-/

namespace A271191.P535957594992712333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271194 (A046691 (n + 3)).toNat

end

end A271191.P535957594992712333

/-! ## A271191.P3748950416999120903

`A271194(eq[4, A193592(n)])`
-/

namespace A271191.P3748950416999120903
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271194 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A271191.P3748950416999120903

/-! ## A271191.P1022678503100400277

`A271194(eq[8, A140996(n)])`
-/

namespace A271191.P1022678503100400277
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140996 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271194 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A271191.P1022678503100400277

/-! ## A271191.P11625696115710022860

`A271194(Δ[A023545(n+1)])`
-/

namespace A271191.P11625696115710022860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271194 (f1 (n + 1) - f1 n).toNat

end

end A271191.P11625696115710022860

/-! ## A271191.P5660467297291091789

`A271194(A055998(n+3)-1)`
-/

namespace A271191.P5660467297291091789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271194 (A055998 (n + 3) - 1).toNat

end

end A271191.P5660467297291091789

/-!
# A271192: Number of nXnXn triangular 0..6 arrays with new values introduced in sequential zero-upwards order and exactly one upright 2x2x2 triangle having values all different.

The programs for A271192, there is no canonical definition to state claims against.
-/

/-! ## A271192.P17777085322553109411

`record[A271194(∑[n+3]-2)]`
-/

namespace A271192.P17777085322553109411
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271194 (∑ j ∈ Finset.range (n + 1), f2 j - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A271192.P17777085322553109411

/-! ## A271192.P4686006272981938298

`A271194(A052905(n+3))`
-/

namespace A271192.P4686006272981938298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271194 (A052905 (n + 3)).toNat

end

end A271192.P4686006272981938298

/-! ## A271192.P6864609504316585025

`A271194(A056119(n)+16)`
-/

namespace A271192.P6864609504316585025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271194 (A056119 n + 16).toNat

end

end A271192.P6864609504316585025

/-! ## A271192.P15144494417002392060

`A271194(eq[3, A219347(n)])`
-/

namespace A271192.P15144494417002392060
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271194 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A271192.P15144494417002392060

/-!
# A271194: T(n,k)=Number of nXnXn triangular 0..k arrays with new values introduced in sequential zero-upwards order and exactly one upright 2x2x2 triangle having values all different.

The programs for A271194, there is no canonical definition to state claims against.
-/

/-! ## A271194.P7350474855335743712

`A007954(A278073(n))%A000111(n)`
-/

namespace A271194.P7350474855335743712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007954 (A278073 n).toNat) (A000111 n)

end

end A271194.P7350474855335743712

/-! ## A271194.P6658279227978795545

`A007954(A278073(n)%A000272(n))`
-/

namespace A271194.P6658279227978795545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007954 (Int.tmod (A278073 n) (A000272 n)).toNat

end

end A271194.P6658279227978795545

/-! ## A271194.P4275250238599616448

`A339089(or(3, ∑[2*n]))`
-/

namespace A271194.P4275250238599616448
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339089 (Nat.lor 3 (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A271194.P4275250238599616448

/-! ## A271194.P663842521298933255

`A171961(A181061(n))`
-/

namespace A271194.P663842521298933255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171961 (A181061 n).toNat

end

end A271194.P663842521298933255

/-! ## A271194.P16399151233935122027

`A034390(A352944(n))`
-/

namespace A271194.P16399151233935122027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034390 (A352944 n).toNat

end

end A271194.P16399151233935122027

/-!
# A271195: Number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 310", based on the 5-celled von Neumann neighborhood.

The programs for A271195, there is no canonical definition to state claims against.
-/

/-! ## A271195.P52335090671210472

`A271199(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A271195.P52335090671210472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A271199 (n - 1) + a (n - 1)

end

end A271195.P52335090671210472

/-! ## A271195.P10584853938792510540

`Δ[A271198(n)]-A271199(n)`
-/

namespace A271195.P10584853938792510540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271198 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A271199 n

end

end A271195.P10584853938792510540

/-! ## A271195.P2664950690965242386

`A271198(n+1)-(A271199(n)+A271198(n))`
-/

namespace A271195.P2664950690965242386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271198 (n + 1) - (A271199 n + A271198 n)

end

end A271195.P2664950690965242386

/-! ## A271195.P14002794010449222301

`∑[A004771(n)+1-A273114(n)]`
-/

namespace A271195.P14002794010449222301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004771 n + (1 - A273114 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271195.P14002794010449222301

/-! ## A271195.P5806340541533817719

`(2*n+3)²-A273111(n+1)`
-/

namespace A271195.P5806340541533817719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n + 3) ^ 2 : ℤ) - A273111 (n + 1)

end

end A271195.P5806340541533817719

/-! ## A271195.P9069409563191921638

`A114112(2*(n+2))²%A273111(n+1)`
-/

namespace A271195.P9069409563191921638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A114112 (2 * (n + 2)) ^ 2) (A273111 (n + 1))

end

end A271195.P9069409563191921638

/-! ## A271195.P12405275267102755223

`A004768(A000096(n))-A273111(n)-A273114(n)`
-/

namespace A271195.P12405275267102755223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004768 (A000096 n).toNat - A273111 n - A273114 n

end

end A271195.P12405275267102755223

/-!
# A271196: Number of active (ON, black) cells at stage 2^n-1 of the two-dimensional cellular automaton defined by "Rule 310", based on the 5-celled von Neumann neighborhood.

The programs for A271196, there is no canonical definition to state claims against.
-/

/-! ## A271196.P14130675542683469700

`A271195(2^n-1)`
-/

namespace A271196.P14130675542683469700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271195 (2 ^ n - 1)

end

end A271196.P14130675542683469700

/-! ## A271196.P13059001350410147069

`record[A271195(A227351(n))]`
-/

namespace A271196.P13059001350410147069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271195 (A227351 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A271196.P13059001350410147069

/-! ## A271196.P14727132670400236275

`record[A271195(A283996(n))]`
-/

namespace A271196.P14727132670400236275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271195 (A283996 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A271196.P14727132670400236275

/-! ## A271196.P2525798552457024932

`record[A271195(A303763(n))]`
-/

namespace A271196.P2525798552457024932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271195 (A303763 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A271196.P2525798552457024932

/-! ## A271196.P4298055343451200554

`and(-3, A271195(A000225(n)))`
-/

namespace A271196.P4298055343451200554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-3) (A271195 (A000225 n).toNat)

end

end A271196.P4298055343451200554

/-!
# A271197: Expansion of -(sqrt(x^2-6*x+1)+3*x-1)/((7*x-1)*sqrt(x^2-6*x+1)+x^2-6*x+1)/x.

The programs for A271197, the canonical program `A271197.P9767987725976590934` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A271197 has offset 0).

The definition of A271197 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 131 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A271197.P15659282251166207192

`A190724(n+1)-A001850(n+1)`
-/

namespace A271197.P15659282251166207192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190724 (n + 1) - A001850 (n + 1)

end

end A271197.P15659282251166207192

namespace A271197

/-- `A190724(n+1)-A001850(n+1)` -/
def P15659282251166207192.Spec : Prop :=
  ∀ n, P15659282251166207192.a n = A271197 n

end A271197

/-! ## A271197.P9767987725976590934

`A002002(n+2)-A225887(n+1)`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A271197

/-- `A002002(n+2)-A225887(n+1)` -/
def P9767987725976590934.Spec : Prop :=
  ∀ n, P9767987725976590934.a n = A271197 n

theorem P9767987725976590934.correct : P9767987725976590934.Spec := by
  intro n
  simp only [A271197]

end A271197

/-! ## A271197.P3583325878650955543

`abs(A182626(n+2))-A225887(n+1)`
-/

namespace A271197.P3583325878650955543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A182626 (n + 2)| - A225887 (n + 1)

end

end A271197.P3583325878650955543

namespace A271197

/-- `abs(A182626(n+2))-A225887(n+1)` -/
def P3583325878650955543.Spec : Prop :=
  ∀ n, P3583325878650955543.a n = A271197 n

end A271197

/-! ## A271197.P2567264062399604971

`Δ[A047665(n+1)]-A225887(n+1)`
-/

namespace A271197.P2567264062399604971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047665 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A225887 (n + 1)

end

end A271197.P2567264062399604971

namespace A271197

/-- `Δ[A047665(n+1)]-A225887(n+1)` -/
def P2567264062399604971.Spec : Prop :=
  ∀ n, P2567264062399604971.a n = A271197 n

end A271197

/-! ## A271197.P3468928370800995403

`Δ[A226994(n+1)]-A225887(n+1)`
-/

namespace A271197.P3468928370800995403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226994 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A225887 (n + 1)

end

end A271197.P3468928370800995403

namespace A271197

/-- `Δ[A226994(n+1)]-A225887(n+1)` -/
def P3468928370800995403.Spec : Prop :=
  ∀ n, P3468928370800995403.a n = A271197 n

end A271197

/-! ## A271197.P6105436799343319741

`A002002(n+2)-A212205(A005408(n+1))`
-/

namespace A271197.P6105436799343319741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002002 (n + 2) - A212205 (A005408 (n + 1)).toNat

end

end A271197.P6105436799343319741

namespace A271197

/-- `A002002(n+2)-A212205(A005408(n+1))` -/
def P6105436799343319741.Spec : Prop :=
  ∀ n, P6105436799343319741.a n = A271197 n

end A271197

/-!
# A271198: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 310", based on the 5-celled von Neumann neighborhood.

The programs for A271198, there is no canonical definition to state claims against.
-/

/-! ## A271198.P13644795307396380895

`∑[A271195(n)]`
-/

namespace A271198.P13644795307396380895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271195 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271198.P13644795307396380895

/-! ## A271198.P8174392671447254732

`∑[∑[A271199(n)]+1-A271199(n)]`
-/

namespace A271198.P8174392671447254732
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271199 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (1 - A271199 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271198.P8174392671447254732

/-! ## A271198.P15072397460293216230

`A271195(A005843(n)-n)+a(n-1)` with `a(0)=1`
-/

namespace A271198.P15072397460293216230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A271195 (A005843 n - (n : ℤ)).toNat + a (n - 1)

end

end A271198.P15072397460293216230

/-! ## A271198.P18231907467612858833

`A271195(n%A005101(n))+a(n-1)` with `a(0)=1`
-/

namespace A271198.P18231907467612858833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A271195 (Int.tmod (n : ℤ) (A005101 n)).toNat + a (n - 1)

end

end A271198.P18231907467612858833

/-! ## A271198.P5994152819373032680

`A271195(n)+a(n-1)%A166957(n)` with `a(0)=1`
-/

namespace A271198.P5994152819373032680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A271195 n + Int.tmod (a (n - 1)) (A166957 n)

end

end A271198.P5994152819373032680

/-! ## A271198.P2132504002903067940

`a(n-1)+A271195(n)%A186589(n)` with `a(0)=1`
-/

namespace A271198.P2132504002903067940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Int.tmod (A271195 n) (A186589 n)

end

end A271198.P2132504002903067940

/-!
# A271199: First differences of number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 310", based on the 5-celled von Neumann neighborhood.

The programs for A271199, there is no canonical definition to state claims against.
-/

/-! ## A271199.P1660400820665429239

`Δ[A271195(n)]`
-/

namespace A271199.P1660400820665429239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271195 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A271199.P1660400820665429239

/-! ## A271199.P15561376184518266345

`A271195(n+1)-A271195(n)`
-/

namespace A271199.P15561376184518266345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271195 (n + 1) - A271195 n

end

end A271199.P15561376184518266345

/-! ## A271199.P221475937859166040

`∑[8-Δ[A273114(n)]]+1`
-/

namespace A271199.P221475937859166040
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273114 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A271199.P221475937859166040

/-! ## A271199.P6534095800109025440

`A004768(n+1)-(A273114(n+1)+1)`
-/

namespace A271199.P6534095800109025440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004768 (n + 1) - (A273114 (n + 1) + 1)

end

end A271199.P6534095800109025440

/-! ## A271199.P1360163126923413270

`A004771(n+1)+1-A273114(n+1)`
-/

namespace A271199.P1360163126923413270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004771 (n + 1) + (1 - A273114 (n + 1))

end

end A271199.P1360163126923413270

/-! ## A271199.P7672759836928735573

`Δ[(2*n+3)²-A273111(n+1)]`
-/

namespace A271199.P7672759836928735573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n + 3) ^ 2 : ℤ) - A273111 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A271199.P7672759836928735573

