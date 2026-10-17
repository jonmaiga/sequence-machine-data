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
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C009
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
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
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
import Seq.Opaque.C024
import Seq.Opaque.C025
import Seq.Opaque.C026

/-!
# A058300: Number of ways of piling up n wine bottles above a row of n+1 bottles at ground level.

The programs for A058300, there is no canonical definition to state claims against.
-/

/-! ## A058300.P9943910934481360228

`A047998(2*(n+1)²)`
-/

namespace A058300.P9943910934481360228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047998 (2 * (n + 1) ^ 2)

end

end A058300.P9943910934481360228

/-! ## A058300.P15286858554489320271

`A047998(A001105(n+1))%A003501(n)`
-/

namespace A058300.P15286858554489320271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A047998 (A001105 (n + 1)).toNat) (A003501 n)

end

end A058300.P15286858554489320271

/-! ## A058300.P7971927264595326862

`lcm(A033999(n), A047998(A001105(n+1)))`
-/

namespace A058300.P7971927264595326862
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A047998 (A001105 (n + 1)).toNat)

end

end A058300.P7971927264595326862

/-! ## A058300.P10495992708296555367

`and(A047998(A001105(n+1)), A286644(2*n+1))`
-/

namespace A058300.P10495992708296555367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A047998 (A001105 (n + 1)).toNat) (A286644 (2 * n + 1))

end

end A058300.P10495992708296555367

/-! ## A058300.P12009081302946688177

`and(A047998(A001105(n+1)), A286645(2*n+1))`
-/

namespace A058300.P12009081302946688177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A047998 (A001105 (n + 1)).toNat) (A286645 (2 * n + 1))

end

end A058300.P12009081302946688177

/-!
# A058302: Primes p such that p | ((p-1)/2)! -1.

The programs for A058302, there is no canonical definition to state claims against.
-/

/-! ## A058302.P15224218923986695273

`4*A066160(n+1)-1`
-/

namespace A058302.P15224218923986695273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A066160 (n + 1) - 1

end

end A058302.P15224218923986695273

/-! ## A058302.P5536261100088404148

`record[A002145(n+1)*A265643(n+1)]`
-/

namespace A058302.P5536261100088404148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002145 (n + 1) * A265643 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A058302.P5536261100088404148

/-! ## A058302.P10793092944986784111

`p?[and(3, A282037(n+1))*A002145(n+1)]`
-/

namespace A058302.P10793092944986784111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 (A282037 (n + 1)) * A002145 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A058302.P10793092944986784111

/-! ## A058302.P12989798477361136504

`record[A065091(n+1)/A004055(n+1)]`
-/

namespace A058302.P12989798477361136504
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A065091 (n + 1) : ℚ) / (A004055 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A058302.P12989798477361136504

/-! ## A058302.P6021717370322878260

`A000040(eq[1, A004055(n+1)]+2)`
-/

namespace A058302.P6021717370322878260
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004055 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2)

end

end A058302.P6021717370322878260

/-! ## A058302.P2553225438042546379

`A000040(record[n+1-A004055(n+1)]+2)`
-/

namespace A058302.P2553225438042546379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A004055 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 2).toNat

end

end A058302.P2553225438042546379

/-! ## A058302.P11993797172537324771

`record[record[A006530(4*n+3)]*A265643(n+1)]`
-/

namespace A058302.P11993797172537324771
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (4 * n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) * A265643 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A058302.P11993797172537324771

/-! ## A058302.P12162234306207576838

`record[record[A020639(4*n+3)]*A265643(n+1)]`
-/

namespace A058302.P12162234306207576838
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (4 * n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) * A265643 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A058302.P12162234306207576838

/-! ## A058302.P12437760442579615074

`record[record[A000010(4*n+3)+1]*A265643(n+1)]`
-/

namespace A058302.P12437760442579615074
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (4 * n + 3) + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) * A265643 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A058302.P12437760442579615074

/-! ## A058302.P13864862915688531884

`A004273(2*A066160(n+1))`
-/

namespace A058302.P13864862915688531884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (2 * A066160 (n + 1)).toNat

end

end A058302.P13864862915688531884

/-! ## A058302.P15202290866621289906

`A004273(A004273(A066160(n+1))+1)`
-/

namespace A058302.P15202290866621289906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A004273 (A066160 (n + 1)).toNat + 1).toNat

end

end A058302.P15202290866621289906

/-! ## A058302.P16008987672575756948

`record[record[A014963(4*n+3)]*A265643(n+1)]`
-/

namespace A058302.P16008987672575756948
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (4 * n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) * A265643 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A058302.P16008987672575756948

/-! ## A058302.P2767202868904836384

`A125254(A066160(n+1))`
-/

namespace A058302.P2767202868904836384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125254 (A066160 (n + 1)).toNat

end

end A058302.P2767202868904836384

/-!
# A058303: Decimal expansion of the imaginary part of the first nontrivial zero of the Riemann zeta function.

The programs for A058303, there is no canonical definition to state claims against.
-/

/-! ## A058303.P1674411783234326347

`A131583(n)%10`
-/

namespace A058303.P1674411783234326347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A131583 n) 10

end

end A058303.P1674411783234326347

/-!
# A058305: Numerator of H(n), where H(0)=-1/12, H(n) = number of equivalence classes of positive definite quadratic forms a*x^2+b*x*y+c*y^2 with discriminant b^2-4ac = -n, counting forms equivalent to x^2+y^2 (resp. x^2+x*y+y^2) with multiplicity 1/2 (resp. 1/3).

The programs for A058305, there is no canonical definition to state claims against.
-/

/-! ## A058305.P1182006762705714160

`A259825(n)/gcd(12, A004013(n))`
-/

namespace A058305.P1182006762705714160
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A259825 n : ℚ) / (Int.gcd 12 (A004013 n) : ℚ)

end

end A058305.P1182006762705714160

/-! ## A058305.P11735482029358251743

`A259825(n)/A051725(A058306(n))`
-/

namespace A058305.P11735482029358251743
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A259825 n : ℚ) / (A051725 (A058306 n).toNat : ℚ)

end

end A058305.P11735482029358251743

/-! ## A058305.P7927186627750726793

`A259825(n)/A109015(A004013(n))`
-/

namespace A058305.P7927186627750726793
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A259825 n : ℚ) / (A109015 (A004013 n).toNat : ℚ)

end

end A058305.P7927186627750726793

/-! ## A058305.P15267810763584097290

`A259825(n)/A109015(abs(A259825(n)))`
-/

namespace A058305.P15267810763584097290
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A259825 n : ℚ) / (A109015 |A259825 n|.toNat : ℚ)

end

end A058305.P15267810763584097290

/-! ## A058305.P10665574590902478586

`A259825(n)/12*A051725(abs(A259825(n)))`
-/

namespace A058305.P10665574590902478586
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A259825 n : ℚ) / 12 * (A051725 |A259825 n|.toNat : ℚ)

end

end A058305.P10665574590902478586

/-! ## A058305.P1336966191413145059

`(A153182(4*n)+A153182(n))/(1-6/2)*A058306(n)/12`
-/

namespace A058305.P1336966191413145059
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A153182 (4 * n) + A153182 n : ℚ) / (1 - (6 : ℚ) / 2) * ((A058306 n : ℚ) / 12)

end

end A058305.P1336966191413145059

/-!
# A058306: Denominator of H(n), where H(0)=-1/12, H(n) = number of equivalence classes of positive definite quadratic forms a*x^2+b*x*y+c*y^2 with discriminant b^2-4ac = -n, counting forms equivalent to x^2+y^2 (resp. x^2+x*y+y^2) with multiplicity 1/2 (resp. 1/3).

The programs for A058306, there is no canonical definition to state claims against.
-/

/-! ## A058306.P9268273134670214075

`12/gcd(12, A004013(n))`
-/

namespace A058306.P9268273134670214075
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  12 / (Int.gcd 12 (A004013 n) : ℚ)

end

end A058306.P9268273134670214075

/-! ## A058306.P11766767766117887191

`A051725(A004013(n))`
-/

namespace A058306.P11766767766117887191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051725 (A004013 n).toNat

end

end A058306.P11766767766117887191

/-! ## A058306.P4748778863228542630

`A051725(abs(A259825(n)))`
-/

namespace A058306.P4748778863228542630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051725 |A259825 n|.toNat

end

end A058306.P4748778863228542630

/-! ## A058306.P7872405622120020041

`A051725(A259825(n)+12)`
-/

namespace A058306.P7872405622120020041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051725 (A259825 n + 12).toNat

end

end A058306.P7872405622120020041

/-! ## A058306.P7927024245564362149

`A051725(gcd(A005925(n), A259825(n)))`
-/

namespace A058306.P7927024245564362149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051725 (Int.gcd (A005925 n) (A259825 n))

end

end A058306.P7927024245564362149

/-! ## A058306.P11984312078301446781

`A109015(n)/A109015(A109015(n)+A004013(n))`
-/

namespace A058306.P11984312078301446781
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109015 n : ℚ) / (A109015 (A109015 n + A004013 n).toNat : ℚ)

end

end A058306.P11984312078301446781

/-! ## A058306.P3253721682943338511

`A109015(n)/A109015(A259825(n)+A109015(n))`
-/

namespace A058306.P3253721682943338511
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109015 n : ℚ) / (A109015 (A259825 n + A109015 n).toNat : ℚ)

end

end A058306.P3253721682943338511

/-! ## A058306.P10734758179912944122

`A109015(n)/A109015(A004013(n)+n)`
-/

namespace A058306.P10734758179912944122
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109015 n : ℚ) / (A109015 (A004013 n + (n : ℤ)).toNat : ℚ)

end

end A058306.P10734758179912944122

/-! ## A058306.P7847761930941466756

`A051725((n-1)*A259825(n))`
-/

namespace A058306.P7847761930941466756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051725 (((n : ℤ) - 1) * A259825 n).toNat

end

end A058306.P7847761930941466756

/-!
# A058307: a(n) = (n+1)*a(n-1) + a(n-2), with a(0)=0, a(1)=1.

The programs for A058307, the canonical program `A058307.P17988654202620757686` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A058307 has offset 0).

The definition of A058307 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)*a(n-1)+a(n-2)` (program `A058307.P17988654202620757686`, by `A058307.P17988654202620757686.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A058307.P17988654202620757686

`(n+1)*a(n-1)+a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A058307

/-- `(n+1)*a(n-1)+a(n-2)` -/
def P17988654202620757686.Spec : Prop :=
  ∀ n, (P17988654202620757686.a n : ℤ) = A058307 n

theorem P17988654202620757686.correct : P17988654202620757686.Spec := by
  intro n
  simp only [A058307]

end A058307

/-! ## A058307.P15481022099569764317

`a(n-2)-(n-Δ[n²])*a(n-1)` with `a(0)=0, a(1)=1`
-/

namespace A058307.P15481022099569764317
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 2) - ((n : ℤ) - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))) * a (n - 1)

end

end A058307.P15481022099569764317

namespace A058307

/-- `a(n-2)-(n-Δ[n²])*a(n-1)` -/
def P15481022099569764317.Spec : Prop :=
  ∀ n, P15481022099569764317.a n = A058307 n

end A058307

/-! ## A058307.P10342524696776169184

`a(n-2)+a(n-1)/(n+1)^(-1)` with `a(0)=0, a(1)=1`
-/

namespace A058307.P10342524696776169184
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 2) + a (n - 1) / (n + 1 : ℚ) ^ (-1 : ℤ)

end

end A058307.P10342524696776169184

namespace A058307

/-- `a(n-2)+a(n-1)/(n+1)^(-1)` -/
def P10342524696776169184.Spec : Prop :=
  ∀ n, P10342524696776169184.a n = (A058307 n : ℚ)

end A058307

/-! ## A058307.P1044542328416191356

`A228340(∑[n+1]+1)`
-/

namespace A058307.P1044542328416191356
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228340 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A058307.P1044542328416191356

namespace A058307

/-- `A228340(∑[n+1]+1)` -/
def P1044542328416191356.Spec : Prop :=
  ∀ n, P1044542328416191356.a n = A058307 n

end A058307

/-! ## A058307.P17022751702108767299

`A057427(n)*A102473(∑[n+2]-1)`
-/

namespace A058307.P17022751702108767299
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A102473 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A058307.P17022751702108767299

namespace A058307

/-- `A057427(n)*A102473(∑[n+2]-1)` -/
def P17022751702108767299.Spec : Prop :=
  ∀ n, P17022751702108767299.a n = A058307 n

end A058307

/-! ## A058307.P207928391240162401

`record[A001053(n)]-A058279(n)`
-/

namespace A058307.P207928391240162401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001053 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A058279 n

end

end A058307.P207928391240162401

namespace A058307

/-- `record[A001053(n)]-A058279(n)` -/
def P207928391240162401.Spec : Prop :=
  ∀ n, P207928391240162401.a n = A058307 n

end A058307

/-! ## A058307.P13257372142798055115

`A001053(n+2)-A058279(n)`
-/

namespace A058307.P13257372142798055115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001053 (n + 2) - A058279 n

end

end A058307.P13257372142798055115

namespace A058307

/-- `A001053(n+2)-A058279(n)` -/
def P13257372142798055115.Spec : Prop :=
  ∀ n, P13257372142798055115.a n = A058307 n

end A058307

/-! ## A058307.P6828099149922937034

`A001040(n+2)-A001053(n+2)`
-/

namespace A058307.P6828099149922937034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001040 (n + 2) - A001053 (n + 2)

end

end A058307.P6828099149922937034

namespace A058307

/-- `A001040(n+2)-A001053(n+2)` -/
def P6828099149922937034.Spec : Prop :=
  ∀ n, P6828099149922937034.a n = A058307 n

end A058307

/-!
# A058308: a(n) = (n+2)*a(n-1) + a(n-2), with a(0)=0, a(1)=1.

The programs for A058308, the canonical program `A058308.P10312651916700760437` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A058308 has offset 0).

The definition of A058308 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+2)*a(n-1)+a(n-2)` (program `A058308.P10312651916700760437`, by `A058308.P10312651916700760437.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A058308.P10312651916700760437

`(n+2)*a(n-1)+a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A058308

/-- `(n+2)*a(n-1)+a(n-2)` -/
def P10312651916700760437.Spec : Prop :=
  ∀ n, (P10312651916700760437.a n : ℤ) = A058308 n

theorem P10312651916700760437.correct : P10312651916700760437.Spec := by
  intro n
  simp only [A058308]

end A058308

/-! ## A058308.P5715277373584102521

`A058307(n+1)-A228341(n+2)`
-/

namespace A058308.P5715277373584102521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058307 (n + 1) - A228341 (n + 2)

end

end A058308.P5715277373584102521

namespace A058308

/-- `A058307(n+1)-A228341(n+2)` -/
def P5715277373584102521.Spec : Prop :=
  ∀ n, P5715277373584102521.a n = A058308 n

end A058308

/-! ## A058308.P2156556012152805914

`record[A010054(n+4)*A102473(n+1)]`
-/

namespace A058308.P2156556012152805914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (n + 4) * A102473 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A058308.P2156556012152805914

namespace A058308

/-- `record[A010054(n+4)*A102473(n+1)]` -/
def P2156556012152805914.Spec : Prop :=
  ∀ n, P2156556012152805914.a n = A058308 n

end A058308

/-! ## A058308.P17635020189455148715

`A058279(n+1)-A058307(n+1)`
-/

namespace A058308.P17635020189455148715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058279 (n + 1) - A058307 (n + 1)

end

end A058308.P17635020189455148715

namespace A058308

/-- `A058279(n+1)-A058307(n+1)` -/
def P17635020189455148715.Spec : Prop :=
  ∀ n, P17635020189455148715.a n = A058308 n

end A058308

/-! ## A058308.P9756355816257311504

`record[A102472(n+4)%A102472(n+1)]`
-/

namespace A058308.P9756355816257311504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A102472 (n + 4)) (A102472 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A058308.P9756355816257311504

namespace A058308

/-- `record[A102472(n+4)%A102472(n+1)]` -/
def P9756355816257311504.Spec : Prop :=
  ∀ n, P9756355816257311504.a n = A058308 n

end A058308

/-! ## A058308.P6413367659788651915

`record[floor(A102473(n+1)/A102472(n+4))]`
-/

namespace A058308.P6413367659788651915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A102473 (n + 1) : ℚ) / (A102472 (n + 4) : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A058308.P6413367659788651915

namespace A058308

/-- `record[floor(A102473(n+1)/A102472(n+4))]` -/
def P6413367659788651915.Spec : Prop :=
  ∀ n, P6413367659788651915.a n = A058308 n

end A058308

/-!
# A058309: a(n) = (n+3)*a(n-1) + a(n-2), with a(0)=0, a(1)=1.

The programs for A058309, the canonical program `A058309.P3544518364589394895` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A058309 has offset 0).

The definition of A058309 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A058309.P3544518364589394895

`a(n-2)+(n+3)*a(n-1)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A058309

/-- `a(n-2)+(n+3)*a(n-1)` -/
def P3544518364589394895.Spec : Prop :=
  ∀ n, (P3544518364589394895.a n : ℤ) = A058309 n

theorem P3544518364589394895.correct : P3544518364589394895.Spec := by
  intro n
  simp only [A058309]

end A058309

/-! ## A058309.P9537033968938050977

`A062323(A077169(n+5)^A178334(n))`
-/

namespace A058309.P9537033968938050977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062323 (SequenceMachineLib.roundAway ((A077169 (n + 5) : ℚ) ^ (A178334 n : ℤ))).toNat

end

end A058309.P9537033968938050977

namespace A058309

/-- `A062323(A077169(n+5)^A178334(n))` -/
def P9537033968938050977.Spec : Prop :=
  ∀ n, P9537033968938050977.a n = A058309 n

end A058309

/-! ## A058309.P14507074321870361576

`A062323(A077169(n+5)%A062308(n))`
-/

namespace A058309.P14507074321870361576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062323 (Int.tmod (A077169 (n + 5)) (A062308 n)).toNat

end

end A058309.P14507074321870361576

namespace A058309

/-- `A062323(A077169(n+5)%A062308(n))` -/
def P14507074321870361576.Spec : Prop :=
  ∀ n, P14507074321870361576.a n = A058309 n

end A058309

/-! ## A058309.P6023746882563610562

`A062323(A027379(n+2)+8)%A036244(n+1)`
-/

namespace A058309.P6023746882563610562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A062323 (A027379 (n + 2) + 8).toNat) (A036244 (n + 1))

end

end A058309.P6023746882563610562

namespace A058309

/-- `A062323(A027379(n+2)+8)%A036244(n+1)` -/
def P6023746882563610562.Spec : Prop :=
  ∀ n, P6023746882563610562.a n = A058309 n

end A058309

/-! ## A058309.P13286962524704253844

`A246662(n+4)`
-/

namespace A058309.P13286962524704253844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246662 (n + 4)

end

end A058309.P13286962524704253844

namespace A058309

/-- `A246662(n+4)` -/
def P13286962524704253844.Spec : Prop :=
  ∀ n, P13286962524704253844.a n = A058309 n

end A058309

/-!
# A058310: a(n) = (1/2)*(n^2+n+2)*(n^2+3*n+1).

The programs for A058310, the canonical program `A058310.P8222447703168785734` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A058310 has offset 0).

The definition of A058310 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A058310.P5651020849587311852

`(n²+n+2)*(n²+3*n+1)/2`
-/

namespace A058310.P5651020849587311852
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n ^ 2 + (n + 2) : ℚ) * ((n ^ 2 + 3 * n + 1 : ℚ) / 2)

end

end A058310.P5651020849587311852

namespace A058310

/-- `(n²+n+2)*(n²+3*n+1)/2` -/
def P5651020849587311852.Spec : Prop :=
  ∀ n, P5651020849587311852.a n = (A058310 n : ℚ)

end A058310

/-! ## A058310.P8222447703168785734

`5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` with `a(0)=1, a(1)=10, a(2)=44, a(3)=133, a(4)=319`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A058310

/-- `5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` -/
def P8222447703168785734.Spec : Prop :=
  ∀ n, P8222447703168785734.a n = A058310 n

theorem P8222447703168785734.correct : P8222447703168785734.Spec := by
  intro n
  simp only [A058310]

end A058310

/-! ## A058310.P5221385717499794348

`floor(∑[n+1]/Δ[atan(n)]+n)`
-/

namespace A058310.P5221385717499794348
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ) / (f2 (n + 1) - f2 n) + (n : ℝ)⌋

end

end A058310.P5221385717499794348

namespace A058310

/-- `floor(∑[n+1]/Δ[atan(n)]+n)` -/
def P5221385717499794348.Spec : Prop :=
  ∀ n, P5221385717499794348.a n = A058310 n

end A058310

/-! ## A058310.P8090373364001514442

`floor(n-∑[n+1]/Δ[acot(n)])`
-/

namespace A058310.P8090373364001514442
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ) / (f2 (n + 1) - f2 n)⌋

end

end A058310.P8090373364001514442

namespace A058310

/-- `floor(n-∑[n+1]/Δ[acot(n)])` -/
def P8090373364001514442.Spec : Prop :=
  ∀ n, P8090373364001514442.a n = A058310 n

end A058310

/-! ## A058310.P3929295450456325404

`C((n+1)², 2)+∑[n+2]-1`
-/

namespace A058310.P3929295450456325404
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose ((n + 1) ^ 2) 2 : ℤ) + (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1)

end

end A058310.P3929295450456325404

namespace A058310

/-- `C((n+1)², 2)+∑[n+2]-1` -/
def P3929295450456325404.Spec : Prop :=
  ∀ n, P3929295450456325404.a n = A058310 n

end A058310

/-! ## A058310.P1728368348015927336

`∑[n+1]+C((n+1)², 2)+n`
-/

namespace A058310.P1728368348015927336
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (Nat.choose ((n + 1) ^ 2) 2 + n)

end

end A058310.P1728368348015927336

namespace A058310

/-- `∑[n+1]+C((n+1)², 2)+n` -/
def P1728368348015927336.Spec : Prop :=
  ∀ n, (P1728368348015927336.a n : ℤ) = A058310 n

end A058310

/-! ## A058310.P5350473173617174032

`∑[n+2]+C(∑[2*n+1], 2)-1`
-/

namespace A058310.P5350473173617174032
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j + Nat.choose (∑ j ∈ Finset.range (n + 1), f2 j) 2 : ℕ) : ℤ) - 1

end

end A058310.P5350473173617174032

namespace A058310

/-- `∑[n+2]+C(∑[2*n+1], 2)-1` -/
def P5350473173617174032.Spec : Prop :=
  ∀ n, P5350473173617174032.a n = A058310 n

end A058310

/-! ## A058310.P12817168305402522206

`(Δ[n²²]+2*a(n-1)+3)/2` with `a(0)=1`
-/

namespace A058310.P12817168305402522206
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n ^ 2) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℚ) + 2 * a (n - 1) + 3) / 2

end

end A058310.P12817168305402522206

namespace A058310

/-- `(Δ[n²²]+2*a(n-1)+3)/2` -/
def P12817168305402522206.Spec : Prop :=
  ∀ n, P12817168305402522206.a n = (A058310 n : ℚ)

end A058310

/-! ## A058310.P16307141127120337486

`∑[lcm(2*n+1, ∑[2*n])+n+2]-1`
-/

namespace A058310.P16307141127120337486
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (2 * n + 1) (∑ j ∈ Finset.range (n + 1), f2 j) + (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A058310.P16307141127120337486

namespace A058310

/-- `∑[lcm(2*n+1, ∑[2*n])+n+2]-1` -/
def P16307141127120337486.Spec : Prop :=
  ∀ n, P16307141127120337486.a n = A058310 n

end A058310

/-! ## A058310.P2831165685144498365

`2*n+1+∑[n]+C(∑[2*n+1], 2)`
-/

namespace A058310.P2831165685144498365
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1 + (∑ j ∈ Finset.range (n + 1), f1 j + Nat.choose (∑ j ∈ Finset.range (n + 1), f2 j) 2)

end

end A058310.P2831165685144498365

namespace A058310

/-- `2*n+1+∑[n]+C(∑[2*n+1], 2)` -/
def P2831165685144498365.Spec : Prop :=
  ∀ n, (P2831165685144498365.a n : ℤ) = A058310 n

end A058310

/-! ## A058310.P10977975325144629378

`(2*n+1)*∑[2*n]+a(n-1)+n+2` with `a(0)=1`
-/

namespace A058310.P10977975325144629378
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (2 * n + 1) * (∑ j ∈ Finset.range (n + 1), f1 j) + (a (n - 1) + (n + 2))

end

end A058310.P10977975325144629378

namespace A058310

/-- `(2*n+1)*∑[2*n]+a(n-1)+n+2` -/
def P10977975325144629378.Spec : Prop :=
  ∀ n, (P10977975325144629378.a n : ℤ) = A058310 n

end A058310

/-! ## A058310.P10054949801628187626

`A027441(n+1)+n`
-/

namespace A058310.P10054949801628187626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027441 (n + 1) + (n : ℤ)

end

end A058310.P10054949801628187626

namespace A058310

/-- `A027441(n+1)+n` -/
def P10054949801628187626.Spec : Prop :=
  ∀ n, P10054949801628187626.a n = A058310 n

end A058310

/-! ## A058310.P1454967246462474457

`∑[A212133(n+1)]+n`
-/

namespace A058310.P1454967246462474457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212133 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A058310.P1454967246462474457

namespace A058310

/-- `∑[A212133(n+1)]+n` -/
def P1454967246462474457.Spec : Prop :=
  ∀ n, P1454967246462474457.a n = A058310 n

end A058310

/-! ## A058310.P5569231233294669682

`∑[A047672(n+1)]-n²`
-/

namespace A058310.P5569231233294669682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047672 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n ^ 2 : ℤ)

end

end A058310.P5569231233294669682

namespace A058310

/-- `∑[A047672(n+1)]-n²` -/
def P5569231233294669682.Spec : Prop :=
  ∀ n, P5569231233294669682.a n = A058310 n

end A058310

/-! ## A058310.P1826230570132523249

`A171714(n)+A007494(n)`
-/

namespace A058310.P1826230570132523249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171714 n + A007494 n

end

end A058310.P1826230570132523249

namespace A058310

/-- `A171714(n)+A007494(n)` -/
def P1826230570132523249.Spec : Prop :=
  ∀ n, P1826230570132523249.a n = A058310 n

end A058310

/-! ## A058310.P8253682705738662659

`A261893(n)+A110450(n)`
-/

namespace A058310.P8253682705738662659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261893 n + A110450 n

end

end A058310.P8253682705738662659

namespace A058310

/-- `A261893(n)+A110450(n)` -/
def P8253682705738662659.Spec : Prop :=
  ∀ n, P8253682705738662659.a n = A058310 n

end A058310

/-! ## A058310.P2789348467427073541

`A191903(n)+A001651(n+1)`
-/

namespace A058310.P2789348467427073541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191903 n + A001651 (n + 1)

end

end A058310.P2789348467427073541

namespace A058310

/-- `A191903(n)+A001651(n+1)` -/
def P2789348467427073541.Spec : Prop :=
  ∀ n, P2789348467427073541.a n = A058310 n

end A058310

/-! ## A058310.P14117989622692132194

`A201243(n+1)+A005891(n)`
-/

namespace A058310.P14117989622692132194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201243 (n + 1) + A005891 n

end

end A058310.P14117989622692132194

namespace A058310

/-- `A201243(n+1)+A005891(n)` -/
def P14117989622692132194.Spec : Prop :=
  ∀ n, P14117989622692132194.a n = A058310 n

end A058310

/-! ## A058310.P8269585481841239592

`A172132(n+1)+A080855(n)`
-/

namespace A058310.P8269585481841239592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172132 (n + 1) + A080855 n

end

end A058310.P8269585481841239592

namespace A058310

/-- `A172132(n+1)+A080855(n)` -/
def P8269585481841239592.Spec : Prop :=
  ∀ n, P8269585481841239592.a n = A058310 n

end A058310

/-! ## A058310.P14171643899969436200

`A255499(n)+A002414(n+1)`
-/

namespace A058310.P14171643899969436200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255499 n + A002414 (n + 1)

end

end A058310.P14171643899969436200

namespace A058310

/-- `A255499(n)+A002414(n+1)` -/
def P14171643899969436200.Spec : Prop :=
  ∀ n, P14171643899969436200.a n = A058310 n

end A058310

/-!
# A058312: Denominator of the n-th alternating harmonic number, Sum_{k=1..n} (-1)^(k+1)/k.

The programs for A058312, there is no canonical definition to state claims against.
-/

/-! ## A058312.P18403836615547993463

`A119248(n+1)+A058313(n+1)`
-/

namespace A058312.P18403836615547993463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119248 (n + 1) + A058313 (n + 1)

end

end A058312.P18403836615547993463

/-! ## A058312.P58819316228871116

`A075829(n+2)+A058313(n+1)`
-/

namespace A058312.P58819316228871116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075829 (n + 2) + A058313 (n + 1)

end

end A058312.P58819316228871116

/-! ## A058312.P8359889536403935128

`A119248(n+1)+A075830(n+2)`
-/

namespace A058312.P8359889536403935128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119248 (n + 1) + A075830 (n + 2)

end

end A058312.P8359889536403935128

/-! ## A058312.P12167445109841388474

`A075830(n+2)+A075829(n+2)`
-/

namespace A058312.P12167445109841388474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075830 (n + 2) + A075829 (n + 2)

end

end A058312.P12167445109841388474

/-! ## A058312.P5597830695278290632

`Δ[A236856(n)]/A269626(n+1)`
-/

namespace A058312.P5597830695278290632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236856 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (A269626 (n + 1) : ℚ)

end

end A058312.P5597830695278290632

/-! ## A058312.P15785810914647751014

`A003418(n+1)/A269626(n+1)`
-/

namespace A058312.P15785810914647751014
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003418 (n + 1) : ℚ) / (A269626 (n + 1) : ℚ)

end

end A058312.P15785810914647751014

/-! ## A058312.P1997669471526708252

`A051451(A065515(n+1))/A269626(n+1)`
-/

namespace A058312.P1997669471526708252
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051451 (A065515 (n + 1)).toNat : ℚ) / (A269626 (n + 1) : ℚ)

end

end A058312.P1997669471526708252

/-! ## A058312.P6624194892096682085

`A003418(n+1)/A025530(n+1)*A058313(n+1)`
-/

namespace A058312.P6624194892096682085
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003418 (n + 1) : ℚ) / (A025530 (n + 1) : ℚ) * (A058313 (n + 1) : ℚ)

end

end A058312.P6624194892096682085

/-! ## A058312.P3828635829387124211

`A120108(A000217(n))/A269626(n+1)`
-/

namespace A058312.P3828635829387124211
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A120108 (A000217 n).toNat : ℚ) / (A269626 (n + 1) : ℚ)

end

end A058312.P3828635829387124211

/-! ## A058312.P7724481866226353112

`A002805(n+1)/A334958(n+1)*A056612(n+1)`
-/

namespace A058312.P7724481866226353112
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002805 (n + 1) : ℚ) / (A334958 (n + 1) : ℚ) * (A056612 (n + 1) : ℚ)

end

end A058312.P7724481866226353112

/-!
# A058313: Numerator of the n-th alternating harmonic number, Sum_{k=1..n} (-1)^(k+1)/k.

The programs for A058313, there is no canonical definition to state claims against.
-/

/-! ## A058313.P1789401562901210840

`(a(n-1)+(-1)^(n+1))*A058312((n-1)*A058312(n))` with `a(0)=1, a(1)=1, a(2)=5, a(3)=7, a(4)=47, a(5)=37, a(6)=319`
-/

namespace A058313.P1789401562901210840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 5, 7, 47, 37, 319] fun n a =>
  (a (n - 1) + (-1) ^ (n + 1)) * A058312 (((n : ℤ) - 1) * A058312 n).toNat

end

end A058313.P1789401562901210840

/-! ## A058313.P236021627071677365

`A075830(n+2)`
-/

namespace A058313.P236021627071677365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075830 (n + 2)

end

end A058313.P236021627071677365

/-! ## A058313.P3050264587720891850

`A058312(n+1)-A119248(n+1)`
-/

namespace A058313.P3050264587720891850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058312 (n + 1) - A119248 (n + 1)

end

end A058313.P3050264587720891850

/-! ## A058313.P11511667693646666542

`A058312(n+1)-A075829(n+2)`
-/

namespace A058313.P11511667693646666542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058312 (n + 1) - A075829 (n + 2)

end

end A058313.P11511667693646666542

/-! ## A058313.P8409304742131032323

`A025530(n+1)/A269626(n+1)`
-/

namespace A058313.P8409304742131032323
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025530 (n + 1) : ℚ) / (A269626 (n + 1) : ℚ)

end

end A058313.P8409304742131032323

/-! ## A058313.P15629822259612564884

`A025530(n+1)/gcd(A003418(n), A025530(n+1))`
-/

namespace A058313.P15629822259612564884
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025530 (n + 1) : ℚ) / (Int.gcd (A003418 n) (A025530 (n + 1)) : ℚ)

end

end A058313.P15629822259612564884

/-! ## A058313.P18378251186127267693

`A025530(n+1)/A003418(n+1)*A058312(n+1)`
-/

namespace A058313.P18378251186127267693
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025530 (n + 1) : ℚ) / (A003418 (n + 1) : ℚ) * (A058312 (n + 1) : ℚ)

end

end A058313.P18378251186127267693

/-! ## A058313.P17122057996026717894

`A024167(n+1)/A334958(n+1)`
-/

namespace A058313.P17122057996026717894
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024167 (n + 1) : ℚ) / (A334958 (n + 1) : ℚ)

end

end A058313.P17122057996026717894

/-! ## A058313.P15052067047552307977

`A058312(n+1)-A024168(n+1)/A334958(n+1)`
-/

namespace A058313.P15052067047552307977
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A058312 (n + 1) : ℚ) - (A024168 (n + 1) : ℚ) / (A334958 (n + 1) : ℚ)

end

end A058313.P15052067047552307977

/-! ## A058313.P351529754271965125

`A024167(n+1)/A000142(n+1)*A058312(n+1)`
-/

namespace A058313.P351529754271965125
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024167 (n + 1) : ℚ) / (A000142 (n + 1) : ℚ) * (A058312 (n + 1) : ℚ)

end

end A058313.P351529754271965125

/-!
# A058317: Number of neutrons in atoms of the n-th element of the periodic table (for the most abundant isotope).

The programs for A058317, there is no canonical definition to state claims against.
-/

/-! ## A058317.P4461878610133957474

`A007656(n+1)-A236854(A236854(n+1))`
-/

namespace A058317.P4461878610133957474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007656 (n + 1) - A236854 (A236854 (n + 1)).toNat

end

end A058317.P4461878610133957474

/-! ## A058317.P6790775670570268819

`A007656(n+1)-A143824(A227590(n+2)-1)`
-/

namespace A058317.P6790775670570268819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007656 (n + 1) - A143824 (A227590 (n + 2) - 1).toNat

end

end A058317.P6790775670570268819

/-! ## A058317.P743778852602084519

`A007656(n+1)-A143824(A106683(C(n+3, 2)))`
-/

namespace A058317.P743778852602084519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007656 (n + 1) - A143824 (A106683 (Nat.choose (n + 3) 2)).toNat

end

end A058317.P743778852602084519

/-! ## A058317.P5377815958707307278

`A007656(n+1)-A143824(A106683(∑[n+2]+1))`
-/

namespace A058317.P5377815958707307278
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007656 (n + 1) - A143824 (A106683 (∑ j ∈ Finset.range (n + 1), f1 j + 1)).toNat

end

end A058317.P5377815958707307278

/-! ## A058317.P11000467126671008189

`A007656(n+1)-A181094(A181094(n+1))`
-/

namespace A058317.P11000467126671008189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007656 (n + 1) - A181094 (A181094 (n + 1)).toNat

end

end A058317.P11000467126671008189

/-!
# A058318: Number of energy levels in atoms of the n-th element of the periodic table.

The programs for A058318, the canonical program `A058318.P17654630993915287169` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A058318 has offset 1).

The definition of A058318 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 118 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A058318.P17654630993915287169

`∑[char[2*(∑[floor(n/2)²]-1)]]`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A058318

/-- `∑[char[2*(∑[floor(n/2)²]-1)]]` -/
def P17654630993915287169.Spec : Prop :=
  ∀ n, (P17654630993915287169.a n : ℤ) = A058318 (n + 1)

theorem P17654630993915287169.correct : P17654630993915287169.Spec := by
  intro n
  simp only [A058318, Nat.add_sub_cancel]

end A058318

/-! ## A058318.P15643534077440162327

`∑[char[A018227(n+1)]]+1`
-/

namespace A058318.P15643534077440162327
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018227 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A058318.P15643534077440162327

namespace A058318

/-- `∑[char[A018227(n+1)]]+1` -/
def P15643534077440162327.Spec : Prop :=
  ∀ n, (P15643534077440162327.a n : ℤ) = A058318 (n + 1)

end A058318

/-! ## A058318.P1158207132523404007

`∑[char[∑[A093907(n+1)]]]+1`
-/

namespace A058318.P1158207132523404007
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093907 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A058318.P1158207132523404007

namespace A058318

/-- `∑[char[∑[A093907(n+1)]]]+1` -/
def P1158207132523404007.Spec : Prop :=
  ∀ n, (P1158207132523404007.a n : ℤ) = A058318 (n + 1)

end A058318

/-! ## A058318.P18301048909261137043

`∑[char[A219527(n+2)-1]]+1`
-/

namespace A058318.P18301048909261137043
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219527 (n + 2) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A058318.P18301048909261137043

namespace A058318

/-- `∑[char[A219527(n+2)-1]]+1` -/
def P18301048909261137043.Spec : Prop :=
  ∀ n, (P18301048909261137043.a n : ℤ) = A058318 (n + 1)

end A058318

/-! ## A058318.P2572648710134135033

`∑[char[∑[2*A052839(n)²]]]+1`
-/

namespace A058318.P2572648710134135033
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A052839 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A058318.P2572648710134135033

namespace A058318

/-- `∑[char[∑[2*A052839(n)²]]]+1` -/
def P2572648710134135033.Spec : Prop :=
  ∀ n, (P2572648710134135033.a n : ℤ) = A058318 (n + 1)

end A058318

/-! ## A058318.P8409748424051672652

`∑[char[∑[2*A080513(n)²]]]+1`
-/

namespace A058318.P8409748424051672652
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A080513 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A058318.P8409748424051672652

namespace A058318

/-- `∑[char[∑[2*A080513(n)²]]]+1` -/
def P8409748424051672652.Spec : Prop :=
  ∀ n, (P8409748424051672652.a n : ℤ) = A058318 (n + 1)

end A058318

/-! ## A058318.P14972658425296982490

`A005496(∑[char[A018227(n+1)]])`
-/

namespace A058318.P14972658425296982490
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018227 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005496 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A058318.P14972658425296982490

namespace A058318

/-- `A005496(∑[char[A018227(n+1)]])` -/
def P14972658425296982490.Spec : Prop :=
  ∀ n, P14972658425296982490.a n = A058318 (n + 1)

end A058318

/-! ## A058318.P11113994762601723525

`A005555(∑[char[A018227(n+1)]])`
-/

namespace A058318.P11113994762601723525
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018227 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005555 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A058318.P11113994762601723525

namespace A058318

/-- `A005555(∑[char[A018227(n+1)]])` -/
def P11113994762601723525.Spec : Prop :=
  ∀ n, P11113994762601723525.a n = A058318 (n + 1)

end A058318

/-! ## A058318.P13047612622315134322

`A008725(∑[char[A018227(n+1)]])`
-/

namespace A058318.P13047612622315134322
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018227 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008725 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A058318.P13047612622315134322

namespace A058318

/-- `A008725(∑[char[A018227(n+1)]])` -/
def P13047612622315134322.Spec : Prop :=
  ∀ n, P13047612622315134322.a n = A058318 (n + 1)

end A058318

/-! ## A058318.P13758166485353916983

`A008726(∑[char[A018227(n+1)]])`
-/

namespace A058318.P13758166485353916983
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018227 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008726 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A058318.P13758166485353916983

namespace A058318

/-- `A008726(∑[char[A018227(n+1)]])` -/
def P13758166485353916983.Spec : Prop :=
  ∀ n, P13758166485353916983.a n = A058318 (n + 1)

end A058318

/-! ## A058318.P6242536879690242184

`A348553(∑[char[A018227(n+1)]])`
-/

namespace A058318.P6242536879690242184
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018227 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348553 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A058318.P6242536879690242184

namespace A058318

/-- `A348553(∑[char[A018227(n+1)]])` -/
def P6242536879690242184.Spec : Prop :=
  ∀ n, P6242536879690242184.a n = A058318 (n + 1)

end A058318

/-! ## A058318.P1781733555032511820

`A004396(A000196(A171710(n+3)))`
-/

namespace A058318.P1781733555032511820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A000196 (A171710 (n + 3)).toNat).toNat

end

end A058318.P1781733555032511820

namespace A058318

/-- `A004396(A000196(A171710(n+3)))` -/
def P1781733555032511820.Spec : Prop :=
  ∀ n, P1781733555032511820.a n = A058318 (n + 1)

end A058318

/-!
# A058319: Coefficients (multiplied by 48) in Alternative Extended Simpson's rule for numerical integration.

The programs for A058319, the canonical program `A058319.P15636681692749304908` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A058319 has offset 0).

The definition of A058319 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A058319.P15636681692749304908

`a(n-1)` with `a(0)=17, a(1)=59, a(2)=43, a(3)=49, a(4)=48`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A058319

/-- `a(n-1)` -/
def P15636681692749304908.Spec : Prop :=
  ∀ n, (P15636681692749304908.a n : ℤ) = A058319 n

theorem P15636681692749304908.correct : P15636681692749304908.Spec := by
  intro n
  simp only [A058319]

end A058319

/-!
# A058320: Distinct even prime-gap lengths (number of composites between primes), from 3+2, 7+4, 23+6,...

The programs for A058320, there is no canonical definition to state claims against.
-/

/-! ## A058320.P14068231299479786788

`A014320(n+2)`
-/

namespace A058320.P14068231299479786788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014320 (n + 2)

end

end A058320.P14068231299479786788

/-! ## A058320.P460145108369580505

`2*A014321(n+1)`
-/

namespace A058320.P460145108369580505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A014321 (n + 1)

end

end A058320.P460145108369580505

/-! ## A058320.P4367143922778386995

`A004277(A014321(n+1))`
-/

namespace A058320.P4367143922778386995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A014321 (n + 1)).toNat

end

end A058320.P4367143922778386995

/-! ## A058320.P7003506642747731124

`A000267(A014321(n+1)²)`
-/

namespace A058320.P7003506642747731124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000267 (A014321 (n + 1) ^ 2).toNat

end

end A058320.P7003506642747731124

/-! ## A058320.P12856830333981219429

`A004275(A014321(n+1)+1)`
-/

namespace A058320.P12856830333981219429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A014321 (n + 1) + 1).toNat

end

end A058320.P12856830333981219429

/-! ## A058320.P17358672884140249831

`A005843(A014321(n+1)+1)-2`
-/

namespace A058320.P17358672884140249831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A014321 (n + 1) + 1).toNat - 2

end

end A058320.P17358672884140249831

/-! ## A058320.P8896295105101456026

`A335367(n+2)-A335366(n+2)`
-/

namespace A058320.P8896295105101456026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335367 (n + 2) - A335366 (n + 2)

end

end A058320.P8896295105101456026

/-! ## A058320.P3835684250921970247

`A001281(A014321(n+1)/(1-3/4))`
-/

namespace A058320.P3835684250921970247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (SequenceMachineLib.roundAway ((A014321 (n + 1) : ℚ) / (1 - (3 : ℚ) / 4))).toNat

end

end A058320.P3835684250921970247

/-! ## A058320.P11897874081552528781

`A005843(A014321(n+1)%record[A020639(n+2)])`
-/

namespace A058320.P11897874081552528781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (Int.tmod (A014321 (n + 1)) (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A058320.P11897874081552528781

/-!
# A058321: Number of x such that phi(x) = 2^n.

The programs for A058321, there is no canonical definition to state claims against.
-/

/-! ## A058321.P14347255264184201154

`∑[A010815(A034581(n+1))]+1`
-/

namespace A058321.P14347255264184201154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010815 (A034581 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A058321.P14347255264184201154

/-!
# A058322: Primes for which A049076(p) = 7.

The programs for A058322, there is no canonical definition to state claims against.
-/

/-! ## A058322.P18315116023715240939

`A049202(comp[record[∑{p}[n, #]]])`
-/

namespace A058322.P18315116023715240939
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), p

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049202 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A058322.P18315116023715240939

/-! ## A058322.P372635258652160646

`A049202(comp[∑{p}[n+1, C(#, n)]])`
-/

namespace A058322.P372635258652160646
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), Nat.choose p n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049202 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A058322.P372635258652160646

/-! ## A058322.P17124555388760608614

`A049202(record[1-∑{p}[n+1, C(#, n)]+n])`
-/

namespace A058322.P17124555388760608614
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((∑ p ∈ Nat.primeFactors (f2 n), Nat.choose p n : ℕ) : ℤ) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049202 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A058322.P17124555388760608614

/-! ## A058322.P14145983659490459255

`A049202(Δ[A051349(n)])`
-/

namespace A058322.P14145983659490459255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051349 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049202 (f1 (n + 1) - f1 n).toNat

end

end A058322.P14145983659490459255

/-! ## A058322.P13419078467015338612

`A049203(A007821(n+1))`
-/

namespace A058322.P13419078467015338612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049203 (A007821 (n + 1)).toNat

end

end A058322.P13419078467015338612

/-!
# A058324: Primes for which A049076(p) = 8.

The programs for A058324, there is no canonical definition to state claims against.
-/

/-! ## A058324.P13992542523658605568

`A057849(comp[record[∑{p}[n, #]]])`
-/

namespace A058324.P13992542523658605568
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), p

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057849 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A058324.P13992542523658605568

/-! ## A058324.P16324542105352675290

`A057849(comp[∑{p}[n+1, C(#, n)]])`
-/

namespace A058324.P16324542105352675290
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), Nat.choose p n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057849 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A058324.P16324542105352675290

/-! ## A058324.P2324137836412712676

`record[∏{p}[n+1, C(#%n, #)]*A057849(n+1)]`
-/

namespace A058324.P2324137836412712676
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f2 n), Nat.choose (p % n) p : ℕ) : ℤ) * A057849 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A058324.P2324137836412712676

/-! ## A058324.P12400204678156301667

`A057849(comp[A331044(n)])`
-/

namespace A058324.P12400204678156301667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331044 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057849 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A058324.P12400204678156301667

/-! ## A058324.P2437082923641080824

`A049202(A007821(n+1))`
-/

namespace A058324.P2437082923641080824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049202 (A007821 (n + 1)).toNat

end

end A058324.P2437082923641080824

/-!
# A058325: Primes for which A049076(p) = 9.

The programs for A058325, there is no canonical definition to state claims against.
-/

/-! ## A058325.P13491662348653701660

`A057850(comp[record[∑{p}[n, #]]])`
-/

namespace A058325.P13491662348653701660
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), p

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057850 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A058325.P13491662348653701660

/-! ## A058325.P13465424414478437142

`A057850(comp[∑{p}[n+1, C(#, n)]])`
-/

namespace A058325.P13465424414478437142
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), Nat.choose p n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057850 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A058325.P13465424414478437142

/-! ## A058325.P16519057797140784914

`record[∏{p}[n+1, C(#%n, #)]*A057850(n+1)]`
-/

namespace A058325.P16519057797140784914
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f2 n), Nat.choose (p % n) p : ℕ) : ℤ) * A057850 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A058325.P16519057797140784914

/-! ## A058325.P14976783117330575675

`A057850(comp[A103309(n)])`
-/

namespace A058325.P14976783117330575675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103309 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057850 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A058325.P14976783117330575675

/-! ## A058325.P9618008961410276802

`A057849(A007821(n+1))`
-/

namespace A058325.P9618008961410276802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057849 (A007821 (n + 1)).toNat

end

end A058325.P9618008961410276802

/-!
# A058326: Primes for which A049076(p) = 10.

The programs for A058326, there is no canonical definition to state claims against.
-/

/-! ## A058326.P5658030421899810734

`A057851(comp[record[∑{p}[n, #]]])`
-/

namespace A058326.P5658030421899810734
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), p

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057851 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A058326.P5658030421899810734

/-! ## A058326.P7737505100611341358

`A057851(comp[∑{p}[n+1, C(#, n)]])`
-/

namespace A058326.P7737505100611341358
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), Nat.choose p n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057851 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A058326.P7737505100611341358

/-! ## A058326.P5060880075519439505

`A057851(record[1-∑{p}[n+1, C(#, n)]+n])`
-/

namespace A058326.P5060880075519439505
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((∑ p ∈ Nat.primeFactors (f2 n), Nat.choose p n : ℕ) : ℤ) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057851 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A058326.P5060880075519439505

/-! ## A058326.P14721321876923111939

`record[∏{p}[n+1, C(#%n, #)]*A057851(n+1)]`
-/

namespace A058326.P14721321876923111939
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f2 n), Nat.choose (p % n) p : ℕ) : ℤ) * A057851 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A058326.P14721321876923111939

/-! ## A058326.P11830913779940304645

`A057851(comp[A103309(n)])`
-/

namespace A058326.P11830913779940304645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103309 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057851 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A058326.P11830913779940304645

/-!
# A058327: Primes for which A049076(p) = 11.

The programs for A058327, there is no canonical definition to state claims against.
-/

/-! ## A058327.P4163939242332026095

`A057847(lt[∑{p}[n, #], n])`
-/

namespace A058327.P4163939242332026095
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), p

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057847 (SequenceMachineLib.nth (fun j => f1 j < f3 j) n)

end

end A058327.P4163939242332026095

/-! ## A058327.P15350523472405802640

`A057847(comp[record[∑{p}[n, #]]])`
-/

namespace A058327.P15350523472405802640
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), p

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057847 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A058327.P15350523472405802640

/-! ## A058327.P17350341648741690844

`A057847(comp[∑{p}[n+1, C(#, n)]])`
-/

namespace A058327.P17350341648741690844
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), Nat.choose p n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057847 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A058327.P17350341648741690844

/-! ## A058327.P16374160079487060824

`record[∏{p}[n+1, C(#%n, #)]*A057847(n+1)]`
-/

namespace A058327.P16374160079487060824
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f2 n), Nat.choose (p % n) p : ℕ) : ℤ) * A057847 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A058327.P16374160079487060824

/-! ## A058327.P158078855138196907

`A057847(Δ[A051349(n)])`
-/

namespace A058327.P158078855138196907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051349 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057847 (f1 (n + 1) - f1 n).toNat

end

end A058327.P158078855138196907

/-!
# A058328: Primes for which A049076(p) = 12.

The programs for A058328, there is no canonical definition to state claims against.
-/

/-! ## A058328.P17426725160303237197

`A058332(comp[record[∑{p}[n, #]]])`
-/

namespace A058328.P17426725160303237197
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), p

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058332 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A058328.P17426725160303237197

/-! ## A058328.P4982691792881130271

`A058332(comp[∑{p}[n+1, C(#, n)]])`
-/

namespace A058328.P4982691792881130271
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), Nat.choose p n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058332 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A058328.P4982691792881130271

/-! ## A058328.P124580660061308036

`record[∏{p}[n+1, C(#%n, #)]*A058332(n+1)]`
-/

namespace A058328.P124580660061308036
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f2 n), Nat.choose (p % n) p : ℕ) : ℤ) * A058332 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A058328.P124580660061308036

/-! ## A058328.P6504147343882613082

`A057847(A007821(n+1))`
-/

namespace A058328.P6504147343882613082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057847 (A007821 (n + 1)).toNat

end

end A058328.P6504147343882613082

/-! ## A058328.P5387873160721333787

`A058332(A018252(n+1))`
-/

namespace A058328.P5387873160721333787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058332 (A018252 (n + 1)).toNat

end

end A058328.P5387873160721333787

/-!
# A058330: a(n) is smallest positive integer, distinct from any terms earlier in the sequence, such that (sum{k=1 to n}[a(k)]) divides (product{k=1 to n}[a(k)])*(sum{k=1 to n}[1/a(k)]).

The programs for A058330, there is no canonical definition to state claims against.
-/

/-! ## A058330.P6866119956589821011

`A125745(A125717(a(n-1)))` with `a(0)=1`
-/

namespace A058330.P6866119956589821011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A125745 (A125717 (a (n - 1)).toNat).toNat

end

end A058330.P6866119956589821011

/-! ## A058330.P5448494173310698446

`A034887(A061998(n))+A003188(n)`
-/

namespace A058330.P5448494173310698446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034887 (A061998 n).toNat + A003188 n

end

end A058330.P5448494173310698446

/-!
# A058331: a(n) = 2*n^2 + 1.

The programs for A058331, the canonical program `A058331.P11448505833250118096` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A058331 has offset 0).

The definition of A058331 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*n²+1` (program `A058331.P11448505833250118096`, by `A058331.P11448505833250118096.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A058331.P11448505833250118096

`2*n²+1`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A058331

/-- `2*n²+1` -/
def P11448505833250118096.Spec : Prop :=
  ∀ n, (P11448505833250118096.a n : ℤ) = A058331 n

theorem P11448505833250118096.correct : P11448505833250118096.Spec := by
  intro n
  simp only [A058331]

end A058331

/-! ## A058331.P17754030684938793901

`or(1, 2*n²)`
-/

namespace A058331.P17754030684938793901
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (2 * n ^ 2)

end

end A058331.P17754030684938793901

namespace A058331

/-- `or(1, 2*n²)` -/
def P17754030684938793901.Spec : Prop :=
  ∀ n, (P17754030684938793901.a n : ℤ) = A058331 n

end A058331

/-! ## A058331.P3290406917126175250

`xor(1, 2*n²)`
-/

namespace A058331.P3290406917126175250
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (2 * n ^ 2)

end

end A058331.P3290406917126175250

namespace A058331

/-- `xor(1, 2*n²)` -/
def P3290406917126175250.Spec : Prop :=
  ∀ n, (P3290406917126175250.a n : ℤ) = A058331 n

end A058331

/-! ## A058331.P3269357859863357754

`round(2/acot(n)²)`
-/

namespace A058331.P3269357859863357754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (2 / SequenceMachineLib.acot (n : ℝ) ^ 2)

end

end A058331.P3269357859863357754

namespace A058331

/-- `round(2/acot(n)²)` -/
def P3269357859863357754.Spec : Prop :=
  ∀ n, P3269357859863357754.a n = A058331 n

end A058331

/-! ## A058331.P10603875958868420542

`ceil(2*(n²-cos(2)))`
-/

namespace A058331.P10603875958868420542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈2 * ((n ^ 2 : ℝ) - Real.cos (2 : ℝ))⌉

end

end A058331.P10603875958868420542

namespace A058331

/-- `ceil(2*(n²-cos(2)))` -/
def P10603875958868420542.Spec : Prop :=
  ∀ n, P10603875958868420542.a n = A058331 n

end A058331

/-! ## A058331.P15204934261134533047

`floor(2*(n²-cos(3)))`
-/

namespace A058331.P15204934261134533047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊2 * ((n ^ 2 : ℝ) - Real.cos (3 : ℝ))⌋

end

end A058331.P15204934261134533047

namespace A058331

/-- `floor(2*(n²-cos(3)))` -/
def P15204934261134533047.Spec : Prop :=
  ∀ n, P15204934261134533047.a n = A058331 n

end A058331

/-! ## A058331.P8862919013091065611

`round(2*(n²-cos(2)))`
-/

namespace A058331.P8862919013091065611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (2 * ((n ^ 2 : ℝ) - Real.cos (2 : ℝ)))

end

end A058331.P8862919013091065611

namespace A058331

/-- `round(2*(n²-cos(2)))` -/
def P8862919013091065611.Spec : Prop :=
  ∀ n, P8862919013091065611.a n = A058331 n

end A058331

/-! ## A058331.P12302369387494806845

`ceil(2*(n²-tan(3)))`
-/

namespace A058331.P12302369387494806845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈2 * ((n ^ 2 : ℝ) - Real.tan (3 : ℝ))⌉

end

end A058331.P12302369387494806845

namespace A058331

/-- `ceil(2*(n²-tan(3)))` -/
def P12302369387494806845.Spec : Prop :=
  ∀ n, P12302369387494806845.a n = A058331 n

end A058331

/-! ## A058331.P11665129546667638621

`ceil(2*(n²-cot(2)))`
-/

namespace A058331.P11665129546667638621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈2 * ((n ^ 2 : ℝ) - Real.cot (2 : ℝ))⌉

end

end A058331.P11665129546667638621

namespace A058331

/-- `ceil(2*(n²-cot(2)))` -/
def P11665129546667638621.Spec : Prop :=
  ∀ n, P11665129546667638621.a n = A058331 n

end A058331

/-! ## A058331.P13257255997978174546

`round(2*(n²-cot(2)))`
-/

namespace A058331.P13257255997978174546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (2 * ((n ^ 2 : ℝ) - Real.cot (2 : ℝ)))

end

end A058331.P13257255997978174546

namespace A058331

/-- `round(2*(n²-cot(2)))` -/
def P13257255997978174546.Spec : Prop :=
  ∀ n, P13257255997978174546.a n = A058331 n

end A058331

/-! ## A058331.P17571169543907503224

`ceil(1/acot(2*n²))`
-/

namespace A058331.P17571169543907503224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈1 / SequenceMachineLib.acot (2 * n ^ 2 : ℝ)⌉

end

end A058331.P17571169543907503224

namespace A058331

/-- `ceil(1/acot(2*n²))` -/
def P17571169543907503224.Spec : Prop :=
  ∀ n, P17571169543907503224.a n = A058331 n

end A058331

/-! ## A058331.P11513258538939279853

`round(2/acot(n/acot(n)))`
-/

namespace A058331.P11513258538939279853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (2 / SequenceMachineLib.acot ((n : ℝ) / SequenceMachineLib.acot (n : ℝ)))

end

end A058331.P11513258538939279853

namespace A058331

/-- `round(2/acot(n/acot(n)))` -/
def P11513258538939279853.Spec : Prop :=
  ∀ n, P11513258538939279853.a n = A058331 n

end A058331

/-! ## A058331.P10554408564407003394

`∑[a(n-1)+4]` with `a(0)=1, a(1)=2`
-/

namespace A058331.P10554408564407003394
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  f1 (n - 1) + 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A058331.P10554408564407003394

namespace A058331

/-- `∑[a(n-1)+4]` -/
def P10554408564407003394.Spec : Prop :=
  ∀ n, (P10554408564407003394.a n : ℤ) = A058331 n

end A058331

/-! ## A058331.P9535786380640964587

`abs(xor(n*2*n, -1))`
-/

namespace A058331.P9535786380640964587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (n * (2 * n) : ℤ) (-1)|

end

end A058331.P9535786380640964587

namespace A058331

/-- `abs(xor(n*2*n, -1))` -/
def P9535786380640964587.Spec : Prop :=
  ∀ n, P9535786380640964587.a n = A058331 n

end A058331

/-! ## A058331.P7976514249949454121

`-xor(n*2*n, -1)`
-/

namespace A058331.P7976514249949454121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor (n * (2 * n) : ℤ) (-1)

end

end A058331.P7976514249949454121

namespace A058331

/-- `-xor(n*2*n, -1)` -/
def P7976514249949454121.Spec : Prop :=
  ∀ n, P7976514249949454121.a n = A058331 n

end A058331

/-! ## A058331.P6911335089732337882

`∑[record[(2*n)^(n%2)]]`
-/

namespace A058331.P6911335089732337882
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n) ^ (n % 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A058331.P6911335089732337882

namespace A058331

/-- `∑[record[(2*n)^(n%2)]]` -/
def P6911335089732337882.Spec : Prop :=
  ∀ n, (P6911335089732337882.a n : ℤ) = A058331 n

end A058331

/-! ## A058331.P3362093800614725454

`floor(n/acot(2*n)+ϕ)`
-/

namespace A058331.P3362093800614725454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) / SequenceMachineLib.acot (2 * n : ℝ) + Real.goldenRatio⌋

end

end A058331.P3362093800614725454

namespace A058331

/-- `floor(n/acot(2*n)+ϕ)` -/
def P3362093800614725454.Spec : Prop :=
  ∀ n, P3362093800614725454.a n = A058331 n

end A058331

/-! ## A058331.P2772744694347308904

`A005408(n*n)`
-/

namespace A058331.P2772744694347308904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (n * n)

end

end A058331.P2772744694347308904

namespace A058331

/-- `A005408(n*n)` -/
def P2772744694347308904.Spec : Prop :=
  ∀ n, P2772744694347308904.a n = A058331 n

end A058331

/-!
# A058332: Primes p whose order of primeness A078442(p) is at least 11.

The programs for A058332, there is no canonical definition to state claims against.
-/

/-! ## A058332.P5994357681545609644

`A057847(p?[comp[n²]])`
-/

namespace A058332.P5994357681545609644
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057847 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A058332.P5994357681545609644

/-! ## A058332.P13037568094686780141

`A057847(Δ[A007504(n)])`
-/

namespace A058332.P13037568094686780141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057847 (f1 (n + 1) - f1 n).toNat

end

end A058332.P13037568094686780141

/-! ## A058332.P82789285130921697

`A057847(A000040(n+1))`
-/

namespace A058332.P82789285130921697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057847 (A000040 (n + 1)).toNat

end

end A058332.P82789285130921697

/-! ## A058332.P4181618845609301020

`A057851(A006450(n+1))`
-/

namespace A058332.P4181618845609301020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057851 (A006450 (n + 1)).toNat

end

end A058332.P4181618845609301020

/-! ## A058332.P15437823835376682382

`A057850(A038580(n+1))`
-/

namespace A058332.P15437823835376682382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057850 (A038580 (n + 1)).toNat

end

end A058332.P15437823835376682382

/-!
# A058333: Number of 3 X 3 matrices with elements from [0,...,(n-1)] satisfying the condition that the middle element of each row or column is the difference of the two end elements (in absolute value).

The programs for A058333, the canonical program `A058333.P8325011116935619297` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A058333 has offset 1).

The definition of A058333 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A058333.P8325011116935619297

`(n+1)²²-A072819(n)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A058333

/-- `(n+1)²²-A072819(n)` -/
def P8325011116935619297.Spec : Prop :=
  ∀ n, P8325011116935619297.a n = A058333 (n + 1)

theorem P8325011116935619297.correct : P8325011116935619297.Spec := by
  intro n
  simp only [A058333, Nat.add_sub_cancel]

end A058333

/-! ## A058333.P5567301511469943216

`∑[A000326(2*n)+∑[(2*n+1)²]]`
-/

namespace A058333.P5567301511469943216
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000326 (2 * n) + ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A058333.P5567301511469943216

namespace A058333

/-- `∑[A000326(2*n)+∑[(2*n+1)²]]` -/
def P5567301511469943216.Spec : Prop :=
  ∀ n, P5567301511469943216.a n = A058333 (n + 1)

end A058333

/-! ## A058333.P17277964971946999835

`A132112(n)+A051797(n)`
-/

namespace A058333.P17277964971946999835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132112 n + A051797 n

end

end A058333.P17277964971946999835

namespace A058333

/-- `A132112(n)+A051797(n)` -/
def P17277964971946999835.Spec : Prop :=
  ∀ n, P17277964971946999835.a n = A058333 (n + 1)

end A058333

/-! ## A058333.P17984531559096764409

`A071245(n)+A063493(n+1)`
-/

namespace A058333.P17984531559096764409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071245 n + A063493 (n + 1)

end

end A058333.P17984531559096764409

namespace A058333

/-- `A071245(n)+A063493(n+1)` -/
def P17984531559096764409.Spec : Prop :=
  ∀ n, P17984531559096764409.a n = A058333 (n + 1)

end A058333

/-! ## A058333.P12281341462379886812

`A135713(n)+A006324(n+1)`
-/

namespace A058333.P12281341462379886812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135713 n + A006324 (n + 1)

end

end A058333.P12281341462379886812

namespace A058333

/-- `A135713(n)+A006324(n+1)` -/
def P12281341462379886812.Spec : Prop :=
  ∀ n, P12281341462379886812.a n = A058333 (n + 1)

end A058333

/-! ## A058333.P12198765577216406054

`∑[A100504(n)+A056220(2*n)]`
-/

namespace A058333.P12198765577216406054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100504 n + A056220 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A058333.P12198765577216406054

namespace A058333

/-- `∑[A100504(n)+A056220(2*n)]` -/
def P12198765577216406054.Spec : Prop :=
  ∀ n, P12198765577216406054.a n = A058333 (n + 1)

end A058333

/-! ## A058333.P14830320463649589453

`A288961(n+1)+A100186(n+1)`
-/

namespace A058333.P14830320463649589453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288961 (n + 1) + A100186 (n + 1)

end

end A058333.P14830320463649589453

namespace A058333

/-- `A288961(n+1)+A100186(n+1)` -/
def P14830320463649589453.Spec : Prop :=
  ∀ n, P14830320463649589453.a n = A058333 (n + 1)

end A058333

/-! ## A058333.P2657546766877926638

`A002717(2*n)+A001752(2*n)`
-/

namespace A058333.P2657546766877926638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002717 (2 * n) + A001752 (2 * n)

end

end A058333.P2657546766877926638

namespace A058333

/-- `A002717(2*n)+A001752(2*n)` -/
def P2657546766877926638.Spec : Prop :=
  ∀ n, P2657546766877926638.a n = A058333 (n + 1)

end A058333

/-! ## A058333.P18165533996378357847

`A000583(n+1)+n²-A071270(n)`
-/

namespace A058333.P18165533996378357847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000583 (n + 1) + ((n ^ 2 : ℤ) - A071270 n)

end

end A058333.P18165533996378357847

namespace A058333

/-- `A000583(n+1)+n²-A071270(n)` -/
def P18165533996378357847.Spec : Prop :=
  ∀ n, P18165533996378357847.a n = A058333 (n + 1)

end A058333

/-! ## A058333.P10052144297432148429

`A002717(2*n)+∑[A000292(2*n+1)]`
-/

namespace A058333.P10052144297432148429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002717 (2 * n) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A058333.P10052144297432148429

namespace A058333

/-- `A002717(2*n)+∑[A000292(2*n+1)]` -/
def P10052144297432148429.Spec : Prop :=
  ∀ n, P10052144297432148429.a n = A058333 (n + 1)

end A058333

/-! ## A058333.P13998068432493742061

`A014820(n)+A007290(A004277(n+1))`
-/

namespace A058333.P13998068432493742061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014820 n + A007290 (A004277 (n + 1)).toNat

end

end A058333.P13998068432493742061

namespace A058333

/-- `A014820(n)+A007290(A004277(n+1))` -/
def P13998068432493742061.Spec : Prop :=
  ∀ n, P13998068432493742061.a n = A058333 (n + 1)

end A058333

/-! ## A058333.P17175649241638556123

`A212133(n+1)+A264854(n+1)-A002817(n+1)`
-/

namespace A058333.P17175649241638556123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212133 (n + 1) + (A264854 (n + 1) - A002817 (n + 1))

end

end A058333.P17175649241638556123

namespace A058333

/-- `A212133(n+1)+A264854(n+1)-A002817(n+1)` -/
def P17175649241638556123.Spec : Prop :=
  ∀ n, P17175649241638556123.a n = A058333 (n + 1)

end A058333

/-!
# A058334: Numbers n such that the trinomial x^n + x + 1 is irreducible over GF(5).

The programs for A058334, there is no canonical definition to state claims against.
-/

/-! ## A058334.P1789015196656999329

`lt[n, A196020(A348872(n+2))]`
-/

namespace A058334.P1789015196656999329
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196020 (A348872 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A058334.P1789015196656999329

/-! ## A058334.P3256899941036367996

`lt[n², A047785(A038664(n+1))]`
-/

namespace A058334.P3256899941036367996
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047785 (A038664 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A058334.P3256899941036367996

/-! ## A058334.P8585963969635334456

`record[A307161(2*(n+1))%A354039(n+1)]`
-/

namespace A058334.P8585963969635334456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A307161 (2 * (n + 1))) (A354039 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A058334.P8585963969635334456

/-! ## A058334.P324453678355815770

`eq[A000120(A047960(n)), A023193(n+1)]`
-/

namespace A058334.P324453678355815770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A047960 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023193 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A058334.P324453678355815770

/-! ## A058334.P12193923845224469060

`eq[A028592(A040976(n+1)), A028616(n)]`
-/

namespace A058334.P12193923845224469060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028592 (A040976 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028616 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A058334.P12193923845224469060

/-!
# A058338: Number of digraphs with indegree = outdegree at each vertex, or Eulerian digraphs (including disconnected graphs) with n nodes.

The programs for A058338, there is no canonical definition to state claims against.
-/

/-! ## A058338.P13552565004522803717

`A089340(a(n-1))/2` with `a(0)=1, a(1)=1`
-/

namespace A058338.P13552565004522803717
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n a =>
  (A089340 (SequenceMachineLib.roundAway (a (n - 1))).toNat : ℚ) / 2

end

end A058338.P13552565004522803717

/-! ## A058338.P11745702353155043508

`A007998(A111281(n))`
-/

namespace A058338.P11745702353155043508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007998 (A111281 n).toNat

end

end A058338.P11745702353155043508

/-!
# A058339: Number of solutions to 1 + phi(x) = prime(n), where phi is A000010.

The programs for A058339, there is no canonical definition to state claims against.
-/

/-! ## A058339.P10499518528838892961

`A210500(n+1)+A210501(n+1)`
-/

namespace A058339.P10499518528838892961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210500 (n + 1) + A210501 (n + 1)

end

end A058339.P10499518528838892961

/-! ## A058339.P5481452410903259246

`A066412(p?[comp[n²]])`
-/

namespace A058339.P5481452410903259246
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066412 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A058339.P5481452410903259246

/-! ## A058339.P8268669874109332794

`A066412(Δ[A007504(n)])`
-/

namespace A058339.P8268669874109332794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066412 (f1 (n + 1) - f1 n).toNat

end

end A058339.P8268669874109332794

/-! ## A058339.P5374151810994810627

`A014197(A006093(n+1))`
-/

namespace A058339.P5374151810994810627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014197 (A006093 (n + 1)).toNat

end

end A058339.P5374151810994810627

/-! ## A058339.P8311935669911331563

`A066412(A000040(n+1))`
-/

namespace A058339.P8311935669911331563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066412 (A000040 (n + 1)).toNat

end

end A058339.P8311935669911331563

/-! ## A058339.P6332656253037117955

`A066412(A006005(n+1))`
-/

namespace A058339.P6332656253037117955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066412 (A006005 (n + 1)).toNat

end

end A058339.P6332656253037117955

/-! ## A058339.P6418020374020331113

`A066412(A008578(n+2))`
-/

namespace A058339.P6418020374020331113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066412 (A008578 (n + 2)).toNat

end

end A058339.P6418020374020331113

/-! ## A058339.P17174834897308584538

`A066412(A075643(n+2))`
-/

namespace A058339.P17174834897308584538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066412 (A075643 (n + 2)).toNat

end

end A058339.P17174834897308584538

/-! ## A058339.P15023200133227298626

`A066412(A182986(n+2))`
-/

namespace A058339.P15023200133227298626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066412 (A182986 (n + 2)).toNat

end

end A058339.P15023200133227298626

/-! ## A058339.P18419425649341103659

`A066412(sqrt(A001248(n+1)))`
-/

namespace A058339.P18419425649341103659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066412 (SequenceMachineLib.roundAway (Real.sqrt (A001248 (n + 1) : ℝ))).toNat

end

end A058339.P18419425649341103659

/-! ## A058339.P14223958979215518520

`A014197(Δ[A007504(n)]-1)`
-/

namespace A058339.P14223958979215518520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014197 (f1 (n + 1) - f1 n - 1).toNat

end

end A058339.P14223958979215518520

/-! ## A058339.P6509624908088713273

`A014197(record[A000010(n+1)])`
-/

namespace A058339.P6509624908088713273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014197 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A058339.P6509624908088713273

/-! ## A058339.P8918689974783119355

`A066412(record[A039649(n+1)])`
-/

namespace A058339.P8918689974783119355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039649 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066412 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A058339.P8918689974783119355

/-! ## A058339.P15598936977107757126

`A066412(record[A039650(n+1)])`
-/

namespace A058339.P15598936977107757126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039650 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066412 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A058339.P15598936977107757126

/-! ## A058339.P14192060007473669090

`A014197(record[A056737(n+2)])`
-/

namespace A058339.P14192060007473669090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056737 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014197 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A058339.P14192060007473669090

/-! ## A058339.P11405875400672025270

`A066412(record[A006530(n+2)])`
-/

namespace A058339.P11405875400672025270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066412 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A058339.P11405875400672025270

/-! ## A058339.P9364831369586225946

`A066412(record[A020639(n+2)])`
-/

namespace A058339.P9364831369586225946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066412 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A058339.P9364831369586225946

/-! ## A058339.P1207129958936807248

`A014197(p?[A014681(n)]-1)`
-/

namespace A058339.P1207129958936807248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014197 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 1).toNat

end

end A058339.P1207129958936807248

/-! ## A058339.P7661062080863669058

`A014197(A000040(n+1)-1)`
-/

namespace A058339.P7661062080863669058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014197 (A000040 (n + 1) - 1).toNat

end

end A058339.P7661062080863669058

/-! ## A058339.P12996996933943886242

`A014197(A086801(n+1)+2)`
-/

namespace A058339.P12996996933943886242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014197 (A086801 (n + 1) + 2).toNat

end

end A058339.P12996996933943886242

/-!
# A058340: Primes p such that phi(x) = p-1 has only 2 solutions, namely x = p and x = 2p.

The programs for A058340, there is no canonical definition to state claims against.
-/

/-! ## A058340.P4656989828389523887

`p?[A007366(n+2)+1]`
-/

namespace A058340.P4656989828389523887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007366 (n + 2) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A058340.P4656989828389523887

/-! ## A058340.P16411468858074502346

`p?[A070305(n+2)]`
-/

namespace A058340.P16411468858074502346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070305 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A058340.P16411468858074502346

/-! ## A058340.P5721710488338886331

`filter[A070305(n+2), A010051(#)]`
-/

namespace A058340.P5721710488338886331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070305 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A058340.P5721710488338886331

/-! ## A058340.P1036926507808117187

`∩[A004139(n+1), A070305(n+1)]`
-/

namespace A058340.P1036926507808117187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070305 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A058340.P1036926507808117187

/-! ## A058340.P15161801474800260378

`∩[A006005(n+1), A070305(n+1)]`
-/

namespace A058340.P15161801474800260378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070305 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A058340.P15161801474800260378

/-! ## A058340.P3053938950829892840

`∩[A034849(n+1), A070305(n+1)]`
-/

namespace A058340.P3053938950829892840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034849 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070305 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A058340.P3053938950829892840

/-! ## A058340.P14795960192706754583

`∩[A065091(n+1), A070305(n+1)]`
-/

namespace A058340.P14795960192706754583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070305 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A058340.P14795960192706754583

/-! ## A058340.P15887730320062450983

`∩[A070305(n+1), A104381(n+1)]`
-/

namespace A058340.P15887730320062450983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070305 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104381 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A058340.P15887730320062450983

/-! ## A058340.P6924059969232533258

`∩[A070305(n+1), A122259(n+1)]`
-/

namespace A058340.P6924059969232533258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070305 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122259 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A058340.P6924059969232533258

/-! ## A058340.P8241164601901207277

`∩[A070305(n+1), A140461(n+1)]`
-/

namespace A058340.P8241164601901207277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070305 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140461 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A058340.P8241164601901207277

/-! ## A058340.P3466360078752420830

`∩[A140475(n+1), A070305(n+1)]`
-/

namespace A058340.P3466360078752420830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140475 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070305 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A058340.P3466360078752420830

/-! ## A058340.P15967112607454450229

`∩[A070305(n+1), A157996(n+1)]`
-/

namespace A058340.P15967112607454450229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070305 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157996 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A058340.P15967112607454450229

/-! ## A058340.P9859645242591248431

`∩[A070305(n+1), A210494(n+1)]`
-/

namespace A058340.P9859645242591248431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070305 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210494 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A058340.P9859645242591248431

/-! ## A058340.P5824371667658746209

`∩[A351398(n+1), A070305(n+1)]`
-/

namespace A058340.P5824371667658746209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351398 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070305 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A058340.P5824371667658746209

/-! ## A058340.P6263816314453849010

`∩[A070305(n+1), A216495(n+1)]`
-/

namespace A058340.P6263816314453849010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070305 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216495 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A058340.P6263816314453849010

/-! ## A058340.P3385965084480001633

`p?[A303745(n+1)+1]`
-/

namespace A058340.P3385965084480001633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303745 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A058340.P3385965084480001633

/-!
# A058341: Primes p such that phi(x) = p - 1 has more than 2 solutions.

The programs for A058341, there is no canonical definition to state claims against.
-/

/-! ## A058341.P8308685915325108765

`A138539(n+2)`
-/

namespace A058341.P8308685915325108765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138539 (n + 2)

end

end A058341.P8308685915325108765

/-! ## A058341.P9812508971971532223

`record[A138539(3*floor(n/2)-(n-2))]`
-/

namespace A058341.P9812508971971532223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138539 (3 * ⌊(n : ℚ) / 2⌋ - ((n : ℤ) - 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A058341.P9812508971971532223

/-! ## A058341.P7685270773400276153

`A065091(lt[2, A058339(n+1)])`
-/

namespace A058341.P7685270773400276153
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058339 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A058341.P7685270773400276153

/-! ## A058341.P16480568479101150086

`p?[lt[2, A014197(n+1)]+2]`
-/

namespace A058341.P16480568479101150086
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014197 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A058341.P16480568479101150086

/-! ## A058341.P13189926930286054570

`A065091(lt[2, A175177(n+1)])`
-/

namespace A058341.P13189926930286054570
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175177 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A058341.P13189926930286054570

/-! ## A058341.P18013963892508008443

`A000040(lt[2, A175177(n+1)]+1)`
-/

namespace A058341.P18013963892508008443
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175177 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A058341.P18013963892508008443

/-! ## A058341.P12282871783592462506

`p?[C(n+2, and(1, n))*A323169(n+1)]`
-/

namespace A058341.P12282871783592462506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 2) (Nat.land 1 n) : ℤ) * A323169 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A058341.P12282871783592462506

/-! ## A058341.P894203797147301879

`p?[A049283(n+1)*A323169(n+1)]`
-/

namespace A058341.P894203797147301879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049283 (n + 1) * A323169 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A058341.P894203797147301879

/-! ## A058341.P3362717057598791817

`p?[A061026(n+1)*A323169(n+1)]`
-/

namespace A058341.P3362717057598791817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061026 (n + 1) * A323169 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A058341.P3362717057598791817

/-! ## A058341.P5614764357261311183

`p?[A109613(n+1)*A323169(n+1)]`
-/

namespace A058341.P5614764357261311183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 (n + 1) * A323169 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A058341.P5614764357261311183

/-!
# A058342: De Bruijn sequence of order 6: every window of size 6, [a(j),a(j+1),...,a(j+5)], shows a different 6-tuple, for 0 <= j <= 63.

The programs for A058342, there is no canonical definition to state claims against.
-/

/-! ## A058342.P11323869988577917979

`A169671(n-A179278(a(n-1)+1))` with `a(0)=1`
-/

namespace A058342.P11323869988577917979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A169671 ((n : ℤ) - A179278 (a (n - 1) + 1).toNat).toNat

end

end A058342.P11323869988577917979

/-!
# A058343: Number of connected 4-regular simple graphs on n vertices with girth at least 5.

The programs for A058343, there is no canonical definition to state claims against.
-/

/-! ## A058343.P298866126974170997

`A184945(n)+A058348(n)`
-/

namespace A058343.P298866126974170997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184945 n + A058348 n

end

end A058343.P298866126974170997

/-! ## A058343.P5813616137458754984

`A184945(n)+A184946(n)^n`
-/

namespace A058343.P5813616137458754984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184945 n + A184946 n ^ n

end

end A058343.P5813616137458754984

/-! ## A058343.P1868865352252264358

`A184945(n)+A098108(A065610(n))`
-/

namespace A058343.P1868865352252264358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184945 n + A098108 (A065610 n).toNat

end

end A058343.P1868865352252264358

/-! ## A058343.P6472492965921735174

`A280457(A280455(n+1))+A184945(n)`
-/

namespace A058343.P6472492965921735174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280457 (A280455 (n + 1)).toNat + A184945 n

end

end A058343.P6472492965921735174

/-! ## A058343.P16208751786582183894

`A058348(n)-(A185246(n)-A184945(n))`
-/

namespace A058343.P16208751786582183894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058348 n - (A185246 n - A184945 n)

end

end A058343.P16208751786582183894

/-!
# A058344: Difference between the sum of the odd aliquot divisors of n and the sum of the even aliquot divisors of n.

The programs for A058344, the canonical program `A058344.P16644811011832697826` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A058344 has offset 1).

The definition of A058344 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A058344.P1105983914993990274

`A002129(n+1)-∑[(2*n+1)*(1-4/2)^n]`
-/

namespace A058344.P1105983914993990274
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℚ) * (1 - (4 : ℚ) / 2) ^ n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002129 (n + 1) : ℚ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A058344.P1105983914993990274

namespace A058344

/-- `A002129(n+1)-∑[(2*n+1)*(1-4/2)^n]` -/
def P1105983914993990274.Spec : Prop :=
  ∀ n, P1105983914993990274.a n = (A058344 (n + 1) : ℚ)

end A058344

/-! ## A058344.P2648474787707915213

`A335022(n+1)+A057427(n)`
-/

namespace A058344.P2648474787707915213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335022 (n + 1) + A057427 n

end

end A058344.P2648474787707915213

namespace A058344

/-- `A335022(n+1)+A057427(n)` -/
def P2648474787707915213.Spec : Prop :=
  ∀ n, P2648474787707915213.a n = A058344 (n + 1)

end A058344

/-! ## A058344.P17464972545219554390

`A335022(n+1)-A057428(n)`
-/

namespace A058344.P17464972545219554390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335022 (n + 1) - A057428 n

end

end A058344.P17464972545219554390

namespace A058344

/-- `A335022(n+1)-A057428(n)` -/
def P17464972545219554390.Spec : Prop :=
  ∀ n, P17464972545219554390.a n = A058344 (n + 1)

end A058344

/-! ## A058344.P16644811011832697826

`2*A091570(n+1)-A001065(n+1)`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A058344

/-- `2*A091570(n+1)-A001065(n+1)` -/
def P16644811011832697826.Spec : Prop :=
  ∀ n, P16644811011832697826.a n = A058344 (n + 1)

theorem P16644811011832697826.correct : P16644811011832697826.Spec := by
  intro n
  simp only [A058344, Nat.add_sub_cancel]

end A058344

/-! ## A058344.P6820830248491117242

`∑{d}[n+1, A002129(#)*A157658((n+1)/#)]`
-/

namespace A058344.P6820830248491117242
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A002129 d * A157658 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A058344.P6820830248491117242

namespace A058344

/-- `∑{d}[n+1, A002129(#)*A157658((n+1)/#)]` -/
def P6820830248491117242.Spec : Prop :=
  ∀ n, P6820830248491117242.a n = A058344 (n + 1)

end A058344

/-! ## A058344.P7337418694991194674

`∑{d}[n+1, A296066(#)*A328154((n+1)/#)]`
-/

namespace A058344.P7337418694991194674
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A296066 d * A328154 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A058344.P7337418694991194674

namespace A058344

/-- `∑{d}[n+1, A296066(#)*A328154((n+1)/#)]` -/
def P7337418694991194674.Spec : Prop :=
  ∀ n, P7337418694991194674.a n = A058344 (n + 1)

end A058344

/-! ## A058344.P12643457642046450035

`A001057(n)-(A333505(n+1)+A024919(n+1))`
-/

namespace A058344.P12643457642046450035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 n - (A333505 (n + 1) + A024919 (n + 1))

end

end A058344.P12643457642046450035

namespace A058344

/-- `A001057(n)-(A333505(n+1)+A024919(n+1))` -/
def P12643457642046450035.Spec : Prop :=
  ∀ n, P12643457642046450035.a n = A058344 (n + 1)

end A058344

/-! ## A058344.P8906429878342014912

`A325937(n+1)+A335022(n+1)-A335021(n+1)`
-/

namespace A058344.P8906429878342014912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325937 (n + 1) + (A335022 (n + 1) - A335021 (n + 1))

end

end A058344.P8906429878342014912

namespace A058344

/-- `A325937(n+1)+A335022(n+1)-A335021(n+1)` -/
def P8906429878342014912.Spec : Prop :=
  ∀ n, P8906429878342014912.a n = A058344 (n + 1)

end A058344

/-! ## A058344.P16800962571194437535

`A038608(n+1)+A002129(n+1)`
-/

namespace A058344.P16800962571194437535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038608 (n + 1) + A002129 (n + 1)

end

end A058344.P16800962571194437535

namespace A058344

/-- `A038608(n+1)+A002129(n+1)` -/
def P16800962571194437535.Spec : Prop :=
  ∀ n, P16800962571194437535.a n = A058344 (n + 1)

end A058344

/-! ## A058344.P3059030905675415912

`A274922(n+1)+A002129(n+1)`
-/

namespace A058344.P3059030905675415912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274922 (n + 1) + A002129 (n + 1)

end

end A058344.P3059030905675415912

namespace A058344

/-- `A274922(n+1)+A002129(n+1)` -/
def P3059030905675415912.Spec : Prop :=
  ∀ n, P3059030905675415912.a n = A058344 (n + 1)

end A058344

/-! ## A058344.P18434450814742357222

`A038608(n+1)-∑{d}[n+1, A038608(#)]`
-/

namespace A058344.P18434450814742357222
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038608 (n + 1) - ∑ d ∈ Nat.divisors (f1 n), A038608 d

end

end A058344.P18434450814742357222

namespace A058344

/-- `A038608(n+1)-∑{d}[n+1, A038608(#)]` -/
def P18434450814742357222.Spec : Prop :=
  ∀ n, P18434450814742357222.a n = A058344 (n + 1)

end A058344

/-!
# A058345: a(1) = 1; a(n+1) = lcm(Sum_{k=1..n} a(k), Product_{k=1..n} a(k)).

The programs for A058345, there is no canonical definition to state claims against.
-/

/-! ## A058345.P9742902385141655166

`∏[A001580(a(n-1))]` with `a(0)=1, a(1)=1, a(2)=2, a(3)=2, a(4)=2`
-/

namespace A058345.P9742902385141655166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2, 2, 2] fun n f1 =>
  A001580 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A058345.P9742902385141655166

/-! ## A058345.P13623385869720782134

`∏[A227368(A098523(n)!)]`
-/

namespace A058345.P13623385869720782134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227368 (Nat.factorial (A098523 n).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A058345.P13623385869720782134

/-! ## A058345.P8106969767058051307

`∏[A117542(∏[A117592(n)])]`
-/

namespace A058345.P8106969767058051307
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117592 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117542 (∏ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A058345.P8106969767058051307

/-!
# A058346: a(1) = 1; a(n+1) = LCM( sum{k=1 to n}[a(k)], (product{k=1 to n}[a(k)])*(sum{k=1 to n}[1/a(k)]) ).

The programs for A058346, there is no canonical definition to state claims against.
-/

/-! ## A058346.P14213331007654860364

`A368156(ceil(sqrt((n+2)^n)))`
-/

namespace A058346.P14213331007654860364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368156 ⌈Real.sqrt ((n + 2) ^ n : ℝ)⌉.toNat

end

end A058346.P14213331007654860364

/-!
# A058347: Array T(n,k), n,k nonnegative: the total number of checks required by a "double-support" algorithm to find out which rows and columns of each of the n by k zero-one matrices are nonzero.

The programs for A058347, there is no canonical definition to state claims against.
-/

/-! ## A058347.P14975045482775182750

`A122313(A058547(n))`
-/

namespace A058347.P14975045482775182750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122313 (A058547 n).toNat

end

end A058347.P14975045482775182750

/-! ## A058347.P12988008557200789554

`A193414(A008518(n))-1`
-/

namespace A058347.P12988008557200789554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193414 (A008518 n).toNat - 1

end

end A058347.P12988008557200789554

/-! ## A058347.P8637520627149273597

`A350745(n)-A000005(A034932(n)!)`
-/

namespace A058347.P8637520627149273597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350745 n - A000005 (Nat.factorial (A034932 n).toNat)

end

end A058347.P8637520627149273597

/-! ## A058347.P6919859331541819472

`A001221(A156950(n))*A202549(n+1)`
-/

namespace A058347.P6919859331541819472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A156950 n).toNat * A202549 (n + 1)

end

end A058347.P6919859331541819472

/-! ## A058347.P6343302820686921327

`A001221(A156950(n))*A268056(n+1)`
-/

namespace A058347.P6343302820686921327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A156950 n).toNat * A268056 (n + 1)

end

end A058347.P6343302820686921327

/-!
# A058348: Number of connected 4-regular simple graphs on n vertices with girth at least 6.

The programs for A058348, there is no canonical definition to state claims against.
-/

/-! ## A058348.P4584708661640183769

`floor(A184946(n)+acot(n))`
-/

namespace A058348.P4584708661640183769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A184946 n : ℝ) + SequenceMachineLib.acot (n : ℝ)⌋

end

end A058348.P4584708661640183769

/-! ## A058348.P6484289834038394971

`A184946(a(floor(n/2))+n)` with `a(0)=1`
-/

namespace A058348.P6484289834038394971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A184946 (a ⌊(n : ℚ) / 2⌋.toNat + (n : ℤ)).toNat

end

end A058348.P6484289834038394971

/-! ## A058348.P8034548738845977167

`A184946(xor(n, a(floor(n/2))))` with `a(0)=1, a(1)=0`
-/

namespace A058348.P8034548738845977167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A184946 (Int.xor (n : ℤ) (a ⌊(n : ℚ) / 2⌋.toNat)).toNat

end

end A058348.P8034548738845977167

/-! ## A058348.P15388104987229266211

`A184946(n)+A000007(n)`
-/

namespace A058348.P15388104987229266211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184946 n + A000007 n

end

end A058348.P15388104987229266211

/-! ## A058348.P14074822402815693204

`A184946(n)+A088157(n)`
-/

namespace A058348.P14074822402815693204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184946 n + A088157 n

end

end A058348.P14074822402815693204

/-!
# A058349: Number of connected labeled series-parallel posets on n nodes.

The programs for A058349, there is no canonical definition to state claims against.
-/

/-! ## A058349.P13797329341820496431

`A048172(n+1)-A048174(n+1)%A048172(n+1)`
-/

namespace A058349.P13797329341820496431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048172 (n + 1) - Int.tmod (A048174 (n + 1)) (A048172 (n + 1))

end

end A058349.P13797329341820496431

/-! ## A058349.P6509853782044771216

`record[A392857(n)]`
-/

namespace A058349.P6509853782044771216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392857 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A058349.P6509853782044771216

/-! ## A058349.P1473830482458706928

`A392857(∑[n+1]+1)`
-/

namespace A058349.P1473830482458706928
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392857 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A058349.P1473830482458706928

/-! ## A058349.P7648414018274268075

`A048172(n+1)-A048174(n+1)%A048164(n)`
-/

namespace A058349.P7648414018274268075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048172 (n + 1) - Int.tmod (A048174 (n + 1)) (A048164 n)

end

end A058349.P7648414018274268075

/-!
# A058351: Partial sums of A000084.

The programs for A058351, there is no canonical definition to state claims against.
-/

/-! ## A058351.P7382770522226078212

`A000084(n)+a(n-1)` with `a(0)=0`
-/

namespace A058351.P7382770522226078212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A000084 n + a (n - 1)

end

end A058351.P7382770522226078212

/-! ## A058351.P13901191135588107205

`∑[A000084(A028310(n))]-1`
-/

namespace A058351.P13901191135588107205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000084 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A058351.P13901191135588107205

/-! ## A058351.P13769558077146751584

`∑[A000084(A028310(n))*A057427(n)]`
-/

namespace A058351.P13769558077146751584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000084 (A028310 n).toNat * A057427 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A058351.P13769558077146751584

/-! ## A058351.P17246128046522213975

`∑[A000084(n+1)]-A000084(n+1)`
-/

namespace A058351.P17246128046522213975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000084 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A000084 (n + 1)

end

end A058351.P17246128046522213975

/-! ## A058351.P1104217165249872133

`∑[A000084(A028310(n))%A026762(n+1)]`
-/

namespace A058351.P1104217165249872133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000084 (A028310 n).toNat) (A026762 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A058351.P1104217165249872133

/-!
# A058352: a(n) Sum_{d|n, 1<=d

The programs for A058352, there is no canonical definition to state claims against.
-/

/-! ## A058352.P5530854875588412833

`A036655(n)-1`
-/

namespace A058352.P5530854875588412833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036655 n - 1

end

end A058352.P5530854875588412833

/-! ## A058352.P18302103223488734267

`xor(A036655(n), A122553(n))`
-/

namespace A058352.P18302103223488734267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A036655 n) (A122553 n)

end

end A058352.P18302103223488734267

/-! ## A058352.P3497835192148316839

`A057428(n+1)+A036655(n)`
-/

namespace A058352.P3497835192148316839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (n + 1) + A036655 n

end

end A058352.P3497835192148316839

/-! ## A058352.P5391129538667615731

`A006349(n+1)%Δ[A058351(n)]`
-/

namespace A058352.P5391129538667615731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058351 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006349 (n + 1)) (f1 (n + 1) - f1 n)

end

end A058352.P5391129538667615731

/-! ## A058352.P1681666856062246157

`A006349(n+1)-A058353(n+1)`
-/

namespace A058352.P1681666856062246157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006349 (n + 1) - A058353 (n + 1)

end

end A058352.P1681666856062246157

/-! ## A058352.P12723135659200985699

`∑{d}[n+1, A006349(#)*A157658((n+1)/#)]`
-/

namespace A058352.P12723135659200985699
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A006349 d * A157658 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A058352.P12723135659200985699

/-! ## A058352.P13577272943534824269

`∑{d}[n+1, A057427(#-1)*A058353((n+1)/#)]`
-/

namespace A058352.P13577272943534824269
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A057427 (d - 1) * A058353 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A058352.P13577272943534824269

/-!
# A058353: n*A000084(n).

The programs for A058353, there is no canonical definition to state claims against.
-/

/-! ## A058353.P3942741375751411347

`(n+1)*Δ[A058351(n)]`
-/

namespace A058353.P3942741375751411347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058351 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (f1 (n + 1) - f1 n)

end

end A058353.P3942741375751411347

/-! ## A058353.P11809165005849016158

`(n+1)*A000084(n+1)`
-/

namespace A058353.P11809165005849016158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000084 (n + 1)

end

end A058353.P11809165005849016158

/-! ## A058353.P11106240750233895829

`A006349(n+1)-A058352(n)`
-/

namespace A058353.P11106240750233895829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006349 (n + 1) - A058352 n

end

end A058353.P11106240750233895829

/-! ## A058353.P15931930489379346026

`A000669(n+1)*A103517(n)`
-/

namespace A058353.P15931930489379346026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000669 (n + 1) * A103517 n

end

end A058353.P15931930489379346026

/-! ## A058353.P17580067838272627065

`Δ[A058351(n)]*A008619(2*n)`
-/

namespace A058353.P17580067838272627065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058351 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A008619 (2 * n)

end

end A058353.P17580067838272627065

/-! ## A058353.P1022094194103176843

`(n+1)*A000669(n+1)*A036453(n+1)`
-/

namespace A058353.P1022094194103176843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A000669 (n + 1) * A036453 (n + 1))

end

end A058353.P1022094194103176843

/-! ## A058353.P4314360323472765394

`∑{d}[n+1, A006349(#)*A008683((n+1)/#)]`
-/

namespace A058353.P4314360323472765394
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A006349 d * A008683 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A058353.P4314360323472765394

/-! ## A058353.P12518216220868294752

`(A020639(Δ[A000040(n+1)])+2*n)*A000669(n+1)`
-/

namespace A058353.P12518216220868294752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A020639 (f1 (n + 1) - f1 n).toNat + (2 * n : ℤ)) * A000669 (n + 1)

end

end A058353.P12518216220868294752

/-!
# A058355: Coefficients in the series (1 + x^2 + x^3 + x^5 + x^7 + x^11 + x^13 + ... )/(1 - x - x^4 - x^6 - x^8 - x^9 - x^10 - x^12 - x^14 - ... ).

The programs for A058355, there is no canonical definition to state claims against.
-/

/-! ## A058355.P4592859324355115624

`A052284(n-1)+a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A058355.P4592859324355115624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A052284 (n - 1) + a (n - 1)

end

end A058355.P4592859324355115624

/-! ## A058355.P1984203623401289442

`A057428(n)+∑[A052284(n-A057427(n))]`
-/

namespace A058355.P1984203623401289442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052284 ((n : ℤ) - A057427 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A058355.P1984203623401289442

/-! ## A058355.P17823580535017543697

`∑[A052284(n)]+A052284(n)*A057428(n)`
-/

namespace A058355.P17823580535017543697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052284 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + A052284 n * A057428 n

end

end A058355.P17823580535017543697

/-! ## A058355.P17902579047399925891

`∑[A052284(n)]-A052284(n)*A057427(n)`
-/

namespace A058355.P17902579047399925891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052284 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A052284 n * A057427 n

end

end A058355.P17902579047399925891

/-! ## A058355.P15284319812834880698

`∑[A052284(n-A057427(n))%A000032(n)]`
-/

namespace A058355.P15284319812834880698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A052284 ((n : ℤ) - A057427 n).toNat) (A000032 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A058355.P15284319812834880698

/-! ## A058355.P7163853020284835378

`A224344(A076921(n))+a(n-1)` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A058355.P7163853020284835378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  A224344 (A076921 n).toNat + a (n - 1)

end

end A058355.P7163853020284835378

/-!
# A058356: Coefficients in the series (1 + 2x^2 + 3x^3 + 5x^5 + 7x^7 + 11x^11 + 13x^13 + ... )/(1 - x - 4x^4 - 6x^6 - 8x^8 - 9x^9 - 10x^10 - 12x^12 - 14x^14 - ... ).

The programs for A058356, there is no canonical definition to state claims against.
-/

/-! ## A058356.P10859824439544575307

`A201206(A148404(n+1))-char[5^n]`
-/

namespace A058356.P10859824439544575307
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 ^ n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201206 (A148404 (n + 1)).toNat - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A058356.P10859824439544575307

/-! ## A058356.P2416041086582063850

`A339456(n)+A005041(A000245(n))`
-/

namespace A058356.P2416041086582063850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339456 n + A005041 (A000245 n).toNat

end

end A058356.P2416041086582063850

/-! ## A058356.P8482997868116247237

`A303639(A093636(n))+A011782(n)`
-/

namespace A058356.P8482997868116247237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303639 (A093636 n).toNat + A011782 n

end

end A058356.P8482997868116247237

/-! ## A058356.P9755904182561275487

`A002024(A148418(n+1))-char[A052905(n)]`
-/

namespace A058356.P9755904182561275487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052905 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A148418 (n + 1)).toNat - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A058356.P9755904182561275487

/-! ## A058356.P15622842226632548047

`A002024(A148418(n+1))-char[A255612(n)]`
-/

namespace A058356.P15622842226632548047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255612 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A148418 (n + 1)).toNat - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A058356.P15622842226632548047

/-!
# A058359: Absolute value of difference between the even and odd first differences of the divisors of n.

The programs for A058359, there is no canonical definition to state claims against.
-/

/-! ## A058359.P5095591042073543200

`2-A318666(A022346(n+1))+n`
-/

namespace A058359.P5095591042073543200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A318666 (A022346 (n + 1)).toNat + (n : ℤ)

end

end A058359.P5095591042073543200

/-! ## A058359.P382865696967180656

`n-A071055(A204990(n+1))`
-/

namespace A058359.P382865696967180656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A071055 (A204990 (n + 1)).toNat

end

end A058359.P382865696967180656

/-! ## A058359.P1003631568989835235

`(5*A008458(A000265(n+1))-1)%A000005(2^n)`
-/

namespace A058359.P1003631568989835235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (5 * A008458 (A000265 (n + 1)).toNat - 1) (A000005 (2 ^ n))

end

end A058359.P1003631568989835235

/-! ## A058359.P9643100246108893910

`A335070(A250120(n))%(n+1)`
-/

namespace A058359.P9643100246108893910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A335070 (A250120 n).toNat) (n + 1 : ℤ)

end

end A058359.P9643100246108893910

/-! ## A058359.P11792250602108877942

`A047599(A066781(n+1))%A004525(2*(n+1))`
-/

namespace A058359.P11792250602108877942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A047599 (A066781 (n + 1)).toNat) (A004525 (2 * (n + 1)))

end

end A058359.P11792250602108877942

/-!
# A058361: a(n) is the least k in A002977 with a gap of n. Also n + a(n) is the least k in A007448 which is repeated n times.

The programs for A058361, there is no canonical definition to state claims against.
-/

/-! ## A058361.P8439780023773432540

`A003987(A152402(n)+record[xor(7, n)])`
-/

namespace A058361.P8439780023773432540
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 7 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003987 (A152402 n + (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℤ)).toNat

end

end A058361.P8439780023773432540

/-! ## A058361.P15432047714392318081

`A271724(A251568(n)+A000203(n+1))`
-/

namespace A058361.P15432047714392318081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271724 (A251568 n + A000203 (n + 1)).toNat

end

end A058361.P15432047714392318081

/-!
# A058363: Numbers whose reduced system of residues forms an arithmetic progression. It consists of primes, twice primes, and powers of 2.

The programs for A058363, the canonical program `A058363.P18291542316030810547` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A058363 has offset 1).

The definition of A058363 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7050 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A058363.P1407698144530918721

`∪[A001747(n+1), A066542(n+1)]`
-/

namespace A058363.P1407698144530918721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001747 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066542 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A058363.P1407698144530918721

namespace A058363

/-- `∪[A001747(n+1), A066542(n+1)]` -/
def P1407698144530918721.Spec : Prop :=
  ∀ n, (P1407698144530918721.a n : ℤ) = A058363 (n + 1)

end A058363

/-! ## A058363.P7355441762192324682

`∪[A001751(n+1), A066542(n+1)]`
-/

namespace A058363.P7355441762192324682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001751 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066542 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A058363.P7355441762192324682

namespace A058363

/-- `∪[A001751(n+1), A066542(n+1)]` -/
def P7355441762192324682.Spec : Prop :=
  ∀ n, (P7355441762192324682.a n : ℤ) = A058363 (n + 1)

end A058363

/-! ## A058363.P2087958163012169624

`∪[A066542(n+1), A085118(n+1)]`
-/

namespace A058363.P2087958163012169624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066542 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085118 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A058363.P2087958163012169624

namespace A058363

/-- `∪[A066542(n+1), A085118(n+1)]` -/
def P2087958163012169624.Spec : Prop :=
  ∀ n, (P2087958163012169624.a n : ℤ) = A058363 (n + 1)

end A058363

/-! ## A058363.P1861434365572908813

`∪[2*A174090(n+2), A174090(n+2)]`
-/

namespace A058363.P1861434365572908813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A174090 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174090 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A058363.P1861434365572908813

namespace A058363

/-- `∪[2*A174090(n+2), A174090(n+2)]` -/
def P1861434365572908813.Spec : Prop :=
  ∀ n, (P1861434365572908813.a n : ℤ) = A058363 (n + 1)

end A058363

/-! ## A058363.P13483757610634618998

`filter[A354925(n+2), A340371(#)]`
-/

namespace A058363.P13483757610634618998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354925 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340371 (f1 j).toNat = 1) n)

end

end A058363.P13483757610634618998

namespace A058363

/-- `filter[A354925(n+2), A340371(#)]` -/
def P13483757610634618998.Spec : Prop :=
  ∀ n, P13483757610634618998.a n = A058363 (n + 1)

end A058363

/-! ## A058363.P11767056673831877826

`filter[A354925(n+2), A353627(#)]`
-/

namespace A058363.P11767056673831877826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354925 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353627 (f1 j).toNat = 1) n)

end

end A058363.P11767056673831877826

namespace A058363

/-- `filter[A354925(n+2), A353627(#)]` -/
def P11767056673831877826.Spec : Prop :=
  ∀ n, P11767056673831877826.a n = A058363 (n + 1)

end A058363

/-! ## A058363.P5232757085032420670

`filter[A354925(n+2), A365716(#)]`
-/

namespace A058363.P5232757085032420670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354925 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A365716 (f1 j).toNat = 1) n)

end

end A058363.P5232757085032420670

namespace A058363

/-- `filter[A354925(n+2), A365716(#)]` -/
def P5232757085032420670.Spec : Prop :=
  ∀ n, P5232757085032420670.a n = A058363 (n + 1)

end A058363

/-! ## A058363.P39972829809226201

`lt[n-1, A000010(2*(n+2))]+2`
-/

namespace A058363.P39972829809226201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (2 * (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 2

end

end A058363.P39972829809226201

namespace A058363

/-- `lt[n-1, A000010(2*(n+2))]+2` -/
def P39972829809226201.Spec : Prop :=
  ∀ n, (P39972829809226201.a n : ℤ) = A058363 (n + 1)

end A058363

/-! ## A058363.P2787450468740335814

`filter[A342081(n+2), A354923(#)]`
-/

namespace A058363.P2787450468740335814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342081 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354923 (f1 j).toNat = 1) n)

end

end A058363.P2787450468740335814

namespace A058363

/-- `filter[A342081(n+2), A354923(#)]` -/
def P2787450468740335814.Spec : Prop :=
  ∀ n, P2787450468740335814.a n = A058363 (n + 1)

end A058363

/-! ## A058363.P8720108766794624152

`filter[A342081(n+2), A354924(#)]`
-/

namespace A058363.P8720108766794624152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342081 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354924 (f1 j).toNat = 1) n)

end

end A058363.P8720108766794624152

namespace A058363

/-- `filter[A342081(n+2), A354924(#)]` -/
def P8720108766794624152.Spec : Prop :=
  ∀ n, P8720108766794624152.a n = A058363 (n + 1)

end A058363

/-! ## A058363.P4999479019506495269

`filter[A365406(n+2), A354923(#)]`
-/

namespace A058363.P4999479019506495269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365406 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354923 (f1 j).toNat = 1) n)

end

end A058363.P4999479019506495269

namespace A058363

/-- `filter[A365406(n+2), A354923(#)]` -/
def P4999479019506495269.Spec : Prop :=
  ∀ n, P4999479019506495269.a n = A058363 (n + 1)

end A058363

/-! ## A058363.P3488479039402547612

`filter[A365406(n+2), A354924(#)]`
-/

namespace A058363.P3488479039402547612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365406 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354924 (f1 j).toNat = 1) n)

end

end A058363.P3488479039402547612

namespace A058363

/-- `filter[A365406(n+2), A354924(#)]` -/
def P3488479039402547612.Spec : Prop :=
  ∀ n, P3488479039402547612.a n = A058363 (n + 1)

end A058363

/-! ## A058363.P18291542316030810547

`filter[A093641(n+2), A354923(#)]`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A058363

/-- `filter[A093641(n+2), A354923(#)]` -/
def P18291542316030810547.Spec : Prop :=
  ∀ n, P18291542316030810547.a n = A058363 (n + 1)

theorem P18291542316030810547.correct : P18291542316030810547.Spec := by
  intro n
  simp only [A058363, Nat.add_sub_cancel]

end A058363

/-! ## A058363.P1319003887491283939

`filter[A093641(n+2), A354924(#)]`
-/

namespace A058363.P1319003887491283939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093641 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354924 (f1 j).toNat = 1) n)

end

end A058363.P1319003887491283939

namespace A058363

/-- `filter[A093641(n+2), A354924(#)]` -/
def P1319003887491283939.Spec : Prop :=
  ∀ n, P1319003887491283939.a n = A058363 (n + 1)

end A058363

/-! ## A058363.P17225138627907048570

`filter[A235034(n+3), A354923(#)]`
-/

namespace A058363.P17225138627907048570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235034 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354923 (f1 j).toNat = 1) n)

end

end A058363.P17225138627907048570

namespace A058363

/-- `filter[A235034(n+3), A354923(#)]` -/
def P17225138627907048570.Spec : Prop :=
  ∀ n, P17225138627907048570.a n = A058363 (n + 1)

end A058363

/-! ## A058363.P805318543879670789

`filter[A235034(n+3), A354924(#)]`
-/

namespace A058363.P805318543879670789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235034 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354924 (f1 j).toNat = 1) n)

end

end A058363.P805318543879670789

namespace A058363

/-- `filter[A235034(n+3), A354924(#)]` -/
def P805318543879670789.Spec : Prop :=
  ∀ n, P805318543879670789.a n = A058363 (n + 1)

end A058363

/-! ## A058363.P12087892264965604359

`filter[A093641(n+1), A360122(#)]`
-/

namespace A058363.P12087892264965604359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093641 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A360122 (f1 j).toNat = 1) n)

end

end A058363.P12087892264965604359

namespace A058363

/-- `filter[A093641(n+1), A360122(#)]` -/
def P12087892264965604359.Spec : Prop :=
  ∀ n, P12087892264965604359.a n = A058363 (n + 1)

end A058363

/-! ## A058363.P3666046035922514932

`filter[A342081(n+1), A360122(#)]`
-/

namespace A058363.P3666046035922514932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342081 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A360122 (f1 j).toNat = 1) n)

end

end A058363.P3666046035922514932

namespace A058363

/-- `filter[A342081(n+1), A360122(#)]` -/
def P3666046035922514932.Spec : Prop :=
  ∀ n, P3666046035922514932.a n = A058363 (n + 1)

end A058363

/-! ## A058363.P15690346091928371801

`filter[A235034(n+2), A360122(#)]`
-/

namespace A058363.P15690346091928371801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235034 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A360122 (f1 j).toNat = 1) n)

end

end A058363.P15690346091928371801

namespace A058363

/-- `filter[A235034(n+2), A360122(#)]` -/
def P15690346091928371801.Spec : Prop :=
  ∀ n, P15690346091928371801.a n = A058363 (n + 1)

end A058363

/-!
# A058364: Number of ways to cover (without overlapping) a ring lattice (necklace) of n sites with molecules that are 9 sites wide.

The programs for A058364, the canonical program `A058364.P15120912540952937720` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A058364 has offset 1).

The definition of A058364 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A058364.P15120912540952937720

`a(n-1)+a(n-9)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1, a(4)=1, a(5)=1, a(6)=1, a(7)=1, a(8)=10`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A058364

/-- `a(n-1)+a(n-9)` -/
def P15120912540952937720.Spec : Prop :=
  ∀ n, (P15120912540952937720.a n : ℤ) = A058364 (n + 1)

theorem P15120912540952937720.correct : P15120912540952937720.Spec := by
  intro n
  simp only [A058364, Nat.add_sub_cancel]

end A058364

/-!
# A058365: Number of ways to cover (without overlapping) a ring lattice (necklace) of n sites with molecules that are 8 sites wide.

The programs for A058365, the canonical program `A058365.P6753097545254862905` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A058365 has offset 1).

The definition of A058365 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A058365.P6753097545254862905

`a(n-1)+a(n-8)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1, a(4)=1, a(5)=1, a(6)=1, a(7)=9`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A058365

/-- `a(n-1)+a(n-8)` -/
def P6753097545254862905.Spec : Prop :=
  ∀ n, (P6753097545254862905.a n : ℤ) = A058365 (n + 1)

theorem P6753097545254862905.correct : P6753097545254862905.Spec := by
  intro n
  simp only [A058365, Nat.add_sub_cancel]

end A058365

/-! ## A058365.P6851411976109127453

`A005710(n+1)+Δ[7*A005710(n)]`
-/

namespace A058365.P6851411976109127453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * A005710 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005710 (n + 1) + (f1 (n + 1) - f1 n)

end

end A058365.P6851411976109127453

namespace A058365

/-- `A005710(n+1)+Δ[7*A005710(n)]` -/
def P6851411976109127453.Spec : Prop :=
  ∀ n, P6851411976109127453.a n = A058365 (n + 1)

end A058365

/-!
# A058366: Number of ways to cover (without overlapping) a ring lattice (necklace) of n sites with molecules that are 7 sites wide.

The programs for A058366, the canonical program `A058366.P16208810409180416683` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A058366 has offset 1).

The definition of A058366 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A058366.P16208810409180416683

`a(n-1)+a(n-7)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1, a(4)=1, a(5)=1, a(6)=8`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A058366

/-- `a(n-1)+a(n-7)` -/
def P16208810409180416683.Spec : Prop :=
  ∀ n, (P16208810409180416683.a n : ℤ) = A058366 (n + 1)

theorem P16208810409180416683.correct : P16208810409180416683.Spec := by
  intro n
  simp only [A058366, Nat.add_sub_cancel]

end A058366

/-! ## A058366.P2879870733508287477

`∑[A017901(n)]+7*A017901(n+1)`
-/

namespace A058366.P2879870733508287477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017901 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 7 * A017901 (n + 1)

end

end A058366.P2879870733508287477

namespace A058366

/-- `∑[A017901(n)]+7*A017901(n+1)` -/
def P2879870733508287477.Spec : Prop :=
  ∀ n, P2879870733508287477.a n = A058366 (n + 1)

end A058366

/-! ## A058366.P11943585773010305299

`A005709(n)+Δ[7*A005709(n)]`
-/

namespace A058366.P11943585773010305299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * A005709 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005709 n + (f1 (n + 1) - f1 n)

end

end A058366.P11943585773010305299

namespace A058366

/-- `A005709(n)+Δ[7*A005709(n)]` -/
def P11943585773010305299.Spec : Prop :=
  ∀ n, P11943585773010305299.a n = A058366 (n + 1)

end A058366

/-! ## A058366.P7682384774821020231

`A005709(n)+Δ[A017017(A005709(n))]`
-/

namespace A058366.P7682384774821020231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017017 (A005709 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005709 n + (f1 (n + 1) - f1 n)

end

end A058366.P7682384774821020231

namespace A058366

/-- `A005709(n)+Δ[A017017(A005709(n))]` -/
def P7682384774821020231.Spec : Prop :=
  ∀ n, P7682384774821020231.a n = A058366 (n + 1)

end A058366

/-!
# A058367: Number of ways to cover (without overlapping) a ring lattice (necklace) of n sites with molecules that are 6 sites wide.

The programs for A058367, the canonical program `A058367.P16159395394081339915` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A058367 has offset 1).

The definition of A058367 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A058367.P16159395394081339915

`a(n-1)+a(n-6)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1, a(4)=1, a(5)=7`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A058367

/-- `a(n-1)+a(n-6)` -/
def P16159395394081339915.Spec : Prop :=
  ∀ n, (P16159395394081339915.a n : ℤ) = A058367 (n + 1)

theorem P16159395394081339915.correct : P16159395394081339915.Spec := by
  intro n
  simp only [A058367, Nat.add_sub_cancel]

end A058367

/-! ## A058367.P3984310790903337021

`A005708(n)+Δ[6*A005708(n)]`
-/

namespace A058367.P3984310790903337021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A005708 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005708 n + (f1 (n + 1) - f1 n)

end

end A058367.P3984310790903337021

namespace A058367

/-- `A005708(n)+Δ[6*A005708(n)]` -/
def P3984310790903337021.Spec : Prop :=
  ∀ n, P3984310790903337021.a n = A058367 (n + 1)

end A058367

/-! ## A058367.P16800604279004647163

`A008588(Δ[A005708(n)])+A005708(n)`
-/

namespace A058367.P16800604279004647163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005708 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008588 (f1 (n + 1) - f1 n).toNat + A005708 n

end

end A058367.P16800604279004647163

namespace A058367

/-- `A008588(Δ[A005708(n)])+A005708(n)` -/
def P16800604279004647163.Spec : Prop :=
  ∀ n, P16800604279004647163.a n = A058367 (n + 1)

end A058367

/-! ## A058367.P8028827437072829323

`A017900(n+6)+A008588(A017900(n+1))`
-/

namespace A058367.P8028827437072829323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017900 (n + 6) + A008588 (A017900 (n + 1)).toNat

end

end A058367.P8028827437072829323

namespace A058367

/-- `A017900(n+6)+A008588(A017900(n+1))` -/
def P8028827437072829323.Spec : Prop :=
  ∀ n, P8028827437072829323.a n = A058367 (n + 1)

end A058367

/-!
# A058368: Number of ways to cover (without overlapping) a ring lattice (necklace) of n sites with molecules that are 5 sites wide.

The programs for A058368, the canonical program `A058368.P7732509302633428731` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A058368 has offset 1).

The definition of A058368 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A058368.P7732509302633428731

`a(n-1)+a(n-5)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1, a(4)=6`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A058368

/-- `a(n-1)+a(n-5)` -/
def P7732509302633428731.Spec : Prop :=
  ∀ n, (P7732509302633428731.a n : ℤ) = A058368 (n + 1)

theorem P7732509302633428731.correct : P7732509302633428731.Spec := by
  intro n
  simp only [A058368, Nat.add_sub_cancel]

end A058368

/-! ## A058368.P3799905852255633817

`A100051(n+1)+A001608(n+1)`
-/

namespace A058368.P3799905852255633817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100051 (n + 1) + A001608 (n + 1)

end

end A058368.P3799905852255633817

namespace A058368

/-- `A100051(n+1)+A001608(n+1)` -/
def P3799905852255633817.Spec : Prop :=
  ∀ n, P3799905852255633817.a n = A058368 (n + 1)

end A058368

/-! ## A058368.P5048287060915365902

`A057079(n+2)+A001608(n+1)`
-/

namespace A058368.P5048287060915365902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057079 (n + 2) + A001608 (n + 1)

end

end A058368.P5048287060915365902

namespace A058368

/-- `A057079(n+2)+A001608(n+1)` -/
def P5048287060915365902.Spec : Prop :=
  ∀ n, P5048287060915365902.a n = A058368 (n + 1)

end A058368

/-! ## A058368.P15942218435775626581

`A003520(n)+5*A017899(n+1)`
-/

namespace A058368.P15942218435775626581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003520 n + 5 * A017899 (n + 1)

end

end A058368.P15942218435775626581

namespace A058368

/-- `A003520(n)+5*A017899(n+1)` -/
def P15942218435775626581.Spec : Prop :=
  ∀ n, P15942218435775626581.a n = A058368 (n + 1)

end A058368

/-! ## A058368.P13539737870639442397

`A003520(n)+Δ[5*A003520(n)]`
-/

namespace A058368.P13539737870639442397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A003520 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003520 n + (f1 (n + 1) - f1 n)

end

end A058368.P13539737870639442397

namespace A058368

/-- `A003520(n)+Δ[5*A003520(n)]` -/
def P13539737870639442397.Spec : Prop :=
  ∀ n, P13539737870639442397.a n = A058368 (n + 1)

end A058368

/-!
# A058369: Numbers k such that k and k^2 have same digit sum.

The programs for A058369, the canonical program `A058369.P43549229018123999` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A058369 has offset 1).

The definition of A058369 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 244 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A058369.P43549229018123999

`eq[A004159(n), A007953(n)]`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A058369

/-- `eq[A004159(n), A007953(n)]` -/
def P43549229018123999.Spec : Prop :=
  ∀ n, (P43549229018123999.a n : ℤ) = A058369 (n + 1)

theorem P43549229018123999.correct : P43549229018123999.Spec := by
  intro n
  simp only [A058369, Nat.add_sub_cancel]

end A058369

/-! ## A058369.P15333475148217362344

`eq[A004159(n)², A118881(n)]`
-/

namespace A058369.P15333475148217362344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004159 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118881 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A058369.P15333475148217362344

namespace A058369

/-- `eq[A004159(n)², A118881(n)]` -/
def P15333475148217362344.Spec : Prop :=
  ∀ n, (P15333475148217362344.a n : ℤ) = A058369 (n + 1)

end A058369

/-! ## A058369.P7091018447977191201

`eq[A004159(n)+n, A062028(n)]`
-/

namespace A058369.P7091018447977191201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004159 n + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062028 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A058369.P7091018447977191201

namespace A058369

/-- `eq[A004159(n)+n, A062028(n)]` -/
def P7091018447977191201.Spec : Prop :=
  ∀ n, (P7091018447977191201.a n : ℤ) = A058369 (n + 1)

end A058369

/-! ## A058369.P4770643504723165358

`eq[n*A004159(n), A057147(n)]`
-/

namespace A058369.P4770643504723165358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A004159 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057147 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A058369.P4770643504723165358

namespace A058369

/-- `eq[n*A004159(n), A057147(n)]` -/
def P4770643504723165358.Spec : Prop :=
  ∀ n, (P4770643504723165358.a n : ℤ) = A058369 (n + 1)

end A058369

/-! ## A058369.P4964645102198341486

`eq[A002620(2*A004159(n)), A118881(n)]`
-/

namespace A058369.P4964645102198341486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (2 * A004159 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118881 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A058369.P4964645102198341486

namespace A058369

/-- `eq[A002620(2*A004159(n)), A118881(n)]` -/
def P4964645102198341486.Spec : Prop :=
  ∀ n, (P4964645102198341486.a n : ℤ) = A058369 (n + 1)

end A058369

/-! ## A058369.P3555733216695788998

`eq[A016116(2*A004159(n)), A329562(n)]`
-/

namespace A058369.P3555733216695788998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 (2 * A004159 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329562 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A058369.P3555733216695788998

namespace A058369

/-- `eq[A016116(2*A004159(n)), A329562(n)]` -/
def P3555733216695788998.Spec : Prop :=
  ∀ n, (P3555733216695788998.a n : ℤ) = A058369 (n + 1)

end A058369

/-! ## A058369.P13737148632588651937

`eq[A067552(n)+A007953(n), A118881(n)]`
-/

namespace A058369.P13737148632588651937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067552 n + A007953 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118881 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A058369.P13737148632588651937

namespace A058369

/-- `eq[A067552(n)+A007953(n), A118881(n)]` -/
def P13737148632588651937.Spec : Prop :=
  ∀ n, (P13737148632588651937.a n : ℤ) = A058369 (n + 1)

end A058369

/-! ## A058369.P16138819255106744563

`eq[2*A004159(n), A169805(n)]`
-/

namespace A058369.P16138819255106744563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A004159 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169805 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A058369.P16138819255106744563

namespace A058369

/-- `eq[2*A004159(n), A169805(n)]` -/
def P16138819255106744563.Spec : Prop :=
  ∀ n, (P16138819255106744563.a n : ℤ) = A058369 (n + 1)

end A058369

/-! ## A058369.P6293181999008948296

`eq[n, A066568(n)+A004159(n)]`
-/

namespace A058369.P6293181999008948296
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066568 n + A004159 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A058369.P6293181999008948296

namespace A058369

/-- `eq[n, A066568(n)+A004159(n)]` -/
def P6293181999008948296.Spec : Prop :=
  ∀ n, (P6293181999008948296.a n : ℤ) = A058369 (n + 1)

end A058369

/-! ## A058369.P1728493592372015915

`eq[n²-A224977(n), A007953(n)]`
-/

namespace A058369.P1728493592372015915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - A224977 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A058369.P1728493592372015915

namespace A058369

/-- `eq[n²-A224977(n), A007953(n)]` -/
def P1728493592372015915.Spec : Prop :=
  ∀ n, (P1728493592372015915.a n : ℤ) = A058369 (n + 1)

end A058369

/-! ## A058369.P8546596365634067974

`eq[A007954(n)+A004159(n), A061762(n)]`
-/

namespace A058369.P8546596365634067974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007954 n + A004159 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061762 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A058369.P8546596365634067974

namespace A058369

/-- `eq[A007954(n)+A004159(n), A061762(n)]` -/
def P8546596365634067974.Spec : Prop :=
  ∀ n, (P8546596365634067974.a n : ℤ) = A058369 (n + 1)

end A058369

/-!
# A058370: Primes p such that p and p^2 have same digit sum.

The programs for A058370, the canonical program `A058370.P2006344636146154017` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A058370 has offset 1).

The definition of A058370 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 519 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A058370.P2006344636146154017

`p?[A058369(n+1)]`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A058370

/-- `p?[A058369(n+1)]` -/
def P2006344636146154017.Spec : Prop :=
  ∀ n, P2006344636146154017.a n = A058370 (n + 1)

theorem P2006344636146154017.correct : P2006344636146154017.Spec := by
  intro n
  simp only [A058370, Nat.add_sub_cancel]

end A058370

/-! ## A058370.P972813669368152529

`p?[A254066(n+1)]`
-/

namespace A058370.P972813669368152529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254066 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A058370.P972813669368152529

namespace A058370

/-- `p?[A254066(n+1)]` -/
def P972813669368152529.Spec : Prop :=
  ∀ n, P972813669368152529.a n = A058370 (n + 1)

end A058370

/-! ## A058370.P17849830944717639931

`∩[A058369(n+1), A061237(n+1)]`
-/

namespace A058370.P17849830944717639931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058369 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061237 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A058370.P17849830944717639931

namespace A058370

/-- `∩[A058369(n+1), A061237(n+1)]` -/
def P17849830944717639931.Spec : Prop :=
  ∀ n, (P17849830944717639931.a n : ℤ) = A058370 (n + 1)

end A058370

/-! ## A058370.P14446574837166300735

`∩[A061237(n+1), A254066(n+1)]`
-/

namespace A058370.P14446574837166300735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061237 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254066 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A058370.P14446574837166300735

namespace A058370

/-- `∩[A061237(n+1), A254066(n+1)]` -/
def P14446574837166300735.Spec : Prop :=
  ∀ n, (P14446574837166300735.a n : ℤ) = A058370 (n + 1)

end A058370

/-! ## A058370.P10581783439679042875

`∩[A061237(n+1), A268135(n+1)]`
-/

namespace A058370.P10581783439679042875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061237 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268135 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A058370.P10581783439679042875

namespace A058370

/-- `∩[A061237(n+1), A268135(n+1)]` -/
def P10581783439679042875.Spec : Prop :=
  ∀ n, (P10581783439679042875.a n : ℤ) = A058370 (n + 1)

end A058370

/-! ## A058370.P340302404471895869

`p?[record[A254066(A052938(n))]]`
-/

namespace A058370.P340302404471895869
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254066 (A052938 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A058370.P340302404471895869

namespace A058370

/-- `p?[record[A254066(A052938(n))]]` -/
def P340302404471895869.Spec : Prop :=
  ∀ n, P340302404471895869.a n = A058370 (n + 1)

end A058370

/-! ## A058370.P12877096825857369520

`∩[A058369(n+1), A079130(n+1)]`
-/

namespace A058370.P12877096825857369520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058369 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079130 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A058370.P12877096825857369520

namespace A058370

/-- `∩[A058369(n+1), A079130(n+1)]` -/
def P12877096825857369520.Spec : Prop :=
  ∀ n, (P12877096825857369520.a n : ℤ) = A058370 (n + 1)

end A058370

/-! ## A058370.P7716176584780590177

`∩[A058369(n+1), A129805(n+1)]`
-/

namespace A058370.P7716176584780590177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058369 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129805 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A058370.P7716176584780590177

namespace A058370

/-- `∩[A058369(n+1), A129805(n+1)]` -/
def P7716176584780590177.Spec : Prop :=
  ∀ n, (P7716176584780590177.a n : ℤ) = A058370 (n + 1)

end A058370

/-! ## A058370.P1011994230440118833

`∩[A079130(n+1), A254066(n+1)]`
-/

namespace A058370.P1011994230440118833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079130 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254066 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A058370.P1011994230440118833

namespace A058370

/-- `∩[A079130(n+1), A254066(n+1)]` -/
def P1011994230440118833.Spec : Prop :=
  ∀ n, (P1011994230440118833.a n : ℤ) = A058370 (n + 1)

end A058370

/-! ## A058370.P9618320577646965332

`∩[A079130(n+1), A268135(n+1)]`
-/

namespace A058370.P9618320577646965332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079130 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268135 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A058370.P9618320577646965332

namespace A058370

/-- `∩[A079130(n+1), A268135(n+1)]` -/
def P9618320577646965332.Spec : Prop :=
  ∀ n, (P9618320577646965332.a n : ℤ) = A058370 (n + 1)

end A058370

/-! ## A058370.P17233518731700409086

`∩[A129805(n+1), A254066(n+1)]`
-/

namespace A058370.P17233518731700409086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129805 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254066 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A058370.P17233518731700409086

namespace A058370

/-- `∩[A129805(n+1), A254066(n+1)]` -/
def P17233518731700409086.Spec : Prop :=
  ∀ n, (P17233518731700409086.a n : ℤ) = A058370 (n + 1)

end A058370

/-! ## A058370.P523867758811487000

`∩[A129805(n+1), A268135(n+1)]`
-/

namespace A058370.P523867758811487000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129805 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268135 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A058370.P523867758811487000

namespace A058370

/-- `∩[A129805(n+1), A268135(n+1)]` -/
def P523867758811487000.Spec : Prop :=
  ∀ n, (P523867758811487000.a n : ℤ) = A058370 (n + 1)

end A058370

/-! ## A058370.P4545682074172102777

`∩[A002476(n+1), A058369(n+1)]`
-/

namespace A058370.P4545682074172102777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002476 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058369 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A058370.P4545682074172102777

namespace A058370

/-- `∩[A002476(n+1), A058369(n+1)]` -/
def P4545682074172102777.Spec : Prop :=
  ∀ n, (P4545682074172102777.a n : ℤ) = A058370 (n + 1)

end A058370

/-! ## A058370.P11252966030387458103

`∩[A007645(n+1), A058369(n+1)]`
-/

namespace A058370.P11252966030387458103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007645 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058369 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A058370.P11252966030387458103

namespace A058370

/-- `∩[A007645(n+1), A058369(n+1)]` -/
def P11252966030387458103.Spec : Prop :=
  ∀ n, (P11252966030387458103.a n : ℤ) = A058370 (n + 1)

end A058370

/-! ## A058370.P12382408832241082715

`∩[A045331(n+1), A058369(n+1)]`
-/

namespace A058370.P12382408832241082715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045331 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058369 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A058370.P12382408832241082715

namespace A058370

/-- `∩[A045331(n+1), A058369(n+1)]` -/
def P12382408832241082715.Spec : Prop :=
  ∀ n, (P12382408832241082715.a n : ℤ) = A058370 (n + 1)

end A058370

/-! ## A058370.P2900796917516714537

`∩[A045375(n+1), A058369(n+1)]`
-/

namespace A058370.P2900796917516714537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045375 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058369 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A058370.P2900796917516714537

namespace A058370

/-- `∩[A045375(n+1), A058369(n+1)]` -/
def P2900796917516714537.Spec : Prop :=
  ∀ n, (P2900796917516714537.a n : ℤ) = A058370 (n + 1)

end A058370

/-! ## A058370.P18133173532760638827

`∩[A058369(n+1), A079131(n+1)]`
-/

namespace A058370.P18133173532760638827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058369 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079131 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A058370.P18133173532760638827

namespace A058370

/-- `∩[A058369(n+1), A079131(n+1)]` -/
def P18133173532760638827.Spec : Prop :=
  ∀ n, (P18133173532760638827.a n : ℤ) = A058370 (n + 1)

end A058370

/-! ## A058370.P10347541932234167291

`∩[A002476(n+1), A254066(n+1)]`
-/

namespace A058370.P10347541932234167291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002476 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254066 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A058370.P10347541932234167291

namespace A058370

/-- `∩[A002476(n+1), A254066(n+1)]` -/
def P10347541932234167291.Spec : Prop :=
  ∀ n, (P10347541932234167291.a n : ℤ) = A058370 (n + 1)

end A058370

/-! ## A058370.P18301101331524662474

`∩[A007645(n+1), A254066(n+1)]`
-/

namespace A058370.P18301101331524662474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007645 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254066 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A058370.P18301101331524662474

namespace A058370

/-- `∩[A007645(n+1), A254066(n+1)]` -/
def P18301101331524662474.Spec : Prop :=
  ∀ n, (P18301101331524662474.a n : ℤ) = A058370 (n + 1)

end A058370

/-! ## A058370.P8321729050518165089

`∩[A002476(n+1), A268135(n+1)]`
-/

namespace A058370.P8321729050518165089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002476 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268135 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A058370.P8321729050518165089

namespace A058370

/-- `∩[A002476(n+1), A268135(n+1)]` -/
def P8321729050518165089.Spec : Prop :=
  ∀ n, (P8321729050518165089.a n : ℤ) = A058370 (n + 1)

end A058370

/-!
# A058371: The sequence S defined in A058540.

The programs for A058371, there is no canonical definition to state claims against.
-/

/-! ## A058371.P11104855134596360511

`floor(A058540(n)/3)`
-/

namespace A058371.P11104855134596360511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A058540 n : ℚ) / 3⌋

end

end A058371.P11104855134596360511

/-! ## A058371.P10758165660055185888

`A058540(n-char[1])/3`
-/

namespace A058371.P10758165660055185888
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A058540 (n - (if ∃ j, f1 j = n then 1 else 0)) : ℚ) / 3

end

end A058371.P10758165660055185888

/-! ## A058371.P14458681470430839886

`round(A058540(n)/A122553(n))`
-/

namespace A058371.P14458681470430839886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A058540 n : ℚ) / (A122553 n : ℚ))

end

end A058371.P14458681470430839886

/-! ## A058371.P7875479357020107203

`A007318(∑[n])*round(A058540(n)/3)`
-/

namespace A058371.P7875479357020107203
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * SequenceMachineLib.roundAway ((A058540 n : ℚ) / 3)

end

end A058371.P7875479357020107203

/-! ## A058371.P15767276189654537952

`and(1, A000045(n))!*round(A058540(n)/3)`
-/

namespace A058371.P15767276189654537952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (Int.land 1 (A000045 n)).toNat : ℤ) * SequenceMachineLib.roundAway ((A058540 n : ℚ) / 3)

end

end A058371.P15767276189654537952

/-!
# A058372: a(n) = -(n + 1)*(2*n^2 + n - 12)/6.

The programs for A058372, the canonical program `A058372.P25903852018570578` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A058372 has offset 0).

The definition of A058372 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A058372.P25903852018570578

`∑[2-n²]`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A058372

/-- `∑[2-n²]` -/
def P25903852018570578.Spec : Prop :=
  ∀ n, P25903852018570578.a n = A058372 n

theorem P25903852018570578.correct : P25903852018570578.Spec := by
  intro n
  simp only [A058372]

end A058372

/-! ## A058372.P717036630753746095

`-∑[or(2, n^2-2)]`
-/

namespace A058372.P717036630753746095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 ((n ^ 2 : ℤ) - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ j ∈ Finset.range (n + 1), f1 j)

end

end A058372.P717036630753746095

namespace A058372

/-- `-∑[or(2, n^2-2)]` -/
def P717036630753746095.Spec : Prop :=
  ∀ n, P717036630753746095.a n = A058372 n

end A058372

/-! ## A058372.P9694447562839619263

`or(∑[2-n^2], char[1])`
-/

namespace A058372.P9694447562839619263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (n ^ 2 : ℤ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (∑ j ∈ Finset.range (n + 1), f1 j) ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A058372.P9694447562839619263

namespace A058372

/-- `or(∑[2-n^2], char[1])` -/
def P9694447562839619263.Spec : Prop :=
  ∀ n, P9694447562839619263.a n = A058372 n

end A058372

/-! ## A058372.P13886346339663793866

`a(n-1)+2-n²` with `a(0)=2`
-/

namespace A058372.P13886346339663793866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) + (2 - (n ^ 2 : ℤ))

end

end A058372.P13886346339663793866

namespace A058372

/-- `a(n-1)+2-n²` -/
def P13886346339663793866.Spec : Prop :=
  ∀ n, P13886346339663793866.a n = A058372 n

end A058372

/-! ## A058372.P8498948443856341148

`2-(n²-a(n-1))` with `a(0)=2`
-/

namespace A058372.P8498948443856341148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  2 - ((n ^ 2 : ℤ) - a (n - 1))

end

end A058372.P8498948443856341148

namespace A058372

/-- `2-(n²-a(n-1))` -/
def P8498948443856341148.Spec : Prop :=
  ∀ n, P8498948443856341148.a n = A058372 n

end A058372

/-! ## A058372.P1724409577347824942

`a(n-1)+2-n*n` with `a(0)=2`
-/

namespace A058372.P1724409577347824942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) + 2 - (n * n : ℤ)

end

end A058372.P1724409577347824942

namespace A058372

/-- `a(n-1)+2-n*n` -/
def P1724409577347824942.Spec : Prop :=
  ∀ n, P1724409577347824942.a n = A058372 n

end A058372

/-! ## A058372.P9837000837038475516

`-∑[lcm(n, n+1)-(n+2)]`
-/

namespace A058372.P9837000837038475516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lcm n (n + 1) : ℤ) - (n + 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ j ∈ Finset.range (n + 1), f1 j)

end

end A058372.P9837000837038475516

namespace A058372

/-- `-∑[lcm(n, n+1)-(n+2)]` -/
def P9837000837038475516.Spec : Prop :=
  ∀ n, P9837000837038475516.a n = A058372 n

end A058372

/-! ## A058372.P13208310864354033416

`floor(∑[∑[a(n-1)-2]])` with `a(0)=2, a(1)=-1`

`floor` is left out, it is the identity on integers.
-/

namespace A058372.P13208310864354033416
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2, -1] fun n f2 =>
  f2 (n - 1) - 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A058372.P13208310864354033416

namespace A058372

/-- `floor(∑[∑[a(n-1)-2]])` -/
def P13208310864354033416.Spec : Prop :=
  ∀ n, P13208310864354033416.a n = A058372 n

end A058372

/-! ## A058372.P608330282090500079

`∑[n+2]-2*C(n+2, 3)`
-/

namespace A058372.P608330282090500079
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (2 * Nat.choose (n + 2) 3 : ℤ)

end

end A058372.P608330282090500079

namespace A058372

/-- `∑[n+2]-2*C(n+2, 3)` -/
def P608330282090500079.Spec : Prop :=
  ∀ n, P608330282090500079.a n = A058372 n

end A058372

/-! ## A058372.P7319092587489201397

`2-floor(n*n-a(n-1))` with `a(0)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A058372.P7319092587489201397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  2 - ((n * n : ℤ) - a (n - 1))

end

end A058372.P7319092587489201397

namespace A058372

/-- `2-floor(n*n-a(n-1))` -/
def P7319092587489201397.Spec : Prop :=
  ∀ n, P7319092587489201397.a n = A058372 n

end A058372

/-! ## A058372.P12760295612627373569

`∑[∑[a(n-1)-2]]-∑[n]` with `a(0)=2`
-/

namespace A058372.P12760295612627373569
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f2 =>
  f2 (n - 1) - 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ((∑ j ∈ Finset.range (n + 1), f3 j : ℕ) : ℤ)

end

end A058372.P12760295612627373569

namespace A058372

/-- `∑[∑[a(n-1)-2]]-∑[n]` -/
def P12760295612627373569.Spec : Prop :=
  ∀ n, P12760295612627373569.a n = A058372 n

end A058372

/-! ## A058372.P4272995778288546489

`∑[∑[1-lcm(2, 2*n)]]+n+1`
-/

namespace A058372.P4272995778288546489
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (Nat.lcm 2 (2 * n) : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n + 1 : ℤ)

end

end A058372.P4272995778288546489

namespace A058372

/-- `∑[∑[1-lcm(2, 2*n)]]+n+1` -/
def P4272995778288546489.Spec : Prop :=
  ∀ n, P4272995778288546489.a n = A058372 n

end A058372

/-! ## A058372.P13495473960335829451

`∑[∑[2-n]+1]-C(n+3, 3)`
-/

namespace A058372.P13495473960335829451
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (Nat.choose (n + 3) 3 : ℤ)

end

end A058372.P13495473960335829451

namespace A058372

/-- `∑[∑[2-n]+1]-C(n+3, 3)` -/
def P13495473960335829451.Spec : Prop :=
  ∀ n, P13495473960335829451.a n = A058372 n

end A058372

/-! ## A058372.P7473691744357269195

`2-n*(n-a(n-1)/n)` with `a(0)=2`
-/

namespace A058372.P7473691744357269195
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [2] fun n a =>
  2 - (n : ℚ) * ((n : ℚ) - a (n - 1) / (n : ℚ))

end

end A058372.P7473691744357269195

namespace A058372

/-- `2-n*(n-a(n-1)/n)` -/
def P7473691744357269195.Spec : Prop :=
  ∀ n, P7473691744357269195.a n = (A058372 n : ℚ)

end A058372

/-! ## A058372.P6865266094520951392

`2-(n*(n-1)-(a(n-1)-n))` with `a(0)=2`
-/

namespace A058372.P6865266094520951392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  2 - ((n : ℤ) * ((n : ℤ) - 1) - (a (n - 1) - (n : ℤ)))

end

end A058372.P6865266094520951392

namespace A058372

/-- `2-(n*(n-1)-(a(n-1)-n))` -/
def P6865266094520951392.Spec : Prop :=
  ∀ n, P6865266094520951392.a n = A058372 n

end A058372

/-! ## A058372.P6458587194073758816

`∑[n+2-∑[2*n]]+and(1, 2*n)`
-/

namespace A058372.P6458587194073758816
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (Nat.land 1 (2 * n) : ℤ)

end

end A058372.P6458587194073758816

namespace A058372

/-- `∑[n+2-∑[2*n]]+and(1, 2*n)` -/
def P6458587194073758816.Spec : Prop :=
  ∀ n, P6458587194073758816.a n = A058372 n

end A058372

/-! ## A058372.P14402983197433378336

`∑[∑[gcd(n, n+1)-2*n]]+n+1`
-/

namespace A058372.P14402983197433378336
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd n (n + 1) : ℤ) - (2 * n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n + 1 : ℤ)

end

end A058372.P14402983197433378336

namespace A058372

/-- `∑[∑[gcd(n, n+1)-2*n]]+n+1` -/
def P14402983197433378336.Spec : Prop :=
  ∀ n, P14402983197433378336.a n = A058372 n

end A058372

/-! ## A058372.P17390058796970377557

`n+3-∑[lcm(n-1, ∑[n-1+n])]`
-/

namespace A058372.P17390058796970377557
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1 + (n : ℤ)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((n : ℤ) - 1) (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A058372.P17390058796970377557

namespace A058372

/-- `n+3-∑[lcm(n-1, ∑[n-1+n])]` -/
def P17390058796970377557.Spec : Prop :=
  ∀ n, P17390058796970377557.a n = A058372 n

end A058372

/-! ## A058372.P8612291837015371091

`2-A145067(n+1)`
-/

namespace A058372.P8612291837015371091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A145067 (n + 1)

end

end A058372.P8612291837015371091

namespace A058372

/-- `2-A145067(n+1)` -/
def P8612291837015371091.Spec : Prop :=
  ∀ n, P8612291837015371091.a n = A058372 n

end A058372

/-!
# A058373: a(n) = (1/6)*(2*n - 3)*(n + 2)*(n + 1).

The programs for A058373, there is no canonical definition to state claims against.
-/

/-! ## A058373.P1666263308244675454

`2*C(n, 3)-C(n, 2)`
-/

namespace A058373.P1666263308244675454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * Nat.choose n 3 : ℤ) - (Nat.choose n 2 : ℤ)

end

end A058373.P1666263308244675454

/-! ## A058373.P12579641722596489251

`∑[(2-n)²-1]-3`
-/

namespace A058373.P12579641722596489251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - (n : ℤ)) ^ 2 - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 3

end

end A058373.P12579641722596489251

/-! ## A058373.P9541888511932513153

`∑[∑[a(n-1)+2]]` with `a(0)=0, a(1)=0, a(2)=-1`
-/

namespace A058373.P9541888511932513153
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 0, -1] fun n f2 =>
  f2 (n - 1) + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A058373.P9541888511932513153

/-! ## A058373.P2470008670298489269

`∑[(2-n)^(2%(n+1))-1]`
-/

namespace A058373.P2470008670298489269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - (n : ℤ)) ^ (2 % (n + 1)) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A058373.P2470008670298489269

/-! ## A058373.P1903824627334454755

`∑[(n-3)*(n-1)%(n+1)]`
-/

namespace A058373.P1903824627334454755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 3) * Int.tmod ((n : ℤ) - 1) (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A058373.P1903824627334454755

/-! ## A058373.P5612537981467986165

`∑[1-∑[a(n-1)-2]]` with `a(0)=1, a(1)=0, a(2)=1`
-/

namespace A058373.P5612537981467986165
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1] fun n f2 =>
  f2 (n - 1) - 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A058373.P5612537981467986165

/-! ## A058373.P7430810244169520862

`floor((2-n)²+a(n-1)-1)` with `a(0)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A058373.P7430810244169520862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (2 - (n : ℤ)) ^ 2 + (a (n - 1) - 1)

end

end A058373.P7430810244169520862

/-! ## A058373.P2245149792985064011

`floor((2-n)²-(1-a(n-1)))` with `a(0)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A058373.P2245149792985064011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (2 - (n : ℤ)) ^ 2 - (1 - a (n - 1))

end

end A058373.P2245149792985064011

/-! ## A058373.P16629992168477159334

`ceil(a(n-1)-(ϕ-(2-n)²))` with `a(0)=0`
-/

namespace A058373.P16629992168477159334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ⌈(a (n - 1) : ℝ) - (Real.goldenRatio - ((2 - (n : ℤ)) ^ 2 : ℝ))⌉

end

end A058373.P16629992168477159334

/-! ## A058373.P15063636923206896052

`floor(a(n-1)+(1-n)*(3-n))` with `a(0)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A058373.P15063636923206896052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + (1 - (n : ℤ)) * (3 - (n : ℤ))

end

end A058373.P15063636923206896052

/-! ## A058373.P8643551596755114493

`round(a(n-1)+(n-1)*(n-3))` with `a(0)=0`

`round` is left out, it is the identity on integers.
-/

namespace A058373.P8643551596755114493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + ((n : ℤ) - 1) * ((n : ℤ) - 3)

end

end A058373.P8643551596755114493

/-! ## A058373.P18237859979032606873

`∑[A105811(n)²-1]`
-/

namespace A058373.P18237859979032606873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105811 n ^ 2 - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A058373.P18237859979032606873

/-! ## A058373.P17215767696984237506

`∑[(n-and(1, A000040(n+1)))*(n-3)]`
-/

namespace A058373.P17215767696984237506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - Int.land 1 (A000040 (n + 1))) * ((n : ℤ) - 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A058373.P17215767696984237506

/-! ## A058373.P10863530952850498966

`∑[(n+1-gcd(2, A000010(n+2)))*(n-3)]`
-/

namespace A058373.P10863530952850498966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) - (Int.gcd 2 (A000010 (n + 2)) : ℤ)) * ((n : ℤ) - 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A058373.P10863530952850498966

/-! ## A058373.P1672357724856297504

`∑[(and(1, A000010(2*n+1))+n-1)*(n-3)]`
-/

namespace A058373.P1672357724856297504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.land 1 (A000010 (2 * n + 1)) + ((n : ℤ) - 1)) * ((n : ℤ) - 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A058373.P1672357724856297504

/-! ## A058373.P13028672641405064606

`∑[n²-A004273(A004273(n))]`
-/

namespace A058373.P13028672641405064606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - A004273 (A004273 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A058373.P13028672641405064606

/-! ## A058373.P16745960535975581599

`∑[(gcd(n, A000040(2*n+1))+n-2)*(n-3)]`
-/

namespace A058373.P16745960535975581599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Int.gcd (n : ℤ) (A000040 (2 * n + 1)) : ℤ) + ((n : ℤ) - 2)) * ((n : ℤ) - 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A058373.P16745960535975581599

/-! ## A058373.P7856767181645006926

`∑[∑[A004274(n+1)]-A004274(2*n+1)]`
-/

namespace A058373.P7856767181645006926
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004274 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A004274 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A058373.P7856767181645006926

/-! ## A058373.P11098677264243044427

`∑[n²-record[A309214(n)]]`
-/

namespace A058373.P11098677264243044427
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309214 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A058373.P11098677264243044427

/-! ## A058373.P14078013819610950023

`∑[A152420(n²-n)]`
-/

namespace A058373.P14078013819610950023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152420 (n ^ 2 - n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A058373.P14078013819610950023

/-!
# A058374: a(1) = 1; a(n+1) = sum{k=1 to n}[a(k)^a(n+1-k)].

The programs for A058374, there is no canonical definition to state claims against.
-/

/-! ## A058374.P16110816416964597105

`A108864(A182717(n)+1)`
-/

namespace A058374.P16110816416964597105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108864 (A182717 n + 1).toNat

end

end A058374.P16110816416964597105

/-!
# A058375: Palindromic primes with just two distinct prime digits.

The programs for A058375, there is no canonical definition to state claims against.
-/

/-! ## A058375.P438113000946514988

`∩[A045336(n+1), A056730(n+1)]`
-/

namespace A058375.P438113000946514988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045336 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056730 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A058375.P438113000946514988

/-! ## A058375.P14615739931913964750

`∩[A056730(n+1), A084983(n+1)]`
-/

namespace A058375.P14615739931913964750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056730 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084983 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A058375.P14615739931913964750

/-! ## A058375.P4371836933660153050

`∩[A045336(n+1), A235154(n+1)]`
-/

namespace A058375.P4371836933660153050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045336 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235154 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A058375.P4371836933660153050

/-! ## A058375.P12217440439342122149

`∩[A084983(n+1), A235154(n+1)]`
-/

namespace A058375.P12217440439342122149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084983 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235154 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A058375.P12217440439342122149

/-! ## A058375.P633742371186713111

`∩[A056730(n+1), A160748(n+1)]`
-/

namespace A058375.P633742371186713111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056730 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160748 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A058375.P633742371186713111

/-!
# A058377: Number of solutions to 1 +- 2 +- 3 +- ... +- n = 0.

The programs for A058377, there is no canonical definition to state claims against.
-/

/-! ## A058377.P9375751229214139404

`A063865(n+1)/2`
-/

namespace A058377.P9375751229214139404
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A063865 (n + 1) : ℚ) / 2

end

end A058377.P9375751229214139404

/-! ## A058377.P7618999286239953879

`A021913(n)*A069918(n+1)`
-/

namespace A058377.P7618999286239953879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021913 n * A069918 (n + 1)

end

end A058377.P7618999286239953879

/-! ## A058377.P10568568066740000185

`lcm(A069918(n+1), A132380(n))`
-/

namespace A058377.P10568568066740000185
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A069918 (n + 1)) (A132380 n)

end

end A058377.P10568568066740000185

/-! ## A058377.P3745581451714117952

`A025591(n+1)-A069918(n+1)`
-/

namespace A058377.P3745581451714117952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025591 (n + 1) - A069918 (n + 1)

end

end A058377.P3745581451714117952

/-! ## A058377.P16906309838540145359

`A069918(n+1)-A063866(n+1)`
-/

namespace A058377.P16906309838540145359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069918 (n + 1) - A063866 (n + 1)

end

end A058377.P16906309838540145359

/-! ## A058377.P14364585554417251933

`(1-A133872(n))*A069918(n+1)`
-/

namespace A058377.P14364585554417251933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A133872 n) * A069918 (n + 1)

end

end A058377.P14364585554417251933

/-! ## A058377.P9640883478155257857

`A069918(n+1)*A133872(n+2)`
-/

namespace A058377.P9640883478155257857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069918 (n + 1) * A133872 (n + 2)

end

end A058377.P9640883478155257857

/-! ## A058377.P8580585229238977664

`(A025591(n+1)-A063866(n+1))/2`
-/

namespace A058377.P8580585229238977664
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025591 (n + 1) - A063866 (n + 1) : ℚ) / 2

end

end A058377.P8580585229238977664

/-! ## A058377.P5284499972713524680

`A025591(n+1)-A063867(n+1)/2`
-/

namespace A058377.P5284499972713524680
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025591 (n + 1) : ℚ) - (A063867 (n + 1) : ℚ) / 2

end

end A058377.P5284499972713524680

/-! ## A058377.P15913134205879061229

`A063867(n+1)/2-A063866(n+1)`
-/

namespace A058377.P15913134205879061229
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A063867 (n + 1) : ℚ) / 2 - (A063866 (n + 1) : ℚ)

end

end A058377.P15913134205879061229

/-! ## A058377.P14426631599804367602

`A069918(n+1)%(A063865(n+1)+1)`
-/

namespace A058377.P14426631599804367602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A069918 (n + 1)) (A063865 (n + 1) + 1)

end

end A058377.P14426631599804367602

/-! ## A058377.P17808819431799839729

`lcm(A025591(n+1), A102560(n+1))/2`
-/

namespace A058377.P17808819431799839729
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A025591 (n + 1)) (A102560 (n + 1)) : ℚ) / 2

end

end A058377.P17808819431799839729

/-! ## A058377.P3896730622173395239

`A025591(n+1)-A025591(n+1)/A130658(n)`
-/

namespace A058377.P3896730622173395239
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025591 (n + 1) : ℚ) - (A025591 (n + 1) : ℚ) / (A130658 n : ℚ)

end

end A058377.P3896730622173395239

/-! ## A058377.P1038362488566374154

`A059529(n+1)-2^n`
-/

namespace A058377.P1038362488566374154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059529 (n + 1) - (2 ^ n : ℤ)

end

end A058377.P1038362488566374154

/-!
# A058378: Number of trivalent 2-connected planar graphs with 2n nodes.

The programs for A058378, there is no canonical definition to state claims against.
-/

/-! ## A058378.P16267295929546032443

`A036234(A267337(n+1))-A036234(n+1)`
-/

namespace A058378.P16267295929546032443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036234 (A267337 (n + 1)).toNat - A036234 (n + 1)

end

end A058378.P16267295929546032443

/-! ## A058378.P14279926624875803403

`A060208((n+1)!-round(n/3)+1)`
-/

namespace A058378.P14279926624875803403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060208 ((Nat.factorial (n + 1) : ℤ) - SequenceMachineLib.roundAway ((n : ℚ) / 3) + 1).toNat

end

end A058378.P14279926624875803403

/-! ## A058378.P11895189661546009054

`A033183(4^n)+∏{p}[n+1, #^val(n+1, #²)]-1`
-/

namespace A058378.P11895189661546009054
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033183 (4 ^ n) + (((∏ p ∈ Nat.primeFactors (f1 n), p ^ SequenceMachineLib.valuation (n + 1) (p ^ 2) : ℕ) : ℤ) - 1)

end

end A058378.P11895189661546009054

/-!
# A058379: Essentially parallel series-parallel networks with n labeled edges, multiple edges not allowed.

The programs for A058379, there is no canonical definition to state claims against.
-/

/-! ## A058379.P16850534622375861412

`A058381(n)-A058380(n)`
-/

namespace A058379.P16850534622375861412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058381 n - A058380 n

end

end A058379.P16850534622375861412

/-! ## A058379.P11194105146331307963

`A058381(n)+A058380(n)*A260196(n)`
-/

namespace A058379.P11194105146331307963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058381 n + A058380 n * A260196 n

end

end A058379.P11194105146331307963

/-! ## A058379.P3950781230472258759

`A002265(A201795(n+1)+A052938(n))-A058380(n)`
-/

namespace A058379.P3950781230472258759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A201795 (n + 1) + A052938 n).toNat - A058380 n

end

end A058379.P3950781230472258759

/-!
# A058380: Essentially series series-parallel networks with n labeled edges, multiple edges not allowed.

The programs for A058380, there is no canonical definition to state claims against.
-/

/-! ## A058380.P3258596722691617651

`A058381(n)-A058379(n)`
-/

namespace A058380.P3258596722691617651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058381 n - A058379 n

end

end A058380.P3258596722691617651

/-! ## A058380.P12615853742287840356

`A058381(n)+A008683(A051886(n))*A058379(n)`
-/

namespace A058380.P12615853742287840356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058381 n + A008683 (A051886 n).toNat * A058379 n

end

end A058380.P12615853742287840356

/-! ## A058380.P8275142039495170488

`A337634(A007840(n))+A010060(n)-A058379(n)`
-/

namespace A058380.P8275142039495170488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337634 (A007840 n).toNat + A010060 n - A058379 n

end

end A058380.P8275142039495170488

/-!
# A058381: Number of series-parallel networks with n labeled edges, multiple edges not allowed.

The programs for A058381, there is no canonical definition to state claims against.
-/

/-! ## A058381.P2194137525163391057

`A058380(n)+A058379(n)`
-/

namespace A058381.P2194137525163391057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058380 n + A058379 n

end

end A058381.P2194137525163391057

/-! ## A058381.P2994805477295698460

`A058379(n)-A058380(n)*A260196(n)`
-/

namespace A058381.P2994805477295698460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058379 n - A058380 n * A260196 n

end

end A058381.P2994805477295698460

/-! ## A058381.P8803831411677103634

`A337634(A007840(n))+A010060(n)`
-/

namespace A058381.P8803831411677103634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337634 (A007840 n).toNat + A010060 n

end

end A058381.P8803831411677103634

/-!
# A058383: Primes of form 1+(2^a)*(3^b), a>0, b>0.

The programs for A058383, there is no canonical definition to state claims against.
-/

/-! ## A058383.P6552712712212724809

`A217035(n+2)`
-/

namespace A058383.P6552712712212724809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217035 (n + 2)

end

end A058383.P6552712712212724809

/-! ## A058383.P10749258065077617335

`record[A217035(A266977(A007599(n)))]`
-/

namespace A058383.P10749258065077617335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217035 (A266977 (A007599 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A058383.P10749258065077617335

/-! ## A058383.P13504207800668062400

`record[A217035(A266977(A008624(n)))]`
-/

namespace A058383.P13504207800668062400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217035 (A266977 (A008624 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A058383.P13504207800668062400

/-! ## A058383.P8223291416818349007

`record[A217035(A266977(A028242(n)))]`
-/

namespace A058383.P8223291416818349007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217035 (A266977 (A028242 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A058383.P8223291416818349007

/-! ## A058383.P3694390962773156944

`record[A217035(A291766(A008619(n)))]`
-/

namespace A058383.P3694390962773156944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217035 (A291766 (A008619 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A058383.P3694390962773156944

/-! ## A058383.P10963841566656581085

`record[A217035(A254667(A291766(n)))]`
-/

namespace A058383.P10963841566656581085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217035 (A254667 (A291766 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A058383.P10963841566656581085

/-! ## A058383.P8977311226518396544

`record[A217035(A137734(A046974(n)))]`
-/

namespace A058383.P8977311226518396544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217035 (A137734 (A046974 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A058383.P8977311226518396544

/-! ## A058383.P15544681210539981193

`record[A110074(n+1)%3*A110074(n+1)]`
-/

namespace A058383.P15544681210539981193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A110074 (n + 1)) 3 * A110074 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A058383.P15544681210539981193

/-! ## A058383.P14560492070869682327

`∩[A002200(n+1), A266268(n+1)]`
-/

namespace A058383.P14560492070869682327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002200 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266268 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A058383.P14560492070869682327

/-! ## A058383.P3853168149689018641

`∩[A055600(n+1), A266268(n+1)]`
-/

namespace A058383.P3853168149689018641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055600 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266268 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A058383.P3853168149689018641

/-!
# A058384: Largest power of 2 which is a divisor of p(n)-1, where p(n) = n-th prime.

The programs for A058384, the canonical program `A058384.P9239699759080930942` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A058384 has offset 1).

The definition of A058384 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A058384.P17000770727776237736

`2^A023506(n+1)`
-/

namespace A058384.P17000770727776237736
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A023506 (n + 1) : ℤ)

end

end A058384.P17000770727776237736

namespace A058384

/-- `2^A023506(n+1)` -/
def P17000770727776237736.Spec : Prop :=
  ∀ n, P17000770727776237736.a n = (A058384 (n + 1) : ℚ)

end A058384

/-! ## A058384.P14246888693180873875

`2^val(A000040(n+1)-1, 2)`
-/

namespace A058384.P14246888693180873875
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ SequenceMachineLib.valuation (A000040 (n + 1) - 1).toNat 2

end

end A058384.P14246888693180873875

namespace A058384

/-- `2^val(A000040(n+1)-1, 2)` -/
def P14246888693180873875.Spec : Prop :=
  ∀ n, (P14246888693180873875.a n : ℤ) = A058384 (n + 1)

end A058384

/-! ## A058384.P9239699759080930942

`A000079(A023506(n+1))`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A058384

/-- `A000079(A023506(n+1))` -/
def P9239699759080930942.Spec : Prop :=
  ∀ n, P9239699759080930942.a n = A058384 (n + 1)

theorem P9239699759080930942.correct : P9239699759080930942.Spec := by
  intro n
  simp only [A058384, Nat.add_sub_cancel]

end A058384

/-! ## A058384.P4013837146749383270

`A000079(val(A006093(n+1), 2))`
-/

namespace A058384.P4013837146749383270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (SequenceMachineLib.valuation (A006093 (n + 1)).toNat 2)

end

end A058384.P4013837146749383270

namespace A058384

/-- `A000079(val(A006093(n+1), 2))` -/
def P4013837146749383270.Spec : Prop :=
  ∀ n, P4013837146749383270.a n = A058384 (n + 1)

end A058384

/-! ## A058384.P1782176399934924039

`A000079(val(A037167(n+1), 2))`
-/

namespace A058384.P1782176399934924039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (SequenceMachineLib.valuation (A037167 (n + 1)).toNat 2)

end

end A058384.P1782176399934924039

namespace A058384

/-- `A000079(val(A037167(n+1), 2))` -/
def P1782176399934924039.Spec : Prop :=
  ∀ n, P1782176399934924039.a n = A058384 (n + 1)

end A058384

/-! ## A058384.P9691610881294217106

`A000079(val(A039915(n+1), 2))`
-/

namespace A058384.P9691610881294217106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (SequenceMachineLib.valuation (A039915 (n + 1)).toNat 2)

end

end A058384.P9691610881294217106

namespace A058384

/-- `A000079(val(A039915(n+1), 2))` -/
def P9691610881294217106.Spec : Prop :=
  ∀ n, P9691610881294217106.a n = A058384 (n + 1)

end A058384

/-! ## A058384.P6327768102771447888

`gcd(A029930(n), A036689(n+1))`
-/

namespace A058384.P6327768102771447888
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A029930 n) (A036689 (n + 1))

end

end A058384.P6327768102771447888

namespace A058384

/-- `gcd(A029930(n), A036689(n+1))` -/
def P6327768102771447888.Spec : Prop :=
  ∀ n, (P6327768102771447888.a n : ℤ) = A058384 (n + 1)

end A058384

/-! ## A058384.P5401495680315633319

`gcd(A140513(n), A236959(n+1))`
-/

namespace A058384.P5401495680315633319
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A140513 n) (A236959 (n + 1))

end

end A058384.P5401495680315633319

namespace A058384

/-- `gcd(A140513(n), A236959(n+1))` -/
def P5401495680315633319.Spec : Prop :=
  ∀ n, (P5401495680315633319.a n : ℤ) = A058384 (n + 1)

end A058384

/-! ## A058384.P11167878585377744945

`A000079(val(A040976(n+1)+1, 2))`
-/

namespace A058384.P11167878585377744945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (SequenceMachineLib.valuation (A040976 (n + 1) + 1).toNat 2)

end

end A058384.P11167878585377744945

namespace A058384

/-- `A000079(val(A040976(n+1)+1, 2))` -/
def P11167878585377744945.Spec : Prop :=
  ∀ n, P11167878585377744945.a n = A058384 (n + 1)

end A058384

/-! ## A058384.P7767878666100828552

`A000079(val(A000040(n+1)-1, 2))`
-/

namespace A058384.P7767878666100828552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (SequenceMachineLib.valuation (A000040 (n + 1) - 1).toNat 2)

end

end A058384.P7767878666100828552

namespace A058384

/-- `A000079(val(A000040(n+1)-1, 2))` -/
def P7767878666100828552.Spec : Prop :=
  ∀ n, P7767878666100828552.a n = A058384 (n + 1)

end A058384

/-! ## A058384.P3166885505206523021

`A006093(n+1)/A057023(n+1)`
-/

namespace A058384.P3166885505206523021
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006093 (n + 1) : ℚ) / (A057023 (n + 1) : ℚ)

end

end A058384.P3166885505206523021

namespace A058384

/-- `A006093(n+1)/A057023(n+1)` -/
def P3166885505206523021.Spec : Prop :=
  ∀ n, P3166885505206523021.a n = (A058384 (n + 1) : ℚ)

end A058384

/-! ## A058384.P17663096768296751049

`(A000040(n+1)-1)/A057023(n+1)`
-/

namespace A058384.P17663096768296751049
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000040 (n + 1) - 1 : ℚ) / (A057023 (n + 1) : ℚ)

end

end A058384.P17663096768296751049

namespace A058384

/-- `(A000040(n+1)-1)/A057023(n+1)` -/
def P17663096768296751049.Spec : Prop :=
  ∀ n, P17663096768296751049.a n = (A058384 (n + 1) : ℚ)

end A058384

/-! ## A058384.P14487645770556010960

`(A008864(n+1)-2)/A057023(n+1)`
-/

namespace A058384.P14487645770556010960
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008864 (n + 1) - 2 : ℚ) / (A057023 (n + 1) : ℚ)

end

end A058384.P14487645770556010960

namespace A058384

/-- `(A008864(n+1)-2)/A057023(n+1)` -/
def P14487645770556010960.Spec : Prop :=
  ∀ n, P14487645770556010960.a n = (A058384 (n + 1) : ℚ)

end A058384

/-! ## A058384.P9176378183517892468

`and(2-A006005(n+1), A006093(n+1))`
-/

namespace A058384.P9176378183517892468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (2 - A006005 (n + 1)) (A006093 (n + 1))

end

end A058384.P9176378183517892468

namespace A058384

/-- `and(2-A006005(n+1), A006093(n+1))` -/
def P9176378183517892468.Spec : Prop :=
  ∀ n, P9176378183517892468.a n = A058384 (n + 1)

end A058384

/-! ## A058384.P2817198522282595663

`and(2-A008864(n+1), A006005(n+1))`
-/

namespace A058384.P2817198522282595663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (2 - A008864 (n + 1)) (A006005 (n + 1))

end

end A058384.P2817198522282595663

namespace A058384

/-- `and(2-A008864(n+1), A006005(n+1))` -/
def P2817198522282595663.Spec : Prop :=
  ∀ n, P2817198522282595663.a n = A058384 (n + 1)

end A058384

/-! ## A058384.P323101298513670402

`A006005(n+1)-and(A006005(n+1), A040976(n+1))`
-/

namespace A058384.P323101298513670402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1) - Int.land (A006005 (n + 1)) (A040976 (n + 1))

end

end A058384.P323101298513670402

namespace A058384

/-- `A006005(n+1)-and(A006005(n+1), A040976(n+1))` -/
def P323101298513670402.Spec : Prop :=
  ∀ n, P323101298513670402.a n = A058384 (n + 1)

end A058384

/-! ## A058384.P3841008654574101938

`2^val(record[A000010(n+1)], 2)`
-/

namespace A058384.P3841008654574101938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ SequenceMachineLib.valuation (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat 2

end

end A058384.P3841008654574101938

namespace A058384

/-- `2^val(record[A000010(n+1)], 2)` -/
def P3841008654574101938.Spec : Prop :=
  ∀ n, (P3841008654574101938.a n : ℤ) = A058384 (n + 1)

end A058384

/-! ## A058384.P13821843157734685528

`A000079(val(record[A000010(n+1)], 2))`
-/

namespace A058384.P13821843157734685528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (SequenceMachineLib.valuation (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat 2)

end

end A058384.P13821843157734685528

namespace A058384

/-- `A000079(val(record[A000010(n+1)], 2))` -/
def P13821843157734685528.Spec : Prop :=
  ∀ n, P13821843157734685528.a n = A058384 (n + 1)

end A058384

/-! ## A058384.P7156350030347786629

`A000079(A354110(A267101(n+1)))`
-/

namespace A058384.P7156350030347786629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A354110 (A267101 (n + 1)).toNat).toNat

end

end A058384.P7156350030347786629

namespace A058384

/-- `A000079(A354110(A267101(n+1)))` -/
def P7156350030347786629.Spec : Prop :=
  ∀ n, P7156350030347786629.a n = A058384 (n + 1)

end A058384

/-! ## A058384.P1137213539550118406

`A000079(val(eq[1, A001222(n+1)], 2))`
-/

namespace A058384.P1137213539550118406
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (SequenceMachineLib.valuation (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) 2)

end

end A058384.P1137213539550118406

namespace A058384

/-- `A000079(val(eq[1, A001222(n+1)], 2))` -/
def P1137213539550118406.Spec : Prop :=
  ∀ n, P1137213539550118406.a n = A058384 (n + 1)

end A058384

/-!
# A058385: Number of essentially parallel series-parallel networks with n unlabeled edges, multiple edges not allowed.

The programs for A058385, there is no canonical definition to state claims against.
-/

/-! ## A058385.P15133402347867611872

`A058386(xor(n, A267883(n)))`
-/

namespace A058385.P15133402347867611872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058386 (Int.xor (n : ℤ) (A267883 n)).toNat

end

end A058385.P15133402347867611872

/-! ## A058385.P2352910842896169945

`A058386(A254667(n)-char[2])`
-/

namespace A058385.P2352910842896169945
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058386 (A254667 n - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)).toNat

end

end A058385.P2352910842896169945

/-! ## A058385.P3013247804147398093

`xor(A058386(n), A171386(n+1))`
-/

namespace A058385.P3013247804147398093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A058386 n) (A171386 (n + 1))

end

end A058385.P3013247804147398093

/-! ## A058385.P10727240658908306731

`A058387(n)-A058386(n)`
-/

namespace A058385.P10727240658908306731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058387 n - A058386 n

end

end A058385.P10727240658908306731

/-! ## A058385.P7698180370079428225

`A046698(n)*A058386(A254667(n))-A058386(n)`
-/

namespace A058385.P7698180370079428225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046698 n * A058386 (A254667 n).toNat - A058386 n

end

end A058385.P7698180370079428225

/-!
# A058386: Essentially series series-parallel networks with n unlabeled edges, multiple edges not allowed.

The programs for A058386, there is no canonical definition to state claims against.
-/

/-! ## A058386.P7556116055039240033

`A058385(char[1]+char[2]+n)`
-/

namespace A058386.P7556116055039240033
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058385 ((if ∃ j, f1 j = n then 1 else 0) + (if ∃ j, f2 j = n then 1 else 0) + n)

end

end A058386.P7556116055039240033

/-! ## A058386.P9005341913801867578

`xor(A058385(n), A171386(n+1))`
-/

namespace A058386.P9005341913801867578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A058385 n) (A171386 (n + 1))

end

end A058386.P9005341913801867578

/-! ## A058386.P15720926405782529651

`A058387(n)-A058385(n)`
-/

namespace A058386.P15720926405782529651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058387 n - A058385 n

end

end A058386.P15720926405782529651

/-! ## A058386.P3143482277470277211

`ceil((A058387(n)-A295895(n))/2)`
-/

namespace A058386.P3143482277470277211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A058387 n - A295895 n : ℚ) / 2⌉

end

end A058386.P3143482277470277211

/-! ## A058386.P9126741584155102606

`floor((A058387(n)+A004593(n+2))/2)`
-/

namespace A058386.P9126741584155102606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A058387 n + A004593 (n + 2) : ℚ) / 2⌋

end

end A058386.P9126741584155102606

/-! ## A058386.P2938030472095342479

`floor((A284939(n+4)+A058387(n))/2)`
-/

namespace A058386.P2938030472095342479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A284939 (n + 4) + A058387 n : ℚ) / 2⌋

end

end A058386.P2938030472095342479

/-! ## A058386.P8084690891903255894

`ceil(A058387(n)/2)%A000142(n)`
-/

namespace A058386.P8084690891903255894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌈(A058387 n : ℚ) / 2⌉ (A000142 n)

end

end A058386.P8084690891903255894

/-!
# A058387: Number of series-parallel networks with n unlabeled edges, multiple edges not allowed.

The programs for A058387, there is no canonical definition to state claims against.
-/

/-! ## A058387.P7464300288019038969

`A058385(n)+A058386(n)`
-/

namespace A058387.P7464300288019038969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058385 n + A058386 n

end

end A058387.P7464300288019038969

/-! ## A058387.P3029292664942130255

`A046698(n)*A058386(A254667(n))`
-/

namespace A058387.P3029292664942130255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046698 n * A058386 (A254667 n).toNat

end

end A058387.P3029292664942130255

/-! ## A058387.P16387680389226145199

`A058386(xor(n, A267883(n)))+A058386(n)`
-/

namespace A058387.P16387680389226145199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058386 (Int.xor (n : ℤ) (A267883 n)).toNat + A058386 n

end

end A058387.P16387680389226145199

/-! ## A058387.P9872918551362284506

`A058385(A171386(n+1)+n)+A058385(n)`
-/

namespace A058387.P9872918551362284506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058385 (A171386 (n + 1) + (n : ℤ)).toNat + A058385 n

end

end A058387.P9872918551362284506

/-! ## A058387.P7235300630401327059

`A058386(n)+xor(A058386(n), A171386(n+1))`
-/

namespace A058387.P7235300630401327059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058386 n + Int.xor (A058386 n) (A171386 (n + 1))

end

end A058387.P7235300630401327059

/-!
# A058388: Total number of interior nodes in all essentially parallel series-parallel networks with n labeled edges, multiple edges not allowed.

The programs for A058388, there is no canonical definition to state claims against.
-/

/-! ## A058388.P4807756047421443661

`A058475(n)-A058406(n)`
-/

namespace A058388.P4807756047421443661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058475 n - A058406 n

end

end A058388.P4807756047421443661

/-! ## A058388.P7264854998137952466

`A058475(n)+A058406(n)*A260196(n)`
-/

namespace A058388.P7264854998137952466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058475 n + A058406 n * A260196 n

end

end A058388.P7264854998137952466

/-! ## A058388.P1014178310575015153

`A234902(A128687(n+1))%A113235(n)`
-/

namespace A058388.P1014178310575015153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A234902 (A128687 (n + 1)).toNat) (A113235 n)

end

end A058388.P1014178310575015153

/-!
# A058389: Number of 3 X 3 matrices with nonnegative integer entries and all row sums equal to n, up to row and column permutation.

The programs for A058389, there is no canonical definition to state claims against.
-/

/-! ## A058389.P6377147486870071821

`A230723(n+1)+A101427(n)`
-/

namespace A058389.P6377147486870071821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230723 (n + 1) + A101427 n

end

end A058389.P6377147486870071821

/-! ## A058389.P12548480865749826360

`A230723(n+1)+∑[A059329(n)]-A001840(n)`
-/

namespace A058389.P12548480865749826360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059329 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230723 (n + 1) + (∑ j ∈ Finset.range (n + 1), f1 j - A001840 n)

end

end A058389.P12548480865749826360

/-! ## A058389.P15592953217795618486

`A230723(n+1)+2*A257464(n)-A008796(n)`
-/

namespace A058389.P15592953217795618486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230723 (n + 1) + (2 * A257464 n - A008796 n)

end

end A058389.P15592953217795618486

/-! ## A058389.P572052755867150885

`A277239(A056000(n)+6)+A230723(n+1)`
-/

namespace A058389.P572052755867150885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277239 (A056000 n + 6).toNat + A230723 (n + 1)

end

end A058389.P572052755867150885

/-!
# A058390: Number of 4 X 4 matrices with nonnegative integer entries and all row sums equal to n, up to row and column permutation.

The programs for A058390, there is no canonical definition to state claims against.
-/

/-! ## A058390.P273397359214170167

`A318951(A141214(n)+7)`
-/

namespace A058390.P273397359214170167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318951 (A141214 n + 7).toNat

end

end A058390.P273397359214170167

/-! ## A058390.P16356869428181115726

`A318951(A052905(n)+9)`
-/

namespace A058390.P16356869428181115726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318951 (A052905 n + 9).toNat

end

end A058390.P16356869428181115726

/-! ## A058390.P11170874837007019017

`A318951(A055999(n)+10)`
-/

namespace A058390.P11170874837007019017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318951 (A055999 n + 10).toNat

end

end A058390.P11170874837007019017

/-! ## A058390.P4867104523045278041

`A318951(A167614(n+2)+1)`
-/

namespace A058390.P4867104523045278041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318951 (A167614 (n + 2) + 1).toNat

end

end A058390.P4867104523045278041

/-! ## A058390.P3931369059445329237

`A318951(A166136(n+2)-2)`
-/

namespace A058390.P3931369059445329237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318951 (A166136 (n + 2) - 2).toNat

end

end A058390.P3931369059445329237

/-!
# A058391: Number of 5 X 5 matrices with nonnegative integer entries and all row sums equal to n, up to row and column permutation.

The programs for A058391, there is no canonical definition to state claims against.
-/

/-! ## A058391.P15361077176372744401

`A318951(A155212(n)+13)`
-/

namespace A058391.P15361077176372744401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318951 (A155212 n + 13).toNat

end

end A058391.P15361077176372744401

/-! ## A058391.P14763307393902499738

`A318951(A056000(n)+15)`
-/

namespace A058391.P14763307393902499738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318951 (A056000 n + 15).toNat

end

end A058391.P14763307393902499738

/-! ## A058391.P9575925405724502475

`A318951(A167614(n+3)+2)`
-/

namespace A058391.P9575925405724502475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318951 (A167614 (n + 3) + 2).toNat

end

end A058391.P9575925405724502475

/-! ## A058391.P9244529347120386653

`A318951(A000217(n+4)+5)`
-/

namespace A058391.P9244529347120386653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318951 (A000217 (n + 4) + 5).toNat

end

end A058391.P9244529347120386653

/-! ## A058391.P11285902997839971205

`A318951(A141214(n+1)+8)`
-/

namespace A058391.P11285902997839971205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318951 (A141214 (n + 1) + 8).toNat

end

end A058391.P11285902997839971205

/-!
# A058392: Number of 6 X 6 matrices with nonnegative integer entries and all row sums equal to n, up to row and column permutation.

The programs for A058392, there is no canonical definition to state claims against.
-/

/-! ## A058392.P6318745414556137019

`A318951(A166136(n+4))`
-/

namespace A058392.P6318745414556137019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318951 (A166136 (n + 4)).toNat

end

end A058392.P6318745414556137019

/-! ## A058392.P16954671380276126699

`A318951(A167499(n+4)+1)`
-/

namespace A058392.P16954671380276126699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318951 (A167499 (n + 4) + 1).toNat

end

end A058392.P16954671380276126699

/-! ## A058392.P17204911899585752865

`A318951(A167614(n+4)+3)`
-/

namespace A058392.P17204911899585752865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318951 (A167614 (n + 4) + 3).toNat

end

end A058392.P17204911899585752865

/-! ## A058392.P17804847662799483893

`A318951(A141214(n+2)+9)`
-/

namespace A058392.P17804847662799483893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318951 (A141214 (n + 2) + 9).toNat

end

end A058392.P17804847662799483893

/-! ## A058392.P9405798541466961791

`A318951(eq[7, A131818(n+1)])`
-/

namespace A058392.P9405798541466961791
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318951 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A058392.P9405798541466961791

/-!
# A058393: A square array based on 1^n (A000012) with each term being the sum of 2 consecutive terms in the previous row.

The programs for A058393, there is no canonical definition to state claims against.
-/

/-! ## A058393.P17630820024240537272

`A054124(n)-char[∑[4*n+1]]`
-/

namespace A058393.P17630820024240537272
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054124 n - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A058393.P17630820024240537272

/-! ## A058393.P6139886940388826424

`and(-A060097(n), A054124(n))`
-/

namespace A058393.P6139886940388826424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A060097 n) (A054124 n)

end

end A058393.P6139886940388826424

/-! ## A058393.P2183726338099333981

`xor(char[A145063(n)], A054124(n))`
-/

namespace A058393.P2183726338099333981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145063 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A054124 n)

end

end A058393.P2183726338099333981

/-! ## A058393.P14668893856343179901

`and(A054124(n), A143802(n+1))`
-/

namespace A058393.P14668893856343179901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A054124 n) (A143802 (n + 1))

end

end A058393.P14668893856343179901

/-! ## A058393.P5277234423056539363

`and(-A130296(n+1), A054124(n))`
-/

namespace A058393.P5277234423056539363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A130296 (n + 1)) (A054124 n)

end

end A058393.P5277234423056539363

/-! ## A058393.P8395671270920364734

`A054124(n)*A059841(A056944(n))`
-/

namespace A058393.P8395671270920364734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054124 n * A059841 (A056944 n).toNat

end

end A058393.P8395671270920364734

/-! ## A058393.P15105220720971130726

`A054124(n)*A267679(2*n)`
-/

namespace A058393.P15105220720971130726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054124 n * A267679 (2 * n)

end

end A058393.P15105220720971130726

/-! ## A058393.P10652098599914109970

`A054124(n)%A000124(A059260(n))`
-/

namespace A058393.P10652098599914109970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A054124 n) (A000124 (A059260 n).toNat)

end

end A058393.P10652098599914109970

/-! ## A058393.P16366797237933278427

`and(A004273(A166692(n)), A054124(n))`
-/

namespace A058393.P16366797237933278427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A004273 (A166692 n).toNat) (A054124 n)

end

end A058393.P16366797237933278427

/-! ## A058393.P440758022271273995

`and(-A088705(A099627(n)), A054124(n))`
-/

namespace A058393.P440758022271273995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A088705 (A099627 n).toNat) (A054124 n)

end

end A058393.P440758022271273995

/-!
# A058394: A square array based on natural numbers (A000027) with each term being the sum of 2 consecutive terms in the previous row.

The programs for A058394, there is no canonical definition to state claims against.
-/

/-! ## A058394.P8178599570946605030

`A001221(A133444(A055801(n)*A235501(n)))`
-/

namespace A058394.P8178599570946605030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A133444 (A055801 n * A235501 n).toNat).toNat

end

end A058394.P8178599570946605030

/-! ## A058394.P16103794528670322519

`A001222(A055801(n)*A133444(A235501(n)))`
-/

namespace A058394.P16103794528670322519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A055801 n * A133444 (A235501 n).toNat).toNat

end

end A058394.P16103794528670322519

/-! ## A058394.P8677919179765979841

`A201166(n)%A000194(A279400(3*(n+1)))`
-/

namespace A058394.P8677919179765979841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A201166 n) (A000194 (A279400 (3 * (n + 1))).toNat)

end

end A058394.P8677919179765979841

/-! ## A058394.P12324318471512316947

`A300705(A044917(n+1))+A112465(n)`
-/

namespace A058394.P12324318471512316947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300705 (A044917 (n + 1)).toNat + A112465 n

end

end A058394.P12324318471512316947

/-! ## A058394.P15994256915732564460

`A300705(A187829(n+1))+A112465(n)`
-/

namespace A058394.P15994256915732564460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300705 (A187829 (n + 1)).toNat + A112465 n

end

end A058394.P15994256915732564460

/-!
# A058395: Square array read by antidiagonals. Based on triangular numbers (A000217) with each term being the sum of 2 consecutive terms in the previous row.

The programs for A058395, there is no canonical definition to state claims against.
-/

/-! ## A058395.P17347668578696327031

`A080595(A057884(n))%A379307(3*n+5)`
-/

namespace A058395.P17347668578696327031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A080595 (A057884 n).toNat) (A379307 (3 * n + 5))

end

end A058395.P17347668578696327031

/-! ## A058395.P3365051651109402340

`A007895(A191582(n)^4)`
-/

namespace A058395.P3365051651109402340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007895 (A191582 n ^ 4).toNat

end

end A058395.P3365051651109402340

/-! ## A058395.P11655213453735232777

`A007895(A191582(n)²²)`
-/

namespace A058395.P11655213453735232777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007895 ((A191582 n ^ 2) ^ 2).toNat

end

end A058395.P11655213453735232777

/-! ## A058395.P7788777757992242880

`A080595(A057884(n)%A105713(n))`
-/

namespace A058395.P7788777757992242880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080595 (Int.tmod (A057884 n) (A105713 n)).toNat

end

end A058395.P7788777757992242880

/-! ## A058395.P9367922792795099443

`A194003(A058394(n)^A093560(n))`
-/

namespace A058395.P9367922792795099443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194003 (SequenceMachineLib.roundAway ((A058394 n : ℚ) ^ (A093560 n : ℤ))).toNat

end

end A058395.P9367922792795099443

/-!
# A058396: Expansion of ((1-x)/(1-2*x))^3.

The programs for A058396, the canonical program `A058396.P14321548259675388613` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A058396 has offset 0).

The definition of A058396 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A058396.P14321548259675388613

`6*a(n-1)-12*a(n-2)+8*a(n-3)` with `a(0)=1, a(1)=3, a(2)=9, a(3)=25`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A058396

/-- `6*a(n-1)-12*a(n-2)+8*a(n-3)` -/
def P14321548259675388613.Spec : Prop :=
  ∀ n, P14321548259675388613.a n = A058396 n

theorem P14321548259675388613.correct : P14321548259675388613.Spec := by
  intro n
  simp only [A058396]

end A058396

/-! ## A058396.P4267970157214086114

`∑[∑[A362179(n)]]`
-/

namespace A058396.P4267970157214086114
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362179 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A058396.P4267970157214086114

namespace A058396

/-- `∑[∑[A362179(n)]]` -/
def P4267970157214086114.Spec : Prop :=
  ∀ n, P4267970157214086114.a n = A058396 n

end A058396

/-! ## A058396.P8641413309726094006

`∑[A158920(n+1)]`
-/

namespace A058396.P8641413309726094006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158920 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A058396.P8641413309726094006

namespace A058396

/-- `∑[A158920(n+1)]` -/
def P8641413309726094006.Spec : Prop :=
  ∀ n, P8641413309726094006.a n = A058396 n

end A058396

/-! ## A058396.P16504138870450556415

`∑[A034007(n)+2*a(n-1)]` with `a(0)=1`
-/

namespace A058396.P16504138870450556415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A034007 n + 2 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A058396.P16504138870450556415

namespace A058396

/-- `∑[A034007(n)+2*a(n-1)]` -/
def P16504138870450556415.Spec : Prop :=
  ∀ n, P16504138870450556415.a n = A058396 n

end A058396

/-! ## A058396.P5936782991910127607

`a(n-1)+A045891(n)+a(n-1)` with `a(0)=1`
-/

namespace A058396.P5936782991910127607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A045891 n + a (n - 1))

end

end A058396.P5936782991910127607

namespace A058396

/-- `a(n-1)+A045891(n)+a(n-1)` -/
def P5936782991910127607.Spec : Prop :=
  ∀ n, P5936782991910127607.a n = A058396 n

end A058396

/-! ## A058396.P8719772031732354189

`A049611(n)+floor(((n+3)*2^n+1)/4)`
-/

namespace A058396.P8719772031732354189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049611 n + ⌊((n + 3) * 2 ^ n + 1 : ℚ) / 4⌋

end

end A058396.P8719772031732354189

namespace A058396

/-- `A049611(n)+floor(((n+3)*2^n+1)/4)` -/
def P8719772031732354189.Spec : Prop :=
  ∀ n, P8719772031732354189.a n = A058396 n

end A058396

/-! ## A058396.P5788811348986068953

`∑[A268586(n)+A131352(n)]`
-/

namespace A058396.P5788811348986068953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268586 n + A131352 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A058396.P5788811348986068953

namespace A058396

/-- `∑[A268586(n)+A131352(n)]` -/
def P5788811348986068953.Spec : Prop :=
  ∀ n, P5788811348986068953.a n = A058396 n

end A058396

/-! ## A058396.P4092591419340380939

`A190050(n)+A049610(n+1)`
-/

namespace A058396.P4092591419340380939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190050 n + A049610 (n + 1)

end

end A058396.P4092591419340380939

namespace A058396

/-- `A190050(n)+A049610(n+1)` -/
def P4092591419340380939.Spec : Prop :=
  ∀ n, P4092591419340380939.a n = A058396 n

end A058396

/-! ## A058396.P16842704887638759674

`A158920(n+2)-A045891(n+1)`
-/

namespace A058396.P16842704887638759674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158920 (n + 2) - A045891 (n + 1)

end

end A058396.P16842704887638759674

namespace A058396

/-- `A158920(n+2)-A045891(n+1)` -/
def P16842704887638759674.Spec : Prop :=
  ∀ n, P16842704887638759674.a n = A058396 n

end A058396

/-! ## A058396.P13247814195265613240

`A362179(n+2)-A045891(n+2)`
-/

namespace A058396.P13247814195265613240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362179 (n + 2) - A045891 (n + 2)

end

end A058396.P13247814195265613240

namespace A058396

/-- `A362179(n+2)-A045891(n+2)` -/
def P13247814195265613240.Spec : Prop :=
  ∀ n, P13247814195265613240.a n = A058396 n

end A058396

/-! ## A058396.P461452027406804021

`A268586(n+1)+A131352(n+1)/2`
-/

namespace A058396.P461452027406804021
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A268586 (n + 1) : ℚ) + (A131352 (n + 1) : ℚ) / 2

end

end A058396.P461452027406804021

namespace A058396

/-- `A268586(n+1)+A131352(n+1)/2` -/
def P461452027406804021.Spec : Prop :=
  ∀ n, P461452027406804021.a n = (A058396 n : ℚ)

end A058396

/-! ## A058396.P1927589011279939822

`A158920(n+2)-A131352(n+1)/2`
-/

namespace A058396.P1927589011279939822
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A158920 (n + 2) : ℚ) - (A131352 (n + 1) : ℚ) / 2

end

end A058396.P1927589011279939822

namespace A058396

/-- `A158920(n+2)-A131352(n+1)/2` -/
def P1927589011279939822.Spec : Prop :=
  ∀ n, P1927589011279939822.a n = (A058396 n : ℚ)

end A058396

/-! ## A058396.P13415416677385572020

`abs(A049611(n)+A084858(n)-n*2^(n-1))`
-/

namespace A058396.P13415416677385572020
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A049611 n : ℚ) + ((A084858 n : ℚ) - (n : ℚ) * (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ))|

end

end A058396.P13415416677385572020

namespace A058396

/-- `abs(A049611(n)+A084858(n)-n*2^(n-1))` -/
def P13415416677385572020.Spec : Prop :=
  ∀ n, P13415416677385572020.a n = (A058396 n : ℚ)

end A058396

/-! ## A058396.P5006936365845825520

`∑[A045891(n)/A000079(n)]*A000079(n)`
-/

namespace A058396.P5006936365845825520
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045891 n : ℚ) / (A000079 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * (A000079 n : ℚ)

end

end A058396.P5006936365845825520

namespace A058396

/-- `∑[A045891(n)/A000079(n)]*A000079(n)` -/
def P5006936365845825520.Spec : Prop :=
  ∀ n, P5006936365845825520.a n = (A058396 n : ℚ)

end A058396

/-! ## A058396.P1495467046713267142

`A158920(n+2)+A045623(n)-A045623(n+1)`
-/

namespace A058396.P1495467046713267142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158920 (n + 2) + (A045623 n - A045623 (n + 1))

end

end A058396.P1495467046713267142

namespace A058396

/-- `A158920(n+2)+A045623(n)-A045623(n+1)` -/
def P1495467046713267142.Spec : Prop :=
  ∀ n, P1495467046713267142.a n = A058396 n

end A058396

/-! ## A058396.P3840353447123807259

`floor(A049611(n)+(A028310(n)+3)/4*A000079(n))`
-/

namespace A058396.P3840353447123807259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A049611 n : ℚ) + (A028310 n + 3 : ℚ) / 4 * (A000079 n : ℚ)⌋

end

end A058396.P3840353447123807259

namespace A058396

/-- `floor(A049611(n)+(A028310(n)+3)/4*A000079(n))` -/
def P3840353447123807259.Spec : Prop :=
  ∀ n, P3840353447123807259.a n = A058396 n

end A058396

/-! ## A058396.P9237344253616757875

`Δ[A049611(n)]`
-/

namespace A058396.P9237344253616757875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049611 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A058396.P9237344253616757875

namespace A058396

/-- `Δ[A049611(n)]` -/
def P9237344253616757875.Spec : Prop :=
  ∀ n, P9237344253616757875.a n = A058396 n

end A058396

/-! ## A058396.P12915628729694400373

`A084851(n)-A049611(n)`
-/

namespace A058396.P12915628729694400373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084851 n - A049611 n

end

end A058396.P12915628729694400373

namespace A058396

/-- `A084851(n)-A049611(n)` -/
def P12915628729694400373.Spec : Prop :=
  ∀ n, P12915628729694400373.a n = A058396 n

end A058396

/-! ## A058396.P4255726165734900816

`(A084851(n)+A045623(n))/2`
-/

namespace A058396.P4255726165734900816
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A084851 n + A045623 n : ℚ) / 2

end

end A058396.P4255726165734900816

namespace A058396

/-- `(A084851(n)+A045623(n))/2` -/
def P4255726165734900816.Spec : Prop :=
  ∀ n, P4255726165734900816.a n = (A058396 n : ℚ)

end A058396

/-! ## A058396.P13315155627631772236

`abs(A049611(n+1)-A049611(n))`
-/

namespace A058396.P13315155627631772236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A049611 (n + 1) - A049611 n|

end

end A058396.P13315155627631772236

namespace A058396

/-- `abs(A049611(n+1)-A049611(n))` -/
def P13315155627631772236.Spec : Prop :=
  ∀ n, P13315155627631772236.a n = A058396 n

end A058396

/-!
# A058397: Row sums of partition triangle A026820.

The programs for A058397, there is no canonical definition to state claims against.
-/

/-! ## A058397.P4262470833089314711

`A196087(n+1)+Δ[A000070(n)]`
-/

namespace A058397.P4262470833089314711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196087 (n + 1) + (f1 (n + 1) - f1 n)

end

end A058397.P4262470833089314711

/-! ## A058397.P3333551061749411284

`A196087(n+1)+A000041(n+1)`
-/

namespace A058397.P3333551061749411284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196087 (n + 1) + A000041 (n + 1)

end

end A058397.P3333551061749411284

/-! ## A058397.P1882201933062379766

`A228816(n+2)-A006128(n+1)`
-/

namespace A058397.P1882201933062379766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228816 (n + 2) - A006128 (n + 1)

end

end A058397.P1882201933062379766

/-! ## A058397.P17394498553223950340

`∑[A207035(n+1)]+A000041(n+1)`
-/

namespace A058397.P17394498553223950340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207035 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + A000041 (n + 1)

end

end A058397.P17394498553223950340

/-! ## A058397.P4693843647204914736

`A196087(n+1)+∑[A187219(n+1)]`
-/

namespace A058397.P4693843647204914736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187219 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196087 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A058397.P4693843647204914736

/-! ## A058397.P15973406442575435992

`A000070(n+1)+A196087(n+1)-A000070(n)`
-/

namespace A058397.P15973406442575435992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 (n + 1) + (A196087 (n + 1) - A000070 n)

end

end A058397.P15973406442575435992

/-! ## A058397.P6258042875694353720

`A000041(n+1)+A066186(n+1)-A006128(n+1)`
-/

namespace A058397.P6258042875694353720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) + (A066186 (n + 1) - A006128 (n + 1))

end

end A058397.P6258042875694353720

/-! ## A058397.P13022085947666778103

`A338969(n+1)-(A225596(n+1)+A006128(n+1))`
-/

namespace A058397.P13022085947666778103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338969 (n + 1) - (A225596 (n + 1) + A006128 (n + 1))

end

end A058397.P13022085947666778103

/-! ## A058397.P1683896310332809198

`A000041(n+1)+A228816(n+2)-A093694(n+1)`
-/

namespace A058397.P1683896310332809198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) + (A228816 (n + 2) - A093694 (n + 1))

end

end A058397.P1683896310332809198

/-! ## A058397.P7131476247168840553

`A196087(n+1)+record[A035363(n)]`
-/

namespace A058397.P7131476247168840553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196087 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A058397.P7131476247168840553

/-! ## A058397.P7041652240435653360

`A196087(n+1)+A035363(2*(n+1))`
-/

namespace A058397.P7041652240435653360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196087 (n + 1) + A035363 (2 * (n + 1))

end

end A058397.P7041652240435653360

/-! ## A058397.P17444940141384010918

`A196087(n+1)+record[A035444(n)]`
-/

namespace A058397.P17444940141384010918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035444 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196087 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A058397.P17444940141384010918

/-! ## A058397.P15182328721512496849

`A196087(n+1)+record[A114099(n)]`
-/

namespace A058397.P15182328721512496849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114099 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196087 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A058397.P15182328721512496849

/-! ## A058397.P12958513687343502355

`A058401(∑[n]+1)`
-/

namespace A058397.P12958513687343502355
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058401 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A058397.P12958513687343502355

/-! ## A058397.P11147869920807963124

`record[A058401(n+1)]`
-/

namespace A058397.P11147869920807963124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058401 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A058397.P11147869920807963124

/-!
# A058398: Partition triangle A008284 read from right to left.

The programs for A058398, there is no canonical definition to state claims against.
-/

/-! ## A058398.P17236451499996387363

`A008284(∑[char[∑[n]]]²-n)`
-/

namespace A058398.P17236451499996387363
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008284 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A058398.P17236451499996387363

/-! ## A058398.P12637173407104636127

`A106254(2*A057944(n)+1-n)`
-/

namespace A058398.P12637173407104636127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106254 (2 * A057944 n + (1 - (n : ℤ))).toNat

end

end A058398.P12637173407104636127

/-! ## A058398.P4952905224385479339

`abs(1-A008284(A038722(n+1)))+1`
-/

namespace A058398.P4952905224385479339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A008284 (A038722 (n + 1)).toNat| + 1

end

end A058398.P4952905224385479339

/-! ## A058398.P16015235897816325313

`A008284(A038722(n+1))^A035214(n)`
-/

namespace A058398.P16015235897816325313
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008284 (A038722 (n + 1)).toNat : ℚ) ^ (A035214 n : ℤ)

end

end A058398.P16015235897816325313

/-! ## A058398.P1563127532461611349

`A008284(A038722(n+1))%A017488(n)`
-/

namespace A058398.P1563127532461611349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008284 (A038722 (n + 1)).toNat) (A017488 n)

end

end A058398.P1563127532461611349

/-! ## A058398.P9319310589422679081

`or(A000007(n), A008284(A038722(n+1)))`
-/

namespace A058398.P9319310589422679081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A008284 (A038722 (n + 1)).toNat)

end

end A058398.P9319310589422679081

/-! ## A058398.P17959356706519300507

`or(A008284(A038722(n+1)), A010054(n))`
-/

namespace A058398.P17959356706519300507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A008284 (A038722 (n + 1)).toNat) (A010054 n)

end

end A058398.P17959356706519300507

/-! ## A058398.P873198895456865810

`A072233(A007401(n+1)+A038722(n+1)-n)`
-/

namespace A058398.P873198895456865810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072233 (A007401 (n + 1) + (A038722 (n + 1) - (n : ℤ))).toNat

end

end A058398.P873198895456865810

/-! ## A058398.P10601977318624476796

`Δ[eq[n, n*A115722(n)]]`
-/

namespace A058398.P10601977318624476796
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A115722 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A058398.P10601977318624476796

/-!
# A058399: Triangle of partial row sums of partition triangle A008284.

The programs for A058399, there is no canonical definition to state claims against.
-/

/-! ## A058399.P13477698473351623192

`A052810(A002024(n+1))-A214314(n+1)`
-/

namespace A058399.P13477698473351623192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052810 (A002024 (n + 1)).toNat - A214314 (n + 1)

end

end A058399.P13477698473351623192

/-! ## A058399.P11286382653922641151

`A210950(∑[char[∑[n]]]²-n)`
-/

namespace A058399.P11286382653922641151
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210950 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A058399.P11286382653922641151

/-! ## A058399.P4901818507027174016

`and(-1, A210950(A038722(n+1)))`
-/

namespace A058399.P4901818507027174016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A210950 (A038722 (n + 1)).toNat)

end

end A058399.P4901818507027174016

/-! ## A058399.P16397246399852829255

`A317141(A037126(n+1)*A130321(n))`
-/

namespace A058399.P16397246399852829255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317141 (A037126 (n + 1) * A130321 n).toNat

end

end A058399.P16397246399852829255

/-! ## A058399.P2370616881586795859

`A317141(A130321(n)*A138139(n+1))`
-/

namespace A058399.P2370616881586795859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317141 (A130321 n * A138139 (n + 1)).toNat

end

end A058399.P2370616881586795859

