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
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A179300: a(n) is the number of corner-rooted hexangulations of girth 6 with n inner faces.

The programs for A179300, there is no canonical definition to state claims against.
-/

/-! ## A179300.P669936200299640887

`A097010(A097010(∏[2*n+1]))`
-/

namespace A179300.P669936200299640887
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097010 (A097010 (∏ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A179300.P669936200299640887

/-!
# A179301: Number of stable isotopes of element n.

The programs for A179301, there is no canonical definition to state claims against.
-/

/-! ## A179301.P5841637776592970745

`A326420(xor(10, A122391(n)))`
-/

namespace A179301.P5841637776592970745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326420 (Int.xor 10 (A122391 n)).toNat

end

end A179301.P5841637776592970745

/-! ## A179301.P15254145374359255425

`A143487(or(59, A011782(n)))`
-/

namespace A179301.P15254145374359255425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143487 (Int.lor 59 (A011782 n)).toNat

end

end A179301.P15254145374359255425

/-! ## A179301.P14481026178599297010

`A001222(A006739(or(4, n+1)))`
-/

namespace A179301.P14481026178599297010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A006739 (Nat.lor 4 (n + 1))).toNat

end

end A179301.P14481026178599297010

/-! ## A179301.P6316699710966218390

`A318998(or(4, A187829(n+1)))`
-/

namespace A179301.P6316699710966218390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318998 (Int.lor 4 (A187829 (n + 1))).toNat

end

end A179301.P6316699710966218390

/-! ## A179301.P9124016908437449055

`(A209069(n+1)+A036467(n))%4`
-/

namespace A179301.P9124016908437449055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A209069 (n + 1) + A036467 n) 4

end

end A179301.P9124016908437449055

/-!
# A179302: Indices of primes occurring in A034050.

The programs for A179302, there is no canonical definition to state claims against.
-/

/-! ## A179302.P1822898022242179581

`lt[A007318(A276656(2*n+5)), 4]`
-/

namespace A179302.P1822898022242179581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A276656 (2 * n + 5)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A179302.P1822898022242179581

/-! ## A179302.P12054107180788109154

`lt[A002144(n+1), A327346(A296205(n+1))]`
-/

namespace A179302.P12054107180788109154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327346 (A296205 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A179302.P12054107180788109154

/-! ## A179302.P10433940613192963096

`lt[A059068(2*n+3), A075190(A046092(2*(n+1)))]`
-/

namespace A179302.P10433940613192963096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059068 (2 * n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075190 (A046092 (2 * (n + 1))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A179302.P10433940613192963096

/-! ## A179302.P4490112156127302327

`lt[A008406(2*n+3), A271513(A327708(2*(n+1)))]`
-/

namespace A179302.P4490112156127302327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008406 (2 * n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271513 (A327708 (2 * (n + 1))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A179302.P4490112156127302327

/-!
# A179305: a(n) = Sum_{d|n} C(n,d)*sigma(d).

The programs for A179305, there is no canonical definition to state claims against.
-/

/-! ## A179305.P10638083674794535894

`p?[A229337(6*n+2)]%∏{d}[n+1, #+1]`
-/

namespace A179305.P10638083674794535894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229337 (6 * n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) ((∏ d ∈ Nat.divisors (f2 n), (d + 1) : ℕ) : ℤ)

end

end A179305.P10638083674794535894

/-! ## A179305.P6781519841042786443

`or(A138352(n²), A185302(n+1))`
-/

namespace A179305.P6781519841042786443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A138352 (n ^ 2)) (A185302 (n + 1))

end

end A179305.P6781519841042786443

/-!
# A179308: List of positive integers, omitting any number n if another number with the same set of digits as n has already been listed.

The programs for A179308, there is no canonical definition to state claims against.
-/

/-! ## A179308.P7600542679721346991

`eq[A267084(n+1), A380706(n)]`
-/

namespace A179308.P7600542679721346991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267084 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380706 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A179308.P7600542679721346991

/-! ## A179308.P1542461213005252418

`eq[A054977(n), A380706(n)]`
-/

namespace A179308.P1542461213005252418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380706 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A179308.P1542461213005252418

/-! ## A179308.P12385740250908223096

`eq[A057427(n), A380706(n)]`
-/

namespace A179308.P12385740250908223096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380706 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A179308.P12385740250908223096

/-! ## A179308.P93782845290812234

`eq[A158388(n), A380706(n)]`
-/

namespace A179308.P93782845290812234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158388 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380706 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A179308.P93782845290812234

/-! ## A179308.P3802472809825006774

`record[A328447(A137564(n+1))]`
-/

namespace A179308.P3802472809825006774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328447 (A137564 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A179308.P3802472809825006774

/-! ## A179308.P10714640380013412472

`filter[A179239(n+1), A178788(#)]`
-/

namespace A179308.P10714640380013412472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179239 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A178788 (f1 j).toNat = 1) n)

end

end A179308.P10714640380013412472

/-! ## A179308.P2027292918974346765

`eq[A028310(n), A328447(A137564(n))]`
-/

namespace A179308.P2027292918974346765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328447 (A137564 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A179308.P2027292918974346765

/-! ## A179308.P6957836482384629746

`filter[A102823(n+1), A178788(#)]`
-/

namespace A179308.P6957836482384629746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102823 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A178788 (f1 j).toNat = 1) n)

end

end A179308.P6957836482384629746

/-! ## A179308.P11236605859639643806

`filter[A102823(n+1), A196368(#)]`
-/

namespace A179308.P11236605859639643806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102823 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A196368 (f1 j).toNat = 1) n)

end

end A179308.P11236605859639643806

/-! ## A179308.P2388572379981190445

`A009994(n+1)%A246318(n)+1`
-/

namespace A179308.P2388572379981190445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A009994 (n + 1)) (A246318 n) + 1

end

end A179308.P2388572379981190445

/-!
# A179309: The smallest number that has more copies of some digit than any previous number in the sequence.

The programs for A179309, there is no canonical definition to state claims against.
-/

/-! ## A179309.P2084849459421504331

`∩[A064222(n)+1, A064222(n)]`
-/

namespace A179309.P2084849459421504331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064222 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064222 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179309.P2084849459421504331

/-! ## A179309.P5596465545423163284

`A064222(eq[1, Δ[A064222(n)]]+1)`
-/

namespace A179309.P5596465545423163284
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064222 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064222 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A179309.P5596465545423163284

/-! ## A179309.P10200236273397499441

`∩[A032981(n+1), A193460(n+1)]`
-/

namespace A179309.P10200236273397499441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032981 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193460 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179309.P10200236273397499441

/-! ## A179309.P16141775314701490779

`∩[A131207(n+1), A193460(n+1)]`
-/

namespace A179309.P16141775314701490779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131207 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193460 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179309.P16141775314701490779

/-! ## A179309.P10726049788366590864

`∩[A134336(n+1), A193460(n+1)]`
-/

namespace A179309.P10726049788366590864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134336 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193460 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179309.P10726049788366590864

/-! ## A179309.P9313813169547462011

`∩[A178354(n+1), A193460(n+1)]`
-/

namespace A179309.P9313813169547462011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178354 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193460 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179309.P9313813169547462011

/-!
# A179310: The smallest number that has more copies of some digit than all previous terms of the sequence put together.

The programs for A179310, there is no canonical definition to state claims against.
-/

/-! ## A179310.P16290760833100739696

`A130446(A308540(n+2))`
-/

namespace A179310.P16290760833100739696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130446 (A308540 (n + 2)).toNat

end

end A179310.P16290760833100739696

/-! ## A179310.P11237076255039569980

`A000188(A308540(n+2)²)`
-/

namespace A179310.P11237076255039569980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (A308540 (n + 2) ^ 2).toNat

end

end A179310.P11237076255039569980

/-! ## A179310.P14901985875700275767

`A000196(A308540(n+2)²)`
-/

namespace A179310.P14901985875700275767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A308540 (n + 2) ^ 2).toNat

end

end A179310.P14901985875700275767

/-! ## A179310.P603113083783801742

`A018851(A308540(n+2)²)`
-/

namespace A179310.P603113083783801742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018851 (A308540 (n + 2) ^ 2).toNat

end

end A179310.P603113083783801742

/-! ## A179310.P7255406838342876425

`A308540(A242474(n+1)+1)`
-/

namespace A179310.P7255406838342876425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308540 (A242474 (n + 1) + 1).toNat

end

end A179310.P7255406838342876425

/-!
# A179312: Largest semiprime dividing n, or 0 if no semiprime divides n.

The programs for A179312, the canonical program `A179312.P2278667918983612372` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A179312 has offset 1).

The definition of A179312 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A179312.P2278667918983612372

`A006530(n+1)*A001414(A087039(n+1))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A179312

/-- `A006530(n+1)*A001414(A087039(n+1))` -/
def P2278667918983612372.Spec : Prop :=
  ∀ n, P2278667918983612372.a n = A179312 (n + 1)

theorem P2278667918983612372.correct : P2278667918983612372.Spec := by
  intro n
  simp only [A179312, Nat.add_sub_cancel]

end A179312

/-! ## A179312.P15176157139964497395

`A008475(A085392(n+1))*A087039(n+1)`
-/

namespace A179312.P15176157139964497395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008475 (A085392 (n + 1)).toNat * A087039 (n + 1)

end

end A179312.P15176157139964497395

namespace A179312

/-- `A008475(A085392(n+1))*A087039(n+1)` -/
def P15176157139964497395.Spec : Prop :=
  ∀ n, P15176157139964497395.a n = A179312 (n + 1)

end A179312

/-! ## A179312.P18026104601985189946

`A057108(A087039(n+1)²)*A085392(n+1)`
-/

namespace A179312.P18026104601985189946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057108 (A087039 (n + 1) ^ 2).toNat * A085392 (n + 1)

end

end A179312.P18026104601985189946

namespace A179312

/-- `A057108(A087039(n+1)²)*A085392(n+1)` -/
def P18026104601985189946.Spec : Prop :=
  ∀ n, P18026104601985189946.a n = A179312 (n + 1)

end A179312

/-! ## A179312.P7623846147542496278

`A066247(n+1)*A085392(n+1)*A087039(n+1)`
-/

namespace A179312.P7623846147542496278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066247 (n + 1) * A085392 (n + 1) * A087039 (n + 1)

end

end A179312.P7623846147542496278

namespace A179312

/-- `A066247(n+1)*A085392(n+1)*A087039(n+1)` -/
def P7623846147542496278.Spec : Prop :=
  ∀ n, P7623846147542496278.a n = A179312 (n + 1)

end A179312

/-! ## A179312.P16283691075949540815

`A006530(A052126(n+1))*A061397(A085392(n+1))`
-/

namespace A179312.P16283691075949540815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A052126 (n + 1)).toNat * A061397 (A085392 (n + 1)).toNat

end

end A179312.P16283691075949540815

namespace A179312

/-- `A006530(A052126(n+1))*A061397(A085392(n+1))` -/
def P16283691075949540815.Spec : Prop :=
  ∀ n, P16283691075949540815.a n = A179312 (n + 1)

end A179312

/-! ## A179312.P14617150095899541614

`A210615(A085392(n+1)*A087039(n+1))`
-/

namespace A179312.P14617150095899541614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210615 (A085392 (n + 1) * A087039 (n + 1)).toNat

end

end A179312.P14617150095899541614

namespace A179312

/-- `A210615(A085392(n+1)*A087039(n+1))` -/
def P14617150095899541614.Spec : Prop :=
  ∀ n, P14617150095899541614.a n = A179312 (n + 1)

end A179312

/-! ## A179312.P17451348651857423446

`A061397(A085392(n+1))*A085392(A052126(n+1)²)`
-/

namespace A179312.P17451348651857423446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061397 (A085392 (n + 1)).toNat * A085392 (A052126 (n + 1) ^ 2).toNat

end

end A179312.P17451348651857423446

namespace A179312

/-- `A061397(A085392(n+1))*A085392(A052126(n+1)²)` -/
def P17451348651857423446.Spec : Prop :=
  ∀ n, P17451348651857423446.a n = A179312 (n + 1)

end A179312

/-! ## A179312.P1541721994807324412

`A087039((n+1)²)%(n+1)*A087039(n+1)`
-/

namespace A179312.P1541721994807324412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A087039 ((n + 1) ^ 2)) (n + 1 : ℤ) * A087039 (n + 1)

end

end A179312.P1541721994807324412

namespace A179312

/-- `A087039((n+1)²)%(n+1)*A087039(n+1)` -/
def P1541721994807324412.Spec : Prop :=
  ∀ n, P1541721994807324412.a n = A179312 (n + 1)

end A179312

/-!
# A179313: Triangle T(n,k) read by rows: product of the compositorial weight of the k-th partition of n times A074664(.) applied to each part.

The programs for A179313, there is no canonical definition to state claims against.
-/

/-! ## A179313.P17246401097827988166

`A048996(n)*A179380(n)`
-/

namespace A179313.P17246401097827988166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048996 n * A179380 n

end

end A179313.P17246401097827988166

/-!
# A179314: Triangle T(n,k) read by rows: number of unordered twice partitions derived from the k-th partition of n listed in Abramowitz and Stegun order, 1 <= k <= A000041(n).

The programs for A179314, there is no canonical definition to state claims against.
-/

/-! ## A179314.P7433847829735406883

`A008578(A104325(n)%A173348(n+5))`
-/

namespace A179314.P7433847829735406883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (Int.tmod (A104325 n) (A173348 (n + 5))).toNat

end

end A179314.P7433847829735406883

/-!
# A179316: The number of equal-sized equilateral triangles in the highest stack of triangles contained in successive Genealodrons formed from 2^n - 1 same size equilateral triangles.

The programs for A179316, there is no canonical definition to state claims against.
-/

/-! ## A179316.P13807424325253698743

`A257212(A056354(n))`
-/

namespace A179316.P13807424325253698743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257212 (A056354 n).toNat

end

end A179316.P13807424325253698743

/-! ## A179316.P12482497492528540441

`A083023(A148120(n))`
-/

namespace A179316.P12482497492528540441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083023 (A148120 n).toNat

end

end A179316.P12482497492528540441

/-! ## A179316.P1157873620640981929

`A121900(A065845(n+1))`
-/

namespace A179316.P1157873620640981929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121900 (A065845 (n + 1)).toNat

end

end A179316.P1157873620640981929

/-! ## A179316.P15655355642097475200

`A083023(A154835(n+1))`
-/

namespace A179316.P15655355642097475200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083023 (A154835 (n + 1)).toNat

end

end A179316.P15655355642097475200

/-! ## A179316.P4260507514388813916

`A074184(A321405(n)+1)`
-/

namespace A179316.P4260507514388813916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074184 (A321405 n + 1).toNat

end

end A179316.P4260507514388813916

/-!
# A179317: 'APE(n,k)' triangle read by rows. APE(n,k) is the number of aperiodic k-palindromes of n up to cyclic equivalence.

The programs for A179317, there is no canonical definition to state claims against.
-/

/-! ## A179317.P1393242212109461110

`A179519(n+1)/A171712(n+1)`
-/

namespace A179317.P1393242212109461110
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A179519 (n + 1) : ℚ) / (A171712 (n + 1) : ℚ)

end

end A179317.P1393242212109461110

/-! ## A179317.P17444602615946983560

`A179519(n+1)/A059268(n)%3`
-/

namespace A179317.P17444602615946983560
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A179519 (n + 1) : ℚ) / (Int.tmod (A059268 n) 3 : ℚ)

end

end A179317.P17444602615946983560

/-! ## A179317.P1481039079226289419

`A179519(n+1)/A040001(A193738(n))`
-/

namespace A179317.P1481039079226289419
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A179519 (n + 1) : ℚ) / (A040001 (A193738 n).toNat : ℚ)

end

end A179317.P1481039079226289419

/-! ## A179317.P4921851767269307172

`A179519(n+1)/A040001(A002260(n+1))`
-/

namespace A179317.P4921851767269307172
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A179519 (n + 1) : ℚ) / (A040001 (A002260 (n + 1)).toNat : ℚ)

end

end A179317.P4921851767269307172

/-! ## A179317.P10101081213843310330

`A179519(n+1)/A040001(A050873(n+1))`
-/

namespace A179317.P10101081213843310330
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A179519 (n + 1) : ℚ) / (A040001 (A050873 (n + 1)).toNat : ℚ)

end

end A179317.P10101081213843310330

/-! ## A179317.P11161915460123369470

`A179519(n+1)/A000034(A296767(n+1))`
-/

namespace A179317.P11161915460123369470
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A179519 (n + 1) : ℚ) / (A000034 (A296767 (n + 1)).toNat : ℚ)

end

end A179317.P11161915460123369470

/-! ## A179317.P15513852523636187274

`A179519(n+1)/A007913(A059268(n))`
-/

namespace A179317.P15513852523636187274
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A179519 (n + 1) : ℚ) / (A007913 (A059268 n).toNat : ℚ)

end

end A179317.P15513852523636187274

/-!
# A179318: Triangle T(n,k) read by rows: product of A000108(a_i - 1) over all parts a_i of the k-th partition of n listed in Abramowitz and Stegun order, 1 <= k <= A000041(n).

The programs for A179318, there is no canonical definition to state claims against.
-/

/-! ## A179318.P15844451890798712285

`A127742(n)/A048996(n)`
-/

namespace A179318.P15844451890798712285
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127742 n : ℚ) / (A048996 n : ℚ)

end

end A179318.P15844451890798712285

/-! ## A179318.P17644548790497770621

`A132883(A107106(n))`
-/

namespace A179318.P17644548790497770621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132883 (A107106 n).toNat

end

end A179318.P17644548790497770621

/-! ## A179318.P17797134950036876651

`A112979(A179380(n))`
-/

namespace A179318.P17797134950036876651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112979 (A179380 n).toNat

end

end A179318.P17797134950036876651

/-! ## A179318.P500245175673449676

`A290726(A179863(n))`
-/

namespace A179318.P500245175673449676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290726 (A179863 n).toNat

end

end A179318.P500245175673449676

/-!
# A179319: G.f.: WL(-x)*WU(x), where WL, WU are respectively the characteristic functions of the lower (A000201) and upper (A001950) Wythoff sequences.

The programs for A179319, there is no canonical definition to state claims against.
-/

/-! ## A179319.P13314594414695290194

`A225230(2*(n+1))^A225245(A225272(3*(n+1)))`
-/

namespace A179319.P13314594414695290194
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A225230 (2 * (n + 1)) : ℚ) ^ (A225245 (A225272 (3 * (n + 1))).toNat : ℤ)

end

end A179319.P13314594414695290194

/-! ## A179319.P13443290439037677111

`A290531(3*n+5)+A257075(A330359(n+1))`
-/

namespace A179319.P13443290439037677111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290531 (3 * n + 5) + A257075 (A330359 (n + 1)).toNat

end

end A179319.P13443290439037677111

/-!
# A179320: E.g.f. satisfies: A(x) = A( x/(1-x)^2 ) * (1-x)/(1+x) with A(0)=0.

The programs for A179320, there is no canonical definition to state claims against.
-/

/-! ## A179320.P17084174423307199739

`A033762(A003394(n+1))-A009422(n)`
-/

namespace A179320.P17084174423307199739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033762 (A003394 (n + 1)).toNat - A009422 n

end

end A179320.P17084174423307199739

/-! ## A179320.P1796766661615056915

`A345957(A339044(n+4))-A009422(n)`
-/

namespace A179320.P1796766661615056915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345957 (A339044 (n + 4)).toNat - A009422 n

end

end A179320.P1796766661615056915

/-!
# A179321: Numbers m such that the sum of the first k odd primes = m-th odd prime.

The programs for A179321, there is no canonical definition to state claims against.
-/

/-! ## A179321.P8220947218514744439

`A000720(A071151(n+1)-1)`
-/

namespace A179321.P8220947218514744439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A071151 (n + 1) - 1).toNat

end

end A179321.P8220947218514744439

/-! ## A179321.P15134114016002971111

`A000720(xor(1, A071151(n+1)))`
-/

namespace A179321.P15134114016002971111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (Int.xor 1 (A071151 (n + 1))).toNat

end

end A179321.P15134114016002971111

/-! ## A179321.P2419129211782786282

`A000720(and(-2, A071151(n+1)))`
-/

namespace A179321.P2419129211782786282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (Int.land (-2) (A071151 (n + 1))).toNat

end

end A179321.P2419129211782786282

/-! ## A179321.P16838473988461394834

`A000720(p?[A071148(n+1)]-1)`
-/

namespace A179321.P16838473988461394834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071148 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 1).toNat

end

end A179321.P16838473988461394834

/-! ## A179321.P9756187731450433420

`A000720(A000010(A071151(n+1)))`
-/

namespace A179321.P9756187731450433420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A000010 (A071151 (n + 1)).toNat).toNat

end

end A179321.P9756187731450433420

/-!
# A179322: G.f.: A(x) = x*exp( Sum_{n>=1} A(A(x^n))/n ).

The programs for A179322, there is no canonical definition to state claims against.
-/

/-! ## A179322.P3188742555198361252

`A293492(n)+A068962(A107596(n))`
-/

namespace A179322.P3188742555198361252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293492 n + A068962 (A107596 n).toNat

end

end A179322.P3188742555198361252

/-! ## A179322.P6492711585635213048

`A113059(n)+A108954(A203799(n))-1`
-/

namespace A179322.P6492711585635213048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113059 n + (A108954 (A203799 n).toNat - 1)

end

end A179322.P6492711585635213048

/-!
# A179323: G.f.: A(x) = G(G(x)) where G(x) = x*exp( Sum_{n>=1} A(x^n)/n ).

The programs for A179323, there is no canonical definition to state claims against.
-/

/-! ## A179323.P1350833588869913530

`A025422(A003182(n))+A001109(n)`
-/

namespace A179323.P1350833588869913530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025422 (A003182 n).toNat + A001109 n

end

end A179323.P1350833588869913530

/-! ## A179323.P13739269245984532122

`A269849(A036767(n)*A061152(n))`
-/

namespace A179323.P13739269245984532122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269849 (A036767 n * A061152 n).toNat

end

end A179323.P13739269245984532122

/-!
# A179324: L.g.f.: G(x) = x*exp( Sum_{n>=1} G(G(x^n))/n ) where G(x) = x*exp(Sum_{n>=1} a(n)*x^n/n).

The programs for A179324, there is no canonical definition to state claims against.
-/

/-! ## A179324.P3256335787836869008

`∑{d}[n+1, #*A179323(#)]`
-/

namespace A179324.P3256335787836869008
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A179323 d

end

end A179324.P3256335787836869008

/-!
# A179325: G.f.: A(x) = x*exp( Sum_{n>=1} A(A(x)^n)/n ).

The programs for A179325, there is no canonical definition to state claims against.
-/

/-! ## A179325.P17852164263656182641

`A064062(n)-A337622(A064062(n))`
-/

namespace A179325.P17852164263656182641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064062 n - A337622 (A064062 n).toNat

end

end A179325.P17852164263656182641

/-! ## A179325.P17861014960406984673

`A065033(A079106(n+1)-A222063(n))`
-/

namespace A179325.P17861014960406984673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A079106 (n + 1) - A222063 n).toNat

end

end A179325.P17861014960406984673

/-!
# A179326: L.g.f.: G(x) = x*exp( Sum_{n>=1} G(G(x)^n)/n ) where G(x) = x*exp(Sum_{n>=1} a(n)*x^n/n).

The programs for A179326, there is no canonical definition to state claims against.
-/

/-! ## A179326.P18277066790380890070

`∑[A004001(A005037(n+2))]`
-/

namespace A179326.P18277066790380890070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004001 (A005037 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A179326.P18277066790380890070

/-!
# A179327: G.f.: Product_{n>=1} 1/(1-x^n)^((n-1)!).

The programs for A179327, there is no canonical definition to state claims against.
-/

/-! ## A179327.P17441599367778350518

`A178798(A017993(n))+A107107(n)`
-/

namespace A179327.P17441599367778350518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178798 (A017993 n).toNat + A107107 n

end

end A179327.P17441599367778350518

/-! ## A179327.P5458350914699757857

`A225545(A321728(n)+A143917(n))`
-/

namespace A179327.P5458350914699757857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225545 (A321728 n + A143917 n).toNat

end

end A179327.P5458350914699757857

/-! ## A179327.P14975183023607317977

`A107107(n)-A065202(A189886(n))`
-/

namespace A179327.P14975183023607317977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107107 n - A065202 (A189886 n).toNat

end

end A179327.P14975183023607317977

/-!
# A179328: a(n) is the smallest prime q > a(n-1) such that, for the previous prime p and the following prime r, the fraction (q-p)/(r-q) has denominator prime(n) (or 0, if such a prime does not exist).

The programs for A179328, there is no canonical definition to state claims against.
-/

/-! ## A179328.P16831299081442069608

`A268674(A115972(n+1)-C(2, n+2))`
-/

namespace A179328.P16831299081442069608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268674 (A115972 (n + 1) - (Nat.choose 2 (n + 2) : ℤ)).toNat

end

end A179328.P16831299081442069608

/-! ## A179328.P18156481329678784175

`A268674(A115972(n+1)-A151878(n))`
-/

namespace A179328.P18156481329678784175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268674 (A115972 (n + 1) - A151878 n).toNat

end

end A179328.P18156481329678784175

/-! ## A179328.P15425557374576667085

`A268674(xor(A115972(n+1), A151878(n)))`
-/

namespace A179328.P15425557374576667085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268674 (Int.xor (A115972 (n + 1)) (A151878 n)).toNat

end

end A179328.P15425557374576667085

/-! ## A179328.P12359258844372802303

`A268674(A151878(n)+A115972(n+1))+A151878(n)`
-/

namespace A179328.P12359258844372802303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268674 (A151878 n + A115972 (n + 1)).toNat + A151878 n

end

end A179328.P12359258844372802303

/-!
# A179329: Number of iterations of (n + lpf(n)) / 2 required to reach a prime, where lpf equals the least prime factor.

The programs for A179329, there is no canonical definition to state claims against.
-/

/-! ## A179329.P15983562079718774583

`A299090(A084057(A163618(n)))`
-/

namespace A179329.P15983562079718774583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299090 (A084057 (A163618 n).toNat).toNat

end

end A179329.P15983562079718774583

/-! ## A179329.P12798020216221047328

`A034253(n+1)%(A318362(2*(n+2))-1)`
-/

namespace A179329.P12798020216221047328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A034253 (n + 1)) (A318362 (2 * (n + 2)) - 1)

end

end A179329.P12798020216221047328

/-! ## A179329.P9635777965505332365

`and(A007318(n), A032682(A007202(n)))`
-/

namespace A179329.P9635777965505332365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A007318 n) (A032682 (A007202 n).toNat)

end

end A179329.P9635777965505332365

/-! ## A179329.P11123901619472388487

`A016730(A000081(n))*A064918(n+2)`
-/

namespace A179329.P11123901619472388487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016730 (A000081 n).toNat * A064918 (n + 2)

end

end A179329.P11123901619472388487

/-! ## A179329.P11051766694468886415

`A007318(n)%A001250(A317830(n+2))`
-/

namespace A179329.P11051766694468886415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007318 n) (A001250 (A317830 (n + 2)).toNat)

end

end A179329.P11051766694468886415

/-!
# A179330: E.g.f. satisfies: A(x) = (1+x)/(1+3*x) * A(x*(1+x)^2).

The programs for A179330, there is no canonical definition to state claims against.
-/

/-! ## A179330.P17802307182565081518

`A137241(A025167(n)-A333472(n))`
-/

namespace A179330.P17802307182565081518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137241 (A025167 n - A333472 n).toNat

end

end A179330.P17802307182565081518

/-!
# A179331: E.g.f. satisfies: A(x) = (1-x)/(1-3*x) * A(x*(1-x)^2).

The programs for A179331, there is no canonical definition to state claims against.
-/

/-! ## A179331.P18194784303718516682

`abs(A179330(n+1)/2)`
-/

namespace A179331.P18194784303718516682
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A179330 (n + 1) : ℚ) / 2|

end

end A179331.P18194784303718516682

/-! ## A179331.P5198370046753055044

`gcd(A179330(n+1)/2, A000038(n))`
-/

namespace A179331.P5198370046753055044
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.roundAway ((A179330 (n + 1) : ℚ) / 2)) (A000038 n)

end

end A179331.P5198370046753055044

/-! ## A179331.P13636720915084390731

`lcm(A179330(n+1), A254573(n))/2`
-/

namespace A179331.P13636720915084390731
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A179330 (n + 1)) (A254573 n) : ℚ) / 2

end

end A179331.P13636720915084390731

/-! ## A179331.P16035964439870631320

`lcm(A179330(n+1)/2, A284254(n+1))`
-/

namespace A179331.P16035964439870631320
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (SequenceMachineLib.roundAway ((A179330 (n + 1) : ℚ) / 2)) (A284254 (n + 1))

end

end A179331.P16035964439870631320

/-! ## A179331.P17850848532109735964

`A027614(n+1)/A179320(n+1)*A179330(n+1)`
-/

namespace A179331.P17850848532109735964
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027614 (n + 1) : ℚ) / (A179320 (n + 1) : ℚ) * (A179330 (n + 1) : ℚ)

end

end A179331.P17850848532109735964

/-!
# A179332: a(1)=1; for each n > 1, a(n) is the smallest number such that Sum_{i=1..n} 1/a(i)^2 < sqrt(2).

The programs for A179332, there is no canonical definition to state claims against.
-/

/-! ## A179332.P13666618078743281055

`∑[A003602(A370926(n))]`
-/

namespace A179332.P13666618078743281055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (A370926 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A179332.P13666618078743281055

/-! ## A179332.P7454063119997777568

`A110656(A218943(n))+n`
-/

namespace A179332.P7454063119997777568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110656 (A218943 n).toNat + (n : ℤ)

end

end A179332.P7454063119997777568

/-! ## A179332.P17317055632170455618

`∑[A191973(∏[A034943(n)])]`
-/

namespace A179332.P17317055632170455618
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034943 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191973 (∏ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A179332.P17317055632170455618

/-!
# A179334: Squares that are the sum of three positive Fibonacci numbers.

The programs for A179334, there is no canonical definition to state claims against.
-/

/-! ## A179334.P9816463350961354059

`lt[A212998(n)%A189516(n+1), n]²`
-/

namespace A179334.P9816463350961354059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A212998 n) (A189516 (n + 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n ^ 2

end

end A179334.P9816463350961354059

/-! ## A179334.P5162846083198148050

`lt[A325707(n), A325722(n+1)]²`
-/

namespace A179334.P5162846083198148050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325707 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325722 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n ^ 2

end

end A179334.P5162846083198148050

/-! ## A179334.P14510478066411419412

`lt[A003108(2*n+1), A136700(n)]²`
-/

namespace A179334.P14510478066411419412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003108 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136700 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n ^ 2

end

end A179334.P14510478066411419412

/-! ## A179334.P14865956016601407157

`lt[A347635(n+2), A347659(2*n)]²`
-/

namespace A179334.P14865956016601407157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347635 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347659 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n ^ 2

end

end A179334.P14865956016601407157

/-! ## A179334.P3058195628802218601

`A239139(A239218(A130573(n+2)))²`
-/

namespace A179334.P3058195628802218601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239139 (A239218 (A130573 (n + 2)).toNat).toNat ^ 2

end

end A179334.P3058195628802218601

/-!
# A179335: a(n) is the smallest prime which appears as a substring of the decimal representation of prime(n).

The programs for A179335, there is no canonical definition to state claims against.
-/

/-! ## A179335.P12617425749081261707

`A211396(Δ[A007504(n)])`
-/

namespace A179335.P12617425749081261707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211396 (f1 (n + 1) - f1 n).toNat

end

end A179335.P12617425749081261707

/-! ## A179335.P13334373722000355535

`A211396(A000040(n+1))`
-/

namespace A179335.P13334373722000355535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211396 (A000040 (n + 1)).toNat

end

end A179335.P13334373722000355535

/-! ## A179335.P17980091905441848150

`A211396(A008578(n+2))`
-/

namespace A179335.P17980091905441848150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211396 (A008578 (n + 2)).toNat

end

end A179335.P17980091905441848150

/-! ## A179335.P1532894196807215924

`A211396(A182986(n+2))`
-/

namespace A179335.P1532894196807215924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211396 (A182986 (n + 2)).toNat

end

end A179335.P1532894196807215924

/-! ## A179335.P12019152667793209921

`A211396(eq[1, A032741(n)])`
-/

namespace A179335.P12019152667793209921
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211396 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A179335.P12019152667793209921

/-! ## A179335.P923063418870670809

`A211396(eq[2, A092976(n)])`
-/

namespace A179335.P923063418870670809
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092976 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211396 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A179335.P923063418870670809

/-! ## A179335.P13851849242553046485

`A211396(eq[2, A319410(n)])`
-/

namespace A179335.P13851849242553046485
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319410 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211396 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A179335.P13851849242553046485

/-! ## A179335.P1077130725161801541

`A211396(record[A006530(n+2)])`
-/

namespace A179335.P1077130725161801541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211396 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A179335.P1077130725161801541

/-! ## A179335.P12258417785299335828

`A211396(record[A014963(n+2)])`
-/

namespace A179335.P12258417785299335828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211396 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A179335.P12258417785299335828

/-! ## A179335.P7093808596759697660

`A211396(record[A020639(n+2)])`
-/

namespace A179335.P7093808596759697660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211396 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A179335.P7093808596759697660

/-! ## A179335.P13725516073587452466

`A211396(p?[lt[0, A211396(n)]])`
-/

namespace A179335.P13725516073587452466
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211396 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211396 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A179335.P13725516073587452466

/-! ## A179335.P6826466615415559086

`A211396(eq[A028310(n), A047814(n)])`
-/

namespace A179335.P6826466615415559086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047814 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211396 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A179335.P6826466615415559086

/-! ## A179335.P17471801592142691873

`A211396(A142342(n+1))`
-/

namespace A179335.P17471801592142691873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211396 (A142342 (n + 1)).toNat

end

end A179335.P17471801592142691873

/-!
# A179336: Primes containing at least one prime digit in base 10.

The programs for A179336, the canonical program `A179336.P4367121721092430186` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A179336 has offset 1).

The definition of A179336 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9309 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A179336.P4367121721092430186

`A000040(eq[1, gcd(19, A109066(n+1))]+1)`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A179336

/-- `A000040(eq[1, gcd(19, A109066(n+1))]+1)` -/
def P4367121721092430186.Spec : Prop :=
  ∀ n, P4367121721092430186.a n = A179336 (n + 1)

theorem P4367121721092430186.correct : P4367121721092430186.Spec := by
  intro n
  simp only [A179336, Nat.add_sub_cancel]

end A179336

/-! ## A179336.P3249491209421013901

`p?[A118950(n+1)]`
-/

namespace A179336.P3249491209421013901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118950 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A179336.P3249491209421013901

namespace A179336

/-- `p?[A118950(n+1)]` -/
def P3249491209421013901.Spec : Prop :=
  ∀ n, P3249491209421013901.a n = A179336 (n + 1)

end A179336

/-! ## A179336.P15964661812689528474

`p?[comp[A084984(n+1)]]`
-/

namespace A179336.P15964661812689528474
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084984 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A179336.P15964661812689528474

namespace A179336

/-- `p?[comp[A084984(n+1)]]` -/
def P15964661812689528474.Spec : Prop :=
  ∀ n, (P15964661812689528474.a n : ℤ) = A179336 (n + 1)

end A179336

/-! ## A179336.P16863894273530828559

`filter[A118950(n+1), A010051(#)]`
-/

namespace A179336.P16863894273530828559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118950 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A179336.P16863894273530828559

namespace A179336

/-- `filter[A118950(n+1), A010051(#)]` -/
def P16863894273530828559.Spec : Prop :=
  ∀ n, P16863894273530828559.a n = A179336 (n + 1)

end A179336

/-! ## A179336.P17047819245712904306

`∩[A000040(n+1), A118950(n+1)]`
-/

namespace A179336.P17047819245712904306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118950 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179336.P17047819245712904306

namespace A179336

/-- `∩[A000040(n+1), A118950(n+1)]` -/
def P17047819245712904306.Spec : Prop :=
  ∀ n, (P17047819245712904306.a n : ℤ) = A179336 (n + 1)

end A179336

/-! ## A179336.P3384626548837579176

`∩[A008578(n+1), A118950(n+1)]`
-/

namespace A179336.P3384626548837579176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118950 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179336.P3384626548837579176

namespace A179336

/-- `∩[A008578(n+1), A118950(n+1)]` -/
def P3384626548837579176.Spec : Prop :=
  ∀ n, (P3384626548837579176.a n : ℤ) = A179336 (n + 1)

end A179336

/-! ## A179336.P11925913487527044063

`∩[A046022(n+1), A118950(n+1)]`
-/

namespace A179336.P11925913487527044063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118950 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179336.P11925913487527044063

namespace A179336

/-- `∩[A046022(n+1), A118950(n+1)]` -/
def P11925913487527044063.Spec : Prop :=
  ∀ n, (P11925913487527044063.a n : ℤ) = A179336 (n + 1)

end A179336

/-! ## A179336.P603402280233447332

`∩[A066050(n+1), A118950(n+1)]`
-/

namespace A179336.P603402280233447332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066050 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118950 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179336.P603402280233447332

namespace A179336

/-- `∩[A066050(n+1), A118950(n+1)]` -/
def P603402280233447332.Spec : Prop :=
  ∀ n, (P603402280233447332.a n : ℤ) = A179336 (n + 1)

end A179336

/-! ## A179336.P5641723945692459191

`∩[A067126(n+1), A118950(n+1)]`
-/

namespace A179336.P5641723945692459191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067126 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118950 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179336.P5641723945692459191

namespace A179336

/-- `∩[A067126(n+1), A118950(n+1)]` -/
def P5641723945692459191.Spec : Prop :=
  ∀ n, (P5641723945692459191.a n : ℤ) = A179336 (n + 1)

end A179336

/-! ## A179336.P9159488016987614641

`∩[A106118(n+1), A118950(n+1)]`
-/

namespace A179336.P9159488016987614641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106118 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118950 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179336.P9159488016987614641

namespace A179336

/-- `∩[A106118(n+1), A118950(n+1)]` -/
def P9159488016987614641.Spec : Prop :=
  ∀ n, (P9159488016987614641.a n : ℤ) = A179336 (n + 1)

end A179336

/-! ## A179336.P12717625984976055372

`∩[A116974(n+1), A118950(n+1)]`
-/

namespace A179336.P12717625984976055372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116974 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118950 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179336.P12717625984976055372

namespace A179336

/-- `∩[A116974(n+1), A118950(n+1)]` -/
def P12717625984976055372.Spec : Prop :=
  ∀ n, (P12717625984976055372.a n : ℤ) = A179336 (n + 1)

end A179336

/-! ## A179336.P595956060296426101

`∩[A118950(n+1), A158611(n+1)]`
-/

namespace A179336.P595956060296426101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118950 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179336.P595956060296426101

namespace A179336

/-- `∩[A118950(n+1), A158611(n+1)]` -/
def P595956060296426101.Spec : Prop :=
  ∀ n, (P595956060296426101.a n : ℤ) = A179336 (n + 1)

end A179336

/-! ## A179336.P3682662801122306474

`∩[A118950(n+1), A175787(n+1)]`
-/

namespace A179336.P3682662801122306474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118950 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175787 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179336.P3682662801122306474

namespace A179336

/-- `∩[A118950(n+1), A175787(n+1)]` -/
def P3682662801122306474.Spec : Prop :=
  ∀ n, (P3682662801122306474.a n : ℤ) = A179336 (n + 1)

end A179336

/-! ## A179336.P4805774152689328101

`∩[A118950(n+1), A182986(n+1)]`
-/

namespace A179336.P4805774152689328101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118950 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179336.P4805774152689328101

namespace A179336

/-- `∩[A118950(n+1), A182986(n+1)]` -/
def P4805774152689328101.Spec : Prop :=
  ∀ n, (P4805774152689328101.a n : ℤ) = A179336 (n + 1)

end A179336

/-! ## A179336.P21841999770280055

`∩[A118950(n+1), A251595(n+1)]`
-/

namespace A179336.P21841999770280055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118950 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251595 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179336.P21841999770280055

namespace A179336

/-- `∩[A118950(n+1), A251595(n+1)]` -/
def P21841999770280055.Spec : Prop :=
  ∀ n, (P21841999770280055.a n : ℤ) = A179336 (n + 1)

end A179336

/-! ## A179336.P4955958300787169251

`∩[A118950(n+1), A373789(n+1)]`
-/

namespace A179336.P4955958300787169251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118950 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373789 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179336.P4955958300787169251

namespace A179336

/-- `∩[A118950(n+1), A373789(n+1)]` -/
def P4955958300787169251.Spec : Prop :=
  ∀ n, (P4955958300787169251.a n : ℤ) = A179336 (n + 1)

end A179336

/-! ## A179336.P6335608242165608389

`p?[comp[A034844(n+1)]]`
-/

namespace A179336.P6335608242165608389
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034844 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A179336.P6335608242165608389

namespace A179336

/-- `p?[comp[A034844(n+1)]]` -/
def P6335608242165608389.Spec : Prop :=
  ∀ n, (P6335608242165608389.a n : ℤ) = A179336 (n + 1)

end A179336

/-! ## A179336.P15965230803492866261

`record[A000040(n+1)*A193238(A179335(n+1))]`
-/

namespace A179336.P15965230803492866261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A193238 (A179335 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A179336.P15965230803492866261

namespace A179336

/-- `record[A000040(n+1)*A193238(A179335(n+1))]` -/
def P15965230803492866261.Spec : Prop :=
  ∀ n, P15965230803492866261.a n = A179336 (n + 1)

end A179336

/-! ## A179336.P3021323959694754962

`p?[n*ceil(tanh(A193238(n)))]`
-/

namespace A179336.P3021323959694754962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ⌈Real.tanh (A193238 n : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A179336.P3021323959694754962

namespace A179336

/-- `p?[n*ceil(tanh(A193238(n)))]` -/
def P3021323959694754962.Spec : Prop :=
  ∀ n, P3021323959694754962.a n = A179336 (n + 1)

end A179336

/-! ## A179336.P12670674063597728429

`p?[(n+1)%(A193238(n+1)+n+1)]`
-/

namespace A179336.P12670674063597728429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A193238 (n + 1) + (n + 1 : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A179336.P12670674063597728429

namespace A179336

/-- `p?[(n+1)%(A193238(n+1)+n+1)]` -/
def P12670674063597728429.Spec : Prop :=
  ∀ n, P12670674063597728429.a n = A179336 (n + 1)

end A179336

/-!
# A179337: Positive integers of the form (6*m^2 + 1)/11.

The programs for A179337, the canonical program `A179337.P17957349897234332965` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A179337 has offset 1).

The definition of A179337 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A179337.P18106432764498748827

`(66*(n+1)*n-3*(2*(n+1)-1)*(-1)^(n+1)+17)/4`
-/

namespace A179337.P18106432764498748827
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((66 * (n + 1) * n : ℤ) - 3 * ((2 * (n + 1) : ℤ) - 1) * (-1) ^ (n + 1) + 17 : ℚ) / 4

end

end A179337.P18106432764498748827

namespace A179337

/-- `(66*(n+1)*n-3*(2*(n+1)-1)*(-1)^(n+1)+17)/4` -/
def P18106432764498748827.Spec : Prop :=
  ∀ n, P18106432764498748827.a n = (A179337 (n + 1) : ℚ)

theorem P18106432764498748827.correct : P18106432764498748827.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 | 4 =>
      simp [A179337, Nat.add_sub_cancel, A179337.P18106432764498748827.a, A179337.P17957349897234332965.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 5 =>
      have h1 := ih (m + 4) (by omega)
      have h2 := ih (m + 3) (by omega)
      have h3 := ih (m + 2) (by omega)
      have h4 := ih (m + 1) (by omega)
      have h5 := ih m (by omega)
      simp only [A179337, Nat.add_sub_cancel, A179337.P18106432764498748827.a, A179337.P17957349897234332965.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 h5 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 5 - 1 = m + 4 by omega, show m + 5 - 2 = m + 3 by omega, show m + 5 - 3 = m + 2 by omega, show m + 5 - 4 = m + 1 by omega, show m + 5 - 5 = m by omega, show m + 4 < m + 5 by omega, show m + 3 < m + 5 by omega, show m + 2 < m + 5 by omega, show m + 1 < m + 5 by omega, show m < m + 5 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 h5 ⊢
      rw [← h1, ← h2, ← h3, ← h4, ← h5]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A179337

/-! ## A179337.P17957349897234332965

`a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` with `a(0)=5, a(1)=35, a(2)=107, a(3)=197, a(4)=341`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A179337

/-- `a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` -/
def P17957349897234332965.Spec : Prop :=
  ∀ n, P17957349897234332965.a n = A179337 (n + 1)

theorem P17957349897234332965.correct : P17957349897234332965.Spec := by
  intro n
  simp only [A179337, Nat.add_sub_cancel]

end A179337

/-! ## A179337.P5690881783976965396

`A274682(n+1)+A061793(n)`
-/

namespace A179337.P5690881783976965396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274682 (n + 1) + A061793 n

end

end A179337.P5690881783976965396

namespace A179337

/-- `A274682(n+1)+A061793(n)` -/
def P5690881783976965396.Spec : Prop :=
  ∀ n, P5690881783976965396.a n = A179337 (n + 1)

end A179337

/-! ## A179337.P2633840794703984333

`A001539(n)+2*A028242(n)²`
-/

namespace A179337.P2633840794703984333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001539 n + 2 * A028242 n ^ 2

end

end A179337.P2633840794703984333

namespace A179337

/-- `A001539(n)+2*A028242(n)²` -/
def P2633840794703984333.Spec : Prop :=
  ∀ n, P2633840794703984333.a n = A179337 (n + 1)

end A179337

/-! ## A179337.P15597211236681122915

`∑[(A040001(n)+4)*A008458(n)]`
-/

namespace A179337.P15597211236681122915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A040001 n + 4) * A008458 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A179337.P15597211236681122915

namespace A179337

/-- `∑[(A040001(n)+4)*A008458(n)]` -/
def P15597211236681122915.Spec : Prop :=
  ∀ n, P15597211236681122915.a n = A179337 (n + 1)

end A179337

/-! ## A179337.P2350865924567379293

`A274682(n+1)+A123296(n)+3`
-/

namespace A179337.P2350865924567379293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274682 (n + 1) + (A123296 n + 3)

end

end A179337.P2350865924567379293

namespace A179337

/-- `A274682(n+1)+A123296(n)+3` -/
def P2350865924567379293.Spec : Prop :=
  ∀ n, P2350865924567379293.a n = A179337 (n + 1)

end A179337

/-! ## A179337.P7486814943025250882

`A001539(n)+A001105(A028242(n))`
-/

namespace A179337.P7486814943025250882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001539 n + A001105 (A028242 n).toNat

end

end A179337.P7486814943025250882

namespace A179337

/-- `A001539(n)+A001105(A028242(n))` -/
def P7486814943025250882.Spec : Prop :=
  ∀ n, P7486814943025250882.a n = A179337 (n + 1)

end A179337

/-! ## A179337.P148532186284631513

`A033428(2*n+1)+record[A129202(2*n+1)]`
-/

namespace A179337.P148532186284631513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129202 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033428 (2 * n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A179337.P148532186284631513

namespace A179337

/-- `A033428(2*n+1)+record[A129202(2*n+1)]` -/
def P148532186284631513.Spec : Prop :=
  ∀ n, P148532186284631513.a n = A179337 (n + 1)

end A179337

/-! ## A179337.P12023974023565041917

`∑[A298038(n)+A234275(A008486(n))]`
-/

namespace A179337.P12023974023565041917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298038 n + A234275 (A008486 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A179337.P12023974023565041917

namespace A179337

/-- `∑[A298038(n)+A234275(A008486(n))]` -/
def P12023974023565041917.Spec : Prop :=
  ∀ n, P12023974023565041917.a n = A179337 (n + 1)

end A179337

/-! ## A179337.P12976861965476233359

`A319384(3*n+1)+n*3*(n+1)`
-/

namespace A179337.P12976861965476233359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319384 (3 * n + 1) + (n * (3 * (n + 1)) : ℤ)

end

end A179337.P12976861965476233359

namespace A179337

/-- `A319384(3*n+1)+n*3*(n+1)` -/
def P12976861965476233359.Spec : Prop :=
  ∀ n, P12976861965476233359.a n = A179337 (n + 1)

end A179337

/-! ## A179337.P4030350669740959175

`∑[A298038(n)+A008574(A008458(n))]`
-/

namespace A179337.P4030350669740959175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298038 n + A008574 (A008458 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A179337.P4030350669740959175

namespace A179337

/-- `∑[A298038(n)+A008574(A008458(n))]` -/
def P4030350669740959175.Spec : Prop :=
  ∀ n, P4030350669740959175.a n = A179337 (n + 1)

end A179337

/-!
# A179338: Positive integers of the form (10*m^2+1)/11.

The programs for A179338, the canonical program `A179338.P13057634055417759649` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A179338 has offset 1).

The definition of A179338 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A179338.P3916548415492054251

`(110*(n+1)*n+35*(2*(n+1)-1)*(-1)^(n+1)+39)/4`
-/

namespace A179338.P3916548415492054251
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((110 * (n + 1) * n : ℤ) + 35 * ((2 * (n + 1) : ℤ) - 1) * (-1) ^ (n + 1) + 39 : ℚ) / 4

end

end A179338.P3916548415492054251

namespace A179338

/-- `(110*(n+1)*n+35*(2*(n+1)-1)*(-1)^(n+1)+39)/4` -/
def P3916548415492054251.Spec : Prop :=
  ∀ n, P3916548415492054251.a n = (A179338 (n + 1) : ℚ)

theorem P3916548415492054251.correct : P3916548415492054251.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 | 4 =>
      simp [A179338, Nat.add_sub_cancel, A179338.P3916548415492054251.a, A179338.P13057634055417759649.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 5 =>
      have h1 := ih (m + 4) (by omega)
      have h2 := ih (m + 3) (by omega)
      have h3 := ih (m + 2) (by omega)
      have h4 := ih (m + 1) (by omega)
      have h5 := ih m (by omega)
      simp only [A179338, Nat.add_sub_cancel, A179338.P3916548415492054251.a, A179338.P13057634055417759649.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 h5 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 5 - 1 = m + 4 by omega, show m + 5 - 2 = m + 3 by omega, show m + 5 - 3 = m + 2 by omega, show m + 5 - 4 = m + 1 by omega, show m + 5 - 5 = m by omega, show m + 4 < m + 5 by omega, show m + 3 < m + 5 by omega, show m + 2 < m + 5 by omega, show m + 1 < m + 5 by omega, show m < m + 5 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 h5 ⊢
      rw [← h1, ← h2, ← h3, ← h4, ← h5]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A179338

/-! ## A179338.P13057634055417759649

`a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` with `a(0)=1, a(1)=91, a(2)=131, a(3)=401, a(4)=481`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A179338

/-- `a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` -/
def P13057634055417759649.Spec : Prop :=
  ∀ n, P13057634055417759649.a n = A179338 (n + 1)

theorem P13057634055417759649.correct : P13057634055417759649.Spec := by
  intro n
  simp only [A179338, Nat.add_sub_cancel]

end A179338

/-! ## A179338.P8414982030991418369

`10*A219257(n+1)+1`
-/

namespace A179338.P8414982030991418369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * A219257 (n + 1) + 1

end

end A179338.P8414982030991418369

namespace A179338

/-- `10*A219257(n+1)+1` -/
def P8414982030991418369.Spec : Prop :=
  ∀ n, P8414982030991418369.a n = A179338 (n + 1)

end A179338

/-! ## A179338.P144327206948810353

`A175885(n+1)²-A219257(n+1)`
-/

namespace A179338.P144327206948810353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175885 (n + 1) ^ 2 - A219257 (n + 1)

end

end A179338.P144327206948810353

namespace A179338

/-- `A175885(n+1)²-A219257(n+1)` -/
def P144327206948810353.Spec : Prop :=
  ∀ n, P144327206948810353.a n = A179338 (n + 1)

end A179338

/-! ## A179338.P2793308383550732306

`A001057(n)+A090771(n+1)*A175885(n+1)`
-/

namespace A179338.P2793308383550732306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 n + A090771 (n + 1) * A175885 (n + 1)

end

end A179338.P2793308383550732306

namespace A179338

/-- `A001057(n)+A090771(n+1)*A175885(n+1)` -/
def P2793308383550732306.Spec : Prop :=
  ∀ n, P2793308383550732306.a n = A179338 (n + 1)

end A179338

/-! ## A179338.P5301246496608085541

`A090771(n+1)*A091998(n+1)-A132356(n)`
-/

namespace A179338.P5301246496608085541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090771 (n + 1) * A091998 (n + 1) - A132356 n

end

end A179338.P5301246496608085541

namespace A179338

/-- `A090771(n+1)*A091998(n+1)-A132356(n)` -/
def P5301246496608085541.Spec : Prop :=
  ∀ n, P5301246496608085541.a n = A179338 (n + 1)

end A179338

/-! ## A179338.P17907694152404649980

`A007590(A113801(n+1))+A003215(n)`
-/

namespace A179338.P17907694152404649980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007590 (A113801 (n + 1)).toNat + A003215 n

end

end A179338.P17907694152404649980

namespace A179338

/-- `A007590(A113801(n+1))+A003215(n)` -/
def P17907694152404649980.Spec : Prop :=
  ∀ n, P17907694152404649980.a n = A179338 (n + 1)

end A179338

/-! ## A179338.P1136098414800986628

`A007590(A113801(n+1))+∑[A008458(n)]`
-/

namespace A179338.P1136098414800986628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007590 (A113801 (n + 1)).toNat + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A179338.P1136098414800986628

namespace A179338

/-- `A007590(A113801(n+1))+∑[A008458(n)]` -/
def P1136098414800986628.Spec : Prop :=
  ∀ n, P1136098414800986628.a n = A179338 (n + 1)

end A179338

/-! ## A179338.P12020408754709565189

`A017281(A219257(n+1))`
-/

namespace A179338.P12020408754709565189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017281 (A219257 (n + 1)).toNat

end

end A179338.P12020408754709565189

namespace A179338

/-- `A017281(A219257(n+1))` -/
def P12020408754709565189.Spec : Prop :=
  ∀ n, P12020408754709565189.a n = A179338 (n + 1)

end A179338

/-!
# A179339: Positive integers of the form (30*m^2+1)/11.

The programs for A179339, the canonical program `A179339.P13236752285378946744` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A179339 has offset 1).

The definition of A179339 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A179339.P13236752285378946744

`(330*(n+1)*n+45*(2*(n+1)-1)*(-1)^(n+1)+89)/4`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A179339

/-- `(330*(n+1)*n+45*(2*(n+1)-1)*(-1)^(n+1)+89)/4` -/
def P13236752285378946744.Spec : Prop :=
  ∀ n, P13236752285378946744.a n = (A179339 (n + 1) : ℚ)

end A179339

/-!
# A179340: Number of permutations of 1..n with i-5<=p(i)<=i+4.

The programs for A179340, there is no canonical definition to state claims against.
-/

/-! ## A179340.P3715253779933336044

`A001281(A174702(n+1)+A174701(n+1))`
-/

namespace A179340.P3715253779933336044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A174702 (n + 1) + A174701 (n + 1)).toNat

end

end A179340.P3715253779933336044

/-! ## A179340.P9620403823955634008

`A004525(A174702(n+1)+A174701(n+1))`
-/

namespace A179340.P9620403823955634008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A174702 (n + 1) + A174701 (n + 1)).toNat

end

end A179340.P9620403823955634008

/-! ## A179340.P13004623416455622912

`A004526(A174702(n+1)+A174701(n+1))`
-/

namespace A179340.P13004623416455622912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A174702 (n + 1) + A174701 (n + 1)).toNat

end

end A179340.P13004623416455622912

/-!
# A179341: Number of permutations of 1..n with i-6<=p(i)<=i+3.

The programs for A179341, there is no canonical definition to state claims against.
-/

/-! ## A179341.P1790558939788638011

`∏[∑{e}[∏{p}[∏[n+4], #], #]]`
-/

namespace A179341.P1790558939788638011
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), p

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A179341.P1790558939788638011

/-! ## A179341.P13123612011609432988

`A057360(4^n+2)`
-/

namespace A179341.P13123612011609432988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057360 (4 ^ n + 2)

end

end A179341.P13123612011609432988

/-! ## A179341.P10562013441664017768

`A108356(4^n-1)`
-/

namespace A179341.P10562013441664017768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108356 (4 ^ n - 1)

end

end A179341.P10562013441664017768

/-!
# A179342: Number of permutations of 1..n with i-6 <= p(i) <= i+4.

The programs for A179342, there is no canonical definition to state claims against.
-/

/-! ## A179342.P700385086760555950

`∏[floor(log(∏{e}[(3^n)², #]²))+1]`
-/

namespace A179342.P700385086760555950
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (3 ^ n) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.log (((∏ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p) ^ 2 : ℕ) : ℝ)⌋ + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A179342.P700385086760555950

/-! ## A179342.P7847396114147488821

`∏[round(log(A141423(n+1)))]`
-/

namespace A179342.P7847396114147488821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.log (A141423 (n + 1) : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A179342.P7847396114147488821

/-! ## A179342.P4675378356812997153

`A384058(6*a(n-1))` with `a(0)=1`
-/

namespace A179342.P4675378356812997153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A384058 (6 * a (n - 1)).toNat

end

end A179342.P4675378356812997153

/-!
# A179343: Number of permutations of 1..n with i-6<=p(i)<=i+5.

The programs for A179343, there is no canonical definition to state claims against.
-/

/-! ## A179343.P12283230683319280404

`∏[A084558(4^n)]`
-/

namespace A179343.P12283230683319280404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084558 (4 ^ n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A179343.P12283230683319280404

/-! ## A179343.P11108717014774324111

`∏[A126131(4^n)]`
-/

namespace A179343.P11108717014774324111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126131 (4 ^ n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A179343.P11108717014774324111

/-! ## A179343.P2930390586575831282

`A257686(A002310(n))`
-/

namespace A179343.P2930390586575831282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257686 (A002310 n).toNat

end

end A179343.P2930390586575831282

/-!
# A179344: Number of permutations of 1..n with i-7<=p(i)<=i+2.

The programs for A179344, there is no canonical definition to state claims against.
-/

/-! ## A179344.P11497289724317931529

`A065640(3*a(n-1))` with `a(0)=1, a(1)=2`
-/

namespace A179344.P11497289724317931529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A065640 (3 * a (n - 1)).toNat

end

end A179344.P11497289724317931529

/-! ## A179344.P3284256734618895390

`A065640(A025192(n))`
-/

namespace A179344.P3284256734618895390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065640 (A025192 n).toNat

end

end A179344.P3284256734618895390

/-! ## A179344.P8490491975932929497

`A065640(A179349(n+1))`
-/

namespace A179344.P8490491975932929497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065640 (A179349 (n + 1)).toNat

end

end A179344.P8490491975932929497

/-! ## A179344.P4022983985281870494

`A065640(A179355(n+1))`
-/

namespace A179344.P4022983985281870494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065640 (A179355 (n + 1)).toNat

end

end A179344.P4022983985281870494

/-! ## A179344.P6918964027677713224

`A065640(A179362(n+1))`
-/

namespace A179344.P6918964027677713224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065640 (A179362 (n + 1)).toNat

end

end A179344.P6918964027677713224

/-!
# A179345: Number of permutations of 1..n with i-7<=p(i)<=i+3.

The programs for A179345, there is no canonical definition to state claims against.
-/

/-! ## A179345.P14039468244593747710

`A321341(4^n-1)`
-/

namespace A179345.P14039468244593747710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321341 (4 ^ n - 1)

end

end A179345.P14039468244593747710

/-! ## A179345.P8189555178686090108

`∏[A335620((n+2)²)]`
-/

namespace A179345.P8189555178686090108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335620 ((n + 2) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A179345.P8189555178686090108

/-! ## A179345.P3597721242765869247

`A310103(a(n-1))` with `a(0)=1, a(1)=2`
-/

namespace A179345.P3597721242765869247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A310103 (a (n - 1)).toNat

end

end A179345.P3597721242765869247

/-! ## A179345.P15000353063379070882

`A310596(a(n-1))` with `a(0)=1, a(1)=2`
-/

namespace A179345.P15000353063379070882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A310596 (a (n - 1)).toNat

end

end A179345.P15000353063379070882

/-!
# A179346: Number of permutations of 1..n with i-7<=p(i)<=i+4.

The programs for A179346, there is no canonical definition to state claims against.
-/

/-! ## A179346.P2956386172456211556

`∏[A322976(Δ[3^n])]`
-/

namespace A179346.P2956386172456211556
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322976 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A179346.P2956386172456211556

/-! ## A179346.P9991687250001734709

`2*A285896(a(n-1))` with `a(0)=1`
-/

namespace A179346.P9991687250001734709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * A285896 (a (n - 1)).toNat

end

end A179346.P9991687250001734709

/-! ## A179346.P1652360861894826151

`2*A385137(a(n-1))` with `a(0)=1`
-/

namespace A179346.P1652360861894826151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * A385137 (a (n - 1)).toNat

end

end A179346.P1652360861894826151

/-! ## A179346.P6906374175934614003

`A000010(∏[p?[ceil(record[log2(or(2, n))])]])`
-/

namespace A179346.P6906374175934614003
noncomputable section

def f3 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Nat.lor 2 n : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)⌉

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A179346.P6906374175934614003

/-!
# A179347: Number of permutations of 1..n with i-7<=p(i)<=i+5.

The programs for A179347, there is no canonical definition to state claims against.
-/

/-! ## A179347.P16746394195629270875

`A000010(∏[Δ[floor(n^ϕ)]+1])`
-/

namespace A179347.P16746394195629270875
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) ^ Real.goldenRatio⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A179347.P16746394195629270875

/-! ## A179347.P15696437756307551894

`∏[A333224(∑[a(n-2)+7])]` with `a(0)=2, a(1)=1, a(2)=4`
-/

namespace A179347.P15696437756307551894
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [2, 1, 4] fun n f2 =>
  f2 (n - 2) + 7

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333224 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A179347.P15696437756307551894

/-! ## A179347.P3725491364955532977

`∏[A000120(A259594(n))]`
-/

namespace A179347.P3725491364955532977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A259594 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A179347.P3725491364955532977

/-! ## A179347.P13014185472842031524

`A179358(A073789(n)+1)`
-/

namespace A179347.P13014185472842031524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179358 (A073789 n + 1).toNat

end

end A179347.P13014185472842031524

/-!
# A179348: Number of permutations of 1..n with i-7<=p(i)<=i+6.

The programs for A179348, there is no canonical definition to state claims against.
-/

/-! ## A179348.P4142968224105581139

`∏[∏{e}[6^n+1, #%2]+n]`
-/

namespace A179348.P4142968224105581139
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 ^ n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p % 2 + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A179348.P4142968224105581139

/-! ## A179348.P1892549040405651567

`∏[Δ[A124157(n+1)]]`
-/

namespace A179348.P1892549040405651567
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124157 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A179348.P1892549040405651567

/-! ## A179348.P15679852791406878455

`∏[A002034(∏[∏{p}[n+1, #]])]`
-/

namespace A179348.P15679852791406878455
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), p

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002034 (∏ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A179348.P15679852791406878455

/-! ## A179348.P4901248248054341050

`∏[A130147(∑[(4^n-2^n)/2])]`
-/

namespace A179348.P4901248248054341050
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((4 ^ n : ℤ) - (2 ^ n : ℤ) : ℚ) / 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130147 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f2 j)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A179348.P4901248248054341050

/-!
# A179349: Number of permutations of 1..n with i-8<=p(i)<=i+2.

The programs for A179349, there is no canonical definition to state claims against.
-/

/-! ## A179349.P14356878576459268284

`abs(Δ[A014682(A179355(n+1))])`
-/

namespace A179349.P14356878576459268284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A179355 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A179349.P14356878576459268284

/-! ## A179349.P16530013460633120095

`A151566(A103662(n)-A125688(n+1))`
-/

namespace A179349.P16530013460633120095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151566 (A103662 n - A125688 (n + 1)).toNat

end

end A179349.P16530013460633120095

/-! ## A179349.P5466751247536511815

`A000038(n)+Δ[A014682(A179355(n+1))]`
-/

namespace A179349.P5466751247536511815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A179355 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n + (f1 (n + 1) - f1 n)

end

end A179349.P5466751247536511815

/-! ## A179349.P10852662828789371712

`Δ[A014682(A179355(n+1))]^A136400(n)`
-/

namespace A179349.P10852662828789371712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A179355 (n + 1)).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) ^ (A136400 n : ℤ)

end

end A179349.P10852662828789371712

/-! ## A179349.P13748241058966748829

`Δ[A014682(A057428(n)²*A179355(n+1))]`
-/

namespace A179349.P13748241058966748829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A057428 n ^ 2 * A179355 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A179349.P13748241058966748829

/-!
# A179350: Number of permutations of 1..n with i-8<=p(i)<=i+3.

The programs for A179350, there is no canonical definition to state claims against.
-/

/-! ## A179350.P17038799588775839543

`∏[A175242(3^n)]`
-/

namespace A179350.P17038799588775839543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175242 (3 ^ n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A179350.P17038799588775839543

/-! ## A179350.P4508948880943793371

`∏[A304751(∑[n!])]`
-/

namespace A179350.P4508948880943793371
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304751 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A179350.P4508948880943793371

/-! ## A179350.P5210497830001953657

`A145463(C(n+3, 2))`
-/

namespace A179350.P5210497830001953657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145463 (Nat.choose (n + 3) 2)

end

end A179350.P5210497830001953657

/-! ## A179350.P17006681619435348249

`A064212(a(n-1))` with `a(0)=1`
-/

namespace A179350.P17006681619435348249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A064212 (a (n - 1)).toNat

end

end A179350.P17006681619435348249

/-! ## A179350.P14566363387087030665

`A382155(a(n-1))` with `a(0)=1`
-/

namespace A179350.P14566363387087030665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A382155 (a (n - 1)).toNat

end

end A179350.P14566363387087030665

/-!
# A179351: Number of permutations of 1..n with i-8<=p(i)<=i+4.

The programs for A179351, there is no canonical definition to state claims against.
-/

/-! ## A179351.P6345941601246304947

`∏[∑{d}[∏[n+1], C(#%6, #)]]`
-/

namespace A179351.P6345941601246304947
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), Nat.choose (d % 6) d

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A179351.P6345941601246304947

/-! ## A179351.P4528435921724847134

`∏[(n-3)^A008683(n!)+4]`
-/

namespace A179351.P4528435921724847134
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 3 : ℚ) ^ (A008683 (Nat.factorial n) : ℤ) + 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A179351.P4528435921724847134

/-! ## A179351.P3458325663007833054

`∏[A286597(A099155(n))]`
-/

namespace A179351.P3458325663007833054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286597 (A099155 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A179351.P3458325663007833054

/-! ## A179351.P2818092247028265641

`A179357(A002998(n+1))`
-/

namespace A179351.P2818092247028265641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179357 (A002998 (n + 1)).toNat

end

end A179351.P2818092247028265641

/-! ## A179351.P8024111925301559467

`A179357(A032555(n+1))`
-/

namespace A179351.P8024111925301559467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179357 (A032555 (n + 1)).toNat

end

end A179351.P8024111925301559467

/-!
# A179352: Number of permutations of 1..n with i-8<=p(i)<=i+5.

The programs for A179352, there is no canonical definition to state claims against.
-/

/-! ## A179352.P14805905204784286149

`∏[A332268(3^n)]`
-/

namespace A179352.P14805905204784286149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332268 (3 ^ n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A179352.P14805905204784286149

/-! ## A179352.P9913651695408582405

`∏[A209082(∑[∏{p}[n+1, #]])]`
-/

namespace A179352.P9913651695408582405
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), p

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209082 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A179352.P9913651695408582405

/-! ## A179352.P14665561891788158664

`∏[2*n+1-lt[A000010(n+1), 5]]`
-/

namespace A179352.P14665561891788158664
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) - (SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A179352.P14665561891788158664

/-! ## A179352.P61766397894136779

`A000027(A179358(n+1))`
-/

namespace A179352.P61766397894136779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A179358 (n + 1)).toNat

end

end A179352.P61766397894136779

/-! ## A179352.P8608783166729873774

`A000027(A179365(n+1))`
-/

namespace A179352.P8608783166729873774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A179365 (n + 1)).toNat

end

end A179352.P8608783166729873774

/-!
# A179353: Number of permutations of 1..n with i-8<=p(i)<=i+6.

The programs for A179353, there is no canonical definition to state claims against.
-/

/-! ## A179353.P8586832729595868107

`∏[round(log(A215821(2*n+1)))]`
-/

namespace A179353.P8586832729595868107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.log (A215821 (2 * n + 1) : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A179353.P8586832729595868107

/-! ## A179353.P12976740142045460558

`A000027(A179359(n+1))`
-/

namespace A179353.P12976740142045460558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A179359 (n + 1)).toNat

end

end A179353.P12976740142045460558

/-! ## A179353.P14473603426918402835

`A000027(A179366(n+1))`
-/

namespace A179353.P14473603426918402835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A179366 (n + 1)).toNat

end

end A179353.P14473603426918402835

/-! ## A179353.P4936695800234446818

`A179359(A306360(n+1))`
-/

namespace A179353.P4936695800234446818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179359 (A306360 (n + 1)).toNat

end

end A179353.P4936695800234446818

/-! ## A179353.P11862004336082602187

`A000027(∏[∑[A127236(n)]])`
-/

namespace A179353.P11862004336082602187
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127236 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A179353.P11862004336082602187

/-!
# A179354: Number of permutations of 1..n with i-8<=p(i)<=i+7.

The programs for A179354, there is no canonical definition to state claims against.
-/

/-! ## A179354.P6745779394871496606

`∏[ceil(log2(A323395(n)))]`
-/

namespace A179354.P6745779394871496606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (A323395 n : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A179354.P6745779394871496606

/-! ## A179354.P9140994016783089276

`A193094(∑[char[8]+n])`
-/

namespace A179354.P9140994016783089276
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = n then 1 else 0) + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193094 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A179354.P9140994016783089276

/-! ## A179354.P5584939169165449883

`record[n!-A291115(n)]`
-/

namespace A179354.P5584939169165449883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) - A291115 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A179354.P5584939169165449883

/-! ## A179354.P12240001967885560117

`record[A193094(∑[floor(n^(1/5))])]`
-/

namespace A179354.P12240001967885560117
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) ^ ((1 : ℚ) / 5 : ℝ)⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193094 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A179354.P12240001967885560117

/-! ## A179354.P9861759786223531249

`A104557(A025706(n))`
-/

namespace A179354.P9861759786223531249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104557 (A025706 n).toNat

end

end A179354.P9861759786223531249

/-!
# A179355: Number of permutations of 1..n with i-9<=p(i)<=i+2.

The programs for A179355, there is no canonical definition to state claims against.
-/

/-! ## A179355.P14761852639110171781

`A151566(lcm(A008862(n), A176642(n)))`
-/

namespace A179355.P14761852639110171781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151566 (Int.lcm (A008862 n) (A176642 n))

end

end A179355.P14761852639110171781

/-! ## A179355.P828293715852864627

`A151566(∩[A008862(n), A234591(n)])`
-/

namespace A179355.P828293715852864627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008862 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234591 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151566 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A179355.P828293715852864627

/-! ## A179355.P16382017851192356628

`A151566(A008862(n)^A339890(2*n+5))`
-/

namespace A179355.P16382017851192356628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151566 (SequenceMachineLib.roundAway ((A008862 n : ℚ) ^ (A339890 (2 * n + 5) : ℤ))).toNat

end

end A179355.P16382017851192356628

/-! ## A179355.P17689343515605984200

`A151566(A234591(n)^A339890(2*n+5))`
-/

namespace A179355.P17689343515605984200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151566 (SequenceMachineLib.roundAway ((A234591 n : ℚ) ^ (A339890 (2 * n + 5) : ℤ))).toNat

end

end A179355.P17689343515605984200

/-! ## A179355.P721797465666478296

`A151566(A008862(n)%A355585(3*n+4))`
-/

namespace A179355.P721797465666478296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151566 (Int.tmod (A008862 n) (A355585 (3 * n + 4))).toNat

end

end A179355.P721797465666478296

/-!
# A179356: Number of permutations of 1..n with i-9<=p(i)<=i+3.

The programs for A179356, there is no canonical definition to state claims against.
-/

/-! ## A179356.P1568238253701601547

`record[-(n%2+gcd(2, n)*a(floor(n/2)))]` with `a(0)=1, a(1)=2, a(2)=0`
-/

namespace A179356.P1568238253701601547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 0] fun n f1 =>
  -(((n % 2 : ℕ) : ℤ) + (Nat.gcd 2 n : ℤ) * f1 ⌊(n : ℚ) / 2⌋.toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A179356.P1568238253701601547

/-! ## A179356.P10433171094679570811

`∏[A155092(∑[n+3])]`
-/

namespace A179356.P10433171094679570811
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155092 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A179356.P10433171094679570811

/-! ## A179356.P17754793241554117661

`∏[A064372(C(n+7, 6))]`
-/

namespace A179356.P17754793241554117661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064372 (Nat.choose (n + 7) 6)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A179356.P17754793241554117661

/-! ## A179356.P9213414675371249010

`record[A193904(ceil(n²/8))]`
-/

namespace A179356.P9213414675371249010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193904 ⌈(n ^ 2 : ℚ) / 8⌉.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A179356.P9213414675371249010

/-! ## A179356.P6330818954649446922

`A071364(4*a(n-1))` with `a(0)=1, a(1)=2, a(2)=6`
-/

namespace A179356.P6330818954649446922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 6] fun n a =>
  A071364 (4 * a (n - 1)).toNat

end

end A179356.P6330818954649446922

/-!
# A179357: Number of permutations of 1..n with i-9<=p(i)<=i+4.

The programs for A179357, there is no canonical definition to state claims against.
-/

/-! ## A179357.P1066785237232326016

`(5-C(2, A001222(a(n-1))))*a(n-1)` with `a(0)=1, a(1)=2`
-/

namespace A179357.P1066785237232326016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  (5 - (Nat.choose 2 (A001222 (a (n - 1)).toNat).toNat : ℤ)) * a (n - 1)

end

end A179357.P1066785237232326016

/-! ## A179357.P13092556279396602069

`(6-ceil(10/A000203(a(n-1)+1)))*a(n-1)` with `a(0)=1`
-/

namespace A179357.P13092556279396602069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (6 - ⌈10 / (A000203 (a (n - 1) + 1).toNat : ℚ)⌉) * a (n - 1)

end

end A179357.P13092556279396602069

/-! ## A179357.P5018949620789332493

`A003972(A025579(n+1))`
-/

namespace A179357.P5018949620789332493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003972 (A025579 (n + 1)).toNat

end

end A179357.P5018949620789332493

/-! ## A179357.P97388597938746922

`A000027(A179364(n+1))`
-/

namespace A179357.P97388597938746922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A179364 (n + 1)).toNat

end

end A179357.P97388597938746922

/-! ## A179357.P13732489098113394222

`A179364(A062399(n+1))`
-/

namespace A179357.P13732489098113394222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179364 (A062399 (n + 1)).toNat

end

end A179357.P13732489098113394222

/-!
# A179358: Number of permutations of 1..n with i-9<=p(i)<=i+5.

The programs for A179358, there is no canonical definition to state claims against.
-/

/-! ## A179358.P2337272978169343826

`∏[A069926(∑[(n+1)*Δ[n^3]])]`
-/

namespace A179358.P2337272978169343826
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * ((f3 (n + 1) : ℤ) - (f3 n : ℤ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069926 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A179358.P2337272978169343826

/-! ## A179358.P5297480436083907980

`A179365(A002998(n)+1)`
-/

namespace A179358.P5297480436083907980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179365 (A002998 n + 1).toNat

end

end A179358.P5297480436083907980

/-! ## A179358.P2521263520024211015

`A179365(A039723(n)+1)`
-/

namespace A179358.P2521263520024211015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179365 (A039723 n + 1).toNat

end

end A179358.P2521263520024211015

/-! ## A179358.P6960468361741411957

`∏[A177903(A071347(n+1))]`
-/

namespace A179358.P6960468361741411957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177903 (A071347 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A179358.P6960468361741411957

/-!
# A179359: Number of permutations of 1..n with i-9<=p(i)<=i+6.

The programs for A179359, there is no canonical definition to state claims against.
-/

/-! ## A179359.P5558096336703137140

`∏[ceil(ratio[A224318(n)])]`
-/

namespace A179359.P5558096336703137140
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224318 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(f2 (n + 1) : ℚ) / (f2 n : ℚ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A179359.P5558096336703137140

/-! ## A179359.P5839775135860845268

`∏[floor(log(A123205(n+1)))]`
-/

namespace A179359.P5839775135860845268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.log (A123205 (n + 1) : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A179359.P5839775135860845268

/-! ## A179359.P1538140240718173522

`∏[and(7, ∑[A187257(n)!])]`
-/

namespace A179359.P1538140240718173522
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A187257 n).toNat

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 7 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A179359.P1538140240718173522

/-! ## A179359.P14120267630321628302

`A179366(∑[(n-∑{digits}[n, #])!])`
-/

namespace A179359.P14120267630321628302
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial ((n : ℤ) - ((((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x).sum : ℕ) : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179366 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A179359.P14120267630321628302

/-! ## A179359.P6845625297840585669

`∏[A007814(∏[A079416(n+2)])]`
-/

namespace A179359.P6845625297840585669
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079416 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (∏ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A179359.P6845625297840585669

/-!
# A179360: Number of permutations of 1..n with i-9<=p(i)<=i+7.

The programs for A179360, there is no canonical definition to state claims against.
-/

/-! ## A179360.P6947379083227864797

`∏[ceil(ratio[A223905(n)])]`
-/

namespace A179360.P6947379083227864797
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223905 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(f2 (n + 1) : ℚ) / (f2 n : ℚ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A179360.P6947379083227864797

/-! ## A179360.P6280748898367717171

`∏[dr(1-A353907(n+2))]`
-/

namespace A179360.P6280748898367717171
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (1 - A353907 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A179360.P6280748898367717171

/-! ## A179360.P1237582542815552656

`∏[A134021(A035244(n))]`
-/

namespace A179360.P1237582542815552656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134021 (A035244 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A179360.P1237582542815552656

/-! ## A179360.P13285257898848641235

`A179367(A002998(n)+1)`
-/

namespace A179360.P13285257898848641235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179367 (A002998 n + 1).toNat

end

end A179360.P13285257898848641235

/-! ## A179360.P13827108722973263781

`∏[A352746(∑[A001615(n+1)])]`
-/

namespace A179360.P13827108722973263781
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001615 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352746 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A179360.P13827108722973263781

/-!
# A179361: Number of permutations of 1..n with i-9<=p(i)<=i+8.

The programs for A179361, there is no canonical definition to state claims against.
-/

/-! ## A179361.P15693470489020196562

`∏[C(3, ∑{e}[4^n+1, #])%2+n]`
-/

namespace A179361.P15693470489020196562
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 ^ n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 3 (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p) % 2 + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A179361.P15693470489020196562

/-! ## A179361.P11155792270288743038

`∏[A092596(n+1)%10]`
-/

namespace A179361.P11155792270288743038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A092596 (n + 1)) 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A179361.P11155792270288743038

/-! ## A179361.P4598669769778328667

`∏[A249517(n+2)%13]`
-/

namespace A179361.P4598669769778328667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A249517 (n + 2)) 13

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A179361.P4598669769778328667

/-! ## A179361.P18310160242750689477

`∏[A134021(∑[A018027(n)])]`
-/

namespace A179361.P18310160242750689477
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018027 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134021 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A179361.P18310160242750689477

/-! ## A179361.P11150869966637119499

`∏[A134021(∑[A026581(n)])]`
-/

namespace A179361.P11150869966637119499
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026581 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134021 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A179361.P11150869966637119499

/-!
# A179363: Number of permutations of 1..n with i-10<=p(i)<=i+3.

The programs for A179363, there is no canonical definition to state claims against.
-/

/-! ## A179363.P12198373823778519708

`∏[A191781(∑[n+3])]`
-/

namespace A179363.P12198373823778519708
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191781 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A179363.P12198373823778519708

/-! ## A179363.P9590076816524759626

`∏[∑{e}[A062699(n+1), #]]`
-/

namespace A179363.P9590076816524759626
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062699 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A179363.P9590076816524759626

/-! ## A179363.P9069411716964055406

`∏[A055874(∏[n%4+1])]`
-/

namespace A179363.P9069411716964055406
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 4 + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055874 (∏ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A179363.P9069411716964055406

/-! ## A179363.P18250902132978160598

`A000027(4*a(n-1))` with `a(0)=1, a(1)=2, a(2)=6`
-/

namespace A179363.P18250902132978160598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 6] fun n a =>
  A000027 (4 * a (n - 1)).toNat

end

end A179363.P18250902132978160598

/-! ## A179363.P670661069654266336

`record[-(2*a(A000010(n)))]` with `a(0)=1, a(1)=2, a(2)=6`
-/

namespace A179363.P670661069654266336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 6] fun n f1 =>
  -(2 * f1 (A000010 n).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A179363.P670661069654266336

/-!
# A179364: Number of permutations of 1..n with i-10<=p(i)<=i+4.

The programs for A179364, there is no canonical definition to state claims against.
-/

/-! ## A179364.P15828708574296590563

`∏[A140432(n+1)%6]`
-/

namespace A179364.P15828708574296590563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A140432 (n + 1)) 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A179364.P15828708574296590563

/-! ## A179364.P1247186415232719442

`∏[A304092(∏[A304097(n)])]`
-/

namespace A179364.P1247186415232719442
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304097 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304092 (∏ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A179364.P1247186415232719442

/-! ## A179364.P9253205835893705392

`∏[A063787(record[A163755(n)])]`
-/

namespace A179364.P9253205835893705392
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163755 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063787 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A179364.P9253205835893705392

/-! ## A179364.P3772624862030627155

`∏[A000720(p?[A262039(n)])]`
-/

namespace A179364.P3772624862030627155
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262039 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A179364.P3772624862030627155

/-! ## A179364.P13005314542385602496

`∏[A001221(A096775(n+2))]`
-/

namespace A179364.P13005314542385602496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A096775 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A179364.P13005314542385602496

/-!
# A179365: Number of permutations of 1..n with i-10 <= p(i) <= i+5.

The programs for A179365, there is no canonical definition to state claims against.
-/

/-! ## A179365.P2001888340216072272

`∏[A209082(record[A111008(n)])]`
-/

namespace A179365.P2001888340216072272
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111008 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209082 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A179365.P2001888340216072272

/-! ## A179365.P2735743417871537898

`∏[A001511(∏[A154099(n+1)])]`
-/

namespace A179365.P2735743417871537898
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154099 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (∏ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A179365.P2735743417871537898

/-! ## A179365.P2645637355666615482

`∏[A035191(∏[A154099(n+1)])]`
-/

namespace A179365.P2645637355666615482
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154099 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035191 (∏ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A179365.P2645637355666615482

/-! ## A179365.P17647165163862319387

`∏[A001511(∏[A204166(n+1)])]`
-/

namespace A179365.P17647165163862319387
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204166 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (∏ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A179365.P17647165163862319387

/-! ## A179365.P14177985133389267599

`∏[A035191(∏[A204166(n+1)])]`
-/

namespace A179365.P14177985133389267599
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204166 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035191 (∏ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A179365.P14177985133389267599

/-!
# A179366: Number of permutations of 1..n with i-10<=p(i)<=i+6.

The programs for A179366, there is no canonical definition to state claims against.
-/

/-! ## A179366.P11370073441328991807

`∏[A121559(A358508(2*n))+a(n-1)]` with `a(0)=1`
-/

namespace A179366.P11370073441328991807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A121559 (A358508 (2 * n)).toNat + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A179366.P11370073441328991807

/-!
# A179367: Number of permutations of 1..n with i-10<=p(i)<=i+7.

The programs for A179367, there is no canonical definition to state claims against.
-/

/-! ## A179367.P14556963893077817938

`∏[A108922(A062399(n))]`
-/

namespace A179367.P14556963893077817938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108922 (A062399 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A179367.P14556963893077817938

/-! ## A179367.P16797132115136277542

`∏[A001511(∏[A082528(n)])]`
-/

namespace A179367.P16797132115136277542
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082528 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (∏ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A179367.P16797132115136277542

/-! ## A179367.P5728439060093688302

`∏[A110011(A064704(n+1))]`
-/

namespace A179367.P5728439060093688302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110011 (A064704 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A179367.P5728439060093688302

/-! ## A179367.P11654302676490357187

`∏[A007814(∏[A079416(n+1)])]`
-/

namespace A179367.P11654302676490357187
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079416 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (∏ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A179367.P11654302676490357187

/-! ## A179367.P387994621579462364

`∏[A007814(∏[A072746(n+5)])]`
-/

namespace A179367.P387994621579462364
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072746 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (∏ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A179367.P387994621579462364

/-!
# A179368: Number of permutations of 1..n with i-10<=p(i)<=i+8.

The programs for A179368, there is no canonical definition to state claims against.
-/

/-! ## A179368.P11745863621674114983

`∏[dr(A353907(n+1))]`
-/

namespace A179368.P11745863621674114983
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A353907 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A179368.P11745863621674114983

/-! ## A179368.P7578168215603764353

`∏[dr(A135385(n+2))]`
-/

namespace A179368.P7578168215603764353
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A135385 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A179368.P7578168215603764353

/-! ## A179368.P16533822564328308209

`∏[floor(log(A102142(2*n+3)))]`
-/

namespace A179368.P16533822564328308209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.log (A102142 (2 * n + 3) : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A179368.P16533822564328308209

/-! ## A179368.P13827392045928778761

`∏[A321765(A086892(n+1))+n]`
-/

namespace A179368.P13827392045928778761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321765 (A086892 (n + 1)).toNat + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A179368.P13827392045928778761

/-!
# A179369: Number of permutations of 1..n with i-10 <= p(i) <= i+9.

The programs for A179369, there is no canonical definition to state claims against.
-/

/-! ## A179369.P12508776538907357737

`∏[n+2-(2^C(n, 10))!]`
-/

namespace A179369.P12508776538907357737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) - (Nat.factorial (2 ^ Nat.choose n 10) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A179369.P12508776538907357737

/-! ## A179369.P13400133246697737349

`∏[round(log(A282949(3*(n+1))))]`
-/

namespace A179369.P13400133246697737349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.log (A282949 (3 * (n + 1)) : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A179369.P13400133246697737349

/-! ## A179369.P15527314658758343277

`∏[floor(log(A219050(3*n+4)))]`
-/

namespace A179369.P15527314658758343277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.log (A219050 (3 * n + 4) : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A179369.P15527314658758343277

/-! ## A179369.P3629018351199927136

`∏[A130260(A001792(n))]`
-/

namespace A179369.P3629018351199927136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130260 (A001792 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A179369.P3629018351199927136

/-! ## A179369.P10303130799098899567

`A267390(A000005(3^n))`
-/

namespace A179369.P10303130799098899567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267390 (A000005 (3 ^ n)).toNat

end

end A179369.P10303130799098899567

/-!
# A179370: Positive integers of the form (7*m^2+1)/11.

The programs for A179370, the canonical program `A179370.P4885280627128609702` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A179370 has offset 1).

The definition of A179370 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A179370.P3848836580010039043

`(154*(n+1)*n-63*(2*(n+1)-1)*(-1)^(n+1)+65)/8`
-/

namespace A179370.P3848836580010039043
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((154 * (n + 1) * n : ℤ) - 63 * ((2 * (n + 1) : ℤ) - 1) * (-1) ^ (n + 1) + 65 : ℚ) / 8

end

end A179370.P3848836580010039043

namespace A179370

/-- `(154*(n+1)*n-63*(2*(n+1)-1)*(-1)^(n+1)+65)/8` -/
def P3848836580010039043.Spec : Prop :=
  ∀ n, P3848836580010039043.a n = (A179370 (n + 1) : ℚ)

theorem P3848836580010039043.correct : P3848836580010039043.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 | 4 =>
      simp [A179370, Nat.add_sub_cancel, A179370.P3848836580010039043.a, A179370.P4885280627128609702.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 5 =>
      have h1 := ih (m + 4) (by omega)
      have h2 := ih (m + 3) (by omega)
      have h3 := ih (m + 2) (by omega)
      have h4 := ih (m + 1) (by omega)
      have h5 := ih m (by omega)
      simp only [A179370, Nat.add_sub_cancel, A179370.P3848836580010039043.a, A179370.P4885280627128609702.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 h5 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 5 - 1 = m + 4 by omega, show m + 5 - 2 = m + 3 by omega, show m + 5 - 3 = m + 2 by omega, show m + 5 - 4 = m + 1 by omega, show m + 5 - 5 = m by omega, show m + 4 < m + 5 by omega, show m + 3 < m + 5 by omega, show m + 2 < m + 5 by omega, show m + 1 < m + 5 by omega, show m < m + 5 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 h5 ⊢
      rw [← h1, ← h2, ← h3, ← h4, ← h5]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A179370

/-! ## A179370.P4885280627128609702

`a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` with `a(0)=16, a(1)=23, a(2)=163, a(3)=184, a(4)=464`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A179370

/-- `a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` -/
def P4885280627128609702.Spec : Prop :=
  ∀ n, P4885280627128609702.a n = A179370 (n + 1)

theorem P4885280627128609702.correct : P4885280627128609702.Spec := by
  intro n
  simp only [A179370, Nat.add_sub_cancel]

end A179370

/-! ## A179370.P15841728807162364797

`A061101(n+1)-∑[2*n]`
-/

namespace A179370.P15841728807162364797
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061101 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A179370.P15841728807162364797

namespace A179370

/-- `A061101(n+1)-∑[2*n]` -/
def P15841728807162364797.Spec : Prop :=
  ∀ n, P15841728807162364797.a n = A179370 (n + 1)

end A179370

/-! ## A179370.P1500544918991926481

`A156638(n+1)²-(n²+n)`
-/

namespace A179370.P1500544918991926481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156638 (n + 1) ^ 2 - (n ^ 2 + n : ℤ)

end

end A179370.P1500544918991926481

namespace A179370

/-- `A156638(n+1)²-(n²+n)` -/
def P1500544918991926481.Spec : Prop :=
  ∀ n, P1500544918991926481.a n = A179370 (n + 1)

end A179370

/-! ## A179370.P17723400717982680888

`∑[A040139(n)/3]²-(n²+n)`
-/

namespace A179370.P17723400717982680888
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A040139 n : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - (n ^ 2 + n : ℚ)

end

end A179370.P17723400717982680888

namespace A179370

/-- `∑[A040139(n)/3]²-(n²+n)` -/
def P17723400717982680888.Spec : Prop :=
  ∀ n, P17723400717982680888.a n = (A179370 (n + 1) : ℚ)

end A179370

/-! ## A179370.P17306036998996377763

`abs(A061101(n+1)-A002378(n))`
-/

namespace A179370.P17306036998996377763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A061101 (n + 1) - A002378 n|

end

end A179370.P17306036998996377763

namespace A179370

/-- `abs(A061101(n+1)-A002378(n))` -/
def P17306036998996377763.Spec : Prop :=
  ∀ n, P17306036998996377763.a n = A179370 (n + 1)

end A179370

/-! ## A179370.P13883830348339588461

`A061101(n+1)-n-A000290(n)`
-/

namespace A179370.P13883830348339588461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061101 (n + 1) - (n : ℤ) - A000290 n

end

end A179370.P13883830348339588461

namespace A179370

/-- `A061101(n+1)-n-A000290(n)` -/
def P13883830348339588461.Spec : Prop :=
  ∀ n, P13883830348339588461.a n = A179370 (n + 1)

end A179370

/-! ## A179370.P18103477820463532662

`∑[A040063(n)/2]²-A002378(n)`
-/

namespace A179370.P18103477820463532662
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A040063 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - (A002378 n : ℚ)

end

end A179370.P18103477820463532662

namespace A179370

/-- `∑[A040063(n)/2]²-A002378(n)` -/
def P18103477820463532662.Spec : Prop :=
  ∀ n, P18103477820463532662.a n = (A179370 (n + 1) : ℚ)

end A179370

/-! ## A179370.P3708770991202285098

`A061101(n+1)-n-A008794(2*n)`
-/

namespace A179370.P3708770991202285098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061101 (n + 1) - (n : ℤ) - A008794 (2 * n)

end

end A179370.P3708770991202285098

namespace A179370

/-- `A061101(n+1)-n-A008794(2*n)` -/
def P3708770991202285098.Spec : Prop :=
  ∀ n, P3708770991202285098.a n = A179370 (n + 1)

end A179370

/-! ## A179370.P11427467947567819099

`A000290(A156638(n+1))-A002378(n)`
-/

namespace A179370.P11427467947567819099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (A156638 (n + 1)).toNat - A002378 n

end

end A179370.P11427467947567819099

namespace A179370

/-- `A000290(A156638(n+1))-A002378(n)` -/
def P11427467947567819099.Spec : Prop :=
  ∀ n, P11427467947567819099.a n = A179370 (n + 1)

end A179370

/-!
# A179376: Decimal expansion of the ratio of the height of a circular segment with area r^2 of a circle with radius r to r itself.

The programs for A179376, there is no canonical definition to state claims against.
-/

/-! ## A179376.P3055933362376216631

`9-A179377(n)`
-/

namespace A179376.P3055933362376216631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A179377 n

end

end A179376.P3055933362376216631

/-!
# A179377: Decimal expansion of the ratio of the height of the triangle corresponding to a circular segment with area r^2 of a circle with radius r to r itself.

The programs for A179377, there is no canonical definition to state claims against.
-/

/-! ## A179377.P7617092052378747905

`9-A179376(n)`
-/

namespace A179377.P7617092052378747905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A179376 n

end

end A179377.P7617092052378747905

/-!
# A179379: Row sums of the triangle A179380 related to Bell numbers.

The programs for A179379, there is no canonical definition to state claims against.
-/

/-! ## A179379.P11613457837799817816

`A051889(A149059(n))`
-/

namespace A179379.P11613457837799817816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051889 (A149059 n).toNat

end

end A179379.P11613457837799817816

/-! ## A179379.P4048193185457561994

`A333764(A208062(n))`
-/

namespace A179379.P4048193185457561994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333764 (A208062 n).toNat

end

end A179379.P4048193185457561994

/-! ## A179379.P11534254699076776233

`A333943(A005962(n+1))`
-/

namespace A179379.P11534254699076776233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333943 (A005962 (n + 1)).toNat

end

end A179379.P11534254699076776233

/-!
# A179380: Triangle T(n,k) read by rows: product of A074664(a_i) over all parts a_i of the k-th partition of n listed in Abramowitz and Stegun order, 1 <= k <= A000041(n).

The programs for A179380, there is no canonical definition to state claims against.
-/

/-! ## A179380.P18174601216233170313

`A179313(n)/A048996(n)`
-/

namespace A179380.P18174601216233170313
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A179313 n : ℚ) / (A048996 n : ℚ)

end

end A179380.P18174601216233170313

/-! ## A179380.P2054681108863636155

`A336488(A179318(n))`
-/

namespace A179380.P2054681108863636155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336488 (A179318 n).toNat

end

end A179380.P2054681108863636155

/-! ## A179380.P16287853436808898160

`A088861(A107106(n))`
-/

namespace A179380.P16287853436808898160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088861 (A107106 n).toNat

end

end A179380.P16287853436808898160

/-!
# A179381: Row sums of A179318.

The programs for A179381, there is no canonical definition to state claims against.
-/

/-! ## A179381.P4234843140906750163

`∑[A359755(A024493(n+1))]`
-/

namespace A179381.P4234843140906750163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359755 (A024493 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A179381.P4234843140906750163

/-! ## A179381.P4959755140667594164

`A245900(n+2)-A237113(n)`
-/

namespace A179381.P4959755140667594164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245900 (n + 2) - A237113 n

end

end A179381.P4959755140667594164

/-! ## A179381.P5036075811155244744

`A245900(n+2)-A241831(n)`
-/

namespace A179381.P5036075811155244744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245900 (n + 2) - A241831 n

end

end A179381.P5036075811155244744

/-!
# A179382: a(n) is the smallest period of pseudo-arithmetic progression with initial term 1 and difference 2n-1.

The programs for A179382, there is no canonical definition to state claims against.
-/

/-! ## A179382.P13763505419813310723

`A165783(n+1)-A002326(n)`
-/

namespace A179382.P13763505419813310723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165783 (n + 1) - A002326 n

end

end A179382.P13763505419813310723

/-! ## A179382.P7781898279997175616

`A001222(A292239(n))`
-/

namespace A179382.P7781898279997175616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A292239 n).toNat

end

end A179382.P7781898279997175616

/-! ## A179382.P3926828288702146522

`A165783(n+1)-A007733(2*n+1)`
-/

namespace A179382.P3926828288702146522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165783 (n + 1) - A007733 (2 * n + 1)

end

end A179382.P3926828288702146522

/-! ## A179382.P822680973226805256

`A165783(n+1)-A054703(2*n+1)`
-/

namespace A179382.P822680973226805256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165783 (n + 1) - A054703 (2 * n + 1)

end

end A179382.P822680973226805256

/-! ## A179382.P3307178232204431681

`A165783(n+1)-A336843(A064216(n+1))`
-/

namespace A179382.P3307178232204431681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165783 (n + 1) - A336843 (A064216 (n + 1)).toNat

end

end A179382.P3307178232204431681

/-! ## A179382.P12032339263025574720

`A165783(n+1)-A037225(n)/A037226(n)`
-/

namespace A179382.P12032339263025574720
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A165783 (n + 1) : ℚ) - (A037225 n : ℚ) / (A037226 n : ℚ)

end

end A179382.P12032339263025574720

/-! ## A179382.P15092727127074483098

`A165783(n+1)-lcm(A003558(n), A053451(n))`
-/

namespace A179382.P15092727127074483098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165783 (n + 1) - (Int.lcm (A003558 n) (A053451 n) : ℤ)

end

end A179382.P15092727127074483098

/-! ## A179382.P9056301836488685008

`A119513(A113127(n+1))`
-/

namespace A179382.P9056301836488685008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119513 (A113127 (n + 1)).toNat

end

end A179382.P9056301836488685008

/-! ## A179382.P8911870667407265957

`A119513(A281813(n))`
-/

namespace A179382.P8911870667407265957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119513 (A281813 n).toNat

end

end A179382.P8911870667407265957

/-!
# A179383: a(n) = 2*k(n)-1 where k(n) is the sequence of positions of records in A179382.

The programs for A179383, there is no canonical definition to state claims against.
-/

/-! ## A179383.P14054107182369432234

`A139099(a(val(n, n+1))+n+1)` with `a(0)=1`
-/

namespace A179383.P14054107182369432234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A139099 (a (SequenceMachineLib.valuation n (n + 1)) + (n + 1 : ℤ)).toNat

end

end A179383.P14054107182369432234

/-! ## A179383.P5482932247719806168

`A139099(A065475(n+1))`
-/

namespace A179383.P5482932247719806168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139099 (A065475 (n + 1)).toNat

end

end A179383.P5482932247719806168

/-! ## A179383.P1224762912394875967

`A139099(A181440(n+2))`
-/

namespace A179383.P1224762912394875967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139099 (A181440 (n + 2)).toNat

end

end A179383.P1224762912394875967

/-! ## A179383.P12139779653694437963

`A139099(A184985(n+2))`
-/

namespace A179383.P12139779653694437963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139099 (A184985 (n + 2)).toNat

end

end A179383.P12139779653694437963

/-! ## A179383.P4379521058857437129

`A139099(2-A000007(n)+n)`
-/

namespace A179383.P4379521058857437129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139099 (2 - A000007 n + (n : ℤ)).toNat

end

end A179383.P4379521058857437129

/-! ## A179383.P15852918395471603001

`A139099(2-(A000007(n)-n))`
-/

namespace A179383.P15852918395471603001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139099 (2 - (A000007 n - (n : ℤ))).toNat

end

end A179383.P15852918395471603001

/-! ## A179383.P9922561592286563799

`A139099(A000040(n+1)%2+n+1)`
-/

namespace A179383.P9922561592286563799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139099 (Int.tmod (A000040 (n + 1)) 2 + (n : ℤ) + 1).toNat

end

end A179383.P9922561592286563799

/-! ## A179383.P17305962357372261444

`A139099(n+2)%(2*A139099(n+1))`
-/

namespace A179383.P17305962357372261444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A139099 (n + 2)) (2 * A139099 (n + 1))

end

end A179383.P17305962357372261444

/-! ## A179383.P12889473904098464070

`A139099(and(1, A000040(n+1))+n+1)`
-/

namespace A179383.P12889473904098464070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139099 (Int.land 1 (A000040 (n + 1)) + (n + 1 : ℤ)).toNat

end

end A179383.P12889473904098464070

/-! ## A179383.P1053001317868274052

`A139099(A328672(floor(log2(n+1)))+n+1)`
-/

namespace A179383.P1053001317868274052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139099 (A328672 (Nat.log 2 (n + 1)) + (n : ℤ) + 1).toNat

end

end A179383.P1053001317868274052

/-! ## A179383.P15295725556909350512

`A139099(n+2)-2*A266220(2*n)`
-/

namespace A179383.P15295725556909350512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139099 (n + 2) - 2 * A266220 (2 * n)

end

end A179383.P15295725556909350512

/-! ## A179383.P16355792092444103427

`A139099(n+2)-C(2, A008578(2*n+1))`
-/

namespace A179383.P16355792092444103427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139099 (n + 2) - (Nat.choose 2 (A008578 (2 * n + 1)).toNat : ℤ)

end

end A179383.P16355792092444103427

/-! ## A179383.P13773831507103942571

`A139099(n+2)-C(2, A139099(2*n+1))`
-/

namespace A179383.P13773831507103942571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139099 (n + 2) - (Nat.choose 2 (A139099 (2 * n + 1)).toNat : ℤ)

end

end A179383.P13773831507103942571

/-! ## A179383.P2422690753311418192

`filter[A139099(n+1), A014578(#)]`
-/

namespace A179383.P2422690753311418192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139099 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A014578 (f1 j).toNat = 1) n)

end

end A179383.P2422690753311418192

/-! ## A179383.P9044813750731540110

`filter[A139099(n+1), A372574(#)]`
-/

namespace A179383.P9044813750731540110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139099 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A372574 (f1 j).toNat = 1) n)

end

end A179383.P9044813750731540110

/-! ## A179383.P15008695884476212938

`filter[A139099(n+1), A373136(#)]`
-/

namespace A179383.P15008695884476212938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139099 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373136 (f1 j).toNat = 1) n)

end

end A179383.P15008695884476212938

/-! ## A179383.P9530387766549788454

`filter[A139099(n+1), A373991(#)]`
-/

namespace A179383.P9530387766549788454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139099 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373991 (f1 j).toNat = 1) n)

end

end A179383.P9530387766549788454

/-! ## A179383.P2370927462914320272

`filter[A139099(n+1), A374039(#)]`
-/

namespace A179383.P2370927462914320272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139099 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374039 (f1 j).toNat = 1) n)

end

end A179383.P2370927462914320272

/-!
# A179384: Nonprimes in A040976.

The programs for A179384, the canonical program `A179384.P14080840919956110630` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A179384 has offset 1).

The definition of A179384 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A179384.P14080840919956110630

`A025584(n+1)-2`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A179384

/-- `A025584(n+1)-2` -/
def P14080840919956110630.Spec : Prop :=
  ∀ n, P14080840919956110630.a n = A179384 (n + 1)

theorem P14080840919956110630.correct : P14080840919956110630.Spec := by
  intro n
  simp only [A179384, Nat.add_sub_cancel]

end A179384

/-! ## A179384.P18145835343710515750

`filter[A040976(n+1), A292438(#)]`
-/

namespace A179384.P18145835343710515750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A292438 (f1 j).toNat = 1) n)

end

end A179384.P18145835343710515750

namespace A179384

/-- `filter[A040976(n+1), A292438(#)]` -/
def P18145835343710515750.Spec : Prop :=
  ∀ n, P18145835343710515750.a n = A179384 (n + 1)

end A179384

/-! ## A179384.P4009466988796839389

`filter[A238526(n+1), A292438(#)]`
-/

namespace A179384.P4009466988796839389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238526 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A292438 (f1 j).toNat = 1) n)

end

end A179384.P4009466988796839389

namespace A179384

/-- `filter[A238526(n+1), A292438(#)]` -/
def P4009466988796839389.Spec : Prop :=
  ∀ n, P4009466988796839389.a n = A179384 (n + 1)

end A179384

/-! ## A179384.P10765222429874770180

`p?[A100962(n+1)]-2`
-/

namespace A179384.P10765222429874770180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100962 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 2

end

end A179384.P10765222429874770180

namespace A179384

/-- `p?[A100962(n+1)]-2` -/
def P10765222429874770180.Spec : Prop :=
  ∀ n, P10765222429874770180.a n = A179384 (n + 1)

end A179384

/-! ## A179384.P6150437414664784735

`∩[A000040(n+1), A100962(n+1)]-2`
-/

namespace A179384.P6150437414664784735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100962 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 2

end

end A179384.P6150437414664784735

namespace A179384

/-- `∩[A000040(n+1), A100962(n+1)]-2` -/
def P6150437414664784735.Spec : Prop :=
  ∀ n, P6150437414664784735.a n = A179384 (n + 1)

end A179384

/-! ## A179384.P11204809677083857867

`∩[A000430(n+1), A100962(n+1)]-2`
-/

namespace A179384.P11204809677083857867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000430 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100962 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 2

end

end A179384.P11204809677083857867

namespace A179384

/-- `∩[A000430(n+1), A100962(n+1)]-2` -/
def P11204809677083857867.Spec : Prop :=
  ∀ n, P11204809677083857867.a n = A179384 (n + 1)

end A179384

/-! ## A179384.P7104342811507849623

`∩[A001751(n+1), A100962(n+1)]-2`
-/

namespace A179384.P7104342811507849623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001751 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100962 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 2

end

end A179384.P7104342811507849623

namespace A179384

/-- `∩[A001751(n+1), A100962(n+1)]-2` -/
def P7104342811507849623.Spec : Prop :=
  ∀ n, P7104342811507849623.a n = A179384 (n + 1)

end A179384

/-! ## A179384.P9167601666203427714

`∩[A053813(n+1), A100962(n+1)]-2`
-/

namespace A179384.P9167601666203427714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100962 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 2

end

end A179384.P9167601666203427714

namespace A179384

/-- `∩[A053813(n+1), A100962(n+1)]-2` -/
def P9167601666203427714.Spec : Prop :=
  ∀ n, P9167601666203427714.a n = A179384 (n + 1)

end A179384

/-! ## A179384.P14431291966869294009

`∩[A066191(n+1), A100962(n+1)]-2`
-/

namespace A179384.P14431291966869294009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066191 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100962 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 2

end

end A179384.P14431291966869294009

namespace A179384

/-- `∩[A066191(n+1), A100962(n+1)]-2` -/
def P14431291966869294009.Spec : Prop :=
  ∀ n, P14431291966869294009.a n = A179384 (n + 1)

end A179384

/-! ## A179384.P17924678217974274854

`∩[A093515(n+1), A100962(n+1)]-2`
-/

namespace A179384.P17924678217974274854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093515 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100962 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 2

end

end A179384.P17924678217974274854

namespace A179384

/-- `∩[A093515(n+1), A100962(n+1)]-2` -/
def P17924678217974274854.Spec : Prop :=
  ∀ n, P17924678217974274854.a n = A179384 (n + 1)

end A179384

/-! ## A179384.P10133729833398737323

`∩[A100962(n+1), A135785(n+1)]-2`
-/

namespace A179384.P10133729833398737323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100962 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135785 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 2

end

end A179384.P10133729833398737323

namespace A179384

/-- `∩[A100962(n+1), A135785(n+1)]-2` -/
def P10133729833398737323.Spec : Prop :=
  ∀ n, P10133729833398737323.a n = A179384 (n + 1)

end A179384

/-! ## A179384.P6316430624364346932

`∩[A040976(n+1), A221865(n+1)]`
-/

namespace A179384.P6316430624364346932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221865 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179384.P6316430624364346932

namespace A179384

/-- `∩[A040976(n+1), A221865(n+1)]` -/
def P6316430624364346932.Spec : Prop :=
  ∀ n, (P6316430624364346932.a n : ℤ) = A179384 (n + 1)

end A179384

/-! ## A179384.P251347534280067938

`∩[A221865(n+1), A238526(n+1)]`
-/

namespace A179384.P251347534280067938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221865 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238526 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179384.P251347534280067938

namespace A179384

/-- `∩[A221865(n+1), A238526(n+1)]` -/
def P251347534280067938.Spec : Prop :=
  ∀ n, (P251347534280067938.a n : ℤ) = A179384 (n + 1)

end A179384

/-! ## A179384.P17217322909665294981

`p?[A014092(n+1)]-2`
-/

namespace A179384.P17217322909665294981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014092 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 2

end

end A179384.P17217322909665294981

namespace A179384

/-- `p?[A014092(n+1)]-2` -/
def P17217322909665294981.Spec : Prop :=
  ∀ n, P17217322909665294981.a n = A179384 (n + 1)

end A179384

/-! ## A179384.P9913832096469079813

`record[A006530(A152482(n+1))-2]`
-/

namespace A179384.P9913832096469079813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A152482 (n + 1)).toNat - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A179384.P9913832096469079813

namespace A179384

/-- `record[A006530(A152482(n+1))-2]` -/
def P9913832096469079813.Spec : Prop :=
  ∀ n, P9913832096469079813.a n = A179384 (n + 1)

end A179384

/-! ## A179384.P6229687940986133700

`p?[A166081(n+1)]-2`
-/

namespace A179384.P6229687940986133700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166081 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 2

end

end A179384.P6229687940986133700

namespace A179384

/-- `p?[A166081(n+1)]-2` -/
def P6229687940986133700.Spec : Prop :=
  ∀ n, P6229687940986133700.a n = A179384 (n + 1)

end A179384

/-! ## A179384.P7177638623206771487

`∩[A040976(n+1), A141468(n+1)]`
-/

namespace A179384.P7177638623206771487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179384.P7177638623206771487

namespace A179384

/-- `∩[A040976(n+1), A141468(n+1)]` -/
def P7177638623206771487.Spec : Prop :=
  ∀ n, (P7177638623206771487.a n : ℤ) = A179384 (n + 1)

end A179384

/-! ## A179384.P9612573403189471327

`∩[A141468(n+1), A238526(n+1)]`
-/

namespace A179384.P9612573403189471327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238526 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179384.P9612573403189471327

namespace A179384

/-- `∩[A141468(n+1), A238526(n+1)]` -/
def P9612573403189471327.Spec : Prop :=
  ∀ n, (P9612573403189471327.a n : ℤ) = A179384 (n + 1)

end A179384

/-! ## A179384.P15874965431764176885

`A003966(A025584(n+1))`
-/

namespace A179384.P15874965431764176885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003966 (A025584 (n + 1)).toNat

end

end A179384.P15874965431764176885

namespace A179384

/-- `A003966(A025584(n+1))` -/
def P15874965431764176885.Spec : Prop :=
  ∀ n, P15874965431764176885.a n = A179384 (n + 1)

end A179384

/-! ## A179384.P1822907228005443580

`∩[A040976(n+1), A164276(n+1)]`
-/

namespace A179384.P1822907228005443580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164276 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179384.P1822907228005443580

namespace A179384

/-- `∩[A040976(n+1), A164276(n+1)]` -/
def P1822907228005443580.Spec : Prop :=
  ∀ n, (P1822907228005443580.a n : ℤ) = A179384 (n + 1)

end A179384

/-!
# A179385: The n-th term is the sum of all the 1's generated from all the combinations of prime numbers and ones possible, that add to n, when each prime is only allowed once and any number of ones are allowed.

The programs for A179385, there is no canonical definition to state claims against.
-/

/-! ## A179385.P16107250021276723736

`∑[A280271(n)]`
-/

namespace A179385.P16107250021276723736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280271 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A179385.P16107250021276723736

/-! ## A179385.P4010485549533751574

`∑[∑[A000586(n)]]`
-/

namespace A179385.P4010485549533751574
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000586 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A179385.P4010485549533751574

/-! ## A179385.P5016878184520882034

`∑[A036497(n)+a(n-2)]` with `a(0)=1, a(1)=1`
-/

namespace A179385.P5016878184520882034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  A036497 n + f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A179385.P5016878184520882034

/-! ## A179385.P435341399890705047

`∑[∑[A184172(n)+A184171(n)]]`
-/

namespace A179385.P435341399890705047
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184172 n + A184171 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A179385.P435341399890705047

/-! ## A179385.P16601276097716731620

`∑[∑[A046675(n)+2*A184172(n)]]`
-/

namespace A179385.P16601276097716731620
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046675 n + 2 * A184172 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A179385.P16601276097716731620

/-! ## A179385.P12375625186568485372

`∑[∑[2*A184171(n)-A046675(n)]]`
-/

namespace A179385.P12375625186568485372
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A184171 n - A046675 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A179385.P12375625186568485372

/-! ## A179385.P976075576376282551

`∑[A184171(n)+∑[A339383(n)]]`
-/

namespace A179385.P976075576376282551
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339383 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184171 n + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A179385.P976075576376282551

/-! ## A179385.P974499909993100624

`∑[∑[A024939(n)+A024937(n)]]`
-/

namespace A179385.P974499909993100624
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024939 n + A024937 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A179385.P974499909993100624

/-! ## A179385.P9908254345712288813

`∑[A184172(n)+∑[A339382(n)]]`
-/

namespace A179385.P9908254345712288813
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339382 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184172 n + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A179385.P9908254345712288813

/-!
# A179386: Records of minima of A154333, difference of a cube minus the next smaller square.

The programs for A179386, there is no canonical definition to state claims against.
-/

/-! ## A179386.P5986656849852925101

`(A179387(n+1)^3)%A179388(n+1)`
-/

namespace A179386.P5986656849852925101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A179387 (n + 1) ^ 3) (A179388 (n + 1))

end

end A179386.P5986656849852925101

/-! ## A179386.P17742398426979839426

`A002938(A179387(n+1))`
-/

namespace A179386.P17742398426979839426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002938 (A179387 (n + 1)).toNat

end

end A179386.P17742398426979839426

/-! ## A179386.P7507639881163654898

`A002938(A180139(n+1)-1)`
-/

namespace A179386.P7507639881163654898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002938 (A180139 (n + 1) - 1).toNat

end

end A179386.P7507639881163654898

/-! ## A179386.P12173680251150794810

`A077116(A180139(n+1)-1)`
-/

namespace A179386.P12173680251150794810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077116 (A180139 (n + 1) - 1).toNat

end

end A179386.P12173680251150794810

/-! ## A179386.P3406898461783512352

`A002938(ceil(root(A179388(n+1), 3)²))`
-/

namespace A179386.P3406898461783512352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002938 ⌈((A179388 (n + 1) : ℝ) ^ (1 / (3 : ℝ))) ^ 2⌉.toNat

end

end A179386.P3406898461783512352

/-!
# A179387: Values x for "records of minima" of positive distances d = A179386(n) = A154333(x) = x^3 - y^2.

The programs for A179387, there is no canonical definition to state claims against.
-/

/-! ## A179387.P10283155411641042702

`A180139(n+1)-1`
-/

namespace A179387.P10283155411641042702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180139 (n + 1) - 1

end

end A179387.P10283155411641042702

/-! ## A179387.P10207587254339226236

`ceil(root(A179388(n+1), 3)²)`
-/

namespace A179387.P10207587254339226236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((A179388 (n + 1) : ℝ) ^ (1 / (3 : ℝ))) ^ 2⌉

end

end A179387.P10207587254339226236

/-! ## A179387.P13119768598361251262

`record[A180139(A328399(n))-1]`
-/

namespace A179387.P13119768598361251262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180139 (A328399 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A179387.P13119768598361251262

/-! ## A179387.P15108254409597462924

`ceil(A179388(n+1)/sqrt(A180139(n+1)))`
-/

namespace A179387.P15108254409597462924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A179388 (n + 1) : ℝ) / Real.sqrt (A180139 (n + 1) : ℝ)⌉

end

end A179387.P15108254409597462924

/-! ## A179387.P2042012340524200584

`A274884(∑{digits}[n, #%2])+A180139(n+1)`
-/

namespace A179387.P2042012340524200584
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274884 ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x % 2).sum + A180139 (n + 1)

end

end A179387.P2042012340524200584

/-!
# A179388: Values y for records of minima of positive distances d = A179386(n) = A154333(x) = x^3 - y^2.

The programs for A179388, there is no canonical definition to state claims against.
-/

/-! ## A179388.P175351714268983639

`sqrt(A179387(n+1)^3-A179386(n+1))`
-/

namespace A179388.P175351714268983639
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A179387 (n + 1) ^ 3 - A179386 (n + 1) : ℝ)

end

end A179388.P175351714268983639

/-! ## A179388.P6782637580443528249

`round(sqrt(A179387(n+1))^3)`
-/

namespace A179388.P6782637580443528249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A179387 (n + 1) : ℝ) ^ 3)

end

end A179388.P6782637580443528249

/-! ## A179388.P12075187558136411060

`A000093(A179387(n+1))`
-/

namespace A179388.P12075187558136411060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000093 (A179387 (n + 1)).toNat

end

end A179388.P12075187558136411060

/-! ## A179388.P18050655255043729478

`A000093(A180139(n+1)-1)`
-/

namespace A179388.P18050655255043729478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000093 (A180139 (n + 1) - 1).toNat

end

end A179388.P18050655255043729478

/-! ## A179388.P12886474410172639375

`A077121(A180139(n+1)-1)-1`
-/

namespace A179388.P12886474410172639375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077121 (A180139 (n + 1) - 1).toNat - 1

end

end A179388.P12886474410172639375

/-!
# A179389: The number of sorted length n integer sequences with mean zero and sample standard deviation n.

The programs for A179389, there is no canonical definition to state claims against.
-/

/-! ## A179389.P12559737521504506192

`A025443(13*A073590(n+1))`
-/

namespace A179389.P12559737521504506192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025443 (13 * A073590 (n + 1)).toNat

end

end A179389.P12559737521504506192

/-! ## A179389.P6110804570589049571

`A002260(A001761(n))*A089850(n)`
-/

namespace A179389.P6110804570589049571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A001761 n).toNat * A089850 n

end

end A179389.P6110804570589049571

/-!
# A179390: Modulus for Fibonacci-type sequence described by A015134.

The programs for A179390, there is no canonical definition to state claims against.
-/

/-! ## A179390.P2205156783637456579

`∑[floor(acot(A179392(n+1)))]`
-/

namespace A179390.P2205156783637456579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (A179392 (n + 1) : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A179390.P2205156783637456579

/-! ## A179390.P7900786983923108019

`∑[round(acot(A179393(n+1)))]`
-/

namespace A179390.P7900786983923108019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (SequenceMachineLib.acot (A179393 (n + 1) : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A179390.P7900786983923108019

/-! ## A179390.P697663546896272784

`∑[char[∑[A015134(n+1)]]]+1`
-/

namespace A179390.P697663546896272784
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015134 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A179390.P697663546896272784

/-! ## A179390.P1289809049011887203

`∑[A000007(A179392(n+1))]`
-/

namespace A179390.P1289809049011887203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A179392 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A179390.P1289809049011887203

/-! ## A179390.P6906695429094806740

`∑[A019590(A179393(n+1))]`
-/

namespace A179390.P6906695429094806740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019590 (A179393 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A179390.P6906695429094806740

/-! ## A179390.P13429077597359270172

`∑[A008683(A179393(n+1)²)]`
-/

namespace A179390.P13429077597359270172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A179393 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A179390.P13429077597359270172

/-! ## A179390.P11890774616436296566

`∑[A008966(A179393(n+1)²)]`
-/

namespace A179390.P11890774616436296566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008966 (A179393 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A179390.P11890774616436296566

/-! ## A179390.P18377904809692354752

`∑[A014061(A179392(n+1)²)]`
-/

namespace A179390.P18377904809692354752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014061 (A179392 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A179390.P18377904809692354752

/-! ## A179390.P13065901564102391011

`∑[A014646(A179392(n+1)²)]`
-/

namespace A179390.P13065901564102391011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014646 (A179392 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A179390.P13065901564102391011

/-! ## A179390.P7015013281527871876

`∑[A014061(A179392(n+1)+2)]`
-/

namespace A179390.P7015013281527871876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014061 (A179392 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A179390.P7015013281527871876

/-!
# A179391: First term in Fibonacci-type sequence described by A015134.

The programs for A179391, there is no canonical definition to state claims against.
-/

/-! ## A179391.P11684023054484387007

`A086017(A331327(n)%A000292(n+2))`
-/

namespace A179391.P11684023054484387007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086017 (Int.tmod (A331327 n) (A000292 (n + 2))).toNat

end

end A179391.P11684023054484387007

/-! ## A179391.P9543189005719327786

`val(A029102(A127218(n)), 6)`
-/

namespace A179391.P9543189005719327786
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A029102 (A127218 n).toNat).toNat 6

end

end A179391.P9543189005719327786

/-! ## A179391.P7348361154635159063

`val(A344614(A227190(n+1)), 5)`
-/

namespace A179391.P7348361154635159063
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A344614 (A227190 (n + 1)).toNat).toNat 5

end

end A179391.P7348361154635159063

/-! ## A179391.P128793977525855993

`A084904(A286603(n+1)+A185284(n))`
-/

namespace A179391.P128793977525855993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084904 (A286603 (n + 1) + A185284 n).toNat

end

end A179391.P128793977525855993

/-! ## A179391.P9809541338131997778

`A316868(A097877(n))`
-/

namespace A179391.P9809541338131997778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316868 (A097877 n).toNat

end

end A179391.P9809541338131997778

/-!
# A179392: Second term in Fibonacci-type sequence described by A015134.

The programs for A179392, there is no canonical definition to state claims against.
-/

/-! ## A179392.P12166775996520042761

`and(A029742(n+1), A043562(A069217(n+1)))`
-/

namespace A179392.P12166775996520042761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A029742 (n + 1)) (A043562 (A069217 (n + 1)).toNat)

end

end A179392.P12166775996520042761

/-! ## A179392.P17508888490114517185

`and(A031955(n+1), A043562(A069217(n+1)))`
-/

namespace A179392.P17508888490114517185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A031955 (n + 1)) (A043562 (A069217 (n + 1)).toNat)

end

end A179392.P17508888490114517185

/-! ## A179392.P16329314858672410898

`A031955(n+1)%A034444(A134434(n+2))`
-/

namespace A179392.P16329314858672410898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A031955 (n + 1)) (A034444 (A134434 (n + 2)).toNat)

end

end A179392.P16329314858672410898

/-! ## A179392.P1020543318200490952

`and(A122553(A137361(n)), A139819(n+1))`
-/

namespace A179392.P1020543318200490952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A122553 (A137361 n).toNat) (A139819 (n + 1))

end

end A179392.P1020543318200490952

/-! ## A179392.P16722373053782307405

`A343713(A077168(n))`
-/

namespace A179392.P16722373053782307405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343713 (A077168 n).toNat

end

end A179392.P16722373053782307405

/-!
# A179393: Period of the Fibonacci-type sequence described by A015134.

The programs for A179393, there is no canonical definition to state claims against.
-/

/-! ## A179393.P8756095534542972383

`A000030(A143506(3*n))*A065941(3*n+1)`
-/

namespace A179393.P8756095534542972383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 (A143506 (3 * n)).toNat * A065941 (3 * n + 1)

end

end A179393.P8756095534542972383

/-!
# A179394: a(n) = prime(n)^2 mod prime(n+2).

The programs for A179394, the canonical program `A179394.P14340243085430280594` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A179394 has offset 1).

The definition of A179394 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A179394.P14340243085430280594

`p?[round(8*n/7)]²%-p?[2*n+5]`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A179394

/-- `p?[round(8*n/7)]²%-p?[2*n+5]` -/
def P14340243085430280594.Spec : Prop :=
  ∀ n, P14340243085430280594.a n = A179394 (n + 1)

theorem P14340243085430280594.correct : P14340243085430280594.Spec := by
  intro n
  simp only [A179394, Nat.add_sub_cancel]

end A179394

/-! ## A179394.P12468107518354961530

`A001248(n+1)%p?[2*n+5]`
-/

namespace A179394.P12468107518354961530
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001248 (n + 1)) (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ)

end

end A179394.P12468107518354961530

namespace A179394

/-- `A001248(n+1)%p?[2*n+5]` -/
def P12468107518354961530.Spec : Prop :=
  ∀ n, P12468107518354961530.a n = A179394 (n + 1)

end A179394

/-! ## A179394.P15085267152420884349

`A000040(n+1)²%p?[2*n+5]`
-/

namespace A179394.P15085267152420884349
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1) ^ 2) (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ)

end

end A179394.P15085267152420884349

namespace A179394

/-- `A000040(n+1)²%p?[2*n+5]` -/
def P15085267152420884349.Spec : Prop :=
  ∀ n, P15085267152420884349.a n = A179394 (n + 1)

end A179394

/-! ## A179394.P141302349838690748

`A001248(n+1)%A000040(n+3)`
-/

namespace A179394.P141302349838690748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001248 (n + 1)) (A000040 (n + 3))

end

end A179394.P141302349838690748

namespace A179394

/-- `A001248(n+1)%A000040(n+3)` -/
def P141302349838690748.Spec : Prop :=
  ∀ n, P141302349838690748.a n = A179394 (n + 1)

end A179394

/-! ## A179394.P11323176623631645909

`p?[A259153(n)]²%A000040(n+3)`
-/

namespace A179394.P11323176623631645909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259153 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) ^ 2) (A000040 (n + 3))

end

end A179394.P11323176623631645909

namespace A179394

/-- `p?[A259153(n)]²%A000040(n+3)` -/
def P11323176623631645909.Spec : Prop :=
  ∀ n, P11323176623631645909.a n = A179394 (n + 1)

end A179394

/-! ## A179394.P850711773906850282

`A000040(n+1)²%A000040(n+3)`
-/

namespace A179394.P850711773906850282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1) ^ 2) (A000040 (n + 3))

end

end A179394.P850711773906850282

namespace A179394

/-- `A000040(n+1)²%A000040(n+3)` -/
def P850711773906850282.Spec : Prop :=
  ∀ n, P850711773906850282.a n = A179394 (n + 1)

end A179394

/-! ## A179394.P15463536417648840453

`Δ[A309222(n)]²%A008578(n+4)`
-/

namespace A179394.P15463536417648840453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309222 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((f1 (n + 1) - f1 n) ^ 2) (A008578 (n + 4))

end

end A179394.P15463536417648840453

namespace A179394

/-- `Δ[A309222(n)]²%A008578(n+4)` -/
def P15463536417648840453.Spec : Prop :=
  ∀ n, P15463536417648840453.a n = A179394 (n + 1)

end A179394

/-! ## A179394.P18299198378669632188

`A008578(n+2)²%A008578(n+4)`
-/

namespace A179394.P18299198378669632188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008578 (n + 2) ^ 2) (A008578 (n + 4))

end

end A179394.P18299198378669632188

namespace A179394

/-- `A008578(n+2)²%A008578(n+4)` -/
def P18299198378669632188.Spec : Prop :=
  ∀ n, P18299198378669632188.a n = A179394 (n + 1)

end A179394

/-! ## A179394.P11667674959992716508

`p?[xor(1, n)+1]²%p?[2*n+5]`
-/

namespace A179394.P11667674959992716508
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) ^ 2 % f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

end

end A179394.P11667674959992716508

namespace A179394

/-- `p?[xor(1, n)+1]²%p?[2*n+5]` -/
def P11667674959992716508.Spec : Prop :=
  ∀ n, (P11667674959992716508.a n : ℤ) = A179394 (n + 1)

end A179394

/-! ## A179394.P13827395228066600729

`p?[n-(-1)^n]²%p?[2*n+5]`
-/

namespace A179394.P13827395228066600729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (-1) ^ n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) ^ 2) (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n) : ℤ)

end

end A179394.P13827395228066600729

namespace A179394

/-- `p?[n-(-1)^n]²%p?[2*n+5]` -/
def P13827395228066600729.Spec : Prop :=
  ∀ n, P13827395228066600729.a n = A179394 (n + 1)

end A179394

/-! ## A179394.P15346953153419117911

`p?[xor(1, n)+1]²%A215848(n+1)`
-/

namespace A179394.P15346953153419117911
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) ^ 2 : ℤ) (A215848 (n + 1))

end

end A179394.P15346953153419117911

namespace A179394

/-- `p?[xor(1, n)+1]²%A215848(n+1)` -/
def P15346953153419117911.Spec : Prop :=
  ∀ n, P15346953153419117911.a n = A179394 (n + 1)

end A179394

/-! ## A179394.P16833116953325104604

`record[A006530(n+2)²]%p?[2*n+5]`
-/

namespace A179394.P16833116953325104604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n) : ℤ)

end

end A179394.P16833116953325104604

namespace A179394

/-- `record[A006530(n+2)²]%p?[2*n+5]` -/
def P16833116953325104604.Spec : Prop :=
  ∀ n, P16833116953325104604.a n = A179394 (n + 1)

end A179394

/-! ## A179394.P16128094028393175252

`record[A020639(n+2)²]%p?[2*n+5]`
-/

namespace A179394.P16128094028393175252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n) : ℤ)

end

end A179394.P16128094028393175252

namespace A179394

/-- `record[A020639(n+2)²]%p?[2*n+5]` -/
def P16128094028393175252.Spec : Prop :=
  ∀ n, P16128094028393175252.a n = A179394 (n + 1)

end A179394

/-! ## A179394.P9866141366389065407

`∏{d}[A000040(n+1), #*A020639(#)]%A000040(n+3)`
-/

namespace A179394.P9866141366389065407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∏ d ∈ Nat.divisors (f1 n).natAbs, (d : ℤ) * A020639 d) (A000040 (n + 3))

end

end A179394.P9866141366389065407

namespace A179394

/-- `∏{d}[A000040(n+1), #*A020639(#)]%A000040(n+3)` -/
def P9866141366389065407.Spec : Prop :=
  ∀ n, P9866141366389065407.a n = A179394 (n + 1)

end A179394

/-! ## A179394.P12388638535925807781

`A000290(p?[xor(1, n)+1])%p?[2*n+5]`
-/

namespace A179394.P12388638535925807781
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000290 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))) (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n) : ℤ)

end

end A179394.P12388638535925807781

namespace A179394

/-- `A000290(p?[xor(1, n)+1])%p?[2*n+5]` -/
def P12388638535925807781.Spec : Prop :=
  ∀ n, P12388638535925807781.a n = A179394 (n + 1)

end A179394

/-! ## A179394.P12647442508827938166

`A352048(p?[xor(1, n)+1])%A008578(n+4)`
-/

namespace A179394.P12647442508827938166
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A352048 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))) (A008578 (n + 4))

end

end A179394.P12647442508827938166

namespace A179394

/-- `A352048(p?[xor(1, n)+1])%A008578(n+4)` -/
def P12647442508827938166.Spec : Prop :=
  ∀ n, P12647442508827938166.a n = A179394 (n + 1)

end A179394

/-! ## A179394.P16319626513161739935

`∏{d}[A000040(n+1), #*A014963(#)]%A000040(n+3)`
-/

namespace A179394.P16319626513161739935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∏ d ∈ Nat.divisors (f1 n).natAbs, (d : ℤ) * A014963 d) (A000040 (n + 3))

end

end A179394.P16319626513161739935

namespace A179394

/-- `∏{d}[A000040(n+1), #*A014963(#)]%A000040(n+3)` -/
def P16319626513161739935.Spec : Prop :=
  ∀ n, P16319626513161739935.a n = A179394 (n + 1)

end A179394

/-! ## A179394.P14384296878422270260

`A000027(p?[round(8*n/7)]²)%p?[2*n+5]`
-/

namespace A179394.P14384296878422270260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) ^ 2).toNat) (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n) : ℤ)

end

end A179394.P14384296878422270260

namespace A179394

/-- `A000027(p?[round(8*n/7)]²)%p?[2*n+5]` -/
def P14384296878422270260.Spec : Prop :=
  ∀ n, P14384296878422270260.a n = A179394 (n + 1)

end A179394

/-!
# A179395: a(n) = prime(n)^2 mod prime(n+3).

The programs for A179395, the canonical program `A179395.P5501514754324804422` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A179395 has offset 1).

The definition of A179395 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A179395.P5501514754324804422

`p?[round(8*n/7)]²%p?[2*n+7]`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A179395

/-- `p?[round(8*n/7)]²%p?[2*n+7]` -/
def P5501514754324804422.Spec : Prop :=
  ∀ n, P5501514754324804422.a n = A179395 (n + 1)

theorem P5501514754324804422.correct : P5501514754324804422.Spec := by
  intro n
  simp only [A179395, Nat.add_sub_cancel]

end A179395

/-! ## A179395.P6387531563258681683

`A000040(n+1)²%p?[2*n+7]`
-/

namespace A179395.P6387531563258681683
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1) ^ 2) (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ)

end

end A179395.P6387531563258681683

namespace A179395

/-- `A000040(n+1)²%p?[2*n+7]` -/
def P6387531563258681683.Spec : Prop :=
  ∀ n, P6387531563258681683.a n = A179395 (n + 1)

end A179395

/-! ## A179395.P7013946047144440176

`A001248(n+1)%p?[a(n-1)+2]` with `a(0)=7`
-/

namespace A179395.P7013946047144440176
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [7] fun n f1 =>
  f1 (n - 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001248 (n + 1)) (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ)

end

end A179395.P7013946047144440176

namespace A179395

/-- `A001248(n+1)%p?[a(n-1)+2]` -/
def P7013946047144440176.Spec : Prop :=
  ∀ n, P7013946047144440176.a n = A179395 (n + 1)

end A179395

/-! ## A179395.P1353704935693812706

`p?[round(8*n/7)]²%Δ[A007504(n+3)]`
-/

namespace A179395.P1353704935693812706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) ^ 2) (f2 (n + 1) - f2 n)

end

end A179395.P1353704935693812706

namespace A179395

/-- `p?[round(8*n/7)]²%Δ[A007504(n+3)]` -/
def P1353704935693812706.Spec : Prop :=
  ∀ n, P1353704935693812706.a n = A179395 (n + 1)

end A179395

/-! ## A179395.P8798778552964910730

`A001248(n+1)%A004139(n+2)`
-/

namespace A179395.P8798778552964910730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001248 (n + 1)) (A004139 (n + 2))

end

end A179395.P8798778552964910730

namespace A179395

/-- `A001248(n+1)%A004139(n+2)` -/
def P8798778552964910730.Spec : Prop :=
  ∀ n, P8798778552964910730.a n = A179395 (n + 1)

end A179395

/-! ## A179395.P6386246967772395656

`Δ[A007504(n)]²%A000040(n+4)`
-/

namespace A179395.P6386246967772395656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((f1 (n + 1) - f1 n) ^ 2) (A000040 (n + 4))

end

end A179395.P6386246967772395656

namespace A179395

/-- `Δ[A007504(n)]²%A000040(n+4)` -/
def P6386246967772395656.Spec : Prop :=
  ∀ n, P6386246967772395656.a n = A179395 (n + 1)

end A179395

/-! ## A179395.P5966715791293054701

`A000040(n+1)²%A000040(n+4)`
-/

namespace A179395.P5966715791293054701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1) ^ 2) (A000040 (n + 4))

end

end A179395.P5966715791293054701

namespace A179395

/-- `A000040(n+1)²%A000040(n+4)` -/
def P5966715791293054701.Spec : Prop :=
  ∀ n, P5966715791293054701.a n = A179395 (n + 1)

end A179395

/-! ## A179395.P3856164182030043859

`record[A006530(n+2)²]%A008578(n+5)`
-/

namespace A179395.P3856164182030043859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A008578 (n + 5))

end

end A179395.P3856164182030043859

namespace A179395

/-- `record[A006530(n+2)²]%A008578(n+5)` -/
def P3856164182030043859.Spec : Prop :=
  ∀ n, P3856164182030043859.a n = A179395 (n + 1)

end A179395

/-! ## A179395.P7676326151384957859

`record[A014963(n+2)²]%A008578(n+5)`
-/

namespace A179395.P7676326151384957859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A008578 (n + 5))

end

end A179395.P7676326151384957859

namespace A179395

/-- `record[A014963(n+2)²]%A008578(n+5)` -/
def P7676326151384957859.Spec : Prop :=
  ∀ n, P7676326151384957859.a n = A179395 (n + 1)

end A179395

/-!
# A179396: a(n) = prime(n)^2 modulo prime(n+4).

The programs for A179396, the canonical program `A179396.P13986853807161637777` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A179396 has offset 1).

The definition of A179396 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9997 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A179396.P14408186579515780296

`A001248(n+1)%Δ[A007504(n+4)]`
-/

namespace A179396.P14408186579515780296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001248 (n + 1)) (f1 (n + 1) - f1 n)

end

end A179396.P14408186579515780296

namespace A179396

/-- `A001248(n+1)%Δ[A007504(n+4)]` -/
def P14408186579515780296.Spec : Prop :=
  ∀ n, P14408186579515780296.a n = A179396 (n + 1)

end A179396

/-! ## A179396.P12445895304706298614

`Δ[A008348(n)]²%A045344(n+4)`
-/

namespace A179396.P12445895304706298614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008348 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((f1 (n + 1) - f1 n) ^ 2) (A045344 (n + 4))

end

end A179396.P12445895304706298614

namespace A179396

/-- `Δ[A008348(n)]²%A045344(n+4)` -/
def P12445895304706298614.Spec : Prop :=
  ∀ n, P12445895304706298614.a n = A179396 (n + 1)

end A179396

/-! ## A179396.P13986853807161637777

`A000040(n+1)²%A045344(n+4)`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A179396

/-- `A000040(n+1)²%A045344(n+4)` -/
def P13986853807161637777.Spec : Prop :=
  ∀ n, P13986853807161637777.a n = A179396 (n + 1)

theorem P13986853807161637777.correct : P13986853807161637777.Spec := by
  intro n
  simp only [A179396, Nat.add_sub_cancel]

end A179396

/-! ## A179396.P2225901502454193242

`∑[A054541(n+1)]²%A045344(n+4)`
-/

namespace A179396.P2225901502454193242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2) (A045344 (n + 4))

end

end A179396.P2225901502454193242

namespace A179396

/-- `∑[A054541(n+1)]²%A045344(n+4)` -/
def P2225901502454193242.Spec : Prop :=
  ∀ n, P2225901502454193242.a n = A179396 (n + 1)

end A179396

/-! ## A179396.P6648029843425396032

`(A008864(n+1)-1)²%A045344(n+4)`
-/

namespace A179396.P6648029843425396032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((A008864 (n + 1) - 1) ^ 2) (A045344 (n + 4))

end

end A179396.P6648029843425396032

namespace A179396

/-- `(A008864(n+1)-1)²%A045344(n+4)` -/
def P6648029843425396032.Spec : Prop :=
  ∀ n, P6648029843425396032.a n = A179396 (n + 1)

end A179396

/-! ## A179396.P13247257276114400866

`(A040976(n+1)+2)²%A045344(n+4)`
-/

namespace A179396.P13247257276114400866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((A040976 (n + 1) + 2) ^ 2) (A045344 (n + 4))

end

end A179396.P13247257276114400866

namespace A179396

/-- `(A040976(n+1)+2)²%A045344(n+4)` -/
def P13247257276114400866.Spec : Prop :=
  ∀ n, P13247257276114400866.a n = A179396 (n + 1)

end A179396

/-! ## A179396.P1359747499436418122

`(A001749(n+1)/4)²%A045344(n+4)`
-/

namespace A179396.P1359747499436418122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (((A001749 (n + 1) : ℚ) / 4) ^ 2)) (A045344 (n + 4))

end

end A179396.P1359747499436418122

namespace A179396

/-- `(A001749(n+1)/4)²%A045344(n+4)` -/
def P1359747499436418122.Spec : Prop :=
  ∀ n, P1359747499436418122.a n = A179396 (n + 1)

end A179396

/-! ## A179396.P16832970377338364013

`A001248(n+1)%A000040(n+5)`
-/

namespace A179396.P16832970377338364013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001248 (n + 1)) (A000040 (n + 5))

end

end A179396.P16832970377338364013

namespace A179396

/-- `A001248(n+1)%A000040(n+5)` -/
def P16832970377338364013.Spec : Prop :=
  ∀ n, P16832970377338364013.a n = A179396 (n + 1)

end A179396

/-! ## A179396.P12242915864929293310

`Δ[A007504(n)]²%A000040(n+5)`
-/

namespace A179396.P12242915864929293310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((f1 (n + 1) - f1 n) ^ 2) (A000040 (n + 5))

end

end A179396.P12242915864929293310

namespace A179396

/-- `Δ[A007504(n)]²%A000040(n+5)` -/
def P12242915864929293310.Spec : Prop :=
  ∀ n, P12242915864929293310.a n = A179396 (n + 1)

end A179396

/-! ## A179396.P10973546500631797392

`(A000040(n+1)^2)%A000040(n+5)`
-/

namespace A179396.P10973546500631797392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1) ^ 2) (A000040 (n + 5))

end

end A179396.P10973546500631797392

namespace A179396

/-- `(A000040(n+1)^2)%A000040(n+5)` -/
def P10973546500631797392.Spec : Prop :=
  ∀ n, P10973546500631797392.a n = A179396 (n + 1)

end A179396

/-! ## A179396.P1648873913618778839

`(1-A008864(n+1))²%A000040(n+5)`
-/

namespace A179396.P1648873913618778839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((1 - A008864 (n + 1)) ^ 2) (A000040 (n + 5))

end

end A179396.P1648873913618778839

namespace A179396

/-- `(1-A008864(n+1))²%A000040(n+5)` -/
def P1648873913618778839.Spec : Prop :=
  ∀ n, P1648873913618778839.a n = A179396 (n + 1)

end A179396

/-! ## A179396.P11220681233993845285

`record[A006530(n+2)²]%p?[2*n+9]`
-/

namespace A179396.P11220681233993845285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 9

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n) : ℤ)

end

end A179396.P11220681233993845285

namespace A179396

/-- `record[A006530(n+2)²]%p?[2*n+9]` -/
def P11220681233993845285.Spec : Prop :=
  ∀ n, P11220681233993845285.a n = A179396 (n + 1)

end A179396

/-! ## A179396.P12960903557924530754

`record[A000010(n+1)+1]²%p?[2*n+9]`
-/

namespace A179396.P12960903557924530754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 9

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) ^ 2) (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n) : ℤ)

end

end A179396.P12960903557924530754

namespace A179396

/-- `record[A000010(n+1)+1]²%p?[2*n+9]` -/
def P12960903557924530754.Spec : Prop :=
  ∀ n, P12960903557924530754.a n = A179396 (n + 1)

end A179396

/-! ## A179396.P2705632542726968741

`∏{d}[A000040(n+1), #*A020639(#)]%A000040(n+5)`
-/

namespace A179396.P2705632542726968741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∏ d ∈ Nat.divisors (f1 n).natAbs, (d : ℤ) * A020639 d) (A000040 (n + 5))

end

end A179396.P2705632542726968741

namespace A179396

/-- `∏{d}[A000040(n+1), #*A020639(#)]%A000040(n+5)` -/
def P2705632542726968741.Spec : Prop :=
  ∀ n, P2705632542726968741.a n = A179396 (n + 1)

end A179396

/-! ## A179396.P10474271181342154067

`p?[A007989(n)]²%A000040(A020710(n))`
-/

namespace A179396.P10474271181342154067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007989 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) ^ 2) (A000040 (A020710 n).toNat)

end

end A179396.P10474271181342154067

namespace A179396

/-- `p?[A007989(n)]²%A000040(A020710(n))` -/
def P10474271181342154067.Spec : Prop :=
  ∀ n, P10474271181342154067.a n = A179396 (n + 1)

end A179396

/-! ## A179396.P6973385557180782188

`p?[A014681(n)]²%A000040(A020710(n))`
-/

namespace A179396.P6973385557180782188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) ^ 2) (A000040 (A020710 n).toNat)

end

end A179396.P6973385557180782188

namespace A179396

/-- `p?[A014681(n)]²%A000040(A020710(n))` -/
def P6973385557180782188.Spec : Prop :=
  ∀ n, P6973385557180782188.a n = A179396 (n + 1)

end A179396

/-! ## A179396.P4203770147660491714

`∏{d}[A000040(n+1), #*A014963(#)]%A000040(n+5)`
-/

namespace A179396.P4203770147660491714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∏ d ∈ Nat.divisors (f1 n).natAbs, (d : ℤ) * A014963 d) (A000040 (n + 5))

end

end A179396.P4203770147660491714

namespace A179396

/-- `∏{d}[A000040(n+1), #*A014963(#)]%A000040(n+5)` -/
def P4203770147660491714.Spec : Prop :=
  ∀ n, P4203770147660491714.a n = A179396 (n + 1)

end A179396

/-!
# A179397: a(n) = prime(n)^2 mod prime(n-2).

The programs for A179397, the canonical program `A179397.P13247336107451013883` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A179397 has offset 3).

The definition of A179397 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A179397.P13247336107451013883

`A084856(n+1)%A000040(n+1)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A179397

/-- `A084856(n+1)%A000040(n+1)` -/
def P13247336107451013883.Spec : Prop :=
  ∀ n, P13247336107451013883.a n = A179397 (n + 3)

theorem P13247336107451013883.correct : P13247336107451013883.Spec := by
  intro n
  simp only [A179397, Nat.add_sub_cancel]

end A179397

/-! ## A179397.P13738775633176741195

`A393202(n+1)%A000040(n+1)`
-/

namespace A179397.P13738775633176741195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A393202 (n + 1)) (A000040 (n + 1))

end

end A179397.P13738775633176741195

namespace A179397

/-- `A393202(n+1)%A000040(n+1)` -/
def P13738775633176741195.Spec : Prop :=
  ∀ n, P13738775633176741195.a n = A179397 (n + 3)

end A179397

/-! ## A179397.P2152361692310581957

`A004139(n+1)²%Δ[A007504(n)]`
-/

namespace A179397.P2152361692310581957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004139 (n + 1) ^ 2) (f1 (n + 1) - f1 n)

end

end A179397.P2152361692310581957

namespace A179397

/-- `A004139(n+1)²%Δ[A007504(n)]` -/
def P2152361692310581957.Spec : Prop :=
  ∀ n, P2152361692310581957.a n = A179397 (n + 3)

end A179397

/-! ## A179397.P9963328986443885719

`A031131(n+1)²%A000040(n+1)`
-/

namespace A179397.P9963328986443885719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A031131 (n + 1) ^ 2) (A000040 (n + 1))

end

end A179397.P9963328986443885719

namespace A179397

/-- `A031131(n+1)²%A000040(n+1)` -/
def P9963328986443885719.Spec : Prop :=
  ∀ n, P9963328986443885719.a n = A179397 (n + 3)

end A179397

/-! ## A179397.P2617390708337071245

`A215848(n+1)²%A000040(n+1)`
-/

namespace A179397.P2617390708337071245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A215848 (n + 1) ^ 2) (A000040 (n + 1))

end

end A179397.P2617390708337071245

namespace A179397

/-- `A215848(n+1)²%A000040(n+1)` -/
def P2617390708337071245.Spec : Prop :=
  ∀ n, P2617390708337071245.a n = A179397 (n + 3)

end A179397

/-! ## A179397.P5702413388286457838

`A045319(n+2)²%A000040(n+1)`
-/

namespace A179397.P5702413388286457838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A045319 (n + 2) ^ 2) (A000040 (n + 1))

end

end A179397.P5702413388286457838

namespace A179397

/-- `A045319(n+2)²%A000040(n+1)` -/
def P5702413388286457838.Spec : Prop :=
  ∀ n, P5702413388286457838.a n = A179397 (n + 3)

end A179397

/-! ## A179397.P11414611263411920167

`A065091(n+2)²%A000040(n+1)`
-/

namespace A179397.P11414611263411920167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A065091 (n + 2) ^ 2) (A000040 (n + 1))

end

end A179397.P11414611263411920167

namespace A179397

/-- `A065091(n+2)²%A000040(n+1)` -/
def P11414611263411920167.Spec : Prop :=
  ∀ n, P11414611263411920167.a n = A179397 (n + 3)

end A179397

/-! ## A179397.P7328763700753833486

`A001248(n+3)%Δ[A007504(n)]`
-/

namespace A179397.P7328763700753833486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001248 (n + 3)) (f1 (n + 1) - f1 n)

end

end A179397.P7328763700753833486

namespace A179397

/-- `A001248(n+3)%Δ[A007504(n)]` -/
def P7328763700753833486.Spec : Prop :=
  ∀ n, P7328763700753833486.a n = A179397 (n + 3)

end A179397

/-! ## A179397.P10395071845965402616

`A000040(n+3)²%A000040(n+1)`
-/

namespace A179397.P10395071845965402616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 3) ^ 2) (A000040 (n + 1))

end

end A179397.P10395071845965402616

namespace A179397

/-- `A000040(n+3)²%A000040(n+1)` -/
def P10395071845965402616.Spec : Prop :=
  ∀ n, P10395071845965402616.a n = A179397 (n + 3)

end A179397

/-! ## A179397.P14232019887258553265

`p?[A026419(n+1)]²%p?[A000028(n+1)]`
-/

namespace A179397.P14232019887258553265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026419 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000028 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) ^ 2) (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n))

end

end A179397.P14232019887258553265

namespace A179397

/-- `p?[A026419(n+1)]²%p?[A000028(n+1)]` -/
def P14232019887258553265.Spec : Prop :=
  ∀ n, P14232019887258553265.a n = A179397 (n + 3)

end A179397

/-! ## A179397.P7323227905859170607

`A000290(p?[A007310(n+1)])%A000040(n+1)`
-/

namespace A179397.P7323227905859170607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007310 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000290 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat) (A000040 (n + 1))

end

end A179397.P7323227905859170607

namespace A179397

/-- `A000290(p?[A007310(n+1)])%A000040(n+1)` -/
def P7323227905859170607.Spec : Prop :=
  ∀ n, P7323227905859170607.a n = A179397 (n + 3)

end A179397

/-!
# A179398: a(n) = prime(n)^2 mod prime(n-3).

The programs for A179398, the canonical program `A179398.P1838939389011368377` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A179398 has offset 4).

The definition of A179398 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A179398.P1838939389011368377

`p?[2*n+7]²%A000040(n+1)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A179398

/-- `p?[2*n+7]²%A000040(n+1)` -/
def P1838939389011368377.Spec : Prop :=
  ∀ n, P1838939389011368377.a n = A179398 (n + 4)

theorem P1838939389011368377.correct : P1838939389011368377.Spec := by
  intro n
  simp only [A179398, Nat.add_sub_cancel]

end A179398

/-! ## A179398.P1422295282554762993

`A031165(n+1)²%A000040(n+1)`
-/

namespace A179398.P1422295282554762993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A031165 (n + 1) ^ 2) (A000040 (n + 1))

end

end A179398.P1422295282554762993

namespace A179398

/-- `A031165(n+1)²%A000040(n+1)` -/
def P1422295282554762993.Spec : Prop :=
  ∀ n, P1422295282554762993.a n = A179398 (n + 4)

end A179398

/-! ## A179398.P6420043342749611414

`Δ[A133529(n+1)]%A000040(n+1)`
-/

namespace A179398.P6420043342749611414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133529 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A000040 (n + 1))

end

end A179398.P6420043342749611414

namespace A179398

/-- `Δ[A133529(n+1)]%A000040(n+1)` -/
def P6420043342749611414.Spec : Prop :=
  ∀ n, P6420043342749611414.a n = A179398 (n + 4)

end A179398

/-! ## A179398.P7867445759913256196

`A065091(n+3)²%p?[ceil(2/acot(n))]`
-/

namespace A179398.P7867445759913256196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈2 / SequenceMachineLib.acot (n : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A065091 (n + 3) ^ 2) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A179398.P7867445759913256196

namespace A179398

/-- `A065091(n+3)²%p?[ceil(2/acot(n))]` -/
def P7867445759913256196.Spec : Prop :=
  ∀ n, P7867445759913256196.a n = A179398 (n + 4)

end A179398

/-! ## A179398.P16945230653823561320

`A006005(n+4)²%p?[ceil(2/acot(n))]`
-/

namespace A179398.P16945230653823561320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈2 / SequenceMachineLib.acot (n : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006005 (n + 4) ^ 2) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A179398.P16945230653823561320

namespace A179398

/-- `A006005(n+4)²%p?[ceil(2/acot(n))]` -/
def P16945230653823561320.Spec : Prop :=
  ∀ n, P16945230653823561320.a n = A179398 (n + 4)

end A179398

/-! ## A179398.P6789338896676446808

`A001248(n+4)%Δ[A007504(n)]`
-/

namespace A179398.P6789338896676446808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001248 (n + 4)) (f1 (n + 1) - f1 n)

end

end A179398.P6789338896676446808

namespace A179398

/-- `A001248(n+4)%Δ[A007504(n)]` -/
def P6789338896676446808.Spec : Prop :=
  ∀ n, P6789338896676446808.a n = A179398 (n + 4)

end A179398

/-! ## A179398.P14211652265965553470

`A000040(n+4)²%Δ[A007504(n)]`
-/

namespace A179398.P14211652265965553470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 4) ^ 2) (f1 (n + 1) - f1 n)

end

end A179398.P14211652265965553470

namespace A179398

/-- `A000040(n+4)²%Δ[A007504(n)]` -/
def P14211652265965553470.Spec : Prop :=
  ∀ n, P14211652265965553470.a n = A179398 (n + 4)

end A179398

/-! ## A179398.P9176298829290556018

`(A000040(n+4)^2)%record[A020639(n+2)]`
-/

namespace A179398.P9176298829290556018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 4) ^ 2) (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A179398.P9176298829290556018

namespace A179398

/-- `(A000040(n+4)^2)%record[A020639(n+2)]` -/
def P9176298829290556018.Spec : Prop :=
  ∀ n, P9176298829290556018.a n = A179398 (n + 4)

end A179398

/-!
# A179399: Prime(n)^2 mod prime(n-4).

The programs for A179399, the canonical program `A179399.P12592206959623220759` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A179399 has offset 5).

The definition of A179399 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A179399.P12592206959623220759

`Δ[A133524(n+1)]%A000040(n+1)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A179399

/-- `Δ[A133524(n+1)]%A000040(n+1)` -/
def P12592206959623220759.Spec : Prop :=
  ∀ n, P12592206959623220759.a n = A179399 (n + 5)

theorem P12592206959623220759.correct : P12592206959623220759.Spec := by
  intro n
  simp only [A179399, Nat.add_sub_cancel]

end A179399

/-! ## A179399.P15546194707669073934

`A045344(n+4)²%A000040(n+1)`
-/

namespace A179399.P15546194707669073934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A045344 (n + 4) ^ 2) (A000040 (n + 1))

end

end A179399.P15546194707669073934

namespace A179399

/-- `A045344(n+4)²%A000040(n+1)` -/
def P15546194707669073934.Spec : Prop :=
  ∀ n, P15546194707669073934.a n = A179399 (n + 5)

end A179399

/-! ## A179399.P14166587972288771124

`A065091(n+4)²%A000040(n+1)`
-/

namespace A179399.P14166587972288771124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A065091 (n + 4) ^ 2) (A000040 (n + 1))

end

end A179399.P14166587972288771124

namespace A179399

/-- `A065091(n+4)²%A000040(n+1)` -/
def P14166587972288771124.Spec : Prop :=
  ∀ n, P14166587972288771124.a n = A179399 (n + 5)

end A179399

/-! ## A179399.P14690402498915753173

`A001248(n+5)%Δ[A007504(n)]`
-/

namespace A179399.P14690402498915753173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001248 (n + 5)) (f1 (n + 1) - f1 n)

end

end A179399.P14690402498915753173

namespace A179399

/-- `A001248(n+5)%Δ[A007504(n)]` -/
def P14690402498915753173.Spec : Prop :=
  ∀ n, P14690402498915753173.a n = A179399 (n + 5)

end A179399

/-! ## A179399.P12692923809467003661

`A000040(n+5)²%Δ[A007504(n)]`
-/

namespace A179399.P12692923809467003661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 5) ^ 2) (f1 (n + 1) - f1 n)

end

end A179399.P12692923809467003661

namespace A179399

/-- `A000040(n+5)²%Δ[A007504(n)]` -/
def P12692923809467003661.Spec : Prop :=
  ∀ n, P12692923809467003661.a n = A179399 (n + 5)

end A179399

/-! ## A179399.P17939428867345532091

`A006005(n+5)²%A000040(n+1)`
-/

namespace A179399.P17939428867345532091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006005 (n + 5) ^ 2) (A000040 (n + 1))

end

end A179399.P17939428867345532091

namespace A179399

/-- `A006005(n+5)²%A000040(n+1)` -/
def P17939428867345532091.Spec : Prop :=
  ∀ n, P17939428867345532091.a n = A179399 (n + 5)

end A179399

/-! ## A179399.P15880077759664271020

`A008578(n+6)²%A008578(n+2)`
-/

namespace A179399.P15880077759664271020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008578 (n + 6) ^ 2) (A008578 (n + 2))

end

end A179399.P15880077759664271020

namespace A179399

/-- `A008578(n+6)²%A008578(n+2)` -/
def P15880077759664271020.Spec : Prop :=
  ∀ n, P15880077759664271020.a n = A179399 (n + 5)

end A179399

/-! ## A179399.P2162811833575662446

`A031166(n+1)²%p?[A344180(n)]`
-/

namespace A179399.P2162811833575662446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344180 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A031166 (n + 1) ^ 2) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A179399.P2162811833575662446

namespace A179399

/-- `A031166(n+1)²%p?[A344180(n)]` -/
def P2162811833575662446.Spec : Prop :=
  ∀ n, P2162811833575662446.a n = A179399 (n + 5)

end A179399

