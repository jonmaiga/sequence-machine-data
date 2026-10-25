import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C006
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C038
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C002
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C010
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
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
# A391500: a(n) is the number of ways to decompose A152242(n) into primes.

The programs for A391500, there is no canonical definition to state claims against.
-/

/-! ## A391500.P888991260528862973

`gcd(A003842(n), A250120(A299255(n+3)))`
-/

namespace A391500.P888991260528862973
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003842 n) (A250120 (A299255 (n + 3)).toNat)

end

end A391500.P888991260528862973

/-! ## A391500.P7942213365656710421

`A124010(A005117(n+3)*A175770(n+1))`
-/

namespace A391500.P7942213365656710421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124010 (A005117 (n + 3) * A175770 (n + 1)).toNat

end

end A391500.P7942213365656710421

/-! ## A391500.P6753409937460110412

`gcd(A022303(A196912(n+1)), A248629(n+1))`
-/

namespace A391500.P6753409937460110412
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A022303 (A196912 (n + 1)).toNat) (A248629 (n + 1))

end

end A391500.P6753409937460110412

/-! ## A391500.P3867299811663022720

`A382966(A207858(n+1))`
-/

namespace A391500.P3867299811663022720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382966 (A207858 (n + 1)).toNat

end

end A391500.P3867299811663022720

/-!
# A391502: a(n) = Kronecker symbol (33/n).

The programs for A391502, the canonical program `A391502.P16587956580403437799` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A391502 has offset 0).

The definition of A391502 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A011582, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A391502.P16587956580403437799

`A102283(n)*A011582(n)`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A391502

/-- `A102283(n)*A011582(n)` -/
def P16587956580403437799.Spec : Prop :=
  ∀ n, P16587956580403437799.a n = A391502 n

theorem P16587956580403437799.correct : P16587956580403437799.Spec := by
  intro n
  simp only [A391502]

end A391502

/-!
# A391503: a(n) = Kronecker symbol (10/n).

The programs for A391503, there is no canonical definition to state claims against.
-/

/-! ## A391503.P8645843460188811594

`A080891(n)*A091337(n)`
-/

namespace A391503.P8645843460188811594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080891 n * A091337 n

end

end A391503.P8645843460188811594

/-!
# A391505: Primitive coreful-infinitary abundant numbers: powerful numbers k for which A363331(k) > 2*k.

The programs for A391505, there is no canonical definition to state claims against.
-/

/-! ## A391505.P12948634336756571316

`∩[A001694(n+1), A391504(n+1)]`
-/

namespace A391505.P12948634336756571316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001694 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391504 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391505.P12948634336756571316

/-! ## A391505.P7657461830847299767

`∩[A102834(n+1), A391504(n+1)]`
-/

namespace A391505.P7657461830847299767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102834 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391504 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391505.P7657461830847299767

/-! ## A391505.P5017746857754623682

`∩[A192636(n+1), A391504(n+1)]`
-/

namespace A391505.P5017746857754623682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192636 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391504 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391505.P5017746857754623682

/-! ## A391505.P12651669192412238291

`∩[A286708(n+1), A391504(n+1)]`
-/

namespace A391505.P12651669192412238291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286708 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391504 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391505.P12651669192412238291

/-! ## A391505.P3068232742360649162

`∩[A320966(n+1), A391504(n+1)]`
-/

namespace A391505.P3068232742360649162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320966 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391504 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391505.P3068232742360649162

/-! ## A391505.P3070410766856019494

`∩[A356871(n+1), A391504(n+1)]`
-/

namespace A391505.P3070410766856019494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356871 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391504 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391505.P3070410766856019494

/-! ## A391505.P17096244316665360546

`∩[A363169(n+1), A391504(n+1)]`
-/

namespace A391505.P17096244316665360546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363169 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391504 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391505.P17096244316665360546

/-! ## A391505.P2407604589185117724

`∩[A372404(n+1), A391504(n+1)]`
-/

namespace A391505.P2407604589185117724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372404 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391504 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391505.P2407604589185117724

/-! ## A391505.P12928442755222293698

`∩[A376936(n+1), A391504(n+1)]`
-/

namespace A391505.P12928442755222293698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376936 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391504 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391505.P12928442755222293698

/-! ## A391505.P4987233061813121678

`∩[A391504(n+1), A391507(n+1)]`
-/

namespace A391505.P4987233061813121678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391504 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391507 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391505.P4987233061813121678

/-!
# A391507: Primitive coreful-bi-unitary abundant numbers: powerful numbers k for which A363334(k) > 2*k.

The programs for A391507, there is no canonical definition to state claims against.
-/

/-! ## A391507.P14484104987570227730

`∩[A001694(n+1), A391506(n+1)]`
-/

namespace A391507.P14484104987570227730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001694 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391506 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391507.P14484104987570227730

/-! ## A391507.P9529370354201909497

`∩[A192636(n+1), A391506(n+1)]`
-/

namespace A391507.P9529370354201909497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192636 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391506 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391507.P9529370354201909497

/-! ## A391507.P15686882775406316033

`∩[A286708(n+1), A391506(n+1)]`
-/

namespace A391507.P15686882775406316033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286708 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391506 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391507.P15686882775406316033

/-! ## A391507.P16427660249185245723

`∩[A320966(n+1), A391506(n+1)]`
-/

namespace A391507.P16427660249185245723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320966 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391506 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391507.P16427660249185245723

/-! ## A391507.P13484645921411790874

`∩[A335851(n+1), A391506(n+1)]`
-/

namespace A391507.P13484645921411790874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335851 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391506 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391507.P13484645921411790874

/-! ## A391507.P3275040605180079863

`∩[A356871(n+1), A391506(n+1)]`
-/

namespace A391507.P3275040605180079863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356871 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391506 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391507.P3275040605180079863

/-! ## A391507.P311221041662247193

`∩[A363169(n+1), A391506(n+1)]`
-/

namespace A391507.P311221041662247193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363169 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391506 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391507.P311221041662247193

/-! ## A391507.P16871794834608577864

`∩[A372404(n+1), A391506(n+1)]`
-/

namespace A391507.P16871794834608577864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372404 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391506 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391507.P16871794834608577864

/-! ## A391507.P9216690007644451855

`∩[A376936(n+1), A391506(n+1)]`
-/

namespace A391507.P9216690007644451855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376936 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391506 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391507.P9216690007644451855

/-!
# A391509: Numerators of the convergents given by treating A241773 as continued fraction coefficients after the leading 0.

The programs for A391509, there is no canonical definition to state claims against.
-/

/-! ## A391509.P11792177728372033614

`A248227(A391510(n+1))`
-/

namespace A391509.P11792177728372033614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248227 (A391510 (n + 1)).toNat

end

end A391509.P11792177728372033614

/-! ## A391509.P4289709566425579850

`filter[A002353(n), A068427(#)]`
-/

namespace A391509.P4289709566425579850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002353 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A068427 (f1 j).toNat = 1) n)

end

end A391509.P4289709566425579850

/-! ## A391509.P9341092435977107915

`filter[A002353(n), A188192(#)]`
-/

namespace A391509.P9341092435977107915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002353 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A188192 (f1 j).toNat = 1) n)

end

end A391509.P9341092435977107915

/-!
# A391510: Denominators of the convergents given by treating A241773 as continued fraction coefficients after the leading 0.

The programs for A391510, there is no canonical definition to state claims against.
-/

/-! ## A391510.P6212450790277167969

`filter[A002354(n), A090171(#)]`
-/

namespace A391510.P6212450790277167969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002354 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A090171 (f1 j).toNat = 1) n)

end

end A391510.P6212450790277167969

/-! ## A391510.P12481210892533065691

`filter[A002354(n), A118102(#)]`
-/

namespace A391510.P12481210892533065691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002354 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A118102 (f1 j).toNat = 1) n)

end

end A391510.P12481210892533065691

/-!
# A391511: Number of permutations p of [n] satisfying Sum_{i=1..n} (p(i)-i)^2 = n*(n+1)/2.

The programs for A391511, there is no canonical definition to state claims against.
-/

/-! ## A391511.P11825979968283617422

`A179264(n)-A179266(n)`
-/

namespace A391511.P11825979968283617422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179264 n - A179266 n

end

end A391511.P11825979968283617422

/-!
# A391513: Expansion of 1/(g^2 * (2 - g^2)), where g = 1+x*g^2 is the g.f. of A000108.

The programs for A391513, there is no canonical definition to state claims against.
-/

/-! ## A391513.P5013586280829670591

`A352226(A357164(n))+A000296(n)`
-/

namespace A391513.P5013586280829670591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352226 (A357164 n).toNat + A000296 n

end

end A391513.P5013586280829670591

/-!
# A391514: Expansion of 1/(g^2 * (2 - g^2)), where g = 1+x*g^3 is the g.f. of A001764.

The programs for A391514, there is no canonical definition to state claims against.
-/

/-! ## A391514.P2450181560830382878

`A289498(∑[A070030(n+3)+1])`
-/

namespace A391514.P2450181560830382878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070030 (n + 3) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289498 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A391514.P2450181560830382878

/-!
# A391515: Expansion of 1/(g^2 * (2 - g^2)), where g = 1+x*g^4 is the g.f. of A002293.

The programs for A391515, there is no canonical definition to state claims against.
-/

/-! ## A391515.P16255578758811055759

`xor(1, A008615(A005810(n)))`
-/

namespace A391515.P16255578758811055759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A008615 (A005810 n).toNat)

end

end A391515.P16255578758811055759

/-!
# A391516: Expansion of 1/(g * (2 - g^2)), where g = 1+x*g^2 is the g.f. of A000108.

The programs for A391516, there is no canonical definition to state claims against.
-/

/-! ## A391516.P1469216565766785533

`A379317(2*a(n-1))` with `a(0)=1, a(1)=1`
-/

namespace A391516.P1469216565766785533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A379317 (2 * a (n - 1)).toNat

end

end A391516.P1469216565766785533

/-!
# A391517: Expansion of 1/(g * (2 - g^2)), where g = 1+x*g^3 is the g.f. of A001764.

The programs for A391517, there is no canonical definition to state claims against.
-/

/-! ## A391517.P16956511040529596306

`A384323(A316983(n))+A343351(n)`
-/

namespace A391517.P16956511040529596306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384323 (A316983 n).toNat + A343351 n

end

end A391517.P16956511040529596306

/-!
# A391518: Expansion of 1/(g * (2 - g^2)), where g = 1+x*g^4 is the g.f. of A002293.

The programs for A391518, there is no canonical definition to state claims against.
-/

/-! ## A391518.P11705165027409570552

`A137580(n)+A054899(A076765(n))`
-/

namespace A391518.P11705165027409570552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137580 n + A054899 (A076765 n).toNat

end

end A391518.P11705165027409570552

/-!
# A391522: G.f. satisfies A(x) = Product_{n>=0} (1 + (x*A(x)^2)^(3^n)).

The programs for A391522, there is no canonical definition to state claims against.
-/

/-! ## A391522.P17598863745085201759

`A276798(A108485(n))`
-/

namespace A391522.P17598863745085201759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276798 (A108485 n).toNat

end

end A391522.P17598863745085201759

/-!
# A391523: G.f. A(x) satisfies A(x)^3 = A( x*A(x)^2*(1 + A(x))^2 ).

The programs for A391523, there is no canonical definition to state claims against.
-/

/-! ## A391523.P10896043791060299420

`A368318(A073790(n))`
-/

namespace A391523.P10896043791060299420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368318 (A073790 n).toNat

end

end A391523.P10896043791060299420

/-! ## A391523.P11206312513236343080

`A331173(A368318(n))`
-/

namespace A391523.P11206312513236343080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331173 (A368318 n).toNat

end

end A391523.P11206312513236343080

/-! ## A391523.P13310178228423044177

`A368318(A004881(n+1))`
-/

namespace A391523.P13310178228423044177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368318 (A004881 (n + 1)).toNat

end

end A391523.P13310178228423044177

/-! ## A391523.P12078356029256694755

`A368318(A004892(n+1))`
-/

namespace A391523.P12078356029256694755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368318 (A004892 (n + 1)).toNat

end

end A391523.P12078356029256694755

/-! ## A391523.P5662743272008169376

`A368318(A004903(n+1))`
-/

namespace A391523.P5662743272008169376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368318 (A004903 (n + 1)).toNat

end

end A391523.P5662743272008169376

/-!
# A391525: G.f. satisfies A(x) = Product_{n>=0} (1 + (x*A(x)^3)^(3^n)).

The programs for A391525, there is no canonical definition to state claims against.
-/

/-! ## A391525.P4987685963222720390

`A070564(A086871(n)+A000110(n))`
-/

namespace A391525.P4987685963222720390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070564 (A086871 n + A000110 n).toNat

end

end A391525.P4987685963222720390

/-! ## A391525.P7392697431692941707

`A210716(A000129(n))+A064062(n)`
-/

namespace A391525.P7392697431692941707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210716 (A000129 n).toNat + A064062 n

end

end A391525.P7392697431692941707

/-!
# A391527: a(n) is the number of quadratic polynomials with coefficients in {-n, ..., n}, positive leading coefficient, and having two rational roots.

The programs for A391527, there is no canonical definition to state claims against.
-/

/-! ## A391527.P7743328498754540664

`A337812(A301711(n))`
-/

namespace A391527.P7743328498754540664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337812 (A301711 n).toNat

end

end A391527.P7743328498754540664

/-!
# A391529: Discriminants of real quadratic fields with class group C_2 and form class group C_2.

The programs for A391529, there is no canonical definition to state claims against.
-/

/-! ## A391529.P4499116251882389076

`∩[A003653(n+1), A391420(n+1)]`
-/

namespace A391529.P4499116251882389076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003653 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391420 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391529.P4499116251882389076

/-! ## A391529.P15574530380198573183

`∩[A003653(n+1), A094619(n+1)]`
-/

namespace A391529.P15574530380198573183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003653 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094619 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391529.P15574530380198573183

/-! ## A391529.P4117647839094852999

`∩[A094619(n+1), A391420(n+1)]`
-/

namespace A391529.P4117647839094852999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094619 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391420 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391529.P4117647839094852999

/-! ## A391529.P10239275615329355288

`filter[A391420(n+1), A353814(#)]`
-/

namespace A391529.P10239275615329355288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391420 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353814 (f1 j).toNat = 1) n)

end

end A391529.P10239275615329355288

/-! ## A391529.P14913983874672532425

`∩[A094619(n+1), A226696(n+1)]`
-/

namespace A391529.P14913983874672532425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094619 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226696 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391529.P14913983874672532425

/-! ## A391529.P14592886471650308510

`∩[A226696(n+1), A391420(n+1)]`
-/

namespace A391529.P14592886471650308510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226696 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391420 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391529.P14592886471650308510

/-! ## A391529.P521527914344095419

`∩[A003653(n+1), A391424(n+1)]`
-/

namespace A391529.P521527914344095419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003653 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391424 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391529.P521527914344095419

/-! ## A391529.P5334878687021628921

`∩[A094619(n+1), A391424(n+1)]`
-/

namespace A391529.P5334878687021628921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094619 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391424 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391529.P5334878687021628921

/-! ## A391529.P10521044748643213868

`∩[A003653(n+1), A344408(n+1)]`
-/

namespace A391529.P10521044748643213868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003653 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344408 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391529.P10521044748643213868

/-! ## A391529.P9017010043762797015

`∩[A344408(n+1), A391420(n+1)]`
-/

namespace A391529.P9017010043762797015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344408 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391420 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391529.P9017010043762797015

/-! ## A391529.P12292142486982960924

`filter[A391420(n+1), A229062(#)]`
-/

namespace A391529.P12292142486982960924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391420 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A229062 (f1 j).toNat = 1) n)

end

end A391529.P12292142486982960924

/-! ## A391529.P4107246017919465996

`∩[A391420(n+1), A396863(n+1)]`
-/

namespace A391529.P4107246017919465996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391420 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396863 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391529.P4107246017919465996

/-! ## A391529.P16307646552112712184

`∩[A391424(n+1), A396863(n+1)]`
-/

namespace A391529.P16307646552112712184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391424 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396863 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391529.P16307646552112712184

/-! ## A391529.P14605158002248437869

`∩[A097268(n+1), A391420(n+1)]`
-/

namespace A391529.P14605158002248437869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097268 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391420 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391529.P14605158002248437869

/-! ## A391529.P16881075114217924746

`∩[A020668(n+1), A391420(n+1)]`
-/

namespace A391529.P16881075114217924746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020668 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391420 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391529.P16881075114217924746

/-! ## A391529.P12915377403977783310

`∩[A057129(n+1), A391420(n+1)]`
-/

namespace A391529.P12915377403977783310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057129 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391420 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391529.P12915377403977783310

/-! ## A391529.P5847251353130105963

`∩[A202057(n+1), A391420(n+1)]`
-/

namespace A391529.P5847251353130105963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202057 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391420 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391529.P5847251353130105963

/-! ## A391529.P1478641246679505004

`∩[A072437(n+1), A391420(n+1)]`
-/

namespace A391529.P1478641246679505004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072437 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391420 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391529.P1478641246679505004

/-! ## A391529.P5917475504897470762

`∩[A094619(n+1), A245226(n+1)]`
-/

namespace A391529.P5917475504897470762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094619 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245226 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391529.P5917475504897470762

/-! ## A391529.P11286243365274936924

`∩[A245226(n+1), A391420(n+1)]`
-/

namespace A391529.P11286243365274936924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245226 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391420 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391529.P11286243365274936924

/-!
# A391530: Discriminants of real quadratic fields with class group C_2 and form class group C_4.

The programs for A391530, there is no canonical definition to state claims against.
-/

/-! ## A391530.P4445537870599486076

`∩[A094619(n+1), A396864(n+1)]`
-/

namespace A391530.P4445537870599486076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094619 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396864 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391530.P4445537870599486076

/-! ## A391530.P16725800837515584476

`∩[A094619(n+1), A396862(n+1)]`
-/

namespace A391530.P16725800837515584476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094619 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396862 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391530.P16725800837515584476

/-! ## A391530.P5394673672825617510

`∩[A344408(n+1), A396862(n+1)]`
-/

namespace A391530.P5394673672825617510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344408 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396862 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391530.P5394673672825617510

/-! ## A391530.P12667374844146813038

`∩[A344408(n+1), A396864(n+1)]`
-/

namespace A391530.P12667374844146813038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344408 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396864 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391530.P12667374844146813038

/-! ## A391530.P1826022773057367664

`∩[A094619(n+1), A276525(n+1)]`
-/

namespace A391530.P1826022773057367664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094619 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276525 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391530.P1826022773057367664

/-!
# A391531: Discriminants of real quadratic fields with class group C_2 and form class group C_2 X C_2.

The programs for A391531, there is no canonical definition to state claims against.
-/

/-! ## A391531.P2378555704919387280

`filter[A094619(n+1), A359606(#)]`
-/

namespace A391531.P2378555704919387280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094619 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359606 (f1 j).toNat = 1) n)

end

end A391531.P2378555704919387280

/-! ## A391531.P1807410074971292150

`∩[A033992(n+1), A094619(n+1)]`
-/

namespace A391531.P1807410074971292150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033992 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094619 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391531.P1807410074971292150

/-! ## A391531.P883231075051314544

`∩[A094619(n+1), A214195(n+1)]`
-/

namespace A391531.P883231075051314544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094619 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214195 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391531.P883231075051314544

/-! ## A391531.P4605495481536239272

`∩[A094619(n+1), A349794(n+1)]`
-/

namespace A391531.P4605495481536239272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094619 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349794 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391531.P4605495481536239272

/-! ## A391531.P9978583642934003910

`∩[A000977(n+1), A094619(n+1)]`
-/

namespace A391531.P9978583642934003910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000977 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094619 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391531.P9978583642934003910

/-! ## A391531.P8789327013860980861

`∩[A030230(n+1), A094619(n+1)]`
-/

namespace A391531.P8789327013860980861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030230 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094619 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391531.P8789327013860980861

/-! ## A391531.P8413725807153958375

`∩[A094619(n+1), A177733(n+1)]`
-/

namespace A391531.P8413725807153958375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094619 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177733 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391531.P8413725807153958375

/-! ## A391531.P7226815368336025304

`∩[A022544(n+1), A094619(n+1)]`
-/

namespace A391531.P7226815368336025304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022544 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094619 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391531.P7226815368336025304

/-! ## A391531.P6149712104800553922

`∩[A004435(n+1), A094619(n+1)]`
-/

namespace A391531.P6149712104800553922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004435 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094619 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391531.P6149712104800553922

/-! ## A391531.P559348092160127067

`∩[A018825(n+1), A094619(n+1)]`
-/

namespace A391531.P559348092160127067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018825 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094619 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391531.P559348092160127067

/-! ## A391531.P6456947156221187310

`∩[A004439(n+1), A094619(n+1)]`
-/

namespace A391531.P6456947156221187310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004439 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094619 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391531.P6456947156221187310

/-! ## A391531.P616080429223741287

`∩[A094619(n+1), A187811(n+1)]`
-/

namespace A391531.P616080429223741287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094619 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187811 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391531.P616080429223741287

/-! ## A391531.P7189568451164084306

`filter[A094619(n+1), A092248(#)]`
-/

namespace A391531.P7189568451164084306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094619 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A092248 (f1 j).toNat = 1) n)

end

end A391531.P7189568451164084306

/-! ## A391531.P15926000555003642950

`∩[A094619(n+1), A263737(n+1)]`
-/

namespace A391531.P15926000555003642950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094619 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263737 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391531.P15926000555003642950

/-!
# A391532: Discriminants of real quadratic fields with class group C_3 and form class group C_6.

The programs for A391532, there is no canonical definition to state claims against.
-/

/-! ## A391532.P14275493754132532121

`filter[A094612(n+1), A354108(#)]`
-/

namespace A391532.P14275493754132532121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094612 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354108 (f1 j).toNat = 1) n)

end

end A391532.P14275493754132532121

/-! ## A391532.P1728880014574047499

`filter[A094612(n+1), A358680(#)]`
-/

namespace A391532.P1728880014574047499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094612 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358680 (f1 j).toNat = 1) n)

end

end A391532.P1728880014574047499

/-! ## A391532.P6599664507499583268

`filter[A094612(n+1), A359781(#)]`
-/

namespace A391532.P6599664507499583268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094612 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359781 (f1 j).toNat = 1) n)

end

end A391532.P6599664507499583268

/-! ## A391532.P12268894038632754378

`filter[A094612(n+1), A359787(#)]`
-/

namespace A391532.P12268894038632754378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094612 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359787 (f1 j).toNat = 1) n)

end

end A391532.P12268894038632754378

/-! ## A391532.P3456937335468398562

`filter[A094612(n+1), A359828(#)]`
-/

namespace A391532.P3456937335468398562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094612 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359828 (f1 j).toNat = 1) n)

end

end A391532.P3456937335468398562

/-! ## A391532.P718152057011442231

`filter[A094612(n+1), A005171(#)]`
-/

namespace A391532.P718152057011442231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094612 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A391532.P718152057011442231

/-! ## A391532.P6545332736381287951

`filter[A094612(n+1), A066247(#)]`
-/

namespace A391532.P6545332736381287951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094612 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A391532.P6545332736381287951

/-! ## A391532.P15235211913310693129

`filter[A094612(n+1), A202238(#)]`
-/

namespace A391532.P15235211913310693129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094612 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A202238 (f1 j).toNat = 1) n)

end

end A391532.P15235211913310693129

/-! ## A391532.P16640987759149770744

`filter[A094612(n+1), A292438(#)]`
-/

namespace A391532.P16640987759149770744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094612 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A292438 (f1 j).toNat = 1) n)

end

end A391532.P16640987759149770744

/-! ## A391532.P3363009523478690950

`filter[A094612(n+1), A359605(#)]`
-/

namespace A391532.P3363009523478690950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094612 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359605 (f1 j).toNat = 1) n)

end

end A391532.P3363009523478690950

/-! ## A391532.P4326036809235692969

`∩[A072902(n+1), A094612(n+1)]`
-/

namespace A391532.P4326036809235692969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072902 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094612 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391532.P4326036809235692969

/-! ## A391532.P2703300595981447394

`∩[A072902(n+1), A344409(n+1)]`
-/

namespace A391532.P2703300595981447394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072902 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344409 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391532.P2703300595981447394

/-! ## A391532.P6829888619497234715

`filter[A094612(n+1), A174898(#)]`
-/

namespace A391532.P6829888619497234715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094612 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A174898 (f1 j).toNat = 1) n)

end

end A391532.P6829888619497234715

/-! ## A391532.P3079890045725991751

`filter[A094612(n+1), A359768(#)]`
-/

namespace A391532.P3079890045725991751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094612 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359768 (f1 j).toNat = 1) n)

end

end A391532.P3079890045725991751

/-!
# A391537: Guaranteed win if opponent chooses one of two baskets and the player chooses the coins with values from 1 to n (see Comments for details).

The programs for A391537, the canonical program `A391537.P6365406852932535841` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A391537 has offset 1).

The definition of A391537 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A391537.P6365406852932535841

`floor((n+1)*n/4)+n+1`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A391537

/-- `floor((n+1)*n/4)+n+1` -/
def P6365406852932535841.Spec : Prop :=
  ∀ n, P6365406852932535841.a n = A391537 (n + 1)

theorem P6365406852932535841.correct : P6365406852932535841.Spec := by
  intro n
  simp only [A391537, Nat.add_sub_cancel]

end A391537

/-! ## A391537.P8046365846708560022

`(A213484(n+2)-4)/3`
-/

namespace A391537.P8046365846708560022
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A213484 (n + 2) - 4 : ℚ) / 3

end

end A391537.P8046365846708560022

namespace A391537

/-- `(A213484(n+2)-4)/3` -/
def P8046365846708560022.Spec : Prop :=
  ∀ n, P8046365846708560022.a n = (A391537 (n + 1) : ℚ)

end A391537

/-! ## A391537.P4029865133283795562

`(A373584(n+3)-7)/6`
-/

namespace A391537.P4029865133283795562
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A373584 (n + 3) - 7 : ℚ) / 6

end

end A391537.P4029865133283795562

namespace A391537

/-- `(A373584(n+3)-7)/6` -/
def P4029865133283795562.Spec : Prop :=
  ∀ n, P4029865133283795562.a n = (A391537 (n + 1) : ℚ)

end A391537

/-! ## A391537.P11890234103367539420

`round(sinh(log(∑[n+2])))`
-/

namespace A391537.P11890234103367539420
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sinh (Real.log ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ)))

end

end A391537.P11890234103367539420

namespace A391537

/-- `round(sinh(log(∑[n+2])))` -/
def P11890234103367539420.Spec : Prop :=
  ∀ n, P11890234103367539420.a n = A391537 (n + 1)

end A391537

/-! ## A391537.P6501176072036672945

`round(cot(2/∑[n+2]))`
-/

namespace A391537.P6501176072036672945
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.cot (2 / ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) : ℝ))

end

end A391537.P6501176072036672945

namespace A391537

/-- `round(cot(2/∑[n+2]))` -/
def P6501176072036672945.Spec : Prop :=
  ∀ n, P6501176072036672945.a n = A391537 (n + 1)

end A391537

/-! ## A391537.P13901595714764163269

`∑[∑[char[or(2, n)]]+1]`
-/

namespace A391537.P13901595714764163269
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A391537.P13901595714764163269

namespace A391537

/-- `∑[∑[char[or(2, n)]]+1]` -/
def P13901595714764163269.Spec : Prop :=
  ∀ n, (P13901595714764163269.a n : ℤ) = A391537 (n + 1)

end A391537

/-! ## A391537.P2568419587200545585

`∑[∑[and(2, n)!]-n]`
-/

namespace A391537.P2568419587200545585
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (Nat.land 2 n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A391537.P2568419587200545585

namespace A391537

/-- `∑[∑[and(2, n)!]-n]` -/
def P2568419587200545585.Spec : Prop :=
  ∀ n, P2568419587200545585.a n = A391537 (n + 1)

end A391537

/-! ## A391537.P8463549281402085638

`and(-2, ∑[n+2])/2`
-/

namespace A391537.P8463549281402085638
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land (-2) ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) : ℚ) / 2

end

end A391537.P8463549281402085638

namespace A391537

/-- `and(-2, ∑[n+2])/2` -/
def P8463549281402085638.Spec : Prop :=
  ∀ n, P8463549281402085638.a n = (A391537 (n + 1) : ℚ)

end A391537

/-! ## A391537.P5145824294714575800

`∑[∑[and(2, n)/2]+1]`
-/

namespace A391537.P5145824294714575800
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.land 2 n : ℚ) / 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A391537.P5145824294714575800

namespace A391537

/-- `∑[∑[and(2, n)/2]+1]` -/
def P5145824294714575800.Spec : Prop :=
  ∀ n, P5145824294714575800.a n = (A391537 (n + 1) : ℚ)

end A391537

/-! ## A391537.P3367677028195418987

`(or(1, ∑[n+2])-1)/2`
-/

namespace A391537.P3367677028195418987
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.lor 1 (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ) - 1 : ℚ) / 2

end

end A391537.P3367677028195418987

namespace A391537

/-- `(or(1, ∑[n+2])-1)/2` -/
def P3367677028195418987.Spec : Prop :=
  ∀ n, P3367677028195418987.a n = (A391537 (n + 1) : ℚ)

end A391537

/-! ## A391537.P5872452097844279967

`∑[∑[gcd(2, ∑[n+1])]-n]`
-/

namespace A391537.P5872452097844279967
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 (∑ j ∈ Finset.range (n + 1), f3 j)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A391537.P5872452097844279967

namespace A391537

/-- `∑[∑[gcd(2, ∑[n+1])]-n]` -/
def P5872452097844279967.Spec : Prop :=
  ∀ n, P5872452097844279967.a n = A391537 (n + 1)

end A391537

/-! ## A391537.P11401512331148018886

`∑[a(n-4)+2]` with `a(0)=1, a(1)=1, a(2)=2, a(3)=3`
-/

namespace A391537.P11401512331148018886
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 2, 3] fun n f1 =>
  f1 (n - 4) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A391537.P11401512331148018886

namespace A391537

/-- `∑[a(n-4)+2]` -/
def P11401512331148018886.Spec : Prop :=
  ∀ n, (P11401512331148018886.a n : ℤ) = A391537 (n + 1)

end A391537

/-! ## A391537.P14099208914387549930

`∑[∑[1-a(n-2)]]` with `a(0)=1, a(1)=0, a(2)=1`
-/

namespace A391537.P14099208914387549930
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1] fun n f2 =>
  1 - f2 (n - 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A391537.P14099208914387549930

namespace A391537

/-- `∑[∑[1-a(n-2)]]` -/
def P14099208914387549930.Spec : Prop :=
  ∀ n, P14099208914387549930.a n = A391537 (n + 1)

end A391537

/-! ## A391537.P4864073871756666966

`ceil((n+2)/tan(4/(n+3)))`
-/

namespace A391537.P4864073871756666966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 2 : ℝ) / Real.tan (4 / (n + 3 : ℚ) : ℝ)⌉

end

end A391537.P4864073871756666966

namespace A391537

/-- `ceil((n+2)/tan(4/(n+3)))` -/
def P4864073871756666966.Spec : Prop :=
  ∀ n, P4864073871756666966.a n = A391537 (n + 1)

end A391537

/-! ## A391537.P18172327346266188913

`ceil((n+2)*cot(4/(n+3)))`
-/

namespace A391537.P18172327346266188913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 2 : ℝ) * Real.cot (4 / (n + 3 : ℚ) : ℝ)⌉

end

end A391537.P18172327346266188913

namespace A391537

/-- `ceil((n+2)*cot(4/(n+3)))` -/
def P18172327346266188913.Spec : Prop :=
  ∀ n, P18172327346266188913.a n = A391537 (n + 1)

end A391537

/-! ## A391537.P14797066312969098437

`round((n+3)/sinh(4/(n+2)))`
-/

namespace A391537.P14797066312969098437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n + 3 : ℝ) / Real.sinh (4 / (n + 2 : ℚ) : ℝ))

end

end A391537.P14797066312969098437

namespace A391537

/-- `round((n+3)/sinh(4/(n+2)))` -/
def P14797066312969098437.Spec : Prop :=
  ∀ n, P14797066312969098437.a n = A391537 (n + 1)

end A391537

/-! ## A391537.P14519412579686332948

`∑[n+2-∑[∑[n+1]%2]]`
-/

namespace A391537.P14519412579686332948
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f3 j) % 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A391537.P14519412579686332948

namespace A391537

/-- `∑[n+2-∑[∑[n+1]%2]]` -/
def P14519412579686332948.Spec : Prop :=
  ∀ n, P14519412579686332948.a n = A391537 (n + 1)

end A391537

/-! ## A391537.P15606224831342576487

`∑[n+2-∑[and(1, ∑[n+1])]]`
-/

namespace A391537.P15606224831342576487
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (∑ j ∈ Finset.range (n + 1), f3 j)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A391537.P15606224831342576487

namespace A391537

/-- `∑[n+2-∑[and(1, ∑[n+1])]]` -/
def P15606224831342576487.Spec : Prop :=
  ∀ n, P15606224831342576487.a n = A391537 (n + 1)

end A391537

/-! ## A391537.P7183681855192989356

`∑[∪[2*n+1, 3*n]-(n-1)]`
-/

namespace A391537.P7183681855192989356
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f2 j = x) ∨ ∃ j, f3 j = x) n : ℤ) - ((n : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A391537.P7183681855192989356

namespace A391537

/-- `∑[∪[2*n+1, 3*n]-(n-1)]` -/
def P7183681855192989356.Spec : Prop :=
  ∀ n, P7183681855192989356.a n = A391537 (n + 1)

end A391537

/-! ## A391537.P13082731740407795419

`floor(sqrt(A233329(n)))`
-/

namespace A391537.P13082731740407795419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A233329 n)

end

end A391537.P13082731740407795419

namespace A391537

/-- `floor(sqrt(A233329(n)))` -/
def P13082731740407795419.Spec : Prop :=
  ∀ n, P13082731740407795419.a n = A391537 (n + 1)

end A391537

/-!
# A391538: Guaranteed win if opponent chooses one of three baskets and the player chooses the coins with values from 1 to n (see Comments for details).

The programs for A391538, there is no canonical definition to state claims against.
-/

/-! ## A391538.P6254009257973928461

`round(∑[∑[acot(sqrt(n+2))]])`
-/

namespace A391538.P6254009257973928461
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (Real.sqrt (n + 2 : ℝ))

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A391538.P6254009257973928461

/-! ## A391538.P10156362612951929839

`∑[ceil(∑[cos((n+1)²)²²])]`
-/

namespace A391538.P10156362612951929839
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Real.cos ((n + 1) ^ 2 : ℝ) ^ 2) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f2 j⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A391538.P10156362612951929839

/-! ## A391538.P17989795405188299232

`ceil(((2*n+1)/cosh(ϕ))^ϕ)`
-/

namespace A391538.P17989795405188299232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((2 * n + 1 : ℝ) / Real.cosh Real.goldenRatio) ^ Real.goldenRatio⌉

end

end A391538.P17989795405188299232

/-! ## A391538.P8787682512497462345

`floor(ratio[A346271(n)])`
-/

namespace A391538.P8787682512497462345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346271 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (n + 1) : ℚ) / (f1 n : ℚ)⌋

end

end A391538.P8787682512497462345

/-! ## A391538.P820621840835955876

`floor(sqrt(A156778(n+1)))`
-/

namespace A391538.P820621840835955876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A156778 (n + 1))

end

end A391538.P820621840835955876

/-!
# A391541: a(n) = Sum_{k=0..floor(2*n/5)} binomial(2*n-3*k,2*k).

The programs for A391541, the canonical program `A391541.P828086827920938965` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A391541 has offset 0).

The definition of A391541 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A391541.P828086827920938965

`2*a(n-1)-a(n-2)+4*a(n-3)+a(n-5)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=4, a(4)=11`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A391541

/-- `2*a(n-1)-a(n-2)+4*a(n-3)+a(n-5)` -/
def P828086827920938965.Spec : Prop :=
  ∀ n, P828086827920938965.a n = A391541 n

theorem P828086827920938965.correct : P828086827920938965.Spec := by
  intro n
  simp only [A391541]

end A391541

/-! ## A391541.P2365870712714590384

`A001687(3*n+n+1)`
-/

namespace A391541.P2365870712714590384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001687 (3 * n + (n + 1))

end

end A391541.P2365870712714590384

namespace A391541

/-- `A001687(3*n+n+1)` -/
def P2365870712714590384.Spec : Prop :=
  ∀ n, P2365870712714590384.a n = A391541 n

end A391541

/-! ## A391541.P1468019046293748833

`A005253(A004273(n))`
-/

namespace A391541.P1468019046293748833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005253 (A004273 n).toNat

end

end A391541.P1468019046293748833

namespace A391541

/-- `A005253(A004273(n))` -/
def P1468019046293748833.Spec : Prop :=
  ∀ n, P1468019046293748833.a n = A391541 n

end A391541

/-! ## A391541.P12548559559942221190

`A005253(A163985(n))`
-/

namespace A391541.P12548559559942221190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005253 (A163985 n).toNat

end

end A391541.P12548559559942221190

namespace A391541

/-- `A005253(A163985(n))` -/
def P12548559559942221190.Spec : Prop :=
  ∀ n, P12548559559942221190.a n = A391541 n

end A391541

/-! ## A391541.P17815953928247412966

`A005253(A004274(n+1))`
-/

namespace A391541.P17815953928247412966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005253 (A004274 (n + 1)).toNat

end

end A391541.P17815953928247412966

namespace A391541

/-- `A005253(A004274(n+1))` -/
def P17815953928247412966.Spec : Prop :=
  ∀ n, P17815953928247412966.a n = A391541 n

end A391541

/-! ## A391541.P4760229664548183500

`A005253(A004280(n+1))`
-/

namespace A391541.P4760229664548183500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005253 (A004280 (n + 1)).toNat

end

end A391541.P4760229664548183500

namespace A391541

/-- `A005253(A004280(n+1))` -/
def P4760229664548183500.Spec : Prop :=
  ∀ n, P4760229664548183500.a n = A391541 n

end A391541

/-!
# A391542: a(n) = Sum_{k=0..n} binomial(4*n+k,n).

The programs for A391542, the canonical program `A391542.P11430227394760662820` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A391542 has offset 0).

The definition of A391542 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A391542.P11430227394760662820

`C(5*n+1, n+1)-C(4*n, n+1)`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A391542

/-- `C(5*n+1, n+1)-C(4*n, n+1)` -/
def P11430227394760662820.Spec : Prop :=
  ∀ n, P11430227394760662820.a n = A391542 n

theorem P11430227394760662820.correct : P11430227394760662820.Spec := by
  intro n
  simp only [A391542]

end A391542

/-! ## A391542.P13750958317565254440

`A085475(A081268(n))`
-/

namespace A391542.P13750958317565254440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085475 (A081268 n).toNat

end

end A391542.P13750958317565254440

namespace A391542

/-- `A085475(A081268(n))` -/
def P13750958317565254440.Spec : Prop :=
  ∀ n, P13750958317565254440.a n = A391542 n

end A391542

/-!
# A391545: Expansion of e.g.f. exp(g^2 - 1), where g = 1+x*g^3 is the g.f. of A001764.

The programs for A391545, there is no canonical definition to state claims against.
-/

/-! ## A391545.P1882775623328097436

`A120613(A334242(n))+1`
-/

namespace A391545.P1882775623328097436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120613 (A334242 n).toNat + 1

end

end A391545.P1882775623328097436

/-!
# A391552: Triangle read by rows: T(n,k) = Sum_{j=0..k} (-1)^(k-j) * binomial(k,j) * (3+j)^n.

The programs for A391552, there is no canonical definition to state claims against.
-/

/-! ## A391552.P11241042363183505534

`A143495(n+3)*A233543(n)`
-/

namespace A391552.P11241042363183505534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143495 (n + 3) * A233543 n

end

end A391552.P11241042363183505534

/-! ## A391552.P660619596879263934

`A000142(A002262(n))*A143495(n+3)`
-/

namespace A391552.P660619596879263934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 (A002262 n).toNat * A143495 (n + 3)

end

end A391552.P660619596879263934

/-!
# A391553: Expansion of e.g.f. exp((g^2 - 1)/2), where g = 1+x*g^2 is the g.f. of A000108.

The programs for A391553, there is no canonical definition to state claims against.
-/

/-! ## A391553.P15539481474786514947

`A304869(A226710(n+2))`
-/

namespace A391553.P15539481474786514947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304869 (A226710 (n + 2)).toNat

end

end A391553.P15539481474786514947

/-!
# A391554: Expansion of e.g.f. exp((g^3 - 1)/3), where g = 1+x*g^2 is the g.f. of A000108.

The programs for A391554, there is no canonical definition to state claims against.
-/

/-! ## A391554.P13969568036351962895

`A196882(n)+A124760(A388134(n))`
-/

namespace A391554.P13969568036351962895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196882 n + A124760 (A388134 n).toNat

end

end A391554.P13969568036351962895

/-!
# A391555: Expansion of e.g.f. exp((g^4 - 1)/4), where g = 1+x*g^2 is the g.f. of A000108.

The programs for A391555, there is no canonical definition to state claims against.
-/

/-! ## A391555.P12028859580812172460

`A246450(A000142(n)*A364907(n))`
-/

namespace A391555.P12028859580812172460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246450 (A000142 n * A364907 n).toNat

end

end A391555.P12028859580812172460

/-!
# A391556: Expansion of e.g.f. exp((g^2 - 1)/2), where g = 1+x*g^3 is the g.f. of A001764.

The programs for A391556, there is no canonical definition to state claims against.
-/

/-! ## A391556.P4027782375206201124

`A025584(A320945(n+2))-A003637(2*(n+1))`
-/

namespace A391556.P4027782375206201124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025584 (A320945 (n + 2)).toNat - A003637 (2 * (n + 1))

end

end A391556.P4027782375206201124

/-!
# A391557: Expansion of e.g.f. exp((g^3 - 1)/3), where g = 1+x*g^3 is the g.f. of A001764.

The programs for A391557, there is no canonical definition to state claims against.
-/

/-! ## A391557.P9437862487283284912

`A238554(A005825(n))`
-/

namespace A391557.P9437862487283284912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238554 (A005825 n).toNat

end

end A391557.P9437862487283284912

/-!
# A391558: Expansion of e.g.f. exp((g^4 - 1)/4), where g = 1+x*g^3 is the g.f. of A001764.

The programs for A391558, there is no canonical definition to state claims against.
-/

/-! ## A391558.P5430911543261896614

`A244489(A097117(n+1))`
-/

namespace A391558.P5430911543261896614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244489 (A097117 (n + 1)).toNat

end

end A391558.P5430911543261896614

/-!
# A391559: Expansion of e.g.f. exp((g^2 - 1)/2), where g = 1+x*g^4 is the g.f. of A002293.

The programs for A391559, there is no canonical definition to state claims against.
-/

/-! ## A391559.P12174016123449592431

`A122181(A250046(a(n-1)))` with `a(0)=1, a(1)=1, a(2)=10`
-/

namespace A391559.P12174016123449592431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 10] fun n a =>
  A122181 (A250046 (a (n - 1)).toNat).toNat

end

end A391559.P12174016123449592431

/-!
# A391561: Expansion of e.g.f. exp((g^4 - 1)/4), where g = 1+x*g^4 is the g.f. of A002293.

The programs for A391561, there is no canonical definition to state claims against.
-/

/-! ## A391561.P18182609121908558948

`A072601(A113671(n))`
-/

namespace A391561.P18182609121908558948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072601 (A113671 n).toNat

end

end A391561.P18182609121908558948

/-!
# A391562: Number of subsets of {1..n} where no two elements sum to a prime.

The programs for A391562, there is no canonical definition to state claims against.
-/

/-! ## A391562.P17521541497248915683

`A331162(A018057(n+1))`
-/

namespace A391562.P17521541497248915683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331162 (A018057 (n + 1)).toNat

end

end A391562.P17521541497248915683

/-! ## A391562.P1856131966598564391

`A139338(A034337(n+1))`
-/

namespace A391562.P1856131966598564391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139338 (A034337 (n + 1)).toNat

end

end A391562.P1856131966598564391

/-! ## A391562.P5815102485298584230

`A035060(A188917(n+1))`
-/

namespace A391562.P5815102485298584230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035060 (A188917 (n + 1)).toNat

end

end A391562.P5815102485298584230

/-! ## A391562.P4409216822367923613

`A083023(A202091(n+1))`
-/

namespace A391562.P4409216822367923613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083023 (A202091 (n + 1)).toNat

end

end A391562.P4409216822367923613

/-! ## A391562.P11881827282078433598

`A035060(A353035(n+1))`
-/

namespace A391562.P11881827282078433598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035060 (A353035 (n + 1)).toNat

end

end A391562.P11881827282078433598

/-!
# A391563: a(n) is the number of ways to write n = p + q where p is prime and q is the reverse of a prime.

The programs for A391563, there is no canonical definition to state claims against.
-/

/-! ## A391563.P14794295262747142514

`A144196(A228390(n+1))+A073610(n+1)`
-/

namespace A391563.P14794295262747142514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144196 (A228390 (n + 1)).toNat + A073610 (n + 1)

end

end A391563.P14794295262747142514

/-! ## A391563.P10698319494613602333

`or(A067898(A358369(n)), A073610(n+1))`
-/

namespace A391563.P10698319494613602333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A067898 (A358369 n).toNat) (A073610 (n + 1))

end

end A391563.P10698319494613602333

/-!
# A391566: Numbers k such that Stern polynomial B(k,x) is a multiple of B(5,x).

The programs for A391566, there is no canonical definition to state claims against.
-/

/-! ## A391566.P8841748585106708363

`5*A391346(n+1)`
-/

namespace A391566.P8841748585106708363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A391346 (n + 1)

end

end A391566.P8841748585106708363

/-! ## A391566.P17472001460696364048

`A008587(A391346(n+1))`
-/

namespace A391566.P17472001460696364048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008587 (A391346 (n + 1)).toNat

end

end A391566.P17472001460696364048

/-!
# A391569: a(n) = n XOR A391573(n).

The programs for A391569, there is no canonical definition to state claims against.
-/

/-! ## A391569.P17191255255741842450

`xor(n+1, A391573(n+1))`
-/

namespace A391569.P17191255255741842450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n + 1 : ℤ) (A391573 (n + 1))

end

end A391569.P17191255255741842450

/-!
# A391570: a(n) is the smallest odd k > 1 such that k*n = A048720(k,m) for some m, where A048720 is carryless base-2 multiplication.

The programs for A391570, there is no canonical definition to state claims against.
-/

/-! ## A391570.P17416151407875349459

`A391725(∑[n+2])`
-/

namespace A391570.P17416151407875349459
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391725 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A391570.P17416151407875349459

/-!
# A391571: a(n) is the value of A280500(n*k, k) for the smallest odd k > 1 for which this value is not zero, where A280500 implements the carryless base-2 division, and returns 0 if the division leaves nonzero remainder.

The programs for A391571, there is no canonical definition to state claims against.
-/

/-! ## A391571.P15458821858321650183

`xor(n+1, A391586(n+1))`
-/

namespace A391571.P15458821858321650183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n + 1 : ℤ) (A391586 (n + 1))

end

end A391571.P15458821858321650183

/-! ## A391571.P15772613121459582999

`A391726(∑[n+2])`
-/

namespace A391571.P15772613121459582999
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391726 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A391571.P15772613121459582999

/-!
# A391572: a(n) is the smallest odd k > 1 which divides A048720(n,k) [in ordinary arithmetic], where A048720 is carryless base-2 multiplication.

The programs for A391572, there is no canonical definition to state claims against.
-/

/-! ## A391572.P12168807542212860187

`A391735(∑[n+2])`
-/

namespace A391572.P12168807542212860187
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391735 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A391572.P12168807542212860187

/-!
# A391573: a(n) is the value of quotient A048720(n,k)/k for the smallest odd k > 1 for which A048720(n,k) is a multiple of k (in ordinary arithmetic), where A048720 is carryless base-2 multiplication.

The programs for A391573, there is no canonical definition to state claims against.
-/

/-! ## A391573.P15444699349742197770

`xor(n+1, A391569(n+1))`
-/

namespace A391573.P15444699349742197770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n + 1 : ℤ) (A391569 (n + 1))

end

end A391573.P15444699349742197770

/-! ## A391573.P8239588531813020868

`A391736(∑[n+2])`
-/

namespace A391573.P8239588531813020868
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391736 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A391573.P8239588531813020868

/-!
# A391574: Numbers k such that 3*k = A048720(3,m) for some m, where A048720 is carryless base-2 multiplication.

The programs for A391574, the canonical program `A391574.P13642684315948743333` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A391574 has offset 1).

The definition of A391574 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5992 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A391574.P11028841686527069491

`eq[A026492(n), A054977(n)]`
-/

namespace A391574.P11028841686527069491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026492 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A391574.P11028841686527069491

namespace A391574

/-- `eq[A026492(n), A054977(n)]` -/
def P11028841686527069491.Spec : Prop :=
  ∀ n, (P11028841686527069491.a n : ℤ) = A391574 (n + 1)

end A391574

/-! ## A391574.P13642684315948743333

`eq[A026492(n), A057427(n)]`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A391574

/-- `eq[A026492(n), A057427(n)]` -/
def P13642684315948743333.Spec : Prop :=
  ∀ n, (P13642684315948743333.a n : ℤ) = A391574 (n + 1)

theorem P13642684315948743333.correct : P13642684315948743333.Spec := by
  intro n
  simp only [A391574, Nat.add_sub_cancel]

end A391574

/-! ## A391574.P4169892047201301286

`eq[A026492(n), A158388(n)]`
-/

namespace A391574.P4169892047201301286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026492 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158388 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A391574.P4169892047201301286

namespace A391574

/-- `eq[A026492(n), A158388(n)]` -/
def P4169892047201301286.Spec : Prop :=
  ∀ n, (P4169892047201301286.a n : ℤ) = A391574 (n + 1)

end A391574

/-! ## A391574.P13537908103515139490

`eq[A000007(n), A293162(n)]`
-/

namespace A391574.P13537908103515139490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293162 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A391574.P13537908103515139490

namespace A391574

/-- `eq[A000007(n), A293162(n)]` -/
def P13537908103515139490.Spec : Prop :=
  ∀ n, (P13537908103515139490.a n : ℤ) = A391574 (n + 1)

end A391574

/-! ## A391574.P4931615827781671498

`eq[A000038(n), A293162(n)]`
-/

namespace A391574.P4931615827781671498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293162 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A391574.P4931615827781671498

namespace A391574

/-- `eq[A000038(n), A293162(n)]` -/
def P4931615827781671498.Spec : Prop :=
  ∀ n, (P4931615827781671498.a n : ℤ) = A391574 (n + 1)

end A391574

/-! ## A391574.P1104015643671572806

`∪[A095775(n+1), A391575(n+1)]`
-/

namespace A391574.P1104015643671572806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095775 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391575 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A391574.P1104015643671572806

namespace A391574

/-- `∪[A095775(n+1), A391575(n+1)]` -/
def P1104015643671572806.Spec : Prop :=
  ∀ n, (P1104015643671572806.a n : ℤ) = A391574 (n + 1)

end A391574

/-! ## A391574.P1194807330105077015

`∪[A384879(n+1), A391575(n+1)]`
-/

namespace A391574.P1194807330105077015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384879 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391575 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A391574.P1194807330105077015

namespace A391574

/-- `∪[A384879(n+1), A391575(n+1)]` -/
def P1194807330105077015.Spec : Prop :=
  ∀ n, (P1194807330105077015.a n : ℤ) = A391574 (n + 1)

end A391574

/-! ## A391574.P11363119848763305616

`eq[A151933(n), A293162(n)]`
-/

namespace A391574.P11363119848763305616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293162 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A391574.P11363119848763305616

namespace A391574

/-- `eq[A151933(n), A293162(n)]` -/
def P11363119848763305616.Spec : Prop :=
  ∀ n, (P11363119848763305616.a n : ℤ) = A391574 (n + 1)

end A391574

/-! ## A391574.P32983419932213399

`A004396(A360799(n+1))`
-/

namespace A391574.P32983419932213399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A360799 (n + 1)).toNat

end

end A391574.P32983419932213399

namespace A391574

/-- `A004396(A360799(n+1))` -/
def P32983419932213399.Spec : Prop :=
  ∀ n, P32983419932213399.a n = A391574 (n + 1)

end A391574

/-!
# A391575: Numbers k such that 3*k = A048720(3,m) for some m > k, where A048720 is carryless base-2 multiplication.

The programs for A391575, the canonical program `A391575.P15759118219380588408` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A391575 has offset 1).

The definition of A391575 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5568 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A391575.P3250550951088765932

`∩[A004780(n+1), A391574(n+1)]`
-/

namespace A391575.P3250550951088765932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004780 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391574 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391575.P3250550951088765932

namespace A391575

/-- `∩[A004780(n+1), A391574(n+1)]` -/
def P3250550951088765932.Spec : Prop :=
  ∀ n, (P3250550951088765932.a n : ℤ) = A391575 (n + 1)

end A391575

/-! ## A391575.P13841288894657157542

`eq[A132971(n), A293162(n)]`
-/

namespace A391575.P13841288894657157542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132971 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293162 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A391575.P13841288894657157542

namespace A391575

/-- `eq[A132971(n), A293162(n)]` -/
def P13841288894657157542.Spec : Prop :=
  ∀ n, (P13841288894657157542.a n : ℤ) = A391575 (n + 1)

end A391575

/-! ## A391575.P15759118219380588408

`eq[A286576(n), A293162(n)]`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A391575

/-- `eq[A286576(n), A293162(n)]` -/
def P15759118219380588408.Spec : Prop :=
  ∀ n, (P15759118219380588408.a n : ℤ) = A391575 (n + 1)

theorem P15759118219380588408.correct : P15759118219380588408.Spec := by
  intro n
  simp only [A391575, Nat.add_sub_cancel]

end A391575

/-! ## A391575.P6496532662628163663

`eq[A085357(n), A293162(n)]`
-/

namespace A391575.P6496532662628163663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085357 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293162 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A391575.P6496532662628163663

namespace A391575

/-- `eq[A085357(n), A293162(n)]` -/
def P6496532662628163663.Spec : Prop :=
  ∀ n, (P6496532662628163663.a n : ℤ) = A391575 (n + 1)

end A391575

/-! ## A391575.P9225360961222275874

`eq[A293162(n), A365538(n)]`
-/

namespace A391575.P9225360961222275874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293162 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365538 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A391575.P9225360961222275874

namespace A391575

/-- `eq[A293162(n), A365538(n)]` -/
def P9225360961222275874.Spec : Prop :=
  ∀ n, (P9225360961222275874.a n : ℤ) = A391575 (n + 1)

end A391575

/-!
# A391576: Numbers k such that A048720(3,k) = 3*m for some m, where A048720 is carryless base-2 multiplication.

The programs for A391576, the canonical program `A391576.P4667412630720203092` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A391576 has offset 1).

The definition of A391576 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A391576.P4667412630720203092

`lt[1, or(n-1, 2*n)%3]`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A391576

/-- `lt[1, or(n-1, 2*n)%3]` -/
def P4667412630720203092.Spec : Prop :=
  ∀ n, (P4667412630720203092.a n : ℤ) = A391576 (n + 1)

theorem P4667412630720203092.correct : P4667412630720203092.Spec := by
  intro n
  simp only [A391576, Nat.add_sub_cancel]

end A391576

/-! ## A391576.P41721115695586163

`lt[1, xor(n-1, 2*n)%3]`
-/

namespace A391576.P41721115695586163
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.xor ((n : ℤ) - 1) (2 * n : ℤ)) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A391576.P41721115695586163

namespace A391576

/-- `lt[1, xor(n-1, 2*n)%3]` -/
def P41721115695586163.Spec : Prop :=
  ∀ n, (P41721115695586163.a n : ℤ) = A391576 (n + 1)

end A391576

/-! ## A391576.P1999959371323311411

`eq[A000007(n), A284574(n)]`
-/

namespace A391576.P1999959371323311411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284574 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A391576.P1999959371323311411

namespace A391576

/-- `eq[A000007(n), A284574(n)]` -/
def P1999959371323311411.Spec : Prop :=
  ∀ n, (P1999959371323311411.a n : ℤ) = A391576 (n + 1)

end A391576

/-! ## A391576.P11172506198178300859

`eq[A000038(n), A284574(n)]`
-/

namespace A391576.P11172506198178300859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284574 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A391576.P11172506198178300859

namespace A391576

/-- `eq[A000038(n), A284574(n)]` -/
def P11172506198178300859.Spec : Prop :=
  ∀ n, (P11172506198178300859.a n : ℤ) = A391576 (n + 1)

end A391576

/-! ## A391576.P17213981924748996361

`eq[A154281(n+1), A284574(n)]`
-/

namespace A391576.P17213981924748996361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154281 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284574 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A391576.P17213981924748996361

namespace A391576

/-- `eq[A154281(n+1), A284574(n)]` -/
def P17213981924748996361.Spec : Prop :=
  ∀ n, (P17213981924748996361.a n : ℤ) = A391576 (n + 1)

end A391576

/-! ## A391576.P7044201056696433186

`eq[A154282(n+1), A284574(n)]`
-/

namespace A391576.P7044201056696433186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154282 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284574 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A391576.P7044201056696433186

namespace A391576

/-- `eq[A154282(n+1), A284574(n)]` -/
def P7044201056696433186.Spec : Prop :=
  ∀ n, (P7044201056696433186.a n : ℤ) = A391576 (n + 1)

end A391576

/-!
# A391577: Numbers k such that A048720(3,k) = 3*m for some m < k, where A048720 is carryless base-2 multiplication.

The programs for A391577, the canonical program `A391577.P11927412629419877182` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A391577 has offset 1).

The definition of A391577 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3427 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A391577.P16281591231861727733

`∩[A391576(n+1), A391578(n+1)]`
-/

namespace A391577.P16281591231861727733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391576 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391578 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391577.P16281591231861727733

namespace A391577

/-- `∩[A391576(n+1), A391578(n+1)]` -/
def P16281591231861727733.Spec : Prop :=
  ∀ n, (P16281591231861727733.a n : ℤ) = A391577 (n + 1)

end A391577

/-! ## A391577.P13055722024911518603

`∩[A004780(n+1), A391576(n+1)]`
-/

namespace A391577.P13055722024911518603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004780 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391576 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391577.P13055722024911518603

namespace A391577

/-- `∩[A004780(n+1), A391576(n+1)]` -/
def P13055722024911518603.Spec : Prop :=
  ∀ n, (P13055722024911518603.a n : ℤ) = A391577 (n + 1)

end A391577

/-! ## A391577.P7415315015801496846

`eq[A085357(n), A284574(n)]`
-/

namespace A391577.P7415315015801496846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085357 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284574 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A391577.P7415315015801496846

namespace A391577

/-- `eq[A085357(n), A284574(n)]` -/
def P7415315015801496846.Spec : Prop :=
  ∀ n, (P7415315015801496846.a n : ℤ) = A391577 (n + 1)

end A391577

/-! ## A391577.P1485952863386459195

`eq[A132971(n), A284574(n)]`
-/

namespace A391577.P1485952863386459195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132971 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284574 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A391577.P1485952863386459195

namespace A391577

/-- `eq[A132971(n), A284574(n)]` -/
def P1485952863386459195.Spec : Prop :=
  ∀ n, (P1485952863386459195.a n : ℤ) = A391577 (n + 1)

end A391577

/-! ## A391577.P11927412629419877182

`eq[A284574(n), A286576(n)]`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A391577

/-- `eq[A284574(n), A286576(n)]` -/
def P11927412629419877182.Spec : Prop :=
  ∀ n, (P11927412629419877182.a n : ℤ) = A391577 (n + 1)

theorem P11927412629419877182.correct : P11927412629419877182.Spec := by
  intro n
  simp only [A391577, Nat.add_sub_cancel]

end A391577

/-! ## A391577.P14939903583280116480

`eq[A284574(n), A365538(n)]`
-/

namespace A391577.P14939903583280116480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284574 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365538 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A391577.P14939903583280116480

namespace A391577

/-- `eq[A284574(n), A365538(n)]` -/
def P14939903583280116480.Spec : Prop :=
  ∀ n, (P14939903583280116480.a n : ℤ) = A391577 (n + 1)

end A391577

/-!
# A391578: Numbers k for which A391573(k) < k.

The programs for A391578, there is no canonical definition to state claims against.
-/

/-! ## A391578.P4691314896285444577

`eq[floor(1/(n+1)), char[A391579(n+1)]]`
-/

namespace A391578.P4691314896285444577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / (n + 1 : ℚ)⌋

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391579 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℤ)) n

end

end A391578.P4691314896285444577

/-! ## A391578.P2422240599692200620

`comp[C(A391573(n+1), n)]`
-/

namespace A391578.P2422240599692200620
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A391573 (n + 1)).toNat n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A391578.P2422240599692200620

/-!
# A391579: Fixed points of A391573.

The programs for A391579, there is no canonical definition to state claims against.
-/

/-! ## A391579.P4291138028505080763

`eq[n+1, A391573(n+1)]+1`
-/

namespace A391579.P4291138028505080763
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391573 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A391579.P4291138028505080763

/-! ## A391579.P15435046125238803112

`record[A391736(∑[n+2])]`
-/

namespace A391579.P15435046125238803112
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391736 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A391579.P15435046125238803112

/-!
# A391582: a(n) is the third odd number k such that k*n = A048720(k,m) for some m, where A048720 is carryless base-2 multiplication.

The programs for A391582, there is no canonical definition to state claims against.
-/

/-! ## A391582.P5915182227373502695

`A391725(A034856(n+2))`
-/

namespace A391582.P5915182227373502695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391725 (A034856 (n + 2)).toNat

end

end A391582.P5915182227373502695

/-! ## A391582.P5689166870124391764

`A391725(A000217(n+3)-2)`
-/

namespace A391582.P5689166870124391764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391725 (A000217 (n + 3) - 2).toNat

end

end A391582.P5689166870124391764

/-! ## A391582.P12507968898729026454

`A391725(A194431(n+2))`
-/

namespace A391582.P12507968898729026454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391725 (A194431 (n + 2)).toNat

end

end A391582.P12507968898729026454

/-!
# A391583: a(n) is the value of A280500(n*k, k) for the third odd number k for which this value is not zero, where A280500 implements the carryless base-2 division, and returns 0 if the division leaves nonzero remainder.

The programs for A391583, there is no canonical definition to state claims against.
-/

/-! ## A391583.P8404252469805292937

`A391726(A034856(n+2))`
-/

namespace A391583.P8404252469805292937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391726 (A034856 (n + 2)).toNat

end

end A391583.P8404252469805292937

/-! ## A391583.P6797143398859880926

`A391726(A000217(n+3)-2)`
-/

namespace A391583.P6797143398859880926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391726 (A000217 (n + 3) - 2).toNat

end

end A391583.P6797143398859880926

/-!
# A391584: Odd numbers k such that 3*k = A048720(m,k) for some m, where A048720 is carryless base-2 multiplication.

The programs for A391584, the canonical program `A391584.P15171015652483584175` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A391584 has offset 1).

The definition of A391584 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2451 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A391584.P15171015652483584175

`∩[2*n+1, A391585(n+1)]`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A391584

/-- `∩[2*n+1, A391585(n+1)]` -/
def P15171015652483584175.Spec : Prop :=
  ∀ n, (P15171015652483584175.a n : ℤ) = A391584 (n + 1)

theorem P15171015652483584175.correct : P15171015652483584175.Spec := by
  intro n
  simp only [A391584, Nat.add_sub_cancel]

end A391584

/-! ## A391584.P17981434169504572687

`∩[A391585(n+1), A060747(n)]`
-/

namespace A391584.P17981434169504572687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391585 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060747 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391584.P17981434169504572687

namespace A391584

/-- `∩[A391585(n+1), A060747(n)]` -/
def P17981434169504572687.Spec : Prop :=
  ∀ n, (P17981434169504572687.a n : ℤ) = A391584 (n + 1)

end A391584

/-! ## A391584.P3057592037675795996

`filter[A391585(n+1), A000035(#)]`
-/

namespace A391584.P3057592037675795996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391585 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A391584.P3057592037675795996

namespace A391584

/-- `filter[A391585(n+1), A000035(#)]` -/
def P3057592037675795996.Spec : Prop :=
  ∀ n, P3057592037675795996.a n = A391584 (n + 1)

end A391584

/-! ## A391584.P10201149323126593996

`record[A325563(2*n+1)]`
-/

namespace A391584.P10201149323126593996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325563 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A391584.P10201149323126593996

namespace A391584

/-- `record[A325563(2*n+1)]` -/
def P10201149323126593996.Spec : Prop :=
  ∀ n, P10201149323126593996.a n = A391584 (n + 1)

end A391584

/-! ## A391584.P1340494036227882912

`A391725(A167614(n+1))`
-/

namespace A391584.P1340494036227882912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391725 (A167614 (n + 1)).toNat

end

end A391584.P1340494036227882912

namespace A391584

/-- `A391725(A167614(n+1))` -/
def P1340494036227882912.Spec : Prop :=
  ∀ n, P1340494036227882912.a n = A391584 (n + 1)

end A391584

/-!
# A391585: Numbers k such that 3*k = A048720(m,k) for some m, where A048720 is carryless base-2 multiplication.

The programs for A391585, the canonical program `A391585.P14461622973833260868` is in `Seq.B006.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A391585 has offset 1).

The definition of A391585 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A391585.P14461622973833260868

`∪[A003714(n), A048717(n)]`

The canonical program, it is in `Seq.B006.C002`.
-/

namespace A391585

/-- `∪[A003714(n), A048717(n)]` -/
def P14461622973833260868.Spec : Prop :=
  ∀ n, (P14461622973833260868.a n : ℤ) = A391585 (n + 1)

theorem P14461622973833260868.correct : P14461622973833260868.Spec := by
  intro n
  simp only [A391585, Nat.add_sub_cancel]

end A391585

/-! ## A391585.P511004399982030142

`eq[A057889(n), A246200(n)]`
-/

namespace A391585.P511004399982030142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057889 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246200 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A391585.P511004399982030142

namespace A391585

/-- `eq[A057889(n), A246200(n)]` -/
def P511004399982030142.Spec : Prop :=
  ∀ n, (P511004399982030142.a n : ℤ) = A391585 (n + 1)

end A391585

/-! ## A391585.P1415207435157862382

`eq[A246200(n), A377477(n)]`
-/

namespace A391585.P1415207435157862382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246200 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377477 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A391585.P1415207435157862382

namespace A391585

/-- `eq[A246200(n), A377477(n)]` -/
def P1415207435157862382.Spec : Prop :=
  ∀ n, (P1415207435157862382.a n : ℤ) = A391585 (n + 1)

end A391585

/-! ## A391585.P1593190345071918867

`eq[A264965(n), A266643(n)]`
-/

namespace A391585.P1593190345071918867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264965 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266643 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A391585.P1593190345071918867

namespace A391585

/-- `eq[A264965(n), A266643(n)]` -/
def P1593190345071918867.Spec : Prop :=
  ∀ n, (P1593190345071918867.a n : ℤ) = A391585 (n + 1)

end A391585

/-! ## A391585.P15153379614011164769

`eq[A264967(n), A266641(n)]`
-/

namespace A391585.P15153379614011164769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264967 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266641 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A391585.P15153379614011164769

namespace A391585

/-- `eq[A264967(n), A266641(n)]` -/
def P15153379614011164769.Spec : Prop :=
  ∀ n, (P15153379614011164769.a n : ℤ) = A391585 (n + 1)

end A391585

/-!
# A391586: a(n) = n XOR A391571(n).

The programs for A391586, there is no canonical definition to state claims against.
-/

/-! ## A391586.P152283925648209545

`xor(n+1, A391571(n+1))`
-/

namespace A391586.P152283925648209545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n + 1 : ℤ) (A391571 (n + 1))

end

end A391586.P152283925648209545

/-!
# A391587: a(n) = 2*n - A115873(n).

The programs for A391587, there is no canonical definition to state claims against.
-/

/-! ## A391587.P8662600373453460759

`2*(n+1)-A115873(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A391587.P8662600373453460759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - A115873 (n + 1)

end

end A391587.P8662600373453460759

/-!
# A391588: a(n) = A003817(n) XOR (A003817(n)*n).

The programs for A391588, the canonical program `A391588.P7030029554672891423` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A391588 has offset 1).

The definition of A391588 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A391588.P7030029554672891423

`xor(A003817(n+1), A003817(n+1)*(n+1))`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A391588

/-- `xor(A003817(n+1), A003817(n+1)*(n+1))` -/
def P7030029554672891423.Spec : Prop :=
  ∀ n, P7030029554672891423.a n = A391588 (n + 1)

theorem P7030029554672891423.correct : P7030029554672891423.Spec := by
  intro n
  simp only [A391588, Nat.add_sub_cancel]

end A391588

/-! ## A391588.P7807854549175863861

`2^A070939(n+1)*n+n+1-1`
-/

namespace A391588.P7807854549175863861
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A070939 (n + 1) : ℤ) * (n : ℚ) + (n + 1 : ℚ) - 1

end

end A391588.P7807854549175863861

namespace A391588

/-- `2^A070939(n+1)*n+n+1-1` -/
def P7807854549175863861.Spec : Prop :=
  ∀ n, P7807854549175863861.a n = (A391588 (n + 1) : ℚ)

end A391588

/-! ## A391588.P6497053860182132008

`n*A076877(n+1)`
-/

namespace A391588.P6497053860182132008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A076877 (n + 1)

end

end A391588.P6497053860182132008

namespace A391588

/-- `n*A076877(n+1)` -/
def P6497053860182132008.Spec : Prop :=
  ∀ n, P6497053860182132008.a n = A391588 (n + 1)

end A391588

/-! ## A391588.P5444891998065678961

`n*(A003817(n+1)+2)`
-/

namespace A391588.P5444891998065678961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A003817 (n + 1) + 2)

end

end A391588.P5444891998065678961

namespace A391588

/-- `n*(A003817(n+1)+2)` -/
def P5444891998065678961.Spec : Prop :=
  ∀ n, P5444891998065678961.a n = A391588 (n + 1)

end A391588

/-! ## A391588.P8776732353933825714

`n*(A004755(n+1)-n)`
-/

namespace A391588.P8776732353933825714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A004755 (n + 1) - (n : ℤ))

end

end A391588.P8776732353933825714

namespace A391588

/-- `n*(A004755(n+1)-n)` -/
def P8776732353933825714.Spec : Prop :=
  ∀ n, P8776732353933825714.a n = A391588 (n + 1)

end A391588

/-! ## A391588.P11063423314495096055

`n/(n+1)*A020330(n+1)`
-/

namespace A391588.P11063423314495096055
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (n + 1 : ℚ) * (A020330 (n + 1) : ℚ)

end

end A391588.P11063423314495096055

namespace A391588

/-- `n/(n+1)*A020330(n+1)` -/
def P11063423314495096055.Spec : Prop :=
  ∀ n, P11063423314495096055.a n = (A391588 (n + 1) : ℚ)

end A391588

/-! ## A391588.P17601219783657082335

`n*A065270(A053644(n+1))`
-/

namespace A391588.P17601219783657082335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A065270 (A053644 (n + 1)).toNat

end

end A391588.P17601219783657082335

namespace A391588

/-- `n*A065270(A053644(n+1))` -/
def P17601219783657082335.Spec : Prop :=
  ∀ n, P17601219783657082335.a n = A391588 (n + 1)

end A391588

/-! ## A391588.P14906948064657623474

`A020330(n+1)-A076877(n+1)`
-/

namespace A391588.P14906948064657623474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020330 (n + 1) - A076877 (n + 1)

end

end A391588.P14906948064657623474

namespace A391588

/-- `A020330(n+1)-A076877(n+1)` -/
def P14906948064657623474.Spec : Prop :=
  ∀ n, P14906948064657623474.a n = A391588 (n + 1)

end A391588

/-! ## A391588.P11025124068787358414

`n*(A062383(n+1)+1)`
-/

namespace A391588.P11025124068787358414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A062383 (n + 1) + 1)

end

end A391588.P11025124068787358414

namespace A391588

/-- `n*(A062383(n+1)+1)` -/
def P11025124068787358414.Spec : Prop :=
  ∀ n, P11025124068787358414.a n = A391588 (n + 1)

end A391588

/-! ## A391588.P16729587451443595755

`2^A070939(n+1)*n+n`
-/

namespace A391588.P16729587451443595755
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A070939 (n + 1) : ℤ) * (n : ℚ) + (n : ℚ)

end

end A391588.P16729587451443595755

namespace A391588

/-- `2^A070939(n+1)*n+n` -/
def P16729587451443595755.Spec : Prop :=
  ∀ n, P16729587451443595755.a n = (A391588 (n + 1) : ℚ)

end A391588

/-! ## A391588.P9957511443459146400

`n*A000051(A070939(n+1))`
-/

namespace A391588.P9957511443459146400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A000051 (A070939 (n + 1)).toNat

end

end A391588.P9957511443459146400

namespace A391588

/-- `n*A000051(A070939(n+1))` -/
def P9957511443459146400.Spec : Prop :=
  ∀ n, P9957511443459146400.a n = A391588 (n + 1)

end A391588

/-! ## A391588.P8698799604931772110

`n*A048724(A003817(n+1))`
-/

namespace A391588.P8698799604931772110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A048724 (A003817 (n + 1)).toNat

end

end A391588.P8698799604931772110

namespace A391588

/-- `n*A048724(A003817(n+1))` -/
def P8698799604931772110.Spec : Prop :=
  ∀ n, P8698799604931772110.a n = A391588 (n + 1)

end A391588

/-! ## A391588.P11178455955691644931

`n*A055944(A062383(n+1))`
-/

namespace A391588.P11178455955691644931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A055944 (A062383 (n + 1)).toNat

end

end A391588.P11178455955691644931

namespace A391588

/-- `n*A055944(A062383(n+1))` -/
def P11178455955691644931.Spec : Prop :=
  ∀ n, P11178455955691644931.a n = A391588 (n + 1)

end A391588

/-! ## A391588.P17577178943175079117

`n*A357961(A132753(A000523(n+1)))`
-/

namespace A391588.P17577178943175079117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A357961 (A132753 (A000523 (n + 1)).toNat).toNat

end

end A391588.P17577178943175079117

namespace A391588

/-- `n*A357961(A132753(A000523(n+1)))` -/
def P17577178943175079117.Spec : Prop :=
  ∀ n, P17577178943175079117.a n = A391588 (n + 1)

end A391588

/-! ## A391588.P14996359725734177148

`n*A059893(A280510(n+2))`
-/

namespace A391588.P14996359725734177148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A059893 (A280510 (n + 2)).toNat

end

end A391588.P14996359725734177148

namespace A391588

/-- `n*A059893(A280510(n+2))` -/
def P14996359725734177148.Spec : Prop :=
  ∀ n, P14996359725734177148.a n = A391588 (n + 1)

end A391588

/-!
# A391589: a(n) = A003817(n) - A115873(n), where A115873(n) = the least k >= 1 for which A048720(A065621(n),k) = n*k.

The programs for A391589, there is no canonical definition to state claims against.
-/

/-! ## A391589.P13254091592330532250

`A003817(n+1)-A115873(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A391589.P13254091592330532250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003817 (n + 1) - A115873 (n + 1)

end

end A391589.P13254091592330532250

/-!
# A391590: Numbers k for which A115873(k) = A003817(k).

The programs for A391590, there is no canonical definition to state claims against.
-/

/-! ## A391590.P15259014527839234361

`record[and(A000265(n+1), A115873(n+1))]`
-/

namespace A391590.P15259014527839234361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000265 (n + 1)) (A115873 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A391590.P15259014527839234361

/-! ## A391590.P14693949679221361183

`eq[0, A391589(n+1)]+1`
-/

namespace A391590.P14693949679221361183
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391589 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A391590.P14693949679221361183

/-! ## A391590.P17827468285116833733

`lt[A391729(n+1), 2]+1`
-/

namespace A391590.P17827468285116833733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391729 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A391590.P17827468285116833733

/-! ## A391590.P1455495833654608256

`lt[A391589(n+1), A024359(A020639(3*n+5))]+1`
-/

namespace A391590.P1455495833654608256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391589 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024359 (A020639 (3 * n + 5)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A391590.P1455495833654608256

/-! ## A391590.P17714377684121169673

`lt[A391589(n+1), A024359(A000290(2*(n+2)))]+1`
-/

namespace A391590.P17714377684121169673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391589 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024359 (A000290 (2 * (n + 2))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A391590.P17714377684121169673

/-!
# A391591: Numbers whose smallest prime exponent is less than 3 and whose largest prime exponent exceeds 3.

The programs for A391591, there is no canonical definition to state claims against.
-/

/-! ## A391591.P5009098478199946641

`∩[A046101(n+1), A362148(n+1)]`
-/

namespace A391591.P5009098478199946641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046101 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362148 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391591.P5009098478199946641

/-! ## A391591.P6530807343904308062

`∩[A362148(n+1), A391115(n+1)]`
-/

namespace A391591.P6530807343904308062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362148 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391115 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391591.P6530807343904308062

/-!
# A391592: Maximum size of a subset S of {1..n} such that all subset sums of {1/k : k in S} are distinct.

The programs for A391592, there is no canonical definition to state claims against.
-/

/-! ## A391592.P1769225429382691508

`∑[A085491(A085491(2*n+1)!)]`
-/

namespace A391592.P1769225429382691508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085491 (Nat.factorial (A085491 (2 * n + 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A391592.P1769225429382691508

/-! ## A391592.P14461258982912593580

`∑[floor(3/A000040(A140987(n+1)))]`
-/

namespace A391592.P14461258982912593580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊3 / (A000040 (A140987 (n + 1)).toNat : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A391592.P14461258982912593580

/-! ## A391592.P13440772359099833008

`∑[A298952(∑[A348612(3*(n+1))])]`
-/

namespace A391592.P13440772359099833008
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348612 (3 * (n + 1))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298952 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A391592.P13440772359099833008

/-!
# A391593: Cubefull numbers that are neither biquadratefree nor biquadratefull.

The programs for A391593, there is no canonical definition to state claims against.
-/

/-! ## A391593.P5593734576211510914

`∪[A392564(n+1), A392908(n+1)]`
-/

namespace A391593.P5593734576211510914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392564 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392908 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A391593.P5593734576211510914

/-! ## A391593.P4684606761265203110

`∩[A036966(n+1), A391115(n+1)]`
-/

namespace A391593.P4684606761265203110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036966 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391115 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391593.P4684606761265203110

/-! ## A391593.P8764662087787688347

`∩[A372695(n+1), A391115(n+1)]`
-/

namespace A391593.P8764662087787688347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372695 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391115 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391593.P8764662087787688347

/-! ## A391593.P12337118509349322383

`∩[A376173(n+1), A391115(n+1)]`
-/

namespace A391593.P12337118509349322383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376173 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391115 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391593.P12337118509349322383

/-! ## A391593.P8212944373831710381

`∩[A389551(n+1), A391115(n+1)]`
-/

namespace A391593.P8212944373831710381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389551 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391115 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391593.P8212944373831710381

/-!
# A391594: a(n) = Sum_{k=0..2*n} binomial(2*k,2*n-k).

The programs for A391594, the canonical program `A391594.P4729804204103271103` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A391594 has offset 0).

The definition of A391594 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A391594.P4729804204103271103

`5*a(n-1)-2*a(n-2)+a(n-3)` with `a(0)=1, a(1)=3, a(2)=13`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A391594

/-- `5*a(n-1)-2*a(n-2)+a(n-3)` -/
def P4729804204103271103.Spec : Prop :=
  ∀ n, P4729804204103271103.a n = A391594 n

theorem P4729804204103271103.correct : P4729804204103271103.Spec := by
  intro n
  simp only [A391594]

end A391594

/-! ## A391594.P10026752539365009362

`A000930(4*n)`
-/

namespace A391594.P10026752539365009362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000930 (4 * n)

end

end A391594.P10026752539365009362

namespace A391594

/-- `A000930(4*n)` -/
def P10026752539365009362.Spec : Prop :=
  ∀ n, P10026752539365009362.a n = A391594 n

end A391594

/-! ## A391594.P9225164839397219987

`ogf((1-2x)/(1-5x+2x^2-x^3))`
-/

namespace A391594.P9225164839397219987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2] [1, -5, 2, -1] n

end

end A391594.P9225164839397219987

namespace A391594

/-- `ogf((1-2x)/(1-5x+2x^2-x^3))` -/
def P9225164839397219987.Spec : Prop :=
  ∀ n, P9225164839397219987.a n = A391594 n

end A391594

/-! ## A391594.P17662988131036253799

`A002478(2*n)`
-/

namespace A391594.P17662988131036253799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002478 (2 * n)

end

end A391594.P17662988131036253799

namespace A391594

/-- `A002478(2*n)` -/
def P17662988131036253799.Spec : Prop :=
  ∀ n, P17662988131036253799.a n = A391594 n

end A391594

/-! ## A391594.P1987097482712626828

`A199804(4*n)`
-/

namespace A391594.P1987097482712626828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199804 (4 * n)

end

end A391594.P1987097482712626828

namespace A391594

/-- `A199804(4*n)` -/
def P1987097482712626828.Spec : Prop :=
  ∀ n, P1987097482712626828.a n = A391594 n

end A391594

/-! ## A391594.P14783948731104481873

`A109532(6*n)`
-/

namespace A391594.P14783948731104481873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109532 (6 * n)

end

end A391594.P14783948731104481873

namespace A391594

/-- `A109532(6*n)` -/
def P14783948731104481873.Spec : Prop :=
  ∀ n, P14783948731104481873.a n = A391594 n

end A391594

/-! ## A391594.P17034850413100091011

`A108104(8*n)`
-/

namespace A391594.P17034850413100091011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108104 (8 * n)

end

end A391594.P17034850413100091011

namespace A391594

/-- `A108104(8*n)` -/
def P17034850413100091011.Spec : Prop :=
  ∀ n, P17034850413100091011.a n = A391594 n

end A391594

/-! ## A391594.P16997800388269695414

`record[∑[A078039(n)]]`
-/

namespace A391594.P16997800388269695414
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078039 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A391594.P16997800388269695414

namespace A391594

/-- `record[∑[A078039(n)]]` -/
def P16997800388269695414.Spec : Prop :=
  ∀ n, P16997800388269695414.a n = A391594 n

end A391594

/-! ## A391594.P9027392870069639706

`Δ[A262735(2*n)]`
-/

namespace A391594.P9027392870069639706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262735 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A391594.P9027392870069639706

namespace A391594

/-- `Δ[A262735(2*n)]` -/
def P9027392870069639706.Spec : Prop :=
  ∀ n, P9027392870069639706.a n = A391594 n

end A391594

/-! ## A391594.P15196648559154428321

`A109531(6*n+3)`
-/

namespace A391594.P15196648559154428321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109531 (6 * n + 3)

end

end A391594.P15196648559154428321

namespace A391594

/-- `A109531(6*n+3)` -/
def P15196648559154428321.Spec : Prop :=
  ∀ n, P15196648559154428321.a n = A391594 n

end A391594

/-! ## A391594.P10055144748859992880

`A078012(3*(n+1)+n)`
-/

namespace A391594.P10055144748859992880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078012 (3 * (n + 1) + n)

end

end A391594.P10055144748859992880

namespace A391594

/-- `A078012(3*(n+1)+n)` -/
def P10055144748859992880.Spec : Prop :=
  ∀ n, P10055144748859992880.a n = A391594 n

end A391594

/-! ## A391594.P5998010909933464493

`A109533(A016957(n))`
-/

namespace A391594.P5998010909933464493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109533 (A016957 n).toNat

end

end A391594.P5998010909933464493

namespace A391594

/-- `A109533(A016957(n))` -/
def P5998010909933464493.Spec : Prop :=
  ∀ n, P5998010909933464493.a n = A391594 n

end A391594

/-! ## A391594.P15839547459281246154

`A226916(A004771(n))`
-/

namespace A391594.P15839547459281246154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226916 (A004771 n).toNat

end

end A391594.P15839547459281246154

namespace A391594

/-- `A226916(A004771(n))` -/
def P15839547459281246154.Spec : Prop :=
  ∀ n, P15839547459281246154.a n = A391594 n

end A391594

/-! ## A391594.P11075628357974649851

`A135851(A004766(n+1))`
-/

namespace A391594.P11075628357974649851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135851 (A004766 (n + 1)).toNat

end

end A391594.P11075628357974649851

namespace A391594

/-- `A135851(A004766(n+1))` -/
def P11075628357974649851.Spec : Prop :=
  ∀ n, P11075628357974649851.a n = A391594 n

end A391594

/-! ## A391594.P1238301190757033262

`A135851(A016813(n+1))`
-/

namespace A391594.P1238301190757033262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135851 (A016813 (n + 1)).toNat

end

end A391594.P1238301190757033262

namespace A391594

/-- `A135851(A016813(n+1))` -/
def P1238301190757033262.Spec : Prop :=
  ∀ n, P1238301190757033262.a n = A391594 n

end A391594

/-! ## A391594.P1948565514848889842

`A142474(2*n+1)+A141015(2*n)`
-/

namespace A391594.P1948565514848889842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142474 (2 * n + 1) + A141015 (2 * n)

end

end A391594.P1948565514848889842

namespace A391594

/-- `A142474(2*n+1)+A141015(2*n)` -/
def P1948565514848889842.Spec : Prop :=
  ∀ n, P1948565514848889842.a n = A391594 n

end A391594

/-! ## A391594.P7016862841782861315

`A142474(2*n+1)+A142474(2*(n+1))`
-/

namespace A391594.P7016862841782861315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142474 (2 * n + 1) + A142474 (2 * (n + 1))

end

end A391594.P7016862841782861315

namespace A391594

/-- `A142474(2*n+1)+A142474(2*(n+1))` -/
def P7016862841782861315.Spec : Prop :=
  ∀ n, P7016862841782861315.a n = A391594 n

end A391594

/-!
# A391596: Numbers k such that (27^k - 4^k)/23 is prime.

The programs for A391596, there is no canonical definition to state claims against.
-/

/-! ## A391596.P17085056563465891317

`A240566(A233291(n))`
-/

namespace A391596.P17085056563465891317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240566 (A233291 n).toNat

end

end A391596.P17085056563465891317

/-!
# A391597: a(n) is the number of quadratic polynomials with coefficients in {-n, ..., n}, positive leading coefficient, and having two integer roots.

The programs for A391597, the canonical program `A391597.P14152947396835619235` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A391597 has offset 1).

The definition of A391597 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A013936, A061201, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A391597.P14152947396835619235

`2*(A006218(n+1)+A061201(n+1))+A013936(n+1)-(n+1)`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A391597

/-- `2*(A006218(n+1)+A061201(n+1))+A013936(n+1)-(n+1)` -/
def P14152947396835619235.Spec : Prop :=
  ∀ n, P14152947396835619235.a n = A391597 (n + 1)

theorem P14152947396835619235.correct : P14152947396835619235.Spec := by
  intro n
  simp only [A391597, Nat.add_sub_cancel]

end A391597

