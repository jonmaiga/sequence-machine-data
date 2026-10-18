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
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
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
import Seq.B003.C004
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
# A049000: Sum of sigma(j) for 1<=j

The programs for A049000, there is no canonical definition to state claims against.
-/

/-! ## A049000.P12208601664954379498

`A072692(n)-A046915(n)`
-/

namespace A049000.P12208601664954379498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072692 n - A046915 n

end

end A049000.P12208601664954379498

/-! ## A049000.P7228479118123333470

`A072692(n)-(A046914(n)+A011557(n))`
-/

namespace A049000.P7228479118123333470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072692 n - (A046914 n + A011557 n)

end

end A049000.P7228479118123333470

/-! ## A049000.P6919303284079485493

`A072692(n)-(A046914(n)+Δ[A002275(n)])`
-/

namespace A049000.P6919303284079485493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002275 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072692 n - (A046914 n + (f1 (n + 1) - f1 n))

end

end A049000.P6919303284079485493

/-! ## A049000.P9038357853803119692

`A072692(n)-(A046914(n)+Δ[A002277(n)/3])`
-/

namespace A049000.P9038357853803119692
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002277 n : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A072692 n : ℚ) - ((A046914 n : ℚ) + (f1 (n + 1) - f1 n))

end

end A049000.P9038357853803119692

/-! ## A049000.P9562102017298373694

`A072692(n)-(A000079(n+1)*A003463(n+1)-A003463(n+1))`
-/

namespace A049000.P9562102017298373694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072692 n - (A000079 (n + 1) * A003463 (n + 1) - A003463 (n + 1))

end

end A049000.P9562102017298373694

/-!
# A049001: a(n) = prime(n)^2 - 2.

The programs for A049001, the canonical program `A049001.P16714800471455782698` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A049001 has offset 1).

The definition of A049001 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001248, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A049001.P3214849957665483393

`A182200(n+1)+1`
-/

namespace A049001.P3214849957665483393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182200 (n + 1) + 1

end

end A049001.P3214849957665483393

namespace A049001

/-- `A182200(n+1)+1` -/
def P3214849957665483393.Spec : Prop :=
  ∀ n, P3214849957665483393.a n = A049001 (n + 1)

end A049001

/-! ## A049001.P16714800471455782698

`A001248(n+1)-2`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A049001

/-- `A001248(n+1)-2` -/
def P16714800471455782698.Spec : Prop :=
  ∀ n, P16714800471455782698.a n = A049001 (n + 1)

theorem P16714800471455782698.correct : P16714800471455782698.Spec := by
  intro n
  simp only [A049001, Nat.add_sub_cancel]

end A049001

/-! ## A049001.P14069429545613607197

`A153480(n)/2`
-/

namespace A049001.P14069429545613607197
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A153480 n : ℚ) / 2

end

end A049001.P14069429545613607197

namespace A049001

/-- `A153480(n)/2` -/
def P14069429545613607197.Spec : Prop :=
  ∀ n, P14069429545613607197.a n = (A049001 (n + 1) : ℚ)

end A049001

/-! ## A049001.P15012908960525743093

`A084920(n+1)-1`
-/

namespace A049001.P15012908960525743093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084920 (n + 1) - 1

end

end A049001.P15012908960525743093

namespace A049001

/-- `A084920(n+1)-1` -/
def P15012908960525743093.Spec : Prop :=
  ∀ n, P15012908960525743093.a n = A049001 (n + 1)

end A049001

/-! ## A049001.P2294152414462457510

`A166010(n+1)+2`
-/

namespace A049001.P2294152414462457510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166010 (n + 1) + 2

end

end A049001.P2294152414462457510

namespace A049001

/-- `A166010(n+1)+2` -/
def P2294152414462457510.Spec : Prop :=
  ∀ n, P2294152414462457510.a n = A049001 (n + 1)

end A049001

/-! ## A049001.P523138987839376707

`A066872(n+1)-3`
-/

namespace A049001.P523138987839376707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066872 (n + 1) - 3

end

end A049001.P523138987839376707

namespace A049001

/-- `A066872(n+1)-3` -/
def P523138987839376707.Spec : Prop :=
  ∀ n, P523138987839376707.a n = A049001 (n + 1)

end A049001

/-! ## A049001.P11870291613940423378

`A061725(n+1)-4`
-/

namespace A049001.P11870291613940423378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061725 (n + 1) - 4

end

end A049001.P11870291613940423378

namespace A049001

/-- `A061725(n+1)-4` -/
def P11870291613940423378.Spec : Prop :=
  ∀ n, P11870291613940423378.a n = A049001 (n + 1)

end A049001

/-! ## A049001.P14925022162259691671

`A287922(n+1)-6`
-/

namespace A049001.P14925022162259691671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287922 (n + 1) - 6

end

end A049001.P14925022162259691671

namespace A049001

/-- `A287922(n+1)-6` -/
def P14925022162259691671.Spec : Prop :=
  ∀ n, P14925022162259691671.a n = A049001 (n + 1)

end A049001

/-! ## A049001.P735689853331595156

`Δ[A007504(n)]²-2`
-/

namespace A049001.P735689853331595156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2 - 2

end

end A049001.P735689853331595156

namespace A049001

/-- `Δ[A007504(n)]²-2` -/
def P735689853331595156.Spec : Prop :=
  ∀ n, P735689853331595156.a n = A049001 (n + 1)

end A049001

/-! ## A049001.P17703349115419102070

`Δ[A008348(n)]²-2`
-/

namespace A049001.P17703349115419102070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008348 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2 - 2

end

end A049001.P17703349115419102070

namespace A049001

/-- `Δ[A008348(n)]²-2` -/
def P17703349115419102070.Spec : Prop :=
  ∀ n, P17703349115419102070.a n = A049001 (n + 1)

end A049001

/-! ## A049001.P14940611857451544854

`Δ[A022837(n)]²-2`
-/

namespace A049001.P14940611857451544854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022837 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2 - 2

end

end A049001.P14940611857451544854

namespace A049001

/-- `Δ[A022837(n)]²-2` -/
def P14940611857451544854.Spec : Prop :=
  ∀ n, P14940611857451544854.a n = A049001 (n + 1)

end A049001

/-! ## A049001.P4998181733237821213

`Δ[A064365(n)]²-2`
-/

namespace A049001.P4998181733237821213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064365 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2 - 2

end

end A049001.P4998181733237821213

namespace A049001

/-- `Δ[A064365(n)]²-2` -/
def P4998181733237821213.Spec : Prop :=
  ∀ n, P4998181733237821213.a n = A049001 (n + 1)

end A049001

/-! ## A049001.P14769644253771459848

`Δ[A309222(n)]²-2`
-/

namespace A049001.P14769644253771459848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309222 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2 - 2

end

end A049001.P14769644253771459848

namespace A049001

/-- `Δ[A309222(n)]²-2` -/
def P14769644253771459848.Spec : Prop :=
  ∀ n, P14769644253771459848.a n = A049001 (n + 1)

end A049001

/-! ## A049001.P8777299766092042792

`A000040(n+1)²-2`
-/

namespace A049001.P8777299766092042792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) ^ 2 - 2

end

end A049001.P8777299766092042792

namespace A049001

/-- `A000040(n+1)²-2` -/
def P8777299766092042792.Spec : Prop :=
  ∀ n, P8777299766092042792.a n = A049001 (n + 1)

end A049001

/-! ## A049001.P4339670862672378010

`sqrt(A030514(n+1))-2`
-/

namespace A049001.P4339670862672378010
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A030514 (n + 1) : ℝ) - 2

end

end A049001.P4339670862672378010

namespace A049001

/-- `sqrt(A030514(n+1))-2` -/
def P4339670862672378010.Spec : Prop :=
  ∀ n, P4339670862672378010.a n = (A049001 (n + 1) : ℝ)

end A049001

/-! ## A049001.P15133953772642004625

`A079704(n+1)/2-2`
-/

namespace A049001.P15133953772642004625
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A079704 (n + 1) : ℚ) / 2 - 2

end

end A049001.P15133953772642004625

namespace A049001

/-- `A079704(n+1)/2-2` -/
def P15133953772642004625.Spec : Prop :=
  ∀ n, P15133953772642004625.a n = (A049001 (n + 1) : ℚ)

end A049001

/-! ## A049001.P15740459472346488220

`A079705(n+1)/3-2`
-/

namespace A049001.P15740459472346488220
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A079705 (n + 1) : ℚ) / 3 - 2

end

end A049001.P15740459472346488220

namespace A049001

/-- `A079705(n+1)/3-2` -/
def P15740459472346488220.Spec : Prop :=
  ∀ n, P15740459472346488220.a n = (A049001 (n + 1) : ℚ)

end A049001

/-! ## A049001.P12819047890155296582

`(A179262(n+1)-3)/2`
-/

namespace A049001.P12819047890155296582
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A179262 (n + 1) - 3 : ℚ) / 2

end

end A049001.P12819047890155296582

namespace A049001

/-- `(A179262(n+1)-3)/2` -/
def P12819047890155296582.Spec : Prop :=
  ∀ n, P12819047890155296582.a n = (A049001 (n + 1) : ℚ)

end A049001

/-! ## A049001.P2084641743406639851

`A069262(n+1)/4-2`
-/

namespace A049001.P2084641743406639851
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069262 (n + 1) : ℚ) / 4 - 2

end

end A049001.P2084641743406639851

namespace A049001

/-- `A069262(n+1)/4-2` -/
def P2084641743406639851.Spec : Prop :=
  ∀ n, P2084641743406639851.a n = (A049001 (n + 1) : ℚ)

end A049001

/-!
# A049002: Primes of form p^2 - 2, where p is prime.

The programs for A049002, there is no canonical definition to state claims against.
-/

/-! ## A049002.P17892958259692060939

`A062326(n+1)²-2`
-/

namespace A049002.P17892958259692060939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062326 (n + 1) ^ 2 - 2

end

end A049002.P17892958259692060939

/-! ## A049002.P15490241245511604392

`A146981(n+1)-2`
-/

namespace A049002.P15490241245511604392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146981 (n + 1) - 2

end

end A049002.P15490241245511604392

/-! ## A049002.P13437036186754815760

`A240436(n+1)/A062326(n+1)`
-/

namespace A049002.P13437036186754815760
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A240436 (n + 1) : ℚ) / (A062326 (n + 1) : ℚ)

end

end A049002.P13437036186754815760

/-! ## A049002.P7563016857336120799

`A062326(n+1)^val(A255176(n+1), 2)-2`
-/

namespace A049002.P7563016857336120799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062326 (n + 1) ^ SequenceMachineLib.valuation (A255176 (n + 1)).toNat 2 - 2

end

end A049002.P7563016857336120799

/-! ## A049002.P17064508580287371986

`∩[A343495(n+1), A389431(n+1)]`
-/

namespace A049002.P17064508580287371986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343495 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389431 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049002.P17064508580287371986

/-! ## A049002.P2093890735150858866

`p?[A028870(n+1)]²-2`
-/

namespace A049002.P2093890735150858866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028870 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) ^ 2 - 2

end

end A049002.P2093890735150858866

/-! ## A049002.P10665971575707740036

`∩[A028871(n+1), A389431(n+1)]`
-/

namespace A049002.P10665971575707740036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028871 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389431 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049002.P10665971575707740036

/-! ## A049002.P15568057062705267642

`p?[A028870(n+1)]*A062326(n+1)-2`
-/

namespace A049002.P15568057062705267642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028870 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) * A062326 (n + 1) - 2

end

end A049002.P15568057062705267642

/-! ## A049002.P17285030873175029672

`∩[A099228(n+1), A389431(n+1)]`
-/

namespace A049002.P17285030873175029672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099228 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389431 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049002.P17285030873175029672

/-! ## A049002.P3205565424210526239

`A049001(A137291(n+1))`
-/

namespace A049002.P3205565424210526239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049001 (A137291 (n + 1)).toNat

end

end A049002.P3205565424210526239

/-! ## A049002.P16278690916518913639

`∩[A028871(n+1), A049001(n+1)]`
-/

namespace A049002.P16278690916518913639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028871 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049001 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049002.P16278690916518913639

/-! ## A049002.P7572577483904068757

`∩[A049001(n+1), A053705(n+1)]`
-/

namespace A049002.P7572577483904068757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049001 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053705 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049002.P7572577483904068757

/-! ## A049002.P6932219344590514696

`∩[A049001(n+1), A099228(n+1)]`
-/

namespace A049002.P6932219344590514696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049001 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099228 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049002.P6932219344590514696

/-! ## A049002.P3812503913184223213

`∩[A049001(n+1), A343495(n+1)]`
-/

namespace A049002.P3812503913184223213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049001 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343495 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049002.P3812503913184223213

/-! ## A049002.P406594192194703360

`∩[A049001(n+1), A389431(n+1)]`
-/

namespace A049002.P406594192194703360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049001 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389431 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049002.P406594192194703360

/-! ## A049002.P17565356850432220507

`A000040(A137291(n+1))*A062326(n+1)-2`
-/

namespace A049002.P17565356850432220507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A137291 (n + 1)).toNat * A062326 (n + 1) - 2

end

end A049002.P17565356850432220507

/-! ## A049002.P8503775613144822963

`∩[A028871(n+1), A269769(n+1)]`
-/

namespace A049002.P8503775613144822963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028871 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269769 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049002.P8503775613144822963

/-! ## A049002.P13193577119081823057

`∩[A053705(n+1), A269769(n+1)]`
-/

namespace A049002.P13193577119081823057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053705 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269769 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049002.P13193577119081823057

/-! ## A049002.P5239187287422772941

`∩[A269769(n+1), A343495(n+1)]`
-/

namespace A049002.P5239187287422772941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269769 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343495 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049002.P5239187287422772941

/-! ## A049002.P15588026713365578711

`∩[A269769(n+1), A389431(n+1)]`
-/

namespace A049002.P15588026713365578711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269769 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389431 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049002.P15588026713365578711

/-!
# A049003: Primes of form p^3 - 4, p prime.

The programs for A049003, there is no canonical definition to state claims against.
-/

/-! ## A049003.P5989031352050660721

`∩[A030078(n+1)-4, A201309(n+1)]`
-/

namespace A049003.P5989031352050660721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030078 (n + 1) - 4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201309 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049003.P5989031352050660721

/-! ## A049003.P12921121830802827573

`∩[A030653(n+1), A053607(n+1)]`
-/

namespace A049003.P12921121830802827573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030653 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053607 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049003.P12921121830802827573

/-! ## A049003.P148698028229560087

`∩[A053607(n+1), A201309(n+1)]`
-/

namespace A049003.P148698028229560087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053607 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201309 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049003.P148698028229560087

/-! ## A049003.P11062715857130599850

`∩[A053607(n+1), A000578(n)-4]`
-/

namespace A049003.P11062715857130599850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053607 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 n - 4

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049003.P11062715857130599850

/-! ## A049003.P5624452485537495436

`∩[A030078(n+1)-4, A053607(n+1)]`
-/

namespace A049003.P5624452485537495436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030078 (n + 1) - 4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053607 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049003.P5624452485537495436

/-!
# A049008: Greatest possible number of right angles that can occur as interior angles in a planar n-gon.

The programs for A049008, the canonical program `A049008.P1378184560969421701` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A049008 has offset 3).

The definition of A049008 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A049008.P1378184560969421701

`a(n-3)+2` with `a(0)=1, a(1)=4, a(2)=3, a(3)=5, a(4)=5, a(5)=6`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A049008

/-- `a(n-3)+2` -/
def P1378184560969421701.Spec : Prop :=
  ∀ n, (P1378184560969421701.a n : ℤ) = A049008 (n + 3)

theorem P1378184560969421701.correct : P1378184560969421701.Spec := by
  intro n
  simp only [A049008, Nat.add_sub_cancel]

end A049008

/-! ## A049008.P5382070326166366046

`∑[a(n-3)²]` with `a(0)=1, a(1)=3, a(2)=-1, a(3)=2, a(4)=0, a(5)=1, a(6)=1`
-/

namespace A049008.P5382070326166366046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 3, -1, 2, 0, 1, 1] fun n f1 =>
  f1 (n - 3) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049008.P5382070326166366046

namespace A049008

/-- `∑[a(n-3)²]` -/
def P5382070326166366046.Spec : Prop :=
  ∀ n, P5382070326166366046.a n = A049008 (n + 3)

end A049008

/-! ## A049008.P966198383407244135

`∑[floor(a(n-3))]` with `a(0)=1, a(1)=3, a(2)=-1, a(3)=2, a(4)=0, a(5)=1, a(6)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A049008.P966198383407244135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 3, -1, 2, 0, 1, 1] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049008.P966198383407244135

namespace A049008

/-- `∑[floor(a(n-3))]` -/
def P966198383407244135.Spec : Prop :=
  ∀ n, P966198383407244135.a n = A049008 (n + 3)

end A049008

/-! ## A049008.P10436922066043752820

`floor(n-(a(n-1)/2-4))` with `a(0)=1, a(1)=4, a(2)=3`
-/

namespace A049008.P10436922066043752820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4, 3] fun n a =>
  ⌊(n : ℚ) - ((a (n - 1) : ℚ) / 2 - 4)⌋

end

end A049008.P10436922066043752820

namespace A049008

/-- `floor(n-(a(n-1)/2-4))` -/
def P10436922066043752820.Spec : Prop :=
  ∀ n, P10436922066043752820.a n = A049008 (n + 3)

end A049008

/-! ## A049008.P15595571187986288129

`∑[a(n-3)^a(n-2)]` with `a(0)=1, a(1)=3, a(2)=-1, a(3)=2, a(4)=0`
-/

namespace A049008.P15595571187986288129
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.rec [1, 3, -1, 2, 0] fun n f1 =>
  f1 (n - 3) ^ (f1 (n - 2))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049008.P15595571187986288129

namespace A049008

/-- `∑[a(n-3)^a(n-2)]` -/
def P15595571187986288129.Spec : Prop :=
  ∀ n, P15595571187986288129.a n = (A049008 (n + 3) : ℝ)

end A049008

/-! ## A049008.P8954059190385213549

`A004525(8-(a(n-1)-A004273(n)))` with `a(0)=1`
-/

namespace A049008.P8954059190385213549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A004525 (8 - (a (n - 1) - A004273 n)).toNat

end

end A049008.P8954059190385213549

namespace A049008

/-- `A004525(8-(a(n-1)-A004273(n)))` -/
def P8954059190385213549.Spec : Prop :=
  ∀ n, P8954059190385213549.a n = A049008 (n + 3)

end A049008

/-! ## A049008.P1769469899807387960

`A223134(n)-A004523(A058992(n+1))`
-/

namespace A049008.P1769469899807387960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223134 n - A004523 (A058992 (n + 1)).toNat

end

end A049008.P1769469899807387960

namespace A049008

/-- `A223134(n)-A004523(A058992(n+1))` -/
def P1769469899807387960.Spec : Prop :=
  ∀ n, P1769469899807387960.a n = A049008 (n + 3)

end A049008

/-! ## A049008.P3587398605235362628

`A194960(A138829(5*n+1))-A004523(4*n)`
-/

namespace A049008.P3587398605235362628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194960 (A138829 (5 * n + 1)).toNat - A004523 (4 * n)

end

end A049008.P3587398605235362628

namespace A049008

/-- `A194960(A138829(5*n+1))-A004523(4*n)` -/
def P3587398605235362628.Spec : Prop :=
  ∀ n, P3587398605235362628.a n = A049008 (n + 3)

end A049008

/-! ## A049008.P14891278085002029984

`round(log2(xor(4, A029748(2*(n+2)))))`
-/

namespace A049008.P14891278085002029984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.logb 2 (Int.xor 4 (A029748 (2 * (n + 2))) : ℝ))

end

end A049008.P14891278085002029984

namespace A049008

/-- `round(log2(xor(4, A029748(2*(n+2)))))` -/
def P14891278085002029984.Spec : Prop :=
  ∀ n, P14891278085002029984.a n = A049008 (n + 3)

end A049008

/-! ## A049008.P5255829334147023003

`A065033(A224779(n+1))+char[1]`
-/

namespace A049008.P5255829334147023003
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A224779 (n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A049008.P5255829334147023003

namespace A049008

/-- `A065033(A224779(n+1))+char[1]` -/
def P5255829334147023003.Spec : Prop :=
  ∀ n, P5255829334147023003.a n = A049008 (n + 3)

end A049008

/-!
# A049009: Number of functions from a set to itself such that the sizes of the preimages of the individual elements in the range form the n-th partition in Abramowitz and Stegun order.

The programs for A049009, there is no canonical definition to state claims against.
-/

/-! ## A049009.P9795456801946153990

`A035206(n)*A036038(C(2, n+2)+n)`
-/

namespace A049009.P9795456801946153990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035206 n * A036038 (Nat.choose 2 (n + 2) + n)

end

end A049009.P9795456801946153990

/-! ## A049009.P9159292300488037110

`A035206(n)*A036038(A028310(n))`
-/

namespace A049009.P9159292300488037110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035206 n * A036038 (A028310 n).toNat

end

end A049009.P9159292300488037110

/-! ## A049009.P3950082920886103857

`A035206(n)*A036038(A000007(n)+n)`
-/

namespace A049009.P3950082920886103857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035206 n * A036038 (A000007 n + (n : ℤ)).toNat

end

end A049009.P3950082920886103857

/-! ## A049009.P2421722911025609646

`A035206(n)*A036038(gcd(n, A008458(n)))`
-/

namespace A049009.P2421722911025609646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035206 n * A036038 (Int.gcd (n : ℤ) (A008458 n))

end

end A049009.P2421722911025609646

/-! ## A049009.P8617673307796829917

`A122454(n)*A178803(n)`
-/

namespace A049009.P8617673307796829917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122454 n * A178803 n

end

end A049009.P8617673307796829917

/-! ## A049009.P3316620163535223394

`A179236(n)/A178886(n)`
-/

namespace A049009.P3316620163535223394
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A179236 n : ℚ) / (A178886 n : ℚ)

end

end A049009.P3316620163535223394

/-! ## A049009.P3197369303896401238

`A178882(n)/A179972(n)`
-/

namespace A049009.P3197369303896401238
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A178882 n : ℚ) / (A179972 n : ℚ)

end

end A049009.P3197369303896401238

/-! ## A049009.P4807536617842129831

`A028310(A036042(n))*A181415(A028310(n))`
-/

namespace A049009.P4807536617842129831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A036042 n).toNat * A181415 (A028310 n).toNat

end

end A049009.P4807536617842129831

/-! ## A049009.P4427209131757426462

`A035206(n)*A036038(A233583(n+1))`
-/

namespace A049009.P4427209131757426462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035206 n * A036038 (A233583 (n + 1)).toNat

end

end A049009.P4427209131757426462

/-! ## A049009.P5805863806360803947

`A035206(n)*A318762(A185974(n))`
-/

namespace A049009.P5805863806360803947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035206 n * A318762 (A185974 n).toNat

end

end A049009.P5805863806360803947

/-!
# A049010: Mean divisor of n differs by <= 1 from mean divisor of all numbers from 1 to n-1.

The programs for A049010, there is no canonical definition to state claims against.
-/

/-! ## A049010.P8281274212718455190

`A316886(A004844(n+2)+1)`
-/

namespace A049010.P8281274212718455190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316886 (A004844 (n + 2) + 1).toNat

end

end A049010.P8281274212718455190

/-! ## A049010.P15064105876131611646

`A034884(A037322(n+1))`
-/

namespace A049010.P15064105876131611646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034884 (A037322 (n + 1)).toNat

end

end A049010.P15064105876131611646

/-! ## A049010.P10443031473471296778

`A316886(A037324(n+1)+1)`
-/

namespace A049010.P10443031473471296778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316886 (A037324 (n + 1) + 1).toNat

end

end A049010.P10443031473471296778

/-!
# A049015: Numbers k such that the sum of the first k Mersenne prime exponents is prime.

The programs for A049015, there is no canonical definition to state claims against.
-/

/-! ## A049015.P12603834762299127472

`A226978(n+1)+A053204(n)`
-/

namespace A049015.P12603834762299127472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226978 (n + 1) + A053204 n

end

end A049015.P12603834762299127472

/-! ## A049015.P1942644933926997502

`A226978(n+1)+A152061(n)`
-/

namespace A049015.P1942644933926997502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226978 (n + 1) + A152061 n

end

end A049015.P1942644933926997502

/-! ## A049015.P5079529685829594856

`∩[A089623(n+1), A034894(n)]`
-/

namespace A049015.P5079529685829594856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089623 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034894 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049015.P5079529685829594856

/-! ## A049015.P7465152961675803275

`∪[A114705(n+1), A006771(n)]`
-/

namespace A049015.P7465152961675803275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114705 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006771 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A049015.P7465152961675803275

/-! ## A049015.P16614028369652469686

`∪[A095698(n+1), A035471(n)]`
-/

namespace A049015.P16614028369652469686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095698 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035471 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A049015.P16614028369652469686

/-!
# A049016: Expansion of 1/((1-x)^5 - x^5).

The programs for A049016, the canonical program `A049016.P11992991884125941791` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A049016 has offset 0).

The definition of A049016 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-5x+10x^2-10x^3+5x^4-2x^5))` (program `A049016.P11992991884125941791`, by `A049016.P11992991884125941791.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A049016.P11992991884125941791

`ogf(1/(1-5x+10x^2-10x^3+5x^4-2x^5))`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A049016

/-- `ogf(1/(1-5x+10x^2-10x^3+5x^4-2x^5))` -/
def P11992991884125941791.Spec : Prop :=
  ∀ n, P11992991884125941791.a n = A049016 n

theorem P11992991884125941791.correct : P11992991884125941791.Spec := by
  intro n
  simp only [A049016]

end A049016

/-! ## A049016.P9356676158066622602

`A139761(n+4)`
-/

namespace A049016.P9356676158066622602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139761 (n + 4)

end

end A049016.P9356676158066622602

namespace A049016

/-- `A139761(n+4)` -/
def P9356676158066622602.Spec : Prop :=
  ∀ n, P9356676158066622602.a n = A049016 n

end A049016

/-! ## A049016.P6474884965517500474

`∑[A139748(n+3)]`
-/

namespace A049016.P6474884965517500474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139748 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049016.P6474884965517500474

namespace A049016

/-- `∑[A139748(n+3)]` -/
def P6474884965517500474.Spec : Prop :=
  ∀ n, P6474884965517500474.a n = A049016 n

end A049016

/-! ## A049016.P9645961960232313227

`∑[∑[A139714(n+2)]]`
-/

namespace A049016.P9645961960232313227
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139714 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049016.P9645961960232313227

namespace A049016

/-- `∑[∑[A139714(n+2)]]` -/
def P9645961960232313227.Spec : Prop :=
  ∀ n, P9645961960232313227.a n = A049016 n

end A049016

/-! ## A049016.P10190049799073484038

`∑[∑[∑[A133476(n+1)]]]`
-/

namespace A049016.P10190049799073484038
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133476 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049016.P10190049799073484038

namespace A049016

/-- `∑[∑[∑[A133476(n+1)]]]` -/
def P10190049799073484038.Spec : Prop :=
  ∀ n, P10190049799073484038.a n = A049016 n

end A049016

/-! ## A049016.P5873429736584779750

`Δ[A139398(n+4)]`
-/

namespace A049016.P5873429736584779750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139398 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A049016.P5873429736584779750

namespace A049016

/-- `Δ[A139398(n+4)]` -/
def P5873429736584779750.Spec : Prop :=
  ∀ n, P5873429736584779750.a n = A049016 n

end A049016

/-! ## A049016.P1476951195897416613

`2^(n+3)-A129929(n+3)`
-/

namespace A049016.P1476951195897416613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 3) : ℤ) - A129929 (n + 3)

end

end A049016.P1476951195897416613

namespace A049016

/-- `2^(n+3)-A129929(n+3)` -/
def P1476951195897416613.Spec : Prop :=
  ∀ n, P1476951195897416613.a n = A049016 n

end A049016

/-! ## A049016.P17535424550784820638

`A101508(eq[4, A002262(n)])`
-/

namespace A049016.P17535424550784820638
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101508 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A049016.P17535424550784820638

namespace A049016

/-- `A101508(eq[4, A002262(n)])` -/
def P17535424550784820638.Spec : Prop :=
  ∀ n, P17535424550784820638.a n = A049016 n

end A049016

/-!
# A049017: Expansion of 1/((1-x)^7 - x^7).

The programs for A049017, the canonical program `A049017.P17855662916839205768` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A049017 has offset 0).

The definition of A049017 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-7x+21x^2-35x^3+35x^4-21x^5+7x^6-2x^7))` (program `A049017.P17855662916839205768`, by `A049017.P17855662916839205768.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A049017.P17855662916839205768

`ogf(1/(1-7x+21x^2-35x^3+35x^4-21x^5+7x^6-2x^7))`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A049017

/-- `ogf(1/(1-7x+21x^2-35x^3+35x^4-21x^5+7x^6-2x^7))` -/
def P17855662916839205768.Spec : Prop :=
  ∀ n, P17855662916839205768.a n = A049017 n

theorem P17855662916839205768.correct : P17855662916839205768.Spec := by
  intro n
  simp only [A049017]

end A049017

/-! ## A049017.P4343791481888092340

`A290994(n+6)`
-/

namespace A049017.P4343791481888092340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290994 (n + 6)

end

end A049017.P4343791481888092340

namespace A049017

/-- `A290994(n+6)` -/
def P4343791481888092340.Spec : Prop :=
  ∀ n, P4343791481888092340.a n = A049017 n

end A049017

/-! ## A049017.P7085536228144687092

`record[or(A000007(n), A290994(n))]`
-/

namespace A049017.P7085536228144687092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A290994 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A049017.P7085536228144687092

namespace A049017

/-- `record[or(A000007(n), A290994(n))]` -/
def P7085536228144687092.Spec : Prop :=
  ∀ n, P7085536228144687092.a n = A049017 n

end A049017

/-! ## A049017.P7879397409195726651

`Δ[A306852(n+6)]`
-/

namespace A049017.P7879397409195726651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306852 (n + 6)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A049017.P7879397409195726651

namespace A049017

/-- `Δ[A306852(n+6)]` -/
def P7879397409195726651.Spec : Prop :=
  ∀ n, P7879397409195726651.a n = A049017 n

end A049017

/-! ## A049017.P9267313220984986219

`A101508(eq[6, A002262(n)])`
-/

namespace A049017.P9267313220984986219
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101508 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A049017.P9267313220984986219

namespace A049017

/-- `A101508(eq[6, A002262(n)])` -/
def P9267313220984986219.Spec : Prop :=
  ∀ n, P9267313220984986219.a n = A049017 n

end A049017

/-! ## A049017.P2648915855615033019

`A101508(A167499(n+5)+1)`
-/

namespace A049017.P2648915855615033019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101508 (A167499 (n + 5) + 1).toNat

end

end A049017.P2648915855615033019

namespace A049017

/-- `A101508(A167499(n+5)+1)` -/
def P2648915855615033019.Spec : Prop :=
  ∀ n, P2648915855615033019.a n = A049017 n

end A049017

/-! ## A049017.P11017031765358571205

`A101508(A000096(n+5)+7)`
-/

namespace A049017.P11017031765358571205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101508 (A000096 (n + 5) + 7).toNat

end

end A049017.P11017031765358571205

namespace A049017

/-- `A101508(A000096(n+5)+7)` -/
def P11017031765358571205.Spec : Prop :=
  ∀ n, P11017031765358571205.a n = A049017 n

end A049017

/-! ## A049017.P17679029704313752450

`Δ[record[A306852(A025581(n))]]`
-/

namespace A049017.P17679029704313752450
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306852 (A025581 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A049017.P17679029704313752450

namespace A049017

/-- `Δ[record[A306852(A025581(n))]]` -/
def P17679029704313752450.Spec : Prop :=
  ∀ n, P17679029704313752450.a n = A049017 n

end A049017

/-! ## A049017.P14143289776998518965

`A306915(A161680(n+8)-7)`
-/

namespace A049017.P14143289776998518965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306915 (A161680 (n + 8) - 7).toNat

end

end A049017.P14143289776998518965

namespace A049017

/-- `A306915(A161680(n+8)-7)` -/
def P14143289776998518965.Spec : Prop :=
  ∀ n, P14143289776998518965.a n = A049017 n

end A049017

/-!
# A049018: Expansion of 1/((1+x)^7 - x^7).

The programs for A049018, the canonical program `A049018.P3057043285278418538` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A049018 has offset 0).

The definition of A049018 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1+7x+21x^2+35x^3+35x^4+21x^5+7x^6))` (program `A049018.P3057043285278418538`, by `A049018.P3057043285278418538.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A049018.P3057043285278418538

`ogf(1/(1+7x+21x^2+35x^3+35x^4+21x^5+7x^6))`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A049018

/-- `ogf(1/(1+7x+21x^2+35x^3+35x^4+21x^5+7x^6))` -/
def P3057043285278418538.Spec : Prop :=
  ∀ n, P3057043285278418538.a n = A049018 n

theorem P3057043285278418538.correct : P3057043285278418538.Spec := by
  intro n
  simp only [A049018]

end A049018

/-! ## A049018.P3836038324600820152

`A307047(A000217(n+7)-7)`
-/

namespace A049018.P3836038324600820152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307047 (A000217 (n + 7) - 7).toNat

end

end A049018.P3836038324600820152

namespace A049018

/-- `A307047(A000217(n+7)-7)` -/
def P3836038324600820152.Spec : Prop :=
  ∀ n, P3836038324600820152.a n = A049018 n

end A049018

/-! ## A049018.P11107340137354941856

`A307047(A000124(n+7)-8)`
-/

namespace A049018.P11107340137354941856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307047 (A000124 (n + 7) - 8).toNat

end

end A049018.P11107340137354941856

namespace A049018

/-- `A307047(A000124(n+7)-8)` -/
def P11107340137354941856.Spec : Prop :=
  ∀ n, P11107340137354941856.a n = A049018 n

end A049018

/-! ## A049018.P4134600800493158335

`A307047(A055998(n+4)+n+3)`
-/

namespace A049018.P4134600800493158335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307047 (A055998 (n + 4) + (n + 3 : ℤ)).toNat

end

end A049018.P4134600800493158335

namespace A049018

/-- `A307047(A055998(n+4)+n+3)` -/
def P4134600800493158335.Spec : Prop :=
  ∀ n, P4134600800493158335.a n = A049018 n

end A049018

/-! ## A049018.P12198074186572364628

`A307047(A133263(n+5)+2*(n+2))`
-/

namespace A049018.P12198074186572364628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307047 (A133263 (n + 5) + (2 * (n + 2) : ℤ)).toNat

end

end A049018.P12198074186572364628

namespace A049018

/-- `A307047(A133263(n+5)+2*(n+2))` -/
def P12198074186572364628.Spec : Prop :=
  ∀ n, P12198074186572364628.a n = A049018 n

end A049018

/-! ## A049018.P16865204675951749636

`A307047(A166136(n+4)+A005843(n))`
-/

namespace A049018.P16865204675951749636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307047 (A166136 (n + 4) + A005843 n).toNat

end

end A049018.P16865204675951749636

namespace A049018

/-- `A307047(A166136(n+4)+A005843(n))` -/
def P16865204675951749636.Spec : Prop :=
  ∀ n, P16865204675951749636.a n = A049018 n

end A049018

/-! ## A049018.P10568114336164889081

`A307047(A034856(n+4)+A005843(n+4))`
-/

namespace A049018.P10568114336164889081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307047 (A034856 (n + 4) + A005843 (n + 4)).toNat

end

end A049018.P10568114336164889081

namespace A049018

/-- `A307047(A034856(n+4)+A005843(n+4))` -/
def P10568114336164889081.Spec : Prop :=
  ∀ n, P10568114336164889081.a n = A049018 n

end A049018

/-!
# A049019: Irregular triangle read by rows: Row n gives numbers of preferential arrangements (onto functions) of n objects that are associated with the partition of n, taken in Abramowitz and Stegun order.

The programs for A049019, there is no canonical definition to state claims against.
-/

/-! ## A049019.P5922518300155176620

`A318810(2*A334438(n+1))/A096162(n+1)*A178803(n+1)`
-/

namespace A049019.P5922518300155176620
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A318810 (2 * A334438 (n + 1)).toNat : ℚ) / (A096162 (n + 1) : ℚ) * (A178803 (n + 1) : ℚ)

end

end A049019.P5922518300155176620

/-! ## A049019.P4504357767470345454

`A036038(n+1)/A119441(n+1)*A119443(n+1)`
-/

namespace A049019.P4504357767470345454
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A036038 (n + 1) : ℚ) / (A119441 (n + 1) : ℚ) * (A119443 (n + 1) : ℚ)

end

end A049019.P4504357767470345454

/-! ## A049019.P7022355370604611845

`gcd(A036040(n+1), A324254(n+1))*A178803(n+1)`
-/

namespace A049019.P7022355370604611845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (A036040 (n + 1)) (A324254 (n + 1)) : ℤ) * A178803 (n + 1)

end

end A049019.P7022355370604611845

/-! ## A049019.P8178349043128081086

`A028310(A178803(n+1))*A036040(n+1)`
-/

namespace A049019.P8178349043128081086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A178803 (n + 1)).toNat * A036040 (n + 1)

end

end A049019.P8178349043128081086

/-! ## A049019.P17156190248697962306

`A036038(n+1)*A134283(n+1)/A134284(n+1)`
-/

namespace A049019.P17156190248697962306
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A036038 (n + 1) * A134283 (n + 1) : ℚ) / (A134284 (n + 1) : ℚ)

end

end A049019.P17156190248697962306

/-!
# A049020: Triangle of numbers a(n,k), 0 <= k <= n: number of set partitions of {1,2,...,n} in which exactly k of the blocks have been distinguished.

The programs for A049020, there is no canonical definition to state claims against.
-/

/-! ## A049020.P381600533706880468

`A059098(n)/A233543(n)`
-/

namespace A049020.P381600533706880468
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059098 n : ℚ) / (A233543 n : ℚ)

end

end A049020.P381600533706880468

/-! ## A049020.P1199466619865710970

`A059098(n)/A002262(n)!`
-/

namespace A049020.P1199466619865710970
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059098 n : ℚ) / (Nat.factorial (A002262 n).toNat : ℚ)

end

end A049020.P1199466619865710970

/-! ## A049020.P11663380255829461986

`A123158(A245300(n)+A002262(n))`
-/

namespace A049020.P11663380255829461986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123158 (A245300 n + A002262 n).toNat

end

end A049020.P11663380255829461986

/-! ## A049020.P6818015594236149091

`A123158(A245300(n)+A144328(n+1))`
-/

namespace A049020.P6818015594236149091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123158 (A245300 n + A144328 (n + 1)).toNat

end

end A049020.P6818015594236149091

/-! ## A049020.P3421435509524817090

`A240857(A208059(n))+A060693(n)`
-/

namespace A049020.P3421435509524817090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240857 (A208059 n).toNat + A060693 n

end

end A049020.P3421435509524817090

/-!
# A049021: Number of topologically distinct ways to dissect a rectangle into n rectangles.

The programs for A049021, there is no canonical definition to state claims against.
-/

/-! ## A049021.P13099913642223659340

`A330926(A330945(n+1)+A256120(2*n+1))`
-/

namespace A049021.P13099913642223659340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330926 (A330945 (n + 1) + A256120 (2 * n + 1)).toNat

end

end A049021.P13099913642223659340

/-! ## A049021.P1139760660717332569

`or(A125229(A123471(n+1)), A127125(2*n+1))`
-/

namespace A049021.P1139760660717332569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A125229 (A123471 (n + 1)).toNat) (A127125 (2 * n + 1))

end

end A049021.P1139760660717332569

/-!
# A049022: Recurring combinations: a(n) = C(a(n-1),a(n-2)).

The programs for A049022, there is no canonical definition to state claims against.
-/

/-! ## A049022.P17238695414038087572

`C(a(n-1), a(n-2))` with `a(0)=2, a(1)=4`
-/

namespace A049022.P17238695414038087572
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 4] fun n a =>
  Nat.choose (a (n - 1)) (a (n - 2))

end

end A049022.P17238695414038087572

/-!
# A049027: G.f.: (1-2*x*c(x))/(1-3*x*c(x)) where c(x) = (1 - sqrt(1-4*x))/(2*x) is the g.f. for Catalan numbers A000108.

The programs for A049027, there is no canonical definition to state claims against.
-/

/-! ## A049027.P5616052063712615062

`ceil(A067336(n)/2)`
-/

namespace A049027.P5616052063712615062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A067336 n : ℚ) / 2⌉

end

end A049027.P5616052063712615062

/-! ## A049027.P5392731643938777981

`ceil(A007854(n)/3)`
-/

namespace A049027.P5392731643938777981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A007854 n : ℚ) / 3⌉

end

end A049027.P5392731643938777981

/-! ## A049027.P13987952675474842232

`A067336(round(sqrt(n²+1)))/2`
-/

namespace A049027.P13987952675474842232
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A067336 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat : ℚ) / 2

end

end A049027.P13987952675474842232

/-! ## A049027.P8959564501326791567

`A007854(n)/A122553(n)`
-/

namespace A049027.P8959564501326791567
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007854 n : ℚ) / (A122553 n : ℚ)

end

end A049027.P8959564501326791567

/-! ## A049027.P12591729761529769805

`gcd(A007854(n), A067336(n))`
-/

namespace A049027.P12591729761529769805
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A007854 n) (A067336 n)

end

end A049027.P12591729761529769805

/-! ## A049027.P3865994528414693644

`A007854(n)/3%A008776(n)`
-/

namespace A049027.P3865994528414693644
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007854 n : ℚ) / (Int.tmod 3 (A008776 n) : ℚ)

end

end A049027.P3865994528414693644

/-! ## A049027.P17883824282601723644

`A007854(n)/gcd(3, A000244(n))`
-/

namespace A049027.P17883824282601723644
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007854 n : ℚ) / (Int.gcd 3 (A000244 n) : ℚ)

end

end A049027.P17883824282601723644

/-! ## A049027.P8795880942525390913

`1/A036453(n+1)*A067336(n)`
-/

namespace A049027.P8795880942525390913
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (A036453 (n + 1) : ℚ) * (A067336 n : ℚ)

end

end A049027.P8795880942525390913

/-! ## A049027.P7575424080763199701

`A007854(n)/A000244(n²%(n+1))`
-/

namespace A049027.P7575424080763199701
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007854 n : ℚ) / (A000244 (n ^ 2 % (n + 1)) : ℚ)

end

end A049027.P7575424080763199701

/-! ## A049027.P17485224652968747771

`A007854(n)/A014963(A048883(n))`
-/

namespace A049027.P17485224652968747771
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007854 n : ℚ) / (A014963 (A048883 n).toNat : ℚ)

end

end A049027.P17485224652968747771

/-! ## A049027.P10255705356292178545

`A007854(n)/A000032(A000079(n)/A011782(n))`
-/

namespace A049027.P10255705356292178545
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007854 n : ℚ) / (A000032 (SequenceMachineLib.roundAway ((A000079 n : ℚ) / (A011782 n : ℚ))).toNat : ℚ)

end

end A049027.P10255705356292178545

/-!
# A049028: Row sums of triangle A035529.

The programs for A049028, there is no canonical definition to state claims against.
-/

/-! ## A049028.P15566334712697754645

`A298364(A166517(n)+A155629(n))`
-/

namespace A049028.P15566334712697754645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298364 (A166517 n + A155629 n).toNat

end

end A049028.P15566334712697754645

/-!
# A049029: Triangle read by rows, the Bell transform of the quartic factorial numbers A007696(n+1) without column 0.

The programs for A049029, there is no canonical definition to state claims against.
-/

/-! ## A049029.P8715470303892217599

`A049353(n+1)/A030526(n+1)*A048882(n)`
-/

namespace A049029.P8715470303892217599
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049353 (n + 1) : ℚ) / (A030526 (n + 1) : ℚ) * (A048882 n : ℚ)

end

end A049029.P8715470303892217599

/-! ## A049029.P12612248868619139060

`or(A134273(n+1), A134273(A275312(n)))`
-/

namespace A049029.P12612248868619139060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A134273 (n + 1)) (A134273 (A275312 n).toNat)

end

end A049029.P12612248868619139060

/-! ## A049029.P10538335507816955485

`or(A034432(A222125(n+1)), A134273(n+1))`
-/

namespace A049029.P10538335507816955485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A034432 (A222125 (n + 1)).toNat) (A134273 (n + 1))

end

end A049029.P10538335507816955485

/-! ## A049029.P10896528855853199839

`or(A034432(A222126(n+1)), A134273(n+1))`
-/

namespace A049029.P10896528855853199839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A034432 (A222126 (n + 1)).toNat) (A134273 (n + 1))

end

end A049029.P10896528855853199839

/-!
# A049031: Maximization of sums of cubes of integer differences (b_[ i ]-i)^3 over permutations {b_[ i ], for i-1,2,...,n} on first n integers.

The programs for A049031, the canonical program `A049031.P15455535512012466543` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A049031 has offset 1).

The definition of A049031 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A049031.P6436327276640207111

`2*A049032(n+1)`
-/

namespace A049031.P6436327276640207111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A049032 (n + 1)

end

end A049031.P6436327276640207111

namespace A049031

/-- `2*A049032(n+1)` -/
def P6436327276640207111.Spec : Prop :=
  ∀ n, P6436327276640207111.a n = A049031 (n + 1)

end A049031

/-! ## A049031.P15455535512012466543

`2*A000292(A057353(n))*A110655(n)`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A049031

/-- `2*A000292(A057353(n))*A110655(n)` -/
def P15455535512012466543.Spec : Prop :=
  ∀ n, P15455535512012466543.a n = A049031 (n + 1)

theorem P15455535512012466543.correct : P15455535512012466543.Spec := by
  intro n
  simp only [A049031, Nat.add_sub_cancel]

end A049031

/-! ## A049031.P16347125732543032465

`A049032(A000027(n+1))+A049032(n+1)`
-/

namespace A049031.P16347125732543032465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049032 (A000027 (n + 1)).toNat + A049032 (n + 1)

end

end A049031.P16347125732543032465

namespace A049031

/-- `A049032(A000027(n+1))+A049032(n+1)` -/
def P16347125732543032465.Spec : Prop :=
  ∀ n, P16347125732543032465.a n = A049031 (n + 1)

end A049031

/-! ## A049031.P4791884907569102423

`A049032(n+1)+A049032(A028310(n)+1)`
-/

namespace A049031.P4791884907569102423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049032 (n + 1) + A049032 (A028310 n + 1).toNat

end

end A049031.P4791884907569102423

namespace A049031

/-- `A049032(n+1)+A049032(A028310(n)+1)` -/
def P4791884907569102423.Spec : Prop :=
  ∀ n, P4791884907569102423.a n = A049031 (n + 1)

end A049031

/-! ## A049031.P12369146034683721065

`A049032(n+1)+A049032(A005408(n)-n)`
-/

namespace A049031.P12369146034683721065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049032 (n + 1) + A049032 (A005408 n - (n : ℤ)).toNat

end

end A049031.P12369146034683721065

namespace A049031

/-- `A049032(n+1)+A049032(A005408(n)-n)` -/
def P12369146034683721065.Spec : Prop :=
  ∀ n, P12369146034683721065.a n = A049031 (n + 1)

end A049031

/-!
# A049032: A049031/2.

The programs for A049032, the canonical program `A049032.P6256970175047943519` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A049032 has offset 1).

The definition of A049032 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A049032.P12511171945942488384

`A049031(n+1)/2`
-/

namespace A049032.P12511171945942488384
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049031 (n + 1) : ℚ) / 2

end

end A049032.P12511171945942488384

namespace A049032

/-- `A049031(n+1)/2` -/
def P12511171945942488384.Spec : Prop :=
  ∀ n, P12511171945942488384.a n = (A049032 (n + 1) : ℚ)

end A049032

/-! ## A049032.P6256970175047943519

`A000292(A057353(n))*A110655(n)`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A049032

/-- `A000292(A057353(n))*A110655(n)` -/
def P6256970175047943519.Spec : Prop :=
  ∀ n, P6256970175047943519.a n = A049032 (n + 1)

theorem P6256970175047943519.correct : P6256970175047943519.Spec := by
  intro n
  simp only [A049032, Nat.add_sub_cancel]

end A049032

/-! ## A049032.P7751877696530429672

`A000292(n-A110655(n))*A110655(n)`
-/

namespace A049032.P7751877696530429672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 ((n : ℤ) - A110655 n).toNat * A110655 n

end

end A049032.P7751877696530429672

namespace A049032

/-- `A000292(n-A110655(n))*A110655(n)` -/
def P7751877696530429672.Spec : Prop :=
  ∀ n, P7751877696530429672.a n = A049032 (n + 1)

end A049032

/-! ## A049032.P13321141059077308981

`A000292(A057360(2*n))*A110655(n)`
-/

namespace A049032.P13321141059077308981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (A057360 (2 * n)).toNat * A110655 n

end

end A049032.P13321141059077308981

namespace A049032

/-- `A000292(A057360(2*n))*A110655(n)` -/
def P13321141059077308981.Spec : Prop :=
  ∀ n, P13321141059077308981.a n = A049032 (n + 1)

end A049032

/-! ## A049032.P8015964887174969606

`A005044(3*n+1)*A005044(A016789(n))/2`
-/

namespace A049032.P8015964887174969606
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005044 (3 * n + 1) * A005044 (A016789 n).toNat : ℚ) / 2

end

end A049032.P8015964887174969606

namespace A049032

/-- `A005044(3*n+1)*A005044(A016789(n))/2` -/
def P8015964887174969606.Spec : Prop :=
  ∀ n, P8015964887174969606.a n = (A049032 (n + 1) : ℚ)

end A049032

/-!
# A049033: Central factorial numbers: unsigned 2nd subdiagonal of A182867.

The programs for A049033, there is no canonical definition to state claims against.
-/

/-! ## A049033.P15305456221327766043

`4^n*A001820(n)`
-/

namespace A049033.P15305456221327766043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 ^ n : ℤ) * A001820 n

end

end A049033.P15305456221327766043

/-! ## A049033.P12620143680771096526

`A001820(n)*A011782(n+1)²`
-/

namespace A049033.P12620143680771096526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001820 n * A011782 (n + 1) ^ 2

end

end A049033.P12620143680771096526

/-! ## A049033.P9682597010259215907

`A001820(n)*A011782(2*n+1)`
-/

namespace A049033.P9682597010259215907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001820 n * A011782 (2 * n + 1)

end

end A049033.P9682597010259215907

/-! ## A049033.P5492175564315229250

`A001820(n)*A059268(A139098(n))`
-/

namespace A049033.P5492175564315229250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001820 n * A059268 (A139098 n).toNat

end

end A049033.P5492175564315229250

/-! ## A049033.P16362871919595045795

`A001820(n)*A262616(A000217(n))`
-/

namespace A049033.P16362871919595045795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001820 n * A262616 (A000217 n).toNat

end

end A049033.P16362871919595045795

/-!
# A049034: Scaled sums of odd reciprocals.

The programs for A049034, there is no canonical definition to state claims against.
-/

/-! ## A049034.P8117882152349615463

`(2*n+1)!*∑[1/(2*n+1)]`
-/

namespace A049034.P8117882152349615463
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (2 * n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (2 * n + 1) : ℚ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A049034.P8117882152349615463

/-! ## A049034.P10416812971836778435

`record[-n*a(n-1)]+n*(4*n+2)*a(n-1)` with `a(0)=1`
-/

namespace A049034.P10416812971836778435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  -((n : ℤ) * f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + (n * (4 * n + 2) : ℤ) * a (n - 1)

end

end A049034.P10416812971836778435

/-! ## A049034.P9071121985184353722

`A081358(Δ[n²])`
-/

namespace A049034.P9071121985184353722
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081358 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A049034.P9071121985184353722

/-! ## A049034.P9764227917689042981

`A092692(Δ[n²])`
-/

namespace A049034.P9764227917689042981
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092692 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A049034.P9764227917689042981

/-! ## A049034.P11953497736979228388

`record[A081358(A099375(n))]`
-/

namespace A049034.P11953497736979228388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081358 (A099375 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A049034.P11953497736979228388

/-!
# A049035: Number of pairs of twin primes whose smaller element is <= 10^n-th prime.

The programs for A049035, there is no canonical definition to state claims against.
-/

/-! ## A049035.P12112740229556463665

`floor(A093683(n+1)+acot(n))`
-/

namespace A049035.P12112740229556463665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A093683 (n + 1) : ℝ) + SequenceMachineLib.acot (n : ℝ)⌋

end

end A049035.P12112740229556463665

/-! ## A049035.P9882911926640275926

`A093683(n+1)+A000007(n)`
-/

namespace A049035.P9882911926640275926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093683 (n + 1) + A000007 n

end

end A049035.P9882911926640275926

/-! ## A049035.P14867253515220251173

`A151933(n)+A093683(n+1)`
-/

namespace A049035.P14867253515220251173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n + A093683 (n + 1)

end

end A049035.P14867253515220251173

/-! ## A049035.P11886558586653453661

`or(A079998(n), A093683(n+1))`
-/

namespace A049035.P11886558586653453661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A079998 n) (A093683 (n + 1))

end

end A049035.P11886558586653453661

/-! ## A049035.P10437086981453388060

`A093683(n+1)+char[A098850(n)]`
-/

namespace A049035.P10437086981453388060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098850 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093683 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A049035.P10437086981453388060

/-!
# A049036: Mean gap between successive primes up to k-th prime is an integer.

The programs for A049036, there is no canonical definition to state claims against.
-/

/-! ## A049036.P1121210047940450587

`(A049038(n+1)-2)/A228543(n+1)+1`
-/

namespace A049036.P1121210047940450587
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049038 (n + 1) - 2 : ℚ) / (A228543 (n + 1) : ℚ) + 1

end

end A049036.P1121210047940450587

/-! ## A049036.P15190135615713233818

`A105287(n+1)+1`
-/

namespace A049036.P15190135615713233818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105287 (n + 1) + 1

end

end A049036.P15190135615713233818

/-!
# A049037: Number of cubic lattice walks that start and end at origin after 2n steps, not touching origin at intermediate stages.

The programs for A049037, there is no canonical definition to state claims against.
-/

/-! ## A049037.P16581043946805896241

`A361397(2*n+∑[n+2]+4)`
-/

namespace A049037.P16581043946805896241
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361397 (2 * n + (∑ j ∈ Finset.range (n + 1), f1 j + 4))

end

end A049037.P16581043946805896241

/-!
# A049038: Primes arising in A049036.

The programs for A049038, there is no canonical definition to state claims against.
-/

/-! ## A049038.P654493380546340485

`A105287(n+1)*A228543(n+1)+2`
-/

namespace A049038.P654493380546340485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105287 (n + 1) * A228543 (n + 1) + 2

end

end A049038.P654493380546340485

/-! ## A049038.P14975287133618943433

`p?[A058011(n)+2]`
-/

namespace A049038.P14975287133618943433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058011 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A049038.P14975287133618943433

/-!
# A049039: Geometric Connell sequence: 1 odd, 2 even, 4 odd, 8 even, ...

The programs for A049039, the canonical program `A049039.P18044230875529564358` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A049039 has offset 1).

The definition of A049039 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A049039.P11402879525163590089

`comp[comp[∑[2^n]]+n]`
-/

namespace A049039.P11402879525163590089
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A049039.P11402879525163590089

namespace A049039

/-- `comp[comp[∑[2^n]]+n]` -/
def P11402879525163590089.Spec : Prop :=
  ∀ n, (P11402879525163590089.a n : ℤ) = A049039 (n + 1)

end A049039

/-! ## A049039.P18044230875529564358

`∑[gcd(2, ∏{p}[n+1, #+1])]`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A049039

/-- `∑[gcd(2, ∏{p}[n+1, #+1])]` -/
def P18044230875529564358.Spec : Prop :=
  ∀ n, (P18044230875529564358.a n : ℤ) = A049039 (n + 1)

theorem P18044230875529564358.correct : P18044230875529564358.Spec := by
  intro n
  simp only [A049039, Nat.add_sub_cancel]

end A049039

/-! ## A049039.P8155363240248810660

`∑[2-∏{p}[n+1, val(#, 2)]]`
-/

namespace A049039.P8155363240248810660
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ((∏ p ∈ Nat.primeFactors (f2 n), SequenceMachineLib.valuation p 2 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049039.P8155363240248810660

namespace A049039

/-- `∑[2-∏{p}[n+1, val(#, 2)]]` -/
def P8155363240248810660.Spec : Prop :=
  ∀ n, P8155363240248810660.a n = A049039 (n + 1)

end A049039

/-! ## A049039.P9767625505963483933

`∑[2-C(2, ∑{p}[n+1, #])]`
-/

namespace A049039.P9767625505963483933
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (Nat.choose 2 (∑ p ∈ Nat.primeFactors (f2 n), p) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049039.P9767625505963483933

namespace A049039

/-- `∑[2-C(2, ∑{p}[n+1, #])]` -/
def P9767625505963483933.Spec : Prop :=
  ∀ n, P9767625505963483933.a n = A049039 (n + 1)

end A049039

/-! ## A049039.P5681605040739358645

`∑[2-∏{p}[n+1, C(2, #)]]`
-/

namespace A049039.P5681605040739358645
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ((∏ p ∈ Nat.primeFactors (f2 n), Nat.choose 2 p : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049039.P5681605040739358645

namespace A049039

/-- `∑[2-∏{p}[n+1, C(2, #)]]` -/
def P5681605040739358645.Spec : Prop :=
  ∀ n, P5681605040739358645.a n = A049039 (n + 1)

end A049039

/-! ## A049039.P11554429558240417078

`∑[and(3, ∏{p}[and(n, n+1), #])]`
-/

namespace A049039.P11554429558240417078
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land n (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 3 (∏ p ∈ Nat.primeFactors (f2 n), p)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049039.P11554429558240417078

namespace A049039

/-- `∑[and(3, ∏{p}[and(n, n+1), #])]` -/
def P11554429558240417078.Spec : Prop :=
  ∀ n, (P11554429558240417078.a n : ℤ) = A049039 (n + 1)

end A049039

/-! ## A049039.P4220819505716975634

`∑[2-C(2, and(n, n+1)²)]`
-/

namespace A049039.P4220819505716975634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (Nat.choose 2 (Nat.land n (n + 1) ^ 2) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049039.P4220819505716975634

namespace A049039

/-- `∑[2-C(2, and(n, n+1)²)]` -/
def P4220819505716975634.Spec : Prop :=
  ∀ n, P4220819505716975634.a n = A049039 (n + 1)

end A049039

/-! ## A049039.P16418984282699708091

`∑[2-C(and(n, 2*n+1), n)]`
-/

namespace A049039.P16418984282699708091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (Nat.choose (Nat.land n (2 * n + 1)) n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049039.P16418984282699708091

namespace A049039

/-- `∑[2-C(and(n, 2*n+1), n)]` -/
def P16418984282699708091.Spec : Prop :=
  ∀ n, P16418984282699708091.a n = A049039 (n + 1)

end A049039

/-! ## A049039.P18313751055146925595

`ceil(log2(acot(n+1))+2*n+1)`
-/

namespace A049039.P18313751055146925595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (SequenceMachineLib.acot (n + 1 : ℝ)) + (2 * n + 1 : ℝ)⌉

end

end A049039.P18313751055146925595

namespace A049039

/-- `ceil(log2(acot(n+1))+2*n+1)` -/
def P18313751055146925595.Spec : Prop :=
  ∀ n, P18313751055146925595.a n = A049039 (n + 1)

end A049039

/-! ## A049039.P1619747619036823531

`∑[floor(and(n, n+1)/(n+1)+ϕ)]`
-/

namespace A049039.P1619747619036823531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((Nat.land n (n + 1) : ℚ) / (n + 1 : ℚ) : ℝ) + Real.goldenRatio⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049039.P1619747619036823531

namespace A049039

/-- `∑[floor(and(n, n+1)/(n+1)+ϕ)]` -/
def P1619747619036823531.Spec : Prop :=
  ∀ n, P1619747619036823531.a n = A049039 (n + 1)

end A049039

/-! ## A049039.P124347374208095079

`∑[2-floor(and(2*n+1, n+1)/(n+1))]`
-/

namespace A049039.P124347374208095079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ⌊(Nat.land (2 * n + 1) (n + 1) : ℚ) / (n + 1 : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049039.P124347374208095079

namespace A049039

/-- `∑[2-floor(and(2*n+1, n+1)/(n+1))]` -/
def P124347374208095079.Spec : Prop :=
  ∀ n, P124347374208095079.a n = A049039 (n + 1)

end A049039

/-! ## A049039.P4439299863536355835

`∑[floor((and(n, n+1)+2*n+1)/(n+1))]`
-/

namespace A049039.P4439299863536355835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.land n (n + 1) + (2 * n + 1) : ℚ) / (n + 1 : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049039.P4439299863536355835

namespace A049039

/-- `∑[floor((and(n, n+1)+2*n+1)/(n+1))]` -/
def P4439299863536355835.Spec : Prop :=
  ∀ n, P4439299863536355835.a n = A049039 (n + 1)

end A049039

/-! ## A049039.P18191822180730043847

`∑[A043529(n)]`
-/

namespace A049039.P18191822180730043847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043529 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049039.P18191822180730043847

namespace A049039

/-- `∑[A043529(n)]` -/
def P18191822180730043847.Spec : Prop :=
  ∀ n, P18191822180730043847.a n = A049039 (n + 1)

end A049039

/-! ## A049039.P7330251846415556966

`∑[A043545(n)+1]`
-/

namespace A049039.P7330251846415556966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043545 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049039.P7330251846415556966

namespace A049039

/-- `∑[A043545(n)+1]` -/
def P7330251846415556966.Spec : Prop :=
  ∀ n, P7330251846415556966.a n = A049039 (n + 1)

end A049039

/-! ## A049039.P5726547557975781122

`∑[2-A036987(n)]`
-/

namespace A049039.P5726547557975781122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A036987 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049039.P5726547557975781122

namespace A049039

/-- `∑[2-A036987(n)]` -/
def P5726547557975781122.Spec : Prop :=
  ∀ n, P5726547557975781122.a n = A049039 (n + 1)

end A049039

/-! ## A049039.P7513546467938644873

`∑[A267442(n)]+n`
-/

namespace A049039.P7513546467938644873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267442 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A049039.P7513546467938644873

namespace A049039

/-- `∑[A267442(n)]+n` -/
def P7513546467938644873.Spec : Prop :=
  ∀ n, P7513546467938644873.a n = A049039 (n + 1)

end A049039

/-! ## A049039.P5763211080382413479

`A286809(n+1)-2`
-/

namespace A049039.P5763211080382413479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286809 (n + 1) - 2

end

end A049039.P5763211080382413479

namespace A049039

/-- `A286809(n+1)-2` -/
def P5763211080382413479.Spec : Prop :=
  ∀ n, P5763211080382413479.a n = A049039 (n + 1)

end A049039

/-! ## A049039.P7912178470301591035

`∑[A201219(n+1)!]`
-/

namespace A049039.P7912178470301591035
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A201219 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049039.P7912178470301591035

namespace A049039

/-- `∑[A201219(n+1)!]` -/
def P7912178470301591035.Spec : Prop :=
  ∀ n, (P7912178470301591035.a n : ℤ) = A049039 (n + 1)

end A049039

/-! ## A049039.P8225409465580196955

`∑[2-char[A000225(n)]]`
-/

namespace A049039.P8225409465580196955
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049039.P8225409465580196955

namespace A049039

/-- `∑[2-char[A000225(n)]]` -/
def P8225409465580196955.Spec : Prop :=
  ∀ n, P8225409465580196955.a n = A049039 (n + 1)

end A049039

/-!
# A049041: Least k > 0 such that A049042(n) | A003422(k-1).

The programs for A049041, there is no canonical definition to state claims against.
-/

/-! ## A049041.P6678501788206906288

`A013584(A049042(n+1))`
-/

namespace A049041.P6678501788206906288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013584 (A049042 (n + 1)).toNat

end

end A049041.P6678501788206906288

/-! ## A049041.P6432764305421298504

`A013584(p?[A049045(n+1)])`
-/

namespace A049041.P6432764305421298504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049045 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013584 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A049041.P6432764305421298504

/-! ## A049041.P16026978455571776759

`A013584(record[A006530(A049045(n+2))])`
-/

namespace A049041.P16026978455571776759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A049045 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013584 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A049041.P16026978455571776759

/-! ## A049041.P349547075229694839

`A013584(record[A014963(A049045(n+2))])`
-/

namespace A049041.P349547075229694839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A049045 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013584 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A049041.P349547075229694839

/-! ## A049041.P881906334958433466

`A013584(record[A020639(A049045(n+2))])`
-/

namespace A049041.P881906334958433466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A049045 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013584 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A049041.P881906334958433466

/-!
# A049042: Domain of A049041.

The programs for A049042, there is no canonical definition to state claims against.
-/

/-! ## A049042.P17285374463588104945

`p?[A049045(n+1)]`
-/

namespace A049042.P17285374463588104945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049045 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A049042.P17285374463588104945

/-! ## A049042.P5842825423072881467

`record[A006530(A049045(n+2))]`
-/

namespace A049042.P5842825423072881467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A049045 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A049042.P5842825423072881467

/-! ## A049042.P14694860502957118375

`record[A020639(A049045(n+3))]`
-/

namespace A049042.P14694860502957118375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A049045 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A049042.P14694860502957118375

/-! ## A049042.P7437745506572570960

`filter[A049045(n+1), A010051(#)]`
-/

namespace A049042.P7437745506572570960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049045 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A049042.P7437745506572570960

/-! ## A049042.P1218584111060276951

`filter[A049045(n+1), A323153(#)]`
-/

namespace A049042.P1218584111060276951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049045 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323153 (f1 j).toNat = 1) n)

end

end A049042.P1218584111060276951

/-! ## A049042.P11593274914402002283

`filter[A049045(n+1), A327861(#)]`
-/

namespace A049042.P11593274914402002283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049045 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A327861 (f1 j).toNat = 1) n)

end

end A049042.P11593274914402002283

/-! ## A049042.P8756839290923602922

`filter[A049045(n+1), A353817(#)]`
-/

namespace A049042.P8756839290923602922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049045 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353817 (f1 j).toNat = 1) n)

end

end A049042.P8756839290923602922

/-! ## A049042.P253387556589171765

`filter[A049045(n+1), A358751(#)]`
-/

namespace A049042.P253387556589171765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049045 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358751 (f1 j).toNat = 1) n)

end

end A049042.P253387556589171765

/-! ## A049042.P8967800640032064485

`filter[A049045(n+1), A358769(#)]`
-/

namespace A049042.P8967800640032064485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049045 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358769 (f1 j).toNat = 1) n)

end

end A049042.P8967800640032064485

/-! ## A049042.P51329502766185034

`filter[A049045(n+2), A174897(#)]`
-/

namespace A049042.P51329502766185034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049045 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A174897 (f1 j).toNat = 1) n)

end

end A049042.P51329502766185034

/-! ## A049042.P18282267311273546306

`filter[A049045(n+2), A294905(#)]`
-/

namespace A049042.P18282267311273546306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049045 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A294905 (f1 j).toNat = 1) n)

end

end A049042.P18282267311273546306

/-! ## A049042.P3719713089872187727

`filter[A049045(n+2), A323152(#)]`
-/

namespace A049042.P3719713089872187727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049045 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323152 (f1 j).toNat = 1) n)

end

end A049042.P3719713089872187727

/-! ## A049042.P14538552661179077681

`filter[A049045(n+2), A342004(#)]`
-/

namespace A049042.P14538552661179077681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049045 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A342004 (f1 j).toNat = 1) n)

end

end A049042.P14538552661179077681

/-! ## A049042.P10477576270570614471

`filter[A049045(n+2), A351957(#)]`
-/

namespace A049042.P10477576270570614471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049045 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A351957 (f1 j).toNat = 1) n)

end

end A049042.P10477576270570614471

/-! ## A049042.P2034789106577765348

`filter[A049045(n+2), A353787(#)]`
-/

namespace A049042.P2034789106577765348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049045 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353787 (f1 j).toNat = 1) n)

end

end A049042.P2034789106577765348

/-! ## A049042.P12235171346411969526

`filter[A049045(n+2), A369253(#)]`
-/

namespace A049042.P12235171346411969526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049045 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369253 (f1 j).toNat = 1) n)

end

end A049042.P12235171346411969526

/-! ## A049042.P6285607778743211102

`∩[A000040(n+1), A049045(n+1)]`
-/

namespace A049042.P6285607778743211102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049045 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049042.P6285607778743211102

/-! ## A049042.P1224145623488478388

`∩[A045344(n+1), A049045(n+1)]`
-/

namespace A049042.P1224145623488478388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049045 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049042.P1224145623488478388

/-! ## A049042.P238433520753101134

`∩[A049045(n+1), A053813(n+1)]`
-/

namespace A049042.P238433520753101134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049045 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049042.P238433520753101134

/-! ## A049042.P14051607490298972558

`∩[A049045(n+1), A070159(n+1)]`
-/

namespace A049042.P14051607490298972558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049045 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070159 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049042.P14051607490298972558

/-!
# A049043: Primes not in domain of A049041.

The programs for A049043, there is no canonical definition to state claims against.
-/

/-! ## A049043.P4450745135650958117

`p?[A275608(n+1)]`
-/

namespace A049043.P4450745135650958117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275608 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A049043.P4450745135650958117

/-! ## A049043.P2341276130854210227

`record[A006530(A275608(n+2))]`
-/

namespace A049043.P2341276130854210227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A275608 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A049043.P2341276130854210227

/-! ## A049043.P15484094576698388163

`∩[A000040(n+1), A275608(n+1)]`
-/

namespace A049043.P15484094576698388163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275608 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049043.P15484094576698388163

/-! ## A049043.P939225187088308491

`∩[A004139(n+1), A275608(n+1)]`
-/

namespace A049043.P939225187088308491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275608 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049043.P939225187088308491

/-! ## A049043.P13005987989341627972

`∩[A006005(n+1), A275608(n+1)]`
-/

namespace A049043.P13005987989341627972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275608 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049043.P13005987989341627972

/-! ## A049043.P15034431919891133567

`∩[A008578(n+1), A275608(n+1)]`
-/

namespace A049043.P15034431919891133567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275608 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049043.P15034431919891133567

/-! ## A049043.P7183458402599971036

`∩[A045319(n+1), A275608(n+1)]`
-/

namespace A049043.P7183458402599971036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275608 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049043.P7183458402599971036

/-! ## A049043.P17131425794743718910

`∩[A046022(n+1), A275608(n+1)]`
-/

namespace A049043.P17131425794743718910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275608 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049043.P17131425794743718910

/-! ## A049043.P13235141337331176572

`∩[A065091(n+1), A275608(n+1)]`
-/

namespace A049043.P13235141337331176572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275608 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049043.P13235141337331176572

/-! ## A049043.P16213409605021093804

`∩[A065396(n+1), A275608(n+1)]`
-/

namespace A049043.P16213409605021093804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065396 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275608 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049043.P16213409605021093804

/-! ## A049043.P7550798154406474435

`∩[A158611(n+1), A275608(n+1)]`
-/

namespace A049043.P7550798154406474435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275608 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049043.P7550798154406474435

/-! ## A049043.P15653241621480695617

`∩[A175787(n+1), A275608(n+1)]`
-/

namespace A049043.P15653241621480695617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175787 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275608 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049043.P15653241621480695617

/-! ## A049043.P7038252096448954441

`∩[A182986(n+1), A275608(n+1)]`
-/

namespace A049043.P7038252096448954441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275608 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049043.P7038252096448954441

/-! ## A049043.P6636436431775229543

`record[A020639(A275608(A000027(n+1)))]`
-/

namespace A049043.P6636436431775229543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A275608 (A000027 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A049043.P6636436431775229543

/-! ## A049043.P2065077329598703757

`record[A014963(A275608(A324346(n)))]`
-/

namespace A049043.P2065077329598703757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A275608 (A324346 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A049043.P2065077329598703757

/-! ## A049043.P11230955593896163027

`record[A014963(A275608(A324347(n)))]`
-/

namespace A049043.P11230955593896163027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A275608 (A324347 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A049043.P11230955593896163027

/-! ## A049043.P1791728049052766896

`A020639(record[A005069(A275608(n+1))])`
-/

namespace A049043.P1791728049052766896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005069 (A275608 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A049043.P1791728049052766896

/-! ## A049043.P7076370675628708156

`A014963(record[A014963(A275608(n+1))])`
-/

namespace A049043.P7076370675628708156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A275608 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A049043.P7076370675628708156

/-!
# A049044: Least k > 0 such that A049045(n) | A003422(k-1).

The programs for A049044, there is no canonical definition to state claims against.
-/

/-! ## A049044.P8186033919659031906

`A013584(A049045(n+1))`
-/

namespace A049044.P8186033919659031906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013584 (A049045 (n + 1)).toNat

end

end A049044.P8186033919659031906

/-! ## A049044.P9761385950633885102

`A013584(record[lcm(n+1, ceil(A013584(n+1)/(n+1)))])`
-/

namespace A049044.P9761385950633885102
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n + 1 : ℤ) ⌈(A013584 (n + 1) : ℚ) / (n + 1 : ℚ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013584 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A049044.P9761385950633885102

/-! ## A049044.P6921458237682336470

`A013584(eq[char[A275608(n+1)], A000007(n)])`
-/

namespace A049044.P6921458237682336470
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275608 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013584 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n)

end

end A049044.P6921458237682336470

/-! ## A049044.P5507184992610571951

`A013584(eq[char[A275608(n+1)], A000038(n)])`
-/

namespace A049044.P5507184992610571951
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275608 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013584 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n)

end

end A049044.P5507184992610571951

/-! ## A049044.P7799791179340811255

`A013584(eq[char[A275608(n+1)], A077958(n)])`
-/

namespace A049044.P7799791179340811255
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275608 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077958 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013584 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n)

end

end A049044.P7799791179340811255

/-!
# A049045: Domain of A049044.

The programs for A049045, there is no canonical definition to state claims against.
-/

/-! ## A049045.P4347541393503020262

`record[lcm(n+1, ceil(A013584(n+1)/(n+1)))]`
-/

namespace A049045.P4347541393503020262
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n + 1 : ℤ) ⌈(A013584 (n + 1) : ℚ) / (n + 1 : ℚ)⌉

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A049045.P4347541393503020262

/-! ## A049045.P188495143881856772

`eq[char[A275608(n+1)], A000007(n)]`
-/

namespace A049045.P188495143881856772
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275608 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A049045.P188495143881856772

/-! ## A049045.P1344067365592203689

`eq[char[A275608(n+1)], A000038(n)]`
-/

namespace A049045.P1344067365592203689
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275608 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A049045.P1344067365592203689

/-! ## A049045.P3736467340557335678

`lt[A000120(n), A013584(n+1)]+1`
-/

namespace A049045.P3736467340557335678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013584 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A049045.P3736467340557335678

/-! ## A049045.P7591159744335557167

`eq[char[A275608(n+1)], A077958(n)]`
-/

namespace A049045.P7591159744335557167
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275608 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077958 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A049045.P7591159744335557167

/-! ## A049045.P17198222941747917778

`record[A125746(n+1)%A048477(A013584(n+1))]`
-/

namespace A049045.P17198222941747917778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A125746 (n + 1)) (A048477 (A013584 (n + 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A049045.P17198222941747917778

/-!
# A049046: Number of k >= 1 with k! == 1 (mod n).

The programs for A049046, there is no canonical definition to state claims against.
-/

/-! ## A049046.P12123798975753111137

`gcd(∑[A338247(n)], A346001(n+1))`
-/

namespace A049046.P12123798975753111137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338247 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (∑ j ∈ Finset.range (n + 1), f1 j) (A346001 (n + 1))

end

end A049046.P12123798975753111137

/-! ## A049046.P14390448228915619873

`A308361(or(1, A020639(n+1)))`
-/

namespace A049046.P14390448228915619873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308361 (Int.lor 1 (A020639 (n + 1))).toNat

end

end A049046.P14390448228915619873

/-! ## A049046.P10385647860172946634

`gcd(n, A328928(A000071(n+1)))`
-/

namespace A049046.P10385647860172946634
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A328928 (A000071 (n + 1)).toNat)

end

end A049046.P10385647860172946634

/-! ## A049046.P976812731737811272

`∑{e}[∏{p}[A107429(A020639(n+1)+1), #], #]`
-/

namespace A049046.P976812731737811272
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107429 (A020639 (n + 1) + 1).toNat

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p

end

end A049046.P976812731737811272

/-!
# A049047: Number of distinct factorial numbers congruent to 1 (mod prime(n)).

The programs for A049047, there is no canonical definition to state claims against.
-/

/-! ## A049047.P1394010692610655139

`A049046(p?[xor(1, n)])`
-/

namespace A049047.P1394010692610655139
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049046 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A049047.P1394010692610655139

/-! ## A049047.P1155222306985262136

`A049046(Δ[A007504(n)])`
-/

namespace A049047.P1155222306985262136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049046 (f1 (n + 1) - f1 n).toNat

end

end A049047.P1155222306985262136

/-! ## A049047.P988208423977438793

`A049046(A000040(n+1))`
-/

namespace A049047.P988208423977438793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049046 (A000040 (n + 1)).toNat

end

end A049047.P988208423977438793

/-! ## A049047.P12694279457130739687

`A049046(A008578(n+2))`
-/

namespace A049047.P12694279457130739687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049046 (A008578 (n + 2)).toNat

end

end A049047.P12694279457130739687

/-! ## A049047.P11909487479652908775

`A049046(A175787(n+2))`
-/

namespace A049047.P11909487479652908775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049046 (A175787 (n + 2)).toNat

end

end A049047.P11909487479652908775

/-! ## A049047.P668247771400815381

`A049046(A182986(n+2))`
-/

namespace A049047.P668247771400815381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049046 (A182986 (n + 2)).toNat

end

end A049047.P668247771400815381

/-! ## A049047.P4348659638244175877

`A049046(record[A006530(n+2)])`
-/

namespace A049047.P4348659638244175877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049046 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A049047.P4348659638244175877

/-! ## A049047.P12049112084348825658

`A049046(record[A020639(n+2)])`
-/

namespace A049047.P12049112084348825658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049046 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A049047.P12049112084348825658

/-! ## A049047.P7369844523474930836

`A049046(ceil(sqrt(A049001(n+1))))`
-/

namespace A049047.P7369844523474930836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049046 ⌈Real.sqrt (A049001 (n + 1) : ℝ)⌉.toNat

end

end A049047.P7369844523474930836

/-! ## A049047.P4597563423339983623

`A049046(sqrt(A049001(n+1)+2))`
-/

namespace A049047.P4597563423339983623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049046 (SequenceMachineLib.roundAway (Real.sqrt (A049001 (n + 1) + 2 : ℝ))).toNat

end

end A049047.P4597563423339983623

/-! ## A049047.P16260413894336596053

`A049046(p?[n*A049046(n+1)])`
-/

namespace A049047.P16260413894336596053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A049046 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049046 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A049047.P16260413894336596053

/-! ## A049047.P4438621673020978156

`A049046(A007504(n+1)-A007504(n))`
-/

namespace A049047.P4438621673020978156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049046 (A007504 (n + 1) - A007504 n).toNat

end

end A049047.P4438621673020978156

/-! ## A049047.P17699595816471004357

`A049046(record[A051698(n)])`
-/

namespace A049047.P17699595816471004357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051698 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049046 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A049047.P17699595816471004357

/-! ## A049047.P17149382873069981911

`A049046(eq[1, A003415(n)])`
-/

namespace A049047.P17149382873069981911
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049046 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A049047.P17149382873069981911

/-! ## A049047.P1171857942503378501

`A049046(record[A039649(n+1)])`
-/

namespace A049047.P1171857942503378501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039649 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049046 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A049047.P1171857942503378501

/-! ## A049047.P8622743411265257061

`A049046(record[A014963(n+2)])`
-/

namespace A049047.P8622743411265257061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049046 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A049047.P8622743411265257061

/-!
# A049050: Least p with exactly n distinct factorial numbers == 1 (mod p).

The programs for A049050, there is no canonical definition to state claims against.
-/

/-! ## A049050.P13272876822256386380

`A006530(A316313(n+1)+A082872(n+1))`
-/

namespace A049050.P13272876822256386380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A316313 (n + 1) + A082872 (n + 1)).toNat

end

end A049050.P13272876822256386380

/-! ## A049050.P13221669680534021202

`A370108(A004120(n+2))+A031368(n+1)`
-/

namespace A049050.P13221669680534021202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370108 (A004120 (n + 2)).toNat + A031368 (n + 1)

end

end A049050.P13221669680534021202

/-!
# A049051: Numbers k such that k through k+4 all have the same number of divisors.

The programs for A049051, there is no canonical definition to state claims against.
-/

/-! ## A049051.P10340185861041516778

`∩[A006601(n+1)-1, A006601(n+1)]`
-/

namespace A049051.P10340185861041516778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006601 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006601 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049051.P10340185861041516778

/-! ## A049051.P518572596556108673

`A006601(eq[1, A006601(n+2)-A006601(n+1)]+1)`
-/

namespace A049051.P518572596556108673
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006601 (n + 2) - A006601 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006601 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A049051.P518572596556108673

/-! ## A049051.P13511180037150517689

`∩[A039665(4*n+1)-1, A039665(4*n+1)]`
-/

namespace A049051.P13511180037150517689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039665 (4 * n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039665 (4 * n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049051.P13511180037150517689

/-! ## A049051.P12768542821529078621

`∩[A171666(n+1)-2, A171666(n+1)]`
-/

namespace A049051.P12768542821529078621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171666 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171666 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049051.P12768542821529078621

/-! ## A049051.P8076226736154296287

`∩[A005238(n+1)-2, A005238(n+1)]`
-/

namespace A049051.P8076226736154296287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005238 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005238 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049051.P8076226736154296287

/-!
# A049052: Numbers k such that k through k+5 all have the same number of divisors.

The programs for A049052, there is no canonical definition to state claims against.
-/

/-! ## A049052.P3693387850240184559

`∩[A049051(n+1)-1, A049051(n+1)]`
-/

namespace A049052.P3693387850240184559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049051 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049051 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049052.P3693387850240184559

/-! ## A049052.P14981184182210346195

`∩[A006601(n+1)-2, A006601(n+1)]`
-/

namespace A049052.P14981184182210346195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006601 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006601 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049052.P14981184182210346195

/-! ## A049052.P150546967093817595

`∩[A039665(4*n+1)-2, A039665(4*n+1)]`
-/

namespace A049052.P150546967093817595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039665 (4 * n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039665 (4 * n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049052.P150546967093817595

/-!
# A049053: Numbers k such that k through k+6 all have the same number of divisors.

The programs for A049053, there is no canonical definition to state claims against.
-/

/-! ## A049053.P4527066234416890189

`A049052(lt[Δ[A049052(n+1)], 2]+1)`
-/

namespace A049053.P4527066234416890189
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049052 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049052 (SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n + 1)

end

end A049053.P4527066234416890189

/-! ## A049053.P3288148780302108413

`record[A049052(n+4)/Δ[A049052(n+4)]]`
-/

namespace A049053.P3288148780302108413
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049052 (n + 4)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049052 (n + 4) : ℚ) / (f2 (n + 1) - f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A049053.P3288148780302108413

/-! ## A049053.P11846220133437588488

`∩[A049051(n+1)-2, A049051(n+1)]`
-/

namespace A049053.P11846220133437588488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049051 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049051 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049053.P11846220133437588488

/-!
# A049054: Numbers k such that 10^k + 3 is prime.

The programs for A049054, there is no canonical definition to state claims against.
-/

/-! ## A049054.P13854239243534366554

`A102006(n+1)+1`
-/

namespace A049054.P13854239243534366554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102006 (n + 1) + 1

end

end A049054.P13854239243534366554

/-! ## A049054.P1008302218832679104

`A199343(A102006(n+1))`
-/

namespace A049054.P1008302218832679104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199343 (A102006 (n + 1)).toNat

end

end A049054.P1008302218832679104

/-! ## A049054.P17913620907485691228

`eq[(2-A033873(n))², A057427(n)]`
-/

namespace A049054.P17913620907485691228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A033873 n) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A049054.P17913620907485691228

/-! ## A049054.P12529766981066864519

`eq[3, A127003(n)]`
-/

namespace A049054.P12529766981066864519
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127003 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A049054.P12529766981066864519

/-! ## A049054.P3080045566677433469

`eq[A260880(n), A290858(n)]+1`
-/

namespace A049054.P3080045566677433469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260880 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290858 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A049054.P3080045566677433469

/-!
# A049055: Triangle read by rows, giving T(n,k) = number of k-member minimal ordered covers of a labeled n-set (1 <= k <= n).

The programs for A049055, there is no canonical definition to state claims against.
-/

/-! ## A049055.P5896502156317737254

`A035348(n+1)*A166350(n+1)`
-/

namespace A049055.P5896502156317737254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035348 (n + 1) * A166350 (n + 1)

end

end A049055.P5896502156317737254

/-! ## A049055.P14431086857423452805

`A002260(n+1)!*A035348(n+1)`
-/

namespace A049055.P14431086857423452805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A002260 (n + 1)).toNat : ℤ) * A035348 (n + 1)

end

end A049055.P14431086857423452805

/-! ## A049055.P12602822824667474564

`(A002262(n)+1)!*A035348(n+1)`
-/

namespace A049055.P12602822824667474564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A002262 n + 1).toNat : ℤ) * A035348 (n + 1)

end

end A049055.P12602822824667474564

/-! ## A049055.P9024791678137494068

`A035348(n+1)*A066667(A112367(n))`
-/

namespace A049055.P9024791678137494068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035348 (n + 1) * A066667 (A112367 n).toNat

end

end A049055.P9024791678137494068

/-! ## A049055.P4284028040545597685

`A092543(A056011(n+1))!*A035348(n+1)`
-/

namespace A049055.P4284028040545597685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A092543 (A056011 (n + 1)).toNat).toNat : ℤ) * A035348 (n + 1)

end

end A049055.P4284028040545597685

/-! ## A049055.P11220872026130784913

`A035348(n+1)/A008275(n+1)*A048594(n+1)`
-/

namespace A049055.P11220872026130784913
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A035348 (n + 1) : ℚ) / (A008275 (n + 1) : ℚ) * (A048594 (n + 1) : ℚ)

end

end A049055.P11220872026130784913

/-! ## A049055.P11201471853453829704

`A035348(n+1)*A273666(A059268(n))`
-/

namespace A049055.P11201471853453829704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035348 (n + 1) * A273666 (A059268 n).toNat

end

end A049055.P11201471853453829704

/-!
# A049056: Number of minimal ordered covers of a labeled n-set.

The programs for A049056, there is no canonical definition to state claims against.
-/

/-! ## A049056.P16696718258466240487

`A219764(A006125(n))+A054394(n)`
-/

namespace A049056.P16696718258466240487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219764 (A006125 n).toNat + A054394 n

end

end A049056.P16696718258466240487

/-! ## A049056.P15560715680983806937

`A378326(n)-A173066(A261232(n))`
-/

namespace A049056.P15560715680983806937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378326 n - A173066 (A261232 n).toNat

end

end A049056.P15560715680983806937

/-!
# A049057: First element r of (-1)sigma sociable triple (r,s,t): s=(-1)sigma(r), t=(-1)sigma(s), r=(-1)sigma(t), where if x=Product p(i)^r(i), then (-1)sigma(x)=Product(-1+(Sum p(i)^s(i), s(i)=1 to r(i))).

The programs for A049057, there is no canonical definition to state claims against.
-/

/-! ## A049057.P6537224017357489793

`∑[lcm(4, A106500(A005773(n))+3)]`
-/

namespace A049057.P6537224017357489793
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 4 (A106500 (A005773 n).toNat + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049057.P6537224017357489793

/-!
# A049058: Second element s of (-1)sigma sociable triple (r,s,t): s=(-1)sigma(r), t=(-1)sigma(s), r=(-1)sigma(t), where if x=Product p(i)^r(i), then (-1)sigma(x)=Product(-1+(Sum p(i)^s(i), s(i)=1 to r(i))).

The programs for A049058, there is no canonical definition to state claims against.
-/

/-! ## A049058.P12556288013187015438

`A049057(A139582(n)+comp[∑[n-1]])`
-/

namespace A049058.P12556288013187015438
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049057 (A139582 n + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)).toNat

end

end A049058.P12556288013187015438

/-! ## A049058.P9134404839400166163

`A049060(A049059(n))`
-/

namespace A049058.P9134404839400166163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049060 (A049059 n).toNat

end

end A049058.P9134404839400166163

/-!
# A049059: Third element t of (-1)sigma sociable triple (r,s,t): s=(-1)sigma(r), t=(-1)sigma(s), r=(-1)sigma(t), where if x=Product p(i)^r(i), then (-1)sigma(x)=Product(-1+(Sum p(i)^s(i), s(i)=1 to r(i))).

The programs for A049059, there is no canonical definition to state claims against.
-/

/-! ## A049059.P14923359804145390271

`A049060(A049060(A049058(n)))`
-/

namespace A049059.P14923359804145390271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049060 (A049060 (A049058 n).toNat).toNat

end

end A049059.P14923359804145390271

/-!
# A049060: a(n) = (-1)^omega(n)*Sum_{d|n} d*(-1)^omega(d), where omega(n) = A001221(n) is number of distinct primes dividing n.

The programs for A049060, the canonical program `A049060.P1654833501448831335` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A049060 has offset 1).

The definition of A049060 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A049060.P1654833501448831335

`abs(A327669(n+1)-A327670(n+1))`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A049060

/-- `abs(A327669(n+1)-A327670(n+1))` -/
def P1654833501448831335.Spec : Prop :=
  ∀ n, P1654833501448831335.a n = A049060 (n + 1)

theorem P1654833501448831335.correct : P1654833501448831335.Spec := by
  intro n
  simp only [A049060, Nat.add_sub_cancel]

end A049060

/-! ## A049060.P13906402616682221886

`abs(∑{d}[n+1, #*A001221(#)%2]-A327670(n+1))`
-/

namespace A049060.P13906402616682221886
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * Int.tmod (A001221 d) 2 - A327670 (n + 1)|

end

end A049060.P13906402616682221886

namespace A049060

/-- `abs(∑{d}[n+1, #*A001221(#)%2]-A327670(n+1))` -/
def P13906402616682221886.Spec : Prop :=
  ∀ n, P13906402616682221886.a n = A049060 (n + 1)

end A049060

/-! ## A049060.P5289392531538298276

`(A327670(n+1)-A327669(n+1))*A076479(n+1)`
-/

namespace A049060.P5289392531538298276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A327670 (n + 1) - A327669 (n + 1)) * A076479 (n + 1)

end

end A049060.P5289392531538298276

namespace A049060

/-- `(A327670(n+1)-A327669(n+1))*A076479(n+1)` -/
def P5289392531538298276.Spec : Prop :=
  ∀ n, P5289392531538298276.a n = A049060 (n + 1)

end A049060

/-! ## A049060.P11155077456833356714

`abs(A088580(n+1)-A005408(A327670(n+1)))`
-/

namespace A049060.P11155077456833356714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A088580 (n + 1) - A005408 (A327670 (n + 1)).toNat|

end

end A049060.P11155077456833356714

namespace A049060

/-- `abs(A088580(n+1)-A005408(A327670(n+1)))` -/
def P11155077456833356714.Spec : Prop :=
  ∀ n, P11155077456833356714.a n = A049060 (n + 1)

end A049060

/-! ## A049060.P7048391511243644230

`abs(A088580(n+1)-A005408(A327669(n+1)))`
-/

namespace A049060.P7048391511243644230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A088580 (n + 1) - A005408 (A327669 (n + 1)).toNat|

end

end A049060.P7048391511243644230

namespace A049060

/-- `abs(A088580(n+1)-A005408(A327669(n+1)))` -/
def P7048391511243644230.Spec : Prop :=
  ∀ n, P7048391511243644230.a n = A049060 (n + 1)

end A049060

/-! ## A049060.P6443885661401016547

`A126690((n+1)*∏{p}[n+1, #])`
-/

namespace A049060.P6443885661401016547
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126690 ((n + 1) * (∏ p ∈ Nat.primeFactors (f1 n), p))

end

end A049060.P6443885661401016547

namespace A049060

/-- `A126690((n+1)*∏{p}[n+1, #])` -/
def P6443885661401016547.Spec : Prop :=
  ∀ n, P6443885661401016547.a n = A049060 (n + 1)

end A049060

/-! ## A049060.P11493599578561660713

`A126690(A064549(n+1))`
-/

namespace A049060.P11493599578561660713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126690 (A064549 (n + 1)).toNat

end

end A049060.P11493599578561660713

namespace A049060

/-- `A126690(A064549(n+1))` -/
def P11493599578561660713.Spec : Prop :=
  ∀ n, P11493599578561660713.a n = A049060 (n + 1)

end A049060

/-! ## A049060.P5910110165016978785

`A126690(A078310(n+1)-1)`
-/

namespace A049060.P5910110165016978785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126690 (A078310 (n + 1) - 1).toNat

end

end A049060.P5910110165016978785

namespace A049060

/-- `A126690(A078310(n+1)-1)` -/
def P5910110165016978785.Spec : Prop :=
  ∀ n, P5910110165016978785.a n = A049060 (n + 1)

end A049060

/-! ## A049060.P2901353713462493957

`A126690((n+1)*A007947(n+1))`
-/

namespace A049060.P2901353713462493957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126690 ((n + 1 : ℤ) * A007947 (n + 1)).toNat

end

end A049060.P2901353713462493957

namespace A049060

/-- `A126690((n+1)*A007947(n+1))` -/
def P2901353713462493957.Spec : Prop :=
  ∀ n, P2901353713462493957.a n = A049060 (n + 1)

end A049060

/-! ## A049060.P15965486274298685113

`A126690((n+1)*A015053(n+1))`
-/

namespace A049060.P15965486274298685113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126690 ((n + 1 : ℤ) * A015053 (n + 1)).toNat

end

end A049060.P15965486274298685113

namespace A049060

/-- `A126690((n+1)*A015053(n+1))` -/
def P15965486274298685113.Spec : Prop :=
  ∀ n, P15965486274298685113.a n = A049060 (n + 1)

end A049060

/-! ## A049060.P15459722097987478478

`A126690((n+1)²/A003557(n+1))`
-/

namespace A049060.P15459722097987478478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126690 (SequenceMachineLib.roundAway (((n + 1) ^ 2 : ℚ) / (A003557 (n + 1) : ℚ))).toNat

end

end A049060.P15459722097987478478

namespace A049060

/-- `A126690((n+1)²/A003557(n+1))` -/
def P15459722097987478478.Spec : Prop :=
  ∀ n, P15459722097987478478.a n = A049060 (n + 1)

end A049060

/-! ## A049060.P14329474808216129627

`A126690(A003557(n+1)*A078615(n+1))`
-/

namespace A049060.P14329474808216129627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126690 (A003557 (n + 1) * A078615 (n + 1)).toNat

end

end A049060.P14329474808216129627

namespace A049060

/-- `A126690(A003557(n+1)*A078615(n+1))` -/
def P14329474808216129627.Spec : Prop :=
  ∀ n, P14329474808216129627.a n = A049060 (n + 1)

end A049060

/-! ## A049060.P1213082749437368244

`A126690(A066990(n+1)*A350390(n+1))`
-/

namespace A049060.P1213082749437368244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126690 (A066990 (n + 1) * A350390 (n + 1)).toNat

end

end A049060.P1213082749437368244

namespace A049060

/-- `A126690(A066990(n+1)*A350390(n+1))` -/
def P1213082749437368244.Spec : Prop :=
  ∀ n, P1213082749437368244.a n = A049060 (n + 1)

end A049060

/-!
# A049061: Triangle a(n,k) (1<=k<=n) of "signed Eulerian numbers" read by rows.

The programs for A049061, there is no canonical definition to state claims against.
-/

/-! ## A049061.P6641184705968862317

`A128612(A038722(n+1))-A128613(A038722(n+1))`
-/

namespace A049061.P6641184705968862317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128612 (A038722 (n + 1)).toNat - A128613 (A038722 (n + 1)).toNat

end

end A049061.P6641184705968862317

/-! ## A049061.P2600417408052701197

`A231599(A386581(n+2)+A231599(3*n+2))`
-/

namespace A049061.P2600417408052701197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231599 (A386581 (n + 2) + A231599 (3 * n + 2)).toNat

end

end A049061.P2600417408052701197

/-!
# A049062: Composite n coprime to 5 such that Fibonacci(n) == Legendre(n,5) (mod n).

The programs for A049062, there is no canonical definition to state claims against.
-/

/-! ## A049062.P7950841215066541638

`∩[A090820(n+1), A279072(n+1)]`
-/

namespace A049062.P7950841215066541638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090820 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279072 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049062.P7950841215066541638

/-!
# A049064: Describe the previous term in binary (method A - initial term is 0).

The programs for A049064, there is no canonical definition to state claims against.
-/

/-! ## A049064.P8098296632232114315

`A001391(n-a(n-1)%2)` with `a(0)=0`
-/

namespace A049064.P8098296632232114315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A001391 ((n : ℤ) - Int.tmod (a (n - 1)) 2).toNat

end

end A049064.P8098296632232114315

/-! ## A049064.P2137933637207998016

`A001391(A028310(n))*A057427(n)`
-/

namespace A049064.P2137933637207998016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001391 (A028310 n).toNat * A057427 n

end

end A049064.P2137933637207998016

/-! ## A049064.P3607161861614167344

`lcm(A001391(A028310(n)), A139355(n))`
-/

namespace A049064.P3607161861614167344
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A001391 (A028310 n).toNat) (A139355 n)

end

end A049064.P3607161861614167344

/-! ## A049064.P14650441198340623297

`A001391(A028310(n))*A004216(n+9)`
-/

namespace A049064.P14650441198340623297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001391 (A028310 n).toNat * A004216 (n + 9)

end

end A049064.P14650441198340623297

/-! ## A049064.P12540203637112265503

`A001221(A000244(n))*A001391(A028310(n))`
-/

namespace A049064.P12540203637112265503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A000244 n).toNat * A001391 (A028310 n).toNat

end

end A049064.P12540203637112265503

/-!
# A049065: Record primes reached in A048986.

The programs for A049065, there is no canonical definition to state claims against.
-/

/-! ## A049065.P9132191162103377791

`record[A048986(n+2)]`
-/

namespace A049065.P9132191162103377791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048986 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A049065.P9132191162103377791

/-!
# A049066: Mean prime gaps associated with A049036.

The programs for A049066, there is no canonical definition to state claims against.
-/

/-! ## A049066.P5372718526400605625

`A228543(n+1)-1`
-/

namespace A049066.P5372718526400605625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228543 (n + 1) - 1

end

end A049066.P5372718526400605625

/-! ## A049066.P7978741667238702568

`(A049038(n+1)-A049036(n+1)-1)/(A049036(n+1)-1)`
-/

namespace A049066.P7978741667238702568
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049038 (n + 1) - A049036 (n + 1) - 1 : ℚ) / (A049036 (n + 1) - 1 : ℚ)

end

end A049066.P7978741667238702568

/-! ## A049066.P8969934061318205839

`xor(char[A002487(n)], A228543(n+1))`
-/

namespace A049066.P8969934061318205839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A228543 (n + 1))

end

end A049066.P8969934061318205839

/-! ## A049066.P9326372240893086693

`xor(char[A280494(n+1)], A228543(n+1))`
-/

namespace A049066.P9326372240893086693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280494 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A228543 (n + 1))

end

end A049066.P9326372240893086693

/-! ## A049066.P5661658508789292004

`xor(char[A280499(n+1)], A228543(n+1))`
-/

namespace A049066.P5661658508789292004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280499 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A228543 (n + 1))

end

end A049066.P5661658508789292004

/-!
# A049068: Complement of quarter-squares (A002620).

The programs for A049068, the canonical program `A049068.P6609318107156725997` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A049068 has offset 1).

The definition of A049068 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A049068.P14488870921524629621

`n+1+ceil(2*sqrt(n+1))`
-/

namespace A049068.P14488870921524629621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + ⌈2 * Real.sqrt (n + 1 : ℝ)⌉

end

end A049068.P14488870921524629621

namespace A049068

/-- `n+1+ceil(2*sqrt(n+1))` -/
def P14488870921524629621.Spec : Prop :=
  ∀ n, P14488870921524629621.a n = A049068 (n + 1)

end A049068

/-! ## A049068.P6609318107156725997

`A000037(A000037(n+1))`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A049068

/-- `A000037(A000037(n+1))` -/
def P6609318107156725997.Spec : Prop :=
  ∀ n, P6609318107156725997.a n = A049068 (n + 1)

theorem P6609318107156725997.correct : P6609318107156725997.Spec := by
  intro n
  simp only [A049068, Nat.add_sub_cancel]

end A049068

/-! ## A049068.P11448552622999767311

`lt[0, n%floor(sqrt(n+1))]`
-/

namespace A049068.P11448552622999767311
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % Nat.sqrt (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A049068.P11448552622999767311

namespace A049068

/-- `lt[0, n%floor(sqrt(n+1))]` -/
def P11448552622999767311.Spec : Prop :=
  ∀ n, (P11448552622999767311.a n : ℤ) = A049068 (n + 1)

end A049068

/-! ## A049068.P17370548020832522230

`-xor(comp[n²]+floor(sqrt(n)), -1)`
-/

namespace A049068.P17370548020832522230
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + Nat.sqrt n : ℤ) (-1)

end

end A049068.P17370548020832522230

namespace A049068

/-- `-xor(comp[n²]+floor(sqrt(n)), -1)` -/
def P17370548020832522230.Spec : Prop :=
  ∀ n, P17370548020832522230.a n = A049068 (n + 1)

end A049068

/-! ## A049068.P18364876735531607286

`lcm((-1)^n, comp[floor(n/3)*ceil(n/3)])`
-/

namespace A049068.P18364876735531607286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 3⌋ * ⌈(n : ℚ) / 3⌉

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A049068.P18364876735531607286

namespace A049068

/-- `lcm((-1)^n, comp[floor(n/3)*ceil(n/3)])` -/
def P18364876735531607286.Spec : Prop :=
  ∀ n, (P18364876735531607286.a n : ℤ) = A049068 (n + 1)

end A049068

/-! ## A049068.P1392152734484406549

`lt[1, A132460(n)²]`
-/

namespace A049068.P1392152734484406549
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132460 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A049068.P1392152734484406549

namespace A049068

/-- `lt[1, A132460(n)²]` -/
def P1392152734484406549.Spec : Prop :=
  ∀ n, (P1392152734484406549.a n : ℤ) = A049068 (n + 1)

end A049068

/-! ## A049068.P5155546181878293289

`lt[1, A014462(n+1)]`
-/

namespace A049068.P5155546181878293289
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014462 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A049068.P5155546181878293289

namespace A049068

/-- `lt[1, A014462(n+1)]` -/
def P5155546181878293289.Spec : Prop :=
  ∀ n, (P5155546181878293289.a n : ℤ) = A049068 (n + 1)

end A049068

/-!
# A049069: Array T read by antidiagonals: T(k,n) = k*n*2^(n-1) + 1, n >= 0, k >= 1.

The programs for A049069, the canonical program `A049069.P14482626575459239838` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A049069 has offset 0).

The definition of A049069 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A049069.P14482626575459239838

`A049513(n)+A001787(A002262(n))`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A049069

/-- `A049513(n)+A001787(A002262(n))` -/
def P14482626575459239838.Spec : Prop :=
  ∀ n, P14482626575459239838.a n = A049069 n

theorem P14482626575459239838.correct : P14482626575459239838.Spec := by
  intro n
  simp only [A049069]

end A049069

/-! ## A049069.P5489450053611330805

`A097067(A002260(n+1))+A049513(n)`
-/

namespace A049069.P5489450053611330805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097067 (A002260 (n + 1)).toNat + A049513 n

end

end A049069.P5489450053611330805

namespace A049069

/-- `A097067(A002260(n+1))+A049513(n)` -/
def P5489450053611330805.Spec : Prop :=
  ∀ n, P5489450053611330805.a n = A049069 n

end A049069

/-! ## A049069.P13917972393791823913

`A048472(A061579(n))`
-/

namespace A049069.P13917972393791823913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048472 (A061579 n).toNat

end

end A049069.P13917972393791823913

namespace A049069

/-- `A048472(A061579(n))` -/
def P13917972393791823913.Spec : Prop :=
  ∀ n, P13917972393791823913.a n = A049069 n

end A049069

/-! ## A049069.P5173998902383742726

`A002262(n)*A296612(A061579(n))+1`
-/

namespace A049069.P5173998902383742726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n * A296612 (A061579 n).toNat + 1

end

end A049069.P5173998902383742726

namespace A049069

/-- `A002262(n)*A296612(A061579(n))+1` -/
def P5173998902383742726.Spec : Prop :=
  ∀ n, P5173998902383742726.a n = A049069 n

end A049069

/-! ## A049069.P17626242433618376451

`A049513(A007401(n+1))`
-/

namespace A049069.P17626242433618376451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049513 (A007401 (n + 1)).toNat

end

end A049069.P17626242433618376451

namespace A049069

/-- `A049513(A007401(n+1))` -/
def P17626242433618376451.Spec : Prop :=
  ∀ n, P17626242433618376451.a n = A049069 n

end A049069

/-! ## A049069.P4189271338865765019

`A049513(A000037(2*n+1)-(n+1))`
-/

namespace A049069.P4189271338865765019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049513 (A000037 (2 * n + 1) - (n + 1 : ℤ)).toNat

end

end A049069.P4189271338865765019

namespace A049069

/-- `A049513(A000037(2*n+1)-(n+1))` -/
def P4189271338865765019.Spec : Prop :=
  ∀ n, P4189271338865765019.a n = A049069 n

end A049069

/-! ## A049069.P16133411062149979386

`A049513(n)+A003415(A059268(n))`
-/

namespace A049069.P16133411062149979386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049513 n + A003415 (A059268 n).toNat

end

end A049069.P16133411062149979386

namespace A049069

/-- `A049513(n)+A003415(A059268(n))` -/
def P16133411062149979386.Spec : Prop :=
  ∀ n, P16133411062149979386.a n = A049069 n

end A049069

/-! ## A049069.P6247197600863823948

`A328399(A002262(n)*A130128(n+1))`
-/

namespace A049069.P6247197600863823948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328399 (A002262 n * A130128 (n + 1)).toNat

end

end A049069.P6247197600863823948

namespace A049069

/-- `A328399(A002262(n)*A130128(n+1))` -/
def P6247197600863823948.Spec : Prop :=
  ∀ n, P6247197600863823948.a n = A049069 n

end A049069

/-! ## A049069.P13399412667363467009

`A008619(A002262(n)*A130128(n+1))`
-/

namespace A049069.P13399412667363467009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A002262 n * A130128 (n + 1)).toNat

end

end A049069.P13399412667363467009

namespace A049069

/-- `A008619(A002262(n)*A130128(n+1))` -/
def P13399412667363467009.Spec : Prop :=
  ∀ n, P13399412667363467009.a n = A049069 n

end A049069

/-! ## A049069.P11520287211408633208

`A052938(A002262(n)*A130128(n+1))`
-/

namespace A049069.P11520287211408633208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052938 (A002262 n * A130128 (n + 1)).toNat

end

end A049069.P11520287211408633208

namespace A049069

/-- `A052938(A002262(n)*A130128(n+1))` -/
def P11520287211408633208.Spec : Prop :=
  ∀ n, P11520287211408633208.a n = A049069 n

end A049069

/-!
# A049070: a(n) = (n+1)^2*binomial(2*n+2,n-1)/2.

The programs for A049070, the canonical program `A049070.P12552011053307575598` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A049070 has offset 0).

The definition of A049070 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 161 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A049070.P12552011053307575598

`(n+1)*(A100071(2*n+1)-A002054(n+1))`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A049070

/-- `(n+1)*(A100071(2*n+1)-A002054(n+1))` -/
def P12552011053307575598.Spec : Prop :=
  ∀ n, P12552011053307575598.a n = A049070 n

theorem P12552011053307575598.correct : P12552011053307575598.Spec := by
  intro n
  simp only [A049070]

end A049070

/-! ## A049070.P5694924670257059187

`(n+1)*A086810(∑[n+3])`
-/

namespace A049070.P5694924670257059187
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A086810 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A049070.P5694924670257059187

namespace A049070

/-- `(n+1)*A086810(∑[n+3])` -/
def P5694924670257059187.Spec : Prop :=
  ∀ n, P5694924670257059187.a n = A049070 n

end A049070

/-! ## A049070.P4448585088155375687

`A087156(n+1)*A286784(∑[n+1]+2)`
-/

namespace A049070.P4448585088155375687
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087156 (n + 1) * A286784 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A049070.P4448585088155375687

namespace A049070

/-- `A087156(n+1)*A286784(∑[n+1]+2)` -/
def P4448585088155375687.Spec : Prop :=
  ∀ n, P4448585088155375687.a n = A049070 n

end A049070

/-! ## A049070.P1681717285280945673

`(n+1)*A256117(∑[n+2]-1)`
-/

namespace A049070.P1681717285280945673
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A256117 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A049070.P1681717285280945673

namespace A049070

/-- `(n+1)*A256117(∑[n+2]-1)` -/
def P1681717285280945673.Spec : Prop :=
  ∀ n, P1681717285280945673.a n = A049070 n

end A049070

/-! ## A049070.P9869565755324165156

`record[A132440(n)*A256117(n)]`
-/

namespace A049070.P9869565755324165156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132440 n * A256117 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A049070.P9869565755324165156

namespace A049070

/-- `record[A132440(n)*A256117(n)]` -/
def P9869565755324165156.Spec : Prop :=
  ∀ n, P9869565755324165156.a n = A049070 n

end A049070

/-!
# A049071: Expansion of x*(3-2*x)/(1-x^2).

The programs for A049071, the canonical program `A049071.P5688112245602262272` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A049071 has offset 0).

The definition of A049071 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((3x-2x^2)/(1-x^2))` (program `A049071.P5688112245602262272`, by `A049071.P5688112245602262272.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A049071.P14487230511096431129

`a(n-2)` with `a(0)=0, a(1)=3, a(2)=-2`
-/

namespace A049071.P14487230511096431129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 3, -2] fun n a =>
  a (n - 2)

end

end A049071.P14487230511096431129

namespace A049071

/-- `a(n-2)` -/
def P14487230511096431129.Spec : Prop :=
  ∀ n, P14487230511096431129.a n = A049071 n

end A049071

/-! ## A049071.P5688112245602262272

`ogf((3x-2x^2)/(1-x^2))`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A049071

/-- `ogf((3x-2x^2)/(1-x^2))` -/
def P5688112245602262272.Spec : Prop :=
  ∀ n, P5688112245602262272.a n = A049071 n

theorem P5688112245602262272.correct : P5688112245602262272.Spec := by
  intro n
  simp only [A049071]

end A049071

/-!
# A049072: Expansion of 1/(1 - 3*x + 4*x^2).

The programs for A049072, the canonical program `A049072.P7676391160942780151` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A049072 has offset 0).

The definition of A049072 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-3x+4x^2))` (program `A049072.P7676391160942780151`, by `A049072.P7676391160942780151.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A049072.P7676391160942780151

`ogf(1/(1-3x+4x^2))`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A049072

/-- `ogf(1/(1-3x+4x^2))` -/
def P7676391160942780151.Spec : Prop :=
  ∀ n, P7676391160942780151.a n = A049072 n

theorem P7676391160942780151.correct : P7676391160942780151.Spec := by
  intro n
  simp only [A049072]

end A049072

/-! ## A049072.P4563577458489872887

`3*a(n-1)-4*a(n-2)` with `a(0)=1, a(1)=3`
-/

namespace A049072.P4563577458489872887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  3 * a (n - 1) - 4 * a (n - 2)

end

end A049072.P4563577458489872887

namespace A049072

/-- `3*a(n-1)-4*a(n-2)` -/
def P4563577458489872887.Spec : Prop :=
  ∀ n, P4563577458489872887.a n = A049072 n

end A049072

/-! ## A049072.P7601663278982616664

`∏[3-4/a(n-1)]` with `a(0)=1, a(1)=3`
-/

namespace A049072.P7601663278982616664
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 3] fun n f1 =>
  3 - 4 / f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A049072.P7601663278982616664

namespace A049072

/-- `∏[3-4/a(n-1)]` -/
def P7601663278982616664.Spec : Prop :=
  ∀ n, P7601663278982616664.a n = (A049072 n : ℚ)

end A049072

/-! ## A049072.P11728886390375746056

`a(n-1)+A247560(n)+a(n-1)` with `a(0)=1`
-/

namespace A049072.P11728886390375746056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A247560 n + a (n - 1))

end

end A049072.P11728886390375746056

namespace A049072

/-- `a(n-1)+A247560(n)+a(n-1)` -/
def P11728886390375746056.Spec : Prop :=
  ∀ n, P11728886390375746056.a n = A049072 n

end A049072

/-! ## A049072.P4325453432940639040

`∑[A247563(n)-A247560(n)]`
-/

namespace A049072.P4325453432940639040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247563 n - A247560 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049072.P4325453432940639040

namespace A049072

/-- `∑[A247563(n)-A247560(n)]` -/
def P4325453432940639040.Spec : Prop :=
  ∀ n, P4325453432940639040.a n = A049072 n

end A049072

/-! ## A049072.P9869944275959625252

`A247565(n)-Δ[A247565(n)]`
-/

namespace A049072.P9869944275959625252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247565 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247565 n - (f1 (n + 1) - f1 n)

end

end A049072.P9869944275959625252

namespace A049072

/-- `A247565(n)-Δ[A247565(n)]` -/
def P9869944275959625252.Spec : Prop :=
  ∀ n, P9869944275959625252.a n = A049072 n

end A049072

/-! ## A049072.P1834728835779455749

`A001607(n+1)*A002249(n+1)`
-/

namespace A049072.P1834728835779455749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001607 (n + 1) * A002249 (n + 1)

end

end A049072.P1834728835779455749

namespace A049072

/-- `A001607(n+1)*A002249(n+1)` -/
def P1834728835779455749.Spec : Prop :=
  ∀ n, P1834728835779455749.a n = A049072 n

end A049072

/-! ## A049072.P11305221852555799292

`A247563(n+1)-2*A247560(n+1)`
-/

namespace A049072.P11305221852555799292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247563 (n + 1) - 2 * A247560 (n + 1)

end

end A049072.P11305221852555799292

namespace A049072

/-- `A247563(n+1)-2*A247560(n+1)` -/
def P11305221852555799292.Spec : Prop :=
  ∀ n, P11305221852555799292.a n = A049072 n

end A049072

/-! ## A049072.P2352644081585371620

`∑[A247564(2*n)-A247564(2*n+1)]`
-/

namespace A049072.P2352644081585371620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247564 (2 * n) - A247564 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049072.P2352644081585371620

namespace A049072

/-- `∑[A247564(2*n)-A247564(2*n+1)]` -/
def P2352644081585371620.Spec : Prop :=
  ∀ n, P2352644081585371620.a n = A049072 n

end A049072

/-! ## A049072.P7805477012306027636

`A247487(2*n+1)-Δ[A247487(2*n+1)]`
-/

namespace A049072.P7805477012306027636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247487 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247487 (2 * n + 1) - (f1 (n + 1) - f1 n)

end

end A049072.P7805477012306027636

namespace A049072

/-- `A247487(2*n+1)-Δ[A247487(2*n+1)]` -/
def P7805477012306027636.Spec : Prop :=
  ∀ n, P7805477012306027636.a n = A049072 n

end A049072

/-! ## A049072.P12919426905634363591

`∑[A247560(n)/A000079(n)]*A000079(n)`
-/

namespace A049072.P12919426905634363591
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A247560 n : ℚ) / (A000079 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * (A000079 n : ℚ)

end

end A049072.P12919426905634363591

namespace A049072

/-- `∑[A247560(n)/A000079(n)]*A000079(n)` -/
def P12919426905634363591.Spec : Prop :=
  ∀ n, P12919426905634363591.a n = (A049072 n : ℚ)

end A049072

/-! ## A049072.P16338538529651669631

`A247560(n)+A247560(n)-A247560(n+1)`
-/

namespace A049072.P16338538529651669631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247560 n + (A247560 n - A247560 (n + 1))

end

end A049072.P16338538529651669631

namespace A049072

/-- `A247560(n)+A247560(n)-A247560(n+1)` -/
def P16338538529651669631.Spec : Prop :=
  ∀ n, P16338538529651669631.a n = A049072 n

end A049072

/-! ## A049072.P3329501307897640339

`A247565(n)+A247565(n)-A247565(n+1)`
-/

namespace A049072.P3329501307897640339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247565 n + (A247565 n - A247565 (n + 1))

end

end A049072.P3329501307897640339

namespace A049072

/-- `A247565(n)+A247565(n)-A247565(n+1)` -/
def P3329501307897640339.Spec : Prop :=
  ∀ n, P3329501307897640339.a n = A049072 n

end A049072

/-! ## A049072.P6203266544286586978

`(A089977(n)-A122946(n+1))*A002249(n+1)`
-/

namespace A049072.P6203266544286586978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A089977 n - A122946 (n + 1)) * A002249 (n + 1)

end

end A049072.P6203266544286586978

namespace A049072

/-- `(A089977(n)-A122946(n+1))*A002249(n+1)` -/
def P6203266544286586978.Spec : Prop :=
  ∀ n, P6203266544286586978.a n = A049072 n

end A049072

/-! ## A049072.P5546142457529735037

`(A077912(2*n+1)-A077912(2*n))*A033999(n+1)`
-/

namespace A049072.P5546142457529735037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A077912 (2 * n + 1) - A077912 (2 * n)) * A033999 (n + 1)

end

end A049072.P5546142457529735037

namespace A049072

/-- `(A077912(2*n+1)-A077912(2*n))*A033999(n+1)` -/
def P5546142457529735037.Spec : Prop :=
  ∀ n, P5546142457529735037.a n = A049072 n

end A049072

/-! ## A049072.P656003972075205614

`A200562(2*n)/A247560(n)`
-/

namespace A049072.P656003972075205614
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A200562 (2 * n) : ℚ) / (A247560 n : ℚ)

end

end A049072.P656003972075205614

namespace A049072

/-- `A200562(2*n)/A247560(n)` -/
def P656003972075205614.Spec : Prop :=
  ∀ n, P656003972075205614.a n = (A049072 n : ℚ)

end A049072

/-! ## A049072.P10812114059918706929

`A200562(2*n)/A247564(2*n+1)`
-/

namespace A049072.P10812114059918706929
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A200562 (2 * n) : ℚ) / (A247564 (2 * n + 1) : ℚ)

end

end A049072.P10812114059918706929

namespace A049072

/-- `A200562(2*n)/A247564(2*n+1)` -/
def P10812114059918706929.Spec : Prop :=
  ∀ n, P10812114059918706929.a n = (A049072 n : ℚ)

end A049072

/-!
# A049073: LCM of all divisors of d of n such that d+1 is a prime power.

The programs for A049073, there is no canonical definition to state claims against.
-/

/-! ## A049073.P16112407793390846757

`gcd(n+1, A328341(ceil((n+1)/∏{p}[n+1, (n+1)/#])))`
-/

namespace A049073.P16112407793390846757
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A328341 ⌈(n + 1 : ℚ) / (∏ p ∈ Nat.primeFactors (f1 n), (n + 1 : ℚ) / (p : ℚ))⌉.toNat)

end

end A049073.P16112407793390846757

/-! ## A049073.P17449224262536881990

`gcd(n+1, A152751(A147607(n)))`
-/

namespace A049073.P17449224262536881990
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A152751 (A147607 n).toNat)

end

end A049073.P17449224262536881990

/-! ## A049073.P16951727950433037779

`gcd(A000027(n+1), A141037(A094589(n+1)))`
-/

namespace A049073.P16951727950433037779
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000027 (n + 1)) (A141037 (A094589 (n + 1)).toNat)

end

end A049073.P16951727950433037779

/-! ## A049073.P12711631954038078831

`gcd(A001813(A105681(n+1)), A004526(2*(n+1)))`
-/

namespace A049073.P12711631954038078831
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001813 (A105681 (n + 1)).toNat) (A004526 (2 * (n + 1)))

end

end A049073.P12711631954038078831

/-! ## A049073.P8462583516545572030

`gcd(A100195(A024906(n+1)), A280497(2*(n+1)))`
-/

namespace A049073.P8462583516545572030
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A100195 (A024906 (n + 1)).toNat) (A280497 (2 * (n + 1)))

end

end A049073.P8462583516545572030

/-!
# A049074: Ulam's conjecture (steps to return n to 1 after division by 2 and, if needed, multiplication by 3 with 1 added).

The programs for A049074, there is no canonical definition to state claims against.
-/

/-! ## A049074.P630313264061688737

`A010153(A004273(n))*A033493(n+1)`
-/

namespace A049074.P630313264061688737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010153 (A004273 n).toNat * A033493 (n + 1)

end

end A049074.P630313264061688737

/-! ## A049074.P14078675072460465405

`A019432(A001316(n))*A033493(n+1)`
-/

namespace A049074.P14078675072460465405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019432 (A001316 n).toNat * A033493 (n + 1)

end

end A049074.P14078675072460465405

/-! ## A049074.P8727782454549908534

`A019432(A004277(n))*A033493(n+1)`
-/

namespace A049074.P8727782454549908534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019432 (A004277 n).toNat * A033493 (n + 1)

end

end A049074.P8727782454549908534

/-! ## A049074.P10659155024396985148

`A033493(A006370(n+1))+n+1`
-/

namespace A049074.P10659155024396985148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033493 (A006370 (n + 1)).toNat + (n + 1 : ℤ)

end

end A049074.P10659155024396985148

/-! ## A049074.P8435118789158045818

`A019432(A022144(n))*A033493(n+1)`
-/

namespace A049074.P8435118789158045818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019432 (A022144 n).toNat * A033493 (n + 1)

end

end A049074.P8435118789158045818

/-! ## A049074.P5936750199877138648

`A019432(A000118(n))*A033493(n+1)`
-/

namespace A049074.P5936750199877138648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019432 (A000118 n).toNat * A033493 (n + 1)

end

end A049074.P5936750199877138648

/-! ## A049074.P720308665444130865

`A019432(A008261(n))*A033493(n+1)`
-/

namespace A049074.P720308665444130865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019432 (A008261 n).toNat * A033493 (n + 1)

end

end A049074.P720308665444130865

/-! ## A049074.P1768185213821879591

`A010156(A007664(n))*A033493(n+1)`
-/

namespace A049074.P1768185213821879591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010156 (A007664 n).toNat * A033493 (n + 1)

end

end A049074.P1768185213821879591

/-!
# A049075: Eigensequence of a power series transformation.

The programs for A049075, there is no canonical definition to state claims against.
-/

/-! ## A049075.P15804320757417376929

`A194698(22*A003018(n+1))`
-/

namespace A049075.P15804320757417376929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194698 (22 * A003018 (n + 1)).toNat

end

end A049075.P15804320757417376929

/-! ## A049075.P9801450839543018985

`A157271(A113225(n)+A103451(n))`
-/

namespace A049075.P9801450839543018985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157271 (A113225 n + A103451 n).toNat

end

end A049075.P9801450839543018985

/-! ## A049075.P13000824585533204623

`A046155(A341579(n)+A148492(n))`
-/

namespace A049075.P13000824585533204623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046155 (A341579 n + A148492 n).toNat

end

end A049075.P13000824585533204623

/-! ## A049075.P7894222029652507453

`A157271(A307465(n)+A172471(n))`
-/

namespace A049075.P7894222029652507453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157271 (A307465 n + A172471 n).toNat

end

end A049075.P7894222029652507453

/-! ## A049075.P16171022800035704410

`A046155(A148492(n)+∑[A341582(n)])`
-/

namespace A049075.P16171022800035704410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341582 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046155 (A148492 n + ∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A049075.P16171022800035704410

/-!
# A049076: Number of steps in the prime index chain for the n-th prime.

The programs for A049076, the canonical program `A049076.P17652482635542047239` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A049076 has offset 1).

The definition of A049076 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A078442, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A049076.P17652482635542047239

`1+A078442(n+1)`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A049076

/-- `1+A078442(n+1)` -/
def P17652482635542047239.Spec : Prop :=
  ∀ n, P17652482635542047239.a n = A049076 (n + 1)

theorem P17652482635542047239.correct : P17652482635542047239.Spec := by
  intro n
  simp only [A049076, Nat.add_sub_cancel]

end A049076

/-! ## A049076.P8192632918698573810

`A078442(A000040(n+1))`
-/

namespace A049076.P8192632918698573810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078442 (A000040 (n + 1)).toNat

end

end A049076.P8192632918698573810

namespace A049076

/-- `A078442(A000040(n+1))` -/
def P8192632918698573810.Spec : Prop :=
  ∀ n, P8192632918698573810.a n = A049076 (n + 1)

end A049076

/-! ## A049076.P14758793988222298135

`val(A135141(n+1), 2)+1`
-/

namespace A049076.P14758793988222298135
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A135141 (n + 1)).toNat 2 + 1

end

end A049076.P14758793988222298135

namespace A049076

/-- `val(A135141(n+1), 2)+1` -/
def P14758793988222298135.Spec : Prop :=
  ∀ n, (P14758793988222298135.a n : ℤ) = A049076 (n + 1)

end A049076

/-! ## A049076.P3480422256118288558

`val(A246367(n+1), 2)+1`
-/

namespace A049076.P3480422256118288558
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A246367 (n + 1)).toNat 2 + 1

end

end A049076.P3480422256118288558

namespace A049076

/-- `val(A246367(n+1), 2)+1` -/
def P3480422256118288558.Spec : Prop :=
  ∀ n, (P3480422256118288558.a n : ℤ) = A049076 (n + 1)

end A049076

/-! ## A049076.P16316746252646893637

`val(A071574(n+1)+1, 2)+1`
-/

namespace A049076.P16316746252646893637
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A071574 (n + 1) + 1).toNat 2 + 1

end

end A049076.P16316746252646893637

namespace A049076

/-- `val(A071574(n+1)+1, 2)+1` -/
def P16316746252646893637.Spec : Prop :=
  ∀ n, (P16316746252646893637.a n : ℤ) = A049076 (n + 1)

end A049076

/-! ## A049076.P18357361522469943213

`A322027(A089026(n+1))+1`
-/

namespace A049076.P18357361522469943213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322027 (A089026 (n + 1)).toNat + 1

end

end A049076.P18357361522469943213

namespace A049076

/-- `A322027(A089026(n+1))+1` -/
def P18357361522469943213.Spec : Prop :=
  ∀ n, P18357361522469943213.a n = A049076 (n + 1)

end A049076

/-! ## A049076.P9180616337972995948

`Δ[a(A230980(n))+n]` with `a(0)=1`
-/

namespace A049076.P9180616337972995948
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (A230980 n).toNat + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A049076.P9180616337972995948

namespace A049076

/-- `Δ[a(A230980(n))+n]` -/
def P9180616337972995948.Spec : Prop :=
  ∀ n, P9180616337972995948.a n = A049076 (n + 1)

end A049076

/-! ## A049076.P12258548314073028392

`A322027(A008578(n+2))`
-/

namespace A049076.P12258548314073028392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322027 (A008578 (n + 2)).toNat

end

end A049076.P12258548314073028392

namespace A049076

/-- `A322027(A008578(n+2))` -/
def P12258548314073028392.Spec : Prop :=
  ∀ n, P12258548314073028392.a n = A049076 (n + 1)

end A049076

/-! ## A049076.P9449144427861875686

`A322027(sqrt(A001248(n+1)))`
-/

namespace A049076.P9449144427861875686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322027 (SequenceMachineLib.roundAway (Real.sqrt (A001248 (n + 1) : ℝ))).toNat

end

end A049076.P9449144427861875686

namespace A049076

/-- `A322027(sqrt(A001248(n+1)))` -/
def P9449144427861875686.Spec : Prop :=
  ∀ n, P9449144427861875686.a n = A049076 (n + 1)

end A049076

/-! ## A049076.P1283551691569073472

`A322027(record[A006530(n+2)])`
-/

namespace A049076.P1283551691569073472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322027 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A049076.P1283551691569073472

namespace A049076

/-- `A322027(record[A006530(n+2)])` -/
def P1283551691569073472.Spec : Prop :=
  ∀ n, P1283551691569073472.a n = A049076 (n + 1)

end A049076

/-! ## A049076.P17347127840213170634

`A322027(record[A020639(n+2)])`
-/

namespace A049076.P17347127840213170634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322027 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A049076.P17347127840213170634

namespace A049076

/-- `A322027(record[A020639(n+2)])` -/
def P17347127840213170634.Spec : Prop :=
  ∀ n, P17347127840213170634.a n = A049076 (n + 1)

end A049076

/-! ## A049076.P8769616318231813426

`A322027(A100484(n+1)/2)`
-/

namespace A049076.P8769616318231813426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322027 (SequenceMachineLib.roundAway ((A100484 (n + 1) : ℚ) / 2)).toNat

end

end A049076.P8769616318231813426

namespace A049076

/-- `A322027(A100484(n+1)/2)` -/
def P8769616318231813426.Spec : Prop :=
  ∀ n, P8769616318231813426.a n = A049076 (n + 1)

end A049076

/-! ## A049076.P8205116030892628400

`A322027(A001747(n+2)/2)`
-/

namespace A049076.P8205116030892628400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322027 (SequenceMachineLib.roundAway ((A001747 (n + 2) : ℚ) / 2)).toNat

end

end A049076.P8205116030892628400

namespace A049076

/-- `A322027(A001747(n+2)/2)` -/
def P8205116030892628400.Spec : Prop :=
  ∀ n, P8205116030892628400.a n = A049076 (n + 1)

end A049076

/-! ## A049076.P15729003391189991361

`A322027(p?[A322030(n+1)])`
-/

namespace A049076.P15729003391189991361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322030 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A049076.P15729003391189991361

namespace A049076

/-- `A322027(p?[A322030(n+1)])` -/
def P15729003391189991361.Spec : Prop :=
  ∀ n, P15729003391189991361.a n = A049076 (n + 1)

end A049076

/-! ## A049076.P10047533281711988591

`Δ[a(A242096(comp[2*n]))+n]` with `a(0)=2`
-/

namespace A049076.P10047533281711988591
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.rec [2] fun n f1 =>
  f1 (A242096 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)).toNat + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A049076.P10047533281711988591

namespace A049076

/-- `Δ[a(A242096(comp[2*n]))+n]` -/
def P10047533281711988591.Spec : Prop :=
  ∀ n, P10047533281711988591.a n = A049076 (n + 1)

end A049076

/-! ## A049076.P8644579774775812118

`A322027(A100484(n+1))`
-/

namespace A049076.P8644579774775812118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322027 (A100484 (n + 1)).toNat

end

end A049076.P8644579774775812118

namespace A049076

/-- `A322027(A100484(n+1))` -/
def P8644579774775812118.Spec : Prop :=
  ∀ n, P8644579774775812118.a n = A049076 (n + 1)

end A049076

/-! ## A049076.P2074424279844908803

`A322027(A001747(n+2))`
-/

namespace A049076.P2074424279844908803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322027 (A001747 (n + 2)).toNat

end

end A049076.P2074424279844908803

namespace A049076

/-- `A322027(A001747(n+2))` -/
def P2074424279844908803.Spec : Prop :=
  ∀ n, P2074424279844908803.a n = A049076 (n + 1)

end A049076

/-! ## A049076.P8234018948018174690

`A322027(A001749(n+1)/2)`
-/

namespace A049076.P8234018948018174690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322027 (SequenceMachineLib.roundAway ((A001749 (n + 1) : ℚ) / 2)).toNat

end

end A049076.P8234018948018174690

namespace A049076

/-- `A322027(A001749(n+1)/2)` -/
def P8234018948018174690.Spec : Prop :=
  ∀ n, P8234018948018174690.a n = A049076 (n + 1)

end A049076

/-! ## A049076.P235228543184873859

`A322027(A062876(n+1)/2)`
-/

namespace A049076.P235228543184873859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322027 (SequenceMachineLib.roundAway ((A062876 (n + 1) : ℚ) / 2)).toNat

end

end A049076.P235228543184873859

namespace A049076

/-- `A322027(A062876(n+1)/2)` -/
def P235228543184873859.Spec : Prop :=
  ∀ n, P235228543184873859.a n = A049076 (n + 1)

end A049076

/-! ## A049076.P13574467711989424753

`A322027(A001749(n+1))`
-/

namespace A049076.P13574467711989424753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322027 (A001749 (n + 1)).toNat

end

end A049076.P13574467711989424753

namespace A049076

/-- `A322027(A001749(n+1))` -/
def P13574467711989424753.Spec : Prop :=
  ∀ n, P13574467711989424753.a n = A049076 (n + 1)

end A049076

/-!
# A049077: a(n) = n / gcd(n, binomial(n, floor(n/2))).

The programs for A049077, the canonical program `A049077.P15136678433279613286` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A049077 has offset 1).

The definition of A049077 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A049077.P15136678433279613286

`(n+1)/gcd(n+1, C(n+1, floor((n+1)/2)))`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A049077

/-- `(n+1)/gcd(n+1, C(n+1, floor((n+1)/2)))` -/
def P15136678433279613286.Spec : Prop :=
  ∀ n, P15136678433279613286.a n = (A049077 (n + 1) : ℚ)

end A049077

/-! ## A049077.P11233579756776626854

`(n+1)/A057815(n+1)`
-/

namespace A049077.P11233579756776626854
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A057815 (n + 1) : ℚ)

end

end A049077.P11233579756776626854

namespace A049077

/-- `(n+1)/A057815(n+1)` -/
def P11233579756776626854.Spec : Prop :=
  ∀ n, P11233579756776626854.a n = (A049077 (n + 1) : ℚ)

end A049077

/-! ## A049077.P18226520194522498390

`(n+1)/gcd(n+1, A042970(n+1))`
-/

namespace A049077.P18226520194522498390
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Int.gcd (n + 1 : ℤ) (A042970 (n + 1)) : ℚ)

end

end A049077.P18226520194522498390

namespace A049077

/-- `(n+1)/gcd(n+1, A042970(n+1))` -/
def P18226520194522498390.Spec : Prop :=
  ∀ n, P18226520194522498390.a n = (A049077 (n + 1) : ℚ)

end A049077

/-! ## A049077.P14363229780120472526

`A201059(A152271(n))`
-/

namespace A049077.P14363229780120472526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201059 (A152271 n).toNat

end

end A049077.P14363229780120472526

namespace A049077

/-- `A201059(A152271(n))` -/
def P14363229780120472526.Spec : Prop :=
  ∀ n, P14363229780120472526.a n = A049077 (n + 1)

end A049077

/-! ## A049077.P13799940993512126653

`A201059(gcd(∑[n], A008619(n)))`
-/

namespace A049077.P13799940993512126653
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201059 (Int.gcd ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (A008619 n))

end

end A049077.P13799940993512126653

namespace A049077

/-- `A201059(gcd(∑[n], A008619(n)))` -/
def P13799940993512126653.Spec : Prop :=
  ∀ n, P13799940993512126653.a n = A049077 (n + 1)

end A049077

/-! ## A049077.P14353726072870117600

`A201059(gcd(n+1, A175126(n+1)))`
-/

namespace A049077.P14353726072870117600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201059 (Int.gcd (n + 1 : ℤ) (A175126 (n + 1)))

end

end A049077.P14353726072870117600

namespace A049077

/-- `A201059(gcd(n+1, A175126(n+1)))` -/
def P14353726072870117600.Spec : Prop :=
  ∀ n, P14353726072870117600.a n = A049077 (n + 1)

end A049077

/-! ## A049077.P7055170749098885826

`A201059(A026741((n+1)^and(1, n)))`
-/

namespace A049077.P7055170749098885826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201059 (A026741 ((n + 1) ^ Nat.land 1 n)).toNat

end

end A049077.P7055170749098885826

namespace A049077

/-- `A201059(A026741((n+1)^and(1, n)))` -/
def P7055170749098885826.Spec : Prop :=
  ∀ n, P7055170749098885826.a n = A049077 (n + 1)

end A049077

/-! ## A049077.P12741251003047549914

`A028310(n+1)/gcd(A001405(n+1), A028310(n+1))`
-/

namespace A049077.P12741251003047549914
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028310 (n + 1) : ℚ) / (Int.gcd (A001405 (n + 1)) (A028310 (n + 1)) : ℚ)

end

end A049077.P12741251003047549914

namespace A049077

/-- `A028310(n+1)/gcd(A001405(n+1), A028310(n+1))` -/
def P12741251003047549914.Spec : Prop :=
  ∀ n, P12741251003047549914.a n = (A049077 (n + 1) : ℚ)

end A049077

/-! ## A049077.P10990125806576900574

`lcm(A001405(n+1), n+1)/A001405(n+1)`
-/

namespace A049077.P10990125806576900574
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A001405 (n + 1)) (n + 1 : ℤ) : ℚ) / (A001405 (n + 1) : ℚ)

end

end A049077.P10990125806576900574

namespace A049077

/-- `lcm(A001405(n+1), n+1)/A001405(n+1)` -/
def P10990125806576900574.Spec : Prop :=
  ∀ n, P10990125806576900574.a n = (A049077 (n + 1) : ℚ)

end A049077

/-! ## A049077.P14658720483885155753

`A008621(2*n)/gcd(A008621(2*n), A305612(n+1))`
-/

namespace A049077.P14658720483885155753
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008621 (2 * n) : ℚ) / (Int.gcd (A008621 (2 * n)) (A305612 (n + 1)) : ℚ)

end

end A049077.P14658720483885155753

namespace A049077

/-- `A008621(2*n)/gcd(A008621(2*n), A305612(n+1))` -/
def P14658720483885155753.Spec : Prop :=
  ∀ n, P14658720483885155753.a n = (A049077 (n + 1) : ℚ)

end A049077

/-! ## A049077.P7202217761474422131

`A028242(2*n)/gcd(A028242(2*n), A107231(n+1))`
-/

namespace A049077.P7202217761474422131
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028242 (2 * n) : ℚ) / (Int.gcd (A028242 (2 * n)) (A107231 (n + 1)) : ℚ)

end

end A049077.P7202217761474422131

namespace A049077

/-- `A028242(2*n)/gcd(A028242(2*n), A107231(n+1))` -/
def P7202217761474422131.Spec : Prop :=
  ∀ n, P7202217761474422131.a n = (A049077 (n + 1) : ℚ)

end A049077

/-! ## A049077.P7111388627505030399

`A328902(A101881(n))`
-/

namespace A049077.P7111388627505030399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328902 (A101881 n).toNat

end

end A049077.P7111388627505030399

namespace A049077

/-- `A328902(A101881(n))` -/
def P7111388627505030399.Spec : Prop :=
  ∀ n, P7111388627505030399.a n = A049077 (n + 1)

end A049077

/-! ## A049077.P3460816848819217346

`A328902(∑[1-A026741(n)+n])`
-/

namespace A049077.P3460816848819217346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A026741 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328902 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A049077.P3460816848819217346

namespace A049077

/-- `A328902(∑[1-A026741(n)+n])` -/
def P3460816848819217346.Spec : Prop :=
  ∀ n, P3460816848819217346.a n = A049077 (n + 1)

end A049077

/-! ## A049077.P16183576559721595358

`A056040(n)/gcd(A001405(n)², A056040(n))`
-/

namespace A049077.P16183576559721595358
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056040 n : ℚ) / (Int.gcd (A001405 n ^ 2) (A056040 n) : ℚ)

end

end A049077.P16183576559721595358

namespace A049077

/-- `A056040(n)/gcd(A001405(n)², A056040(n))` -/
def P16183576559721595358.Spec : Prop :=
  ∀ n, P16183576559721595358.a n = (A049077 (n + 1) : ℚ)

end A049077

/-! ## A049077.P15682177247847317097

`A128014(n)/gcd(A126930(n)², A128014(n))`
-/

namespace A049077.P15682177247847317097
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A128014 n : ℚ) / (Int.gcd (A126930 n ^ 2) (A128014 n) : ℚ)

end

end A049077.P15682177247847317097

namespace A049077

/-- `A128014(n)/gcd(A126930(n)², A128014(n))` -/
def P15682177247847317097.Spec : Prop :=
  ∀ n, P15682177247847317097.a n = (A049077 (n + 1) : ℚ)

end A049077

/-! ## A049077.P12974259194238547618

`A159335(A074148(n+1))`
-/

namespace A049077.P12974259194238547618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159335 (A074148 (n + 1)).toNat

end

end A049077.P12974259194238547618

namespace A049077

/-- `A159335(A074148(n+1))` -/
def P12974259194238547618.Spec : Prop :=
  ∀ n, P12974259194238547618.a n = A049077 (n + 1)

end A049077

/-! ## A049077.P13603337991850959716

`A159335(A194274(n+1))`
-/

namespace A049077.P13603337991850959716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159335 (A194274 (n + 1)).toNat

end

end A049077.P13603337991850959716

namespace A049077

/-- `A159335(A194274(n+1))` -/
def P13603337991850959716.Spec : Prop :=
  ∀ n, P13603337991850959716.a n = A049077 (n + 1)

end A049077

/-! ## A049077.P15726200141126131315

`A159335(A362652(n+1))`
-/

namespace A049077.P15726200141126131315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159335 (A362652 (n + 1)).toNat

end

end A049077.P15726200141126131315

namespace A049077

/-- `A159335(A362652(n+1))` -/
def P15726200141126131315.Spec : Prop :=
  ∀ n, P15726200141126131315.a n = A049077 (n + 1)

end A049077

/-! ## A049077.P10660780850533806784

`A159335(A080476(n+2))`
-/

namespace A049077.P10660780850533806784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159335 (A080476 (n + 2)).toNat

end

end A049077.P10660780850533806784

namespace A049077

/-- `A159335(A080476(n+2))` -/
def P10660780850533806784.Spec : Prop :=
  ∀ n, P10660780850533806784.a n = A049077 (n + 1)

end A049077

/-!
# A049078: Primes prime(k) for which A049076(k) = 2.

The programs for A049078, the canonical program `A049078.P3999378590791680599` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A049078 has offset 1).

The definition of A049078 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A049078.P3999378590791680599

`A006450(A018252(n+1))`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A049078

/-- `A006450(A018252(n+1))` -/
def P3999378590791680599.Spec : Prop :=
  ∀ n, P3999378590791680599.a n = A049078 (n + 1)

theorem P3999378590791680599.correct : P3999378590791680599.Spec := by
  intro n
  simp only [A049078, Nat.add_sub_cancel]

end A049078

/-! ## A049078.P69270366510788159

`A006450(A141468(n+2))`
-/

namespace A049078.P69270366510788159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006450 (A141468 (n + 2)).toNat

end

end A049078.P69270366510788159

namespace A049078

/-- `A006450(A141468(n+2))` -/
def P69270366510788159.Spec : Prop :=
  ∀ n, P69270366510788159.a n = A049078 (n + 1)

end A049078

/-! ## A049078.P14582082241969837887

`A006450(A073425(n)+n+1)`
-/

namespace A049078.P14582082241969837887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006450 (A073425 n + (n + 1 : ℤ)).toNat

end

end A049078.P14582082241969837887

namespace A049078

/-- `A006450(A073425(n)+n+1)` -/
def P14582082241969837887.Spec : Prop :=
  ∀ n, P14582082241969837887.a n = A049078 (n + 1)

end A049078

/-! ## A049078.P191664353878341709

`A006450(comp[record[A008472(n+1)]])`
-/

namespace A049078.P191664353878341709
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006450 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A049078.P191664353878341709

namespace A049078

/-- `A006450(comp[record[A008472(n+1)]])` -/
def P191664353878341709.Spec : Prop :=
  ∀ n, P191664353878341709.a n = A049078 (n + 1)

end A049078

/-! ## A049078.P12484897173374960501

`A006450(comp[A020639(n+2)-1]+1)`
-/

namespace A049078.P12484897173374960501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006450 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1)

end

end A049078.P12484897173374960501

namespace A049078

/-- `A006450(comp[A020639(n+2)-1]+1)` -/
def P12484897173374960501.Spec : Prop :=
  ∀ n, P12484897173374960501.a n = A049078 (n + 1)

end A049078

/-! ## A049078.P14864810422917270853

`A006450(comp[eq[2, A000005(n+1)]]+1)`
-/

namespace A049078.P14864810422917270853
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006450 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1)

end

end A049078.P14864810422917270853

namespace A049078

/-- `A006450(comp[eq[2, A000005(n+1)]]+1)` -/
def P14864810422917270853.Spec : Prop :=
  ∀ n, P14864810422917270853.a n = A049078 (n + 1)

end A049078

/-! ## A049078.P16200386220332077224

`record[A005171(n+1)*A006450(n+1)]`
-/

namespace A049078.P16200386220332077224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005171 (n + 1) * A006450 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A049078.P16200386220332077224

namespace A049078

/-- `record[A005171(n+1)*A006450(n+1)]` -/
def P16200386220332077224.Spec : Prop :=
  ∀ n, P16200386220332077224.a n = A049078 (n + 1)

end A049078

/-! ## A049078.P5777142323429451826

`A006450(A007821(n+1)-A168285(n+1))`
-/

namespace A049078.P5777142323429451826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006450 (A007821 (n + 1) - A168285 (n + 1)).toNat

end

end A049078.P5777142323429451826

namespace A049078

/-- `A006450(A007821(n+1)-A168285(n+1))` -/
def P5777142323429451826.Spec : Prop :=
  ∀ n, P5777142323429451826.a n = A049078 (n + 1)

end A049078

/-! ## A049078.P15285385478262709758

`A006450(A175967(n+2)-A175967(n+1))`
-/

namespace A049078.P15285385478262709758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006450 (A175967 (n + 2) - A175967 (n + 1)).toNat

end

end A049078.P15285385478262709758

namespace A049078

/-- `A006450(A175967(n+2)-A175967(n+1))` -/
def P15285385478262709758.Spec : Prop :=
  ∀ n, P15285385478262709758.a n = A049078 (n + 1)

end A049078

/-! ## A049078.P6206118953544485624

`∩[A262275(n+1), A333353(n+1)]`
-/

namespace A049078.P6206118953544485624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262275 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333353 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049078.P6206118953544485624

namespace A049078

/-- `∩[A262275(n+1), A333353(n+1)]` -/
def P6206118953544485624.Spec : Prop :=
  ∀ n, (P6206118953544485624.a n : ℤ) = A049078 (n + 1)

end A049078

/-! ## A049078.P10408403466819625808

`A175247(A018252(n+1)+1)`
-/

namespace A049078.P10408403466819625808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175247 (A018252 (n + 1) + 1).toNat

end

end A049078.P10408403466819625808

namespace A049078

/-- `A175247(A018252(n+1)+1)` -/
def P10408403466819625808.Spec : Prop :=
  ∀ n, P10408403466819625808.a n = A049078 (n + 1)

end A049078

/-! ## A049078.P3577522909376225043

`p?[A010051(n+1)+A006450(n+1)]`
-/

namespace A049078.P3577522909376225043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1) + A006450 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A049078.P3577522909376225043

namespace A049078

/-- `p?[A010051(n+1)+A006450(n+1)]` -/
def P3577522909376225043.Spec : Prop :=
  ∀ n, P3577522909376225043.a n = A049078 (n + 1)

end A049078

/-! ## A049078.P1178257035597410991

`A064988(A007821(n+1))`
-/

namespace A049078.P1178257035597410991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064988 (A007821 (n + 1)).toNat

end

end A049078.P1178257035597410991

namespace A049078

/-- `A064988(A007821(n+1))` -/
def P1178257035597410991.Spec : Prop :=
  ∀ n, P1178257035597410991.a n = A049078 (n + 1)

end A049078

/-! ## A049078.P15881566957175896646

`p?[A006450(n+1)*A049076(n+1)]`
-/

namespace A049078.P15881566957175896646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006450 (n + 1) * A049076 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A049078.P15881566957175896646

namespace A049078

/-- `p?[A006450(n+1)*A049076(n+1)]` -/
def P15881566957175896646.Spec : Prop :=
  ∀ n, P15881566957175896646.a n = A049078 (n + 1)

end A049078

/-! ## A049078.P14967384380161938435

`∩[A333353(n+1), A333364(n+1)]`
-/

namespace A049078.P14967384380161938435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333353 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333364 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049078.P14967384380161938435

namespace A049078

/-- `∩[A333353(n+1), A333364(n+1)]` -/
def P14967384380161938435.Spec : Prop :=
  ∀ n, (P14967384380161938435.a n : ℤ) = A049078 (n + 1)

end A049078

/-! ## A049078.P11944205283319376174

`A000040(p?[A007821(n+1)])`
-/

namespace A049078.P11944205283319376174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007821 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A049078.P11944205283319376174

namespace A049078

/-- `A000040(p?[A007821(n+1)])` -/
def P11944205283319376174.Spec : Prop :=
  ∀ n, P11944205283319376174.a n = A049078 (n + 1)

end A049078

/-! ## A049078.P14449552207483558966

`A000040(p?[A141437(n+1)])`
-/

namespace A049078.P14449552207483558966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141437 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A049078.P14449552207483558966

namespace A049078

/-- `A000040(p?[A141437(n+1)])` -/
def P14449552207483558966.Spec : Prop :=
  ∀ n, P14449552207483558966.a n = A049078 (n + 1)

end A049078

/-! ## A049078.P12349498034359808373

`A008578(A007821(n+1)+1)`
-/

namespace A049078.P12349498034359808373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A007821 (n + 1) + 1).toNat

end

end A049078.P12349498034359808373

namespace A049078

/-- `A008578(A007821(n+1)+1)` -/
def P12349498034359808373.Spec : Prop :=
  ∀ n, P12349498034359808373.a n = A049078 (n + 1)

end A049078

/-! ## A049078.P2084683333268681047

`A182986(A007821(n+1)+1)`
-/

namespace A049078.P2084683333268681047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (A007821 (n + 1) + 1).toNat

end

end A049078.P2084683333268681047

namespace A049078

/-- `A182986(A007821(n+1)+1)` -/
def P2084683333268681047.Spec : Prop :=
  ∀ n, P2084683333268681047.a n = A049078 (n + 1)

end A049078

/-! ## A049078.P4925044217836696260

`A158611(A007821(n+1)+2)`
-/

namespace A049078.P4925044217836696260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (A007821 (n + 1) + 2).toNat

end

end A049078.P4925044217836696260

namespace A049078

/-- `A158611(A007821(n+1)+2)` -/
def P4925044217836696260.Spec : Prop :=
  ∀ n, P4925044217836696260.a n = A049078 (n + 1)

end A049078

/-!
# A049079: Primes prime(k) for which A049076(k) = 3.

The programs for A049079, the canonical program `A049079.P3747407735435422151` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A049079 has offset 1).

The definition of A049079 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8771 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A049079.P3747407735435422151

`A038580(A018252(n+1))`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A049079

/-- `A038580(A018252(n+1))` -/
def P3747407735435422151.Spec : Prop :=
  ∀ n, P3747407735435422151.a n = A049079 (n + 1)

theorem P3747407735435422151.correct : P3747407735435422151.Spec := by
  intro n
  simp only [A049079, Nat.add_sub_cancel]

end A049079

/-! ## A049079.P10521724733311539113

`A038580(A141468(n+2))`
-/

namespace A049079.P10521724733311539113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038580 (A141468 (n + 2)).toNat

end

end A049079.P10521724733311539113

namespace A049079

/-- `A038580(A141468(n+2))` -/
def P10521724733311539113.Spec : Prop :=
  ∀ n, P10521724733311539113.a n = A049079 (n + 1)

end A049079

/-! ## A049079.P15877187023131762003

`A038580(A073425(n)+n+1)`
-/

namespace A049079.P15877187023131762003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038580 (A073425 n + (n + 1 : ℤ)).toNat

end

end A049079.P15877187023131762003

namespace A049079

/-- `A038580(A073425(n)+n+1)` -/
def P15877187023131762003.Spec : Prop :=
  ∀ n, P15877187023131762003.a n = A049079 (n + 1)

end A049079

/-! ## A049079.P15096579457794924685

`A038580(eq[1, A049076(n+1)]+1)`
-/

namespace A049079.P15096579457794924685
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049076 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038580 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A049079.P15096579457794924685

namespace A049079

/-- `A038580(eq[1, A049076(n+1)]+1)` -/
def P15096579457794924685.Spec : Prop :=
  ∀ n, P15096579457794924685.a n = A049079 (n + 1)

end A049079

/-! ## A049079.P11219710255463285339

`A038580(comp[A000040(n+1)-1]+1)`
-/

namespace A049079.P11219710255463285339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038580 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1)

end

end A049079.P11219710255463285339

namespace A049079

/-- `A038580(comp[A000040(n+1)-1]+1)` -/
def P11219710255463285339.Spec : Prop :=
  ∀ n, P11219710255463285339.a n = A049079 (n + 1)

end A049079

/-! ## A049079.P12029506661962064834

`A006450(A007821(n+1))`
-/

namespace A049079.P12029506661962064834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006450 (A007821 (n + 1)).toNat

end

end A049079.P12029506661962064834

namespace A049079

/-- `A006450(A007821(n+1))` -/
def P12029506661962064834.Spec : Prop :=
  ∀ n, P12029506661962064834.a n = A049079 (n + 1)

end A049079

/-! ## A049079.P10761586480584786165

`A006450(A168285(n+1)+A018252(n+1))`
-/

namespace A049079.P10761586480584786165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006450 (A168285 (n + 1) + A018252 (n + 1)).toNat

end

end A049079.P10761586480584786165

namespace A049079

/-- `A006450(A168285(n+1)+A018252(n+1))` -/
def P10761586480584786165.Spec : Prop :=
  ∀ n, P10761586480584786165.a n = A049079 (n + 1)

end A049079

/-! ## A049079.P1171704936003231202

`A006450(A168271(n+1)+A144570(n+1))`
-/

namespace A049079.P1171704936003231202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006450 (A168271 (n + 1) + A144570 (n + 1)).toNat

end

end A049079.P1171704936003231202

namespace A049079

/-- `A006450(A168271(n+1)+A144570(n+1))` -/
def P1171704936003231202.Spec : Prop :=
  ∀ n, P1171704936003231202.a n = A049079 (n + 1)

end A049079

/-! ## A049079.P10395375209063071380

`A006450(p?[A010051(n+1)+A000040(n+1)])`
-/

namespace A049079.P10395375209063071380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1) + A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006450 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A049079.P10395375209063071380

namespace A049079

/-- `A006450(p?[A010051(n+1)+A000040(n+1)])` -/
def P10395375209063071380.Spec : Prop :=
  ∀ n, P10395375209063071380.a n = A049079 (n + 1)

end A049079

/-! ## A049079.P15165755507571977989

`A006450(p?[A010051(n+1)+A040976(n+1)+2])`
-/

namespace A049079.P15165755507571977989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1) + (A040976 (n + 1) + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006450 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A049079.P15165755507571977989

namespace A049079

/-- `A006450(p?[A010051(n+1)+A040976(n+1)+2])` -/
def P15165755507571977989.Spec : Prop :=
  ∀ n, P15165755507571977989.a n = A049079 (n + 1)

end A049079

/-! ## A049079.P8381599446234708845

`A006450(p?[A320628(n+1)])`
-/

namespace A049079.P8381599446234708845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320628 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006450 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A049079.P8381599446234708845

namespace A049079

/-- `A006450(p?[A320628(n+1)])` -/
def P8381599446234708845.Spec : Prop :=
  ∀ n, P8381599446234708845.a n = A049079 (n + 1)

end A049079

/-! ## A049079.P11012675895617543026

`A006450(p?[comp[A076610(n+1)]])`
-/

namespace A049079.P11012675895617543026
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076610 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006450 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A049079.P11012675895617543026

namespace A049079

/-- `A006450(p?[comp[A076610(n+1)]])` -/
def P11012675895617543026.Spec : Prop :=
  ∀ n, P11012675895617543026.a n = A049079 (n + 1)

end A049079

/-! ## A049079.P17141413411690977980

`A006450(p?[comp[A006450(n+1)]])`
-/

namespace A049079.P17141413411690977980
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006450 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006450 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A049079.P17141413411690977980

namespace A049079

/-- `A006450(p?[comp[A006450(n+1)]])` -/
def P17141413411690977980.Spec : Prop :=
  ∀ n, P17141413411690977980.a n = A049079 (n + 1)

end A049079

/-! ## A049079.P6073588572415050741

`A175247(A007821(n+1)+1)`
-/

namespace A049079.P6073588572415050741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175247 (A007821 (n + 1) + 1).toNat

end

end A049079.P6073588572415050741

namespace A049079

/-- `A175247(A007821(n+1)+1)` -/
def P6073588572415050741.Spec : Prop :=
  ∀ n, P6073588572415050741.a n = A049079 (n + 1)

end A049079

/-! ## A049079.P8829217067163127685

`A006450(eq[2, A049076(n+1)]+1)`
-/

namespace A049079.P8829217067163127685
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049076 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006450 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A049079.P8829217067163127685

namespace A049079

/-- `A006450(eq[2, A049076(n+1)]+1)` -/
def P8829217067163127685.Spec : Prop :=
  ∀ n, P8829217067163127685.a n = A049079 (n + 1)

end A049079

/-! ## A049079.P1887925198616002586

`p?[A038580(n+1)*A049076(n+1)]`
-/

namespace A049079.P1887925198616002586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038580 (n + 1) * A049076 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A049079.P1887925198616002586

namespace A049079

/-- `p?[A038580(n+1)*A049076(n+1)]` -/
def P1887925198616002586.Spec : Prop :=
  ∀ n, P1887925198616002586.a n = A049079 (n + 1)

end A049079

/-! ## A049079.P2692790214824635484

`p?[(A049076(n+1)-1)*A006450(n+1)]`
-/

namespace A049079.P2692790214824635484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A049076 (n + 1) - 1) * A006450 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A049079.P2692790214824635484

namespace A049079

/-- `p?[(A049076(n+1)-1)*A006450(n+1)]` -/
def P2692790214824635484.Spec : Prop :=
  ∀ n, P2692790214824635484.a n = A049079 (n + 1)

end A049079

/-! ## A049079.P11299106101772179149

`A000040(A049078(n+1))`
-/

namespace A049079.P11299106101772179149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A049078 (n + 1)).toNat

end

end A049079.P11299106101772179149

namespace A049079

/-- `A000040(A049078(n+1))` -/
def P11299106101772179149.Spec : Prop :=
  ∀ n, P11299106101772179149.a n = A049079 (n + 1)

end A049079

/-! ## A049079.P13322348074420012378

`A008578(A049078(n+1)+1)`
-/

namespace A049079.P13322348074420012378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A049078 (n + 1) + 1).toNat

end

end A049079.P13322348074420012378

namespace A049079

/-- `A008578(A049078(n+1)+1)` -/
def P13322348074420012378.Spec : Prop :=
  ∀ n, P13322348074420012378.a n = A049079 (n + 1)

end A049079

/-! ## A049079.P12236526906733263256

`A000040(eq[2, A078442(n+1)]+1)`
-/

namespace A049079.P12236526906733263256
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078442 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A049079.P12236526906733263256

namespace A049079

/-- `A000040(eq[2, A078442(n+1)]+1)` -/
def P12236526906733263256.Spec : Prop :=
  ∀ n, P12236526906733263256.a n = A049079 (n + 1)

end A049079

/-!
# A049080: Primes prime(k) for which A049076(k) = 4.

The programs for A049080, the canonical program `A049080.P16428676545283886508` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A049080 has offset 1).

The definition of A049080 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8771 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A049080.P16428676545283886508

`A049090(A018252(n+1))`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A049080

/-- `A049090(A018252(n+1))` -/
def P16428676545283886508.Spec : Prop :=
  ∀ n, P16428676545283886508.a n = A049080 (n + 1)

theorem P16428676545283886508.correct : P16428676545283886508.Spec := by
  intro n
  simp only [A049080, Nat.add_sub_cancel]

end A049080

/-! ## A049080.P11409775223556688142

`A049090(A141468(n+2))`
-/

namespace A049080.P11409775223556688142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049090 (A141468 (n + 2)).toNat

end

end A049080.P11409775223556688142

namespace A049080

/-- `A049090(A141468(n+2))` -/
def P11409775223556688142.Spec : Prop :=
  ∀ n, P11409775223556688142.a n = A049080 (n + 1)

end A049080

/-! ## A049080.P12355865457985802770

`A049090(∑[A054546(n+1)])`
-/

namespace A049080.P12355865457985802770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054546 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049090 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A049080.P12355865457985802770

namespace A049080

/-- `A049090(∑[A054546(n+1)])` -/
def P12355865457985802770.Spec : Prop :=
  ∀ n, P12355865457985802770.a n = A049080 (n + 1)

end A049080

/-! ## A049080.P1984171163324113129

`A049090(eq[1, A049076(n+1)]+1)`
-/

namespace A049080.P1984171163324113129
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049076 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049090 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A049080.P1984171163324113129

namespace A049080

/-- `A049090(eq[1, A049076(n+1)]+1)` -/
def P1984171163324113129.Spec : Prop :=
  ∀ n, P1984171163324113129.a n = A049080 (n + 1)

end A049080

/-! ## A049080.P16912792207411675047

`A038580(A007821(n+1))`
-/

namespace A049080.P16912792207411675047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038580 (A007821 (n + 1)).toNat

end

end A049080.P16912792207411675047

namespace A049080

/-- `A038580(A007821(n+1))` -/
def P16912792207411675047.Spec : Prop :=
  ∀ n, P16912792207411675047.a n = A049080 (n + 1)

end A049080

/-! ## A049080.P2281469328394020873

`A038580(eq[2, A049076(n+1)]+1)`
-/

namespace A049080.P2281469328394020873
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049076 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038580 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A049080.P2281469328394020873

namespace A049080

/-- `A038580(eq[2, A049076(n+1)]+1)` -/
def P2281469328394020873.Spec : Prop :=
  ∀ n, P2281469328394020873.a n = A049080 (n + 1)

end A049080

/-! ## A049080.P1754414558484035046

`A038580(A168271(n+1)+A144570(n+1))`
-/

namespace A049080.P1754414558484035046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038580 (A168271 (n + 1) + A144570 (n + 1)).toNat

end

end A049080.P1754414558484035046

namespace A049080

/-- `A038580(A168271(n+1)+A144570(n+1))` -/
def P1754414558484035046.Spec : Prop :=
  ∀ n, P1754414558484035046.a n = A049080 (n + 1)

end A049080

/-! ## A049080.P756385730537831558

`A006450(A049078(n+1))`
-/

namespace A049080.P756385730537831558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006450 (A049078 (n + 1)).toNat

end

end A049080.P756385730537831558

namespace A049080

/-- `A006450(A049078(n+1))` -/
def P756385730537831558.Spec : Prop :=
  ∀ n, P756385730537831558.a n = A049080 (n + 1)

end A049080

/-! ## A049080.P4653288823637878269

`∑{p}[A006450(A018252(n+1)), A006450(#)]`
-/

namespace A049080.P4653288823637878269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006450 (A018252 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A006450 p

end

end A049080.P4653288823637878269

namespace A049080

/-- `∑{p}[A006450(A018252(n+1)), A006450(#)]` -/
def P4653288823637878269.Spec : Prop :=
  ∀ n, P4653288823637878269.a n = A049080 (n + 1)

end A049080

/-! ## A049080.P7406225367927073949

`A006450(p?[A010051(n+1)+A006450(n+1)])`
-/

namespace A049080.P7406225367927073949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1) + A006450 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006450 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A049080.P7406225367927073949

namespace A049080

/-- `A006450(p?[A010051(n+1)+A006450(n+1)])` -/
def P7406225367927073949.Spec : Prop :=
  ∀ n, P7406225367927073949.a n = A049080 (n + 1)

end A049080

/-! ## A049080.P13172100958182250581

`A006450(record[A005171(n+1)*A006450(n+1)])`
-/

namespace A049080.P13172100958182250581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005171 (n + 1) * A006450 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006450 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A049080.P13172100958182250581

namespace A049080

/-- `A006450(record[A005171(n+1)*A006450(n+1)])` -/
def P13172100958182250581.Spec : Prop :=
  ∀ n, P13172100958182250581.a n = A049080 (n + 1)

end A049080

/-! ## A049080.P16976040713133631381

`A006450(p?[A006450(n+1)*A049076(n+1)])`
-/

namespace A049080.P16976040713133631381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006450 (n + 1) * A049076 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006450 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A049080.P16976040713133631381

namespace A049080

/-- `A006450(p?[A006450(n+1)*A049076(n+1)])` -/
def P16976040713133631381.Spec : Prop :=
  ∀ n, P16976040713133631381.a n = A049080 (n + 1)

end A049080

/-! ## A049080.P10822702998474125034

`A006450(A000040(A007821(A000720(A000040(n+1)))))`
-/

namespace A049080.P10822702998474125034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006450 (A000040 (A007821 (A000720 (A000040 (n + 1)).toNat).toNat).toNat).toNat

end

end A049080.P10822702998474125034

namespace A049080

/-- `A006450(A000040(A007821(A000720(A000040(n+1)))))` -/
def P10822702998474125034.Spec : Prop :=
  ∀ n, P10822702998474125034.a n = A049080 (n + 1)

end A049080

/-! ## A049080.P6081876961793888639

`A006450(A000040(A007821(A132090(A006450(n+1)))))`
-/

namespace A049080.P6081876961793888639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006450 (A000040 (A007821 (A132090 (A006450 (n + 1)).toNat).toNat).toNat).toNat

end

end A049080.P6081876961793888639

namespace A049080

/-- `A006450(A000040(A007821(A132090(A006450(n+1)))))` -/
def P6081876961793888639.Spec : Prop :=
  ∀ n, P6081876961793888639.a n = A049080 (n + 1)

end A049080

/-! ## A049080.P13582270521619249177

`A006450(A000720(A049079(n+1)))`
-/

namespace A049080.P13582270521619249177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006450 (A000720 (A049079 (n + 1)).toNat).toNat

end

end A049080.P13582270521619249177

namespace A049080

/-- `A006450(A000720(A049079(n+1)))` -/
def P13582270521619249177.Spec : Prop :=
  ∀ n, P13582270521619249177.a n = A049080 (n + 1)

end A049080

/-! ## A049080.P4284040250660388101

`p?[gcd(A049084(n+1), A049090(n+1))]`
-/

namespace A049080.P4284040250660388101
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A049084 (n + 1)) (A049090 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A049080.P4284040250660388101

namespace A049080

/-- `p?[gcd(A049084(n+1), A049090(n+1))]` -/
def P4284040250660388101.Spec : Prop :=
  ∀ n, (P4284040250660388101.a n : ℤ) = A049080 (n + 1)

end A049080

/-!
# A049081: Primes prime(k) for which A049076(k) = 5.

The programs for A049081, the canonical program `A049081.P1393295176023004462` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A049081 has offset 1).

The definition of A049081 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A049081.P1393295176023004462

`A049090(A007821(n+1))`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A049081

/-- `A049090(A007821(n+1))` -/
def P1393295176023004462.Spec : Prop :=
  ∀ n, P1393295176023004462.a n = A049081 (n + 1)

theorem P1393295176023004462.correct : P1393295176023004462.Spec := by
  intro n
  simp only [A049081, Nat.add_sub_cancel]

end A049081

/-! ## A049081.P12196575924226820946

`A049203(A018252(n+1))`
-/

namespace A049081.P12196575924226820946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049203 (A018252 (n + 1)).toNat

end

end A049081.P12196575924226820946

namespace A049081

/-- `A049203(A018252(n+1))` -/
def P12196575924226820946.Spec : Prop :=
  ∀ n, P12196575924226820946.a n = A049081 (n + 1)

end A049081

/-! ## A049081.P5080904904339452189

`A049203(A141468(n+2))`
-/

namespace A049081.P5080904904339452189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049203 (A141468 (n + 2)).toNat

end

end A049081.P5080904904339452189

namespace A049081

/-- `A049203(A141468(n+2))` -/
def P5080904904339452189.Spec : Prop :=
  ∀ n, P5080904904339452189.a n = A049081 (n + 1)

end A049081

/-! ## A049081.P16787258458338067322

`A049203(eq[1, A049076(n+1)]+1)`
-/

namespace A049081.P16787258458338067322
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049076 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049203 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A049081.P16787258458338067322

namespace A049081

/-- `A049203(eq[1, A049076(n+1)]+1)` -/
def P16787258458338067322.Spec : Prop :=
  ∀ n, P16787258458338067322.a n = A049081 (n + 1)

end A049081

/-! ## A049081.P18271066393073831855

`A049090(eq[2, A049076(n+1)]+1)`
-/

namespace A049081.P18271066393073831855
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049076 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049090 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A049081.P18271066393073831855

namespace A049081

/-- `A049090(eq[2, A049076(n+1)]+1)` -/
def P18271066393073831855.Spec : Prop :=
  ∀ n, P18271066393073831855.a n = A049081 (n + 1)

end A049081

/-! ## A049081.P2025825134659545187

`record[(2-A049076(n+1))*A049203(n+1)]`
-/

namespace A049081.P2025825134659545187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A049076 (n + 1)) * A049203 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A049081.P2025825134659545187

namespace A049081

/-- `record[(2-A049076(n+1))*A049203(n+1)]` -/
def P2025825134659545187.Spec : Prop :=
  ∀ n, P2025825134659545187.a n = A049081 (n + 1)

end A049081

/-! ## A049081.P8699242909893789367

`A038580(A049078(n+1))`
-/

namespace A049081.P8699242909893789367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038580 (A049078 (n + 1)).toNat

end

end A049081.P8699242909893789367

namespace A049081

/-- `A038580(A049078(n+1))` -/
def P8699242909893789367.Spec : Prop :=
  ∀ n, P8699242909893789367.a n = A049081 (n + 1)

end A049081

/-! ## A049081.P13231177067548923273

`A006450(A049079(n+1))`
-/

namespace A049081.P13231177067548923273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006450 (A049079 (n + 1)).toNat

end

end A049081.P13231177067548923273

namespace A049081

/-- `A006450(A049079(n+1))` -/
def P13231177067548923273.Spec : Prop :=
  ∀ n, P13231177067548923273.a n = A049081 (n + 1)

end A049081

/-! ## A049081.P13944513561932506568

`A006450(A006450(A007821(A000720(A000040(n+1)))))`
-/

namespace A049081.P13944513561932506568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006450 (A006450 (A007821 (A000720 (A000040 (n + 1)).toNat).toNat).toNat).toNat

end

end A049081.P13944513561932506568

namespace A049081

/-- `A006450(A006450(A007821(A000720(A000040(n+1)))))` -/
def P13944513561932506568.Spec : Prop :=
  ∀ n, P13944513561932506568.a n = A049081 (n + 1)

end A049081

/-! ## A049081.P2710692013580014169

`A006450(A006450(A007821(A132090(A006450(n+1)))))`
-/

namespace A049081.P2710692013580014169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006450 (A006450 (A007821 (A132090 (A006450 (n + 1)).toNat).toNat).toNat).toNat

end

end A049081.P2710692013580014169

namespace A049081

/-- `A006450(A006450(A007821(A132090(A006450(n+1)))))` -/
def P2710692013580014169.Spec : Prop :=
  ∀ n, P2710692013580014169.a n = A049081 (n + 1)

end A049081

/-!
# A049082: Number of putative parameter sets for orthogonal arrays with 2^n runs.

The programs for A049082, there is no canonical definition to state claims against.
-/

/-! ## A049082.P11413291122908701536

`A211540(A300913(n))+A008286(n)`
-/

namespace A049082.P11413291122908701536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211540 (A300913 n).toNat + A008286 n

end

end A049082.P11413291122908701536

/-! ## A049082.P11130901347760710193

`A229301(A099237(n)+n)`
-/

namespace A049082.P11130901347760710193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229301 (A099237 n + (n : ℤ)).toNat

end

end A049082.P11130901347760710193

/-!
# A049084: a(n) = pi(n) if n is prime, otherwise 0.

The programs for A049084, the canonical program `A049084.P10934933317972537770` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A049084 has offset 1).

The definition of A049084 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000720, A010051, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A049084.P10934933317972537770

`A000720(n+1)*A010051(n+1)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A049084

/-- `A000720(n+1)*A010051(n+1)` -/
def P10934933317972537770.Spec : Prop :=
  ∀ n, P10934933317972537770.a n = A049084 (n + 1)

theorem P10934933317972537770.correct : P10934933317972537770.Spec := by
  intro n
  simp only [A049084, Nat.add_sub_cancel]

end A049084

/-! ## A049084.P3617864648795077122

`A091227(A091202(n+1))`
-/

namespace A049084.P3617864648795077122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091227 (A091202 (n + 1)).toNat

end

end A049084.P3617864648795077122

namespace A049084

/-- `A091227(A091202(n+1))` -/
def P3617864648795077122.Spec : Prop :=
  ∀ n, P3617864648795077122.a n = A049084 (n + 1)

end A049084

/-! ## A049084.P3616598321665239166

`A000720(A089026(n+1))`
-/

namespace A049084.P3616598321665239166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A089026 (n + 1)).toNat

end

end A049084.P3616598321665239166

namespace A049084

/-- `A000720(A089026(n+1))` -/
def P3616598321665239166.Spec : Prop :=
  ∀ n, P3616598321665239166.a n = A049084 (n + 1)

end A049084

/-! ## A049084.P5858528418688682475

`A230980(A061397(n+1))`
-/

namespace A049084.P5858528418688682475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (A061397 (n + 1)).toNat

end

end A049084.P5858528418688682475

namespace A049084

/-- `A230980(A061397(n+1))` -/
def P5858528418688682475.Spec : Prop :=
  ∀ n, P5858528418688682475.a n = A049084 (n + 1)

end A049084

/-! ## A049084.P2288590911903676351

`A241917(A068794(n+1))`
-/

namespace A049084.P2288590911903676351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241917 (A068794 (n + 1)).toNat

end

end A049084.P2288590911903676351

namespace A049084

/-- `A241917(A068794(n+1))` -/
def P2288590911903676351.Spec : Prop :=
  ∀ n, P2288590911903676351.a n = A049084 (n + 1)

end A049084

/-! ## A049084.P11316128578581851498

`A241917(A079867(n+1))`
-/

namespace A049084.P11316128578581851498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241917 (A079867 (n + 1)).toNat

end

end A049084.P11316128578581851498

namespace A049084

/-- `A241917(A079867(n+1))` -/
def P11316128578581851498.Spec : Prop :=
  ∀ n, P11316128578581851498.a n = A049084 (n + 1)

end A049084

/-! ## A049084.P10188444143487622719

`A000720(A166260(n+1)+1)`
-/

namespace A049084.P10188444143487622719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A166260 (n + 1) + 1).toNat

end

end A049084.P10188444143487622719

namespace A049084

/-- `A000720(A166260(n+1)+1)` -/
def P10188444143487622719.Spec : Prop :=
  ∀ n, P10188444143487622719.a n = A049084 (n + 1)

end A049084

/-! ## A049084.P1074831909517266028

`A055396(A166260(n+1)+1)`
-/

namespace A049084.P1074831909517266028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (A166260 (n + 1) + 1).toNat

end

end A049084.P1074831909517266028

namespace A049084

/-- `A055396(A166260(n+1)+1)` -/
def P1074831909517266028.Spec : Prop :=
  ∀ n, P1074831909517266028.a n = A049084 (n + 1)

end A049084

/-! ## A049084.P1407407960061403387

`A230980(A166260(n+1)+1)`
-/

namespace A049084.P1407407960061403387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (A166260 (n + 1) + 1).toNat

end

end A049084.P1407407960061403387

namespace A049084

/-- `A230980(A166260(n+1)+1)` -/
def P1407407960061403387.Spec : Prop :=
  ∀ n, P1407407960061403387.a n = A049084 (n + 1)

end A049084

/-! ## A049084.P15200987105578392661

`A230980(C(A006530(n+1), n))`
-/

namespace A049084.P15200987105578392661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (Nat.choose (A006530 (n + 1)).toNat n)

end

end A049084.P15200987105578392661

namespace A049084

/-- `A230980(C(A006530(n+1), n))` -/
def P15200987105578392661.Spec : Prop :=
  ∀ n, P15200987105578392661.a n = A049084 (n + 1)

end A049084

/-! ## A049084.P14126466773493857331

`A230980(C(A020639(n+1), n))`
-/

namespace A049084.P14126466773493857331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (Nat.choose (A020639 (n + 1)).toNat n)

end

end A049084.P14126466773493857331

namespace A049084

/-- `A230980(C(A020639(n+1), n))` -/
def P14126466773493857331.Spec : Prop :=
  ∀ n, P14126466773493857331.a n = A049084 (n + 1)

end A049084

/-! ## A049084.P1660138970637235549

`∑{d}[A061397(n+1), A000720(#)]`
-/

namespace A049084.P1660138970637235549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061397 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000720 d

end

end A049084.P1660138970637235549

namespace A049084

/-- `∑{d}[A061397(n+1), A000720(#)]` -/
def P1660138970637235549.Spec : Prop :=
  ∀ n, P1660138970637235549.a n = A049084 (n + 1)

end A049084

/-! ## A049084.P11550521065028380702

`A066136(n+1)-A066246(n+1)`
-/

namespace A049084.P11550521065028380702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066136 (n + 1) - A066246 (n + 1)

end

end A049084.P11550521065028380702

namespace A049084

/-- `A066136(n+1)-A066246(n+1)` -/
def P11550521065028380702.Spec : Prop :=
  ∀ n, P11550521065028380702.a n = A049084 (n + 1)

end A049084

/-! ## A049084.P1105831117833943063

`A026233(n+1)-A239968(n+1)`
-/

namespace A049084.P1105831117833943063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026233 (n + 1) - A239968 (n + 1)

end

end A049084.P1105831117833943063

namespace A049084

/-- `A026233(n+1)-A239968(n+1)` -/
def P1105831117833943063.Spec : Prop :=
  ∀ n, P1105831117833943063.a n = A049084 (n + 1)

end A049084

/-! ## A049084.P9630603264127112000

`A243056(n+1)-A243055(n+1)`
-/

namespace A049084.P9630603264127112000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243056 (n + 1) - A243055 (n + 1)

end

end A049084.P9630603264127112000

namespace A049084

/-- `A243056(n+1)-A243055(n+1)` -/
def P9630603264127112000.Spec : Prop :=
  ∀ n, P9630603264127112000.a n = A049084 (n + 1)

end A049084

/-! ## A049084.P9177141363070363261

`A003963(n+1)*A010051(n+1)`
-/

namespace A049084.P9177141363070363261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (n + 1) * A010051 (n + 1)

end

end A049084.P9177141363070363261

namespace A049084

/-- `A003963(n+1)*A010051(n+1)` -/
def P9177141363070363261.Spec : Prop :=
  ∀ n, P9177141363070363261.a n = A049084 (n + 1)

end A049084

/-! ## A049084.P8964868046790792427

`A010051(n+1)*A026233(n+1)`
-/

namespace A049084.P8964868046790792427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1) * A026233 (n + 1)

end

end A049084.P8964868046790792427

namespace A049084

/-- `A010051(n+1)*A026233(n+1)` -/
def P8964868046790792427.Spec : Prop :=
  ∀ n, P8964868046790792427.a n = A049084 (n + 1)

end A049084

/-! ## A049084.P10023205040361624825

`A010051(n+1)*A055396(n+1)`
-/

namespace A049084.P10023205040361624825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1) * A055396 (n + 1)

end

end A049084.P10023205040361624825

namespace A049084

/-- `A010051(n+1)*A055396(n+1)` -/
def P10023205040361624825.Spec : Prop :=
  ∀ n, P10023205040361624825.a n = A049084 (n + 1)

end A049084

/-! ## A049084.P16535433127433074285

`A010051(n+1)*A056239(n+1)`
-/

namespace A049084.P16535433127433074285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1) * A056239 (n + 1)

end

end A049084.P16535433127433074285

namespace A049084

/-- `A010051(n+1)*A056239(n+1)` -/
def P16535433127433074285.Spec : Prop :=
  ∀ n, P16535433127433074285.a n = A049084 (n + 1)

end A049084

/-! ## A049084.P12657552437020380270

`A010051(n+1)*A058933(n+1)`
-/

namespace A049084.P12657552437020380270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1) * A058933 (n + 1)

end

end A049084.P12657552437020380270

namespace A049084

/-- `A010051(n+1)*A058933(n+1)` -/
def P12657552437020380270.Spec : Prop :=
  ∀ n, P12657552437020380270.a n = A049084 (n + 1)

end A049084

/-!
# A049085: Irregular table T(n,k) = maximal part of the k-th partition of n, when listed in Abramowitz-Stegun order (as in A036043).

The programs for A049085, there is no canonical definition to state claims against.
-/

/-! ## A049085.P15378799335337244486

`A061395(A185974(n))`
-/

namespace A049085.P15378799335337244486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A185974 n).toNat

end

end A049085.P15378799335337244486

/-! ## A049085.P1676106162736293521

`val(A036035(n), 2)`
-/

namespace A049085.P1676106162736293521
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A036035 n).toNat 2

end

end A049085.P1676106162736293521

/-! ## A049085.P11534148226416621264

`∑{e}[A334434(n), #]`
-/

namespace A049085.P11534148226416621264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334434 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A049085.P11534148226416621264

/-! ## A049085.P1565285321924171631

`A001222(A334434(n))`
-/

namespace A049085.P1565285321924171631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A334434 n).toNat

end

end A049085.P1565285321924171631

/-! ## A049085.P10190159505195143875

`A001222(and(-A036035(n), A036035(n)))`
-/

namespace A049085.P10190159505195143875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.land (-A036035 n) (A036035 n)).toNat

end

end A049085.P10190159505195143875

/-! ## A049085.P17571290901279688075

`A052409(and(-A036035(n), A036035(n)))`
-/

namespace A049085.P17571290901279688075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052409 (Int.land (-A036035 n) (A036035 n)).toNat

end

end A049085.P17571290901279688075

/-! ## A049085.P2685579199348476950

`A023416(and(-A036035(n), A036035(n)))`
-/

namespace A049085.P2685579199348476950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 (Int.land (-A036035 n) (A036035 n)).toNat

end

end A049085.P2685579199348476950

/-! ## A049085.P13759893027612729348

`A007814(gcd(A036035(n), A175747(n+1)))`
-/

namespace A049085.P13759893027612729348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (Int.gcd (A036035 n) (A175747 (n + 1)))

end

end A049085.P13759893027612729348

/-! ## A049085.P12002048429403516719

`A253555(gcd(A000079(n), A036035(n)))`
-/

namespace A049085.P12002048429403516719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253555 (Int.gcd (A000079 n) (A036035 n))

end

end A049085.P12002048429403516719

/-! ## A049085.P1748014189129989484

`A014081(xor(A036035(n)-1, A036035(n)))`
-/

namespace A049085.P1748014189129989484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014081 (Int.xor (A036035 n - 1) (A036035 n)).toNat

end

end A049085.P1748014189129989484

/-!
# A049086: Number of tilings of 4 X 3n rectangle by 1 X 3 rectangles. Rotations and reflections are considered distinct tilings.

The programs for A049086, the canonical program `A049086.P5863392886092032082` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A049086 has offset 0).

The definition of A049086 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A049086.P5863392886092032082

`5*a(n-1)-3*a(n-2)+a(n-3)` with `a(0)=1, a(1)=3, a(2)=13`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A049086

/-- `5*a(n-1)-3*a(n-2)+a(n-3)` -/
def P5863392886092032082.Spec : Prop :=
  ∀ n, P5863392886092032082.a n = A049086 n

theorem P5863392886092032082.correct : P5863392886092032082.Spec := by
  intro n
  simp only [A049086]

end A049086

/-! ## A049086.P7961802074749975018

`ogf((1-2x+x^2)/(1-5x+3x^2-x^3))`
-/

namespace A049086.P7961802074749975018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2, 1] [1, -5, 3, -1] n

end

end A049086.P7961802074749975018

namespace A049086

/-- `ogf((1-2x+x^2)/(1-5x+3x^2-x^3))` -/
def P7961802074749975018.Spec : Prop :=
  ∀ n, P7961802074749975018.a n = A049086 n

end A049086

/-! ## A049086.P17330856171019346833

`Δ[Δ[A200676(n+1)]]`
-/

namespace A049086.P17330856171019346833
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200676 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A049086.P17330856171019346833

namespace A049086

/-- `Δ[Δ[A200676(n+1)]]` -/
def P17330856171019346833.Spec : Prop :=
  ∀ n, P17330856171019346833.a n = A049086 n

end A049086

/-! ## A049086.P12589784935875422596

`∑[2*A200676(n+2)]+1`
-/

namespace A049086.P12589784935875422596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A200676 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A049086.P12589784935875422596

namespace A049086

/-- `∑[2*A200676(n+2)]+1` -/
def P12589784935875422596.Spec : Prop :=
  ∀ n, P12589784935875422596.a n = A049086 n

end A049086

/-! ## A049086.P17360510782827757551

`(A200676(n+5)-A200676(n+3))%A200676(n+4)`
-/

namespace A049086.P17360510782827757551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A200676 (n + 5) - A200676 (n + 3)) (A200676 (n + 4))

end

end A049086.P17360510782827757551

namespace A049086

/-- `(A200676(n+5)-A200676(n+3))%A200676(n+4)` -/
def P17360510782827757551.Spec : Prop :=
  ∀ n, P17360510782827757551.a n = A049086 n

end A049086

/-!
# A049087: Ceiling of mean distance between successive distinct prime divisors of n.

The programs for A049087, there is no canonical definition to state claims against.
-/

/-! ## A049087.P761513044034608931

`A178921(n+1)-A178921(A213224(n+1))`
-/

namespace A049087.P761513044034608931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178921 (n + 1) - A178921 (A213224 (n + 1)).toNat

end

end A049087.P761513044034608931

/-! ## A049087.P16391410071959981809

`A297173(A064554(n+1)²)+A242411(A302044(n+1))`
-/

namespace A049087.P16391410071959981809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297173 (A064554 (n + 1) ^ 2).toNat + A242411 (A302044 (n + 1)).toNat

end

end A049087.P16391410071959981809

/-! ## A049087.P11598046582389884343

`A240467(A178951(n+1))+A178921(n+1)`
-/

namespace A049087.P11598046582389884343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240467 (A178951 (n + 1)).toNat + A178921 (n + 1)

end

end A049087.P11598046582389884343

/-! ## A049087.P4106384718584769215

`A178921((n+1)^3^(n%2))`
-/

namespace A049087.P4106384718584769215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178921 ((n + 1) ^ 3 ^ (n % 2))

end

end A049087.P4106384718584769215

/-! ## A049087.P15387907131958095661

`A178921(∏{p}[n+1, #]^∑{e}[n+1, #])`
-/

namespace A049087.P15387907131958095661
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178921 ((∏ p ∈ Nat.primeFactors (f1 n), p) ^ (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p))

end

end A049087.P15387907131958095661

/-!
# A049088: Number of n X n matrices with nonnegative integer entries and every row and column sum <= 2.

The programs for A049088, there is no canonical definition to state claims against.
-/

/-! ## A049088.P279893611227925248

`A131235(∑[4*n])`
-/

namespace A049088.P279893611227925248
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131235 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A049088.P279893611227925248

/-! ## A049088.P3731153109541614623

`record[A131235(floor((lcm(4, n)/4)²/2))]`
-/

namespace A049088.P3731153109541614623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131235 ⌊((Nat.lcm 4 n : ℚ) / 4) ^ 2 / 2⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A049088.P3731153109541614623

/-! ## A049088.P11513806229414093999

`record[A131235(A092530(n))]`
-/

namespace A049088.P11513806229414093999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131235 (A092530 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A049088.P11513806229414093999

/-!
# A049089: Array read by antidiagonals: T(1,j)=2j+2 i>=1, T(i,1)=2i+2 i>=1, T(i,j)=T(i-1,j-1)+T(i-1,j).

The programs for A049089, there is no canonical definition to state claims against.
-/

/-! ## A049089.P18280704328582099826

`2*A188553(n+1)`
-/

namespace A049089.P18280704328582099826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A188553 (n + 1)

end

end A049089.P18280704328582099826

/-! ## A049089.P9962445164655426520

`A188553(n+1)+A188553(-xor(n, -1))`
-/

namespace A049089.P9962445164655426520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188553 (n + 1) + A188553 (-Int.xor (n : ℤ) (-1)).toNat

end

end A049089.P9962445164655426520

/-! ## A049089.P9492358569262247945

`A188553(n+1)+A188553(Δ[n²]-n)`
-/

namespace A049089.P9492358569262247945
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188553 (n + 1) + A188553 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat

end

end A049089.P9492358569262247945

/-! ## A049089.P3415019070294996613

`A188553(n+1)+A188553(n+1)/A033999(n+1)²`
-/

namespace A049089.P3415019070294996613
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A188553 (n + 1) : ℚ) + (A188553 (n + 1) : ℚ) / (A033999 (n + 1) ^ 2 : ℚ)

end

end A049089.P3415019070294996613

/-! ## A049089.P12146857861786428664

`2*A210489(comp[∑[n]])`
-/

namespace A049089.P12146857861786428664
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A210489 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A049089.P12146857861786428664

/-! ## A049089.P6991341398843624753

`A210489(A014132(n+1))+A188553(n+1)`
-/

namespace A049089.P6991341398843624753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210489 (A014132 (n + 1)).toNat + A188553 (n + 1)

end

end A049089.P6991341398843624753

/-! ## A049089.P15399187760824476917

`2*A104732(A061579(n)+A003057(n+2))`
-/

namespace A049089.P15399187760824476917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A104732 (A061579 n + A003057 (n + 2)).toNat

end

end A049089.P15399187760824476917

/-! ## A049089.P17764831842137767892

`2*A104732(A038722(n+1)+A002024(n+1))`
-/

namespace A049089.P17764831842137767892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A104732 (A038722 (n + 1) + A002024 (n + 1)).toNat

end

end A049089.P17764831842137767892

/-! ## A049089.P3877549846051008998

`A188553(n+1)-A188553(n+1)/A260196(A016897(n))`
-/

namespace A049089.P3877549846051008998
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A188553 (n + 1) : ℚ) - (A188553 (n + 1) : ℚ) / (A260196 (A016897 n).toNat : ℚ)

end

end A049089.P3877549846051008998

/-! ## A049089.P13952926754484451254

`A188553(n+1)+A188553(n+1)%A302878(n+1)`
-/

namespace A049089.P13952926754484451254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188553 (n + 1) + Int.tmod (A188553 (n + 1)) (A302878 (n + 1))

end

end A049089.P13952926754484451254

/-! ## A049089.P7543467014486345302

`A004277(A188553(n+1))`
-/

namespace A049089.P7543467014486345302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A188553 (n + 1)).toNat

end

end A049089.P7543467014486345302

/-! ## A049089.P7605915117039187161

`A004275(A188553(n+1)+1)`
-/

namespace A049089.P7605915117039187161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A188553 (n + 1) + 1).toNat

end

end A049089.P7605915117039187161

/-!
# A049090: Primes for which A049076 >= 4.

The programs for A049090, the canonical program `A049090.P1203215937391654981` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A049090 has offset 1).

The definition of A049090 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006450, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A049090.P1203215937391654981

`A006450(A006450(n+1))`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A049090

/-- `A006450(A006450(n+1))` -/
def P1203215937391654981.Spec : Prop :=
  ∀ n, P1203215937391654981.a n = A049090 (n + 1)

theorem P1203215937391654981.correct : P1203215937391654981.Spec := by
  intro n
  simp only [A049090, Nat.add_sub_cancel]

end A049090

/-! ## A049090.P5458695936431175568

`A000040(A038580(n+1))`
-/

namespace A049090.P5458695936431175568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A038580 (n + 1)).toNat

end

end A049090.P5458695936431175568

namespace A049090

/-- `A000040(A038580(n+1))` -/
def P5458695936431175568.Spec : Prop :=
  ∀ n, P5458695936431175568.a n = A049090 (n + 1)

end A049090

/-! ## A049090.P5793122525895028008

`∪[A049080(n+1), A049203(n+1)]`
-/

namespace A049090.P5793122525895028008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049080 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049203 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A049090.P5793122525895028008

namespace A049090

/-- `∪[A049080(n+1), A049203(n+1)]` -/
def P5793122525895028008.Spec : Prop :=
  ∀ n, (P5793122525895028008.a n : ℤ) = A049090 (n + 1)

end A049090

/-! ## A049090.P8392228951047639503

`∪[A049203(n+1), A333244(n+1)]`
-/

namespace A049090.P8392228951047639503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049203 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333244 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A049090.P8392228951047639503

namespace A049090

/-- `∪[A049203(n+1), A333244(n+1)]` -/
def P8392228951047639503.Spec : Prop :=
  ∀ n, (P8392228951047639503.a n : ℤ) = A049090 (n + 1)

end A049090

/-! ## A049090.P6928497690280445172

`A038580(eq[3, ∏{e}[n, 3*#]])`
-/

namespace A049090.P6928497690280445172
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), 3 * Nat.factorization (f3 n) p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038580 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A049090.P6928497690280445172

namespace A049090

/-- `A038580(eq[3, ∏{e}[n, 3*#]])` -/
def P6928497690280445172.Spec : Prop :=
  ∀ n, P6928497690280445172.a n = A049090 (n + 1)

end A049090

/-! ## A049090.P2427558387729830758

`A038580(eq[1, ∏{e}[n, #+1]-1])`
-/

namespace A049090.P2427558387729830758
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f3 n), (Nat.factorization (f3 n) p + 1) : ℕ) : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038580 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A049090.P2427558387729830758

namespace A049090

/-- `A038580(eq[1, ∏{e}[n, #+1]-1])` -/
def P2427558387729830758.Spec : Prop :=
  ∀ n, P2427558387729830758.a n = A049090 (n + 1)

end A049090

/-! ## A049090.P1648178001976083448

`A038580(eq[2, ∑{d}[n, 2%(#+1)]])`
-/

namespace A049090.P1648178001976083448
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f3 n), 2 % (d + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038580 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A049090.P1648178001976083448

namespace A049090

/-- `A038580(eq[2, ∑{d}[n, 2%(#+1)]])` -/
def P1648178001976083448.Spec : Prop :=
  ∀ n, P1648178001976083448.a n = A049090 (n + 1)

end A049090

/-! ## A049090.P17123427252186725278

`A038580(Δ[A007504(n)])`
-/

namespace A049090.P17123427252186725278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038580 (f1 (n + 1) - f1 n).toNat

end

end A049090.P17123427252186725278

namespace A049090

/-- `A038580(Δ[A007504(n)])` -/
def P17123427252186725278.Spec : Prop :=
  ∀ n, P17123427252186725278.a n = A049090 (n + 1)

end A049090

/-! ## A049090.P11548699092637267390

`A038580(A008578(n+2))`
-/

namespace A049090.P11548699092637267390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038580 (A008578 (n + 2)).toNat

end

end A049090.P11548699092637267390

namespace A049090

/-- `A038580(A008578(n+2))` -/
def P11548699092637267390.Spec : Prop :=
  ∀ n, P11548699092637267390.a n = A049090 (n + 1)

end A049090

/-! ## A049090.P1743947984333451620

`A038580(A182986(n+2))`
-/

namespace A049090.P1743947984333451620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038580 (A182986 (n + 2)).toNat

end

end A049090.P1743947984333451620

namespace A049090

/-- `A038580(A182986(n+2))` -/
def P1743947984333451620.Spec : Prop :=
  ∀ n, P1743947984333451620.a n = A049090 (n + 1)

end A049090

/-! ## A049090.P906094796321256337

`A038580(record[A006530(n+2)])`
-/

namespace A049090.P906094796321256337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038580 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A049090.P906094796321256337

namespace A049090

/-- `A038580(record[A006530(n+2)])` -/
def P906094796321256337.Spec : Prop :=
  ∀ n, P906094796321256337.a n = A049090 (n + 1)

end A049090

/-! ## A049090.P12912874956045767858

`A038580(record[A014963(n+2)])`
-/

namespace A049090.P12912874956045767858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038580 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A049090.P12912874956045767858

namespace A049090

/-- `A038580(record[A014963(n+2)])` -/
def P12912874956045767858.Spec : Prop :=
  ∀ n, P12912874956045767858.a n = A049090 (n + 1)

end A049090

/-! ## A049090.P11426078499064482436

`A038580(record[A020639(n+2)])`
-/

namespace A049090.P11426078499064482436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038580 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A049090.P11426078499064482436

namespace A049090

/-- `A038580(record[A020639(n+2)])` -/
def P11426078499064482436.Spec : Prop :=
  ∀ n, P11426078499064482436.a n = A049090 (n + 1)

end A049090

/-! ## A049090.P16375856738665983060

`A038580(A040976(n+1)+2)`
-/

namespace A049090.P16375856738665983060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038580 (A040976 (n + 1) + 2).toNat

end

end A049090.P16375856738665983060

namespace A049090

/-- `A038580(A040976(n+1)+2)` -/
def P16375856738665983060.Spec : Prop :=
  ∀ n, P16375856738665983060.a n = A049090 (n + 1)

end A049090

/-! ## A049090.P8430980349443082984

`A038580(A100484(n+1)/2)`
-/

namespace A049090.P8430980349443082984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038580 (SequenceMachineLib.roundAway ((A100484 (n + 1) : ℚ) / 2)).toNat

end

end A049090.P8430980349443082984

namespace A049090

/-- `A038580(A100484(n+1)/2)` -/
def P8430980349443082984.Spec : Prop :=
  ∀ n, P8430980349443082984.a n = A049090 (n + 1)

end A049090

/-! ## A049090.P4000796889414971967

`A038580(p?[n*A049076(n+1)])`
-/

namespace A049090.P4000796889414971967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A049076 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038580 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A049090.P4000796889414971967

namespace A049090

/-- `A038580(p?[n*A049076(n+1)])` -/
def P4000796889414971967.Spec : Prop :=
  ∀ n, P4000796889414971967.a n = A049090 (n + 1)

end A049090

/-! ## A049090.P16592975156848634914

`A038580(eq[2, A000005(n+1)]+1)`
-/

namespace A049090.P16592975156848634914
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038580 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A049090.P16592975156848634914

namespace A049090

/-- `A038580(eq[2, A000005(n+1)]+1)` -/
def P16592975156848634914.Spec : Prop :=
  ∀ n, P16592975156848634914.a n = A049090 (n + 1)

end A049090

/-! ## A049090.P11845990124685389699

`A038580(A014689(n+1)+1+n)`
-/

namespace A049090.P11845990124685389699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038580 (A014689 (n + 1) + 1 + (n : ℤ)).toNat

end

end A049090.P11845990124685389699

namespace A049090

/-- `A038580(A014689(n+1)+1+n)` -/
def P11845990124685389699.Spec : Prop :=
  ∀ n, P11845990124685389699.a n = A049090 (n + 1)

end A049090

/-! ## A049090.P16893193096930483970

`A038580(A033286(n+1)/(n+1))`
-/

namespace A049090.P16893193096930483970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038580 (SequenceMachineLib.roundAway ((A033286 (n + 1) : ℚ) / (n + 1 : ℚ))).toNat

end

end A049090.P16893193096930483970

namespace A049090

/-- `A038580(A033286(n+1)/(n+1))` -/
def P16893193096930483970.Spec : Prop :=
  ∀ n, P16893193096930483970.a n = A049090 (n + 1)

end A049090

/-! ## A049090.P2984684771046356559

`A038580(A007504(n+1)-A007504(n))`
-/

namespace A049090.P2984684771046356559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038580 (A007504 (n + 1) - A007504 n).toNat

end

end A049090.P2984684771046356559

namespace A049090

/-- `A038580(A007504(n+1)-A007504(n))` -/
def P2984684771046356559.Spec : Prop :=
  ∀ n, P2984684771046356559.a n = A049090 (n + 1)

end A049090

/-!
# A049092: Primes p such that p-1 is not squarefree.

The programs for A049092, the canonical program `A049092.P669335479257422354` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A049092 has offset 1).

The definition of A049092 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A049092.P6463768766535365827

`A145199(n+1)+1`
-/

namespace A049092.P6463768766535365827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145199 (n + 1) + 1

end

end A049092.P6463768766535365827

namespace A049092

/-- `A145199(n+1)+1` -/
def P6463768766535365827.Spec : Prop :=
  ∀ n, P6463768766535365827.a n = A049092 (n + 1)

end A049092

/-! ## A049092.P669335479257422354

`p?[A013929(n+1)+1]`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A049092

/-- `p?[A013929(n+1)+1]` -/
def P669335479257422354.Spec : Prop :=
  ∀ n, P669335479257422354.a n = A049092 (n + 1)

theorem P669335479257422354.correct : P669335479257422354.Spec := by
  intro n
  simp only [A049092, Nat.add_sub_cancel]

end A049092

/-! ## A049092.P2828070396675112198

`A065091(lt[1, A240473(n+1)])`
-/

namespace A049092.P2828070396675112198
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240473 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A049092.P2828070396675112198

namespace A049092

/-- `A065091(lt[1, A240473(n+1)])` -/
def P2828070396675112198.Spec : Prop :=
  ∀ n, P2828070396675112198.a n = A049092 (n + 1)

end A049092

/-! ## A049092.P9742807990122733918

`p?[gcd(n+2, A008683(n+1))]`
-/

namespace A049092.P9742807990122733918
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 2 : ℤ) (A008683 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A049092.P9742807990122733918

namespace A049092

/-- `p?[gcd(n+2, A008683(n+1))]` -/
def P9742807990122733918.Spec : Prop :=
  ∀ n, (P9742807990122733918.a n : ℤ) = A049092 (n + 1)

end A049092

/-! ## A049092.P11785037667162149840

`p?[(n+2)*(A008966(n+1)+1)]`
-/

namespace A049092.P11785037667162149840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * (A008966 (n + 1) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A049092.P11785037667162149840

namespace A049092

/-- `p?[(n+2)*(A008966(n+1)+1)]` -/
def P11785037667162149840.Spec : Prop :=
  ∀ n, P11785037667162149840.a n = A049092 (n + 1)

end A049092

/-! ## A049092.P3690942010810109174

`record[A006530(A013929(n+1)+1)]`
-/

namespace A049092.P3690942010810109174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A013929 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A049092.P3690942010810109174

namespace A049092

/-- `record[A006530(A013929(n+1)+1)]` -/
def P3690942010810109174.Spec : Prop :=
  ∀ n, P3690942010810109174.a n = A049092 (n + 1)

end A049092

/-! ## A049092.P4431477540133577337

`record[A020639(A013929(n+1)+1)]`
-/

namespace A049092.P4431477540133577337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A013929 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A049092.P4431477540133577337

namespace A049092

/-- `record[A020639(A013929(n+1)+1)]` -/
def P4431477540133577337.Spec : Prop :=
  ∀ n, P4431477540133577337.a n = A049092 (n + 1)

end A049092

/-! ## A049092.P7851155705536060514

`p?[2*n+1-A008683(A000010(2*n+1))]`
-/

namespace A049092.P7851155705536060514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) - A008683 (A000010 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A049092.P7851155705536060514

namespace A049092

/-- `p?[2*n+1-A008683(A000010(2*n+1))]` -/
def P7851155705536060514.Spec : Prop :=
  ∀ n, P7851155705536060514.a n = A049092 (n + 1)

end A049092

/-! ## A049092.P5013801720687686358

`p?[A105570(n)+1]`
-/

namespace A049092.P5013801720687686358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105570 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A049092.P5013801720687686358

namespace A049092

/-- `p?[A105570(n)+1]` -/
def P5013801720687686358.Spec : Prop :=
  ∀ n, P5013801720687686358.a n = A049092 (n + 1)

end A049092

/-! ## A049092.P3643198180093010860

`p?[or(1, n*A087049(n))]`
-/

namespace A049092.P3643198180093010860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ((n : ℤ) * A087049 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A049092.P3643198180093010860

namespace A049092

/-- `p?[or(1, n*A087049(n))]` -/
def P3643198180093010860.Spec : Prop :=
  ∀ n, P3643198180093010860.a n = A049092 (n + 1)

end A049092

/-! ## A049092.P9854898547369220222

`eq[A000010(n+1), A105570(n)]+1`
-/

namespace A049092.P9854898547369220222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105570 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A049092.P9854898547369220222

namespace A049092

/-- `eq[A000010(n+1), A105570(n)]+1` -/
def P9854898547369220222.Spec : Prop :=
  ∀ n, (P9854898547369220222.a n : ℤ) = A049092 (n + 1)

end A049092

/-! ## A049092.P6664310444626142781

`eq[A003958(n+1), A105570(n)]+1`
-/

namespace A049092.P6664310444626142781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003958 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105570 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A049092.P6664310444626142781

namespace A049092

/-- `eq[A003958(n+1), A105570(n)]+1` -/
def P6664310444626142781.Spec : Prop :=
  ∀ n, (P6664310444626142781.a n : ℤ) = A049092 (n + 1)

end A049092

/-! ## A049092.P10979329530061918273

`eq[A057237(n+1), A105570(n)]+1`
-/

namespace A049092.P10979329530061918273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057237 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105570 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A049092.P10979329530061918273

namespace A049092

/-- `eq[A057237(n+1), A105570(n)]+1` -/
def P10979329530061918273.Spec : Prop :=
  ∀ n, (P10979329530061918273.a n : ℤ) = A049092 (n + 1)

end A049092

/-! ## A049092.P15363873413547610970

`eq[A008683(n+1)+2, A000005(n+2)]+2`
-/

namespace A049092.P15363873413547610970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2

end

end A049092.P15363873413547610970

namespace A049092

/-- `eq[A008683(n+1)+2, A000005(n+2)]+2` -/
def P15363873413547610970.Spec : Prop :=
  ∀ n, (P15363873413547610970.a n : ℤ) = A049092 (n + 1)

end A049092

/-! ## A049092.P15621554132570855860

`eq[n+1, A000010(A008683(n+1)+n+2)]+2`
-/

namespace A049092.P15621554132570855860
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A008683 (n + 1) + (n + 2 : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A049092.P15621554132570855860

namespace A049092

/-- `eq[n+1, A000010(A008683(n+1)+n+2)]+2` -/
def P15621554132570855860.Spec : Prop :=
  ∀ n, (P15621554132570855860.a n : ℤ) = A049092 (n + 1)

end A049092

/-! ## A049092.P7947553668947255904

`eq[A008683(n+1)+n+2, A006530(n+2)]+2`
-/

namespace A049092.P7947553668947255904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1) + (n + 2 : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2

end

end A049092.P7947553668947255904

namespace A049092

/-- `eq[A008683(n+1)+n+2, A006530(n+2)]+2` -/
def P7947553668947255904.Spec : Prop :=
  ∀ n, (P7947553668947255904.a n : ℤ) = A049092 (n + 1)

end A049092

/-! ## A049092.P8516592885001206955

`eq[A008683(n+1)+A000203(n+2), n+3]+2`
-/

namespace A049092.P8516592885001206955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1) + A000203 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℤ)) n + 2

end

end A049092.P8516592885001206955

namespace A049092

/-- `eq[A008683(n+1)+A000203(n+2), n+3]+2` -/
def P8516592885001206955.Spec : Prop :=
  ∀ n, (P8516592885001206955.a n : ℤ) = A049092 (n + 1)

end A049092

/-! ## A049092.P6436595409413553759

`p?[A072284(n+1)]`
-/

namespace A049092.P6436595409413553759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072284 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A049092.P6436595409413553759

namespace A049092

/-- `p?[A072284(n+1)]` -/
def P6436595409413553759.Spec : Prop :=
  ∀ n, P6436595409413553759.a n = A049092 (n + 1)

end A049092

/-! ## A049092.P6880634859236049401

`p?[comp[A008966(n+1)+n]+1]`
-/

namespace A049092.P6880634859236049401
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008966 (n + 1) + (n : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A049092.P6880634859236049401

namespace A049092

/-- `p?[comp[A008966(n+1)+n]+1]` -/
def P6880634859236049401.Spec : Prop :=
  ∀ n, (P6880634859236049401.a n : ℤ) = A049092 (n + 1)

end A049092

/-! ## A049092.P550263309575499051

`filter[A072284(n+1), A010051(#)]`
-/

namespace A049092.P550263309575499051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072284 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A049092.P550263309575499051

namespace A049092

/-- `filter[A072284(n+1), A010051(#)]` -/
def P550263309575499051.Spec : Prop :=
  ∀ n, P550263309575499051.a n = A049092 (n + 1)

end A049092

/-!
# A049093: Numbers n such that 2^n - 1 is squarefree.

The programs for A049093, the canonical program `A049093.P5208280421691418711` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A049093 has offset 1).

The definition of A049093 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 910 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A049093.P5208280421691418711

`eq[1, A272334(n+1)]+1`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A049093

/-- `eq[1, A272334(n+1)]+1` -/
def P5208280421691418711.Spec : Prop :=
  ∀ n, (P5208280421691418711.a n : ℤ) = A049093 (n + 1)

theorem P5208280421691418711.correct : P5208280421691418711.Spec := by
  intro n
  simp only [A049093, Nat.add_sub_cancel]

end A049093

/-! ## A049093.P975733809823678377

`comp[A049094(n+1)-1]+1`
-/

namespace A049093.P975733809823678377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049094 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A049093.P975733809823678377

namespace A049093

/-- `comp[A049094(n+1)-1]+1` -/
def P975733809823678377.Spec : Prop :=
  ∀ n, (P975733809823678377.a n : ℤ) = A049093 (n + 1)

end A049093

/-! ## A049093.P14354116935186557830

`lt[gcd(n+1, ∑[2^n])², 2]+1`
-/

namespace A049093.P14354116935186557830
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (n + 1) (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n + 1

end

end A049093.P14354116935186557830

namespace A049093

/-- `lt[gcd(n+1, ∑[2^n])², 2]+1` -/
def P14354116935186557830.Spec : Prop :=
  ∀ n, (P14354116935186557830.a n : ℤ) = A049093 (n + 1)

end A049093

/-! ## A049093.P1135233669206062191

`eq[1, gcd(n, A000225(n))]`
-/

namespace A049093.P1135233669206062191
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A000225 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A049093.P1135233669206062191

namespace A049093

/-- `eq[1, gcd(n, A000225(n))]` -/
def P1135233669206062191.Spec : Prop :=
  ∀ n, (P1135233669206062191.a n : ℤ) = A049093 (n + 1)

end A049093

/-! ## A049093.P15192674617290916112

`eq[1, gcd(n², ∑[A131577(n)])]`
-/

namespace A049093.P15192674617290916112
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n ^ 2 : ℤ) (∑ j ∈ Finset.range (n + 1), f3 j)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A049093.P15192674617290916112

namespace A049093

/-- `eq[1, gcd(n², ∑[A131577(n)])]` -/
def P15192674617290916112.Spec : Prop :=
  ∀ n, (P15192674617290916112.a n : ℤ) = A049093 (n + 1)

end A049093

/-! ## A049093.P10924736712311431060

`record[(n+1)/gcd(n+1, ∑[A000079(n)])]`
-/

namespace A049093.P10924736712311431060
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Int.gcd (n + 1 : ℤ) (∑ j ∈ Finset.range (n + 1), f2 j) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A049093.P10924736712311431060

namespace A049093

/-- `record[(n+1)/gcd(n+1, ∑[A000079(n)])]` -/
def P10924736712311431060.Spec : Prop :=
  ∀ n, P10924736712311431060.a n = (A049093 (n + 1) : ℚ)

end A049093

/-! ## A049093.P2539687390234517287

`lt[A000225(n), A090633(n+1)]+1`
-/

namespace A049093.P2539687390234517287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090633 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A049093.P2539687390234517287

namespace A049093

/-- `lt[A000225(n), A090633(n+1)]+1` -/
def P2539687390234517287.Spec : Prop :=
  ∀ n, (P2539687390234517287.a n : ℤ) = A049093 (n + 1)

end A049093

/-! ## A049093.P8936764965797818143

`eq[2, gcd(2*n, A095121(n))]`
-/

namespace A049093.P8936764965797818143
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (2 * n : ℤ) (A095121 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A049093.P8936764965797818143

namespace A049093

/-- `eq[2, gcd(2*n, A095121(n))]` -/
def P8936764965797818143.Spec : Prop :=
  ∀ n, (P8936764965797818143.a n : ℤ) = A049093 (n + 1)

end A049093

/-! ## A049093.P10809498165116268358

`eq[A036289(n), A131135(n)]`
-/

namespace A049093.P10809498165116268358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036289 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131135 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A049093.P10809498165116268358

namespace A049093

/-- `eq[A036289(n), A131135(n)]` -/
def P10809498165116268358.Spec : Prop :=
  ∀ n, (P10809498165116268358.a n : ℤ) = A049093 (n + 1)

end A049093

/-! ## A049093.P9956495465940684503

`record[A004736(n+1)/A014491(A004736(n+1))]`
-/

namespace A049093.P9956495465940684503
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004736 (n + 1) : ℚ) / (A014491 (A004736 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A049093.P9956495465940684503

namespace A049093

/-- `record[A004736(n+1)/A014491(A004736(n+1))]` -/
def P9956495465940684503.Spec : Prop :=
  ∀ n, P9956495465940684503.a n = (A049093 (n + 1) : ℚ)

end A049093

/-!
# A049094: Numbers m such that 2^m - 1 is divisible by a square > 1.

The programs for A049094, the canonical program `A049094.P18112774684826038960` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A049094 has offset 1).

The definition of A049094 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 296 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A049094.P13391578012694858392

`lt[1, A272334(n+1)]+1`
-/

namespace A049094.P13391578012694858392
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272334 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A049094.P13391578012694858392

namespace A049094

/-- `lt[1, A272334(n+1)]+1` -/
def P13391578012694858392.Spec : Prop :=
  ∀ n, (P13391578012694858392.a n : ℤ) = A049094 (n + 1)

end A049094

/-! ## A049094.P18112774684826038960

`comp[A049093(n+1)-1]+1`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A049094

/-- `comp[A049093(n+1)-1]+1` -/
def P18112774684826038960.Spec : Prop :=
  ∀ n, (P18112774684826038960.a n : ℤ) = A049094 (n + 1)

theorem P18112774684826038960.correct : P18112774684826038960.Spec := by
  intro n
  simp only [A049094, Nat.add_sub_cancel]

end A049094

/-! ## A049094.P12988148218089953096

`lt[1, A272334(A028310(n))]`
-/

namespace A049094.P12988148218089953096
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272334 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A049094.P12988148218089953096

namespace A049094

/-- `lt[1, A272334(A028310(n))]` -/
def P12988148218089953096.Spec : Prop :=
  ∀ n, (P12988148218089953096.a n : ℤ) = A049094 (n + 1)

end A049094

/-! ## A049094.P5350397468352922875

`A020725(lt[1, A272334(n+1)])`
-/

namespace A049094.P5350397468352922875
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272334 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A049094.P5350397468352922875

namespace A049094

/-- `A020725(lt[1, A272334(n+1)])` -/
def P5350397468352922875.Spec : Prop :=
  ∀ n, P5350397468352922875.a n = A049094 (n + 1)

end A049094

/-! ## A049094.P10242889466473043682

`A153152(lt[1, A272334(n+1)])`
-/

namespace A049094.P10242889466473043682
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272334 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A049094.P10242889466473043682

namespace A049094

/-- `A153152(lt[1, A272334(n+1)])` -/
def P10242889466473043682.Spec : Prop :=
  ∀ n, P10242889466473043682.a n = A049094 (n + 1)

end A049094

/-! ## A049094.P2008401426223964692

`lt[A046800(n), A046051(A028310(n))]`
-/

namespace A049094.P2008401426223964692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046800 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046051 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A049094.P2008401426223964692

namespace A049094

/-- `lt[A046800(n), A046051(A028310(n))]` -/
def P2008401426223964692.Spec : Prop :=
  ∀ n, (P2008401426223964692.a n : ℤ) = A049094 (n + 1)

end A049094

/-! ## A049094.P13836553822237135335

`lt[1, A272334(A233583(n+1))]`
-/

namespace A049094.P13836553822237135335
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272334 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A049094.P13836553822237135335

namespace A049094

/-- `lt[1, A272334(A233583(n+1))]` -/
def P13836553822237135335.Spec : Prop :=
  ∀ n, (P13836553822237135335.a n : ℤ) = A049094 (n + 1)

end A049094

/-! ## A049094.P6773764079809405549

`lt[1, gcd(n, 2^n-1)]`
-/

namespace A049094.P6773764079809405549
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) ((2 ^ n : ℤ) - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A049094.P6773764079809405549

namespace A049094

/-- `lt[1, gcd(n, 2^n-1)]` -/
def P6773764079809405549.Spec : Prop :=
  ∀ n, (P6773764079809405549.a n : ℤ) = A049094 (n + 1)

end A049094

/-! ## A049094.P13416633531674556291

`lt[2, gcd(n+1, A134067(n))]+1`
-/

namespace A049094.P13416633531674556291
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A134067 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A049094.P13416633531674556291

namespace A049094

/-- `lt[2, gcd(n+1, A134067(n))]+1` -/
def P13416633531674556291.Spec : Prop :=
  ∀ n, (P13416633531674556291.a n : ℤ) = A049094 (n + 1)

end A049094

/-! ## A049094.P7654413233666862255

`lt[A090633(n+1), A000225(n)]+1`
-/

namespace A049094.P7654413233666862255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090633 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A049094.P7654413233666862255

namespace A049094

/-- `lt[A090633(n+1), A000225(n)]+1` -/
def P7654413233666862255.Spec : Prop :=
  ∀ n, (P7654413233666862255.a n : ℤ) = A049094 (n + 1)

end A049094

/-!
# A049095: Numbers k such that 2^k + 1 is squarefree.

The programs for A049095, the canonical program `A049095.P12714944004291682498` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A049095 has offset 1).

The definition of A049095 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A049095.P12714944004291682498

`comp[A049096(n+1)]`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A049095

/-- `comp[A049096(n+1)]` -/
def P12714944004291682498.Spec : Prop :=
  ∀ n, (P12714944004291682498.a n : ℤ) = A049095 (n + 1)

theorem P12714944004291682498.correct : P12714944004291682498.Spec := by
  intro n
  simp only [A049095, Nat.add_sub_cancel]

end A049095

/-! ## A049095.P9492110357137889742

`eq[2, and(2, A278242(n))]`
-/

namespace A049095.P9492110357137889742
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 2 (A278242 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A049095.P9492110357137889742

namespace A049095

/-- `eq[2, and(2, A278242(n))]` -/
def P9492110357137889742.Spec : Prop :=
  ∀ n, (P9492110357137889742.a n : ℤ) = A049095 (n + 1)

end A049095

/-! ## A049095.P8668926284198288460

`log2(record[A069111(n)-1])`
-/

namespace A049095.P8668926284198288460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069111 n - 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℝ)

end

end A049095.P8668926284198288460

namespace A049095

/-- `log2(record[A069111(n)-1])` -/
def P8668926284198288460.Spec : Prop :=
  ∀ n, P8668926284198288460.a n = (A049095 (n + 1) : ℝ)

end A049095

/-! ## A049095.P1511433277846600008

`eq[A000051(n), A069111(n)]`
-/

namespace A049095.P1511433277846600008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069111 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A049095.P1511433277846600008

namespace A049095

/-- `eq[A000051(n), A069111(n)]` -/
def P1511433277846600008.Spec : Prop :=
  ∀ n, (P1511433277846600008.a n : ℤ) = A049095 (n + 1)

end A049095

/-! ## A049095.P3181141032382552958

`lt[A365043(A069226(n)), 2]`
-/

namespace A049095.P3181141032382552958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365043 (A069226 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A049095.P3181141032382552958

namespace A049095

/-- `lt[A365043(A069226(n)), 2]` -/
def P3181141032382552958.Spec : Prop :=
  ∀ n, (P3181141032382552958.a n : ℤ) = A049095 (n + 1)

end A049095

/-! ## A049095.P2450389081633281520

`eq[A054977(n²), A069226(n)]`
-/

namespace A049095.P2450389081633281520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 (n ^ 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069226 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A049095.P2450389081633281520

namespace A049095

/-- `eq[A054977(n²), A069226(n)]` -/
def P2450389081633281520.Spec : Prop :=
  ∀ n, (P2450389081633281520.a n : ℤ) = A049095 (n + 1)

end A049095

/-! ## A049095.P3263712300336902667

`lt[A373125(n), 2]`
-/

namespace A049095.P3263712300336902667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373125 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A049095.P3263712300336902667

namespace A049095

/-- `lt[A373125(n), 2]` -/
def P3263712300336902667.Spec : Prop :=
  ∀ n, (P3263712300336902667.a n : ℤ) = A049095 (n + 1)

end A049095

/-! ## A049095.P3879742244258117735

`eq[A157928(n), A373125(n)]`
-/

namespace A049095.P3879742244258117735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157928 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373125 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A049095.P3879742244258117735

namespace A049095

/-- `eq[A157928(n), A373125(n)]` -/
def P3879742244258117735.Spec : Prop :=
  ∀ n, (P3879742244258117735.a n : ℤ) = A049095 (n + 1)

end A049095

/-!
# A049096: Numbers k such that 2^k + 1 is divisible by a square > 1.

The programs for A049096, the canonical program `A049096.P16175576370623307100` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A049096 has offset 1).

The definition of A049096 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 269 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A049096.P3885496687437476969

`eq[0, A278242(n)%4]`
-/

namespace A049096.P3885496687437476969
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A278242 n) 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A049096.P3885496687437476969

namespace A049096

/-- `eq[0, A278242(n)%4]` -/
def P3885496687437476969.Spec : Prop :=
  ∀ n, (P3885496687437476969.a n : ℤ) = A049096 (n + 1)

end A049096

/-! ## A049096.P16175576370623307100

`lt[A046799(n), log2(A046798(n))]`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A049096

/-- `lt[A046799(n), log2(A046798(n))]` -/
def P16175576370623307100.Spec : Prop :=
  ∀ n, (P16175576370623307100.a n : ℤ) = A049096 (n + 1)

theorem P16175576370623307100.correct : P16175576370623307100.Spec := by
  intro n
  simp only [A049096, Nat.add_sub_cancel]

end A049096

/-! ## A049096.P5010971284140483435

`lt[A046799(n), A054992(A028310(n))]`
-/

namespace A049096.P5010971284140483435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046799 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054992 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A049096.P5010971284140483435

namespace A049096

/-- `lt[A046799(n), A054992(A028310(n))]` -/
def P5010971284140483435.Spec : Prop :=
  ∀ n, (P5010971284140483435.a n : ℤ) = A049096 (n + 1)

end A049096

/-! ## A049096.P7984941826414473865

`lt[A046799(n), A054992(A000007(n)+n)]`
-/

namespace A049096.P7984941826414473865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046799 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054992 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A049096.P7984941826414473865

namespace A049096

/-- `lt[A046799(n), A054992(A000007(n)+n)]` -/
def P7984941826414473865.Spec : Prop :=
  ∀ n, (P7984941826414473865.a n : ℤ) = A049096 (n + 1)

end A049096

/-! ## A049096.P15417141155629901733

`lt[A046799(n), A054992(A233583(n+1))]`
-/

namespace A049096.P15417141155629901733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046799 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054992 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A049096.P15417141155629901733

namespace A049096

/-- `lt[A046799(n), A054992(A233583(n+1))]` -/
def P15417141155629901733.Spec : Prop :=
  ∀ n, (P15417141155629901733.a n : ℤ) = A049096 (n + 1)

end A049096

/-! ## A049096.P8674372448976882799

`lt[A046799(n), A342655(A001747(n+1))]`
-/

namespace A049096.P8674372448976882799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046799 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342655 (A001747 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A049096.P8674372448976882799

namespace A049096

/-- `lt[A046799(n), A342655(A001747(n+1))]` -/
def P8674372448976882799.Spec : Prop :=
  ∀ n, (P8674372448976882799.a n : ℤ) = A049096 (n + 1)

end A049096

/-! ## A049096.P3963034153190750788

`lt[A046799(n), A342656(A074845(n+1))]`
-/

namespace A049096.P3963034153190750788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046799 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342656 (A074845 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A049096.P3963034153190750788

namespace A049096

/-- `lt[A046799(n), A342656(A074845(n+1))]` -/
def P3963034153190750788.Spec : Prop :=
  ∀ n, (P3963034153190750788.a n : ℤ) = A049096 (n + 1)

end A049096

/-! ## A049096.P8732976625611924718

`lt[A046799(n), A342655(A161344(n+1))]`
-/

namespace A049096.P8732976625611924718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046799 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342655 (A161344 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A049096.P8732976625611924718

namespace A049096

/-- `lt[A046799(n), A342655(A161344(n+1))]` -/
def P8732976625611924718.Spec : Prop :=
  ∀ n, (P8732976625611924718.a n : ℤ) = A049096 (n + 1)

end A049096

/-! ## A049096.P6010233423386943050

`lt[A046799(n), A277892(A073582(n+1))]`
-/

namespace A049096.P6010233423386943050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046799 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277892 (A073582 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A049096.P6010233423386943050

namespace A049096

/-- `lt[A046799(n), A277892(A073582(n+1))]` -/
def P6010233423386943050.Spec : Prop :=
  ∀ n, (P6010233423386943050.a n : ℤ) = A049096 (n + 1)

end A049096

/-! ## A049096.P3450266077724338050

`lt[A046799(n), A342656(A001748(n+1))]`
-/

namespace A049096.P3450266077724338050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046799 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342656 (A001748 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A049096.P3450266077724338050

namespace A049096

/-- `lt[A046799(n), A342656(A001748(n+1))]` -/
def P3450266077724338050.Spec : Prop :=
  ∀ n, (P3450266077724338050.a n : ℤ) = A049096 (n + 1)

end A049096

/-!
# A049097: Primes p such that p+1 is squarefree.

The programs for A049097, the canonical program `A049097.P11962630923123470473` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A049097 has offset 1).

The definition of A049097 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6702 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A049097.P7317041080620926704

`A077067(n+1)-1`
-/

namespace A049097.P7317041080620926704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077067 (n + 1) - 1

end

end A049097.P7317041080620926704

namespace A049097

/-- `A077067(n+1)-1` -/
def P7317041080620926704.Spec : Prop :=
  ∀ n, P7317041080620926704.a n = A049097 (n + 1)

end A049097

/-! ## A049097.P17432882386421807079

`xor(A077067(n+1), A122553(n))`
-/

namespace A049097.P17432882386421807079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A077067 (n + 1)) (A122553 n)

end

end A049097.P17432882386421807079

namespace A049097

/-- `xor(A077067(n+1), A122553(n))` -/
def P17432882386421807079.Spec : Prop :=
  ∀ n, P17432882386421807079.a n = A049097 (n + 1)

end A049097

/-! ## A049097.P13346830612627481685

`A084179(A322312(2*n+1))+A077067(n+1)`
-/

namespace A049097.P13346830612627481685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084179 (A322312 (2 * n + 1)).toNat + A077067 (n + 1)

end

end A049097.P13346830612627481685

namespace A049097

/-- `A084179(A322312(2*n+1))+A077067(n+1)` -/
def P13346830612627481685.Spec : Prop :=
  ∀ n, P13346830612627481685.a n = A049097 (n + 1)

end A049097

/-! ## A049097.P1190772640171063542

`p?[A065301(n+1)]`
-/

namespace A049097.P1190772640171063542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065301 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A049097.P1190772640171063542

namespace A049097

/-- `p?[A065301(n+1)]` -/
def P1190772640171063542.Spec : Prop :=
  ∀ n, P1190772640171063542.a n = A049097 (n + 1)

end A049097

/-! ## A049097.P5261658934313732507

`∩[A002313(n+1), A065301(n+1)]`
-/

namespace A049097.P5261658934313732507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002313 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065301 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049097.P5261658934313732507

namespace A049097

/-- `∩[A002313(n+1), A065301(n+1)]` -/
def P5261658934313732507.Spec : Prop :=
  ∀ n, (P5261658934313732507.a n : ℤ) = A049097 (n + 1)

end A049097

/-! ## A049097.P11962630923123470473

`p?[or(n, A008966(n+1))+n]`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A049097

/-- `p?[or(n, A008966(n+1))+n]` -/
def P11962630923123470473.Spec : Prop :=
  ∀ n, P11962630923123470473.a n = A049097 (n + 1)

theorem P11962630923123470473.correct : P11962630923123470473.Spec := by
  intro n
  simp only [A049097, Nat.add_sub_cancel]

end A049097

/-! ## A049097.P6799234724182813791

`p?[A386424(n+1)]`
-/

namespace A049097.P6799234724182813791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386424 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A049097.P6799234724182813791

namespace A049097

/-- `p?[A386424(n+1)]` -/
def P6799234724182813791.Spec : Prop :=
  ∀ n, P6799234724182813791.a n = A049097 (n + 1)

end A049097

/-! ## A049097.P4486283220249032763

`∩[A002313(n+1), A075430(n+1)]`
-/

namespace A049097.P4486283220249032763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002313 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075430 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049097.P4486283220249032763

namespace A049097

/-- `∩[A002313(n+1), A075430(n+1)]` -/
def P4486283220249032763.Spec : Prop :=
  ∀ n, (P4486283220249032763.a n : ℤ) = A049097 (n + 1)

end A049097

/-! ## A049097.P14317069960964475982

`∩[A042998(n+1), A065301(n+1)]`
-/

namespace A049097.P14317069960964475982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042998 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065301 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049097.P14317069960964475982

namespace A049097

/-- `∩[A042998(n+1), A065301(n+1)]` -/
def P14317069960964475982.Spec : Prop :=
  ∀ n, (P14317069960964475982.a n : ℤ) = A049097 (n + 1)

end A049097

/-! ## A049097.P2084413512412633480

`∩[A075430(n+1), A281292(n+1)]`
-/

namespace A049097.P2084413512412633480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075430 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281292 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049097.P2084413512412633480

namespace A049097

/-- `∩[A075430(n+1), A281292(n+1)]` -/
def P2084413512412633480.Spec : Prop :=
  ∀ n, (P2084413512412633480.a n : ℤ) = A049097 (n + 1)

end A049097

/-! ## A049097.P3940579955073423685

`p?[A065300(n+1)]`
-/

namespace A049097.P3940579955073423685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065300 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A049097.P3940579955073423685

namespace A049097

/-- `p?[A065300(n+1)]` -/
def P3940579955073423685.Spec : Prop :=
  ∀ n, P3940579955073423685.a n = A049097 (n + 1)

end A049097

/-! ## A049097.P17472831074023447325

`∩[A002313(n+1), A065300(n+1)]`
-/

namespace A049097.P17472831074023447325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002313 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065300 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049097.P17472831074023447325

namespace A049097

/-- `∩[A002313(n+1), A065300(n+1)]` -/
def P17472831074023447325.Spec : Prop :=
  ∀ n, (P17472831074023447325.a n : ℤ) = A049097 (n + 1)

end A049097

/-! ## A049097.P16600799383303563351

`∩[A042998(n+1), A065300(n+1)]`
-/

namespace A049097.P16600799383303563351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042998 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065300 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049097.P16600799383303563351

namespace A049097

/-- `∩[A042998(n+1), A065300(n+1)]` -/
def P16600799383303563351.Spec : Prop :=
  ∀ n, (P16600799383303563351.a n : ℤ) = A049097 (n + 1)

end A049097

/-! ## A049097.P14197949529802534656

`record[A069115(n+1)-1]`
-/

namespace A049097.P14197949529802534656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069115 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A049097.P14197949529802534656

namespace A049097

/-- `record[A069115(n+1)-1]` -/
def P14197949529802534656.Spec : Prop :=
  ∀ n, P14197949529802534656.a n = A049097 (n + 1)

end A049097

/-! ## A049097.P7539167732811370175

`record[A077066(n+1)-1]`
-/

namespace A049097.P7539167732811370175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077066 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A049097.P7539167732811370175

namespace A049097

/-- `record[A077066(n+1)-1]` -/
def P7539167732811370175.Spec : Prop :=
  ∀ n, P7539167732811370175.a n = A049097 (n + 1)

end A049097

/-! ## A049097.P6946322535051073292

`p?[A112926(n+1)-1]`
-/

namespace A049097.P6946322535051073292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112926 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A049097.P6946322535051073292

namespace A049097

/-- `p?[A112926(n+1)-1]` -/
def P6946322535051073292.Spec : Prop :=
  ∀ n, P6946322535051073292.a n = A049097 (n + 1)

end A049097

/-! ## A049097.P7688022600152855884

`A000040(A120068(n+1))`
-/

namespace A049097.P7688022600152855884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A120068 (n + 1)).toNat

end

end A049097.P7688022600152855884

namespace A049097

/-- `A000040(A120068(n+1))` -/
def P7688022600152855884.Spec : Prop :=
  ∀ n, P7688022600152855884.a n = A049097 (n + 1)

end A049097

/-! ## A049097.P7414647550243080633

`∩[A000040(n+1), A065300(n+1)]`
-/

namespace A049097.P7414647550243080633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065300 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049097.P7414647550243080633

namespace A049097

/-- `∩[A000040(n+1), A065300(n+1)]` -/
def P7414647550243080633.Spec : Prop :=
  ∀ n, (P7414647550243080633.a n : ℤ) = A049097 (n + 1)

end A049097

/-! ## A049097.P8885911858037730020

`∩[A000040(n+1), A065301(n+1)]`
-/

namespace A049097.P8885911858037730020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065301 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049097.P8885911858037730020

namespace A049097

/-- `∩[A000040(n+1), A065301(n+1)]` -/
def P8885911858037730020.Spec : Prop :=
  ∀ n, (P8885911858037730020.a n : ℤ) = A049097 (n + 1)

end A049097

/-! ## A049097.P16804448929020518940

`∩[A065300(n+1), A045344(n+1)]`
-/

namespace A049097.P16804448929020518940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065300 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049097.P16804448929020518940

namespace A049097

/-- `∩[A065300(n+1), A045344(n+1)]` -/
def P16804448929020518940.Spec : Prop :=
  ∀ n, (P16804448929020518940.a n : ℤ) = A049097 (n + 1)

end A049097

/-!
# A049098: Primes p such that p+1 is divisible by a square.

The programs for A049098, the canonical program `A049098.P8844519897010937386` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A049098 has offset 1).

The definition of A049098 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A049098.P8844519897010937386

`p?[A013929(n+1)-1]`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A049098

/-- `p?[A013929(n+1)-1]` -/
def P8844519897010937386.Spec : Prop :=
  ∀ n, P8844519897010937386.a n = A049098 (n + 1)

theorem P8844519897010937386.correct : P8844519897010937386.Spec := by
  intro n
  simp only [A049098, Nat.add_sub_cancel]

end A049098

/-! ## A049098.P9151444741801002988

`p?[gcd(n, A008683(n+1))]`
-/

namespace A049098.P9151444741801002988
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A008683 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A049098.P9151444741801002988

namespace A049098

/-- `p?[gcd(n, A008683(n+1))]` -/
def P9151444741801002988.Spec : Prop :=
  ∀ n, (P9151444741801002988.a n : ℤ) = A049098 (n + 1)

end A049098

/-! ## A049098.P14630775943519203388

`p?[xor(n+1, A008683(n+2))]`
-/

namespace A049098.P14630775943519203388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n + 1 : ℤ) (A008683 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A049098.P14630775943519203388

namespace A049098

/-- `p?[xor(n+1, A008683(n+2))]` -/
def P14630775943519203388.Spec : Prop :=
  ∀ n, P14630775943519203388.a n = A049098 (n + 1)

end A049098

/-! ## A049098.P11281179780014305661

`record[A006530(A013929(n+1)-1)]`
-/

namespace A049098.P11281179780014305661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A013929 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A049098.P11281179780014305661

namespace A049098

/-- `record[A006530(A013929(n+1)-1)]` -/
def P11281179780014305661.Spec : Prop :=
  ∀ n, P11281179780014305661.a n = A049098 (n + 1)

end A049098

/-! ## A049098.P10112075558042214326

`record[A008472(A013929(n+1)-1)]`
-/

namespace A049098.P10112075558042214326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (A013929 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A049098.P10112075558042214326

namespace A049098

/-- `record[A008472(A013929(n+1)-1)]` -/
def P10112075558042214326.Spec : Prop :=
  ∀ n, P10112075558042214326.a n = A049098 (n + 1)

end A049098

/-! ## A049098.P16792209486557176635

`record[A020639(A013929(n+1)-1)]`
-/

namespace A049098.P16792209486557176635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A013929 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A049098.P16792209486557176635

namespace A049098

/-- `record[A020639(A013929(n+1)-1)]` -/
def P16792209486557176635.Spec : Prop :=
  ∀ n, P16792209486557176635.a n = A049098 (n + 1)

end A049098

/-! ## A049098.P10300764205264918679

`p?[A105570(n)-1]`
-/

namespace A049098.P10300764205264918679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105570 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A049098.P10300764205264918679

namespace A049098

/-- `p?[A105570(n)-1]` -/
def P10300764205264918679.Spec : Prop :=
  ∀ n, P10300764205264918679.a n = A049098 (n + 1)

end A049098

/-! ## A049098.P13329011066056972757

`p?[n*A087049(n+1)]`
-/

namespace A049098.P13329011066056972757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A087049 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A049098.P13329011066056972757

namespace A049098

/-- `p?[n*A087049(n+1)]` -/
def P13329011066056972757.Spec : Prop :=
  ∀ n, P13329011066056972757.a n = A049098 (n + 1)

end A049098

/-! ## A049098.P10817879611621298042

`p?[n*A087049(n)-1]`
-/

namespace A049098.P10817879611621298042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A087049 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A049098.P10817879611621298042

namespace A049098

/-- `p?[n*A087049(n)-1]` -/
def P10817879611621298042.Spec : Prop :=
  ∀ n, P10817879611621298042.a n = A049098 (n + 1)

end A049098

/-! ## A049098.P1948737981413531884

`p?[n*(A007424(n+1)-1)]`
-/

namespace A049098.P1948737981413531884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A007424 (n + 1) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A049098.P1948737981413531884

namespace A049098

/-- `p?[n*(A007424(n+1)-1)]` -/
def P1948737981413531884.Spec : Prop :=
  ∀ n, P1948737981413531884.a n = A049098 (n + 1)

end A049098

/-! ## A049098.P14890978818518644235

`eq[A008683(n+1), A072480(n)]`
-/

namespace A049098.P14890978818518644235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072480 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A049098.P14890978818518644235

namespace A049098

/-- `eq[A008683(n+1), A072480(n)]` -/
def P14890978818518644235.Spec : Prop :=
  ∀ n, (P14890978818518644235.a n : ℤ) = A049098 (n + 1)

end A049098

/-! ## A049098.P17704437046955753179

`eq[n, A006530(A008683(n+1)²+n)]`
-/

namespace A049098.P17704437046955753179
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A008683 (n + 1) ^ 2 + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A049098.P17704437046955753179

namespace A049098

/-- `eq[n, A006530(A008683(n+1)²+n)]` -/
def P17704437046955753179.Spec : Prop :=
  ∀ n, (P17704437046955753179.a n : ℤ) = A049098 (n + 1)

end A049098

/-! ## A049098.P12632118341137903650

`eq[n-1, A000010(A008683(n+1)²+n)]`
-/

namespace A049098.P12632118341137903650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A008683 (n + 1) ^ 2 + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A049098.P12632118341137903650

namespace A049098

/-- `eq[n-1, A000010(A008683(n+1)²+n)]` -/
def P12632118341137903650.Spec : Prop :=
  ∀ n, (P12632118341137903650.a n : ℤ) = A049098 (n + 1)

end A049098

/-! ## A049098.P10052648272889057994

`eq[n, A000010(n+1-A008683(n+2))]+1`
-/

namespace A049098.P10052648272889057994
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 ((n + 1 : ℤ) - A008683 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A049098.P10052648272889057994

namespace A049098

/-- `eq[n, A000010(n+1-A008683(n+2))]+1` -/
def P10052648272889057994.Spec : Prop :=
  ∀ n, (P10052648272889057994.a n : ℤ) = A049098 (n + 1)

end A049098

/-! ## A049098.P6217486230512434487

`eq[n+2, A008683(n+2)+A000203(n+1)]+1`
-/

namespace A049098.P6217486230512434487
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 2) + A000203 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A049098.P6217486230512434487

namespace A049098

/-- `eq[n+2, A008683(n+2)+A000203(n+1)]+1` -/
def P6217486230512434487.Spec : Prop :=
  ∀ n, (P6217486230512434487.a n : ℤ) = A049098 (n + 1)

end A049098

/-! ## A049098.P7418978276743084658

`eq[n+1, A008683(n+3)+A000010(n+2)]+2`
-/

namespace A049098.P7418978276743084658
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 3) + A000010 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A049098.P7418978276743084658

namespace A049098

/-- `eq[n+1, A008683(n+3)+A000010(n+2)]+2` -/
def P7418978276743084658.Spec : Prop :=
  ∀ n, (P7418978276743084658.a n : ℤ) = A049098 (n + 1)

end A049098

/-! ## A049098.P7533364602914652997

`record[A006530(A006530(2*(n+1))-A008683(n+2))]`
-/

namespace A049098.P7533364602914652997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A006530 (2 * (n + 1)) - A008683 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A049098.P7533364602914652997

namespace A049098

/-- `record[A006530(A006530(2*(n+1))-A008683(n+2))]` -/
def P7533364602914652997.Spec : Prop :=
  ∀ n, P7533364602914652997.a n = A049098 (n + 1)

end A049098

/-! ## A049098.P7834866103873199521

`p?[2*n+1-A008683(A000203(2*n+1))]`
-/

namespace A049098.P7834866103873199521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) - A008683 (A000203 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A049098.P7834866103873199521

namespace A049098

/-- `p?[2*n+1-A008683(A000203(2*n+1))]` -/
def P7834866103873199521.Spec : Prop :=
  ∀ n, P7834866103873199521.a n = A049098 (n + 1)

end A049098

/-! ## A049098.P15029073347747836089

`p?[A053806(n+1)-1]`
-/

namespace A049098.P15029073347747836089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053806 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A049098.P15029073347747836089

namespace A049098

/-- `p?[A053806(n+1)-1]` -/
def P15029073347747836089.Spec : Prop :=
  ∀ n, P15029073347747836089.a n = A049098 (n + 1)

end A049098

/-! ## A049098.P16476509606934793903

`p?[A069122(n+1)]`
-/

namespace A049098.P16476509606934793903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069122 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A049098.P16476509606934793903

namespace A049098

/-- `p?[A069122(n+1)]` -/
def P16476509606934793903.Spec : Prop :=
  ∀ n, P16476509606934793903.a n = A049098 (n + 1)

end A049098

/-!
# A049099: a(n) = Euler phi function applied thrice to n.

The programs for A049099, the canonical program `A049099.P16821384539890707321` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A049099 has offset 1).

The definition of A049099 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A010554, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A049099.P16821384539890707321

`A000010(A010554(n+1))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A049099

/-- `A000010(A010554(n+1))` -/
def P16821384539890707321.Spec : Prop :=
  ∀ n, P16821384539890707321.a n = A049099 (n + 1)

theorem P16821384539890707321.correct : P16821384539890707321.Spec := by
  intro n
  simp only [A049099, Nat.add_sub_cancel]

end A049099

/-! ## A049099.P4763314083929318604

`A000010(A000010(A000010(n+1)))`
-/

namespace A049099.P4763314083929318604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A000010 (A000010 (n + 1)).toNat).toNat

end

end A049099.P4763314083929318604

namespace A049099

/-- `A000010(A000010(A000010(n+1)))` -/
def P4763314083929318604.Spec : Prop :=
  ∀ n, P4763314083929318604.a n = A049099 (n + 1)

end A049099

/-! ## A049099.P11899928547150715364

`A000010(∑[A111409(n)])`
-/

namespace A049099.P11899928547150715364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111409 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A049099.P11899928547150715364

namespace A049099

/-- `A000010(∑[A111409(n)])` -/
def P11899928547150715364.Spec : Prop :=
  ∀ n, P11899928547150715364.a n = A049099 (n + 1)

end A049099

/-! ## A049099.P8851202860279069465

`A010554(Δ[A002088(n)])`
-/

namespace A049099.P8851202860279069465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010554 (f1 (n + 1) - f1 n).toNat

end

end A049099.P8851202860279069465

namespace A049099

/-- `A010554(Δ[A002088(n)])` -/
def P8851202860279069465.Spec : Prop :=
  ∀ n, P8851202860279069465.a n = A049099 (n + 1)

end A049099

/-! ## A049099.P14223271661836800693

`A010554(Δ[A005728(n)])`
-/

namespace A049099.P14223271661836800693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010554 (f1 (n + 1) - f1 n).toNat

end

end A049099.P14223271661836800693

namespace A049099

/-- `A010554(Δ[A005728(n)])` -/
def P14223271661836800693.Spec : Prop :=
  ∀ n, P14223271661836800693.a n = A049099 (n + 1)

end A049099

/-! ## A049099.P3960943415823788071

`A010554(n-A219428(n+1))`
-/

namespace A049099.P3960943415823788071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010554 ((n : ℤ) - A219428 (n + 1)).toNat

end

end A049099.P3960943415823788071

namespace A049099

/-- `A010554(n-A219428(n+1))` -/
def P3960943415823788071.Spec : Prop :=
  ∀ n, P3960943415823788071.a n = A049099 (n + 1)

end A049099

/-! ## A049099.P5398328407469541918

`A010554(1-A051953(n+1)+n)`
-/

namespace A049099.P5398328407469541918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010554 (1 - A051953 (n + 1) + (n : ℤ)).toNat

end

end A049099.P5398328407469541918

namespace A049099

/-- `A010554(1-A051953(n+1)+n)` -/
def P5398328407469541918.Spec : Prop :=
  ∀ n, P5398328407469541918.a n = A049099 (n + 1)

end A049099

/-! ## A049099.P2177124317665256598

`A010554(A002618(n+1)/(n+1))`
-/

namespace A049099.P2177124317665256598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010554 (SequenceMachineLib.roundAway ((A002618 (n + 1) : ℚ) / (n + 1 : ℚ))).toNat

end

end A049099.P2177124317665256598

namespace A049099

/-- `A010554(A002618(n+1)/(n+1))` -/
def P2177124317665256598.Spec : Prop :=
  ∀ n, P2177124317665256598.a n = A049099 (n + 1)

end A049099

/-! ## A049099.P9755531880793218560

`A055034(A055034((n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]))`
-/

namespace A049099.P9755531880793218560
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055034 (A055034 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ))).toNat).toNat

end

end A049099.P9755531880793218560

namespace A049099

/-- `A055034(A055034((n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]))` -/
def P9755531880793218560.Spec : Prop :=
  ∀ n, P9755531880793218560.a n = A049099 (n + 1)

end A049099

/-! ## A049099.P1229279796797339288

`A010554(A083239(n+1)+A083239(n))`
-/

namespace A049099.P1229279796797339288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010554 (A083239 (n + 1) + A083239 n).toNat

end

end A049099.P1229279796797339288

namespace A049099

/-- `A010554(A083239(n+1)+A083239(n))` -/
def P1229279796797339288.Spec : Prop :=
  ∀ n, P1229279796797339288.a n = A049099 (n + 1)

end A049099

/-! ## A049099.P13268690878352553905

`A010554(A002088(n+1)-A002088(n))`
-/

namespace A049099.P13268690878352553905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010554 (A002088 (n + 1) - A002088 n).toNat

end

end A049099.P13268690878352553905

namespace A049099

/-- `A010554(A002088(n+1)-A002088(n))` -/
def P13268690878352553905.Spec : Prop :=
  ∀ n, P13268690878352553905.a n = A049099 (n + 1)

end A049099

/-! ## A049099.P6936711273122380194

`A010554(A070556(n+1)+A010554(n+1))`
-/

namespace A049099.P6936711273122380194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010554 (A070556 (n + 1) + A010554 (n + 1)).toNat

end

end A049099.P6936711273122380194

namespace A049099

/-- `A010554(A070556(n+1)+A010554(n+1))` -/
def P6936711273122380194.Spec : Prop :=
  ∀ n, P6936711273122380194.a n = A049099 (n + 1)

end A049099

/-! ## A049099.P6613168205691257168

`A010554(A083254(n+1)+A051953(n+1))`
-/

namespace A049099.P6613168205691257168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010554 (A083254 (n + 1) + A051953 (n + 1)).toNat

end

end A049099.P6613168205691257168

namespace A049099

/-- `A010554(A083254(n+1)+A051953(n+1))` -/
def P6613168205691257168.Spec : Prop :=
  ∀ n, P6613168205691257168.a n = A049099 (n + 1)

end A049099

