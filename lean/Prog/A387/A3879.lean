import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C032
import Seq.B000.C035
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C002
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C003
import Seq.B005.C000
import Seq.B006.C000
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
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
# A387900: E.g.f. A(x) satisfies A(x) = exp( x * (1-x^2) * A(x)^2 ).

The programs for A387900, there is no canonical definition to state claims against.
-/

/-! ## A387900.P7406019376494010400

`A109613(A390269(n))`
-/

namespace A387900.P7406019376494010400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 (A390269 n).toNat

end

end A387900.P7406019376494010400

/-!
# A387901: Powerful numbers with a squarefree kernel that is a product of the smallest primes.

The programs for A387901, there is no canonical definition to state claims against.
-/

/-! ## A387901.P4859752927448911056

`∪[A151821(n+1), A369374(n+1)]`
-/

namespace A387901.P4859752927448911056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151821 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369374 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A387901.P4859752927448911056

/-! ## A387901.P11437624394571760577

`∪[A181800(n+1), A369374(n+1)]`
-/

namespace A387901.P11437624394571760577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181800 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369374 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A387901.P11437624394571760577

/-! ## A387901.P8164360774825402884

`∪[A181800(n+1), A369420(n+1)]`
-/

namespace A387901.P8164360774825402884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181800 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369420 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A387901.P8164360774825402884

/-! ## A387901.P4935167751623550623

`∪[A368681(n+1), A369374(n+1)]`
-/

namespace A387901.P4935167751623550623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368681 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369374 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A387901.P4935167751623550623

/-! ## A387901.P2986968990868103720

`∩[A055932(n+1), A353485(n+1)]`
-/

namespace A387901.P2986968990868103720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055932 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353485 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A387901.P2986968990868103720

/-! ## A387901.P17444258132200284085

`∩[A001694(n+1), A055932(n+1)]`
-/

namespace A387901.P17444258132200284085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001694 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055932 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A387901.P17444258132200284085

/-! ## A387901.P16118808364273610551

`filter[A001694(n+1), A341629(#)]`
-/

namespace A387901.P16118808364273610551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001694 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A341629 (f1 j).toNat = 1) n)

end

end A387901.P16118808364273610551

/-! ## A387901.P12237821795731682325

`filter[A353485(n+1), A341629(#)]`
-/

namespace A387901.P12237821795731682325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353485 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A341629 (f1 j).toNat = 1) n)

end

end A387901.P12237821795731682325

/-! ## A387901.P17755248941851404396

`filter[A055932(n+1), A112526(#)]`
-/

namespace A387901.P17755248941851404396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055932 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A112526 (f1 j).toNat = 1) n)

end

end A387901.P17755248941851404396

/-! ## A387901.P3238026415950493257

`filter[A145853(n+1), A112526(#)]`
-/

namespace A387901.P3238026415950493257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145853 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A112526 (f1 j).toNat = 1) n)

end

end A387901.P3238026415950493257

/-!
# A387902: Index of A002313(n) in A005529.

The programs for A387902, there is no canonical definition to state claims against.
-/

/-! ## A387902.P14881808137561774863

`A261345(A177979(n+1))`
-/

namespace A387902.P14881808137561774863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261345 (A177979 (n + 1)).toNat

end

end A387902.P14881808137561774863

/-!
# A387905: a(n) = Sum_{k=0..n} binomial(4*n+2,5*k).

The programs for A387905, there is no canonical definition to state claims against.
-/

/-! ## A387905.P17542897676566319633

`A387844(Δ[n²])`
-/

namespace A387905.P17542897676566319633
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387844 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A387905.P17542897676566319633

/-! ## A387905.P2474339884831736604

`A139398(4*n+2)`
-/

namespace A387905.P2474339884831736604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139398 (4 * n + 2)

end

end A387905.P2474339884831736604

/-! ## A387905.P5323242258721449420

`record[A387844(A006257(n))]`
-/

namespace A387905.P5323242258721449420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387844 (A006257 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A387905.P5323242258721449420

/-! ## A387905.P17998925682124326462

`lcm(A076479(n+1), A387844(2*n+1))`
-/

namespace A387905.P17998925682124326462
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A076479 (n + 1)) (A387844 (2 * n + 1))

end

end A387905.P17998925682124326462

/-! ## A387905.P10224346700538937494

`or(A139398(A016825(n)), A270006(2*n))`
-/

namespace A387905.P10224346700538937494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A139398 (A016825 n).toNat) (A270006 (2 * n))

end

end A387905.P10224346700538937494

/-!
# A387906: a(n) = Sum_{k=0..n} binomial(4*n+3,5*k).

The programs for A387906, there is no canonical definition to state claims against.
-/

/-! ## A387906.P6624628753702015887

`A387871(Δ[n²])`
-/

namespace A387906.P6624628753702015887
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387871 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A387906.P6624628753702015887

/-! ## A387906.P1651207708939382300

`A139398(3*(n+1)+n)`
-/

namespace A387906.P1651207708939382300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139398 (3 * (n + 1) + n)

end

end A387906.P1651207708939382300

/-! ## A387906.P1662688641114598112

`record[A387871(A006257(n))]`
-/

namespace A387906.P1662688641114598112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387871 (A006257 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A387906.P1662688641114598112

/-! ## A387906.P7918763745401623918

`A139398(A004767(n))%A138214(n+2)`
-/

namespace A387906.P7918763745401623918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A139398 (A004767 n).toNat) (A138214 (n + 2))

end

end A387906.P7918763745401623918

/-! ## A387906.P757789534628305808

`record[A139398(A328914(n+1))]`
-/

namespace A387906.P757789534628305808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139398 (A328914 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A387906.P757789534628305808

/-!
# A387907: a(n) = position of first odd digit of 2^n, starting from left, or 0 if no odd digit exists.

The programs for A387907, there is no canonical definition to state claims against.
-/

/-! ## A387907.P7275931137638162757

`xor(A000035(A088274(n+3)), A097805(n))`
-/

namespace A387907.P7275931137638162757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000035 (A088274 (n + 3)).toNat) (A097805 n)

end

end A387907.P7275931137638162757

/-!
# A387908: a(n) is the number of distinct integer-sided triangles with perimeter 6*n and integer area whose sides are in arithmetic progression.

The programs for A387908, there is no canonical definition to state claims against.
-/

/-! ## A387908.P4684366937401445612

`A119395(n²)-1`
-/

namespace A387908.P4684366937401445612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119395 (n ^ 2) - 1

end

end A387908.P4684366937401445612

/-! ## A387908.P11615492250796003180

`A059169(A033716(n²))`
-/

namespace A387908.P11615492250796003180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059169 (A033716 (n ^ 2)).toNat

end

end A387908.P11615492250796003180

/-! ## A387908.P7261727668659970636

`A262545(A119395(n²))`
-/

namespace A387908.P7261727668659970636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262545 (A119395 (n ^ 2)).toNat

end

end A387908.P7261727668659970636

/-! ## A387908.P6521966765757566320

`A092573(n²)`
-/

namespace A387908.P6521966765757566320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092573 (n ^ 2)

end

end A387908.P6521966765757566320

/-! ## A387908.P7434580208971921112

`A092573(A000290(n))%64`
-/

namespace A387908.P7434580208971921112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A092573 (A000290 n).toNat) 64

end

end A387908.P7434580208971921112

/-! ## A387908.P17128898062061613477

`A025428(A213721(A092573(n*n)))`
-/

namespace A387908.P17128898062061613477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025428 (A213721 (A092573 (n * n)).toNat).toNat

end

end A387908.P17128898062061613477

/-!
# A387909: Consider the factorial base expansion of n, without leading zeros, say (d(1), ..., d(w)); for k = 2..floor(w/2), if d(k) <= k then exchange d(k) and d(w+1-k); the resulting digits correspond to the factorial base expansion of a(n).

The programs for A387909, there is no canonical definition to state claims against.
-/

/-! ## A387909.P14057606852459674224

`lt[A357136(2*n+3), 23]`
-/

namespace A387909.P14057606852459674224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357136 (2 * n + 3)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  23

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A387909.P14057606852459674224

/-! ## A387909.P15761169022521038758

`lt[A038107(n), A338014(2*(n+2))]`
-/

namespace A387909.P15761169022521038758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038107 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338014 (2 * (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A387909.P15761169022521038758

/-! ## A387909.P12416092756017103397

`lt[(A008851(2*n+3)-A392371(n+1))/5-6, 6]`
-/

namespace A387909.P12416092756017103397
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008851 (2 * n + 3) - A392371 (n + 1) : ℚ) / 5 - 6

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n

end

end A387909.P12416092756017103397

/-! ## A387909.P3947874011941322142

`lt[A228165(n), A046016(A007318(n+1))]`
-/

namespace A387909.P3947874011941322142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228165 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046016 (A007318 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A387909.P3947874011941322142

/-! ## A387909.P13413353416765495184

`lt[A006899(n+1), A057122(A068226(n+1))]`
-/

namespace A387909.P13413353416765495184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006899 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057122 (A068226 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A387909.P13413353416765495184

/-!
# A387910: Number of fundamentally different graceful labelings of the n-triangular honeycomb obtuse knight graph.

The programs for A387910, there is no canonical definition to state claims against.
-/

/-! ## A387910.P4853147997146047855

`A165453(A015065(n))`
-/

namespace A387910.P4853147997146047855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165453 (A015065 n).toNat

end

end A387910.P4853147997146047855

/-!
# A387913: Hodge number h^{1,n-1} of a smooth hypersurface of degree n+2 in P^{n+1}.

The programs for A387913, the canonical program `A387913.P16167928465628734526` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A387913 has offset 1).

The definition of A387913 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A387913.P16167928465628734526

`C(2*(n+1)+3, n+3)-(n+3)²`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A387913

/-- `C(2*(n+1)+3, n+3)-(n+3)²` -/
def P16167928465628734526.Spec : Prop :=
  ∀ n, P16167928465628734526.a n = A387913 (n + 1)

theorem P16167928465628734526.correct : P16167928465628734526.Spec := by
  intro n
  simp only [A387913, Nat.add_sub_cancel]

end A387913

/-! ## A387913.P14282635771981914480

`A359435(n+3)+1`
-/

namespace A387913.P14282635771981914480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359435 (n + 3) + 1

end

end A387913.P14282635771981914480

namespace A387913

/-- `A359435(n+3)+1` -/
def P14282635771981914480.Spec : Prop :=
  ∀ n, P14282635771981914480.a n = A387913 (n + 1)

end A387913

/-! ## A387913.P13831050961603992653

`record[A088218(n)-n²]`
-/

namespace A387913.P13831050961603992653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088218 n - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A387913.P13831050961603992653

namespace A387913

/-- `record[A088218(n)-n²]` -/
def P13831050961603992653.Spec : Prop :=
  ∀ n, P13831050961603992653.a n = A387913 (n + 1)

end A387913

/-! ## A387913.P15200234680300308068

`A352027(n+3)-(n+2)`
-/

namespace A387913.P15200234680300308068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352027 (n + 3) - (n + 2 : ℤ)

end

end A387913.P15200234680300308068

namespace A387913

/-- `A352027(n+3)-(n+2)` -/
def P15200234680300308068.Spec : Prop :=
  ∀ n, P15200234680300308068.a n = A387913 (n + 1)

end A387913

/-! ## A387913.P16386277409382699708

`record[ceil((n+1)/2*A000108(n))-n²]`
-/

namespace A387913.P16386277409382699708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℚ) / 2 * (A000108 n : ℚ)⌉ - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A387913.P16386277409382699708

namespace A387913

/-- `record[ceil((n+1)/2*A000108(n))-n²]` -/
def P16386277409382699708.Spec : Prop :=
  ∀ n, P16386277409382699708.a n = A387913 (n + 1)

end A387913

/-! ## A387913.P7690241668969937042

`A305161(A099776(n+2))`
-/

namespace A387913.P7690241668969937042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305161 (A099776 (n + 2)).toNat

end

end A387913.P7690241668969937042

namespace A387913

/-- `A305161(A099776(n+2))` -/
def P7690241668969937042.Spec : Prop :=
  ∀ n, P7690241668969937042.a n = A387913 (n + 1)

end A387913

/-!
# A387914: a(n) = 3*binomial(2*n+4,n+3)/(n+4) - (n+2)*(n+3)/2 - 1.

The programs for A387914, the canonical program `A387914.P10909706251408159452` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A387914 has offset 1).

The definition of A387914 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A387914.P10909706251408159452

`A000245(n+3)-A000124(n+3)`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A387914

/-- `A000245(n+3)-A000124(n+3)` -/
def P10909706251408159452.Spec : Prop :=
  ∀ n, P10909706251408159452.a n = A387914 (n + 1)

theorem P10909706251408159452.correct : P10909706251408159452.Spec := by
  intro n
  simp only [A387914, Nat.add_sub_cancel]

end A387914

/-! ## A387914.P1307524938068212681

`3*C(2*(n+1)+4, n+4)/(n+5)-(n+3)*(n+4)/2-1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A387914.P1307524938068212681
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 * Nat.choose (2 * (n + 1) + 4) (n + 4) : ℚ) / (n + 5 : ℚ) - ((n + 3) * (n + 4) : ℚ) / 2 - 1

end

end A387914.P1307524938068212681

namespace A387914

/-- `3*C(2*(n+1)+4, n+4)/(n+5)-(n+3)*(n+4)/2-1` -/
def P1307524938068212681.Spec : Prop :=
  ∀ n, P1307524938068212681.a n = (A387914 (n + 1) : ℚ)

end A387914

/-! ## A387914.P2450204624829324869

`A071724(A028242(2*(n+2)))-A000124(n+3)`
-/

namespace A387914.P2450204624829324869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071724 (A028242 (2 * (n + 2))).toNat - A000124 (n + 3)

end

end A387914.P2450204624829324869

namespace A387914

/-- `A071724(A028242(2*(n+2)))-A000124(n+3)` -/
def P2450204624829324869.Spec : Prop :=
  ∀ n, P2450204624829324869.a n = A387914 (n + 1)

end A387914

/-!
# A387918: Positive integers whose number of divisors is a power of an odd prime.

The programs for A387918, there is no canonical definition to state claims against.
-/

/-! ## A387918.P17118381231386686610

`(A072774(n+1)%A138692(n+2))²`
-/

namespace A387918.P17118381231386686610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A072774 (n + 1)) (A138692 (n + 2)) ^ 2

end

end A387918.P17118381231386686610

/-! ## A387918.P18031831733744046424

`(A317101(n+1)%A265947(n+2))²`
-/

namespace A387918.P18031831733744046424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A317101 (n + 1)) (A265947 (n + 2)) ^ 2

end

end A387918.P18031831733744046424

/-! ## A387918.P3327945010075244972

`A072774(n+1)^A000005(A054803(n+1))`
-/

namespace A387918.P3327945010075244972
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A072774 (n + 1) : ℚ) ^ (A000005 (A054803 (n + 1)).toNat : ℤ)

end

end A387918.P3327945010075244972

/-! ## A387918.P14116509214793493062

`A072774(n+1)^A237271(A055469(n+1))`
-/

namespace A387918.P14116509214793493062
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A072774 (n + 1) : ℚ) ^ (A237271 (A055469 (n + 1)).toNat : ℤ)

end

end A387918.P14116509214793493062

/-! ## A387918.P7858945472421620937

`A360247(n+1)^A000034(A062332(n+1))`
-/

namespace A387918.P7858945472421620937
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A360247 (n + 1) : ℚ) ^ (A000034 (A062332 (n + 1)).toNat : ℤ)

end

end A387918.P7858945472421620937

/-!
# A387919: Numbers k that are neither squarefree, nor squareful, nor a product of primorials.

The programs for A387919, there is no canonical definition to state claims against.
-/

/-! ## A387919.P3661817977345893783

`∪[A386224(n+1), A386294(n+1)]`
-/

namespace A387919.P3661817977345893783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386224 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386294 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A387919.P3661817977345893783

/-! ## A387919.P6328006298591903710

`filter[A367268(n+1), A389905(#)]`
-/

namespace A387919.P6328006298591903710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367268 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A389905 (f1 j).toNat = 1) n)

end

end A387919.P6328006298591903710

/-! ## A387919.P11511038806907044909

`∩[A332785(n+1), A367268(n+1)]`
-/

namespace A387919.P11511038806907044909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332785 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367268 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A387919.P11511038806907044909

/-! ## A387919.P16199834356873791077

`∩[A367268(n+1), A389065(n+1)]`
-/

namespace A387919.P16199834356873791077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367268 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389065 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A387919.P16199834356873791077

/-! ## A387919.P16480045764655450197

`∩[A052485(n+1), A367268(n+1)]`
-/

namespace A387919.P16480045764655450197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052485 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367268 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A387919.P16480045764655450197

/-! ## A387919.P12964961939179952997

`filter[A369361(n+1), A389905(#)]`
-/

namespace A387919.P12964961939179952997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369361 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A389905 (f1 j).toNat = 1) n)

end

end A387919.P12964961939179952997

/-! ## A387919.P9796643178467649445

`∩[A332785(n+1), A369361(n+1)]`
-/

namespace A387919.P9796643178467649445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332785 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369361 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A387919.P9796643178467649445

/-!
# A387922: a(n) = 3*binomial(2*n+1,n+1) - n^2 - 2*n - 4.

The programs for A387922, the canonical program `A387922.P17855346880793473304` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A387922 has offset 1).

The definition of A387922 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*C(2*(n+1)+1, n+2)-(n+1)²-2*(n+1)-4` (program `A387922.P17855346880793473304`, by `A387922.P17855346880793473304.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A387922.P6795783302838828119

`3*C(2*(n+1)+1, n+2)-((n+1)²+2*(n+1)+4)`
-/

namespace A387922.P6795783302838828119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * Nat.choose (2 * (n + 1) + 1) (n + 2) : ℤ) - ((n + 1) ^ 2 + 2 * (n + 1) + 4 : ℤ)

end

end A387922.P6795783302838828119

namespace A387922

/-- `3*C(2*(n+1)+1, n+2)-((n+1)²+2*(n+1)+4)` -/
def P6795783302838828119.Spec : Prop :=
  ∀ n, P6795783302838828119.a n = A387922 (n + 1)

theorem P6795783302838828119.correct : P6795783302838828119.Spec := by
  intro n
  simp only [A387922, Nat.add_sub_cancel, A387922.P6795783302838828119.a, A387922.P17855346880793473304.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A387922

/-! ## A387922.P17855346880793473304

`3*C(2*(n+1)+1, n+2)-(n+1)²-2*(n+1)-4`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A387922

/-- `3*C(2*(n+1)+1, n+2)-(n+1)²-2*(n+1)-4` -/
def P17855346880793473304.Spec : Prop :=
  ∀ n, P17855346880793473304.a n = A387922 (n + 1)

theorem P17855346880793473304.correct : P17855346880793473304.Spec := by
  intro n
  simp only [A387922, Nat.add_sub_cancel]

end A387922

/-! ## A387922.P11727995871184624636

`A003409(n+2)-A117950(n+2)`
-/

namespace A387922.P11727995871184624636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003409 (n + 2) - A117950 (n + 2)

end

end A387922.P11727995871184624636

namespace A387922

/-- `A003409(n+2)-A117950(n+2)` -/
def P11727995871184624636.Spec : Prop :=
  ∀ n, P11727995871184624636.a n = A387922 (n + 1)

end A387922

/-! ## A387922.P4378779255134387194

`A029651(n+2)-A117950(n+2)`
-/

namespace A387922.P4378779255134387194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029651 (n + 2) - A117950 (n + 2)

end

end A387922.P4378779255134387194

namespace A387922

/-- `A029651(n+2)-A117950(n+2)` -/
def P4378779255134387194.Spec : Prop :=
  ∀ n, P4378779255134387194.a n = A387922 (n + 1)

end A387922

/-! ## A387922.P15942621280963231654

`A010763(n+1)+A371036(n+2)+A352027(n+2)`
-/

namespace A387922.P15942621280963231654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010763 (n + 1) + (A371036 (n + 2) + A352027 (n + 2))

end

end A387922.P15942621280963231654

namespace A387922

/-- `A010763(n+1)+A371036(n+2)+A352027(n+2)` -/
def P15942621280963231654.Spec : Prop :=
  ∀ n, P15942621280963231654.a n = A387922 (n + 1)

end A387922

/-!
# A387923: Greatest common divisor of consecutive powerful numbers.

The programs for A387923, there is no canonical definition to state claims against.
-/

/-! ## A387923.P11039969151069379269

`gcd(A001694(n+1), A001694(n+2))`
-/

namespace A387923.P11039969151069379269
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001694 (n + 1)) (A001694 (n + 2))

end

end A387923.P11039969151069379269

/-!
# A387927: Integers k such that 2047*2^k - 1 is prime.

The programs for A387927, there is no canonical definition to state claims against.
-/

/-! ## A387927.P15664169770931645435

`A175374(A052004(n+1))`
-/

namespace A387927.P15664169770931645435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175374 (A052004 (n + 1)).toNat

end

end A387927.P15664169770931645435

/-!
# A387928: a(n) = Sum_{k=0..n} 3^k * binomial(n,k) * binomial(2*n,k).

The programs for A387928, there is no canonical definition to state claims against.
-/

/-! ## A387928.P5846813982274027612

`A081577(A062725(n))`
-/

namespace A387928.P5846813982274027612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081577 (A062725 n).toNat

end

end A387928.P5846813982274027612

/-! ## A387928.P15220255898809794790

`A081577(A062728(n))`
-/

namespace A387928.P15220255898809794790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081577 (A062728 n).toNat

end

end A387928.P15220255898809794790

/-! ## A387928.P3201716614149483156

`A081577(A115067(3*n+1)/3)`
-/

namespace A387928.P3201716614149483156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081577 (SequenceMachineLib.roundAway ((A115067 (3 * n + 1) : ℚ) / 3)).toNat

end

end A387928.P3201716614149483156

/-!
# A387930: a(n) = Sum_{k=0..n} 3^k * binomial(n,k) * binomial(3*n,k).

The programs for A387930, there is no canonical definition to state claims against.
-/

/-! ## A387930.P17046007964116920882

`A081577(A139276(n))`
-/

namespace A387930.P17046007964116920882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081577 (A139276 n).toNat

end

end A387930.P17046007964116920882

/-! ## A387930.P327806834188843443

`A081577(A139277(n))`
-/

namespace A387930.P327806834188843443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081577 (A139277 n).toNat

end

end A387930.P327806834188843443

/-! ## A387930.P10709024530945053482

`A081577(A033585(n)+n)`
-/

namespace A387930.P10709024530945053482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081577 (A033585 n + (n : ℤ)).toNat

end

end A387930.P10709024530945053482

/-! ## A387930.P2192912276715635771

`A081577(n*A047615(2*(n+1)))`
-/

namespace A387930.P2192912276715635771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081577 ((n : ℤ) * A047615 (2 * (n + 1))).toNat

end

end A387930.P2192912276715635771

/-!
# A387932: a(n) = Sum_{k=0..n} 3^k * binomial(n,k) * binomial(4*n,k).

The programs for A387932, there is no canonical definition to state claims against.
-/

/-! ## A387932.P12811625129969638648

`A081577(A115067(3*n+1)-A002378(n))`
-/

namespace A387932.P12811625129969638648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081577 (A115067 (3 * n + 1) - A002378 n).toNat

end

end A387932.P12811625129969638648

/-!
# A387934: Square array A(n,k), n >= 0, k >= 0, read by antidiagonals, where A(n,k) = Sum_{j=0..n} binomial(n,j) * binomial(k*n+j,j).

The programs for A387934, there is no canonical definition to state claims against.
-/

/-! ## A387934.P4258717971799380909

`A115949(A199530(n+1))`
-/

namespace A387934.P4258717971799380909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115949 (A199530 (n + 1)).toNat

end

end A387934.P4258717971799380909

/-! ## A387934.P4272083007237786964

`A324473(A321000(n+1))`
-/

namespace A387934.P4272083007237786964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324473 (A321000 (n + 1)).toNat

end

end A387934.P4272083007237786964

/-!
# A387935: Numbers k such that Sum_{i=1..r} (k-i) and Sum_{i=1..s} (k+i) are both prime (A000040) for some 1 <= r < k, 1 <= s < k.

The programs for A387935, the canonical program `A387935.P13157778175235146584` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A387935 has offset 1).

The definition of A387935 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A387935.P13157778175235146584

`∪[A014574(n+1), A088763(n+1)]`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A387935

/-- `∪[A014574(n+1), A088763(n+1)]` -/
def P13157778175235146584.Spec : Prop :=
  ∀ n, (P13157778175235146584.a n : ℤ) = A387935 (n + 1)

theorem P13157778175235146584.correct : P13157778175235146584.Spec := by
  intro n
  simp only [A387935, Nat.add_sub_cancel]

end A387935

/-!
# A387936: Triangle read by rows: T(n,k) is the number of 4-dimensional balanced ballot paths of 4n steps with exactly k peaks.

The programs for A387936, there is no canonical definition to state claims against.
-/

/-! ## A387936.P4758723038375778744

`A388032(n+1)+A002375(A011557(n))`
-/

namespace A387936.P4758723038375778744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388032 (n + 1) + A002375 (A011557 n).toNat

end

end A387936.P4758723038375778744

/-!
# A387937: Triangle read by rows: T(n, k) is the number of cycles of length n with k descents in a complete graph on n nodes.

The programs for A387937, there is no canonical definition to state claims against.
-/

/-! ## A387937.P592768301449054292

`A036537(A157278(n))%A123142(3*n+4)`
-/

namespace A387937.P592768301449054292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A036537 (A157278 n).toNat) (A123142 (3 * n + 4 + 64))

end

end A387937.P592768301449054292

/-! ## A387937.P15574785396164186263

`A255407(A174109(n))+(A139561(n)+1)%A022173(n)`
-/

namespace A387937.P15574785396164186263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255407 (A174109 n).toNat + Int.tmod (A139561 n + 1) (A022173 n)

end

end A387937.P15574785396164186263

/-! ## A387937.P6746760923793345372

`A178663(A008958(n))`
-/

namespace A387937.P6746760923793345372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178663 (A008958 n).toNat

end

end A387937.P6746760923793345372

/-!
# A387939: a(n) = 2^n*(n^2/4+n/4+4) - Fibonacci(n+4).

The programs for A387939, the canonical program `A387939.P1854000045561914536` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A387939 has offset 0).

The definition of A387939 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 318 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A387939.P1854000045561914536

`A049611(n+2)-A079282(n+1)`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A387939

/-- `A049611(n+2)-A079282(n+1)` -/
def P1854000045561914536.Spec : Prop :=
  ∀ n, P1854000045561914536.a n = A387939 n

theorem P1854000045561914536.correct : P1854000045561914536.Spec := by
  intro n
  simp only [A387939]

end A387939

/-! ## A387939.P5043740079238930092

`A389886(n+3)+A104270(n+1)`
-/

namespace A387939.P5043740079238930092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389886 (n + 3) + A104270 (n + 1)

end

end A387939.P5043740079238930092

namespace A387939

/-- `A389886(n+3)+A104270(n+1)` -/
def P5043740079238930092.Spec : Prop :=
  ∀ n, P5043740079238930092.a n = A387939 n

end A387939

/-!
# A387941: Positive numbers k such that gpf(k)^2 < 2*k where gpf = A006530.

The programs for A387941, there is no canonical definition to state claims against.
-/

/-! ## A387941.P11710303613445946469

`∪[A001284(n+1), A048098(n+1)]`
-/

namespace A387941.P11710303613445946469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001284 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048098 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A387941.P11710303613445946469

/-! ## A387941.P15619287712047138704

`∪[A020886(n+1), A048098(n+1)]`
-/

namespace A387941.P15619287712047138704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020886 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048098 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A387941.P15619287712047138704

/-! ## A387941.P9125581953295672679

`record[A325563(A063539(n+1))]`
-/

namespace A387941.P9125581953295672679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325563 (A063539 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A387941.P9125581953295672679

/-! ## A387941.P16699484843813455574

`record[A063928(A048098(n+1))]`
-/

namespace A387941.P16699484843813455574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063928 (A048098 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A387941.P16699484843813455574

/-! ## A387941.P7498804414051497234

`record[A057979(A063539(n+1)+1)]`
-/

namespace A387941.P7498804414051497234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (A063539 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A387941.P7498804414051497234

/-! ## A387941.P15483519765024366423

`∪[A048098(n+1), A320142(n+1)]`
-/

namespace A387941.P15483519765024366423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048098 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320142 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A387941.P15483519765024366423

/-! ## A387941.P5576161979660666526

`∪[A001284(n+1), A322109(n+1)]`
-/

namespace A387941.P5576161979660666526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001284 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322109 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A387941.P5576161979660666526

/-! ## A387941.P8851610249149531901

`∪[A320142(n+1), A322109(n+1)]`
-/

namespace A387941.P8851610249149531901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320142 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322109 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A387941.P8851610249149531901

/-! ## A387941.P14539060145650098152

`∪[A048098(n+1), A304231(n+1)]`
-/

namespace A387941.P14539060145650098152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048098 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304231 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A387941.P14539060145650098152

/-! ## A387941.P15130479179232036709

`∪[A063539(n+1), A304231(n+1)]`
-/

namespace A387941.P15130479179232036709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063539 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304231 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A387941.P15130479179232036709

/-!
# A387942: In the prime factorization of n, replace each prime with the number of nonzero digits in its balanced ternary representation.

The programs for A387942, there is no canonical definition to state claims against.
-/

/-! ## A387942.P4928870625390247429

`A051119(3*A077168(n))`
-/

namespace A387942.P4928870625390247429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051119 (3 * A077168 n).toNat

end

end A387942.P4928870625390247429

/-! ## A387942.P18280420084117827957

`A051119(lcm(3, A077168(n)))`
-/

namespace A387942.P18280420084117827957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051119 (Int.lcm 3 (A077168 n))

end

end A387942.P18280420084117827957

/-! ## A387942.P10903415251596935983

`A051119(3*n+3)/A054977(A000051(n))`
-/

namespace A387942.P10903415251596935983
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051119 (3 * n + 3) : ℚ) / (A054977 (A000051 n).toNat : ℚ)

end

end A387942.P10903415251596935983

/-! ## A387942.P13397286197007565393

`A051119(3*(n+1))%A059975(A105938(n))`
-/

namespace A387942.P13397286197007565393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A051119 (3 * (n + 1))) (A059975 (A105938 n).toNat)

end

end A387942.P13397286197007565393

/-! ## A387942.P16920333004712262855

`A051119(A028871(n+1)*A051119(3*(n+1)))`
-/

namespace A387942.P16920333004712262855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051119 (A028871 (n + 1) * A051119 (3 * (n + 1))).toNat

end

end A387942.P16920333004712262855

/-!
# A387943: Number of fully packed loops on an n X n grid with no cycle.

The programs for A387943, there is no canonical definition to state claims against.
-/

/-! ## A387943.P13968419025669177362

`A108954(A099696(n)+2)`
-/

namespace A387943.P13968419025669177362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108954 (A099696 n + 2).toNat

end

end A387943.P13968419025669177362

/-! ## A387943.P8702603012237930536

`A275605(n)+A004526(A379876(n))`
-/

namespace A387943.P8702603012237930536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275605 n + A004526 (A379876 n).toNat

end

end A387943.P8702603012237930536

/-!
# A387944: Number of squarefree composites <= n.

The programs for A387944, the canonical program `A387944.P5952151805390949890` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A387944 has offset 1).

The definition of A387944 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A387944.P3811644323391819357

`A209628(n+1)-1`
-/

namespace A387944.P3811644323391819357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209628 (n + 1) - 1

end

end A387944.P3811644323391819357

namespace A387944

/-- `A209628(n+1)-1` -/
def P3811644323391819357.Spec : Prop :=
  ∀ n, P3811644323391819357.a n = A387944 (n + 1)

end A387944

/-! ## A387944.P11954125207390907530

`∑[A354819(n+1)]-1`
-/

namespace A387944.P11954125207390907530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354819 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A387944.P11954125207390907530

namespace A387944

/-- `∑[A354819(n+1)]-1` -/
def P11954125207390907530.Spec : Prop :=
  ∀ n, P11954125207390907530.a n = A387944 (n + 1)

end A387944

/-! ## A387944.P5952151805390949890

`n-∑[A106743(n+1)²]`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A387944

/-- `n-∑[A106743(n+1)²]` -/
def P5952151805390949890.Spec : Prop :=
  ∀ n, P5952151805390949890.a n = A387944 (n + 1)

theorem P5952151805390949890.correct : P5952151805390949890.Spec := by
  intro n
  simp only [A387944, Nat.add_sub_cancel]

end A387944

/-! ## A387944.P557431008868902460

`A065855(n+1)-A057627(n+1)`
-/

namespace A387944.P557431008868902460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065855 (n + 1) - A057627 (n + 1)

end

end A387944.P557431008868902460

namespace A387944

/-- `A065855(n+1)-A057627(n+1)` -/
def P557431008868902460.Spec : Prop :=
  ∀ n, P557431008868902460.a n = A387944 (n + 1)

end A387944

/-! ## A387944.P3188000914818272714

`A085970(n+1)-A379771(n+1)`
-/

namespace A387944.P3188000914818272714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085970 (n + 1) - A379771 (n + 1)

end

end A387944.P3188000914818272714

namespace A387944

/-- `A085970(n+1)-A379771(n+1)` -/
def P3188000914818272714.Spec : Prop :=
  ∀ n, P3188000914818272714.a n = A387944 (n + 1)

end A387944

/-! ## A387944.P9452435833604575062

`A083800(n+1)%A209628(n+1)`
-/

namespace A387944.P9452435833604575062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083800 (n + 1)) (A209628 (n + 1))

end

end A387944.P9452435833604575062

namespace A387944

/-- `A083800(n+1)%A209628(n+1)` -/
def P9452435833604575062.Spec : Prop :=
  ∀ n, P9452435833604575062.a n = A387944 (n + 1)

end A387944

/-! ## A387944.P12009710177481187389

`A070198(n)%A209628(n+1)`
-/

namespace A387944.P12009710177481187389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A070198 n) (A209628 (n + 1))

end

end A387944.P12009710177481187389

namespace A387944

/-- `A070198(n)%A209628(n+1)` -/
def P12009710177481187389.Spec : Prop :=
  ∀ n, P12009710177481187389.a n = A387944 (n + 1)

end A387944

/-! ## A387944.P2158060684902685096

`A079782(n+1)%A209628(n+1)`
-/

namespace A387944.P2158060684902685096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A079782 (n + 1)) (A209628 (n + 1))

end

end A387944.P2158060684902685096

namespace A387944

/-- `A079782(n+1)%A209628(n+1)` -/
def P2158060684902685096.Spec : Prop :=
  ∀ n, P2158060684902685096.a n = A387944 (n + 1)

end A387944

/-! ## A387944.P17625662955177543024

`A083685(n+1)%A209628(n+1)`
-/

namespace A387944.P17625662955177543024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083685 (n + 1)) (A209628 (n + 1))

end

end A387944.P17625662955177543024

namespace A387944

/-- `A083685(n+1)%A209628(n+1)` -/
def P17625662955177543024.Spec : Prop :=
  ∀ n, P17625662955177543024.a n = A387944 (n + 1)

end A387944

/-! ## A387944.P8331906460222492880

`A121934(n+1)%A209628(n+1)`
-/

namespace A387944.P8331906460222492880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A121934 (n + 1)) (A209628 (n + 1))

end

end A387944.P8331906460222492880

namespace A387944

/-- `A121934(n+1)%A209628(n+1)` -/
def P8331906460222492880.Spec : Prop :=
  ∀ n, P8331906460222492880.a n = A387944 (n + 1)

end A387944

/-! ## A387944.P7947850637576428344

`A030494(n+1)%A209628(n+1)`
-/

namespace A387944.P7947850637576428344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A030494 (n + 1)) (A209628 (n + 1))

end

end A387944.P7947850637576428344

namespace A387944

/-- `A030494(n+1)%A209628(n+1)` -/
def P7947850637576428344.Spec : Prop :=
  ∀ n, P7947850637576428344.a n = A387944 (n + 1)

end A387944

/-! ## A387944.P8682062127347819968

`A072828(n+1)%A209628(n+1)`
-/

namespace A387944.P8682062127347819968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A072828 (n + 1)) (A209628 (n + 1))

end

end A387944.P8682062127347819968

namespace A387944

/-- `A072828(n+1)%A209628(n+1)` -/
def P8682062127347819968.Spec : Prop :=
  ∀ n, P8682062127347819968.a n = A387944 (n + 1)

end A387944

/-!
# A387945: a(n) = Sum_{k=0..floor(n/3)} binomial(3*n-3*k,n-3*k).

The programs for A387945, there is no canonical definition to state claims against.
-/

/-! ## A387945.P1859992576915943128

`A118923(A051682(n+1))`
-/

namespace A387945.P1859992576915943128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118923 (A051682 (n + 1)).toNat

end

end A387945.P1859992576915943128

/-!
# A387947: Number of prime pairs {p, q} with n >= p > q such that (p-1)^2 == (q-1)^2 (mod n).

The programs for A387947, there is no canonical definition to state claims against.
-/

/-! ## A387947.P3515704872698874533

`A191515(A167152(n+2))`
-/

namespace A387947.P3515704872698874533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191515 (A167152 (n + 2)).toNat

end

end A387947.P3515704872698874533

/-! ## A387947.P17098979066519166110

`A054402(n+1)%A000120(A001629(n+2))`
-/

namespace A387947.P17098979066519166110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A054402 (n + 1)) (A000120 (A001629 (n + 2)).toNat)

end

end A387947.P17098979066519166110

/-! ## A387947.P3919005255092169934

`A340607(A309591(3*n+2)+A286858(n)+3)`
-/

namespace A387947.P3919005255092169934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340607 (A309591 (3 * n + 2) + (A286858 n + 3)).toNat

end

end A387947.P3919005255092169934

/-!
# A387948: E.g.f. A(x) satisfies A(x) = exp( x^2*A(x)^2 / (1 - x*A(x))^2 ).

The programs for A387948, there is no canonical definition to state claims against.
-/

/-! ## A387948.P4618045830398278910

`A095221((a(n-1)+2)²)` with `a(0)=1`
-/

namespace A387948.P4618045830398278910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A095221 ((a (n - 1) + 2) ^ 2).toNat

end

end A387948.P4618045830398278910

/-!
# A387949: E.g.f. A(x) satisfies A(x) = exp( x^2*A(x)^2 / (1 - x*A(x))^3 ).

The programs for A387949, there is no canonical definition to state claims against.
-/

/-! ## A387949.P10145177247618019049

`A057817(n+1)*A357186(A049774(n))`
-/

namespace A387949.P10145177247618019049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057817 (n + 1) * A357186 (A049774 n).toNat

end

end A387949.P10145177247618019049

/-!
# A387950: E.g.f. A(x) satisfies A(x) = exp( x^3*A(x)^3 / (1 - x*A(x))^2 ).

The programs for A387950, there is no canonical definition to state claims against.
-/

/-! ## A387950.P752656549302258301

`A339059(A049714(n))`
-/

namespace A387950.P752656549302258301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339059 (A049714 n).toNat

end

end A387950.P752656549302258301

/-! ## A387950.P17369331526297794981

`A389845(A052720(n)+n)`
-/

namespace A387950.P17369331526297794981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389845 (A052720 n + (n : ℤ)).toNat

end

end A387950.P17369331526297794981

/-!
# A387952: Squarefree semiprimes whose prime factors are in A073024.

The programs for A387952, there is no canonical definition to state claims against.
-/

/-! ## A387952.P9904861307379955183

`∩[A085018(n+1), A157352(n+1)]`
-/

namespace A387952.P9904861307379955183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085018 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157352 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A387952.P9904861307379955183

/-!
# A387953: Numbers k such that sigma(k) = psi(k) + tau(k).

The programs for A387953, there is no canonical definition to state claims against.
-/

/-! ## A387953.P11262475308384628930

`∩[A069827(n+1), A082293(n+1)]`
-/

namespace A387953.P11262475308384628930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069827 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082293 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A387953.P11262475308384628930

/-! ## A387953.P16059226343708424724

`∩[A069827(n+1), A326111(n+1)]`
-/

namespace A387953.P16059226343708424724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069827 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326111 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A387953.P16059226343708424724

/-!
# A387957: Number of integer partitions of n with parts colored by {0, 1, 2, 3} such that the sum of colors is congruent to 1 (mod 4).

The programs for A387957, there is no canonical definition to state claims against.
-/

/-! ## A387957.P6028408122930293614

`A232353(A027676(n+1)*A329317(n+1))`
-/

namespace A387957.P6028408122930293614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232353 (A027676 (n + 1) * A329317 (n + 1)).toNat

end

end A387957.P6028408122930293614

/-! ## A387957.P14431189934983964519

`A045623(n)-A036585(A252605(2*n+3))`
-/

namespace A387957.P14431189934983964519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045623 n - A036585 (A252605 (2 * n + 3)).toNat

end

end A387957.P14431189934983964519

/-!
# A387958: Achilles numbers that are not products of primorials.

The programs for A387958, there is no canonical definition to state claims against.
-/

/-! ## A387958.P6910685236382292038

`∪[A386433(n+1), A386434(n+1)]`
-/

namespace A387958.P6910685236382292038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386433 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386434 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A387958.P6910685236382292038

/-! ## A387958.P7141180047499550055

`∩[A052486(n+1), A369636(n+1)]`
-/

namespace A387958.P7141180047499550055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052486 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369636 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A387958.P7141180047499550055

/-! ## A387958.P1681675267397733882

`∩[A369636(n+1), A389753(n+1)]`
-/

namespace A387958.P1681675267397733882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369636 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389753 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A387958.P1681675267397733882

/-! ## A387958.P2206778272310807674

`∩[A369636(n+1), A391415(n+1)]`
-/

namespace A387958.P2206778272310807674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369636 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391415 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A387958.P2206778272310807674

/-! ## A387958.P5220169944460800144

`filter[A369636(n+1), A132350(#)]`
-/

namespace A387958.P5220169944460800144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369636 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A132350 (f1 j).toNat = 1) n)

end

end A387958.P5220169944460800144

/-!
# A387959: Least positive integer m such that the n numbers (prime(1)-1)^2,...,(prime(n)-1)^2 are pairwise incongruent modulo m.

The programs for A387959, there is no canonical definition to state claims against.
-/

/-! ## A387959.P5507655372949011327

`A181901(n+1)/A373565(n)`
-/

namespace A387959.P5507655372949011327
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A181901 (n + 1) : ℚ) / (A373565 n : ℚ)

end

end A387959.P5507655372949011327

/-! ## A387959.P12603684986977508074

`gcd(A130706(n), A181901(n+1))`
-/

namespace A387959.P12603684986977508074
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A130706 n) (A181901 (n + 1))

end

end A387959.P12603684986977508074

/-! ## A387959.P10735166435449782637

`A026741(A181901(n+1))`
-/

namespace A387959.P10735166435449782637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A181901 (n + 1)).toNat

end

end A387959.P10735166435449782637

/-! ## A387959.P8796574270278643678

`A181901(n+1)/A005086(A337476(n))`
-/

namespace A387959.P8796574270278643678
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A181901 (n + 1) : ℚ) / (A005086 (A337476 n).toNat : ℚ)

end

end A387959.P8796574270278643678

/-!
# A387960: Multiplicative sequence a(n) with a(p^e) = 1 + (e mod 3) * (2 - (e mod 3)) for prime p and e >= 0.

The programs for A387960, the canonical program `A387960.P16530550988797664069` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A387960 has offset 1).

The definition of A387960 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A387960.P16530550988797664069

`∏{e}[n+1, C(2, #%3)]`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A387960

/-- `∏{e}[n+1, C(2, #%3)]` -/
def P16530550988797664069.Spec : Prop :=
  ∀ n, (P16530550988797664069.a n : ℤ) = A387960 (n + 1)

theorem P16530550988797664069.correct : P16530550988797664069.Spec := by
  intro n
  simp only [A387960, Nat.add_sub_cancel]

end A387960

/-! ## A387960.P10555068604851305989

`A055076(A050985(n+1))`
-/

namespace A387960.P10555068604851305989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055076 (A050985 (n + 1)).toNat

end

end A387960.P10555068604851305989

namespace A387960

/-- `A055076(A050985(n+1))` -/
def P10555068604851305989.Spec : Prop :=
  ∀ n, P10555068604851305989.a n = A387960 (n + 1)

end A387960

/-! ## A387960.P3883601172522017133

`A318666(A370296(n+1))`
-/

namespace A387960.P3883601172522017133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318666 (A370296 (n + 1)).toNat

end

end A387960.P3883601172522017133

namespace A387960

/-- `A318666(A370296(n+1))` -/
def P3883601172522017133.Spec : Prop :=
  ∀ n, P3883601172522017133.a n = A387960 (n + 1)

end A387960

/-! ## A387960.P5796897359287231173

`∑{d}[n+1, A008966(#)*A307421((n+1)/#)]`
-/

namespace A387960.P5796897359287231173
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008966 d * A307421 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A387960.P5796897359287231173

namespace A387960

/-- `∑{d}[n+1, A008966(#)*A307421((n+1)/#)]` -/
def P5796897359287231173.Spec : Prop :=
  ∀ n, P5796897359287231173.a n = A387960 (n + 1)

end A387960

/-! ## A387960.P2394924026350370956

`∑{d}[n+1, A034444(#)*A307424((n+1)/#)]`
-/

namespace A387960.P2394924026350370956
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A034444 d * A307424 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A387960.P2394924026350370956

namespace A387960

/-- `∑{d}[n+1, A034444(#)*A307424((n+1)/#)]` -/
def P2394924026350370956.Spec : Prop :=
  ∀ n, P2394924026350370956.a n = A387960 (n + 1)

end A387960

/-! ## A387960.P11264931489580787658

`∑{d}[n+1, A048691(#)*A307427((n+1)/#)]`
-/

namespace A387960.P11264931489580787658
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A048691 d * A307427 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A387960.P11264931489580787658

namespace A387960

/-- `∑{d}[n+1, A048691(#)*A307427((n+1)/#)]` -/
def P11264931489580787658.Spec : Prop :=
  ∀ n, P11264931489580787658.a n = A387960 (n + 1)

end A387960

/-! ## A387960.P2313133596971795944

`∏{e}[A048798(n+1), #]`
-/

namespace A387960.P2313133596971795944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048798 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A387960.P2313133596971795944

namespace A387960

/-- `∏{e}[A048798(n+1), #]` -/
def P2313133596971795944.Spec : Prop :=
  ∀ n, (P2313133596971795944.a n : ℤ) = A387960 (n + 1)

end A387960

/-! ## A387960.P12779207966710486303

`gcd(A000079(n), A294931(n+1))`
-/

namespace A387960.P12779207966710486303
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000079 n) (A294931 (n + 1))

end

end A387960.P12779207966710486303

namespace A387960

/-- `gcd(A000079(n), A294931(n+1))` -/
def P12779207966710486303.Spec : Prop :=
  ∀ n, (P12779207966710486303.a n : ℤ) = A387960 (n + 1)

end A387960

/-! ## A387960.P2816964753872136699

`gcd(A080040(n), A354349(n+1))`
-/

namespace A387960.P2816964753872136699
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A080040 n) (A354349 (n + 1))

end

end A387960.P2816964753872136699

namespace A387960

/-- `gcd(A080040(n), A354349(n+1))` -/
def P2816964753872136699.Spec : Prop :=
  ∀ n, (P2816964753872136699.a n : ℤ) = A387960 (n + 1)

end A387960

/-! ## A387960.P2762371231705311417

`A000688(A048798(n+1))`
-/

namespace A387960.P2762371231705311417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000688 (A048798 (n + 1)).toNat

end

end A387960.P2762371231705311417

namespace A387960

/-- `A000688(A048798(n+1))` -/
def P2762371231705311417.Spec : Prop :=
  ∀ n, P2762371231705311417.a n = A387960 (n + 1)

end A387960

/-!
# A387963: Fixed points of A387819.

The programs for A387963, there is no canonical definition to state claims against.
-/

/-! ## A387963.P970484865364671267

`record[A387819(n+1)]`
-/

namespace A387963.P970484865364671267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387819 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A387963.P970484865364671267

/-! ## A387963.P4767647380866174661

`lt[sqrt(A062584(n)), 10]`
-/

namespace A387963.P4767647380866174661
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A062584 n : ℝ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A387963.P4767647380866174661

/-! ## A387963.P17568801757865034084

`lt[A082024(n²), 2*n²]`
-/

namespace A387963.P17568801757865034084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082024 (n ^ 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A387963.P17568801757865034084

/-! ## A387963.P14739226840493325167

`lt[A062830(n²), A250120(n)]`
-/

namespace A387963.P14739226840493325167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062830 (n ^ 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A387963.P14739226840493325167

/-! ## A387963.P2446254119254813466

`∩[A359075(n+1), A387426(n+1)]`
-/

namespace A387963.P2446254119254813466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359075 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387426 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A387963.P2446254119254813466

/-!
# A387964: E.g.f. A(x) satisfies A(x) = exp( x^2*A(x)^2 / (1-x*A(x)) ) / (1-x*A(x)).

The programs for A387964, there is no canonical definition to state claims against.
-/

/-! ## A387964.P1017289646586362110

`∏[A130245(A365775(n))]`
-/

namespace A387964.P1017289646586362110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130245 (A365775 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A387964.P1017289646586362110

/-! ## A387964.P14626185079093339467

`∏[A194276(3*n)+A000041(n)]`
-/

namespace A387964.P14626185079093339467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194276 (3 * n) + A000041 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A387964.P14626185079093339467

/-!
# A387965: E.g.f. A(x) satisfies A(x) = exp( x^2*A(x)^2 / (1-x*A(x))^2 ) / (1-x*A(x)).

The programs for A387965, there is no canonical definition to state claims against.
-/

/-! ## A387965.P17388778255172355168

`A333489(A307905(n)+A001523(n))`
-/

namespace A387965.P17388778255172355168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333489 (A307905 n + A001523 n).toNat

end

end A387965.P17388778255172355168

/-!
# A387966: E.g.f. A(x) satisfies A(x) = exp( x^2*A(x)^2 / (1-x*A(x))^3 ) / (1-x*A(x)).

The programs for A387966, there is no canonical definition to state claims against.
-/

/-! ## A387966.P3198745788334645332

`∏{p}[(2*n)!, n-2+#]`
-/

namespace A387966.P3198745788334645332
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), ((n : ℤ) - 2 + (p : ℤ))

end

end A387966.P3198745788334645332

/-!
# A387968: Expansion of e.g.f. (1+x) * exp(x^2*(1+x)).

The programs for A387968, there is no canonical definition to state claims against.
-/

/-! ## A387968.P14339181045336646791

`A333219(A088311(n)-A285981(n))`
-/

namespace A387968.P14339181045336646791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333219 (A088311 n - A285981 n).toNat

end

end A387968.P14339181045336646791

/-! ## A387968.P6248871240734371867

`A333219(or(A005840(n), A353850(n)))`
-/

namespace A387968.P6248871240734371867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333219 (Int.lor (A005840 n) (A353850 n)).toNat

end

end A387968.P6248871240734371867

/-!
# A387969: Expansion of e.g.f. (1+x) * exp(x^2*(1+x)^2).

The programs for A387969, there is no canonical definition to state claims against.
-/

/-! ## A387969.P10922307648046024718

`A003418(n)*A070939(A002486(n))`
-/

namespace A387969.P10922307648046024718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003418 n * A070939 (A002486 n).toNat

end

end A387969.P10922307648046024718

/-! ## A387969.P16269814158280622285

`A003418(n)*A027750(A134958(n))`
-/

namespace A387969.P16269814158280622285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003418 n * A027750 (A134958 n).toNat

end

end A387969.P16269814158280622285

/-!
# A387970: Expansion of e.g.f. (1+x) * exp(x^2*(1+x)^3).

The programs for A387970, there is no canonical definition to state claims against.
-/

/-! ## A387970.P16868666128606686063

`A334758(a(n-1))` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A387970.P16868666128606686063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  A334758 (a (n - 1)).toNat

end

end A387970.P16868666128606686063

/-!
# A387971: E.g.f. A(x) satisfies A(x) = exp( x^2*A(x)^2 * (1+x*A(x)) ) * (1+x*A(x)).

The programs for A387971, there is no canonical definition to state claims against.
-/

/-! ## A387971.P1821472540734048012

`A308358(n^(n+1))+1`
-/

namespace A387971.P1821472540734048012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308358 (n ^ (n + 1)) + 1

end

end A387971.P1821472540734048012

/-!
# A387972: E.g.f. A(x) satisfies A(x) = exp( x^2*A(x)^2 * (1+x*A(x))^2 ) * (1+x*A(x)).

The programs for A387972, there is no canonical definition to state claims against.
-/

/-! ## A387972.P3402639410054686255

`A033798(A133998(n))`
-/

namespace A387972.P3402639410054686255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033798 (A133998 n).toNat

end

end A387972.P3402639410054686255

/-!
# A387973: E.g.f. A(x) satisfies A(x) = exp( x^2*A(x)^2 * (1+x*A(x))^3 ) * (1+x*A(x)).

The programs for A387973, there is no canonical definition to state claims against.
-/

/-! ## A387973.P6800855407332293426

`6*A214964(2*a(n-1)-a(n-2))` with `a(0)=1, a(1)=1, a(2)=4`
-/

namespace A387973.P6800855407332293426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 4] fun n a =>
  6 * A214964 (2 * a (n - 1) - a (n - 2)).toNat

end

end A387973.P6800855407332293426

/-!
# A387974: E.g.f. A(x) satisfies A(x) = exp( x^2*A(x)^2 ) * (1+x*A(x)).

The programs for A387974, there is no canonical definition to state claims against.
-/

/-! ## A387974.P1463406971948118211

`A055034(or(A000002(n+1), A004189(n)))`
-/

namespace A387974.P1463406971948118211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055034 (Int.lor (A000002 (n + 1)) (A004189 n)).toNat

end

end A387974.P1463406971948118211

/-! ## A387974.P9474901987991663502

`A045917(A357154(n)+1)*A277905(A041973(n))`
-/

namespace A387974.P9474901987991663502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045917 (A357154 n + 1).toNat * A277905 (A041973 n).toNat

end

end A387974.P9474901987991663502

/-!
# A387975: Number of distinct positive integers reachable from n by successively dividing any contiguous substring of at least two digits by an integer d in 2..9, including n itself.

The programs for A387975, there is no canonical definition to state claims against.
-/

/-! ## A387975.P16060548135929917062

`A087990(A179937(A179937(n+1)))`
-/

namespace A387975.P16060548135929917062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087990 (A179937 (A179937 (n + 1)).toNat).toNat

end

end A387975.P16060548135929917062

/-!
# A387976: E.g.f. A(x) satisfies A(x) = exp( x^2*A(x)^2 ) / (1-x*A(x)).

The programs for A387976, there is no canonical definition to state claims against.
-/

/-! ## A387976.P8333422135787449397

`A265338(n!²)`
-/

namespace A387976.P8333422135787449397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265338 (Nat.factorial n ^ 2)

end

end A387976.P8333422135787449397

/-!
# A387980: Sum of squarefree numbers <= 10^n.

The programs for A387980, there is no canonical definition to state claims against.
-/

/-! ## A387980.P3748675343196643507

`10^n*(10^n+1)/2-A388005(n)`
-/

namespace A387980.P3748675343196643507
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (10 ^ n * (10 ^ n + 1) : ℚ) / 2 - (A388005 n : ℚ)

end

end A387980.P3748675343196643507

/-!
# A387982: a(n) = Sum_{k=0..n} (-1)^k * (k+1) * binomial(4*n-3*k+1,n-k)/(4*n-3*k+1).

The programs for A387982, there is no canonical definition to state claims against.
-/

/-! ## A387982.P4182066419060200750

`A391604(n)-A002264(A391607(n))`
-/

namespace A387982.P4182066419060200750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391604 n - A002264 (A391607 n).toNat

end

end A387982.P4182066419060200750

/-!
# A387990: a(n) = Sum_{k=0..floor(n/3)} binomial(4*n-3*k,n-3*k).

The programs for A387990, there is no canonical definition to state claims against.
-/

/-! ## A387990.P2544551462254161877

`A118923(A194268(n))`
-/

namespace A387990.P2544551462254161877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118923 (A194268 n).toNat

end

end A387990.P2544551462254161877

/-!
# A387991: Number of ways to write n as i*prime(i) + j*prime(j) + k*prime(k) + m*prime(m) with 1 <= i <= j <= k <= m.

The programs for A387991, there is no canonical definition to state claims against.
-/

/-! ## A387991.P6453426945038807573

`and(A236572(n), A339824(n))`
-/

namespace A387991.P6453426945038807573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A236572 n) (A339824 n)

end

end A387991.P6453426945038807573

/-! ## A387991.P8578407977106284776

`and(A051976(n+1), A339824(n))`
-/

namespace A387991.P8578407977106284776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A051976 (n + 1)) (A339824 n)

end

end A387991.P8578407977106284776

/-! ## A387991.P1716527692000512540

`A001468(2*n+1)%A088569(A269920(n))`
-/

namespace A387991.P1716527692000512540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001468 (2 * n + 1)) (A088569 (A269920 n).toNat)

end

end A387991.P1716527692000512540

/-! ## A387991.P9383128928290388244

`and(A003714(2*n), A014306(A209344(2*(n+2))))`
-/

namespace A387991.P9383128928290388244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A003714 (2 * n)) (A014306 (A209344 (2 * (n + 2))).toNat)

end

end A387991.P9383128928290388244

/-! ## A387991.P12839066365194562502

`and(A339824(n), A342764(n))`
-/

namespace A387991.P12839066365194562502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A339824 n) (A342764 n)

end

end A387991.P12839066365194562502

/-!
# A387992: E.g.f. A(x) satisfies A(x) = exp( x^2*A(x)^2 * (1+x*A(x))^2 ).

The programs for A387992, there is no canonical definition to state claims against.
-/

/-! ## A387992.P11977517559182680069

`A006928(A003207(n))*A052887(n)`
-/

namespace A387992.P11977517559182680069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006928 (A003207 n).toNat * A052887 n

end

end A387992.P11977517559182680069

/-! ## A387992.P4441268575898027468

`A052887(n)*A091090(A349332(n))`
-/

namespace A387992.P4441268575898027468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052887 n * A091090 (A349332 n).toNat

end

end A387992.P4441268575898027468

/-!
# A387993: E.g.f. A(x) satisfies A(x) = exp( x^2*A(x)^2 * (1+x*A(x))^3 ).

The programs for A387993, there is no canonical definition to state claims against.
-/

/-! ## A387993.P7495073740746989721

`A054346(A216857(n))-n`
-/

namespace A387993.P7495073740746989721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054346 (A216857 n).toNat - (n : ℤ)

end

end A387993.P7495073740746989721

/-!
# A387994: E.g.f. A(x) satisfies A(x) = exp( x^3*A(x)^3 * (1+x*A(x))^2 ).

The programs for A387994, there is no canonical definition to state claims against.
-/

/-! ## A387994.P4064876745278750760

`A055642(A358081(n))*A358081(n)`
-/

namespace A387994.P4064876745278750760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (A358081 n).toNat * A358081 n

end

end A387994.P4064876745278750760

/-! ## A387994.P7278979441881581143

`A308972(A320806(n))*A358081(n)`
-/

namespace A387994.P7278979441881581143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308972 (A320806 n).toNat * A358081 n

end

end A387994.P7278979441881581143

/-!
# A387995: E.g.f. A(x) satisfies A(x) = exp( x^3*A(x)^3 * (1+x*A(x))^3 ).

The programs for A387995, there is no canonical definition to state claims against.
-/

/-! ## A387995.P1883190566426826309

`A339059(A008176(n))`
-/

namespace A387995.P1883190566426826309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339059 (A008176 n).toNat

end

end A387995.P1883190566426826309

/-! ## A387995.P7423353759356241983

`A053627(A006059(n))-n`
-/

namespace A387995.P7423353759356241983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053627 (A006059 n).toNat - (n : ℤ)

end

end A387995.P7423353759356241983

/-!
# A387996: One third the number of solid partitions of n with 3 parts.

The programs for A387996, the canonical program `A387996.P12346668092968048436` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A387996 has offset 3).

The definition of A387996 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A387996.P12346668092968048436

`∑[n+1]-floor(a(n-1)-(n+1)/3)` with `a(0)=2`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A387996

/-- `∑[n+1]-floor(a(n-1)-(n+1)/3)` -/
def P12346668092968048436.Spec : Prop :=
  ∀ n, P12346668092968048436.a n = A387996 (n + 3)

theorem P12346668092968048436.correct : P12346668092968048436.Spec := by
  intro n
  simp only [A387996, Nat.add_sub_cancel]

end A387996

/-! ## A387996.P8778934686078329221

`∑[a(n-2)+3]-(a(n-1)+a(n-2))` with `a(0)=2, a(1)=2`
-/

namespace A387996.P8778934686078329221
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 2] fun n f1 =>
  f1 (n - 2) + 3

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 2] fun n a =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (a (n - 1) + a (n - 2))

end

end A387996.P8778934686078329221

namespace A387996

/-- `∑[a(n-2)+3]-(a(n-1)+a(n-2))` -/
def P8778934686078329221.Spec : Prop :=
  ∀ n, P8778934686078329221.a n = A387996 (n + 3)

end A387996

/-! ## A387996.P11284802836799887621

`A060022(n)+A007980(n)`
-/

namespace A387996.P11284802836799887621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060022 n + A007980 n

end

end A387996.P11284802836799887621

namespace A387996

/-- `A060022(n)+A007980(n)` -/
def P11284802836799887621.Spec : Prop :=
  ∀ n, P11284802836799887621.a n = A387996 (n + 3)

end A387996

/-! ## A387996.P8722526332892569456

`A117573(n)+A008620(n)`
-/

namespace A387996.P8722526332892569456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117573 n + A008620 n

end

end A387996.P8722526332892569456

namespace A387996

/-- `A117573(n)+A008620(n)` -/
def P8722526332892569456.Spec : Prop :=
  ∀ n, P8722526332892569456.a n = A387996 (n + 3)

end A387996

/-! ## A387996.P14104016440916155814

`A156040(n)+A001399(n)`
-/

namespace A387996.P14104016440916155814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156040 n + A001399 n

end

end A387996.P14104016440916155814

namespace A387996

/-- `A156040(n)+A001399(n)` -/
def P14104016440916155814.Spec : Prop :=
  ∀ n, P14104016440916155814.a n = A387996 (n + 3)

end A387996

/-! ## A387996.P12375088073561808027

`A212986(n)+A008619(n)`
-/

namespace A387996.P12375088073561808027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212986 n + A008619 n

end

end A387996.P12375088073561808027

namespace A387996

/-- `A212986(n)+A008619(n)` -/
def P12375088073561808027.Spec : Prop :=
  ∀ n, P12375088073561808027.a n = A387996 (n + 3)

end A387996

/-! ## A387996.P4007063048084203922

`A128012(n)-A008620(n)`
-/

namespace A387996.P4007063048084203922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128012 n - A008620 n

end

end A387996.P4007063048084203922

namespace A387996

/-- `A128012(n)-A008620(n)` -/
def P4007063048084203922.Spec : Prop :=
  ∀ n, P4007063048084203922.a n = A387996 (n + 3)

end A387996

/-! ## A387996.P9670020526948940873

`A103221(n)+A087811(n+1)`
-/

namespace A387996.P9670020526948940873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 n + A087811 (n + 1)

end

end A387996.P9670020526948940873

namespace A387996

/-- `A103221(n)+A087811(n+1)` -/
def P9670020526948940873.Spec : Prop :=
  ∀ n, P9670020526948940873.a n = A387996 (n + 3)

end A387996

/-! ## A387996.P490138852903249291

`A211004(n+1)+A008806(n)`
-/

namespace A387996.P490138852903249291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211004 (n + 1) + A008806 n

end

end A387996.P490138852903249291

namespace A387996

/-- `A211004(n+1)+A008806(n)` -/
def P490138852903249291.Spec : Prop :=
  ∀ n, P490138852903249291.a n = A387996 (n + 3)

end A387996

/-! ## A387996.P1298798103235336363

`A392807(n+3)-A001399(n)`
-/

namespace A387996.P1298798103235336363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392807 (n + 3) - A001399 n

end

end A387996.P1298798103235336363

namespace A387996

/-- `A392807(n+3)-A001399(n)` -/
def P1298798103235336363.Spec : Prop :=
  ∀ n, P1298798103235336363.a n = A387996 (n + 3)

end A387996

/-! ## A387996.P8801539236938981681

`A069905(n+1)+2*A001399(n)`
-/

namespace A387996.P8801539236938981681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069905 (n + 1) + 2 * A001399 n

end

end A387996.P8801539236938981681

namespace A387996

/-- `A069905(n+1)+2*A001399(n)` -/
def P8801539236938981681.Spec : Prop :=
  ∀ n, P8801539236938981681.a n = A387996 (n + 3)

end A387996

/-! ## A387996.P13713511041350278077

`A103221(n)+A008619(n+1)*A008619(n)`
-/

namespace A387996.P13713511041350278077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 n + A008619 (n + 1) * A008619 n

end

end A387996.P13713511041350278077

namespace A387996

/-- `A103221(n)+A008619(n+1)*A008619(n)` -/
def P13713511041350278077.Spec : Prop :=
  ∀ n, P13713511041350278077.a n = A387996 (n + 3)

end A387996

/-! ## A387996.P7629243120890882245

`A103221(n)+A002620(n+2)`
-/

namespace A387996.P7629243120890882245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 n + A002620 (n + 2)

end

end A387996.P7629243120890882245

namespace A387996

/-- `A103221(n)+A002620(n+2)` -/
def P7629243120890882245.Spec : Prop :=
  ∀ n, P7629243120890882245.a n = A387996 (n + 3)

end A387996

/-! ## A387996.P4088227101975113422

`A008615(n+2)+A002620(n+2)`
-/

namespace A387996.P4088227101975113422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (n + 2) + A002620 (n + 2)

end

end A387996.P4088227101975113422

namespace A387996

/-- `A008615(n+2)+A002620(n+2)` -/
def P4088227101975113422.Spec : Prop :=
  ∀ n, P4088227101975113422.a n = A387996 (n + 3)

end A387996

/-! ## A387996.P14582007261244838773

`A014125(n+1)+A156040(n)-A014126(n+1)`
-/

namespace A387996.P14582007261244838773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014125 (n + 1) + (A156040 n - A014126 (n + 1))

end

end A387996.P14582007261244838773

namespace A387996

/-- `A014125(n+1)+A156040(n)-A014126(n+1)` -/
def P14582007261244838773.Spec : Prop :=
  ∀ n, P14582007261244838773.a n = A387996 (n + 3)

end A387996

/-! ## A387996.P17817128502731272966

`A060022(n)+A001399(2*n)`
-/

namespace A387996.P17817128502731272966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060022 n + A001399 (2 * n)

end

end A387996.P17817128502731272966

namespace A387996

/-- `A060022(n)+A001399(2*n)` -/
def P17817128502731272966.Spec : Prop :=
  ∀ n, P17817128502731272966.a n = A387996 (n + 3)

end A387996

/-! ## A387996.P12636870331722790624

`A025767(2*n)+A001399(n)`
-/

namespace A387996.P12636870331722790624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025767 (2 * n) + A001399 n

end

end A387996.P12636870331722790624

namespace A387996

/-- `A025767(2*n)+A001399(n)` -/
def P12636870331722790624.Spec : Prop :=
  ∀ n, P12636870331722790624.a n = A387996 (n + 3)

end A387996

/-! ## A387996.P13823226610140159827

`A260220(2*n+1)+A008615(n+2)`
-/

namespace A387996.P13823226610140159827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260220 (2 * n + 1) + A008615 (n + 2)

end

end A387996.P13823226610140159827

namespace A387996

/-- `A260220(2*n+1)+A008615(n+2)` -/
def P13823226610140159827.Spec : Prop :=
  ∀ n, P13823226610140159827.a n = A387996 (n + 3)

end A387996

/-! ## A387996.P17227898794731307387

`A338321(2*(n+1))-A338321(n+1)`
-/

namespace A387996.P17227898794731307387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338321 (2 * (n + 1)) - A338321 (n + 1)

end

end A387996.P17227898794731307387

namespace A387996

/-- `A338321(2*(n+1))-A338321(n+1)` -/
def P17227898794731307387.Spec : Prop :=
  ∀ n, P17227898794731307387.a n = A387996 (n + 3)

end A387996

/-! ## A387996.P3139837019672575826

`A000037(A212986(n))`
-/

namespace A387996.P3139837019672575826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000037 (A212986 n).toNat

end

end A387996.P3139837019672575826

namespace A387996

/-- `A000037(A212986(n))` -/
def P3139837019672575826.Spec : Prop :=
  ∀ n, P3139837019672575826.a n = A387996 (n + 3)

end A387996

/-!
# A387997: Number of solid partitions of n with 4 parts.

The programs for A387997, there is no canonical definition to state claims against.
-/

/-! ## A387997.P4129125431927146350

`A380893(A000217(n+4)-n)`
-/

namespace A387997.P4129125431927146350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380893 (A000217 (n + 4) - (n : ℤ)).toNat

end

end A387997.P4129125431927146350

