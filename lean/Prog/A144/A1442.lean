import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C031
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
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
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
# A144200: Square array (8 X 8) read by rows.

The programs for A144200, there is no canonical definition to state claims against.
-/

/-! ## A144200.P3390590642729885120

`A144198(gcd(A002618(n+1), A096861(n+1)))`
-/

namespace A144200.P3390590642729885120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144198 (Int.gcd (A002618 (n + 1)) (A096861 (n + 1)))

end

end A144200.P3390590642729885120

/-! ## A144200.P1930695112263441183

`A102683(A118880(n)*A349574(n+1))`
-/

namespace A144200.P1930695112263441183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102683 (A118880 n * A349574 (n + 1)).toNat

end

end A144200.P1930695112263441183

/-! ## A144200.P4398633856385413232

`A188641(A187206(n+1)+A007504(n))`
-/

namespace A144200.P4398633856385413232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188641 (A187206 (n + 1) + A007504 n).toNat

end

end A144200.P4398633856385413232

/-! ## A144200.P18434941271126972685

`A075905(n+1)%A131534(A222402(n+4))`
-/

namespace A144200.P18434941271126972685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A075905 (n + 1)) (A131534 (A222402 (n + 4)).toNat)

end

end A144200.P18434941271126972685

/-! ## A144200.P17801481468602541846

`A163917(3*(n+1))%A329344(A329341(n+1))`
-/

namespace A144200.P17801481468602541846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A163917 (3 * (n + 1))) (A329344 (A329341 (n + 1)).toNat)

end

end A144200.P17801481468602541846

/-!
# A144201: Square array (8 X 8) read by rows.

The programs for A144201, there is no canonical definition to state claims against.
-/

/-! ## A144201.P951573806897994516

`A144200(A281120(n+1)-A316863(n))`
-/

namespace A144201.P951573806897994516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144200 (A281120 (n + 1) - A316863 n).toNat

end

end A144201.P951573806897994516

/-! ## A144201.P11492377565693235730

`A373157(A335463(n+5))*A373991(n)`
-/

namespace A144201.P11492377565693235730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373157 (A335463 (n + 5)).toNat * A373991 n

end

end A144201.P11492377565693235730

/-! ## A144201.P17494509497798098709

`val(A074294(A074284(2*n+5)), 7)`
-/

namespace A144201.P17494509497798098709
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A074294 (A074284 (2 * n + 5)).toNat).toNat 7

end

end A144201.P17494509497798098709

/-! ## A144201.P12543139799160908312

`A100910(A279861(n+1)+A048103(n+1))`
-/

namespace A144201.P12543139799160908312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100910 (A279861 (n + 1) + A048103 (n + 1)).toNat

end

end A144201.P12543139799160908312

/-! ## A144201.P12850885922055398513

`A240465(A234944(n+2))`
-/

namespace A144201.P12850885922055398513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240465 (A234944 (n + 2)).toNat

end

end A144201.P12850885922055398513

/-!
# A144204: Array A(k,n) = (n+k-2)*(n-1) - 1 (k >= 1, n >= 1) read by antidiagonals.

The programs for A144204, the canonical program `A144204.P15164700038722631133` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A144204 has offset 1).

The definition of A144204 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A144204.P15164700038722631133

`A079904(n)-1`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A144204

/-- `A079904(n)-1` -/
def P15164700038722631133.Spec : Prop :=
  ∀ n, P15164700038722631133.a n = A144204 (n + 1)

theorem P15164700038722631133.correct : P15164700038722631133.Spec := by
  intro n
  simp only [A144204, Nat.add_sub_cancel]

end A144204

/-! ## A144204.P9638878673867570674

`A076110(n+1)-2`
-/

namespace A144204.P9638878673867570674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076110 (n + 1) - 2

end

end A144204.P9638878673867570674

namespace A144204

/-- `A076110(n+1)-2` -/
def P9638878673867570674.Spec : Prop :=
  ∀ n, P9638878673867570674.a n = A144204 (n + 1)

end A144204

/-! ## A144204.P6505320471534277441

`∑[char[∑[n+1]]]*A002262(n)-1`
-/

namespace A144204.P6505320471534277441
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A002262 n - 1

end

end A144204.P6505320471534277441

namespace A144204

/-- `∑[char[∑[n+1]]]*A002262(n)-1` -/
def P6505320471534277441.Spec : Prop :=
  ∀ n, P6505320471534277441.a n = A144204 (n + 1)

end A144204

/-! ## A144204.P16938546816949348166

`A159797(n)-(C(comp[∑[n]]-n, 2)-n)`
-/

namespace A144204.P16938546816949348166
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159797 n - ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ))

end

end A144204.P16938546816949348166

namespace A144204

/-- `A159797(n)-(C(comp[∑[n]]-n, 2)-n)` -/
def P16938546816949348166.Spec : Prop :=
  ∀ n, P16938546816949348166.a n = A144204 (n + 1)

end A144204

/-! ## A144204.P4945317324820877924

`A143844(n)-A176270(n)`
-/

namespace A144204.P4945317324820877924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143844 n - A176270 n

end

end A144204.P4945317324820877924

namespace A144204

/-- `A143844(n)-A176270(n)` -/
def P4945317324820877924.Spec : Prop :=
  ∀ n, P4945317324820877924.a n = A144204 (n + 1)

end A144204

/-! ## A144204.P11083652721708326628

`A069011(n)-(A073254(n)+1)`
-/

namespace A144204.P11083652721708326628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069011 n - (A073254 n + 1)

end

end A144204.P11083652721708326628

namespace A144204

/-- `A069011(n)-(A073254(n)+1)` -/
def P11083652721708326628.Spec : Prop :=
  ∀ n, P11083652721708326628.a n = A144204 (n + 1)

end A144204

/-! ## A144204.P14361798699669793809

`A004247(n)+A143844(n)-1`
-/

namespace A144204.P14361798699669793809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004247 n + (A143844 n - 1)

end

end A144204.P14361798699669793809

namespace A144204

/-- `A004247(n)+A143844(n)-1` -/
def P14361798699669793809.Spec : Prop :=
  ∀ n, P14361798699669793809.a n = A144204 (n + 1)

end A144204

/-! ## A144204.P776223086857321565

`A159797(n)-A004736(n+1)`
-/

namespace A144204.P776223086857321565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159797 n - A004736 (n + 1)

end

end A144204.P776223086857321565

namespace A144204

/-- `A159797(n)-A004736(n+1)` -/
def P776223086857321565.Spec : Prop :=
  ∀ n, P776223086857321565.a n = A144204 (n + 1)

end A144204

/-! ## A144204.P8608644621733023829

`A126890(n)-(A057944(n)+1)`
-/

namespace A144204.P8608644621733023829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126890 n - (A057944 n + 1)

end

end A144204.P8608644621733023829

namespace A144204

/-- `A126890(n)-(A057944(n)+1)` -/
def P8608644621733023829.Spec : Prop :=
  ∀ n, P8608644621733023829.a n = A144204 (n + 1)

end A144204

/-! ## A144204.P13212338474144524856

`A159797(n)-(A025581(n)+1)`
-/

namespace A144204.P13212338474144524856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159797 n - (A025581 n + 1)

end

end A144204.P13212338474144524856

namespace A144204

/-- `A159797(n)-(A025581(n)+1)` -/
def P13212338474144524856.Spec : Prop :=
  ∀ n, P13212338474144524856.a n = A144204 (n + 1)

end A144204

/-! ## A144204.P14823553477833198668

`A087401(n)+A112367(n)-1`
-/

namespace A144204.P14823553477833198668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087401 n + (A112367 n - 1)

end

end A144204.P14823553477833198668

namespace A144204

/-- `A087401(n)+A112367(n)-1` -/
def P14823553477833198668.Spec : Prop :=
  ∀ n, P14823553477833198668.a n = A144204 (n + 1)

end A144204

/-! ## A144204.P2929728053018510072

`A132111(n)-(A069011(n)+1)`
-/

namespace A144204.P2929728053018510072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132111 n - (A069011 n + 1)

end

end A144204.P2929728053018510072

namespace A144204

/-- `A132111(n)-(A069011(n)+1)` -/
def P2929728053018510072.Spec : Prop :=
  ∀ n, P2929728053018510072.a n = A144204 (n + 1)

end A144204

/-! ## A144204.P6002089448806059569

`A151890(n)-A075362(n+1)`
-/

namespace A144204.P6002089448806059569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151890 n - A075362 (n + 1)

end

end A144204.P6002089448806059569

namespace A144204

/-- `A151890(n)-A075362(n+1)` -/
def P6002089448806059569.Spec : Prop :=
  ∀ n, P6002089448806059569.a n = A144204 (n + 1)

end A144204

/-! ## A144204.P12722790996888422811

`A281385(n)-(A335821(n)+1)`
-/

namespace A144204.P12722790996888422811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281385 n - (A335821 n + 1)

end

end A144204.P12722790996888422811

namespace A144204

/-- `A281385(n)-(A335821(n)+1)` -/
def P12722790996888422811.Spec : Prop :=
  ∀ n, P12722790996888422811.a n = A144204 (n + 1)

end A144204

/-! ## A144204.P2050575214516769851

`A077028(n)+A143844(n)-2`
-/

namespace A144204.P2050575214516769851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077028 n + (A143844 n - 2)

end

end A144204.P2050575214516769851

namespace A144204

/-- `A077028(n)+A143844(n)-2` -/
def P2050575214516769851.Spec : Prop :=
  ∀ n, P2050575214516769851.a n = A144204 (n + 1)

end A144204

/-! ## A144204.P15559569046167380274

`A176798(n)-(A057944(n)+2)`
-/

namespace A144204.P15559569046167380274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176798 n - (A057944 n + 2)

end

end A144204.P15559569046167380274

namespace A144204

/-- `A176798(n)-(A057944(n)+2)` -/
def P15559569046167380274.Spec : Prop :=
  ∀ n, P15559569046167380274.a n = A144204 (n + 1)

end A144204

/-! ## A144204.P3656409524392238572

`A112367(n)+A303273(n)-2`
-/

namespace A144204.P3656409524392238572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112367 n + (A303273 n - 2)

end

end A144204.P3656409524392238572

namespace A144204

/-- `A112367(n)+A303273(n)-2` -/
def P3656409524392238572.Spec : Prop :=
  ∀ n, P3656409524392238572.a n = A144204 (n + 1)

end A144204

/-! ## A144204.P13959857542038637457

`A002262(n)*A003056(n)-1`
-/

namespace A144204.P13959857542038637457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n * A003056 n - 1

end

end A144204.P13959857542038637457

namespace A144204

/-- `A002262(n)*A003056(n)-1` -/
def P13959857542038637457.Spec : Prop :=
  ∀ n, P13959857542038637457.a n = A144204 (n + 1)

end A144204

/-! ## A144204.P18338136817383658774

`A002262(n)²+A004247(n)-1`
-/

namespace A144204.P18338136817383658774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n ^ 2 + (A004247 n - 1)

end

end A144204.P18338136817383658774

namespace A144204

/-- `A002262(n)²+A004247(n)-1` -/
def P18338136817383658774.Spec : Prop :=
  ∀ n, P18338136817383658774.a n = A144204 (n + 1)

end A144204

/-! ## A144204.P3132291842260740866

`A002262(n)²+A077028(n)-2`
-/

namespace A144204.P3132291842260740866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n ^ 2 + (A077028 n - 2)

end

end A144204.P3132291842260740866

namespace A144204

/-- `A002262(n)²+A077028(n)-2` -/
def P3132291842260740866.Spec : Prop :=
  ∀ n, P3132291842260740866.a n = A144204 (n + 1)

end A144204

/-!
# A144205: Fibonacci numbers containing an equal number of odd and even digits.

The programs for A144205, there is no canonical definition to state claims against.
-/

/-! ## A144205.P5110421722224766495

`A000045(A199635(n+1))`
-/

namespace A144205.P5110421722224766495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A199635 (n + 1)).toNat

end

end A144205.P5110421722224766495

/-! ## A144205.P14147067193010862062

`A212804(A199635(n+1)+1)`
-/

namespace A144205.P14147067193010862062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (A199635 (n + 1) + 1).toNat

end

end A144205.P14147067193010862062

/-! ## A144205.P5712961571102569528

`∑{d}[A199635(n+1), A007436(#)]`
-/

namespace A144205.P5712961571102569528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199635 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A007436 d

end

end A144205.P5712961571102569528

/-! ## A144205.P1261690169898933646

`A001611(A199635(n+1))-A014963(A008458(n))`
-/

namespace A144205.P1261690169898933646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001611 (A199635 (n + 1)).toNat - A014963 (A008458 n).toNat

end

end A144205.P1261690169898933646

/-!
# A144206: Numbers A141427(k) such that the three numbers A141427(k) - /+ 3 and A141427(k) + 1 are all prime.

The programs for A144206, there is no canonical definition to state claims against.
-/

/-! ## A144206.P11185525492955259914

`A073649(n+1)-1`
-/

namespace A144206.P11185525492955259914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073649 (n + 1) - 1

end

end A144206.P11185525492955259914

/-! ## A144206.P18079089655249554251

`A144840(n+1)+2`
-/

namespace A144206.P18079089655249554251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144840 (n + 1) + 2

end

end A144206.P18079089655249554251

/-! ## A144206.P3320211386266134885

`A022005(n+1)+3`
-/

namespace A144206.P3320211386266134885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022005 (n + 1) + 3

end

end A144206.P3320211386266134885

/-! ## A144206.P4208325331564088081

`A098413(n+1)-3`
-/

namespace A144206.P4208325331564088081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098413 (n + 1) - 3

end

end A144206.P4208325331564088081

/-! ## A144206.P2834806570687192669

`3*A062767(n+1)+4`
-/

namespace A144206.P2834806570687192669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A062767 (n + 1) + 4

end

end A144206.P2834806570687192669

/-! ## A144206.P11278495576933003760

`6*A215918(n+1)+4`
-/

namespace A144206.P11278495576933003760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A215918 (n + 1) + 4

end

end A144206.P11278495576933003760

/-! ## A144206.P868228160017291388

`eq[n, A302848(n+1)+2]`
-/

namespace A144206.P868228160017291388
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302848 (n + 1) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A144206.P868228160017291388

/-! ## A144206.P4833605638153415168

`p?[A087695(n+1)+1]-1`
-/

namespace A144206.P4833605638153415168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087695 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 1

end

end A144206.P4833605638153415168

/-! ## A144206.P5677134099131011480

`p?[A046117(n+1)-2]-1`
-/

namespace A144206.P5677134099131011480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046117 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 1

end

end A144206.P5677134099131011480

/-! ## A144206.P7047321896094911945

`p?[A098415(n+1)-2]-1`
-/

namespace A144206.P7047321896094911945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098415 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 1

end

end A144206.P7047321896094911945

/-!
# A144207: Triangle T(n,k), n>=0, 0<=k<=n, read by rows: T(n,k) = number of simple graphs on n labeled nodes with k edges where each maximally connected subgraph consists of a single node or has a unique cycle of length 3.

The programs for A144207, there is no canonical definition to state claims against.
-/

/-! ## A144207.P16427685494625180553

`A144161(n)*A286000(A233543(n))`
-/

namespace A144207.P16427685494625180553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144161 n * A286000 (A233543 n).toNat

end

end A144207.P16427685494625180553

/-! ## A144207.P11780204232361579054

`lcm(A144161(n), A325851(A165680(n+1)))`
-/

namespace A144207.P11780204232361579054
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A144161 n) (A325851 (A165680 (n + 1)).toNat)

end

end A144207.P11780204232361579054

/-! ## A144207.P1787540291084663

`A144161(n)*A331290(A213709(n+1))`
-/

namespace A144207.P1787540291084663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144161 n * A331290 (A213709 (n + 1)).toNat

end

end A144207.P1787540291084663

/-! ## A144207.P14168666078662920383

`A274820(A144161(n)^A274651(n+1))`
-/

namespace A144207.P14168666078662920383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274820 (SequenceMachineLib.roundAway ((A144161 n : ℚ) ^ (A274651 (n + 1) : ℤ))).toNat

end

end A144207.P14168666078662920383

/-! ## A144207.P8955588216622366962

`A144161(n)*A262626(A144150(3*n+1))`
-/

namespace A144207.P8955588216622366962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144161 n * A262626 (A144150 (3 * n + 1)).toNat

end

end A144207.P8955588216622366962

/-!
# A144208: Number of simple graphs on n labeled nodes, where each maximally connected subgraph consists of a single node or has a unique cycle of length 3; also row sums of A144207.

The programs for A144208, there is no canonical definition to state claims against.
-/

/-! ## A144208.P9316418542412739920

`A179382(2^C(n, 2)+n)`
-/

namespace A144208.P9316418542412739920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179382 (2 ^ Nat.choose n 2 + n)

end

end A144208.P9316418542412739920

/-! ## A144208.P2522465151873866406

`A034888(C(floor(7^(n/4)), n))`
-/

namespace A144208.P2522465151873866406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034888 (Nat.choose ⌊(7 : ℝ) ^ ((n : ℚ) / 4 : ℝ)⌋.toNat n)

end

end A144208.P2522465151873866406

/-!
# A144209: Triangle T(n,k), n>=0, 0<=k<=n, read by rows: T(n,k) = number of simple graphs on n labeled nodes with k edges where each maximally connected subgraph consists of a single node or has a unique cycle of length 4.

The programs for A144209, there is no canonical definition to state claims against.
-/

/-! ## A144209.P11945197600075171764

`A052409(2^A373417(n))`
-/

namespace A144209.P11945197600075171764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052409 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A373417 n : ℤ))).toNat

end

end A144209.P11945197600075171764

/-! ## A144209.P14285692680087729679

`A373417(n)%A101507(n+3)`
-/

namespace A144209.P14285692680087729679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A373417 n) (A101507 (n + 3))

end

end A144209.P14285692680087729679

/-! ## A144209.P4449603413269046333

`A373417(n)^A026009(3*n+4)`
-/

namespace A144209.P4449603413269046333
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A373417 n : ℚ) ^ (A026009 (3 * n + 4) : ℤ)

end

end A144209.P4449603413269046333

/-! ## A144209.P16212746618395890621

`A373417(n)^(A373417(2*n+1)+1)`
-/

namespace A144209.P16212746618395890621
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A373417 n : ℚ) ^ (A373417 (2 * n + 1) + 1 : ℤ)

end

end A144209.P16212746618395890621

/-! ## A144209.P16044178724889872898

`A373417(n)^A113384(1-∑[char[n!-1]]!+n)`
-/

namespace A144209.P16044178724889872898
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A373417 n : ℚ) ^ (A113384 (1 - (Nat.factorial (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ) + (n : ℤ)).toNat : ℤ)

end

end A144209.P16044178724889872898

/-!
# A144210: Number of simple graphs on n labeled nodes, where each maximally connected subgraph consists of a single node or has a unique cycle of length 4; also row sums of A144209.

The programs for A144210, there is no canonical definition to state claims against.
-/

/-! ## A144210.P2039952092379756913

`A252463(A362491(n)+A353426(n))`
-/

namespace A144210.P2039952092379756913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252463 (A362491 n + A353426 n).toNat

end

end A144210.P2039952092379756913

/-! ## A144210.P13480866639400558996

`A008619(A052584(n)%A001147(n))`
-/

namespace A144210.P13480866639400558996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (Int.tmod (A052584 n) (A001147 n)).toNat

end

end A144210.P13480866639400558996

/-! ## A144210.P9203427055837379943

`A008619(A052584(n)-2*A001147(n))`
-/

namespace A144210.P9203427055837379943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A052584 n - 2 * A001147 n).toNat

end

end A144210.P9203427055837379943

/-!
# A144213: Primes with a prime number of 0's in their binary representations.

The programs for A144213, the canonical program `A144213.P11436118161922588227` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A144213 has offset 1).

The definition of A144213 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3046 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A144213.P11436118161922588227

`p?[A144754(n+1)]`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A144213

/-- `p?[A144754(n+1)]` -/
def P11436118161922588227.Spec : Prop :=
  ∀ n, P11436118161922588227.a n = A144213 (n + 1)

theorem P11436118161922588227.correct : P11436118161922588227.Spec := by
  intro n
  simp only [A144213, Nat.add_sub_cancel]

end A144213

/-! ## A144213.P4387949105809518117

`∩[A000040(n+1), A144754(n+1)]`
-/

namespace A144213.P4387949105809518117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144754 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A144213.P4387949105809518117

namespace A144213

/-- `∩[A000040(n+1), A144754(n+1)]` -/
def P4387949105809518117.Spec : Prop :=
  ∀ n, (P4387949105809518117.a n : ℤ) = A144213 (n + 1)

end A144213

/-! ## A144213.P10996619707793339680

`∩[A004139(n+1), A144754(n+1)]`
-/

namespace A144213.P10996619707793339680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144754 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A144213.P10996619707793339680

namespace A144213

/-- `∩[A004139(n+1), A144754(n+1)]` -/
def P10996619707793339680.Spec : Prop :=
  ∀ n, (P10996619707793339680.a n : ℤ) = A144213 (n + 1)

end A144213

/-! ## A144213.P10778340990177581111

`∩[A006005(n+1), A144754(n+1)]`
-/

namespace A144213.P10778340990177581111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144754 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A144213.P10778340990177581111

namespace A144213

/-- `∩[A006005(n+1), A144754(n+1)]` -/
def P10778340990177581111.Spec : Prop :=
  ∀ n, (P10778340990177581111.a n : ℤ) = A144213 (n + 1)

end A144213

/-! ## A144213.P2465718356906328278

`∩[A008578(n+1), A144754(n+1)]`
-/

namespace A144213.P2465718356906328278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144754 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A144213.P2465718356906328278

namespace A144213

/-- `∩[A008578(n+1), A144754(n+1)]` -/
def P2465718356906328278.Spec : Prop :=
  ∀ n, (P2465718356906328278.a n : ℤ) = A144213 (n + 1)

end A144213

/-! ## A144213.P14008731344867402155

`∩[A045319(n+1), A144754(n+1)]`
-/

namespace A144213.P14008731344867402155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144754 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A144213.P14008731344867402155

namespace A144213

/-- `∩[A045319(n+1), A144754(n+1)]` -/
def P14008731344867402155.Spec : Prop :=
  ∀ n, (P14008731344867402155.a n : ℤ) = A144213 (n + 1)

end A144213

/-! ## A144213.P15992232250720059843

`∩[A045344(n+1), A144754(n+1)]`
-/

namespace A144213.P15992232250720059843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144754 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A144213.P15992232250720059843

namespace A144213

/-- `∩[A045344(n+1), A144754(n+1)]` -/
def P15992232250720059843.Spec : Prop :=
  ∀ n, (P15992232250720059843.a n : ℤ) = A144213 (n + 1)

end A144213

/-! ## A144213.P13819832499924096939

`∩[A065091(n+1), A144754(n+1)]`
-/

namespace A144213.P13819832499924096939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144754 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A144213.P13819832499924096939

namespace A144213

/-- `∩[A065091(n+1), A144754(n+1)]` -/
def P13819832499924096939.Spec : Prop :=
  ∀ n, (P13819832499924096939.a n : ℤ) = A144213 (n + 1)

end A144213

/-! ## A144213.P7972363412110723805

`∩[A108719(n+1), A144754(n+1)]`
-/

namespace A144213.P7972363412110723805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108719 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144754 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A144213.P7972363412110723805

namespace A144213

/-- `∩[A108719(n+1), A144754(n+1)]` -/
def P7972363412110723805.Spec : Prop :=
  ∀ n, (P7972363412110723805.a n : ℤ) = A144213 (n + 1)

end A144213

/-! ## A144213.P12732465111519464268

`∩[A116974(n+1), A144754(n+1)]`
-/

namespace A144213.P12732465111519464268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116974 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144754 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A144213.P12732465111519464268

namespace A144213

/-- `∩[A116974(n+1), A144754(n+1)]` -/
def P12732465111519464268.Spec : Prop :=
  ∀ n, (P12732465111519464268.a n : ℤ) = A144213 (n + 1)

end A144213

/-! ## A144213.P17677614407872896678

`∩[A138837(n+1), A144754(n+1)]`
-/

namespace A144213.P17677614407872896678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138837 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144754 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A144213.P17677614407872896678

namespace A144213

/-- `∩[A138837(n+1), A144754(n+1)]` -/
def P17677614407872896678.Spec : Prop :=
  ∀ n, (P17677614407872896678.a n : ℤ) = A144213 (n + 1)

end A144213

/-! ## A144213.P15231940298008088710

`∩[A140461(n+1), A144754(n+1)]`
-/

namespace A144213.P15231940298008088710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140461 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144754 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A144213.P15231940298008088710

namespace A144213

/-- `∩[A140461(n+1), A144754(n+1)]` -/
def P15231940298008088710.Spec : Prop :=
  ∀ n, (P15231940298008088710.a n : ℤ) = A144213 (n + 1)

end A144213

/-! ## A144213.P1555256809665354588

`∩[A140475(n+1), A144754(n+1)]`
-/

namespace A144213.P1555256809665354588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140475 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144754 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A144213.P1555256809665354588

namespace A144213

/-- `∩[A140475(n+1), A144754(n+1)]` -/
def P1555256809665354588.Spec : Prop :=
  ∀ n, (P1555256809665354588.a n : ℤ) = A144213 (n + 1)

end A144213

/-! ## A144213.P8795651426876440403

`∩[A144754(n+1), A157996(n+1)]`
-/

namespace A144213.P8795651426876440403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144754 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157996 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A144213.P8795651426876440403

namespace A144213

/-- `∩[A144754(n+1), A157996(n+1)]` -/
def P8795651426876440403.Spec : Prop :=
  ∀ n, (P8795651426876440403.a n : ℤ) = A144213 (n + 1)

end A144213

/-! ## A144213.P2023191638841919090

`∩[A144754(n+1), A158611(n+1)]`
-/

namespace A144213.P2023191638841919090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144754 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A144213.P2023191638841919090

namespace A144213

/-- `∩[A144754(n+1), A158611(n+1)]` -/
def P2023191638841919090.Spec : Prop :=
  ∀ n, (P2023191638841919090.a n : ℤ) = A144213 (n + 1)

end A144213

/-! ## A144213.P4352566216490098195

`∩[A144754(n+1), A182986(n+1)]`
-/

namespace A144213.P4352566216490098195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144754 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A144213.P4352566216490098195

namespace A144213

/-- `∩[A144754(n+1), A182986(n+1)]` -/
def P4352566216490098195.Spec : Prop :=
  ∀ n, (P4352566216490098195.a n : ℤ) = A144213 (n + 1)

end A144213

/-! ## A144213.P11690389590900207511

`∩[A144754(n+1), A215848(n+1)]`
-/

namespace A144213.P11690389590900207511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144754 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215848 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A144213.P11690389590900207511

namespace A144213

/-- `∩[A144754(n+1), A215848(n+1)]` -/
def P11690389590900207511.Spec : Prop :=
  ∀ n, (P11690389590900207511.a n : ℤ) = A144213 (n + 1)

end A144213

/-! ## A144213.P14967828709631488403

`∩[A326715(n+1), A144754(n+1)]`
-/

namespace A144213.P14967828709631488403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326715 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144754 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A144213.P14967828709631488403

namespace A144213

/-- `∩[A326715(n+1), A144754(n+1)]` -/
def P14967828709631488403.Spec : Prop :=
  ∀ n, (P14967828709631488403.a n : ℤ) = A144213 (n + 1)

end A144213

/-! ## A144213.P18362222616131416259

`filter[A144754(n+1), A010051(#)]`
-/

namespace A144213.P18362222616131416259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144754 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A144213.P18362222616131416259

namespace A144213

/-- `filter[A144754(n+1), A010051(#)]` -/
def P18362222616131416259.Spec : Prop :=
  ∀ n, P18362222616131416259.a n = A144213 (n + 1)

end A144213

/-! ## A144213.P15602894877634078690

`p?[n*A003415(A023416(n))]`
-/

namespace A144213.P15602894877634078690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A003415 (A023416 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A144213.P15602894877634078690

namespace A144213

/-- `p?[n*A003415(A023416(n))]` -/
def P15602894877634078690.Spec : Prop :=
  ∀ n, P15602894877634078690.a n = A144213 (n + 1)

end A144213

/-!
# A144214: Primes with both a prime number of 0's and a prime number of 1's in their binary representations.

The programs for A144214, the canonical program `A144214.P6525772958191010318` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A144214 has offset 1).

The definition of A144214 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4913 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A144214.P6525772958191010318

`∩[A081092(n+1), A144213(n+1)]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A144214

/-- `∩[A081092(n+1), A144213(n+1)]` -/
def P6525772958191010318.Spec : Prop :=
  ∀ n, (P6525772958191010318.a n : ℤ) = A144214 (n + 1)

theorem P6525772958191010318.correct : P6525772958191010318.Spec := by
  intro n
  simp only [A144214, Nat.add_sub_cancel]

end A144214

/-! ## A144214.P7097624292430152189

`p?[A343258(n+1)]`
-/

namespace A144214.P7097624292430152189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343258 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A144214.P7097624292430152189

namespace A144214

/-- `p?[A343258(n+1)]` -/
def P7097624292430152189.Spec : Prop :=
  ∀ n, P7097624292430152189.a n = A144214 (n + 1)

end A144214

/-! ## A144214.P15201590375807469794

`p?[record[A343258(A324533(n))]]`
-/

namespace A144214.P15201590375807469794
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343258 (A324533 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A144214.P15201590375807469794

namespace A144214

/-- `p?[record[A343258(A324533(n))]]` -/
def P15201590375807469794.Spec : Prop :=
  ∀ n, P15201590375807469794.a n = A144214 (n + 1)

end A144214

/-! ## A144214.P16757055707715169430

`record[A006530(A343258(n+4))]`
-/

namespace A144214.P16757055707715169430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A343258 (n + 4)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A144214.P16757055707715169430

namespace A144214

/-- `record[A006530(A343258(n+4))]` -/
def P16757055707715169430.Spec : Prop :=
  ∀ n, P16757055707715169430.a n = A144214 (n + 1)

end A144214

/-! ## A144214.P1084592431450491789

`filter[A343258(n+1), A010051(#)]`
-/

namespace A144214.P1084592431450491789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343258 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A144214.P1084592431450491789

namespace A144214

/-- `filter[A343258(n+1), A010051(#)]` -/
def P1084592431450491789.Spec : Prop :=
  ∀ n, P1084592431450491789.a n = A144214 (n + 1)

end A144214

/-! ## A144214.P10665719314849724624

`∩[A000040(n+1), A343258(n+1)]`
-/

namespace A144214.P10665719314849724624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343258 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A144214.P10665719314849724624

namespace A144214

/-- `∩[A000040(n+1), A343258(n+1)]` -/
def P10665719314849724624.Spec : Prop :=
  ∀ n, (P10665719314849724624.a n : ℤ) = A144214 (n + 1)

end A144214

/-! ## A144214.P15549415099768435603

`∩[A004139(n+1), A343258(n+1)]`
-/

namespace A144214.P15549415099768435603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343258 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A144214.P15549415099768435603

namespace A144214

/-- `∩[A004139(n+1), A343258(n+1)]` -/
def P15549415099768435603.Spec : Prop :=
  ∀ n, (P15549415099768435603.a n : ℤ) = A144214 (n + 1)

end A144214

/-! ## A144214.P12365632908756102511

`∩[A006005(n+1), A343258(n+1)]`
-/

namespace A144214.P12365632908756102511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343258 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A144214.P12365632908756102511

namespace A144214

/-- `∩[A006005(n+1), A343258(n+1)]` -/
def P12365632908756102511.Spec : Prop :=
  ∀ n, (P12365632908756102511.a n : ℤ) = A144214 (n + 1)

end A144214

/-! ## A144214.P6709786259058039169

`∩[A008578(n+1), A343258(n+1)]`
-/

namespace A144214.P6709786259058039169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343258 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A144214.P6709786259058039169

namespace A144214

/-- `∩[A008578(n+1), A343258(n+1)]` -/
def P6709786259058039169.Spec : Prop :=
  ∀ n, (P6709786259058039169.a n : ℤ) = A144214 (n + 1)

end A144214

/-! ## A144214.P17170144912879542455

`∩[A045319(n+1), A343258(n+1)]`
-/

namespace A144214.P17170144912879542455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343258 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A144214.P17170144912879542455

namespace A144214

/-- `∩[A045319(n+1), A343258(n+1)]` -/
def P17170144912879542455.Spec : Prop :=
  ∀ n, (P17170144912879542455.a n : ℤ) = A144214 (n + 1)

end A144214

/-! ## A144214.P2788921220994774481

`∩[A045344(n+1), A343258(n+1)]`
-/

namespace A144214.P2788921220994774481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343258 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A144214.P2788921220994774481

namespace A144214

/-- `∩[A045344(n+1), A343258(n+1)]` -/
def P2788921220994774481.Spec : Prop :=
  ∀ n, (P2788921220994774481.a n : ℤ) = A144214 (n + 1)

end A144214

/-! ## A144214.P16902778287450089117

`∩[A046022(n+1), A343258(n+1)]`
-/

namespace A144214.P16902778287450089117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343258 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A144214.P16902778287450089117

namespace A144214

/-- `∩[A046022(n+1), A343258(n+1)]` -/
def P16902778287450089117.Spec : Prop :=
  ∀ n, (P16902778287450089117.a n : ℤ) = A144214 (n + 1)

end A144214

/-! ## A144214.P4715879670396990649

`∩[A062972(n+1), A343258(n+1)]`
-/

namespace A144214.P4715879670396990649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062972 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343258 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A144214.P4715879670396990649

namespace A144214

/-- `∩[A062972(n+1), A343258(n+1)]` -/
def P4715879670396990649.Spec : Prop :=
  ∀ n, (P4715879670396990649.a n : ℤ) = A144214 (n + 1)

end A144214

/-! ## A144214.P10692263116575738901

`∩[A065091(n+1), A343258(n+1)]`
-/

namespace A144214.P10692263116575738901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343258 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A144214.P10692263116575738901

namespace A144214

/-- `∩[A065091(n+1), A343258(n+1)]` -/
def P10692263116575738901.Spec : Prop :=
  ∀ n, (P10692263116575738901.a n : ℤ) = A144214 (n + 1)

end A144214

/-! ## A144214.P2511090149688285667

`∩[A066542(n+1), A343258(n+1)]`
-/

namespace A144214.P2511090149688285667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066542 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343258 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A144214.P2511090149688285667

namespace A144214

/-- `∩[A066542(n+1), A343258(n+1)]` -/
def P2511090149688285667.Spec : Prop :=
  ∀ n, (P2511090149688285667.a n : ℤ) = A144214 (n + 1)

end A144214

/-! ## A144214.P8670864368523801443

`∩[A067133(n+1), A343258(n+1)]`
-/

namespace A144214.P8670864368523801443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067133 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343258 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A144214.P8670864368523801443

namespace A144214

/-- `∩[A067133(n+1), A343258(n+1)]` -/
def P8670864368523801443.Spec : Prop :=
  ∀ n, (P8670864368523801443.a n : ℤ) = A144214 (n + 1)

end A144214

/-! ## A144214.P8317956333370811596

`∩[A140475(n+1), A343258(n+1)]`
-/

namespace A144214.P8317956333370811596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140475 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343258 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A144214.P8317956333370811596

namespace A144214

/-- `∩[A140475(n+1), A343258(n+1)]` -/
def P8317956333370811596.Spec : Prop :=
  ∀ n, (P8317956333370811596.a n : ℤ) = A144214 (n + 1)

end A144214

/-! ## A144214.P17821096338265291826

`∩[A174090(n+1), A343258(n+1)]`
-/

namespace A144214.P17821096338265291826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174090 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343258 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A144214.P17821096338265291826

namespace A144214

/-- `∩[A174090(n+1), A343258(n+1)]` -/
def P17821096338265291826.Spec : Prop :=
  ∀ n, (P17821096338265291826.a n : ℤ) = A144214 (n + 1)

end A144214

/-! ## A144214.P17294775081713270534

`∩[A052294(n+1), A144213(n+1)]`
-/

namespace A144214.P17294775081713270534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052294 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144213 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A144214.P17294775081713270534

namespace A144214

/-- `∩[A052294(n+1), A144213(n+1)]` -/
def P17294775081713270534.Spec : Prop :=
  ∀ n, (P17294775081713270534.a n : ℤ) = A144214 (n + 1)

end A144214

/-! ## A144214.P12714589353728842891

`∩[A144213(n+1), A317294(n+1)]`
-/

namespace A144214.P12714589353728842891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144213 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317294 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A144214.P12714589353728842891

namespace A144214

/-- `∩[A144213(n+1), A317294(n+1)]` -/
def P12714589353728842891.Spec : Prop :=
  ∀ n, (P12714589353728842891.a n : ℤ) = A144214 (n + 1)

end A144214

/-!
# A144215: Triangle read by rows: T(n,k) is the number of forests on n unlabeled nodes with all nodes of degree <= k (n>=1, 0 <= k <= n-1).

The programs for A144215, there is no canonical definition to state claims against.
-/

/-! ## A144215.P11362951189485030553

`or(A117707(A038738(n+1)), A281155(n))`
-/

namespace A144215.P11362951189485030553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A117707 (A038738 (n + 1)).toNat) (A281155 n)

end

end A144215.P11362951189485030553

/-! ## A144215.P1951408994541095122

`A163352(A038738(n+1))+A039653(A246720(n))`
-/

namespace A144215.P1951408994541095122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163352 (A038738 (n + 1)).toNat + A039653 (A246720 n).toNat

end

end A144215.P1951408994541095122

/-! ## A144215.P2680966012649606453

`A321537(A069971(n))+A163352(A038738(n+1))`
-/

namespace A144215.P2680966012649606453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321537 (A069971 n).toNat + A163352 (A038738 (n + 1)).toNat

end

end A144215.P2680966012649606453

/-! ## A144215.P7032214530203507701

`A163352(A038738(n+1))+A069971(A076695(n+1))`
-/

namespace A144215.P7032214530203507701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163352 (A038738 (n + 1)).toNat + A069971 (A076695 (n + 1)).toNat

end

end A144215.P7032214530203507701

/-! ## A144215.P2737645237244352335

`A163352(A038738(n+1))+A100910(A084438(n+1))`
-/

namespace A144215.P2737645237244352335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163352 (A038738 (n + 1)).toNat + A100910 (A084438 (n + 1)).toNat

end

end A144215.P2737645237244352335

/-!
# A144216: C(m,2)+C(n,2), m>=1, n>=1: a rectangular array R read by antidiagonals.

The programs for A144216, the canonical program `A144216.P6608110429712062976` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A144216 has offset 1).

The definition of A144216 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A144216.P14237081403713157330

`∑[2*n-round(sqrt(2*n))²]`
-/

namespace A144216.P14237081403713157330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - SequenceMachineLib.roundAway (Real.sqrt (2 * n : ℝ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A144216.P14237081403713157330

namespace A144216

/-- `∑[2*n-round(sqrt(2*n))²]` -/
def P14237081403713157330.Spec : Prop :=
  ∀ n, P14237081403713157330.a n = A144216 (n + 1)

end A144216

/-! ## A144216.P6608110429712062976

`1-A128139(n)+n`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A144216

/-- `1-A128139(n)+n` -/
def P6608110429712062976.Spec : Prop :=
  ∀ n, P6608110429712062976.a n = A144216 (n + 1)

theorem P6608110429712062976.correct : P6608110429712062976.Spec := by
  intro n
  simp only [A144216, Nat.add_sub_cancel]

end A144216

/-! ## A144216.P9177356330566376417

`(A335262(n)+n)/2`
-/

namespace A144216.P9177356330566376417
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A335262 n + (n : ℤ) : ℚ) / 2

end

end A144216.P9177356330566376417

namespace A144216

/-- `(A335262(n)+n)/2` -/
def P9177356330566376417.Spec : Prop :=
  ∀ n, P9177356330566376417.a n = (A144216 (n + 1) : ℚ)

end A144216

/-! ## A144216.P2176844505743799854

`A215630(n+1)-(n+1)`
-/

namespace A144216.P2176844505743799854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215630 (n + 1) - (n + 1 : ℤ)

end

end A144216.P2176844505743799854

namespace A144216

/-- `A215630(n+1)-(n+1)` -/
def P2176844505743799854.Spec : Prop :=
  ∀ n, P2176844505743799854.a n = A144216 (n + 1)

end A144216

/-! ## A144216.P8831358368851461174

`(C(A130517(n+1), 2)+n)/2`
-/

namespace A144216.P8831358368851461174
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (A130517 (n + 1)).toNat 2 + n : ℚ) / 2

end

end A144216.P8831358368851461174

namespace A144216

/-- `(C(A130517(n+1), 2)+n)/2` -/
def P8831358368851461174.Spec : Prop :=
  ∀ n, P8831358368851461174.a n = (A144216 (n + 1) : ℚ)

end A144216

/-! ## A144216.P6239287495513569640

`A215630(-xor(n, -1))%(n+1)`
-/

namespace A144216.P6239287495513569640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A215630 (-Int.xor (n : ℤ) (-1)).toNat) (n + 1 : ℤ)

end

end A144216.P6239287495513569640

namespace A144216

/-- `A215630(-xor(n, -1))%(n+1)` -/
def P6239287495513569640.Spec : Prop :=
  ∀ n, P6239287495513569640.a n = A144216 (n + 1)

end A144216

/-! ## A144216.P18342371375933559017

`n+1-A077028(comp[∑[n+1]])`
-/

namespace A144216.P18342371375933559017
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A077028 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A144216.P18342371375933559017

namespace A144216

/-- `n+1-A077028(comp[∑[n+1]])` -/
def P18342371375933559017.Spec : Prop :=
  ∀ n, P18342371375933559017.a n = A144216 (n + 1)

end A144216

/-! ## A144216.P159331844817199700

`A057944(n)-A004247(n)`
-/

namespace A144216.P159331844817199700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057944 n - A004247 n

end

end A144216.P159331844817199700

namespace A144216

/-- `A057944(n)-A004247(n)` -/
def P159331844817199700.Spec : Prop :=
  ∀ n, P159331844817199700.a n = A144216 (n + 1)

end A144216

/-! ## A144216.P941407449089304177

`n-A023443(A128139(n))`
-/

namespace A144216.P941407449089304177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A023443 (A128139 n).toNat

end

end A144216.P941407449089304177

namespace A144216

/-- `n-A023443(A128139(n))` -/
def P941407449089304177.Spec : Prop :=
  ∀ n, P941407449089304177.a n = A144216 (n + 1)

end A144216

/-! ## A144216.P4823191161140393541

`∑[A127948(n)]-A127948(n)`
-/

namespace A144216.P4823191161140393541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127948 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A127948 n

end

end A144216.P4823191161140393541

namespace A144216

/-- `∑[A127948(n)]-A127948(n)` -/
def P4823191161140393541.Spec : Prop :=
  ∀ n, P4823191161140393541.a n = A144216 (n + 1)

end A144216

/-! ## A144216.P11489246343510055031

`A057944(n)+1-A077028(n)`
-/

namespace A144216.P11489246343510055031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057944 n + (1 - A077028 n)

end

end A144216.P11489246343510055031

namespace A144216

/-- `A057944(n)+1-A077028(n)` -/
def P11489246343510055031.Spec : Prop :=
  ∀ n, P11489246343510055031.a n = A144216 (n + 1)

end A144216

/-! ## A144216.P4515982106053521233

`A061579(n)-A094053(n+1)`
-/

namespace A144216.P4515982106053521233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061579 n - A094053 (n + 1)

end

end A144216.P4515982106053521233

namespace A144216

/-- `A061579(n)-A094053(n+1)` -/
def P4515982106053521233.Spec : Prop :=
  ∀ n, P4515982106053521233.a n = A144216 (n + 1)

end A144216

/-! ## A144216.P3929273037305268776

`(A048147(n)+A003056(n))/2`
-/

namespace A144216.P3929273037305268776
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048147 n + A003056 n : ℚ) / 2

end

end A144216.P3929273037305268776

namespace A144216

/-- `(A048147(n)+A003056(n))/2` -/
def P3929273037305268776.Spec : Prop :=
  ∀ n, P3929273037305268776.a n = (A144216 (n + 1) : ℚ)

end A144216

/-! ## A144216.P18285243812861070802

`A073254(n)-C(A003056(n), 2)`
-/

namespace A144216.P18285243812861070802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073254 n - (Nat.choose (A003056 n).toNat 2 : ℤ)

end

end A144216.P18285243812861070802

namespace A144216

/-- `A073254(n)-C(A003056(n), 2)` -/
def P18285243812861070802.Spec : Prop :=
  ∀ n, P18285243812861070802.a n = A144216 (n + 1)

end A144216

/-! ## A144216.P10231035859611063233

`n-(A004247(n)+A002262(n))`
-/

namespace A144216.P10231035859611063233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (A004247 n + A002262 n)

end

end A144216.P10231035859611063233

namespace A144216

/-- `n-(A004247(n)+A002262(n))` -/
def P10231035859611063233.Spec : Prop :=
  ∀ n, P10231035859611063233.a n = A144216 (n + 1)

end A144216

/-! ## A144216.P7902064215902128517

`A025581(n)+n-A059036(n)`
-/

namespace A144216.P7902064215902128517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n + ((n : ℤ) - A059036 n)

end

end A144216.P7902064215902128517

namespace A144216

/-- `A025581(n)+n-A059036(n)` -/
def P7902064215902128517.Spec : Prop :=
  ∀ n, P7902064215902128517.a n = A144216 (n + 1)

end A144216

/-! ## A144216.P4618295117574584778

`A051162(n)+A073254(n)-n`
-/

namespace A144216.P4618295117574584778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051162 n + (A073254 n - (n : ℤ))

end

end A144216.P4618295117574584778

namespace A144216

/-- `A051162(n)+A073254(n)-n` -/
def P4618295117574584778.Spec : Prop :=
  ∀ n, P4618295117574584778.a n = A144216 (n + 1)

end A144216

/-! ## A144216.P1347007779556262570

`n-A002262(n)*A193592(n)`
-/

namespace A144216.P1347007779556262570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A002262 n * A193592 n

end

end A144216.P1347007779556262570

namespace A144216

/-- `n-A002262(n)*A193592(n)` -/
def P1347007779556262570.Spec : Prop :=
  ∀ n, P1347007779556262570.a n = A144216 (n + 1)

end A144216

/-! ## A144216.P12148797270632297617

`n-A002262(n)*A193739(n)`
-/

namespace A144216.P12148797270632297617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A002262 n * A193739 n

end

end A144216.P12148797270632297617

namespace A144216

/-- `n-A002262(n)*A193739(n)` -/
def P12148797270632297617.Spec : Prop :=
  ∀ n, P12148797270632297617.a n = A144216 (n + 1)

end A144216

/-! ## A144216.P2828793474816161453

`A073254(A014132(n+1))-(n+1)`
-/

namespace A144216.P2828793474816161453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073254 (A014132 (n + 1)).toNat - (n + 1 : ℤ)

end

end A144216.P2828793474816161453

namespace A144216

/-- `A073254(A014132(n+1))-(n+1)` -/
def P2828793474816161453.Spec : Prop :=
  ∀ n, P2828793474816161453.a n = A144216 (n + 1)

end A144216

/-!
# A144217: Weight array of A144216: a rectangular array by antidiagonals.

The programs for A144217, the canonical program `A144217.P17527769007908988650` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A144217 has offset 1).

The definition of A144217 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A144217.P17527769007908988650

`val(A131816(n), 2)`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A144217

/-- `val(A131816(n), 2)` -/
def P17527769007908988650.Spec : Prop :=
  ∀ n, (P17527769007908988650.a n : ℤ) = A144217 (n + 1)

theorem P17527769007908988650.correct : P17527769007908988650.Spec := by
  intro n
  simp only [A144217, Nat.add_sub_cancel]

end A144217

/-! ## A144217.P7027953398766939468

`floor(A131843(n)/2)`
-/

namespace A144217.P7027953398766939468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A131843 n : ℚ) / 2⌋

end

end A144217.P7027953398766939468

namespace A144217

/-- `floor(A131843(n)/2)` -/
def P7027953398766939468.Spec : Prop :=
  ∀ n, P7027953398766939468.a n = A144217 (n + 1)

end A144217

/-! ## A144217.P2162711796102501170

`A131821(n+1)-1`
-/

namespace A144217.P2162711796102501170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131821 (n + 1) - 1

end

end A144217.P2162711796102501170

namespace A144217

/-- `A131821(n+1)-1` -/
def P2162711796102501170.Spec : Prop :=
  ∀ n, P2162711796102501170.a n = A144217 (n + 1)

end A144217

/-! ## A144217.P5416716159812015189

`(A131844(n)-1)/3`
-/

namespace A144217.P5416716159812015189
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A131844 n - 1 : ℚ) / 3

end

end A144217.P5416716159812015189

namespace A144217

/-- `(A131844(n)-1)/3` -/
def P5416716159812015189.Spec : Prop :=
  ∀ n, P5416716159812015189.a n = (A144217 (n + 1) : ℚ)

end A144217

/-! ## A144217.P4860204147747788755

`val(A271709(n)-1, 2)`
-/

namespace A144217.P4860204147747788755
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A271709 n - 1).toNat 2

end

end A144217.P4860204147747788755

namespace A144217

/-- `val(A271709(n)-1, 2)` -/
def P4860204147747788755.Spec : Prop :=
  ∀ n, (P4860204147747788755.a n : ℤ) = A144217 (n + 1)

end A144217

/-! ## A144217.P18113068508277394572

`∑[char[∑[n+1]]]*A103451(n)`
-/

namespace A144217.P18113068508277394572
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A103451 n

end

end A144217.P18113068508277394572

namespace A144217

/-- `∑[char[∑[n+1]]]*A103451(n)` -/
def P18113068508277394572.Spec : Prop :=
  ∀ n, P18113068508277394572.a n = A144217 (n + 1)

end A144217

/-! ## A144217.P1260673427642733864

`Δ[A056942(n)-round(sqrt(2*(n+1)))]`
-/

namespace A144217.P1260673427642733864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056942 n - SequenceMachineLib.roundAway (Real.sqrt (2 * (n + 1) : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A144217.P1260673427642733864

namespace A144217

/-- `Δ[A056942(n)-round(sqrt(2*(n+1)))]` -/
def P1260673427642733864.Spec : Prop :=
  ∀ n, P1260673427642733864.a n = A144217 (n + 1)

end A144217

/-! ## A144217.P7980386229450072746

`A036262(n)%2*∑[char[∑[n+1]]]`
-/

namespace A144217.P7980386229450072746
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A036262 n) 2 * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A144217.P7980386229450072746

namespace A144217

/-- `A036262(n)%2*∑[char[∑[n+1]]]` -/
def P7980386229450072746.Spec : Prop :=
  ∀ n, P7980386229450072746.a n = A144217 (n + 1)

end A144217

/-! ## A144217.P3850496764441465293

`A002264(A131844(n))`
-/

namespace A144217.P3850496764441465293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A131844 n).toNat

end

end A144217.P3850496764441465293

namespace A144217

/-- `A002264(A131844(n))` -/
def P3850496764441465293.Spec : Prop :=
  ∀ n, P3850496764441465293.a n = A144217 (n + 1)

end A144217

/-! ## A144217.P12698945378994453905

`A004524(A131843(n))`
-/

namespace A144217.P12698945378994453905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A131843 n).toNat

end

end A144217.P12698945378994453905

namespace A144217

/-- `A004524(A131843(n))` -/
def P12698945378994453905.Spec : Prop :=
  ∀ n, P12698945378994453905.a n = A144217 (n + 1)

end A144217

/-! ## A144217.P6153617681159831306

`A023443(A131821(n+1))`
-/

namespace A144217.P6153617681159831306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A131821 (n + 1)).toNat

end

end A144217.P6153617681159831306

namespace A144217

/-- `A023443(A131821(n+1))` -/
def P6153617681159831306.Spec : Prop :=
  ∀ n, P6153617681159831306.a n = A144217 (n + 1)

end A144217

/-! ## A144217.P7206573153413813604

`A173989(A131911(n+1))`
-/

namespace A144217.P7206573153413813604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173989 (A131911 (n + 1)).toNat

end

end A144217.P7206573153413813604

namespace A144217

/-- `A173989(A131911(n+1))` -/
def P7206573153413813604.Spec : Prop :=
  ∀ n, P7206573153413813604.a n = A144217 (n + 1)

end A144217

/-! ## A144217.P13178133169709304922

`A028310(A103516(n))-1`
-/

namespace A144217.P13178133169709304922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A103516 n).toNat - 1

end

end A144217.P13178133169709304922

namespace A144217

/-- `A028310(A103516(n))-1` -/
def P13178133169709304922.Spec : Prop :=
  ∀ n, P13178133169709304922.a n = A144217 (n + 1)

end A144217

/-! ## A144217.P1023782720823879595

`A004525(A131843(n)-1)`
-/

namespace A144217.P1023782720823879595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A131843 n - 1).toNat

end

end A144217.P1023782720823879595

namespace A144217

/-- `A004525(A131843(n)-1)` -/
def P1023782720823879595.Spec : Prop :=
  ∀ n, P1023782720823879595.a n = A144217 (n + 1)

end A144217

/-! ## A144217.P10463912774178520142

`A131830(n)-A007318(n)`
-/

namespace A144217.P10463912774178520142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131830 n - A007318 n

end

end A144217.P10463912774178520142

namespace A144217

/-- `A131830(n)-A007318(n)` -/
def P10463912774178520142.Spec : Prop :=
  ∀ n, P10463912774178520142.a n = A144217 (n + 1)

end A144217

/-! ## A144217.P2759327315441149726

`A103516(n)-A103451(n)`
-/

namespace A144217.P2759327315441149726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103516 n - A103451 n

end

end A144217.P2759327315441149726

namespace A144217

/-- `A103516(n)-A103451(n)` -/
def P2759327315441149726.Spec : Prop :=
  ∀ n, P2759327315441149726.a n = A144217 (n + 1)

end A144217

/-! ## A144217.P5709593901751243413

`A128715(n)-A132044(n)`
-/

namespace A144217.P5709593901751243413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128715 n - A132044 n

end

end A144217.P5709593901751243413

namespace A144217

/-- `A128715(n)-A132044(n)` -/
def P5709593901751243413.Spec : Prop :=
  ∀ n, P5709593901751243413.a n = A144217 (n + 1)

end A144217

/-! ## A144217.P1216140909021670054

`A131897(n)-A130321(n)`
-/

namespace A144217.P1216140909021670054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131897 n - A130321 n

end

end A144217.P1216140909021670054

namespace A144217

/-- `A131897(n)-A130321(n)` -/
def P1216140909021670054.Spec : Prop :=
  ∀ n, P1216140909021670054.a n = A144217 (n + 1)

end A144217

/-! ## A144217.P1043610874558880895

`A131844(n)-A131843(n)`
-/

namespace A144217.P1043610874558880895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131844 n - A131843 n

end

end A144217.P1043610874558880895

namespace A144217

/-- `A131844(n)-A131843(n)` -/
def P1043610874558880895.Spec : Prop :=
  ∀ n, P1043610874558880895.a n = A144217 (n + 1)

end A144217

/-! ## A144217.P450918902002245227

`A131950(n)-A131923(n)`
-/

namespace A144217.P450918902002245227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131950 n - A131923 n

end

end A144217.P450918902002245227

namespace A144217

/-- `A131950(n)-A131923(n)` -/
def P450918902002245227.Spec : Prop :=
  ∀ n, P450918902002245227.a n = A144217 (n + 1)

end A144217

/-!
# A144218: Equals product A*B, where A is an infinite lower triangular matrix with A086246 in every column and B is the diagonal matrix with A001006 as diagonal.

The programs for A144218, there is no canonical definition to state claims against.
-/

/-! ## A144218.P6084770422631070465

`∏{e}[A247936(n), A001006(#)]`
-/

namespace A144218.P6084770422631070465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247936 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A001006 (Nat.factorization (f1 n).natAbs p)

end

end A144218.P6084770422631070465

/-! ## A144218.P11461511289283339851

`A144963(n+1)+A010060(A268217(n+3))`
-/

namespace A144218.P11461511289283339851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144963 (n + 1) + A010060 (A268217 (n + 3)).toNat

end

end A144218.P11461511289283339851

/-!
# A144219: Eigentriangle, row sums = number of ordered partitions of n into powers of 2.

The programs for A144219, there is no canonical definition to state claims against.
-/

/-! ## A144219.P1585584382999754448

`A144027(n+1)*A162514(A144269(n+1))`
-/

namespace A144219.P1585584382999754448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144027 (n + 1) * A162514 (A144269 (n + 1)).toNat

end

end A144219.P1585584382999754448

/-! ## A144219.P1506335924342249380

`A144027(n+1)-A144197(A158893(n+1))`
-/

namespace A144219.P1506335924342249380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144027 (n + 1) - A144197 (A158893 (n + 1)).toNat

end

end A144219.P1506335924342249380

/-! ## A144219.P1505306031238879792

`A144024(A033185(n+1))*A144027(n+1)`
-/

namespace A144219.P1505306031238879792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144024 (A033185 (n + 1)).toNat * A144027 (n + 1)

end

end A144219.P1505306031238879792

/-! ## A144219.P6656163936859767234

`A144024(A144018(n+1))*A144027(n+1)`
-/

namespace A144219.P6656163936859767234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144024 (A144018 (n + 1)).toNat * A144027 (n + 1)

end

end A144219.P6656163936859767234

/-! ## A144219.P5675944104546702123

`A144027(n+1)*A380510(A178619(n))`
-/

namespace A144219.P5675944104546702123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144027 (n + 1) * A380510 (A178619 n).toNat

end

end A144219.P5675944104546702123

/-!
# A144222: Floor of the volumes of the first sixteen Lobell polyhedra.

The programs for A144222, there is no canonical definition to state claims against.
-/

/-! ## A144222.P15057854804153240832

`comp[ceil(5*(n/4)²)]`
-/

namespace A144222.P15057854804153240832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈5 * ((n : ℚ) / 4) ^ 2⌉

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A144222.P15057854804153240832

/-! ## A144222.P15686500742800726003

`comp[∏{e}[n^4, #]]+4`
-/

namespace A144222.P15686500742800726003
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 4

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 4

end

end A144222.P15686500742800726003

/-! ## A144222.P2559052340307889207

`round(∑[sinh(root(2, n+1))])`
-/

namespace A144222.P2559052340307889207
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sinh ((2 : ℝ) ^ (1 / (n + 1 : ℝ)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A144222.P2559052340307889207

/-! ## A144222.P3249598724914007133

`comp[floor((n/2)²)]+char[C(3, n)]`
-/

namespace A144222.P3249598724914007133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n : ℚ) / 2) ^ 2⌋

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 3 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + (if ∃ j, f2 j = n then 1 else 0)

end

end A144222.P3249598724914007133

/-! ## A144222.P5665940153460942286

`floor(sqrt(∑[a(n-1)+3]+1))` with `a(0)=16`
-/

namespace A144222.P5665940153460942286
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [16] fun n f1 =>
  f1 (n - 1) + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.sqrt (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A144222.P5665940153460942286

/-!
# A144223: Number of ways of placing n labeled balls into n unlabeled (but 6-colored) boxes.

The programs for A144223, there is no canonical definition to state claims against.
-/

/-! ## A144223.P17466968462962902572

`A189233(A167614(n+5)+3)`
-/

namespace A144223.P17466968462962902572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189233 (A167614 (n + 5) + 3).toNat

end

end A144223.P17466968462962902572

/-! ## A144223.P16814977622182830570

`A189233(A133263(n+6)+4)`
-/

namespace A144223.P16814977622182830570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189233 (A133263 (n + 6) + 4).toNat

end

end A144223.P16814977622182830570

/-! ## A144223.P17913233142757265609

`A189233(A000124(n+6)+5)`
-/

namespace A144223.P17913233142757265609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189233 (A000124 (n + 6) + 5).toNat

end

end A144223.P17913233142757265609

/-! ## A144223.P2056486388502962114

`A292860(A000217(n+7)-7)`
-/

namespace A144223.P2056486388502962114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292860 (A000217 (n + 7) - 7).toNat

end

end A144223.P2056486388502962114

/-! ## A144223.P4011443525758563288

`A292860(A000124(n+7)-8)`
-/

namespace A144223.P4011443525758563288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292860 (A000124 (n + 7) - 8).toNat

end

end A144223.P4011443525758563288

/-! ## A144223.P14523718917222511970

`A292860(Δ[A023551(n+2)]-1)`
-/

namespace A144223.P14523718917222511970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292860 (f1 (n + 1) - f1 n - 1).toNat

end

end A144223.P14523718917222511970

/-! ## A144223.P8844933991098801332

`A292860(eq[7, val(A043569(n+1), 2)])`
-/

namespace A144223.P8844933991098801332
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A043569 (n + 1)).toNat 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292860 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A144223.P8844933991098801332

/-! ## A144223.P16568158862449605904

`A292860((n+11)²-A052905(n+11))`
-/

namespace A144223.P16568158862449605904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292860 (((n + 11) ^ 2 : ℤ) - A052905 (n + 11)).toNat

end

end A144223.P16568158862449605904

/-! ## A144223.P13020141909452896753

`A292860(A052905(n+6)-A005408(n+9))`
-/

namespace A144223.P13020141909452896753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292860 (A052905 (n + 6) - A005408 (n + 9)).toNat

end

end A144223.P13020141909452896753

/-!
# A144224: T(n,k) is the number of idempotent order-preserving full transformations (of an n-element chain) of waist k (waist(alpha) = max(Im(alpha))).

The programs for A144224, the canonical program `A144224.P11886496695467561451` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A144224 has offset 1).

The definition of A144224 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A144224.P11886496695467561451

`A122367(A002262(n))`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A144224

/-- `A122367(A002262(n))` -/
def P11886496695467561451.Spec : Prop :=
  ∀ n, P11886496695467561451.a n = A144224 (n + 1)

theorem P11886496695467561451.correct : P11886496695467561451.Spec := by
  intro n
  simp only [A144224, Nat.add_sub_cancel]

end A144224

/-! ## A144224.P14033463920838107907

`A060920(A112367(n))`
-/

namespace A144224.P14033463920838107907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060920 (A112367 n).toNat

end

end A144224.P14033463920838107907

namespace A144224

/-- `A060920(A112367(n))` -/
def P14033463920838107907.Spec : Prop :=
  ∀ n, P14033463920838107907.a n = A144224 (n + 1)

end A144224

/-! ## A144224.P3795128956523246269

`A053602(A174028(n))`
-/

namespace A144224.P3795128956523246269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053602 (A174028 n).toNat

end

end A144224.P3795128956523246269

namespace A144224

/-- `A053602(A174028(n))` -/
def P3795128956523246269.Spec : Prop :=
  ∀ n, P3795128956523246269.a n = A144224 (n + 1)

end A144224

/-! ## A144224.P12857328505162379456

`A001519(A002260(n+1))`
-/

namespace A144224.P12857328505162379456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001519 (A002260 (n + 1)).toNat

end

end A144224.P12857328505162379456

namespace A144224

/-- `A001519(A002260(n+1))` -/
def P12857328505162379456.Spec : Prop :=
  ∀ n, P12857328505162379456.a n = A144224 (n + 1)

end A144224

/-! ## A144224.P3078211019000562376

`A001519(A002262(n)+1)`
-/

namespace A144224.P3078211019000562376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001519 (A002262 n + 1).toNat

end

end A144224.P3078211019000562376

namespace A144224

/-- `A001519(A002262(n)+1)` -/
def P3078211019000562376.Spec : Prop :=
  ∀ n, P3078211019000562376.a n = A144224 (n + 1)

end A144224

/-! ## A144224.P3997723885118541604

`A000045(A158405(n+1))`
-/

namespace A144224.P3997723885118541604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A158405 (n + 1)).toNat

end

end A144224.P3997723885118541604

namespace A144224

/-- `A000045(A158405(n+1))` -/
def P3997723885118541604.Spec : Prop :=
  ∀ n, P3997723885118541604.a n = A144224 (n + 1)

end A144224

/-! ## A144224.P11507385939142626868

`A103245(n)/A111418(n)`
-/

namespace A144224.P11507385939142626868
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A103245 n : ℚ) / (A111418 n : ℚ)

end

end A144224.P11507385939142626868

namespace A144224

/-- `A103245(n)/A111418(n)` -/
def P11507385939142626868.Spec : Prop :=
  ∀ n, P11507385939142626868.a n = (A144224 (n + 1) : ℚ)

end A144224

/-! ## A144224.P9154216730109164903

`A053602(2*A158405(n+1))`
-/

namespace A144224.P9154216730109164903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053602 (2 * A158405 (n + 1)).toNat

end

end A144224.P9154216730109164903

namespace A144224

/-- `A053602(2*A158405(n+1))` -/
def P9154216730109164903.Spec : Prop :=
  ∀ n, P9154216730109164903.a n = A144224 (n + 1)

end A144224

/-! ## A144224.P9348087025361829342

`A212804(2*A002260(n+1))`
-/

namespace A144224.P9348087025361829342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (2 * A002260 (n + 1)).toNat

end

end A144224.P9348087025361829342

namespace A144224

/-- `A212804(2*A002260(n+1))` -/
def P9348087025361829342.Spec : Prop :=
  ∀ n, P9348087025361829342.a n = A144224 (n + 1)

end A144224

/-! ## A144224.P6905171892512869263

`A103609(2*A158405(n+1))`
-/

namespace A144224.P6905171892512869263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103609 (2 * A158405 (n + 1)).toNat

end

end A144224.P6905171892512869263

namespace A144224

/-- `A103609(2*A158405(n+1))` -/
def P6905171892512869263.Spec : Prop :=
  ∀ n, P6905171892512869263.a n = A144224 (n + 1)

end A144224

/-! ## A144224.P8288217098211147481

`A324969(2*A002260(n+1))`
-/

namespace A144224.P8288217098211147481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324969 (2 * A002260 (n + 1)).toNat

end

end A144224.P8288217098211147481

namespace A144224

/-- `A324969(2*A002260(n+1))` -/
def P8288217098211147481.Spec : Prop :=
  ∀ n, P8288217098211147481.a n = A144224 (n + 1)

end A144224

/-! ## A144224.P10136290889384827909

`A104763(n+1)²+A141169(n)²`
-/

namespace A144224.P10136290889384827909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104763 (n + 1) ^ 2 + A141169 n ^ 2

end

end A144224.P10136290889384827909

namespace A144224

/-- `A104763(n+1)²+A141169(n)²` -/
def P10136290889384827909.Spec : Prop :=
  ∀ n, P10136290889384827909.a n = A144224 (n + 1)

end A144224

/-! ## A144224.P5347754980066669732

`A000045(A002262(n)+A002260(n+1))`
-/

namespace A144224.P5347754980066669732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A002262 n + A002260 (n + 1)).toNat

end

end A144224.P5347754980066669732

namespace A144224

/-- `A000045(A002262(n)+A002260(n+1))` -/
def P5347754980066669732.Spec : Prop :=
  ∀ n, P5347754980066669732.a n = A144224 (n + 1)

end A144224

/-! ## A144224.P16858470662505995515

`A027935(A245300(n))`
-/

namespace A144224.P16858470662505995515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027935 (A245300 n).toNat

end

end A144224.P16858470662505995515

namespace A144224

/-- `A027935(A245300(n))` -/
def P16858470662505995515.Spec : Prop :=
  ∀ n, P16858470662505995515.a n = A144224 (n + 1)

end A144224

/-! ## A144224.P15161146083594283858

`A027935(A292564(n))`
-/

namespace A144224.P15161146083594283858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027935 (A292564 n).toNat

end

end A144224.P15161146083594283858

namespace A144224

/-- `A027935(A292564(n))` -/
def P15161146083594283858.Spec : Prop :=
  ∀ n, P15161146083594283858.a n = A144224 (n + 1)

end A144224

/-! ## A144224.P6895584389606217477

`A108037(2*A002260(n+1)²)`
-/

namespace A144224.P6895584389606217477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108037 (2 * A002260 (n + 1) ^ 2).toNat

end

end A144224.P6895584389606217477

namespace A144224

/-- `A108037(2*A002260(n+1)²)` -/
def P6895584389606217477.Spec : Prop :=
  ∀ n, P6895584389606217477.a n = A144224 (n + 1)

end A144224

/-! ## A144224.P6807963935679402074

`A104763(A185868(n+1))`
-/

namespace A144224.P6807963935679402074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104763 (A185868 (n + 1)).toNat

end

end A144224.P6807963935679402074

namespace A144224

/-- `A104763(A185868(n+1))` -/
def P6807963935679402074.Spec : Prop :=
  ∀ n, P6807963935679402074.a n = A144224 (n + 1)

end A144224

/-! ## A144224.P4223280153637073092

`A141169(A185869(n+1))`
-/

namespace A144224.P4223280153637073092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141169 (A185869 (n + 1)).toNat

end

end A144224.P4223280153637073092

namespace A144224

/-- `A141169(A185869(n+1))` -/
def P4223280153637073092.Spec : Prop :=
  ∀ n, P4223280153637073092.a n = A144224 (n + 1)

end A144224

/-! ## A144224.P16465915594561302102

`A092565((2*A002262(n))²)`
-/

namespace A144224.P16465915594561302102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092565 ((2 * A002262 n) ^ 2).toNat

end

end A144224.P16465915594561302102

namespace A144224

/-- `A092565((2*A002262(n))²)` -/
def P16465915594561302102.Spec : Prop :=
  ∀ n, P16465915594561302102.a n = A144224 (n + 1)

end A144224

/-! ## A144224.P10723354636696017320

`A106595(A061885(n))`
-/

namespace A144224.P10723354636696017320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106595 (A061885 n).toNat

end

end A144224.P10723354636696017320

namespace A144224

/-- `A106595(A061885(n))` -/
def P10723354636696017320.Spec : Prop :=
  ∀ n, P10723354636696017320.a n = A144224 (n + 1)

end A144224

/-!
# A144225: Bordered Pascal's triangle in rectangular format.

The programs for A144225, the canonical program `A144225.P8396101801530063706` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A144225 has offset 1).

The definition of A144225 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A144225.P2987238344364601790

`abs(Δ[A122433(n+1)])`
-/

namespace A144225.P2987238344364601790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122433 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A144225.P2987238344364601790

namespace A144225

/-- `abs(Δ[A122433(n+1)])` -/
def P2987238344364601790.Spec : Prop :=
  ∀ n, P2987238344364601790.a n = A144225 (n + 1)

end A144225

/-! ## A144225.P8396101801530063706

`A097805(n)-a(n-1)` with `a(0)=1, a(1)=0, a(2)=0`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A144225

/-- `A097805(n)-a(n-1)` -/
def P8396101801530063706.Spec : Prop :=
  ∀ n, P8396101801530063706.a n = A144225 (n + 1)

theorem P8396101801530063706.correct : P8396101801530063706.Spec := by
  intro n
  simp only [A144225, Nat.add_sub_cancel]

end A144225

/-! ## A144225.P1584314726833896215

`a(n-1)-A113313(n)` with `a(0)=1, a(1)=0, a(2)=0`
-/

namespace A144225.P1584314726833896215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0] fun n a =>
  a (n - 1) - A113313 n

end

end A144225.P1584314726833896215

namespace A144225

/-- `a(n-1)-A113313(n)` -/
def P1584314726833896215.Spec : Prop :=
  ∀ n, P1584314726833896215.a n = A144225 (n + 1)

end A144225

/-! ## A144225.P13063129459953407257

`A323211(n)+A057428(n)`
-/

namespace A144225.P13063129459953407257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323211 n + A057428 n

end

end A144225.P13063129459953407257

namespace A144225

/-- `A323211(n)+A057428(n)` -/
def P13063129459953407257.Spec : Prop :=
  ∀ n, P13063129459953407257.a n = A144225 (n + 1)

end A144225

/-! ## A144225.P11738307786809011140

`A323211(n)-A057427(n)`
-/

namespace A144225.P11738307786809011140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323211 n - A057427 n

end

end A144225.P11738307786809011140

namespace A144225

/-- `A323211(n)-A057427(n)` -/
def P11738307786809011140.Spec : Prop :=
  ∀ n, P11738307786809011140.a n = A144225 (n + 1)

end A144225

/-! ## A144225.P11331555593068303709

`A097805(A083920(char[1]+n))`
-/

namespace A144225.P11331555593068303709
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097805 (A083920 ((if ∃ j, f1 j = n then 1 else 0) + n)).toNat

end

end A144225.P11331555593068303709

namespace A144225

/-- `A097805(A083920(char[1]+n))` -/
def P11331555593068303709.Spec : Prop :=
  ∀ n, P11331555593068303709.a n = A144225 (n + 1)

end A144225

/-! ## A144225.P6410692428315989244

`A097805(A083920(n))-char[1]`
-/

namespace A144225.P6410692428315989244
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097805 (A083920 n).toNat - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A144225.P6410692428315989244

namespace A144225

/-- `A097805(A083920(n))-char[1]` -/
def P6410692428315989244.Spec : Prop :=
  ∀ n, P6410692428315989244.a n = A144225 (n + 1)

end A144225

/-! ## A144225.P525457483920238521

`A097805(xor(char[1], A083920(n)))`
-/

namespace A144225.P525457483920238521
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097805 (Int.xor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A083920 n)).toNat

end

end A144225.P525457483920238521

namespace A144225

/-- `A097805(xor(char[1], A083920(n)))` -/
def P525457483920238521.Spec : Prop :=
  ∀ n, P525457483920238521.a n = A144225 (n + 1)

end A144225

/-! ## A144225.P5495391066427003354

`A028262(n)-A001221(A001316(n))*A007318(n)`
-/

namespace A144225.P5495391066427003354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028262 n - A001221 (A001316 n).toNat * A007318 n

end

end A144225.P5495391066427003354

namespace A144225

/-- `A028262(n)-A001221(A001316(n))*A007318(n)` -/
def P5495391066427003354.Spec : Prop :=
  ∀ n, P5495391066427003354.a n = A144225 (n + 1)

end A144225

/-! ## A144225.P1453154718482784729

`A159854(C(n, n²)+n+1)`
-/

namespace A144225.P1453154718482784729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159854 (Nat.choose n (n ^ 2) + (n + 1))

end

end A144225.P1453154718482784729

namespace A144225

/-- `A159854(C(n, n²)+n+1)` -/
def P1453154718482784729.Spec : Prop :=
  ∀ n, P1453154718482784729.a n = A144225 (n + 1)

end A144225

/-! ## A144225.P1694846481156331037

`A159854(A348776(n+1))`
-/

namespace A144225.P1694846481156331037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159854 (A348776 (n + 1)).toNat

end

end A144225.P1694846481156331037

namespace A144225

/-- `A159854(A348776(n+1))` -/
def P1694846481156331037.Spec : Prop :=
  ∀ n, P1694846481156331037.a n = A144225 (n + 1)

end A144225

/-! ## A144225.P15173509263462756821

`A159854(A141044(n)+n)`
-/

namespace A144225.P15173509263462756821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159854 (A141044 n + (n : ℤ)).toNat

end

end A144225.P15173509263462756821

namespace A144225

/-- `A159854(A141044(n)+n)` -/
def P15173509263462756821.Spec : Prop :=
  ∀ n, P15173509263462756821.a n = A144225 (n + 1)

end A144225

/-! ## A144225.P14716653885365527708

`A159854(ceil(sqrt(A027688(n))))`
-/

namespace A144225.P14716653885365527708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159854 ⌈Real.sqrt (A027688 n : ℝ)⌉.toNat

end

end A144225.P14716653885365527708

namespace A144225

/-- `A159854(ceil(sqrt(A027688(n))))` -/
def P14716653885365527708.Spec : Prop :=
  ∀ n, P14716653885365527708.a n = A144225 (n + 1)

end A144225

/-! ## A144225.P2184193118803638032

`A159854(ceil(sqrt(A027689(n))))`
-/

namespace A144225.P2184193118803638032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159854 ⌈Real.sqrt (A027689 n : ℝ)⌉.toNat

end

end A144225.P2184193118803638032

namespace A144225

/-- `A159854(ceil(sqrt(A027689(n))))` -/
def P2184193118803638032.Spec : Prop :=
  ∀ n, P2184193118803638032.a n = A144225 (n + 1)

end A144225

/-! ## A144225.P639484324258509419

`A159854(ceil(sqrt(A087475(n))))`
-/

namespace A144225.P639484324258509419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159854 ⌈Real.sqrt (A087475 n : ℝ)⌉.toNat

end

end A144225.P639484324258509419

namespace A144225

/-- `A159854(ceil(sqrt(A087475(n))))` -/
def P639484324258509419.Spec : Prop :=
  ∀ n, P639484324258509419.a n = A144225 (n + 1)

end A144225

/-! ## A144225.P6218606622231554789

`A159854(round(sqrt(A027691(n))))`
-/

namespace A144225.P6218606622231554789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159854 (SequenceMachineLib.roundAway (Real.sqrt (A027691 n : ℝ))).toNat

end

end A144225.P6218606622231554789

namespace A144225

/-- `A159854(round(sqrt(A027691(n))))` -/
def P6218606622231554789.Spec : Prop :=
  ∀ n, P6218606622231554789.a n = A144225 (n + 1)

end A144225

/-! ## A144225.P12124290753224084413

`A159854(A066182(n+1)+1)`
-/

namespace A144225.P12124290753224084413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159854 (A066182 (n + 1) + 1).toNat

end

end A144225.P12124290753224084413

namespace A144225

/-- `A159854(A066182(n+1)+1)` -/
def P12124290753224084413.Spec : Prop :=
  ∀ n, P12124290753224084413.a n = A144225 (n + 1)

end A144225

/-! ## A144225.P3247482432012997151

`A028262(n)-A001222(A008578(n+1))*A007318(n)`
-/

namespace A144225.P3247482432012997151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028262 n - A001222 (A008578 (n + 1)).toNat * A007318 n

end

end A144225.P3247482432012997151

namespace A144225

/-- `A028262(n)-A001222(A008578(n+1))*A007318(n)` -/
def P3247482432012997151.Spec : Prop :=
  ∀ n, P3247482432012997151.a n = A144225 (n + 1)

end A144225

/-! ## A144225.P14824083084677270657

`A323211(n)-A323239(A000040(n+1))`
-/

namespace A144225.P14824083084677270657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323211 n - A323239 (A000040 (n + 1)).toNat

end

end A144225.P14824083084677270657

namespace A144225

/-- `A323211(n)-A323239(A000040(n+1))` -/
def P14824083084677270657.Spec : Prop :=
  ∀ n, P14824083084677270657.a n = A144225 (n + 1)

end A144225

/-!
# A144226: Prime numbers containing an equal number of odd and even digits.

The programs for A144226, there is no canonical definition to state claims against.
-/

/-! ## A144226.P16994147833316200098

`p?[A375214(n+1)]`
-/

namespace A144226.P16994147833316200098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375214 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A144226.P16994147833316200098

/-! ## A144226.P2436736116403391621

`p?[A227870(n+1)]`
-/

namespace A144226.P2436736116403391621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227870 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A144226.P2436736116403391621

/-! ## A144226.P552963316218908692

`p?[record[A227870(A324347(n))]]`
-/

namespace A144226.P552963316218908692
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227870 (A324347 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A144226.P552963316218908692

/-! ## A144226.P15484605245946164171

`p?[record[A227870(A349315(n))]]`
-/

namespace A144226.P15484605245946164171
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227870 (A349315 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A144226.P15484605245946164171

/-! ## A144226.P8558280024837015315

`∩[A334321(n+1), A375214(n+1)]`
-/

namespace A144226.P8558280024837015315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334321 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375214 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A144226.P8558280024837015315

/-! ## A144226.P12671480680291662373

`∩[A071621(n+1), A227870(n+1)]`
-/

namespace A144226.P12671480680291662373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071621 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227870 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A144226.P12671480680291662373

/-! ## A144226.P13676602779268494827

`∩[A071621(n+1), A375214(n+1)]`
-/

namespace A144226.P13676602779268494827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071621 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375214 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A144226.P13676602779268494827

/-! ## A144226.P4160125955647220958

`∩[A106118(n+1), A375214(n+1)]`
-/

namespace A144226.P4160125955647220958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106118 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375214 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A144226.P4160125955647220958

/-! ## A144226.P7594963375580941343

`∩[A108719(n+1), A375214(n+1)]`
-/

namespace A144226.P7594963375580941343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108719 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375214 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A144226.P7594963375580941343

/-! ## A144226.P12238901752423061172

`∩[A138837(n+1), A375214(n+1)]`
-/

namespace A144226.P12238901752423061172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138837 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375214 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A144226.P12238901752423061172

/-! ## A144226.P3998966141802558221

`∩[A140461(n+1), A375214(n+1)]`
-/

namespace A144226.P3998966141802558221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140461 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375214 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A144226.P3998966141802558221

/-! ## A144226.P6285421301154281452

`∩[A157996(n+1), A375214(n+1)]`
-/

namespace A144226.P6285421301154281452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157996 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375214 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A144226.P6285421301154281452

/-! ## A144226.P1114337238567933114

`∩[A197636(n+1), A375214(n+1)]`
-/

namespace A144226.P1114337238567933114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197636 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375214 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A144226.P1114337238567933114

/-! ## A144226.P15292895581121803074

`∩[A004139(n+1), A227870(n+1)]`
-/

namespace A144226.P15292895581121803074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227870 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A144226.P15292895581121803074

/-! ## A144226.P16286614678418993761

`∩[A045319(n+1), A227870(n+1)]`
-/

namespace A144226.P16286614678418993761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227870 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A144226.P16286614678418993761

/-! ## A144226.P809116973499391462

`∩[A045344(n+1), A227870(n+1)]`
-/

namespace A144226.P809116973499391462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227870 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A144226.P809116973499391462

/-! ## A144226.P4521438112413878476

`∩[A065091(n+1), A227870(n+1)]`
-/

namespace A144226.P4521438112413878476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227870 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A144226.P4521438112413878476

/-! ## A144226.P8430947597336337070

`∩[A004139(n+1), A375214(n+1)]`
-/

namespace A144226.P8430947597336337070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375214 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A144226.P8430947597336337070

/-! ## A144226.P3337205374622198703

`∩[A215848(n+1), A375214(n+1)]`
-/

namespace A144226.P3337205374622198703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215848 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375214 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A144226.P3337205374622198703

/-! ## A144226.P10328062826131207673

`∩[A000040(n+1), A227870(n+1)]`
-/

namespace A144226.P10328062826131207673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227870 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A144226.P10328062826131207673

/-!
# A144228: Triangle T(n,k), n>=0, 0<=k<=n, read by rows: T(n,k) = number of simple graphs on n labeled nodes with k edges where each maximally connected subgraph has at most one cycle.

The programs for A144228, there is no canonical definition to state claims against.
-/

/-! ## A144228.P992921171121148657

`A144163(n)*A326454(A144207(n))`
-/

namespace A144228.P992921171121148657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144163 n * A326454 (A144207 n).toNat

end

end A144228.P992921171121148657

/-! ## A144228.P17305936014373040997

`A118759(or(A144163(n), A144207(n)))`
-/

namespace A144228.P17305936014373040997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (Int.lor (A144163 n) (A144207 n)).toNat

end

end A144228.P17305936014373040997

/-! ## A144228.P14083246106700610493

`A144163(n)*A144180(A172543(n+1))`
-/

namespace A144228.P14083246106700610493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144163 n * A144180 (A172543 (n + 1)).toNat

end

end A144228.P14083246106700610493

/-! ## A144228.P15598450830544117177

`A144163(A122202(∑[n]))`
-/

namespace A144228.P15598450830544117177
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144163 (A122202 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A144228.P15598450830544117177

/-! ## A144228.P3417206769060062647

`A144163(A029837(2^n))`
-/

namespace A144228.P3417206769060062647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144163 (A029837 (2 ^ n)).toNat

end

end A144228.P3417206769060062647

/-!
# A144229: The numerators of the convergents to the recursion x=1/(x^2+1).

The programs for A144229, the canonical program `A144229.P2171288786835170748` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A144229 has offset 0).

The definition of A144229 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A144229.P2171288786835170748

`(a(n-2)²+a(n-1))²` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A144229

/-- `(a(n-2)²+a(n-1))²` -/
def P2171288786835170748.Spec : Prop :=
  ∀ n, (P2171288786835170748.a n : ℤ) = A144229 n

theorem P2171288786835170748.correct : P2171288786835170748.Spec := by
  intro n
  simp only [A144229]

end A144229

/-! ## A144229.P10538347341692496656

`(2*a(n-1)-(a(n-1)-a(n-2)²))²` with `a(0)=1, a(1)=1`
-/

namespace A144229.P10538347341692496656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  (2 * a (n - 1) - (a (n - 1) - a (n - 2) ^ 2)) ^ 2

end

end A144229.P10538347341692496656

namespace A144229

/-- `(2*a(n-1)-(a(n-1)-a(n-2)²))²` -/
def P10538347341692496656.Spec : Prop :=
  ∀ n, P10538347341692496656.a n = A144229 n

end A144229

/-! ## A144229.P7609032040632207522

`A076725(n)²`
-/

namespace A144229.P7609032040632207522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076725 n ^ 2

end

end A144229.P7609032040632207522

namespace A144229

/-- `A076725(n)²` -/
def P7609032040632207522.Spec : Prop :=
  ∀ n, P7609032040632207522.a n = A144229 n

end A144229

/-! ## A144229.P10729187572250048936

`A242117(n+1)+1`
-/

namespace A144229.P10729187572250048936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242117 (n + 1) + 1

end

end A144229.P10729187572250048936

namespace A144229

/-- `A242117(n+1)+1` -/
def P10729187572250048936.Spec : Prop :=
  ∀ n, P10729187572250048936.a n = A144229 n

end A144229

/-! ## A144229.P11710160420561076969

`A076725(n)^A000032(A027870(n))`
-/

namespace A144229.P11710160420561076969
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A076725 n : ℚ) ^ (A000032 (A027870 n).toNat : ℤ)

end

end A144229.P11710160420561076969

namespace A144229

/-- `A076725(n)^A000032(A027870(n))` -/
def P11710160420561076969.Spec : Prop :=
  ∀ n, P11710160420561076969.a n = (A144229 n : ℚ)

end A144229

/-!
# A144230: Numerators of the convergents to x = 1/(x^3+1).

The programs for A144230, there is no canonical definition to state claims against.
-/

/-! ## A144230.P14562715138146991822

`(a(n-1)+a(n-2)^3)^3` with `a(0)=1, a(1)=1`
-/

namespace A144230.P14562715138146991822
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  (a (n - 1) + a (n - 2) ^ 3) ^ 3

end

end A144230.P14562715138146991822

/-!
# A144231: Prime numbers of the form 3^k +- 2 for k >= 1.

The programs for A144231, there is no canonical definition to state claims against.
-/

/-! ## A144231.P14267769464373443289

`p?[abs(2-Δ[A254006(n+1)])]`
-/

namespace A144231.P14267769464373443289
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254006 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - (f2 (n + 1) - f2 n)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A144231.P14267769464373443289

/-! ## A144231.P13845328644654614587

`p?[A068911(n)-a(n-1)]` with `a(0)=0, a(1)=0, a(2)=1`
-/

namespace A144231.P13845328644654614587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 1] fun n f1 =>
  A068911 n - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A144231.P13845328644654614587

/-! ## A144231.P921880806387257087

`p?[2*A038754(n)-a(n-1)]` with `a(0)=0, a(1)=1`
-/

namespace A144231.P921880806387257087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  2 * A038754 n - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A144231.P921880806387257087

/-! ## A144231.P6636777870991424097

`p?[4*A108411(n)-a(n-2)]` with `a(0)=5, a(1)=1`
-/

namespace A144231.P6636777870991424097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [5, 1] fun n f1 =>
  4 * A108411 n - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A144231.P6636777870991424097

/-! ## A144231.P8815402545539590210

`p?[A000244(n+2)%(∏[gcd(3, n)]-(3-2^(n%3)))]`
-/

namespace A144231.P8815402545539590210
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 3 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000244 (n + 2)) (((∏ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - (3 - (2 ^ (n % 3) : ℤ)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A144231.P8815402545539590210

/-!
# A144232: Prime numbers of the form 4^k +- 3.

The programs for A144232, there is no canonical definition to state claims against.
-/

/-! ## A144232.P10268039973579448453

`p?[∑[6*C(2^n-1, and(1, n))]+1]`
-/

namespace A144232.P10268039973579448453
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * Nat.choose ((2 ^ n : ℤ) - 1).toNat (Nat.land 1 n)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A144232.P10268039973579448453

/-! ## A144232.P4357747729647561080

`p?[3-5*n%2+4^∑[n%2]-n%2]`
-/

namespace A144232.P4357747729647561080
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - ((5 * (n % 2) : ℕ) : ℤ) + ((4 ^ (∑ j ∈ Finset.range (n + 1), f2 j) : ℤ) - ((n % 2 : ℕ) : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A144232.P4357747729647561080

/-! ## A144232.P11438229969641468824

`p?[abs(Δ[(-2)^n]+2)-((-1)^n-(-2)^n)]`
-/

namespace A144232.P11438229969641468824
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-2) ^ n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n + 2| - ((-1) ^ n - (-2) ^ n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A144232.P11438229969641468824

/-! ## A144232.P15177327873940161794

`∪[A135535(n+1), p?[A253208(n)]]`
-/

namespace A144232.P15177327873940161794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135535 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253208 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => (f3 j).toNat.Prime) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A144232.P15177327873940161794

/-!
# A144234: Prime numbers of the form 6^k +- 5.

The programs for A144234, there is no canonical definition to state claims against.
-/

/-! ## A144234.P17616459468367786849

`p?[A016861(record[A184184(n)])]`
-/

namespace A144234.P17616459468367786849
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184184 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016861 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A144234.P17616459468367786849

/-!
# A144235: Number of n X n binary arrays with every 1 adjacent to at least one other 1 both bishopwise and rookwise but with no three 1s in a row bishopwise or rookwise.

The programs for A144235, there is no canonical definition to state claims against.
-/

/-! ## A144235.P14196320982826694565

`A264749(∑[A146248(n+2)²])`
-/

namespace A144235.P14196320982826694565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146248 (n + 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264749 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A144235.P14196320982826694565

/-!
# A144236: Prime numbers of the form 7^k +- 6.

The programs for A144236, there is no canonical definition to state claims against.
-/

/-! ## A144236.P12670354118822175975

`p?[∪[A164783(n+1), A253210(n+1)]]`
-/

namespace A144236.P12670354118822175975
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164783 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253210 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A144236.P12670354118822175975

/-!
# A144238: Number of n X n binary arrays, symmetric under horizontal and vertical reflection, with every 1 adjacent to at least one other 1 both bishopwise and rookwise but with no three 1s in a row bishopwise or rookwise.

The programs for A144238, there is no canonical definition to state claims against.
-/

/-! ## A144238.P6527530352723126391

`A006083(n+1)*A324080(A324075(n))`
-/

namespace A144238.P6527530352723126391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006083 (n + 1) * A324080 (A324075 n).toNat

end

end A144238.P6527530352723126391

/-! ## A144238.P8796266406963558103

`A185318(or(A055277(n+5), A303748(n)))`
-/

namespace A144238.P8796266406963558103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185318 (Int.lor (A055277 (n + 5)) (A303748 n)).toNat

end

end A144238.P8796266406963558103

/-! ## A144238.P15620462638935045932

`or(A001221(3*(n+1)), A065717(A368947(n)))`
-/

namespace A144238.P15620462638935045932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001221 (3 * (n + 1))) (A065717 (A368947 n).toNat)

end

end A144238.P15620462638935045932

/-! ## A144238.P4495150036763112249

`A324751(A324770(n+2)+A324733(2*n+3))`
-/

namespace A144238.P4495150036763112249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324751 (A324770 (n + 2) + A324733 (2 * n + 3)).toNat

end

end A144238.P4495150036763112249

/-!
# A144239: Number of n X n binary arrays, symmetric about main diagonal, with every 1 adjacent to at least one other 1 both bishopwise and rookwise but with no three 1s in a row bishopwise or rookwise.

The programs for A144239, there is no canonical definition to state claims against.
-/

/-! ## A144239.P9389046791711849905

`ceil(A006901(n+3)/9)`
-/

namespace A144239.P9389046791711849905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A006901 (n + 3) : ℚ) / 9⌉

end

end A144239.P9389046791711849905

/-! ## A144239.P2311034278477723269

`round(sqrt(∑[A366336(n+1)]))`
-/

namespace A144239.P2311034278477723269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366336 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℝ))

end

end A144239.P2311034278477723269

/-!
# A144245: Prime numbers of the form 9^k +- 8.

The programs for A144245, there is no canonical definition to state claims against.
-/

/-! ## A144245.P4493353516396447047

`p?[∪[9^(n+1)-8, 9^n+8]]`
-/

namespace A144245.P4493353516396447047
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (9 ^ (n + 1) : ℤ) - 8

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9 ^ n + 8

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = x) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A144245.P4493353516396447047

/-!
# A144246: Prime numbers of the form 10^k +- 9.

The programs for A144246, there is no canonical definition to state claims against.
-/

/-! ## A144246.P10258797141346949430

`p?[Δ[11*a(n-2)-10*a(n-4)]]` with `a(0)=9, a(1)=1, a(2)=11, a(3)=12`
-/

namespace A144246.P10258797141346949430
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [9, 1, 11, 12] fun n f2 =>
  11 * f2 (n - 2) - 10 * f2 (n - 4)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A144246.P10258797141346949430

/-! ## A144246.P2875522356704991472

`p?[∪[A170955(n+1), A253213(n)]]`
-/

namespace A144246.P2875522356704991472
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170955 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253213 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A144246.P2875522356704991472

/-!
# A144248: Partial sums of A000594.

The programs for A144248, there is no canonical definition to state claims against.
-/

/-! ## A144248.P15893059302833169557

`∑[A000594(n+1)]`
-/

namespace A144248.P15893059302833169557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000594 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A144248.P15893059302833169557

/-! ## A144248.P5848058473764433128

`∑[A145155(n)/(n+1)]`
-/

namespace A144248.P5848058473764433128
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A145155 n : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A144248.P5848058473764433128

/-! ## A144248.P689719410546327032

`A000594(root(n, 2)²+1)+a(n-1)` with `a(0)=1`
-/

namespace A144248.P689719410546327032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000594 (SequenceMachineLib.roundAway (((n : ℝ) ^ (1 / (2 : ℝ))) ^ 2 + 1)).toNat + a (n - 1)

end

end A144248.P689719410546327032

/-! ## A144248.P10747454096771513174

`∑[∑{d}[n+1, A008683(#)*A034777((n+1)/#)]]`
-/

namespace A144248.P10747454096771513174
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), A008683 d * A034777 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A144248.P10747454096771513174

/-! ## A144248.P15028380808967668327

`A144249(n+2)-(A144249(n+1)+A000594(n+2))`
-/

namespace A144248.P15028380808967668327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144249 (n + 2) - (A144249 (n + 1) + A000594 (n + 2))

end

end A144248.P15028380808967668327

/-! ## A144248.P5277430166090951733

`∑[A292781(A075349(n+1)-1)]`
-/

namespace A144248.P5277430166090951733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292781 (A075349 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A144248.P5277430166090951733

/-! ## A144248.P17110966170669574113

`∑[A292781(A075349(n+2))]`
-/

namespace A144248.P17110966170669574113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292781 (A075349 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A144248.P17110966170669574113

/-! ## A144248.P926494851451039158

`∑[A055978(4*(n+1))]`
-/

namespace A144248.P926494851451039158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055978 (4 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A144248.P926494851451039158

/-!
# A144249: Apply partial sum operator twice to A000594.

The programs for A144249, there is no canonical definition to state claims against.
-/

/-! ## A144249.P14025677483050548665

`∑[A144248(n+1)]`
-/

namespace A144249.P14025677483050548665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144248 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A144249.P14025677483050548665

/-! ## A144249.P10494182672743972697

`∑[∑[A000594(n+1)]]`
-/

namespace A144249.P10494182672743972697
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000594 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A144249.P10494182672743972697

/-! ## A144249.P9922882946421313959

`∑[∑[A145155(n)/(n+1)]]`
-/

namespace A144249.P9922882946421313959
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A145155 n : ℚ) / (n + 1 : ℚ)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A144249.P9922882946421313959

/-! ## A144249.P17369927821669505391

`∑[∑[∑{d}[n+1, A308492(#)]]]`
-/

namespace A144249.P17369927821669505391
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f3 n), A308492 d

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A144249.P17369927821669505391

/-! ## A144249.P11574868817218338933

`∑[∑[A292781(A075349(n+1)-1)]]`
-/

namespace A144249.P11574868817218338933
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292781 (A075349 (n + 1) - 1).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A144249.P11574868817218338933

/-! ## A144249.P11260013410951497917

`∑[∑[A292781(A075349(n+2))]]`
-/

namespace A144249.P11260013410951497917
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292781 (A075349 (n + 2)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A144249.P11260013410951497917

/-! ## A144249.P7473136867694025101

`∑[∑[A055978(4*(n+1))]]`
-/

namespace A144249.P7473136867694025101
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055978 (4 * (n + 1))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A144249.P7473136867694025101

/-!
# A144250: Eigentriangle of A085478: T(n,k) = A085478(n,k) * A125273(k).

The programs for A144250, there is no canonical definition to state claims against.
-/

/-! ## A144250.P4155381422389982627

`A085478(n)*A125273(A002262(n))`
-/

namespace A144250.P4155381422389982627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085478 n * A125273 (A002262 n).toNat

end

end A144250.P4155381422389982627

/-! ## A144250.P3793291573227139663

`abs(A123970(n)*A125273(A002262(n)))`
-/

namespace A144250.P3793291573227139663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A123970 n * A125273 (A002262 n).toNat|

end

end A144250.P3793291573227139663

/-! ## A144250.P8919651432507790704

`abs(A125273(A002262(n))*A129818(n))`
-/

namespace A144250.P8919651432507790704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A125273 (A002262 n).toNat * A129818 n|

end

end A144250.P8919651432507790704

/-! ## A144250.P9319551942419740864

`A085478(n)*A186023(A112367(n))`
-/

namespace A144250.P9319551942419740864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085478 n * A186023 (A112367 n).toNat

end

end A144250.P9319551942419740864

/-! ## A144250.P9908735493709363643

`abs(A123970(n)*A186023(A112367(n)))`
-/

namespace A144250.P9908735493709363643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A123970 n * A186023 (A112367 n).toNat|

end

end A144250.P9908735493709363643

/-!
# A144251: Eigensequence of triangle A054142.

The programs for A144251, there is no canonical definition to state claims against.
-/

/-! ## A144251.P2586834818639560986

`A144252(eq[0, A111823(n)])`
-/

namespace A144251.P2586834818639560986
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111823 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144252 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A144251.P2586834818639560986

/-! ## A144251.P4440012046986301834

`A144252(eq[0, A111828(n)])`
-/

namespace A144251.P4440012046986301834
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111828 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144252 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A144251.P4440012046986301834

/-! ## A144251.P1096446960443421691

`A210434(A058105(n))`
-/

namespace A144251.P1096446960443421691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210434 (A058105 n).toNat

end

end A144251.P1096446960443421691

/-!
# A144252: Eigentriangle, row sums = A144251 shifted, right border = A144251.

The programs for A144252, there is no canonical definition to state claims against.
-/

/-! ## A144252.P18311667528153300274

`A054142(n)*A350656(A002262(n)!)`
-/

namespace A144252.P18311667528153300274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054142 n * A350656 (Nat.factorial (A002262 n).toNat)

end

end A144252.P18311667528153300274

/-! ## A144252.P7610204370182033721

`A171822(n)/A085478(n)*A167976(A233543(n))`
-/

namespace A144252.P7610204370182033721
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A171822 n : ℚ) / (A085478 n : ℚ) * (A167976 (A233543 n).toNat : ℚ)

end

end A144252.P7610204370182033721

/-!
# A144253: Bases and exponents in the prime decomposition of n replaced by digits of the Gregorian Calendar with these indices.

The programs for A144253, there is no canonical definition to state claims against.
-/

/-! ## A144253.P10412798346752015212

`4^(a(n-1)-1)` with `a(0)=1, a(1)=3, a(2)=6, a(3)=5`
-/

namespace A144253.P10412798346752015212
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [1, 3, 6, 5] fun n a =>
  (4 : ℝ) ^ (a (n - 1) - 1)

end

end A144253.P10412798346752015212

/-!
# A144254: Eigentriangle by rows, termwise products of A078812 and its eigensequence, A125274.

The programs for A144254, there is no canonical definition to state claims against.
-/

/-! ## A144254.P14821737646567810985

`A078812(n)*A125274(A002262(n))`
-/

namespace A144254.P14821737646567810985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078812 n * A125274 (A002262 n).toNat

end

end A144254.P14821737646567810985

/-! ## A144254.P594753616352165949

`abs(A053122(n)*A125274(A002262(n)))`
-/

namespace A144254.P594753616352165949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A053122 n * A125274 (A002262 n).toNat|

end

end A144254.P594753616352165949

/-! ## A144254.P16208732135710698596

`A125274(A002262(n))*A202064(A245300(n))`
-/

namespace A144254.P16208732135710698596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125274 (A002262 n).toNat * A202064 (A245300 n).toNat

end

end A144254.P16208732135710698596

/-! ## A144254.P13219971950591021403

`A125274(A002262(n))*A128908(A014132(n+1))`
-/

namespace A144254.P13219971950591021403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125274 (A002262 n).toNat * A128908 (A014132 (n + 1)).toNat

end

end A144254.P13219971950591021403

/-! ## A144254.P13954213026879185640

`A098925(A064801(n+1))*A125274(A002262(n))`
-/

namespace A144254.P13954213026879185640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098925 (A064801 (n + 1)).toNat * A125274 (A002262 n).toNat

end

end A144254.P13954213026879185640

/-! ## A144254.P9309263197590757861

`A030111(A185868(n+1))*A125274(A002262(n))`
-/

namespace A144254.P9309263197590757861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030111 (A185868 (n + 1)).toNat * A125274 (A002262 n).toNat

end

end A144254.P9309263197590757861

/-! ## A144254.P2099592321466497122

`A030111(A185869(n+1))*A125274(A002262(n))`
-/

namespace A144254.P2099592321466497122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030111 (A185869 (n + 1)).toNat * A125274 (A002262 n).toNat

end

end A144254.P2099592321466497122

/-! ## A144254.P1247478848925977688

`(A128908(n+1)+A085478(n))*A125274(A002262(n))`
-/

namespace A144254.P1247478848925977688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A128908 (n + 1) + A085478 n) * A125274 (A002262 n).toNat

end

end A144254.P1247478848925977688

/-! ## A144254.P11788334543668298576

`(A111125(n)+A085478(n))/2*A125274(A002262(n))`
-/

namespace A144254.P11788334543668298576
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A111125 n + A085478 n : ℚ) / 2 * (A125274 (A002262 n).toNat : ℚ)

end

end A144254.P11788334543668298576

/-!
# A144255: Semiprimes of the form k^2+1.

The programs for A144255, the canonical program `A144255.P6279309011135346714` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A144255 has offset 1).

The definition of A144255 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A144255.P4393129369273692259

`∩[A189047(n+1), A248742(n+1)]`
-/

namespace A144255.P4393129369273692259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189047 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248742 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A144255.P4393129369273692259

namespace A144255

/-- `∩[A189047(n+1), A248742(n+1)]` -/
def P4393129369273692259.Spec : Prop :=
  ∀ n, (P4393129369273692259.a n : ℤ) = A144255 (n + 1)

end A144255

/-! ## A144255.P6279309011135346714

`(A085722(n+1)%A081619(2*(n+1)))²+1`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A144255

/-- `(A085722(n+1)%A081619(2*(n+1)))²+1` -/
def P6279309011135346714.Spec : Prop :=
  ∀ n, P6279309011135346714.a n = A144255 (n + 1)

theorem P6279309011135346714.correct : P6279309011135346714.Spec := by
  intro n
  simp only [A144255, Nat.add_sub_cancel]

end A144255

/-! ## A144255.P18045482860411439304

`A038712(2*n+5)+A085722(n+1)²`
-/

namespace A144255.P18045482860411439304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038712 (2 * n + 5) + A085722 (n + 1) ^ 2

end

end A144255.P18045482860411439304

namespace A144255

/-- `A038712(2*n+5)+A085722(n+1)²` -/
def P18045482860411439304.Spec : Prop :=
  ∀ n, P18045482860411439304.a n = A144255 (n + 1)

end A144255

/-! ## A144255.P13652797166672708939

`∩[A134420(n+1), A189047(n+1)]`
-/

namespace A144255.P13652797166672708939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134420 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189047 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A144255.P13652797166672708939

namespace A144255

/-- `∩[A134420(n+1), A189047(n+1)]` -/
def P13652797166672708939.Spec : Prop :=
  ∀ n, (P13652797166672708939.a n : ℤ) = A144255 (n + 1)

end A144255

/-! ## A144255.P14135801099100244699

`∩[A134420(n+1), A248742(n+1)]`
-/

namespace A144255.P14135801099100244699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134420 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248742 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A144255.P14135801099100244699

namespace A144255

/-- `∩[A134420(n+1), A248742(n+1)]` -/
def P14135801099100244699.Spec : Prop :=
  ∀ n, (P14135801099100244699.a n : ℤ) = A144255 (n + 1)

end A144255

/-! ## A144255.P3627448597710447

`∩[A069987(n+1), A189047(n+1)]`
-/

namespace A144255.P3627448597710447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069987 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189047 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A144255.P3627448597710447

namespace A144255

/-- `∩[A069987(n+1), A189047(n+1)]` -/
def P3627448597710447.Spec : Prop :=
  ∀ n, (P3627448597710447.a n : ℤ) = A144255 (n + 1)

end A144255

/-! ## A144255.P6617877558612203045

`∩[A134406(n+1), A189047(n+1)]`
-/

namespace A144255.P6617877558612203045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134406 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189047 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A144255.P6617877558612203045

namespace A144255

/-- `∩[A134406(n+1), A189047(n+1)]` -/
def P6617877558612203045.Spec : Prop :=
  ∀ n, (P6617877558612203045.a n : ℤ) = A144255 (n + 1)

end A144255

/-! ## A144255.P14097439815431714963

`∩[A134406(n+1), A248742(n+1)]`
-/

namespace A144255.P14097439815431714963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134406 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248742 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A144255.P14097439815431714963

namespace A144255

/-- `∩[A134406(n+1), A248742(n+1)]` -/
def P14097439815431714963.Spec : Prop :=
  ∀ n, (P14097439815431714963.a n : ℤ) = A144255 (n + 1)

end A144255

/-! ## A144255.P12704878795638365145

`eq[2, A193330(n)]²+1`
-/

namespace A144255.P12704878795638365145
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193330 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n ^ 2 + 1

end

end A144255.P12704878795638365145

namespace A144255

/-- `eq[2, A193330(n)]²+1` -/
def P12704878795638365145.Spec : Prop :=
  ∀ n, (P12704878795638365145.a n : ℤ) = A144255 (n + 1)

end A144255

/-! ## A144255.P899502825818059182

`eq[4, A193432(n)]²+1`
-/

namespace A144255.P899502825818059182
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193432 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n ^ 2 + 1

end

end A144255.P899502825818059182

namespace A144255

/-- `eq[4, A193432(n)]²+1` -/
def P899502825818059182.Spec : Prop :=
  ∀ n, (P899502825818059182.a n : ℤ) = A144255 (n + 1)

end A144255

/-! ## A144255.P2926037948700826233

`eq[6, A278162(n)]²+1`
-/

namespace A144255.P2926037948700826233
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278162 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n ^ 2 + 1

end

end A144255.P2926037948700826233

namespace A144255

/-- `eq[6, A278162(n)]²+1` -/
def P2926037948700826233.Spec : Prop :=
  ∀ n, (P2926037948700826233.a n : ℤ) = A144255 (n + 1)

end A144255

/-! ## A144255.P6284205037633445809

`eq[A040057(n), A333167(n)]²+1`
-/

namespace A144255.P6284205037633445809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040057 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333167 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n ^ 2 + 1

end

end A144255.P6284205037633445809

namespace A144255

/-- `eq[A040057(n), A333167(n)]²+1` -/
def P6284205037633445809.Spec : Prop :=
  ∀ n, (P6284205037633445809.a n : ℤ) = A144255 (n + 1)

end A144255

/-! ## A144255.P11335925096636364154

`A002522(A085722(n+1))`
-/

namespace A144255.P11335925096636364154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002522 (A085722 (n + 1)).toNat

end

end A144255.P11335925096636364154

namespace A144255

/-- `A002522(A085722(n+1))` -/
def P11335925096636364154.Spec : Prop :=
  ∀ n, P11335925096636364154.a n = A144255 (n + 1)

end A144255

/-! ## A144255.P13971731386054167227

`A002522(eq[2, A193330(n)])`
-/

namespace A144255.P13971731386054167227
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193330 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002522 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A144255.P13971731386054167227

namespace A144255

/-- `A002522(eq[2, A193330(n)])` -/
def P13971731386054167227.Spec : Prop :=
  ∀ n, P13971731386054167227.a n = A144255 (n + 1)

end A144255

/-! ## A144255.P3109855694459977590

`∩[A189047(n+1), A002522(n)]`
-/

namespace A144255.P3109855694459977590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189047 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002522 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A144255.P3109855694459977590

namespace A144255

/-- `∩[A189047(n+1), A002522(n)]` -/
def P3109855694459977590.Spec : Prop :=
  ∀ n, (P3109855694459977590.a n : ℤ) = A144255 (n + 1)

end A144255

/-! ## A144255.P2036860999021491608

`A002522(eq[1, A147809(n+1)]+1)`
-/

namespace A144255.P2036860999021491608
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147809 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002522 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A144255.P2036860999021491608

namespace A144255

/-- `A002522(eq[1, A147809(n+1)]+1)` -/
def P2036860999021491608.Spec : Prop :=
  ∀ n, P2036860999021491608.a n = A144255 (n + 1)

end A144255

/-! ## A144255.P10541851813049422116

`∩[A087279(n+1), A189047(n+1)]`
-/

namespace A144255.P10541851813049422116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087279 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189047 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A144255.P10541851813049422116

namespace A144255

/-- `∩[A087279(n+1), A189047(n+1)]` -/
def P10541851813049422116.Spec : Prop :=
  ∀ n, (P10541851813049422116.a n : ℤ) = A144255 (n + 1)

end A144255

/-! ## A144255.P10485122167185467110

`∩[A089653(n+1), A189047(n+1)]`
-/

namespace A144255.P10485122167185467110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089653 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189047 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A144255.P10485122167185467110

namespace A144255

/-- `∩[A089653(n+1), A189047(n+1)]` -/
def P10485122167185467110.Spec : Prop :=
  ∀ n, (P10485122167185467110.a n : ℤ) = A144255 (n + 1)

end A144255

/-! ## A144255.P7446368005302129593

`∩[A189047(n+1), A303372(n+1)]`
-/

namespace A144255.P7446368005302129593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189047 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303372 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A144255.P7446368005302129593

namespace A144255

/-- `∩[A189047(n+1), A303372(n+1)]` -/
def P7446368005302129593.Spec : Prop :=
  ∀ n, (P7446368005302129593.a n : ℤ) = A144255 (n + 1)

end A144255

/-!
# A144256: a(n) = smallest prime in the range [n^K, (n+1)^K], where K = log(127)/log(16) = 1.74717117169304146332...

The programs for A144256, there is no canonical definition to state claims against.
-/

/-! ## A144256.P16765650470832359446

`A230775(∑[∑[a(n-1)+12]+n*(10*n-8)])` with `a(0)=4, a(1)=1, a(2)=5, a(3)=1, a(4)=7, a(5)=18`
-/

namespace A144256.P16765650470832359446
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [4, 1, 5, 1, 7, 18] fun n f2 =>
  f2 (n - 1) + 12

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) + (n : ℤ) * ((10 * n : ℤ) - 8)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230775 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A144256.P16765650470832359446

/-! ## A144256.P15822293935356858050

`A230775(A000176(n+1)-n)`
-/

namespace A144256.P15822293935356858050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230775 (A000176 (n + 1) - (n : ℤ)).toNat

end

end A144256.P15822293935356858050

/-! ## A144256.P12069186728613244570

`A111656(∑[A357057(2*(n+2))]-1)`
-/

namespace A144256.P12069186728613244570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357057 (2 * (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111656 (∑ j ∈ Finset.range (n + 1), f1 j - 1).toNat

end

end A144256.P12069186728613244570

/-! ## A144256.P4915492833468589948

`A230775(A000176(n+1))`
-/

namespace A144256.P4915492833468589948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230775 (A000176 (n + 1)).toNat

end

end A144256.P4915492833468589948

/-! ## A144256.P6643254354316901420

`A230775(A036489(n+1))`
-/

namespace A144256.P6643254354316901420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230775 (A036489 (n + 1)).toNat

end

end A144256.P6643254354316901420

/-!
# A144257: Weight array of A086270.

The programs for A144257, the canonical program `A144257.P7095601649401816149` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A144257 has offset 1).

The definition of A144257 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A144257.P12461716731978215484

`val(A264802(n+1), 2)`
-/

namespace A144257.P12461716731978215484
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A264802 (n + 1)).toNat 2

end

end A144257.P12461716731978215484

namespace A144257

/-- `val(A264802(n+1), 2)` -/
def P12461716731978215484.Spec : Prop :=
  ∀ n, (P12461716731978215484.a n : ℤ) = A144257 (n + 1)

end A144257

/-! ## A144257.P14654110707206618439

`A025581(n)+char[∑[n]]`
-/

namespace A144257.P14654110707206618439
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A144257.P14654110707206618439

namespace A144257

/-- `A025581(n)+char[∑[n]]` -/
def P14654110707206618439.Spec : Prop :=
  ∀ n, P14654110707206618439.a n = A144257 (n + 1)

end A144257

/-! ## A144257.P6098093622912466089

`ceil(A185782(n+1)/2)`
-/

namespace A144257.P6098093622912466089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A185782 (n + 1) : ℚ) / 2⌉

end

end A144257.P6098093622912466089

namespace A144257

/-- `ceil(A185782(n+1)/2)` -/
def P6098093622912466089.Spec : Prop :=
  ∀ n, P6098093622912466089.a n = A144257 (n + 1)

end A144257

/-! ## A144257.P15680735271238843135

`char[∑[n]]+log2(A130321(n))`
-/

namespace A144257.P15680735271238843135
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℝ) + Real.logb 2 (A130321 n : ℝ)

end

end A144257.P15680735271238843135

namespace A144257

/-- `char[∑[n]]+log2(A130321(n))` -/
def P15680735271238843135.Spec : Prop :=
  ∀ n, P15680735271238843135.a n = (A144257 (n + 1) : ℝ)

end A144257

/-! ## A144257.P3528758068555230834

`char[∑[n]]+val(A036561(n), 2)`
-/

namespace A144257.P3528758068555230834
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f1 j = n then 1 else 0) + SequenceMachineLib.valuation (A036561 n).toNat 2

end

end A144257.P3528758068555230834

namespace A144257

/-- `char[∑[n]]+val(A036561(n), 2)` -/
def P3528758068555230834.Spec : Prop :=
  ∀ n, (P3528758068555230834.a n : ℤ) = A144257 (n + 1)

end A144257

/-! ## A144257.P1019655526891493

`A004736(n+1)-char[comp[∑[n]]]`
-/

namespace A144257.P1019655526891493
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A144257.P1019655526891493

namespace A144257

/-- `A004736(n+1)-char[comp[∑[n]]]` -/
def P1019655526891493.Spec : Prop :=
  ∀ n, P1019655526891493.a n = A144257 (n + 1)

end A144257

/-! ## A144257.P4867920310574251151

`A110654(A185782(n+1))`
-/

namespace A144257.P4867920310574251151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A185782 (n + 1)).toNat

end

end A144257.P4867920310574251151

namespace A144257

/-- `A110654(A185782(n+1))` -/
def P4867920310574251151.Spec : Prop :=
  ∀ n, P4867920310574251151.a n = A144257 (n + 1)

end A144257

/-! ## A144257.P12567174868651176584

`A193592(n)-A167407(n)`
-/

namespace A144257.P12567174868651176584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n - A167407 n

end

end A144257.P12567174868651176584

namespace A144257

/-- `A193592(n)-A167407(n)` -/
def P12567174868651176584.Spec : Prop :=
  ∀ n, P12567174868651176584.a n = A144257 (n + 1)

end A144257

/-! ## A144257.P15658045018672983383

`A144328(n+1)+A114327(n)`
-/

namespace A144257.P15658045018672983383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1) + A114327 n

end

end A144257.P15658045018672983383

namespace A144257

/-- `A144328(n+1)+A114327(n)` -/
def P15658045018672983383.Spec : Prop :=
  ∀ n, P15658045018672983383.a n = A144257 (n + 1)

end A144257

/-! ## A144257.P5254528032842070343

`A185782(n+1)-A025581(n)`
-/

namespace A144257.P5254528032842070343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1) - A025581 n

end

end A144257.P5254528032842070343

namespace A144257

/-- `A185782(n+1)-A025581(n)` -/
def P5254528032842070343.Spec : Prop :=
  ∀ n, P5254528032842070343.a n = A144257 (n + 1)

end A144257

/-! ## A144257.P7095601649401816149

`A128076(n+1)-A123578(n)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A144257

/-- `A128076(n+1)-A123578(n)` -/
def P7095601649401816149.Spec : Prop :=
  ∀ n, P7095601649401816149.a n = A144257 (n + 1)

theorem P7095601649401816149.correct : P7095601649401816149.Spec := by
  intro n
  simp only [A144257, Nat.add_sub_cancel]

end A144257

/-! ## A144257.P9667290449624017107

`A377809(n+1)-A080036(n)`
-/

namespace A144257.P9667290449624017107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377809 (n + 1) - A080036 n

end

end A144257.P9667290449624017107

namespace A144257

/-- `A377809(n+1)-A080036(n)` -/
def P9667290449624017107.Spec : Prop :=
  ∀ n, P9667290449624017107.a n = A144257 (n + 1)

end A144257

/-! ## A144257.P3291940912170152056

`A144328(n+1)+A061579(n)-n`
-/

namespace A144257.P3291940912170152056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1) + (A061579 n - (n : ℤ))

end

end A144257.P3291940912170152056

namespace A144257

/-- `A144328(n+1)+A061579(n)-n` -/
def P3291940912170152056.Spec : Prop :=
  ∀ n, P3291940912170152056.a n = A144257 (n + 1)

end A144257

/-! ## A144257.P15535640903195993645

`char[A000217(n)]+A004736(n+1)-1`
-/

namespace A144257.P15535640903195993645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) + (A004736 (n + 1) - 1)

end

end A144257.P15535640903195993645

namespace A144257

/-- `char[A000217(n)]+A004736(n+1)-1` -/
def P15535640903195993645.Spec : Prop :=
  ∀ n, P15535640903195993645.a n = A144257 (n + 1)

end A144257

/-! ## A144257.P13042808471567699113

`A025581(n)+1-char[A014132(n+1)]`
-/

namespace A144257.P13042808471567699113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014132 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n + 1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A144257.P13042808471567699113

namespace A144257

/-- `A025581(n)+1-char[A014132(n+1)]` -/
def P13042808471567699113.Spec : Prop :=
  ∀ n, P13042808471567699113.a n = A144257 (n + 1)

end A144257

/-! ## A144257.P6180934453483032960

`A262693(A263255(n))+A025581(n)`
-/

namespace A144257.P6180934453483032960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262693 (A263255 n).toNat + A025581 n

end

end A144257.P6180934453483032960

namespace A144257

/-- `A262693(A263255(n))+A025581(n)` -/
def P6180934453483032960.Spec : Prop :=
  ∀ n, P6180934453483032960.a n = A144257 (n + 1)

end A144257

/-! ## A144257.P13862201943404912335

`A057428(A002262(n))+A004736(n+1)`
-/

namespace A144257.P13862201943404912335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A002262 n).toNat + A004736 (n + 1)

end

end A144257.P13862201943404912335

namespace A144257

/-- `A057428(A002262(n))+A004736(n+1)` -/
def P13862201943404912335.Spec : Prop :=
  ∀ n, P13862201943404912335.a n = A144257 (n + 1)

end A144257

/-! ## A144257.P3071319245725503708

`A003056(n)+A010054(n)-A002262(n)`
-/

namespace A144257.P3071319245725503708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 n + (A010054 n - A002262 n)

end

end A144257.P3071319245725503708

namespace A144257

/-- `A003056(n)+A010054(n)-A002262(n)` -/
def P3071319245725503708.Spec : Prop :=
  ∀ n, P3071319245725503708.a n = A144257 (n + 1)

end A144257

/-! ## A144257.P12663154078919281469

`char[A000217(n)]+A000096(A003056(n))-n`
-/

namespace A144257.P12663154078919281469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) + (A000096 (A003056 n).toNat - (n : ℤ))

end

end A144257.P12663154078919281469

namespace A144257

/-- `char[A000217(n)]+A000096(A003056(n))-n` -/
def P12663154078919281469.Spec : Prop :=
  ∀ n, P12663154078919281469.a n = A144257 (n + 1)

end A144257

/-! ## A144257.P17660447552295531802

`char[A000217(n)]+A003056(n)-A002262(n)`
-/

namespace A144257.P17660447552295531802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) + (A003056 n - A002262 n)

end

end A144257.P17660447552295531802

namespace A144257

/-- `char[A000217(n)]+A003056(n)-A002262(n)` -/
def P17660447552295531802.Spec : Prop :=
  ∀ n, P17660447552295531802.a n = A144257 (n + 1)

end A144257

/-!
# A144259: Number of forests of trees on n or fewer nodes using a subset of labels 1..n, also row sums of triangle A144258.

The programs for A144259, there is no canonical definition to state claims against.
-/

/-! ## A144259.P12492730832645355953

`A355014(n*a(n-1)+n)-1` with `a(0)=1`
-/

namespace A144259.P12492730832645355953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A355014 ((n : ℤ) * a (n - 1) + (n : ℤ)).toNat - 1

end

end A144259.P12492730832645355953

/-! ## A144259.P3347070557253293180

`A228354(ceil(∑[3^(n-2)]))+floor(3^(n-1))`
-/

namespace A144259.P3347070557253293180
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ ((n : ℤ) - 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228354 ⌈∑ j ∈ Finset.range (n + 1), f1 j⌉.toNat + ⌊(3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

end

end A144259.P3347070557253293180

/-!
# A144260: Number of symmetric n X n binary matrices with each element equal to one minus the sum of its horizontal and vertical neighbors, modulo two.

The programs for A144260, there is no canonical definition to state claims against.
-/

/-! ## A144260.P3295129036393759716

`sqrt(A075462(n+1))`
-/

namespace A144260.P3295129036393759716
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A075462 (n + 1) : ℝ)

end

end A144260.P3295129036393759716

/-! ## A144260.P12631381897483047354

`sqrt(2^A159257(n+1))`
-/

namespace A144260.P12631381897483047354
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((2 : ℚ) ^ (A159257 (n + 1) : ℤ) : ℝ)

end

end A144260.P12631381897483047354

/-! ## A144260.P9872862629512016238

`sqrt(2^((n+1)²-A220195(n+1)))`
-/

namespace A144260.P9872862629512016238
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((2 : ℚ) ^ (((n + 1) ^ 2 : ℤ) - A220195 (n + 1) : ℤ) : ℝ)

end

end A144260.P9872862629512016238

/-! ## A144260.P16050804621320836395

`A016116(A159257(n+1))`
-/

namespace A144260.P16050804621320836395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 (A159257 (n + 1)).toNat

end

end A144260.P16050804621320836395

/-! ## A144260.P6294771122316285335

`A016116(log2(A075462(n+1)))`
-/

namespace A144260.P6294771122316285335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 (SequenceMachineLib.roundAway (Real.logb 2 (A075462 (n + 1) : ℝ))).toNat

end

end A144260.P6294771122316285335

/-!
# A144261: a(n) = smallest k such that k*n is a Niven (or Harshad) number.

The programs for A144261, there is no canonical definition to state claims against.
-/

/-! ## A144261.P10862800570706153194

`A357936(n+1)/(n+1)`
-/

namespace A144261.P10862800570706153194
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A357936 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A144261.P10862800570706153194

/-! ## A144261.P1076797848326267568

`A337819(A396114(n+1))`
-/

namespace A144261.P1076797848326267568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337819 (A396114 (n + 1)).toNat

end

end A144261.P1076797848326267568

/-! ## A144261.P1478329424722845977

`A337819(n+1)+A357172(2*(n+2))%2`
-/

namespace A144261.P1478329424722845977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337819 (n + 1) + Int.tmod (A357172 (2 * (n + 2))) 2

end

end A144261.P1478329424722845977

/-! ## A144261.P315976951283120446

`A337819(n+1)*A337819(A103663(n))`
-/

namespace A144261.P315976951283120446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337819 (n + 1) * A337819 (A103663 n).toNat

end

end A144261.P315976951283120446

/-! ## A144261.P17418452125337607162

`A337819(n+1)^A072479(A326463(n))`
-/

namespace A144261.P17418452125337607162
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A337819 (n + 1) : ℚ) ^ (A072479 (A326463 n).toNat : ℤ)

end

end A144261.P17418452125337607162

/-!
# A144262: a(n) = smallest k such that k*n is not a Niven (or Harshad) number.

The programs for A144262, there is no canonical definition to state claims against.
-/

/-! ## A144262.P6341890934637864875

`A357937(n+1)/(n+1)`
-/

namespace A144262.P6341890934637864875
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A357937 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A144262.P6341890934637864875

/-! ## A144262.P5766598582180596725

`(n+1)^A163805(A016813(n))*A357937(n+1)`
-/

namespace A144262.P5766598582180596725
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A163805 (A016813 n).toNat : ℤ) * (A357937 (n + 1) : ℚ)

end

end A144262.P5766598582180596725

/-! ## A144262.P251838846111031570

`(n+1)^A163805(A107008(n+1))*A357937(n+1)`
-/

namespace A144262.P251838846111031570
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A163805 (A107008 (n + 1)).toNat : ℤ) * (A357937 (n + 1) : ℚ)

end

end A144262.P251838846111031570

/-! ## A144262.P14614994038462881634

`(n+1)^A163805(A166090(n))*A357937(n+1)`
-/

namespace A144262.P14614994038462881634
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A163805 (A166090 n).toNat : ℤ) * (A357937 (n + 1) : ℚ)

end

end A144262.P14614994038462881634

/-! ## A144262.P12957911220225728612

`(n+1)^A163805(A195315(n+1))*A357937(n+1)`
-/

namespace A144262.P12957911220225728612
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A163805 (A195315 (n + 1)).toNat : ℤ) * (A357937 (n + 1) : ℚ)

end

end A144262.P12957911220225728612

/-!
# A144263: Number of ways of placing n labeled balls into n unlabeled (but7-colored) boxes.

The programs for A144263, there is no canonical definition to state claims against.
-/

/-! ## A144263.P3769404137402776458

`A292860(eq[7, A025581(n)])`
-/

namespace A144263.P3769404137402776458
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292860 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A144263.P3769404137402776458

/-! ## A144263.P9249757189470885292

`A292860(eq[15, A099375(n)])`
-/

namespace A144263.P9249757189470885292
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292860 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A144263.P9249757189470885292

/-! ## A144263.P12910264292851432398

`A292860(eq[5, A243070(n+1)])`
-/

namespace A144263.P12910264292851432398
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243070 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292860 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A144263.P12910264292851432398

/-! ## A144263.P9050800202302858546

`A292860(eq[8, A004736(n+1)])`
-/

namespace A144263.P9050800202302858546
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292860 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A144263.P9050800202302858546

/-! ## A144263.P10933958246014540792

`A292860(2*n+A167499(n+5)+2)`
-/

namespace A144263.P10933958246014540792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292860 ((2 * n : ℤ) + (A167499 (n + 5) + 2)).toNat

end

end A144263.P10933958246014540792

/-!
# A144264: Numbers k such that A014085(k) = A014085(k+1).

The programs for A144264, there is no canonical definition to state claims against.
-/

/-! ## A144264.P4761361596187249296

`eq[A014085(n+1), A014085(n)]`
-/

namespace A144264.P4761361596187249296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014085 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014085 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A144264.P4761361596187249296

/-! ## A144264.P5932459765972302702

`eq[A161182(n+1)+2, A161182(n+2)]`
-/

namespace A144264.P5932459765972302702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161182 (n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161182 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A144264.P5932459765972302702

/-! ## A144264.P6079317256051678705

`eq[A161182(n+1), A289207(A161182(n+2))]`
-/

namespace A144264.P6079317256051678705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161182 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (A161182 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A144264.P6079317256051678705

/-! ## A144264.P12318924761218170716

`eq[A189025((n+1)²), A189025((n+2)²)]`
-/

namespace A144264.P12318924761218170716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189025 ((n + 1) ^ 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189025 ((n + 2) ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A144264.P12318924761218170716

/-! ## A144264.P9483736466306105805

`eq[2, A161622(n+1)]+1`
-/

namespace A144264.P9483736466306105805
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161622 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A144264.P9483736466306105805

/-!
# A144265: Triangle read by rows: prime numbers along left edge (n, 0) and Fibonacci numbers along right edge (n, n), with (n, k) = (n - 1, k - 1) + (n - 1, k) for 0 < k < n when n > 1.

The programs for A144265, there is no canonical definition to state claims against.
-/

/-! ## A144265.P10928937005786092306

`A000196(A182870(n+1)%A069225(n+1))`
-/

namespace A144265.P10928937005786092306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (Int.tmod (A182870 (n + 1)) (A069225 (n + 1))).toNat

end

end A144265.P10928937005786092306

/-! ## A144265.P6636556920102941838

`A000196(A182870(n+1))%A099336(n+1)`
-/

namespace A144265.P6636556920102941838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000196 (A182870 (n + 1)).toNat) (A099336 (n + 1))

end

end A144265.P6636556920102941838

/-!
# A144266: Positive integers which do not occur in A144265.

The programs for A144266, there is no canonical definition to state claims against.
-/

/-! ## A144266.P3835542784210621617

`lt[A225679(n+2), A374637(A345436(n+1))]`
-/

namespace A144266.P3835542784210621617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225679 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374637 (A345436 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A144266.P3835542784210621617

/-! ## A144266.P12791738225108853124

`lt[A303756(A002152(2*n+1)), A082023(n)]`
-/

namespace A144266.P12791738225108853124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303756 (A002152 (2 * n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082023 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A144266.P12791738225108853124

/-! ## A144266.P10133342517498396179

`A117815(lt[A117816(3*n+2), A117847(n+1)])`
-/

namespace A144266.P10133342517498396179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117816 (3 * n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117847 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117815 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A144266.P10133342517498396179

/-!
# A144267: Partition number array, called M32(-4), related to A011801(n,m)= |S2(-4;n,m)| ( generalized Stirling triangle).

The programs for A144267, there is no canonical definition to state claims against.
-/

/-! ## A144267.P10088330892907856900

`A036040(n+1)*A144284(n+1)`
-/

namespace A144267.P10088330892907856900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036040 (n + 1) * A144284 (n + 1)

end

end A144267.P10088330892907856900

/-! ## A144267.P7096707281646896253

`A124794(A185974(n+1))*A144284(n+1)`
-/

namespace A144267.P7096707281646896253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124794 (A185974 (n + 1)).toNat * A144284 (n + 1)

end

end A144267.P7096707281646896253

/-! ## A144267.P13968324609321117684

`A036038(n+1)/A096162(n+1)*A144284(n+1)`
-/

namespace A144267.P13968324609321117684
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A036038 (n + 1) : ℚ) / (A096162 (n + 1) : ℚ) * (A144284 (n + 1) : ℚ)

end

end A144267.P13968324609321117684

/-! ## A144267.P15136237525389707341

`A036039(n+1)/A107106(n+1)*A144284(n+1)`
-/

namespace A144267.P15136237525389707341
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A036039 (n + 1) : ℚ) / (A107106 (n + 1) : ℚ) * (A144284 (n + 1) : ℚ)

end

end A144267.P15136237525389707341

/-! ## A144267.P10977107461907658327

`A122454(n+1)/A098546(n+1)*A144284(n+1)`
-/

namespace A144267.P10977107461907658327
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A122454 (n + 1) : ℚ) / (A098546 (n + 1) : ℚ) * (A144284 (n + 1) : ℚ)

end

end A144267.P10977107461907658327

/-!
# A144268: Partition number array, called M32(-5), related to A013988(n,m)= |S2(-5;n,m)| ( generalized Stirling triangle).

The programs for A144268, there is no canonical definition to state claims against.
-/

/-! ## A144268.P11262610767828094960

`A036040(n+1)*A144341(n+1)`
-/

namespace A144268.P11262610767828094960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036040 (n + 1) * A144341 (n + 1)

end

end A144268.P11262610767828094960

/-! ## A144268.P6589896116292321088

`A124794(A185974(n+1))*A144341(n+1)`
-/

namespace A144268.P6589896116292321088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124794 (A185974 (n + 1)).toNat * A144341 (n + 1)

end

end A144268.P6589896116292321088

/-! ## A144268.P15182575340921007351

`A036038(n+1)/A096162(n+1)*A144341(n+1)`
-/

namespace A144268.P15182575340921007351
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A036038 (n + 1) : ℚ) / (A096162 (n + 1) : ℚ) * (A144341 (n + 1) : ℚ)

end

end A144268.P15182575340921007351

/-! ## A144268.P16897849738685938699

`A036039(n+1)/A107106(n+1)*A144341(n+1)`
-/

namespace A144268.P16897849738685938699
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A036039 (n + 1) : ℚ) / (A107106 (n + 1) : ℚ) * (A144341 (n + 1) : ℚ)

end

end A144268.P16897849738685938699

/-! ## A144268.P13074419317998391687

`A122454(n+1)/A098546(n+1)*A144341(n+1)`
-/

namespace A144268.P13074419317998391687
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A122454 (n + 1) : ℚ) / (A098546 (n + 1) : ℚ) * (A144341 (n + 1) : ℚ)

end

end A144268.P13074419317998391687

/-!
# A144269: Partition number array, called M32hat(-1)= 'M32(-1)/M3'= 'A143171/A036040', related to A001497(n-1,m-1)= |S2(-1;n,m)| (generalized Stirling triangle).

The programs for A144269, there is no canonical definition to state claims against.
-/

/-! ## A144269.P2507724099707774486

`A143171(n+1)/A036040(n+1)`
-/

namespace A144269.P2507724099707774486
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A143171 (n + 1) : ℚ) / (A036040 (n + 1) : ℚ)

end

end A144269.P2507724099707774486

/-! ## A144269.P10184129555993273356

`A143171(n+1)/A124794(A185974(n+1))`
-/

namespace A144269.P10184129555993273356
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A143171 (n + 1) : ℚ) / (A124794 (A185974 (n + 1)).toNat : ℚ)

end

end A144269.P10184129555993273356

/-! ## A144269.P12292894198825760938

`A096162(n+1)/A036038(n+1)*A143171(n+1)`
-/

namespace A144269.P12292894198825760938
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A096162 (n + 1) : ℚ) / (A036038 (n + 1) : ℚ) * (A143171 (n + 1) : ℚ)

end

end A144269.P12292894198825760938

/-! ## A144269.P16531693389302080540

`A107106(n+1)/A036039(n+1)*A143171(n+1)`
-/

namespace A144269.P16531693389302080540
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A107106 (n + 1) : ℚ) / (A036039 (n + 1) : ℚ) * (A143171 (n + 1) : ℚ)

end

end A144269.P16531693389302080540

/-! ## A144269.P8730661082874354025

`A143171(n+1)/A049019(n+1)*A178803(n+1)`
-/

namespace A144269.P8730661082874354025
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A143171 (n + 1) : ℚ) / (A049019 (n + 1) : ℚ) * (A178803 (n + 1) : ℚ)

end

end A144269.P8730661082874354025

/-! ## A144269.P15359290528123820977

`A134133(n+1)/A130561(n+1)*A143171(n+1)`
-/

namespace A144269.P15359290528123820977
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A134133 (n + 1) : ℚ) / (A130561 (n + 1) : ℚ) * (A143171 (n + 1) : ℚ)

end

end A144269.P15359290528123820977

/-! ## A144269.P16754946818486467717

`A143171(n+1)/A181415(n+1)*A181512(n+1)`
-/

namespace A144269.P16754946818486467717
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A143171 (n + 1) : ℚ) / (A181415 (n + 1) : ℚ) * (A181512 (n + 1) : ℚ)

end

end A144269.P16754946818486467717

/-! ## A144269.P12395599348907767012

`A143171(n+1)/floor(A049009(n+1)/A178888(n+1))`
-/

namespace A144269.P12395599348907767012
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A143171 (n + 1) : ℚ) / (⌊(A049009 (n + 1) : ℚ) / (A178888 (n + 1) : ℚ)⌋ : ℚ)

end

end A144269.P12395599348907767012

/-! ## A144269.P17885514302130953824

`A143171(n+1)/A000027(A036038(n+1)/A096162(n+1))`
-/

namespace A144269.P17885514302130953824
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A143171 (n + 1) : ℚ) / (A000027 (SequenceMachineLib.roundAway ((A036038 (n + 1) : ℚ) / (A096162 (n + 1) : ℚ))).toNat : ℚ)

end

end A144269.P17885514302130953824

/-! ## A144269.P2501996958187002561

`A143171(n+1)/A144353(n+1)*A144880(n+1)`
-/

namespace A144269.P2501996958187002561
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A143171 (n + 1) : ℚ) / (A144353 (n + 1) : ℚ) * (A144880 (n + 1) : ℚ)

end

end A144269.P2501996958187002561

/-!
# A144270: Lower triangular array called S2hat(-1) related to partition number array A144269.

The programs for A144270, there is no canonical definition to state claims against.
-/

/-! ## A144270.P7137082261475884831

`A006530(A350772(n+1))*A287864(A263864(n+1))`
-/

namespace A144270.P7137082261475884831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A350772 (n + 1)).toNat * A287864 (A263864 (n + 1)).toNat

end

end A144270.P7137082261475884831

/-! ## A144270.P1936236032040830375

`A123244(A394438(n+1))`
-/

namespace A144270.P1936236032040830375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123244 (A394438 (n + 1)).toNat

end

end A144270.P1936236032040830375

/-! ## A144270.P12219182393242163734

`A135876(A255918(n+2))`
-/

namespace A144270.P12219182393242163734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135876 (A255918 (n + 2)).toNat

end

end A144270.P12219182393242163734

/-! ## A144270.P7433362506856857712

`A206496(A308569(n+2)+1)`
-/

namespace A144270.P7433362506856857712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206496 (A308569 (n + 2) + 1).toNat

end

end A144270.P7433362506856857712

/-! ## A144270.P3526058185007174915

`A206496(A308698(n+2)+1)`
-/

namespace A144270.P3526058185007174915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206496 (A308698 (n + 2) + 1).toNat

end

end A144270.P3526058185007174915

/-!
# A144271: Row sums of triangle A144270 (called S2hat(-1)).

The programs for A144271, there is no canonical definition to state claims against.
-/

/-! ## A144271.P5725880710239279022

`A010761(A006153(n))+A003000(n)`
-/

namespace A144271.P5725880710239279022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010761 (A006153 n).toNat + A003000 n

end

end A144271.P5725880710239279022

/-! ## A144271.P18329157077852167344

`A004525(A195173(n)+A034430(n))`
-/

namespace A144271.P18329157077852167344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A195173 n + A034430 n).toNat

end

end A144271.P18329157077852167344

/-!
# A144272: Second column (m=2) of triangle S2hat(-1) = A144270.

The programs for A144272, there is no canonical definition to state claims against.
-/

/-! ## A144272.P18214463834576349933

`A144270(∑[n+1]+2)`
-/

namespace A144272.P18214463834576349933
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144270 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A144272.P18214463834576349933

/-! ## A144272.P10698821486527324281

`A005707(2*A303970(n))`
-/

namespace A144272.P10698821486527324281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005707 (2 * A303970 n).toNat

end

end A144272.P10698821486527324281

/-!
# A144273: Third column (m=3) of triangle S2hat(-1) = A144270.

The programs for A144273, there is no canonical definition to state claims against.
-/

/-! ## A144273.P1939374890050412234

`A144270(∑[n+2]+4)`
-/

namespace A144273.P1939374890050412234
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144270 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A144273.P1939374890050412234

/-! ## A144273.P6261353131144289175

`gcd(floor(acot(n)), A144270(A167614(n+1)))`
-/

namespace A144273.P6261353131144289175
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ⌊SequenceMachineLib.acot (n : ℝ)⌋ (A144270 (A167614 (n + 1)).toNat)

end

end A144273.P6261353131144289175

/-! ## A144273.P5173116241348509030

`A144270(A167614(n+1))+A059995(n)`
-/

namespace A144273.P5173116241348509030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144270 (A167614 (n + 1)).toNat + A059995 n

end

end A144273.P5173116241348509030

/-!
# A144274: Partition number array, called M32hat(-2)= 'M32(-2)/M3'= 'A143172/A036040', related to A004747(n,m)= |S2(-2;n,m)| (generalized Stirling triangle).

The programs for A144274, there is no canonical definition to state claims against.
-/

/-! ## A144274.P12959128903548271615

`A143172(n+1)/A036040(n+1)`
-/

namespace A144274.P12959128903548271615
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A143172 (n + 1) : ℚ) / (A036040 (n + 1) : ℚ)

end

end A144274.P12959128903548271615

/-! ## A144274.P17047344552036695568

`A143172(n+1)/A124794(A185974(n+1))`
-/

namespace A144274.P17047344552036695568
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A143172 (n + 1) : ℚ) / (A124794 (A185974 (n + 1)).toNat : ℚ)

end

end A144274.P17047344552036695568

/-! ## A144274.P2009280721731403288

`A096162(n+1)/A036038(n+1)*A143172(n+1)`
-/

namespace A144274.P2009280721731403288
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A096162 (n + 1) : ℚ) / (A036038 (n + 1) : ℚ) * (A143172 (n + 1) : ℚ)

end

end A144274.P2009280721731403288

/-! ## A144274.P6524189055296731545

`A107106(n+1)/A036039(n+1)*A143172(n+1)`
-/

namespace A144274.P6524189055296731545
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A107106 (n + 1) : ℚ) / (A036039 (n + 1) : ℚ) * (A143172 (n + 1) : ℚ)

end

end A144274.P6524189055296731545

/-! ## A144274.P16935772583356386344

`A134133(n+1)/A130561(n+1)*A143172(n+1)`
-/

namespace A144274.P16935772583356386344
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A134133 (n + 1) : ℚ) / (A130561 (n + 1) : ℚ) * (A143172 (n + 1) : ℚ)

end

end A144274.P16935772583356386344

/-! ## A144274.P8155894171069365885

`A143172(n+1)/A143171(n+1)*A144269(n+1)`
-/

namespace A144274.P8155894171069365885
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A143172 (n + 1) : ℚ) / (A143171 (n + 1) : ℚ) * (A144269 (n + 1) : ℚ)

end

end A144274.P8155894171069365885

/-! ## A144274.P5879353956658886954

`A143172(n+1)/A144354(n+1)*A144885(n+1)`
-/

namespace A144274.P5879353956658886954
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A143172 (n + 1) : ℚ) / (A144354 (n + 1) : ℚ) * (A144885 (n + 1) : ℚ)

end

end A144274.P5879353956658886954

/-! ## A144274.P16667318790367400962

`A143172(n+1)/A127671(n+1)*A264753(n+1)`
-/

namespace A144274.P16667318790367400962
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A143172 (n + 1) : ℚ) / (A127671 (n + 1) : ℚ) * (A264753 (n + 1) : ℚ)

end

end A144274.P16667318790367400962

/-! ## A144274.P17325470468180602461

`A143172(n+1)/floor(A049009(n+1)/A178888(n+1))`
-/

namespace A144274.P17325470468180602461
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A143172 (n + 1) : ℚ) / (⌊(A049009 (n + 1) : ℚ) / (A178888 (n + 1) : ℚ)⌋ : ℚ)

end

end A144274.P17325470468180602461

/-! ## A144274.P5394154713538610344

`A143172(n+1)/A000027(A143171(n+1)/A144269(n+1))`
-/

namespace A144274.P5394154713538610344
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A143172 (n + 1) : ℚ) / (A000027 (SequenceMachineLib.roundAway ((A143171 (n + 1) : ℚ) / (A144269 (n + 1) : ℚ))).toNat : ℚ)

end

end A144274.P5394154713538610344

/-!
# A144276: Row sums of triangle A144275 (called S2hat(-2)).

The programs for A144276, there is no canonical definition to state claims against.
-/

/-! ## A144276.P15825430254559336514

`record[A006530(n*(2*(n+1)^n+1)+1)]`
-/

namespace A144276.P15825430254559336514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n * (2 * (n + 1) ^ n + 1) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A144276.P15825430254559336514

/-!
# A144277: Second column (m=2) of triangle S2hat(-2) = A144275.

The programs for A144277, there is no canonical definition to state claims against.
-/

/-! ## A144277.P13214558229546292222

`A144275(∑[n+1]+2)`
-/

namespace A144277.P13214558229546292222
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144275 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A144277.P13214558229546292222

/-! ## A144277.P8812969234593423823

`record[A144275(A080036(n))]`
-/

namespace A144277.P8812969234593423823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144275 (A080036 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A144277.P8812969234593423823

/-! ## A144277.P7041034812185986218

`record[A144275(∑[A275437(n)])]`
-/

namespace A144277.P7041034812185986218
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275437 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144275 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A144277.P7041034812185986218

/-! ## A144277.P8547245549310939077

`record[A144275(A022856(n+1))]`
-/

namespace A144277.P8547245549310939077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144275 (A022856 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A144277.P8547245549310939077

/-! ## A144277.P17397948591869375019

`record[A144275(A089071(n+1))]`
-/

namespace A144277.P17397948591869375019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144275 (A089071 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A144277.P17397948591869375019

/-!
# A144278: Third column (m=3) of triangle S2hat(-2) = A144275.

The programs for A144278, there is no canonical definition to state claims against.
-/

/-! ## A144278.P7919023914437916192

`A144275(∑[n+2]+4)`
-/

namespace A144278.P7919023914437916192
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144275 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A144278.P7919023914437916192

/-! ## A144278.P4231560857235501587

`record[gcd(A144275(n+1), A303913(n))]`
-/

namespace A144278.P4231560857235501587
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A144275 (n + 1)) (A303913 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A144278.P4231560857235501587

/-! ## A144278.P1528111667677731165

`and(xor(1, -n), A144275(A167614(n+1)))`
-/

namespace A144278.P1528111667677731165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (Int.xor 1 (-(n : ℤ))) (A144275 (A167614 (n + 1)).toNat)

end

end A144278.P1528111667677731165

/-! ## A144278.P7112522777643667378

`A055642(n)*A144275(A167614(n+1))`
-/

namespace A144278.P7112522777643667378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 n * A144275 (A167614 (n + 1)).toNat

end

end A144278.P7112522777643667378

/-!
# A144279: Partition number array, called M32hat(-3)= 'M32(-3)/M3'= 'A143173/A036040', related to A000369(n,m)= |S2(-3;n,m)| (generalized Stirling triangle).

The programs for A144279, there is no canonical definition to state claims against.
-/

/-! ## A144279.P6714924648684777079

`A143173(n+1)/A036040(n+1)`
-/

namespace A144279.P6714924648684777079
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A143173 (n + 1) : ℚ) / (A036040 (n + 1) : ℚ)

end

end A144279.P6714924648684777079

/-! ## A144279.P2628547261909048301

`A143173(n+1)/A124794(A185974(n+1))`
-/

namespace A144279.P2628547261909048301
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A143173 (n + 1) : ℚ) / (A124794 (A185974 (n + 1)).toNat : ℚ)

end

end A144279.P2628547261909048301

/-! ## A144279.P10994909450908455990

`A096162(n+1)/A036038(n+1)*A143173(n+1)`
-/

namespace A144279.P10994909450908455990
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A096162 (n + 1) : ℚ) / (A036038 (n + 1) : ℚ) * (A143173 (n + 1) : ℚ)

end

end A144279.P10994909450908455990

/-! ## A144279.P11545107814667762439

`A107106(n+1)/A036039(n+1)*A143173(n+1)`
-/

namespace A144279.P11545107814667762439
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A107106 (n + 1) : ℚ) / (A036039 (n + 1) : ℚ) * (A143173 (n + 1) : ℚ)

end

end A144279.P11545107814667762439

/-! ## A144279.P13387088822292684284

`A143173(n+1)/A143171(n+1)*A144269(n+1)`
-/

namespace A144279.P13387088822292684284
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A143173 (n + 1) : ℚ) / (A143171 (n + 1) : ℚ) * (A144269 (n + 1) : ℚ)

end

end A144279.P13387088822292684284

/-!
# A144280: Lower triangular array called S2hat(-3) related to partition number array A144279.

The programs for A144280, there is no canonical definition to state claims against.
-/

/-! ## A144280.P8047713025645506263

`A171232(A041709(n))`
-/

namespace A144280.P8047713025645506263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171232 (A041709 n).toNat

end

end A144280.P8047713025645506263

/-! ## A144280.P14643072463912569883

`A144279(A024648(n+1))`
-/

namespace A144280.P14643072463912569883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144279 (A024648 (n + 1)).toNat

end

end A144280.P14643072463912569883

/-! ## A144280.P180920459231416086

`A144279(A024649(n+1))`
-/

namespace A144280.P180920459231416086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144279 (A024649 (n + 1)).toNat

end

end A144280.P180920459231416086

/-!
# A144281: Row sums of triangle A144280 (called S2hat(-3)).

The programs for A144281, there is no canonical definition to state claims against.
-/

/-! ## A144281.P4206915793892962677

`xor(4, A100484(A266986(a(n-1)+n))/2)` with `a(0)=1, a(1)=4`
-/

namespace A144281.P4206915793892962677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  Int.xor 4 (SequenceMachineLib.roundAway ((A100484 (A266986 (a (n - 1) + (n : ℤ)).toNat).toNat : ℚ) / 2))

end

end A144281.P4206915793892962677

/-!
# A144282: Second column (m=2) of triangle S2hat(-3) = A144280.

The programs for A144282, there is no canonical definition to state claims against.
-/

/-! ## A144282.P14232555196049933316

`A144280(∑[n+1]+2)`
-/

namespace A144282.P14232555196049933316
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144280 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A144282.P14232555196049933316

/-! ## A144282.P8909808913592907110

`record[A144280(A080036(n))]`
-/

namespace A144282.P8909808913592907110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144280 (A080036 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A144282.P8909808913592907110

/-! ## A144282.P7997162406548919316

`record[A144280(∑[A275437(n)])]`
-/

namespace A144282.P7997162406548919316
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275437 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144280 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A144282.P7997162406548919316

/-! ## A144282.P18324455677380418092

`record[A144280(A022856(n+1))]`
-/

namespace A144282.P18324455677380418092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144280 (A022856 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A144282.P18324455677380418092

/-! ## A144282.P4921500390589473349

`record[A144280(A089071(n+1))]`
-/

namespace A144282.P4921500390589473349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144280 (A089071 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A144282.P4921500390589473349

/-!
# A144283: Third column (m=3) of triangle S2hat(-3) = A144280.

The programs for A144283, there is no canonical definition to state claims against.
-/

/-! ## A144283.P8702401117203600183

`A144280(∑[n+2]+4)`
-/

namespace A144283.P8702401117203600183
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144280 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A144283.P8702401117203600183

/-! ## A144283.P12210076775154905074

`record[gcd(A144280(n+1), A303913(n))]`
-/

namespace A144283.P12210076775154905074
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A144280 (n + 1)) (A303913 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A144283.P12210076775154905074

/-! ## A144283.P11970153678648346119

`A144280(A167614(n+1))+A059995(n)`
-/

namespace A144283.P11970153678648346119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144280 (A167614 (n + 1)).toNat + A059995 n

end

end A144283.P11970153678648346119

/-! ## A144283.P13559047480922259714

`A358841(n+2)+A144280(A167614(n+1))`
-/

namespace A144283.P13559047480922259714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358841 (n + 2) + A144280 (A167614 (n + 1)).toNat

end

end A144283.P13559047480922259714

/-!
# A144284: Partition number array, called M32hat(-4)= 'M32(-4)/M3'= 'A144267/A036040', related to A011801(n,m)= |S2(-4;n,m)| (generalized Stirling triangle).

The programs for A144284, there is no canonical definition to state claims against.
-/

/-! ## A144284.P2197533286286669540

`A144267(n+1)/A036040(n+1)`
-/

namespace A144284.P2197533286286669540
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A144267 (n + 1) : ℚ) / (A036040 (n + 1) : ℚ)

end

end A144284.P2197533286286669540

/-! ## A144284.P2824327391342070269

`A144267(n+1)/A124794(A185974(n+1))`
-/

namespace A144284.P2824327391342070269
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A144267 (n + 1) : ℚ) / (A124794 (A185974 (n + 1)).toNat : ℚ)

end

end A144284.P2824327391342070269

/-! ## A144284.P9641262463670006201

`A144267(n+1)/A143171(n+1)*A144269(n+1)`
-/

namespace A144284.P9641262463670006201
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A144267 (n + 1) : ℚ) / (A143171 (n + 1) : ℚ) * (A144269 (n + 1) : ℚ)

end

end A144284.P9641262463670006201

/-! ## A144284.P4967587529901287459

`A144267(n+1)/A143172(n+1)*A144274(n+1)`
-/

namespace A144284.P4967587529901287459
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A144267 (n + 1) : ℚ) / (A143172 (n + 1) : ℚ) * (A144274 (n + 1) : ℚ)

end

end A144284.P4967587529901287459

/-! ## A144284.P1594610377149429103

`A144267(n+1)/A143173(n+1)*A144279(n+1)`
-/

namespace A144284.P1594610377149429103
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A144267 (n + 1) : ℚ) / (A143173 (n + 1) : ℚ) * (A144279 (n + 1) : ℚ)

end

end A144284.P1594610377149429103

/-!
# A144285: Lower triangular array called S2hat(-4) related to partition number array A144284.

The programs for A144285, there is no canonical definition to state claims against.
-/

/-! ## A144285.P14897310431990647489

`A144284(A024648(n+1))`
-/

namespace A144285.P14897310431990647489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144284 (A024648 (n + 1)).toNat

end

end A144285.P14897310431990647489

/-! ## A144285.P2661965544184592846

`A144284(A024649(n+1))`
-/

namespace A144285.P2661965544184592846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144284 (A024649 (n + 1)).toNat

end

end A144285.P2661965544184592846

/-! ## A144285.P16191572632384941329

`A144284(A028429(n+1))`
-/

namespace A144285.P16191572632384941329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144284 (A028429 (n + 1)).toNat

end

end A144285.P16191572632384941329

/-!
# A144287: Square array A(n,k), n>=1, k>=1, read by antidiagonals: A(n,k) = Fibonacci rabbit sequence number n coded in base k.

The programs for A144287, there is no canonical definition to state claims against.
-/

/-! ## A144287.P9024048415215118916

`A218887(A133021(n+1))+A081572(n)`
-/

namespace A144287.P9024048415215118916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218887 (A133021 (n + 1)).toNat + A081572 n

end

end A144287.P9024048415215118916

/-! ## A144287.P16893831778147843648

`A294265(A196218(A081572(n)))+A081572(n)`
-/

namespace A144287.P16893831778147843648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294265 (A196218 (A081572 n).toNat).toNat + A081572 n

end

end A144287.P16893831778147843648

/-! ## A144287.P1362323998627323866

`A093695(A051390(n+1))+A073133(n+1)`
-/

namespace A144287.P1362323998627323866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093695 (A051390 (n + 1)).toNat + A073133 (n + 1)

end

end A144287.P1362323998627323866

/-!
# A144288: Fibonacci rabbit sequence number n coded in base n, also diagonal of A144287.

The programs for A144288, there is no canonical definition to state claims against.
-/

/-! ## A144288.P2395309235676318228

`A144287(∑[4*n]+1)`
-/

namespace A144288.P2395309235676318228
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144287 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A144288.P2395309235676318228

/-!
# A144291: Triangular numbers n*(n-1)/2 with n and n -1 nonprime.

The programs for A144291, the canonical program `A144291.P10227368257690352592` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A144291 has offset 1).

The definition of A144291 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A144291.P10227368257690352592

`A000217(record[n*A323162(n+1)])`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A144291

/-- `A000217(record[n*A323162(n+1)])` -/
def P10227368257690352592.Spec : Prop :=
  ∀ n, P10227368257690352592.a n = A144291 (n + 1)

theorem P10227368257690352592.correct : P10227368257690352592.Spec := by
  intro n
  simp only [A144291, Nat.add_sub_cancel]

end A144291

/-! ## A144291.P14508497003445479594

`A000217(eq[2, A292438(n+1)+A292438(n)])`
-/

namespace A144291.P14508497003445479594
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292438 (n + 1) + A292438 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A144291.P14508497003445479594

namespace A144291

/-- `A000217(eq[2, A292438(n+1)+A292438(n)])` -/
def P14508497003445479594.Spec : Prop :=
  ∀ n, P14508497003445479594.a n = A144291 (n + 1)

end A144291

/-! ## A144291.P5714093060093395778

`A000217(lt[1, A007920(n)])`
-/

namespace A144291.P5714093060093395778
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007920 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A144291.P5714093060093395778

namespace A144291

/-- `A000217(lt[1, A007920(n)])` -/
def P5714093060093395778.Spec : Prop :=
  ∀ n, P5714093060093395778.a n = A144291 (n + 1)

end A144291

/-! ## A144291.P2328975927727494669

`record[C(A181569(A181569(n+1)), 2)]`
-/

namespace A144291.P2328975927727494669
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A181569 (A181569 (n + 1)).toNat).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A144291.P2328975927727494669

namespace A144291

/-- `record[C(A181569(A181569(n+1)), 2)]` -/
def P2328975927727494669.Spec : Prop :=
  ∀ n, (P2328975927727494669.a n : ℤ) = A144291 (n + 1)

end A144291

/-! ## A144291.P11668516154130772301

`record[A191558(n+2)/2*A191558(n+1)]`
-/

namespace A144291.P11668516154130772301
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A191558 (n + 2) : ℚ) / 2 * (A191558 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A144291.P11668516154130772301

namespace A144291

/-- `record[A191558(n+2)/2*A191558(n+1)]` -/
def P11668516154130772301.Spec : Prop :=
  ∀ n, P11668516154130772301.a n = (A144291 (n + 1) : ℚ)

end A144291

/-! ## A144291.P4859213653222002407

`A000217(eq[A055671(n+1), A055671(n)])`
-/

namespace A144291.P4859213653222002407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055671 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055671 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A144291.P4859213653222002407

namespace A144291

/-- `A000217(eq[A055671(n+1), A055671(n)])` -/
def P4859213653222002407.Spec : Prop :=
  ∀ n, P4859213653222002407.a n = A144291 (n + 1)

end A144291

/-! ## A144291.P6872595938646186756

`A000217(eq[A055672(n+1), A055672(n)])`
-/

namespace A144291.P6872595938646186756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055672 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055672 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A144291.P6872595938646186756

namespace A144291

/-- `A000217(eq[A055672(n+1), A055672(n)])` -/
def P6872595938646186756.Spec : Prop :=
  ∀ n, P6872595938646186756.a n = A144291 (n + 1)

end A144291

/-! ## A144291.P4789389016756092871

`A000124(eq[A055672(n+1), A055672(n)])-1`
-/

namespace A144291.P4789389016756092871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055672 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055672 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n) - 1

end

end A144291.P4789389016756092871

namespace A144291

/-- `A000124(eq[A055672(n+1), A055672(n)])-1` -/
def P4789389016756092871.Spec : Prop :=
  ∀ n, P4789389016756092871.a n = A144291 (n + 1)

end A144291

/-!
# A144293: Largest prime factor of n-th Bell number A000110(n) (or 1 if A000110(n) = 1).

The programs for A144293, there is no canonical definition to state claims against.
-/

/-! ## A144293.P4995149106517670011

`char[2]+A006530(A076903(n))`
-/

namespace A144293.P4995149106517670011
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + A006530 (A076903 n).toNat

end

end A144293.P4995149106517670011

/-! ## A144293.P8589351898573368002

`A006530(∏{digits}[n, gcd(#, #!²)]*A076903(n))`
-/

namespace A144293.P8589351898573368002
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => Nat.gcd x (Nat.factorial x ^ 2)).prod : ℕ) : ℤ) * A076903 n).toNat

end

end A144293.P8589351898573368002

/-! ## A144293.P8720312360179715233

`A006530(2^(n-C(∑[char[∑[n]]], 2))*A076903(n))`
-/

namespace A144293.P8720312360179715233
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.roundAway ((2 : ℚ) ^ ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) : ℤ) * (A076903 n : ℚ))).toNat

end

end A144293.P8720312360179715233

/-! ## A144293.P11570024718894159735

`A006530(A316863(n)+A076903(n))`
-/

namespace A144293.P11570024718894159735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A316863 n + A076903 n).toNat

end

end A144293.P11570024718894159735

/-! ## A144293.P14539859703451202773

`A006530(A003986(n+1)*A076903(n))`
-/

namespace A144293.P14539859703451202773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A003986 (n + 1) * A076903 n).toNat

end

end A144293.P14539859703451202773

/-!
# A144294: Let k = n-th nonsquare = A000037(n); then a(n) = smallest prime p such that k is not a square mod p.

The programs for A144294, there is no canonical definition to state claims against.
-/

/-! ## A144294.P3640503291164171718

`p?[A056594(A000037(n+1))*A092419(n+1)]`
-/

namespace A144294.P3640503291164171718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (A000037 (n + 1)).toNat * A092419 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A144294.P3640503291164171718

/-! ## A144294.P3664220357771023753

`p?[A056619(Δ[A153978(n+1)])]`
-/

namespace A144294.P3664220357771023753
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153978 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056619 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A144294.P3664220357771023753

/-! ## A144294.P14662210889891029573

`p?[A100833(A043775(n+1)²)]`
-/

namespace A144294.P14662210889891029573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100833 (A043775 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A144294.P14662210889891029573

/-! ## A144294.P3925304945213068802

`p?[A100833(A043775(n+1)*A043775(n+1))]`
-/

namespace A144294.P3925304945213068802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100833 (A043775 (n + 1) * A043775 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A144294.P3925304945213068802

/-!
# A144295: Where records occur in A144294.

The programs for A144295, there is no canonical definition to state claims against.
-/

/-! ## A144295.P10822999284436752631

`A136250(∑[A090755(n)])`
-/

namespace A144295.P10822999284436752631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090755 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136250 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A144295.P10822999284436752631

/-! ## A144295.P6151114619868334963

`record[A339663(A104258(n+1))]`
-/

namespace A144295.P6151114619868334963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339663 (A104258 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A144295.P6151114619868334963

/-!
# A144296: Records in A144294.

The programs for A144296, there is no canonical definition to state claims against.
-/

/-! ## A144296.P11218539159303549867

`eq[A003415(n), A076259(A185944(n+1))]`
-/

namespace A144296.P11218539159303549867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076259 (A185944 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A144296.P11218539159303549867

/-! ## A144296.P4398455025108338502

`A049543(A374633(n+3)%A050952(n+1))`
-/

namespace A144296.P4398455025108338502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049543 (Int.tmod (A374633 (n + 3)) (A050952 (n + 1))).toNat

end

end A144296.P4398455025108338502

/-! ## A144296.P1908570900266638150

`eq[A175392(A290094(2*(n+2))), A363723(n)]`
-/

namespace A144296.P1908570900266638150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175392 (A290094 (2 * (n + 2))).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363723 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A144296.P1908570900266638150

/-! ## A144296.P2843748209130192634

`∩[A286469(A119615(2*n)), A000040(n+1)]`
-/

namespace A144296.P2843748209130192634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286469 (A119615 (2 * n)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A144296.P2843748209130192634

/-! ## A144296.P13202280072493570240

`A007703(A225354(n+1)%A344614(3*n+4))`
-/

namespace A144296.P13202280072493570240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007703 (Int.tmod (A225354 (n + 1)) (A344614 (3 * n + 4))).toNat

end

end A144296.P13202280072493570240

/-!
# A144297: BINOMIAL transform of A001515.

The programs for A144297, the canonical program `A144297.P1503667546977446838` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A144297 has offset 0).

The definition of A144297 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A144297.P1503667546977446838

`(2*n+1)*a(n-1)-(4*n-5)*a(n-2)+2*(n-2)*a(n-3)` with `a(0)=1, a(1)=3, a(2)=12`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A144297

/-- `(2*n+1)*a(n-1)-(4*n-5)*a(n-2)+2*(n-2)*a(n-3)` -/
def P1503667546977446838.Spec : Prop :=
  ∀ n, P1503667546977446838.a n = A144297 n

theorem P1503667546977446838.correct : P1503667546977446838.Spec := by
  intro n
  simp only [A144297]

end A144297

/-!
# A144298: Number of cycles of length 3 in the queen graph associated with an n X n chessboard.

The programs for A144298, the canonical program `A144298.P8587430462916839701` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A144298 has offset 0).

The definition of A144298 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A144298.P3890012952697985362

`n*(5-10*n+2*n²+2*n^3-(-1)^n)/4`
-/

namespace A144298.P3890012952697985362
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * (5 - (10 * n : ℤ) + (2 * n ^ 2 : ℤ) + (2 * n ^ 3 : ℤ) - (-1) ^ n) : ℚ) / 4

end

end A144298.P3890012952697985362

namespace A144298

/-- `n*(5-10*n+2*n²+2*n^3-(-1)^n)/4` -/
def P3890012952697985362.Spec : Prop :=
  ∀ n, P3890012952697985362.a n = (A144298 n : ℚ)

end A144298

/-! ## A144298.P8587430462916839701

`A030117(n)+(3*n-1)*C(n, 3)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A144298

/-- `A030117(n)+(3*n-1)*C(n, 3)` -/
def P8587430462916839701.Spec : Prop :=
  ∀ n, P8587430462916839701.a n = A144298 n

theorem P8587430462916839701.correct : P8587430462916839701.Spec := by
  intro n
  simp only [A144298]

end A144298

/-! ## A144298.P14724146011270131523

`(n-1)*A212343(n+2)-A142150(n)`
-/

namespace A144298.P14724146011270131523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * A212343 (n + 2) - A142150 n

end

end A144298.P14724146011270131523

namespace A144298

/-- `(n-1)*A212343(n+2)-A142150(n)` -/
def P14724146011270131523.Spec : Prop :=
  ∀ n, P14724146011270131523.a n = A144298 n

end A144298

/-!
# A144299: Triangle of Bessel numbers read by rows. Row n gives T(n,n), T(n,n-1), T(n,n-2), ..., T(n,0) for n >= 0.

The programs for A144299, there is no canonical definition to state claims against.
-/

/-! ## A144299.P8574267610948293946

`A122848(A061579(n))`
-/

namespace A144299.P8574267610948293946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122848 (A061579 n).toNat

end

end A144299.P8574267610948293946

/-! ## A144299.P18086132209672496008

`A122848(A114327(n)+n)`
-/

namespace A144299.P18086132209672496008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122848 (A114327 n + (n : ℤ)).toNat

end

end A144299.P18086132209672496008

/-! ## A144299.P688555302085095806

`A122848(A038722(n+1)-1)`
-/

namespace A144299.P688555302085095806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122848 (A038722 (n + 1) - 1).toNat

end

end A144299.P688555302085095806

/-! ## A144299.P16227906809855363298

`A122848(A057944(n)+A025581(n))`
-/

namespace A144299.P16227906809855363298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122848 (A057944 n + A025581 n).toNat

end

end A144299.P16227906809855363298

/-! ## A144299.P8710507290679349916

`A122848(A278818(n)-1)`
-/

namespace A144299.P8710507290679349916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122848 (A278818 n - 1).toNat

end

end A144299.P8710507290679349916

/-! ## A144299.P3311359647781589511

`A202023(n)*A293960(n)`
-/

namespace A144299.P3311359647781589511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202023 n * A293960 n

end

end A144299.P3311359647781589511

