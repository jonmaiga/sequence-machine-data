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
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C041
import Seq.B000.C042
import Seq.B000.C044
import Seq.B000.C045
import Seq.B000.C046
import Seq.B000.C048
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
import Seq.B001.C010
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
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C004
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
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
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A130400: Signature permutations of INORDER-transformations of non-recursive Catalan automorphisms in table A089840.

The programs for A130400, there is no canonical definition to state claims against.
-/

/-! ## A130400.P4126139481626241261

`or(char[A017796(n)], A089840(n))`
-/

namespace A130400.P4126139481626241261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017796 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A089840 n)

end

end A130400.P4126139481626241261

/-! ## A130400.P5683943144522497608

`or(char[A058785(n)], A089840(n))`
-/

namespace A130400.P5683943144522497608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058785 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A089840 n)

end

end A130400.P5683943144522497608

/-! ## A130400.P2405603079705634587

`or(char[A100431(n)], A089840(n))`
-/

namespace A130400.P2405603079705634587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100431 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A089840 n)

end

end A130400.P2405603079705634587

/-! ## A130400.P4874353965964422056

`or(char[A132616(n)], A089840(n))`
-/

namespace A130400.P4874353965964422056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132616 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A089840 n)

end

end A130400.P4874353965964422056

/-! ## A130400.P6389007724965652476

`or(char[A155144(n)], A089840(n))`
-/

namespace A130400.P6389007724965652476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155144 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A089840 n)

end

end A130400.P6389007724965652476

/-! ## A130400.P6006251154896308588

`or(char[A160564(n)], A089840(n))`
-/

namespace A130400.P6006251154896308588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160564 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A089840 n)

end

end A130400.P6006251154896308588

/-! ## A130400.P4858485277281175297

`or(char[A212757(n)], A089840(n))`
-/

namespace A130400.P4858485277281175297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212757 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A089840 n)

end

end A130400.P4858485277281175297

/-! ## A130400.P6505523537476704884

`or(char[A240530(n)], A089840(n))`
-/

namespace A130400.P6505523537476704884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240530 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A089840 n)

end

end A130400.P6505523537476704884

/-! ## A130400.P9705824322725239167

`A089840(n)+char[A024392(n+1)]`
-/

namespace A130400.P9705824322725239167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024392 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089840 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A130400.P9705824322725239167

/-! ## A130400.P1676285355179179638

`A089840(n)+char[A043223(n+1)]`
-/

namespace A130400.P1676285355179179638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043223 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089840 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A130400.P1676285355179179638

/-!
# A130401: Signature permutations of REDRONI-transformations of non-recursive Catalan automorphisms in table A089840.

The programs for A130401, there is no canonical definition to state claims against.
-/

/-! ## A130401.P16312434965745805520

`A089840(n)+A122204(n)-A122283(n)`
-/

namespace A130401.P16312434965745805520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089840 n + (A122204 n - A122283 n)

end

end A130401.P16312434965745805520

/-! ## A130401.P1415043543436719053

`A122204(n)+A122287(n)-A122286(n)`
-/

namespace A130401.P1415043543436719053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122204 n + (A122287 n - A122286 n)

end

end A130401.P1415043543436719053

/-! ## A130401.P9771241389222000133

`A122202(n)+A130400(n)-A122201(n)`
-/

namespace A130401.P9771241389222000133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122202 n + (A130400 n - A122201 n)

end

end A130401.P9771241389222000133

/-!
# A130402: Signature permutations of ENIPS-transformations of A057163-conjugates of Catalan automorphisms in table A122203.

The programs for A130402, there is no canonical definition to state claims against.
-/

/-! ## A130402.P14132500637441119647

`A089867(A130403(n))`
-/

namespace A130402.P14132500637441119647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089867 (A130403 n).toNat

end

end A130402.P14132500637441119647

/-! ## A130402.P7409833804791858920

`A247756(A130403(n)+1)`
-/

namespace A130402.P7409833804791858920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247756 (A130403 n + 1).toNat

end

end A130402.P7409833804791858920

/-! ## A130402.P10444666952226073025

`A260255(A130403(n)+1)`
-/

namespace A130402.P10444666952226073025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260255 (A130403 n + 1).toNat

end

end A130402.P10444666952226073025

/-! ## A130402.P4551726855660705948

`A272325(A130403(n)+1)`
-/

namespace A130402.P4551726855660705948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272325 (A130403 n + 1).toNat

end

end A130402.P4551726855660705948

/-! ## A130402.P7378574790712314596

`A335524(A130403(n)+1)`
-/

namespace A130402.P7378574790712314596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335524 (A130403 n + 1).toNat

end

end A130402.P7378574790712314596

/-! ## A130402.P15416089631200143917

`A089868(or(char[1], A130403(n)))`
-/

namespace A130402.P15416089631200143917
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089868 (Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A130403 n)).toNat

end

end A130402.P15416089631200143917

/-! ## A130402.P12946697701561114513

`A089869(or(char[1], A130403(n)))`
-/

namespace A130402.P12946697701561114513
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089869 (Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A130403 n)).toNat

end

end A130402.P12946697701561114513

/-! ## A130402.P11193869799389762943

`A089868(A130403(n)%(n+1))`
-/

namespace A130402.P11193869799389762943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089868 (Int.tmod (A130403 n) (n + 1 : ℤ)).toNat

end

end A130402.P11193869799389762943

/-! ## A130402.P12347342941767548044

`A130403(n)+char[A326967(n+3)]`
-/

namespace A130402.P12347342941767548044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326967 (n + 3)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130403 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A130402.P12347342941767548044

/-! ## A130402.P4285116167947919238

`A130403(n)+A025466(A029234(n))`
-/

namespace A130402.P4285116167947919238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130403 n + A025466 (A029234 n).toNat

end

end A130402.P4285116167947919238

/-!
# A130403: Signature permutations of SPINE-transformations of A057163-conjugates of Catalan automorphisms in table A122204.

The programs for A130403, there is no canonical definition to state claims against.
-/

/-! ## A130403.P17177807131150892266

`A089867(A130402(n))`
-/

namespace A130403.P17177807131150892266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089867 (A130402 n).toNat

end

end A130403.P17177807131150892266

/-! ## A130403.P728110080143407150

`A081331(A130402(n)+1)`
-/

namespace A130403.P728110080143407150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081331 (A130402 n + 1).toNat

end

end A130403.P728110080143407150

/-! ## A130403.P16800236556415717677

`A089868(or(char[1], A130402(n)))`
-/

namespace A130403.P16800236556415717677
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089868 (Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A130402 n)).toNat

end

end A130403.P16800236556415717677

/-! ## A130403.P1523315738319959382

`A089869(or(char[1], A130402(n)))`
-/

namespace A130403.P1523315738319959382
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089869 (Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A130402 n)).toNat

end

end A130403.P1523315738319959382

/-! ## A130403.P17658611814843756397

`A089868(A130402(n)%(n+1))`
-/

namespace A130403.P17658611814843756397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089868 (Int.tmod (A130402 n) (n + 1 : ℤ)).toNat

end

end A130403.P17658611814843756397

/-! ## A130403.P6607501640661406696

`A089869(A130402(gcd(n, 2*n)))`
-/

namespace A130403.P6607501640661406696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089869 (A130402 (Nat.gcd n (2 * n))).toNat

end

end A130403.P6607501640661406696

/-! ## A130403.P2465799200794366196

`A130402(n)-A025466(A029234(n))`
-/

namespace A130403.P2465799200794366196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130402 n - A025466 (A029234 n).toNat

end

end A130403.P2465799200794366196

/-! ## A130403.P2535180571340911498

`A130402(n)-A025444(A079217(n))`
-/

namespace A130403.P2535180571340911498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130402 n - A025444 (A079217 n).toNat

end

end A130403.P2535180571340911498

/-! ## A130403.P9441364133672827498

`A089868(A057427(n)*A130402(n))`
-/

namespace A130403.P9441364133672827498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089868 (A057427 n * A130402 n).toNat

end

end A130403.P9441364133672827498

/-! ## A130403.P4866444832369112581

`A089868(A014963(4*n+2)*A130402(n))`
-/

namespace A130403.P4866444832369112581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089868 (A014963 (4 * n + 2) * A130402 n).toNat

end

end A130403.P4866444832369112581

/-!
# A130404: Partial sums of A093178.

The programs for A130404, the canonical program `A130404.P5410101736014784849` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A130404 has offset 1).

The definition of A130404 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A130404.P12890880056857873855

`a(n-1)+n^(n%2)` with `a(0)=1`
-/

namespace A130404.P12890880056857873855
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + n ^ (n % 2)

end

end A130404.P12890880056857873855

namespace A130404

/-- `a(n-1)+n^(n%2)` -/
def P12890880056857873855.Spec : Prop :=
  ∀ n, (P12890880056857873855.a n : ℤ) = A130404 (n + 1)

end A130404

/-! ## A130404.P3807680449389689381

`ogf((1+x-x^2+x^3)/(1-x-2x^2+2x^3+x^4-x^5))`
-/

namespace A130404.P3807680449389689381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, -1, 1] [1, -1, -2, 2, 1, -1] n

end

end A130404.P3807680449389689381

namespace A130404

/-- `ogf((1+x-x^2+x^3)/(1-x-2x^2+2x^3+x^4-x^5))` -/
def P3807680449389689381.Spec : Prop :=
  ∀ n, P3807680449389689381.a n = A130404 (n + 1)

end A130404

/-! ## A130404.P5410101736014784849

`(2*n*(n+3)+(2*(n+1)-3)*(-1)^(n+1)+7)/8`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A130404

/-- `(2*n*(n+3)+(2*(n+1)-3)*(-1)^(n+1)+7)/8` -/
def P5410101736014784849.Spec : Prop :=
  ∀ n, P5410101736014784849.a n = (A130404 (n + 1) : ℚ)

end A130404

/-! ## A130404.P5855267134132745698

`∑[n^(n%2)]`
-/

namespace A130404.P5855267134132745698
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ (n % 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130404.P5855267134132745698

namespace A130404

/-- `∑[n^(n%2)]` -/
def P5855267134132745698.Spec : Prop :=
  ∀ n, (P5855267134132745698.a n : ℤ) = A130404 (n + 1)

end A130404

/-! ## A130404.P5897933844750913921

`∑[n^and(1, n)]`
-/

namespace A130404.P5897933844750913921
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ Nat.land 1 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130404.P5897933844750913921

namespace A130404

/-- `∑[n^and(1, n)]` -/
def P5897933844750913921.Spec : Prop :=
  ∀ n, (P5897933844750913921.a n : ℤ) = A130404 (n + 1)

end A130404

/-! ## A130404.P7634820302190363083

`∑[gcd(n, or(1, n))]`
-/

namespace A130404.P7634820302190363083
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd n (Nat.lor 1 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130404.P7634820302190363083

namespace A130404

/-- `∑[gcd(n, or(1, n))]` -/
def P7634820302190363083.Spec : Prop :=
  ∀ n, (P7634820302190363083.a n : ℤ) = A130404 (n + 1)

end A130404

/-! ## A130404.P11652823057271476009

`∑[C(n, and(1, n))]`
-/

namespace A130404.P11652823057271476009
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (Nat.land 1 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130404.P11652823057271476009

namespace A130404

/-- `∑[C(n, and(1, n))]` -/
def P11652823057271476009.Spec : Prop :=
  ∀ n, (P11652823057271476009.a n : ℤ) = A130404 (n + 1)

end A130404

/-! ## A130404.P11663521412681332222

`∑[C(n, n²%2)]`
-/

namespace A130404.P11663521412681332222
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (n ^ 2 % 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130404.P11663521412681332222

namespace A130404

/-- `∑[C(n, n²%2)]` -/
def P11663521412681332222.Spec : Prop :=
  ∀ n, (P11663521412681332222.a n : ℤ) = A130404 (n + 1)

end A130404

/-! ## A130404.P2849781751568171723

`∑[or(1, lcm(2, n)-n)]`
-/

namespace A130404.P2849781751568171723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ((Nat.lcm 2 n : ℤ) - (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130404.P2849781751568171723

namespace A130404

/-- `∑[or(1, lcm(2, n)-n)]` -/
def P2849781751568171723.Spec : Prop :=
  ∀ n, P2849781751568171723.a n = A130404 (n + 1)

end A130404

/-! ## A130404.P13923634493276785290

`∑[C(n, or(1, n)-1)]`
-/

namespace A130404.P13923634493276785290
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n ((Nat.lor 1 n : ℤ) - 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130404.P13923634493276785290

namespace A130404

/-- `∑[C(n, or(1, n)-1)]` -/
def P13923634493276785290.Spec : Prop :=
  ∀ n, (P13923634493276785290.a n : ℤ) = A130404 (n + 1)

end A130404

/-! ## A130404.P55107574267236982

`∑[or(1, n*and(1, n))]`
-/

namespace A130404.P55107574267236982
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (n * Nat.land 1 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130404.P55107574267236982

namespace A130404

/-- `∑[or(1, n*and(1, n))]` -/
def P55107574267236982.Spec : Prop :=
  ∀ n, (P55107574267236982.a n : ℤ) = A130404 (n + 1)

end A130404

/-! ## A130404.P15390899905756656745

`∑[n^C(n, or(1, n))]`
-/

namespace A130404.P15390899905756656745
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ Nat.choose n (Nat.lor 1 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130404.P15390899905756656745

namespace A130404

/-- `∑[n^C(n, or(1, n))]` -/
def P15390899905756656745.Spec : Prop :=
  ∀ n, (P15390899905756656745.a n : ℤ) = A130404 (n + 1)

end A130404

/-! ## A130404.P11975520296854106507

`∑[C(n, C(n, or(1, n)))]`
-/

namespace A130404.P11975520296854106507
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (Nat.choose n (Nat.lor 1 n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130404.P11975520296854106507

namespace A130404

/-- `∑[C(n, C(n, or(1, n)))]` -/
def P11975520296854106507.Spec : Prop :=
  ∀ n, (P11975520296854106507.a n : ℤ) = A130404 (n + 1)

end A130404

/-! ## A130404.P12668131230844619691

`∑[xor(n, C(xor(1, n), n))]`
-/

namespace A130404.P12668131230844619691
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (Nat.choose (Nat.xor 1 n) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130404.P12668131230844619691

namespace A130404

/-- `∑[xor(n, C(xor(1, n), n))]` -/
def P12668131230844619691.Spec : Prop :=
  ∀ n, (P12668131230844619691.a n : ℤ) = A130404 (n + 1)

end A130404

/-! ## A130404.P7364427012335885846

`∑[C(n, 2-gcd(2, n²))]`
-/

namespace A130404.P7364427012335885846
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (2 - (Nat.gcd 2 (n ^ 2) : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130404.P7364427012335885846

namespace A130404

/-- `∑[C(n, 2-gcd(2, n²))]` -/
def P7364427012335885846.Spec : Prop :=
  ∀ n, (P7364427012335885846.a n : ℤ) = A130404 (n + 1)

end A130404

/-! ## A130404.P14829157315590288415

`∑[C(n, 2*floor(n/2))]`
-/

namespace A130404.P14829157315590288415
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (2 * ⌊(n : ℚ) / 2⌋).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130404.P14829157315590288415

namespace A130404

/-- `∑[C(n, 2*floor(n/2))]` -/
def P14829157315590288415.Spec : Prop :=
  ∀ n, (P14829157315590288415.a n : ℤ) = A130404 (n + 1)

end A130404

/-! ## A130404.P15488948060143196237

`or(1, a(n-2))+n` with `a(0)=1, a(1)=2`
-/

namespace A130404.P15488948060143196237
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  Nat.lor 1 (a (n - 2)) + n

end

end A130404.P15488948060143196237

namespace A130404

/-- `or(1, a(n-2))+n` -/
def P15488948060143196237.Spec : Prop :=
  ∀ n, (P15488948060143196237.a n : ℤ) = A130404 (n + 1)

end A130404

/-! ## A130404.P16843280560680091213

`a(and(n-1, -2))+n` with `a(0)=1`
-/

namespace A130404.P16843280560680091213
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (Int.land ((n : ℤ) - 1) (-2)).toNat + n

end

end A130404.P16843280560680091213

namespace A130404

/-- `a(and(n-1, -2))+n` -/
def P16843280560680091213.Spec : Prop :=
  ∀ n, (P16843280560680091213.a n : ℤ) = A130404 (n + 1)

end A130404

/-! ## A130404.P6007574252990753905

`∑[(n-1)*and(1, n)+1]`
-/

namespace A130404.P6007574252990753905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * (Nat.land 1 n : ℤ) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130404.P6007574252990753905

namespace A130404

/-- `∑[(n-1)*and(1, n)+1]` -/
def P6007574252990753905.Spec : Prop :=
  ∀ n, P6007574252990753905.a n = A130404 (n + 1)

end A130404

/-! ## A130404.P569725268606790746

`∑[lcm(n-1, and(1, n))+1]`
-/

namespace A130404.P569725268606790746
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((n : ℤ) - 1) (Nat.land 1 n : ℤ) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130404.P569725268606790746

namespace A130404

/-- `∑[lcm(n-1, and(1, n))+1]` -/
def P569725268606790746.Spec : Prop :=
  ∀ n, (P569725268606790746.a n : ℤ) = A130404 (n + 1)

end A130404

/-!
# A130406: Column 1 of triangle A130405.

The programs for A130406, there is no canonical definition to state claims against.
-/

/-! ## A130406.P3313684458194780972

`A000045(n+2)*a(n-1)+A000045(n+1)*A003266(n+1)` with `a(0)=1`
-/

namespace A130406.P3313684458194780972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000045 (n + 2) * a (n - 1) + A000045 (n + 1) * A003266 (n + 1)

end

end A130406.P3313684458194780972

/-! ## A130406.P1777841953915725483

`A130405(∑[n+1]+1)`
-/

namespace A130406.P1777841953915725483
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130405 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A130406.P1777841953915725483

/-! ## A130406.P7714670285606961696

`record[A130405(A038722(n+1)+1)]`
-/

namespace A130406.P7714670285606961696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130405 (A038722 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A130406.P7714670285606961696

/-! ## A130406.P3055350918593201424

`record[A130405(A000124(val(n+1, 2)))]`
-/

namespace A130406.P3055350918593201424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130405 (A000124 (SequenceMachineLib.valuation (n + 1) 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A130406.P3055350918593201424

/-!
# A130407: A diagonal of triangle A130405.

The programs for A130407, there is no canonical definition to state claims against.
-/

/-! ## A130407.P2658487989109797866

`A000045(n+1)*a(n-1)+A000045(n+2)*A003266(n)` with `a(0)=1`
-/

namespace A130407.P2658487989109797866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000045 (n + 1) * a (n - 1) + A000045 (n + 2) * A003266 n

end

end A130407.P2658487989109797866

/-! ## A130407.P9328314048291921221

`A130405(∑[n+2]-1)`
-/

namespace A130407.P9328314048291921221
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130405 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A130407.P9328314048291921221

/-! ## A130407.P8548646149911395882

`record[A130405(∑[A158416(n)])]`
-/

namespace A130407.P8548646149911395882
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158416 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130405 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A130407.P8548646149911395882

/-!
# A130410: Alternating row sums of triangle A130191 (Stirling2)^2.

The programs for A130410, there is no canonical definition to state claims against.
-/

/-! ## A130410.P18161848031046256041

`A351429(∑[n+3]+n+3)`
-/

namespace A130410.P18161848031046256041
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351429 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A130410.P18161848031046256041

/-! ## A130410.P16711680051600722325

`A088962(A266550(n+1))-A088958(n+1)`
-/

namespace A130410.P16711680051600722325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088962 (A266550 (n + 1)).toNat - A088958 (n + 1)

end

end A130410.P16711680051600722325

/-!
# A130411: Numerator of partial sums of a series for 3*(Pi-3).

The programs for A130411, there is no canonical definition to state claims against.
-/

/-! ## A130411.P17911139059808922572

`A130413(n+1)-A130414(n+1)`
-/

namespace A130411.P17911139059808922572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130413 (n + 1) - A130414 (n + 1)

end

end A130411.P17911139059808922572

/-! ## A130411.P15443825750901549063

`A130413(n+1)%A130412(n+1)`
-/

namespace A130411.P15443825750901549063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A130413 (n + 1)) (A130412 (n + 1))

end

end A130411.P15443825750901549063

/-!
# A130412: Denominator of partial sums of a series for 3*(Pi-3).

The programs for A130412, there is no canonical definition to state claims against.
-/

/-! ## A130412.P10974693804531224898

`A130414(n+1)/9`
-/

namespace A130412.P10974693804531224898
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A130414 (n + 1) : ℚ) / 9

end

end A130412.P10974693804531224898

/-! ## A130412.P10018173405944052817

`Δ[∑[A130414(n)]/9]`
-/

namespace A130412.P10018173405944052817
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130414 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / 9

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A130412.P10018173405944052817

/-! ## A130412.P14111126992068352943

`lcm(A000265(A002802(n)), A103889(n+1))`
-/

namespace A130412.P14111126992068352943
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000265 (A002802 n).toNat) (A103889 (n + 1))

end

end A130412.P14111126992068352943

/-!
# A130414: Denominators of partial sums for a series for Pi/3.

The programs for A130414, there is no canonical definition to state claims against.
-/

/-! ## A130414.P7565000599232570882

`A008486(lcm(A014681(n), A220747(n)))`
-/

namespace A130414.P7565000599232570882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (Int.lcm (A014681 n) (A220747 n))

end

end A130414.P7565000599232570882

/-! ## A130414.P1765050858442721070

`lcm(A130482(A002457(n)), A288211(n+1))`
-/

namespace A130414.P1765050858442721070
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A130482 (A002457 n).toNat) (A288211 (n + 1))

end

end A130414.P1765050858442721070

/-!
# A130418: Triangle (of n terms per row) where t(n,m) = the m-th positive integer which is coprime to n!.

The programs for A130418, there is no canonical definition to state claims against.
-/

/-! ## A130418.P18341847570883399410

`A130419(A341706(n+1))`
-/

namespace A130418.P18341847570883399410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130419 (A341706 (n + 1)).toNat

end

end A130418.P18341847570883399410

/-! ## A130418.P9524744245396124513

`or(A123245(n), A227634(A271969(n+1)))`
-/

namespace A130418.P9524744245396124513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A123245 n) (A227634 (A271969 (n + 1)).toNat)

end

end A130418.P9524744245396124513

/-! ## A130418.P13765453095437192070

`A061775(A002260(n+1)^A220096(n+1))`
-/

namespace A130418.P13765453095437192070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061775 (SequenceMachineLib.roundAway ((A002260 (n + 1) : ℚ) ^ (A220096 (n + 1) : ℤ))).toNat

end

end A130418.P13765453095437192070

/-!
# A130419: Triangle (of n terms per row) where t(n,m) = the m-th positive integer which is coprime to n!!. (n!! = n*(n-2)*(n-4)..*(2 or 1).).

The programs for A130419, there is no canonical definition to state claims against.
-/

/-! ## A130419.P2406070737716761451

`A171172(record[A254763(n+1)])`
-/

namespace A130419.P2406070737716761451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254763 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171172 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A130419.P2406070737716761451

/-! ## A130419.P3871933025086390675

`A171173(record[A254763(n+1)])`
-/

namespace A130419.P3871933025086390675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254763 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171173 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A130419.P3871933025086390675

/-! ## A130419.P5771093131685739750

`A158405(n+1)-A276794(A294175(n+1))`
-/

namespace A130419.P5771093131685739750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158405 (n + 1) - A276794 (A294175 (n + 1)).toNat

end

end A130419.P5771093131685739750

/-! ## A130419.P10626092655685211091

`A158405(n+1)-A257585(2*A187829(n+1))`
-/

namespace A130419.P10626092655685211091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158405 (n + 1) - A257585 (2 * A187829 (n + 1)).toNat

end

end A130419.P10626092655685211091

/-! ## A130419.P12615627949564583029

`A335520(A248686(n+1))+A077581(n+1)`
-/

namespace A130419.P12615627949564583029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335520 (A248686 (n + 1)).toNat + A077581 (n + 1)

end

end A130419.P12615627949564583029

/-!
# A130420: a(n) = n-th positive integer which is coprime to n!!, where n!! = n*(n-2)*(n-4)..*(2 or 1).

The programs for A130420, there is no canonical definition to state claims against.
-/

/-! ## A130420.P627449338743700072

`A130419(∑[n+1])`
-/

namespace A130420.P627449338743700072
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130419 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A130420.P627449338743700072

/-! ## A130420.P9026029619429154895

`A130419(C(n+2, 2))%p?[round(8*n/7)]²`
-/

namespace A130420.P9026029619429154895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A130419 (Nat.choose (n + 2) 2)) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) ^ 2)

end

end A130420.P9026029619429154895

/-! ## A130420.P5546875106141742664

`A130446(A130419(C(n+2, 2)))`
-/

namespace A130420.P5546875106141742664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130446 (A130419 (Nat.choose (n + 2) 2)).toNat

end

end A130420.P5546875106141742664

/-! ## A130420.P11703187178987923850

`and(-1, A130419(A000217(n+1)))`
-/

namespace A130420.P11703187178987923850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A130419 (A000217 (n + 1)).toNat)

end

end A130420.P11703187178987923850

/-! ## A130420.P1882168599002815405

`A130419(C(n+2, 2))%A130338(n+1)`
-/

namespace A130420.P1882168599002815405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A130419 (Nat.choose (n + 2) 2)) (A130338 (n + 1))

end

end A130420.P1882168599002815405

/-!
# A130421: Numbers k such that 4^k == 2 (mod k).

The programs for A130421, there is no canonical definition to state claims against.
-/

/-! ## A130421.P12873937656922306922

`∪[A347906(n+1), A347908(n+1)]`
-/

namespace A130421.P12873937656922306922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347906 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347908 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A130421.P12873937656922306922

/-!
# A130423: Main diagonal of array A[k,n] = n-th sum of 3 consecutive k-gonal numbers, k>2.

The programs for A130423, the canonical program `A130423.P9649990862230563592` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A130423 has offset 1).

The definition of A130423 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A130423.P2496989938580815438

`ogf((4-2x+7x^2)/(1-4x+6x^2-4x^3+x^4))`
-/

namespace A130423.P2496989938580815438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, -2, 7] [1, -4, 6, -4, 1] n

end

end A130423.P2496989938580815438

namespace A130423

/-- `ogf((4-2x+7x^2)/(1-4x+6x^2-4x^3+x^4))` -/
def P2496989938580815438.Spec : Prop :=
  ∀ n, P2496989938580815438.a n = A130423 (n + 1)

end A130423

/-! ## A130423.P12868495181910387797

`(n+1)*(3*(n+1)²-3*(n+1)+8)/2`
-/

namespace A130423.P12868495181910387797
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) * ((3 * (n + 1) ^ 2 : ℤ) - (3 * (n + 1) : ℤ) + 8) : ℚ) / 2

end

end A130423.P12868495181910387797

namespace A130423

/-- `(n+1)*(3*(n+1)²-3*(n+1)+8)/2` -/
def P12868495181910387797.Spec : Prop :=
  ∀ n, P12868495181910387797.a n = (A130423 (n + 1) : ℚ)

theorem P12868495181910387797.correct : P12868495181910387797.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A130423, Nat.add_sub_cancel, A130423.P12868495181910387797.a, A130423.P9649990862230563592.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A130423, Nat.add_sub_cancel, A130423.P12868495181910387797.a, A130423.P9649990862230563592.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A130423

/-! ## A130423.P9649990862230563592

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=4, a(1)=14, a(2)=39, a(3)=88`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A130423

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P9649990862230563592.Spec : Prop :=
  ∀ n, P9649990862230563592.a n = A130423 (n + 1)

theorem P9649990862230563592.correct : P9649990862230563592.Spec := by
  intro n
  simp only [A130423, Nat.add_sub_cancel]

end A130423

/-! ## A130423.P14971826700801483761

`∑[C(3*n+1, 2)+4]`
-/

namespace A130423.P14971826700801483761
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (3 * n + 1) 2 + 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130423.P14971826700801483761

namespace A130423

/-- `∑[C(3*n+1, 2)+4]` -/
def P14971826700801483761.Spec : Prop :=
  ∀ n, (P14971826700801483761.a n : ℤ) = A130423 (n + 1)

end A130423

/-! ## A130423.P16629608854022972609

`∑[∑[a(n-1)+9]]` with `a(0)=4, a(1)=6`
-/

namespace A130423.P16629608854022972609
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [4, 6] fun n f2 =>
  f2 (n - 1) + 9

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130423.P16629608854022972609

namespace A130423

/-- `∑[∑[a(n-1)+9]]` -/
def P16629608854022972609.Spec : Prop :=
  ∀ n, (P16629608854022972609.a n : ℤ) = A130423 (n + 1)

end A130423

/-! ## A130423.P3871841911838736942

`∑[7-∑[a(n-1)-9]]` with `a(0)=3`
-/

namespace A130423.P3871841911838736942
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f2 =>
  f2 (n - 1) - 9

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130423.P3871841911838736942

namespace A130423

/-- `∑[7-∑[a(n-1)-9]]` -/
def P3871841911838736942.Spec : Prop :=
  ∀ n, P3871841911838736942.a n = A130423 (n + 1)

end A130423

/-! ## A130423.P4949263951656582676

`∑[A038764(n)+3]`
-/

namespace A130423.P4949263951656582676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038764 n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130423.P4949263951656582676

namespace A130423

/-- `∑[A038764(n)+3]` -/
def P4949263951656582676.Spec : Prop :=
  ∀ n, P4949263951656582676.a n = A130423 (n + 1)

end A130423

/-! ## A130423.P16534544183269301018

`∑[A081266(n)+4]`
-/

namespace A130423.P16534544183269301018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081266 n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130423.P16534544183269301018

namespace A130423

/-- `∑[A081266(n)+4]` -/
def P16534544183269301018.Spec : Prop :=
  ∀ n, P16534544183269301018.a n = A130423 (n + 1)

end A130423

/-! ## A130423.P135616735299326506

`A143690(n)+∑[n+3]`
-/

namespace A130423.P135616735299326506
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143690 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A130423.P135616735299326506

namespace A130423

/-- `A143690(n)+∑[n+3]` -/
def P135616735299326506.Spec : Prop :=
  ∀ n, P135616735299326506.a n = A130423 (n + 1)

end A130423

/-! ## A130423.P8824139159719637028

`3*A006000(n)+n+1`
-/

namespace A130423.P8824139159719637028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A006000 n + (n + 1 : ℤ)

end

end A130423.P8824139159719637028

namespace A130423

/-- `3*A006000(n)+n+1` -/
def P8824139159719637028.Spec : Prop :=
  ∀ n, P8824139159719637028.a n = A130423 (n + 1)

end A130423

/-! ## A130423.P13954885722773005476

`A007584(n)+∑[(n+2)²]`
-/

namespace A130423.P13954885722773005476
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007584 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A130423.P13954885722773005476

namespace A130423

/-- `A007584(n)+∑[(n+2)²]` -/
def P13954885722773005476.Spec : Prop :=
  ∀ n, P13954885722773005476.a n = A130423 (n + 1)

end A130423

/-! ## A130423.P12150157074840697281

`(n+1)*(A290768(n+1)+1)`
-/

namespace A130423.P12150157074840697281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A290768 (n + 1) + 1)

end

end A130423.P12150157074840697281

namespace A130423

/-- `(n+1)*(A290768(n+1)+1)` -/
def P12150157074840697281.Spec : Prop :=
  ∀ n, P12150157074840697281.a n = A130423 (n + 1)

end A130423

/-! ## A130423.P12102500162577376670

`(n+1)*(A124011(n+1)-1)`
-/

namespace A130423.P12102500162577376670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A124011 (n + 1) - 1)

end

end A130423.P12102500162577376670

namespace A130423

/-- `(n+1)*(A124011(n+1)-1)` -/
def P12102500162577376670.Spec : Prop :=
  ∀ n, P12102500162577376670.a n = A130423 (n + 1)

end A130423

/-! ## A130423.P349585864529315524

`(n+1)*(A005448(n+1)+3)`
-/

namespace A130423.P349585864529315524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A005448 (n + 1) + 3)

end

end A130423.P349585864529315524

namespace A130423

/-- `(n+1)*(A005448(n+1)+3)` -/
def P349585864529315524.Spec : Prop :=
  ∀ n, P349585864529315524.a n = A130423 (n + 1)

end A130423

/-! ## A130423.P18368678284730465356

`A100175(n+1)+3*(n+1)`
-/

namespace A130423.P18368678284730465356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100175 (n + 1) + (3 * (n + 1) : ℤ)

end

end A130423.P18368678284730465356

namespace A130423

/-- `A100175(n+1)+3*(n+1)` -/
def P18368678284730465356.Spec : Prop :=
  ∀ n, P18368678284730465356.a n = A130423 (n + 1)

end A130423

/-! ## A130423.P3315200265983644134

`A050533(n)+∑[∑[n+1]+3]-n`
-/

namespace A130423.P3315200265983644134
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050533 n + (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n : ℤ))

end

end A130423.P3315200265983644134

namespace A130423

/-- `A050533(n)+∑[∑[n+1]+3]-n` -/
def P3315200265983644134.Spec : Prop :=
  ∀ n, P3315200265983644134.a n = A130423 (n + 1)

end A130423

/-! ## A130423.P5973360297560448681

`(n+1)*C(n+3, 2)+A000578(n)+1`
-/

namespace A130423.P5973360297560448681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) * Nat.choose (n + 3) 2 : ℤ) + (A000578 n + 1)

end

end A130423.P5973360297560448681

namespace A130423

/-- `(n+1)*C(n+3, 2)+A000578(n)+1` -/
def P5973360297560448681.Spec : Prop :=
  ∀ n, P5973360297560448681.a n = A130423 (n + 1)

end A130423

/-! ## A130423.P14460611311599304231

`A164845(n)+A081423(n)`
-/

namespace A130423.P14460611311599304231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164845 n + A081423 n

end

end A130423.P14460611311599304231

namespace A130423

/-- `A164845(n)+A081423(n)` -/
def P14460611311599304231.Spec : Prop :=
  ∀ n, P14460611311599304231.a n = A130423 (n + 1)

end A130423

/-! ## A130423.P8903599224054469743

`A117560(n+2)+A084380(n)`
-/

namespace A130423.P8903599224054469743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117560 (n + 2) + A084380 n

end

end A130423.P8903599224054469743

namespace A130423

/-- `A117560(n+2)+A084380(n)` -/
def P8903599224054469743.Spec : Prop :=
  ∀ n, P8903599224054469743.a n = A130423 (n + 1)

end A130423

/-! ## A130423.P7726260142934533143

`A180569(n+1)-A152740(n)`
-/

namespace A130423.P7726260142934533143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180569 (n + 1) - A152740 n

end

end A130423.P7726260142934533143

namespace A130423

/-- `A180569(n+1)-A152740(n)` -/
def P7726260142934533143.Spec : Prop :=
  ∀ n, P7726260142934533143.a n = A130423 (n + 1)

end A130423

/-!
# A130424: Main diagonal of array A[k,n] = n-th sum of k consecutive k-gonal numbers, k>2.

The programs for A130424, the canonical program `A130424.P476069713679298982` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A130424 has offset 1).

The definition of A130424 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A130424.P3507998082654617858

`ogf((4+10x+15x^2-x^4)/(1-5x+10x^2-10x^3+5x^4-x^5))`
-/

namespace A130424.P3507998082654617858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, 10, 15, 0, -1] [1, -5, 10, -10, 5, -1] n

end

end A130424.P3507998082654617858

namespace A130424

/-- `ogf((4+10x+15x^2-x^4)/(1-5x+10x^2-10x^3+5x^4-x^5))` -/
def P3507998082654617858.Spec : Prop :=
  ∀ n, P3507998082654617858.a n = A130424 (n + 1)

end A130424

/-! ## A130424.P476069713679298982

`(n+3)*(7*(n+1)^3-8*(n+1)²+12*(n+1)-3)/6`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A130424

/-- `(n+3)*(7*(n+1)^3-8*(n+1)²+12*(n+1)-3)/6` -/
def P476069713679298982.Spec : Prop :=
  ∀ n, P476069713679298982.a n = (A130424 (n + 1) : ℚ)

end A130424

/-!
# A130425: a(n) = numerator of Sum_{k=1..n} 1/k^(n+1-k).

The programs for A130425, there is no canonical definition to state claims against.
-/

/-! ## A130425.P8968509297081342568

`A258195(A004273(a(n-1)))` with `a(0)=1`
-/

namespace A130425.P8968509297081342568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A258195 (A004273 (a (n - 1)).toNat).toNat

end

end A130425.P8968509297081342568

/-!
# A130426: a(n) = denominator of Sum_{k=1..n} 1/k^(n+1-k).

The programs for A130426, there is no canonical definition to state claims against.
-/

/-! ## A130426.P8637450739729640881

`∏[A135873(A322852(n))]`
-/

namespace A130426.P8637450739729640881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135873 (A322852 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A130426.P8637450739729640881

/-! ## A130426.P12731601193037976393

`∏[A143965(A180415(n+1))]`
-/

namespace A130426.P12731601193037976393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143965 (A180415 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A130426.P12731601193037976393

/-!
# A130433: Even pseudoprimes to base 3.

The programs for A130433, there is no canonical definition to state claims against.
-/

/-! ## A130433.P1040495893022503973

`filter[A005935(n+1), val(#, 2)]`
-/

namespace A130433.P1040495893022503973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005935 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => SequenceMachineLib.valuation (f1 j).toNat 2 = 1) n)

end

end A130433.P1040495893022503973

/-!
# A130434: Even pseudoprimes to base 7.

The programs for A130434, there is no canonical definition to state claims against.
-/

/-! ## A130434.P6441048496319709317

`A005938(lt[A005938(n+1)%2, 1]+1)`
-/

namespace A130434.P6441048496319709317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005938 (n + 1)) 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005938 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A130434.P6441048496319709317

/-!
# A130435: Even pseudoprimes to base 13.

The programs for A130435, there is no canonical definition to state claims against.
-/

/-! ## A130435.P12634153376212323583

`∩[2*n, A020141(n+1)]`
-/

namespace A130435.P12634153376212323583
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020141 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A130435.P12634153376212323583

/-! ## A130435.P993586118740405635

`filter[A020141(n+1), A354034(#)]`
-/

namespace A130435.P993586118740405635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020141 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354034 (f1 j).toNat = 1) n)

end

end A130435.P993586118740405635

/-! ## A130435.P8342073838284456293

`filter[A020141(n+1), A373252(#)]`
-/

namespace A130435.P8342073838284456293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020141 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373252 (f1 j).toNat = 1) n)

end

end A130435.P8342073838284456293

/-! ## A130435.P13899037570650415352

`∩[A020141(n+1), A047410(n+1)]`
-/

namespace A130435.P13899037570650415352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020141 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047410 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A130435.P13899037570650415352

/-!
# A130436: Even pseudoprimes to base 17.

The programs for A130436, there is no canonical definition to state claims against.
-/

/-! ## A130436.P476819688827420004

`filter[A020145(n+1), A120325(#)]`
-/

namespace A130436.P476819688827420004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020145 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A120325 (f1 j).toNat = 1) n)

end

end A130436.P476819688827420004

/-! ## A130436.P3476329082411309772

`filter[A020145(n+1), A373252(#)]`
-/

namespace A130436.P3476329082411309772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020145 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373252 (f1 j).toNat = 1) n)

end

end A130436.P3476329082411309772

/-! ## A130436.P2370643364073620810

`filter[A020145(n+1), A254379(#)]`
-/

namespace A130436.P2370643364073620810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020145 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A254379 (f1 j).toNat = 1) n)

end

end A130436.P2370643364073620810

/-!
# A130438: Even pseudoprimes to base 23.

The programs for A130438, there is no canonical definition to state claims against.
-/

/-! ## A130438.P15178801966743994691

`∩[A020151(n+1), A008604(n)]`
-/

namespace A130438.P15178801966743994691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020151 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008604 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A130438.P15178801966743994691

/-! ## A130438.P15004216663997066487

`filter[A020151(n+1), A120325(#)]`
-/

namespace A130438.P15004216663997066487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020151 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A120325 (f1 j).toNat = 1) n)

end

end A130438.P15004216663997066487

/-! ## A130438.P1696363643760829695

`filter[A020151(n+1), A217586(#)]`
-/

namespace A130438.P1696363643760829695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020151 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A217586 (f1 j).toNat = 1) n)

end

end A130438.P1696363643760829695

/-! ## A130438.P1505272939676238567

`filter[A020151(n+1), A353525(#)]`
-/

namespace A130438.P1505272939676238567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020151 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353525 (f1 j).toNat = 1) n)

end

end A130438.P1505272939676238567

/-! ## A130438.P10133490668898991123

`filter[A020151(n+1), A353529(#)]`
-/

namespace A130438.P10133490668898991123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020151 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353529 (f1 j).toNat = 1) n)

end

end A130438.P10133490668898991123

/-!
# A130439: Even pseudoprimes to base 29.

The programs for A130439, there is no canonical definition to state claims against.
-/

/-! ## A130439.P12071854100886427771

`∩[2*n, A020157(n+1)]`
-/

namespace A130439.P12071854100886427771
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020157 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A130439.P12071854100886427771

/-! ## A130439.P6823193342049575998

`filter[A020157(n+1), A120325(#)]`
-/

namespace A130439.P6823193342049575998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020157 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A120325 (f1 j).toNat = 1) n)

end

end A130439.P6823193342049575998

/-! ## A130439.P15346403094246120613

`filter[A020157(n+1), A373252(#)]`
-/

namespace A130439.P15346403094246120613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020157 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373252 (f1 j).toNat = 1) n)

end

end A130439.P15346403094246120613

/-! ## A130439.P17270796679042962840

`filter[A020157(n+1), A353525(#)]`
-/

namespace A130439.P17270796679042962840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020157 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353525 (f1 j).toNat = 1) n)

end

end A130439.P17270796679042962840

/-! ## A130439.P12032043473303858285

`filter[A020157(n+1), A353529(#)]`
-/

namespace A130439.P12032043473303858285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020157 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353529 (f1 j).toNat = 1) n)

end

end A130439.P12032043473303858285

/-!
# A130440: Even pseudoprimes to base 31.

The programs for A130440, there is no canonical definition to state claims against.
-/

/-! ## A130440.P7140260237146556491

`filter[A020159(n+1), A217586(#)]`
-/

namespace A130440.P7140260237146556491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020159 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A217586 (f1 j).toNat = 1) n)

end

end A130440.P7140260237146556491

/-! ## A130440.P7965278805511222351

`filter[A020159(n+1), A323170(#)]`
-/

namespace A130440.P7965278805511222351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020159 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323170 (f1 j).toNat = 1) n)

end

end A130440.P7965278805511222351

/-! ## A130440.P3268419562866761987

`filter[A020159(n+1), A353681(#)]`
-/

namespace A130440.P3268419562866761987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020159 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353681 (f1 j).toNat = 1) n)

end

end A130440.P3268419562866761987

/-! ## A130440.P1615602149470149760

`filter[A020159(n+1), A373252(#)]`
-/

namespace A130440.P1615602149470149760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020159 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373252 (f1 j).toNat = 1) n)

end

end A130440.P1615602149470149760

/-! ## A130440.P8634053876605235411

`filter[A020159(n+1), A379966(#)]`
-/

namespace A130440.P8634053876605235411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020159 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379966 (f1 j).toNat = 1) n)

end

end A130440.P8634053876605235411

/-!
# A130441: Even pseudoprimes to base 37.

The programs for A130441, there is no canonical definition to state claims against.
-/

/-! ## A130441.P9625517379944434620

`∩[2*n, A020165(n+1)]`
-/

namespace A130441.P9625517379944434620
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020165 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A130441.P9625517379944434620

/-! ## A130441.P10471335341461023552

`∩[A020165(n+1), A047233(n+1)]`
-/

namespace A130441.P10471335341461023552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020165 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047233 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A130441.P10471335341461023552

/-! ## A130441.P11985473632809349046

`∩[A020165(n+1), A047410(n+1)]`
-/

namespace A130441.P11985473632809349046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020165 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047410 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A130441.P11985473632809349046

/-! ## A130441.P16419129336826479826

`∩[A020165(n+1), A103517(n)]`
-/

namespace A130441.P16419129336826479826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020165 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A130441.P16419129336826479826

/-! ## A130441.P7041909773707871389

`∩[A020165(n+1), A053228(n+1)]`
-/

namespace A130441.P7041909773707871389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020165 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053228 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A130441.P7041909773707871389

/-!
# A130442: Even pseudoprimes to base 41.

The programs for A130442, there is no canonical definition to state claims against.
-/

/-! ## A130442.P17700584593121109635

`∩[2*n, A020169(n+1)]`
-/

namespace A130442.P17700584593121109635
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020169 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A130442.P17700584593121109635

/-! ## A130442.P8390546193023257407

`filter[A020169(n+1), A120325(#)]`
-/

namespace A130442.P8390546193023257407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020169 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A120325 (f1 j).toNat = 1) n)

end

end A130442.P8390546193023257407

/-! ## A130442.P2300948803516272087

`filter[A020169(n+1), A373252(#)]`
-/

namespace A130442.P2300948803516272087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020169 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373252 (f1 j).toNat = 1) n)

end

end A130442.P2300948803516272087

/-! ## A130442.P12865962858510566186

`filter[A020169(n+1), A353525(#)]`
-/

namespace A130442.P12865962858510566186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020169 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353525 (f1 j).toNat = 1) n)

end

end A130442.P12865962858510566186

/-! ## A130442.P12262997400631133243

`filter[A020169(n+1), A353529(#)]`
-/

namespace A130442.P12262997400631133243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020169 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353529 (f1 j).toNat = 1) n)

end

end A130442.P12262997400631133243

/-!
# A130445: Integers in the range [1, 425] not expressible as a difference of the unique optimal Golomb ruler of order 24. See A130444.

The programs for A130445, the canonical program `A130445.P7579084859812681452` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A130445 has offset 1).

The definition of A130445 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 149 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A130445.P7579084859812681452

`comp[A130446(n+1)-1]+1`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A130445

/-- `comp[A130446(n+1)-1]+1` -/
def P7579084859812681452.Spec : Prop :=
  ∀ n, (P7579084859812681452.a n : ℤ) = A130445 (n + 1)

theorem P7579084859812681452.correct : P7579084859812681452.Spec := by
  intro n
  simp only [A130445, Nat.add_sub_cancel]

end A130445

/-! ## A130445.P13044384372289692381

`comp[A023443(A130446(n+1))]+1`
-/

namespace A130445.P13044384372289692381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A130446 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A130445.P13044384372289692381

namespace A130445

/-- `comp[A023443(A130446(n+1))]+1` -/
def P13044384372289692381.Spec : Prop :=
  ∀ n, (P13044384372289692381.a n : ℤ) = A130445 (n + 1)

end A130445

/-! ## A130445.P8912046152992336619

`comp[∪[A130446(n+1), A000583(n)]]`
-/

namespace A130445.P8912046152992336619
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130446 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000583 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A130445.P8912046152992336619

namespace A130445

/-- `comp[∪[A130446(n+1), A000583(n)]]` -/
def P8912046152992336619.Spec : Prop :=
  ∀ n, (P8912046152992336619.a n : ℤ) = A130445 (n + 1)

end A130445

/-! ## A130445.P5875308665330938359

`comp[∪[A130446(n+1), A000584(n)]]`
-/

namespace A130445.P5875308665330938359
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130446 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000584 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A130445.P5875308665330938359

namespace A130445

/-- `comp[∪[A130446(n+1), A000584(n)]]` -/
def P5875308665330938359.Spec : Prop :=
  ∀ n, (P5875308665330938359.a n : ℤ) = A130445 (n + 1)

end A130445

/-! ## A130445.P9610070906393471963

`comp[∪[A130446(n+1), A001096(n)]]`
-/

namespace A130445.P9610070906393471963
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130446 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001096 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A130445.P9610070906393471963

namespace A130445

/-- `comp[∪[A130446(n+1), A001096(n)]]` -/
def P9610070906393471963.Spec : Prop :=
  ∀ n, (P9610070906393471963.a n : ℤ) = A130445 (n + 1)

end A130445

/-! ## A130445.P1180892270985791250

`comp[∪[A130446(n+1), A007088(n)]]`
-/

namespace A130445.P1180892270985791250
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130446 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A130445.P1180892270985791250

namespace A130445

/-- `comp[∪[A130446(n+1), A007088(n)]]` -/
def P1180892270985791250.Spec : Prop :=
  ∀ n, (P1180892270985791250.a n : ℤ) = A130445 (n + 1)

end A130445

/-! ## A130445.P17965876594334519158

`comp[∪[A130446(n+1), A075934(n)]]`
-/

namespace A130445.P17965876594334519158
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130446 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075934 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A130445.P17965876594334519158

namespace A130445

/-- `comp[∪[A130446(n+1), A075934(n)]]` -/
def P17965876594334519158.Spec : Prop :=
  ∀ n, (P17965876594334519158.a n : ℤ) = A130445 (n + 1)

end A130445

/-! ## A130445.P13388579861892676826

`comp[∪[A130446(n+1), A097256(n)]]`
-/

namespace A130445.P13388579861892676826
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130446 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097256 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A130445.P13388579861892676826

namespace A130445

/-- `comp[∪[A130446(n+1), A097256(n)]]` -/
def P13388579861892676826.Spec : Prop :=
  ∀ n, (P13388579861892676826.a n : ℤ) = A130445 (n + 1)

end A130445

/-! ## A130445.P5216543657807168598

`comp[∪[A130446(n+1), A204094(n)]]`
-/

namespace A130445.P5216543657807168598
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130446 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204094 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A130445.P5216543657807168598

namespace A130445

/-- `comp[∪[A130446(n+1), A204094(n)]]` -/
def P5216543657807168598.Spec : Prop :=
  ∀ n, (P5216543657807168598.a n : ℤ) = A130445 (n + 1)

end A130445

/-! ## A130445.P14731025131477920437

`comp[∪[A130446(n+1), A204095(n)]]`
-/

namespace A130445.P14731025131477920437
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130446 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204095 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A130445.P14731025131477920437

namespace A130445

/-- `comp[∪[A130446(n+1), A204095(n)]]` -/
def P14731025131477920437.Spec : Prop :=
  ∀ n, (P14731025131477920437.a n : ℤ) = A130445 (n + 1)

end A130445

/-! ## A130445.P2291600809456837381

`comp[∪[A130430(n+1), A130446(n+1)]]`
-/

namespace A130445.P2291600809456837381
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130430 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130446 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A130445.P2291600809456837381

namespace A130445

/-- `comp[∪[A130430(n+1), A130446(n+1)]]` -/
def P2291600809456837381.Spec : Prop :=
  ∀ n, (P2291600809456837381.a n : ℤ) = A130445 (n + 1)

end A130445

/-! ## A130445.P14490067569121254490

`comp[∪[A130446(n+1), A169964(n+1)]]`
-/

namespace A130445.P14490067569121254490
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130446 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169964 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A130445.P14490067569121254490

namespace A130445

/-- `comp[∪[A130446(n+1), A169964(n+1)]]` -/
def P14490067569121254490.Spec : Prop :=
  ∀ n, (P14490067569121254490.a n : ℤ) = A130445 (n + 1)

end A130445

/-! ## A130445.P4672405308446391536

`comp[∪[A127906(3*n), A130446(n+1)]]`
-/

namespace A130445.P4672405308446391536
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127906 (3 * n)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130446 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A130445.P4672405308446391536

namespace A130445

/-- `comp[∪[A127906(3*n), A130446(n+1)]]` -/
def P4672405308446391536.Spec : Prop :=
  ∀ n, (P4672405308446391536.a n : ℤ) = A130445 (n + 1)

end A130445

/-!
# A130446: Integers in [1, 425] expressible as a difference of the terms of the unique optimal Golomb ruler of order 24. See A130444.

The programs for A130446, the canonical program `A130446.P13627366910175115370` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A130446 has offset 1).

The definition of A130446 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 129 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A130446.P15100020819040447716

`ceil(A027343(n)/A255011(n+4)+n)`
-/

namespace A130446.P15100020819040447716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A027343 n : ℚ) / (A255011 (n + 4) : ℚ) + (n : ℚ)⌉

end

end A130446.P15100020819040447716

namespace A130446

/-- `ceil(A027343(n)/A255011(n+4)+n)` -/
def P15100020819040447716.Spec : Prop :=
  ∀ n, P15100020819040447716.a n = A130446 (n + 1)

end A130446

/-! ## A130446.P13627366910175115370

`A111123(C(floor((n+1)/2), 64))+n`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A130446

/-- `A111123(C(floor((n+1)/2), 64))+n` -/
def P13627366910175115370.Spec : Prop :=
  ∀ n, P13627366910175115370.a n = A130446 (n + 1)

theorem P13627366910175115370.correct : P13627366910175115370.Spec := by
  intro n
  simp only [A130446, Nat.add_sub_cancel]

end A130446

/-! ## A130446.P11412936735411767972

`A063524(A203813(2*(n+1)))+1+n`
-/

namespace A130446.P11412936735411767972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063524 (A203813 (2 * (n + 1))).toNat + 1 + (n : ℤ)

end

end A130446.P11412936735411767972

namespace A130446

/-- `A063524(A203813(2*(n+1)))+1+n` -/
def P11412936735411767972.Spec : Prop :=
  ∀ n, P11412936735411767972.a n = A130446 (n + 1)

end A130446

/-! ## A130446.P4219736926330815280

`A193870(A075934(3*(n+1)))+1+n`
-/

namespace A130446.P4219736926330815280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193870 (A075934 (3 * (n + 1))).toNat + 1 + (n : ℤ)

end

end A130446.P4219736926330815280

namespace A130446

/-- `A193870(A075934(3*(n+1)))+1+n` -/
def P4219736926330815280.Spec : Prop :=
  ∀ n, P4219736926330815280.a n = A130446 (n + 1)

end A130446

/-! ## A130446.P4086630983661030525

`A147645(A139998(3*n+5))+n+1`
-/

namespace A130446.P4086630983661030525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147645 (A139998 (3 * n + 5)).toNat + (n + 1 : ℤ)

end

end A130446.P4086630983661030525

namespace A130446

/-- `A147645(A139998(3*n+5))+n+1` -/
def P4086630983661030525.Spec : Prop :=
  ∀ n, P4086630983661030525.a n = A130446 (n + 1)

end A130446

/-!
# A130447: Numbering the days of a 365-day year from 1 (Jan 01) to 365 (Dec 31), these are the days that start months.

The programs for A130447, there is no canonical definition to state claims against.
-/

/-! ## A130447.P4441388739977535416

`A061251(n)+1`
-/

namespace A130447.P4441388739977535416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061251 n + 1

end

end A130447.P4441388739977535416

/-! ## A130447.P15667043240092687407

`eq[2, A008684(n+1)]`
-/

namespace A130447.P15667043240092687407
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008684 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A130447.P15667043240092687407

/-! ## A130447.P12113542014033615140

`A008685(n)+a(n-1)` with `a(0)=1`
-/

namespace A130447.P12113542014033615140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A008685 n + a (n - 1)

end

end A130447.P12113542014033615140

/-! ## A130447.P9135433719896856529

`A008619(2*A061251(n))`
-/

namespace A130447.P9135433719896856529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * A061251 n).toNat

end

end A130447.P9135433719896856529

/-! ## A130447.P3689388855712649803

`A080513(2*A061251(n))`
-/

namespace A130447.P3689388855712649803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080513 (2 * A061251 n).toNat

end

end A130447.P3689388855712649803

/-!
# A130448: Squares whose decimal representation contains no proper subsequence which is a positive square.

The programs for A130448, there is no canonical definition to state claims against.
-/

/-! ## A130448.P7123403933326074203

`A131599(n+1)²`
-/

namespace A130448.P7123403933326074203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131599 (n + 1) ^ 2

end

end A130448.P7123403933326074203

/-! ## A130448.P2227854737828077793

`A131599(n+1)^A014963(A001316(n))`
-/

namespace A130448.P2227854737828077793
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A131599 (n + 1) : ℚ) ^ (A014963 (A001316 n).toNat : ℤ)

end

end A130448.P2227854737828077793

/-! ## A130448.P2806173362295107357

`A131599(n+1)^A020639(A311356(n))`
-/

namespace A130448.P2806173362295107357
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A131599 (n + 1) : ℚ) ^ (A020639 (A311356 n).toNat : ℤ)

end

end A130448.P2806173362295107357

/-! ## A130448.P7315697386966336995

`A131599(n+1)^A020639(A312655(n))`
-/

namespace A130448.P7315697386966336995
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A131599 (n + 1) : ℚ) ^ (A020639 (A312655 n).toNat : ℤ)

end

end A130448.P7315697386966336995

/-! ## A130448.P11957183727760384164

`A131599(n+1)^A000040(A007318(∑[n]))`
-/

namespace A130448.P11957183727760384164
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A131599 (n + 1) : ℚ) ^ (A000040 (A007318 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat : ℤ)

end

end A130448.P11957183727760384164

/-! ## A130448.P2975530160832458859

`A131599(A000027(n+1))*A131599(n+1)`
-/

namespace A130448.P2975530160832458859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131599 (A000027 (n + 1)).toNat * A131599 (n + 1)

end

end A130448.P2975530160832458859

/-! ## A130448.P4295514337208533029

`A131599(n+1)^A001221(A131574(n+1))`
-/

namespace A130448.P4295514337208533029
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A131599 (n + 1) : ℚ) ^ (A001221 (A131574 (n + 1)).toNat : ℤ)

end

end A130448.P4295514337208533029

/-! ## A130448.P11477760426273357299

`A131599(n+1)^A000040(A160338(n+1))`
-/

namespace A130448.P11477760426273357299
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A131599 (n + 1) : ℚ) ^ (A000040 (A160338 (n + 1)).toNat : ℤ)

end

end A130448.P11477760426273357299

/-! ## A130448.P12324573190007582031

`A131599(n+1)^A020639(A317440(n+1))`
-/

namespace A130448.P12324573190007582031
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A131599 (n + 1) : ℚ) ^ (A020639 (A317440 (n + 1)).toNat : ℤ)

end

end A130448.P12324573190007582031

/-! ## A130448.P13789477920011628769

`A131599(n+1)*A131599(A317440(n+1)/2)`
-/

namespace A130448.P13789477920011628769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131599 (n + 1) * A131599 (SequenceMachineLib.roundAway ((A317440 (n + 1) : ℚ) / 2)).toNat

end

end A130448.P13789477920011628769

/-!
# A130449: a(0) = 1; a(n) = 4^(n+1)*a(n-1)+1.

The programs for A130449, the canonical program `A130449.P11287356539137888256` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A130449 has offset 0).

The definition of A130449 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4^(n+1)*a(n-1)+1` (program `A130449.P11287356539137888256`, by `A130449.P11287356539137888256.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A130449.P13521460332021815862

`1+4^(n+1)*a(n-1)` with `a(0)=1`
-/

namespace A130449.P13521460332021815862
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  1 + 4 ^ (n + 1) * a (n - 1)

end

end A130449.P13521460332021815862

namespace A130449

/-- `1+4^(n+1)*a(n-1)` -/
def P13521460332021815862.Spec : Prop :=
  ∀ n, (P13521460332021815862.a n : ℤ) = A130449 n

theorem P13521460332021815862.correct : P13521460332021815862.Spec := by
  intro n
  simp only [A130449, Nat.add_sub_cancel, A130449.P13521460332021815862.a, A130449.P11287356539137888256.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A130449

/-! ## A130449.P11287356539137888256

`4^(n+1)*a(n-1)+1` with `a(0)=1`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A130449

/-- `4^(n+1)*a(n-1)+1` -/
def P11287356539137888256.Spec : Prop :=
  ∀ n, (P11287356539137888256.a n : ℤ) = A130449 n

theorem P11287356539137888256.correct : P11287356539137888256.Spec := by
  intro n
  simp only [A130449]

end A130449

/-! ## A130449.P4558786771906471198

`lcm(4^(n+1), a(n-1))+1` with `a(0)=1`
-/

namespace A130449.P4558786771906471198
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.lcm (4 ^ (n + 1)) (a (n - 1)) + 1

end

end A130449.P4558786771906471198

namespace A130449

/-- `lcm(4^(n+1), a(n-1))+1` -/
def P4558786771906471198.Spec : Prop :=
  ∀ n, (P4558786771906471198.a n : ℤ) = A130449 n

end A130449

/-! ## A130449.P2618814031338835461

`a(n-1)/(1/4)^(n+1)+1` with `a(0)=1`
-/

namespace A130449.P2618814031338835461
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) / ((1 : ℚ) / 4) ^ (n + 1) + 1

end

end A130449.P2618814031338835461

namespace A130449

/-- `a(n-1)/(1/4)^(n+1)+1` -/
def P2618814031338835461.Spec : Prop :=
  ∀ n, P2618814031338835461.a n = (A130449 n : ℚ)

end A130449

/-! ## A130449.P109416370699559455

`a(n-1)*A000302(n+1)+1` with `a(0)=1`
-/

namespace A130449.P109416370699559455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A000302 (n + 1) + 1

end

end A130449.P109416370699559455

namespace A130449

/-- `a(n-1)*A000302(n+1)+1` -/
def P109416370699559455.Spec : Prop :=
  ∀ n, P109416370699559455.a n = A130449 n

end A130449

/-!
# A130451: Number of divisors of A123193(n).

The programs for A130451, there is no canonical definition to state claims against.
-/

/-! ## A130451.P8013903395916709067

`A000005(A123193(n+1))`
-/

namespace A130451.P8013903395916709067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A123193 (n + 1)).toNat

end

end A130451.P8013903395916709067

/-! ## A130451.P17987452987110974207

`A183063(2*A123193(n+1))`
-/

namespace A130451.P17987452987110974207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183063 (2 * A123193 (n + 1)).toNat

end

end A130451.P17987452987110974207

/-! ## A130451.P13733468018108185116

`A320111(2*A123193(n+1))`
-/

namespace A130451.P13733468018108185116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320111 (2 * A123193 (n + 1)).toNat

end

end A130451.P13733468018108185116

/-! ## A130451.P14323877312890690720

`A330348(10*A123193(n+1))`
-/

namespace A130451.P14323877312890690720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330348 (10 * A123193 (n + 1)).toNat

end

end A130451.P14323877312890690720

/-! ## A130451.P17764853322572720922

`filter[A000005(n+1), A007895(#)]`
-/

namespace A130451.P17764853322572720922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A007895 (f1 j).toNat = 1) n)

end

end A130451.P17764853322572720922

/-! ## A130451.P18347603594907603902

`filter[A000005(n+1), A010056(#)]`
-/

namespace A130451.P18347603594907603902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010056 (f1 j).toNat = 1) n)

end

end A130451.P18347603594907603902

/-! ## A130451.P16095333894188787432

`filter[A122667(n+1), A010056(#)]`
-/

namespace A130451.P16095333894188787432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122667 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010056 (f1 j).toNat = 1) n)

end

end A130451.P16095333894188787432

/-! ## A130451.P16541451034800047568

`filter[A122668(n+1), A010056(#)]`
-/

namespace A130451.P16541451034800047568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122668 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010056 (f1 j).toNat = 1) n)

end

end A130451.P16541451034800047568

/-! ## A130451.P15794630771323923538

`filter[A130285(n+1), A010055(#)]`
-/

namespace A130451.P15794630771323923538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130285 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010055 (f1 j).toNat = 1) n)

end

end A130451.P15794630771323923538

/-! ## A130451.P8134244915626423199

`filter[A130285(n+1), A010056(#)]`
-/

namespace A130451.P8134244915626423199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130285 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010056 (f1 j).toNat = 1) n)

end

end A130451.P8134244915626423199

/-!
# A130452: Triangle read by rows: A097806 * A130321 as infinite lower triangular matrices.

The programs for A130452, the canonical program `A130452.P14201382947744191628` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A130452 has offset 1).

The definition of A130452 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A130452.P10254166674544102728

`or(2*T(n-1,k), T(n-1,k-1))` with `a(0)=1, a(1)=3`
-/

namespace A130452.P10254166674544102728
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n a =>
  Nat.lor (2 * SequenceMachineLib.triUp a n) (SequenceMachineLib.triUpLeft a n)

end

end A130452.P10254166674544102728

namespace A130452

/-- `or(2*T(n-1,k), T(n-1,k-1))` -/
def P10254166674544102728.Spec : Prop :=
  ∀ n, (P10254166674544102728.a n : ℤ) = A130452 (n + 1)

end A130452

/-! ## A130452.P12659299589855323701

`T(n-1,k-1)+2*(T(n-1,k)-T(n-2,k-1))` with `a(0)=1, a(1)=3`
-/

namespace A130452.P12659299589855323701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  SequenceMachineLib.triUpLeft a n + 2 * (SequenceMachineLib.triUp a n - SequenceMachineLib.triUp2Left a n)

end

end A130452.P12659299589855323701

namespace A130452

/-- `T(n-1,k-1)+2*(T(n-1,k)-T(n-2,k-1))` -/
def P12659299589855323701.Spec : Prop :=
  ∀ n, P12659299589855323701.a n = A130452 (n + 1)

end A130452

/-! ## A130452.P14672224928223287748

`T(T(n-1,k+1), 2*T(n-1,k+1))+2*T(n-1,k)` with `a(0)=1`
-/

namespace A130452.P14672224928223287748
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.triAt a ((SequenceMachineLib.triUpRight a n : ℕ) : ℤ) (2 * SequenceMachineLib.triUpRight a n : ℤ) + 2 * SequenceMachineLib.triUp a n

end

end A130452.P14672224928223287748

namespace A130452

/-- `T(T(n-1,k+1), 2*T(n-1,k+1))+2*T(n-1,k)` -/
def P14672224928223287748.Spec : Prop :=
  ∀ n, (P14672224928223287748.a n : ℤ) = A130452 (n + 1)

end A130452

/-! ## A130452.P11307945446603334176

`floor((2^(C(comp[∑[n]]-n, 2)-n)-1)/(2-2/3))+1`
-/

namespace A130452.P11307945446603334176
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((2 : ℚ) ^ ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ) : ℤ) - 1) / (2 - (2 : ℚ) / 3)⌋ + 1

end

end A130452.P11307945446603334176

namespace A130452

/-- `floor((2^(C(comp[∑[n]]-n, 2)-n)-1)/(2-2/3))+1` -/
def P11307945446603334176.Spec : Prop :=
  ∀ n, P11307945446603334176.a n = A130452 (n + 1)

end A130452

/-! ## A130452.P14062868146859325130

`A003945(row(n)-col(n))`
-/

namespace A130452.P14062868146859325130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003945 (SequenceMachineLib.triRow n - SequenceMachineLib.triCol n)

end

end A130452.P14062868146859325130

namespace A130452

/-- `A003945(row(n)-col(n))` -/
def P14062868146859325130.Spec : Prop :=
  ∀ n, P14062868146859325130.a n = A130452 (n + 1)

end A130452

/-! ## A130452.P14201382947744191628

`floor(3*A130321(n)/2)`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A130452

/-- `floor(3*A130321(n)/2)` -/
def P14201382947744191628.Spec : Prop :=
  ∀ n, P14201382947744191628.a n = A130452 (n + 1)

theorem P14201382947744191628.correct : P14201382947744191628.Spec := by
  intro n
  simp only [A130452, Nat.add_sub_cancel]

end A130452

/-! ## A130452.P17039322603140956654

`A122391(row(n)-col(n)+2)`
-/

namespace A130452.P17039322603140956654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122391 ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) + 2).toNat

end

end A130452.P17039322603140956654

namespace A130452

/-- `A122391(row(n)-col(n)+2)` -/
def P17039322603140956654.Spec : Prop :=
  ∀ n, P17039322603140956654.a n = A130452 (n + 1)

end A130452

/-! ## A130452.P9983557375944597669

`A003945(C(comp[∑[n]]-n, 2)-(n+1))`
-/

namespace A130452.P9983557375944597669
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003945 (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 - (n + 1))

end

end A130452.P9983557375944597669

namespace A130452

/-- `A003945(C(comp[∑[n]]-n, 2)-(n+1))` -/
def P9983557375944597669.Spec : Prop :=
  ∀ n, P9983557375944597669.a n = A130452 (n + 1)

end A130452

/-! ## A130452.P2881957513377080711

`A003945(C(comp[∑[n]]-n, 2)-n-1)`
-/

namespace A130452.P2881957513377080711
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003945 ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ) - 1).toNat

end

end A130452.P2881957513377080711

namespace A130452

/-- `A003945(C(comp[∑[n]]-n, 2)-n-1)` -/
def P2881957513377080711.Spec : Prop :=
  ∀ n, P2881957513377080711.a n = A130452 (n + 1)

end A130452

/-! ## A130452.P6396199169439502541

`A055010(C(comp[∑[n]]-n, 2)-(n+1))+1`
-/

namespace A130452.P6396199169439502541
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055010 (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 - (n + 1)) + 1

end

end A130452.P6396199169439502541

namespace A130452

/-- `A055010(C(comp[∑[n]]-n, 2)-(n+1))+1` -/
def P6396199169439502541.Spec : Prop :=
  ∀ n, P6396199169439502541.a n = A130452 (n + 1)

end A130452

/-! ## A130452.P7214756915850356577

`A074323(2*(C(comp[∑[n]]-n, 2)-(n+1)))`
-/

namespace A130452.P7214756915850356577
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074323 (2 * ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n + 1 : ℤ))).toNat

end

end A130452.P7214756915850356577

namespace A130452

/-- `A074323(2*(C(comp[∑[n]]-n, 2)-(n+1)))` -/
def P7214756915850356577.Spec : Prop :=
  ∀ n, P7214756915850356577.a n = A130452 (n + 1)

end A130452

/-! ## A130452.P13533844805907670515

`A003945(A025581(n))`
-/

namespace A130452.P13533844805907670515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003945 (A025581 n).toNat

end

end A130452.P13533844805907670515

namespace A130452

/-- `A003945(A025581(n))` -/
def P13533844805907670515.Spec : Prop :=
  ∀ n, P13533844805907670515.a n = A130452 (n + 1)

end A130452

/-! ## A130452.P12482039583773693203

`A029744(A099375(n))`
-/

namespace A130452.P12482039583773693203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029744 (A099375 n).toNat

end

end A130452.P12482039583773693203

namespace A130452

/-- `A029744(A099375(n))` -/
def P12482039583773693203.Spec : Prop :=
  ∀ n, P12482039583773693203.a n = A130452 (n + 1)

end A130452

/-! ## A130452.P9573371360321704027

`A207630(A128177(n+1))`
-/

namespace A130452.P9573371360321704027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207630 (A128177 (n + 1)).toNat

end

end A130452.P9573371360321704027

namespace A130452

/-- `A207630(A128177(n+1))` -/
def P9573371360321704027.Spec : Prop :=
  ∀ n, P9573371360321704027.a n = A130452 (n + 1)

end A130452

/-! ## A130452.P12629888917122531337

`A271709(n)-Δ[A271709(n)]`
-/

namespace A130452.P12629888917122531337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271709 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271709 n - (f1 (n + 1) - f1 n)

end

end A130452.P12629888917122531337

namespace A130452

/-- `A271709(n)-Δ[A271709(n)]` -/
def P12629888917122531337.Spec : Prop :=
  ∀ n, P12629888917122531337.a n = A130452 (n + 1)

end A130452

/-! ## A130452.P18157520202905162299

`A003945(A004736(n+1)-1)`
-/

namespace A130452.P18157520202905162299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003945 (A004736 (n + 1) - 1).toNat

end

end A130452.P18157520202905162299

namespace A130452

/-- `A003945(A004736(n+1)-1)` -/
def P18157520202905162299.Spec : Prop :=
  ∀ n, P18157520202905162299.a n = A130452 (n + 1)

end A130452

/-! ## A130452.P7870908712951591818

`A264802(n+1)-A143038(n)`
-/

namespace A130452.P7870908712951591818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264802 (n + 1) - A143038 n

end

end A130452.P7870908712951591818

namespace A130452

/-- `A264802(n+1)-A143038(n)` -/
def P7870908712951591818.Spec : Prop :=
  ∀ n, P7870908712951591818.a n = A130452 (n + 1)

end A130452

/-! ## A130452.P17259312121958551260

`xor(A089633(n+1), A089633(n))`
-/

namespace A130452.P17259312121958551260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A089633 (n + 1)) (A089633 n)

end

end A130452.P17259312121958551260

namespace A130452

/-- `xor(A089633(n+1), A089633(n))` -/
def P17259312121958551260.Spec : Prop :=
  ∀ n, P17259312121958551260.a n = A130452 (n + 1)

end A130452

/-! ## A130452.P8104373227893406309

`A090988(n+1)-A155038(n+1)`
-/

namespace A130452.P8104373227893406309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090988 (n + 1) - A155038 (n + 1)

end

end A130452.P8104373227893406309

namespace A130452

/-- `A090988(n+1)-A155038(n+1)` -/
def P8104373227893406309.Spec : Prop :=
  ∀ n, P8104373227893406309.a n = A130452 (n + 1)

end A130452

/-! ## A130452.P7945619374111066343

`(2-A154990(n+1))*A155038(n+1)`
-/

namespace A130452.P7945619374111066343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A154990 (n + 1)) * A155038 (n + 1)

end

end A130452.P7945619374111066343

namespace A130452

/-- `(2-A154990(n+1))*A155038(n+1)` -/
def P7945619374111066343.Spec : Prop :=
  ∀ n, P7945619374111066343.a n = A130452 (n + 1)

end A130452

/-!
# A130453: A097806 * A059268.

The programs for A130453, the canonical program `A130453.P9741272434723814228` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A130453 has offset 1).

The definition of A130453 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A130453.P7105650443527156354

`2*(char[∑[n]]+T(n-1,k-1))` with `a(0)=1`
-/

namespace A130453.P7105650443527156354
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  2 * ((if ∃ j, f1 j = n then 1 else 0) + SequenceMachineLib.triUpLeft a n)

end

end A130453.P7105650443527156354

namespace A130453

/-- `2*(char[∑[n]]+T(n-1,k-1))` -/
def P7105650443527156354.Spec : Prop :=
  ∀ n, (P7105650443527156354.a n : ℤ) = A130453 (n + 1)

end A130453

/-! ## A130453.P1056557528461046147

`T(n-1,k)+2*(T(n-1,k-1)-T(n-2,k-1))` with `a(0)=1, a(1)=2`
-/

namespace A130453.P1056557528461046147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  SequenceMachineLib.triUp a n + 2 * (SequenceMachineLib.triUpLeft a n - SequenceMachineLib.triUp2Left a n)

end

end A130453.P1056557528461046147

namespace A130453

/-- `T(n-1,k)+2*(T(n-1,k-1)-T(n-2,k-1))` -/
def P1056557528461046147.Spec : Prop :=
  ∀ n, P1056557528461046147.a n = A130453 (n + 1)

end A130453

/-! ## A130453.P10046450201356954457

`T(n-1,k)-2*(T(n-2,k-1)-T(n-1,k-1))` with `a(0)=1, a(1)=2`
-/

namespace A130453.P10046450201356954457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  SequenceMachineLib.triUp a n - 2 * (SequenceMachineLib.triUp2Left a n - SequenceMachineLib.triUpLeft a n)

end

end A130453.P10046450201356954457

namespace A130453

/-- `T(n-1,k)-2*(T(n-2,k-1)-T(n-1,k-1))` -/
def P10046450201356954457.Spec : Prop :=
  ∀ n, P10046450201356954457.a n = A130453 (n + 1)

end A130453

/-! ## A130453.P5352264620694847292

`T(1, T(n-1,k-1))+2*T(n-1,k-1)` with `a(0)=1, a(1)=2, a(2)=2`
-/

namespace A130453.P5352264620694847292
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 2] fun n a =>
  SequenceMachineLib.triAt a 1 ((SequenceMachineLib.triUpLeft a n : ℕ) : ℤ) + 2 * SequenceMachineLib.triUpLeft a n

end

end A130453.P5352264620694847292

namespace A130453

/-- `T(1, T(n-1,k-1))+2*T(n-1,k-1)` -/
def P5352264620694847292.Spec : Prop :=
  ∀ n, (P5352264620694847292.a n : ℤ) = A130453 (n + 1)

end A130453

/-! ## A130453.P10510833315877506709

`T(col(n), row(n)-1)+T(n-1,k)` with `a(0)=1`
-/

namespace A130453.P10510833315877506709
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.triAt a (SequenceMachineLib.triCol n : ℤ) ((SequenceMachineLib.triRow n : ℤ) - 1) + SequenceMachineLib.triUp a n

end

end A130453.P10510833315877506709

namespace A130453

/-- `T(col(n), row(n)-1)+T(n-1,k)` -/
def P10510833315877506709.Spec : Prop :=
  ∀ n, (P10510833315877506709.a n : ℤ) = A130453 (n + 1)

end A130453

/-! ## A130453.P7911286506061263832

`gcd(2^row(n), 2^(col(n)+1))`
-/

namespace A130453.P7911286506061263832
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (2 ^ SequenceMachineLib.triRow n) (2 ^ (SequenceMachineLib.triCol n + 1))

end

end A130453.P7911286506061263832

namespace A130453

/-- `gcd(2^row(n), 2^(col(n)+1))` -/
def P7911286506061263832.Spec : Prop :=
  ∀ n, (P7911286506061263832.a n : ℤ) = A130453 (n + 1)

end A130453

/-! ## A130453.P6266419951080518279

`2^(col(n)+1-C(col(n), row(n)))`
-/

namespace A130453.P6266419951080518279
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((SequenceMachineLib.triCol n + 1 : ℤ) - (Nat.choose (SequenceMachineLib.triCol n) (SequenceMachineLib.triRow n) : ℤ) : ℤ)

end

end A130453.P6266419951080518279

namespace A130453

/-- `2^(col(n)+1-C(col(n), row(n)))` -/
def P6266419951080518279.Spec : Prop :=
  ∀ n, P6266419951080518279.a n = (A130453 (n + 1) : ℚ)

end A130453

/-! ## A130453.P10635092867465591940

`2*2^(col(n)-C(col(n), row(n)))`
-/

namespace A130453.P10635092867465591940
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * (2 : ℚ) ^ ((SequenceMachineLib.triCol n : ℤ) - (Nat.choose (SequenceMachineLib.triCol n) (SequenceMachineLib.triRow n) : ℤ) : ℤ)

end

end A130453.P10635092867465591940

namespace A130453

/-- `2*2^(col(n)-C(col(n), row(n)))` -/
def P10635092867465591940.Spec : Prop :=
  ∀ n, P10635092867465591940.a n = (A130453 (n + 1) : ℚ)

end A130453

/-! ## A130453.P72986253372165199

`T(col(n), col(n)-(T(n-1,k+1)+1))+T(n-1,k)` with `a(0)=1, a(1)=2`
-/

namespace A130453.P72986253372165199
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  SequenceMachineLib.triAt a (SequenceMachineLib.triCol n : ℤ) ((SequenceMachineLib.triCol n : ℤ) - (SequenceMachineLib.triUpRight a n + 1 : ℤ)) + SequenceMachineLib.triUp a n

end

end A130453.P72986253372165199

namespace A130453

/-- `T(col(n), col(n)-(T(n-1,k+1)+1))+T(n-1,k)` -/
def P72986253372165199.Spec : Prop :=
  ∀ n, (P72986253372165199.a n : ℤ) = A130453 (n + 1)

end A130453

/-! ## A130453.P4850119552241928067

`T(n-1,k)-(T(n-1,k+1)-1)*T(col(n), row(n)-1)` with `a(0)=1`
-/

namespace A130453.P4850119552241928067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.triUp a n - (SequenceMachineLib.triUpRight a n - 1) * SequenceMachineLib.triAt a (SequenceMachineLib.triCol n : ℤ) ((SequenceMachineLib.triRow n : ℤ) - 1)

end

end A130453.P4850119552241928067

namespace A130453

/-- `T(n-1,k)-(T(n-1,k+1)-1)*T(col(n), row(n)-1)` -/
def P4850119552241928067.Spec : Prop :=
  ∀ n, P4850119552241928067.a n = A130453 (n + 1)

end A130453

/-! ## A130453.P16840200420474401342

`2*T(col(n), col(n)-T(1, T(n-1,k)))` with `a(0)=1, a(1)=2, a(2)=2`
-/

namespace A130453.P16840200420474401342
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 2] fun n a =>
  2 * SequenceMachineLib.triAt a (SequenceMachineLib.triCol n : ℤ) ((SequenceMachineLib.triCol n : ℤ) - ((SequenceMachineLib.triAt a 1 ((SequenceMachineLib.triUp a n : ℕ) : ℤ) : ℕ) : ℤ))

end

end A130453.P16840200420474401342

namespace A130453

/-- `2*T(col(n), col(n)-T(1, T(n-1,k)))` -/
def P16840200420474401342.Spec : Prop :=
  ∀ n, (P16840200420474401342.a n : ℤ) = A130453 (n + 1)

end A130453

/-! ## A130453.P7376247876359545631

`T(n-2,k)-2*(T(row(n)-3, col(n)-1)-T(n-1,k-1))` with `a(0)=1, a(1)=2, a(2)=2, a(3)=2`
-/

namespace A130453.P7376247876359545631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 2, 2] fun n a =>
  SequenceMachineLib.triUp2 a n - 2 * (SequenceMachineLib.triAt a ((SequenceMachineLib.triRow n : ℤ) - 3) ((SequenceMachineLib.triCol n : ℤ) - 1) - SequenceMachineLib.triUpLeft a n)

end

end A130453.P7376247876359545631

namespace A130453

/-- `T(n-2,k)-2*(T(row(n)-3, col(n)-1)-T(n-1,k-1))` -/
def P7376247876359545631.Spec : Prop :=
  ∀ n, P7376247876359545631.a n = A130453 (n + 1)

end A130453

/-! ## A130453.P16897371665429278297

`abs((3*char[∑[n-1]]-2)*2^(n-C(∑[char[∑[n]]], 2)))`
-/

namespace A130453.P16897371665429278297
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

open Classical in
def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f4 j = n then 1 else 0

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(((3 * (if ∃ j, f1 j = (n : ℤ) then 1 else 0) : ℕ) : ℤ) - 2 : ℚ) * (2 : ℚ) ^ ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f3 j) 2 : ℤ) : ℤ)|

end

end A130453.P16897371665429278297

namespace A130453

/-- `abs((3*char[∑[n-1]]-2)*2^(n-C(∑[char[∑[n]]], 2)))` -/
def P16897371665429278297.Spec : Prop :=
  ∀ n, P16897371665429278297.a n = (A130453 (n + 1) : ℚ)

end A130453

/-! ## A130453.P7026067457724415828

`2^(A128219(n+1)-1)`
-/

namespace A130453.P7026067457724415828
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A128219 (n + 1) - 1 : ℤ)

end

end A130453.P7026067457724415828

namespace A130453

/-- `2^(A128219(n+1)-1)` -/
def P7026067457724415828.Spec : Prop :=
  ∀ n, P7026067457724415828.a n = (A130453 (n + 1) : ℚ)

end A130453

/-! ## A130453.P8839099447891516477

`A059268(char[comp[∑[n-1]]]+n)`
-/

namespace A130453.P8839099447891516477
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 ((if ∃ j, f1 j = n then 1 else 0) + n)

end

end A130453.P8839099447891516477

namespace A130453

/-- `A059268(char[comp[∑[n-1]]]+n)` -/
def P8839099447891516477.Spec : Prop :=
  ∀ n, P8839099447891516477.a n = A130453 (n + 1)

end A130453

/-! ## A130453.P9741272434723814228

`A011782(A128219(n+1))`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A130453

/-- `A011782(A128219(n+1))` -/
def P9741272434723814228.Spec : Prop :=
  ∀ n, P9741272434723814228.a n = A130453 (n + 1)

theorem P9741272434723814228.correct : P9741272434723814228.Spec := by
  intro n
  simp only [A130453, Nat.add_sub_cancel]

end A130453

/-! ## A130453.P306541208440899844

`A038208(n)/A119468(n)`
-/

namespace A130453.P306541208440899844
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038208 n : ℚ) / (A119468 n : ℚ)

end

end A130453.P306541208440899844

namespace A130453

/-- `A038208(n)/A119468(n)` -/
def P306541208440899844.Spec : Prop :=
  ∀ n, P306541208440899844.a n = (A130453 (n + 1) : ℚ)

end A130453

/-! ## A130453.P1391117118888113783

`A112336(n)/A106268(n)`
-/

namespace A130453.P1391117118888113783
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112336 n : ℚ) / (A106268 n : ℚ)

end

end A130453.P1391117118888113783

namespace A130453

/-- `A112336(n)/A106268(n)` -/
def P1391117118888113783.Spec : Prop :=
  ∀ n, P1391117118888113783.a n = (A130453 (n + 1) : ℚ)

end A130453

/-! ## A130453.P9468715207881949976

`A059268(n)*A238303(n+1)`
-/

namespace A130453.P9468715207881949976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n * A238303 (n + 1)

end

end A130453.P9468715207881949976

namespace A130453

/-- `A059268(n)*A238303(n+1)` -/
def P9468715207881949976.Spec : Prop :=
  ∀ n, P9468715207881949976.a n = A130453 (n + 1)

end A130453

/-! ## A130453.P15344641247855409865

`A137688(n)/A155038(n+1)`
-/

namespace A130453.P15344641247855409865
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A137688 n : ℚ) / (A155038 (n + 1) : ℚ)

end

end A130453.P15344641247855409865

namespace A130453

/-- `A137688(n)/A155038(n+1)` -/
def P15344641247855409865.Spec : Prop :=
  ∀ n, P15344641247855409865.a n = (A130453 (n + 1) : ℚ)

end A130453

/-!
# A130455: Final term in the rows of triangle A130454: a(n) = A130454(n,(n+1)(n+2)/2 - 1).

The programs for A130455, there is no canonical definition to state claims against.
-/

/-! ## A130455.P11331555227691256934

`A372346(n)-A217152(A268448(n+1))`
-/

namespace A130455.P11331555227691256934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372346 n - A217152 (A268448 (n + 1)).toNat

end

end A130455.P11331555227691256934

/-! ## A130455.P16725318996783293072

`A005375(A112707(2*n+1)+A007889(n))`
-/

namespace A130455.P16725318996783293072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005375 (A112707 (2 * n + 1) + A007889 n).toNat

end

end A130455.P16725318996783293072

/-!
# A130456: Triangle, read by rows of 2n+1 terms, where row n+1 is generated by taking partial sums of row n and then append a zero followed by the final term in the partial sums of row n, for n>=0, with T(0,0)=1.

The programs for A130456, there is no canonical definition to state claims against.
-/

/-! ## A130456.P2608780717656100003

`A130454(lt[A130477(n), A130478(3*n+4)])`
-/

namespace A130456.P2608780717656100003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130477 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130478 (3 * n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130454 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A130456.P2608780717656100003

/-! ## A130456.P13538885135468536536

`A130454(lt[A130424(n+1), A130468(2*n+1)])`
-/

namespace A130456.P13538885135468536536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130424 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130468 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130454 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A130456.P13538885135468536536

/-! ## A130456.P11955358820471868218

`A130454(lt[A130465(n+2), A130478(3*n+4)])`
-/

namespace A130456.P11955358820471868218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130465 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130478 (3 * n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130454 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A130456.P11955358820471868218

/-! ## A130456.P4955188962718367846

`A130454(lt[A130478(3*n+5), A130468(2*n+1)])`
-/

namespace A130456.P4955188962718367846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130478 (3 * n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130468 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130454 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A130456.P4955188962718367846

/-!
# A130458: Final term in the rows of triangle A130457: a(n) = A130457(n, 3n), for n>=0.

The programs for A130458, there is no canonical definition to state claims against.
-/

/-! ## A130458.P11072173394261888810

`A130457(∑[3*n]+n)`
-/

namespace A130458.P11072173394261888810
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130457 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A130458.P11072173394261888810

/-! ## A130458.P3443453189081787656

`A028310(record[Δ[A130457(n)]])`
-/

namespace A130458.P3443453189081787656
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130457 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A130458.P3443453189081787656

/-! ## A130458.P5934557789453228725

`record[Δ[A130457(n)]]^A001221(2*n+1)`
-/

namespace A130458.P5934557789453228725
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130457 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) ^ (A001221 (2 * n + 1) : ℤ)

end

end A130458.P5934557789453228725

/-!
# A130459: A059268 * A097806.

The programs for A130459, the canonical program `A130459.P11704629280460871813` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A130459 has offset 1).

The definition of A130459 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A130459.P13801707219023592959

`or(2*(char[∑[n]]+T(n-1,k-1)), T(n-1,k))` with `a(0)=1`
-/

namespace A130459.P13801707219023592959
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.lor (2 * ((if ∃ j, f1 j = n then 1 else 0) + SequenceMachineLib.triUpLeft a n)) (SequenceMachineLib.triUp a n)

end

end A130459.P13801707219023592959

namespace A130459

/-- `or(2*(char[∑[n]]+T(n-1,k-1)), T(n-1,k))` -/
def P13801707219023592959.Spec : Prop :=
  ∀ n, (P13801707219023592959.a n : ℤ) = A130459 (n + 1)

end A130459

/-! ## A130459.P6841450529832721376

`or(2*(char[∑[n]]+T(n-1,k-1)), 2^col(n))` with `a(0)=1`
-/

namespace A130459.P6841450529832721376
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.lor (2 * ((if ∃ j, f1 j = n then 1 else 0) + SequenceMachineLib.triUpLeft a n)) (2 ^ SequenceMachineLib.triCol n)

end

end A130459.P6841450529832721376

namespace A130459

/-- `or(2*(char[∑[n]]+T(n-1,k-1)), 2^col(n))` -/
def P6841450529832721376.Spec : Prop :=
  ∀ n, (P6841450529832721376.a n : ℤ) = A130459 (n + 1)

end A130459

/-! ## A130459.P14471970351352452811

`(3*A059268(n))%∏[char[∑[n]]+1]`
-/

namespace A130459.P14471970351352452811
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = n then 1 else 0) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (3 * A059268 n) ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A130459.P14471970351352452811

namespace A130459

/-- `(3*A059268(n))%∏[char[∑[n]]+1]` -/
def P14471970351352452811.Spec : Prop :=
  ∀ n, P14471970351352452811.a n = A130459 (n + 1)

end A130459

/-! ## A130459.P2623176951678169184

`A356036(n)/A247936(n)`
-/

namespace A130459.P2623176951678169184
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A356036 n : ℚ) / (A247936 n : ℚ)

end

end A130459.P2623176951678169184

namespace A130459

/-- `A356036(n)/A247936(n)` -/
def P2623176951678169184.Spec : Prop :=
  ∀ n, P2623176951678169184.a n = (A130459 (n + 1) : ℚ)

end A130459

/-! ## A130459.P11704629280460871813

`2*A130453(n+1)-A059268(n)`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A130459

/-- `2*A130453(n+1)-A059268(n)` -/
def P11704629280460871813.Spec : Prop :=
  ∀ n, P11704629280460871813.a n = A130459 (n + 1)

theorem P11704629280460871813.correct : P11704629280460871813.Spec := by
  intro n
  simp only [A130459, Nat.add_sub_cancel]

end A130459

/-! ## A130459.P16591987293944983519

`A136318(n+1)%A204985(n+1)`
-/

namespace A130459.P16591987293944983519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A136318 (n + 1)) (A204985 (n + 1))

end

end A130459.P16591987293944983519

namespace A130459

/-- `A136318(n+1)%A204985(n+1)` -/
def P16591987293944983519.Spec : Prop :=
  ∀ n, P16591987293944983519.a n = A130459 (n + 1)

end A130459

/-! ## A130459.P12173310972089049525

`A112033(A158405(n+1))%A204985(n+1)`
-/

namespace A130459.P12173310972089049525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A112033 (A158405 (n + 1)).toNat) (A204985 (n + 1))

end

end A130459.P12173310972089049525

namespace A130459

/-- `A112033(A158405(n+1))%A204985(n+1)` -/
def P12173310972089049525.Spec : Prop :=
  ∀ n, P12173310972089049525.a n = A130459 (n + 1)

end A130459

/-! ## A130459.P9918287049972121515

`A140531(n+1)+A130453(n+1)`
-/

namespace A130459.P9918287049972121515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140531 (n + 1) + A130453 (n + 1)

end

end A130459.P9918287049972121515

namespace A130459

/-- `A140531(n+1)+A130453(n+1)` -/
def P9918287049972121515.Spec : Prop :=
  ∀ n, P9918287049972121515.a n = A130459 (n + 1)

end A130459

/-! ## A130459.P15032207768955435787

`A140531(n+1)+A140531(n+1)+A059268(n)`
-/

namespace A130459.P15032207768955435787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140531 (n + 1) + (A140531 (n + 1) + A059268 n)

end

end A130459.P15032207768955435787

namespace A130459

/-- `A140531(n+1)+A140531(n+1)+A059268(n)` -/
def P15032207768955435787.Spec : Prop :=
  ∀ n, P15032207768955435787.a n = A130459 (n + 1)

end A130459

/-! ## A130459.P13760993750997027912

`A130328(n)%A130328(n+2)`
-/

namespace A130459.P13760993750997027912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A130328 n) (A130328 (n + 2))

end

end A130459.P13760993750997027912

namespace A130459

/-- `A130328(n)%A130328(n+2)` -/
def P13760993750997027912.Spec : Prop :=
  ∀ n, P13760993750997027912.a n = A130459 (n + 1)

end A130459

/-! ## A130459.P6212593897708932339

`gcd(A003945(n), A175840(n))`
-/

namespace A130459.P6212593897708932339
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003945 n) (A175840 n)

end

end A130459.P6212593897708932339

namespace A130459

/-- `gcd(A003945(n), A175840(n))` -/
def P6212593897708932339.Spec : Prop :=
  ∀ n, (P6212593897708932339.a n : ℤ) = A130459 (n + 1)

end A130459

/-! ## A130459.P806055493554170702

`∏{p}[A099884(n), xor(1, #)]`
-/

namespace A130459.P806055493554170702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099884 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.xor 1 p

end

end A130459.P806055493554170702

namespace A130459

/-- `∏{p}[A099884(n), xor(1, #)]` -/
def P806055493554170702.Spec : Prop :=
  ∀ n, (P806055493554170702.a n : ℤ) = A130459 (n + 1)

end A130459

/-! ## A130459.P3681900890558360656

`gcd(A002001(n), A175840(n))`
-/

namespace A130459.P3681900890558360656
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002001 n) (A175840 n)

end

end A130459.P3681900890558360656

namespace A130459

/-- `gcd(A002001(n), A175840(n))` -/
def P3681900890558360656.Spec : Prop :=
  ∀ n, (P3681900890558360656.a n : ℤ) = A130459 (n + 1)

end A130459

/-! ## A130459.P13764229588678870353

`gcd(A025635(n+1), A164346(n))`
-/

namespace A130459.P13764229588678870353
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A025635 (n + 1)) (A164346 n)

end

end A130459.P13764229588678870353

namespace A130459

/-- `gcd(A025635(n+1), A164346(n))` -/
def P13764229588678870353.Spec : Prop :=
  ∀ n, (P13764229588678870353.a n : ℤ) = A130459 (n + 1)

end A130459

/-! ## A130459.P15049992371812114826

`gcd(A164908(n)+A025635(n+1), A164908(n))`
-/

namespace A130459.P15049992371812114826
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A164908 n + A025635 (n + 1)) (A164908 n)

end

end A130459.P15049992371812114826

namespace A130459

/-- `gcd(A164908(n)+A025635(n+1), A164908(n))` -/
def P15049992371812114826.Spec : Prop :=
  ∀ n, (P15049992371812114826.a n : ℤ) = A130459 (n + 1)

end A130459

/-!
# A130460: Infinite lower triangular matrix,(1,0,0,0,...) in the main diagonal and (1,2,3,...) in the subdiagonal.

The programs for A130460, the canonical program `A130460.P15106625908008159160` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A130460 has offset 1).

The definition of A130460 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A130460.P1829121778926903612

`row(n)*T(T(n-1,k+1), row(n)-(T(n-1,k-1)+1))` with `a(0)=1`
-/

namespace A130460.P1829121778926903612
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.triRow n * SequenceMachineLib.triAt a ((SequenceMachineLib.triUpRight a n : ℕ) : ℤ) ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triUpLeft a n + 1 : ℤ))

end

end A130460.P1829121778926903612

namespace A130460

/-- `row(n)*T(T(n-1,k+1), row(n)-(T(n-1,k-1)+1))` -/
def P1829121778926903612.Spec : Prop :=
  ∀ n, (P1829121778926903612.a n : ℤ) = A130460 (n + 1)

end A130460

/-! ## A130460.P12290072124279364337

`row(n)*T(1, row(n)-(T(n-1,k-1)+1))` with `a(0)=1, a(1)=1`
-/

namespace A130460.P12290072124279364337
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  SequenceMachineLib.triRow n * SequenceMachineLib.triAt a 1 ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triUpLeft a n + 1 : ℤ))

end

end A130460.P12290072124279364337

namespace A130460

/-- `row(n)*T(1, row(n)-(T(n-1,k-1)+1))` -/
def P12290072124279364337.Spec : Prop :=
  ∀ n, (P12290072124279364337.a n : ℤ) = A130460 (n + 1)

end A130460

/-! ## A130460.P17974588556190806011

`row(n)*T(T(n-1,k+1), col(n)+1-row(n))` with `a(0)=1`
-/

namespace A130460.P17974588556190806011
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.triRow n * SequenceMachineLib.triAt a ((SequenceMachineLib.triUpRight a n : ℕ) : ℤ) ((SequenceMachineLib.triCol n + 1 : ℤ) - (SequenceMachineLib.triRow n : ℤ))

end

end A130460.P17974588556190806011

namespace A130460

/-- `row(n)*T(T(n-1,k+1), col(n)+1-row(n))` -/
def P17974588556190806011.Spec : Prop :=
  ∀ n, (P17974588556190806011.a n : ℤ) = A130460 (n + 1)

end A130460

/-! ## A130460.P17559966649854408001

`∑[char[∑[n-1]]]*char[∑[floor(atan(n)+n)]]`
-/

namespace A130460.P17559966649854408001
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f5 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.arctan (n : ℝ) + (n : ℝ)⌋

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * (if ∃ j, f4 j = (n : ℤ) then 1 else 0)

end

end A130460.P17559966649854408001

namespace A130460

/-- `∑[char[∑[n-1]]]*char[∑[floor(atan(n)+n)]]` -/
def P17559966649854408001.Spec : Prop :=
  ∀ n, (P17559966649854408001.a n : ℤ) = A130460 (n + 1)

end A130460

/-! ## A130460.P7013410253898665544

`row(n)*T(1, row(n)-(col(n)+1))` with `a(0)=1, a(1)=1`
-/

namespace A130460.P7013410253898665544
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  SequenceMachineLib.triRow n * SequenceMachineLib.triAt a 1 ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n + 1 : ℤ))

end

end A130460.P7013410253898665544

namespace A130460

/-- `row(n)*T(1, row(n)-(col(n)+1))` -/
def P7013410253898665544.Spec : Prop :=
  ∀ n, (P7013410253898665544.a n : ℤ) = A130460 (n + 1)

end A130460

/-! ## A130460.P7213678739637927208

`row(n)*T(T(n-1,k+1), 2-2*(row(n)-T(n-1,k-1)))` with `a(0)=1`
-/

namespace A130460.P7213678739637927208
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.triRow n * SequenceMachineLib.triAt a ((SequenceMachineLib.triUpRight a n : ℕ) : ℤ) (2 - 2 * ((SequenceMachineLib.triRow n : ℤ) - ((SequenceMachineLib.triUpLeft a n : ℕ) : ℤ)))

end

end A130460.P7213678739637927208

namespace A130460

/-- `row(n)*T(T(n-1,k+1), 2-2*(row(n)-T(n-1,k-1)))` -/
def P7213678739637927208.Spec : Prop :=
  ∀ n, (P7213678739637927208.a n : ℤ) = A130460 (n + 1)

end A130460

/-! ## A130460.P559693985090132822

`row(n)*T(T(n-1,k+1), 2-2*(row(n)-col(n)))` with `a(0)=1`
-/

namespace A130460.P559693985090132822
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.triRow n * SequenceMachineLib.triAt a ((SequenceMachineLib.triUpRight a n : ℕ) : ℤ) (2 - 2 * ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ)))

end

end A130460.P559693985090132822

namespace A130460

/-- `row(n)*T(T(n-1,k+1), 2-2*(row(n)-col(n)))` -/
def P559693985090132822.Spec : Prop :=
  ∀ n, (P559693985090132822.a n : ℤ) = A130460 (n + 1)

end A130460

/-! ## A130460.P5379481088743041860

`and(1-C(∑[char[∑[n]]], 2)+n, -char[∑[floor(atan(n)+n)]])`
-/

namespace A130460.P5379481088743041860
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f5 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.arctan (n : ℝ) + (n : ℝ)⌋

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (1 - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) + (n : ℤ)) (-((if ∃ j, f4 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ))

end

end A130460.P5379481088743041860

namespace A130460

/-- `and(1-C(∑[char[∑[n]]], 2)+n, -char[∑[floor(atan(n)+n)]])` -/
def P5379481088743041860.Spec : Prop :=
  ∀ n, P5379481088743041860.a n = A130460 (n + 1)

end A130460

/-! ## A130460.P10301503612815109985

`(2*T(n-1,k-1)-T(row(n)-2, col(n)-2))*(row(n)-col(n))` with `a(0)=1, a(1)=1`
-/

namespace A130460.P10301503612815109985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  (2 * SequenceMachineLib.triUpLeft a n - SequenceMachineLib.triAt a ((SequenceMachineLib.triRow n : ℤ) - 2) ((SequenceMachineLib.triCol n : ℤ) - 2)) * ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ))

end

end A130460.P10301503612815109985

namespace A130460

/-- `(2*T(n-1,k-1)-T(row(n)-2, col(n)-2))*(row(n)-col(n))` -/
def P10301503612815109985.Spec : Prop :=
  ∀ n, P10301503612815109985.a n = A130460 (n + 1)

end A130460

/-! ## A130460.P2362003317502534881

`(T(n-2,k)+(T(n-1,k+1)-T(n-1,k))*(T(n-1,k+1)-T(n-2,k-1))+1)*char[comp[row(n)+n]]*row(n)` with `a(0)=1`
-/

namespace A130460.P2362003317502534881
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triRow n + n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (SequenceMachineLib.triUp2 a n + (SequenceMachineLib.triUpRight a n - SequenceMachineLib.triUp a n) * (SequenceMachineLib.triUpRight a n - SequenceMachineLib.triUp2Left a n) + 1) * (((if ∃ j, f1 j = n then 1 else 0) * SequenceMachineLib.triRow n : ℕ) : ℤ)

end

end A130460.P2362003317502534881

namespace A130460

/-- `(T(n-2,k)+(T(n-1,k+1)-T(n-1,k))*(T(n-1,k+1)-T(n-2,k-1))+1)*char[comp[row(n)+n]]*row(n)` -/
def P2362003317502534881.Spec : Prop :=
  ∀ n, P2362003317502534881.a n = A130460 (n + 1)

end A130460

/-! ## A130460.P10208132704697912497

`A127648(n-row(n))`
-/

namespace A130460.P10208132704697912497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127648 (n - SequenceMachineLib.triRow n)

end

end A130460.P10208132704697912497

namespace A130460

/-- `A127648(n-row(n))` -/
def P10208132704697912497.Spec : Prop :=
  ∀ n, P10208132704697912497.a n = A130460 (n + 1)

end A130460

/-! ## A130460.P2148018392336185999

`val(A143038(n)+1, 2)`
-/

namespace A130460.P2148018392336185999
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A143038 n + 1).toNat 2

end

end A130460.P2148018392336185999

namespace A130460

/-- `val(A143038(n)+1, 2)` -/
def P2148018392336185999.Spec : Prop :=
  ∀ n, (P2148018392336185999.a n : ℤ) = A130460 (n + 1)

end A130460

/-! ## A130460.P12554159365843724996

`A132440(floor(acot(n)+n))`
-/

namespace A130460.P12554159365843724996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132440 ⌊SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌋.toNat

end

end A130460.P12554159365843724996

namespace A130460

/-- `A132440(floor(acot(n)+n))` -/
def P12554159365843724996.Spec : Prop :=
  ∀ n, P12554159365843724996.a n = A130460 (n + 1)

end A130460

/-! ## A130460.P10902636871969535708

`A132440(n^floor(atan(n)))`
-/

namespace A130460.P10902636871969535708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132440 (SequenceMachineLib.roundAway ((n : ℚ) ^ (⌊Real.arctan (n : ℝ)⌋ : ℤ))).toNat

end

end A130460.P10902636871969535708

namespace A130460

/-- `A132440(n^floor(atan(n)))` -/
def P10902636871969535708.Spec : Prop :=
  ∀ n, P10902636871969535708.a n = A130460 (n + 1)

end A130460

/-! ## A130460.P13250833528993415334

`A127648(C(row(n), 2)+col(n))`
-/

namespace A130460.P13250833528993415334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127648 (Nat.choose (SequenceMachineLib.triRow n) 2 + SequenceMachineLib.triCol n)

end

end A130460.P13250833528993415334

namespace A130460

/-- `A127648(C(row(n), 2)+col(n))` -/
def P13250833528993415334.Spec : Prop :=
  ∀ n, P13250833528993415334.a n = A130460 (n + 1)

end A130460

/-! ## A130460.P12464565898442008908

`A132440(A028310(n))`
-/

namespace A130460.P12464565898442008908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132440 (A028310 n).toNat

end

end A130460.P12464565898442008908

namespace A130460

/-- `A132440(A028310(n))` -/
def P12464565898442008908.Spec : Prop :=
  ∀ n, P12464565898442008908.a n = A130460 (n + 1)

end A130460

/-! ## A130460.P15106625908008159160

`A127648(A083920(n))`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A130460

/-- `A127648(A083920(n))` -/
def P15106625908008159160.Spec : Prop :=
  ∀ n, P15106625908008159160.a n = A130460 (n + 1)

theorem P15106625908008159160.correct : P15106625908008159160.Spec := by
  intro n
  simp only [A130460, Nat.add_sub_cancel]

end A130460

/-! ## A130460.P18054076393842438128

`A132440(A000007(n)+n)`
-/

namespace A130460.P18054076393842438128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132440 (A000007 n + (n : ℤ)).toNat

end

end A130460.P18054076393842438128

namespace A130460

/-- `A132440(A000007(n)+n)` -/
def P18054076393842438128.Spec : Prop :=
  ∀ n, P18054076393842438128.a n = A130460 (n + 1)

end A130460

/-! ## A130460.P16226349490335406165

`A132440(A023531(n)+n)`
-/

namespace A130460.P16226349490335406165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132440 (A023531 n + (n : ℤ)).toNat

end

end A130460.P16226349490335406165

namespace A130460

/-- `A132440(A023531(n)+n)` -/
def P16226349490335406165.Spec : Prop :=
  ∀ n, P16226349490335406165.a n = A130460 (n + 1)

end A130460

/-! ## A130460.P7407493879632477703

`A218234(n)+A129186(n)`
-/

namespace A130460.P7407493879632477703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218234 n + A129186 n

end

end A130460.P7407493879632477703

namespace A130460

/-- `A218234(n)+A129186(n)` -/
def P7407493879632477703.Spec : Prop :=
  ∀ n, P7407493879632477703.a n = A130460 (n + 1)

end A130460

/-!
# A130461: Triangle, antidiagonals of an array generated from A130460.

The programs for A130461, there is no canonical definition to state claims against.
-/

/-! ## A130461.P16934787969939740710

`gcd(A122851(n), A233543(n))`
-/

namespace A130461.P16934787969939740710
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A122851 n) (A233543 n)

end

end A130461.P16934787969939740710

/-! ## A130461.P10402874359672391591

`A028310(A026729(n))*A140356(n)`
-/

namespace A130461.P10402874359672391591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A026729 n).toNat * A140356 n

end

end A130461.P10402874359672391591

/-! ## A130461.P15664373765701815368

`lcm(A028310(A122851(n)), A140356(n))`
-/

namespace A130461.P15664373765701815368
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A028310 (A122851 n).toNat) (A140356 n)

end

end A130461.P15664373765701815368

/-! ## A130461.P16625261709268258772

`A094587(n-A004197(n))/A094587(n)`
-/

namespace A130461.P16625261709268258772
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A094587 ((n : ℤ) - A004197 n).toNat : ℚ) / (A094587 n : ℚ)

end

end A130461.P16625261709268258772

/-! ## A130461.P5054825129555642638

`A225631(A135381(n))`
-/

namespace A130461.P5054825129555642638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225631 (A135381 n).toNat

end

end A130461.P5054825129555642638

/-!
# A130462: Square array, read by antidiagonals, where row n+1 equals the partial sums of the sequence resulting from removing the terms in the first column and main diagonal from row n, for n>=0, with row 0 consisting of all 1's.

The programs for A130462, there is no canonical definition to state claims against.
-/

/-! ## A130462.P6316547948141173139

`or(A030308(A005578(n)), A094587(n))`
-/

namespace A130462.P6316547948141173139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A030308 (A005578 n).toNat) (A094587 n)

end

end A130462.P6316547948141173139

/-! ## A130462.P17444635861504877583

`or(A037908(A037926(n)), A094587(n))`
-/

namespace A130462.P17444635861504877583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A037908 (A037926 n).toNat) (A094587 n)

end

end A130462.P17444635861504877583

/-! ## A130462.P8387887386265626763

`or(A273302(n), A336358(A094587(n)))`
-/

namespace A130462.P8387887386265626763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A273302 n) (A336358 (A094587 n).toNat)

end

end A130462.P8387887386265626763

/-! ## A130462.P11893716202773306671

`or(A094587(n), A192082(A222731(2*n+3)))`
-/

namespace A130462.P11893716202773306671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A094587 n) (A192082 (A222731 (2 * n + 3)).toNat)

end

end A130462.P11893716202773306671

/-!
# A130463: First column of square array A130462.

The programs for A130463, there is no canonical definition to state claims against.
-/

/-! ## A130463.P1065891486703754129

`A130462(∑[n])`
-/

namespace A130463.P1065891486703754129
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130462 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A130463.P1065891486703754129

/-! ## A130463.P5269997716349516427

`A130462(A000217(n))+char[11]`
-/

namespace A130463.P5269997716349516427
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130462 (A000217 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A130463.P5269997716349516427

/-! ## A130463.P8886850005867978131

`A000027(A130462(C(n+1, 2)))`
-/

namespace A130463.P8886850005867978131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A130462 (Nat.choose (n + 1) 2)).toNat

end

end A130463.P8886850005867978131

/-! ## A130463.P13723115781933233081

`record[A130462(n)+A049581(n)]-n`
-/

namespace A130463.P13723115781933233081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130462 n + A049581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (n : ℤ)

end

end A130463.P13723115781933233081

/-! ## A130463.P7068684440553486545

`A130462(C(n+1, 2))%A050278(n+1)`
-/

namespace A130463.P7068684440553486545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A130462 (Nat.choose (n + 1) 2)) (A050278 (n + 1))

end

end A130463.P7068684440553486545

/-!
# A130464: Main diagonal of square array A130462.

The programs for A130464, there is no canonical definition to state claims against.
-/

/-! ## A130464.P12852001322723941288

`A130462(∑[4*n])`
-/

namespace A130464.P12852001322723941288
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130462 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A130464.P12852001322723941288

/-! ## A130464.P4857483050955780341

`record[A003982(n)*A130462(n)]`
-/

namespace A130464.P4857483050955780341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A130462 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A130464.P4857483050955780341

/-!
# A130465: Triangle where the n-th row consists of the n smallest positive integers which are coprime to the number of divisors of n.

The programs for A130465, there is no canonical definition to state claims against.
-/

/-! ## A130465.P3433989678879994611

`A265745(A094513(2*n+5)^col(n))`
-/

namespace A130465.P3433989678879994611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265745 (A094513 (2 * n + 5) ^ SequenceMachineLib.triCol n).toNat

end

end A130465.P3433989678879994611

/-! ## A130465.P4328021419842746799

`A055089(A097805(n)*A325338(3*n+4))`
-/

namespace A130465.P4328021419842746799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055089 (A097805 n * A325338 (3 * n + 4)).toNat

end

end A130465.P4328021419842746799

/-!
# A130466: Triangle where the n-th row consists of the n smallest positive integers which are coprime to the sum of divisors of n.

The programs for A130466, there is no canonical definition to state claims against.
-/

/-! ## A130466.P9228117197910135696

`A077581(comp[∑[n]])%A001395(n)`
-/

namespace A130466.P9228117197910135696
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A077581 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)) (A001395 n)

end

end A130466.P9228117197910135696

/-! ## A130466.P56508026477496551

`A077581(lt[1, ∑{d}[A058843(n+1), #]])`
-/

namespace A130466.P56508026477496551
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058843 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f3 n).natAbs, d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077581 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A130466.P56508026477496551

/-! ## A130466.P12755331997651857736

`A083106(comp[∑[n]]%A320893(2*n+1))`
-/

namespace A130466.P12755331997651857736
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083106 (Int.tmod (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) (A320893 (2 * n + 1))).toNat

end

end A130466.P12755331997651857736

/-! ## A130466.P10218810768931493397

`A083106(comp[∑[n]])%A274585(3*n+4)`
-/

namespace A130466.P10218810768931493397
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083106 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)) (A274585 (3 * n + 4))

end

end A130466.P10218810768931493397

/-!
# A130467: Primes p of the form p=a^2+b^3, such that q =A130468(n)= a^3+b^2 is prime and greater than p; p < q ; b < a.

The programs for A130467, there is no canonical definition to state claims against.
-/

/-! ## A130467.P13238213432276135079

`A336366(A049554(n+2))`
-/

namespace A130467.P13238213432276135079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336366 (A049554 (n + 2)).toNat

end

end A130467.P13238213432276135079

/-!
# A130469: Triangular array read by rows: T(j,k) = k*(j-k)! for k < j, T(j,k) = 1 for k = j; 1 <= k <= j.

The programs for A130469, there is no canonical definition to state claims against.
-/

/-! ## A130469.P2225793702117038624

`(C(comp[∑[n]]-n, 2)-(n+1))!*A128227(n)`
-/

namespace A130469.P2225793702117038624
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n + 1 : ℤ)).toNat : ℤ) * A128227 n

end

end A130469.P2225793702117038624

/-! ## A130469.P6635961594232511017

`(C(comp[∑[n]]-n, 2)-(n+1))!*A144328(n+2)`
-/

namespace A130469.P6635961594232511017
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n + 1 : ℤ)).toNat : ℤ) * A144328 (n + 2)

end

end A130469.P6635961594232511017

/-! ## A130469.P17686930423673689512

`A119502(n)*A128227(n)`
-/

namespace A130469.P17686930423673689512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119502 n * A128227 n

end

end A130469.P17686930423673689512

/-! ## A130469.P7888751356987507850

`abs(A119502(n)*A176484(n))`
-/

namespace A130469.P7888751356987507850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A119502 n * A176484 n|

end

end A130469.P7888751356987507850

/-! ## A130469.P7396220042616628690

`A025581(n)!*A128227(n)`
-/

namespace A130469.P7396220042616628690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A025581 n).toNat : ℤ) * A128227 n

end

end A130469.P7396220042616628690

/-! ## A130469.P3640317943867976019

`A119502(n)*A144328(n+2)`
-/

namespace A130469.P3640317943867976019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119502 n * A144328 (n + 2)

end

end A130469.P3640317943867976019

/-! ## A130469.P11088113193561302018

`A025660(n+1)!*A128227(n)`
-/

namespace A130469.P11088113193561302018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A025660 (n + 1)).toNat : ℤ) * A128227 n

end

end A130469.P11088113193561302018

/-! ## A130469.P3175086521211697144

`A025669(n+1)!*A128227(n)`
-/

namespace A130469.P3175086521211697144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A025669 (n + 1)).toNat : ℤ) * A128227 n

end

end A130469.P3175086521211697144

/-! ## A130469.P5377273239307578024

`A025676(n+1)!*A128227(n)`
-/

namespace A130469.P5377273239307578024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A025676 (n + 1)).toNat : ℤ) * A128227 n

end

end A130469.P5377273239307578024

/-! ## A130469.P18369903858792614788

`A177262(n+1)/ratio[A007318(n)]`
-/

namespace A130469.P18369903858792614788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A177262 (n + 1) : ℚ) / ((f1 (n + 1) : ℚ) / (f1 n : ℚ))

end

end A130469.P18369903858792614788

/-!
# A130470: Antidiagonal sums of triangular array T: T(j,k) = k*(j-k)! for k < j, T(j,k) = 1 for k = j; 1 <= k <= j.

The programs for A130470, there is no canonical definition to state claims against.
-/

/-! ## A130470.P8004629946635290649

`A130471(n)+a(n-1)` with `a(0)=1`
-/

namespace A130470.P8004629946635290649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A130471 n + a (n - 1)

end

end A130470.P8004629946635290649

/-! ## A130470.P16969116598522837368

`A341900(n)+a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A130470.P16969116598522837368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A341900 n + a (n - 2)

end

end A130470.P16969116598522837368

/-! ## A130470.P5608015297029435463

`∑[A130471(A028310(n))]+1`
-/

namespace A130470.P5608015297029435463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130471 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A130470.P5608015297029435463

/-! ## A130470.P10662690247287758769

`∑[A130471(A151935(n)+n)]+1`
-/

namespace A130470.P10662690247287758769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130471 (A151935 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A130470.P10662690247287758769

/-! ## A130470.P10085842709920506303

`∑[A130471(n+1)]+1-A130471(n+1)`
-/

namespace A130470.P10085842709920506303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130471 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A130471 (n + 1))

end

end A130470.P10085842709920506303

/-!
# A130471: First differences of antidiagonal sums of triangular array T: T(j,k) = k*(j-k)! for k < j, T(j,k) = 1 for k = j; 1 <= k <= j.

The programs for A130471, there is no canonical definition to state claims against.
-/

/-! ## A130471.P15824717827926613036

`Δ[A130470(n+1)]`
-/

namespace A130471.P15824717827926613036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130470 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A130471.P15824717827926613036

/-! ## A130471.P6471379868366200401

`A341900(n+1)-a(n-1)` with `a(0)=0`
-/

namespace A130471.P6471379868366200401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A341900 (n + 1) - a (n - 1)

end

end A130471.P6471379868366200401

/-! ## A130471.P6041686126939672256

`record[Δ[A130470(A008619(n))]]`
-/

namespace A130471.P6041686126939672256
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130470 (A008619 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A130471.P6041686126939672256

/-! ## A130471.P5200251527921621502

`record[Δ[A130470(A008620(n))]]`
-/

namespace A130471.P5200251527921621502
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130470 (A008620 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A130471.P5200251527921621502

/-! ## A130471.P18112670540562193205

`record[Δ[A130470(A065033(n))]]`
-/

namespace A130471.P18112670540562193205
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130470 (A065033 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A130471.P18112670540562193205

/-!
# A130472: A permutation of the integers: a(n) = (-1)^n * floor( (n+1)/2 ).

The programs for A130472, the canonical program `A130472.P16962009386456594766` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A130472 has offset 0).

The definition of A130472 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(-1)^n*floor((n+1)/2)` (program `A130472.P16962009386456594766`, by `A130472.P16962009386456594766.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A130472.P1667559598542264216

`ogf(-x/(1+x-x^2-x^3))`
-/

namespace A130472.P1667559598542264216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, -1] [1, 1, -1, -1] n

end

end A130472.P1667559598542264216

namespace A130472

/-- `ogf(-x/(1+x-x^2-x^3))` -/
def P1667559598542264216.Spec : Prop :=
  ∀ n, P1667559598542264216.a n = A130472 n

end A130472

/-! ## A130472.P4858377152859413423

`floor(n/2*(-1)^n)`
-/

namespace A130472.P4858377152859413423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 2 * ((-1) ^ n : ℚ)⌋

end

end A130472.P4858377152859413423

namespace A130472

/-- `floor(n/2*(-1)^n)` -/
def P4858377152859413423.Spec : Prop :=
  ∀ n, P4858377152859413423.a n = A130472 n

end A130472

/-! ## A130472.P16962009386456594766

`(-1)^n*floor((n+1)/2)`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A130472

/-- `(-1)^n*floor((n+1)/2)` -/
def P16962009386456594766.Spec : Prop :=
  ∀ n, P16962009386456594766.a n = A130472 n

theorem P16962009386456594766.correct : P16962009386456594766.Spec := by
  intro n
  simp only [A130472]

end A130472

/-! ## A130472.P14988540804455000519

`-A001057(n)`
-/

namespace A130472.P14988540804455000519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A001057 n

end

end A130472.P14988540804455000519

namespace A130472

/-- `-A001057(n)` -/
def P14988540804455000519.Spec : Prop :=
  ∀ n, P14988540804455000519.a n = A130472 n

end A130472

/-! ## A130472.P12305133919611735282

`Δ[gcd(n, ∑[n])]-1`
-/

namespace A130472.P12305133919611735282
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd n (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - 1

end

end A130472.P12305133919611735282

namespace A130472

/-- `Δ[gcd(n, ∑[n])]-1` -/
def P12305133919611735282.Spec : Prop :=
  ∀ n, P12305133919611735282.a n = A130472 n

end A130472

/-! ## A130472.P7819225848090481099

`Δ[lcm(2, n)/2]-1`
-/

namespace A130472.P7819225848090481099
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 2 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A130472.P7819225848090481099

namespace A130472

/-- `Δ[lcm(2, n)/2]-1` -/
def P7819225848090481099.Spec : Prop :=
  ∀ n, P7819225848090481099.a n = (A130472 n : ℚ)

end A130472

/-! ## A130472.P2712863645529231732

`xor(n, -(n%2))/2`
-/

namespace A130472.P2712863645529231732
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.xor (n : ℤ) (-((n % 2 : ℕ) : ℤ)) : ℚ) / 2

end

end A130472.P2712863645529231732

namespace A130472

/-- `xor(n, -(n%2))/2` -/
def P2712863645529231732.Spec : Prop :=
  ∀ n, P2712863645529231732.a n = (A130472 n : ℚ)

end A130472

/-! ## A130472.P754283194622812439

`xor(n, -and(1, n))/2`
-/

namespace A130472.P754283194622812439
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.xor (n : ℤ) (-(Nat.land 1 n : ℤ)) : ℚ) / 2

end

end A130472.P754283194622812439

namespace A130472

/-- `xor(n, -and(1, n))/2` -/
def P754283194622812439.Spec : Prop :=
  ∀ n, P754283194622812439.a n = (A130472 n : ℚ)

end A130472

/-! ## A130472.P9323038780992968890

`∑[ogf(-x/(1+2x+x^2))]`
-/

namespace A130472.P9323038780992968890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, -1] [1, 2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130472.P9323038780992968890

namespace A130472

/-- `∑[ogf(-x/(1+2x+x^2))]` -/
def P9323038780992968890.Spec : Prop :=
  ∀ n, P9323038780992968890.a n = A130472 n

end A130472

/-! ## A130472.P7366777137143364852

`∑[n]/Δ[n*and(1, n)]`
-/

namespace A130472.P7366777137143364852
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.land 1 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / ((f2 (n + 1) : ℤ) - (f2 n : ℤ) : ℚ)

end

end A130472.P7366777137143364852

namespace A130472

/-- `∑[n]/Δ[n*and(1, n)]` -/
def P7366777137143364852.Spec : Prop :=
  ∀ n, P7366777137143364852.a n = (A130472 n : ℚ)

end A130472

/-! ## A130472.P5458450823277596772

`-(a(n-1)+and(1, n))` with `a(0)=0`
-/

namespace A130472.P5458450823277596772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  -(a (n - 1) + (Nat.land 1 n : ℤ))

end

end A130472.P5458450823277596772

namespace A130472

/-- `-(a(n-1)+and(1, n))` -/
def P5458450823277596772.Spec : Prop :=
  ∀ n, P5458450823277596772.a n = A130472 n

end A130472

/-! ## A130472.P6670441057914678050

`Δ[n/gcd(2, n+2)]-1`
-/

namespace A130472.P6670441057914678050
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (Nat.gcd 2 (n + 2) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A130472.P6670441057914678050

namespace A130472

/-- `Δ[n/gcd(2, n+2)]-1` -/
def P6670441057914678050.Spec : Prop :=
  ∀ n, P6670441057914678050.a n = (A130472 n : ℚ)

end A130472

/-! ## A130472.P7627547582826179449

`a(n-2)+(-1)^n` with `a(0)=0, a(1)=-1`
-/

namespace A130472.P7627547582826179449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, -1] fun n a =>
  a (n - 2) + (-1) ^ n

end

end A130472.P7627547582826179449

namespace A130472

/-- `a(n-2)+(-1)^n` -/
def P7627547582826179449.Spec : Prop :=
  ∀ n, P7627547582826179449.a n = A130472 n

end A130472

/-! ## A130472.P17333989553812058414

`round(-(a(n-1)+1/2))` with `a(0)=0`
-/

namespace A130472.P17333989553812058414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  SequenceMachineLib.roundAway (-((a (n - 1) : ℚ) + (1 : ℚ) / 2))

end

end A130472.P17333989553812058414

namespace A130472

/-- `round(-(a(n-1)+1/2))` -/
def P17333989553812058414.Spec : Prop :=
  ∀ n, P17333989553812058414.a n = A130472 n

end A130472

/-! ## A130472.P3084808001483502656

`Δ[n-gcd(2*n, n²)]/2`
-/

namespace A130472.P3084808001483502656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (Nat.gcd (2 * n) (n ^ 2) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / 2

end

end A130472.P3084808001483502656

namespace A130472

/-- `Δ[n-gcd(2*n, n²)]/2` -/
def P3084808001483502656.Spec : Prop :=
  ∀ n, P3084808001483502656.a n = (A130472 n : ℚ)

end A130472

/-! ## A130472.P9466845709431251565

`-∑[xor(n-1, -(-1)^n)]`
-/

namespace A130472.P9466845709431251565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((n : ℤ) - 1) (-((-1) ^ n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ j ∈ Finset.range (n + 1), f1 j)

end

end A130472.P9466845709431251565

namespace A130472

/-- `-∑[xor(n-1, -(-1)^n)]` -/
def P9466845709431251565.Spec : Prop :=
  ∀ n, P9466845709431251565.a n = A130472 n

end A130472

/-! ## A130472.P1340580078088212185

`Δ[n*∑[and(1, n)]]-(n+1)`
-/

namespace A130472.P1340580078088212185
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n + 1 : ℤ)

end

end A130472.P1340580078088212185

namespace A130472

/-- `Δ[n*∑[and(1, n)]]-(n+1)` -/
def P1340580078088212185.Spec : Prop :=
  ∀ n, P1340580078088212185.a n = A130472 n

end A130472

/-! ## A130472.P374243894007654352

`∑[n]-∑[2*n*and(1, n)]`
-/

namespace A130472.P374243894007654352
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n * Nat.land 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A130472.P374243894007654352

namespace A130472

/-- `∑[n]-∑[2*n*and(1, n)]` -/
def P374243894007654352.Spec : Prop :=
  ∀ n, P374243894007654352.a n = A130472 n

end A130472

/-! ## A130472.P10162251538190400021

`xor(2*n+1, (-1)^n)/4`
-/

namespace A130472.P10162251538190400021
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.xor (2 * n + 1 : ℤ) ((-1) ^ n) : ℚ) / 4

end

end A130472.P10162251538190400021

namespace A130472

/-- `xor(2*n+1, (-1)^n)/4` -/
def P10162251538190400021.Spec : Prop :=
  ∀ n, P10162251538190400021.a n = (A130472 n : ℚ)

end A130472

/-! ## A130472.P6420576604519000589

`(n²-1)%(2*n+1)-n`
-/

namespace A130472.P6420576604519000589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n ^ 2 : ℤ) - 1) (2 * n + 1 : ℤ) - (n : ℤ)

end

end A130472.P6420576604519000589

namespace A130472

/-- `(n²-1)%(2*n+1)-n` -/
def P6420576604519000589.Spec : Prop :=
  ∀ n, P6420576604519000589.a n = A130472 n

end A130472

/-!
# A130473: Partial sums of A087172.

The programs for A130473, the canonical program `A130473.P8874890613409071827` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A130473 has offset 1).

The definition of A130473 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A130473.P8874890613409071827

`∑[A087172(1+n)]`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A130473

/-- `∑[A087172(1+n)]` -/
def P8874890613409071827.Spec : Prop :=
  ∀ n, P8874890613409071827.a n = A130473 (n + 1)

theorem P8874890613409071827.correct : P8874890613409071827.Spec := by
  intro n
  simp only [A130473, Nat.add_sub_cancel]

end A130473

/-! ## A130473.P7222884907171124102

`floor(∑[A246104(n)/ϕ])`
-/

namespace A130473.P7222884907171124102
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A246104 n : ℝ) / Real.goldenRatio

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A130473.P7222884907171124102

namespace A130473

/-- `floor(∑[A246104(n)/ϕ])` -/
def P7222884907171124102.Spec : Prop :=
  ∀ n, P7222884907171124102.a n = A130473 (n + 1)

end A130473

/-! ## A130473.P4905097169058962839

`∑[A099267(a(floor(n/ϕ)))]` with `a(0)=1`
-/

namespace A130473.P4905097169058962839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A099267 (f1 ⌊(n : ℝ) / Real.goldenRatio⌋.toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130473.P4905097169058962839

namespace A130473

/-- `∑[A099267(a(floor(n/ϕ)))]` -/
def P4905097169058962839.Spec : Prop :=
  ∀ n, P4905097169058962839.a n = A130473 (n + 1)

end A130473

/-! ## A130473.P18395753162637739433

`∑[2-A194029(n+1)+n]`
-/

namespace A130473.P18395753162637739433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A194029 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130473.P18395753162637739433

namespace A130473

/-- `∑[2-A194029(n+1)+n]` -/
def P18395753162637739433.Spec : Prop :=
  ∀ n, P18395753162637739433.a n = A130473 (n + 1)

end A130473

/-! ## A130473.P9504379098592174302

`∑[A000045(A130233(n+1))]`
-/

namespace A130473.P9504379098592174302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A130233 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130473.P9504379098592174302

namespace A130473

/-- `∑[A000045(A130233(n+1))]` -/
def P9504379098592174302.Spec : Prop :=
  ∀ n, P9504379098592174302.a n = A130473 (n + 1)

end A130473

/-! ## A130473.P16761266246218165444

`∑[A246104(n)-A130312(n+1)]`
-/

namespace A130473.P16761266246218165444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246104 n - A130312 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130473.P16761266246218165444

namespace A130473

/-- `∑[A246104(n)-A130312(n+1)]` -/
def P16761266246218165444.Spec : Prop :=
  ∀ n, P16761266246218165444.a n = A130473 (n + 1)

end A130473

/-! ## A130473.P16820308545254529876

`∑[1-A066628(n+1)+n]`
-/

namespace A130473.P16820308545254529876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A066628 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130473.P16820308545254529876

namespace A130473

/-- `∑[1-A066628(n+1)+n]` -/
def P16820308545254529876.Spec : Prop :=
  ∀ n, P16820308545254529876.a n = A130473 (n + 1)

end A130473

/-! ## A130473.P124617670840943060

`∑[A130312(A246104(n))]`
-/

namespace A130473.P124617670840943060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130312 (A246104 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130473.P124617670840943060

namespace A130473

/-- `∑[A130312(A246104(n))]` -/
def P124617670840943060.Spec : Prop :=
  ∀ n, P124617670840943060.a n = A130473 (n + 1)

end A130473

/-! ## A130473.P11123683922463012605

`∑[A026272(A246104(n)-1)]`
-/

namespace A130473.P11123683922463012605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026272 (A246104 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130473.P11123683922463012605

namespace A130473

/-- `∑[A026272(A246104(n)-1)]` -/
def P11123683922463012605.Spec : Prop :=
  ∀ n, P11123683922463012605.a n = A130473 (n + 1)

end A130473

/-! ## A130473.P12314493600053567348

`∑[A246104(A026351(n))-A246104(n)]`
-/

namespace A130473.P12314493600053567348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246104 (A026351 n).toNat - A246104 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130473.P12314493600053567348

namespace A130473

/-- `∑[A246104(A026351(n))-A246104(n)]` -/
def P12314493600053567348.Spec : Prop :=
  ∀ n, P12314493600053567348.a n = A130473 (n + 1)

end A130473

/-! ## A130473.P13567797185456203212

`∑[A035517(∑[A007895(n+1)])]`
-/

namespace A130473.P13567797185456203212
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007895 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035517 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130473.P13567797185456203212

namespace A130473

/-- `∑[A035517(∑[A007895(n+1)])]` -/
def P13567797185456203212.Spec : Prop :=
  ∀ n, P13567797185456203212.a n = A130473 (n + 1)

end A130473

/-!
# A130474: Prime numbers p of the form p=x^2+y^3 such that q =A130475(n)= abs(x^2-y^3) is prime and smaller than p.

The programs for A130474, there is no canonical definition to state claims against.
-/

/-! ## A130474.P11181745566062576849

`A110493(A345115(n+1))`
-/

namespace A130474.P11181745566062576849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110493 (A345115 (n + 1)).toNat

end

end A130474.P11181745566062576849

/-!
# A130475: Prime numbers q of the form q=abs(x^2-y^3) such that p =A130474(n)= x^2+y^3 is prime and greater than q. (Prime numbers arising from A130474).

The programs for A130475, there is no canonical definition to state claims against.
-/

/-! ## A130475.P8190861689586850652

`A160216(or(A007015(n+1), A129519(n)))`
-/

namespace A130475.P8190861689586850652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160216 (Int.lor (A007015 (n + 1)) (A129519 n)).toNat

end

end A130475.P8190861689586850652

/-!
# A130476: Row sums of triangle A130461.

The programs for A130476, there is no canonical definition to state claims against.
-/

/-! ## A130476.P7513369551320463752

`∑[A113218(A300749(n+1))]`
-/

namespace A130476.P7513369551320463752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113218 (A300749 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130476.P7513369551320463752

/-! ## A130476.P7632448991482463471

`A342513(A241727(n+1)+1)`
-/

namespace A130476.P7632448991482463471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342513 (A241727 (n + 1 + 45) + 1).toNat

end

end A130476.P7632448991482463471

/-! ## A130476.P8020610212433082761

`A026819(A301695(a(n-2)))` with `a(0)=1, a(1)=2`
-/

namespace A130476.P8020610212433082761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A026819 (A301695 (a (n - 2)).toNat).toNat

end

end A130476.P8020610212433082761

/-! ## A130476.P8113825559648333601

`A096592(n)-A025466(A273695(n))`
-/

namespace A130476.P8113825559648333601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096592 n - A025466 (A273695 n).toNat

end

end A130476.P8113825559648333601

/-! ## A130476.P10878414277405812812

`A096592(n)-A288372(A088218(n))`
-/

namespace A130476.P10878414277405812812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096592 n - A288372 (A088218 n).toNat

end

end A130476.P10878414277405812812

/-!
# A130477: T(n,k) is the number of permutations of [n] with maximum descent k, T(n,k) for n >= 0 and 0 <= k <= n, triangle read by rows.

The programs for A130477, the canonical program `A130477.P15688843570063760663` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A130477 has offset 0).

The definition of A130477 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2485 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A130477.P17631349914368383524

`T(n-1,k-1)+T(n-1,k)+(T(n-1,k-1)-T(n-2,k-1))*row(n)` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A130477.P17631349914368383524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  SequenceMachineLib.triUpLeft a n + SequenceMachineLib.triUp a n + (SequenceMachineLib.triUpLeft a n - SequenceMachineLib.triUp2Left a n) * (SequenceMachineLib.triRow n : ℤ)

end

end A130477.P17631349914368383524

namespace A130477

/-- `T(n-1,k-1)+T(n-1,k)+(T(n-1,k-1)-T(n-2,k-1))*row(n)` -/
def P17631349914368383524.Spec : Prop :=
  ∀ n, P17631349914368383524.a n = A130477 n

end A130477

/-! ## A130477.P1347241242737781596

`A092582(∑[char[∑[n]]]²-n)`
-/

namespace A130477.P1347241242737781596
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092582 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A130477.P1347241242737781596

namespace A130477

/-- `A092582(∑[char[∑[n]]]²-n)` -/
def P1347241242737781596.Spec : Prop :=
  ∀ n, P1347241242737781596.a n = A130477 n

end A130477

/-! ## A130477.P15688843570063760663

`and(-1, A092582(A038722(n+1)))`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A130477

/-- `and(-1, A092582(A038722(n+1)))` -/
def P15688843570063760663.Spec : Prop :=
  ∀ n, P15688843570063760663.a n = A130477 n

theorem P15688843570063760663.correct : P15688843570063760663.Spec := by
  intro n
  simp only [A130477]

end A130477

/-! ## A130477.P15381004686180748874

`A092582(A038722(n+1))^A035214(n)`
-/

namespace A130477.P15381004686180748874
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A092582 (A038722 (n + 1)).toNat : ℚ) ^ (A035214 n : ℤ)

end

end A130477.P15381004686180748874

namespace A130477

/-- `A092582(A038722(n+1))^A035214(n)` -/
def P15381004686180748874.Spec : Prop :=
  ∀ n, P15381004686180748874.a n = (A130477 n : ℚ)

end A130477

/-! ## A130477.P2935056208738549480

`gcd(A000038(n), A092582(A038722(n+1)))`
-/

namespace A130477.P2935056208738549480
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A092582 (A038722 (n + 1)).toNat)

end

end A130477.P2935056208738549480

namespace A130477

/-- `gcd(A000038(n), A092582(A038722(n+1)))` -/
def P2935056208738549480.Spec : Prop :=
  ∀ n, (P2935056208738549480.a n : ℤ) = A130477 n

end A130477

/-! ## A130477.P5504903281113869924

`lcm(A092582(A038722(n+1)), A193592(n))`
-/

namespace A130477.P5504903281113869924
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A092582 (A038722 (n + 1)).toNat) (A193592 n)

end

end A130477.P5504903281113869924

namespace A130477

/-- `lcm(A092582(A038722(n+1)), A193592(n))` -/
def P5504903281113869924.Spec : Prop :=
  ∀ n, (P5504903281113869924.a n : ℤ) = A130477 n

end A130477

/-! ## A130477.P1986700676875684226

`or(A000007(n), A092582(A038722(n+1)))`
-/

namespace A130477.P1986700676875684226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A092582 (A038722 (n + 1)).toNat)

end

end A130477.P1986700676875684226

namespace A130477

/-- `or(A000007(n), A092582(A038722(n+1)))` -/
def P1986700676875684226.Spec : Prop :=
  ∀ n, P1986700676875684226.a n = A130477 n

end A130477

/-! ## A130477.P2599406429895641706

`A092582(A038722(n+1))+A008683(4*(n+1))`
-/

namespace A130477.P2599406429895641706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092582 (A038722 (n + 1)).toNat + A008683 (4 * (n + 1))

end

end A130477.P2599406429895641706

namespace A130477

/-- `A092582(A038722(n+1))+A008683(4*(n+1))` -/
def P2599406429895641706.Spec : Prop :=
  ∀ n, P2599406429895641706.a n = A130477 n

end A130477

/-! ## A130477.P11892934041854068908

`(C(comp[∑[n]]-n, 2)-n)*(n-C(∑[char[∑[n]]], 2))!*C(∑[char[∑[n]]], n-C(∑[char[∑[n]]], 2))/A193739(comp[∑[n-1]])`
-/

namespace A130477.P11892934041854068908
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

open Classical in
def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f4 j = n then 1 else 0

def f8 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f7 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f8 j

open Classical in
def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f7 j = n then 1 else 0

def f11 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f10 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f11 j

open Classical in
def f9 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f10 j = n then 1 else 0

def f13 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f12 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f13 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ)) * (Nat.factorial ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f3 j) 2 : ℤ)).toNat : ℤ) * (Nat.choose (∑ j ∈ Finset.range (n + 1), f6 j) ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f9 j) 2 : ℤ)).toNat : ℤ) : ℚ) / (A193739 (SequenceMachineLib.nth (fun x => ∀ j, f12 j ≠ (x : ℤ)) n) : ℚ)

end

end A130477.P11892934041854068908

namespace A130477

/-- `(C(comp[∑[n]]-n, 2)-n)*(n-C(∑[char[∑[n]]], 2))!*C(∑[char[∑[n]]], n-C(∑[char[∑[n]]], 2))/A193739(comp[∑[n-1]])` -/
def P11892934041854068908.Spec : Prop :=
  ∀ n, P11892934041854068908.a n = (A130477 n : ℚ)

end A130477

/-! ## A130477.P15957928682568461763

`A130493(n+1)/A130478(n+1)`
-/

namespace A130477.P15957928682568461763
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A130493 (n + 1) : ℚ) / (A130478 (n + 1) : ℚ)

end

end A130477.P15957928682568461763

namespace A130477

/-- `A130493(n+1)/A130478(n+1)` -/
def P15957928682568461763.Spec : Prop :=
  ∀ n, P15957928682568461763.a n = (A130477 n : ℚ)

end A130477

/-!
# A130478: Triangle T(n,k) = n! / A130477(n,k).

The programs for A130478, there is no canonical definition to state claims against.
-/

/-! ## A130478.P17061455444829919504

`∑[char[∑[n]]]!/A130477(n)`
-/

namespace A130478.P17061455444829919504
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / (A130477 n : ℚ)

end

end A130478.P17061455444829919504

/-! ## A130478.P16208256481293515486

`Δ[A200748(n)]/A130477(n)`
-/

namespace A130478.P16208256481293515486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200748 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (A130477 n : ℚ)

end

end A130478.P16208256481293515486

/-! ## A130478.P12340905338407143491

`A130493(n+1)/A130477(n)`
-/

namespace A130478.P12340905338407143491
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A130493 (n + 1) : ℚ) / (A130477 n : ℚ)

end

end A130478.P12340905338407143491

/-! ## A130478.P17765743255517633780

`Δ[A051683(n+1)]/A130477(n)`
-/

namespace A130478.P17765743255517633780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051683 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (A130477 n : ℚ)

end

end A130478.P17765743255517633780

/-! ## A130478.P27946652396535079

`A000142(round(sqrt(2*n+1)))/A130477(n)`
-/

namespace A130478.P27946652396535079
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 (SequenceMachineLib.roundAway (Real.sqrt (2 * n + 1 : ℝ))).toNat : ℚ) / (A130477 n : ℚ)

end

end A130478.P27946652396535079

/-! ## A130478.P6586414185437157006

`A048999(A057944(n))/A130477(n)`
-/

namespace A130478.P6586414185437157006
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048999 (A057944 n).toNat : ℚ) / (A130477 n : ℚ)

end

end A130478.P6586414185437157006

/-! ## A130478.P9802122002101357292

`A059590(A137688(n))/A130477(n)`
-/

namespace A130478.P9802122002101357292
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059590 (A137688 n).toNat : ℚ) / (A130477 n : ℚ)

end

end A130478.P9802122002101357292

/-! ## A130478.P8288006262934751150

`A112624(A140513(n))/A130477(n)`
-/

namespace A130478.P8288006262934751150
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112624 (A140513 n).toNat : ℚ) / (A130477 n : ℚ)

end

end A130478.P8288006262934751150

/-! ## A130478.P5176824833126545817

`A214078(A061885(n))/A130477(n)`
-/

namespace A130478.P5176824833126545817
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A214078 (A061885 n).toNat : ℚ) / (A130477 n : ℚ)

end

end A130478.P5176824833126545817

/-! ## A130478.P12008840225947992906

`(A200748(n+1)-A200748(n))/A130477(n)`
-/

namespace A130478.P12008840225947992906
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A200748 (n + 1) - A200748 n : ℚ) / (A130477 n : ℚ)

end

end A130478.P12008840225947992906

/-!
# A130479: a(n) = smallest positive integer such that lcm(a(0),a(1),a(2),..,a(n)) is a multiple of n!!, for all nonnegative integers n. (n!! = n(n-2)(n-4)...(2 or 1).).

The programs for A130479, there is no canonical definition to state claims against.
-/

/-! ## A130479.P16081240111773350687

`A028233(gcd(A006882(n), A008455(n)))`
-/

namespace A130479.P16081240111773350687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028233 (Int.gcd (A006882 n) (A008455 n))

end

end A130479.P16081240111773350687

/-! ## A130479.P9978167230593916672

`A034699(gcd(A000142(n), A205569(n)))`
-/

namespace A130479.P9978167230593916672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034699 (Int.gcd (A000142 n) (A205569 n))

end

end A130479.P9978167230593916672

/-! ## A130479.P15730703574550336000

`A034699(A006882(n)/A322361(n+1))`
-/

namespace A130479.P15730703574550336000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034699 (SequenceMachineLib.roundAway ((A006882 n : ℚ) / (A322361 (n + 1) : ℚ))).toNat

end

end A130479.P15730703574550336000

/-! ## A130479.P13192980088515443925

`A034699(A006882(n))%A278346(A034699(n+1))`
-/

namespace A130479.P13192980088515443925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A034699 (A006882 n).toNat) (A278346 (A034699 (n + 1)).toNat)

end

end A130479.P13192980088515443925

/-! ## A130479.P4470358480523888007

`A034699(A008619(∏[n/a(n-1)]-1))` with `a(0)=2, a(1)=1`
-/

namespace A130479.P4470358480523888007
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [2, 1] fun n f1 =>
  (n : ℚ) / f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034699 (A008619 (SequenceMachineLib.roundAway (∏ j ∈ Finset.range (n + 1), f1 j - 1)).toNat).toNat

end

end A130479.P4470358480523888007

/-!
# A130480: a(n) = lcm(b(0),b(1),b(2),...,b(n)), where b(m) = A130479(m).

The programs for A130480, there is no canonical definition to state claims against.
-/

/-! ## A130480.P11117789315604865894

`∏[gcd(n, and(2, gcd(2, n))^n)]`
-/

namespace A130480.P11117789315604865894
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd n (Nat.land 2 (Nat.gcd 2 n) ^ n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A130480.P11117789315604865894

/-! ## A130480.P15024025766661021814

`lcm(a(n-1), ∏[n/a(n-1)])` with `a(0)=1`
-/

namespace A130480.P15024025766661021814
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  (n : ℚ) / f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Int.lcm (a (n - 1) : ℤ) (SequenceMachineLib.roundAway (∏ j ∈ Finset.range (n + 1), f1 j))

end

end A130480.P15024025766661021814

/-! ## A130480.P14617200646065382932

`and(n, -gcd(1-n, and(1, n)))*a(n-1)` with `a(0)=1`
-/

namespace A130480.P14617200646065382932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.land (n : ℤ) (-(Int.gcd (1 - (n : ℤ)) (Nat.land 1 n : ℤ) : ℤ)) * a (n - 1)

end

end A130480.P14617200646065382932

/-! ## A130480.P8893953528237628734

`2^∑[∑{e}[and(n, -n), #]]*∏[n^(n%2)]`
-/

namespace A130480.P8893953528237628734
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-(n : ℤ))

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ (n % 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ (∑ j ∈ Finset.range (n + 1), f1 j) * (∏ j ∈ Finset.range (n + 1), f3 j)

end

end A130480.P8893953528237628734

/-! ## A130480.P18376142035318317704

`lcm(-∏[-n^and(1, n)], 2^∑[∑{e}[and(n, -n), #]])`
-/

namespace A130480.P18376142035318317704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(n ^ Nat.land 1 n : ℤ)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-(n : ℤ))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n).natAbs, Nat.factorization (f3 n).natAbs p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (-(∏ j ∈ Finset.range (n + 1), f1 j)) (2 ^ (∑ j ∈ Finset.range (n + 1), f2 j) : ℤ)

end

end A130480.P18376142035318317704

/-!
# A130481: a(n) = Sum_{k=0..n} (k mod 3) (i.e., partial sums of A010872).

The programs for A130481, the canonical program `A130481.P9696471928252359888` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A130481 has offset 0).

The definition of A130481 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A130481.P9354882012402501794

`n+1-(n+1)²%3`
-/

namespace A130481.P9354882012402501794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - (((n + 1) ^ 2 % 3 : ℕ) : ℤ)

end

end A130481.P9354882012402501794

namespace A130481

/-- `n+1-(n+1)²%3` -/
def P9354882012402501794.Spec : Prop :=
  ∀ n, P9354882012402501794.a n = A130481 n

end A130481

/-! ## A130481.P1093241905666633151

`ogf((x+2x^2)/(1-x-x^3+x^4))`
-/

namespace A130481.P1093241905666633151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 2] [1, -1, 0, -1, 1] n

end

end A130481.P1093241905666633151

namespace A130481

/-- `ogf((x+2x^2)/(1-x-x^3+x^4))` -/
def P1093241905666633151.Spec : Prop :=
  ∀ n, P1093241905666633151.a n = A130481 n

end A130481

/-! ## A130481.P9696471928252359888

`floor((n+1)/3)+floor(2*(n+1)/3)`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A130481

/-- `floor((n+1)/3)+floor(2*(n+1)/3)` -/
def P9696471928252359888.Spec : Prop :=
  ∀ n, P9696471928252359888.a n = A130481 n

theorem P9696471928252359888.correct : P9696471928252359888.Spec := by
  intro n
  simp only [A130481]

end A130481

/-! ## A130481.P3368653836589807261

`∑[n%3]`
-/

namespace A130481.P3368653836589807261
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130481.P3368653836589807261

namespace A130481

/-- `∑[n%3]` -/
def P3368653836589807261.Spec : Prop :=
  ∀ n, (P3368653836589807261.a n : ℤ) = A130481 n

end A130481

/-! ## A130481.P12101640240110806981

`C(n, 2)%3+n`
-/

namespace A130481.P12101640240110806981
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2 % 3 + n

end

end A130481.P12101640240110806981

namespace A130481

/-- `C(n, 2)%3+n` -/
def P12101640240110806981.Spec : Prop :=
  ∀ n, (P12101640240110806981.a n : ℤ) = A130481 n

end A130481

/-! ## A130481.P5173651571474454355

`∑[and(3, comp[or(3, n)])]`
-/

namespace A130481.P5173651571474454355
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 3 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 3 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130481.P5173651571474454355

namespace A130481

/-- `∑[and(3, comp[or(3, n)])]` -/
def P5173651571474454355.Spec : Prop :=
  ∀ n, (P5173651571474454355.a n : ℤ) = A130481 n

end A130481

/-! ## A130481.P5790208270783826780

`a(n-3)+3` with `a(0)=0, a(1)=1, a(2)=3`
-/

namespace A130481.P5790208270783826780
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 3] fun n a =>
  a (n - 3) + 3

end

end A130481.P5790208270783826780

namespace A130481

/-- `a(n-3)+3` -/
def P5790208270783826780.Spec : Prop :=
  ∀ n, (P5790208270783826780.a n : ℤ) = A130481 n

end A130481

/-! ## A130481.P7137235913976577854

`∑[abs(a(n-3))]` with `a(0)=0, a(1)=1, a(2)=2`
-/

namespace A130481.P7137235913976577854
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 2] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130481.P7137235913976577854

namespace A130481

/-- `∑[abs(a(n-3))]` -/
def P7137235913976577854.Spec : Prop :=
  ∀ n, (P7137235913976577854.a n : ℤ) = A130481 n

end A130481

/-! ## A130481.P18408671666899374566

`∑[dr(a(n-3))]` with `a(0)=0, a(1)=1, a(2)=2`
-/

namespace A130481.P18408671666899374566
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 2] fun n f1 =>
  SequenceMachineLib.digitalRoot (f1 (n - 3) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130481.P18408671666899374566

namespace A130481

/-- `∑[dr(a(n-3))]` -/
def P18408671666899374566.Spec : Prop :=
  ∀ n, (P18408671666899374566.a n : ℤ) = A130481 n

end A130481

/-! ## A130481.P17924143776946103290

`∑[floor(a(n-3))]` with `a(0)=0, a(1)=1, a(2)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A130481.P17924143776946103290
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 2] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130481.P17924143776946103290

namespace A130481

/-- `∑[floor(a(n-3))]` -/
def P17924143776946103290.Spec : Prop :=
  ∀ n, (P17924143776946103290.a n : ℤ) = A130481 n

end A130481

/-! ## A130481.P6150250229743763395

`∑[ceil(a(n-3))]` with `a(0)=0, a(1)=1, a(2)=2`

`ceil` is left out, it is the identity on integers.
-/

namespace A130481.P6150250229743763395
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 2] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130481.P6150250229743763395

namespace A130481

/-- `∑[ceil(a(n-3))]` -/
def P6150250229743763395.Spec : Prop :=
  ∀ n, (P6150250229743763395.a n : ℤ) = A130481 n

end A130481

/-! ## A130481.P7662311884845427863

`∑[round(a(n-3))]` with `a(0)=0, a(1)=1, a(2)=2`

`round` is left out, it is the identity on integers.
-/

namespace A130481.P7662311884845427863
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 2] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130481.P7662311884845427863

namespace A130481

/-- `∑[round(a(n-3))]` -/
def P7662311884845427863.Spec : Prop :=
  ∀ n, (P7662311884845427863.a n : ℤ) = A130481 n

end A130481

/-! ## A130481.P14198960516729601047

`∑[C(2, a(n-1)²)]` with `a(0)=0`
-/

namespace A130481.P14198960516729601047
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  Nat.choose 2 (f1 (n - 1) ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130481.P14198960516729601047

namespace A130481

/-- `∑[C(2, a(n-1)²)]` -/
def P14198960516729601047.Spec : Prop :=
  ∀ n, (P14198960516729601047.a n : ℤ) = A130481 n

end A130481

/-! ## A130481.P13857588008964257801

`floor(atan((n+3)%3)+n)`
-/

namespace A130481.P13857588008964257801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.arctan (((n + 3) % 3 : ℕ) : ℝ) + (n : ℝ)⌋

end

end A130481.P13857588008964257801

namespace A130481

/-- `floor(atan((n+3)%3)+n)` -/
def P13857588008964257801.Spec : Prop :=
  ∀ n, P13857588008964257801.a n = A130481 n

end A130481

/-! ## A130481.P8735332659448866433

`ceil(n-sin((2*n)%6))`
-/

namespace A130481.P8735332659448866433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℝ) - Real.sin ((2 * n % 6 : ℕ) : ℝ)⌉

end

end A130481.P8735332659448866433

namespace A130481

/-- `ceil(n-sin((2*n)%6))` -/
def P8735332659448866433.Spec : Prop :=
  ∀ n, P8735332659448866433.a n = A130481 n

end A130481

/-! ## A130481.P10549575382784556596

`floor(acot((n+1)%3)+n)`
-/

namespace A130481.P10549575382784556596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (((n + 1) % 3 : ℕ) : ℝ) + (n : ℝ)⌋

end

end A130481.P10549575382784556596

namespace A130481

/-- `floor(acot((n+1)%3)+n)` -/
def P10549575382784556596.Spec : Prop :=
  ∀ n, P10549575382784556596.a n = A130481 n

end A130481

/-! ## A130481.P7299331034287552288

`∑[and(3, a(n-3))]` with `a(0)=0, a(1)=1, a(2)=2`
-/

namespace A130481.P7299331034287552288
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 2] fun n f1 =>
  Nat.land 3 (f1 (n - 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130481.P7299331034287552288

namespace A130481

/-- `∑[and(3, a(n-3))]` -/
def P7299331034287552288.Spec : Prop :=
  ∀ n, (P7299331034287552288.a n : ℤ) = A130481 n

end A130481

/-! ## A130481.P16571125066933507566

`∑[C(2, a(n-1)^3)]` with `a(0)=0`
-/

namespace A130481.P16571125066933507566
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  Nat.choose 2 (f1 (n - 1) ^ 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130481.P16571125066933507566

namespace A130481

/-- `∑[C(2, a(n-1)^3)]` -/
def P16571125066933507566.Spec : Prop :=
  ∀ n, (P16571125066933507566.a n : ℤ) = A130481 n

end A130481

/-! ## A130481.P6892972687611627587

`floor(gcd(3, n+1)/2+n)`
-/

namespace A130481.P6892972687611627587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.gcd 3 (n + 1) : ℚ) / 2 + (n : ℚ)⌋

end

end A130481.P6892972687611627587

namespace A130481

/-- `floor(gcd(3, n+1)/2+n)` -/
def P6892972687611627587.Spec : Prop :=
  ∀ n, P6892972687611627587.a n = A130481 n

end A130481

/-!
# A130482: a(n) = Sum_{k=0..n} (k mod 4) (Partial sums of A010873).

The programs for A130482, the canonical program `A130482.P1381603480602906295` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A130482 has offset 0).

The definition of A130482 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A130482.P11797126158054858695

`ogf((x+2x^2+3x^3)/(1-x-x^4+x^5))`
-/

namespace A130482.P11797126158054858695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 2, 3] [1, -1, 0, 0, -1, 1] n

end

end A130482.P11797126158054858695

namespace A130482

/-- `ogf((x+2x^2+3x^3)/(1-x-x^4+x^5))` -/
def P11797126158054858695.Spec : Prop :=
  ∀ n, P11797126158054858695.a n = A130482 n

end A130482

/-! ## A130482.P1381603480602906295

`a(n-1)+a(n-4)-a(n-5)` with `a(0)=0, a(1)=1, a(2)=3, a(3)=6, a(4)=6`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A130482

/-- `a(n-1)+a(n-4)-a(n-5)` -/
def P1381603480602906295.Spec : Prop :=
  ∀ n, P1381603480602906295.a n = A130482 n

theorem P1381603480602906295.correct : P1381603480602906295.Spec := by
  intro n
  simp only [A130482]

end A130482

/-! ## A130482.P8748305352093439743

`3*n/2+n%2*(n-1)%4-n%2/2`
-/

namespace A130482.P8748305352093439743
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 * n : ℚ) / 2 + (((n % 2 : ℕ) : ℤ) * Int.tmod ((n : ℤ) - 1) 4 : ℚ) - ((n % 2 : ℕ) : ℚ) / 2

end

end A130482.P8748305352093439743

namespace A130482

/-- `3*n/2+n%2*(n-1)%4-n%2/2` -/
def P8748305352093439743.Spec : Prop :=
  ∀ n, P8748305352093439743.a n = (A130482 n : ℚ)

end A130482

/-! ## A130482.P2717883921745694278

`6*floor(n/4)+A010873(n)*(A010873(n)+1)/2`
-/

namespace A130482.P2717883921745694278
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (6 * ⌊(n : ℚ) / 4⌋ : ℚ) + (A010873 n * (A010873 n + 1) : ℚ) / 2

end

end A130482.P2717883921745694278

namespace A130482

/-- `6*floor(n/4)+A010873(n)*(A010873(n)+1)/2` -/
def P2717883921745694278.Spec : Prop :=
  ∀ n, P2717883921745694278.a n = (A130482 n : ℚ)

end A130482

/-! ## A130482.P5064402553493198914

`∑[n%4]`
-/

namespace A130482.P5064402553493198914
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130482.P5064402553493198914

namespace A130482

/-- `∑[n%4]` -/
def P5064402553493198914.Spec : Prop :=
  ∀ n, (P5064402553493198914.a n : ℤ) = A130482 n

end A130482

/-! ## A130482.P11007649584647567220

`∑[and(3, n)]`
-/

namespace A130482.P11007649584647567220
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130482.P11007649584647567220

namespace A130482

/-- `∑[and(3, n)]` -/
def P11007649584647567220.Spec : Prop :=
  ∀ n, (P11007649584647567220.a n : ℤ) = A130482 n

end A130482

/-! ## A130482.P3592228765361693527

`∑[or(n, -4)+4]`
-/

namespace A130482.P3592228765361693527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (-4) + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130482.P3592228765361693527

namespace A130482

/-- `∑[or(n, -4)+4]` -/
def P3592228765361693527.Spec : Prop :=
  ∀ n, P3592228765361693527.a n = A130482 n

end A130482

/-! ## A130482.P7219855388968993476

`∑[3-or(3, n)+n]`
-/

namespace A130482.P7219855388968993476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - (Nat.lor 3 n : ℤ) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130482.P7219855388968993476

namespace A130482

/-- `∑[3-or(3, n)+n]` -/
def P7219855388968993476.Spec : Prop :=
  ∀ n, P7219855388968993476.a n = A130482 n

end A130482

/-! ## A130482.P4631698085261461852

`∑[3-(or(3, n)-n)]`
-/

namespace A130482.P4631698085261461852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - ((Nat.lor 3 n : ℤ) - (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130482.P4631698085261461852

namespace A130482

/-- `∑[3-(or(3, n)-n)]` -/
def P4631698085261461852.Spec : Prop :=
  ∀ n, P4631698085261461852.a n = A130482 n

end A130482

/-! ## A130482.P3395912129148314095

`∑[xor(3, xor(n, or(3, n)))]`
-/

namespace A130482.P3395912129148314095
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 (Nat.xor n (Nat.lor 3 n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130482.P3395912129148314095

namespace A130482

/-- `∑[xor(3, xor(n, or(3, n)))]` -/
def P3395912129148314095.Spec : Prop :=
  ∀ n, (P3395912129148314095.a n : ℤ) = A130482 n

end A130482

/-! ## A130482.P8916115831821019787

`∑[xor(2, a(n-2))]` with `a(0)=0, a(1)=1`
-/

namespace A130482.P8916115831821019787
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  Nat.xor 2 (f1 (n - 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130482.P8916115831821019787

namespace A130482

/-- `∑[xor(2, a(n-2))]` -/
def P8916115831821019787.Spec : Prop :=
  ∀ n, (P8916115831821019787.a n : ℤ) = A130482 n

end A130482

/-! ## A130482.P4685214630759948727

`a(n-1)+and(3, n)` with `a(0)=0`
-/

namespace A130482.P4685214630759948727
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + Nat.land 3 n

end

end A130482.P4685214630759948727

namespace A130482

/-- `a(n-1)+and(3, n)` -/
def P4685214630759948727.Spec : Prop :=
  ∀ n, (P4685214630759948727.a n : ℤ) = A130482 n

end A130482

/-! ## A130482.P18226308813990790193

`∑[n-4*floor(n/4)]`
-/

namespace A130482.P18226308813990790193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 4 * ⌊(n : ℚ) / 4⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130482.P18226308813990790193

namespace A130482

/-- `∑[n-4*floor(n/4)]` -/
def P18226308813990790193.Spec : Prop :=
  ∀ n, P18226308813990790193.a n = A130482 n

end A130482

/-! ## A130482.P11446850452330476836

`a(n-4)+6` with `a(0)=0, a(1)=1, a(2)=3, a(3)=6`
-/

namespace A130482.P11446850452330476836
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 3, 6] fun n a =>
  a (n - 4) + 6

end

end A130482.P11446850452330476836

namespace A130482

/-- `a(n-4)+6` -/
def P11446850452330476836.Spec : Prop :=
  ∀ n, (P11446850452330476836.a n : ℤ) = A130482 n

end A130482

/-! ## A130482.P16939991285732752536

`∑[n+3-xor(3, n)]/2`
-/

namespace A130482.P16939991285732752536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℤ) - (Nat.xor 3 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A130482.P16939991285732752536

namespace A130482

/-- `∑[n+3-xor(3, n)]/2` -/
def P16939991285732752536.Spec : Prop :=
  ∀ n, P16939991285732752536.a n = (A130482 n : ℚ)

end A130482

/-! ## A130482.P6548759329299349906

`∑[floor(a(n-4))]/2` with `a(0)=0, a(1)=2, a(2)=4, a(3)=6`

`floor` is left out, it is the identity on integers.
-/

namespace A130482.P6548759329299349906
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 2, 4, 6] fun n f1 =>
  f1 (n - 4)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 2

end

end A130482.P6548759329299349906

namespace A130482

/-- `∑[floor(a(n-4))]/2` -/
def P6548759329299349906.Spec : Prop :=
  ∀ n, P6548759329299349906.a n = (A130482 n : ℚ)

end A130482

/-! ## A130482.P5963750039584922544

`∑[floor(a(n-4))]-1` with `a(0)=1, a(1)=1, a(2)=2, a(3)=3, a(4)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A130482.P5963750039584922544
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 2, 3, 0] fun n f1 =>
  f1 (n - 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A130482.P5963750039584922544

namespace A130482

/-- `∑[floor(a(n-4))]-1` -/
def P5963750039584922544.Spec : Prop :=
  ∀ n, P5963750039584922544.a n = A130482 n

end A130482

/-! ## A130482.P14169999783992802803

`n-(4*floor(n/4)-a(n-1))` with `a(0)=0`
-/

namespace A130482.P14169999783992802803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (n : ℤ) - (4 * ⌊(n : ℚ) / 4⌋ - a (n - 1))

end

end A130482.P14169999783992802803

namespace A130482

/-- `n-(4*floor(n/4)-a(n-1))` -/
def P14169999783992802803.Spec : Prop :=
  ∀ n, P14169999783992802803.a n = A130482 n

end A130482

/-! ## A130482.P7897365925269227456

`floor(a(n-1)-(n-2*n)%4)` with `a(0)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A130482.P7897365925269227456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) - Int.tmod ((n : ℤ) - (2 * n : ℤ)) 4

end

end A130482.P7897365925269227456

namespace A130482

/-- `floor(a(n-1)-(n-2*n)%4)` -/
def P7897365925269227456.Spec : Prop :=
  ∀ n, P7897365925269227456.a n = A130482 n

end A130482

/-! ## A130482.P15748901288804200395

`∑[6-a(n-2)]-a(n-1)` with `a(0)=0, a(1)=1, a(2)=3`
-/

namespace A130482.P15748901288804200395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 3] fun n f1 =>
  6 - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 3] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j - a (n - 1)

end

end A130482.P15748901288804200395

namespace A130482

/-- `∑[6-a(n-2)]-a(n-1)` -/
def P15748901288804200395.Spec : Prop :=
  ∀ n, P15748901288804200395.a n = A130482 n

end A130482

/-!
# A130483: a(n) = Sum_{k=0..n} (k mod 5) (Partial sums of A010874).

The programs for A130483, the canonical program `A130483.P4468725539351596921` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A130483 has offset 0).

The definition of A130483 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A130483.P4468725539351596921

`a(n-5)+10` with `a(0)=0, a(1)=1, a(2)=3, a(3)=6, a(4)=10`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A130483

/-- `a(n-5)+10` -/
def P4468725539351596921.Spec : Prop :=
  ∀ n, (P4468725539351596921.a n : ℤ) = A130483 n

theorem P4468725539351596921.correct : P4468725539351596921.Spec := by
  intro n
  simp only [A130483]

end A130483

/-! ## A130483.P2711666170128135062

`ogf((x+2x^2+3x^3+4x^4)/(1-x-x^5+x^6))`
-/

namespace A130483.P2711666170128135062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 2, 3, 4] [1, -1, 0, 0, 0, -1, 1] n

end

end A130483.P2711666170128135062

namespace A130483

/-- `ogf((x+2x^2+3x^3+4x^4)/(1-x-x^5+x^6))` -/
def P2711666170128135062.Spec : Prop :=
  ∀ n, P2711666170128135062.a n = A130483 n

end A130483

/-! ## A130483.P7553525130093014260

`((n%5)²-3*n%5+4*n)/2`
-/

namespace A130483.P7553525130093014260
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((((n % 5) ^ 2 : ℕ) : ℤ) - ((3 * (n % 5) : ℕ) : ℤ) + (4 * n : ℤ) : ℚ) / 2

end

end A130483.P7553525130093014260

namespace A130483

/-- `((n%5)²-3*n%5+4*n)/2` -/
def P7553525130093014260.Spec : Prop :=
  ∀ n, P7553525130093014260.a n = (A130483 n : ℚ)

end A130483

/-! ## A130483.P3421508142489523534

`10*floor(n/5)+A010874(n)*(A010874(n)+1)/2`
-/

namespace A130483.P3421508142489523534
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (10 * ⌊(n : ℚ) / 5⌋ : ℚ) + (A010874 n * (A010874 n + 1) : ℚ) / 2

end

end A130483.P3421508142489523534

namespace A130483

/-- `10*floor(n/5)+A010874(n)*(A010874(n)+1)/2` -/
def P3421508142489523534.Spec : Prop :=
  ∀ n, P3421508142489523534.a n = (A130483 n : ℚ)

end A130483

/-! ## A130483.P13802807586373426325

`∑[n%5]`
-/

namespace A130483.P13802807586373426325
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130483.P13802807586373426325

namespace A130483

/-- `∑[n%5]` -/
def P13802807586373426325.Spec : Prop :=
  ∀ n, (P13802807586373426325.a n : ℤ) = A130483 n

end A130483

/-! ## A130483.P12827466966378863144

`∑[n-5*floor(n/5)]`
-/

namespace A130483.P12827466966378863144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 5 * ⌊(n : ℚ) / 5⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130483.P12827466966378863144

namespace A130483

/-- `∑[n-5*floor(n/5)]` -/
def P12827466966378863144.Spec : Prop :=
  ∀ n, P12827466966378863144.a n = A130483 n

end A130483

/-! ## A130483.P1252555892568911229

`2*(n+1)-(2*(n+1)²)%5`
-/

namespace A130483.P1252555892568911229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - ((2 * (n + 1) ^ 2 % 5 : ℕ) : ℤ)

end

end A130483.P1252555892568911229

namespace A130483

/-- `2*(n+1)-(2*(n+1)²)%5` -/
def P1252555892568911229.Spec : Prop :=
  ∀ n, P1252555892568911229.a n = A130483 n

end A130483

/-! ## A130483.P7283834344742498947

`A010874(n)+a(n-1)` with `a(0)=0`
-/

namespace A130483.P7283834344742498947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A010874 n + a (n - 1)

end

end A130483.P7283834344742498947

namespace A130483

/-- `A010874(n)+a(n-1)` -/
def P7283834344742498947.Spec : Prop :=
  ∀ n, P7283834344742498947.a n = A130483 n

end A130483

/-! ## A130483.P1504317403288714414

`A081596(a(n-1))+n` with `a(0)=0`
-/

namespace A130483.P1504317403288714414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A081596 (a (n - 1)).toNat + (n : ℤ)

end

end A130483.P1504317403288714414

namespace A130483

/-- `A081596(a(n-1))+n` -/
def P1504317403288714414.Spec : Prop :=
  ∀ n, P1504317403288714414.a n = A130483 n

end A130483

/-! ## A130483.P2464666327536185906

`2*n+1-A175922(2*n+1)`
-/

namespace A130483.P2464666327536185906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) - A175922 (2 * n + 1)

end

end A130483.P2464666327536185906

namespace A130483

/-- `2*n+1-A175922(2*n+1)` -/
def P2464666327536185906.Spec : Prop :=
  ∀ n, P2464666327536185906.a n = A130483 n

end A130483

/-! ## A130483.P8371295325864878936

`A257164(3*n)+a(n-1)` with `a(0)=0`
-/

namespace A130483.P8371295325864878936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A257164 (3 * n) + a (n - 1)

end

end A130483.P8371295325864878936

namespace A130483

/-- `A257164(3*n)+a(n-1)` -/
def P8371295325864878936.Spec : Prop :=
  ∀ n, P8371295325864878936.a n = A130483 n

end A130483

/-! ## A130483.P18344099078499213616

`A004526(∑[A010879(2*n)])`
-/

namespace A130483.P18344099078499213616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A130483.P18344099078499213616

namespace A130483

/-- `A004526(∑[A010879(2*n)])` -/
def P18344099078499213616.Spec : Prop :=
  ∀ n, P18344099078499213616.a n = A130483 n

end A130483

/-! ## A130483.P7979028311831281589

`A004526(∑[A172423(2*n)])`
-/

namespace A130483.P7979028311831281589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172423 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A130483.P7979028311831281589

namespace A130483

/-- `A004526(∑[A172423(2*n)])` -/
def P7979028311831281589.Spec : Prop :=
  ∀ n, P7979028311831281589.a n = A130483 n

end A130483

/-! ## A130483.P16011850907169640874

`A002265(A130488(2*n+1)-n)`
-/

namespace A130483.P16011850907169640874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A130488 (2 * n + 1) - (n : ℤ)).toNat

end

end A130483.P16011850907169640874

namespace A130483

/-- `A002265(A130488(2*n+1)-n)` -/
def P16011850907169640874.Spec : Prop :=
  ∀ n, P16011850907169640874.a n = A130483 n

end A130483

/-! ## A130483.P13953262042000085279

`A002266(A130488(2*n+1)+n+1)`
-/

namespace A130483.P13953262042000085279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002266 (A130488 (2 * n + 1) + (n + 1 : ℤ)).toNat

end

end A130483.P13953262042000085279

namespace A130483

/-- `A002266(A130488(2*n+1)+n+1)` -/
def P13953262042000085279.Spec : Prop :=
  ∀ n, P13953262042000085279.a n = A130483 n

end A130483

/-! ## A130483.P5855054419091404502

`A059995(A016813(∑[A010879(2*n+1)]))`
-/

namespace A130483.P5855054419091404502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 (A016813 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A130483.P5855054419091404502

namespace A130483

/-- `A059995(A016813(∑[A010879(2*n+1)]))` -/
def P5855054419091404502.Spec : Prop :=
  ∀ n, P5855054419091404502.a n = A130483 n

end A130483

/-! ## A130483.P10436160341262586869

`log2(∏[A269266(n)])`
-/

namespace A130483.P10436160341262586869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269266 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℝ)

end

end A130483.P10436160341262586869

namespace A130483

/-- `log2(∏[A269266(n)])` -/
def P10436160341262586869.Spec : Prop :=
  ∀ n, P10436160341262586869.a n = (A130483 n : ℝ)

end A130483

/-!
# A130484: a(n) = Sum_{k=0..n} (k mod 6) (Partial sums of A010875).

The programs for A130484, the canonical program `A130484.P762048185135072722` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A130484 has offset 0).

The definition of A130484 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A130484.P762048185135072722

`a(n-1)+a(n-6)-a(n-7)` with `a(0)=0, a(1)=1, a(2)=3, a(3)=6, a(4)=10, a(5)=15, a(6)=15`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A130484

/-- `a(n-1)+a(n-6)-a(n-7)` -/
def P762048185135072722.Spec : Prop :=
  ∀ n, P762048185135072722.a n = A130484 n

theorem P762048185135072722.correct : P762048185135072722.Spec := by
  intro n
  simp only [A130484]

end A130484

/-! ## A130484.P14005877565057590812

`15*floor(n/6)+A010875(n)*(A010875(n)+1)/2`
-/

namespace A130484.P14005877565057590812
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (15 * ⌊(n : ℚ) / 6⌋ : ℚ) + (A010875 n * (A010875 n + 1) : ℚ) / 2

end

end A130484.P14005877565057590812

namespace A130484

/-- `15*floor(n/6)+A010875(n)*(A010875(n)+1)/2` -/
def P14005877565057590812.Spec : Prop :=
  ∀ n, P14005877565057590812.a n = (A130484 n : ℚ)

end A130484

/-! ## A130484.P9606295034690396066

`∑[n%6]`
-/

namespace A130484.P9606295034690396066
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130484.P9606295034690396066

namespace A130484

/-- `∑[n%6]` -/
def P9606295034690396066.Spec : Prop :=
  ∀ n, (P9606295034690396066.a n : ℤ) = A130484 n

end A130484

/-! ## A130484.P16323983384735003058

`∑[n-6*floor(n/6)]`
-/

namespace A130484.P16323983384735003058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 6 * ⌊(n : ℚ) / 6⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130484.P16323983384735003058

namespace A130484

/-- `∑[n-6*floor(n/6)]` -/
def P16323983384735003058.Spec : Prop :=
  ∀ n, P16323983384735003058.a n = A130484 n

end A130484

/-! ## A130484.P10253525699600225107

`and(∑[A010875(n)], -1)`
-/

namespace A130484.P10253525699600225107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010875 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (∑ j ∈ Finset.range (n + 1), f1 j) (-1)

end

end A130484.P10253525699600225107

namespace A130484

/-- `and(∑[A010875(n)], -1)` -/
def P10253525699600225107.Spec : Prop :=
  ∀ n, P10253525699600225107.a n = A130484 n

end A130484

/-! ## A130484.P16368260806036318689

`∑[A010885(n)]-(n+1)`
-/

namespace A130484.P16368260806036318689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010885 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n + 1 : ℤ)

end

end A130484.P16368260806036318689

namespace A130484

/-- `∑[A010885(n)]-(n+1)` -/
def P16368260806036318689.Spec : Prop :=
  ∀ n, P16368260806036318689.a n = A130484 n

end A130484

/-! ## A130484.P16978059108973446536

`∑[A010875(n+1)]-A010875(n+1)`
-/

namespace A130484.P16978059108973446536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010875 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A010875 (n + 1)

end

end A130484.P16978059108973446536

namespace A130484

/-- `∑[A010875(n+1)]-A010875(n+1)` -/
def P16978059108973446536.Spec : Prop :=
  ∀ n, P16978059108973446536.a n = A130484 n

end A130484

/-! ## A130484.P4292700522348205918

`∑[A010881(2*n)]/2`
-/

namespace A130484.P4292700522348205918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010881 (2 * n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A130484.P4292700522348205918

namespace A130484

/-- `∑[A010881(2*n)]/2` -/
def P4292700522348205918.Spec : Prop :=
  ∀ n, P4292700522348205918.a n = (A130484 n : ℚ)

end A130484

/-! ## A130484.P3755431269991942023

`A051516(2*n+1)+∑[A010875(n)]`
-/

namespace A130484.P3755431269991942023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010875 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051516 (2 * n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130484.P3755431269991942023

namespace A130484

/-- `A051516(2*n+1)+∑[A010875(n)]` -/
def P3755431269991942023.Spec : Prop :=
  ∀ n, P3755431269991942023.a n = A130484 n

end A130484

/-! ## A130484.P12402511899661968983

`∑[A010875(n)]*A000035(2*n+1)`
-/

namespace A130484.P12402511899661968983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010875 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A000035 (2 * n + 1)

end

end A130484.P12402511899661968983

namespace A130484

/-- `∑[A010875(n)]*A000035(2*n+1)` -/
def P12402511899661968983.Spec : Prop :=
  ∀ n, P12402511899661968983.a n = A130484 n

end A130484

/-! ## A130484.P1389064813849877150

`A130481(∑[A010875(n)])`
-/

namespace A130484.P1389064813849877150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010875 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130481 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A130484.P1389064813849877150

namespace A130484

/-- `A130481(∑[A010875(n)])` -/
def P1389064813849877150.Spec : Prop :=
  ∀ n, P1389064813849877150.a n = A130484 n

end A130484

/-! ## A130484.P14055603520840332827

`abs(A001489(∑[A010875(n)]))`
-/

namespace A130484.P14055603520840332827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010875 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001489 (∑ j ∈ Finset.range (n + 1), f1 j).toNat|

end

end A130484.P14055603520840332827

namespace A130484

/-- `abs(A001489(∑[A010875(n)]))` -/
def P14055603520840332827.Spec : Prop :=
  ∀ n, P14055603520840332827.a n = A130484 n

end A130484

/-! ## A130484.P9855005847716285198

`A004526(∑[A010881(2*n)])`
-/

namespace A130484.P9855005847716285198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010881 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A130484.P9855005847716285198

namespace A130484

/-- `A004526(∑[A010881(2*n)])` -/
def P9855005847716285198.Spec : Prop :=
  ∀ n, P9855005847716285198.a n = A130484 n

end A130484

/-! ## A130484.P14886409320924867276

`A002264(A130482(∑[A010881(2*n)]))`
-/

namespace A130484.P14886409320924867276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010881 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A130482 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A130484.P14886409320924867276

namespace A130484

/-- `A002264(A130482(∑[A010881(2*n)]))` -/
def P14886409320924867276.Spec : Prop :=
  ∀ n, P14886409320924867276.a n = A130484 n

end A130484

/-! ## A130484.P12946272889012101852

`A002265(A130490(2*n+1)-n)`
-/

namespace A130484.P12946272889012101852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A130490 (2 * n + 1) - (n : ℤ)).toNat

end

end A130484.P12946272889012101852

namespace A130484

/-- `A002265(A130490(2*n+1)-n)` -/
def P12946272889012101852.Spec : Prop :=
  ∀ n, P12946272889012101852.a n = A130484 n

end A130484

/-!
# A130485: a(n) = Sum_{k=0..n} (k mod 7) (Partial sums of A010876).

The programs for A130485, the canonical program `A130485.P1077167965973703878` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A130485 has offset 0).

The definition of A130485 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A130485.P1077167965973703878

`a(n-1)+a(n-7)-a(n-8)` with `a(0)=0, a(1)=1, a(2)=3, a(3)=6, a(4)=10, a(5)=15, a(6)=21, a(7)=21`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A130485

/-- `a(n-1)+a(n-7)-a(n-8)` -/
def P1077167965973703878.Spec : Prop :=
  ∀ n, P1077167965973703878.a n = A130485 n

theorem P1077167965973703878.correct : P1077167965973703878.Spec := by
  intro n
  simp only [A130485]

end A130485

/-! ## A130485.P13808758791834873669

`ogf((x-7x^7+6x^8)/(1-3x+3x^2-x^3-x^7+3x^8-3x^9+x^10))`
-/

namespace A130485.P13808758791834873669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 0, 0, 0, 0, 0, -7, 6] [1, -3, 3, -1, 0, 0, 0, -1, 3, -3, 1] n

end

end A130485.P13808758791834873669

namespace A130485

/-- `ogf((x-7x^7+6x^8)/(1-3x+3x^2-x^3-x^7+3x^8-3x^9+x^10))` -/
def P13808758791834873669.Spec : Prop :=
  ∀ n, P13808758791834873669.a n = A130485 n

end A130485

/-! ## A130485.P14435877518970039171

`21*floor(n/7)+A010876(n)*(A010876(n)+1)/2`
-/

namespace A130485.P14435877518970039171
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (21 * ⌊(n : ℚ) / 7⌋ : ℚ) + (A010876 n * (A010876 n + 1) : ℚ) / 2

end

end A130485.P14435877518970039171

namespace A130485

/-- `21*floor(n/7)+A010876(n)*(A010876(n)+1)/2` -/
def P14435877518970039171.Spec : Prop :=
  ∀ n, P14435877518970039171.a n = (A130485 n : ℚ)

end A130485

/-! ## A130485.P17203621670962154208

`∑[n%7]`
-/

namespace A130485.P17203621670962154208
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130485.P17203621670962154208

namespace A130485

/-- `∑[n%7]` -/
def P17203621670962154208.Spec : Prop :=
  ∀ n, (P17203621670962154208.a n : ℤ) = A130485 n

end A130485

/-! ## A130485.P8280171505032912284

`∑[n-7*floor(n/7)]`
-/

namespace A130485.P8280171505032912284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 7 * ⌊(n : ℚ) / 7⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130485.P8280171505032912284

namespace A130485

/-- `∑[n-7*floor(n/7)]` -/
def P8280171505032912284.Spec : Prop :=
  ∀ n, P8280171505032912284.a n = A130485 n

end A130485

/-! ## A130485.P12490944216549429828

`or(∑[A010876(n)], char[1])`
-/

namespace A130485.P12490944216549429828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010876 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (∑ j ∈ Finset.range (n + 1), f1 j) ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A130485.P12490944216549429828

namespace A130485

/-- `or(∑[A010876(n)], char[1])` -/
def P12490944216549429828.Spec : Prop :=
  ∀ n, P12490944216549429828.a n = A130485 n

end A130485

/-! ## A130485.P766336943407192479

`∑[A010886(n)]-(n+1)`
-/

namespace A130485.P766336943407192479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010886 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n + 1 : ℤ)

end

end A130485.P766336943407192479

namespace A130485

/-- `∑[A010886(n)]-(n+1)` -/
def P766336943407192479.Spec : Prop :=
  ∀ n, P766336943407192479.a n = A130485 n

end A130485

/-! ## A130485.P72350741619771105

`∑[A010876(A028310(n))]-1`
-/

namespace A130485.P72350741619771105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010876 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A130485.P72350741619771105

namespace A130485

/-- `∑[A010876(A028310(n))]-1` -/
def P72350741619771105.Spec : Prop :=
  ∀ n, P72350741619771105.a n = A130485 n

end A130485

/-! ## A130485.P18207703387946997646

`∑[A010876(n)]*A057427(n)`
-/

namespace A130485.P18207703387946997646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010876 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A057427 n

end

end A130485.P18207703387946997646

namespace A130485

/-- `∑[A010876(n)]*A057427(n)` -/
def P18207703387946997646.Spec : Prop :=
  ∀ n, P18207703387946997646.a n = A130485 n

end A130485

/-! ## A130485.P2007984671525558176

`A130481(∑[A010876(n)])`
-/

namespace A130485.P2007984671525558176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010876 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130481 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A130485.P2007984671525558176

namespace A130485

/-- `A130481(∑[A010876(n)])` -/
def P2007984671525558176.Spec : Prop :=
  ∀ n, P2007984671525558176.a n = A130485 n

end A130485

/-! ## A130485.P6575776039752531921

`A111952(5*n)+a(n-1)` with `a(0)=0`
-/

namespace A130485.P6575776039752531921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A111952 (5 * n) + a (n - 1)

end

end A130485.P6575776039752531921

namespace A130485

/-- `A111952(5*n)+a(n-1)` -/
def P6575776039752531921.Spec : Prop :=
  ∀ n, P6575776039752531921.a n = A130485 n

end A130485

/-! ## A130485.P15924726023083485726

`A000124(n)-A016993(A174738(n))`
-/

namespace A130485.P15924726023083485726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 n - A016993 (A174738 n).toNat

end

end A130485.P15924726023083485726

namespace A130485

/-- `A000124(n)-A016993(A174738(n))` -/
def P15924726023083485726.Spec : Prop :=
  ∀ n, P15924726023083485726.a n = A130485 n

end A130485

/-! ## A130485.P5101140617418669510

`∑[A010876(n)]*A318318(A152295(n+1))`
-/

namespace A130485.P5101140617418669510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010876 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A318318 (A152295 (n + 1)).toNat

end

end A130485.P5101140617418669510

namespace A130485

/-- `∑[A010876(n)]*A318318(A152295(n+1))` -/
def P5101140617418669510.Spec : Prop :=
  ∀ n, P5101140617418669510.a n = A130485 n

end A130485

/-!
# A130486: a(n) = Sum_{k=0..n} (k mod 8) (Partial sums of A010877).

The programs for A130486, the canonical program `A130486.P7396212511680566852` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A130486 has offset 0).

The definition of A130486 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A130486.P7396212511680566852

`a(n-1)+a(n-8)-a(n-9)` with `a(0)=0, a(1)=1, a(2)=3, a(3)=6, a(4)=10, a(5)=15, a(6)=21, a(7)=28, a(8)=28`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A130486

/-- `a(n-1)+a(n-8)-a(n-9)` -/
def P7396212511680566852.Spec : Prop :=
  ∀ n, P7396212511680566852.a n = A130486 n

theorem P7396212511680566852.correct : P7396212511680566852.Spec := by
  intro n
  simp only [A130486]

end A130486

/-! ## A130486.P17746173926395021037

`ogf((x-8x^8+7x^9)/(1-3x+3x^2-x^3-x^8+3x^9-3x^10+x^11))`
-/

namespace A130486.P17746173926395021037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 0, 0, 0, 0, 0, 0, -8, 7] [1, -3, 3, -1, 0, 0, 0, 0, -1, 3, -3, 1] n

end

end A130486.P17746173926395021037

namespace A130486

/-- `ogf((x-8x^8+7x^9)/(1-3x+3x^2-x^3-x^8+3x^9-3x^10+x^11))` -/
def P17746173926395021037.Spec : Prop :=
  ∀ n, P17746173926395021037.a n = A130486 n

end A130486

/-! ## A130486.P17260767995556507071

`28*floor(n/8)+A010877(n)*(A010877(n)+1)/2`
-/

namespace A130486.P17260767995556507071
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (28 * ⌊(n : ℚ) / 8⌋ : ℚ) + (A010877 n * (A010877 n + 1) : ℚ) / 2

end

end A130486.P17260767995556507071

namespace A130486

/-- `28*floor(n/8)+A010877(n)*(A010877(n)+1)/2` -/
def P17260767995556507071.Spec : Prop :=
  ∀ n, P17260767995556507071.a n = (A130486 n : ℚ)

end A130486

/-! ## A130486.P1642702450321361806

`∑[n%8]`
-/

namespace A130486.P1642702450321361806
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 8

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130486.P1642702450321361806

namespace A130486

/-- `∑[n%8]` -/
def P1642702450321361806.Spec : Prop :=
  ∀ n, (P1642702450321361806.a n : ℤ) = A130486 n

end A130486

/-! ## A130486.P17088443273044223033

`∑[and(7, n)]`
-/

namespace A130486.P17088443273044223033
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 7 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130486.P17088443273044223033

namespace A130486

/-- `∑[and(7, n)]` -/
def P17088443273044223033.Spec : Prop :=
  ∀ n, (P17088443273044223033.a n : ℤ) = A130486 n

end A130486

/-! ## A130486.P6122978883188539670

`∑[or(n, -8)+8]`
-/

namespace A130486.P6122978883188539670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (-8) + 8

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130486.P6122978883188539670

namespace A130486

/-- `∑[or(n, -8)+8]` -/
def P6122978883188539670.Spec : Prop :=
  ∀ n, P6122978883188539670.a n = A130486 n

end A130486

/-! ## A130486.P13896536378667102022

`a(n-1)+and(7, n)` with `a(0)=0`
-/

namespace A130486.P13896536378667102022
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + Nat.land 7 n

end

end A130486.P13896536378667102022

namespace A130486

/-- `a(n-1)+and(7, n)` -/
def P13896536378667102022.Spec : Prop :=
  ∀ n, (P13896536378667102022.a n : ℤ) = A130486 n

end A130486

/-! ## A130486.P4748281382245044317

`∑[n-8*floor(n/8)]`
-/

namespace A130486.P4748281382245044317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 8 * ⌊(n : ℚ) / 8⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130486.P4748281382245044317

namespace A130486

/-- `∑[n-8*floor(n/8)]` -/
def P4748281382245044317.Spec : Prop :=
  ∀ n, P4748281382245044317.a n = A130486 n

end A130486

/-! ## A130486.P2535654089770984790

`A010877(n)+a(n-1)` with `a(0)=0`
-/

namespace A130486.P2535654089770984790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A010877 n + a (n - 1)

end

end A130486.P2535654089770984790

namespace A130486

/-- `A010877(n)+a(n-1)` -/
def P2535654089770984790.Spec : Prop :=
  ∀ n, P2535654089770984790.a n = A130486 n

end A130486

/-! ## A130486.P17111395360649030352

`∑[dr(A248375(n+1))]-A248375(n+1)`
-/

namespace A130486.P17111395360649030352
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A248375 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A248375 (n + 1)

end

end A130486.P17111395360649030352

namespace A130486

/-- `∑[dr(A248375(n+1))]-A248375(n+1)` -/
def P17111395360649030352.Spec : Prop :=
  ∀ n, P17111395360649030352.a n = A130486 n

end A130486

/-! ## A130486.P3014797737305035016

`A004526(∑[A130909(2*n)])`
-/

namespace A130486.P3014797737305035016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130909 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A130486.P3014797737305035016

namespace A130486

/-- `A004526(∑[A130909(2*n)])` -/
def P3014797737305035016.Spec : Prop :=
  ∀ n, P3014797737305035016.a n = A130486 n

end A130486

/-! ## A130486.P634423728907704626

`A002265(A130910(2*n+1)-n)`
-/

namespace A130486.P634423728907704626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A130910 (2 * n + 1) - (n : ℤ)).toNat

end

end A130486.P634423728907704626

namespace A130486

/-- `A002265(A130910(2*n+1)-n)` -/
def P634423728907704626.Spec : Prop :=
  ∀ n, P634423728907704626.a n = A130486 n

end A130486

/-!
# A130487: a(n) = Sum_{k=0..n} (k mod 9) (Partial sums of A010878).

The programs for A130487, the canonical program `A130487.P2775941290643989309` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A130487 has offset 0).

The definition of A130487 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A130487.P2775941290643989309

`a(n-1)+a(n-9)-a(n-10)` with `a(0)=0, a(1)=1, a(2)=3, a(3)=6, a(4)=10, a(5)=15, a(6)=21, a(7)=28, a(8)=36, a(9)=36`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A130487

/-- `a(n-1)+a(n-9)-a(n-10)` -/
def P2775941290643989309.Spec : Prop :=
  ∀ n, P2775941290643989309.a n = A130487 n

theorem P2775941290643989309.correct : P2775941290643989309.Spec := by
  intro n
  simp only [A130487]

end A130487

/-! ## A130487.P3016977256011233123

`ogf((x-9x^9+8x^10)/(1-3x+3x^2-x^3-x^9+3x^10-3x^11+x^12))`
-/

namespace A130487.P3016977256011233123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 0, 0, 0, 0, 0, 0, 0, -9, 8] [1, -3, 3, -1, 0, 0, 0, 0, 0, -1, 3, -3, 1] n

end

end A130487.P3016977256011233123

namespace A130487

/-- `ogf((x-9x^9+8x^10)/(1-3x+3x^2-x^3-x^9+3x^10-3x^11+x^12))` -/
def P3016977256011233123.Spec : Prop :=
  ∀ n, P3016977256011233123.a n = A130487 n

end A130487

/-! ## A130487.P10518073455560349603

`36*floor(n/9)+A010878(n)*(A010878(n)+1)/2`
-/

namespace A130487.P10518073455560349603
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (36 * ⌊(n : ℚ) / 9⌋ : ℚ) + (A010878 n * (A010878 n + 1) : ℚ) / 2

end

end A130487.P10518073455560349603

namespace A130487

/-- `36*floor(n/9)+A010878(n)*(A010878(n)+1)/2` -/
def P10518073455560349603.Spec : Prop :=
  ∀ n, P10518073455560349603.a n = (A130487 n : ℚ)

end A130487

/-! ## A130487.P18347747802320460114

`∑[n%9]`
-/

namespace A130487.P18347747802320460114
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 9

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130487.P18347747802320460114

namespace A130487

/-- `∑[n%9]` -/
def P18347747802320460114.Spec : Prop :=
  ∀ n, (P18347747802320460114.a n : ℤ) = A130487 n

end A130487

/-! ## A130487.P16307966134264148663

`∑[dr(n+1)-1]`
-/

namespace A130487.P16307966134264148663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.digitalRoot (n + 1 : ℤ) : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130487.P16307966134264148663

namespace A130487

/-- `∑[dr(n+1)-1]` -/
def P16307966134264148663.Spec : Prop :=
  ∀ n, P16307966134264148663.a n = A130487 n

end A130487

/-! ## A130487.P847043925486679202

`∑[floor(log(cosh(dr(n+1))))]`
-/

namespace A130487.P847043925486679202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.log (Real.cosh (SequenceMachineLib.digitalRoot (n + 1 : ℤ) : ℝ))⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130487.P847043925486679202

namespace A130487

/-- `∑[floor(log(cosh(dr(n+1))))]` -/
def P847043925486679202.Spec : Prop :=
  ∀ n, P847043925486679202.a n = A130487 n

end A130487

/-! ## A130487.P89510652621583276

`∑[floor(log(sinh(dr(n+1))))]`
-/

namespace A130487.P89510652621583276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.log (Real.sinh (SequenceMachineLib.digitalRoot (n + 1 : ℤ) : ℝ))⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130487.P89510652621583276

namespace A130487

/-- `∑[floor(log(sinh(dr(n+1))))]` -/
def P89510652621583276.Spec : Prop :=
  ∀ n, P89510652621583276.a n = A130487 n

end A130487

/-! ## A130487.P14813310630367077382

`∑[round(log(cosh(dr(n+1))))]`
-/

namespace A130487.P14813310630367077382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.log (Real.cosh (SequenceMachineLib.digitalRoot (n + 1 : ℤ) : ℝ)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130487.P14813310630367077382

namespace A130487

/-- `∑[round(log(cosh(dr(n+1))))]` -/
def P14813310630367077382.Spec : Prop :=
  ∀ n, P14813310630367077382.a n = A130487 n

end A130487

/-! ## A130487.P6027351567520856844

`∑[round(log(sinh(dr(n+1))))]`
-/

namespace A130487.P6027351567520856844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.log (Real.sinh (SequenceMachineLib.digitalRoot (n + 1 : ℤ) : ℝ)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130487.P6027351567520856844

namespace A130487

/-- `∑[round(log(sinh(dr(n+1))))]` -/
def P6027351567520856844.Spec : Prop :=
  ∀ n, P6027351567520856844.a n = A130487 n

end A130487

/-! ## A130487.P9569688884178882705

`∑[dr(Δ[n-∑[dr(n)]])]`
-/

namespace A130487.P9569688884178882705
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f3 j : ℕ) : ℤ)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (f2 (n + 1) - f2 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130487.P9569688884178882705

namespace A130487

/-- `∑[dr(Δ[n-∑[dr(n)]])]` -/
def P9569688884178882705.Spec : Prop :=
  ∀ n, (P9569688884178882705.a n : ℤ) = A130487 n

end A130487

/-! ## A130487.P8170245371249419247

`a(n-1)+dr(n)%9` with `a(0)=0`
-/

namespace A130487.P8170245371249419247
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + SequenceMachineLib.digitalRoot (n : ℤ) % 9

end

end A130487.P8170245371249419247

namespace A130487

/-- `a(n-1)+dr(n)%9` -/
def P8170245371249419247.Spec : Prop :=
  ∀ n, (P8170245371249419247.a n : ℤ) = A130487 n

end A130487

/-! ## A130487.P12144480641341792592

`∑[log2(2^dr(n+1)/2)]`
-/

namespace A130487.P12144480641341792592
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 ((2 ^ SequenceMachineLib.digitalRoot (n + 1 : ℤ) : ℚ) / 2 : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130487.P12144480641341792592

namespace A130487

/-- `∑[log2(2^dr(n+1)/2)]` -/
def P12144480641341792592.Spec : Prop :=
  ∀ n, P12144480641341792592.a n = (A130487 n : ℝ)

end A130487

/-! ## A130487.P2412112581112255759

`dr(n+1)+a(n-1)-1` with `a(0)=0`
-/

namespace A130487.P2412112581112255759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (SequenceMachineLib.digitalRoot (n + 1 : ℤ) : ℤ) + (a (n - 1) - 1)

end

end A130487.P2412112581112255759

namespace A130487

/-- `dr(n+1)+a(n-1)-1` -/
def P2412112581112255759.Spec : Prop :=
  ∀ n, P2412112581112255759.a n = A130487 n

end A130487

/-! ## A130487.P16715734754681424415

`-∑[1-dr(2*n-(n-1))]`
-/

namespace A130487.P16715734754681424415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (SequenceMachineLib.digitalRoot ((2 * n : ℤ) - ((n : ℤ) - 1)) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ j ∈ Finset.range (n + 1), f1 j)

end

end A130487.P16715734754681424415

namespace A130487

/-- `-∑[1-dr(2*n-(n-1))]` -/
def P16715734754681424415.Spec : Prop :=
  ∀ n, P16715734754681424415.a n = A130487 n

end A130487

/-! ## A130487.P17319890924045942230

`∑[floor(n/(n+1)*dr(n+1))]`
-/

namespace A130487.P17319890924045942230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / (n + 1 : ℚ) * (SequenceMachineLib.digitalRoot (n + 1 : ℤ) : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130487.P17319890924045942230

namespace A130487

/-- `∑[floor(n/(n+1)*dr(n+1))]` -/
def P17319890924045942230.Spec : Prop :=
  ∀ n, P17319890924045942230.a n = A130487 n

end A130487

/-! ## A130487.P9306967163751177996

`∑[A010878(n)]`
-/

namespace A130487.P9306967163751177996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010878 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130487.P9306967163751177996

namespace A130487

/-- `∑[A010878(n)]` -/
def P9306967163751177996.Spec : Prop :=
  ∀ n, P9306967163751177996.a n = A130487 n

end A130487

/-! ## A130487.P16814846589739827505

`∑[A177274(n)-1]`
-/

namespace A130487.P16814846589739827505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177274 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130487.P16814846589739827505

namespace A130487

/-- `∑[A177274(n)-1]` -/
def P16814846589739827505.Spec : Prop :=
  ∀ n, P16814846589739827505.a n = A130487 n

end A130487

/-! ## A130487.P4346121760774020582

`∑[A010888(n+1)-1]`
-/

namespace A130487.P4346121760774020582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010888 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130487.P4346121760774020582

namespace A130487

/-- `∑[A010888(n+1)-1]` -/
def P4346121760774020582.Spec : Prop :=
  ∀ n, P4346121760774020582.a n = A130487 n

end A130487

/-! ## A130487.P17678369174419527318

`∑[8-A141726(n+1)]`
-/

namespace A130487.P17678369174419527318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 - A141726 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130487.P17678369174419527318

namespace A130487

/-- `∑[8-A141726(n+1)]` -/
def P17678369174419527318.Spec : Prop :=
  ∀ n, P17678369174419527318.a n = A130487 n

end A130487

/-! ## A130487.P5557009370978322176

`∑[A256289(a(n-1))]` with `a(0)=0`
-/

namespace A130487.P5557009370978322176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  A256289 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130487.P5557009370978322176

namespace A130487

/-- `∑[A256289(a(n-1))]` -/
def P5557009370978322176.Spec : Prop :=
  ∀ n, P5557009370978322176.a n = A130487 n

end A130487

/-!
# A130488: a(n) = Sum_{k=0..n} (k mod 10) (Partial sums of A010879).

The programs for A130488, the canonical program `A130488.P7958976039166320089` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A130488 has offset 0).

The definition of A130488 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A130488.P5206906121564599064

`ogf((x-10x^10+9x^11)/(1-3x+3x^2-x^3-x^10+3x^11-3x^12+x^13))`
-/

namespace A130488.P5206906121564599064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 0, 0, 0, 0, 0, 0, 0, 0, -10, 9] [1, -3, 3, -1, 0, 0, 0, 0, 0, 0, -1, 3, -3, 1] n

end

end A130488.P5206906121564599064

namespace A130488

/-- `ogf((x-10x^10+9x^11)/(1-3x+3x^2-x^3-x^10+3x^11-3x^12+x^13))` -/
def P5206906121564599064.Spec : Prop :=
  ∀ n, P5206906121564599064.a n = A130488 n

end A130488

/-! ## A130488.P7958976039166320089

`45*floor(n/10)+A010879(n)*(A010879(n)+1)/2`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A130488

/-- `45*floor(n/10)+A010879(n)*(A010879(n)+1)/2` -/
def P7958976039166320089.Spec : Prop :=
  ∀ n, P7958976039166320089.a n = (A130488 n : ℚ)

end A130488

/-! ## A130488.P7791071897408020349

`∑[n%10]`
-/

namespace A130488.P7791071897408020349
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 10

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130488.P7791071897408020349

namespace A130488

/-- `∑[n%10]` -/
def P7791071897408020349.Spec : Prop :=
  ∀ n, (P7791071897408020349.a n : ℤ) = A130488 n

end A130488

/-! ## A130488.P7589598568234165187

`∑[n-9*floor(n/10)-floor(n/10)]`
-/

namespace A130488.P7589598568234165187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 9 * ⌊(n : ℚ) / 10⌋ - ⌊(n : ℚ) / 10⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130488.P7589598568234165187

namespace A130488

/-- `∑[n-9*floor(n/10)-floor(n/10)]` -/
def P7589598568234165187.Spec : Prop :=
  ∀ n, P7589598568234165187.a n = A130488 n

end A130488

/-! ## A130488.P2921633119088719504

`∑{digits}[A057137(n), #]`
-/

namespace A130488.P2921633119088719504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057137 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A130488.P2921633119088719504

namespace A130488

/-- `∑{digits}[A057137(n), #]` -/
def P2921633119088719504.Spec : Prop :=
  ∀ n, (P2921633119088719504.a n : ℤ) = A130488 n

end A130488

/-! ## A130488.P15905137215453942188

`∑{digits}[A057138(n), #]`
-/

namespace A130488.P15905137215453942188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057138 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A130488.P15905137215453942188

namespace A130488

/-- `∑{digits}[A057138(n), #]` -/
def P15905137215453942188.Spec : Prop :=
  ∀ n, (P15905137215453942188.a n : ℤ) = A130488 n

end A130488

/-!
# A130489: a(n) = Sum_{k=0..n} (k mod 11) (Partial sums of A010880).

The programs for A130489, the canonical program `A130489.P13400967536131933458` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A130489 has offset 0).

The definition of A130489 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A130489.P9516863267138307006

`ogf((x-11x^11+10x^12)/(1-3x+3x^2-x^3-x^11+3x^12-3x^13+x^14))`
-/

namespace A130489.P9516863267138307006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, -11, 10] [1, -3, 3, -1, 0, 0, 0, 0, 0, 0, 0, -1, 3, -3, 1] n

end

end A130489.P9516863267138307006

namespace A130489

/-- `ogf((x-11x^11+10x^12)/(1-3x+3x^2-x^3-x^11+3x^12-3x^13+x^14))` -/
def P9516863267138307006.Spec : Prop :=
  ∀ n, P9516863267138307006.a n = A130489 n

end A130489

/-! ## A130489.P13400967536131933458

`55*floor(n/11)+A010880(n)*(A010880(n)+1)/2`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A130489

/-- `55*floor(n/11)+A010880(n)*(A010880(n)+1)/2` -/
def P13400967536131933458.Spec : Prop :=
  ∀ n, P13400967536131933458.a n = (A130489 n : ℚ)

end A130489

/-! ## A130489.P16963570545943008648

`∑[n%11]`
-/

namespace A130489.P16963570545943008648
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 11

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130489.P16963570545943008648

namespace A130489

/-- `∑[n%11]` -/
def P16963570545943008648.Spec : Prop :=
  ∀ n, (P16963570545943008648.a n : ℤ) = A130489 n

end A130489

/-! ## A130489.P5062095038085628927

`∑[A010880(n)]`
-/

namespace A130489.P5062095038085628927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010880 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130489.P5062095038085628927

namespace A130489

/-- `∑[A010880(n)]` -/
def P5062095038085628927.Spec : Prop :=
  ∀ n, P5062095038085628927.a n = A130489 n

end A130489

/-! ## A130489.P3120814122687087432

`∑[A275010(a(n-1))]` with `a(0)=0`
-/

namespace A130489.P3120814122687087432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  A275010 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130489.P3120814122687087432

namespace A130489

/-- `∑[A275010(a(n-1))]` -/
def P3120814122687087432.Spec : Prop :=
  ∀ n, P3120814122687087432.a n = A130489 n

end A130489

/-! ## A130489.P10917500942427114529

`∑[A090175(a(n-1)+1)]` with `a(0)=0`
-/

namespace A130489.P10917500942427114529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  A090175 (f1 (n - 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130489.P10917500942427114529

namespace A130489

/-- `∑[A090175(a(n-1)+1)]` -/
def P10917500942427114529.Spec : Prop :=
  ∀ n, P10917500942427114529.a n = A130489 n

end A130489

/-! ## A130489.P3754222659658956577

`∑[A259434(a(n-1)+1)]` with `a(0)=0`
-/

namespace A130489.P3754222659658956577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  A259434 (f1 (n - 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130489.P3754222659658956577

namespace A130489

/-- `∑[A259434(a(n-1)+1)]` -/
def P3754222659658956577.Spec : Prop :=
  ∀ n, P3754222659658956577.a n = A130489 n

end A130489

/-! ## A130489.P7726629385301129485

`∑[A278946(a(n-1)+1)]` with `a(0)=0`
-/

namespace A130489.P7726629385301129485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  A278946 (f1 (n - 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130489.P7726629385301129485

namespace A130489

/-- `∑[A278946(a(n-1)+1)]` -/
def P7726629385301129485.Spec : Prop :=
  ∀ n, P7726629385301129485.a n = A130489 n

end A130489

/-!
# A130490: a(n) = Sum_{k=0..n} (k mod 12) (Partial sums of A010881).

The programs for A130490, the canonical program `A130490.P16503436500534729129` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A130490 has offset 0).

The definition of A130490 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A130490.P2755296982014189546

`ogf((x-12x^12+11x^13)/(1-3x+3x^2-x^3-x^12+3x^13-3x^14+x^15))`
-/

namespace A130490.P2755296982014189546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -12, 11] [1, -3, 3, -1, 0, 0, 0, 0, 0, 0, 0, 0, -1, 3, -3, 1] n

end

end A130490.P2755296982014189546

namespace A130490

/-- `ogf((x-12x^12+11x^13)/(1-3x+3x^2-x^3-x^12+3x^13-3x^14+x^15))` -/
def P2755296982014189546.Spec : Prop :=
  ∀ n, P2755296982014189546.a n = A130490 n

end A130490

/-! ## A130490.P16503436500534729129

`66*floor(n/12)+A010881(n)*(A010881(n)+1)/2`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A130490

/-- `66*floor(n/12)+A010881(n)*(A010881(n)+1)/2` -/
def P16503436500534729129.Spec : Prop :=
  ∀ n, P16503436500534729129.a n = (A130490 n : ℚ)

end A130490

/-! ## A130490.P10092054686084705976

`∑[n%12]`
-/

namespace A130490.P10092054686084705976
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 12

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130490.P10092054686084705976

namespace A130490

/-- `∑[n%12]` -/
def P10092054686084705976.Spec : Prop :=
  ∀ n, (P10092054686084705976.a n : ℤ) = A130490 n

end A130490

/-! ## A130490.P3708264721632684504

`∑[n-12*floor(n/12)]`
-/

namespace A130490.P3708264721632684504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 12 * ⌊(n : ℚ) / 12⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130490.P3708264721632684504

namespace A130490

/-- `∑[n-12*floor(n/12)]` -/
def P3708264721632684504.Spec : Prop :=
  ∀ n, P3708264721632684504.a n = A130490 n

end A130490

/-! ## A130490.P7551657264155353996

`a(n-1)+n-12*floor(n/12)` with `a(0)=0`
-/

namespace A130490.P7551657264155353996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + ((n : ℤ) - 12 * ⌊(n : ℚ) / 12⌋)

end

end A130490.P7551657264155353996

namespace A130490

/-- `a(n-1)+n-12*floor(n/12)` -/
def P7551657264155353996.Spec : Prop :=
  ∀ n, P7551657264155353996.a n = A130490 n

end A130490

/-! ## A130490.P6671081049973749576

`2*∑[A010881(n)/2]`
-/

namespace A130490.P6671081049973749576
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A010881 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A130490.P6671081049973749576

namespace A130490

/-- `2*∑[A010881(n)/2]` -/
def P6671081049973749576.Spec : Prop :=
  ∀ n, P6671081049973749576.a n = (A130490 n : ℚ)

end A130490

/-! ## A130490.P13643896366114813271

`∑[A034326(n+1)]-(n+1)`
-/

namespace A130490.P13643896366114813271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034326 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n + 1 : ℤ)

end

end A130490.P13643896366114813271

namespace A130490

/-- `∑[A034326(n+1)]-(n+1)` -/
def P13643896366114813271.Spec : Prop :=
  ∀ n, P13643896366114813271.a n = A130490 n

end A130490

/-! ## A130490.P13272044349820671650

`∑[A087999(a(n-1)+1)]-(n+1)` with `a(0)=1`
-/

namespace A130490.P13272044349820671650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A087999 (f1 (n - 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n + 1 : ℤ)

end

end A130490.P13272044349820671650

namespace A130490

/-- `∑[A087999(a(n-1)+1)]-(n+1)` -/
def P13272044349820671650.Spec : Prop :=
  ∀ n, P13272044349820671650.a n = A130490 n

end A130490

/-! ## A130490.P15758844519108284758

`∑[A167973(a(n-1)+1)]-(n+1)` with `a(0)=1`
-/

namespace A130490.P15758844519108284758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A167973 (f1 (n - 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n + 1 : ℤ)

end

end A130490.P15758844519108284758

namespace A130490

/-- `∑[A167973(a(n-1)+1)]-(n+1)` -/
def P15758844519108284758.Spec : Prop :=
  ∀ n, P15758844519108284758.a n = A130490 n

end A130490

/-! ## A130490.P4051844766161852344

`∑[A010881(n+1)]-A010881(n+1)`
-/

namespace A130490.P4051844766161852344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010881 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A010881 (n + 1)

end

end A130490.P4051844766161852344

namespace A130490

/-- `∑[A010881(n+1)]-A010881(n+1)` -/
def P4051844766161852344.Spec : Prop :=
  ∀ n, P4051844766161852344.a n = A130490 n

end A130490

/-!
# A130491: a(n) = numerator of Sum_{k=1..n} k^mu(n+1-k), where mu(m) = A008683(m).

The programs for A130491, there is no canonical definition to state claims against.
-/

/-! ## A130491.P12854611578959919790

`A300330(∑[A002710(n)])`
-/

namespace A130491.P12854611578959919790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002710 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300330 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A130491.P12854611578959919790

/-! ## A130491.P3597217184059441106

`∑[A007305(∑[A022086(3*n+2)])]`
-/

namespace A130491.P3597217184059441106
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022086 (3 * n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007305 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130491.P3597217184059441106

/-!
# A130492: a(n) = denominator of Sum_{k=1..n} k^mu(n+1-k), where mu(m) = A008683(m).

The programs for A130492, there is no canonical definition to state claims against.
-/

/-! ## A130492.P5805809839481287078

`A305702(A101157((n+2)²))`
-/

namespace A130492.P5805809839481287078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305702 (A101157 ((n + 2) ^ 2)).toNat

end

end A130492.P5805809839481287078

/-! ## A130492.P3609514506466463508

`A305702(n+2)+A020761(A062319(n))`
-/

namespace A130492.P3609514506466463508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305702 (n + 2) + A020761 (A062319 n).toNat

end

end A130492.P3609514506466463508

/-! ## A130492.P11939099366609680667

`A046951(A027642(n))*A305702(n+2)`
-/

namespace A130492.P11939099366609680667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046951 (A027642 n).toNat * A305702 (n + 2)

end

end A130492.P11939099366609680667

/-! ## A130492.P10036664712616514849

`A305702(n+2)%A283072(A035985(n))`
-/

namespace A130492.P10036664712616514849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A305702 (n + 2)) (A283072 (A035985 n).toNat)

end

end A130492.P10036664712616514849

/-! ## A130492.P140487573621024932

`A305702(n+2)+A049986(A360006(2*(n+1)))`
-/

namespace A130492.P140487573621024932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305702 (n + 2) + A049986 (A360006 (2 * (n + 1))).toNat

end

end A130492.P140487573621024932

/-!
# A130493: Triangle read by rows in which row n contains n! repeated n times.

The programs for A130493, the canonical program `A130493.P7392338868850195917` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A130493 has offset 1).

The definition of A130493 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2415 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A130493.P2948692713018224328

`∑[char[∑[n]]]!`
-/

namespace A130493.P2948692713018224328
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A130493.P2948692713018224328

namespace A130493

/-- `∑[char[∑[n]]]!` -/
def P2948692713018224328.Spec : Prop :=
  ∀ n, (P2948692713018224328.a n : ℤ) = A130493 (n + 1)

end A130493

/-! ## A130493.P11632324896323898597

`and((row(n)+1)!, -1)`
-/

namespace A130493.P11632324896323898597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (Nat.factorial (SequenceMachineLib.triRow n + 1) : ℤ) (-1)

end

end A130493.P11632324896323898597

namespace A130493

/-- `and((row(n)+1)!, -1)` -/
def P11632324896323898597.Spec : Prop :=
  ∀ n, P11632324896323898597.a n = A130493 (n + 1)

end A130493

/-! ## A130493.P16349815184864658003

`(row(n)+1)*row(n)!`
-/

namespace A130493.P16349815184864658003
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.triRow n + 1) * Nat.factorial (SequenceMachineLib.triRow n)

end

end A130493.P16349815184864658003

namespace A130493

/-- `(row(n)+1)*row(n)!` -/
def P16349815184864658003.Spec : Prop :=
  ∀ n, (P16349815184864658003.a n : ℤ) = A130493 (n + 1)

end A130493

/-! ## A130493.P10150912889364366610

`T(col(n), T(n-1,k))+(row(n)+1)*T(n-1,k)` with `a(0)=1`
-/

namespace A130493.P10150912889364366610
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.triAt a (SequenceMachineLib.triCol n : ℤ) ((SequenceMachineLib.triUp a n : ℕ) : ℤ) + (SequenceMachineLib.triRow n + 1) * SequenceMachineLib.triUp a n

end

end A130493.P10150912889364366610

namespace A130493

/-- `T(col(n), T(n-1,k))+(row(n)+1)*T(n-1,k)` -/
def P10150912889364366610.Spec : Prop :=
  ∀ n, (P10150912889364366610.a n : ℤ) = A130493 (n + 1)

end A130493

/-! ## A130493.P5178114056183559908

`lcm((-1)^∑{e}[n+1, #], (row(n)+1)!)`
-/

namespace A130493.P5178114056183559908
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)) (Nat.factorial (SequenceMachineLib.triRow n + 1) : ℤ)

end

end A130493.P5178114056183559908

namespace A130493

/-- `lcm((-1)^∑{e}[n+1, #], (row(n)+1)!)` -/
def P5178114056183559908.Spec : Prop :=
  ∀ n, (P5178114056183559908.a n : ℤ) = A130493 (n + 1)

end A130493

/-! ## A130493.P5111591571708915023

`(row(n)+1)*T(row(n)-1, 1)` with `a(0)=1, a(1)=2, a(2)=2`
-/

namespace A130493.P5111591571708915023
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 2] fun n a =>
  (SequenceMachineLib.triRow n + 1) * SequenceMachineLib.triAt a ((SequenceMachineLib.triRow n : ℤ) - 1) 1

end

end A130493.P5111591571708915023

namespace A130493

/-- `(row(n)+1)*T(row(n)-1, 1)` -/
def P5111591571708915023.Spec : Prop :=
  ∀ n, (P5111591571708915023.a n : ℤ) = A130493 (n + 1)

end A130493

/-! ## A130493.P7392338868850195917

`(row(n)+1)*(T(n-1,k-1)+T(n-1,k)-row(n)*T(n-2,k-1))` with `a(0)=1`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A130493

/-- `(row(n)+1)*(T(n-1,k-1)+T(n-1,k)-row(n)*T(n-2,k-1))` -/
def P7392338868850195917.Spec : Prop :=
  ∀ n, P7392338868850195917.a n = A130493 (n + 1)

theorem P7392338868850195917.correct : P7392338868850195917.Spec := by
  intro n
  simp only [A130493, Nat.add_sub_cancel]

end A130493

/-! ## A130493.P9785975430974418445

`T(n,k-1)+(row(n)+1)*(T(n-1,k)-row(n)*T(n-2,k-1))` with `a(0)=1`
-/

namespace A130493.P9785975430974418445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.triLeft a n + (SequenceMachineLib.triRow n + 1 : ℤ) * (SequenceMachineLib.triUp a n - (SequenceMachineLib.triRow n : ℤ) * SequenceMachineLib.triUp2Left a n)

end

end A130493.P9785975430974418445

namespace A130493

/-- `T(n,k-1)+(row(n)+1)*(T(n-1,k)-row(n)*T(n-2,k-1))` -/
def P9785975430974418445.Spec : Prop :=
  ∀ n, P9785975430974418445.a n = A130493 (n + 1)

end A130493

/-! ## A130493.P12405224518971495089

`T(row(n), 2*T(n-1,k))+(row(n)+1)*T(n-1,k)` with `a(0)=1`
-/

namespace A130493.P12405224518971495089
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.triAt a (SequenceMachineLib.triRow n : ℤ) (2 * SequenceMachineLib.triUp a n : ℤ) + (SequenceMachineLib.triRow n + 1) * SequenceMachineLib.triUp a n

end

end A130493.P12405224518971495089

namespace A130493

/-- `T(row(n), 2*T(n-1,k))+(row(n)+1)*T(n-1,k)` -/
def P12405224518971495089.Spec : Prop :=
  ∀ n, (P12405224518971495089.a n : ℤ) = A130493 (n + 1)

end A130493

/-! ## A130493.P12143945045250730942

`A000142(∑[char[∑[n]]])`
-/

namespace A130493.P12143945045250730942
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A130493.P12143945045250730942

namespace A130493

/-- `A000142(∑[char[∑[n]]])` -/
def P12143945045250730942.Spec : Prop :=
  ∀ n, P12143945045250730942.a n = A130493 (n + 1)

end A130493

/-! ## A130493.P17377653685817321024

`a(n-1)*A130296(n+1)` with `a(0)=1`
-/

namespace A130493.P17377653685817321024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A130296 (n + 1)

end

end A130493.P17377653685817321024

namespace A130493

/-- `a(n-1)*A130296(n+1)` -/
def P17377653685817321024.Spec : Prop :=
  ∀ n, P17377653685817321024.a n = A130493 (n + 1)

end A130493

/-! ## A130493.P15000312989494407221

`A214078(A061885(n))`
-/

namespace A130493.P15000312989494407221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214078 (A061885 n).toNat

end

end A130493.P15000312989494407221

namespace A130493

/-- `A214078(A061885(n))` -/
def P15000312989494407221.Spec : Prop :=
  ∀ n, P15000312989494407221.a n = A130493 (n + 1)

end A130493

/-! ## A130493.P1338254888754571443

`A187741(A131507(n))`
-/

namespace A130493.P1338254888754571443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187741 (A131507 n).toNat

end

end A130493.P1338254888754571443

namespace A130493

/-- `A187741(A131507(n))` -/
def P1338254888754571443.Spec : Prop :=
  ∀ n, P1338254888754571443.a n = A130493 (n + 1)

end A130493

/-! ## A130493.P16858530711949935104

`A214080(A195437(n))`
-/

namespace A130493.P16858530711949935104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214080 (A195437 n).toNat

end

end A130493.P16858530711949935104

namespace A130493

/-- `A214080(A195437(n))` -/
def P16858530711949935104.Spec : Prop :=
  ∀ n, P16858530711949935104.a n = A130493 (n + 1)

end A130493

/-! ## A130493.P5867132322105691595

`A132369(A005145(n+1))`
-/

namespace A130493.P5867132322105691595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132369 (A005145 (n + 1)).toNat

end

end A130493.P5867132322105691595

namespace A130493

/-- `A132369(A005145(n+1))` -/
def P5867132322105691595.Spec : Prop :=
  ∀ n, P5867132322105691595.a n = A130493 (n + 1)

end A130493

/-! ## A130493.P10867511620218929890

`A028421(A127739(n+1))`
-/

namespace A130493.P10867511620218929890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028421 (A127739 (n + 1)).toNat

end

end A130493.P10867511620218929890

namespace A130493

/-- `A028421(A127739(n+1))` -/
def P10867511620218929890.Spec : Prop :=
  ∀ n, P10867511620218929890.a n = A130493 (n + 1)

end A130493

/-! ## A130493.P11135770984566187732

`A033295(A140978(n+1))`
-/

namespace A130493.P11135770984566187732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033295 (A140978 (n + 1)).toNat

end

end A130493.P11135770984566187732

namespace A130493

/-- `A033295(A140978(n+1))` -/
def P11135770984566187732.Spec : Prop :=
  ∀ n, P11135770984566187732.a n = A130493 (n + 1)

end A130493

/-! ## A130493.P2358314964539365743

`A214078(A001614(n+1))`
-/

namespace A130493.P2358314964539365743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214078 (A001614 (n + 1)).toNat

end

end A130493.P2358314964539365743

namespace A130493

/-- `A214078(A001614(n+1))` -/
def P2358314964539365743.Spec : Prop :=
  ∀ n, P2358314964539365743.a n = A130493 (n + 1)

end A130493

/-! ## A130493.P9272042882414230728

`A214078(A004201(n+1))`
-/

namespace A130493.P9272042882414230728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214078 (A004201 (n + 1)).toNat

end

end A130493.P9272042882414230728

namespace A130493

/-- `A214078(A004201(n+1))` -/
def P9272042882414230728.Spec : Prop :=
  ∀ n, P9272042882414230728.a n = A130493 (n + 1)

end A130493

/-!
# A130494: Row sums of triangle A130478.

The programs for A130494, there is no canonical definition to state claims against.
-/

/-! ## A130494.P1752694972402899744

`∑[(n+2)*n!]-n!`
-/

namespace A130494.P1752694972402899744
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 2) * Nat.factorial n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (Nat.factorial n : ℤ)

end

end A130494.P1752694972402899744

/-! ## A130494.P11460245712746667654

`∑[(n+2)!/(n+1)]-n!`
-/

namespace A130494.P11460245712746667654
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 2) : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (Nat.factorial n : ℚ)

end

end A130494.P11460245712746667654

/-! ## A130494.P3359397200725360045

`Δ[n!]+∑[∏[n!%2+n]]`
-/

namespace A130494.P3359397200725360045
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n % 2 + n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f3 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) + ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A130494.P3359397200725360045

/-! ## A130494.P11621615538387388567

`(n+1)!+a(n-1)+(n-1)!` with `a(0)=1`
-/

namespace A130494.P11621615538387388567
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.factorial (n + 1) + (a (n - 1) + Nat.factorial ((n : ℤ) - 1).toNat)

end

end A130494.P11621615538387388567

/-! ## A130494.P9268777406672440974

`∑[(n!+n*(n+1)!)/round(sqrt(n²+1))]`
-/

namespace A130494.P9268777406672440974
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n + n * Nat.factorial (n + 1) : ℚ) / (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ)) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130494.P9268777406672440974

/-!
# A130495: Number of compositions of 2n in which each part has even multiplicity.

The programs for A130495, there is no canonical definition to state claims against.
-/

/-! ## A130495.P16111640612854591527

`A161655(A035554(∑[n]))`
-/

namespace A130495.P16111640612854591527
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161655 (A035554 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A130495.P16111640612854591527

/-! ## A130495.P3058537577093238362

`A161655(A006027(n+1))`
-/

namespace A130495.P3058537577093238362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161655 (A006027 (n + 1)).toNat

end

end A130495.P3058537577093238362

/-! ## A130495.P11321745000418746293

`A007897(A174702(n+1))`
-/

namespace A130495.P11321745000418746293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007897 (A174702 (n + 1)).toNat

end

end A130495.P11321745000418746293

/-!
# A130496: Repetition of even numbers five times.

The programs for A130496, the canonical program `A130496.P5211275761381924812` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A130496 has offset 0).

The definition of A130496 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A130496.P5211275761381924812

`2*floor(n/5)`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A130496

/-- `2*floor(n/5)` -/
def P5211275761381924812.Spec : Prop :=
  ∀ n, P5211275761381924812.a n = A130496 n

theorem P5211275761381924812.correct : P5211275761381924812.Spec := by
  intro n
  simp only [A130496]

end A130496

/-! ## A130496.P11671320302785536262

`∑[∑{p}[n, val(#², 5)]]`
-/

namespace A130496.P11671320302785536262
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), SequenceMachineLib.valuation (p ^ 2) 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130496.P11671320302785536262

namespace A130496

/-- `∑[∑{p}[n, val(#², 5)]]` -/
def P11671320302785536262.Spec : Prop :=
  ∀ n, (P11671320302785536262.a n : ℤ) = A130496 n

end A130496

/-! ## A130496.P4066480223482921887

`∑[val(∏{p}[n, #²], 5)]`
-/

namespace A130496.P4066480223482921887
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (∏ p ∈ Nat.primeFactors (f2 n), p ^ 2) 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130496.P4066480223482921887

namespace A130496

/-- `∑[val(∏{p}[n, #²], 5)]` -/
def P4066480223482921887.Spec : Prop :=
  ∀ n, (P4066480223482921887.a n : ℤ) = A130496 n

end A130496

/-! ## A130496.P13007294815073559769

`∑[2%gcd(5, n)]-2`
-/

namespace A130496.P13007294815073559769
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 % Nat.gcd 5 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 2

end

end A130496.P13007294815073559769

namespace A130496

/-- `∑[2%gcd(5, n)]-2` -/
def P13007294815073559769.Spec : Prop :=
  ∀ n, P13007294815073559769.a n = A130496 n

end A130496

/-! ## A130496.P488385076137977376

`∑[8%((2-n²)%5)]`
-/

namespace A130496.P488385076137977376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 8 (Int.tmod (2 - (n ^ 2 : ℤ)) 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130496.P488385076137977376

namespace A130496

/-- `∑[8%((2-n²)%5)]` -/
def P488385076137977376.Spec : Prop :=
  ∀ n, P488385076137977376.a n = A130496 n

end A130496

/-! ## A130496.P12096809110180122667

`lcm(2, 2*round((n-2)/5))`
-/

namespace A130496.P12096809110180122667
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (2 * SequenceMachineLib.roundAway (((n : ℤ) - 2 : ℚ) / 5))

end

end A130496.P12096809110180122667

namespace A130496

/-- `lcm(2, 2*round((n-2)/5))` -/
def P12096809110180122667.Spec : Prop :=
  ∀ n, (P12096809110180122667.a n : ℤ) = A130496 n

end A130496

/-! ## A130496.P4079458727801872242

`(2*comp[6*n])%(n+1)`
-/

namespace A130496.P4079458727801872242
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n % (n + 1)

end

end A130496.P4079458727801872242

namespace A130496

/-- `(2*comp[6*n])%(n+1)` -/
def P4079458727801872242.Spec : Prop :=
  ∀ n, (P4079458727801872242.a n : ℤ) = A130496 n

end A130496

/-! ## A130496.P6574716182683214290

`a(n-5)+2` with `a(0)=0, a(1)=0, a(2)=0, a(3)=0, a(4)=0`
-/

namespace A130496.P6574716182683214290
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 0, 0, 0] fun n a =>
  a (n - 5) + 2

end

end A130496.P6574716182683214290

namespace A130496

/-- `a(n-5)+2` -/
def P6574716182683214290.Spec : Prop :=
  ∀ n, (P6574716182683214290.a n : ℤ) = A130496 n

end A130496

/-! ## A130496.P16962783133278050337

`(2*n-2*n%5)/5`
-/

namespace A130496.P16962783133278050337
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 * n : ℤ) - ((2 * (n % 5) : ℕ) : ℤ) : ℚ) / 5

end

end A130496.P16962783133278050337

namespace A130496

/-- `(2*n-2*n%5)/5` -/
def P16962783133278050337.Spec : Prop :=
  ∀ n, P16962783133278050337.a n = (A130496 n : ℚ)

end A130496

/-! ## A130496.P2809682740497125600

`∑[floor(a(n-5))]` with `a(0)=0, a(1)=0, a(2)=0, a(3)=0, a(4)=0, a(5)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A130496.P2809682740497125600
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 0, 0, 0, 2] fun n f1 =>
  f1 (n - 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130496.P2809682740497125600

namespace A130496

/-- `∑[floor(a(n-5))]` -/
def P2809682740497125600.Spec : Prop :=
  ∀ n, (P2809682740497125600.a n : ℤ) = A130496 n

end A130496

/-! ## A130496.P5331834859910302124

`A130497(n)-1`
-/

namespace A130496.P5331834859910302124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130497 n - 1

end

end A130496.P5331834859910302124

namespace A130496

/-- `A130497(n)-1` -/
def P5331834859910302124.Spec : Prop :=
  ∀ n, P5331834859910302124.a n = A130496 n

theorem P5331834859910302124.correct : P5331834859910302124.Spec := by
  intro n
  simp only [A130496, Nat.add_sub_cancel, A130496.P5331834859910302124.a, A130496.P5211275761381924812.a, A130497, A130497.P10916058717388302017.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A130496

/-! ## A130496.P7906495993925925572

`A047337(n+1)-n`
-/

namespace A130496.P7906495993925925572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047337 (n + 1) - (n : ℤ)

end

end A130496.P7906495993925925572

namespace A130496

/-- `A047337(n+1)-n` -/
def P7906495993925925572.Spec : Prop :=
  ∀ n, P7906495993925925572.a n = A130496 n

end A130496

/-! ## A130496.P15983265514603240839

`(n-A358012(n))/2`
-/

namespace A130496.P15983265514603240839
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - A358012 n : ℚ) / 2

end

end A130496.P15983265514603240839

namespace A130496

/-- `(n-A358012(n))/2` -/
def P15983265514603240839.Spec : Prop :=
  ∀ n, P15983265514603240839.a n = (A130496 n : ℚ)

end A130496

/-! ## A130496.P1763547588028469527

`A047369(n+1)-(n+1)`
-/

namespace A130496.P1763547588028469527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047369 (n + 1) - (n + 1 : ℤ)

end

end A130496.P1763547588028469527

namespace A130496

/-- `A047369(n+1)-(n+1)` -/
def P1763547588028469527.Spec : Prop :=
  ∀ n, P1763547588028469527.a n = A130496 n

theorem P1763547588028469527.correct : P1763547588028469527.Spec := by
  intro n
  simp only [A130496, Nat.add_sub_cancel, A130496.P1763547588028469527.a, A130496.P5211275761381924812.a, A047369, A047369.P276909241574497612.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A130496

/-! ## A130496.P8180247227941710947

`A047305(n+1)-(n+2)`
-/

namespace A130496.P8180247227941710947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047305 (n + 1) - (n + 2 : ℤ)

end

end A130496.P8180247227941710947

namespace A130496

/-- `A047305(n+1)-(n+2)` -/
def P8180247227941710947.Spec : Prop :=
  ∀ n, P8180247227941710947.a n = A130496 n

end A130496

/-! ## A130496.P2594137992762063194

`A005843(A002266(n))`
-/

namespace A130496.P2594137992762063194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A002266 n).toNat

end

end A130496.P2594137992762063194

namespace A130496

/-- `A005843(A002266(n))` -/
def P2594137992762063194.Spec : Prop :=
  ∀ n, P2594137992762063194.a n = A130496 n

end A130496

/-! ## A130496.P11754538287035018640

`A052928(A057354(n))`
-/

namespace A130496.P11754538287035018640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052928 (A057354 n).toNat

end

end A130496.P11754538287035018640

namespace A130496

/-- `A052928(A057354(n))` -/
def P11754538287035018640.Spec : Prop :=
  ∀ n, P11754538287035018640.a n = A130496 n

end A130496

/-! ## A130496.P3767211363277348840

`A052928(A117451(n))`
-/

namespace A130496.P3767211363277348840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052928 (A117451 n).toNat

end

end A130496.P3767211363277348840

namespace A130496

/-- `A052928(A117451(n))` -/
def P3767211363277348840.Spec : Prop :=
  ∀ n, P3767211363277348840.a n = A130496 n

end A130496

/-! ## A130496.P10448224628511640884

`A122461(A090223(n))`
-/

namespace A130496.P10448224628511640884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122461 (A090223 n).toNat

end

end A130496.P10448224628511640884

namespace A130496

/-- `A122461(A090223(n))` -/
def P10448224628511640884.Spec : Prop :=
  ∀ n, P10448224628511640884.a n = A130496 n

end A130496

/-! ## A130496.P18063192537647313860

`A004524(A289195(n))`
-/

namespace A130496.P18063192537647313860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A289195 n).toNat

end

end A130496.P18063192537647313860

namespace A130496

/-- `A004524(A289195(n))` -/
def P18063192537647313860.Spec : Prop :=
  ∀ n, P18063192537647313860.a n = A130496 n

end A130496

/-!
# A130497: Repetition of odd numbers five times.

The programs for A130497, the canonical program `A130497.P10916058717388302017` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A130497 has offset 0).

The definition of A130497 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A130497.P10916058717388302017

`2*floor(n/5)+1`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A130497

/-- `2*floor(n/5)+1` -/
def P10916058717388302017.Spec : Prop :=
  ∀ n, P10916058717388302017.a n = A130497 n

theorem P10916058717388302017.correct : P10916058717388302017.Spec := by
  intro n
  simp only [A130497]

end A130497

/-! ## A130497.P18091185413148354684

`ogf((1+x^5)/(1-x-x^5+x^6))`
-/

namespace A130497.P18091185413148354684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, 0, 0, 0, 1] [1, -1, 0, 0, 0, -1, 1] n

end

end A130497.P18091185413148354684

namespace A130497

/-- `ogf((1+x^5)/(1-x-x^5+x^6))` -/
def P18091185413148354684.Spec : Prop :=
  ∀ n, P18091185413148354684.a n = A130497 n

end A130497

/-! ## A130497.P5788216734687189249

`or(1, floor(2*n/5))`
-/

namespace A130497.P5788216734687189249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ⌊2 * ((n : ℚ) / 5)⌋

end

end A130497.P5788216734687189249

namespace A130497

/-- `or(1, floor(2*n/5))` -/
def P5788216734687189249.Spec : Prop :=
  ∀ n, P5788216734687189249.a n = A130497 n

end A130497

/-! ## A130497.P3309509842184253218

`xor(1, 2*floor(n/5))`
-/

namespace A130497.P3309509842184253218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (2 * ⌊(n : ℚ) / 5⌋)

end

end A130497.P3309509842184253218

namespace A130497

/-- `xor(1, 2*floor(n/5))` -/
def P3309509842184253218.Spec : Prop :=
  ∀ n, P3309509842184253218.a n = A130497 n

end A130497

/-! ## A130497.P4980665058268327996

`abs(or(1, floor(Δ[n²]/5)))`
-/

namespace A130497.P4980665058268327996
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.lor 1 ⌊((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℚ) / 5⌋|

end

end A130497.P4980665058268327996

namespace A130497

/-- `abs(or(1, floor(Δ[n²]/5)))` -/
def P4980665058268327996.Spec : Prop :=
  ∀ n, P4980665058268327996.a n = A130497 n

end A130497

/-! ## A130497.P7421101937134384410

`(∑[gcd(5, n)]-(n+3))/2`
-/

namespace A130497.P7421101937134384410
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 5 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n + 3 : ℤ) : ℚ) / 2

end

end A130497.P7421101937134384410

namespace A130497

/-- `(∑[gcd(5, n)]-(n+3))/2` -/
def P7421101937134384410.Spec : Prop :=
  ∀ n, P7421101937134384410.a n = (A130497 n : ℚ)

end A130497

/-! ## A130497.P8977022844669196055

`∑[lcm(2, a(n-5))]` with `a(0)=1, a(1)=0, a(2)=0, a(3)=0, a(4)=0`
-/

namespace A130497.P8977022844669196055
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 0, 0, 0] fun n f1 =>
  Nat.lcm 2 (f1 (n - 5))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130497.P8977022844669196055

namespace A130497

/-- `∑[lcm(2, a(n-5))]` -/
def P8977022844669196055.Spec : Prop :=
  ∀ n, (P8977022844669196055.a n : ℤ) = A130497 n

end A130497

/-! ## A130497.P4344278933260300758

`∑[floor(a(n-5))]` with `a(0)=1, a(1)=0, a(2)=0, a(3)=0, a(4)=0, a(5)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A130497.P4344278933260300758
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 0, 0, 0, 2] fun n f1 =>
  f1 (n - 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130497.P4344278933260300758

namespace A130497

/-- `∑[floor(a(n-5))]` -/
def P4344278933260300758.Spec : Prop :=
  ∀ n, (P4344278933260300758.a n : ℤ) = A130497 n

end A130497

/-! ## A130497.P8020100694277926162

`-or(1, -ceil((2*n+1)/5))`
-/

namespace A130497.P8020100694277926162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.lor 1 (-⌈(2 * n + 1 : ℚ) / 5⌉)

end

end A130497.P8020100694277926162

namespace A130497

/-- `-or(1, -ceil((2*n+1)/5))` -/
def P8020100694277926162.Spec : Prop :=
  ∀ n, P8020100694277926162.a n = A130497 n

end A130497

/-! ## A130497.P8992676550820441710

`∑[a(n-5)%3]` with `a(0)=1, a(1)=0, a(2)=0, a(3)=0, a(4)=0, a(5)=2`
-/

namespace A130497.P8992676550820441710
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 0, 0, 0, 2] fun n f1 =>
  f1 (n - 5) % 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130497.P8992676550820441710

namespace A130497

/-- `∑[a(n-5)%3]` -/
def P8992676550820441710.Spec : Prop :=
  ∀ n, (P8992676550820441710.a n : ℤ) = A130497 n

end A130497

/-! ## A130497.P6630278167915629903

`(5-2*n%5+n+n)/5`
-/

namespace A130497.P6630278167915629903
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 - ((2 * (n % 5) : ℕ) : ℤ) + (n : ℤ) + (n : ℤ) : ℚ) / 5

end

end A130497.P6630278167915629903

namespace A130497

/-- `(5-2*n%5+n+n)/5` -/
def P6630278167915629903.Spec : Prop :=
  ∀ n, P6630278167915629903.a n = (A130497 n : ℚ)

end A130497

/-! ## A130497.P10427191710383703844

`(A266084(n)+n)/5`
-/

namespace A130497.P10427191710383703844
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A266084 n + (n : ℤ) : ℚ) / 5

end

end A130497.P10427191710383703844

namespace A130497

/-- `(A266084(n)+n)/5` -/
def P10427191710383703844.Spec : Prop :=
  ∀ n, P10427191710383703844.a n = (A130497 n : ℚ)

end A130497

/-! ## A130497.P10786333714643802351

`abs(n-A047369(n+1))`
-/

namespace A130497.P10786333714643802351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) - A047369 (n + 1)|

end

end A130497.P10786333714643802351

namespace A130497

/-- `abs(n-A047369(n+1))` -/
def P10786333714643802351.Spec : Prop :=
  ∀ n, P10786333714643802351.a n = A130497 n

end A130497

/-! ## A130497.P5133693290979625246

`A130823(n-a(n-2))` with `a(0)=1, a(1)=1`
-/

namespace A130497.P5133693290979625246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A130823 ((n : ℤ) - a (n - 2)).toNat

end

end A130497.P5133693290979625246

namespace A130497

/-- `A130823(n-a(n-2))` -/
def P5133693290979625246.Spec : Prop :=
  ∀ n, P5133693290979625246.a n = A130497 n

end A130497

/-! ## A130497.P7967381123661411011

`A065168(a(n-5))` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1, a(4)=1`
-/

namespace A130497.P7967381123661411011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 1, 1] fun n a =>
  A065168 (a (n - 5)).toNat

end

end A130497.P7967381123661411011

namespace A130497

/-- `A065168(a(n-5))` -/
def P7967381123661411011.Spec : Prop :=
  ∀ n, P7967381123661411011.a n = A130497 n

end A130497

/-! ## A130497.P3390475636685033213

`A071054(a(n-5))` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1, a(4)=1`
-/

namespace A130497.P3390475636685033213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 1, 1] fun n a =>
  A071054 (a (n - 5)).toNat

end

end A130497.P3390475636685033213

namespace A130497

/-- `A071054(a(n-5))` -/
def P3390475636685033213.Spec : Prop :=
  ∀ n, P3390475636685033213.a n = A130497 n

end A130497

/-! ## A130497.P2090829456398709725

`A004442(A130496(n))`
-/

namespace A130497.P2090829456398709725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A130496 n).toNat

end

end A130497.P2090829456398709725

namespace A130497

/-- `A004442(A130496(n))` -/
def P2090829456398709725.Spec : Prop :=
  ∀ n, P2090829456398709725.a n = A130497 n

end A130497

/-! ## A130497.P6063802937423687410

`A109613(A057354(n))`
-/

namespace A130497.P6063802937423687410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 (A057354 n).toNat

end

end A130497.P6063802937423687410

namespace A130497

/-- `A109613(A057354(n))` -/
def P6063802937423687410.Spec : Prop :=
  ∀ n, P6063802937423687410.a n = A130497 n

end A130497

/-! ## A130497.P18249607159513446079

`A129756(A090223(n))`
-/

namespace A130497.P18249607159513446079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129756 (A090223 n).toNat

end

end A130497.P18249607159513446079

namespace A130497

/-- `A129756(A090223(n))` -/
def P18249607159513446079.Spec : Prop :=
  ∀ n, P18249607159513446079.a n = A130497 n

end A130497

/-! ## A130497.P2574491847986037869

`A109613(A117451(n))`
-/

namespace A130497.P2574491847986037869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 (A117451 n).toNat

end

end A130497.P2574491847986037869

namespace A130497

/-- `A109613(A117451(n))` -/
def P2574491847986037869.Spec : Prop :=
  ∀ n, P2574491847986037869.a n = A130497 n

end A130497

