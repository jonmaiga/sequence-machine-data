import SequenceMachineLib
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
import Seq.B000.C012
import Seq.B000.C014
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C034
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C005
import Seq.B004.C000
import Seq.B005.C000
import Seq.B006.C000
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
import Seq.Opaque.C013
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
import Seq.Opaque.C026

/-!
# A391100: Expansion of g/(1 - x^3*g^3), where g = 1+x*g^4 is the g.f. of A002293.

The programs for A391100, there is no canonical definition to state claims against.
-/

/-! ## A391100.P6536243342170461352

`A320536((n+2)!)`
-/

namespace A391100.P6536243342170461352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320536 (Nat.factorial (n + 2))

end

end A391100.P6536243342170461352

/-!
# A391101: Expansion of g/(1 - x^3*g^4), where g = 1+x*g^4 is the g.f. of A002293.

The programs for A391101, there is no canonical definition to state claims against.
-/

/-! ## A391101.P7491497716331070108

`A187181(A246538(n))-A074429(n+1)`
-/

namespace A391101.P7491497716331070108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187181 (A246538 n).toNat - A074429 (n + 1)

end

end A391101.P7491497716331070108

/-! ## A391101.P16276782251006234488

`or(A049093(A209903(n)), A143119(2*n+5))`
-/

namespace A391101.P16276782251006234488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A049093 (A209903 n).toNat) (A143119 (2 * n + 5))

end

end A391101.P16276782251006234488

/-!
# A391102: Expansion of g^3/(1 - x^2*g), where g = 1+x*g^4 is the g.f. of A002293.

The programs for A391102, there is no canonical definition to state claims against.
-/

/-! ## A391102.P9028696173412772108

`A194177(A392431(n))+A005232(n)`
-/

namespace A391102.P9028696173412772108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194177 (A392431 n).toNat + A005232 n

end

end A391102.P9028696173412772108

/-!
# A391103: Expansion of g^3/(1 - x^3*g), where g = 1+x*g^4 is the g.f. of A002293.

The programs for A391103, there is no canonical definition to state claims against.
-/

/-! ## A391103.P7484895949714456784

`A125987(A001436(n+1))+A006632(n+1)`
-/

namespace A391103.P7484895949714456784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125987 (A001436 (n + 1)).toNat + A006632 (n + 1)

end

end A391103.P7484895949714456784

/-!
# A391104: Expansion of g/(1 - x^2*g^6), where g = 1+x*g^4 is the g.f. of A002293.

The programs for A391104, there is no canonical definition to state claims against.
-/

/-! ## A391104.P3975393836811444004

`A174222(A037241(n))`
-/

namespace A391104.P3975393836811444004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174222 (A037241 n).toNat

end

end A391104.P3975393836811444004

/-!
# A391105: a(n) = binomial(4*n,n) - binomial(3*n,n).

The programs for A391105, the canonical program `A391105.P4035589622233310174` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A391105 has offset 0).

The definition of A391105 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 104 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A391105.P4035589622233310174

`A005810(n)-A005809(n)`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A391105

/-- `A005810(n)-A005809(n)` -/
def P4035589622233310174.Spec : Prop :=
  ∀ n, P4035589622233310174.a n = A391105 n

theorem P4035589622233310174.correct : P4035589622233310174.Spec := by
  intro n
  simp only [A391105]

end A391105

/-! ## A391105.P9058672411263171459

`A002293(n)*A016777(n)-A005809(n)`
-/

namespace A391105.P9058672411263171459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002293 n * A016777 n - A005809 n

end

end A391105.P9058672411263171459

namespace A391105

/-- `A002293(n)*A016777(n)-A005809(n)` -/
def P9058672411263171459.Spec : Prop :=
  ∀ n, P9058672411263171459.a n = A391105 n

end A391105

/-! ## A391105.P15210120984731257077

`A085391(A139277(n))`
-/

namespace A391105.P15210120984731257077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085391 (A139277 n).toNat

end

end A391105.P15210120984731257077

namespace A391105

/-- `A085391(A139277(n))` -/
def P15210120984731257077.Spec : Prop :=
  ∀ n, P15210120984731257077.a n = A391105 n

end A391105

/-! ## A391105.P5028847695751434948

`A085391(A000384(2*n+1)-(n+1))`
-/

namespace A391105.P5028847695751434948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085391 (A000384 (2 * n + 1) - (n + 1 : ℤ)).toNat

end

end A391105.P5028847695751434948

namespace A391105

/-- `A085391(A000384(2*n+1)-(n+1))` -/
def P5028847695751434948.Spec : Prop :=
  ∀ n, P5028847695751434948.a n = A391105 n

end A391105

/-!
# A391106: When constructing the sequence of the positive integers > 1 from prime factors, we reuse the prime factors of the smallest earlier constructed numbers where we can. The sequence is the numbers whose prime factors were first reused entirely in the process.

The programs for A391106, there is no canonical definition to state claims against.
-/

/-! ## A391106.P15174728161009381364

`A268335(n+1)+A164660(A283042(n+1))`
-/

namespace A391106.P15174728161009381364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268335 (n + 1) + A164660 (A283042 (n + 1)).toNat

end

end A391106.P15174728161009381364

/-!
# A391115: Numbers that are neither 4-free nor 4-full.

The programs for A391115, there is no canonical definition to state claims against.
-/

/-! ## A391115.P17277409943131201781

`∪[A391591(n+1), A391593(n+1)]`
-/

namespace A391115.P17277409943131201781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391591 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391593 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A391115.P17277409943131201781

/-! ## A391115.P10876738623583941746

`∩[A046101(n+1), A324455(n+1)]`
-/

namespace A391115.P10876738623583941746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046101 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324455 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391115.P10876738623583941746

/-! ## A391115.P10192459535323610913

`∩[A046101(n+1), A278638(n+1)]`
-/

namespace A391115.P10192459535323610913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046101 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278638 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391115.P10192459535323610913

/-!
# A391117: Powers of 7 that do not contain the digit 7 (in base 10).

The programs for A391117, there is no canonical definition to state claims against.
-/

/-! ## A391117.P5932725701639130024

`7^eq[6, lcm(6, 1-n)]`
-/

namespace A391117.P5932725701639130024
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 6 (1 - (n : ℤ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 ^ SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A391117.P5932725701639130024

/-!
# A391121: First of four consecutive primes with product p and sum s such that |s^2-p| and s^2+p are both prime.

The programs for A391121, there is no canonical definition to state claims against.
-/

/-! ## A391121.P15849496321238970387

`p?[A029981(a(n-1))]` with `a(0)=1`
-/

namespace A391121.P15849496321238970387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A029981 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A391121.P15849496321238970387

/-!
# A391122: Expansion of g^2/(1 - x^2*g), where g = 1+x*g^3 is the g.f. of A001764.

The programs for A391122, there is no canonical definition to state claims against.
-/

/-! ## A391122.P15008101886505599086

`A391058(n+2)-A001764(n+2)`
-/

namespace A391122.P15008101886505599086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391058 (n + 2) - A001764 (n + 2)

end

end A391122.P15008101886505599086

/-!
# A391123: Expansion of g^2/(1 - x^3*g), where g = 1+x*g^3 is the g.f. of A001764.

The programs for A391123, there is no canonical definition to state claims against.
-/

/-! ## A391123.P18280049670792650121

`A391296(n)+A243822(A047796(n))`
-/

namespace A391123.P18280049670792650121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391296 n + A243822 (A047796 n).toNat

end

end A391123.P18280049670792650121

/-!
# A391124: Expansion of g^2/(1 - x^3*g^2), where g = 1+x*g^3 is the g.f. of A001764.

The programs for A391124, there is no canonical definition to state claims against.
-/

/-! ## A391124.P11545367876540353799

`A285879(A292760(n+1)-A000096(n))`
-/

namespace A391124.P11545367876540353799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285879 (A292760 (n + 1) - A000096 n).toNat

end

end A391124.P11545367876540353799

/-!
# A391125: Expansion of g^2/(2 - g), where g = 1+x*g^3 is the g.f. of A001764.

The programs for A391125, there is no canonical definition to state claims against.
-/

/-! ## A391125.P12508910916025753382

`A126042(3*n+1)`
-/

namespace A391125.P12508910916025753382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126042 (3 * n + 1)

end

end A391125.P12508910916025753382

/-! ## A391125.P9418888809291049878

`A047098(n)+A047098(n)-A001764(n)`
-/

namespace A391125.P9418888809291049878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047098 n + (A047098 n - A001764 n)

end

end A391125.P9418888809291049878

/-! ## A391125.P17164032589547174816

`A045721(n)+A045721(n)-A160906(n)`
-/

namespace A391125.P17164032589547174816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045721 n + (A045721 n - A160906 n)

end

end A391125.P17164032589547174816

/-! ## A391125.P596703466502679355

`A047089(A062708(n+1))`
-/

namespace A391125.P596703466502679355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047089 (A062708 (n + 1)).toNat

end

end A391125.P596703466502679355

/-!
# A391127: Expansion of g^2/(1 - x^3*g^3), where g = 1+x*g^3 is the g.f. of A001764.

The programs for A391127, there is no canonical definition to state claims against.
-/

/-! ## A391127.P10162200355030456378

`A342784(a(n-1))-2` with `a(0)=1, a(1)=2`
-/

namespace A391127.P10162200355030456378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A342784 (a (n - 1)).toNat - 2

end

end A391127.P10162200355030456378

/-!
# A391128: Expansion of g^2/(1 - x*g^4), where g = 1+x*g^3 is the g.f. of A001764.

The programs for A391128, there is no canonical definition to state claims against.
-/

/-! ## A391128.P3910911922473726975

`A191321(3*n+n+1)`
-/

namespace A391128.P3910911922473726975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191321 (3 * n + (n + 1))

end

end A391128.P3910911922473726975

/-!
# A391129: Expansion of g^2/(1 - x^2*g^4), where g = 1+x*g^3 is the g.f. of A001764.

The programs for A391129, there is no canonical definition to state claims against.
-/

/-! ## A391129.P2658488160631248518

`A109318(n)+A050602(A334058(n))`
-/

namespace A391129.P2658488160631248518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109318 n + A050602 (A334058 n).toNat

end

end A391129.P2658488160631248518

/-! ## A391129.P4597979856912850244

`A347706(A099476(n))+A109318(n)`
-/

namespace A391129.P4597979856912850244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347706 (A099476 n).toNat + A109318 n

end

end A391129.P4597979856912850244

/-!
# A391130: Expansion of g^2/(1 - x^3*g^4), where g = 1+x*g^3 is the g.f. of A001764.

The programs for A391130, there is no canonical definition to state claims against.
-/

/-! ## A391130.P6619123715242848594

`A374638(A374618(n))+A006013(n)`
-/

namespace A391130.P6619123715242848594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374638 (A374618 n).toNat + A006013 n

end

end A391130.P6619123715242848594

/-! ## A391130.P15586357273003118834

`A374638(A374619(n))+A006013(n)`
-/

namespace A391130.P15586357273003118834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374638 (A374619 n).toNat + A006013 n

end

end A391130.P15586357273003118834

/-!
# A391131: Areas of Pythagorean triangles that are sums of two or more consecutive primes.

The programs for A391131, there is no canonical definition to state claims against.
-/

/-! ## A391131.P1348214779058650780

`∩[A009112(n+1), A050936(n+1)]`
-/

namespace A391131.P1348214779058650780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009112 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050936 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391131.P1348214779058650780

/-! ## A391131.P8834814151477154418

`∩[A009112(n+1), A338446(n+1)]`
-/

namespace A391131.P8834814151477154418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009112 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338446 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391131.P8834814151477154418

/-! ## A391131.P17865568386159876423

`∩[A009112(n+1), A034707(n+1)]`
-/

namespace A391131.P17865568386159876423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009112 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034707 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391131.P17865568386159876423

/-! ## A391131.P14333583314108217886

`∩[A009112(n+1), A346002(n+1)]`
-/

namespace A391131.P14333583314108217886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009112 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346002 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391131.P14333583314108217886

/-!
# A391132: Number of planar graphs on n unlabeled vertices with a planar complement.

The programs for A391132, there is no canonical definition to state claims against.
-/

/-! ## A391132.P18271538238137591165

`A133557(a(n-1))+1` with `a(0)=1, a(1)=2`
-/

namespace A391132.P18271538238137591165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A133557 (a (n - 1)).toNat + 1

end

end A391132.P18271538238137591165

/-! ## A391132.P8712762748825140533

`A324841(A026732(n))`
-/

namespace A391132.P8712762748825140533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324841 (A026732 n).toNat

end

end A391132.P8712762748825140533

/-!
# A391134: Expansion of g^2/(1 - x^2*g), where g = 1+x*g^2 is the g.f. of A000108.

The programs for A391134, the canonical program `A391134.P1699678046192407440` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A391134 has offset 0).

The definition of A391134 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A391134.P1699678046192407440

`A030238(n+1)-A132364(n+1)`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A391134

/-- `A030238(n+1)-A132364(n+1)` -/
def P1699678046192407440.Spec : Prop :=
  ∀ n, P1699678046192407440.a n = A391134 n

theorem P1699678046192407440.correct : P1699678046192407440.Spec := by
  intro n
  simp only [A391134]

end A391134

/-! ## A391134.P16142027815412087808

`A132364(n+3)-A132364(n+1)`
-/

namespace A391134.P16142027815412087808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132364 (n + 3) - A132364 (n + 1)

end

end A391134.P16142027815412087808

namespace A391134

/-- `A132364(n+3)-A132364(n+1)` -/
def P16142027815412087808.Spec : Prop :=
  ∀ n, P16142027815412087808.a n = A391134 n

end A391134

/-! ## A391134.P954343826229904996

`A030238(n+2)-A000108(n+2)`
-/

namespace A391134.P954343826229904996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030238 (n + 2) - A000108 (n + 2)

end

end A391134.P954343826229904996

namespace A391134

/-- `A030238(n+2)-A000108(n+2)` -/
def P954343826229904996.Spec : Prop :=
  ∀ n, P954343826229904996.a n = A391134 n

end A391134

/-! ## A391134.P9395465228094155658

`A014138(n+1)-A125982(A014138(n))`
-/

namespace A391134.P9395465228094155658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014138 (n + 1) - A125982 (A014138 n).toNat

end

end A391134.P9395465228094155658

namespace A391134

/-- `A014138(n+1)-A125982(A014138(n))` -/
def P9395465228094155658.Spec : Prop :=
  ∀ n, P9395465228094155658.a n = A391134 n

end A391134

/-!
# A391135: Primes p == 9 (mod 16) for which the real part of the octonic Gauss sum ("normalized", i.e., divided by sqrt(p) ) is greater than 1.

The programs for A391135, there is no canonical definition to state claims against.
-/

/-! ## A391135.P17476758021260364558

`filter[A387776(n+1), A144603(#)]`
-/

namespace A391135.P17476758021260364558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387776 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A144603 (f1 j).toNat = 1) n)

end

end A391135.P17476758021260364558

/-! ## A391135.P6315858321687030410

`filter[A387776(n+1), A169672(#)]`
-/

namespace A391135.P6315858321687030410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387776 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A169672 (f1 j).toNat = 1) n)

end

end A391135.P6315858321687030410

/-! ## A391135.P9047439796087546502

`∩[A105126(n+1), A387776(n+1)]`
-/

namespace A391135.P9047439796087546502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105126 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387776 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391135.P9047439796087546502

/-!
# A391136: Primes p == 9 (mod 16) for which the real part of the octonic Gauss sum ("normalized", i.e., divided by sqrt(p) ) is less than 1.

The programs for A391136, there is no canonical definition to state claims against.
-/

/-! ## A391136.P11200871725632602891

`filter[A390354(n+1), A144603(#)]`
-/

namespace A391136.P11200871725632602891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390354 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A144603 (f1 j).toNat = 1) n)

end

end A391136.P11200871725632602891

/-! ## A391136.P4593798224133937097

`filter[A390354(n+1), A169672(#)]`
-/

namespace A391136.P4593798224133937097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390354 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A169672 (f1 j).toNat = 1) n)

end

end A391136.P4593798224133937097

/-! ## A391136.P860538992467798966

`∩[A105126(n+1), A390354(n+1)]`
-/

namespace A391136.P860538992467798966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105126 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390354 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391136.P860538992467798966

/-!
# A391137: Numbers k such that the divisors of k^2 + 1 are all of the form m^2 + 1.

The programs for A391137, there is no canonical definition to state claims against.
-/

/-! ## A391137.P1622819204511961022

`sqrt(A054964(n+1)-1)`
-/

namespace A391137.P1622819204511961022
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A054964 (n + 1) - 1 : ℝ)

end

end A391137.P1622819204511961022

/-! ## A391137.P18443931729466095534

`eq[A130008(n), A397263(n)]`
-/

namespace A391137.P18443931729466095534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130008 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397263 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A391137.P18443931729466095534

/-! ## A391137.P4385959304539117399

`eq[A266722(n), A278162(n)]`
-/

namespace A391137.P4385959304539117399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266722 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278162 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A391137.P4385959304539117399

/-! ## A391137.P11875474563452987876

`eq[A152271(n), A397263(n)]`
-/

namespace A391137.P11875474563452987876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152271 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397263 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A391137.P11875474563452987876

/-! ## A391137.P9201502414171178713

`eq[A069932(n+1), A193432(n)]`
-/

namespace A391137.P9201502414171178713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069932 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193432 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A391137.P9201502414171178713

/-! ## A391137.P6461890421374910308

`eq[A078315(n+1), A397263(n)]`
-/

namespace A391137.P6461890421374910308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078315 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397263 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A391137.P6461890421374910308

/-! ## A391137.P12555137219127056716

`∪[A005574(n+1), A342300(n)]`
-/

namespace A391137.P12555137219127056716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005574 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342300 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A391137.P12555137219127056716

/-! ## A391137.P8675457113874364185

`∪[A004887(n+1), A005574(n+1)]`
-/

namespace A391137.P8675457113874364185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004887 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005574 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A391137.P8675457113874364185

/-! ## A391137.P2828409759644041576

`∪[A004888(n+1), A005574(n+1)]`
-/

namespace A391137.P2828409759644041576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004888 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005574 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A391137.P2828409759644041576

/-! ## A391137.P5923585059227195604

`∪[A004898(n+1), A005574(n+1)]`
-/

namespace A391137.P5923585059227195604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004898 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005574 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A391137.P5923585059227195604

/-!
# A391139: Primitive coreful Zumkeller numbers (second definition): coreful Zumkeller numbers (A339979) that are powerful numbers (A001694).

The programs for A391139, there is no canonical definition to state claims against.
-/

/-! ## A391139.P7782705352101363823

`∩[A001694(n+1), A339979(n+1)]`
-/

namespace A391139.P7782705352101363823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001694 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339979 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391139.P7782705352101363823

/-! ## A391139.P9735782797424053293

`∩[A192636(n+1), A339979(n+1)]`
-/

namespace A391139.P9735782797424053293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192636 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339979 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391139.P9735782797424053293

/-! ## A391139.P3547389002445077899

`∩[A286708(n+1), A339979(n+1)]`
-/

namespace A391139.P3547389002445077899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286708 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339979 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391139.P3547389002445077899

/-! ## A391139.P18030824451098725288

`∩[A339979(n+1), A363169(n+1)]`
-/

namespace A391139.P18030824451098725288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339979 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363169 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391139.P18030824451098725288

/-! ## A391139.P2048342640829027469

`∩[A339979(n+1), A376217(n+1)]`
-/

namespace A391139.P2048342640829027469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339979 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376217 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391139.P2048342640829027469

/-! ## A391139.P4302765722734991594

`filter[A339979(n+1), A112526(#)]`
-/

namespace A391139.P4302765722734991594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339979 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A112526 (f1 j).toNat = 1) n)

end

end A391139.P4302765722734991594

/-!
# A391140: Powerful terms in A339983.

The programs for A391140, there is no canonical definition to state claims against.
-/

/-! ## A391140.P17539387339341412676

`∩[A001694(n+1), A339983(n+1)]`
-/

namespace A391140.P17539387339341412676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001694 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339983 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391140.P17539387339341412676

/-! ## A391140.P16227595228501003598

`∩[A102834(n+1), A339983(n+1)]`
-/

namespace A391140.P16227595228501003598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102834 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339983 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391140.P16227595228501003598

/-! ## A391140.P2315032558207916119

`∩[A192636(n+1), A339983(n+1)]`
-/

namespace A391140.P2315032558207916119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192636 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339983 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391140.P2315032558207916119

/-! ## A391140.P18193065296465501203

`∩[A286708(n+1), A339983(n+1)]`
-/

namespace A391140.P18193065296465501203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286708 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339983 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391140.P18193065296465501203

/-! ## A391140.P4906717470679505738

`∩[A320966(n+1), A339983(n+1)]`
-/

namespace A391140.P4906717470679505738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320966 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339983 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391140.P4906717470679505738

/-! ## A391140.P8659488490937754099

`∩[A335851(n+1), A339983(n+1)]`
-/

namespace A391140.P8659488490937754099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335851 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339983 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391140.P8659488490937754099

/-! ## A391140.P13783597130638700019

`∩[A339983(n+1), A356871(n+1)]`
-/

namespace A391140.P13783597130638700019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339983 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356871 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391140.P13783597130638700019

/-! ## A391140.P9366832253185546288

`∩[A339983(n+1), A363169(n+1)]`
-/

namespace A391140.P9366832253185546288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339983 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363169 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391140.P9366832253185546288

/-! ## A391140.P14302192136253286699

`∩[A339983(n+1), A363216(n+1)]`
-/

namespace A391140.P14302192136253286699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339983 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363216 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391140.P14302192136253286699

/-! ## A391140.P5779833522822462853

`∩[A339983(n+1), A372404(n+1)]`
-/

namespace A391140.P5779833522822462853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339983 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372404 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391140.P5779833522822462853

/-! ## A391140.P4280286944722091756

`∩[A339983(n+1), A390010(n+1)]`
-/

namespace A391140.P4280286944722091756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339983 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390010 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391140.P4280286944722091756

/-!
# A391141: Coreful abundant numbers (A308053) that are powerful odd exponentially odd numbers (A001694 and A376218).

The programs for A391141, there is no canonical definition to state claims against.
-/

/-! ## A391141.P14244775090102761225

`∩[A339982(n+1), A381825(n+1)]`
-/

namespace A391141.P14244775090102761225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339982 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381825 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391141.P14244775090102761225

/-!
# A391143: Primitive exponential pseudoperfect numbers: powerful numbers equal to the sum of a subset of their proper exponential divisors.

The programs for A391143, there is no canonical definition to state claims against.
-/

/-! ## A391143.P15876916956593868844

`∩[A001694(n+1), A318100(n+1)]`
-/

namespace A391143.P15876916956593868844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001694 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318100 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391143.P15876916956593868844

/-! ## A391143.P7532279642046659141

`∩[A192636(n+1), A318100(n+1)]`
-/

namespace A391143.P7532279642046659141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192636 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318100 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391143.P7532279642046659141

/-! ## A391143.P7193046108203138166

`∩[A286708(n+1), A318100(n+1)]`
-/

namespace A391143.P7193046108203138166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286708 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318100 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391143.P7193046108203138166

/-! ## A391143.P13748682873990531983

`∩[A318100(n+1), A325240(n+1)]`
-/

namespace A391143.P13748682873990531983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318100 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325240 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391143.P13748682873990531983

/-! ## A391143.P12313902010696763147

`∩[A318100(n+1), A335851(n+1)]`
-/

namespace A391143.P12313902010696763147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318100 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335851 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391143.P12313902010696763147

/-! ## A391143.P12934443543334475176

`∩[A318100(n+1), A363169(n+1)]`
-/

namespace A391143.P12934443543334475176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318100 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363169 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391143.P12934443543334475176

/-! ## A391143.P16578930787946440125

`∩[A318100(n+1), A363216(n+1)]`
-/

namespace A391143.P16578930787946440125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318100 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363216 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391143.P16578930787946440125

/-! ## A391143.P6851335002640766340

`∩[A318100(n+1), A376172(n+1)]`
-/

namespace A391143.P6851335002640766340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318100 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376172 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391143.P6851335002640766340

/-! ## A391143.P14328668502079802315

`∩[A318100(n+1), A376217(n+1)]`
-/

namespace A391143.P14328668502079802315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318100 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376217 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391143.P14328668502079802315

/-! ## A391143.P13134700217629308614

`∩[A318100(n+1), A387256(n+1)]`
-/

namespace A391143.P13134700217629308614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318100 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387256 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391143.P13134700217629308614

/-! ## A391143.P782896321343188561

`∩[A318100(n+1), A390010(n+1)]`
-/

namespace A391143.P782896321343188561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318100 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390010 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391143.P782896321343188561

/-! ## A391143.P15446121361010260063

`∩[A318100(n+1), A391087(n+1)]`
-/

namespace A391143.P15446121361010260063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318100 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391087 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391143.P15446121361010260063

/-! ## A391143.P7245568265742362031

`∩[A318100(n+1), A391139(n+1)]`
-/

namespace A391143.P7245568265742362031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318100 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391139 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391143.P7245568265742362031

/-!
# A391152: a(0) = 1; a(n) = n * Sum_{k=1..n} binomial(n,k-1) * a(n-k).

The programs for A391152, there is no canonical definition to state claims against.
-/

/-! ## A391152.P14531807152936996876

`A265392(n!²)`
-/

namespace A391152.P14531807152936996876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265392 (Nat.factorial n ^ 2)

end

end A391152.P14531807152936996876

/-!
# A391155: Triangle read by rows: T(n,k) is the number of nonisomorphic magmas with n elements whose center contains k elements.

The programs for A391155, there is no canonical definition to state claims against.
-/

/-! ## A391155.P5512599701492917631

`A391161(n)+A000007(A000629(n))`
-/

namespace A391155.P5512599701492917631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391161 n + A000007 (A000629 n).toNat

end

end A391155.P5512599701492917631

/-! ## A391155.P3695134896045286090

`A288120(A002110(n))*A391161(n)`
-/

namespace A391155.P3695134896045286090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288120 (A002110 n).toNat * A391161 n

end

end A391155.P3695134896045286090

/-! ## A391155.P3819635350287839174

`A267537(A353118(n))*A391161(n)`
-/

namespace A391155.P3819635350287839174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267537 (A353118 n).toNat * A391161 n

end

end A391155.P3819635350287839174

/-!
# A391156: Number of nonisomorphic magmas with n elements and empty center.

The programs for A391156, there is no canonical definition to state claims against.
-/

/-! ## A391156.P12922640694983708956

`A391155(∑[n])`
-/

namespace A391156.P12922640694983708956
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391155 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A391156.P12922640694983708956

/-!
# A391158: Number of labeled semigroups with n elements and empty center.

The programs for A391158, there is no canonical definition to state claims against.
-/

/-! ## A391158.P4207837552904053015

`A391157(∑[n])`
-/

namespace A391158.P4207837552904053015
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391157 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A391158.P4207837552904053015

/-!
# A391160: Number of nonisomorphic semigroups with n elements and empty center.

The programs for A391160, there is no canonical definition to state claims against.
-/

/-! ## A391160.P12507325269609427320

`A391159(∑[n])`
-/

namespace A391160.P12507325269609427320
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391159 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A391160.P12507325269609427320

/-! ## A391160.P12483292816712810078

`A181939(A038106(n+1))-A130400(n)`
-/

namespace A391160.P12483292816712810078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181939 (A038106 (n + 1)).toNat - A130400 n

end

end A391160.P12483292816712810078

/-!
# A391163: Numbers whose final digit is at most 2.

The programs for A391163, the canonical program `A391163.P12705108012069157976` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A391163 has offset 0).

The definition of A391163 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A391163.P12705108012069157976

`10*A002264(n)+A010872(n)`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A391163

/-- `10*A002264(n)+A010872(n)` -/
def P12705108012069157976.Spec : Prop :=
  ∀ n, P12705108012069157976.a n = A391163 n

theorem P12705108012069157976.correct : P12705108012069157976.Spec := by
  intro n
  simp only [A391163]

end A391163

/-! ## A391163.P3430596610023790046

`7*floor(n/3)+n`
-/

namespace A391163.P3430596610023790046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * ⌊(n : ℚ) / 3⌋ + (n : ℤ)

end

end A391163.P3430596610023790046

namespace A391163

/-- `7*floor(n/3)+n` -/
def P3430596610023790046.Spec : Prop :=
  ∀ n, P3430596610023790046.a n = A391163 n

end A391163

/-! ## A391163.P15628872447695309235

`lt[n%10+n, n+3]`
-/

namespace A391163.P15628872447695309235
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 10 + n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A391163.P15628872447695309235

namespace A391163

/-- `lt[n%10+n, n+3]` -/
def P15628872447695309235.Spec : Prop :=
  ∀ n, (P15628872447695309235.a n : ℤ) = A391163 n

end A391163

/-! ## A391163.P4996612924400854025

`∑[floor(a(n-3))]` with `a(0)=0, a(1)=1, a(2)=1, a(3)=8`

`floor` is left out, it is the identity on integers.
-/

namespace A391163.P4996612924400854025
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 1, 8] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A391163.P4996612924400854025

namespace A391163

/-- `∑[floor(a(n-3))]` -/
def P4996612924400854025.Spec : Prop :=
  ∀ n, (P4996612924400854025.a n : ℤ) = A391163 n

end A391163

/-! ## A391163.P15166160634023976259

`2*(a(n-3)/2+5)` with `a(0)=0, a(1)=1, a(2)=2`
-/

namespace A391163.P15166160634023976259
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 1, 2] fun n a =>
  2 * (a (n - 3) / 2 + 5)

end

end A391163.P15166160634023976259

namespace A391163

/-- `2*(a(n-3)/2+5)` -/
def P15166160634023976259.Spec : Prop :=
  ∀ n, P15166160634023976259.a n = (A391163 n : ℚ)

end A391163

/-! ## A391163.P7630145726556596826

`∑[a(n-3)^a(n-1)]` with `a(0)=0, a(1)=1, a(2)=1, a(3)=8`
-/

namespace A391163.P7630145726556596826
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 1, 8] fun n f1 =>
  f1 (n - 3) ^ f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A391163.P7630145726556596826

namespace A391163

/-- `∑[a(n-3)^a(n-1)]` -/
def P7630145726556596826.Spec : Prop :=
  ∀ n, (P7630145726556596826.a n : ℤ) = A391163 n

end A391163

/-! ## A391163.P4927842582078425390

`∑[8/(a(n-1)*a(n-2))]` with `a(0)=0, a(1)=1, a(2)=1`
-/

namespace A391163.P4927842582078425390
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [0, 1, 1] fun n f1 =>
  8 / (f1 (n - 1) * f1 (n - 2))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A391163.P4927842582078425390

namespace A391163

/-- `∑[8/(a(n-1)*a(n-2))]` -/
def P4927842582078425390.Spec : Prop :=
  ∀ n, P4927842582078425390.a n = (A391163 n : ℚ)

end A391163

/-! ## A391163.P10098850673101334674

`∪[A197652(n+1), A017293(n)]`
-/

namespace A391163.P10098850673101334674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197652 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017293 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A391163.P10098850673101334674

namespace A391163

/-- `∪[A197652(n+1), A017293(n)]` -/
def P10098850673101334674.Spec : Prop :=
  ∀ n, (P10098850673101334674.a n : ℤ) = A391163 n

end A391163

/-! ## A391163.P11258878299576395361

`∪[A197652(n+1), A277589(n+1)]`
-/

namespace A391163.P11258878299576395361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197652 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277589 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A391163.P11258878299576395361

namespace A391163

/-- `∪[A197652(n+1), A277589(n+1)]` -/
def P11258878299576395361.Spec : Prop :=
  ∀ n, (P11258878299576395361.a n : ℤ) = A391163 n

end A391163

/-! ## A391163.P5951399598789431521

`A390774(A004773(n))`
-/

namespace A391163.P5951399598789431521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390774 (A004773 n).toNat

end

end A391163.P5951399598789431521

namespace A391163

/-- `A390774(A004773(n))` -/
def P5951399598789431521.Spec : Prop :=
  ∀ n, P5951399598789431521.a n = A391163 n

end A391163

/-! ## A391163.P3536569422566497676

`A390774(A002264(n)+n)`
-/

namespace A391163.P3536569422566497676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390774 (A002264 n + (n : ℤ)).toNat

end

end A391163.P3536569422566497676

namespace A391163

/-- `A390774(A002264(n)+n)` -/
def P3536569422566497676.Spec : Prop :=
  ∀ n, P3536569422566497676.a n = A391163 n

end A391163

/-! ## A391163.P15733023012944483119

`A235499(A047217(n+1))`
-/

namespace A391163.P15733023012944483119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235499 (A047217 (n + 1)).toNat

end

end A391163.P15733023012944483119

namespace A391163

/-- `A235499(A047217(n+1))` -/
def P15733023012944483119.Spec : Prop :=
  ∀ n, P15733023012944483119.a n = A391163 n

end A391163

/-! ## A391163.P13136672258535775745

`A293292(A047223(n+1))`
-/

namespace A391163.P13136672258535775745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293292 (A047223 (n + 1)).toNat

end

end A391163.P13136672258535775745

namespace A391163

/-- `A293292(A047223(n+1))` -/
def P13136672258535775745.Spec : Prop :=
  ∀ n, P13136672258535775745.a n = A391163 n

end A391163

/-! ## A391163.P14665443105704719927

`∩[A237415(n), A390774(n)]`
-/

namespace A391163.P14665443105704719927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237415 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390774 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391163.P14665443105704719927

namespace A391163

/-- `∩[A237415(n), A390774(n)]` -/
def P14665443105704719927.Spec : Prop :=
  ∀ n, (P14665443105704719927.a n : ℤ) = A391163 n

end A391163

/-! ## A391163.P1496337323736055369

`∩[A293292(n+1), A237415(n)]`
-/

namespace A391163.P1496337323736055369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293292 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237415 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391163.P1496337323736055369

namespace A391163

/-- `∩[A293292(n+1), A237415(n)]` -/
def P1496337323736055369.Spec : Prop :=
  ∀ n, (P1496337323736055369.a n : ℤ) = A391163 n

end A391163

/-! ## A391163.P17795735087874309121

`A047217(A047245(n+1))`
-/

namespace A391163.P17795735087874309121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047217 (A047245 (n + 1)).toNat

end

end A391163.P17795735087874309121

namespace A391163

/-- `A047217(A047245(n+1))` -/
def P17795735087874309121.Spec : Prop :=
  ∀ n, P17795735087874309121.a n = A391163 n

end A391163

/-! ## A391163.P14236475085590418627

`A391164(A047240(n+1))`
-/

namespace A391163.P14236475085590418627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391164 (A047240 (n + 1)).toNat

end

end A391163.P14236475085590418627

namespace A391163

/-- `A391164(A047240(n+1))` -/
def P14236475085590418627.Spec : Prop :=
  ∀ n, P14236475085590418627.a n = A391163 n

end A391163

/-! ## A391163.P6696443006917371023

`∩[A237415(n), A391164(n)]`
-/

namespace A391163.P6696443006917371023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237415 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391164 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391163.P6696443006917371023

namespace A391163

/-- `∩[A237415(n), A391164(n)]` -/
def P6696443006917371023.Spec : Prop :=
  ∀ n, (P6696443006917371023.a n : ℤ) = A391163 n

end A391163

/-! ## A391163.P2527457220393361482

`A047217(A047240(n+1)+1)`
-/

namespace A391163.P2527457220393361482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047217 (A047240 (n + 1) + 1).toNat

end

end A391163.P2527457220393361482

namespace A391163

/-- `A047217(A047240(n+1)+1)` -/
def P2527457220393361482.Spec : Prop :=
  ∀ n, P2527457220393361482.a n = A391163 n

end A391163

/-! ## A391163.P11292710180147429349

`A391164(2*n-A010872(n))`
-/

namespace A391163.P11292710180147429349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391164 ((2 * n : ℤ) - A010872 n).toNat

end

end A391163.P11292710180147429349

namespace A391163

/-- `A391164(2*n-A010872(n))` -/
def P11292710180147429349.Spec : Prop :=
  ∀ n, P11292710180147429349.a n = A391163 n

end A391163

/-!
# A391164: Numbers whose final digit is at most 5.

The programs for A391164, the canonical program `A391164.P14227226670676293853` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A391164 has offset 0).

The definition of A391164 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A391164.P14227226670676293853

`10*A152467(n)+A010875(n)`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A391164

/-- `10*A152467(n)+A010875(n)` -/
def P14227226670676293853.Spec : Prop :=
  ∀ n, P14227226670676293853.a n = A391164 n

theorem P14227226670676293853.correct : P14227226670676293853.Spec := by
  intro n
  simp only [A391164]

end A391164

/-! ## A391164.P288406007953336757

`4*floor(n/6)+n`
-/

namespace A391164.P288406007953336757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * ⌊(n : ℚ) / 6⌋ + (n : ℤ)

end

end A391164.P288406007953336757

namespace A391164

/-- `4*floor(n/6)+n` -/
def P288406007953336757.Spec : Prop :=
  ∀ n, P288406007953336757.a n = A391164 n

end A391164

/-! ## A391164.P13302470291308087112

`∪[A293292(n+1), A008587(n)]`
-/

namespace A391164.P13302470291308087112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293292 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008587 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A391164.P13302470291308087112

namespace A391164

/-- `∪[A293292(n+1), A008587(n)]` -/
def P13302470291308087112.Spec : Prop :=
  ∀ n, (P13302470291308087112.a n : ℤ) = A391164 n

end A391164

/-! ## A391164.P16586738169383170389

`∪[A293292(n+1), A008706(n)]`
-/

namespace A391164.P16586738169383170389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293292 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A391164.P16586738169383170389

namespace A391164

/-- `∪[A293292(n+1), A008706(n)]` -/
def P16586738169383170389.Spec : Prop :=
  ∀ n, (P16586738169383170389.a n : ℤ) = A391164 n

end A391164

/-! ## A391164.P8116825099798109311

`∪[A293292(n+1), A017329(n)]`
-/

namespace A391164.P8116825099798109311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293292 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017329 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A391164.P8116825099798109311

namespace A391164

/-- `∪[A293292(n+1), A017329(n)]` -/
def P8116825099798109311.Spec : Prop :=
  ∀ n, (P8116825099798109311.a n : ℤ) = A391164 n

end A391164

/-! ## A391164.P1098437618684306337

`∪[A293292(n+1), A135042(n)]`
-/

namespace A391164.P1098437618684306337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293292 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135042 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A391164.P1098437618684306337

namespace A391164

/-- `∪[A293292(n+1), A135042(n)]` -/
def P1098437618684306337.Spec : Prop :=
  ∀ n, (P1098437618684306337.a n : ℤ) = A391164 n

end A391164

/-! ## A391164.P17274878899195341028

`∪[A121025(n+1), A293292(n+1)]`
-/

namespace A391164.P17274878899195341028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121025 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293292 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A391164.P17274878899195341028

namespace A391164

/-- `∪[A121025(n+1), A293292(n+1)]` -/
def P17274878899195341028.Spec : Prop :=
  ∀ n, (P17274878899195341028.a n : ℤ) = A391164 n

end A391164

/-! ## A391164.P2873512822102959138

`∪[A187715(n+1), A293292(n+1)]`
-/

namespace A391164.P2873512822102959138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187715 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293292 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A391164.P2873512822102959138

namespace A391164

/-- `∪[A187715(n+1), A293292(n+1)]` -/
def P2873512822102959138.Spec : Prop :=
  ∀ n, (P2873512822102959138.a n : ℤ) = A391164 n

end A391164

/-! ## A391164.P3620918292215028762

`∪[A277592(n+1), A293292(n+1)]`
-/

namespace A391164.P3620918292215028762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277592 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293292 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A391164.P3620918292215028762

namespace A391164

/-- `∪[A277592(n+1), A293292(n+1)]` -/
def P3620918292215028762.Spec : Prop :=
  ∀ n, (P3620918292215028762.a n : ℤ) = A391164 n

end A391164

/-! ## A391164.P12899158458856876457

`A272576(A047602(n+1))`
-/

namespace A391164.P12899158458856876457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272576 (A047602 (n + 1)).toNat

end

end A391164.P12899158458856876457

namespace A391164

/-- `A272576(A047602(n+1))` -/
def P12899158458856876457.Spec : Prop :=
  ∀ n, P12899158458856876457.a n = A391164 n

end A391164

/-!
# A391168: Expansion of g/(1 - x*g)^2, where g = 1+x*g^3 is the g.f. of A001764.

The programs for A391168, there is no canonical definition to state claims against.
-/

/-! ## A391168.P3645456339094801001

`or(n, A384066(n))`
-/

namespace A391168.P3645456339094801001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (A384066 n)

end

end A391168.P3645456339094801001

/-!
# A391169: Expansion of g/(1 - x*g)^3, where g = 1+x*g^3 is the g.f. of A001764.

The programs for A391169, there is no canonical definition to state claims against.
-/

/-! ## A391169.P7271968108319363732

`A342519(A131951(n))`
-/

namespace A391169.P7271968108319363732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342519 (A131951 n).toNat

end

end A391169.P7271968108319363732

/-!
# A391170: Expansion of g/(1 - x*g)^4, where g = 1+x*g^3 is the g.f. of A001764.

The programs for A391170, there is no canonical definition to state claims against.
-/

/-! ## A391170.P2491687699122664753

`A138311(A094971(n))`
-/

namespace A391170.P2491687699122664753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138311 (A094971 n).toNat

end

end A391170.P2491687699122664753

/-!
# A391171: Expansion of (g/(1 - x*g))^2, where g = 1+x*g^3 is the g.f. of A001764.

The programs for A391171, there is no canonical definition to state claims against.
-/

/-! ## A391171.P5027571004570213461

`A391168(n+1)-A098746(n+2)`
-/

namespace A391171.P5027571004570213461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391168 (n + 1) - A098746 (n + 2)

end

end A391171.P5027571004570213461

/-!
# A391172: Expansion of g^2/(1 - x*g)^3, where g = 1+x*g^3 is the g.f. of A001764.

The programs for A391172, there is no canonical definition to state claims against.
-/

/-! ## A391172.P14409286437471309254

`A156562(A000351(n))+A000217(n)`
-/

namespace A391172.P14409286437471309254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156562 (A000351 n).toNat + A000217 n

end

end A391172.P14409286437471309254

/-!
# A391173: Expansion of g^2/(1 - x*g)^4, where g = 1+x*g^3 is the g.f. of A001764.

The programs for A391173, there is no canonical definition to state claims against.
-/

/-! ## A391173.P1689720083303401744

`A101909(A055429(n))`
-/

namespace A391173.P1689720083303401744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101909 (A055429 n).toNat

end

end A391173.P1689720083303401744

/-!
# A391174: Expansion of g^3/(1 - x*g)^2, where g = 1+x*g^3 is the g.f. of A001764.

The programs for A391174, there is no canonical definition to state claims against.
-/

/-! ## A391174.P12814364382181617319

`A240542(A255052(n)+A072639(n))`
-/

namespace A391174.P12814364382181617319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240542 (A255052 n + A072639 n).toNat

end

end A391174.P12814364382181617319

/-!
# A391176: Expansion of g^3/(1 - x*g)^4, where g = 1+x*g^3 is the g.f. of A001764.

The programs for A391176, there is no canonical definition to state claims against.
-/

/-! ## A391176.P1225384542417616946

`A186227(A069429(n+1))-A069429(n+1)`
-/

namespace A391176.P1225384542417616946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186227 (A069429 (n + 1)).toNat - A069429 (n + 1)

end

end A391176.P1225384542417616946

/-!
# A391178: Expansion of g^3/(1 - x*g), where g = 1+x*g^3 is the g.f. of A001764.

The programs for A391178, there is no canonical definition to state claims against.
-/

/-! ## A391178.P15666155515668941147

`A098746(n+2)-A098746(n+1)`
-/

namespace A391178.P15666155515668941147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098746 (n + 2) - A098746 (n + 1)

end

end A391178.P15666155515668941147

/-! ## A391178.P17355058547821786461

`Δ[A098746(n+1)]`
-/

namespace A391178.P17355058547821786461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098746 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A391178.P17355058547821786461

/-!
# A391179: Expansion of g^4/(1 - x*g)^5, where g = 1+x*g^3 is the g.f. of A001764.

The programs for A391179, there is no canonical definition to state claims against.
-/

/-! ## A391179.P3416127701789394633

`A155633(n)-A363807(A155633(n))`
-/

namespace A391179.P3416127701789394633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155633 n - A363807 (A155633 n).toNat

end

end A391179.P3416127701789394633

/-!
# A391181: Total number of 132 patterns in all heapable permutations of length n.

The programs for A391181, there is no canonical definition to state claims against.
-/

/-! ## A391181.P2829377761465194287

`A348469(A130583(n))`
-/

namespace A391181.P2829377761465194287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348469 (A130583 n).toNat

end

end A391181.P2829377761465194287

/-! ## A391181.P5863644168203155282

`∑[A394296(A331680(2*(n+1))²)]`
-/

namespace A391181.P5863644168203155282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394296 (A331680 (2 * (n + 1)) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A391181.P5863644168203155282

/-!
# A391183: a(n) = 1 if n is a number of the form x^2 + 2*y^2, and otherwise 0.

The programs for A391183, the canonical program `A391183.P5927529628571283999` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A391183 has offset 0).

The definition of A391183 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A391183.P5927529628571283999

`char[A002479(n+1)]`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A391183

/-- `char[A002479(n+1)]` -/
def P5927529628571283999.Spec : Prop :=
  ∀ n, (P5927529628571283999.a n : ℤ) = A391183 n

theorem P5927529628571283999.correct : P5927529628571283999.Spec := by
  intro n
  simp only [A391183]

end A391183

/-! ## A391183.P6951702114894434720

`1-A000007(A033715(n))`
-/

namespace A391183.P6951702114894434720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A000007 (A033715 n).toNat

end

end A391183.P6951702114894434720

namespace A391183

/-- `1-A000007(A033715(n))` -/
def P6951702114894434720.Spec : Prop :=
  ∀ n, P6951702114894434720.a n = A391183 n

end A391183

/-! ## A391183.P3321820207402718841

`A025428(A004018(A033715(n)²))`
-/

namespace A391183.P3321820207402718841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025428 (A004018 (A033715 n ^ 2).toNat).toNat

end

end A391183.P3321820207402718841

namespace A391183

/-- `A025428(A004018(A033715(n)²))` -/
def P3321820207402718841.Spec : Prop :=
  ∀ n, P3321820207402718841.a n = A391183 n

end A391183

/-! ## A391183.P11661181106415783568

`A002479(A318984(A033715(n)²))`
-/

namespace A391183.P11661181106415783568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002479 (A318984 (A033715 n ^ 2).toNat).toNat

end

end A391183.P11661181106415783568

namespace A391183

/-- `A002479(A318984(A033715(n)²))` -/
def P11661181106415783568.Spec : Prop :=
  ∀ n, P11661181106415783568.a n = A391183 n

end A391183

/-! ## A391183.P3531566422795272699

`A000007(n*A000007(A033715(n)))`
-/

namespace A391183.P3531566422795272699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 ((n : ℤ) * A000007 (A033715 n).toNat).toNat

end

end A391183.P3531566422795272699

namespace A391183

/-- `A000007(n*A000007(A033715(n)))` -/
def P3531566422795272699.Spec : Prop :=
  ∀ n, P3531566422795272699.a n = A391183 n

end A391183

/-! ## A391183.P1036136532910305866

`and(A264102(n+1), A342892(n))`
-/

namespace A391183.P1036136532910305866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A264102 (n + 1)) (A342892 n)

end

end A391183.P1036136532910305866

namespace A391183

/-- `and(A264102(n+1), A342892(n))` -/
def P1036136532910305866.Spec : Prop :=
  ∀ n, P1036136532910305866.a n = A391183 n

end A391183

/-!
# A391184: The number of divisors of n that are of the form x^2 + 2*y^2 (A002479).

The programs for A391184, the canonical program `A391184.P7621874213617609093` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A391184 has offset 1).

The definition of A391184 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A391184.P7621874213617609093

`∑{d}[n+1, A391183(#)]`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A391184

/-- `∑{d}[n+1, A391183(#)]` -/
def P7621874213617609093.Spec : Prop :=
  ∀ n, P7621874213617609093.a n = A391184 (n + 1)

theorem P7621874213617609093.correct : P7621874213617609093.Spec := by
  intro n
  simp only [A391184, Nat.add_sub_cancel]

end A391184

/-! ## A391184.P248806829171091680

`A360326(A033047(n+1))`
-/

namespace A391184.P248806829171091680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360326 (A033047 (n + 1)).toNat

end

end A391184.P248806829171091680

namespace A391184

/-- `A360326(A033047(n+1))` -/
def P248806829171091680.Spec : Prop :=
  ∀ n, P248806829171091680.a n = A391184 (n + 1)

end A391184

/-! ## A391184.P17637327000806351949

`A368542(A033050(n+1))`
-/

namespace A391184.P17637327000806351949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368542 (A033050 (n + 1)).toNat

end

end A391184.P17637327000806351949

namespace A391184

/-- `A368542(A033050(n+1))` -/
def P17637327000806351949.Spec : Prop :=
  ∀ n, P17637327000806351949.a n = A391184 (n + 1)

end A391184

/-! ## A391184.P6535550975833860335

`A279060(A166667(n+1))`
-/

namespace A391184.P6535550975833860335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279060 (A166667 (n + 1)).toNat

end

end A391184.P6535550975833860335

namespace A391184

/-- `A279060(A166667(n+1))` -/
def P6535550975833860335.Spec : Prop :=
  ∀ n, P6535550975833860335.a n = A391184 (n + 1)

end A391184

/-! ## A391184.P5588155949064992183

`A279060(A166668(n+1))`
-/

namespace A391184.P5588155949064992183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279060 (A166668 (n + 1)).toNat

end

end A391184.P5588155949064992183

namespace A391184

/-- `A279060(A166668(n+1))` -/
def P5588155949064992183.Spec : Prop :=
  ∀ n, P5588155949064992183.a n = A391184 (n + 1)

end A391184

/-!
# A391185: The sum of the divisors of n that are of the form x^2 + 2*y^2 (A002479).

The programs for A391185, the canonical program `A391185.P10323156669665891004` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A391185 has offset 1).

The definition of A391185 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A391185.P10323156669665891004

`∑{d}[n+1, #*A391183(#)]`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A391185

/-- `∑{d}[n+1, #*A391183(#)]` -/
def P10323156669665891004.Spec : Prop :=
  ∀ n, P10323156669665891004.a n = A391185 (n + 1)

theorem P10323156669665891004.correct : P10323156669665891004.Spec := by
  intro n
  simp only [A391185, Nat.add_sub_cancel]

end A391185

/-! ## A391185.P12044292448205960211

`A000203(A391186(n+1)%A108318(n+1))`
-/

namespace A391185.P12044292448205960211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (Int.tmod (A391186 (n + 1)) (A108318 (n + 1))).toNat

end

end A391185.P12044292448205960211

namespace A391185

/-- `A000203(A391186(n+1)%A108318(n+1))` -/
def P12044292448205960211.Spec : Prop :=
  ∀ n, P12044292448205960211.a n = A391185 (n + 1)

end A391185

/-! ## A391185.P12951426270423551873

`gcd(A000203(n+1), A343379(A263703(2*(n+1))))`
-/

namespace A391185.P12951426270423551873
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000203 (n + 1)) (A343379 (A263703 (2 * (n + 1))).toNat)

end

end A391185.P12951426270423551873

namespace A391185

/-- `gcd(A000203(n+1), A343379(A263703(2*(n+1))))` -/
def P12951426270423551873.Spec : Prop :=
  ∀ n, (P12951426270423551873.a n : ℤ) = A391185 (n + 1)

end A391185

/-!
# A391186: The largest divisor of n that is a number of the form x^2 + 2*y^2 (A002479).

The programs for A391186, there is no canonical definition to state claims against.
-/

/-! ## A391186.P6869001235756033350

`(n+1)/A391187(n+1)`
-/

namespace A391186.P6869001235756033350
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A391187 (n + 1) : ℚ)

end

end A391186.P6869001235756033350

/-! ## A391186.P2658026039141960565

`gcd(n+1, A216350(A005898(n)))`
-/

namespace A391186.P2658026039141960565
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A216350 (A005898 n).toNat)

end

end A391186.P2658026039141960565

/-! ## A391186.P10483680555864965198

`gcd(A000027(n+1), A064987(A351753(n+1)))`
-/

namespace A391186.P10483680555864965198
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000027 (n + 1)) (A064987 (A351753 (n + 1)).toNat)

end

end A391186.P10483680555864965198

/-! ## A391186.P3251660442593313685

`gcd(A218861(A026424(n+1)), A346132(n+1))`
-/

namespace A391186.P3251660442593313685
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A218861 (A026424 (n + 1)).toNat) (A346132 (n + 1))

end

end A391186.P3251660442593313685

/-!
# A391187: a(n) is the smallest positive integer such that a(n) * n is a number of the form x^2 + 2*y^2 (A002479).

The programs for A391187, there is no canonical definition to state claims against.
-/

/-! ## A391187.P16604570803066498607

`(n+1)/A391186(n+1)`
-/

namespace A391187.P16604570803066498607
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A391186 (n + 1) : ℚ)

end

end A391187.P16604570803066498607

/-! ## A391187.P7203726829363176473

`A007913((n+1)*A391186(n+1))`
-/

namespace A391187.P7203726829363176473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 ((n + 1 : ℤ) * A391186 (n + 1)).toNat

end

end A391187.P7203726829363176473

/-! ## A391187.P13937854000134956016

`gcd(A046080(A121334(n)), A065330(n+1))`
-/

namespace A391187.P13937854000134956016
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A046080 (A121334 n).toNat) (A065330 (n + 1))

end

end A391187.P13937854000134956016

/-! ## A391187.P14783170243092817805

`gcd(A014682(2*(n+1)), A212489(A072994(3*n+1)))`
-/

namespace A391187.P14783170243092817805
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A014682 (2 * (n + 1))) (A212489 (A072994 (3 * n + 1)).toNat)

end

end A391187.P14783170243092817805

/-! ## A391187.P9486786691837537941

`gcd(A000265(n+1), A157954(A157954(3*n+5)))`
-/

namespace A391187.P9486786691837537941
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000265 (n + 1)) (A157954 (A157954 (3 * n + 5)).toNat)

end

end A391187.P9486786691837537941

/-!
# A391191: Irregular triangle read by rows: T(n,k) is the number of free polyaboloes (or polytans) with n cells of which 2*k share a hypotenuse in pairs (making up k squares), 0 <= k <= n/2.

The programs for A391191, there is no canonical definition to state claims against.
-/

/-! ## A391191.P16243833820826081818

`A391192(A091018(n))`
-/

namespace A391191.P16243833820826081818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391192 (A091018 n).toNat

end

end A391191.P16243833820826081818

/-!
# A391194: Number of ternary trees with n internal nodes labeled 1 or 2; nodes labeled 1 have three linearly ordered children, but nodes labeled 2 have three children which are reversible (the first and third children may be transposed but the middle child must remain in place).

The programs for A391194, there is no canonical definition to state claims against.
-/

/-! ## A391194.P14629115409552411310

`∑[A103221(∑[A329356(3*n)])]`
-/

namespace A391194.P14629115409552411310
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329356 (3 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A391194.P14629115409552411310

/-!
# A391195: Integers which can be expressed as the sum of two distinct perfect powers.

The programs for A391195, there is no canonical definition to state claims against.
-/

/-! ## A391195.P8822633966623656572

`∪[A216765(n+1), A298591(n+1)]`
-/

namespace A391195.P8822633966623656572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216765 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298591 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A391195.P8822633966623656572

/-! ## A391195.P4823136090172123570

`lt[0, A362424(n)]`
-/

namespace A391195.P4823136090172123570
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362424 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A391195.P4823136090172123570

/-! ## A391195.P13895924393393032785

`lt[1, A362426(n)]`
-/

namespace A391195.P13895924393393032785
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362426 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A391195.P13895924393393032785

/-!
# A391196: a(n) = (2^(n-2) * (n-2)! + floor(n/2)) mod n for n > 1.

The programs for A391196, the canonical program `A391196.P12753570277924246305` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A391196 has offset 2).

The definition of A391196 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A391196.P12753570277924246305

`lcm(A008619(n), A056051(n+2))`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A391196

/-- `lcm(A008619(n), A056051(n+2))` -/
def P12753570277924246305.Spec : Prop :=
  ∀ n, (P12753570277924246305.a n : ℤ) = A391196 (n + 2)

theorem P12753570277924246305.correct : P12753570277924246305.Spec := by
  intro n
  simp only [A391196, Nat.add_sub_cancel]

end A391196

/-! ## A391196.P6900125361854713059

`Δ[A065855(n+1)]*A008619(n)`
-/

namespace A391196.P6900125361854713059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065855 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A008619 n

end

end A391196.P6900125361854713059

namespace A391196

/-- `Δ[A065855(n+1)]*A008619(n)` -/
def P6900125361854713059.Spec : Prop :=
  ∀ n, P6900125361854713059.a n = A391196 (n + 2)

end A391196

/-! ## A391196.P17768367347406920115

`floor(A005451(n+2)/2)`
-/

namespace A391196.P17768367347406920115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A005451 (n + 2) : ℚ) / 2⌋

end

end A391196.P17768367347406920115

namespace A391196

/-- `floor(A005451(n+2)/2)` -/
def P17768367347406920115.Spec : Prop :=
  ∀ n, P17768367347406920115.a n = A391196 (n + 2)

end A391196

/-! ## A391196.P4117919652759056765

`A004526(A005451(n+2))`
-/

namespace A391196.P4117919652759056765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A005451 (n + 2)).toNat

end

end A391196.P4117919652759056765

namespace A391196

/-- `A004526(A005451(n+2))` -/
def P4117919652759056765.Spec : Prop :=
  ∀ n, P4117919652759056765.a n = A391196 (n + 2)

end A391196

/-! ## A391196.P16343175844166399618

`A004526(A191558(n+2))`
-/

namespace A391196.P16343175844166399618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A191558 (n + 2)).toNat

end

end A391196.P16343175844166399618

namespace A391196

/-- `A004526(A191558(n+2))` -/
def P16343175844166399618.Spec : Prop :=
  ∀ n, P16343175844166399618.a n = A391196 (n + 2)

end A391196

/-! ## A391196.P7200571620447380618

`A004526((n+2)*A066247(n+2))`
-/

namespace A391196.P7200571620447380618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 ((n + 2 : ℤ) * A066247 (n + 2)).toNat

end

end A391196.P7200571620447380618

namespace A391196

/-- `A004526((n+2)*A066247(n+2))` -/
def P7200571620447380618.Spec : Prop :=
  ∀ n, P7200571620447380618.a n = A391196 (n + 2)

end A391196

/-! ## A391196.P9928691847262993116

`A321017(A259175(n+2))`
-/

namespace A391196.P9928691847262993116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321017 (A259175 (n + 2)).toNat

end

end A391196.P9928691847262993116

namespace A391196

/-- `A321017(A259175(n+2))` -/
def P9928691847262993116.Spec : Prop :=
  ∀ n, P9928691847262993116.a n = A391196 (n + 2)

end A391196

/-!
# A391197: Number of fixed polyominoes with perimeter 2n.

The programs for A391197, there is no canonical definition to state claims against.
-/

/-! ## A391197.P9620672800620462558

`A324748(A038391(n))`
-/

namespace A391197.P9620672800620462558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324748 (A038391 n).toNat

end

end A391197.P9620672800620462558

/-! ## A391197.P2425252094600073718

`A366844(A062482(n+1))`
-/

namespace A391197.P2425252094600073718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366844 (A062482 (n + 1)).toNat

end

end A391197.P2425252094600073718

/-! ## A391197.P1739558233953935290

`A237582(A288268(n)+A089403(n))`
-/

namespace A391197.P1739558233953935290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237582 (A288268 n + A089403 n).toNat

end

end A391197.P1739558233953935290

/-!
# A391198: Expansion of g/(1 - x*g^2)^3, where g = 1+x*g^4 is the g.f. of A002293.

The programs for A391198, there is no canonical definition to state claims against.
-/

/-! ## A391198.P11325291729292640103

`A033270(A015575(n+1)+3)`
-/

namespace A391198.P11325291729292640103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033270 (A015575 (n + 1) + 3).toNat

end

end A391198.P11325291729292640103

/-!
# A391199: Expansion of (g/(1 - x*g^2))^2, where g = 1+x*g^4 is the g.f. of A002293.

The programs for A391199, there is no canonical definition to state claims against.
-/

/-! ## A391199.P8407863206638643970

`A109497(9^n)`
-/

namespace A391199.P8407863206638643970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109497 (9 ^ n)

end

end A391199.P8407863206638643970

