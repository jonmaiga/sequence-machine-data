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
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C008
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B003.C000
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
import Seq.B007.C000
import Seq.B008.C001
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A221400: T(n,k)=Number of nXk arrays of occupancy after each element moves to some horizontal, diagonal or antidiagonal neighbor, with no 2-loops and with no occupancy greater than 2.

The programs for A221400, there is no canonical definition to state claims against.
-/

/-! ## A221400.P6448494959942769034

`A238784(A336574(n+1))`
-/

namespace A221400.P6448494959942769034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238784 (A336574 (n + 1)).toNat

end

end A221400.P6448494959942769034

/-! ## A221400.P7414013203972656489

`A341999(n)+A166291(A141596(n))`
-/

namespace A221400.P7414013203972656489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341999 n + A166291 (A141596 n).toNat

end

end A221400.P7414013203972656489

/-! ## A221400.P7922666254314948272

`A123050(A157153(n))-A145515(n)`
-/

namespace A221400.P7922666254314948272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123050 (A157153 n).toNat - A145515 n

end

end A221400.P7922666254314948272

/-! ## A221400.P13244200340797438706

`A046523(A022182(n))-A359762(n)`
-/

namespace A221400.P13244200340797438706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (A022182 n).toNat - A359762 n

end

end A221400.P13244200340797438706

/-! ## A221400.P13205580901014546785

`A122342(A156584(n))-A193592(n)`
-/

namespace A221400.P13205580901014546785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122342 (A156584 n).toNat - A193592 n

end

end A221400.P13205580901014546785

/-!
# A221401: Number of 2 X n arrays of occupancy after each element moves to some horizontal, diagonal or antidiagonal neighbor, with no 2-loops and with no occupancy greater than 2.

The programs for A221401, there is no canonical definition to state claims against.
-/

/-! ## A221401.P10528450223184858693

`A221400(∑[n+1]+2)`
-/

namespace A221401.P10528450223184858693
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221400 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A221401.P10528450223184858693

/-! ## A221401.P1811828675442315251

`record[A221400(n+1)/A029847(n)]`
-/

namespace A221401.P1811828675442315251
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A221400 (n + 1) : ℚ) / (A029847 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221401.P1811828675442315251

/-! ## A221401.P14878059961781871186

`record[A221400(n+1)/A162975(n)]`
-/

namespace A221401.P14878059961781871186
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A221400 (n + 1) : ℚ) / (A162975 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221401.P14878059961781871186

/-! ## A221401.P12954857221194610910

`record[A221400(n+1)/A362297(n)]`
-/

namespace A221401.P12954857221194610910
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A221400 (n + 1) : ℚ) / (A362297 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221401.P12954857221194610910

/-! ## A221401.P12817571336038486584

`record[A221400(n+2)/A034801(n)]`
-/

namespace A221401.P12817571336038486584
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A221400 (n + 2) : ℚ) / (A034801 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221401.P12817571336038486584

/-!
# A221402: Number of 3Xn arrays of occupancy after each element moves to some horizontal, diagonal or antidiagonal neighbor, with no 2-loops and with no occupancy greater than 2.

The programs for A221402, there is no canonical definition to state claims against.
-/

/-! ## A221402.P5501727619141677476

`A221400(∑[n+2]+4)`
-/

namespace A221402.P5501727619141677476
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221400 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A221402.P5501727619141677476

/-! ## A221402.P5143776018455331285

`and(-1, A221400(A167614(n+1)))`
-/

namespace A221402.P5143776018455331285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A221400 (A167614 (n + 1)).toNat)

end

end A221402.P5143776018455331285

/-! ## A221402.P8623879219454356229

`record[A010054(n)*A221400(n+3)]`
-/

namespace A221402.P8623879219454356229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A221400 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221402.P8623879219454356229

/-! ## A221402.P2536282920351318958

`A221400(A167614(n+1))+A025465(n)`
-/

namespace A221402.P2536282920351318958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221400 (A167614 (n + 1)).toNat + A025465 n

end

end A221402.P2536282920351318958

/-! ## A221402.P11490067933154828407

`A221400(A167614(n+1))+A054908(n)`
-/

namespace A221402.P11490067933154828407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221400 (A167614 (n + 1)).toNat + A054908 n

end

end A221402.P11490067933154828407

/-!
# A221403: Number of 4 X n arrays of occupancy after each element moves to some horizontal, diagonal or antidiagonal neighbor, with no 2-loops and with no occupancy greater than 2.

The programs for A221403, there is no canonical definition to state claims against.
-/

/-! ## A221403.P1101682320340482822

`A221400(A141214(n)+7)`
-/

namespace A221403.P1101682320340482822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221400 (A141214 n + 7).toNat

end

end A221403.P1101682320340482822

/-! ## A221403.P16076355884851282339

`A221400(A052905(n)+9)`
-/

namespace A221403.P16076355884851282339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221400 (A052905 n + 9).toNat

end

end A221403.P16076355884851282339

/-! ## A221403.P16856496835228085138

`A221400(A055999(n)+10)`
-/

namespace A221403.P16856496835228085138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221400 (A055999 n + 10).toNat

end

end A221403.P16856496835228085138

/-! ## A221403.P6776497890400020131

`A221400(eq[5, A066657(n)])`
-/

namespace A221403.P6776497890400020131
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221400 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A221403.P6776497890400020131

/-!
# A221404: Number of nX3 arrays of occupancy after each element stays put or moves to some horizontal or vertical neighbor, with every occupancy equal to zero or two.

The programs for A221404, there is no canonical definition to state claims against.
-/

/-! ## A221404.P13215583056047297816

`A221408(∑[n+3]+1)`
-/

namespace A221404.P13215583056047297816
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221408 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A221404.P13215583056047297816

/-! ## A221404.P10197680700184152902

`A221408(A167614(n+1))%A221753(n+1)`
-/

namespace A221404.P10197680700184152902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A221408 (A167614 (n + 1)).toNat) (A221753 (n + 1))

end

end A221404.P10197680700184152902

/-!
# A221405: Number of nX4 arrays of occupancy after each element stays put or moves to some horizontal or vertical neighbor, with every occupancy equal to zero or two.

The programs for A221405, there is no canonical definition to state claims against.
-/

/-! ## A221405.P6832580057112419251

`A221408(A374004(n+1))`
-/

namespace A221405.P6832580057112419251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221408 (A374004 (n + 1)).toNat

end

end A221405.P6832580057112419251

/-! ## A221405.P2061031909747013159

`A221408(A141214(n)+7)`
-/

namespace A221405.P2061031909747013159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221408 (A141214 n + 7).toNat

end

end A221405.P2061031909747013159

/-! ## A221405.P13215027283424383987

`A221408(A052905(n)+9)`
-/

namespace A221405.P13215027283424383987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221408 (A052905 n + 9).toNat

end

end A221405.P13215027283424383987

/-! ## A221405.P9053895955513341041

`A221408(A055999(n)+10)`
-/

namespace A221405.P9053895955513341041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221408 (A055999 n + 10).toNat

end

end A221405.P9053895955513341041

/-! ## A221405.P17922089361365399059

`A221408(eq[5, A066657(n)])`
-/

namespace A221405.P17922089361365399059
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221408 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A221405.P17922089361365399059

/-!
# A221406: Number of nX5 arrays of occupancy after each element stays put or moves to some horizontal or vertical neighbor, with every occupancy equal to zero or two.

The programs for A221406, there is no canonical definition to state claims against.
-/

/-! ## A221406.P2244832083417045778

`A221408(∑[n+5]+6)`
-/

namespace A221406.P2244832083417045778
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221408 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A221406.P2244832083417045778

/-!
# A221407: Number of nX6 arrays of occupancy after each element stays put or moves to some horizontal or vertical neighbor, with every occupancy equal to zero or two.

The programs for A221407, there is no canonical definition to state claims against.
-/

/-! ## A221407.P1419097284844542949

`A221408(A374007(n+1))`
-/

namespace A221407.P1419097284844542949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221408 (A374007 (n + 1)).toNat

end

end A221407.P1419097284844542949

/-! ## A221407.P2186318693142321783

`A221408(A056115(n)+21)`
-/

namespace A221407.P2186318693142321783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221408 (A056115 n + 21).toNat

end

end A221407.P2186318693142321783

/-! ## A221407.P2066462531537444248

`A221408(∑[A020710(n)]+16)`
-/

namespace A221407.P2066462531537444248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020710 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221408 (∑ j ∈ Finset.range (n + 1), f1 j + 16).toNat

end

end A221407.P2066462531537444248

/-! ## A221407.P7523448126278949008

`A221408(A167499(n+4)+1)`
-/

namespace A221407.P7523448126278949008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221408 (A167499 (n + 4) + 1).toNat

end

end A221407.P7523448126278949008

/-!
# A221408: T(n,k)=Number of nXk arrays of occupancy after each element stays put or moves to some horizontal or vertical neighbor, with every occupancy equal to zero or two.

The programs for A221408, there is no canonical definition to state claims against.
-/

/-! ## A221408.P14554917153311542572

`A295214(A000005(2^n))`
-/

namespace A221408.P14554917153311542572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295214 (A000005 (2 ^ n)).toNat

end

end A221408.P14554917153311542572

/-! ## A221408.P11165892344927785181

`A056926(A295214(n+1)²)`
-/

namespace A221408.P11165892344927785181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056926 (A295214 (n + 1) ^ 2).toNat

end

end A221408.P11165892344927785181

/-! ## A221408.P14106276368534622181

`A295214((n+1)*A189006(n))`
-/

namespace A221408.P14106276368534622181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295214 ((n + 1 : ℤ) * A189006 n).toNat

end

end A221408.P14106276368534622181

/-! ## A221408.P15646107800327687686

`A295214(∑[A309528(n+1)!])`
-/

namespace A221408.P15646107800327687686
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A309528 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295214 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A221408.P15646107800327687686

/-! ## A221408.P8850185677503849982

`A295214(A189006(n)²²+n)`
-/

namespace A221408.P8850185677503849982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295214 ((A189006 n ^ 2) ^ 2 + (n : ℤ)).toNat

end

end A221408.P8850185677503849982

/-!
# A221409: O.g.f. satisfies: A(x) = Sum_{n>=0} (n-1)^n * x^n * A(n*x)^n/n! * exp(-(n-1)*A(n*x)).

The programs for A221409, there is no canonical definition to state claims against.
-/

/-! ## A221409.P3312880549703243157

`A094387(A294443(∑[n]-n))`
-/

namespace A221409.P3312880549703243157
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094387 (A294443 (∑ j ∈ Finset.range (n + 1), f1 j - n)).toNat

end

end A221409.P3312880549703243157

/-! ## A221409.P686056042087534712

`A000272(n)-A182177(A143568(n))`
-/

namespace A221409.P686056042087534712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000272 n - A182177 (A143568 n).toNat

end

end A221409.P686056042087534712

/-! ## A221409.P13420977144977723612

`A000272(n)-A182177(A354552(n))`
-/

namespace A221409.P13420977144977723612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000272 n - A182177 (A354552 n).toNat

end

end A221409.P13420977144977723612

/-!
# A221410: O.g.f. satisfies: A(x) = Sum_{n>=0} (n+1)^n * x^n * A(n*x)^n/n! * exp(-(n+1)*x*A(n*x)).

The programs for A221410, there is no canonical definition to state claims against.
-/

/-! ## A221410.P1305761939775469481

`A060789(floor(sqrt(A304646(n))))`
-/

namespace A221410.P1305761939775469481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060789 (Int.sqrt (A304646 n)).toNat

end

end A221410.P1305761939775469481

/-! ## A221410.P9340718628312697885

`A209802(abs(A096596(n+2)))`
-/

namespace A221410.P9340718628312697885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209802 |A096596 (n + 2)|.toNat

end

end A221410.P9340718628312697885

/-!
# A221411: O.g.f. satisfies: A(x) = Sum_{n>=0} (n+2)^n * x^n * A(n*x)^n/n! * exp(-(n+2)*x*A(n*x)).

The programs for A221411, there is no canonical definition to state claims against.
-/

/-! ## A221411.P5700935757416803493

`A216864(∏[comp[2*n]])`
-/

namespace A221411.P5700935757416803493
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216864 (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A221411.P5700935757416803493

/-!
# A221412: O.g.f. satisfies: A(x) = Sum_{n>=0} (n+3)^n * x^n * A(n*x)^n/n! * exp(-(n+3)*x*A(n*x)).

The programs for A221412, there is no canonical definition to state claims against.
-/

/-! ## A221412.P7040566201048349444

`A065187(char[3]+n!²)`
-/

namespace A221412.P7040566201048349444
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065187 ((if ∃ j, f1 j = n then 1 else 0) + Nat.factorial n ^ 2)

end

end A221412.P7040566201048349444

/-!
# A221413: O.g.f. satisfies: A(x) = Sum_{n>=0} (n+4)^n * x^n * A(n*x)^n/n! * exp(-(n+4)*x*A(n*x)).

The programs for A221413, there is no canonical definition to state claims against.
-/

/-! ## A221413.P17297154537517324124

`A347113(A040027(n)²)`
-/

namespace A221413.P17297154537517324124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347113 (A040027 n ^ 2).toNat

end

end A221413.P17297154537517324124

/-!
# A221414: Number of nX3 arrays of occupancy after each element stays put or moves to some horizontal or antidiagonal neighbor, with every occupancy equal to zero or two.

The programs for A221414, the canonical program `A221414.P5665345205151812392` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A221414 has offset 1).

The definition of A221414 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A221414.P6847194545540137169

`ogf(10x/(1-15x^2))`
-/

namespace A221414.P6847194545540137169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 10] [1, 0, -15] n

end

end A221414.P6847194545540137169

namespace A221414

/-- `ogf(10x/(1-15x^2))` -/
def P6847194545540137169.Spec : Prop :=
  ∀ n, P6847194545540137169.a n = A221414 (n + 1)

end A221414

/-! ## A221414.P5665345205151812392

`15*a(n-2)` with `a(0)=0, a(1)=10`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A221414

/-- `15*a(n-2)` -/
def P5665345205151812392.Spec : Prop :=
  ∀ n, (P5665345205151812392.a n : ℤ) = A221414 (n + 1)

theorem P5665345205151812392.correct : P5665345205151812392.Spec := by
  intro n
  simp only [A221414, Nat.add_sub_cancel]

end A221414

/-! ## A221414.P6275133873320189214

`A010673(n)*A101553(n)`
-/

namespace A221414.P6275133873320189214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010673 n * A101553 n

end

end A221414.P6275133873320189214

namespace A221414

/-- `A010673(n)*A101553(n)` -/
def P6275133873320189214.Spec : Prop :=
  ∀ n, P6275133873320189214.a n = A221414 (n + 1)

end A221414

/-! ## A221414.P9501384038039322454

`Δ[A108411(n)]*A056451(n)`
-/

namespace A221414.P9501384038039322454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108411 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A056451 n

end

end A221414.P9501384038039322454

namespace A221414

/-- `Δ[A108411(n)]*A056451(n)` -/
def P9501384038039322454.Spec : Prop :=
  ∀ n, P9501384038039322454.a n = A221414 (n + 1)

end A221414

/-! ## A221414.P17824736338444708161

`lcm(Δ[A108411(n)], A101553(n))`
-/

namespace A221414.P17824736338444708161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108411 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (f1 (n + 1) - f1 n) (A101553 n)

end

end A221414.P17824736338444708161

namespace A221414

/-- `lcm(Δ[A108411(n)], A101553(n))` -/
def P17824736338444708161.Spec : Prop :=
  ∀ n, (P17824736338444708161.a n : ℤ) = A221414 (n + 1)

end A221414

/-! ## A221414.P17587099335667246641

`2*A000035(n)*A101553(n)`
-/

namespace A221414.P17587099335667246641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A000035 n * A101553 n)

end

end A221414.P17587099335667246641

namespace A221414

/-- `2*A000035(n)*A101553(n)` -/
def P17587099335667246641.Spec : Prop :=
  ∀ n, P17587099335667246641.a n = A221414 (n + 1)

end A221414

/-! ## A221414.P3060115427711773786

`Δ[A108411(n)]*A074872(n+2)`
-/

namespace A221414.P3060115427711773786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108411 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A074872 (n + 2)

end

end A221414.P3060115427711773786

namespace A221414

/-- `Δ[A108411(n)]*A074872(n+2)` -/
def P3060115427711773786.Spec : Prop :=
  ∀ n, P3060115427711773786.a n = A221414 (n + 1)

end A221414

/-! ## A221414.P16690370787551641216

`A101553(A000035(n)+n)-A101553(n)`
-/

namespace A221414.P16690370787551641216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101553 (A000035 n + (n : ℤ)).toNat - A101553 n

end

end A221414.P16690370787551641216

namespace A221414

/-- `A101553(A000035(n)+n)-A101553(n)` -/
def P16690370787551641216.Spec : Prop :=
  ∀ n, P16690370787551641216.a n = A221414 (n + 1)

end A221414

/-! ## A221414.P4975665877047717532

`(A108411(n+1)-A108411(n))*A056451(n)`
-/

namespace A221414.P4975665877047717532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A108411 (n + 1) - A108411 n) * A056451 n

end

end A221414.P4975665877047717532

namespace A221414

/-- `(A108411(n+1)-A108411(n))*A056451(n)` -/
def P4975665877047717532.Spec : Prop :=
  ∀ n, P4975665877047717532.a n = A221414 (n + 1)

end A221414

/-! ## A221414.P5770370564932754298

`(A056449(n)-A108411(n))*A074872(n+2)`
-/

namespace A221414.P5770370564932754298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A056449 n - A108411 n) * A074872 (n + 2)

end

end A221414.P5770370564932754298

namespace A221414

/-- `(A056449(n)-A108411(n))*A074872(n+2)` -/
def P5770370564932754298.Spec : Prop :=
  ∀ n, P5770370564932754298.a n = A221414 (n + 1)

end A221414

/-! ## A221414.P15269626390350869816

`(A108411(n+1)-A108411(n))*A396584(n+1)`
-/

namespace A221414.P15269626390350869816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A108411 (n + 1) - A108411 n) * A396584 (n + 1)

end

end A221414.P15269626390350869816

namespace A221414

/-- `(A108411(n+1)-A108411(n))*A396584(n+1)` -/
def P15269626390350869816.Spec : Prop :=
  ∀ n, P15269626390350869816.a n = A221414 (n + 1)

end A221414

/-! ## A221414.P13488639681446014385

`(A108411(n+1)-A108411(n))*A074872(n+2)`
-/

namespace A221414.P13488639681446014385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A108411 (n + 1) - A108411 n) * A074872 (n + 2)

end

end A221414.P13488639681446014385

namespace A221414

/-- `(A108411(n+1)-A108411(n))*A074872(n+2)` -/
def P13488639681446014385.Spec : Prop :=
  ∀ n, P13488639681446014385.a n = A221414 (n + 1)

end A221414

/-!
# A221415: Number of n X 4 arrays of occupancy after each element stays put or moves to some horizontal or antidiagonal neighbor, with every occupancy equal to zero or two.

The programs for A221415, there is no canonical definition to state claims against.
-/

/-! ## A221415.P6579770447284841305

`A221419(∑[n+4]+3)`
-/

namespace A221415.P6579770447284841305
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221419 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A221415.P6579770447284841305

/-! ## A221415.P16933205076040468973

`A221419(A141214(n+1))%A089298(n)`
-/

namespace A221415.P16933205076040468973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A221419 (A141214 (n + 1)).toNat) (A089298 n)

end

end A221415.P16933205076040468973

/-! ## A221415.P13592130767477493675

`A343957(2*n+5)+A221419(A141214(n+1))`
-/

namespace A221415.P13592130767477493675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343957 (2 * n + 5) + A221419 (A141214 (n + 1)).toNat

end

end A221415.P13592130767477493675

/-!
# A221416: Number of n X 5 arrays of occupancy after each element stays put or moves to some horizontal or antidiagonal neighbor, with every occupancy equal to zero or two.

The programs for A221416, there is no canonical definition to state claims against.
-/

/-! ## A221416.P10604348701731829938

`A221419(eq[4, A278987(n+1)])`
-/

namespace A221416.P10604348701731829938
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278987 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221419 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A221416.P10604348701731829938

/-! ## A221416.P1103463572776145870

`A221419(lt[A221438(n+4), A221446(n+1)])`
-/

namespace A221416.P1103463572776145870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221438 (n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221446 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221419 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A221416.P1103463572776145870

/-!
# A221417: Number of nX6 arrays of occupancy after each element stays put or moves to some horizontal or antidiagonal neighbor, with every occupancy equal to zero or two.

The programs for A221417, there is no canonical definition to state claims against.
-/

/-! ## A221417.P11232018727197742465

`A221419(C(n+6, 2)+n+1)`
-/

namespace A221417.P11232018727197742465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221419 (Nat.choose (n + 6) 2 + (n + 1))

end

end A221417.P11232018727197742465

/-! ## A221417.P8165697164439684716

`A221419(A052905(n+3))`
-/

namespace A221417.P8165697164439684716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221419 (A052905 (n + 3)).toNat

end

end A221417.P8165697164439684716

/-! ## A221417.P6959850095403280581

`A221419(eq[3, A219347(n)])`
-/

namespace A221417.P6959850095403280581
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221419 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A221417.P6959850095403280581

/-! ## A221417.P3696228894365033254

`A221419(eq[5, A193592(n)])`
-/

namespace A221417.P3696228894365033254
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221419 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A221417.P3696228894365033254

/-!
# A221420: Number of 2 X n arrays of occupancy after each element stays put or moves to some horizontal or antidiagonal neighbor, with every occupancy equal to zero or two.

The programs for A221420, the canonical program `A221420.P11672521466827454036` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A221420 has offset 1).

The definition of A221420 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 218 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A221420.P11672521466827454036

`4*a(n-1)-3*a(n-2)-2*a(n-4)` with `a(0)=0, a(1)=4, a(2)=10, a(3)=29, a(4)=84, a(5)=242`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A221420

/-- `4*a(n-1)-3*a(n-2)-2*a(n-4)` -/
def P11672521466827454036.Spec : Prop :=
  ∀ n, P11672521466827454036.a n = A221420 (n + 1)

theorem P11672521466827454036.correct : P11672521466827454036.Spec := by
  intro n
  simp only [A221420, Nat.add_sub_cancel]

end A221420

/-! ## A221420.P16223099525374853212

`A221419(∑[n+1]+2)`
-/

namespace A221420.P16223099525374853212
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221419 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A221420.P16223099525374853212

namespace A221420

/-- `A221419(∑[n+1]+2)` -/
def P16223099525374853212.Spec : Prop :=
  ∀ n, P16223099525374853212.a n = A221420 (n + 1)

end A221420

/-! ## A221420.P2083244450062382215

`record[A129184(n+1)*A221419(n+4)]`
-/

namespace A221420.P2083244450062382215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129184 (n + 1) * A221419 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221420.P2083244450062382215

namespace A221420

/-- `record[A129184(n+1)*A221419(n+4)]` -/
def P2083244450062382215.Spec : Prop :=
  ∀ n, P2083244450062382215.a n = A221420 (n + 1)

end A221420

/-! ## A221420.P2060595470949894781

`record[A221419(n+3)/A221446(n+1)]`
-/

namespace A221420.P2060595470949894781
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A221419 (n + 3) : ℚ) / (A221446 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221420.P2060595470949894781

namespace A221420

/-- `record[A221419(n+3)/A221446(n+1)]` -/
def P2060595470949894781.Spec : Prop :=
  ∀ n, P2060595470949894781.a n = (A221420 (n + 1) : ℚ)

end A221420

/-! ## A221420.P5973189966446008846

`record[A221419(n+1)%A280859(n+1)]`
-/

namespace A221420.P5973189966446008846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A221419 (n + 1)) (A280859 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221420.P5973189966446008846

namespace A221420

/-- `record[A221419(n+1)%A280859(n+1)]` -/
def P5973189966446008846.Spec : Prop :=
  ∀ n, P5973189966446008846.a n = A221420 (n + 1)

end A221420

/-!
# A221421: Number of 3Xn arrays of occupancy after each element stays put or moves to some horizontal or antidiagonal neighbor, with every occupancy equal to zero or two.

The programs for A221421, there is no canonical definition to state claims against.
-/

/-! ## A221421.P4001904435279022473

`A221419((∑[n+2]+4)^(n%2))`
-/

namespace A221421.P4001904435279022473
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221419 ((∑ j ∈ Finset.range (n + 1), f1 j + 4) ^ (n % 2))

end

end A221421.P4001904435279022473

/-! ## A221421.P10463219199923775265

`A221419(A167614(n+1)/A333901(n))`
-/

namespace A221421.P10463219199923775265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221419 (SequenceMachineLib.roundAway ((A167614 (n + 1) : ℚ) / (A333901 n : ℚ))).toNat

end

end A221421.P10463219199923775265

/-! ## A221421.P15617051267319455943

`A221419(gcd(A049825(n+1), A167614(n+1)))`
-/

namespace A221421.P15617051267319455943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221419 (Int.gcd (A049825 (n + 1)) (A167614 (n + 1)))

end

end A221421.P15617051267319455943

/-! ## A221421.P1448176077087258881

`A221419(∑[n+2]+4)`
-/

namespace A221421.P1448176077087258881
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221419 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A221421.P1448176077087258881

/-! ## A221421.P6864575240053295356

`A221419(A167614(n+1))+A025442(n)`
-/

namespace A221421.P6864575240053295356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221419 (A167614 (n + 1)).toNat + A025442 n

end

end A221421.P6864575240053295356

/-!
# A221422: Number of 4Xn arrays of occupancy after each element stays put or moves to some horizontal or antidiagonal neighbor, with every occupancy equal to zero or two.

The programs for A221422, there is no canonical definition to state claims against.
-/

/-! ## A221422.P3041374955377314794

`A221419(A141214(n)+7)`
-/

namespace A221422.P3041374955377314794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221419 (A141214 n + 7).toNat

end

end A221422.P3041374955377314794

/-! ## A221422.P8964579809357190071

`A221419(A052905(n)+9)`
-/

namespace A221422.P8964579809357190071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221419 (A052905 n + 9).toNat

end

end A221422.P8964579809357190071

/-! ## A221422.P14841934070551190242

`A221419(A055999(n)+10)`
-/

namespace A221422.P14841934070551190242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221419 (A055999 n + 10).toNat

end

end A221422.P14841934070551190242

/-! ## A221422.P10532043702665909771

`A221419(eq[5, A066657(n)])`
-/

namespace A221422.P10532043702665909771
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221419 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A221422.P10532043702665909771

/-! ## A221422.P16776560200106692320

`A221419(A167614(n+2)+1)`
-/

namespace A221422.P16776560200106692320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221419 (A167614 (n + 2) + 1).toNat

end

end A221422.P16776560200106692320

/-!
# A221423: Number of 5 X n arrays of occupancy after each element stays put or moves to some horizontal or antidiagonal neighbor, with every occupancy equal to zero or two.

The programs for A221423, there is no canonical definition to state claims against.
-/

/-! ## A221423.P8680860426960429140

`A221419(A167499(n+3))`
-/

namespace A221423.P8680860426960429140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221419 (A167499 (n + 3)).toNat

end

end A221423.P8680860426960429140

/-! ## A221423.P10367624258507361159

`A221419(A155212(n)+13)`
-/

namespace A221423.P10367624258507361159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221419 (A155212 n + 13).toNat

end

end A221423.P10367624258507361159

/-! ## A221423.P7622505042862882355

`A221419(A056000(n)+15)`
-/

namespace A221423.P7622505042862882355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221419 (A056000 n + 15).toNat

end

end A221423.P7622505042862882355

/-! ## A221423.P596974056825176894

`A221419(eq[7, A066657(n)])`
-/

namespace A221423.P596974056825176894
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221419 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A221423.P596974056825176894

/-! ## A221423.P4481363864001536135

`A221419(∑[A020705(n)]+11)`
-/

namespace A221423.P4481363864001536135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020705 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221419 (∑ j ∈ Finset.range (n + 1), f1 j + 11).toNat

end

end A221423.P4481363864001536135

/-!
# A221424: Number of 6Xn arrays of occupancy after each element stays put or moves to some horizontal or antidiagonal neighbor, with every occupancy equal to zero or two.

The programs for A221424, there is no canonical definition to state claims against.
-/

/-! ## A221424.P15374243329528525756

`A221419(A056115(n)+21)`
-/

namespace A221424.P15374243329528525756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221419 (A056115 n + 21).toNat

end

end A221424.P15374243329528525756

/-! ## A221424.P6548188510829769025

`A221419(eq[6, A256910(n)])`
-/

namespace A221424.P6548188510829769025
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256910 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221419 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A221424.P6548188510829769025

/-! ## A221424.P13001951017056655419

`A221419(A167499(n+4)+1)`
-/

namespace A221424.P13001951017056655419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221419 (A167499 (n + 4) + 1).toNat

end

end A221424.P13001951017056655419

/-! ## A221424.P9761214123488417008

`A221419(A167614(n+4)+3)`
-/

namespace A221424.P9761214123488417008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221419 (A167614 (n + 4) + 3).toNat

end

end A221424.P9761214123488417008

/-!
# A221425: Number of n X 2 arrays of occupancy after each element moves to some horizontal or vertical neighbor, without consecutive moves in the same direction.

The programs for A221425, there is no canonical definition to state claims against.
-/

/-! ## A221425.P5440437940324308286

`A221429(∑[n+1]+2)`
-/

namespace A221425.P5440437940324308286
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221429 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A221425.P5440437940324308286

/-! ## A221425.P3583085127459452063

`record[A221429(eq[2, A178522(n)])]`
-/

namespace A221425.P3583085127459452063
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178522 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221429 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221425.P3583085127459452063

/-! ## A221425.P14218311680240196370

`record[A221429(A292588(n+1)+1)]`
-/

namespace A221425.P14218311680240196370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221429 (A292588 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221425.P14218311680240196370

/-! ## A221425.P5315467359148074302

`record[A010054(n)*A221429(n+2)]`
-/

namespace A221425.P5315467359148074302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A221429 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221425.P5315467359148074302

/-! ## A221425.P11231643170318577218

`record[A221429(n+2)/A214406(n)]`
-/

namespace A221425.P11231643170318577218
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A221429 (n + 2) : ℚ) / (A214406 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221425.P11231643170318577218

/-!
# A221426: Number of n X 3 arrays of occupancy after each element moves to some horizontal or vertical neighbor, without consecutive moves in the same direction.

The programs for A221426, there is no canonical definition to state claims against.
-/

/-! ## A221426.P9442203466430220458

`A221429(∑[n+2]+4)`
-/

namespace A221426.P9442203466430220458
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221429 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A221426.P9442203466430220458

/-! ## A221426.P18047461680158916890

`record[A221429(A259604(n+1)+3)]`
-/

namespace A221426.P18047461680158916890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221429 (A259604 (n + 1) + 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221426.P18047461680158916890

/-! ## A221426.P16151457721864095016

`A221429(A167614(n+1))+char[9]`
-/

namespace A221426.P16151457721864095016
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221429 (A167614 (n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A221426.P16151457721864095016

/-! ## A221426.P11176686895822711786

`A277165(n)+A221429(A167614(n+1))`
-/

namespace A221426.P11176686895822711786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277165 n + A221429 (A167614 (n + 1)).toNat

end

end A221426.P11176686895822711786

/-! ## A221426.P6751332728244922430

`A326685(n)+A221429(A167614(n+1))`
-/

namespace A221426.P6751332728244922430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326685 n + A221429 (A167614 (n + 1)).toNat

end

end A221426.P6751332728244922430

/-!
# A221427: Number of nX4 arrays of occupancy after each element moves to some horizontal or vertical neighbor, without consecutive moves in the same direction.

The programs for A221427, there is no canonical definition to state claims against.
-/

/-! ## A221427.P15648941685878599811

`A221429(A374004(n+1))`
-/

namespace A221427.P15648941685878599811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221429 (A374004 (n + 1)).toNat

end

end A221427.P15648941685878599811

/-! ## A221427.P3890876994701487128

`A221429(A141214(n)+7)`
-/

namespace A221427.P3890876994701487128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221429 (A141214 n + 7).toNat

end

end A221427.P3890876994701487128

/-! ## A221427.P13163413588356079779

`A221429(A052905(n)+9)`
-/

namespace A221427.P13163413588356079779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221429 (A052905 n + 9).toNat

end

end A221427.P13163413588356079779

/-! ## A221427.P478985111130444673

`A221429(A055999(n)+10)`
-/

namespace A221427.P478985111130444673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221429 (A055999 n + 10).toNat

end

end A221427.P478985111130444673

/-!
# A221428: Number of nX5 arrays of occupancy after each element moves to some horizontal or vertical neighbor, without consecutive moves in the same direction.

The programs for A221428, there is no canonical definition to state claims against.
-/

/-! ## A221428.P8641496414400325916

`A221429(A374005(n+1))`
-/

namespace A221428.P8641496414400325916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221429 (A374005 (n + 1)).toNat

end

end A221428.P8641496414400325916

/-! ## A221428.P16014375494477205886

`A221429(A167499(n+3))`
-/

namespace A221428.P16014375494477205886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221429 (A167499 (n + 3)).toNat

end

end A221428.P16014375494477205886

/-! ## A221428.P650020351142879098

`A221429(A155212(n)+13)`
-/

namespace A221428.P650020351142879098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221429 (A155212 n + 13).toNat

end

end A221428.P650020351142879098

/-!
# A221429: T(n,k)=Number of nXk arrays of occupancy after each element moves to some horizontal or vertical neighbor, without consecutive moves in the same direction.

The programs for A221429, there is no canonical definition to state claims against.
-/

/-! ## A221429.P15854960736431728326

`A017765(A000032(n))%A218372(n+1)`
-/

namespace A221429.P15854960736431728326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A017765 (A000032 n).toNat) (A218372 (n + 1))

end

end A221429.P15854960736431728326

/-! ## A221429.P9103452823570185283

`A084899(A201646(n+1)%A002024(n+1))`
-/

namespace A221429.P9103452823570185283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084899 (Int.tmod (A201646 (n + 1)) (A002024 (n + 1))).toNat

end

end A221429.P9103452823570185283

/-!
# A221430: Number of nX2 arrays of occupancy after each element moves to some king-move neighbor, without consecutive moves in the same direction.

The programs for A221430, there is no canonical definition to state claims against.
-/

/-! ## A221430.P16752161206867075917

`A221432(∑[n+1]+2)`
-/

namespace A221430.P16752161206867075917
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221432 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A221430.P16752161206867075917

/-! ## A221430.P12128479776616111615

`record[A221432(A292588(n+1)+1)]`
-/

namespace A221430.P12128479776616111615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221432 (A292588 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221430.P12128479776616111615

/-! ## A221430.P48527235004934395

`record[A221432(n+2)/A176642(n)]`
-/

namespace A221430.P48527235004934395
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A221432 (n + 2) : ℚ) / (A176642 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221430.P48527235004934395

/-! ## A221430.P16623504685061000937

`record[A221432(n+2)^A073423(n)]`
-/

namespace A221430.P16623504685061000937
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A221432 (n + 2) : ℚ) ^ (A073423 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221430.P16623504685061000937

/-!
# A221431: Number of nX3 arrays of occupancy after each element moves to some king-move neighbor, without consecutive moves in the same direction.

The programs for A221431, there is no canonical definition to state claims against.
-/

/-! ## A221431.P2232706517798819051

`A221432(∑[n+2]+4)`
-/

namespace A221431.P2232706517798819051
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221432 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A221431.P2232706517798819051

/-! ## A221431.P16651665740355025167

`lcm((-1)^n, A221432(A167614(n+1)))`
-/

namespace A221431.P16651665740355025167
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A221432 (A167614 (n + 1)).toNat)

end

end A221431.P16651665740355025167

/-! ## A221431.P17617613633858424832

`A293162(n)+A221432(A167614(n+1))`
-/

namespace A221431.P17617613633858424832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293162 n + A221432 (A167614 (n + 1)).toNat

end

end A221431.P17617613633858424832

/-!
# A221433: Number of nX3 1..(max n,3) arrays with each row and column having unrepeated values.

The programs for A221433, there is no canonical definition to state claims against.
-/

/-! ## A221433.P12659516838125330777

`A221438(A167614(n+1))`
-/

namespace A221433.P12659516838125330777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221438 (A167614 (n + 1)).toNat

end

end A221433.P12659516838125330777

/-! ## A221433.P14627994595087002674

`A221438(A373663(n+1))`
-/

namespace A221433.P14627994595087002674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221438 (A373663 (n + 1)).toNat

end

end A221433.P14627994595087002674

/-! ## A221433.P9425055729788725696

`A221438(A167499(n)+n)`
-/

namespace A221433.P9425055729788725696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221438 (A167499 n + (n : ℤ)).toNat

end

end A221433.P9425055729788725696

/-! ## A221433.P4348274403346817644

`A221438(eq[2, A131818(n+1)-2])`
-/

namespace A221433.P4348274403346817644
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221438 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A221433.P4348274403346817644

/-! ## A221433.P4976985089566644364

`A221438(eq[2, A131818(n+1)/2])`
-/

namespace A221433.P4976985089566644364
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A131818 (n + 1) : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221438 (SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n)

end

end A221433.P4976985089566644364

/-!
# A221434: Number of n X 4 1..(max n,4) arrays with each row and column having unrepeated values.

The programs for A221434, there is no canonical definition to state claims against.
-/

/-! ## A221434.P14254934982801658584

`A221438(A374004(n+1))`
-/

namespace A221434.P14254934982801658584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221438 (A374004 (n + 1)).toNat

end

end A221434.P14254934982801658584

/-! ## A221434.P6084715490211724524

`A221438(A055999(n)+10)`
-/

namespace A221434.P6084715490211724524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221438 (A055999 n + 10).toNat

end

end A221434.P6084715490211724524

/-! ## A221434.P9258890435213192750

`A221438(A167614(n+2)+1)`
-/

namespace A221434.P9258890435213192750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221438 (A167614 (n + 2) + 1).toNat

end

end A221434.P9258890435213192750

/-! ## A221434.P10665302334250208562

`A221438(A166136(n+2)-2)`
-/

namespace A221434.P10665302334250208562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221438 (A166136 (n + 2) - 2).toNat

end

end A221434.P10665302334250208562

/-! ## A221434.P3398298432338407529

`A221438(eq[5, A131818(n+1)])`
-/

namespace A221434.P3398298432338407529
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221438 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A221434.P3398298432338407529

/-!
# A221435: Number of nX5 1..(max n,5) arrays with each row and column having unrepeated values.

The programs for A221435, there is no canonical definition to state claims against.
-/

/-! ## A221435.P1314544247707507279

`A221438(A374005(n+1))`
-/

namespace A221435.P1314544247707507279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221438 (A374005 (n + 1)).toNat

end

end A221435.P1314544247707507279

/-! ## A221435.P6408347173561576327

`A221438(A155212(n)+13)`
-/

namespace A221435.P6408347173561576327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221438 (A155212 n + 13).toNat

end

end A221435.P6408347173561576327

/-! ## A221435.P14260083507771452784

`A221438(A056000(n)+15)`
-/

namespace A221435.P14260083507771452784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221438 (A056000 n + 15).toNat

end

end A221435.P14260083507771452784

/-! ## A221435.P16727631421332608216

`A221438(eq[7, A066657(n)])`
-/

namespace A221435.P16727631421332608216
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221438 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A221435.P16727631421332608216

/-! ## A221435.P9537493716323274528

`A221438(A141214(n+1)+8)`
-/

namespace A221435.P9537493716323274528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221438 (A141214 (n + 1) + 8).toNat

end

end A221435.P9537493716323274528

/-!
# A221436: Number of nX6 1..(max n,6) arrays with each row and column having unrepeated values.

The programs for A221436, there is no canonical definition to state claims against.
-/

/-! ## A221436.P262657443132251354

`A221438(∑[n+5]+16)`
-/

namespace A221436.P262657443132251354
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221438 (∑ j ∈ Finset.range (n + 1), f1 j + 16)

end

end A221436.P262657443132251354

/-! ## A221436.P13181418606914563635

`A221438(A374007(n+1))*A350470(n)`
-/

namespace A221436.P13181418606914563635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221438 (A374007 (n + 1)).toNat * A350470 n

end

end A221436.P13181418606914563635

/-! ## A221436.P13775099934887081363

`A373973(n+1)+A221438(A374007(n+1))`
-/

namespace A221436.P13775099934887081363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373973 (n + 1) + A221438 (A374007 (n + 1)).toNat

end

end A221436.P13775099934887081363

/-!
# A221437: Number of nX7 1..(max n,7) arrays with each row and column having unrepeated values.

The programs for A221437, there is no canonical definition to state claims against.
-/

/-! ## A221437.P4002406543736859898

`A221438(A374008(n+1))`
-/

namespace A221437.P4002406543736859898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221438 (A374008 (n + 1)).toNat

end

end A221437.P4002406543736859898

/-! ## A221437.P4292436299732310021

`A221438(A055999(n+4))`
-/

namespace A221437.P4292436299732310021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221438 (A055999 (n + 4)).toNat

end

end A221437.P4292436299732310021

/-!
# A221438: T(n,k) is the number of n X k 1..(max n,k) arrays with each row and column having unrepeated values.

The programs for A221438, there is no canonical definition to state claims against.
-/

/-! ## A221438.P14975763584268197687

`gcd(record[A151878(n)], A334518(n+1))`
-/

namespace A221438.P14975763584268197687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151878 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A334518 (n + 1))

end

end A221438.P14975763584268197687

/-! ## A221438.P3997232838636562684

`A331886(n)!*A130478(A129455(n))`
-/

namespace A221438.P3997232838636562684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A331886 n).toNat : ℤ) * A130478 (A129455 n).toNat

end

end A221438.P3997232838636562684

/-! ## A221438.P13008264902056950573

`A249027(A351870(n)+A141294(n+1))`
-/

namespace A221438.P13008264902056950573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249027 (A351870 n + A141294 (n + 1)).toNat

end

end A221438.P13008264902056950573

/-! ## A221438.P56601340952269482

`A264954(A351870(n)+A141294(n+1))`
-/

namespace A221438.P56601340952269482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264954 (A351870 n + A141294 (n + 1)).toNat

end

end A221438.P56601340952269482

/-! ## A221438.P8351266671646820942

`gcd(A054479(A129455(n)), A091441(n+1))`
-/

namespace A221438.P8351266671646820942
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A054479 (A129455 n).toNat) (A091441 (n + 1))

end

end A221438.P8351266671646820942

/-!
# A221439: Number of n X n binary arrays with every 0 a horizontal or antidiagonal neighbor to some 1.

The programs for A221439, there is no canonical definition to state claims against.
-/

/-! ## A221439.P3898450724004905216

`A221446(∑[4*n]+1)`
-/

namespace A221439.P3898450724004905216
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221446 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A221439.P3898450724004905216

/-! ## A221439.P9631961074774516777

`or(1, A221446(A001844(n)))`
-/

namespace A221439.P9631961074774516777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A221446 (A001844 n).toNat)

end

end A221439.P9631961074774516777

/-! ## A221439.P9361259298971814081

`record[A003982(n)*A221446(n+1)]`
-/

namespace A221439.P9361259298971814081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A221446 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221439.P9361259298971814081

/-! ## A221439.P8837450336400531529

`record[gcd(A049581(n), A221446(n+1))]`
-/

namespace A221439.P8837450336400531529
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A049581 n) (A221446 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221439.P8837450336400531529

/-! ## A221439.P15619775414105249418

`A221446(A001844(n))+A185284(n)`
-/

namespace A221439.P15619775414105249418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221446 (A001844 n).toNat + A185284 n

end

end A221439.P15619775414105249418

/-!
# A221440: Number of n X 2 binary arrays with every 0 a horizontal or antidiagonal neighbor to some 1.

The programs for A221440, the canonical program `A221440.P11931177665011639077` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A221440 has offset 1).

The definition of A221440 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 189 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A221440.P16460325039541305151

`ogf((3+x^2)/(1-3x-x^2-x^3))`
-/

namespace A221440.P16460325039541305151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, 0, 1] [1, -3, -1, -1] n

end

end A221440.P16460325039541305151

namespace A221440

/-- `ogf((3+x^2)/(1-3x-x^2-x^3))` -/
def P16460325039541305151.Spec : Prop :=
  ∀ n, P16460325039541305151.a n = A221440 (n + 1)

end A221440

/-! ## A221440.P11931177665011639077

`3*a(n-1)+a(n-2)+a(n-3)` with `a(0)=3, a(1)=9, a(2)=31`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A221440

/-- `3*a(n-1)+a(n-2)+a(n-3)` -/
def P11931177665011639077.Spec : Prop :=
  ∀ n, (P11931177665011639077.a n : ℤ) = A221440 (n + 1)

theorem P11931177665011639077.correct : P11931177665011639077.Spec := by
  intro n
  simp only [A221440, Nat.add_sub_cancel]

end A221440

/-! ## A221440.P10416968890145475761

`A000213(2*n+3)`
-/

namespace A221440.P10416968890145475761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000213 (2 * n + 3)

end

end A221440.P10416968890145475761

namespace A221440

/-- `A000213(2*n+3)` -/
def P10416968890145475761.Spec : Prop :=
  ∀ n, P10416968890145475761.a n = A221440 (n + 1)

end A221440

/-! ## A221440.P11926326963031810290

`A045794(3*n+4)`
-/

namespace A221440.P11926326963031810290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045794 (3 * n + 4)

end

end A221440.P11926326963031810290

namespace A221440

/-- `A045794(3*n+4)` -/
def P11926326963031810290.Spec : Prop :=
  ∀ n, P11926326963031810290.a n = A221440 (n + 1)

end A221440

/-! ## A221440.P6423825045119331331

`A065678(3*n+5)`
-/

namespace A221440.P6423825045119331331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065678 (3 * n + 5)

end

end A221440.P6423825045119331331

namespace A221440

/-- `A065678(3*n+5)` -/
def P6423825045119331331.Spec : Prop :=
  ∀ n, P6423825045119331331.a n = A221440 (n + 1)

end A221440

/-! ## A221440.P14378386028223707930

`A288465(Δ[n²])-1`
-/

namespace A221440.P14378386028223707930
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288465 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - 1

end

end A221440.P14378386028223707930

namespace A221440

/-- `A288465(Δ[n²])-1` -/
def P14378386028223707930.Spec : Prop :=
  ∀ n, P14378386028223707930.a n = A221440 (n + 1)

end A221440

/-! ## A221440.P14821481207292434692

`A054668(2*(n+1))+1`
-/

namespace A221440.P14821481207292434692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054668 (2 * (n + 1)) + 1

end

end A221440.P14821481207292434692

namespace A221440

/-- `A054668(2*(n+1))+1` -/
def P14821481207292434692.Spec : Prop :=
  ∀ n, P14821481207292434692.a n = A221440 (n + 1)

end A221440

/-! ## A221440.P12683936394003699942

`∑[A196700(2*(n+1))]+1`
-/

namespace A221440.P12683936394003699942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196700 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A221440.P12683936394003699942

namespace A221440

/-- `∑[A196700(2*(n+1))]+1` -/
def P12683936394003699942.Spec : Prop :=
  ∀ n, P12683936394003699942.a n = A221440 (n + 1)

end A221440

/-! ## A221440.P2212867936947764768

`2*A008937(2*n+1)+1`
-/

namespace A221440.P2212867936947764768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008937 (2 * n + 1) + 1

end

end A221440.P2212867936947764768

namespace A221440

/-- `2*A008937(2*n+1)+1` -/
def P2212867936947764768.Spec : Prop :=
  ∀ n, P2212867936947764768.a n = A221440 (n + 1)

end A221440

/-! ## A221440.P402596135292486560

`A113300(n+2)-A113300(n)`
-/

namespace A221440.P402596135292486560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113300 (n + 2) - A113300 n

end

end A221440.P402596135292486560

namespace A221440

/-- `A113300(n+2)-A113300(n)` -/
def P402596135292486560.Spec : Prop :=
  ∀ n, P402596135292486560.a n = A221440 (n + 1)

end A221440

/-! ## A221440.P11303856240361445964

`record[A078042(n)-A078042(n+1)]`
-/

namespace A221440.P11303856240361445964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078042 n - A078042 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221440.P11303856240361445964

namespace A221440

/-- `record[A078042(n)-A078042(n+1)]` -/
def P11303856240361445964.Spec : Prop :=
  ∀ n, P11303856240361445964.a n = A221440 (n + 1)

end A221440

/-! ## A221440.P9506656215858669523

`A099463(n+1)+A099463(n+2)`
-/

namespace A221440.P9506656215858669523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099463 (n + 1) + A099463 (n + 2)

end

end A221440.P9506656215858669523

namespace A221440

/-- `A099463(n+1)+A099463(n+2)` -/
def P9506656215858669523.Spec : Prop :=
  ∀ n, P9506656215858669523.a n = A221440 (n + 1)

end A221440

/-! ## A221440.P11591476921322527477

`A047081(2*n+1)+A047081(2*n)`
-/

namespace A221440.P11591476921322527477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047081 (2 * n + 1) + A047081 (2 * n)

end

end A221440.P11591476921322527477

namespace A221440

/-- `A047081(2*n+1)+A047081(2*n)` -/
def P11591476921322527477.Spec : Prop :=
  ∀ n, P11591476921322527477.a n = A221440 (n + 1)

end A221440

/-! ## A221440.P2801590188908435198

`A145027(2*(n+1))+A001590(2*n)`
-/

namespace A221440.P2801590188908435198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145027 (2 * (n + 1)) + A001590 (2 * n)

end

end A221440.P2801590188908435198

namespace A221440

/-- `A145027(2*(n+1))+A001590(2*n)` -/
def P2801590188908435198.Spec : Prop :=
  ∀ n, P2801590188908435198.a n = A221440 (n + 1)

end A221440

/-! ## A221440.P18388607713285183154

`A214727(2*n)+A100683(2*(n+1))`
-/

namespace A221440.P18388607713285183154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214727 (2 * n) + A100683 (2 * (n + 1))

end

end A221440.P18388607713285183154

namespace A221440

/-- `A214727(2*n)+A100683(2*(n+1))` -/
def P18388607713285183154.Spec : Prop :=
  ∀ n, P18388607713285183154.a n = A221440 (n + 1)

end A221440

/-! ## A221440.P14449604010656296526

`A078042(2*n)-A078042(2*n+1)`
-/

namespace A221440.P14449604010656296526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078042 (2 * n) - A078042 (2 * n + 1)

end

end A221440.P14449604010656296526

namespace A221440

/-- `A078042(2*n)-A078042(2*n+1)` -/
def P14449604010656296526.Spec : Prop :=
  ∀ n, P14449604010656296526.a n = A221440 (n + 1)

end A221440

/-! ## A221440.P13699297978593996369

`A276658(2*n+3)+A000073(2*n)`
-/

namespace A221440.P13699297978593996369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276658 (2 * n + 3) + A000073 (2 * n)

end

end A221440.P13699297978593996369

namespace A221440

/-- `A276658(2*n+3)+A000073(2*n)` -/
def P13699297978593996369.Spec : Prop :=
  ∀ n, P13699297978593996369.a n = A221440 (n + 1)

end A221440

/-! ## A221440.P17770597458276349200

`A007486(2*(n+1))+A000073(2*n+1)`
-/

namespace A221440.P17770597458276349200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007486 (2 * (n + 1)) + A000073 (2 * n + 1)

end

end A221440.P17770597458276349200

namespace A221440

/-- `A007486(2*(n+1))+A000073(2*n+1)` -/
def P17770597458276349200.Spec : Prop :=
  ∀ n, P17770597458276349200.a n = A221440 (n + 1)

end A221440

/-! ## A221440.P4364634100770713845

`A100683(2*n+1)+A020992(2*(n+1))`
-/

namespace A221440.P4364634100770713845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100683 (2 * n + 1) + A020992 (2 * (n + 1))

end

end A221440.P4364634100770713845

namespace A221440

/-- `A100683(2*n+1)+A020992(2*(n+1))` -/
def P4364634100770713845.Spec : Prop :=
  ∀ n, P4364634100770713845.a n = A221440 (n + 1)

end A221440

/-! ## A221440.P4935637402424215842

`A214899(2*n+1)+A145027(2*n+1)`
-/

namespace A221440.P4935637402424215842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214899 (2 * n + 1) + A145027 (2 * n + 1)

end

end A221440.P4935637402424215842

namespace A221440

/-- `A214899(2*n+1)+A145027(2*n+1)` -/
def P4935637402424215842.Spec : Prop :=
  ∀ n, P4935637402424215842.a n = A221440 (n + 1)

end A221440

/-!
# A221441: Number of n X 3 binary arrays with every 0 a horizontal or antidiagonal neighbor to some 1.

The programs for A221441, the canonical program `A221441.P912384353392743955` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A221441 has offset 1).

The definition of A221441 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 121 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A221441.P912384353392743955

`5*a(n-1)+11*a(n-2)+a(n-3)` with `a(0)=5, a(1)=33, a(2)=221`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A221441

/-- `5*a(n-1)+11*a(n-2)+a(n-3)` -/
def P912384353392743955.Spec : Prop :=
  ∀ n, (P912384353392743955.a n : ℤ) = A221441 (n + 1)

theorem P912384353392743955.correct : P912384353392743955.Spec := by
  intro n
  simp only [A221441, Nat.add_sub_cancel]

end A221441

/-! ## A221441.P3625443392258159080

`A221446(∑[n+3]+1)`
-/

namespace A221441.P3625443392258159080
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221446 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A221441.P3625443392258159080

namespace A221441

/-- `A221446(∑[n+3]+1)` -/
def P3625443392258159080.Spec : Prop :=
  ∀ n, P3625443392258159080.a n = A221441 (n + 1)

end A221441

/-! ## A221441.P7655163127844542648

`or(1, A221446(A141214(n)+1))`
-/

namespace A221441.P7655163127844542648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A221446 (A141214 n + 1).toNat)

end

end A221441.P7655163127844542648

namespace A221441

/-- `or(1, A221446(A141214(n)+1))` -/
def P7655163127844542648.Spec : Prop :=
  ∀ n, P7655163127844542648.a n = A221441 (n + 1)

end A221441

/-! ## A221441.P15233389656840637548

`A221446(Δ[A008778(n)])+char[18]`
-/

namespace A221441.P15233389656840637548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  18

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221446 (f1 (n + 1) - f1 n).toNat + ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A221441.P15233389656840637548

namespace A221441

/-- `A221446(Δ[A008778(n)])+char[18]` -/
def P15233389656840637548.Spec : Prop :=
  ∀ n, P15233389656840637548.a n = A221441 (n + 1)

end A221441

/-! ## A221441.P1832552716872331977

`A007318(C(2, n))*A221446(A141214(n)+1)`
-/

namespace A221441.P1832552716872331977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A221446 (A141214 n + 1).toNat

end

end A221441.P1832552716872331977

namespace A221441

/-- `A007318(C(2, n))*A221446(A141214(n)+1)` -/
def P1832552716872331977.Spec : Prop :=
  ∀ n, P1832552716872331977.a n = A221441 (n + 1)

end A221441

/-!
# A221442: Number of n X 4 binary arrays with every 0 a horizontal or antidiagonal neighbor to some 1.

The programs for A221442, there is no canonical definition to state claims against.
-/

/-! ## A221442.P1367814696319277485

`A221446(A141214(n+1))`
-/

namespace A221442.P1367814696319277485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221446 (A141214 (n + 1)).toNat

end

end A221442.P1367814696319277485

/-! ## A221442.P4315547901723656667

`A221446(A155212(n)+5)`
-/

namespace A221442.P4315547901723656667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221446 (A155212 n + 5).toNat

end

end A221442.P4315547901723656667

/-! ## A221442.P12342785433686675993

`A221446(A056000(n)+7)`
-/

namespace A221442.P12342785433686675993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221446 (A056000 n + 7).toNat

end

end A221442.P12342785433686675993

/-! ## A221442.P6400657082630806956

`A221446(eq[2, A152157(n)])`
-/

namespace A221442.P6400657082630806956
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221446 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A221442.P6400657082630806956

/-! ## A221442.P2045641867251161163

`A221446(eq[3, A193592(n)])`
-/

namespace A221442.P2045641867251161163
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221446 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A221442.P2045641867251161163

/-!
# A221443: Number of n X 5 binary arrays with every 0 a horizontal or antidiagonal neighbor to some 1.

The programs for A221443, there is no canonical definition to state claims against.
-/

/-! ## A221443.P9885441387229771302

`A221446(A056115(n)+11)`
-/

namespace A221443.P9885441387229771302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221446 (A056115 n + 11).toNat

end

end A221443.P9885441387229771302

/-! ## A221443.P10277185800612326451

`A221446(eq[3, A152157(n)])`
-/

namespace A221443.P10277185800612326451
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221446 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A221443.P10277185800612326451

/-! ## A221443.P15835888905998730411

`A221446(eq[4, A193592(n)])`
-/

namespace A221443.P15835888905998730411
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221446 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A221443.P15835888905998730411

/-! ## A221443.P2088512473584094695

`A221446(Δ[A023545(n+1)])`
-/

namespace A221443.P2088512473584094695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221446 (f1 (n + 1) - f1 n).toNat

end

end A221443.P2088512473584094695

/-! ## A221443.P8195664274438861462

`A221446(eq[5, A194921(n+1)])`
-/

namespace A221443.P8195664274438861462
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194921 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221446 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A221443.P8195664274438861462

/-!
# A221444: Number of n X 6 binary arrays with every 0 a horizontal or antidiagonal neighbor to some 1.

The programs for A221444, there is no canonical definition to state claims against.
-/

/-! ## A221444.P9347803951896542227

`A221446(A052905(n+3))`
-/

namespace A221444.P9347803951896542227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221446 (A052905 (n + 3)).toNat

end

end A221444.P9347803951896542227

/-! ## A221444.P2205586451822392153

`A221446(eq[3, A219347(n)])`
-/

namespace A221444.P2205586451822392153
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221446 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A221444.P2205586451822392153

/-! ## A221444.P17649176437995534911

`A221446(eq[5, A193592(n)])`
-/

namespace A221444.P17649176437995534911
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221446 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A221444.P17649176437995534911

/-! ## A221444.P13662450480984347561

`A221446(eq[8, A258709(n)])`
-/

namespace A221444.P13662450480984347561
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258709 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221446 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A221444.P13662450480984347561

/-! ## A221444.P12436001917119080280

`A221446(eq[6, A200370(n+1)])`
-/

namespace A221444.P12436001917119080280
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221446 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A221444.P12436001917119080280

/-!
# A221445: Number of n X 7 binary arrays with every 0 a horizontal or antidiagonal neighbor to some 1.

The programs for A221445, there is no canonical definition to state claims against.
-/

/-! ## A221445.P12708704324920354006

`A221446(A055999(n+4))`
-/

namespace A221445.P12708704324920354006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221446 (A055999 (n + 4)).toNat

end

end A221445.P12708704324920354006

/-! ## A221445.P16577058840058800100

`A221446(eq[4, A219347(n)])`
-/

namespace A221445.P16577058840058800100
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221446 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A221445.P16577058840058800100

/-! ## A221445.P7291273272647883270

`A221446(eq[6, A193592(n)])`
-/

namespace A221445.P7291273272647883270
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221446 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A221445.P7291273272647883270

/-! ## A221445.P2116775537920737431

`A221446(eq[7, A200370(n+1)])`
-/

namespace A221445.P2116775537920737431
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221446 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A221445.P2116775537920737431

/-! ## A221445.P11163730240550157051

`A221446(eq[10, A185782(n+1)])`
-/

namespace A221445.P11163730240550157051
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221446 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A221445.P11163730240550157051

/-!
# A221447: Number of 2 X n binary arrays with every 0 a horizontal or antidiagonal neighbor to some 1.

The programs for A221447, there is no canonical definition to state claims against.
-/

/-! ## A221447.P502119989766047997

`A221446(∑[n+1]+2)`
-/

namespace A221447.P502119989766047997
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221446 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A221447.P502119989766047997

/-! ## A221447.P9831895439094081780

`record[ratio[A221446(A080036(n))]]`
-/

namespace A221447.P9831895439094081780
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221446 (A080036 n).toNat

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221447.P9831895439094081780

/-! ## A221447.P8472331034872970901

`record[A221446(A249725(2*(n+1)))]`
-/

namespace A221447.P8472331034872970901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221446 (A249725 (2 * (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221447.P8472331034872970901

/-! ## A221447.P8242649045664455060

`record[gcd(A098825(n), A221446(n+1))]`
-/

namespace A221447.P8242649045664455060
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A098825 n) (A221446 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221447.P8242649045664455060

/-! ## A221447.P10023865515779106812

`record[floor(A221446(n+3)/A221446(n+1))]`
-/

namespace A221447.P10023865515779106812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A221446 (n + 3) : ℚ) / (A221446 (n + 1) : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221447.P10023865515779106812

/-!
# A221448: Number of 3 X n binary arrays with every 0 a horizontal or antidiagonal neighbor to some 1.

The programs for A221448, there is no canonical definition to state claims against.
-/

/-! ## A221448.P1212038290831131779

`A221446(∑[n+2]+4)`
-/

namespace A221448.P1212038290831131779
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221446 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A221448.P1212038290831131779

/-! ## A221448.P3110089409702252331

`or(1, A221446(A167614(n+1)))`
-/

namespace A221448.P3110089409702252331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A221446 (A167614 (n + 1)).toNat)

end

end A221448.P3110089409702252331

/-! ## A221448.P17434725448472648239

`A015970(n)*A221446(A167614(n+1))`
-/

namespace A221448.P17434725448472648239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015970 n * A221446 (A167614 (n + 1)).toNat

end

end A221448.P17434725448472648239

/-! ## A221448.P12402580113706897232

`gcd(A000038(n), A221446(A167614(n+1)))`
-/

namespace A221448.P12402580113706897232
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A221446 (A167614 (n + 1)).toNat)

end

end A221448.P12402580113706897232

/-! ## A221448.P5967404439186092230

`lcm(A087960(n), A221446(A167614(n+1)))`
-/

namespace A221448.P5967404439186092230
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A087960 n) (A221446 (A167614 (n + 1)).toNat)

end

end A221448.P5967404439186092230

/-!
# A221449: Number of 4 X n binary arrays with every 0 a horizontal or antidiagonal neighbor to some 1.

The programs for A221449, there is no canonical definition to state claims against.
-/

/-! ## A221449.P5809992553208980355

`A221446(A141214(n)+7)`
-/

namespace A221449.P5809992553208980355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221446 (A141214 n + 7).toNat

end

end A221449.P5809992553208980355

/-! ## A221449.P16295762245322216020

`A221446(A052905(n)+9)`
-/

namespace A221449.P16295762245322216020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221446 (A052905 n + 9).toNat

end

end A221449.P16295762245322216020

/-! ## A221449.P2628047667068606152

`A221446(A055999(n)+10)`
-/

namespace A221449.P2628047667068606152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221446 (A055999 n + 10).toNat

end

end A221449.P2628047667068606152

/-! ## A221449.P11345745369097114129

`A221446(A167614(n+2)+1)`
-/

namespace A221449.P11345745369097114129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221446 (A167614 (n + 2) + 1).toNat

end

end A221449.P11345745369097114129

/-! ## A221449.P15735144042651790150

`A221446(A166136(n+2)-2)`
-/

namespace A221449.P15735144042651790150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221446 (A166136 (n + 2) - 2).toNat

end

end A221449.P15735144042651790150

/-!
# A221450: Number of 5 X n binary arrays with every 0 a horizontal or antidiagonal neighbor to some 1.

The programs for A221450, there is no canonical definition to state claims against.
-/

/-! ## A221450.P4764808069122558129

`A221446(A155212(n)+13)`
-/

namespace A221450.P4764808069122558129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221446 (A155212 n + 13).toNat

end

end A221450.P4764808069122558129

/-! ## A221450.P354078160828157265

`A221446(A056000(n)+15)`
-/

namespace A221450.P354078160828157265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221446 (A056000 n + 15).toNat

end

end A221450.P354078160828157265

/-! ## A221450.P12484537091418056857

`A221446(eq[7, A066657(n)])`
-/

namespace A221450.P12484537091418056857
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221446 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A221450.P12484537091418056857

/-! ## A221450.P5983850883598310304

`A221446(A141214(n+1)+8)`
-/

namespace A221450.P5983850883598310304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221446 (A141214 (n + 1) + 8).toNat

end

end A221450.P5983850883598310304

/-! ## A221450.P14858228502150762439

`A221446(eq[6, A131818(n+1)])`
-/

namespace A221450.P14858228502150762439
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221446 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A221450.P14858228502150762439

/-!
# A221451: Number of 6 X n binary arrays with every 0 a horizontal or antidiagonal neighbor to some 1.

The programs for A221451, there is no canonical definition to state claims against.
-/

/-! ## A221451.P10646118904578094006

`A221446(A166136(n+4))`
-/

namespace A221451.P10646118904578094006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221446 (A166136 (n + 4)).toNat

end

end A221451.P10646118904578094006

/-! ## A221451.P18440695156114812242

`A221446(A056115(n)+21)`
-/

namespace A221451.P18440695156114812242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221446 (A056115 n + 21).toNat

end

end A221451.P18440695156114812242

/-! ## A221451.P7159082719719344607

`A221446(eq[7, A131818(n+1)])`
-/

namespace A221451.P7159082719719344607
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221446 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A221451.P7159082719719344607

/-! ## A221451.P32365916341292438

`A221446(A000124(n+6)-(n+1))`
-/

namespace A221451.P32365916341292438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221446 (A000124 (n + 6) - (n + 1 : ℤ)).toNat

end

end A221451.P32365916341292438

/-! ## A221451.P11946013038756379971

`A221446(eq[8, A258709(n)]-(n-5))`
-/

namespace A221451.P11946013038756379971
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258709 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221446 ((SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - ((n : ℤ) - 5)).toNat

end

end A221451.P11946013038756379971

/-!
# A221452: Number of 7 X n binary arrays with every 0 a horizontal or antidiagonal neighbor to some 1.

The programs for A221452, there is no canonical definition to state claims against.
-/

/-! ## A221452.P9415713291963348251

`A221446(eq[11, A066657(n)])`
-/

namespace A221452.P9415713291963348251
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221446 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A221452.P9415713291963348251

/-! ## A221452.P6862604475625386955

`A221446(A166136(n+5)+1)`
-/

namespace A221452.P6862604475625386955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221446 (A166136 (n + 5) + 1).toNat

end

end A221452.P6862604475625386955

/-! ## A221452.P7710294605223624315

`A221446(A000217(n+6)+7)`
-/

namespace A221452.P7710294605223624315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221446 (A000217 (n + 6) + 7).toNat

end

end A221452.P7710294605223624315

/-! ## A221452.P6576070841890680210

`A221446(eq[6, A002262(n)]+1)`
-/

namespace A221452.P6576070841890680210
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221446 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A221452.P6576070841890680210

/-! ## A221452.P4572337867633737989

`A221446(eq[8, A131818(n+1)])`
-/

namespace A221452.P4572337867633737989
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221446 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A221452.P4572337867633737989

/-!
# A221453: Number of 0..n arrays of length n with each element unequal to at least one neighbor, with new values introduced in 0..n order.

The programs for A221453, there is no canonical definition to state claims against.
-/

/-! ## A221453.P7070901941009706254

`A221459(2*n²+1)`
-/

namespace A221453.P7070901941009706254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221459 (2 * n ^ 2 + 1)

end

end A221453.P7070901941009706254

/-! ## A221453.P9464754974991353756

`gcd(n, n+1)*A221459(A058331(n))`
-/

namespace A221453.P9464754974991353756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd n (n + 1) : ℤ) * A221459 (A058331 n).toNat

end

end A221453.P9464754974991353756

/-! ## A221453.P5326354131966534250

`A054977(n)*A221459(A061925(2*n))`
-/

namespace A221453.P5326354131966534250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n * A221459 (A061925 (2 * n)).toNat

end

end A221453.P5326354131966534250

/-! ## A221453.P9616441506566378199

`A178334(n)*A221459(A061925(2*n))`
-/

namespace A221453.P9616441506566378199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 n * A221459 (A061925 (2 * n)).toNat

end

end A221453.P9616441506566378199

/-! ## A221453.P9600234351453850353

`A221459(A058331(n))%(2-A001020(n+1))`
-/

namespace A221453.P9600234351453850353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A221459 (A058331 n).toNat) (2 - A001020 (n + 1))

end

end A221453.P9600234351453850353

/-!
# A221454: Number of 0..3 arrays of length n with each element unequal to at least one neighbor, with new values introduced in 0..3 order.

The programs for A221454, the canonical program `A221454.P815868609281134209` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A221454 has offset 1).

The definition of A221454 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 175 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A221454.P815868609281134209

`4*a(n-1)+a(n-2)-6*a(n-3)-3*a(n-4)` with `a(0)=0, a(1)=1, a(2)=2, a(3)=7`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A221454

/-- `4*a(n-1)+a(n-2)-6*a(n-3)-3*a(n-4)` -/
def P815868609281134209.Spec : Prop :=
  ∀ n, P815868609281134209.a n = A221454 (n + 1)

theorem P815868609281134209.correct : P815868609281134209.Spec := by
  intro n
  simp only [A221454, Nat.add_sub_cancel]

end A221454

/-! ## A221454.P4808220858153368631

`3*(a(n-1)+a(n-2))-A000045(n)` with `a(0)=0, a(1)=1`
-/

namespace A221454.P4808220858153368631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  3 * (a (n - 1) + a (n - 2)) - A000045 n

end

end A221454.P4808220858153368631

namespace A221454

/-- `3*(a(n-1)+a(n-2))-A000045(n)` -/
def P4808220858153368631.Spec : Prop :=
  ∀ n, P4808220858153368631.a n = A221454 (n + 1)

end A221454

/-! ## A221454.P15756739962659305268

`(A030195(n)+A000045(n))/2`
-/

namespace A221454.P15756739962659305268
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A030195 n + A000045 n : ℚ) / 2

end

end A221454.P15756739962659305268

namespace A221454

/-- `(A030195(n)+A000045(n))/2` -/
def P15756739962659305268.Spec : Prop :=
  ∀ n, P15756739962659305268.a n = (A221454 (n + 1) : ℚ)

end A221454

/-! ## A221454.P11628142336114984069

`A221459(∑[n+3]+1)`
-/

namespace A221454.P11628142336114984069
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221459 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A221454.P11628142336114984069

namespace A221454

/-- `A221459(∑[n+3]+1)` -/
def P11628142336114984069.Spec : Prop :=
  ∀ n, P11628142336114984069.a n = A221454 (n + 1)

end A221454

/-! ## A221454.P6590987320095984875

`record[A221459(A347633(n+1))]`
-/

namespace A221454.P6590987320095984875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221459 (A347633 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221454.P6590987320095984875

namespace A221454

/-- `record[A221459(A347633(n+1))]` -/
def P6590987320095984875.Spec : Prop :=
  ∀ n, P6590987320095984875.a n = A221454 (n + 1)

end A221454

/-! ## A221454.P18244431728046147423

`record[A010054(n+3)*A221459(n+1)]`
-/

namespace A221454.P18244431728046147423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (n + 3) * A221459 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221454.P18244431728046147423

namespace A221454

/-- `record[A010054(n+3)*A221459(n+1)]` -/
def P18244431728046147423.Spec : Prop :=
  ∀ n, P18244431728046147423.a n = A221454 (n + 1)

end A221454

/-! ## A221454.P15254387529498179162

`record[A221459(A034856(A286558(n)))]`
-/

namespace A221454.P15254387529498179162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221459 (A034856 (A286558 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221454.P15254387529498179162

namespace A221454

/-- `record[A221459(A034856(A286558(n)))]` -/
def P15254387529498179162.Spec : Prop :=
  ∀ n, P15254387529498179162.a n = A221454 (n + 1)

end A221454

/-!
# A221455: Number of 0..4 arrays of length n with each element unequal to at least one neighbor, with new values introduced in 0..4 order.

The programs for A221455, there is no canonical definition to state claims against.
-/

/-! ## A221455.P9648345496213643961

`A221459(∑[n+4]+3)`
-/

namespace A221455.P9648345496213643961
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221459 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A221455.P9648345496213643961

/-! ## A221455.P5543162847096409859

`record[A221459(A027379(n))]`
-/

namespace A221455.P5543162847096409859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221459 (A027379 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221455.P5543162847096409859

/-! ## A221455.P4263802951381796929

`record[A221459(abs(A046691(n))+1)]`
-/

namespace A221455.P4263802951381796929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221459 (|A046691 n| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221455.P4263802951381796929

/-! ## A221455.P10780809081883938807

`or(char[1], A221459(A055998(n+2)))`
-/

namespace A221455.P10780809081883938807
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A221459 (A055998 (n + 2)).toNat)

end

end A221455.P10780809081883938807

/-! ## A221455.P16259065755193807405

`record[A221459(A028310(C(n+3, 2)-3))]`
-/

namespace A221455.P16259065755193807405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221459 (A028310 (Nat.choose (n + 3) 2 - 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221455.P16259065755193807405

/-! ## A221455.P2905913671641649442

`record[A221459(n+1)/A208761(n+5)]`
-/

namespace A221455.P2905913671641649442
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A221459 (n + 1) : ℚ) / (A208761 (n + 5) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221455.P2905913671641649442

/-! ## A221455.P12928432083049940937

`A178489(n)*A221459(A055998(n+2))`
-/

namespace A221455.P12928432083049940937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178489 n * A221459 (A055998 (n + 2)).toNat

end

end A221455.P12928432083049940937

/-! ## A221455.P8026678188066577993

`A221459(A055998(n+2))%A109808(n+1)`
-/

namespace A221455.P8026678188066577993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A221459 (A055998 (n + 2)).toNat) (A109808 (n + 1))

end

end A221455.P8026678188066577993

/-! ## A221455.P13962287079063680941

`A000265(A059268(n))*A221459(A027379(n+2))`
-/

namespace A221455.P13962287079063680941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A059268 n).toNat * A221459 (A027379 (n + 2)).toNat

end

end A221455.P13962287079063680941

/-!
# A221456: Number of 0..5 arrays of length n with each element unequal to at least one neighbor, with new values introduced in 0..5 order.

The programs for A221456, there is no canonical definition to state claims against.
-/

/-! ## A221456.P14465376131431657674

`A221459(A046691(n+3))`
-/

namespace A221456.P14465376131431657674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221459 (A046691 (n + 3)).toNat

end

end A221456.P14465376131431657674

/-! ## A221456.P7904976914996831020

`A221459(A056115(n)+11)`
-/

namespace A221456.P7904976914996831020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221459 (A056115 n + 11).toNat

end

end A221456.P7904976914996831020

/-! ## A221456.P12538488520656423234

`record[A221459(abs(A046691(n)))]`
-/

namespace A221456.P12538488520656423234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221459 |A046691 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221456.P12538488520656423234

/-! ## A221456.P3183817169326245734

`A221459(Δ[A023545(n+1)])`
-/

namespace A221456.P3183817169326245734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221459 (f1 (n + 1) - f1 n).toNat

end

end A221456.P3183817169326245734

/-! ## A221456.P4290267479856541469

`record[A221459(A052905(n)+1)]`
-/

namespace A221456.P4290267479856541469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221459 (A052905 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221456.P4290267479856541469

/-! ## A221456.P3952213039005274639

`record[A221459(A055999(n)+2)]`
-/

namespace A221456.P3952213039005274639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221459 (A055999 n + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221456.P3952213039005274639

/-! ## A221456.P2524935000104309085

`record[A221459(A027379(n+1)-1)]`
-/

namespace A221456.P2524935000104309085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221459 (A027379 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221456.P2524935000104309085

/-! ## A221456.P14246027242034699244

`record[A221459(A034856(n+2)-2)]`
-/

namespace A221456.P14246027242034699244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221459 (A034856 (n + 2) - 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221456.P14246027242034699244

/-! ## A221456.P6962933476312527305

`A221459(A000217(n+4)+n+1)`
-/

namespace A221456.P6962933476312527305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221459 (A000217 (n + 4) + (n + 1 : ℤ)).toNat

end

end A221456.P6962933476312527305

/-! ## A221456.P10426819700233989595

`record[A221459(record[A347633(n+1)]+n)]`
-/

namespace A221456.P10426819700233989595
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347633 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221459 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221456.P10426819700233989595

/-!
# A221457: Number of 0..6 arrays of length n with each element unequal to at least one neighbor, with new values introduced in 0..6 order.

The programs for A221457, there is no canonical definition to state claims against.
-/

/-! ## A221457.P16755974774624024295

`record[A221459(A052905(n))]`
-/

namespace A221457.P16755974774624024295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221459 (A052905 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221457.P16755974774624024295

/-! ## A221457.P13795831235252092558

`A221459(A052905(n+3))`
-/

namespace A221457.P13795831235252092558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221459 (A052905 (n + 3)).toNat

end

end A221457.P13795831235252092558

/-! ## A221457.P8623443398095798716

`record[A221459(A055999(n)+1)]`
-/

namespace A221457.P8623443398095798716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221459 (A055999 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221457.P8623443398095798716

/-! ## A221457.P6969011887065695924

`A221459(A055999(n+3)+1)`
-/

namespace A221457.P6969011887065695924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221459 (A055999 (n + 3) + 1).toNat

end

end A221457.P6969011887065695924

/-! ## A221457.P16568532542031282627

`A221459(A000217(n+6)-5)`
-/

namespace A221457.P16568532542031282627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221459 (A000217 (n + 6) - 5).toNat

end

end A221457.P16568532542031282627

/-! ## A221457.P13351142983685811213

`A221459(A000124(n+6)-6)`
-/

namespace A221457.P13351142983685811213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221459 (A000124 (n + 6) - 6).toNat

end

end A221457.P13351142983685811213

/-! ## A221457.P526574876827650365

`record[A221459(abs(1-A046691(n)))]`
-/

namespace A221457.P526574876827650365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221459 |1 - A046691 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221457.P526574876827650365

/-! ## A221457.P1285228316975900785

`A221459(Δ[A023545(n+2)]-1)`
-/

namespace A221457.P1285228316975900785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221459 (f1 (n + 1) - f1 n - 1).toNat

end

end A221457.P1285228316975900785

/-! ## A221457.P243220416884191572

`record[A221459(A046691(n+1)-1)]`
-/

namespace A221457.P243220416884191572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221459 (A046691 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221457.P243220416884191572

/-! ## A221457.P604462913675974360

`record[A221459(A027379(n+1)-2)]`
-/

namespace A221457.P604462913675974360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221459 (A027379 (n + 1) - 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221457.P604462913675974360

/-!
# A221458: Number of 0..7 arrays of length n with each element unequal to at least one neighbor, with new values introduced in 0..7 order.

The programs for A221458, there is no canonical definition to state claims against.
-/

/-! ## A221458.P4416208776631824834

`A221459(A055999(n+4))`
-/

namespace A221458.P4416208776631824834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221459 (A055999 (n + 4)).toNat

end

end A221458.P4416208776631824834

/-! ## A221458.P7219098719692509270

`A221459(A052905(n+4)-1)`
-/

namespace A221458.P7219098719692509270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221459 (A052905 (n + 4) - 1).toNat

end

end A221458.P7219098719692509270

/-! ## A221458.P194387926357715041

`A221459(A046691(n+5)-2)`
-/

namespace A221458.P194387926357715041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221459 (A046691 (n + 5) - 2).toNat

end

end A221458.P194387926357715041

/-! ## A221458.P5997753068558256181

`A221459(A034856(n+6)-4)`
-/

namespace A221458.P5997753068558256181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221459 (A034856 (n + 6) - 4).toNat

end

end A221458.P5997753068558256181

/-! ## A221458.P15801075660939703441

`A221459(A000217(n+7)-6)`
-/

namespace A221458.P15801075660939703441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221459 (A000217 (n + 7) - 6).toNat

end

end A221458.P15801075660939703441

/-! ## A221458.P5040007827646173114

`A221459(A000124(n+7)-7)`
-/

namespace A221458.P5040007827646173114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221459 (A000124 (n + 7) - 7).toNat

end

end A221458.P5040007827646173114

/-!
# A221459: T(n,k)=Number of 0..k arrays of length n with each element unequal to at least one neighbor, with new values introduced in 0..k order.

The programs for A221459, there is no canonical definition to state claims against.
-/

/-! ## A221459.P740351217862393394

`A191228(A145111(n)²)`
-/

namespace A221459.P740351217862393394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191228 (A145111 n ^ 2).toNat

end

end A221459.P740351217862393394

/-! ## A221459.P13795435664790317151

`A191228(A216274(n)²)`
-/

namespace A221459.P13795435664790317151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191228 (A216274 n ^ 2).toNat

end

end A221459.P13795435664790317151

/-! ## A221459.P12345710933884772186

`A191228(A145111(n)*A216274(n))`
-/

namespace A221459.P12345710933884772186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191228 (A145111 n * A216274 n).toNat

end

end A221459.P12345710933884772186

/-! ## A221459.P8079766068362787370

`A371165(A210964(3*n+2))%A059268(n)`
-/

namespace A221459.P8079766068362787370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A371165 (A210964 (3 * n + 2)).toNat) (A059268 n)

end

end A221459.P8079766068362787370

/-! ## A221459.P13419491674552217049

`A089614(A355721(n))`
-/

namespace A221459.P13419491674552217049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089614 (A355721 n).toNat

end

end A221459.P13419491674552217049

/-!
# A221460: Number of 0..n arrays of length n with each element unequal to at least one neighbor, starting with 0.

The programs for A221460, there is no canonical definition to state claims against.
-/

/-! ## A221460.P16117470072179446323

`A221463(∑[4*n]+1)`
-/

namespace A221460.P16117470072179446323
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221463 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A221460.P16117470072179446323

/-! ## A221460.P3380887901321076804

`A178489(n)*A221463(A001844(n))`
-/

namespace A221460.P3380887901321076804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178489 n * A221463 (A001844 n).toNat

end

end A221460.P3380887901321076804

/-! ## A221460.P28574031679666761

`lcm(A093527(n), A221463(A001844(n)))`
-/

namespace A221460.P28574031679666761
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A093527 n) (A221463 (A001844 n).toNat)

end

end A221460.P28574031679666761

/-! ## A221460.P15476029398963692840

`and(A057428(n), A221463(A001844(n)))`
-/

namespace A221460.P15476029398963692840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A057428 n) (A221463 (A001844 n).toNat)

end

end A221460.P15476029398963692840

/-! ## A221460.P12474038334172825863

`A014963(4*n+2)*A221463(A001844(n))`
-/

namespace A221460.P12474038334172825863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (4 * n + 2) * A221463 (A001844 n).toNat

end

end A221460.P12474038334172825863

/-!
# A221461: Number of 0..6 arrays of length n with each element unequal to at least one neighbor, starting with 0.

The programs for A221461, the canonical program `A221461.P13067174962663004202` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A221461 has offset 1).

The definition of A221461 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 120 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A221461.P17351320237216606215

`ogf(6x/(1-6x-6x^2))`
-/

namespace A221461.P17351320237216606215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 6] [1, -6, -6] n

end

end A221461.P17351320237216606215

namespace A221461

/-- `ogf(6x/(1-6x-6x^2))` -/
def P17351320237216606215.Spec : Prop :=
  ∀ n, P17351320237216606215.a n = A221461 (n + 1)

end A221461

/-! ## A221461.P13067174962663004202

`6*(a(n-1)+a(n-2))` with `a(0)=0, a(1)=6`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A221461

/-- `6*(a(n-1)+a(n-2))` -/
def P13067174962663004202.Spec : Prop :=
  ∀ n, (P13067174962663004202.a n : ℤ) = A221461 (n + 1)

theorem P13067174962663004202.correct : P13067174962663004202.Spec := by
  intro n
  simp only [A221461, Nat.add_sub_cancel]

end A221461

/-! ## A221461.P3902529549143390334

`Δ[lcm(6, a(n-2)+a(n-1)+1)]` with `a(0)=0, a(1)=0`
-/

namespace A221461.P3902529549143390334
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 0] fun n f1 =>
  Nat.lcm 6 (f1 (n - 2) + f1 (n - 1) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A221461.P3902529549143390334

namespace A221461

/-- `Δ[lcm(6, a(n-2)+a(n-1)+1)]` -/
def P3902529549143390334.Spec : Prop :=
  ∀ n, P3902529549143390334.a n = A221461 (n + 1)

end A221461

/-! ## A221461.P11029634517805223133

`A057089(n)-a(n-1)` with `a(0)=0`
-/

namespace A221461.P11029634517805223133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A057089 n - a (n - 1)

end

end A221461.P11029634517805223133

namespace A221461

/-- `A057089(n)-a(n-1)` -/
def P11029634517805223133.Spec : Prop :=
  ∀ n, P11029634517805223133.a n = A221461 (n + 1)

end A221461

/-! ## A221461.P11951875352410736691

`A221463(A000217(n+6)-5)`
-/

namespace A221461.P11951875352410736691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221463 (A000217 (n + 6) - 5).toNat

end

end A221461.P11951875352410736691

namespace A221461

/-- `A221463(A000217(n+6)-5)` -/
def P11951875352410736691.Spec : Prop :=
  ∀ n, P11951875352410736691.a n = A221461 (n + 1)

end A221461

/-! ## A221461.P16049792146151155402

`A221463(A161680(n+7)-5)`
-/

namespace A221461.P16049792146151155402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221463 (A161680 (n + 7) - 5).toNat

end

end A221461.P16049792146151155402

namespace A221461

/-- `A221463(A161680(n+7)-5)` -/
def P16049792146151155402.Spec : Prop :=
  ∀ n, P16049792146151155402.a n = A221461 (n + 1)

end A221461

/-! ## A221461.P16623172908296625113

`A221463(A004275(n+4)+A000217(n+4))`
-/

namespace A221461.P16623172908296625113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221463 (A004275 (n + 4) + A000217 (n + 4)).toNat

end

end A221461.P16623172908296625113

namespace A221461

/-- `A221463(A004275(n+4)+A000217(n+4))` -/
def P16623172908296625113.Spec : Prop :=
  ∀ n, P16623172908296625113.a n = A221461 (n + 1)

end A221461

/-!
# A221462: Number of 0..7 arrays of length n with each element unequal to at least one neighbor, starting with 0.

The programs for A221462, the canonical program `A221462.P3964794495761059177` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A221462 has offset 1).

The definition of A221462 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 112 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A221462.P6709939829893204533

`ogf(7x/(1-7x-7x^2))`
-/

namespace A221462.P6709939829893204533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 7] [1, -7, -7] n

end

end A221462.P6709939829893204533

namespace A221462

/-- `ogf(7x/(1-7x-7x^2))` -/
def P6709939829893204533.Spec : Prop :=
  ∀ n, P6709939829893204533.a n = A221462 (n + 1)

end A221462

/-! ## A221462.P3964794495761059177

`7*(a(n-1)+a(n-2))` with `a(0)=0, a(1)=7`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A221462

/-- `7*(a(n-1)+a(n-2))` -/
def P3964794495761059177.Spec : Prop :=
  ∀ n, (P3964794495761059177.a n : ℤ) = A221462 (n + 1)

theorem P3964794495761059177.correct : P3964794495761059177.Spec := by
  intro n
  simp only [A221462, Nat.add_sub_cancel]

end A221462

/-! ## A221462.P9719114603712408954

`Δ[lcm(7, a(n-2)+a(n-1)+1)]` with `a(0)=0, a(1)=0`
-/

namespace A221462.P9719114603712408954
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 0] fun n f1 =>
  Nat.lcm 7 (f1 (n - 2) + f1 (n - 1) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A221462.P9719114603712408954

namespace A221462

/-- `Δ[lcm(7, a(n-2)+a(n-1)+1)]` -/
def P9719114603712408954.Spec : Prop :=
  ∀ n, P9719114603712408954.a n = A221462 (n + 1)

end A221462

/-! ## A221462.P12209479754755939676

`A057090(n)-a(n-1)` with `a(0)=0`
-/

namespace A221462.P12209479754755939676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A057090 n - a (n - 1)

end

end A221462.P12209479754755939676

namespace A221462

/-- `A057090(n)-a(n-1)` -/
def P12209479754755939676.Spec : Prop :=
  ∀ n, P12209479754755939676.a n = A221462 (n + 1)

end A221462

/-! ## A221462.P4358021581045421602

`A221463(A055999(n+4))`
-/

namespace A221462.P4358021581045421602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221463 (A055999 (n + 4)).toNat

end

end A221462.P4358021581045421602

namespace A221462

/-- `A221463(A055999(n+4))` -/
def P4358021581045421602.Spec : Prop :=
  ∀ n, P4358021581045421602.a n = A221462 (n + 1)

end A221462

/-! ## A221462.P9835664768843757470

`A221463(A000124(n+7)-7)`
-/

namespace A221462.P9835664768843757470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221463 (A000124 (n + 7) - 7).toNat

end

end A221462.P9835664768843757470

namespace A221462

/-- `A221463(A000124(n+7)-7)` -/
def P9835664768843757470.Spec : Prop :=
  ∀ n, P9835664768843757470.a n = A221462 (n + 1)

end A221462

/-! ## A221462.P158842259976712819

`A221463(A161680(n+6)+A020742(n))`
-/

namespace A221462.P158842259976712819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221463 (A161680 (n + 6) + A020742 n).toNat

end

end A221462.P158842259976712819

namespace A221462

/-- `A221463(A161680(n+6)+A020742(n))` -/
def P158842259976712819.Spec : Prop :=
  ∀ n, P158842259976712819.a n = A221462 (n + 1)

end A221462

/-! ## A221462.P9692084443749541278

`A221463(A005408(n)+A000217(n+5)+6)`
-/

namespace A221462.P9692084443749541278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221463 (A005408 n + (A000217 (n + 5) + 6)).toNat

end

end A221462.P9692084443749541278

namespace A221462

/-- `A221463(A005408(n)+A000217(n+5)+6)` -/
def P9692084443749541278.Spec : Prop :=
  ∀ n, P9692084443749541278.a n = A221462 (n + 1)

end A221462

/-! ## A221462.P7031801372142972518

`A221463(A005408(n)+A027379(n+3)+9)`
-/

namespace A221462.P7031801372142972518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221463 (A005408 n + (A027379 (n + 3) + 9)).toNat

end

end A221462.P7031801372142972518

namespace A221462

/-- `A221463(A005408(n)+A027379(n+3)+9)` -/
def P7031801372142972518.Spec : Prop :=
  ∀ n, P7031801372142972518.a n = A221462 (n + 1)

end A221462

/-!
# A221463: T(n,k)=Number of 0..k arrays of length n with each element unequal to at least one neighbor, starting with 0.

The programs for A221463, there is no canonical definition to state claims against.
-/

/-! ## A221463.P11322593833909789131

`A000045(A002262(n))*A261348(3*A035607(n))`
-/

namespace A221463.P11322593833909789131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A002262 n).toNat * A261348 (3 * A035607 n).toNat

end

end A221463.P11322593833909789131

/-! ## A221463.P7717954081482344307

`A020753(A106179(n+2))-A115207(A002260(n+1))`
-/

namespace A221463.P7717954081482344307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020753 (A106179 (n + 2)).toNat - A115207 (A002260 (n + 1)).toNat

end

end A221463.P7717954081482344307

/-! ## A221463.P14090858093842850383

`A107750(A221542(n+1)%A184326(n))`
-/

namespace A221463.P14090858093842850383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107750 (Int.tmod (A221542 (n + 1)) (A184326 n)).toNat

end

end A221463.P14090858093842850383

/-! ## A221463.P5625586059260875946

`A086350(n)+A049347(A003599(n+1))`
-/

namespace A221463.P5625586059260875946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086350 n + A049347 (A003599 (n + 1)).toNat

end

end A221463.P5625586059260875946

/-!
# A221464: Number of 0..n arrays of length 5 with each element unequal to at least one neighbor, starting with 0.

The programs for A221464, the canonical program `A221464.P12055255353331033697` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A221464 has offset 1).

The definition of A221464 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A221464.P12055255353331033697

`(n+1)^3*(3+n)`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A221464

/-- `(n+1)^3*(3+n)` -/
def P12055255353331033697.Spec : Prop :=
  ∀ n, (P12055255353331033697.a n : ℤ) = A221464 (n + 1)

theorem P12055255353331033697.correct : P12055255353331033697.Spec := by
  intro n
  simp only [A221464, Nat.add_sub_cancel]

end A221464

/-! ## A221464.P1677186692541316182

`∑[or(1, ∑[∑[24*n]+2])]`
-/

namespace A221464.P1677186692541316182
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  24 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j + 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A221464.P1677186692541316182

namespace A221464

/-- `∑[or(1, ∑[∑[24*n]+2])]` -/
def P1677186692541316182.Spec : Prop :=
  ∀ n, (P1677186692541316182.a n : ℤ) = A221464 (n + 1)

end A221464

/-! ## A221464.P11973150030475814569

`∑[xor(1, ∑[∑[24*n]+2])]`
-/

namespace A221464.P11973150030475814569
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  24 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j + 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A221464.P11973150030475814569

namespace A221464

/-- `∑[xor(1, ∑[∑[24*n]+2])]` -/
def P11973150030475814569.Spec : Prop :=
  ∀ n, (P11973150030475814569.a n : ℤ) = A221464 (n + 1)

end A221464

/-! ## A221464.P4150906056268481350

`floor((n+3)/acot((n+1)^3))`
-/

namespace A221464.P4150906056268481350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 3 : ℝ) / SequenceMachineLib.acot ((n + 1) ^ 3 : ℝ)⌋

end

end A221464.P4150906056268481350

namespace A221464

/-- `floor((n+3)/acot((n+1)^3))` -/
def P4150906056268481350.Spec : Prop :=
  ∀ n, P4150906056268481350.a n = A221464 (n + 1)

end A221464

/-! ## A221464.P6080505090474353193

`(n+1)^3/tan(acot(n+3))`
-/

namespace A221464.P6080505090474353193
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 3 : ℝ) / Real.tan (SequenceMachineLib.acot (n + 3 : ℝ))

end

end A221464.P6080505090474353193

namespace A221464

/-- `(n+1)^3/tan(acot(n+3))` -/
def P6080505090474353193.Spec : Prop :=
  ∀ n, P6080505090474353193.a n = (A221464 (n + 1) : ℝ)

end A221464

/-! ## A221464.P16446130068251038568

`(n+1)^3/cot(atan(n+3))`
-/

namespace A221464.P16446130068251038568
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 3 : ℝ) / Real.cot (Real.arctan (n + 3 : ℝ))

end

end A221464.P16446130068251038568

namespace A221464

/-- `(n+1)^3/cot(atan(n+3))` -/
def P16446130068251038568.Spec : Prop :=
  ∀ n, P16446130068251038568.a n = (A221464 (n + 1) : ℝ)

end A221464

/-! ## A221464.P15233587112673177106

`(n+3)/C(n+1, n)^-3`
-/

namespace A221464.P15233587112673177106
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℚ) / (Nat.choose (n + 1) n : ℚ) ^ (-3 : ℤ)

end

end A221464.P15233587112673177106

namespace A221464

/-- `(n+3)/C(n+1, n)^-3` -/
def P15233587112673177106.Spec : Prop :=
  ∀ n, P15233587112673177106.a n = (A221464 (n + 1) : ℚ)

theorem P15233587112673177106.correct : P15233587112673177106.Spec := by
  intro n
  simp only [A221464, Nat.add_sub_cancel, A221464.P15233587112673177106.a, A221464.P12055255353331033697.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A221464

/-! ## A221464.P13244986905825032343

`-((n+3)/xor(n, -1)^-3)`
-/

namespace A221464.P13244986905825032343
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  -((n + 3 : ℚ) / (Int.xor (n : ℤ) (-1) : ℚ) ^ (-3 : ℤ))

end

end A221464.P13244986905825032343

namespace A221464

/-- `-((n+3)/xor(n, -1)^-3)` -/
def P13244986905825032343.Spec : Prop :=
  ∀ n, P13244986905825032343.a n = (A221464 (n + 1) : ℚ)

end A221464

/-! ## A221464.P3136040857345772958

`(2*C(n+2, 2))²-(n+1)²`
-/

namespace A221464.P3136040857345772958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * Nat.choose (n + 2) 2) ^ 2 : ℤ) - ((n + 1) ^ 2 : ℤ)

end

end A221464.P3136040857345772958

namespace A221464

/-- `(2*C(n+2, 2))²-(n+1)²` -/
def P3136040857345772958.Spec : Prop :=
  ∀ n, P3136040857345772958.a n = A221464 (n + 1)

end A221464

/-! ## A221464.P15830719288066505453

`lcm(n+1, n+2)²-(n+1)²`
-/

namespace A221464.P15830719288066505453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lcm (n + 1) (n + 2) ^ 2 : ℤ) - ((n + 1) ^ 2 : ℤ)

end

end A221464.P15830719288066505453

namespace A221464

/-- `lcm(n+1, n+2)²-(n+1)²` -/
def P15830719288066505453.Spec : Prop :=
  ∀ n, P15830719288066505453.a n = A221464 (n + 1)

end A221464

/-! ## A221464.P7761257850738635172

`lcm(n+3, (n+3)/(n+1)^-3)`
-/

namespace A221464.P7761257850738635172
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n + 3 : ℤ) (SequenceMachineLib.roundAway ((n + 3 : ℚ) / (n + 1 : ℚ) ^ (-3 : ℤ)))

end

end A221464.P7761257850738635172

namespace A221464

/-- `lcm(n+3, (n+3)/(n+1)^-3)` -/
def P7761257850738635172.Spec : Prop :=
  ∀ n, (P7761257850738635172.a n : ℤ) = A221464 (n + 1)

end A221464

/-! ## A221464.P13850004461451791177

`∑[a(n-1)+2]²-(n+1)²` with `a(0)=2`
-/

namespace A221464.P13850004461451791177
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2] fun n f1 =>
  f1 (n - 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) - ((n + 1) ^ 2 : ℤ)

end

end A221464.P13850004461451791177

namespace A221464

/-- `∑[a(n-1)+2]²-(n+1)²` -/
def P13850004461451791177.Spec : Prop :=
  ∀ n, P13850004461451791177.a n = A221464 (n + 1)

end A221464

/-! ## A221464.P11286007685592144281

`((n+1)*(n+2))²-record[(n-1)²]`
-/

namespace A221464.P11286007685592144281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((n + 1) * (n + 2)) ^ 2 : ℤ) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221464.P11286007685592144281

namespace A221464

/-- `((n+1)*(n+2))²-record[(n-1)²]` -/
def P11286007685592144281.Spec : Prop :=
  ∀ n, P11286007685592144281.a n = A221464 (n + 1)

end A221464

/-! ## A221464.P10764251119436623025

`∑[a(n-1)+2]/(n+1)^(-2)` with `a(0)=3`
-/

namespace A221464.P10764251119436623025
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3] fun n f1 =>
  f1 (n - 1) + 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / (n + 1 : ℚ) ^ (-2 : ℤ)

end

end A221464.P10764251119436623025

namespace A221464

/-- `∑[a(n-1)+2]/(n+1)^(-2)` -/
def P10764251119436623025.Spec : Prop :=
  ∀ n, P10764251119436623025.a n = (A221464 (n + 1) : ℚ)

end A221464

/-! ## A221464.P1932642678969922195

`2*C((n+1)*(n+2), 2)+n+1`
-/

namespace A221464.P1932642678969922195
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.choose ((n + 1) * (n + 2)) 2 + (n + 1)

end

end A221464.P1932642678969922195

namespace A221464

/-- `2*C((n+1)*(n+2), 2)+n+1` -/
def P1932642678969922195.Spec : Prop :=
  ∀ n, (P1932642678969922195.a n : ℤ) = A221464 (n + 1)

end A221464

/-! ## A221464.P2173289161212092396

`floor((n+1)*(n+1)*∑[a(n-1)+2])` with `a(0)=3`

`floor` is left out, it is the identity on integers.
-/

namespace A221464.P2173289161212092396
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3] fun n f1 =>
  f1 (n - 1) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * ((n + 1) * (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A221464.P2173289161212092396

namespace A221464

/-- `floor((n+1)*(n+1)*∑[a(n-1)+2])` -/
def P2173289161212092396.Spec : Prop :=
  ∀ n, (P2173289161212092396.a n : ℤ) = A221464 (n + 1)

end A221464

/-! ## A221464.P13873469166338634295

`∑[lcm(2*n+1, (n+2)*(2*n+1)²)+n+1]`
-/

namespace A221464.P13873469166338634295
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (2 * n + 1) ((n + 2) * (2 * n + 1) ^ 2) + (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A221464.P13873469166338634295

namespace A221464

/-- `∑[lcm(2*n+1, (n+2)*(2*n+1)²)+n+1]` -/
def P13873469166338634295.Spec : Prop :=
  ∀ n, (P13873469166338634295.a n : ℤ) = A221464 (n + 1)

end A221464

/-! ## A221464.P10782439949614342611

`A165563(n+1)-(n+2)²`
-/

namespace A221464.P10782439949614342611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165563 (n + 1) - ((n + 2) ^ 2 : ℤ)

end

end A221464.P10782439949614342611

namespace A221464

/-- `A165563(n+1)-(n+2)²` -/
def P10782439949614342611.Spec : Prop :=
  ∀ n, P10782439949614342611.a n = A221464 (n + 1)

end A221464

/-! ## A221464.P5134634612043971122

`abs((n+3)*Δ[A000217(n)²])`
-/

namespace A221464.P5134634612043971122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n + 3 : ℤ) * (f1 (n + 1) - f1 n)|

end

end A221464.P5134634612043971122

namespace A221464

/-- `abs((n+3)*Δ[A000217(n)²])` -/
def P5134634612043971122.Spec : Prop :=
  ∀ n, P5134634612043971122.a n = A221464 (n + 1)

end A221464

/-! ## A221464.P5236325106862403974

`A179824(n+2)+(n+1)^3`
-/

namespace A221464.P5236325106862403974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179824 (n + 2) + ((n + 1) ^ 3 : ℤ)

end

end A221464.P5236325106862403974

namespace A221464

/-- `A179824(n+2)+(n+1)^3` -/
def P5236325106862403974.Spec : Prop :=
  ∀ n, P5236325106862403974.a n = A221464 (n + 1)

end A221464

/-!
# A221465: Number of 0..n arrays of length 6 with each element unequal to at least one neighbor, starting with 0.

The programs for A221465, the canonical program `A221465.P2273712677524179890` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A221465 has offset 1).

The definition of A221465 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A221465.P2273712677524179890

`(n*(n+5)+5)*(n+1)^3`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A221465

/-- `(n*(n+5)+5)*(n+1)^3` -/
def P2273712677524179890.Spec : Prop :=
  ∀ n, (P2273712677524179890.a n : ℤ) = A221465 (n + 1)

theorem P2273712677524179890.correct : P2273712677524179890.Spec := by
  intro n
  simp only [A221465, Nat.add_sub_cancel]

end A221465

/-! ## A221465.P722860891354301830

`lcm((n+2)²+n+1, (n+1)^3)`
-/

namespace A221465.P722860891354301830
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm ((n + 2) ^ 2 + (n + 1)) ((n + 1) ^ 3)

end

end A221465.P722860891354301830

namespace A221465

/-- `lcm((n+2)²+n+1, (n+1)^3)` -/
def P722860891354301830.Spec : Prop :=
  ∀ n, (P722860891354301830.a n : ℤ) = A221465 (n + 1)

end A221465

/-! ## A221465.P534638262702993764

`A369423(n+1)/(n+2)`
-/

namespace A221465.P534638262702993764
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A369423 (n + 1) : ℚ) / (n + 2 : ℚ)

end

end A221465.P534638262702993764

namespace A221465

/-- `A369423(n+1)/(n+2)` -/
def P534638262702993764.Spec : Prop :=
  ∀ n, P534638262702993764.a n = (A221465 (n + 1) : ℚ)

end A221465

/-! ## A221465.P4228218363467205130

`A221466(n+1)/(n+1)-A221464(n+1)`
-/

namespace A221465.P4228218363467205130
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A221466 (n + 1) : ℚ) / (n + 1 : ℚ) - (A221464 (n + 1) : ℚ)

end

end A221465.P4228218363467205130

namespace A221465

/-- `A221466(n+1)/(n+1)-A221464(n+1)` -/
def P4228218363467205130.Spec : Prop :=
  ∀ n, P4228218363467205130.a n = (A221465 (n + 1) : ℚ)

end A221465

/-! ## A221465.P11135782514133690437

`abs(Δ[A077415(n+2)]*A000578(n+1))`
-/

namespace A221465.P11135782514133690437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077415 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(f1 (n + 1) - f1 n) * A000578 (n + 1)|

end

end A221465.P11135782514133690437

namespace A221465

/-- `abs(Δ[A077415(n+2)]*A000578(n+1))` -/
def P11135782514133690437.Spec : Prop :=
  ∀ n, P11135782514133690437.a n = A221465 (n + 1)

end A221465

/-! ## A221465.P15079218843995594422

`A269792(n+1)+n²*A000578(n+1)`
-/

namespace A221465.P15079218843995594422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269792 (n + 1) + (n ^ 2 : ℤ) * A000578 (n + 1)

end

end A221465.P15079218843995594422

namespace A221465

/-- `A269792(n+1)+n²*A000578(n+1)` -/
def P15079218843995594422.Spec : Prop :=
  ∀ n, P15079218843995594422.a n = A221465 (n + 1)

end A221465

/-! ## A221465.P5221532939014680581

`(n+1)²+A008865(n+2)*A011379(n+1)`
-/

namespace A221465.P5221532939014680581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) + A008865 (n + 2) * A011379 (n + 1)

end

end A221465.P5221532939014680581

namespace A221465

/-- `(n+1)²+A008865(n+2)*A011379(n+1)` -/
def P5221532939014680581.Spec : Prop :=
  ∀ n, P5221532939014680581.a n = A221465 (n + 1)

end A221465

/-! ## A221465.P2859374341222515279

`A000583(n+1)+A099903(n+1)+A099903(n+1)`
-/

namespace A221465.P2859374341222515279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000583 (n + 1) + (A099903 (n + 1) + A099903 (n + 1))

end

end A221465.P2859374341222515279

namespace A221465

/-- `A000583(n+1)+A099903(n+1)+A099903(n+1)` -/
def P2859374341222515279.Spec : Prop :=
  ∀ n, P2859374341222515279.a n = A221465 (n + 1)

end A221465

/-! ## A221465.P8520156685192083327

`A008865(n+2)*A027444(n+1)-A085490(n+1)`
-/

namespace A221465.P8520156685192083327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008865 (n + 2) * A027444 (n + 1) - A085490 (n + 1)

end

end A221465.P8520156685192083327

namespace A221465

/-- `A008865(n+2)*A027444(n+1)-A085490(n+1)` -/
def P8520156685192083327.Spec : Prop :=
  ∀ n, P8520156685192083327.a n = A221465 (n + 1)

end A221465

/-! ## A221465.P9376935002939723152

`A221463(A166136(n+4))`
-/

namespace A221465.P9376935002939723152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221463 (A166136 (n + 4)).toNat

end

end A221465.P9376935002939723152

namespace A221465

/-- `A221463(A166136(n+4))` -/
def P9376935002939723152.Spec : Prop :=
  ∀ n, P9376935002939723152.a n = A221465 (n + 1)

end A221465

/-!
# A221466: Number of 0..n arrays of length 7 with each element unequal to at least one neighbor, starting with 0.

The programs for A221466, the canonical program `A221466.P5953134957843901808` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A221466 has offset 1).

The definition of A221466 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A221466.P5953134957843901808

`((n+3)²-1)*(n+1)^4`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A221466

/-- `((n+3)²-1)*(n+1)^4` -/
def P5953134957843901808.Spec : Prop :=
  ∀ n, P5953134957843901808.a n = A221466 (n + 1)

theorem P5953134957843901808.correct : P5953134957843901808.Spec := by
  intro n
  simp only [A221466, Nat.add_sub_cancel]

end A221466

/-! ## A221466.P14102044098343784128

`((n+1)*A005563(n+1))²-(n+1)²²`
-/

namespace A221466.P14102044098343784128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) * A005563 (n + 1)) ^ 2 - (((n + 1) ^ 2) ^ 2 : ℤ)

end

end A221466.P14102044098343784128

namespace A221466

/-- `((n+1)*A005563(n+1))²-(n+1)²²` -/
def P14102044098343784128.Spec : Prop :=
  ∀ n, P14102044098343784128.a n = A221466 (n + 1)

end A221466

/-! ## A221466.P5224739517340119577

`(n+1)²*A099761(n+1)-A000583(n+1)`
-/

namespace A221466.P5224739517340119577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) * A099761 (n + 1) - A000583 (n + 1)

end

end A221466.P5224739517340119577

namespace A221466

/-- `(n+1)²*A099761(n+1)-A000583(n+1)` -/
def P5224739517340119577.Spec : Prop :=
  ∀ n, P5224739517340119577.a n = A221466 (n + 1)

end A221466

/-! ## A221466.P17757993220070184929

`(n+1)^3*A081437(n+1)-A179824(n+2)`
-/

namespace A221466.P17757993220070184929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 3 : ℤ) * A081437 (n + 1) - A179824 (n + 2)

end

end A221466.P17757993220070184929

namespace A221466

/-- `(n+1)^3*A081437(n+1)-A179824(n+2)` -/
def P17757993220070184929.Spec : Prop :=
  ∀ n, P17757993220070184929.a n = A221466 (n + 1)

end A221466

/-! ## A221466.P13791129368734997784

`A152618(n+2)²-(n+1)²²`
-/

namespace A221466.P13791129368734997784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152618 (n + 2) ^ 2 - (((n + 1) ^ 2) ^ 2 : ℤ)

end

end A221466.P13791129368734997784

namespace A221466

/-- `A152618(n+2)²-(n+1)²²` -/
def P13791129368734997784.Spec : Prop :=
  ∀ n, P13791129368734997784.a n = A221466 (n + 1)

end A221466

/-! ## A221466.P5130928423611916075

`A132411(n+3)/(1/(n+1))²²`
-/

namespace A221466.P5130928423611916075
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A132411 (n + 3) : ℚ) / ((1 / (n + 1 : ℚ)) ^ 2) ^ 2

end

end A221466.P5130928423611916075

namespace A221466

/-- `A132411(n+3)/(1/(n+1))²²` -/
def P5130928423611916075.Spec : Prop :=
  ∀ n, P5130928423611916075.a n = (A221466 (n + 1) : ℚ)

end A221466

/-! ## A221466.P14601133085419406560

`A221463(A133263(n+6)+5)`
-/

namespace A221466.P14601133085419406560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221463 (A133263 (n + 6) + 5).toNat

end

end A221466.P14601133085419406560

namespace A221466

/-- `A221463(A133263(n+6)+5)` -/
def P14601133085419406560.Spec : Prop :=
  ∀ n, P14601133085419406560.a n = A221466 (n + 1)

end A221466

/-! ## A221466.P6994900523417605462

`A221463(A000217(n+6)+7)`
-/

namespace A221466.P6994900523417605462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221463 (A000217 (n + 6) + 7).toNat

end

end A221466.P6994900523417605462

namespace A221466

/-- `A221463(A000217(n+6)+7)` -/
def P6994900523417605462.Spec : Prop :=
  ∀ n, P6994900523417605462.a n = A221466 (n + 1)

end A221466

/-!
# A221467: The Collatz (3x+1) iteration in A220145 sorted and converted to decimal.

The programs for A221467, there is no canonical definition to state claims against.
-/

/-! ## A221467.P5570696759072651490

`∩[A187041(n+1), A048718(n)]`
-/

namespace A221467.P5570696759072651490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187041 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048718 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A221467.P5570696759072651490

/-! ## A221467.P3469154200966464220

`∩[A384500(n+1), A114400(n)]`
-/

namespace A221467.P3469154200966464220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384500 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114400 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A221467.P3469154200966464220

/-! ## A221467.P1906328219208089981

`∩[A115423(n+1), A187041(n+1)]`
-/

namespace A221467.P1906328219208089981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115423 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187041 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A221467.P1906328219208089981

/-! ## A221467.P17849295886155361837

`∩[A115423(n+1), A358521(n+1)]`
-/

namespace A221467.P17849295886155361837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115423 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358521 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A221467.P17849295886155361837

/-! ## A221467.P359834770788343208

`∩[A115423(n+1), A317717(n+1)]`
-/

namespace A221467.P359834770788343208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115423 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317717 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A221467.P359834770788343208

/-!
# A221468: The Collatz (3x+1) iteration in A220145 converted to decimal.

The programs for A221468, there is no canonical definition to state claims against.
-/

/-! ## A221468.P6288622396259920109

`A059894(A125711(n+1))`
-/

namespace A221468.P6288622396259920109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059894 (A125711 (n + 1)).toNat

end

end A221468.P6288622396259920109

/-! ## A221468.P12842074704497392844

`A221467(A322521(n+1)+1)`
-/

namespace A221468.P12842074704497392844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221467 (A322521 (n + 1) + 1).toNat

end

end A221468.P12842074704497392844

/-!
# A221469: Number of increasing peak values in the Collatz (3x+1) iteration of n.

The programs for A221469, there is no canonical definition to state claims against.
-/

/-! ## A221469.P5007940101733336648

`A350369(n+1)/A115362(A182522(n))`
-/

namespace A221469.P5007940101733336648
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A350369 (n + 1) : ℚ) / (A115362 (A182522 n).toNat : ℚ)

end

end A221469.P5007940101733336648

/-! ## A221469.P5104170963055732808

`A350369(n+1)/A115362(A232801(n))`
-/

namespace A221469.P5104170963055732808
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A350369 (n + 1) : ℚ) / (A115362 (A232801 n).toNat : ℚ)

end

end A221469.P5104170963055732808

/-! ## A221469.P16399197191994323557

`A350369(n+1)/A046951(A325545(n))`
-/

namespace A221469.P16399197191994323557
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A350369 (n + 1) : ℚ) / (A046951 (A325545 n).toNat : ℚ)

end

end A221469.P16399197191994323557

/-! ## A221469.P15776793407856920289

`gcd(A350369(n+1), A350413(A350447(n)))`
-/

namespace A221469.P15776793407856920289
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A350369 (n + 1)) (A350413 (A350447 n).toNat)

end

end A221469.P15776793407856920289

/-!
# A221470: Least m such that the Collatz (3x+1) iteration of m has exactly n increasing peak values.

The programs for A221470, there is no canonical definition to state claims against.
-/

/-! ## A221470.P10275432321883214978

`A096876(A001318(n))+A022087(n)`
-/

namespace A221470.P10275432321883214978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096876 (A001318 n).toNat + A022087 n

end

end A221470.P10275432321883214978

/-! ## A221470.P12096354060877534587

`or(A304793(A356941(3*n+2)), A356951(n+1))`
-/

namespace A221470.P12096354060877534587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A304793 (A356941 (3 * n + 2)).toNat) (A356951 (n + 1))

end

end A221470.P12096354060877534587

/-!
# A221471: Integers n such that n^2 is the difference of two Lucas numbers (A000032).

The programs for A221471, there is no canonical definition to state claims against.
-/

/-! ## A221471.P16182261553202871273

`sqrt(∩[A113191(n+1), n²])`
-/

namespace A221471.P16182261553202871273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113191 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n : ℝ)

end

end A221471.P16182261553202871273

/-! ## A221471.P9647354781895864552

`record[A056926(A113191(n+1))]`
-/

namespace A221471.P9647354781895864552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056926 (A113191 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221471.P9647354781895864552

/-! ## A221471.P11792095005618170912

`A249812(A210671(n))-floor(acot(n))`
-/

namespace A221471.P11792095005618170912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249812 (A210671 n).toNat - ⌊SequenceMachineLib.acot (n : ℝ)⌋

end

end A221471.P11792095005618170912

/-!
# A221473: Irregular table of odd numbers whose n-th row has numbers taking n iterations of the Collatz (3x+1) function to reach 1.

The programs for A221473, there is no canonical definition to state claims against.
-/

/-! ## A221473.P3329984172035979322

`A127824(eq[1, A127824(n)%2])`
-/

namespace A221473.P3329984172035979322
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A127824 n) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127824 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A221473.P3329984172035979322

/-! ## A221473.P17453673020821092628

`A127824(eq[1, gcd(2, A127824(n))])`
-/

namespace A221473.P17453673020821092628
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A127824 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127824 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A221473.P17453673020821092628

/-! ## A221473.P13965941675926738953

`A127824(eq[1, and(1, A127824(n))])`
-/

namespace A221473.P13965941675926738953
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A127824 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127824 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A221473.P13965941675926738953

/-! ## A221473.P12854368993223092259

`filter[A088975(n), A000035(#)]`
-/

namespace A221473.P12854368993223092259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088975 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A221473.P12854368993223092259

/-! ## A221473.P18379051522790831946

`filter[A127824(n), A000035(#)]`
-/

namespace A221473.P18379051522790831946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127824 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A221473.P18379051522790831946

/-!
# A221474: Number of families of numbers requiring n iterations of the Collatz (3x+1) function to reach 1.

The programs for A221474, there is no canonical definition to state claims against.
-/

/-! ## A221474.P10303880824487052404

`A173419(2^A176866(n))`
-/

namespace A221474.P10303880824487052404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173419 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A176866 n : ℤ))).toNat

end

end A221474.P10303880824487052404

/-! ## A221474.P4649381641882104232

`A007895(A000217(A176866(n))²)`
-/

namespace A221474.P4649381641882104232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007895 (A000217 (A176866 n).toNat ^ 2).toNat

end

end A221474.P4649381641882104232

/-! ## A221474.P922479595135177476

`A073188(A176866(n)%A055161(n))`
-/

namespace A221474.P922479595135177476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073188 (Int.tmod (A176866 n) (A055161 n)).toNat

end

end A221474.P922479595135177476

/-! ## A221474.P6560052187172342752

`A073188(A176866(n))%A001773(n+2)`
-/

namespace A221474.P6560052187172342752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A073188 (A176866 n).toNat) (A001773 (n + 2))

end

end A221474.P6560052187172342752

/-! ## A221474.P12523208122344288887

`and(A000203(2^n), A073188(A176866(n)))`
-/

namespace A221474.P12523208122344288887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000203 (2 ^ n)) (A073188 (A176866 n).toNat)

end

end A221474.P12523208122344288887

/-!
# A221475: Odd numbers having no odd primes in their Collatz (3x+1) trajectory.

The programs for A221475, there is no canonical definition to state claims against.
-/

/-! ## A221475.P5783508844554321062

`A196871(eq[1, A196871(n+1)%2]+1)`
-/

namespace A221475.P5783508844554321062
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A196871 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196871 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A221475.P5783508844554321062

/-! ## A221475.P6064748515434693159

`A196871(eq[1, gcd(2, A196871(n+1))]+1)`
-/

namespace A221475.P6064748515434693159
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A196871 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196871 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A221475.P6064748515434693159

/-! ## A221475.P7153840441505441877

`∩[A196871(n+1), A350160(n+1)]`
-/

namespace A221475.P7153840441505441877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196871 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350160 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A221475.P7153840441505441877

/-! ## A221475.P9064593241448820258

`record[A000265(A196871(n+1))]`
-/

namespace A221475.P9064593241448820258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A196871 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221475.P9064593241448820258

/-! ## A221475.P1372491214132740829

`∩[A016813(n), A196871(n+1)]`
-/

namespace A221475.P1372491214132740829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196871 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A221475.P1372491214132740829

/-!
# A221476: Prime numbers having no additional odd primes in their Collatz (3x+1) trajectory.

The programs for A221476, there is no canonical definition to state claims against.
-/

/-! ## A221476.P3570607422557572592

`p?[A004523(A196871(n+1))]`
-/

namespace A221476.P3570607422557572592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004523 (A196871 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A221476.P3570607422557572592

/-!
# A221477: Number of n X n arrays of occupancy after each element moves to some horizontal or antidiagonal neighbor, without consecutive moves in the same direction.

The programs for A221477, there is no canonical definition to state claims against.
-/

/-! ## A221477.P8291686775764160537

`A221483((n+1)²+n²)`
-/

namespace A221477.P8291686775764160537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221483 ((n + 1) ^ 2 + n ^ 2)

end

end A221477.P8291686775764160537

/-!
# A221478: Number of n X 3 arrays of occupancy after each element moves to some horizontal or antidiagonal neighbor, without consecutive moves in the same direction.

The programs for A221478, there is no canonical definition to state claims against.
-/

/-! ## A221478.P16325321572762913793

`A221483(∑[n+3]+1)`
-/

namespace A221478.P16325321572762913793
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221483 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A221478.P16325321572762913793

/-! ## A221478.P9411905018510976405

`record[A221483(A130297(n+1))]`
-/

namespace A221478.P9411905018510976405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221483 (A130297 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221478.P9411905018510976405

/-! ## A221478.P361725988339200460

`record[A221483(Δ[A054974(n+2)])]`
-/

namespace A221478.P361725988339200460
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054974 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221483 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221478.P361725988339200460

/-! ## A221478.P307725593883054701

`record[A185018(n)*A221483(n+1)]`
-/

namespace A221478.P307725593883054701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185018 n * A221483 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221478.P307725593883054701

/-! ## A221478.P3002550195441395061

`record[A010054(n+3)*A221483(n+1)]`
-/

namespace A221478.P3002550195441395061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (n + 3) * A221483 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221478.P3002550195441395061

/-!
# A221479: Number of nX4 arrays of occupancy after each element moves to some horizontal or antidiagonal neighbor, without consecutive moves in the same direction.

The programs for A221479, there is no canonical definition to state claims against.
-/

/-! ## A221479.P12668773294830904024

`A221483(∑[n+4]+3)`
-/

namespace A221479.P12668773294830904024
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221483 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A221479.P12668773294830904024

/-! ## A221479.P486752275007804114

`A221483(A000096(n+3)-2)%A221478(2*(n+2))`
-/

namespace A221479.P486752275007804114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A221483 (A000096 (n + 3) - 2).toNat) (A221478 (2 * (n + 2)))

end

end A221479.P486752275007804114

/-!
# A221480: Number of nX5 arrays of occupancy after each element moves to some horizontal or antidiagonal neighbor, without consecutive moves in the same direction.

The programs for A221480, there is no canonical definition to state claims against.
-/

/-! ## A221480.P12951095771824019682

`A221483(∑[n+5]+6)`
-/

namespace A221480.P12951095771824019682
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221483 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A221480.P12951095771824019682

/-!
# A221481: Number of nX6 arrays of occupancy after each element moves to some horizontal or antidiagonal neighbor, without consecutive moves in the same direction.

The programs for A221481, there is no canonical definition to state claims against.
-/

/-! ## A221481.P3339556555931170751

`A221483(A052905(n+3))`
-/

namespace A221481.P3339556555931170751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221483 (A052905 (n + 3)).toNat

end

end A221481.P3339556555931170751

/-! ## A221481.P3310887773866993977

`A221483(A168105(n)-5)`
-/

namespace A221481.P3310887773866993977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221483 (A168105 n - 5).toNat

end

end A221481.P3310887773866993977

/-! ## A221481.P15720274713130438892

`A221483(A302537(n)+15)`
-/

namespace A221481.P15720274713130438892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221483 (A302537 n + 15).toNat

end

end A221481.P15720274713130438892

/-!
# A221482: Number of nX7 arrays of occupancy after each element moves to some horizontal or antidiagonal neighbor, without consecutive moves in the same direction.

The programs for A221482, there is no canonical definition to state claims against.
-/

/-! ## A221482.P1330331703267769350

`A221483(A055999(n+4))`
-/

namespace A221482.P1330331703267769350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221483 (A055999 (n + 4)).toNat

end

end A221482.P1330331703267769350

/-! ## A221482.P13146708225754599193

`A221483(eq[7, A200370(n+1)])`
-/

namespace A221482.P13146708225754599193
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221483 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A221482.P13146708225754599193

/-! ## A221482.P3614187933814685181

`A221483(A168105(n)+1+n)`
-/

namespace A221482.P3614187933814685181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221483 (A168105 n + 1 + (n : ℤ)).toNat

end

end A221482.P3614187933814685181

/-!
# A221484: Number of 2 X n arrays of occupancy after each element moves to some horizontal or antidiagonal neighbor, without consecutive moves in the same direction.

The programs for A221484, there is no canonical definition to state claims against.
-/

/-! ## A221484.P2386640719205298044

`A221483(∑[n+1]+2)`
-/

namespace A221484.P2386640719205298044
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221483 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A221484.P2386640719205298044

/-! ## A221484.P9156843403304357774

`record[A221483(A133263(∑{digits}[n, #]))]`
-/

namespace A221484.P9156843403304357774
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221483 (A133263 ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x).sum).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221484.P9156843403304357774

/-! ## A221484.P7393973628605809751

`record[A221483(A276956(n+1)+2)]`
-/

namespace A221484.P7393973628605809751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221483 (A276956 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221484.P7393973628605809751

/-! ## A221484.P12939079404734834724

`record[A221483(n+3)/A219078(n+1)]`
-/

namespace A221484.P12939079404734834724
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A221483 (n + 3) : ℚ) / (A219078 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221484.P12939079404734834724

/-! ## A221484.P16486772352776723325

`A221483(A000217(n+1)+2)%(6^n)`
-/

namespace A221484.P16486772352776723325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A221483 (A000217 (n + 1) + 2).toNat) (6 ^ n : ℤ)

end

end A221484.P16486772352776723325

/-!
# A221485: Number of 3Xn arrays of occupancy after each element moves to some horizontal or antidiagonal neighbor, without consecutive moves in the same direction.

The programs for A221485, there is no canonical definition to state claims against.
-/

/-! ## A221485.P1219499349900742665

`A221483(∑[n+2]+4)`
-/

namespace A221485.P1219499349900742665
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221483 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A221485.P1219499349900742665

/-! ## A221485.P6949678448960199776

`and(floor(acot(n))-1, A221483(A167614(n+1)))`
-/

namespace A221485.P6949678448960199776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (⌊SequenceMachineLib.acot (n : ℝ)⌋ - 1) (A221483 (A167614 (n + 1)).toNat)

end

end A221485.P6949678448960199776

/-! ## A221485.P16091235604100627297

`A221483(A167614(n+1))+A011737(n)`
-/

namespace A221485.P16091235604100627297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221483 (A167614 (n + 1)).toNat + A011737 n

end

end A221485.P16091235604100627297

/-! ## A221485.P8469423025650499808

`A221483(A167614(n+1))+A025439(n)`
-/

namespace A221485.P8469423025650499808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221483 (A167614 (n + 1)).toNat + A025439 n

end

end A221485.P8469423025650499808

/-! ## A221485.P11354981868977782395

`A221483(A167614(n+1))+A025442(n)`
-/

namespace A221485.P11354981868977782395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221483 (A167614 (n + 1)).toNat + A025442 n

end

end A221485.P11354981868977782395

/-!
# A221486: Number of 4Xn arrays of occupancy after each element moves to some horizontal or antidiagonal neighbor, without consecutive moves in the same direction.

The programs for A221486, there is no canonical definition to state claims against.
-/

/-! ## A221486.P4621983079494486471

`A221483(A141214(n)+7)`
-/

namespace A221486.P4621983079494486471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221483 (A141214 n + 7).toNat

end

end A221486.P4621983079494486471

/-! ## A221486.P5805168151851681608

`A221483(A052905(n)+9)`
-/

namespace A221486.P5805168151851681608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221483 (A052905 n + 9).toNat

end

end A221486.P5805168151851681608

/-! ## A221486.P6986367079890076071

`A221483(A055999(n)+10)`
-/

namespace A221486.P6986367079890076071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221483 (A055999 n + 10).toNat

end

end A221486.P6986367079890076071

/-! ## A221486.P13667172088878869017

`A221483(eq[5, A066657(n)])`
-/

namespace A221486.P13667172088878869017
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221483 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A221486.P13667172088878869017

/-! ## A221486.P15008836931984529488

`A221483(A167614(n+2)+1)`
-/

namespace A221486.P15008836931984529488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221483 (A167614 (n + 2) + 1).toNat

end

end A221486.P15008836931984529488

/-!
# A221487: Number of 5Xn arrays of occupancy after each element moves to some horizontal or antidiagonal neighbor, without consecutive moves in the same direction.

The programs for A221487, there is no canonical definition to state claims against.
-/

/-! ## A221487.P9471146005358713346

`A221483(A167499(n+3))`
-/

namespace A221487.P9471146005358713346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221483 (A167499 (n + 3)).toNat

end

end A221487.P9471146005358713346

/-! ## A221487.P2375177993023474175

`A221483(A155212(n)+13)`
-/

namespace A221487.P2375177993023474175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221483 (A155212 n + 13).toNat

end

end A221487.P2375177993023474175

/-! ## A221487.P16223359935962922681

`A221483(A056000(n)+15)`
-/

namespace A221487.P16223359935962922681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221483 (A056000 n + 15).toNat

end

end A221487.P16223359935962922681

/-! ## A221487.P8912598958411237802

`A221483(eq[7, A066657(n)])`
-/

namespace A221487.P8912598958411237802
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221483 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A221487.P8912598958411237802

/-! ## A221487.P8076541850157914930

`A221483(A167614(n+3)+2)`
-/

namespace A221487.P8076541850157914930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221483 (A167614 (n + 3) + 2).toNat

end

end A221487.P8076541850157914930

/-!
# A221488: Number of 6Xn arrays of occupancy after each element moves to some horizontal or antidiagonal neighbor, without consecutive moves in the same direction.

The programs for A221488, there is no canonical definition to state claims against.
-/

/-! ## A221488.P16757975261083835600

`A221483(A166136(n+4))`
-/

namespace A221488.P16757975261083835600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221483 (A166136 (n + 4)).toNat

end

end A221488.P16757975261083835600

/-! ## A221488.P4320390103067868134

`A221483(A056115(n)+21)`
-/

namespace A221488.P4320390103067868134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221483 (A056115 n + 21).toNat

end

end A221488.P4320390103067868134

/-! ## A221488.P1911367682809756521

`A221483(A168105(n)-n)`
-/

namespace A221488.P1911367682809756521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221483 (A168105 n - (n : ℤ)).toNat

end

end A221488.P1911367682809756521

/-! ## A221488.P5076180675522157020

`A221483(A167499(n+4)+1)`
-/

namespace A221488.P5076180675522157020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221483 (A167499 (n + 4) + 1).toNat

end

end A221488.P5076180675522157020

/-!
# A221489: Number of 7Xn arrays of occupancy after each element moves to some horizontal or antidiagonal neighbor, without consecutive moves in the same direction.

The programs for A221489, there is no canonical definition to state claims against.
-/

/-! ## A221489.P7632215397569115631

`A221483(A168105(n+1)-n)`
-/

namespace A221489.P7632215397569115631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221483 (A168105 (n + 1) - (n : ℤ)).toNat

end

end A221489.P7632215397569115631

/-! ## A221489.P16904855652533622472

`record[A011883(A002262(n))*A221483(n+1)]`
-/

namespace A221489.P16904855652533622472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011883 (A002262 n).toNat * A221483 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221489.P16904855652533622472

/-!
# A221490: Number of primes of the form k*n + k - n, 1 <= k <= n.

The programs for A221490, there is no canonical definition to state claims against.
-/

/-! ## A221490.P10567256437416188459

`xor(n-lcm(2, n)/2, A102669(A036624(n)))`
-/

namespace A221490.P10567256437416188459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (SequenceMachineLib.roundAway ((n : ℚ) - (Nat.lcm 2 n : ℚ) / 2)) (A102669 (A036624 n).toNat)

end

end A221490.P10567256437416188459

/-! ## A221490.P2424828183865833031

`xor(A102669(A036624(n)), A142150(n))`
-/

namespace A221490.P2424828183865833031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A102669 (A036624 n).toNat) (A142150 n)

end

end A221490.P2424828183865833031

/-! ## A221490.P1669146968105554319

`A002264(A000413(n+1))%A000010(n+1)`
-/

namespace A221490.P1669146968105554319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002264 (A000413 (n + 1)).toNat) (A000010 (n + 1))

end

end A221490.P1669146968105554319

/-!
# A221491: Number of primes of the form k*n - k + n, 1 <= k <= n.

The programs for A221491, there is no canonical definition to state claims against.
-/

/-! ## A221491.P11168942282573468313

`A344349(n+1)-A010051(n+1)`
-/

namespace A221491.P11168942282573468313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344349 (n + 1) - A010051 (n + 1)

end

end A221491.P11168942282573468313

/-! ## A221491.P13369053050821949919

`A344349(n+1)-abs(A129950(n+1))`
-/

namespace A221491.P13369053050821949919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344349 (n + 1) - |A129950 (n + 1)|

end

end A221491.P13369053050821949919

/-! ## A221491.P12858652957072387124

`A344349(n+1)-char[A006093(n+1)]`
-/

namespace A221491.P12858652957072387124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344349 (n + 1) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A221491.P12858652957072387124

/-! ## A221491.P5948561749056235765

`A344349(n+1)-char[record[A000010(n+1)]]`
-/

namespace A221491.P5948561749056235765
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344349 (n + 1) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A221491.P5948561749056235765

/-! ## A221491.P14036663651323546394

`A344349(n+1)-char[A000040(n+1)-1]`
-/

namespace A221491.P14036663651323546394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344349 (n + 1) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A221491.P14036663651323546394

/-! ## A221491.P17483769929854165365

`A344349(n+1)-char[A006530(n+2)-1]`
-/

namespace A221491.P17483769929854165365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344349 (n + 1) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A221491.P17483769929854165365

/-! ## A221491.P6351873183799561383

`A344349(n+1)-char[A020639(n+2)-1]`
-/

namespace A221491.P6351873183799561383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344349 (n + 1) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A221491.P6351873183799561383

/-! ## A221491.P9817774893528183059

`A344349(n+1)-char[eq[1, A001222(n+1)]]`
-/

namespace A221491.P9817774893528183059
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344349 (n + 1) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A221491.P9817774893528183059

/-! ## A221491.P4140760439362327953

`A344349(n+1)-Δ[A230980(n)]`
-/

namespace A221491.P4140760439362327953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344349 (n + 1) - (f1 (n + 1) - f1 n)

end

end A221491.P4140760439362327953

/-!
# A221492: Number of tangled bicolored graphs on n unlabeled vertices.

The programs for A221492, there is no canonical definition to state claims against.
-/

/-! ## A221492.P16543736622037171551

`A008651(A029071(n)*A148167(n))`
-/

namespace A221492.P16543736622037171551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008651 (A029071 n * A148167 n).toNat

end

end A221492.P16543736622037171551

/-! ## A221492.P14511095181082334269

`A033182(A029071(n)*A148167(n))`
-/

namespace A221492.P14511095181082334269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033182 (A029071 n * A148167 n).toNat

end

end A221492.P14511095181082334269

/-! ## A221492.P9384051368483623306

`A008651(A192346(n+1)+A065653(n))`
-/

namespace A221492.P9384051368483623306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008651 (A192346 (n + 1) + A065653 n).toNat

end

end A221492.P9384051368483623306

/-! ## A221492.P13888944886933809830

`A008651(A061375(n+1)*A148167(n))`
-/

namespace A221492.P13888944886933809830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008651 (A061375 (n + 1) * A148167 n).toNat

end

end A221492.P13888944886933809830

/-! ## A221492.P17252452424305703391

`A033182(A061375(n+1)*A148167(n))`
-/

namespace A221492.P17252452424305703391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033182 (A061375 (n + 1) * A148167 n).toNat

end

end A221492.P17252452424305703391

/-!
# A221493: Number of tangled bicolored graphs on n labeled vertices.

The programs for A221493, there is no canonical definition to state claims against.
-/

/-! ## A221493.P8349578617568615925

`lcm(4, A123895(A052724(n)))`
-/

namespace A221493.P8349578617568615925
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 4 (A123895 (A052724 n).toNat)

end

end A221493.P8349578617568615925

/-! ## A221493.P16549870616062034375

`∑[∑[A165032(A062498(n))]]`
-/

namespace A221493.P16549870616062034375
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165032 (A062498 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A221493.P16549870616062034375

/-! ## A221493.P11934395339488985887

`6*A339172(A305497(n+1))`
-/

namespace A221493.P11934395339488985887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A339172 (A305497 (n + 1)).toNat

end

end A221493.P11934395339488985887

/-!
# A221495: Majority value maps: number of n X n binary arrays indicating the locations of corresponding elements equal to at least half of their horizontal and antidiagonal neighbors in a random 0..3 n X n array.

The programs for A221495, there is no canonical definition to state claims against.
-/

/-! ## A221495.P6673766314653486552

`A221499(∑[4*n]+1)`
-/

namespace A221495.P6673766314653486552
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221499 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A221495.P6673766314653486552

/-! ## A221495.P14669028467064816816

`record[A221499(A330613(n+1))]`
-/

namespace A221495.P14669028467064816816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221499 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221495.P14669028467064816816

/-!
# A221496: Majority value maps: number of nX5 binary arrays indicating the locations of corresponding elements equal to at least half of their horizontal and antidiagonal neighbors in a random 0..3 nX5 array.

The programs for A221496, there is no canonical definition to state claims against.
-/

/-! ## A221496.P106739133520528024

`A221499(∑[n+5]+6)`
-/

namespace A221496.P106739133520528024
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221499 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A221496.P106739133520528024

/-! ## A221496.P7213030024035098243

`A225413(n)+A221499(A046691(n+3))`
-/

namespace A221496.P7213030024035098243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225413 n + A221499 (A046691 (n + 3)).toNat

end

end A221496.P7213030024035098243

/-! ## A221496.P10929053578515757832

`A221499(A046691(n+3))+A079302(n+1)`
-/

namespace A221496.P10929053578515757832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221499 (A046691 (n + 3)).toNat + A079302 (n + 1)

end

end A221496.P10929053578515757832

/-! ## A221496.P744715759412587221

`A221499(A046691(n+3))+A079979(3*n+4)`
-/

namespace A221496.P744715759412587221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221499 (A046691 (n + 3)).toNat + A079979 (3 * n + 4)

end

end A221496.P744715759412587221

/-!
# A221497: Majority value maps: number of nX6 binary arrays indicating the locations of corresponding elements equal to at least half of their horizontal and antidiagonal neighbors in a random 0..3 nX6 array.

The programs for A221497, there is no canonical definition to state claims against.
-/

/-! ## A221497.P2946185710846844473

`A221499(A052905(n+3))`
-/

namespace A221497.P2946185710846844473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221499 (A052905 (n + 3)).toNat

end

end A221497.P2946185710846844473

/-! ## A221497.P13165673151966518038

`A221499(A056119(n)+16)`
-/

namespace A221497.P13165673151966518038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221499 (A056119 n + 16).toNat

end

end A221497.P13165673151966518038

/-! ## A221497.P8729426755104491452

`A221499(eq[3, A219347(n)])`
-/

namespace A221497.P8729426755104491452
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221499 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A221497.P8729426755104491452

/-!
# A221498: Majority value maps: number of n X 7 binary arrays indicating the locations of corresponding elements equal to at least half of their horizontal and antidiagonal neighbors in a random 0..3 n X 7 array.

The programs for A221498, there is no canonical definition to state claims against.
-/

/-! ## A221498.P13055723837287994059

`A221499(A055999(n+4))`
-/

namespace A221498.P13055723837287994059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221499 (A055999 (n + 4)).toNat

end

end A221498.P13055723837287994059

/-! ## A221498.P9110384046498444564

`A221499(eq[4, A219347(n)])`
-/

namespace A221498.P9110384046498444564
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221499 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A221498.P9110384046498444564

