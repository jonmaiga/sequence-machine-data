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
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
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
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
import Seq.B013.C000
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
# A059800: Smallest prime p such that the quotient-cycle length in continued fraction expansion of sqrt(p) is n: smallest prime p(m) for which A054269(m)=n.

The programs for A059800, there is no canonical definition to state claims against.
-/

/-! ## A059800.P10070429517353348008

`A000040(A338785(n+1))`
-/

namespace A059800.P10070429517353348008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A338785 (n + 1)).toNat

end

end A059800.P10070429517353348008

/-! ## A059800.P16171370037165780102

`A008578(A338785(n+1)+1)`
-/

namespace A059800.P16171370037165780102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A338785 (n + 1) + 1).toNat

end

end A059800.P16171370037165780102

/-! ## A059800.P2883737168852409464

`A158611(A338785(n+1)+2)`
-/

namespace A059800.P2883737168852409464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (A338785 (n + 1) + 2).toNat

end

end A059800.P2883737168852409464

/-! ## A059800.P6574981566600728476

`∑{d}[A338785(n+1), A007444(#)]`
-/

namespace A059800.P6574981566600728476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338785 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A007444 d

end

end A059800.P6574981566600728476

/-! ## A059800.P13581641205124488410

`A006005(A338785(n+1))+A000007(n)`
-/

namespace A059800.P13581641205124488410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (A338785 (n + 1)).toNat + A000007 n

end

end A059800.P13581641205124488410

/-! ## A059800.P9111602683173438371

`A006005(A338785(n+1))+A001316(n)%2`
-/

namespace A059800.P9111602683173438371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (A338785 (n + 1)).toNat + Int.tmod (A001316 n) 2

end

end A059800.P9111602683173438371

/-! ## A059800.P2540836132216567500

`A097805(∑[n])+A006005(A338785(n+1))`
-/

namespace A059800.P2540836132216567500
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097805 (∑ j ∈ Finset.range (n + 1), f1 j) + A006005 (A338785 (n + 1)).toNat

end

end A059800.P2540836132216567500

/-! ## A059800.P4804272485738416724

`A008864(A338785(n+1))-A191329(A032915(n+1))`
-/

namespace A059800.P4804272485738416724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (A338785 (n + 1)).toNat - A191329 (A032915 (n + 1)).toNat

end

end A059800.P4804272485738416724

/-!
# A059801: Numbers k such that 4^k - 3^k is prime.

The programs for A059801, there is no canonical definition to state claims against.
-/

/-! ## A059801.P7168850892697403559

`p?[A286348(n+1)+A000038(n)]`
-/

namespace A059801.P7168850892697403559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286348 (n + 1) + A000038 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A059801.P7168850892697403559

/-! ## A059801.P16344387203797145445

`p?[∪[A286348(n+1), A000079(n)]]`
-/

namespace A059801.P16344387203797145445
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286348 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A059801.P16344387203797145445

/-! ## A059801.P14380467584403553

`p?[∪[A286348(n+1), A002378(n)]]`
-/

namespace A059801.P14380467584403553
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286348 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A059801.P14380467584403553

/-!
# A059802: Numbers k such that 5^k - 4^k is prime.

The programs for A059802, there is no canonical definition to state claims against.
-/

/-! ## A059802.P14490159922663075663

`A374846(A277082(n+1))`
-/

namespace A059802.P14490159922663075663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374846 (A277082 (n + 1)).toNat

end

end A059802.P14490159922663075663

/-!
# A059803: Numbers k such that 9^k - 8^k is prime.

The programs for A059803, there is no canonical definition to state claims against.
-/

/-! ## A059803.P8621007006582347658

`A118751(A341905(n+1))`
-/

namespace A059803.P8621007006582347658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118751 (A341905 (n + 1)).toNat

end

end A059803.P8621007006582347658

/-! ## A059803.P7062384474337474802

`A329559(record[A055944(3*n+1)])`
-/

namespace A059803.P7062384474337474802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055944 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329559 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A059803.P7062384474337474802

/-!
# A059805: Natural numbers written with digits grouped in pairs and leading zeros omitted.

The programs for A059805, there is no canonical definition to state claims against.
-/

/-! ## A059805.P17380626692942471791

`A136414(Δ[n²])`
-/

namespace A059805.P17380626692942471791
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136414 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A059805.P17380626692942471791

/-! ## A059805.P17281051718518602670

`and(-1, A136414(2*n+1))`
-/

namespace A059805.P17281051718518602670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A136414 (2 * n + 1))

end

end A059805.P17281051718518602670

/-! ## A059805.P3679184453814930737

`floor(A193431(2*n+1)/10)`
-/

namespace A059805.P3679184453814930737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A193431 (2 * n + 1) : ℚ) / 10⌋

end

end A059805.P3679184453814930737

/-! ## A059805.P477727690116714678

`A059995(A193431(2*n+1))`
-/

namespace A059805.P477727690116714678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 (A193431 (2 * n + 1)).toNat

end

end A059805.P477727690116714678

/-! ## A059805.P81657995561021357

`A136414(n+1+n)+A000038(n+1)`
-/

namespace A059805.P81657995561021357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136414 (n + 1 + n) + A000038 (n + 1)

end

end A059805.P81657995561021357

/-! ## A059805.P4951144287853395892

`A136414(2*n+1)+char[A288940(n+3)]`
-/

namespace A059805.P4951144287853395892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288940 (n + 3)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136414 (2 * n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A059805.P4951144287853395892

/-! ## A059805.P8103973925262439229

`A136414(A005408(n))%A062670(n+1)`
-/

namespace A059805.P8103973925262439229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A136414 (A005408 n).toNat) (A062670 (n + 1))

end

end A059805.P8103973925262439229

/-! ## A059805.P9113003427012033896

`C(A136414(2*n+1), A001221(A000430(n+1)))`
-/

namespace A059805.P9113003427012033896
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A136414 (2 * n + 1)).toNat (A001221 (A000430 (n + 1)).toNat).toNat

end

end A059805.P9113003427012033896

/-! ## A059805.P429240579171371373

`A136414(n+1+n)/(A052905(n)-A055999(n))`
-/

namespace A059805.P429240579171371373
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A136414 (n + 1 + n) : ℚ) / (A052905 n - A055999 n : ℚ)

end

end A059805.P429240579171371373

/-! ## A059805.P12561768301052873278

`A136414(2*n+1)/A003415(record[A006530(n+2)])`
-/

namespace A059805.P12561768301052873278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A136414 (2 * n + 1) : ℚ) / (A003415 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat : ℚ)

end

end A059805.P12561768301052873278

/-! ## A059805.P13249962636777927624

`A136414(2*n+1)%A175162(n)`
-/

namespace A059805.P13249962636777927624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A136414 (2 * n + 1)) (A175162 n)

end

end A059805.P13249962636777927624

/-! ## A059805.P3392259959606964272

`A136414(n+1+n)+A005087(A137688(n))`
-/

namespace A059805.P3392259959606964272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136414 (n + 1 + n) + A005087 (A137688 n).toNat

end

end A059805.P3392259959606964272

/-!
# A059806: Minimal size of the center of G where G is a finite group of order n.

The programs for A059806, there is no canonical definition to state claims against.
-/

/-! ## A059806.P11002132413976626949

`gcd(A125746(n+1), A265409(A221364(n)))`
-/

namespace A059806.P11002132413976626949
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A125746 (n + 1)) (A265409 (A221364 n).toNat)

end

end A059806.P11002132413976626949

/-! ## A059806.P18139872968278000925

`gcd(n+1, A281614(n)%A010684(n))`
-/

namespace A059806.P18139872968278000925
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (Int.tmod (A281614 n) (A010684 n))

end

end A059806.P18139872968278000925

/-! ## A059806.P6193533740637349877

`gcd(n+1, A069859(A092809(n)))`
-/

namespace A059806.P6193533740637349877
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A069859 (A092809 n).toNat)

end

end A059806.P6193533740637349877

/-! ## A059806.P9611200267126206653

`gcd(A069859(A092809(n)), A074805(n))`
-/

namespace A059806.P9611200267126206653
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A069859 (A092809 n).toNat) (A074805 n)

end

end A059806.P9611200267126206653

/-!
# A059807: Maximal size of the commutator subgroup of G where G is a finite group of order n.

The programs for A059807, there is no canonical definition to state claims against.
-/

/-! ## A059807.P5048639453620994845

`gcd(A318810(A308191(n)), A346596(n+1))`
-/

namespace A059807.P5048639453620994845
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A318810 (A308191 n).toNat) (A346596 (n + 1))

end

end A059807.P5048639453620994845

/-! ## A059807.P526242233429869296

`A142150(n+1)+A230031(A152685(n))-val(n+1, 2)`
-/

namespace A059807.P526242233429869296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (n + 1) + (A230031 (A152685 n).toNat - (SequenceMachineLib.valuation (n + 1) 2 : ℤ))

end

end A059807.P526242233429869296

/-! ## A059807.P16969345100434479061

`A179801(A242474(n+1))+A026741(A152271(n))`
-/

namespace A059807.P16969345100434479061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179801 (A242474 (n + 1)).toNat + A026741 (A152271 n).toNat

end

end A059807.P16969345100434479061

/-! ## A059807.P5319610143126753793

`gcd(A171229(A001855(n+1)), A326098(n))`
-/

namespace A059807.P5319610143126753793
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A171229 (A001855 (n + 1)).toNat) (A326098 n)

end

end A059807.P5319610143126753793

/-! ## A059807.P11710196634499601105

`gcd(n+1, A080956(A058983(n)))`
-/

namespace A059807.P11710196634499601105
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A080956 (A058983 n).toNat)

end

end A059807.P11710196634499601105

/-!
# A059808: Numbers which contain the same digits in two different bases.

The programs for A059808, there is no canonical definition to state claims against.
-/

/-! ## A059808.P871831415193885144

`comp[A059809(n+1)-2]+2`
-/

namespace A059808.P871831415193885144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059809 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 2

end

end A059808.P871831415193885144

/-!
# A059809: Numbers that do not contain exactly the same digits in two different smaller bases.

The programs for A059809, there is no canonical definition to state claims against.
-/

/-! ## A059809.P15905786966368711058

`record[A327225(n+2)-1]`
-/

namespace A059809.P15905786966368711058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327225 (n + 2) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A059809.P15905786966368711058

/-! ## A059809.P5376699494267797304

`lt[(n-A327225(n))², n]`
-/

namespace A059809.P5376699494267797304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - A327225 n) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A059809.P5376699494267797304

/-! ## A059809.P9818084289061583699

`record[A233583(A327225(n))]`
-/

namespace A059809.P9818084289061583699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A327225 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A059809.P9818084289061583699

/-! ## A059809.P10447633730857885929

`eq[A184985(n+1), A327225(n)]`
-/

namespace A059809.P10447633730857885929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184985 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327225 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A059809.P10447633730857885929

/-! ## A059809.P14766094109483627900

`record[A233583(n+1)%A327226(n)]`
-/

namespace A059809.P14766094109483627900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A233583 (n + 1)) (A327226 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A059809.P14766094109483627900

/-!
# A059811: Let g_n be the ball packing n-width for the manifold torus X interval; sequence gives numerator of (g_n/Pi)^2.

The programs for A059811, the canonical program `A059811.P9061963275261633152` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A059811 has offset 1).

The definition of A059811 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A059811.P9061963275261633152

`a(n-1)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1, a(4)=4, a(5)=4, a(6)=9, a(7)=36, a(8)=1`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A059811

/-- `a(n-1)` -/
def P9061963275261633152.Spec : Prop :=
  ∀ n, (P9061963275261633152.a n : ℤ) = A059811 (n + 1)

theorem P9061963275261633152.correct : P9061963275261633152.Spec := by
  intro n
  simp only [A059811, Nat.add_sub_cancel]

end A059811

/-!
# A059812: Let g_n be the ball packing n-width for the manifold torus X interval; sequence gives denominator of (g_n/Pi)^2.

The programs for A059812, the canonical program `A059812.P5195727400897418637` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A059812 has offset 1).

The definition of A059812 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A059812.P5195727400897418637

`2*a(n-1)-a(n-2)` with `a(0)=1, a(1)=4, a(2)=4, a(3)=4, a(4)=25, a(5)=25, a(6)=64, a(7)=289, a(8)=9, a(9)=10`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A059812

/-- `2*a(n-1)-a(n-2)` -/
def P5195727400897418637.Spec : Prop :=
  ∀ n, P5195727400897418637.a n = A059812 (n + 1)

theorem P5195727400897418637.correct : P5195727400897418637.Spec := by
  intro n
  simp only [A059812, Nat.add_sub_cancel]

end A059812

/-!
# A059815: Let g_n be the ball packing n-width for the manifold torus X square; sequence gives numerator of (g_n/Pi)^2.

The programs for A059815, the canonical program `A059815.P7646391838577029739` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A059815 has offset 1).

The definition of A059815 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A059815.P7646391838577029739

`a(n-2)` with `a(0)=1, a(1)=1, a(2)=4, a(3)=4, a(4)=9, a(5)=16, a(6)=64, a(7)=1, a(8)=2`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A059815

/-- `a(n-2)` -/
def P7646391838577029739.Spec : Prop :=
  ∀ n, (P7646391838577029739.a n : ℤ) = A059815 (n + 1)

theorem P7646391838577029739.correct : P7646391838577029739.Spec := by
  intro n
  simp only [A059815, Nat.add_sub_cancel]

end A059815

/-!
# A059816: Let g_n be the ball packing n-width for the manifold torus X square; sequence gives denominator of (g_n/Pi)^2.

The programs for A059816, there is no canonical definition to state claims against.
-/

/-! ## A059816.P4157831975252172925

`or(1, lt[A001221((n+1)*(3*C(n, 3)+2)), 3])²`
-/

namespace A059816.P4157831975252172925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 ((n + 1) * (3 * Nat.choose n 3 + 2))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n) ^ 2

end

end A059816.P4157831975252172925

/-! ## A059816.P14108698140549953325

`A183162(A178834(n))²`
-/

namespace A059816.P14108698140549953325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183162 (A178834 n).toNat ^ 2

end

end A059816.P14108698140549953325

/-! ## A059816.P16994960375285409633

`A200266(A224957(n))²`
-/

namespace A059816.P16994960375285409633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200266 (A224957 n).toNat ^ 2

end

end A059816.P16994960375285409633

/-!
# A059819: Expansion of series related to Liouville's Last Theorem: g.f. Sum_{t>0} (-1)^(t+1) *x^(t*(t+1)/2) / ( (1-x^t)^2 *Product_{i=1..t} (1-x^i) ).

The programs for A059819, there is no canonical definition to state claims against.
-/

/-! ## A059819.P11093976301639944617

`∑{d}[n, A110571(#)/2]`
-/

namespace A059819.P11093976301639944617
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (A110571 d : ℚ) / 2

end

end A059819.P11093976301639944617

/-! ## A059819.P17402885265006781793

`∑{d}[n, A274108(#)+#]`
-/

namespace A059819.P17402885265006781793
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (A274108 d + (d : ℤ))

end

end A059819.P17402885265006781793

/-! ## A059819.P10450914514881325103

`A273943(∑{d}[n, A110571(#)])`
-/

namespace A059819.P10450914514881325103
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (∑ d ∈ Nat.divisors (f1 n), A110571 d).toNat

end

end A059819.P10450914514881325103

/-! ## A059819.P5503152428016955690

`A014682(∑{d}[n, A110571(#)])`
-/

namespace A059819.P5503152428016955690
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (∑ d ∈ Nat.divisors (f1 n), A110571 d).toNat

end

end A059819.P5503152428016955690

/-! ## A059819.P10355726772560590701

`∑{d}[n, A000463(A049835(#))]`
-/

namespace A059819.P10355726772560590701
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000463 (A049835 d).toNat

end

end A059819.P10355726772560590701

/-! ## A059819.P10413587063232312189

`A001281(∑{d}[n, A110571(#)])`
-/

namespace A059819.P10413587063232312189
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (∑ d ∈ Nat.divisors (f1 n), A110571 d).toNat

end

end A059819.P10413587063232312189

/-! ## A059819.P17766253620287161337

`A004525(∑{d}[n, A110571(#)])`
-/

namespace A059819.P17766253620287161337
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (∑ d ∈ Nat.divisors (f1 n), A110571 d).toNat

end

end A059819.P17766253620287161337

/-! ## A059819.P3567079183668908041

`A025480(∑{d}[n, A110571(#)])`
-/

namespace A059819.P3567079183668908041
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (∑ d ∈ Nat.divisors (f1 n), A110571 d).toNat

end

end A059819.P3567079183668908041

/-! ## A059819.P3463941404439625051

`A026741(∑{d}[n, A110571(#)])`
-/

namespace A059819.P3463941404439625051
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (∑ d ∈ Nat.divisors (f1 n), A110571 d).toNat

end

end A059819.P3463941404439625051

/-!
# A059821: Expansion of series related to Liouville's Last Theorem: g.f. sum_{t>0} (-1)^(t+1) *x^(t*(t+1)/2) / ( (1-x^t)^4 *product_{i=1..t} (1-x^i) ).

The programs for A059821, there is no canonical definition to state claims against.
-/

/-! ## A059821.P11920797293653680708

`∑[A122282(∑[A078971(n+1)])]`
-/

namespace A059821.P11920797293653680708
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078971 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122282 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A059821.P11920797293653680708

/-! ## A059821.P13934890559087945708

`A328594(A263346(n))+A192951(n)`
-/

namespace A059821.P13934890559087945708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328594 (A263346 n).toNat + A192951 n

end

end A059821.P13934890559087945708

/-! ## A059821.P9167762210922761269

`A000332(n+3)-A241914(A156180(n))`
-/

namespace A059821.P9167762210922761269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000332 (n + 3) - A241914 (A156180 n).toNat

end

end A059821.P9167762210922761269

/-!
# A059822: Expansion of series related to Liouville's Last Theorem: g.f. sum_{t>0} (-1)^(t+1) *x^(t*(t+1)/2) / ( (1-x^t)^5 *product_{i=1..t} (1-x^i) ).

The programs for A059822, there is no canonical definition to state claims against.
-/

/-! ## A059822.P8835710476997892506

`A131130(n)-A087990(A061946(n+1))`
-/

namespace A059822.P8835710476997892506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131130 n - A087990 (A061946 (n + 1)).toNat

end

end A059822.P8835710476997892506

/-! ## A059822.P8460036309058408397

`A213598(3*n)-A359544(A000079(n))`
-/

namespace A059822.P8460036309058408397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213598 (3 * n) - A359544 (A000079 n).toNat

end

end A059822.P8460036309058408397

/-! ## A059822.P14262051261704421534

`A023029(3*(n+3))-A330996(A165900(n+2))`
-/

namespace A059822.P14262051261704421534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023029 (3 * (n + 3)) - A330996 (A165900 (n + 2)).toNat

end

end A059822.P14262051261704421534

/-!
# A059823: Expansion of series related to Liouville's Last Theorem: g.f. sum_{t>0} (-1)^(t+1) *x^(t*(t+1)/2) / ( (1-x^t)^6 *product_{i=1..t} (1-x^i) ).

The programs for A059823, there is no canonical definition to state claims against.
-/

/-! ## A059823.P1965724156249519116

`record[A000579(n+1)-A184974(n)]`
-/

namespace A059823.P1965724156249519116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000579 (n + 1) - A184974 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A059823.P1965724156249519116

/-! ## A059823.P3036213644263484410

`∑[C(2*n, 3)]+A001221(A244880(n))`
-/

namespace A059823.P3036213644263484410
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + A001221 (A244880 n).toNat

end

end A059823.P3036213644263484410

/-!
# A059824: Expansion of series related to Liouville's Last Theorem: g.f. Sum_{t>=1} (-1)^(t+1) *x^(t*(t+1)/2) / ( (1-x^t)^7 * Product_{i=1..t} (1-x^i) ).

The programs for A059824, there is no canonical definition to state claims against.
-/

/-! ## A059824.P12605073917802285119

`A129019(n)-A157271(A154638(n))`
-/

namespace A059824.P12605073917802285119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129019 n - A157271 (A154638 n).toNat

end

end A059824.P12605073917802285119

/-! ## A059824.P12561462186035119627

`A230723(n+1)+A123578(A231654(n+1))`
-/

namespace A059824.P12561462186035119627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230723 (n + 1) + A123578 (A231654 (n + 1)).toNat

end

end A059824.P12561462186035119627

/-!
# A059825: Expansion of series related to Liouville's Last Theorem: g.f. sum_{t>0} (-1)^(t+1) *x^(t*(t+1)/2) / ( (1-x^t)^8 *product_{i=1..t} (1-x^i) ).

The programs for A059825, there is no canonical definition to state claims against.
-/

/-! ## A059825.P4558273773378429457

`A145137(n)-A069283(A145160(n))`
-/

namespace A059825.P4558273773378429457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145137 n - A069283 (A145160 n).toNat

end

end A059825.P4558273773378429457

/-! ## A059825.P5050306092444190627

`A145137(n)-A069283(A231654(n+1))`
-/

namespace A059825.P5050306092444190627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145137 n - A069283 (A231654 (n + 1)).toNat

end

end A059825.P5050306092444190627

/-!
# A059826: a(n) = (n^2 - n + 1)*(n^2 + n + 1).

The programs for A059826, the canonical program `A059826.P10107357562865888263` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A059826 has offset 0).

The definition of A059826 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n²-n+1)*(n²+n+1)` (program `A059826.P10107357562865888263`, by `A059826.P10107357562865888263.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A059826.P9711747945166773044

`n^4+n²+1`
-/

namespace A059826.P9711747945166773044
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 4 + n ^ 2 + 1

end

end A059826.P9711747945166773044

namespace A059826

/-- `n^4+n²+1` -/
def P9711747945166773044.Spec : Prop :=
  ∀ n, (P9711747945166773044.a n : ℤ) = A059826 n

theorem P9711747945166773044.correct : P9711747945166773044.Spec := by
  intro n
  simp only [A059826, Nat.add_sub_cancel, A059826.P9711747945166773044.a, A059826.P10107357562865888263.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A059826

/-! ## A059826.P10107357562865888263

`(n²-n+1)*(n²+n+1)`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A059826

/-- `(n²-n+1)*(n²+n+1)` -/
def P10107357562865888263.Spec : Prop :=
  ∀ n, P10107357562865888263.a n = A059826 n

theorem P10107357562865888263.correct : P10107357562865888263.Spec := by
  intro n
  simp only [A059826]

end A059826

/-! ## A059826.P4800000960152073908

`or(1, n²+n²²)`
-/

namespace A059826.P4800000960152073908
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (n ^ 2 + (n ^ 2) ^ 2)

end

end A059826.P4800000960152073908

namespace A059826

/-- `or(1, n²+n²²)` -/
def P4800000960152073908.Spec : Prop :=
  ∀ n, (P4800000960152073908.a n : ℤ) = A059826 n

end A059826

/-! ## A059826.P13925572454469536239

`xor(1, n²+n²²)`
-/

namespace A059826.P13925572454469536239
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (n ^ 2 + (n ^ 2) ^ 2)

end

end A059826.P13925572454469536239

namespace A059826

/-- `xor(1, n²+n²²)` -/
def P13925572454469536239.Spec : Prop :=
  ∀ n, (P13925572454469536239.a n : ℤ) = A059826 n

end A059826

/-! ## A059826.P4565756015631129339

`ceil((or(2, (2*n)²)/4)²)`
-/

namespace A059826.P4565756015631129339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((Nat.lor 2 ((2 * n) ^ 2) : ℚ) / 4) ^ 2⌉

end

end A059826.P4565756015631129339

namespace A059826

/-- `ceil((or(2, (2*n)²)/4)²)` -/
def P4565756015631129339.Spec : Prop :=
  ∀ n, P4565756015631129339.a n = A059826 n

end A059826

/-! ## A059826.P9765930545230480802

`ceil((xor(2, (2*n)²)/4)²)`
-/

namespace A059826.P9765930545230480802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((Nat.xor 2 ((2 * n) ^ 2) : ℚ) / 4) ^ 2⌉

end

end A059826.P9765930545230480802

namespace A059826

/-- `ceil((xor(2, (2*n)²)/4)²)` -/
def P9765930545230480802.Spec : Prop :=
  ∀ n, P9765930545230480802.a n = A059826 n

end A059826

/-! ## A059826.P14340504712542783493

`(8*C(n²+1, 2)+4)/4`
-/

namespace A059826.P14340504712542783493
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (8 * Nat.choose (n ^ 2 + 1) 2 + 4 : ℚ) / 4

end

end A059826.P14340504712542783493

namespace A059826

/-- `(8*C(n²+1, 2)+4)/4` -/
def P14340504712542783493.Spec : Prop :=
  ∀ n, P14340504712542783493.a n = (A059826 n : ℚ)

theorem P14340504712542783493.correct : P14340504712542783493.Spec := by
  intro n
  simp only [A059826, Nat.add_sub_cancel, A059826.P14340504712542783493.a, A059826.P10107357562865888263.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A059826

/-! ## A059826.P3009519572625176700

`ceil((A058331(n)/2)²)`
-/

namespace A059826.P3009519572625176700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((A058331 n : ℚ) / 2) ^ 2⌉

end

end A059826.P3009519572625176700

namespace A059826

/-- `ceil((A058331(n)/2)²)` -/
def P3009519572625176700.Spec : Prop :=
  ∀ n, P3009519572625176700.a n = A059826 n

end A059826

/-! ## A059826.P1109764147655366094

`(A152031(n)+1)/(n+1)`
-/

namespace A059826.P1109764147655366094
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A152031 n + 1 : ℚ) / (n + 1 : ℚ)

end

end A059826.P1109764147655366094

namespace A059826

/-- `(A152031(n)+1)/(n+1)` -/
def P1109764147655366094.Spec : Prop :=
  ∀ n, P1109764147655366094.a n = (A059826 n : ℚ)

theorem P1109764147655366094.correct : P1109764147655366094.Spec := by
  intro n
  simp only [A059826, Nat.add_sub_cancel, A059826.P1109764147655366094.a, A059826.P10107357562865888263.a, A152031, A152031.P4813536305443447541.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A059826

/-! ## A059826.P3679271799611019064

`ceil((n*A004277(n)+1)²/4)`
-/

namespace A059826.P3679271799611019064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(((n : ℤ) * A004277 n + 1) ^ 2 : ℚ) / 4⌉

end

end A059826.P3679271799611019064

namespace A059826

/-- `ceil((n*A004277(n)+1)²/4)` -/
def P3679271799611019064.Spec : Prop :=
  ∀ n, P3679271799611019064.a n = A059826 n

end A059826

/-! ## A059826.P1603946955364344707

`lcm(A002061(n), A111002(n))`
-/

namespace A059826.P1603946955364344707
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A002061 n) (A111002 n)

end

end A059826.P1603946955364344707

namespace A059826

/-- `lcm(A002061(n), A111002(n))` -/
def P1603946955364344707.Spec : Prop :=
  ∀ n, (P1603946955364344707.a n : ℤ) = A059826 n

end A059826

/-! ## A059826.P17765848220221435764

`A002061(n)*A276041(n)/A000079(n)`
-/

namespace A059826.P17765848220221435764
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002061 n * A276041 n : ℚ) / (A000079 n : ℚ)

end

end A059826.P17765848220221435764

namespace A059826

/-- `A002061(n)*A276041(n)/A000079(n)` -/
def P17765848220221435764.Spec : Prop :=
  ∀ n, P17765848220221435764.a n = (A059826 n : ℚ)

end A059826

/-! ## A059826.P6226109275667075552

`A002061(n)*A034275(n+1)/A000108(n)`
-/

namespace A059826.P6226109275667075552
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002061 n * A034275 (n + 1) : ℚ) / (A000108 n : ℚ)

end

end A059826.P6226109275667075552

namespace A059826

/-- `A002061(n)*A034275(n+1)/A000108(n)` -/
def P6226109275667075552.Spec : Prop :=
  ∀ n, P6226109275667075552.a n = (A059826 n : ℚ)

end A059826

/-! ## A059826.P16093507527073206753

`A111002(n²)`
-/

namespace A059826.P16093507527073206753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111002 (n ^ 2)

end

end A059826.P16093507527073206753

namespace A059826

/-- `A111002(n²)` -/
def P16093507527073206753.Spec : Prop :=
  ∀ n, P16093507527073206753.a n = A059826 n

end A059826

/-! ## A059826.P3930716396101646234

`A002061(n²+1)`
-/

namespace A059826.P3930716396101646234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002061 (n ^ 2 + 1)

end

end A059826.P3930716396101646234

namespace A059826

/-- `A002061(n²+1)` -/
def P3930716396101646234.Spec : Prop :=
  ∀ n, P3930716396101646234.a n = A059826 n

theorem P3930716396101646234.correct : P3930716396101646234.Spec := by
  intro n
  simp only [A059826, Nat.add_sub_cancel, A059826.P3930716396101646234.a, A059826.P10107357562865888263.a, A002061, A002061.P13016590216674735232.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A059826

/-! ## A059826.P10490338904245579859

`sqrt(A058031(n²+1))`
-/

namespace A059826.P10490338904245579859
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A058031 (n ^ 2 + 1) : ℝ)

end

end A059826.P10490338904245579859

namespace A059826

/-- `sqrt(A058031(n²+1))` -/
def P10490338904245579859.Spec : Prop :=
  ∀ n, P10490338904245579859.a n = (A059826 n : ℝ)

end A059826

/-!
# A059827: Cubes of triangular numbers: (n*(n+1)/2)^3.

The programs for A059827, the canonical program `A059827.P11953740460129512783` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A059827 has offset 1).

The definition of A059827 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A059827.P11953740460129512783

`C(n+2, n)^3`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A059827

/-- `C(n+2, n)^3` -/
def P11953740460129512783.Spec : Prop :=
  ∀ n, (P11953740460129512783.a n : ℤ) = A059827 (n + 1)

theorem P11953740460129512783.correct : P11953740460129512783.Spec := by
  intro n
  simp only [A059827, Nat.add_sub_cancel]

end A059827

/-! ## A059827.P651130832012530394

`((n+1)*(n+2)/2)^3`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A059827.P651130832012530394
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n + 1) * (n + 2) : ℚ) / 2) ^ 3

end

end A059827.P651130832012530394

namespace A059827

/-- `((n+1)*(n+2)/2)^3` -/
def P651130832012530394.Spec : Prop :=
  ∀ n, P651130832012530394.a n = (A059827 (n + 1) : ℚ)

end A059827

/-! ## A059827.P13567542644852705770

`-∑[xor(n, -1)]^3`
-/

namespace A059827.P13567542644852705770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (-1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -((∑ j ∈ Finset.range (n + 1), f1 j) ^ 3)

end

end A059827.P13567542644852705770

namespace A059827

/-- `-∑[xor(n, -1)]^3` -/
def P13567542644852705770.Spec : Prop :=
  ∀ n, P13567542644852705770.a n = A059827 (n + 1)

end A059827

/-! ## A059827.P10574436749933867587

`root(∑[n+1], tan(acot(3)))`
-/

namespace A059827.P10574436749933867587
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ) ^ (1 / Real.tan (SequenceMachineLib.acot (3 : ℝ)))

end

end A059827.P10574436749933867587

namespace A059827

/-- `root(∑[n+1], tan(acot(3)))` -/
def P10574436749933867587.Spec : Prop :=
  ∀ n, P10574436749933867587.a n = (A059827 (n + 1) : ℝ)

end A059827

/-! ## A059827.P11896603474486277773

`root(∑[n+1], cot(atan(3)))`
-/

namespace A059827.P11896603474486277773
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ) ^ (1 / Real.cot (Real.arctan (3 : ℝ)))

end

end A059827.P11896603474486277773

namespace A059827

/-- `root(∑[n+1], cot(atan(3)))` -/
def P11896603474486277773.Spec : Prop :=
  ∀ n, P11896603474486277773.a n = (A059827 (n + 1) : ℝ)

end A059827

/-! ## A059827.P13856199869217143833

`root(∑[C(n+1, n)], 1/3)`
-/

namespace A059827.P13856199869217143833
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 1) n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ) ^ (1 / ((1 : ℚ) / 3 : ℝ))

end

end A059827.P13856199869217143833

namespace A059827

/-- `root(∑[C(n+1, n)], 1/3)` -/
def P13856199869217143833.Spec : Prop :=
  ∀ n, P13856199869217143833.a n = (A059827 (n + 1) : ℝ)

end A059827

/-! ## A059827.P14336546024169169840

`record[(C(n, 2)-(n-1))^3]`
-/

namespace A059827.P14336546024169169840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.choose n 2 : ℤ) - ((n : ℤ) - 1)) ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A059827.P14336546024169169840

namespace A059827

/-- `record[(C(n, 2)-(n-1))^3]` -/
def P14336546024169169840.Spec : Prop :=
  ∀ n, P14336546024169169840.a n = A059827 (n + 1)

end A059827

/-! ## A059827.P149798515236629970

`lcm(n+1, n+2)^3/8`
-/

namespace A059827.P149798515236629970
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm (n + 1) (n + 2) ^ 3 : ℚ) / 8

end

end A059827.P149798515236629970

namespace A059827

/-- `lcm(n+1, n+2)^3/8` -/
def P149798515236629970.Spec : Prop :=
  ∀ n, P149798515236629970.a n = (A059827 (n + 1) : ℚ)

end A059827

/-! ## A059827.P8952200357433834752

`∑[n+1]²*C(n+2, 2)`
-/

namespace A059827.P8952200357433834752
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 * Nat.choose (n + 2) 2

end

end A059827.P8952200357433834752

namespace A059827

/-- `∑[n+1]²*C(n+2, 2)` -/
def P8952200357433834752.Spec : Prop :=
  ∀ n, (P8952200357433834752.a n : ℤ) = A059827 (n + 1)

end A059827

/-! ## A059827.P12809516690769790430

`record[((n-1)*(n-2)/2)^3]`
-/

namespace A059827.P12809516690769790430
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n : ℤ) - 1 : ℚ) * (((n : ℤ) - 2 : ℚ) / 2)) ^ 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A059827.P12809516690769790430

namespace A059827

/-- `record[((n-1)*(n-2)/2)^3]` -/
def P12809516690769790430.Spec : Prop :=
  ∀ n, P12809516690769790430.a n = (A059827 (n + 1) : ℚ)

end A059827

/-! ## A059827.P2827862964031891584

`root(∑[n+1], gcd(n, n+1)/3)`
-/

namespace A059827.P2827862964031891584
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ) ^ (1 / ((Nat.gcd n (n + 1) : ℚ) / 3 : ℝ))

end

end A059827.P2827862964031891584

namespace A059827

/-- `root(∑[n+1], gcd(n, n+1)/3)` -/
def P2827862964031891584.Spec : Prop :=
  ∀ n, P2827862964031891584.a n = (A059827 (n + 1) : ℝ)

end A059827

/-! ## A059827.P18178095733849764577

`∑[n+1]²²/C(n+2, 2)`
-/

namespace A059827.P18178095733849764577
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2) ^ 2 : ℕ) : ℚ) / (Nat.choose (n + 2) 2 : ℚ)

end

end A059827.P18178095733849764577

namespace A059827

/-- `∑[n+1]²²/C(n+2, 2)` -/
def P18178095733849764577.Spec : Prop :=
  ∀ n, P18178095733849764577.a n = (A059827 (n + 1) : ℚ)

end A059827

/-! ## A059827.P5423143571140860160

`floor(∑[n+1]/acot(∑[n+1]²))`
-/

namespace A059827.P5423143571140860160
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ) / SequenceMachineLib.acot (((∑ j ∈ Finset.range (n + 1), f2 j) ^ 2 : ℕ) : ℝ)⌋

end

end A059827.P5423143571140860160

namespace A059827

/-- `floor(∑[n+1]/acot(∑[n+1]²))` -/
def P5423143571140860160.Spec : Prop :=
  ∀ n, P5423143571140860160.a n = A059827 (n + 1)

end A059827

/-! ## A059827.P12983549723969616034

`round(∑[n+1]/acot(∑[n+1]²))`
-/

namespace A059827.P12983549723969616034
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ) / SequenceMachineLib.acot (((∑ j ∈ Finset.range (n + 1), f2 j) ^ 2 : ℕ) : ℝ))

end

end A059827.P12983549723969616034

namespace A059827

/-- `round(∑[n+1]/acot(∑[n+1]²))` -/
def P12983549723969616034.Spec : Prop :=
  ∀ n, P12983549723969616034.a n = A059827 (n + 1)

end A059827

/-! ## A059827.P18171221130621503592

`∑[n+1]/tan(acot(∑[n+1]²))`
-/

namespace A059827.P18171221130621503592
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ) / Real.tan (SequenceMachineLib.acot (((∑ j ∈ Finset.range (n + 1), f2 j) ^ 2 : ℕ) : ℝ))

end

end A059827.P18171221130621503592

namespace A059827

/-- `∑[n+1]/tan(acot(∑[n+1]²))` -/
def P18171221130621503592.Spec : Prop :=
  ∀ n, P18171221130621503592.a n = (A059827 (n + 1) : ℝ)

end A059827

/-! ## A059827.P13271585571615588027

`a(n-1)/(n/(n+2))^3` with `a(0)=1`
-/

namespace A059827.P13271585571615588027
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) / ((n : ℚ) / (n + 2 : ℚ)) ^ 3

end

end A059827.P13271585571615588027

namespace A059827

/-- `a(n-1)/(n/(n+2))^3` -/
def P13271585571615588027.Spec : Prop :=
  ∀ n, P13271585571615588027.a n = (A059827 (n + 1) : ℚ)

end A059827

/-! ## A059827.P8187279117342027863

`∑[n+1]²*∑[a(n-1)+1]` with `a(0)=1`
-/

namespace A059827.P8187279117342027863
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f2 =>
  f2 (n - 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 * (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A059827.P8187279117342027863

namespace A059827

/-- `∑[n+1]²*∑[a(n-1)+1]` -/
def P8187279117342027863.Spec : Prop :=
  ∀ n, (P8187279117342027863.a n : ℤ) = A059827 (n + 1)

end A059827

/-! ## A059827.P2012720282824861555

`∑[n+1]²*∑[(n+1)%(n+2)]`
-/

namespace A059827.P2012720282824861555
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) % (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 * (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A059827.P2012720282824861555

namespace A059827

/-- `∑[n+1]²*∑[(n+1)%(n+2)]` -/
def P2012720282824861555.Spec : Prop :=
  ∀ n, (P2012720282824861555.a n : ℤ) = A059827 (n + 1)

end A059827

/-! ## A059827.P6424799595214298088

`C(n+2, 2)*∑[n+1]*∑[n+1]`
-/

namespace A059827.P6424799595214298088
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 2) 2 * (∑ j ∈ Finset.range (n + 1), f1 j) * (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A059827.P6424799595214298088

namespace A059827

/-- `C(n+2, 2)*∑[n+1]*∑[n+1]` -/
def P6424799595214298088.Spec : Prop :=
  ∀ n, (P6424799595214298088.a n : ℤ) = A059827 (n + 1)

end A059827

/-! ## A059827.P10533321187967766880

`∑[n+1]²²/∑[a(n-1)+1]` with `a(0)=1`
-/

namespace A059827.P10533321187967766880
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f2 =>
  f2 (n - 1) + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2) ^ 2 : ℕ) : ℚ) / ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℚ)

end

end A059827.P10533321187967766880

namespace A059827

/-- `∑[n+1]²²/∑[a(n-1)+1]` -/
def P10533321187967766880.Spec : Prop :=
  ∀ n, P10533321187967766880.a n = (A059827 (n + 1) : ℚ)

end A059827

/-!
# A059829: Maximal size of a minimal-generating-set of G where G is a finite group of order n.

The programs for A059829, there is no canonical definition to state claims against.
-/

/-! ## A059829.P10745783808469497266

`A001222(n+1)-val(A140753(n+1), A045965(n+1))`
-/

namespace A059829.P10745783808469497266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1) - (SequenceMachineLib.valuation (A140753 (n + 1)).toNat (A045965 (n + 1)).toNat : ℤ)

end

end A059829.P10745783808469497266

/-! ## A059829.P8646124086729593470

`A051903(n+1)+A014707(A290480(n+1))`
-/

namespace A059829.P8646124086729593470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (n + 1) + A014707 (A290480 (n + 1)).toNat

end

end A059829.P8646124086729593470

/-! ## A059829.P9803221831780644383

`A157754(n+1)+A014707(A290480(n+1))`
-/

namespace A059829.P9803221831780644383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157754 (n + 1) + A014707 (A290480 (n + 1)).toNat

end

end A059829.P9803221831780644383

/-! ## A059829.P1768473845983916143

`A001222(n+1)-A124761(A074761(n+1))`
-/

namespace A059829.P1768473845983916143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1) - A124761 (A074761 (n + 1)).toNat

end

end A059829.P1768473845983916143

/-! ## A059829.P5943816068469142381

`A326195(n+1)-A326206(A326197(n+1)!)`
-/

namespace A059829.P5943816068469142381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326195 (n + 1) - A326206 (Nat.factorial (A326197 (n + 1)).toNat)

end

end A059829.P5943816068469142381

/-!
# A059830: a(n) = n^6 + n^4 + n^2 + 1.

The programs for A059830, the canonical program `A059830.P6751440411654911174` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A059830 has offset 0).

The definition of A059830 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^6+n^4+n²+1` (program `A059830.P6751440411654911174`, by `A059830.P6751440411654911174.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A059830.P16897443512154241019

`(n²+1)*(n^4+1)`
-/

namespace A059830.P16897443512154241019
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n ^ 2 + 1) * (n ^ 4 + 1)

end

end A059830.P16897443512154241019

namespace A059830

/-- `(n²+1)*(n^4+1)` -/
def P16897443512154241019.Spec : Prop :=
  ∀ n, (P16897443512154241019.a n : ℤ) = A059830 n

theorem P16897443512154241019.correct : P16897443512154241019.Spec := by
  intro n
  simp only [A059830, Nat.add_sub_cancel, A059830.P16897443512154241019.a, A059830.P6751440411654911174.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A059830

/-! ## A059830.P6751440411654911174

`n^6+n^4+n²+1`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A059830

/-- `n^6+n^4+n²+1` -/
def P6751440411654911174.Spec : Prop :=
  ∀ n, (P6751440411654911174.a n : ℤ) = A059830 n

theorem P6751440411654911174.correct : P6751440411654911174.Spec := by
  intro n
  simp only [A059830]

end A059830

/-! ## A059830.P8963856157320232986

`A053717(n)/(n+1)`
-/

namespace A059830.P8963856157320232986
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053717 n : ℚ) / (n + 1 : ℚ)

end

end A059830.P8963856157320232986

namespace A059830

/-- `A053717(n)/(n+1)` -/
def P8963856157320232986.Spec : Prop :=
  ∀ n, P8963856157320232986.a n = (A059830 n : ℚ)

theorem P8963856157320232986.correct : P8963856157320232986.Spec := by
  intro n
  simp only [A059830, Nat.add_sub_cancel, A059830.P8963856157320232986.a, A059830.P6751440411654911174.a, A053717, A053717.P5334508227328252156.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A059830

/-! ## A059830.P2239778598858591509

`(A228291(n)+1)/(n+1)`
-/

namespace A059830.P2239778598858591509
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A228291 n + 1 : ℚ) / (n + 1 : ℚ)

end

end A059830.P2239778598858591509

namespace A059830

/-- `(A228291(n)+1)/(n+1)` -/
def P2239778598858591509.Spec : Prop :=
  ∀ n, P2239778598858591509.a n = (A059830 n : ℚ)

theorem P2239778598858591509.correct : P2239778598858591509.Spec := by
  intro n
  simp only [A059830, Nat.add_sub_cancel, A059830.P2239778598858591509.a, A059830.P6751440411654911174.a, A228291, A228291.P9920330225651710321.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A059830

/-! ## A059830.P9455870557048961799

`A053698(n²)`
-/

namespace A059830.P9455870557048961799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053698 (n ^ 2)

end

end A059830.P9455870557048961799

namespace A059830

/-- `A053698(n²)` -/
def P9455870557048961799.Spec : Prop :=
  ∀ n, P9455870557048961799.a n = A059830 n

theorem P9455870557048961799.correct : P9455870557048961799.Spec := by
  intro n
  simp only [A059830, Nat.add_sub_cancel, A059830.P9455870557048961799.a, A059830.P6751440411654911174.a, A053698, A053698.P17380684271159484773.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A059830

/-!
# A059831: Determinant of Wilkinson's eigenvalue test matrix of order 2n+1.

The programs for A059831, there is no canonical definition to state claims against.
-/

/-! ## A059831.P13506286409943833749

`3-or(n+3, A247983(n^n))`
-/

namespace A059831.P13506286409943833749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - Int.lor (n + 3 : ℤ) (A247983 (n ^ n))

end

end A059831.P13506286409943833749

/-!
# A059832: A ternary tribonacci triangle: form the triangle as follows: start with 3 single values: 1, 2, 3. Each succeeding row is a concatenation of the previous 3 rows.

The programs for A059832, there is no canonical definition to state claims against.
-/

/-! ## A059832.P7683601831152800896

`A059835(n)+1`
-/

namespace A059832.P7683601831152800896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059835 n + 1

end

end A059832.P7683601831152800896

/-! ## A059832.P674725358036262249

`A000027(a(A059835(n)))` with `a(0)=1, a(1)=2, a(2)=3`
-/

namespace A059832.P674725358036262249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 3] fun n a =>
  A000027 (a (A059835 n).toNat).toNat

end

end A059832.P674725358036262249

/-! ## A059832.P16268900155491062772

`A000030(a(A059835(n)))` with `a(0)=1, a(1)=2, a(2)=3`
-/

namespace A059832.P16268900155491062772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 3] fun n a =>
  A000030 (a (A059835 n).toNat).toNat

end

end A059832.P16268900155491062772

/-! ## A059832.P5542249193744277978

`A000041(a(A059835(n)))` with `a(0)=1, a(1)=2, a(2)=3`
-/

namespace A059832.P5542249193744277978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 3] fun n a =>
  A000041 (a (A059835 n).toNat).toNat

end

end A059832.P5542249193744277978

/-! ## A059832.P13369350422289644400

`A005117(a(A059835(n)))` with `a(0)=1, a(1)=2, a(2)=3`
-/

namespace A059832.P13369350422289644400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 3] fun n a =>
  A005117 (a (A059835 n).toNat).toNat

end

end A059832.P13369350422289644400

/-! ## A059832.P10111276392425473293

`A006530(a(A059835(n)))` with `a(0)=1, a(1)=2, a(2)=3`
-/

namespace A059832.P10111276392425473293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 3] fun n a =>
  A006530 (a (A059835 n).toNat).toNat

end

end A059832.P10111276392425473293

/-! ## A059832.P11709494805337670949

`A014963(a(A059835(n)))` with `a(0)=1, a(1)=2, a(2)=3`
-/

namespace A059832.P11709494805337670949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 3] fun n a =>
  A014963 (a (A059835 n).toNat).toNat

end

end A059832.P11709494805337670949

/-! ## A059832.P11340912511065345328

`A020639(a(A059835(n)))` with `a(0)=1, a(1)=2, a(2)=3`
-/

namespace A059832.P11340912511065345328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 3] fun n a =>
  A020639 (a (A059835 n).toNat).toNat

end

end A059832.P11340912511065345328

/-! ## A059832.P13073232539701618375

`A047813(a(A059835(n)))` with `a(0)=1, a(1)=2, a(2)=3`
-/

namespace A059832.P13073232539701618375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 3] fun n a =>
  A047813 (a (A059835 n).toNat).toNat

end

end A059832.P13073232539701618375

/-! ## A059832.P4329444114277357732

`a(A059835(n))-A000007(n)` with `a(0)=1, a(1)=2, a(2)=3`
-/

namespace A059832.P4329444114277357732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 3] fun n a =>
  a (A059835 n).toNat - A000007 n

end

end A059832.P4329444114277357732

/-! ## A059832.P13182297646288887055

`a(A059835(n))%A000040(n)` with `a(0)=1, a(1)=2, a(2)=3`
-/

namespace A059832.P13182297646288887055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 3] fun n a =>
  Int.tmod (a (A059835 n).toNat) (A000040 n)

end

end A059832.P13182297646288887055

/-! ## A059832.P10488113191523850913

`A000005(A020483(n)^A059835(n))`
-/

namespace A059832.P10488113191523850913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((A020483 n : ℚ) ^ (A059835 n : ℤ))).toNat

end

end A059832.P10488113191523850913

/-! ## A059832.P11672927014818074710

`A032449(a(n-1))%(Δ[A288464(n+1)]+3)` with `a(0)=1`
-/

namespace A059832.P11672927014818074710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288464 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.tmod (A032449 (a (n - 1)).toNat) (f1 (n + 1) - f1 n + 3)

end

end A059832.P11672927014818074710

/-! ## A059832.P1158528539976168156

`A000005(A051698(n)^A059835(n))`
-/

namespace A059832.P1158528539976168156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((A051698 n : ℚ) ^ (A059835 n : ℤ))).toNat

end

end A059832.P1158528539976168156

/-! ## A059832.P11233286160878740657

`A000005(A007918(n)^A059835(n))`
-/

namespace A059832.P11233286160878740657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((A007918 n : ℚ) ^ (A059835 n : ℤ))).toNat

end

end A059832.P11233286160878740657

/-!
# A059833: "Madonna's Sequence": add 1 (mod 10) to each digit of Pi.

The programs for A059833, there is no canonical definition to state claims against.
-/

/-! ## A059833.P17395608502729276446

`(A000796(n)+1)%10`
-/

namespace A059833.P17395608502729276446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000796 (n + 1) + 1) 10

end

end A059833.P17395608502729276446

/-! ## A059833.P2592442345105257573

`A123152(n+1)%10`
-/

namespace A059833.P2592442345105257573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A123152 (n + 1)) 10

end

end A059833.P2592442345105257573

/-! ## A059833.P14635800764244843579

`(9*A030644(n))%10`
-/

namespace A059833.P14635800764244843579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (9 * A030644 (n + 1)) 10

end

end A059833.P14635800764244843579

/-! ## A059833.P17037058265320744954

`(A065253(n+1)+1)%10`
-/

namespace A059833.P17037058265320744954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A065253 (n + 1) + 1) 10

end

end A059833.P17037058265320744954

/-! ## A059833.P5764370784619703407

`A007954(A000796(n)+gcd(n, n+1))`
-/

namespace A059833.P5764370784619703407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007954 (A000796 (n + 1) + (Nat.gcd n (n + 1) : ℤ)).toNat

end

end A059833.P5764370784619703407

/-! ## A059833.P10537478452604106250

`A010879(A123152(n+1)+n-A010879(n))`
-/

namespace A059833.P10537478452604106250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 (A123152 (n + 1) + ((n : ℤ) - A010879 n)).toNat

end

end A059833.P10537478452604106250

/-! ## A059833.P8889118835537417381

`A010879(A065253(n+1)+1)`
-/

namespace A059833.P8889118835537417381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 (A065253 (n + 1) + 1).toNat

end

end A059833.P8889118835537417381

/-! ## A059833.P2236397155690787863

`A010889(A065253(n+1)+1)-1`
-/

namespace A059833.P2236397155690787863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010889 (A065253 (n + 1) + 1).toNat - 1

end

end A059833.P2236397155690787863

/-! ## A059833.P14729924198625959063

`(A001355(2*n+1)+1)%10`
-/

namespace A059833.P14729924198625959063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001355 (2 * n + 1) + 1) 10

end

end A059833.P14729924198625959063

/-! ## A059833.P18056593347161115109

`(Δ[A059582(n)]+1)%10`
-/

namespace A059833.P18056593347161115109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059582 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n + 1) 10

end

end A059833.P18056593347161115109

/-! ## A059833.P10435009835546433758

`A048379(Δ[A059582(n)])`
-/

namespace A059833.P10435009835546433758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059582 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048379 (f1 (n + 1) - f1 n).toNat

end

end A059833.P10435009835546433758

/-! ## A059833.P9378681463023791333

`A004426(Δ[A059582(n)]+1)`
-/

namespace A059833.P9378681463023791333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059582 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004426 (f1 (n + 1) - f1 n + 1).toNat

end

end A059833.P9378681463023791333

/-! ## A059833.P7484192168722399080

`A007954(Δ[A059582(n)]+1)`
-/

namespace A059833.P7484192168722399080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059582 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007954 (f1 (n + 1) - f1 n + 1).toNat

end

end A059833.P7484192168722399080

/-! ## A059833.P12674887391430080231

`A010879(Δ[A059582(n)]+1)`
-/

namespace A059833.P12674887391430080231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059582 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 (f1 (n + 1) - f1 n + 1).toNat

end

end A059833.P12674887391430080231

/-! ## A059833.P9013355896869923111

`A054054(Δ[A059582(n)]+1)`
-/

namespace A059833.P9013355896869923111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059582 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054054 (f1 (n + 1) - f1 n + 1).toNat

end

end A059833.P9013355896869923111

/-! ## A059833.P5407579463286528854

`A062567(Δ[A059582(n)]+1)`
-/

namespace A059833.P5407579463286528854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059582 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062567 (f1 (n + 1) - f1 n + 1).toNat

end

end A059833.P5407579463286528854

/-! ## A059833.P9943903182644192474

`A007954(A005496(Δ[A059582(n)]))`
-/

namespace A059833.P9943903182644192474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059582 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007954 (A005496 (f1 (n + 1) - f1 n).toNat).toNat

end

end A059833.P9943903182644192474

/-! ## A059833.P11819553292647513621

`A033307(A007095(Δ[A059582(n)]))`
-/

namespace A059833.P11819553292647513621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059582 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033307 (A007095 (f1 (n + 1) - f1 n).toNat).toNat

end

end A059833.P11819553292647513621

/-! ## A059833.P5948560632302758308

`A033307(A024655(Δ[A059582(n)]))`
-/

namespace A059833.P5948560632302758308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059582 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033307 (A024655 (f1 (n + 1) - f1 n).toNat).toNat

end

end A059833.P5948560632302758308

/-!
# A059834: Sum of squares of entries of Wilkinson's eigenvalue test matrix of order 2n+1.

The programs for A059834, the canonical program `A059834.P15679951872765847363` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A059834 has offset 0).

The definition of A059834 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A059834.P17677161170115761586

`(2*n^3+3*n²+13*n)/3`
-/

namespace A059834.P17677161170115761586
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * n ^ 3 + 3 * n ^ 2 + 13 * n : ℚ) / 3

end

end A059834.P17677161170115761586

namespace A059834

/-- `(2*n^3+3*n²+13*n)/3` -/
def P17677161170115761586.Spec : Prop :=
  ∀ n, P17677161170115761586.a n = (A059834 n : ℚ)

theorem P17677161170115761586.correct : P17677161170115761586.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A059834, Nat.add_sub_cancel, A059834.P17677161170115761586.a, A059834.P15679951872765847363.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A059834, Nat.add_sub_cancel, A059834.P17677161170115761586.a, A059834.P15679951872765847363.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A059834

/-! ## A059834.P15679951872765847363

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=0, a(1)=6, a(2)=18, a(3)=40`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A059834

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P15679951872765847363.Spec : Prop :=
  ∀ n, P15679951872765847363.a n = A059834 n

theorem P15679951872765847363.correct : P15679951872765847363.Spec := by
  intro n
  simp only [A059834]

end A059834

/-! ## A059834.P9819325886378505654

`2*A145068(n+1)`
-/

namespace A059834.P9819325886378505654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A145068 (n + 1)

end

end A059834.P9819325886378505654

namespace A059834

/-- `2*A145068(n+1)` -/
def P9819325886378505654.Spec : Prop :=
  ∀ n, P9819325886378505654.a n = A059834 n

end A059834

/-! ## A059834.P16260736762186055958

`∑[2*or(2, n²)]-4`
-/

namespace A059834.P16260736762186055958
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.lor 2 (n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 4

end

end A059834.P16260736762186055958

namespace A059834

/-- `∑[2*or(2, n²)]-4` -/
def P16260736762186055958.Spec : Prop :=
  ∀ n, P16260736762186055958.a n = A059834 n

end A059834

/-! ## A059834.P4243584293771236924

`∑[2*xor(2, n²)]-4`
-/

namespace A059834.P4243584293771236924
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.xor 2 (n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 4

end

end A059834.P4243584293771236924

namespace A059834

/-- `∑[2*xor(2, n²)]-4` -/
def P4243584293771236924.Spec : Prop :=
  ∀ n, P4243584293771236924.a n = A059834 n

end A059834

/-! ## A059834.P893821137626009788

`∑[or(4, n*2*n)]-4`
-/

namespace A059834.P893821137626009788
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 4 (n * (2 * n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 4

end

end A059834.P893821137626009788

namespace A059834

/-- `∑[or(4, n*2*n)]-4` -/
def P893821137626009788.Spec : Prop :=
  ∀ n, P893821137626009788.a n = A059834 n

end A059834

/-! ## A059834.P10059460148026831560

`∑[6*n]+4*C(n, 3)`
-/

namespace A059834.P10059460148026831560
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 4 * Nat.choose n 3

end

end A059834.P10059460148026831560

namespace A059834

/-- `∑[6*n]+4*C(n, 3)` -/
def P10059460148026831560.Spec : Prop :=
  ∀ n, (P10059460148026831560.a n : ℤ) = A059834 n

end A059834

/-! ## A059834.P13189485693139813356

`∑[xor(4, n*2*n)]-4`
-/

namespace A059834.P13189485693139813356
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 4 (n * (2 * n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 4

end

end A059834.P13189485693139813356

namespace A059834

/-- `∑[xor(4, n*2*n)]-4` -/
def P13189485693139813356.Spec : Prop :=
  ∀ n, P13189485693139813356.a n = A059834 n

end A059834

/-! ## A059834.P14496036186289033425

`∑[∑[a(n-1)+4]]` with `a(0)=0, a(1)=6, a(2)=6`
-/

namespace A059834.P14496036186289033425
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 6, 6] fun n f2 =>
  f2 (n - 1) + 4

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A059834.P14496036186289033425

namespace A059834

/-- `∑[∑[a(n-1)+4]]` -/
def P14496036186289033425.Spec : Prop :=
  ∀ n, (P14496036186289033425.a n : ℤ) = A059834 n

end A059834

/-! ## A059834.P11847144382004639961

`lcm(2, 2*(∑[n²]+2*n))`
-/

namespace A059834.P11847144382004639961
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 (2 * (∑ j ∈ Finset.range (n + 1), f1 j + 2 * n))

end

end A059834.P11847144382004639961

namespace A059834

/-- `lcm(2, 2*(∑[n²]+2*n))` -/
def P11847144382004639961.Spec : Prop :=
  ∀ n, (P11847144382004639961.a n : ℤ) = A059834 n

end A059834

/-! ## A059834.P17465918541143107865

`a(n-1)+2*(n²+2)` with `a(0)=0`
-/

namespace A059834.P17465918541143107865
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + 2 * (n ^ 2 + 2)

end

end A059834.P17465918541143107865

namespace A059834

/-- `a(n-1)+2*(n²+2)` -/
def P17465918541143107865.Spec : Prop :=
  ∀ n, (P17465918541143107865.a n : ℤ) = A059834 n

end A059834

/-! ## A059834.P14675699303760237540

`∑[∑[ogf((4-6x+6x^2)/(1-2x+x^2))]]-4`
-/

namespace A059834.P14675699303760237540
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, -6, 6] [1, -2, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 4

end

end A059834.P14675699303760237540

namespace A059834

/-- `∑[∑[ogf((4-6x+6x^2)/(1-2x+x^2))]]-4` -/
def P14675699303760237540.Spec : Prop :=
  ∀ n, P14675699303760237540.a n = A059834 n

end A059834

/-! ## A059834.P6211033514115945408

`2*n*n+a(n-1)+4` with `a(0)=0`
-/

namespace A059834.P6211033514115945408
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  2 * (n * n) + (a (n - 1) + 4)

end

end A059834.P6211033514115945408

namespace A059834

/-- `2*n*n+a(n-1)+4` -/
def P6211033514115945408.Spec : Prop :=
  ∀ n, (P6211033514115945408.a n : ℤ) = A059834 n

end A059834

/-! ## A059834.P869434156426693807

`a(n-1)+n²+n²+4` with `a(0)=0`
-/

namespace A059834.P869434156426693807
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + n ^ 2 + (n ^ 2 + 4)

end

end A059834.P869434156426693807

namespace A059834

/-- `a(n-1)+n²+n²+4` -/
def P869434156426693807.Spec : Prop :=
  ∀ n, (P869434156426693807.a n : ℤ) = A059834 n

end A059834

/-! ## A059834.P12071467947764097699

`∑[A255843(n)]-4`
-/

namespace A059834.P12071467947764097699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255843 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 4

end

end A059834.P12071467947764097699

namespace A059834

/-- `∑[A255843(n)]-4` -/
def P12071467947764097699.Spec : Prop :=
  ∀ n, P12071467947764097699.a n = A059834 n

end A059834

/-! ## A059834.P9582959043129157494

`A006331(n)+4*n`
-/

namespace A059834.P9582959043129157494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006331 n + (4 * n : ℤ)

end

end A059834.P9582959043129157494

namespace A059834

/-- `A006331(n)+4*n` -/
def P9582959043129157494.Spec : Prop :=
  ∀ n, P9582959043129157494.a n = A059834 n

end A059834

/-! ## A059834.P12116764339455551809

`2*(A049480(n+1)-1)`
-/

namespace A059834.P12116764339455551809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A049480 (n + 1) - 1)

end

end A059834.P12116764339455551809

namespace A059834

/-- `2*(A049480(n+1)-1)` -/
def P12116764339455551809.Spec : Prop :=
  ∀ n, P12116764339455551809.a n = A059834 n

end A059834

/-! ## A059834.P5874109347217813620

`n-1+A005894(n)+n`
-/

namespace A059834.P5874109347217813620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1 + (A005894 n + (n : ℤ))

end

end A059834.P5874109347217813620

namespace A059834

/-- `n-1+A005894(n)+n` -/
def P5874109347217813620.Spec : Prop :=
  ∀ n, P5874109347217813620.a n = A059834 n

end A059834

/-! ## A059834.P13890488241348937984

`∑[A001844(n)]-(1-n)²`
-/

namespace A059834.P13890488241348937984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001844 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (1 - (n : ℤ)) ^ 2

end

end A059834.P13890488241348937984

namespace A059834

/-- `∑[A001844(n)]-(1-n)²` -/
def P13890488241348937984.Spec : Prop :=
  ∀ n, P13890488241348937984.a n = A059834 n

end A059834

/-! ## A059834.P3885270939945843194

`A047667(n+1)-(n²+3)`
-/

namespace A059834.P3885270939945843194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047667 (n + 1) - (n ^ 2 + 3 : ℤ)

end

end A059834.P3885270939945843194

namespace A059834

/-- `A047667(n+1)-(n²+3)` -/
def P3885270939945843194.Spec : Prop :=
  ∀ n, P3885270939945843194.a n = A059834 n

end A059834

/-!
# A059835: Form triangle as follows: start with three single digits: 0, 1, 2. Each succeeding row is a concatenation of the previous three rows.

The programs for A059835, there is no canonical definition to state claims against.
-/

/-! ## A059835.P13169151222619055095

`A059832(n)-1`
-/

namespace A059835.P13169151222619055095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059832 n - 1

end

end A059835.P13169151222619055095

/-! ## A059835.P11956758571005135602

`A001513(n)%A059832(n)`
-/

namespace A059835.P11956758571005135602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001513 n) (A059832 n)

end

end A059835.P11956758571005135602

/-! ## A059835.P17886266826832750279

`A001538(n)%A059832(n)`
-/

namespace A059835.P17886266826832750279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001538 n) (A059832 n)

end

end A059835.P17886266826832750279

/-! ## A059835.P1929573019320183538

`A002148(n)%A059832(n)`
-/

namespace A059835.P1929573019320183538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002148 n) (A059832 n)

end

end A059835.P1929573019320183538

/-! ## A059835.P14304319227866002152

`A004538(n)%A059832(n)`
-/

namespace A059835.P14304319227866002152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004538 n) (A059832 n)

end

end A059835.P14304319227866002152

/-! ## A059835.P15161796575958038869

`A016969(n)%A059832(n)`
-/

namespace A059835.P15161796575958038869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016969 n) (A059832 n)

end

end A059835.P15161796575958038869

/-! ## A059835.P5465802790106552607

`A016971(n)%A059832(n)`
-/

namespace A059835.P5465802790106552607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016971 n) (A059832 n)

end

end A059835.P5465802790106552607

/-! ## A059835.P9428194637729629385

`A016973(n)%A059832(n)`
-/

namespace A059835.P9428194637729629385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016973 n) (A059832 n)

end

end A059835.P9428194637729629385

/-! ## A059835.P5744589675664108958

`A016975(n)%A059832(n)`
-/

namespace A059835.P5744589675664108958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016975 n) (A059832 n)

end

end A059835.P5744589675664108958

/-! ## A059835.P9291777791135943515

`A017581(n)%A059832(n)`
-/

namespace A059835.P9291777791135943515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A017581 n) (A059832 n)

end

end A059835.P9291777791135943515

/-! ## A059835.P13949854101524640742

`A017583(n)%A059832(n)`
-/

namespace A059835.P13949854101524640742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A017583 n) (A059832 n)

end

end A059835.P13949854101524640742

/-! ## A059835.P5212757425613543138

`A017585(n)%A059832(n)`
-/

namespace A059835.P5212757425613543138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A017585 n) (A059832 n)

end

end A059835.P5212757425613543138

/-! ## A059835.P16158861494118130692

`A017653(n)%A059832(n)`
-/

namespace A059835.P16158861494118130692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A017653 n) (A059832 n)

end

end A059835.P16158861494118130692

/-! ## A059835.P3509552604558109997

`A017655(n)%A059832(n)`
-/

namespace A059835.P3509552604558109997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A017655 n) (A059832 n)

end

end A059835.P3509552604558109997

/-! ## A059835.P17859349897041649269

`A017657(n)%A059832(n)`
-/

namespace A059835.P17859349897041649269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A017657 n) (A059832 n)

end

end A059835.P17859349897041649269

/-! ## A059835.P6023408132126415748

`A031929(n)%A059832(n)`
-/

namespace A059835.P6023408132126415748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A031929 n) (A059832 n)

end

end A059835.P6023408132126415748

/-! ## A059835.P17235569713624515639

`A031935(n)%A059832(n)`
-/

namespace A059835.P17235569713624515639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A031935 n) (A059832 n)

end

end A059835.P17235569713624515639

/-! ## A059835.P10795629353602654632

`A038867(n)%A059832(n)`
-/

namespace A059835.P10795629353602654632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A038867 n) (A059832 n)

end

end A059835.P10795629353602654632

/-! ## A059835.P1118791698888408294

`A288477(n)%A059832(n)`
-/

namespace A059835.P1118791698888408294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A288477 n) (A059832 n)

end

end A059835.P1118791698888408294

/-!
# A059836: Triangle T(s,t), s >= 1, 1 <= t <= s (see formula line).

The programs for A059836, there is no canonical definition to state claims against.
-/

/-! ## A059836.P14150047584985461239

`A112232(A128570(n))`
-/

namespace A059836.P14150047584985461239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112232 (A128570 n).toNat

end

end A059836.P14150047584985461239

/-! ## A059836.P472560235460322199

`A265399(A100075(n))`
-/

namespace A059836.P472560235460322199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265399 (A100075 n).toNat

end

end A059836.P472560235460322199

/-! ## A059836.P8236653348912039456

`A112232(A395701(n))`
-/

namespace A059836.P8236653348912039456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112232 (A395701 n).toNat

end

end A059836.P8236653348912039456

/-! ## A059836.P8343024237918395533

`A276611(A128570(n)²)`
-/

namespace A059836.P8343024237918395533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276611 (A128570 n ^ 2).toNat

end

end A059836.P8343024237918395533

/-! ## A059836.P13308654130120495270

`A123580(A128570(n)*A316089(n+1))`
-/

namespace A059836.P13308654130120495270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123580 (A128570 n * A316089 (n + 1)).toNat

end

end A059836.P13308654130120495270

/-!
# A059837: Diagonal T(s,s) of triangle A059836.

The programs for A059837, there is no canonical definition to state claims against.
-/

/-! ## A059837.P11391910688093373355

`n!*C(n, floor(n/2))`
-/

namespace A059837.P11391910688093373355
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n * Nat.choose n ⌊(n : ℚ) / 2⌋.toNat

end

end A059837.P11391910688093373355

/-! ## A059837.P7966893837888587613

`a(n-1)/∑[n%2]*n²` with `a(0)=1`
-/

namespace A059837.P7966893837888587613
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) * (n ^ 2 : ℚ)

end

end A059837.P7966893837888587613

/-! ## A059837.P16295910042144856840

`a(n-1)/floor((n+1)/2)*n²` with `a(0)=1`
-/

namespace A059837.P16295910042144856840
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) / (⌊(n + 1 : ℚ) / 2⌋ : ℚ) * (n ^ 2 : ℚ)

end

end A059837.P16295910042144856840

/-! ## A059837.P4735552854569441460

`n*n*a(n-1)/floor(∑[n]/n)` with `a(0)=1`
-/

namespace A059837.P4735552854569441460
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℚ) * ((n : ℚ) * (a (n - 1) / (⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / (n : ℚ)⌋ : ℚ)))

end

end A059837.P4735552854569441460

/-! ## A059837.P8830830048750996442

`n*a(n-1)*n/floor((n+1)/2)` with `a(0)=1`
-/

namespace A059837.P8830830048750996442
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℚ) * a (n - 1) * ((n : ℚ) / (⌊(n + 1 : ℚ) / 2⌋ : ℚ))

end

end A059837.P8830830048750996442

/-! ## A059837.P2692398177843223566

`n*a(n-1)/(1-floor(n/2)/n)` with `a(0)=1`
-/

namespace A059837.P2692398177843223566
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℚ) * (a (n - 1) / (1 - (⌊(n : ℚ) / 2⌋ : ℚ) / (n : ℚ)))

end

end A059837.P2692398177843223566

/-! ## A059837.P7320651154006768182

`A059836(∑[n+1])`
-/

namespace A059837.P7320651154006768182
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059836 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A059837.P7320651154006768182

/-! ## A059837.P5222201738738917094

`A196347(A194274(n))`
-/

namespace A059837.P5222201738738917094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196347 (A194274 n).toNat

end

end A059837.P5222201738738917094

/-! ## A059837.P4592932164602780033

`A196347(A007590(n+1))`
-/

namespace A059837.P4592932164602780033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196347 (A007590 (n + 1)).toNat

end

end A059837.P4592932164602780033

/-! ## A059837.P3751987327301571637

`A196347(A080476(n+1))`
-/

namespace A059837.P3751987327301571637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196347 (A080476 (n + 1)).toNat

end

end A059837.P3751987327301571637

/-!
# A059838: Number of permutations in the symmetric group S_n that have even order.

The programs for A059838, the canonical program `A059838.P1493837080324087388` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A059838 has offset 0).

The definition of A059838 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A059838.P1493837080324087388

`n!-((n-1)!-a(n-1))*(n+n%2-1)` with `a(0)=0`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A059838

/-- `n!-((n-1)!-a(n-1))*(n+n%2-1)` -/
def P1493837080324087388.Spec : Prop :=
  ∀ n, P1493837080324087388.a n = A059838 n

theorem P1493837080324087388.correct : P1493837080324087388.Spec := by
  intro n
  simp only [A059838]

end A059838

/-! ## A059838.P16976821952340915959

`n!-A000246(n)`
-/

namespace A059838.P16976821952340915959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) - A000246 n

end

end A059838.P16976821952340915959

namespace A059838

/-- `n!-A000246(n)` -/
def P16976821952340915959.Spec : Prop :=
  ∀ n, P16976821952340915959.a n = A059838 n

end A059838

/-! ## A059838.P5392371616772429642

`∏[or(1, n-1)]+n!`
-/

namespace A059838.P5392371616772429642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ((n : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j + (Nat.factorial n : ℤ)

end

end A059838.P5392371616772429642

namespace A059838

/-- `∏[or(1, n-1)]+n!` -/
def P5392371616772429642.Spec : Prop :=
  ∀ n, P5392371616772429642.a n = A059838 n

end A059838

/-! ## A059838.P10155779897261601147

`n!-∏[abs(or(1, -n))]`
-/

namespace A059838.P10155779897261601147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.lor 1 (-(n : ℤ))|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) - ∏ j ∈ Finset.range (n + 1), f1 j

end

end A059838.P10155779897261601147

namespace A059838

/-- `n!-∏[abs(or(1, -n))]` -/
def P10155779897261601147.Spec : Prop :=
  ∀ n, P10155779897261601147.a n = A059838 n

end A059838

/-! ## A059838.P12528906270160255547

`∏[n+1-gcd(2, n)]+n!`
-/

namespace A059838.P12528906270160255547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - (Nat.gcd 2 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j + (Nat.factorial n : ℤ)

end

end A059838.P12528906270160255547

namespace A059838

/-- `∏[n+1-gcd(2, n)]+n!` -/
def P12528906270160255547.Spec : Prop :=
  ∀ n, P12528906270160255547.a n = A059838 n

end A059838

/-! ## A059838.P15105206856068331178

`n!-∏[abs(char[2*n]-n)]`
-/

namespace A059838.P15105206856068331178
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ) - (n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) - ∏ j ∈ Finset.range (n + 1), f1 j

end

end A059838.P15105206856068331178

namespace A059838

/-- `n!-∏[abs(char[2*n]-n)]` -/
def P15105206856068331178.Spec : Prop :=
  ∀ n, P15105206856068331178.a n = A059838 n

end A059838

/-! ## A059838.P8783450220615095546

`A000142(n)-A000246(n)`
-/

namespace A059838.P8783450220615095546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n - A000246 n

end

end A059838.P8783450220615095546

namespace A059838

/-- `A000142(n)-A000246(n)` -/
def P8783450220615095546.Spec : Prop :=
  ∀ n, P8783450220615095546.a n = A059838 n

end A059838

/-! ## A059838.P17598076467440480795

`abs(A133942(n))-A000246(n)`
-/

namespace A059838.P17598076467440480795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A133942 n| - A000246 n

end

end A059838.P17598076467440480795

namespace A059838

/-- `abs(A133942(n))-A000246(n)` -/
def P17598076467440480795.Spec : Prop :=
  ∀ n, P17598076467440480795.a n = A059838 n

end A059838

/-! ## A059838.P13711470730039693729

`A000142(n)-A060523(∑[n])`
-/

namespace A059838.P13711470730039693729
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n - A060523 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A059838.P13711470730039693729

namespace A059838

/-- `A000142(n)-A060523(∑[n])` -/
def P13711470730039693729.Spec : Prop :=
  ∀ n, P13711470730039693729.a n = A059838 n

end A059838

/-! ## A059838.P9973220074924983243

`∏[A065033(2*n)]-A000246(n)`
-/

namespace A059838.P9973220074924983243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j - A000246 n

end

end A059838.P9973220074924983243

namespace A059838

/-- `∏[A065033(2*n)]-A000246(n)` -/
def P9973220074924983243.Spec : Prop :=
  ∀ n, P9973220074924983243.a n = A059838 n

end A059838

/-!
# A059839: a(n) = n^8 + n^6 + n^4 + n^2 + 1.

The programs for A059839, the canonical program `A059839.P16029782246819662926` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A059839 has offset 0).

The definition of A059839 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^8+n^6+n^4+n²+1` (program `A059839.P16029782246819662926`, by `A059839.P16029782246819662926.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A059839.P16029782246819662926

`n^8+n^6+n^4+n²+1`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A059839

/-- `n^8+n^6+n^4+n²+1` -/
def P16029782246819662926.Spec : Prop :=
  ∀ n, (P16029782246819662926.a n : ℤ) = A059839 n

theorem P16029782246819662926.correct : P16029782246819662926.Spec := by
  intro n
  simp only [A059839]

end A059839

/-! ## A059839.P13502959511635178885

`A060884(n)*A053699(n)`
-/

namespace A059839.P13502959511635178885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060884 n * A053699 n

end

end A059839.P13502959511635178885

namespace A059839

/-- `A060884(n)*A053699(n)` -/
def P13502959511635178885.Spec : Prop :=
  ∀ n, P13502959511635178885.a n = A059839 n

theorem P13502959511635178885.correct : P13502959511635178885.Spec := by
  intro n
  simp only [A059839, Nat.add_sub_cancel, A059839.P13502959511635178885.a, A059839.P16029782246819662926.a, A053699, A053699.P12401549741545410249.a, A060884, A060884.P17835107360669808419.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A059839

/-! ## A059839.P16890387542412230626

`A103623(n)/(n+1)`
-/

namespace A059839.P16890387542412230626
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A103623 n : ℚ) / (n + 1 : ℚ)

end

end A059839.P16890387542412230626

namespace A059839

/-- `A103623(n)/(n+1)` -/
def P16890387542412230626.Spec : Prop :=
  ∀ n, P16890387542412230626.a n = (A059839 n : ℚ)

theorem P16890387542412230626.correct : P16890387542412230626.Spec := by
  intro n
  simp only [A059839, Nat.add_sub_cancel, A059839.P16890387542412230626.a, A059839.P16029782246819662926.a, A103623, A103623.P4185738790634728714.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A059839

/-! ## A059839.P11469815401136783349

`(A228293(n)+1)/(n+1)`
-/

namespace A059839.P11469815401136783349
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A228293 n + 1 : ℚ) / (n + 1 : ℚ)

end

end A059839.P11469815401136783349

namespace A059839

/-- `(A228293(n)+1)/(n+1)` -/
def P11469815401136783349.Spec : Prop :=
  ∀ n, P11469815401136783349.a n = (A059839 n : ℚ)

theorem P11469815401136783349.correct : P11469815401136783349.Spec := by
  intro n
  simp only [A059839, Nat.add_sub_cancel, A059839.P11469815401136783349.a, A059839.P16029782246819662926.a, A228293, A228293.P3194510713492956610.a, A102909, A102909.P16540505337403562300.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A059839

/-! ## A059839.P7996866096313842318

`(A060885(n)-n^10)/(n+1)`
-/

namespace A059839.P7996866096313842318
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060885 n - (n ^ 10 : ℤ) : ℚ) / (n + 1 : ℚ)

end

end A059839.P7996866096313842318

namespace A059839

/-- `(A060885(n)-n^10)/(n+1)` -/
def P7996866096313842318.Spec : Prop :=
  ∀ n, P7996866096313842318.a n = (A059839 n : ℚ)

theorem P7996866096313842318.correct : P7996866096313842318.Spec := by
  intro n
  simp only [A059839, Nat.add_sub_cancel, A059839.P7996866096313842318.a, A059839.P16029782246819662926.a, A060885, A060885.P6901912794972420859.a, A228293, A228293.P3194510713492956610.a, A102909, A102909.P16540505337403562300.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A059839

/-! ## A059839.P10721427106956006865

`A053699(n²)`
-/

namespace A059839.P10721427106956006865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053699 (n ^ 2)

end

end A059839.P10721427106956006865

namespace A059839

/-- `A053699(n²)` -/
def P10721427106956006865.Spec : Prop :=
  ∀ n, P10721427106956006865.a n = A059839 n

theorem P10721427106956006865.correct : P10721427106956006865.Spec := by
  intro n
  simp only [A059839, Nat.add_sub_cancel, A059839.P10721427106956006865.a, A059839.P16029782246819662926.a, A053699, A053699.P12401549741545410249.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A059839

/-! ## A059839.P15776303262090053730

`xor(1, A027445(n²))`
-/

namespace A059839.P15776303262090053730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A027445 (n ^ 2))

end

end A059839.P15776303262090053730

namespace A059839

/-- `xor(1, A027445(n²))` -/
def P15776303262090053730.Spec : Prop :=
  ∀ n, P15776303262090053730.a n = A059839 n

end A059839

/-! ## A059839.P11006225829941055548

`or(1, A027445(A000290(n)))`
-/

namespace A059839.P11006225829941055548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A027445 (A000290 n).toNat)

end

end A059839.P11006225829941055548

namespace A059839

/-- `or(1, A027445(A000290(n)))` -/
def P11006225829941055548.Spec : Prop :=
  ∀ n, P11006225829941055548.a n = A059839 n

end A059839

/-! ## A059839.P2023751098767669878

`gcd(A103623(n), A152031(n²))`
-/

namespace A059839.P2023751098767669878
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A103623 n) (A152031 (n ^ 2))

end

end A059839.P2023751098767669878

namespace A059839

/-- `gcd(A103623(n), A152031(n²))` -/
def P2023751098767669878.Spec : Prop :=
  ∀ n, (P2023751098767669878.a n : ℤ) = A059839 n

end A059839

/-!
# A059840: a(n) = F(n)*F(n-1) if n odd otherwise F(n)*F(n-1)-1, where F = Fibonacci numbers A000045.

The programs for A059840, the canonical program `A059840.P3631537578918260503` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A059840 has offset 1).

The definition of A059840 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 241 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A059840.P6850656294531445308

`ogf((2x^2-x^3)/(1-3x+3x^3-x^4))`
-/

namespace A059840.P6850656294531445308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 2, -1] [1, -3, 0, 3, -1] n

end

end A059840.P6850656294531445308

namespace A059840

/-- `ogf((2x^2-x^3)/(1-3x+3x^3-x^4))` -/
def P6850656294531445308.Spec : Prop :=
  ∀ n, P6850656294531445308.a n = A059840 (n + 1)

end A059840

/-! ## A059840.P3631537578918260503

`A001654(n)-n%2`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A059840

/-- `A001654(n)-n%2` -/
def P3631537578918260503.Spec : Prop :=
  ∀ n, P3631537578918260503.a n = A059840 (n + 1)

theorem P3631537578918260503.correct : P3631537578918260503.Spec := by
  intro n
  simp only [A059840, Nat.add_sub_cancel]

end A059840

/-! ## A059840.P10567463538155503114

`∑[A236165(2*n)]-1`
-/

namespace A059840.P10567463538155503114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236165 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A059840.P10567463538155503114

namespace A059840

/-- `∑[A236165(2*n)]-1` -/
def P10567463538155503114.Spec : Prop :=
  ∀ n, P10567463538155503114.a n = A059840 (n + 1)

end A059840

/-! ## A059840.P15092631470020458961

`A074677(2*n)-and(1, n)`
-/

namespace A059840.P15092631470020458961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074677 (2 * n) - (Nat.land 1 n : ℤ)

end

end A059840.P15092631470020458961

namespace A059840

/-- `A074677(2*n)-and(1, n)` -/
def P15092631470020458961.Spec : Prop :=
  ∀ n, P15092631470020458961.a n = A059840 (n + 1)

end A059840

/-! ## A059840.P16011754919216174329

`∑[A000045(n)²]-and(1, n)`
-/

namespace A059840.P16011754919216174329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (Nat.land 1 n : ℤ)

end

end A059840.P16011754919216174329

namespace A059840

/-- `∑[A000045(n)²]-and(1, n)` -/
def P16011754919216174329.Spec : Prop :=
  ∀ n, P16011754919216174329.a n = A059840 (n + 1)

end A059840

/-! ## A059840.P12864879800847613939

`floor(∑[(A000045(n+1)/ϕ)²])`
-/

namespace A059840.P12864879800847613939
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((A000045 (n + 1) : ℝ) / Real.goldenRatio) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A059840.P12864879800847613939

namespace A059840

/-- `floor(∑[(A000045(n+1)/ϕ)²])` -/
def P12864879800847613939.Spec : Prop :=
  ∀ n, P12864879800847613939.a n = A059840 (n + 1)

end A059840

/-! ## A059840.P5035269769483251983

`A001906(n)-(a(n-1)+1)` with `a(0)=0`
-/

namespace A059840.P5035269769483251983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A001906 n - (a (n - 1) + 1)

end

end A059840.P5035269769483251983

namespace A059840

/-- `A001906(n)-(a(n-1)+1)` -/
def P5035269769483251983.Spec : Prop :=
  ∀ n, P5035269769483251983.a n = A059840 (n + 1)

end A059840

/-! ## A059840.P16468921015852552044

`A000071(2*n)-a(n-1)` with `a(0)=0`
-/

namespace A059840.P16468921015852552044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A000071 (2 * n) - a (n - 1)

end

end A059840.P16468921015852552044

namespace A059840

/-- `A000071(2*n)-a(n-1)` -/
def P16468921015852552044.Spec : Prop :=
  ∀ n, P16468921015852552044.a n = A059840 (n + 1)

end A059840

/-! ## A059840.P2448012645184546434

`A007492(2*n)-a(n-1)` with `a(0)=0`
-/

namespace A059840.P2448012645184546434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A007492 (2 * n) - a (n - 1)

end

end A059840.P2448012645184546434

namespace A059840

/-- `A007492(2*n)-a(n-1)` -/
def P2448012645184546434.Spec : Prop :=
  ∀ n, P2448012645184546434.a n = A059840 (n + 1)

end A059840

/-! ## A059840.P11704657839392278782

`floor(ϕ*(Δ[A000045(n+2)]/ϕ)²)`
-/

namespace A059840.P11704657839392278782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * ((f1 (n + 1) - f1 n : ℝ) / Real.goldenRatio) ^ 2⌋

end

end A059840.P11704657839392278782

namespace A059840

/-- `floor(ϕ*(Δ[A000045(n+2)]/ϕ)²)` -/
def P11704657839392278782.Spec : Prop :=
  ∀ n, P11704657839392278782.a n = A059840 (n + 1)

end A059840

/-! ## A059840.P2507389705716275347

`A000045(2*n)-(a(n-1)+1)` with `a(0)=0`
-/

namespace A059840.P2507389705716275347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A000045 (2 * n) - (a (n - 1) + 1)

end

end A059840.P2507389705716275347

namespace A059840

/-- `A000045(2*n)-(a(n-1)+1)` -/
def P2507389705716275347.Spec : Prop :=
  ∀ n, P2507389705716275347.a n = A059840 (n + 1)

end A059840

/-! ## A059840.P5499994353450949997

`A000045(n-1+n)+a(n-2)` with `a(0)=0, a(1)=0`
-/

namespace A059840.P5499994353450949997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  A000045 ((n : ℤ) - 1 + (n : ℤ)).toNat + a (n - 2)

end

end A059840.P5499994353450949997

namespace A059840

/-- `A000045(n-1+n)+a(n-2)` -/
def P5499994353450949997.Spec : Prop :=
  ∀ n, P5499994353450949997.a n = A059840 (n + 1)

end A059840

/-! ## A059840.P4748256413092178088

`A000045(lcm(2, 2*n))-1-a(n-1)` with `a(0)=0`
-/

namespace A059840.P4748256413092178088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A000045 (Nat.lcm 2 (2 * n)) - 1 - a (n - 1)

end

end A059840.P4748256413092178088

namespace A059840

/-- `A000045(lcm(2, 2*n))-1-a(n-1)` -/
def P4748256413092178088.Spec : Prop :=
  ∀ n, P4748256413092178088.a n = A059840 (n + 1)

end A059840

/-! ## A059840.P3494248379657544418

`∑[A000045(2*n-1)-a(n-1)]` with `a(0)=0, a(1)=0`
-/

namespace A059840.P3494248379657544418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n f1 =>
  A000045 (2 * n - 1) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A059840.P3494248379657544418

namespace A059840

/-- `∑[A000045(2*n-1)-a(n-1)]` -/
def P3494248379657544418.Spec : Prop :=
  ∀ n, P3494248379657544418.a n = A059840 (n + 1)

end A059840

/-! ## A059840.P10782121494993220282

`A001654(n)-A000035(n)`
-/

namespace A059840.P10782121494993220282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001654 n - A000035 n

end

end A059840.P10782121494993220282

namespace A059840

/-- `A001654(n)-A000035(n)` -/
def P10782121494993220282.Spec : Prop :=
  ∀ n, P10782121494993220282.a n = A059840 (n + 1)

end A059840

/-! ## A059840.P5147071338233988098

`∑[A007598(n)]-A000035(n)`
-/

namespace A059840.P5147071338233988098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007598 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A000035 n

end

end A059840.P5147071338233988098

namespace A059840

/-- `∑[A007598(n)]-A000035(n)` -/
def P5147071338233988098.Spec : Prop :=
  ∀ n, P5147071338233988098.a n = A059840 (n + 1)

end A059840

/-! ## A059840.P13829184561427095483

`A327767(n+1)+A260259(n)`
-/

namespace A059840.P13829184561427095483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327767 (n + 1) + A260259 n

end

end A059840.P13829184561427095483

namespace A059840

/-- `A327767(n+1)+A260259(n)` -/
def P13829184561427095483.Spec : Prop :=
  ∀ n, P13829184561427095483.a n = A059840 (n + 1)

end A059840

/-! ## A059840.P16662873398147450763

`A001654(n)+1-A000034(n)`
-/

namespace A059840.P16662873398147450763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001654 n + (1 - A000034 n)

end

end A059840.P16662873398147450763

namespace A059840

/-- `A001654(n)+1-A000034(n)` -/
def P16662873398147450763.Spec : Prop :=
  ∀ n, P16662873398147450763.a n = A059840 (n + 1)

theorem P16662873398147450763.correct : P16662873398147450763.Spec := by
  intro n
  simp only [A059840, Nat.add_sub_cancel, A059840.P16662873398147450763.a, A059840.P3631537578918260503.a, A000034, A000034.P10773112074177680709.a, A001654, A001654.P2587154079132953885.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A059840

/-! ## A059840.P9990708514424693316

`A226205(n+1)-A059841(n)`
-/

namespace A059840.P9990708514424693316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226205 (n + 1) - A059841 n

end

end A059840.P9990708514424693316

namespace A059840

/-- `A226205(n+1)-A059841(n)` -/
def P9990708514424693316.Spec : Prop :=
  ∀ n, P9990708514424693316.a n = A059840 (n + 1)

end A059840

/-! ## A059840.P16742580914830161242

`A286983(n+1)-A127968(n)`
-/

namespace A059840.P16742580914830161242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286983 (n + 1) - A127968 n

end

end A059840.P16742580914830161242

namespace A059840

/-- `A286983(n+1)-A127968(n)` -/
def P16742580914830161242.Spec : Prop :=
  ∀ n, P16742580914830161242.a n = A059840 (n + 1)

end A059840

/-!
# A059841: Period 2: Repeat [1,0]. a(n) = 1 - (n mod 2); Characteristic function of even numbers.

The programs for A059841, the canonical program `A059841.P2666504972441551157` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A059841 has offset 0).

The definition of A059841 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A059841.P2666504972441551157

`(n+1)%2`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A059841

/-- `(n+1)%2` -/
def P2666504972441551157.Spec : Prop :=
  ∀ n, (P2666504972441551157.a n : ℤ) = A059841 n

theorem P2666504972441551157.correct : P2666504972441551157.Spec := by
  intro n
  simp only [A059841]

end A059841

/-!
# A059842: The next square after a(n)^3 is a(n+1)^2.

The programs for A059842, there is no canonical definition to state claims against.
-/

/-! ## A059842.P8458857466605535929

`ceil(a(n-1)^(3/2))` with `a(0)=1, a(1)=2`
-/

namespace A059842.P8458857466605535929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  ⌈(a (n - 1) : ℝ) ^ ((3 : ℚ) / 2 : ℝ)⌉

end

end A059842.P8458857466605535929

/-! ## A059842.P5409691386832818629

`floor(sqrt(a(n-1))^3)+1` with `a(0)=1`
-/

namespace A059842.P5409691386832818629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊Real.sqrt (a (n - 1) : ℝ) ^ 3⌋ + 1

end

end A059842.P5409691386832818629

/-! ## A059842.P12348078153758577192

`floor(a(n-1)^(3/2))+1` with `a(0)=1`
-/

namespace A059842.P12348078153758577192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊(a (n - 1) : ℝ) ^ ((3 : ℚ) / 2 : ℝ)⌋ + 1

end

end A059842.P12348078153758577192

/-! ## A059842.P13052780722335179057

`ceil(sqrt(a(n-1))*a(n-1))` with `a(0)=1, a(1)=2`
-/

namespace A059842.P13052780722335179057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  ⌈Real.sqrt (a (n - 1) : ℝ) * (a (n - 1) : ℝ)⌉

end

end A059842.P13052780722335179057

/-! ## A059842.P14755025264860787293

`floor(sqrt(a(n-1))*a(n-1))+1` with `a(0)=1`
-/

namespace A059842.P14755025264860787293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊Real.sqrt (a (n - 1) : ℝ) * (a (n - 1) : ℝ)⌋ + 1

end

end A059842.P14755025264860787293

/-!
# A059843: a(n) is the smallest prime p such that p-n is a nonzero square.

The programs for A059843, there is no canonical definition to state claims against.
-/

/-! ## A059843.P6244866112405805472

`A059844(n+1)+1+n`
-/

namespace A059843.P6244866112405805472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059844 (n + 1) + 1 + (n : ℤ)

end

end A059843.P6244866112405805472

/-! ## A059843.P9745126376596926300

`A085099(n+1)²+1+n`
-/

namespace A059843.P9745126376596926300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085099 (n + 1) ^ 2 + 1 + (n : ℤ)

end

end A059843.P9745126376596926300

/-! ## A059843.P8815873033907795721

`(A316568(n+1)+1)²+1+n`
-/

namespace A059843.P8815873033907795721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A316568 (n + 1) + 1) ^ 2 + 1 + (n : ℤ)

end

end A059843.P8815873033907795721

/-! ## A059843.P15123551148592746295

`A002522(A085099(n+1))+n`
-/

namespace A059843.P15123551148592746295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002522 (A085099 (n + 1)).toNat + (n : ℤ)

end

end A059843.P15123551148592746295

/-! ## A059843.P7480935896569284894

`A151800(A059844(n+1)+n)`
-/

namespace A059843.P7480935896569284894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A059844 (n + 1) + (n : ℤ)).toNat

end

end A059843.P7480935896569284894

/-! ## A059843.P16357703761070146841

`A002620(2*A085099(n+1))+n+1`
-/

namespace A059843.P16357703761070146841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (2 * A085099 (n + 1)).toNat + (n + 1 : ℤ)

end

end A059843.P16357703761070146841

/-! ## A059843.P16387254399961150873

`A002620(A085099(n+1)+A085099(n+1))+n+1`
-/

namespace A059843.P16387254399961150873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (A085099 (n + 1) + A085099 (n + 1)).toNat + (n + 1 : ℤ)

end

end A059843.P16387254399961150873

/-! ## A059843.P12015164599023938686

`A020639(A085099(n+1)*A085099(n+1)+n+1)`
-/

namespace A059843.P12015164599023938686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A085099 (n + 1) * A085099 (n + 1) + (n + 1 : ℤ)).toNat

end

end A059843.P12015164599023938686

/-! ## A059843.P4544153573119697328

`A000290(A085099(n+1))+A000290(n+1)/(n+1)`
-/

namespace A059843.P4544153573119697328
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000290 (A085099 (n + 1)).toNat : ℚ) + (A000290 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A059843.P4544153573119697328

/-! ## A059843.P5980613755037417167

`A000027(n+1)+A085099(A000027(n+1))*A085099(n+1)`
-/

namespace A059843.P5980613755037417167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1) + A085099 (A000027 (n + 1)).toNat * A085099 (n + 1)

end

end A059843.P5980613755037417167

/-!
# A059844: a(n) = smallest nonzero square x^2 such that n+x^2 is prime.

The programs for A059844, there is no canonical definition to state claims against.
-/

/-! ## A059844.P15997710729724678971

`A085099(n+1)²`
-/

namespace A059844.P15997710729724678971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085099 (n + 1) ^ 2

end

end A059844.P15997710729724678971

/-! ## A059844.P6595621694274725106

`(A316568(n+1)+1)²`
-/

namespace A059844.P6595621694274725106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A316568 (n + 1) + 1) ^ 2

end

end A059844.P6595621694274725106

/-! ## A059844.P4988257713715932197

`A059843(n+1)-(n+1)`
-/

namespace A059844.P4988257713715932197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059843 (n + 1) - (n + 1 : ℤ)

end

end A059844.P4988257713715932197

/-! ## A059844.P1195669114704249067

`A002620(2*A085099(n+1))`
-/

namespace A059844.P1195669114704249067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (2 * A085099 (n + 1)).toNat

end

end A059844.P1195669114704249067

/-! ## A059844.P18313660862703518246

`A004652(2*A085099(n+1))`
-/

namespace A059844.P18313660862703518246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004652 (2 * A085099 (n + 1)).toNat

end

end A059844.P18313660862703518246

/-! ## A059844.P5528646982557707029

`A000010(A059843(n+1))-n`
-/

namespace A059844.P5528646982557707029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A059843 (n + 1)).toNat - (n : ℤ)

end

end A059844.P5528646982557707029

/-! ## A059844.P675157228117565014

`A085099(n+1)^A020639(2*(n+1))`
-/

namespace A059844.P675157228117565014
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A085099 (n + 1) : ℚ) ^ (A020639 (2 * (n + 1)) : ℤ)

end

end A059844.P675157228117565014

/-! ## A059844.P10874604453215119904

`A085099(n+1)^A000040(ceil(2/(n+1)))`
-/

namespace A059844.P10874604453215119904
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A085099 (n + 1) : ℚ) ^ (A000040 ⌈2 / (n + 1 : ℚ)⌉.toNat : ℤ)

end

end A059844.P10874604453215119904

/-! ## A059844.P1941105116424161524

`A085099(A000027(n+1))*A085099(n+1)`
-/

namespace A059844.P1941105116424161524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085099 (A000027 (n + 1)).toNat * A085099 (n + 1)

end

end A059844.P1941105116424161524

/-! ## A059844.P4374796581124433592

`A023443(A059843(n+1)-n)`
-/

namespace A059844.P4374796581124433592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A059843 (n + 1) - (n : ℤ)).toNat

end

end A059844.P4374796581124433592

/-! ## A059844.P3588680689340324734

`A085099(n+1)^A001221(2*A000040(n+1))`
-/

namespace A059844.P3588680689340324734
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A085099 (n + 1) : ℚ) ^ (A001221 (2 * A000040 (n + 1)).toNat : ℤ)

end

end A059844.P3588680689340324734

/-!
# A059845: a(n) = n*(3*n + 11)/2.

The programs for A059845, the canonical program `A059845.P15675369638031481018` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A059845 has offset 0).

The definition of A059845 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(3*n+11)/2` (program `A059845.P2319642320790805046`, by `A059845.P2319642320790805046.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A059845.P2319642320790805046

`n*(3*n+11)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A059845.P2319642320790805046
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n * (3 * n + 11) : ℚ) / 2

end

end A059845.P2319642320790805046

namespace A059845

/-- `n*(3*n+11)/2` -/
def P2319642320790805046.Spec : Prop :=
  ∀ n, P2319642320790805046.a n = (A059845 n : ℚ)

theorem P2319642320790805046.correct : P2319642320790805046.Spec := by
  intro n
  induction n with
  | zero => simp [A059845, A059845.P2319642320790805046.a, A059845.P15675369638031481018.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A059845, Nat.add_sub_cancel, A059845.P2319642320790805046.a, A059845.P15675369638031481018.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A059845

/-! ## A059845.P15675369638031481018

`3*n+a(n-1)+4` with `a(0)=0`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A059845

/-- `3*n+a(n-1)+4` -/
def P15675369638031481018.Spec : Prop :=
  ∀ n, (P15675369638031481018.a n : ℤ) = A059845 n

theorem P15675369638031481018.correct : P15675369638031481018.Spec := by
  intro n
  simp only [A059845]

end A059845

/-! ## A059845.P15755432405227365183

`Δ[(n+5)*C(n, 2)]`
-/

namespace A059845.P15755432405227365183
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 5) * Nat.choose n 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A059845.P15755432405227365183

namespace A059845

/-- `Δ[(n+5)*C(n, 2)]` -/
def P15755432405227365183.Spec : Prop :=
  ∀ n, P15755432405227365183.a n = A059845 n

end A059845

/-! ## A059845.P1871122960071079082

`∑[a(n-1)+3]` with `a(0)=0, a(1)=7`
-/

namespace A059845.P1871122960071079082
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 7] fun n f1 =>
  f1 (n - 1) + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A059845.P1871122960071079082

namespace A059845

/-- `∑[a(n-1)+3]` -/
def P1871122960071079082.Spec : Prop :=
  ∀ n, (P1871122960071079082.a n : ℤ) = A059845 n

end A059845

/-! ## A059845.P17501899394323622456

`∑[ogf((7x-4x^2)/(1-2x+x^2))]`
-/

namespace A059845.P17501899394323622456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 7, -4] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A059845.P17501899394323622456

namespace A059845

/-- `∑[ogf((7x-4x^2)/(1-2x+x^2))]` -/
def P17501899394323622456.Spec : Prop :=
  ∀ n, P17501899394323622456.a n = A059845 n

end A059845

/-! ## A059845.P16981872484584200391

`ogf((7x-4x^2)/(1-3x+3x^2-x^3))`
-/

namespace A059845.P16981872484584200391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 7, -4] [1, -3, 3, -1] n

end

end A059845.P16981872484584200391

namespace A059845

/-- `ogf((7x-4x^2)/(1-3x+3x^2-x^3))` -/
def P16981872484584200391.Spec : Prop :=
  ∀ n, P16981872484584200391.a n = A059845 n

end A059845

/-! ## A059845.P399800206089767320

`4*n-∑[a(n-1)-3]` with `a(0)=0`
-/

namespace A059845.P399800206089767320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 (n - 1) - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A059845.P399800206089767320

namespace A059845

/-- `4*n-∑[a(n-1)-3]` -/
def P399800206089767320.Spec : Prop :=
  ∀ n, P399800206089767320.a n = A059845 n

end A059845

/-! ## A059845.P1080501725792277618

`4*n-(n-4-a(n-1))` with `a(0)=0`
-/

namespace A059845.P1080501725792277618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (4 * n : ℤ) - ((n : ℤ) - 4 - a (n - 1))

end

end A059845.P1080501725792277618

namespace A059845

/-- `4*n-(n-4-a(n-1))` -/
def P1080501725792277618.Spec : Prop :=
  ∀ n, P1080501725792277618.a n = A059845 n

end A059845

/-! ## A059845.P2911877712627704570

`a(n-1)+4+n+n+n` with `a(0)=0`
-/

namespace A059845.P2911877712627704570
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + 4 + n + n + n

end

end A059845.P2911877712627704570

namespace A059845

/-- `a(n-1)+4+n+n+n` -/
def P2911877712627704570.Spec : Prop :=
  ∀ n, (P2911877712627704570.a n : ℤ) = A059845 n

end A059845

/-! ## A059845.P7218384720191434781

`abs(C(n+1, 2)-(n+3)*2*n)`
-/

namespace A059845.P7218384720191434781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(Nat.choose (n + 1) 2 : ℤ) - ((n + 3) * (2 * n) : ℤ)|

end

end A059845.P7218384720191434781

namespace A059845

/-- `abs(C(n+1, 2)-(n+3)*2*n)` -/
def P7218384720191434781.Spec : Prop :=
  ∀ n, P7218384720191434781.a n = A059845 n

end A059845

/-! ## A059845.P17865317960112702874

`n+A140091(n)`
-/

namespace A059845.P17865317960112702874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) + A140091 n

end

end A059845.P17865317960112702874

namespace A059845

/-- `n+A140091(n)` -/
def P17865317960112702874.Spec : Prop :=
  ∀ n, P17865317960112702874.a n = A059845 n

end A059845

/-! ## A059845.P15345910846490982579

`A140672(n)-n`
-/

namespace A059845.P15345910846490982579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140672 n - (n : ℤ)

end

end A059845.P15345910846490982579

namespace A059845

/-- `A140672(n)-n` -/
def P15345910846490982579.Spec : Prop :=
  ∀ n, P15345910846490982579.a n = A059845 n

end A059845

/-! ## A059845.P1518455774432327035

`A056115(n)+n²`
-/

namespace A059845.P1518455774432327035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056115 n + (n ^ 2 : ℤ)

end

end A059845.P1518455774432327035

namespace A059845

/-- `A056115(n)+n²` -/
def P1518455774432327035.Spec : Prop :=
  ∀ n, P1518455774432327035.a n = A059845 n

end A059845

/-! ## A059845.P12781779650045828178

`A279895(n)-n²`
-/

namespace A059845.P12781779650045828178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279895 n - (n ^ 2 : ℤ)

end

end A059845.P12781779650045828178

namespace A059845

/-- `A279895(n)-n²` -/
def P12781779650045828178.Spec : Prop :=
  ∀ n, P12781779650045828178.a n = A059845 n

end A059845

/-! ## A059845.P9181962868463606402

`A028557(n)+∑[n]`
-/

namespace A059845.P9181962868463606402
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028557 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A059845.P9181962868463606402

namespace A059845

/-- `A028557(n)+∑[n]` -/
def P9181962868463606402.Spec : Prop :=
  ∀ n, P9181962868463606402.a n = A059845 n

end A059845

/-! ## A059845.P13726628209930309865

`A139570(n)-∑[n]`
-/

namespace A059845.P13726628209930309865
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139570 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A059845.P13726628209930309865

namespace A059845

/-- `A139570(n)-∑[n]` -/
def P13726628209930309865.Spec : Prop :=
  ∀ n, P13726628209930309865.a n = A059845 n

end A059845

/-! ## A059845.P6255139753439173053

`A140090(n)+2*n`
-/

namespace A059845.P6255139753439173053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140090 n + (2 * n : ℤ)

end

end A059845.P6255139753439173053

namespace A059845

/-- `A140090(n)+2*n` -/
def P6255139753439173053.Spec : Prop :=
  ∀ n, P6255139753439173053.a n = A059845 n

end A059845

/-! ## A059845.P3408702106768640640

`3*A000096(n)+n`
-/

namespace A059845.P3408702106768640640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A000096 n + (n : ℤ)

end

end A059845.P3408702106768640640

namespace A059845

/-- `3*A000096(n)+n` -/
def P3408702106768640640.Spec : Prop :=
  ∀ n, P3408702106768640640.a n = A059845 n

end A059845

/-! ## A059845.P4112122937822523378

`A140673(n)-2*n`
-/

namespace A059845.P4112122937822523378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140673 n - (2 * n : ℤ)

end

end A059845.P4112122937822523378

namespace A059845

/-- `A140673(n)-2*n` -/
def P4112122937822523378.Spec : Prop :=
  ∀ n, P4112122937822523378.a n = A059845 n

end A059845

/-! ## A059845.P17536837901435389375

`A277978(n)/2+n`
-/

namespace A059845.P17536837901435389375
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A277978 n : ℚ) / 2 + (n : ℚ)

end

end A059845.P17536837901435389375

namespace A059845

/-- `A277978(n)/2+n` -/
def P17536837901435389375.Spec : Prop :=
  ∀ n, P17536837901435389375.a n = (A059845 n : ℚ)

end A059845

/-!
# A059846: a(n) is the least prime p, such that next_prime(2*p) - 2*p = 2*n - 1.

The programs for A059846, there is no canonical definition to state claims against.
-/

/-! ## A059846.P449968508196253679

`(A059847(n+1)-(2*(n+1)-1))/2`
-/

namespace A059846.P449968508196253679
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059847 (n + 1) - ((2 * (n + 1) : ℤ) - 1) : ℚ) / 2

end

end A059846.P449968508196253679

/-! ## A059846.P17506010556462393366

`ceil(A059847(n+1)/2-(n+1))`
-/

namespace A059846.P17506010556462393366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A059847 (n + 1) : ℚ) / 2 - (n + 1 : ℚ)⌉

end

end A059846.P17506010556462393366

/-! ## A059846.P9981985766299033465

`A000040(A074973(n+1))`
-/

namespace A059846.P9981985766299033465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A074973 (n + 1)).toNat

end

end A059846.P9981985766299033465

/-! ## A059846.P9509020731931391054

`A158611(A074973(n+1)+2)`
-/

namespace A059846.P9509020731931391054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (A074973 (n + 1) + 2).toNat

end

end A059846.P9509020731931391054

/-! ## A059846.P16301042299431231393

`A006530(A059847(n+1)-A005408(n))`
-/

namespace A059846.P16301042299431231393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A059847 (n + 1) - A005408 n).toNat

end

end A059846.P16301042299431231393

/-!
# A059847: a(n) = 2*p + 2*n - 1, where p is the least prime such that next_prime(2*p) - 2*p = 2*n - 1.

The programs for A059847, there is no canonical definition to state claims against.
-/

/-! ## A059847.P3451186887906460209

`2*A059846(n+1)+2*(n+1)-1`
-/

namespace A059847.P3451186887906460209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A059846 (n + 1) + (2 * (n + 1) : ℤ) - 1

end

end A059847.P3451186887906460209

/-! ## A059847.P2675772174055074100

`2*A059846(n+1)+2*n+1`
-/

namespace A059847.P2675772174055074100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A059846 (n + 1) + (2 * n + 1 : ℤ)

end

end A059847.P2675772174055074100

/-! ## A059847.P17075090153085436225

`A005408(n)+2*A059846(n+1)`
-/

namespace A059847.P17075090153085436225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n + 2 * A059846 (n + 1)

end

end A059847.P17075090153085436225

/-! ## A059847.P17514694480443400132

`A059786(A074973(n+1))`
-/

namespace A059847.P17514694480443400132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059786 (A074973 (n + 1)).toNat

end

end A059847.P17514694480443400132

/-! ## A059847.P11357158908084155160

`A059786(∑{d}[A059846(n+1), A061395(#)])`
-/

namespace A059847.P11357158908084155160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059846 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059786 (∑ d ∈ Nat.divisors (f1 n).natAbs, A061395 d).toNat

end

end A059847.P11357158908084155160

/-!
# A059848: As a square table by antidiagonals, the n-digit number which in base k starts 1010101...

The programs for A059848, there is no canonical definition to state claims against.
-/

/-! ## A059848.P16184216187382741466

`A352361(n)-A125005(A326323(n))`
-/

namespace A059848.P16184216187382741466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352361 n - A125005 (A326323 n).toNat

end

end A059848.P16184216187382741466

/-! ## A059848.P8895576918649742

`A352361(n)-A089311(A094544(n))`
-/

namespace A059848.P8895576918649742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352361 n - A089311 (A094544 n).toNat

end

end A059848.P8895576918649742

/-! ## A059848.P8970326357290894763

`A352361(n)-A025469(A163661(n))`
-/

namespace A059848.P8970326357290894763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352361 n - A025469 (A163661 n).toNat

end

end A059848.P8970326357290894763

/-! ## A059848.P5171907989140964703

`A352361(n)-A025469(A256116(n))`
-/

namespace A059848.P5171907989140964703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352361 n - A025469 (A256116 n).toNat

end

end A059848.P5171907989140964703

/-! ## A059848.P17468382933397942327

`A352361(n)-A293162(A156953(n))`
-/

namespace A059848.P17468382933397942327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352361 n - A293162 (A156953 n).toNat

end

end A059848.P17468382933397942327

/-!
# A059849: Number of pairs of partitions of {1,2,...,n} whose meet is the partition {{1}, {2}, ..., {n}}.

The programs for A059849, there is no canonical definition to state claims against.
-/

/-! ## A059849.P16806994662495900320

`A318391(∑[n]+floor(acot(n)))`
-/

namespace A059849.P16806994662495900320
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318391 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + ⌊SequenceMachineLib.acot (n : ℝ)⌋).toNat

end

end A059849.P16806994662495900320

/-! ## A059849.P18155267514285743701

`A318391(round(sqrt(∑[n]²+1)))`
-/

namespace A059849.P18155267514285743701
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318391 (SequenceMachineLib.roundAway (Real.sqrt (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 + 1 : ℕ) : ℝ))).toNat

end

end A059849.P18155267514285743701

/-!
# A059851: a(n) = n - floor(n/2) + floor(n/3) - floor(n/4) + ... (this is a finite sum).

The programs for A059851, the canonical program `A059851.P8165731397206128111` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A059851 has offset 0).

The definition of A059851 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A271860, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A059851.P8165731397206128111

`(A271860(n)+n)/2`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A059851

/-- `(A271860(n)+n)/2` -/
def P8165731397206128111.Spec : Prop :=
  ∀ n, P8165731397206128111.a n = (A059851 n : ℚ)

end A059851

/-! ## A059851.P8268742374166363647

`A006218(n)-2*A006218(floor(n/2))`
-/

namespace A059851.P8268742374166363647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n - 2 * A006218 ⌊(n : ℚ) / 2⌋.toNat

end

end A059851.P8268742374166363647

namespace A059851

/-- `A006218(n)-2*A006218(floor(n/2))` -/
def P8268742374166363647.Spec : Prop :=
  ∀ n, P8268742374166363647.a n = A059851 n

end A059851

/-! ## A059851.P17609392283041430062

`∑[∑{d}[n, -(-1)^#]]`
-/

namespace A059851.P17609392283041430062
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), (-((-1) ^ d))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A059851.P17609392283041430062

namespace A059851

/-- `∑[∑{d}[n, -(-1)^#]]` -/
def P17609392283041430062.Spec : Prop :=
  ∀ n, P17609392283041430062.a n = A059851 n

end A059851

/-! ## A059851.P4126842468846495895

`n-A075997(n)`
-/

namespace A059851.P4126842468846495895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A075997 n

end

end A059851.P4126842468846495895

namespace A059851

/-- `n-A075997(n)` -/
def P4126842468846495895.Spec : Prop :=
  ∀ n, P4126842468846495895.a n = A059851 n

end A059851

/-! ## A059851.P12000966251250944380

`1-A330926(n+1)+n`
-/

namespace A059851.P12000966251250944380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A330926 (n + 1) + (n : ℤ)

end

end A059851.P12000966251250944380

namespace A059851

/-- `1-A330926(n+1)+n` -/
def P12000966251250944380.Spec : Prop :=
  ∀ n, P12000966251250944380.a n = A059851 n

end A059851

/-! ## A059851.P33658707917236004

`A048272(n)+a(n-1)` with `a(0)=0`
-/

namespace A059851.P33658707917236004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A048272 n + a (n - 1)

end

end A059851.P33658707917236004

namespace A059851

/-- `A048272(n)+a(n-1)` -/
def P33658707917236004.Spec : Prop :=
  ∀ n, P33658707917236004.a n = A059851 n

end A059851

/-! ## A059851.P8013062699192614995

`a(n-1)+1-A325939(n)` with `a(0)=0`
-/

namespace A059851.P8013062699192614995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + (1 - A325939 n)

end

end A059851.P8013062699192614995

namespace A059851

/-- `a(n-1)+1-A325939(n)` -/
def P8013062699192614995.Spec : Prop :=
  ∀ n, P8013062699192614995.a n = A059851 n

end A059851

/-! ## A059851.P914639808700006658

`2*A060831(n)-A006218(n)`
-/

namespace A059851.P914639808700006658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A060831 n - A006218 n

end

end A059851.P914639808700006658

namespace A059851

/-- `2*A060831(n)-A006218(n)` -/
def P914639808700006658.Spec : Prop :=
  ∀ n, P914639808700006658.a n = A059851 n

end A059851

/-! ## A059851.P2011961512775246094

`A001057(n-A271860(n))+n`
-/

namespace A059851.P2011961512775246094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 ((n : ℤ) - A271860 n).toNat + (n : ℤ)

end

end A059851.P2011961512775246094

namespace A059851

/-- `A001057(n-A271860(n))+n` -/
def P2011961512775246094.Spec : Prop :=
  ∀ n, P2011961512775246094.a n = A059851 n

end A059851

/-! ## A059851.P14847539595349754177

`n-A001281(n-A271860(n))`
-/

namespace A059851.P14847539595349754177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A001281 ((n : ℤ) - A271860 n).toNat

end

end A059851.P14847539595349754177

namespace A059851

/-- `n-A001281(n-A271860(n))` -/
def P14847539595349754177.Spec : Prop :=
  ∀ n, P14847539595349754177.a n = A059851 n

end A059851

/-! ## A059851.P10493671353779404383

`n-A004525(n-A271860(n))`
-/

namespace A059851.P10493671353779404383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A004525 ((n : ℤ) - A271860 n).toNat

end

end A059851.P10493671353779404383

namespace A059851

/-- `n-A004525(n-A271860(n))` -/
def P10493671353779404383.Spec : Prop :=
  ∀ n, P10493671353779404383.a n = A059851 n

end A059851

/-! ## A059851.P18019870802149513966

`n-A004526(n-A271860(n))`
-/

namespace A059851.P18019870802149513966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A004526 ((n : ℤ) - A271860 n).toNat

end

end A059851.P18019870802149513966

namespace A059851

/-- `n-A004526(n-A271860(n))` -/
def P18019870802149513966.Spec : Prop :=
  ∀ n, P18019870802149513966.a n = A059851 n

end A059851

/-! ## A059851.P624982732009547735

`n-A110654(n-A271860(n))`
-/

namespace A059851.P624982732009547735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A110654 ((n : ℤ) - A271860 n).toNat

end

end A059851.P624982732009547735

namespace A059851

/-- `n-A110654(n-A271860(n))` -/
def P624982732009547735.Spec : Prop :=
  ∀ n, P624982732009547735.a n = A059851 n

end A059851

/-! ## A059851.P12266786589151346546

`A332682(n+1)+n-A109613(n)`
-/

namespace A059851.P12266786589151346546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332682 (n + 1) + ((n : ℤ) - A109613 n)

end

end A059851.P12266786589151346546

namespace A059851

/-- `A332682(n+1)+n-A109613(n)` -/
def P12266786589151346546.Spec : Prop :=
  ∀ n, P12266786589151346546.a n = A059851 n

end A059851

/-! ## A059851.P16537215576522614702

`∑[A048272(n+1)]-A048272(n+1)`
-/

namespace A059851.P16537215576522614702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048272 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A048272 (n + 1)

end

end A059851.P16537215576522614702

namespace A059851

/-- `∑[A048272(n+1)]-A048272(n+1)` -/
def P16537215576522614702.Spec : Prop :=
  ∀ n, P16537215576522614702.a n = A059851 n

end A059851

/-! ## A059851.P13178393663910429179

`A325939(n+1)-∑[A325939(n+1)]+n`
-/

namespace A059851.P13178393663910429179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325939 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325939 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A059851.P13178393663910429179

namespace A059851

/-- `A325939(n+1)-∑[A325939(n+1)]+n` -/
def P13178393663910429179.Spec : Prop :=
  ∀ n, P13178393663910429179.a n = A059851 n

end A059851

/-! ## A059851.P6371403705402028439

`A008619(A271860(n))+n-A008619(n)`
-/

namespace A059851.P6371403705402028439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A271860 n).toNat + ((n : ℤ) - A008619 n)

end

end A059851.P6371403705402028439

namespace A059851

/-- `A008619(A271860(n))+n-A008619(n)` -/
def P6371403705402028439.Spec : Prop :=
  ∀ n, P6371403705402028439.a n = A059851 n

end A059851

/-! ## A059851.P9245823027482225423

`A060831(n)-A006218(n-A110654(n))`
-/

namespace A059851.P9245823027482225423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060831 n - A006218 ((n : ℤ) - A110654 n).toNat

end

end A059851.P9245823027482225423

namespace A059851

/-- `A060831(n)-A006218(n-A110654(n))` -/
def P9245823027482225423.Spec : Prop :=
  ∀ n, P9245823027482225423.a n = A059851 n

end A059851

/-! ## A059851.P2701013829869421459

`A183063(n+1)+A060831(n)-A362059(n+1)`
-/

namespace A059851.P2701013829869421459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183063 (n + 1) + (A060831 n - A362059 (n + 1))

end

end A059851.P2701013829869421459

namespace A059851

/-- `A183063(n+1)+A060831(n)-A362059(n+1)` -/
def P2701013829869421459.Spec : Prop :=
  ∀ n, P2701013829869421459.a n = A059851 n

end A059851

/-! ## A059851.P12474559881522237492

`A332682(n+1)-(A001057(n+1)+A001057(n))`
-/

namespace A059851.P12474559881522237492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332682 (n + 1) - (A001057 (n + 1) + A001057 n)

end

end A059851.P12474559881522237492

namespace A059851

/-- `A332682(n+1)-(A001057(n+1)+A001057(n))` -/
def P12474559881522237492.Spec : Prop :=
  ∀ n, P12474559881522237492.a n = A059851 n

end A059851

/-!
# A059853: Period of continued fraction for sqrt(n^2+3), n >= 2.

The programs for A059853, there is no canonical definition to state claims against.
-/

/-! ## A059853.P6132423112735506507

`A003285((n+2)²+3)`
-/

namespace A059853.P6132423112735506507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003285 ((n + 2) ^ 2 + 3)

end

end A059853.P6132423112735506507

/-! ## A059853.P8452883097730255

`A013943(n*(n+3)+5)`
-/

namespace A059853.P8452883097730255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013943 (n * (n + 3) + 5)

end

end A059853.P8452883097730255

/-! ## A059853.P10674539676273833638

`A097853((n+2)²+3)`
-/

namespace A059853.P10674539676273833638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097853 ((n + 2) ^ 2 + 3)

end

end A059853.P10674539676273833638

/-! ## A059853.P209990292530390044

`A067280((n+2)²+3)-1`
-/

namespace A059853.P209990292530390044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067280 ((n + 2) ^ 2 + 3) - 1

end

end A059853.P209990292530390044

/-! ## A059853.P12881083443423937666

`lcm(2, A003285(A117950(n+2)))`
-/

namespace A059853.P12881083443423937666
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A003285 (A117950 (n + 2)).toNat)

end

end A059853.P12881083443423937666

/-!
# A059854: Period of continued fraction for sqrt(n^2+5), n >= 3.

The programs for A059854, there is no canonical definition to state claims against.
-/

/-! ## A059854.P3516446666620100496

`A003285((n+3)²+5)`
-/

namespace A059854.P3516446666620100496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003285 ((n + 3) ^ 2 + 5)

end

end A059854.P3516446666620100496

/-! ## A059854.P3364410333657989000

`A013943((n+3)²-(n-2))`
-/

namespace A059854.P3364410333657989000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013943 (((n + 3) ^ 2 : ℤ) - ((n : ℤ) - 2)).toNat

end

end A059854.P3364410333657989000

/-! ## A059854.P10813297033874684583

`A097853((n+3)²+5)`
-/

namespace A059854.P10813297033874684583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097853 ((n + 3) ^ 2 + 5)

end

end A059854.P10813297033874684583

/-! ## A059854.P6000754465925040959

`A067280((n+3)²+5)-1`
-/

namespace A059854.P6000754465925040959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067280 ((n + 3) ^ 2 + 5) - 1

end

end A059854.P6000754465925040959

/-!
# A059855: Period of continued fraction for sqrt(n^2+4), n >= 1.

The programs for A059855, there is no canonical definition to state claims against.
-/

/-! ## A059855.P12884200480593291737

`A003285((n+1)²+4)`
-/

namespace A059855.P12884200480593291737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003285 ((n + 1) ^ 2 + 4)

end

end A059855.P12884200480593291737

/-!
# A059857: Alternating clock-face numbers.

The programs for A059857, the canonical program `A059857.P4669686708820666510` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A059857 has offset 0).

The definition of A059857 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 409 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A059857.P4669686708820666510

`A034326(A073762(n+1)+A001057(n))`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A059857

/-- `A034326(A073762(n+1)+A001057(n))` -/
def P4669686708820666510.Spec : Prop :=
  ∀ n, P4669686708820666510.a n = A059857 n

theorem P4669686708820666510.correct : P4669686708820666510.Spec := by
  intro n
  simp only [A059857]

end A059857

/-!
# A059858: Primes p such that x^5 == 2 (mod p) has five solutions.

The programs for A059858, there is no canonical definition to state claims against.
-/

/-! ## A059858.P13462476843294082105

`∩[A004615(n+1), A040159(n+1)]`
-/

namespace A059858.P13462476843294082105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004615 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040159 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059858.P13462476843294082105

/-! ## A059858.P2544626461220119194

`∩[A030430(n+1), A040159(n+1)]`
-/

namespace A059858.P2544626461220119194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030430 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040159 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059858.P2544626461220119194

/-! ## A059858.P4985316684355884300

`∩[A040159(n+1), A090756(n+1)]`
-/

namespace A059858.P4985316684355884300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040159 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090756 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059858.P4985316684355884300

/-! ## A059858.P6002619930883706354

`∩[A040159(n+1), A327752(n+1)]`
-/

namespace A059858.P6002619930883706354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040159 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327752 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059858.P6002619930883706354

/-! ## A059858.P10337308203566886830

`∩[A040159(n+1), A331194(n+1)]`
-/

namespace A059858.P10337308203566886830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040159 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331194 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059858.P10337308203566886830

/-! ## A059858.P16159959683157185626

`∩[A040159(n+1), A017281(n)]`
-/

namespace A059858.P16159959683157185626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040159 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017281 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059858.P16159959683157185626

/-! ## A059858.P8025398880842263230

`∩[A040159(n+1), A277588(n+1)]`
-/

namespace A059858.P8025398880842263230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040159 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277588 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059858.P8025398880842263230

/-! ## A059858.P1384359208423509405

`∩[A040159(n+1), A225297(n+1)]`
-/

namespace A059858.P1384359208423509405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040159 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225297 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059858.P1384359208423509405

/-! ## A059858.P17404816518836255199

`∩[A040159(n+1), A105179(n+1)]`
-/

namespace A059858.P17404816518836255199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040159 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105179 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059858.P17404816518836255199

/-! ## A059858.P14232678189673446234

`∩[A040159(n+1), A016861(n)]`
-/

namespace A059858.P14232678189673446234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040159 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016861 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059858.P14232678189673446234

/-! ## A059858.P2724170199389703295

`∩[A040159(n+1), A197652(n+1)]`
-/

namespace A059858.P2724170199389703295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040159 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197652 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059858.P2724170199389703295

/-! ## A059858.P7503560055304011358

`∩[A040159(n+1), A271508(n+1)]`
-/

namespace A059858.P7503560055304011358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040159 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271508 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059858.P7503560055304011358

/-! ## A059858.P10782860747868254168

`∩[A040159(n+1), A306277(n+1)]`
-/

namespace A059858.P10782860747868254168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040159 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306277 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059858.P10782860747868254168

/-! ## A059858.P15645787261949378880

`∩[A040159(n+1), A132359(n+1)]`
-/

namespace A059858.P15645787261949378880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040159 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132359 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059858.P15645787261949378880

/-! ## A059858.P4487761556195843111

`∩[A040159(n+1), A277597(n+1)]`
-/

namespace A059858.P4487761556195843111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040159 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277597 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059858.P4487761556195843111

/-! ## A059858.P12031006738263299629

`∩[A040159(n+1), A187331(n)]`
-/

namespace A059858.P12031006738263299629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040159 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187331 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059858.P12031006738263299629

/-! ## A059858.P6547966955099419237

`∩[A047211(2*n+1)-1, A040159(n+2)]`
-/

namespace A059858.P6547966955099419237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047211 (2 * n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040159 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059858.P6547966955099419237

/-! ## A059858.P8259630147964168720

`∩[A040159(n+2), A047211(2*(n+1))+2]`
-/

namespace A059858.P8259630147964168720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040159 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047211 (2 * (n + 1)) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059858.P8259630147964168720

/-! ## A059858.P9533744873834363691

`∩[A047404(2*n+1)+n, A040159(n+2)]`
-/

namespace A059858.P9533744873834363691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047404 (2 * n + 1) + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040159 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059858.P9533744873834363691

/-! ## A059858.P16313172565651015961

`∩[A047454(2*n+1)+n, A040159(n+2)]`
-/

namespace A059858.P16313172565651015961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047454 (2 * n + 1) + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040159 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059858.P16313172565651015961

/-!
# A059859: Sum of squares of first n quarter-squares (A002620).

The programs for A059859, the canonical program `A059859.P11605279169059021159` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A059859 has offset 0).

The definition of A059859 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A059859.P11605279169059021159

`∑[floor((n/2)²)²]`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A059859

/-- `∑[floor((n/2)²)²]` -/
def P11605279169059021159.Spec : Prop :=
  ∀ n, P11605279169059021159.a n = A059859 n

theorem P11605279169059021159.correct : P11605279169059021159.Spec := by
  intro n
  simp only [A059859]

end A059859

/-! ## A059859.P18355997733476239167

`floor(∑[∑[a(n-2)+1]²])` with `a(0)=0, a(1)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A059859.P18355997733476239167
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 0] fun n f2 =>
  f2 (n - 2) + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A059859.P18355997733476239167

namespace A059859

/-- `floor(∑[∑[a(n-2)+1]²])` -/
def P18355997733476239167.Spec : Prop :=
  ∀ n, (P18355997733476239167.a n : ℤ) = A059859 n

end A059859

/-! ## A059859.P14541047803671207806

`a(n-1)+floor((n/2)²)²` with `a(0)=0`
-/

namespace A059859.P14541047803671207806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + ⌊((n : ℚ) / 2) ^ 2⌋ ^ 2

end

end A059859.P14541047803671207806

namespace A059859

/-- `a(n-1)+floor((n/2)²)²` -/
def P14541047803671207806.Spec : Prop :=
  ∀ n, P14541047803671207806.a n = A059859 n

end A059859

/-! ## A059859.P15889025556628958363

`∑[∑[a(n-2)+2]²]/4` with `a(0)=0, a(1)=0`
-/

namespace A059859.P15889025556628958363
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 0] fun n f2 =>
  f2 (n - 2) + 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 4

end

end A059859.P15889025556628958363

namespace A059859

/-- `∑[∑[a(n-2)+2]²]/4` -/
def P15889025556628958363.Spec : Prop :=
  ∀ n, P15889025556628958363.a n = (A059859 n : ℚ)

end A059859

/-! ## A059859.P6963465053846015844

`floor(∑[∑[∑[1-a(n-1)]]²])` with `a(0)=0, a(1)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A059859.P6963465053846015844
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n f3 =>
  1 - f3 (n - 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A059859.P6963465053846015844

namespace A059859

/-- `floor(∑[∑[∑[1-a(n-1)]]²])` -/
def P6963465053846015844.Spec : Prop :=
  ∀ n, P6963465053846015844.a n = A059859 n

end A059859

/-! ## A059859.P14328154008807820774

`∑[A212892(n)]/2`
-/

namespace A059859.P14328154008807820774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212892 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A059859.P14328154008807820774

namespace A059859

/-- `∑[A212892(n)]/2` -/
def P14328154008807820774.Spec : Prop :=
  ∀ n, P14328154008807820774.a n = (A059859 n : ℚ)

end A059859

/-! ## A059859.P15283361136932195995

`∑[A007590(n)²]/4`
-/

namespace A059859.P15283361136932195995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007590 n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 4

end

end A059859.P15283361136932195995

namespace A059859

/-- `∑[A007590(n)²]/4` -/
def P15283361136932195995.Spec : Prop :=
  ∀ n, P15283361136932195995.a n = (A059859 n : ℚ)

end A059859

/-! ## A059859.P17648495784054751178

`A030179(n)+a(n-1)` with `a(0)=0`
-/

namespace A059859.P17648495784054751178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A030179 n + a (n - 1)

end

end A059859.P17648495784054751178

namespace A059859

/-- `A030179(n)+a(n-1)` -/
def P17648495784054751178.Spec : Prop :=
  ∀ n, P17648495784054751178.a n = A059859 n

end A059859

/-! ## A059859.P5313780715824578980

`A335648(n-1)-a(n-1)` with `a(0)=0`
-/

namespace A059859.P5313780715824578980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A335648 (n - 1) - a (n - 1)

end

end A059859.P5313780715824578980

namespace A059859

/-- `A335648(n-1)-a(n-1)` -/
def P5313780715824578980.Spec : Prop :=
  ∀ n, P5313780715824578980.a n = A059859 n

end A059859

/-! ## A059859.P9590593456387746069

`∑[A002620(n)²]*A057427(n)`
-/

namespace A059859.P9590593456387746069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A057427 n

end

end A059859.P9590593456387746069

namespace A059859

/-- `∑[A002620(n)²]*A057427(n)` -/
def P9590593456387746069.Spec : Prop :=
  ∀ n, P9590593456387746069.a n = A059859 n

end A059859

/-! ## A059859.P12598693672234775042

`A008233(2*n)+a(n-1)` with `a(0)=0`
-/

namespace A059859.P12598693672234775042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A008233 (2 * n) + a (n - 1)

end

end A059859.P12598693672234775042

namespace A059859

/-- `A008233(2*n)+a(n-1)` -/
def P12598693672234775042.Spec : Prop :=
  ∀ n, P12598693672234775042.a n = A059859 n

end A059859

/-! ## A059859.P11037893632122069974

`∑[A008233(2*n)]%A291550(n+1)`
-/

namespace A059859.P11037893632122069974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008233 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A291550 (n + 1))

end

end A059859.P11037893632122069974

namespace A059859

/-- `∑[A008233(2*n)]%A291550(n+1)` -/
def P11037893632122069974.Spec : Prop :=
  ∀ n, P11037893632122069974.a n = A059859 n

end A059859

/-! ## A059859.P10853225560476524686

`∑[A002620(n)²]%A084611(n)`
-/

namespace A059859.P10853225560476524686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A084611 n)

end

end A059859.P10853225560476524686

namespace A059859

/-- `∑[A002620(n)²]%A084611(n)` -/
def P10853225560476524686.Spec : Prop :=
  ∀ n, P10853225560476524686.a n = A059859 n

end A059859

/-! ## A059859.P11436049603894626504

`∑[A000290(A002620(n))]%A230221(n+1)`
-/

namespace A059859.P11436049603894626504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (A002620 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A230221 (n + 1))

end

end A059859.P11436049603894626504

namespace A059859

/-- `∑[A000290(A002620(n))]%A230221(n+1)` -/
def P11436049603894626504.Spec : Prop :=
  ∀ n, P11436049603894626504.a n = A059859 n

end A059859

/-! ## A059859.P11789629750996681729

`A008217(n²)+a(n-1)` with `a(0)=0`
-/

namespace A059859.P11789629750996681729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A008217 (n ^ 2) + a (n - 1)

end

end A059859.P11789629750996681729

namespace A059859

/-- `A008217(n²)+a(n-1)` -/
def P11789629750996681729.Spec : Prop :=
  ∀ n, P11789629750996681729.a n = A059859 n

end A059859

/-! ## A059859.P14616955336931095200

`A295643(n²)+a(n-1)` with `a(0)=0`
-/

namespace A059859.P14616955336931095200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A295643 (n ^ 2) + a (n - 1)

end

end A059859.P14616955336931095200

namespace A059859

/-- `A295643(n²)+a(n-1)` -/
def P14616955336931095200.Spec : Prop :=
  ∀ n, P14616955336931095200.a n = A059859 n

end A059859

/-!
# A059860: a(n) = binomial(n+1, 2)^5.

The programs for A059860, the canonical program `A059860.P3695091014392453840` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A059860 has offset 1).

The definition of A059860 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(n+2, 2)^5` (program `A059860.P3695091014392453840`, by `A059860.P3695091014392453840.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A059860.P3695091014392453840

`C(n+2, 2)^5`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A059860

/-- `C(n+2, 2)^5` -/
def P3695091014392453840.Spec : Prop :=
  ∀ n, (P3695091014392453840.a n : ℤ) = A059860 (n + 1)

theorem P3695091014392453840.correct : P3695091014392453840.Spec := by
  intro n
  simp only [A059860, Nat.add_sub_cancel]

end A059860

/-! ## A059860.P8376553246746410688

`((n+1)*(n+2)/2)^5`
-/

namespace A059860.P8376553246746410688
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n + 1) * (n + 2) : ℚ) / 2) ^ 5

end

end A059860.P8376553246746410688

namespace A059860

/-- `((n+1)*(n+2)/2)^5` -/
def P8376553246746410688.Spec : Prop :=
  ∀ n, P8376553246746410688.a n = (A059860 (n + 1) : ℚ)

theorem P8376553246746410688.correct : P8376553246746410688.Spec := by
  intro n
  simp only [A059860, Nat.add_sub_cancel, A059860.P8376553246746410688.a, A059860.P3695091014392453840.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A059860

/-! ## A059860.P5967849079970869833

`-∑[xor(n, -1)]^5`
-/

namespace A059860.P5967849079970869833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (-1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -((∑ j ∈ Finset.range (n + 1), f1 j) ^ 5)

end

end A059860.P5967849079970869833

namespace A059860

/-- `-∑[xor(n, -1)]^5` -/
def P5967849079970869833.Spec : Prop :=
  ∀ n, P5967849079970869833.a n = A059860 (n + 1)

end A059860

/-! ## A059860.P6815826859026901239

`root(∑[n+1], tan(acot(5)))`
-/

namespace A059860.P6815826859026901239
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ) ^ (1 / Real.tan (SequenceMachineLib.acot (5 : ℝ)))

end

end A059860.P6815826859026901239

namespace A059860

/-- `root(∑[n+1], tan(acot(5)))` -/
def P6815826859026901239.Spec : Prop :=
  ∀ n, P6815826859026901239.a n = (A059860 (n + 1) : ℝ)

end A059860

/-! ## A059860.P3320671876554069425

`root(∑[n+1], cot(atan(5)))`
-/

namespace A059860.P3320671876554069425
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ) ^ (1 / Real.cot (Real.arctan (5 : ℝ)))

end

end A059860.P3320671876554069425

namespace A059860

/-- `root(∑[n+1], cot(atan(5)))` -/
def P3320671876554069425.Spec : Prop :=
  ∀ n, P3320671876554069425.a n = (A059860 (n + 1) : ℝ)

end A059860

/-! ## A059860.P6622579737072846029

`record[(C(n, 2)-(n-1))^5]`
-/

namespace A059860.P6622579737072846029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.choose n 2 : ℤ) - ((n : ℤ) - 1)) ^ 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A059860.P6622579737072846029

namespace A059860

/-- `record[(C(n, 2)-(n-1))^5]` -/
def P6622579737072846029.Spec : Prop :=
  ∀ n, P6622579737072846029.a n = A059860 (n + 1)

end A059860

/-! ## A059860.P5344720113261309239

`(∑[n+1]^cosh(log(2)))²²`
-/

namespace A059860.P5344720113261309239
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ) ^ (Real.cosh (Real.log (2 : ℝ)))) ^ 2) ^ 2

end

end A059860.P5344720113261309239

namespace A059860

/-- `(∑[n+1]^cosh(log(2)))²²` -/
def P5344720113261309239.Spec : Prop :=
  ∀ n, P5344720113261309239.a n = (A059860 (n + 1) : ℝ)

end A059860

/-! ## A059860.P12644674840125041565

`floor((lcm(n+1, n+2)/2)^5)`
-/

namespace A059860.P12644674840125041565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((Nat.lcm (n + 1) (n + 2) : ℚ) / 2) ^ 5⌋

end

end A059860.P12644674840125041565

namespace A059860

/-- `floor((lcm(n+1, n+2)/2)^5)` -/
def P12644674840125041565.Spec : Prop :=
  ∀ n, P12644674840125041565.a n = A059860 (n + 1)

end A059860

/-! ## A059860.P16391228416560007678

`record[((n-1)*(n-2)/2)^5]`
-/

namespace A059860.P16391228416560007678
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n : ℤ) - 1 : ℚ) * (((n : ℤ) - 2 : ℚ) / 2)) ^ 5

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A059860.P16391228416560007678

namespace A059860

/-- `record[((n-1)*(n-2)/2)^5]` -/
def P16391228416560007678.Spec : Prop :=
  ∀ n, P16391228416560007678.a n = (A059860 (n + 1) : ℚ)

end A059860

/-! ## A059860.P4745513053092547816

`∑[n+1]²²*C(n+2, 2)`
-/

namespace A059860.P4745513053092547816
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2) ^ 2 * Nat.choose (n + 2) 2

end

end A059860.P4745513053092547816

namespace A059860

/-- `∑[n+1]²²*C(n+2, 2)` -/
def P4745513053092547816.Spec : Prop :=
  ∀ n, (P4745513053092547816.a n : ℤ) = A059860 (n + 1)

end A059860

/-! ## A059860.P4677144774884823881

`a(n-1)/(n/(n+2))^5` with `a(0)=1`
-/

namespace A059860.P4677144774884823881
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) / ((n : ℚ) / (n + 2 : ℚ)) ^ 5

end

end A059860.P4677144774884823881

namespace A059860

/-- `a(n-1)/(n/(n+2))^5` -/
def P4677144774884823881.Spec : Prop :=
  ∀ n, P4677144774884823881.a n = (A059860 (n + 1) : ℚ)

end A059860

/-! ## A059860.P12988299367233474983

`∑[n+1]²²*∑[a(n-1)+1]` with `a(0)=1`
-/

namespace A059860.P12988299367233474983
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f2 =>
  f2 (n - 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2) ^ 2 * (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A059860.P12988299367233474983

namespace A059860

/-- `∑[n+1]²²*∑[a(n-1)+1]` -/
def P12988299367233474983.Spec : Prop :=
  ∀ n, (P12988299367233474983.a n : ℤ) = A059860 (n + 1)

end A059860

/-! ## A059860.P3671861798470127602

`∑[A393642(n+1)]`
-/

namespace A059860.P3671861798470127602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393642 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A059860.P3671861798470127602

namespace A059860

/-- `∑[A393642(n+1)]` -/
def P3671861798470127602.Spec : Prop :=
  ∀ n, P3671861798470127602.a n = A059860 (n + 1)

end A059860

/-! ## A059860.P10679034593697568613

`∑[n+1]*A059977(n)`
-/

namespace A059860.P10679034593697568613
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A059977 n

end

end A059860.P10679034593697568613

namespace A059860

/-- `∑[n+1]*A059977(n)` -/
def P10679034593697568613.Spec : Prop :=
  ∀ n, P10679034593697568613.a n = A059860 (n + 1)

end A059860

/-! ## A059860.P15429352602633948258

`A059978(n)/∑[n+1]`
-/

namespace A059860.P15429352602633948258
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059978 n : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ)

end

end A059860.P15429352602633948258

namespace A059860

/-- `A059978(n)/∑[n+1]` -/
def P15429352602633948258.Spec : Prop :=
  ∀ n, P15429352602633948258.a n = (A059860 (n + 1) : ℚ)

end A059860

/-! ## A059860.P12627449972826426452

`∑[n+1]²*A059827(n+1)`
-/

namespace A059860.P12627449972826426452
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) * A059827 (n + 1)

end

end A059860.P12627449972826426452

namespace A059860

/-- `∑[n+1]²*A059827(n+1)` -/
def P12627449972826426452.Spec : Prop :=
  ∀ n, P12627449972826426452.a n = A059860 (n + 1)

end A059860

/-! ## A059860.P9723166079965858100

`A059979(n+1)/∑[n+1]²`
-/

namespace A059860.P9723166079965858100
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059979 (n + 1) : ℚ) / (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℚ)

end

end A059860.P9723166079965858100

namespace A059860

/-- `A059979(n+1)/∑[n+1]²` -/
def P9723166079965858100.Spec : Prop :=
  ∀ n, P9723166079965858100.a n = (A059860 (n + 1) : ℚ)

end A059860

/-! ## A059860.P14294812201752018544

`A059980(n+1)/A059827(n+1)`
-/

namespace A059860.P14294812201752018544
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059980 (n + 1) : ℚ) / (A059827 (n + 1) : ℚ)

end

end A059860.P14294812201752018544

namespace A059860

/-- `A059980(n+1)/A059827(n+1)` -/
def P14294812201752018544.Spec : Prop :=
  ∀ n, P14294812201752018544.a n = (A059860 (n + 1) : ℚ)

end A059860

/-! ## A059860.P12127274416600693279

`A059827(n+1)/A059977(n)*A059978(n)`
-/

namespace A059860.P12127274416600693279
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059827 (n + 1) : ℚ) / (A059977 n : ℚ) * (A059978 n : ℚ)

end

end A059860.P12127274416600693279

namespace A059860

/-- `A059827(n+1)/A059977(n)*A059978(n)` -/
def P12127274416600693279.Spec : Prop :=
  ∀ n, P12127274416600693279.a n = (A059860 (n + 1) : ℚ)

end A059860

/-! ## A059860.P17022400715073277883

`A059977(n)*A059980(n+1)/A059979(n+1)`
-/

namespace A059860.P17022400715073277883
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059977 n * A059980 (n + 1) : ℚ) / (A059979 (n + 1) : ℚ)

end

end A059860.P17022400715073277883

namespace A059860

/-- `A059977(n)*A059980(n+1)/A059979(n+1)` -/
def P17022400715073277883.Spec : Prop :=
  ∀ n, P17022400715073277883.a n = (A059860 (n + 1) : ℚ)

end A059860

/-!
# A059861: a(n) = Product_{i=2..n} (prime(i) - 2).

The programs for A059861, the canonical program `A059861.P7495224884849833739` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A059861 has offset 1).

The definition of A059861 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A059861.P7495224884849833739

`a(n-1)*(A000040(n+1)-2)` with `a(0)=1`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A059861

/-- `a(n-1)*(A000040(n+1)-2)` -/
def P7495224884849833739.Spec : Prop :=
  ∀ n, P7495224884849833739.a n = A059861 (n + 1)

theorem P7495224884849833739.correct : P7495224884849833739.Spec := by
  intro n
  simp only [A059861, Nat.add_sub_cancel]

end A059861

/-! ## A059861.P5450733764943508589

`a(n-1)*A268174(n)` with `a(0)=1`
-/

namespace A059861.P5450733764943508589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A268174 n

end

end A059861.P5450733764943508589

namespace A059861

/-- `a(n-1)*A268174(n)` -/
def P5450733764943508589.Spec : Prop :=
  ∀ n, P5450733764943508589.a n = A059861 (n + 1)

end A059861

/-! ## A059861.P4720305524721901200

`∏[or(1, A000040(n+1)-2)]`
-/

namespace A059861.P4720305524721901200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A000040 (n + 1) - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A059861.P4720305524721901200

namespace A059861

/-- `∏[or(1, A000040(n+1)-2)]` -/
def P4720305524721901200.Spec : Prop :=
  ∀ n, P4720305524721901200.a n = A059861 (n + 1)

end A059861

/-! ## A059861.P5557166457015984316

`a(n-1)*A040976(n+1)` with `a(0)=1`
-/

namespace A059861.P5557166457015984316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A040976 (n + 1)

end

end A059861.P5557166457015984316

namespace A059861

/-- `a(n-1)*A040976(n+1)` -/
def P5557166457015984316.Spec : Prop :=
  ∀ n, P5557166457015984316.a n = A059861 (n + 1)

end A059861

/-! ## A059861.P13309772960634021653

`∏[or(1, record[A006530(n+2)])-2]`
-/

namespace A059861.P13309772960634021653
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A059861.P13309772960634021653

namespace A059861

/-- `∏[or(1, record[A006530(n+2)])-2]` -/
def P13309772960634021653.Spec : Prop :=
  ∀ n, P13309772960634021653.a n = A059861 (n + 1)

end A059861

/-! ## A059861.P1050280387949981626

`a(n-1)*eq[1, A001222(n+2)]` with `a(0)=1`
-/

namespace A059861.P1050280387949981626
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A059861.P1050280387949981626

namespace A059861

/-- `a(n-1)*eq[1, A001222(n+2)]` -/
def P1050280387949981626.Spec : Prop :=
  ∀ n, (P1050280387949981626.a n : ℤ) = A059861 (n + 1)

end A059861

/-! ## A059861.P3554348610320176370

`a(n-1)*eq[2, A000005(n+2)]` with `a(0)=1`
-/

namespace A059861.P3554348610320176370
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A059861.P3554348610320176370

namespace A059861

/-- `a(n-1)*eq[2, A000005(n+2)]` -/
def P3554348610320176370.Spec : Prop :=
  ∀ n, (P3554348610320176370.a n : ℤ) = A059861 (n + 1)

end A059861

/-! ## A059861.P1951161099705915723

`a(n-1)*eq[n+3, A000203(n+2)]` with `a(0)=1`
-/

namespace A059861.P1951161099705915723
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A059861.P1951161099705915723

namespace A059861

/-- `a(n-1)*eq[n+3, A000203(n+2)]` -/
def P1951161099705915723.Spec : Prop :=
  ∀ n, (P1951161099705915723.a n : ℤ) = A059861 (n + 1)

end A059861

/-! ## A059861.P649910069249666709

`∏[A002472(A000040(n+1))]`
-/

namespace A059861.P649910069249666709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002472 (A000040 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A059861.P649910069249666709

namespace A059861

/-- `∏[A002472(A000040(n+1))]` -/
def P649910069249666709.Spec : Prop :=
  ∀ n, P649910069249666709.a n = A059861 (n + 1)

end A059861

/-! ## A059861.P2818236235040046365

`∏[A028310(A000040(n+1)-2)]`
-/

namespace A059861.P2818236235040046365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A000040 (n + 1) - 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A059861.P2818236235040046365

namespace A059861

/-- `∏[A028310(A000040(n+1)-2)]` -/
def P2818236235040046365.Spec : Prop :=
  ∀ n, P2818236235040046365.a n = A059861 (n + 1)

end A059861

/-!
# A059862: a(n) = Product_{i=3..n} (prime(i) - 3).

The programs for A059862, there is no canonical definition to state claims against.
-/

/-! ## A059862.P17524917780221304581

`a(n-1)*A154115(n)` with `a(0)=1, a(1)=1`
-/

namespace A059862.P17524917780221304581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) * A154115 n

end

end A059862.P17524917780221304581

/-! ## A059862.P5970921466014243672

`a(n-1)*A086801(n+1)` with `a(0)=1, a(1)=1`
-/

namespace A059862.P5970921466014243672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) * A086801 (n + 1)

end

end A059862.P5970921466014243672

/-! ## A059862.P860118976334355309

`(A000040(n+1)-3)*a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A059862.P860118976334355309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  (A000040 (n + 1) - 3) * a (n - 1)

end

end A059862.P860118976334355309

/-! ## A059862.P6316397891691571630

`(record[A000010(n+1)]-2)*a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A059862.P6316397891691571630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - 2) * a (n - 1)

end

end A059862.P6316397891691571630

/-! ## A059862.P6334853865209811336

`(record[A006530(n+2)]-3)*a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A059862.P6334853865209811336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - 3) * a (n - 1)

end

end A059862.P6334853865209811336

/-! ## A059862.P477944843315006877

`(eq[2, A000005(n+2)]-1)*a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A059862.P477944843315006877
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  ((SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - 1) * a (n - 1)

end

end A059862.P477944843315006877

/-! ## A059862.P16568316217124312286

`a(n-1)*eq[n-1, (n-1)*A001222(n+3)]` with `a(0)=1`
-/

namespace A059862.P16568316217124312286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * A001222 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A059862.P16568316217124312286

/-! ## A059862.P9710068374969118479

`∏[A319534(A000040(n+1))]`
-/

namespace A059862.P9710068374969118479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319534 (A000040 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A059862.P9710068374969118479

/-! ## A059862.P6179857342935779536

`∏[A076363(2*A000040(n+1))]`
-/

namespace A059862.P6179857342935779536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076363 (2 * A000040 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A059862.P6179857342935779536

/-! ## A059862.P17469187126880781044

`A059861(n+1)-A271564(n+1)/2`
-/

namespace A059862.P17469187126880781044
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059861 (n + 1) : ℚ) - (A271564 (n + 1) : ℚ) / 2

end

end A059862.P17469187126880781044

/-!
# A059863: a(n) = Product_{i=3..n} (prime(i) - 4).

The programs for A059863, there is no canonical definition to state claims against.
-/

/-! ## A059863.P17412192116668987025

`a(n-1)*A172367(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A059863.P17412192116668987025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) * A172367 (n - 1)

end

end A059863.P17412192116668987025

/-! ## A059863.P3784957618247757679

`(A040976(n+1)-2)*a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A059863.P3784957618247757679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  (A040976 (n + 1) - 2) * a (n - 1)

end

end A059863.P3784957618247757679

/-! ## A059863.P6798296727106270854

`(A000040(n+1)-4)*a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A059863.P6798296727106270854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  (A000040 (n + 1) - 4) * a (n - 1)

end

end A059863.P6798296727106270854

/-! ## A059863.P1687743329600571383

`abs(A008864(n+1)-5)*a(n-1)` with `a(0)=1`
-/

namespace A059863.P1687743329600571383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  |A008864 (n + 1) - 5| * a (n - 1)

end

end A059863.P1687743329600571383

/-! ## A059863.P15702369066581990586

`abs(record[A000010(n+1)]-3)*a(n-1)` with `a(0)=1`
-/

namespace A059863.P15702369066581990586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  |f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - 3| * a (n - 1)

end

end A059863.P15702369066581990586

/-! ## A059863.P2322191506253953443

`∏[A319516(p?[A004442(n)])]`
-/

namespace A059863.P2322191506253953443
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319516 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A059863.P2322191506253953443

/-! ## A059863.P12574558887398022464

`∏[A319516(p?[A014681(n)])]`
-/

namespace A059863.P12574558887398022464
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319516 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A059863.P12574558887398022464

/-! ## A059863.P14597462082515624304

`∏[A214920(A000040(n+1))]`
-/

namespace A059863.P14597462082515624304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214920 (A000040 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A059863.P14597462082515624304

/-!
# A059864: a(n) = Product_{i=4..n} (prime(i) - 5).

The programs for A059864, there is no canonical definition to state claims against.
-/

/-! ## A059864.P11431245999688045310

`(A040976(n+1)-3)*a(n-1)` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A059864.P11431245999688045310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  (A040976 (n + 1) - 3) * a (n - 1)

end

end A059864.P11431245999688045310

/-! ## A059864.P8066391405487192185

`(A000040(n+1)-5)*a(n-1)` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A059864.P8066391405487192185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  (A000040 (n + 1) - 5) * a (n - 1)

end

end A059864.P8066391405487192185

/-! ## A059864.P3045406443863733818

`∏[A321029(p?[A004442(n)])]`
-/

namespace A059864.P3045406443863733818
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321029 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A059864.P3045406443863733818

/-! ## A059864.P17510779170156960653

`∏[A321029(p?[A014681(n)])]`
-/

namespace A059864.P17510779170156960653
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321029 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A059864.P17510779170156960653

/-! ## A059864.P8410213522204366377

`∏[A321029(A000040(n+1))]`
-/

namespace A059864.P8410213522204366377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321029 (A000040 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A059864.P8410213522204366377

/-! ## A059864.P12797388479282861106

`∏[A321029(p?[A000037(n+1)])]`
-/

namespace A059864.P12797388479282861106
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000037 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321029 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A059864.P12797388479282861106

/-! ## A059864.P12741084428582292523

`∏[A321029(p?[A066246(n+1)])]`
-/

namespace A059864.P12741084428582292523
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066246 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321029 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A059864.P12741084428582292523

/-!
# A059865: a(n) = Product_{i=4..n} (prime(i) - 6).

The programs for A059865, there is no canonical definition to state claims against.
-/

/-! ## A059865.P12216214044242429308

`abs(6-A000040(n+1))*a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A059865.P12216214044242429308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  |6 - A000040 (n + 1)| * a (n - 1)

end

end A059865.P12216214044242429308

/-! ## A059865.P814929115352338939

`abs(5-eq[1, A001222(n+1)])*a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A059865.P814929115352338939
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  |5 - (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ)| * a (n - 1)

end

end A059865.P814929115352338939

/-! ## A059865.P11923350378094164699

`∏[A321030(Δ[A007504(n)])]`
-/

namespace A059865.P11923350378094164699
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321030 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A059865.P11923350378094164699

/-! ## A059865.P9967318022154995984

`∏[A321030(record[A110560(n)])]`
-/

namespace A059865.P9967318022154995984
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110560 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321030 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A059865.P9967318022154995984

/-! ## A059865.P4103525952805399964

`∏[A321030(p?[A259153(n)])]`
-/

namespace A059865.P4103525952805399964
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259153 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321030 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A059865.P4103525952805399964

/-! ## A059865.P2372211563233574472

`∏[A321030(A000040(n+1))]`
-/

namespace A059865.P2372211563233574472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321030 (A000040 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A059865.P2372211563233574472

/-! ## A059865.P12693362654044938280

`∏[A321030(A182986(n+2))]`
-/

namespace A059865.P12693362654044938280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321030 (A182986 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A059865.P12693362654044938280

/-! ## A059865.P13550690605122650463

`∏[A321030(p?[A084937(n+1)])]`
-/

namespace A059865.P13550690605122650463
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084937 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321030 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A059865.P13550690605122650463

/-! ## A059865.P11793452374333321746

`∏[A321030(p?[A086130(n+1)])]`
-/

namespace A059865.P11793452374333321746
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086130 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321030 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A059865.P11793452374333321746

/-! ## A059865.P17131433684937925859

`∏[A321030(∏{p}[A001750(n+1), #])]`
-/

namespace A059865.P17131433684937925859
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001750 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321030 (∏ p ∈ Nat.primeFactors (f2 n).natAbs, p)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A059865.P17131433684937925859

/-!
# A059866: Period of the continued fraction for sqrt(2^n-1).

The programs for A059866, there is no canonical definition to state claims against.
-/

/-! ## A059866.P14148090961758694246

`A003285(A000225(n+2))`
-/

namespace A059866.P14148090961758694246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003285 (A000225 (n + 2)).toNat

end

end A059866.P14148090961758694246

/-! ## A059866.P3287899097435797559

`A146326(2^(n+2)-1)`
-/

namespace A059866.P3287899097435797559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146326 (2 ^ (n + 2) - 1)

end

end A059866.P3287899097435797559

/-! ## A059866.P1776481129943745537

`A277164(n)+A146326(A000225(n+2))`
-/

namespace A059866.P1776481129943745537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277164 n + A146326 (A000225 (n + 2)).toNat

end

end A059866.P1776481129943745537

/-! ## A059866.P14132603656311472388

`A146326(A000225(n+2))%A205475(n+1)`
-/

namespace A059866.P14132603656311472388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A146326 (A000225 (n + 2)).toNat) (A205475 (n + 1))

end

end A059866.P14132603656311472388

/-! ## A059866.P3803921328218085133

`A003285(2^(n+2)-1)`
-/

namespace A059866.P3803921328218085133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003285 (2 ^ (n + 2) - 1)

end

end A059866.P3803921328218085133

/-!
# A059867: Number of irreducible representations of the symmetric group S_n that have odd degree.

The programs for A059867, the canonical program `A059867.P12640614250635796407` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A059867 has offset 1).

The definition of A059867 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A073642, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A059867.P12640614250635796407

`2^A073642(n+1)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A059867

/-- `2^A073642(n+1)` -/
def P12640614250635796407.Spec : Prop :=
  ∀ n, P12640614250635796407.a n = (A059867 (n + 1) : ℚ)

end A059867

/-! ## A059867.P8537332789711510249

`A029930(ceil(n/2))`
-/

namespace A059867.P8537332789711510249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029930 ⌈(n : ℚ) / 2⌉.toNat

end

end A059867.P8537332789711510249

namespace A059867

/-- `A029930(ceil(n/2))` -/
def P8537332789711510249.Spec : Prop :=
  ∀ n, P8537332789711510249.a n = A059867 (n + 1)

end A059867

/-! ## A059867.P9868002087307407996

`A000079(A073642(n+1))`
-/

namespace A059867.P9868002087307407996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A073642 (n + 1)).toNat

end

end A059867.P9868002087307407996

namespace A059867

/-- `A000079(A073642(n+1))` -/
def P9868002087307407996.Spec : Prop :=
  ∀ n, P9868002087307407996.a n = A059867 (n + 1)

end A059867

/-! ## A059867.P16399786926793749565

`A011782(A073642(n+1)+1)`
-/

namespace A059867.P16399786926793749565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A073642 (n + 1) + 1).toNat

end

end A059867.P16399786926793749565

namespace A059867

/-- `A011782(A073642(n+1)+1)` -/
def P16399786926793749565.Spec : Prop :=
  ∀ n, P16399786926793749565.a n = A059867 (n + 1)

end A059867

/-! ## A059867.P6250537861378063351

`A131577(A029931(n+1)-A048881(n))`
-/

namespace A059867.P6250537861378063351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 (A029931 (n + 1) - A048881 n).toNat

end

end A059867.P6250537861378063351

namespace A059867

/-- `A131577(A029931(n+1)-A048881(n))` -/
def P6250537861378063351.Spec : Prop :=
  ∀ n, P6250537861378063351.a n = A059867 (n + 1)

end A059867

/-! ## A059867.P14900389150902089159

`A000079(A029931(n+1)-A000120(n+1))`
-/

namespace A059867.P14900389150902089159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A029931 (n + 1) - A000120 (n + 1)).toNat

end

end A059867.P14900389150902089159

namespace A059867

/-- `A000079(A029931(n+1)-A000120(n+1))` -/
def P14900389150902089159.Spec : Prop :=
  ∀ n, P14900389150902089159.a n = A059867 (n + 1)

end A059867

/-! ## A059867.P1096955805303841343

`A000041(n+1)-A060368(n+1)`
-/

namespace A059867.P1096955805303841343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) - A060368 (n + 1)

end

end A059867.P1096955805303841343

namespace A059867

/-- `A000041(n+1)-A060368(n+1)` -/
def P1096955805303841343.Spec : Prop :=
  ∀ n, P1096955805303841343.a n = A059867 (n + 1)

end A059867

/-! ## A059867.P380367030508679108

`A060840(n+1)+A061569(n+1)-A060368(n+1)`
-/

namespace A059867.P380367030508679108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060840 (n + 1) + (A061569 (n + 1) - A060368 (n + 1))

end

end A059867.P380367030508679108

namespace A059867

/-- `A060840(n+1)+A061569(n+1)-A060368(n+1)` -/
def P380367030508679108.Spec : Prop :=
  ∀ n, P380367030508679108.a n = A059867 (n + 1)

end A059867

/-! ## A059867.P16858311683309398622

`A000079(∑{digits}[A086068(n+1), #])`
-/

namespace A059867.P16858311683309398622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086068 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A059867.P16858311683309398622

namespace A059867

/-- `A000079(∑{digits}[A086068(n+1), #])` -/
def P16858311683309398622.Spec : Prop :=
  ∀ n, P16858311683309398622.a n = A059867 (n + 1)

end A059867

/-! ## A059867.P5618138152172358569

`∏{p}[A019565(n+1), A048675(#)]`
-/

namespace A059867.P5618138152172358569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A048675 p

end

end A059867.P5618138152172358569

namespace A059867

/-- `∏{p}[A019565(n+1), A048675(#)]` -/
def P5618138152172358569.Spec : Prop :=
  ∀ n, P5618138152172358569.a n = A059867 (n + 1)

end A059867

/-! ## A059867.P13520022223769147102

`∏{p}[A019565(n+1), A087207(#)]`
-/

namespace A059867.P13520022223769147102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A087207 p

end

end A059867.P13520022223769147102

namespace A059867

/-- `∏{p}[A019565(n+1), A087207(#)]` -/
def P13520022223769147102.Spec : Prop :=
  ∀ n, P13520022223769147102.a n = A059867 (n + 1)

end A059867

/-! ## A059867.P17424822095246955742

`∏{p}[A019565(n+1), A292382(#)]`
-/

namespace A059867.P17424822095246955742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A292382 p

end

end A059867.P17424822095246955742

namespace A059867

/-- `∏{p}[A019565(n+1), A292382(#)]` -/
def P17424822095246955742.Spec : Prop :=
  ∀ n, P17424822095246955742.a n = A059867 (n + 1)

end A059867

/-! ## A059867.P14880678073752618815

`∏{p}[A019565(n+1), A297108(#)]`
-/

namespace A059867.P14880678073752618815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A297108 p

end

end A059867.P14880678073752618815

namespace A059867

/-- `∏{p}[A019565(n+1), A297108(#)]` -/
def P14880678073752618815.Spec : Prop :=
  ∀ n, P14880678073752618815.a n = A059867 (n + 1)

end A059867

/-!
# A059870: Numbers n such that there exist no palindromic octagonal numbers of length n.

The programs for A059870, there is no canonical definition to state claims against.
-/

/-! ## A059870.P2478405419659661441

`lt[1, n*A011585(A009878(n))]`
-/

namespace A059870.P2478405419659661441
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A011585 (A009878 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A059870.P2478405419659661441

/-! ## A059870.P13565038097947606799

`eq[A011585(A009878(n)), A141044(n)]`
-/

namespace A059870.P13565038097947606799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011585 (A009878 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141044 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A059870.P13565038097947606799

/-! ## A059870.P9367188116122301215

`lt[A000122(n), A011585(A009878(n))]`
-/

namespace A059870.P9367188116122301215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011585 (A009878 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A059870.P9367188116122301215

/-! ## A059870.P8926623741385235693

`eq[A000122(n), A341840(A093031(n+1))]`
-/

namespace A059870.P8926623741385235693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341840 (A093031 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A059870.P8926623741385235693

/-! ## A059870.P11045306029814724963

`eq[A204010(n), A341840(A093031(n+1))]`
-/

namespace A059870.P11045306029814724963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204010 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341840 (A093031 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A059870.P11045306029814724963

/-!
# A059873: The lexicographically earliest sequence of binary encodings of solutions satisfying the equation given in A059871.

The programs for A059873, there is no canonical definition to state claims against.
-/

/-! ## A059873.P13859249841681723420

`A059872(A178715(n+1)%A201648(n+1))`
-/

namespace A059873.P13859249841681723420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059872 (Int.tmod (A178715 (n + 1)) (A201648 (n + 1))).toNat

end

end A059873.P13859249841681723420

/-! ## A059873.P14751785310398773138

`A059872(A178715(n+1))%A053908(3*n+2)`
-/

namespace A059873.P14751785310398773138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A059872 (A178715 (n + 1)).toNat) (A053908 (3 * n + 2))

end

end A059873.P14751785310398773138

/-!
# A059875: The lexicographically last sequence of binary encodings of solutions satisfying the equation given in A059871.

The programs for A059875, there is no canonical definition to state claims against.
-/

/-! ## A059875.P9790988549067438158

`A059872(∑[A059871(n+1)])`
-/

namespace A059875.P9790988549067438158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059871 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059872 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A059875.P9790988549067438158

/-! ## A059875.P7963889534418631592

`A284425(n)-A178691(A006720(n))`
-/

namespace A059875.P7963889534418631592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284425 n - A178691 (A006720 n).toNat

end

end A059875.P7963889534418631592

/-! ## A059875.P1489923594516869024

`A284425(n)-A031346(A355235(n))`
-/

namespace A059875.P1489923594516869024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284425 n - A031346 (A355235 n).toNat

end

end A059875.P1489923594516869024

/-!
# A059877: Those n for which the absolute value of A059876[n] is prime.

The programs for A059877, there is no canonical definition to state claims against.
-/

/-! ## A059877.P9177181096785058641

`lt[0, A284905(A000041(n+4))]`
-/

namespace A059877.P9177181096785058641
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284905 (A000041 (n + 4)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A059877.P9177181096785058641

/-! ## A059877.P16225635444567077427

`lt[A353636(A007318(n)+1), A212121(n+1)]`
-/

namespace A059877.P16225635444567077427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353636 (A007318 n + 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212121 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A059877.P16225635444567077427

/-! ## A059877.P3916564738967618764

`eq[A000035(2*n+1), A284905(A000041(n+4))]`
-/

namespace A059877.P3916564738967618764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284905 (A000041 (n + 4)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A059877.P3916564738967618764

/-! ## A059877.P8065070869039168446

`eq[A267871(2*(n+1)), A284905(A000041(n+4))]`
-/

namespace A059877.P8065070869039168446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267871 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284905 (A000041 (n + 4)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A059877.P8065070869039168446

/-!
# A059878: a(n) = bin_prime_sum(fibonacci(A001651[n])), where fibonacci(A001651[n]) is A014437[n].

The programs for A059878, there is no canonical definition to state claims against.
-/

/-! ## A059878.P14999112813870805028

`A059876(A014437(n+1))`
-/

namespace A059878.P14999112813870805028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059876 (A014437 (n + 1)).toNat

end

end A059878.P14999112813870805028

/-! ## A059878.P418779569569883552

`A059876(record[∏{p}[A014437(n), #]])`
-/

namespace A059878.P418779569569883552
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014437 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059876 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A059878.P418779569569883552

/-! ## A059878.P13239613666782034770

`record[A099652(n+1)%A051755(n+2)]`
-/

namespace A059878.P13239613666782034770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A099652 (n + 1)) (A051755 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A059878.P13239613666782034770

/-! ## A059878.P11502634733483415862

`∑[A000005(A335308(n)+A177534(n))]`
-/

namespace A059878.P11502634733483415862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A335308 n + A177534 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A059878.P11502634733483415862

/-! ## A059878.P7195220512301609901

`A297243(A256774(2*(n+1))+1)+A005105(n+1)`
-/

namespace A059878.P7195220512301609901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297243 (A256774 (2 * (n + 1)) + 1).toNat + A005105 (n + 1)

end

end A059878.P7195220512301609901

/-!
# A059879: Those n for which the absolute value of A059878[n] is prime.

The programs for A059879, there is no canonical definition to state claims against.
-/

/-! ## A059879.P17411166597970627048

`eq[1, ∑{e}[A059878(n), #]]+1`
-/

namespace A059879.P17411166597970627048
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059878 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n).natAbs, Nat.factorization (f3 n).natAbs p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A059879.P17411166597970627048

/-!
# A059880: Positions of negative terms in A059876.

The programs for A059880, there is no canonical definition to state claims against.
-/

/-! ## A059880.P852970753494807749

`lt[A059876(n+1), 0]+1`
-/

namespace A059880.P852970753494807749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059876 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A059880.P852970753494807749

/-! ## A059880.P12188845836079235328

`lt[A059876(A028310(n)), 0]`
-/

namespace A059880.P12188845836079235328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059876 (A028310 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A059880.P12188845836079235328

/-! ## A059880.P16995194593539374403

`A020725(lt[A059876(n+1), 0])`
-/

namespace A059880.P16995194593539374403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059876 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A059880.P16995194593539374403

/-! ## A059880.P17535383881915268743

`lt[A059876(A000007(n)+n), 0]`
-/

namespace A059880.P17535383881915268743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059876 (A000007 n + (n : ℤ)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A059880.P17535383881915268743

/-! ## A059880.P12581824764108537092

`lt[A059876(A233583(n+1)), 0]`
-/

namespace A059880.P12581824764108537092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059876 (A233583 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A059880.P12581824764108537092

/-!
# A059882: As upper right triangle: ascending wiggly sums to n where first term is k (sums in which terms alternately increase and decrease; zigzag partitions).

The programs for A059882, there is no canonical definition to state claims against.
-/

/-! ## A059882.P1225638830773287919

`A116799(∏{p}[3*n+n+5, #]+1)`
-/

namespace A059882.P1225638830773287919
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n + (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116799 (∏ p ∈ Nat.primeFactors (f1 n), p + 1)

end

end A059882.P1225638830773287919

/-! ## A059882.P2968513838650455362

`A102669(ceil(ratio[A184294(n+1)]))`
-/

namespace A059882.P2968513838650455362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184294 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102669 ⌈(f1 (n + 1) : ℚ) / (f1 n : ℚ)⌉.toNat

end

end A059882.P2968513838650455362

/-! ## A059882.P9981111780764215021

`A001221(round(ratio[A282996(n+1)])!)`
-/

namespace A059882.P9981111780764215021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282996 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Nat.factorial (SequenceMachineLib.roundAway ((f1 (n + 1) : ℚ) / (f1 n : ℚ))).toNat)

end

end A059882.P9981111780764215021

/-! ## A059882.P13810933187473741030

`11%A006530(round(ratio[A282996(n+1)])!)`
-/

namespace A059882.P13810933187473741030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282996 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 11 (A006530 (Nat.factorial (SequenceMachineLib.roundAway ((f1 (n + 1) : ℚ) / (f1 n : ℚ))).toNat))

end

end A059882.P13810933187473741030

/-! ## A059882.P7707762777696628641

`A319081(A123163(n+1))`
-/

namespace A059882.P7707762777696628641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319081 (A123163 (n + 1)).toNat

end

end A059882.P7707762777696628641

/-!
# A059883: As upper right triangle: descending wiggly sums to n where first term is k (sums in which terms alternately decrease and increase; zagzig partitions).

The programs for A059883, there is no canonical definition to state claims against.
-/

/-! ## A059883.P1207999410847901494

`A046923(A289978(n)²)%3`
-/

namespace A059883.P1207999410847901494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A046923 (A289978 n ^ 2).toNat) 3

end

end A059883.P1207999410847901494

/-! ## A059883.P15160241804623302478

`∑{e}[A159285(A106234(n+1)), #]`
-/

namespace A059883.P15160241804623302478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159285 (A106234 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A059883.P15160241804623302478

/-! ## A059883.P3035492576202424631

`lcm(A005136(A300756(n)), A015716(n+1))`
-/

namespace A059883.P3035492576202424631
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A005136 (A300756 n).toNat) (A015716 (n + 1))

end

end A059883.P3035492576202424631

/-! ## A059883.P12628285073233888456

`A342592(A336203(n+1))`
-/

namespace A059883.P12628285073233888456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342592 (A336203 (n + 1)).toNat

end

end A059883.P12628285073233888456

/-! ## A059883.P11577205097496110012

`A101666(A394436(n))`
-/

namespace A059883.P11577205097496110012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101666 (A394436 n).toNat

end

end A059883.P11577205097496110012

/-!
# A059884: Prime factorization of n encoded by recursively interleaving bits of successive prime exponents.

The programs for A059884, there is no canonical definition to state claims against.
-/

/-! ## A059884.P9886854476733181004

`A248623(A049907(n+1))*A344537(n+1)`
-/

namespace A059884.P9886854476733181004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248623 (A049907 (n + 1)).toNat * A344537 (n + 1)

end

end A059884.P9886854476733181004

/-! ## A059884.P10436482749451724703

`and(A075173(n+1), A310393(A024998(n+1)))`
-/

namespace A059884.P10436482749451724703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A075173 (n + 1)) (A310393 (A024998 (n + 1)).toNat)

end

end A059884.P10436482749451724703

/-! ## A059884.P15434949269292979643

`A052331(A032555(n+1))*A295859(A131818(n+1))`
-/

namespace A059884.P15434949269292979643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052331 (A032555 (n + 1)).toNat * A295859 (A131818 (n + 1)).toNat

end

end A059884.P15434949269292979643

/-!
# A059885: a(n) = |{m : multiplicative order of 3 mod m = n}|.

The programs for A059885, there is no canonical definition to state claims against.
-/

/-! ## A059885.P6657001138596877014

`A212957(∑[n+3]+1)`
-/

namespace A059885.P6657001138596877014
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212957 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A059885.P6657001138596877014

/-! ## A059885.P6593640005344302691

`lcm(2, A212957(Δ[A008778(n)]))`
-/

namespace A059885.P6593640005344302691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A212957 (f1 (n + 1) - f1 n).toNat)

end

end A059885.P6593640005344302691

/-! ## A059885.P1481373370102316703

`and(-2, A212957(A034856(n+2)))`
-/

namespace A059885.P1481373370102316703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-2) (A212957 (A034856 (n + 2)).toNat)

end

end A059885.P1481373370102316703

/-! ## A059885.P10272616059079045457

`and(-2, A212957(A052905(n)+3))`
-/

namespace A059885.P10272616059079045457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-2) (A212957 (A052905 n + 3).toNat)

end

end A059885.P10272616059079045457

/-! ## A059885.P15494886097628160877

`∑{d}[A212957(A034856(n+2)), A000010(#)]`
-/

namespace A059885.P15494886097628160877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212957 (A034856 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A059885.P15494886097628160877

/-! ## A059885.P10671617448966096274

`A212957(Δ[A008778(n)])%A000041(n+3)`
-/

namespace A059885.P10671617448966096274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A212957 (f1 (n + 1) - f1 n).toNat) (A000041 (n + 3))

end

end A059885.P10671617448966096274

/-! ## A059885.P10597999854368017299

`A212957(A034856(n+2))%A000041(n+3)`
-/

namespace A059885.P10597999854368017299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A212957 (A034856 (n + 2)).toNat) (A000041 (n + 3))

end

end A059885.P10597999854368017299

/-! ## A059885.P14026491810077428391

`A212957(A052905(n)+3)%A000041(n+7)`
-/

namespace A059885.P14026491810077428391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A212957 (A052905 n + 3).toNat) (A000041 (n + 7))

end

end A059885.P14026491810077428391

/-! ## A059885.P8554547624273911358

`A007318(C(2, n))*A212957(A034856(n+2))`
-/

namespace A059885.P8554547624273911358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A212957 (A034856 (n + 2)).toNat

end

end A059885.P8554547624273911358

/-! ## A059885.P7335787313816782956

`A014963(32*n+14)*A212957(Δ[A008778(n)])`
-/

namespace A059885.P7335787313816782956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (32 * n + 14) * A212957 (f1 (n + 1) - f1 n).toNat

end

end A059885.P7335787313816782956

/-!
# A059886: a(n) = |{m : multiplicative order of 4 mod m=n}|.

The programs for A059886, there is no canonical definition to state claims against.
-/

/-! ## A059886.P15874950949000768924

`A212957(∑[n+4]+3)`
-/

namespace A059886.P15874950949000768924
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212957 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A059886.P15874950949000768924

/-! ## A059886.P7920711975186940897

`lcm(2, A212957(A027379(n+2)))`
-/

namespace A059886.P7920711975186940897
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A212957 (A027379 (n + 2)).toNat)

end

end A059886.P7920711975186940897

/-! ## A059886.P7641131961923200269

`and(-2, A212957(Δ[A006416(n+2)]))`
-/

namespace A059886.P7641131961923200269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006416 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-2) (A212957 (f1 (n + 1) - f1 n).toNat)

end

end A059886.P7641131961923200269

/-! ## A059886.P8531658784050027860

`(A212957(A056000(n)+7)^(1/2))²`
-/

namespace A059886.P8531658784050027860
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((A212957 (A056000 n + 7).toNat : ℝ) ^ ((1 : ℚ) / 2 : ℝ)) ^ 2

end

end A059886.P8531658784050027860

/-! ## A059886.P10942736870858213782

`A212957(A055998(n+2))+a(n-1)%2` with `a(0)=2`
-/

namespace A059886.P10942736870858213782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A212957 (A055998 (n + 2)).toNat + Int.tmod (a (n - 1)) 2

end

end A059886.P10942736870858213782

/-! ## A059886.P13452735033482528497

`gcd(A000038(n), A212957(A027379(n+2)))`
-/

namespace A059886.P13452735033482528497
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A212957 (A027379 (n + 2)).toNat)

end

end A059886.P13452735033482528497

/-! ## A059886.P10883598891438316501

`A212957(A055998(n+2))%A000041(n+3)`
-/

namespace A059886.P10883598891438316501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A212957 (A055998 (n + 2)).toNat) (A000041 (n + 3))

end

end A059886.P10883598891438316501

/-! ## A059886.P12405412626769328697

`A212957(Δ[A006416(n+2)])%A000041(n+7)`
-/

namespace A059886.P12405412626769328697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006416 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A212957 (f1 (n + 1) - f1 n).toNat) (A000041 (n + 7))

end

end A059886.P12405412626769328697

/-! ## A059886.P6050558580897186344

`A007318(val(n+2, 6))*A212957(A055998(n+2))`
-/

namespace A059886.P6050558580897186344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.valuation (n + 2) 6) * A212957 (A055998 (n + 2)).toNat

end

end A059886.P6050558580897186344

/-! ## A059886.P6968303996301963299

`A212957(Δ[A006416(n+2)])+A016378(2*n+1)`
-/

namespace A059886.P6968303996301963299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006416 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212957 (f1 (n + 1) - f1 n).toNat + A016378 (2 * n + 1)

end

end A059886.P6968303996301963299

/-!
# A059887: a(n) = |{m : multiplicative order of 5 mod m=n}|.

The programs for A059887, there is no canonical definition to state claims against.
-/

/-! ## A059887.P5665906788743134968

`A212957(∑[n+5]+6)`
-/

namespace A059887.P5665906788743134968
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212957 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A059887.P5665906788743134968

/-! ## A059887.P7416893599492327152

`or(char[1], A212957(A046691(n+3)))`
-/

namespace A059887.P7416893599492327152
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A212957 (A046691 (n + 3)).toNat)

end

end A059887.P7416893599492327152

/-! ## A059887.P13967746195751059583

`abs(1-A212957(Δ[A023545(n+1)]))+1`
-/

namespace A059887.P13967746195751059583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A212957 (f1 (n + 1) - f1 n).toNat| + 1

end

end A059887.P13967746195751059583

/-! ## A059887.P180827953439590718

`char[A127291(n)]*A212957(A046691(n+3))`
-/

namespace A059887.P180827953439590718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127291 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A212957 (A046691 (n + 3)).toNat

end

end A059887.P180827953439590718

/-! ## A059887.P2727145437149965941

`A001492(2*n)*A212957(A046691(n+3))`
-/

namespace A059887.P2727145437149965941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001492 (2 * n) * A212957 (A046691 (n + 3)).toNat

end

end A059887.P2727145437149965941

/-! ## A059887.P16264253187198850928

`A007318(C(2, n))*A212957(A046691(n+3))`
-/

namespace A059887.P16264253187198850928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A212957 (A046691 (n + 3)).toNat

end

end A059887.P16264253187198850928

/-! ## A059887.P10981984748459273243

`A212957(Δ[A023545(n+1)])+A000007(n+1)`
-/

namespace A059887.P10981984748459273243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212957 (f1 (n + 1) - f1 n).toNat + A000007 (n + 1)

end

end A059887.P10981984748459273243

/-! ## A059887.P88262581251467133

`A212957(Δ[A023545(n+1)])+A000038(n+1)`
-/

namespace A059887.P88262581251467133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212957 (f1 (n + 1) - f1 n).toNat + A000038 (n + 1)

end

end A059887.P88262581251467133

/-! ## A059887.P14558619436457521400

`A212957(Δ[A023545(n+1)])+A008683(20*(n+1))`
-/

namespace A059887.P14558619436457521400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212957 (f1 (n + 1) - f1 n).toNat + A008683 (20 * (n + 1))

end

end A059887.P14558619436457521400

/-!
# A059888: a(n) = |{m : multiplicative order of 6 mod m=n}|.

The programs for A059888, there is no canonical definition to state claims against.
-/

/-! ## A059888.P8995017879744865128

`∑{d}[n+1, A008683(#)*A366621((n+1)/#)]`
-/

namespace A059888.P8995017879744865128
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A366621 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A059888.P8995017879744865128

/-! ## A059888.P9473069662990691252

`A212957(∑[n+6]+10)`
-/

namespace A059888.P9473069662990691252
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212957 (∑ j ∈ Finset.range (n + 1), f1 j + 10)

end

end A059888.P9473069662990691252

/-! ## A059888.P13935413104506679401

`lcm(2, A212957(A052905(n+3)))`
-/

namespace A059888.P13935413104506679401
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A212957 (A052905 (n + 3)).toNat)

end

end A059888.P13935413104506679401

/-! ## A059888.P10809804054911625386

`char[A329333(n)]*A212957(A052905(n+3))`
-/

namespace A059888.P10809804054911625386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329333 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A212957 (A052905 (n + 3)).toNat

end

end A059888.P10809804054911625386

/-! ## A059888.P4166880299147612189

`A212957(A052905(n+3))%A272075(n+1)`
-/

namespace A059888.P4166880299147612189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A212957 (A052905 (n + 3)).toNat) (A272075 (n + 1))

end

end A059888.P4166880299147612189

/-! ## A059888.P7118819273572411684

`A212957(A052905(n+3))+C(3, A141759(n))`
-/

namespace A059888.P7118819273572411684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212957 (A052905 (n + 3)).toNat + (Nat.choose 3 (A141759 n).toNat : ℤ)

end

end A059888.P7118819273572411684

/-! ## A059888.P6162282971970186401

`abs((1-A010673(n))*A212957(A052905(n+3)))`
-/

namespace A059888.P6162282971970186401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(1 - A010673 n) * A212957 (A052905 (n + 3)).toNat|

end

end A059888.P6162282971970186401

/-! ## A059888.P10350450819503875112

`A212957(A052905(n+3))+A108322(2*(n+1))`
-/

namespace A059888.P10350450819503875112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212957 (A052905 (n + 3)).toNat + A108322 (2 * (n + 1))

end

end A059888.P10350450819503875112

/-! ## A059888.P18317060948993845760

`A212957(A052905(n+3))+A166926(3*(n+1))`
-/

namespace A059888.P18317060948993845760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212957 (A052905 (n + 3)).toNat + A166926 (3 * (n + 1))

end

end A059888.P18317060948993845760

/-!
# A059889: a(n) = |{m : multiplicative order of 7 mod m=n}|.

The programs for A059889, there is no canonical definition to state claims against.
-/

/-! ## A059889.P15676107857708004333

`A212957(A055999(n+4))`
-/

namespace A059889.P15676107857708004333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212957 (A055999 (n + 4)).toNat

end

end A059889.P15676107857708004333

/-! ## A059889.P6790116397859899417

`A212957(A056121(n)+22)`
-/

namespace A059889.P6790116397859899417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212957 (A056121 n + 22).toNat

end

end A059889.P6790116397859899417

/-! ## A059889.P6518814102601799451

`A212957(eq[4, A219347(n)])`
-/

namespace A059889.P6518814102601799451
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212957 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A059889.P6518814102601799451

/-! ## A059889.P13749604392089876388

`A212957(eq[6, A193592(n)])`
-/

namespace A059889.P13749604392089876388
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212957 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A059889.P13749604392089876388

/-! ## A059889.P10771807203021876867

`A212957(Δ[A023551(n+2)])`
-/

namespace A059889.P10771807203021876867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212957 (f1 (n + 1) - f1 n).toNat

end

end A059889.P10771807203021876867

/-! ## A059889.P13852182361283479795

`A212957(Δ[A026054(n+4)])`
-/

namespace A059889.P13852182361283479795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026054 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212957 (f1 (n + 1) - f1 n).toNat

end

end A059889.P13852182361283479795

/-! ## A059889.P12780530042973837953

`A212957(A027379(n+5)-3)`
-/

namespace A059889.P12780530042973837953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212957 (A027379 (n + 5) - 3).toNat

end

end A059889.P12780530042973837953

/-! ## A059889.P44826601394889043

`A212957(A000096(n+6)-5)`
-/

namespace A059889.P44826601394889043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212957 (A000096 (n + 6) - 5).toNat

end

end A059889.P44826601394889043

/-! ## A059889.P16921017063220029997

`A212957(A000217(n+7)-6)`
-/

namespace A059889.P16921017063220029997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212957 (A000217 (n + 7) - 6).toNat

end

end A059889.P16921017063220029997

/-! ## A059889.P14240104733981729777

`A212957(A000124(n+7)-7)`
-/

namespace A059889.P14240104733981729777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212957 (A000124 (n + 7) - 7).toNat

end

end A059889.P14240104733981729777

/-!
# A059890: a(n) = |{m : multiplicative order of 8 mod m = n}|.

The programs for A059890, there is no canonical definition to state claims against.
-/

/-! ## A059890.P10287755543213330407

`A212957(eq[5, A219347(n)])`
-/

namespace A059890.P10287755543213330407
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212957 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A059890.P10287755543213330407

/-! ## A059890.P198847994095712388

`A212957(eq[7, A193592(n)])`
-/

namespace A059890.P198847994095712388
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212957 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A059890.P198847994095712388

/-! ## A059890.P6532517621020521367

`A212957(A155212(n+4)+1)`
-/

namespace A059890.P6532517621020521367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212957 (A155212 (n + 4) + 1).toNat

end

end A059890.P6532517621020521367

/-! ## A059890.P1906861772745110597

`A212957(A052905(n+5)-2)`
-/

namespace A059890.P1906861772745110597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212957 (A052905 (n + 5) - 2).toNat

end

end A059890.P1906861772745110597

/-! ## A059890.P18022802906569086508

`A212957(A046691(n+6)-3)`
-/

namespace A059890.P18022802906569086508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212957 (A046691 (n + 6) - 3).toNat

end

end A059890.P18022802906569086508

/-! ## A059890.P10062472813666389213

`A212957(A000217(n+8)-7)`
-/

namespace A059890.P10062472813666389213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212957 (A000217 (n + 8) - 7).toNat

end

end A059890.P10062472813666389213

/-! ## A059890.P10712309928462824623

`A212957(A000124(n+8)-8)`
-/

namespace A059890.P10712309928462824623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212957 (A000124 (n + 8) - 8).toNat

end

end A059890.P10712309928462824623

/-! ## A059890.P12749636381942971026

`A212957(n+2+A000096(n+6))`
-/

namespace A059890.P12749636381942971026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212957 ((n + 2 : ℤ) + A000096 (n + 6)).toNat

end

end A059890.P12749636381942971026

/-! ## A059890.P798633766508833700

`A212957(Δ[A026046(n+6)]-∑[n])`
-/

namespace A059890.P798633766508833700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026046 (n + 6)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212957 (f1 (n + 1) - f1 n - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)).toNat

end

end A059890.P798633766508833700

/-! ## A059890.P17854211745413391054

`A212957(or(1, 2*n)+A000217(n+6)+7)`
-/

namespace A059890.P17854211745413391054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212957 ((Nat.lor 1 (2 * n) : ℤ) + (A000217 (n + 6) + 7)).toNat

end

end A059890.P17854211745413391054

/-!
# A059891: a(n) = |{m : multiplicative order of 9 mod m = n}|.

The programs for A059891, there is no canonical definition to state claims against.
-/

/-! ## A059891.P1017626397496938285

`A212957(A155212(n+5))`
-/

namespace A059891.P1017626397496938285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212957 (A155212 (n + 5)).toNat

end

end A059891.P1017626397496938285

/-! ## A059891.P16252237261574706494

`A212957(eq[6, A219347(n)])`
-/

namespace A059891.P16252237261574706494
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212957 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A059891.P16252237261574706494

/-! ## A059891.P10210268390578599161

`A212957(eq[8, A193592(n)])`
-/

namespace A059891.P10210268390578599161
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212957 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A059891.P10210268390578599161

/-! ## A059891.P12844566943463931037

`A212957(A000096(n+8)-7)`
-/

namespace A059891.P12844566943463931037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212957 (A000096 (n + 8) - 7).toNat

end

end A059891.P12844566943463931037

/-! ## A059891.P5574700640156357282

`A212957(A000217(n+9)-8)`
-/

namespace A059891.P5574700640156357282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212957 (A000217 (n + 9) - 8).toNat

end

end A059891.P5574700640156357282

/-!
# A059892: a(n) = |{m : multiplicative order of 10 mod m is equal to n}|.

The programs for A059892, there is no canonical definition to state claims against.
-/

/-! ## A059892.P322691706775663345

`∑{d}[n+1, A008683(#)*A070528((n+1)/#)]`
-/

namespace A059892.P322691706775663345
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A070528 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A059892.P322691706775663345

/-! ## A059892.P5296910792832860

`A212957(eq[8, A219347(n)])`
-/

namespace A059892.P5296910792832860
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212957 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A059892.P5296910792832860

/-! ## A059892.P7545303982161498447

`A212957(eq[9, A193592(n)])`
-/

namespace A059892.P7545303982161498447
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212957 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A059892.P7545303982161498447

/-! ## A059892.P11187001935950360521

`A212957(A155212(n+6)-1)`
-/

namespace A059892.P11187001935950360521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212957 (A155212 (n + 6) - 1).toNat

end

end A059892.P11187001935950360521

/-! ## A059892.P17908234535325526719

`A212957(A052905(n+7)-4)`
-/

namespace A059892.P17908234535325526719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212957 (A052905 (n + 7) - 4).toNat

end

end A059892.P17908234535325526719

/-! ## A059892.P18404718491389675328

`A212957(A046691(n+8)-5)`
-/

namespace A059892.P18404718491389675328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212957 (A046691 (n + 8) - 5).toNat

end

end A059892.P18404718491389675328

/-! ## A059892.P5087277714618937312

`A212957(A000096(n+9)-8)`
-/

namespace A059892.P5087277714618937312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212957 (A000096 (n + 9) - 8).toNat

end

end A059892.P5087277714618937312

/-! ## A059892.P16731452334555869649

`A212957(A000124(n+10)-10)`
-/

namespace A059892.P16731452334555869649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212957 (A000124 (n + 10) - 10).toNat

end

end A059892.P16731452334555869649

/-! ## A059892.P15294546603480640530

`A212957(n+2+A000096(n+8))`
-/

namespace A059892.P15294546603480640530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212957 ((n + 2 : ℤ) + A000096 (n + 8)).toNat

end

end A059892.P15294546603480640530

/-! ## A059892.P17652504446004096492

`A212957(A000217(n+9)+n+1)`
-/

namespace A059892.P17652504446004096492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212957 (A000217 (n + 9) + (n + 1 : ℤ)).toNat

end

end A059892.P17652504446004096492

/-!
# A059893: Reverse the order of all but the most significant bit in binary expansion of n: if n = 1ab..yz then a(n) = 1zy..ba.

The programs for A059893, the canonical program `A059893.P16024368139843891037` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A059893 has offset 1).

The definition of A059893 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A030109, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A059893.P16024368139843891037

`A030109(n+1)+A053644(n+1)`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A059893

/-- `A030109(n+1)+A053644(n+1)` -/
def P16024368139843891037.Spec : Prop :=
  ∀ n, P16024368139843891037.a n = A059893 (n + 1)

theorem P16024368139843891037.correct : P16024368139843891037.Spec := by
  intro n
  simp only [A059893, Nat.add_sub_cancel]

end A059893

/-! ## A059893.P16523172349964782449

`floor(A145341(n+2)/2)`
-/

namespace A059893.P16523172349964782449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A145341 (n + 2) : ℚ) / 2⌋

end

end A059893.P16523172349964782449

namespace A059893

/-- `floor(A145341(n+2)/2)` -/
def P16523172349964782449.Spec : Prop :=
  ∀ n, P16523172349964782449.a n = A059893 (n + 1)

end A059893

/-! ## A059893.P9127794416834593504

`∑[Δ[A145341(n+1)]/2]`
-/

namespace A059893.P9127794416834593504
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145341 (n + 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A059893.P9127794416834593504

namespace A059893

/-- `∑[Δ[A145341(n+1)]/2]` -/
def P9127794416834593504.Spec : Prop :=
  ∀ n, P9127794416834593504.a n = (A059893 (n + 1) : ℚ)

end A059893

/-! ## A059893.P12622812681730541

`A057889(A139708(n+1))`
-/

namespace A059893.P12622812681730541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057889 (A139708 (n + 1)).toNat

end

end A059893.P12622812681730541

namespace A059893

/-- `A057889(A139708(n+1))` -/
def P12622812681730541.Spec : Prop :=
  ∀ n, P12622812681730541.a n = A059893 (n + 1)

end A059893

/-! ## A059893.P8794857207589817614

`A092323(n+1)+A049773(n+1)`
-/

namespace A059893.P8794857207589817614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092323 (n + 1) + A049773 (n + 1)

end

end A059893.P8794857207589817614

namespace A059893

/-- `A092323(n+1)+A049773(n+1)` -/
def P8794857207589817614.Spec : Prop :=
  ∀ n, P8794857207589817614.a n = A059893 (n + 1)

end A059893

/-! ## A059893.P8519907424422394930

`xor(A059894(n+1), A092323(n+1))`
-/

namespace A059893.P8519907424422394930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A059894 (n + 1)) (A092323 (n + 1))

end

end A059893.P8519907424422394930

namespace A059893

/-- `xor(A059894(n+1), A092323(n+1))` -/
def P8519907424422394930.Spec : Prop :=
  ∀ n, P8519907424422394930.a n = A059893 (n + 1)

end A059893

/-! ## A059893.P6129698304680891092

`(A030101(n+1)+A003817(n+1))/2`
-/

namespace A059893.P6129698304680891092
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A030101 (n + 1) + A003817 (n + 1) : ℚ) / 2

end

end A059893.P6129698304680891092

namespace A059893

/-- `(A030101(n+1)+A003817(n+1))/2` -/
def P6129698304680891092.Spec : Prop :=
  ∀ n, P6129698304680891092.a n = (A059893 (n + 1) : ℚ)

end A059893

/-! ## A059893.P2867981065107574265

`A030101(n+1)+A036044(n+1)/2`
-/

namespace A059893.P2867981065107574265
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A030101 (n + 1) : ℚ) + (A036044 (n + 1) : ℚ) / 2

end

end A059893.P2867981065107574265

namespace A059893

/-- `A030101(n+1)+A036044(n+1)/2` -/
def P2867981065107574265.Spec : Prop :=
  ∀ n, P2867981065107574265.a n = (A059893 (n + 1) : ℚ)

end A059893

/-! ## A059893.P1808724662852446103

`A030101(n+1)+A053644(n+1)-A049773(n+1)`
-/

namespace A059893.P1808724662852446103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (n + 1) + (A053644 (n + 1) - A049773 (n + 1))

end

end A059893.P1808724662852446103

namespace A059893

/-- `A030101(n+1)+A053644(n+1)-A049773(n+1)` -/
def P1808724662852446103.Spec : Prop :=
  ∀ n, P1808724662852446103.a n = A059893 (n + 1)

end A059893

/-! ## A059893.P12959533598162962645

`A145342(n+2)-1`
-/

namespace A059893.P12959533598162962645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145342 (n + 2) - 1

end

end A059893.P12959533598162962645

namespace A059893

/-- `A145342(n+2)-1` -/
def P12959533598162962645.Spec : Prop :=
  ∀ n, P12959533598162962645.a n = A059893 (n + 1)

end A059893

/-! ## A059893.P7274371253118206140

`A003188(A341916(n+1))`
-/

namespace A059893.P7274371253118206140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 (A341916 (n + 1)).toNat

end

end A059893.P7274371253118206140

namespace A059893

/-- `A003188(A341916(n+1))` -/
def P7274371253118206140.Spec : Prop :=
  ∀ n, P7274371253118206140.a n = A059893 (n + 1)

end A059893

/-! ## A059893.P13055528769339438913

`A163807(A080541(n+1))`
-/

namespace A059893.P13055528769339438913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163807 (A080541 (n + 1)).toNat

end

end A059893.P13055528769339438913

namespace A059893

/-- `A163807(A080541(n+1))` -/
def P13055528769339438913.Spec : Prop :=
  ∀ n, P13055528769339438913.a n = A059893 (n + 1)

end A059893

/-! ## A059893.P9239349415746744444

`A139706(A057889(n+1))`
-/

namespace A059893.P9239349415746744444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139706 (A057889 (n + 1)).toNat

end

end A059893.P9239349415746744444

namespace A059893

/-- `A139706(A057889(n+1))` -/
def P9239349415746744444.Spec : Prop :=
  ∀ n, P9239349415746744444.a n = A059893 (n + 1)

end A059893

/-! ## A059893.P16832330961373534686

`A080542(A163807(n+1))`
-/

namespace A059893.P16832330961373534686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080542 (A163807 (n + 1)).toNat

end

end A059893.P16832330961373534686

namespace A059893

/-- `A080542(A163807(n+1))` -/
def P16832330961373534686.Spec : Prop :=
  ∀ n, P16832330961373534686.a n = A059893 (n + 1)

end A059893

/-! ## A059893.P329825505408285673

`A333777(A333692(n+1))`
-/

namespace A059893.P329825505408285673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333777 (A333692 (n + 1)).toNat

end

end A059893.P329825505408285673

namespace A059893

/-- `A333777(A333692(n+1))` -/
def P329825505408285673.Spec : Prop :=
  ∀ n, P329825505408285673.a n = A059893 (n + 1)

end A059893

/-! ## A059893.P11041819938188121655

`A333693(A333776(n+1))`
-/

namespace A059893.P11041819938188121655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333693 (A333776 (n + 1)).toNat

end

end A059893.P11041819938188121655

namespace A059893

/-- `A333693(A333776(n+1))` -/
def P11041819938188121655.Spec : Prop :=
  ∀ n, P11041819938188121655.a n = A059893 (n + 1)

end A059893

/-! ## A059893.P12576429599613055809

`A325642(A145341(n+2)-1)`
-/

namespace A059893.P12576429599613055809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325642 (A145341 (n + 2) - 1).toNat

end

end A059893.P12576429599613055809

namespace A059893

/-- `A325642(A145341(n+2)-1)` -/
def P12576429599613055809.Spec : Prop :=
  ∀ n, P12576429599613055809.a n = A059893 (n + 1)

end A059893

/-! ## A059893.P12328368384056291314

`A333776(A367307(A333777(n+1)))`
-/

namespace A059893.P12328368384056291314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333776 (A367307 (A333777 (n + 1)).toNat).toNat

end

end A059893.P12328368384056291314

namespace A059893

/-- `A333776(A367307(A333777(n+1)))` -/
def P12328368384056291314.Spec : Prop :=
  ∀ n, P12328368384056291314.a n = A059893 (n + 1)

end A059893

/-! ## A059893.P13977530957856771418

`floor(A057889(2*n+3)/2)`
-/

namespace A059893.P13977530957856771418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A057889 (2 * n + 3) : ℚ) / 2⌋

end

end A059893.P13977530957856771418

namespace A059893

/-- `floor(A057889(2*n+3)/2)` -/
def P13977530957856771418.Spec : Prop :=
  ∀ n, P13977530957856771418.a n = A059893 (n + 1)

end A059893

/-! ## A059893.P17035142221602379414

`∑[Δ[A057889(2*n+1)]/2]`
-/

namespace A059893.P17035142221602379414
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057889 (2 * n + 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A059893.P17035142221602379414

namespace A059893

/-- `∑[Δ[A057889(2*n+1)]/2]` -/
def P17035142221602379414.Spec : Prop :=
  ∀ n, P17035142221602379414.a n = (A059893 (n + 1) : ℚ)

end A059893

/-!
# A059894: Complement and reverse the order of all but the most significant bit in binary expansion of n. n = 1ab..yz -> 1ZY..BA = a(n), where A = 1-a, B = 1-b, ... .

The programs for A059894, the canonical program `A059894.P11516963689868861872` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A059894 has offset 1).

The definition of A059894 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A059894.P11516963689868861872

`A049773(n+1)+A036044(n+1)`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A059894

/-- `A049773(n+1)+A036044(n+1)` -/
def P11516963689868861872.Spec : Prop :=
  ∀ n, P11516963689868861872.a n = A059894 (n + 1)

theorem P11516963689868861872.correct : P11516963689868861872.Spec := by
  intro n
  simp only [A059894, Nat.add_sub_cancel]

end A059894

/-! ## A059894.P511679695171804961

`A003817(n+1)-A030109(n+1)`
-/

namespace A059894.P511679695171804961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003817 (n + 1) - A030109 (n + 1)

end

end A059894.P511679695171804961

namespace A059894

/-- `A003817(n+1)-A030109(n+1)` -/
def P511679695171804961.Spec : Prop :=
  ∀ n, P511679695171804961.a n = A059894 (n + 1)

end A059894

/-! ## A059894.P15602905965695400511

`xor(A059893(n+1), A092323(n+1))`
-/

namespace A059894.P15602905965695400511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A059893 (n + 1)) (A092323 (n + 1))

end

end A059894.P15602905965695400511

namespace A059894

/-- `xor(A059893(n+1), A092323(n+1))` -/
def P15602905965695400511.Spec : Prop :=
  ∀ n, P15602905965695400511.a n = A059894 (n + 1)

end A059894

/-! ## A059894.P11585790339287232102

`A030109(n+1)+A036044(n+1)+1`
-/

namespace A059894.P11585790339287232102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030109 (n + 1) + (A036044 (n + 1) + 1)

end

end A059894.P11585790339287232102

namespace A059894

/-- `A030109(n+1)+A036044(n+1)+1` -/
def P11585790339287232102.Spec : Prop :=
  ∀ n, P11585790339287232102.a n = A059894 (n + 1)

theorem P11585790339287232102.correct : P11585790339287232102.Spec := by
  intro n
  simp only [A059894, Nat.add_sub_cancel, A059894.P11585790339287232102.a, A059894.P11516963689868861872.a, A030109, A030109.P14199666590729784855.a, A036044, A036044.P16648927426293672306.a, A049773, A049773.P11655978421668356086.a, A030101, A030101.P16184294017372777612.a, A035327, A035327.P258997810375859489.a, A055945, A055945.P5963763732554067333.a, A038572, A038572.P9289042872142352092.a, A053644, A053644.P1707366427427647095.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A059894

/-! ## A059894.P4067570895389707405

`A053644(n+1)+A036044(n+1)/2`
-/

namespace A059894.P4067570895389707405
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053644 (n + 1) : ℚ) + (A036044 (n + 1) : ℚ) / 2

end

end A059894.P4067570895389707405

namespace A059894

/-- `A053644(n+1)+A036044(n+1)/2` -/
def P4067570895389707405.Spec : Prop :=
  ∀ n, P4067570895389707405.a n = (A059894 (n + 1) : ℚ)

end A059894

/-! ## A059894.P10498326826037108958

`A080079(n+1)-A030109(n+1)+n`
-/

namespace A059894.P10498326826037108958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080079 (n + 1) - A030109 (n + 1) + (n : ℤ)

end

end A059894.P10498326826037108958

namespace A059894

/-- `A080079(n+1)-A030109(n+1)+n` -/
def P10498326826037108958.Spec : Prop :=
  ∀ n, P10498326826037108958.a n = A059894 (n + 1)

end A059894

/-! ## A059894.P9423375286427943641

`(A345401(n+1)-1)/2`
-/

namespace A059894.P9423375286427943641
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A345401 (n + 1) - 1 : ℚ) / 2

end

end A059894.P9423375286427943641

namespace A059894

/-- `(A345401(n+1)-1)/2` -/
def P9423375286427943641.Spec : Prop :=
  ∀ n, P9423375286427943641.a n = (A059894 (n + 1) : ℚ)

end A059894

/-! ## A059894.P2725948044709722603

`A062383(n+1)-A049773(n+1)`
-/

namespace A059894.P2725948044709722603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062383 (n + 1) - A049773 (n + 1)

end

end A059894.P2725948044709722603

namespace A059894

/-- `A062383(n+1)-A049773(n+1)` -/
def P2725948044709722603.Spec : Prop :=
  ∀ n, P2725948044709722603.a n = A059894 (n + 1)

end A059894

/-! ## A059894.P5259092832262753982

`A054429(A059893(n+1))`
-/

namespace A059894.P5259092832262753982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054429 (A059893 (n + 1)).toNat

end

end A059894.P5259092832262753982

namespace A059894

/-- `A054429(A059893(n+1))` -/
def P5259092832262753982.Spec : Prop :=
  ∀ n, P5259092832262753982.a n = A059894 (n + 1)

end A059894

/-! ## A059894.P10205612022120551033

`A341916(A231550(n+1))`
-/

namespace A059894.P10205612022120551033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341916 (A231550 (n + 1)).toNat

end

end A059894.P10205612022120551033

namespace A059894

/-- `A341916(A231550(n+1))` -/
def P10205612022120551033.Spec : Prop :=
  ∀ n, P10205612022120551033.a n = A059894 (n + 1)

end A059894

/-! ## A059894.P16890051816432141806

`A054429(A145342(n+2)-1)`
-/

namespace A059894.P16890051816432141806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054429 (A145342 (n + 2) - 1).toNat

end

end A059894.P16890051816432141806

namespace A059894

/-- `A054429(A145342(n+2)-1)` -/
def P16890051816432141806.Spec : Prop :=
  ∀ n, P16890051816432141806.a n = A059894 (n + 1)

end A059894

/-! ## A059894.P11861318880476397054

`A054429((A145341(n+2)-1)/2)`
-/

namespace A059894.P11861318880476397054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054429 (SequenceMachineLib.roundAway ((A145341 (n + 2) - 1 : ℚ) / 2)).toNat

end

end A059894.P11861318880476397054

namespace A059894

/-- `A054429((A145341(n+2)-1)/2)` -/
def P11861318880476397054.Spec : Prop :=
  ∀ n, P11861318880476397054.a n = A059894 (n + 1)

end A059894

/-! ## A059894.P13059312447112440967

`A341915(A180200(n+1))`
-/

namespace A059894.P13059312447112440967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341915 (A180200 (n + 1)).toNat

end

end A059894.P13059312447112440967

namespace A059894

/-- `A341915(A180200(n+1))` -/
def P13059312447112440967.Spec : Prop :=
  ∀ n, P13059312447112440967.a n = A059894 (n + 1)

end A059894

/-! ## A059894.P12659210555003672046

`A180201(A341916(n+1))`
-/

namespace A059894.P12659210555003672046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180201 (A341916 (n + 1)).toNat

end

end A059894.P12659210555003672046

namespace A059894

/-- `A180201(A341916(n+1))` -/
def P12659210555003672046.Spec : Prop :=
  ∀ n, P12659210555003672046.a n = A059894 (n + 1)

end A059894

/-! ## A059894.P16447322860672675985

`A231551(A341915(n+1))`
-/

namespace A059894.P16447322860672675985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231551 (A341915 (n + 1)).toNat

end

end A059894.P16447322860672675985

namespace A059894

/-- `A231551(A341915(n+1))` -/
def P16447322860672675985.Spec : Prop :=
  ∀ n, P16447322860672675985.a n = A059894 (n + 1)

end A059894

/-! ## A059894.P4147936279271002266

`A059893(A337909(n+2)-1)`
-/

namespace A059894.P4147936279271002266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059893 (A337909 (n + 2) - 1).toNat

end

end A059894.P4147936279271002266

namespace A059894

/-- `A059893(A337909(n+2)-1)` -/
def P4147936279271002266.Spec : Prop :=
  ∀ n, P4147936279271002266.a n = A059894 (n + 1)

end A059894

/-! ## A059894.P334457836757061137

`A335858(A284460(2*(n+1))/2)`
-/

namespace A059894.P334457836757061137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335858 (SequenceMachineLib.roundAway ((A284460 (2 * (n + 1)) : ℚ) / 2)).toNat

end

end A059894.P334457836757061137

namespace A059894

/-- `A335858(A284460(2*(n+1))/2)` -/
def P334457836757061137.Spec : Prop :=
  ∀ n, P334457836757061137.a n = A059894 (n + 1)

end A059894

/-! ## A059894.P4873763591861214924

`A059893(A280510(n+2)-(n+2))`
-/

namespace A059894.P4873763591861214924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059893 (A280510 (n + 2) - (n + 2 : ℤ)).toNat

end

end A059894.P4873763591861214924

namespace A059894

/-- `A059893(A280510(n+2)-(n+2))` -/
def P4873763591861214924.Spec : Prop :=
  ∀ n, P4873763591861214924.a n = A059894 (n + 1)

end A059894

/-! ## A059894.P12415373095383762704

`A054429(floor(A057889(2*n+3)/2))`
-/

namespace A059894.P12415373095383762704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054429 ⌊(A057889 (2 * n + 3) : ℚ) / 2⌋.toNat

end

end A059894.P12415373095383762704

namespace A059894

/-- `A054429(floor(A057889(2*n+3)/2))` -/
def P12415373095383762704.Spec : Prop :=
  ∀ n, P12415373095383762704.a n = A059894 (n + 1)

end A059894

/-! ## A059894.P202585333090616427

`A231551(A059893(A003188(n+1)))`
-/

namespace A059894.P202585333090616427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231551 (A059893 (A003188 (n + 1)).toNat).toNat

end

end A059894.P202585333090616427

namespace A059894

/-- `A231551(A059893(A003188(n+1)))` -/
def P202585333090616427.Spec : Prop :=
  ∀ n, P202585333090616427.a n = A059894 (n + 1)

end A059894

/-!
# A059895: Table a(i,j) = product prime[k]^(Ei[k] AND Ej[k]) where Ei and Ej are the vectors of exponents in the prime factorizations of i and j; AND is the bitwise operation on binary representation of the exponents.

The programs for A059895, there is no canonical definition to state claims against.
-/

/-! ## A059895.P14954765327379018322

`A003991(n+1)/A059896(n+1)`
-/

namespace A059895.P14954765327379018322
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003991 (n + 1) : ℚ) / (A059896 (n + 1) : ℚ)

end

end A059895.P14954765327379018322

/-! ## A059895.P10803217102473991540

`A059896(n+1)/A059897(n+1)`
-/

namespace A059895.P10803217102473991540
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059896 (n + 1) : ℚ) / (A059897 (n + 1) : ℚ)

end

end A059895.P10803217102473991540

/-! ## A059895.P9165312282301583068

`sqrt(A003991(n+1)/A059897(n+1))`
-/

namespace A059895.P9165312282301583068
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((A003991 (n + 1) : ℚ) / (A059897 (n + 1) : ℚ) : ℝ)

end

end A059895.P9165312282301583068

/-! ## A059895.P3780839289254406231

`A002260(2*A003991(n+1)/A059897(n+1))`
-/

namespace A059895.P3780839289254406231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (SequenceMachineLib.roundAway (2 * ((A003991 (n + 1) : ℚ) / (A059897 (n + 1) : ℚ)))).toNat

end

end A059895.P3780839289254406231

/-! ## A059895.P1224629044590063486

`A002260(n+1)*A004736(n+1)/A059896(n+1)`
-/

namespace A059895.P1224629044590063486
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002260 (n + 1) * A004736 (n + 1) : ℚ) / (A059896 (n + 1) : ℚ)

end

end A059895.P1224629044590063486

/-! ## A059895.P7798423320463769233

`A003989(n+1)*A003990(n+1)/A059896(n+1)`
-/

namespace A059895.P7798423320463769233
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003989 (n + 1) * A003990 (n + 1) : ℚ) / (A059896 (n + 1) : ℚ)

end

end A059895.P7798423320463769233

/-! ## A059895.P4546792194801478049

`sqrt(A002260(n+1)*A004736(n+1)/A059897(n+1))`
-/

namespace A059895.P4546792194801478049
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((A002260 (n + 1) * A004736 (n + 1) : ℚ) / (A059897 (n + 1) : ℚ) : ℝ)

end

end A059895.P4546792194801478049

/-! ## A059895.P10716475846149299014

`A002260(A073675(A003991(n+1)/A059897(n+1)))`
-/

namespace A059895.P10716475846149299014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A073675 (SequenceMachineLib.roundAway ((A003991 (n + 1) : ℚ) / (A059897 (n + 1) : ℚ))).toNat).toNat

end

end A059895.P10716475846149299014

/-! ## A059895.P14744544375442811616

`gcd(n*A287957(A107980(n)), A287957(n+1))`
-/

namespace A059895.P14744544375442811616
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((n : ℤ) * A287957 (A107980 n).toNat) (A287957 (n + 1))

end

end A059895.P14744544375442811616

/-!
# A059896: The set of Fermi-Dirac factors of A(n,k) is the union of the Fermi-Dirac factors of n and k. Symmetric square array read by antidiagonals.

The programs for A059896, there is no canonical definition to state claims against.
-/

/-! ## A059896.P101819838168867118

`A059895(n+1)*A059897(n+1)`
-/

namespace A059896.P101819838168867118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059895 (n + 1) * A059897 (n + 1)

end

end A059896.P101819838168867118

/-! ## A059896.P13041725675722832499

`A003991(n+1)/A059895(n+1)`
-/

namespace A059896.P13041725675722832499
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003991 (n + 1) : ℚ) / (A059895 (n + 1) : ℚ)

end

end A059896.P13041725675722832499

/-! ## A059896.P4868381667914970954

`sqrt(A003991(n+1)*A059897(n+1))`
-/

namespace A059896.P4868381667914970954
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A003991 (n + 1) * A059897 (n + 1) : ℝ)

end

end A059896.P4868381667914970954

/-! ## A059896.P1930870723599732384

`A002260(n+1)*A004736(n+1)/A059895(n+1)`
-/

namespace A059896.P1930870723599732384
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002260 (n + 1) * A004736 (n + 1) : ℚ) / (A059895 (n + 1) : ℚ)

end

end A059896.P1930870723599732384

/-! ## A059896.P16050909274789674710

`A003989(n+1)*A003990(n+1)/A059895(n+1)`
-/

namespace A059896.P16050909274789674710
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003989 (n + 1) * A003990 (n + 1) : ℚ) / (A059895 (n + 1) : ℚ)

end

end A059896.P16050909274789674710

/-! ## A059896.P4133218709916247247

`sqrt(A002260(n+1)*A004736(n+1)*A059897(n+1))`
-/

namespace A059896.P4133218709916247247
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A002260 (n + 1) * A004736 (n + 1) * A059897 (n + 1) : ℝ)

end

end A059896.P4133218709916247247

/-! ## A059896.P1961892604923724706

`A002260(2*A003991(n+1)*A059897(n+1))`
-/

namespace A059896.P1961892604923724706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (2 * (A003991 (n + 1) * A059897 (n + 1))).toNat

end

end A059896.P1961892604923724706

/-! ## A059896.P7103046052880636996

`sqrt(A057555(2*n+1)*A181118(2*n+1)*A059897(n+1))`
-/

namespace A059896.P7103046052880636996
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A057555 (2 * n + 1) * A181118 (2 * n + 1) * A059897 (n + 1) : ℝ)

end

end A059896.P7103046052880636996

/-!
# A059897: Symmetric square array read by antidiagonals: A(n,k) is the product of all factors that occur in one, but not both, of the Fermi-Dirac factorizations of n and k.

The programs for A059897, there is no canonical definition to state claims against.
-/

/-! ## A059897.P101770123393974335

`A059896(n+1)/A059895(n+1)`
-/

namespace A059897.P101770123393974335
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059896 (n + 1) : ℚ) / (A059895 (n + 1) : ℚ)

end

end A059897.P101770123393974335

/-! ## A059897.P5554615189754320953

`A003991(n+1)/A059895(n+1)²`
-/

namespace A059897.P5554615189754320953
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003991 (n + 1) : ℚ) / (A059895 (n + 1) ^ 2 : ℚ)

end

end A059897.P5554615189754320953

/-! ## A059897.P8612875236802500486

`A059896(n+1)²/A003991(n+1)`
-/

namespace A059897.P8612875236802500486
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059896 (n + 1) ^ 2 : ℚ) / (A003991 (n + 1) : ℚ)

end

end A059897.P8612875236802500486

/-! ## A059897.P7089008100741933023

`A002260(n+1)*A004736(n+1)/A059895(n+1)²`
-/

namespace A059897.P7089008100741933023
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002260 (n + 1) * A004736 (n + 1) : ℚ) / (A059895 (n + 1) ^ 2 : ℚ)

end

end A059897.P7089008100741933023

/-! ## A059897.P7585484807123383686

`A059896(n+1)²/(A002260(n+1)*A004736(n+1))`
-/

namespace A059897.P7585484807123383686
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059896 (n + 1) ^ 2 : ℚ) / (A002260 (n + 1) * A004736 (n + 1) : ℚ)

end

end A059897.P7585484807123383686

/-! ## A059897.P6450812944165280435

`A003989(n+1)*A003990(n+1)/A059895(n+1)²`
-/

namespace A059897.P6450812944165280435
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003989 (n + 1) * A003990 (n + 1) : ℚ) / (A059895 (n + 1) ^ 2 : ℚ)

end

end A059897.P6450812944165280435

/-! ## A059897.P18012569203879422073

`A059896(n+1)²/(A003989(n+1)*A003990(n+1))`
-/

namespace A059897.P18012569203879422073
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059896 (n + 1) ^ 2 : ℚ) / (A003989 (n + 1) * A003990 (n + 1) : ℚ)

end

end A059897.P18012569203879422073

