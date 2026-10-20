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
import Seq.B000.C022
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C036
import Seq.B000.C037
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
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
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
# A134802: Concatenation of first n partition numbers of positive integers.

The programs for A134802, there is no canonical definition to state claims against.
-/

/-! ## A134802.P16124253530081142335

`A159900(n+1)+A086080(A275906(n))`
-/

namespace A134802.P16124253530081142335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159900 (n + 1) + A086080 (A275906 n).toNat

end

end A134802.P16124253530081142335

/-! ## A134802.P2728412473904172069

`or(A007814(A203854(n+1)), A159900(n+1))`
-/

namespace A134802.P2728412473904172069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A007814 (A203854 (n + 1)).toNat) (A159900 (n + 1))

end

end A134802.P2728412473904172069

/-!
# A134803: Numbers n such that the sum of all numbers of the same parity <= n is equal to the sum of numbers of the opposite parity from n+1 to n+m, where m is odd and > 1.

The programs for A134803, there is no canonical definition to state claims against.
-/

/-! ## A134803.P1025355066578741432

`A048739(or(1, n)+n)`
-/

namespace A134803.P1025355066578741432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048739 (Nat.lor 1 n + n)

end

end A134803.P1025355066578741432

/-!
# A134804: Remainder of triangular number A000217(n) modulo 9.

The programs for A134804, the canonical program `A134804.P4702204095507899748` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A134804 has offset 0).

The definition of A134804 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A134804.P4702204095507899748

`a(n-9)` with `a(0)=0, a(1)=1, a(2)=3, a(3)=6, a(4)=1, a(5)=6, a(6)=3, a(7)=1, a(8)=0`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A134804

/-- `a(n-9)` -/
def P4702204095507899748.Spec : Prop :=
  ∀ n, (P4702204095507899748.a n : ℤ) = A134804 n

theorem P4702204095507899748.correct : P4702204095507899748.Spec := by
  intro n
  simp only [A134804]

end A134804

/-!
# A134805: Denominator of Sum_{i=1..n} 1/(i^2*binomial(2*i,i)).

The programs for A134805, there is no canonical definition to state claims against.
-/

/-! ## A134805.P3565078786447893942

`A112094(n)*A158515(or(1, n))`
-/

namespace A134805.P3565078786447893942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112094 n * A158515 (Nat.lor 1 n)

end

end A134805.P3565078786447893942

/-! ## A134805.P10888909490393742501

`lcm(A112094(n), A130550(A028310(n)))`
-/

namespace A134805.P10888909490393742501
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A112094 n) (A130550 (A028310 n).toNat)

end

end A134805.P10888909490393742501

/-! ## A134805.P17858094220019093226

`A020639(A008579(n))*A130550(A028310(n))`
-/

namespace A134805.P17858094220019093226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A008579 n).toNat * A130550 (A028310 n).toNat

end

end A134805.P17858094220019093226

/-! ## A134805.P2777283399956317777

`A001227(A000040(n+1))*A130550(A028310(n))`
-/

namespace A134805.P2777283399956317777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (A000040 (n + 1)).toNat * A130550 (A028310 n).toNat

end

end A134805.P2777283399956317777

/-! ## A134805.P8737944605199944883

`A001227(A139827(n+1))*A130550(A028310(n))`
-/

namespace A134805.P8737944605199944883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (A139827 (n + 1)).toNat * A130550 (A028310 n).toNat

end

end A134805.P8737944605199944883

/-! ## A134805.P7200820857322711744

`A130550(A028310(n))*A294337(A020639(n+1))`
-/

namespace A134805.P7200820857322711744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130550 (A028310 n).toNat * A294337 (A020639 (n + 1)).toNat

end

end A134805.P7200820857322711744

/-! ## A134805.P11038700046599932499

`gcd(3, A112103(n))*A112094(n)`
-/

namespace A134805.P11038700046599932499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 3 (A112103 n) : ℤ) * A112094 n

end

end A134805.P11038700046599932499

/-!
# A134807: 

The programs for A134807, there is no canonical definition to state claims against.
-/

/-! ## A134807.P947610294872177780

`A000041(A000668(n+1))`
-/

namespace A134807.P947610294872177780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A000668 (n + 1)).toNat

end

end A134807.P947610294872177780

/-!
# A134808: Cyclops numbers.

The programs for A134808, there is no canonical definition to state claims against.
-/

/-! ## A134808.P14418187479802091897

`∩[A043489(n+1), A051022(n)]`
-/

namespace A134808.P14418187479802091897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043489 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051022 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A134808.P14418187479802091897

/-! ## A134808.P6237041038703621321

`A051022(eq[1, A055641(A051022(n))])`
-/

namespace A134808.P6237041038703621321
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055641 (A051022 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051022 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A134808.P6237041038703621321

/-! ## A134808.P6758699487809555182

`eq[A055641(A017281(n)), A215887(n)]`
-/

namespace A134808.P6758699487809555182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055641 (A017281 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215887 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A134808.P6758699487809555182

/-! ## A134808.P6945809552412347625

`record[A070565(A051022(n*A168046(n)))]`
-/

namespace A134808.P6945809552412347625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070565 (A051022 ((n : ℤ) * A168046 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A134808.P6945809552412347625

/-! ## A134808.P560497078603442356

`record[A070565(A051022(n*A168184(n)))]`
-/

namespace A134808.P560497078603442356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070565 (A051022 ((n : ℤ) * A168184 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A134808.P560497078603442356

/-! ## A134808.P7874334826647068200

`eq[A061762(A004086(n)), A061762(10*n)]`
-/

namespace A134808.P7874334826647068200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061762 (A004086 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061762 (10 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A134808.P7874334826647068200

/-! ## A134808.P8870847482897537705

`A051022(lt[A334387(n), A028310(n)])`
-/

namespace A134808.P8870847482897537705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334387 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051022 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A134808.P8870847482897537705

/-!
# A134809: Cyclops primes.

The programs for A134809, there is no canonical definition to state claims against.
-/

/-! ## A134809.P2968746189010755514

`p?[A134808(n+1)]`
-/

namespace A134809.P2968746189010755514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134808 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A134809.P2968746189010755514

/-! ## A134809.P18293195956684092524

`p?[A162199(n+1)]`
-/

namespace A134809.P18293195956684092524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162199 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A134809.P18293195956684092524

/-! ## A134809.P16351524516368209210

`record[A020639(A134808(n+2))]`
-/

namespace A134809.P16351524516368209210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A134808 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A134809.P16351524516368209210

/-! ## A134809.P5001337638765951979

`filter[A162199(n+1), A010051(#)]`
-/

namespace A134809.P5001337638765951979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162199 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A134809.P5001337638765951979

/-! ## A134809.P14091218252715879347

`∩[A000040(n+1), A134808(n+1)]`
-/

namespace A134809.P14091218252715879347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134808 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A134809.P14091218252715879347

/-! ## A134809.P8239913583859984255

`∩[A006005(n+1), A134808(n+1)]`
-/

namespace A134809.P8239913583859984255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134808 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A134809.P8239913583859984255

/-! ## A134809.P14387695557450685165

`∩[A067126(n+1), A134808(n+1)]`
-/

namespace A134809.P14387695557450685165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067126 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134808 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A134809.P14387695557450685165

/-! ## A134809.P3409280536079643144

`∩[A093515(n+1), A162199(n+1)]`
-/

namespace A134809.P3409280536079643144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093515 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162199 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A134809.P3409280536079643144

/-! ## A134809.P12005416083383323228

`∩[A134808(n+1), A161346(n+1)]`
-/

namespace A134809.P12005416083383323228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134808 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161346 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A134809.P12005416083383323228

/-! ## A134809.P12507765412425629811

`p?[record[A134808(A263131(n))]]`
-/

namespace A134809.P12507765412425629811
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134808 (A263131 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A134809.P12507765412425629811

/-! ## A134809.P17172464664686069371

`record[p?[A134808(A052938(n))]]`
-/

namespace A134809.P17172464664686069371
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134808 (A052938 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A134809.P17172464664686069371

/-! ## A134809.P18274159956744303565

`p?[A059841(n)*A134808(A052938(n))]`
-/

namespace A134809.P18274159956744303565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 n * A134808 (A052938 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A134809.P18274159956744303565

/-! ## A134809.P16606788842447269577

`∩[A111688(n+1), A162199(n+1)]`
-/

namespace A134809.P16606788842447269577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111688 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162199 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A134809.P16606788842447269577

/-!
# A134810: Giza numbers.

The programs for A134810, there is no canonical definition to state claims against.
-/

/-! ## A134810.P8632744697418593808

`∩[A207954(n+1), A343524(n+1)]`
-/

namespace A134810.P8632744697418593808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207954 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343524 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A134810.P8632744697418593808

/-! ## A134810.P9705703365707018741

`∩[A033075(n+1), A395936(n+1)]`
-/

namespace A134810.P9705703365707018741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033075 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395936 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A134810.P9705703365707018741

/-! ## A134810.P16674452315373227471

`∩[A207954(n+1), A395936(n+1)]`
-/

namespace A134810.P16674452315373227471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207954 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395936 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A134810.P16674452315373227471

/-! ## A134810.P246434846889690548

`A056525(A138141(n+1))`
-/

namespace A134810.P246434846889690548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056525 (A138141 (n + 1)).toNat

end

end A134810.P246434846889690548

/-! ## A134810.P15107155449277169458

`A056544(or(char[2], A138141(n+1)))`
-/

namespace A134810.P15107155449277169458
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056544 (Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A138141 (n + 1))).toNat

end

end A134810.P15107155449277169458

/-!
# A134811: Giza primes.

The programs for A134811, there is no canonical definition to state claims against.
-/

/-! ## A134811.P14270246323050579235

`∩[A033075(n+1), A084836(n+1)]`
-/

namespace A134811.P14270246323050579235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033075 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084836 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A134811.P14270246323050579235

/-! ## A134811.P13645812530684214408

`∩[A048398(n+1), A084836(n+1)]`
-/

namespace A134811.P13645812530684214408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048398 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084836 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A134811.P13645812530684214408

/-! ## A134811.P2709872618964132182

`∩[A084836(n+1), A207954(n+1)]`
-/

namespace A134811.P2709872618964132182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084836 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207954 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A134811.P2709872618964132182

/-! ## A134811.P16385167884697618807

`∩[A167853(n+1), A207954(n+1)]`
-/

namespace A134811.P16385167884697618807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167853 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207954 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A134811.P16385167884697618807

/-!
# A134812: a(n) = 2a(n-2) + 4a(n-3), n >= 3.

The programs for A134812, the canonical program `A134812.P5884276747294007681` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A134812 has offset 0).

The definition of A134812 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*a(n-2)+4*a(n-3)` (program `A134812.P5884276747294007681`, by `A134812.P5884276747294007681.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A134812.P5884276747294007681

`2*a(n-2)+4*a(n-3)` with `a(0)=0, a(1)=1, a(2)=-1, a(3)=1`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A134812

/-- `2*a(n-2)+4*a(n-3)` -/
def P5884276747294007681.Spec : Prop :=
  ∀ n, P5884276747294007681.a n = A134812 n

theorem P5884276747294007681.correct : P5884276747294007681.Spec := by
  intro n
  simp only [A134812]

end A134812

/-! ## A134812.P13687996844610091339

`ogf((-x+x^2+x^3)/(-1+2x^2+4x^3))`
-/

namespace A134812.P13687996844610091339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, -1, -1] [1, 0, -2, -4] n

end

end A134812.P13687996844610091339

namespace A134812

/-- `ogf((-x+x^2+x^3)/(-1+2x^2+4x^3))` -/
def P13687996844610091339.Spec : Prop :=
  ∀ n, P13687996844610091339.a n = A134812 n

end A134812

/-! ## A134812.P6358502235336238683

`A134136(n)-A038521(n)`
-/

namespace A134812.P6358502235336238683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134136 n - A038521 n

end

end A134812.P6358502235336238683

namespace A134812

/-- `A134136(n)-A038521(n)` -/
def P6358502235336238683.Spec : Prop :=
  ∀ n, P6358502235336238683.a n = A134812 n

end A134812

/-! ## A134812.P5492973997541045579

`A131577(n)-A134068(log2(A011782(n)))`
-/

namespace A134812.P5492973997541045579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 n - A134068 (SequenceMachineLib.roundAway (Real.logb 2 (A011782 n : ℝ))).toNat

end

end A134812.P5492973997541045579

namespace A134812

/-- `A131577(n)-A134068(log2(A011782(n)))` -/
def P5492973997541045579.Spec : Prop :=
  ∀ n, P5492973997541045579.a n = A134812 n

end A134812

/-! ## A134812.P16004332180983700491

`A038520(n)+A134136(n)-A131577(n)`
-/

namespace A134812.P16004332180983700491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038520 n + (A134136 n - A131577 n)

end

end A134812.P16004332180983700491

namespace A134812

/-- `A038520(n)+A134136(n)-A131577(n)` -/
def P16004332180983700491.Spec : Prop :=
  ∀ n, P16004332180983700491.a n = A134812 n

end A134812

/-! ## A134812.P14027281994440138213

`A038518(n)+A134136(n)-A038519(n+1)`
-/

namespace A134812.P14027281994440138213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038518 n + (A134136 n - A038519 (n + 1))

end

end A134812.P14027281994440138213

namespace A134812

/-- `A038518(n)+A134136(n)-A038519(n+1)` -/
def P14027281994440138213.Spec : Prop :=
  ∀ n, P14027281994440138213.a n = A134812 n

end A134812

/-! ## A134812.P4487021456363218150

`A038519(n)+A134136(n)-A038520(n+1)`
-/

namespace A134812.P4487021456363218150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038519 n + (A134136 n - A038520 (n + 1))

end

end A134812.P4487021456363218150

namespace A134812

/-- `A038519(n)+A134136(n)-A038520(n+1)` -/
def P4487021456363218150.Spec : Prop :=
  ∀ n, P4487021456363218150.a n = A134812 n

end A134812

/-! ## A134812.P3912740608826643780

`A176739(n+1)-(A038521(n)+A038519(n+1))`
-/

namespace A134812.P3912740608826643780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176739 (n + 1) - (A038521 n + A038519 (n + 1))

end

end A134812.P3912740608826643780

namespace A134812

/-- `A176739(n+1)-(A038521(n)+A038519(n+1))` -/
def P3912740608826643780.Spec : Prop :=
  ∀ n, P3912740608826643780.a n = A134812 n

end A134812

/-!
# A134813: a(n) = b(n+1)-2b(n) where b() is A134812.

The programs for A134813, the canonical program `A134813.P5657008444429093263` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A134813 has offset 0).

The definition of A134813 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 658 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A134813.P10238350414871186942

`ogf((1-x-x^2)/(1+2x+2x^2))`
-/

namespace A134813.P10238350414871186942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1, -1] [1, 2, 2] n

end

end A134813.P10238350414871186942

namespace A134813

/-- `ogf((1-x-x^2)/(1+2x+2x^2))` -/
def P10238350414871186942.Spec : Prop :=
  ∀ n, P10238350414871186942.a n = A134813 n

end A134813

/-! ## A134813.P5657008444429093263

`2*a(n-3)-a(n-1)` with `a(0)=1, a(1)=-3, a(2)=3, a(3)=0`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A134813

/-- `2*a(n-3)-a(n-1)` -/
def P5657008444429093263.Spec : Prop :=
  ∀ n, P5657008444429093263.a n = A134813 n

theorem P5657008444429093263.correct : P5657008444429093263.Spec := by
  intro n
  simp only [A134813]

end A134813

/-! ## A134813.P10486147739922751179

`a(n-3)+a(n-3)-a(n-1)` with `a(0)=1, a(1)=-3, a(2)=3, a(3)=0`
-/

namespace A134813.P10486147739922751179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, -3, 3, 0] fun n a =>
  a (n - 3) + (a (n - 3) - a (n - 1))

end

end A134813.P10486147739922751179

namespace A134813

/-- `a(n-3)+a(n-3)-a(n-1)` -/
def P10486147739922751179.Spec : Prop :=
  ∀ n, P10486147739922751179.a n = A134813 n

theorem P10486147739922751179.correct : P10486147739922751179.Spec := by
  intro n
  simp only [A134813, Nat.add_sub_cancel, A134813.P10486147739922751179.a, A134813.P5657008444429093263.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A134813

/-! ## A134813.P7519747082948172345

`floor(3/2*A108520(n))`
-/

namespace A134813.P7519747082948172345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(3 : ℚ) / 2 * (A108520 n : ℚ)⌋

end

end A134813.P7519747082948172345

namespace A134813

/-- `floor(3/2*A108520(n))` -/
def P7519747082948172345.Spec : Prop :=
  ∀ n, P7519747082948172345.a n = A134813 n

end A134813

/-! ## A134813.P10450021237283854627

`ceil(3/2*A108520(n)-A036987(2*n))`
-/

namespace A134813.P10450021237283854627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(3 : ℚ) / 2 * (A108520 n : ℚ) - (A036987 (2 * n) : ℚ)⌉

end

end A134813.P10450021237283854627

namespace A134813

/-- `ceil(3/2*A108520(n)-A036987(2*n))` -/
def P10450021237283854627.Spec : Prop :=
  ∀ n, P10450021237283854627.a n = A134813 n

end A134813

/-! ## A134813.P13242004435152504581

`(3/2*A108520(n))^A001222(A027746(n+1))`
-/

namespace A134813.P13242004435152504581
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((3 : ℚ) / 2 * (A108520 n : ℚ)) ^ (A001222 (A027746 (n + 1)).toNat : ℤ)

end

end A134813.P13242004435152504581

namespace A134813

/-- `(3/2*A108520(n))^A001222(A027746(n+1))` -/
def P13242004435152504581.Spec : Prop :=
  ∀ n, P13242004435152504581.a n = (A134813 n : ℚ)

end A134813

/-! ## A134813.P5317066668016452484

`Δ[A134812(n)]-A134812(n)`
-/

namespace A134813.P5317066668016452484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134812 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A134812 n

end

end A134813.P5317066668016452484

namespace A134813

/-- `Δ[A134812(n)]-A134812(n)` -/
def P5317066668016452484.Spec : Prop :=
  ∀ n, P5317066668016452484.a n = A134813 n

end A134813

/-! ## A134813.P1616315660848496847

`A134812(n+1)-2*A134812(n)`
-/

namespace A134813.P1616315660848496847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134812 (n + 1) - 2 * A134812 n

end

end A134813.P1616315660848496847

namespace A134813

/-- `A134812(n+1)-2*A134812(n)` -/
def P1616315660848496847.Spec : Prop :=
  ∀ n, P1616315660848496847.a n = A134813 n

end A134813

/-! ## A134813.P18321790415327532132

`A038520(n)+A078069(n)-A038518(n)`
-/

namespace A134813.P18321790415327532132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038520 n + (A078069 n - A038518 n)

end

end A134813.P18321790415327532132

namespace A134813

/-- `A038520(n)+A078069(n)-A038518(n)` -/
def P18321790415327532132.Spec : Prop :=
  ∀ n, P18321790415327532132.a n = A134813 n

end A134813

/-! ## A134813.P2189063228039842927

`A038521(n)+A108520(n)-A038518(n)`
-/

namespace A134813.P2189063228039842927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038521 n + (A108520 n - A038518 n)

end

end A134813.P2189063228039842927

namespace A134813

/-- `A038521(n)+A108520(n)-A038518(n)` -/
def P2189063228039842927.Spec : Prop :=
  ∀ n, P2189063228039842927.a n = A134813 n

end A134813

/-! ## A134813.P5603820322850875248

`A003945(n)/A000079(n)*A108520(n)`
-/

namespace A134813.P5603820322850875248
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003945 n : ℚ) / (A000079 n : ℚ) * (A108520 n : ℚ)

end

end A134813.P5603820322850875248

namespace A134813

/-- `A003945(n)/A000079(n)*A108520(n)` -/
def P5603820322850875248.Spec : Prop :=
  ∀ n, P5603820322850875248.a n = (A134813 n : ℚ)

end A134813

/-! ## A134813.P9990207879427321960

`(3/2*A108520(n))^A002262(A000124(n))`
-/

namespace A134813.P9990207879427321960
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((3 : ℚ) / 2 * (A108520 n : ℚ)) ^ (A002262 (A000124 n).toNat : ℤ)

end

end A134813.P9990207879427321960

namespace A134813

/-- `(3/2*A108520(n))^A002262(A000124(n))` -/
def P9990207879427321960.Spec : Prop :=
  ∀ n, P9990207879427321960.a n = (A134813 n : ℚ)

end A134813

/-!
# A134815: Expansion of g.f. -x*(3*x^7+2*x^6+x^5+15*x^4+3*x^3-x^2+15*x-4)/((x^4+x-1)*(x^4+5*x-1)).

The programs for A134815, the canonical program `A134815.P15788141205499576250` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A134815 has offset 1).

The definition of A134815 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((4-15x+x^2-3x^3-15x^4-x^5-2x^6-3x^7)/(1-6x+5x^2-2x^4+6x^5+x^8))` (program `A134815.P15788141205499576250`, by `A134815.P15788141205499576250.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A134815.P15788141205499576250

`ogf((4-15x+x^2-3x^3-15x^4-x^5-2x^6-3x^7)/(1-6x+5x^2-2x^4+6x^5+x^8))`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A134815

/-- `ogf((4-15x+x^2-3x^3-15x^4-x^5-2x^6-3x^7)/(1-6x+5x^2-2x^4+6x^5+x^8))` -/
def P15788141205499576250.Spec : Prop :=
  ∀ n, P15788141205499576250.a n = A134815 (n + 1)

theorem P15788141205499576250.correct : P15788141205499576250.Spec := by
  intro n
  simp only [A134815, Nat.add_sub_cancel]

end A134815

/-!
# A134816: Padovan's spiral numbers.

The programs for A134816, the canonical program `A134816.P8825365697420007670` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A134816 has offset 1).

The definition of A134816 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A134816.P8825365697420007670

`a(n-2)+a(n-3)` with `a(0)=1, a(1)=1, a(2)=1`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A134816

/-- `a(n-2)+a(n-3)` -/
def P8825365697420007670.Spec : Prop :=
  ∀ n, (P8825365697420007670.a n : ℤ) = A134816 (n + 1)

theorem P8825365697420007670.correct : P8825365697420007670.Spec := by
  intro n
  simp only [A134816, Nat.add_sub_cancel]

end A134816

/-! ## A134816.P5596335215669244748

`A000931(n+5)`
-/

namespace A134816.P5596335215669244748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000931 (n + 5)

end

end A134816.P5596335215669244748

namespace A134816

/-- `A000931(n+5)` -/
def P5596335215669244748.Spec : Prop :=
  ∀ n, P5596335215669244748.a n = A134816 (n + 1)

end A134816

/-! ## A134816.P14325047242362540099

`ogf((1+x)/(1-x^2-x^3))`
-/

namespace A134816.P14325047242362540099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1] [1, 0, -1, -1] n

end

end A134816.P14325047242362540099

namespace A134816

/-- `ogf((1+x)/(1-x^2-x^3))` -/
def P14325047242362540099.Spec : Prop :=
  ∀ n, P14325047242362540099.a n = A134816 (n + 1)

end A134816

/-! ## A134816.P730304393469157526

`a(n-2)-floor(-a(n-3))` with `a(0)=1, a(1)=1, a(2)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A134816.P730304393469157526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  a (n - 2) - (-a (n - 3))

end

end A134816.P730304393469157526

namespace A134816

/-- `a(n-2)-floor(-a(n-3))` -/
def P730304393469157526.Spec : Prop :=
  ∀ n, P730304393469157526.a n = A134816 (n + 1)

end A134816

/-! ## A134816.P1706614164810358102

`a(n-2)-ceil(-a(n-3))` with `a(0)=1, a(1)=1, a(2)=1`

`ceil` is left out, it is the identity on integers.
-/

namespace A134816.P1706614164810358102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  a (n - 2) - (-a (n - 3))

end

end A134816.P1706614164810358102

namespace A134816

/-- `a(n-2)-ceil(-a(n-3))` -/
def P1706614164810358102.Spec : Prop :=
  ∀ n, P1706614164810358102.a n = A134816 (n + 1)

end A134816

/-! ## A134816.P2802601223634099829

`a(n-2)-round(-a(n-3))` with `a(0)=1, a(1)=1, a(2)=1`

`round` is left out, it is the identity on integers.
-/

namespace A134816.P2802601223634099829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  a (n - 2) - (-a (n - 3))

end

end A134816.P2802601223634099829

namespace A134816

/-- `a(n-2)-round(-a(n-3))` -/
def P2802601223634099829.Spec : Prop :=
  ∀ n, P2802601223634099829.a n = A134816 (n + 1)

end A134816

/-! ## A134816.P8808993770467480706

`a(n-1)-(a(n-4)-a(n-2))` with `a(0)=1, a(1)=1, a(2)=1, a(3)=2`
-/

namespace A134816.P8808993770467480706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 2] fun n a =>
  a (n - 1) - (a (n - 4) - a (n - 2))

end

end A134816.P8808993770467480706

namespace A134816

/-- `a(n-1)-(a(n-4)-a(n-2))` -/
def P8808993770467480706.Spec : Prop :=
  ∀ n, P8808993770467480706.a n = A134816 (n + 1)

end A134816

/-! ## A134816.P7034165422213927480

`∑[A000931(n)]`
-/

namespace A134816.P7034165422213927480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000931 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A134816.P7034165422213927480

namespace A134816

/-- `∑[A000931(n)]` -/
def P7034165422213927480.Spec : Prop :=
  ∀ n, P7034165422213927480.a n = A134816 (n + 1)

end A134816

/-! ## A134816.P10995031246709913552

`A182097(n+2)`
-/

namespace A134816.P10995031246709913552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182097 (n + 2)

end

end A134816.P10995031246709913552

namespace A134816

/-- `A182097(n+2)` -/
def P10995031246709913552.Spec : Prop :=
  ∀ n, P10995031246709913552.a n = A134816 (n + 1)

end A134816

/-! ## A134816.P2598278708488560795

`A078027(n+7)`
-/

namespace A134816.P2598278708488560795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078027 (n + 7)

end

end A134816.P2598278708488560795

namespace A134816

/-- `A078027(n+7)` -/
def P2598278708488560795.Spec : Prop :=
  ∀ n, P2598278708488560795.a n = A134816 (n + 1)

end A134816

/-! ## A134816.P11425502335700594868

`A133034(n+9)`
-/

namespace A134816.P11425502335700594868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133034 (n + 9)

end

end A134816.P11425502335700594868

namespace A134816

/-- `A133034(n+9)` -/
def P11425502335700594868.Spec : Prop :=
  ∀ n, P11425502335700594868.a n = A134816 (n + 1)

end A134816

/-! ## A134816.P7451221648835067153

`abs(A124745(n+7))`
-/

namespace A134816.P7451221648835067153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A124745 (n + 7)|

end

end A134816.P7451221648835067153

namespace A134816

/-- `abs(A124745(n+7))` -/
def P7451221648835067153.Spec : Prop :=
  ∀ n, P7451221648835067153.a n = A134816 (n + 1)

end A134816

/-! ## A134816.P6876619867666922446

`∑[A291289(n)/2]`
-/

namespace A134816.P6876619867666922446
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A291289 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A134816.P6876619867666922446

namespace A134816

/-- `∑[A291289(n)/2]` -/
def P6876619867666922446.Spec : Prop :=
  ∀ n, P6876619867666922446.a n = (A134816 (n + 1) : ℚ)

end A134816

/-! ## A134816.P9948850560044940797

`A052954(n+2)-1`
-/

namespace A134816.P9948850560044940797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052954 (n + 2) - 1

end

end A134816.P9948850560044940797

namespace A134816

/-- `A052954(n+2)-1` -/
def P9948850560044940797.Spec : Prop :=
  ∀ n, P9948850560044940797.a n = A134816 (n + 1)

end A134816

/-! ## A134816.P13154860116189899825

`A023434(A289207(n))+1`
-/

namespace A134816.P13154860116189899825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023434 (A289207 n).toNat + 1

end

end A134816.P13154860116189899825

namespace A134816

/-- `A023434(A289207(n))+1` -/
def P13154860116189899825.Spec : Prop :=
  ∀ n, P13154860116189899825.a n = A134816 (n + 1)

end A134816

/-! ## A134816.P261603256779896117

`A228361(A233583(n+1))`
-/

namespace A134816.P261603256779896117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228361 (A233583 (n + 1)).toNat

end

end A134816.P261603256779896117

namespace A134816

/-- `A228361(A233583(n+1))` -/
def P261603256779896117.Spec : Prop :=
  ∀ n, P261603256779896117.a n = A134816 (n + 1)

end A134816

/-! ## A134816.P3430111967525804179

`A127682(A004278(n+2))`
-/

namespace A134816.P3430111967525804179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127682 (A004278 (n + 2)).toNat

end

end A134816.P3430111967525804179

namespace A134816

/-- `A127682(A004278(n+2))` -/
def P3430111967525804179.Spec : Prop :=
  ∀ n, P3430111967525804179.a n = A134816 (n + 1)

end A134816

/-! ## A134816.P10090142811552843362

`A114775(A154708(n+2)+2)`
-/

namespace A134816.P10090142811552843362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114775 (A154708 (n + 2) + 2).toNat

end

end A134816.P10090142811552843362

namespace A134816

/-- `A114775(A154708(n+2)+2)` -/
def P10090142811552843362.Spec : Prop :=
  ∀ n, P10090142811552843362.a n = A134816 (n + 1)

end A134816

/-! ## A134816.P8690680389806746638

`A228361(n)+A019590(n+1)`
-/

namespace A134816.P8690680389806746638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228361 n + A019590 (n + 1)

end

end A134816.P8690680389806746638

namespace A134816

/-- `A228361(n)+A019590(n+1)` -/
def P8690680389806746638.Spec : Prop :=
  ∀ n, P8690680389806746638.a n = A134816 (n + 1)

end A134816

/-!
# A134817: a(1)=1; a(n)=a(n-1)*(number of decimal digits of a(n-1))+1.

The programs for A134817, there is no canonical definition to state claims against.
-/

/-! ## A134817.P14581042504837828561

`A110803(a(n-1))+1` with `a(0)=1`
-/

namespace A134817.P14581042504837828561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A110803 (a (n - 1)).toNat + 1

end

end A134817.P14581042504837828561

/-! ## A134817.P8567738243867109932

`a(n-1)*A043537(a(n-1))+1` with `a(0)=1`
-/

namespace A134817.P8567738243867109932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A043537 (a (n - 1)).toNat + 1

end

end A134817.P8567738243867109932

/-! ## A134817.P306461689467497500

`a(n-1)*A043562(a(n-1))+1` with `a(0)=1`
-/

namespace A134817.P306461689467497500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A043562 (a (n - 1)).toNat + 1

end

end A134817.P306461689467497500

/-! ## A134817.P11633700930738543694

`a(n-1)*A044932(a(n-1))+1` with `a(0)=1`
-/

namespace A134817.P11633700930738543694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A044932 (a (n - 1)).toNat + 1

end

end A134817.P11633700930738543694

/-! ## A134817.P12191262249483530254

`a(n-1)*A044950(a(n-1))+1` with `a(0)=1`
-/

namespace A134817.P12191262249483530254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A044950 (a (n - 1)).toNat + 1

end

end A134817.P12191262249483530254

/-!
# A134818: Number of unlabeled connected loopless multigraphs with n nodes of degree 4 or less and with at most triple edges.

The programs for A134818, there is no canonical definition to state claims against.
-/

/-! ## A134818.P10019034081530030358

`A289157(n+1)-char[1]`
-/

namespace A134818.P10019034081530030358
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289157 (n + 1) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A134818.P10019034081530030358

/-! ## A134818.P1947732367612664229

`record[A289157(n)-A003849(A000045(n))]`
-/

namespace A134818.P1947732367612664229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289157 n - A003849 (A000045 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A134818.P1947732367612664229

/-! ## A134818.P9874213239326140500

`record[A289157(n)-A356500(A000129(n))]`
-/

namespace A134818.P9874213239326140500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289157 n - A356500 (A000129 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A134818.P9874213239326140500

/-! ## A134818.P7717660375392123837

`A000027(A289157(n+1)-A024255(n)%2)`
-/

namespace A134818.P7717660375392123837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A289157 (n + 1) - Int.tmod (A024255 n) 2).toNat

end

end A134818.P7717660375392123837

/-!
# A134820: Primes in the sequence A003294 of certain fourth powers bases.

The programs for A134820, there is no canonical definition to state claims against.
-/

/-! ## A134820.P835168877750424759

`p?[A003294(n+1)]`
-/

namespace A134820.P835168877750424759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003294 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A134820.P835168877750424759

/-! ## A134820.P2359789791724419022

`p?[A039664(n+1)]`
-/

namespace A134820.P2359789791724419022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039664 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A134820.P2359789791724419022

/-! ## A134820.P526508346713451387

`p?[record[A039664(A065648(n))]]`
-/

namespace A134820.P526508346713451387
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039664 (A065648 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A134820.P526508346713451387

/-! ## A134820.P16909915191889788444

`p?[record[A039664(A328396(n))]]`
-/

namespace A134820.P16909915191889788444
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039664 (A328396 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A134820.P16909915191889788444

/-! ## A134820.P12171040277553658440

`filter[A039664(n+1), A010051(#)]`
-/

namespace A134820.P12171040277553658440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039664 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A134820.P12171040277553658440

/-!
# A134823: Expansion of -x*(x^5+11*x^4+x^3+x^2+21*x-4) / ((x^2+x-1)*(3*x^4+7*x-1)).

The programs for A134823, the canonical program `A134823.P7003140479786042596` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A134823 has offset 1).

The definition of A134823 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((4-21x-x^2-x^3-11x^4-x^5)/(1-8x+6x^2+7x^3-3x^4+3x^5+3x^6))` (program `A134823.P7003140479786042596`, by `A134823.P7003140479786042596.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A134823.P7003140479786042596

`ogf((4-21x-x^2-x^3-11x^4-x^5)/(1-8x+6x^2+7x^3-3x^4+3x^5+3x^6))`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A134823

/-- `ogf((4-21x-x^2-x^3-11x^4-x^5)/(1-8x+6x^2+7x^3-3x^4+3x^5+3x^6))` -/
def P7003140479786042596.Spec : Prop :=
  ∀ n, P7003140479786042596.a n = A134823 (n + 1)

theorem P7003140479786042596.correct : P7003140479786042596.Spec := by
  intro n
  simp only [A134823, Nat.add_sub_cancel]

end A134823

/-!
# A134824: Generated by reverse of Schroeder II o.g.f.

The programs for A134824, the canonical program `A134824.P15408137293539972542` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A134824 has offset 0).

The definition of A134824 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A134824.P15408137293539972542

`floor(acot(1-n))`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A134824

/-- `floor(acot(1-n))` -/
def P15408137293539972542.Spec : Prop :=
  ∀ n, P15408137293539972542.a n = A134824 n

theorem P15408137293539972542.correct : P15408137293539972542.Spec := by
  intro n
  simp only [A134824]

end A134824

/-!
# A134825: Floor of the even-indexed Bernoulli numbers B_{2n} = A000367(n)/A002445(n).

The programs for A134825, there is no canonical definition to state claims against.
-/

/-! ## A134825.P17814726076430283378

`floor(A000367(n)/A002445(n))`
-/

namespace A134825.P17814726076430283378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000367 n : ℚ) / (A002445 n : ℚ)⌋

end

end A134825.P17814726076430283378

/-! ## A134825.P1845975115432362423

`floor(A027641(2*n)/A002445(n))`
-/

namespace A134825.P1845975115432362423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A027641 (2 * n) : ℚ) / (A002445 n : ℚ)⌋

end

end A134825.P1845975115432362423

/-! ## A134825.P2692561480768244328

`floor(A000367(n)/A051717(2*n))`
-/

namespace A134825.P2692561480768244328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000367 n : ℚ) / (A051717 (2 * n) : ℚ)⌋

end

end A134825.P2692561480768244328

/-! ## A134825.P11386314686790746223

`floor(A164555(2*n)/A002445(n))`
-/

namespace A134825.P11386314686790746223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A164555 (2 * n) : ℚ) / (A002445 n : ℚ)⌋

end

end A134825.P11386314686790746223

/-! ## A134825.P12912456003447850039

`(A000367(n)-A169980(n))/A002445(n)`
-/

namespace A134825.P12912456003447850039
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000367 n - A169980 n : ℚ) / (A002445 n : ℚ)

end

end A134825.P12912456003447850039

/-!
# A134826: Row sums of triangle A134285, called s2(3)'.

The programs for A134826, there is no canonical definition to state claims against.
-/

/-! ## A134826.P12179017432818460021

`A123087(record[Δ[A277933(n)]])`
-/

namespace A134826.P12179017432818460021
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277933 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123087 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A134826.P12179017432818460021

/-! ## A134826.P16640007971932345490

`A194960(record[Δ[A277933(n+1)]])`
-/

namespace A134826.P16640007971932345490
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277933 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194960 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A134826.P16640007971932345490

/-!
# A134828: Numerator of moments of Chebyshev U- (or S-) polynomials.

The programs for A134828, there is no canonical definition to state claims against.
-/

/-! ## A134828.P11614051638542540743

`lcm(n+2, (n-1)*a(n-2))/(n+2)` with `a(0)=1, a(1)=0`
-/

namespace A134828.P11614051638542540743
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 0] fun n a =>
  (Int.lcm (n + 2 : ℤ) (SequenceMachineLib.roundAway (((n : ℤ) - 1 : ℚ) * a (n - 2))) : ℚ) / (n + 2 : ℚ)

end

end A134828.P11614051638542540743

/-! ## A134828.P9175918349108820656

`lcm(8, A126120(n))/8`
-/

namespace A134828.P9175918349108820656
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 8 (A126120 n) : ℚ) / 8

end

end A134828.P9175918349108820656

/-! ## A134828.P8428234355050878381

`abs(A078297(∑[n+1]))`
-/

namespace A134828.P8428234355050878381
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A078297 (∑ j ∈ Finset.range (n + 1), f1 j)|

end

end A134828.P8428234355050878381

/-! ## A134828.P4088766139702891415

`log2(gcd(2, n))*A098597(floor(n/2))`
-/

namespace A134828.P4088766139702891415
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Nat.gcd 2 n : ℝ) * (A098597 ⌊(n : ℚ) / 2⌋.toNat : ℝ)

end

end A134828.P4088766139702891415

/-! ## A134828.P12002903536560470964

`gcd(A123023(n), A126120(n))`
-/

namespace A134828.P12002903536560470964
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A123023 n) (A126120 n)

end

end A134828.P12002903536560470964

/-!
# A134829: Denominator of moments of Chebyshev U- (or S-) polynomials.

The programs for A134829, there is no canonical definition to state claims against.
-/

/-! ## A134829.P3054341192899670968

`gcd(2, n)^∑[val(n+3, 2)]`
-/

namespace A134829.P3054341192899670968
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 3) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 n ^ (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A134829.P3054341192899670968

/-! ## A134829.P8335608642305499113

`2^val(n+2, 2)*a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A134829.P8335608642305499113
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  2 ^ SequenceMachineLib.valuation (n + 2) 2 * a (n - 2)

end

end A134829.P8335608642305499113

/-! ## A134829.P3371947741479183389

`gcd(n+2, 2^n)*a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A134829.P3371947741479183389
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  Nat.gcd (n + 2) (2 ^ n) * a (n - 2)

end

end A134829.P3371947741479183389

/-! ## A134829.P18236174383683788694

`(1-(1-n)%2)^∑[val(n+3, 2)]`
-/

namespace A134829.P18236174383683788694
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 3) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - Int.tmod (1 - (n : ℤ)) 2) ^ (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A134829.P18236174383683788694

/-! ## A134829.P7895872816713628426

`and(n+2, -(n+2))*a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A134829.P7895872816713628426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  Int.land (n + 2 : ℤ) (-(n + 2 : ℤ)) * a (n - 2)

end

end A134829.P7895872816713628426

/-!
# A134830: Triangle of rank k of permutations of {1,2,...,n}.

The programs for A134830, there is no canonical definition to state claims against.
-/

/-! ## A134830.P12385241514067202994

`A068106(A056943(n+1))`
-/

namespace A134830.P12385241514067202994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068106 (A056943 (n + 1)).toNat

end

end A134830.P12385241514067202994

/-! ## A134830.P17481006391227961356

`A047920(1-A183110(n+1)+n)`
-/

namespace A134830.P17481006391227961356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047920 (1 - A183110 (n + 1) + (n : ℤ)).toNat

end

end A134830.P17481006391227961356

/-! ## A134830.P17445904710965303409

`A047920(A134402(n)+A083920(n))`
-/

namespace A134830.P17445904710965303409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047920 (A134402 n + A083920 n).toNat

end

end A134830.P17445904710965303409

/-! ## A134830.P9756977055724167870

`Δ[A007489(A003056(n))-A047920(n)]`
-/

namespace A134830.P9756977055724167870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007489 (A003056 n).toNat - A047920 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A134830.P9756977055724167870

/-! ## A134830.P14400717757816459222

`A068106(A057944(n)-A002262(n+1))`
-/

namespace A134830.P14400717757816459222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068106 (A057944 n - A002262 (n + 1)).toNat

end

end A134830.P14400717757816459222

/-! ## A134830.P3268246513707508766

`A068106(A057944(n)-A048151(n+1))`
-/

namespace A134830.P3268246513707508766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068106 (A057944 n - A048151 (n + 1)).toNat

end

end A134830.P3268246513707508766

/-! ## A134830.P16129811709138002009

`Δ[A003422(A002024(n+1))-A047920(n)]`
-/

namespace A134830.P16129811709138002009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003422 (A002024 (n + 1)).toNat - A047920 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A134830.P16129811709138002009

/-! ## A134830.P282412971032556507

`A047920(n)-A047920(n+1)%A116853(n+1)`
-/

namespace A134830.P282412971032556507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047920 n - Int.tmod (A047920 (n + 1)) (A116853 (n + 1))

end

end A134830.P282412971032556507

/-!
# A134831: Alternating row sums of triangle A134830.

The programs for A134831, there is no canonical definition to state claims against.
-/

/-! ## A134831.P6040149606814500918

`2*A347429(n)-n!`
-/

namespace A134831.P6040149606814500918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A347429 n - (Nat.factorial n : ℤ)

end

end A134831.P6040149606814500918

/-! ## A134831.P15748369509827258064

`2*A347429(n)-A000142(n)`
-/

namespace A134831.P15748369509827258064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A347429 n - A000142 n

end

end A134831.P15748369509827258064

/-! ## A134831.P7784341365332639461

`A004277(A347429(n))-n!`
-/

namespace A134831.P7784341365332639461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A347429 n).toNat - (Nat.factorial n : ℤ)

end

end A134831.P7784341365332639461

/-! ## A134831.P17333070788567332898

`A004277(A347429(n))-A000142(n)`
-/

namespace A134831.P17333070788567332898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A347429 n).toNat - A000142 n

end

end A134831.P17333070788567332898

/-!
# A134832: Triangle of succession numbers for circular permutations.

The programs for A134832, the canonical program `A134832.P13040656617122990359` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A134832 has offset 0).

The definition of A134832 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2628 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A134832.P13040656617122990359

`A007318(n)*A000757(A025581(n))`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A134832

/-- `A007318(n)*A000757(A025581(n))` -/
def P13040656617122990359.Spec : Prop :=
  ∀ n, P13040656617122990359.a n = A134832 n

theorem P13040656617122990359.correct : P13040656617122990359.Spec := by
  intro n
  simp only [A134832]

end A134832

/-! ## A134832.P8319892634318239651

`Δ[A102363(n)]*A000757(A025581(n))`
-/

namespace A134832.P8319892634318239651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A000757 (A025581 n).toNat

end

end A134832.P8319892634318239651

namespace A134832

/-- `Δ[A102363(n)]*A000757(A025581(n))` -/
def P8319892634318239651.Spec : Prop :=
  ∀ n, P8319892634318239651.a n = A134832 n

end A134832

/-! ## A134832.P3342032600798645020

`A000757(A004736(n+1)-1)*A007318(n)`
-/

namespace A134832.P3342032600798645020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000757 (A004736 (n + 1) - 1).toNat * A007318 n

end

end A134832.P3342032600798645020

namespace A134832

/-- `A000757(A004736(n+1)-1)*A007318(n)` -/
def P3342032600798645020.Spec : Prop :=
  ∀ n, P3342032600798645020.a n = A134832 n

end A134832

/-! ## A134832.P10511449999439980671

`Δ[A102363(n)]*A000757(A004736(n+1)-1)`
-/

namespace A134832.P10511449999439980671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A000757 (A004736 (n + 1) - 1).toNat

end

end A134832.P10511449999439980671

namespace A134832

/-- `Δ[A102363(n)]*A000757(A004736(n+1)-1)` -/
def P10511449999439980671.Spec : Prop :=
  ∀ n, P10511449999439980671.a n = A134832 n

end A134832

/-! ## A134832.P552667394722655868

`(A014473(n)+1)*A000757(A004736(n+1)-1)`
-/

namespace A134832.P552667394722655868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A014473 n + 1) * A000757 (A004736 (n + 1) - 1).toNat

end

end A134832.P552667394722655868

namespace A134832

/-- `(A014473(n)+1)*A000757(A004736(n+1)-1)` -/
def P552667394722655868.Spec : Prop :=
  ∀ n, P552667394722655868.a n = A134832 n

end A134832

/-!
# A134833: Alternating row sums of triangle A134832.

The programs for A134833, there is no canonical definition to state claims against.
-/

/-! ## A134833.P11322149111352107606

`A346397(n)+A122803(n)`
-/

namespace A134833.P11322149111352107606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346397 n + A122803 n

end

end A134833.P11322149111352107606

/-! ## A134833.P9094320539535174195

`A346397(n)+Δ[A084247(n)]`
-/

namespace A134833.P9094320539535174195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084247 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346397 n + (f1 (n + 1) - f1 n)

end

end A134833.P9094320539535174195

/-! ## A134833.P3280855915248880661

`A346397(n)-Δ[A140966(n)]`
-/

namespace A134833.P3280855915248880661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140966 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346397 n - (f1 (n + 1) - f1 n)

end

end A134833.P3280855915248880661

/-! ## A134833.P12909157541513601686

`A346397(n)-A137447(2*n)`
-/

namespace A134833.P12909157541513601686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346397 n - A137447 (2 * n)

end

end A134833.P12909157541513601686

/-! ## A134833.P10536641352053707185

`A000023(n)+A346397(n)-A335111(n)`
-/

namespace A134833.P10536641352053707185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000023 n + (A346397 n - A335111 n)

end

end A134833.P10536641352053707185

/-!
# A134836: Antidiagonals of the array: A007318 * A002260(transposed).

The programs for A134836, there is no canonical definition to state claims against.
-/

/-! ## A134836.P2195158524546622328

`A116445(∑[char[∑[n]]]²-n)`
-/

namespace A134836.P2195158524546622328
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116445 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A134836.P2195158524546622328

/-! ## A134836.P8536965863169074232

`or(char[1], A116445(A038722(n+1)))`
-/

namespace A134836.P8536965863169074232
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A116445 (A038722 (n + 1)).toNat)

end

end A134836.P8536965863169074232

/-! ## A134836.P14659626748904202301

`or(char[1], A116445(A061579(n)+1))`
-/

namespace A134836.P14659626748904202301
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A116445 (A061579 n + 1).toNat)

end

end A134836.P14659626748904202301

/-! ## A134836.P1674496586926216411

`A116445(A061579(n)+1)%A105708(n)`
-/

namespace A134836.P1674496586926216411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A116445 (A061579 n + 1).toNat) (A105708 n)

end

end A134836.P1674496586926216411

/-! ## A134836.P14829096476744020614

`gcd(A116445(A038722(n+1)), A198954(n))`
-/

namespace A134836.P14829096476744020614
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A116445 (A038722 (n + 1)).toNat) (A198954 n)

end

end A134836.P14829096476744020614

/-! ## A134836.P11521225817780842655

`abs(A000038(n)-A116445(A038722(n+1)))`
-/

namespace A134836.P11521225817780842655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000038 n - A116445 (A038722 (n + 1)).toNat|

end

end A134836.P11521225817780842655

/-! ## A134836.P16546699273520849009

`A116445(A038722(n+1))%record[A000032(n)]`
-/

namespace A134836.P16546699273520849009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A116445 (A038722 (n + 1)).toNat) (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A134836.P16546699273520849009

/-! ## A134836.P841312269374779936

`A116445(A038722(n+1))+A000007(n+1)`
-/

namespace A134836.P841312269374779936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116445 (A038722 (n + 1)).toNat + A000007 (n + 1)

end

end A134836.P841312269374779936

/-! ## A134836.P9067001442343218908

`A060576(n+2)*A116445(A038722(n+1))`
-/

namespace A134836.P9067001442343218908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060576 (n + 2) * A116445 (A038722 (n + 1)).toNat

end

end A134836.P9067001442343218908

/-! ## A134836.P16152971548720326757

`A116445(A038722(n+1))^(A000040(n+1)%2)`
-/

namespace A134836.P16152971548720326757
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A116445 (A038722 (n + 1)).toNat : ℚ) ^ (Int.tmod (A000040 (n + 1)) 2 : ℤ)

end

end A134836.P16152971548720326757

/-!
# A134837: Composite numbers where the sum of the smallest prime factor and the largest prime factor is an odd composite.

The programs for A134837, there is no canonical definition to state claims against.
-/

/-! ## A134837.P13981866088227342299

`2*(eq[2, A257990(∑{d}[A006530(n+1), #]+1)]+1)`
-/

namespace A134837.P13981866088227342299
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257990 (∑ d ∈ Nat.divisors (f3 n).natAbs, d + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A134837.P13981866088227342299

/-! ## A134837.P4649206326815716910

`eq[A292438(A006530(n+1)+1), A328570(n+1)]+1`
-/

namespace A134837.P4649206326815716910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292438 (A006530 (n + 1) + 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328570 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A134837.P4649206326815716910

/-! ## A134837.P15542830032220845778

`lt[2, A345161(A133265(n))]+1`
-/

namespace A134837.P15542830032220845778
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345161 (A133265 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A134837.P15542830032220845778

/-! ## A134837.P16812126582692055707

`lt[A040048(n), A345161(n+1)]+1`
-/

namespace A134837.P16812126582692055707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040048 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345161 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A134837.P16812126582692055707

/-! ## A134837.P1756964971955107979

`lt[A040063(n), A345161(n+1)]+1`
-/

namespace A134837.P1756964971955107979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040063 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345161 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A134837.P1756964971955107979

/-!
# A134838: Triangle read by rows, n-th row = first n terms of an array formed by A051731 * A051731(transform).

The programs for A134838, there is no canonical definition to state claims against.
-/

/-! ## A134838.P16963512102790999575

`A051194(eq[A058348(n), A321537(n)])`
-/

namespace A134838.P16963512102790999575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058348 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321537 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051194 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A134838.P16963512102790999575

/-! ## A134838.P12198140008791765305

`A051194(∑[A000688(A052955(n))])`
-/

namespace A134838.P12198140008791765305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000688 (A052955 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051194 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A134838.P12198140008791765305

/-! ## A134838.P3103580223058432165

`A051194(∑[A006466(A005712(n+2))])`
-/

namespace A134838.P3103580223058432165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006466 (A005712 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051194 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A134838.P3103580223058432165

/-! ## A134838.P8615706028819557044

`A051194(A299702(n+1)%A361855(2*n+5))`
-/

namespace A134838.P8615706028819557044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051194 (Int.tmod (A299702 (n + 1)) (A361855 (2 * n + 5))).toNat

end

end A134838.P8615706028819557044

/-! ## A134838.P11416867182772949811

`A270645(A053191(n+3))+A083910(n+1)`
-/

namespace A134838.P11416867182772949811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270645 (A053191 (n + 3)).toNat + A083910 (n + 1)

end

end A134838.P11416867182772949811

/-!
# A134839: Triangle, n-th row = first n terms in n-th row of an array formed by A051731 * A126988(transform).

The programs for A134839, there is no canonical definition to state claims against.
-/

/-! ## A134839.P16653283048893378535

`A132442(n+1)*A164306(n+1)`
-/

namespace A134839.P16653283048893378535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132442 (n + 1) * A164306 (n + 1)

end

end A134839.P16653283048893378535

/-! ## A134839.P14374469551833800342

`∑{d}[A050873(n+1), A002260(n+1)/#]`
-/

namespace A134839.P14374469551833800342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050873 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, (A002260 (n + 1) : ℚ) / (d : ℚ)

end

end A134839.P14374469551833800342

/-! ## A134839.P11089907806324612810

`∑{d}[A050873(n+1), A349520(2*n+1)/#]`
-/

namespace A134839.P11089907806324612810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050873 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, (A349520 (2 * n + 1) : ℚ) / (d : ℚ)

end

end A134839.P11089907806324612810

/-! ## A134839.P7499436379938364898

`A000203(A050873(n+1))*A164306(n+1)`
-/

namespace A134839.P7499436379938364898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A050873 (n + 1)).toNat * A164306 (n + 1)

end

end A134839.P7499436379938364898

/-! ## A134839.P15608519732131086580

`A112544(A122797(n+1))*A132442(n+1)`
-/

namespace A134839.P15608519732131086580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112544 (A122797 (n + 1)).toNat * A132442 (n + 1)

end

end A134839.P15608519732131086580

/-! ## A134839.P12300110639536985895

`∑{d}[A050873(n+1), A125585(A000124(n))/#]`
-/

namespace A134839.P12300110639536985895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050873 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, (A125585 (A000124 n).toNat : ℚ) / (d : ℚ)

end

end A134839.P12300110639536985895

/-! ## A134839.P1954117229724545969

`A000203(A093057(n+1)+1)*A164306(n+1)`
-/

namespace A134839.P1954117229724545969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A093057 (n + 1) + 1).toNat * A164306 (n + 1)

end

end A134839.P1954117229724545969

/-! ## A134839.P6585645604827207458

`A002260(n+1)/A050873(n+1)*A132442(n+1)`
-/

namespace A134839.P6585645604827207458
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002260 (n + 1) : ℚ) / (A050873 (n + 1) : ℚ) * (A132442 (n + 1) : ℚ)

end

end A134839.P6585645604827207458

/-! ## A134839.P17344841791650620798

`A051173(n+1)/A002024(n+1)*A132442(n+1)`
-/

namespace A134839.P17344841791650620798
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051173 (n + 1) : ℚ) / (A002024 (n + 1) : ℚ) * (A132442 (n + 1) : ℚ)

end

end A134839.P17344841791650620798

/-! ## A134839.P17438362110884085669

`A051537(n+1)/A054531(n+1)*A132442(n+1)`
-/

namespace A134839.P17438362110884085669
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051537 (n + 1) : ℚ) / (A054531 (n + 1) : ℚ) * (A132442 (n + 1) : ℚ)

end

end A134839.P17438362110884085669

/-!
# A134840: Triangle, antidiagonals of an array formed by A051731 * A126988(transform).

The programs for A134840, there is no canonical definition to state claims against.
-/

/-! ## A134840.P16762043140855135612

`A112544(n+1)*A134866(n+1)`
-/

namespace A134840.P16762043140855135612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112544 (n + 1) * A134866 (n + 1)

end

end A134840.P16762043140855135612

/-! ## A134840.P13643088987261992389

`∑{d}[A003989(n+1), A002260(n+1)/#]`
-/

namespace A134840.P13643088987261992389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003989 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, (A002260 (n + 1) : ℚ) / (d : ℚ)

end

end A134840.P13643088987261992389

/-! ## A134840.P13552142521915783993

`A127099(A112544(n+1)+A112367(n))`
-/

namespace A134840.P13552142521915783993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127099 (A112544 (n + 1) + A112367 n).toNat

end

end A134840.P13552142521915783993

/-! ## A134840.P13693251514801590605

`A000203(A003989(n+1))*A112544(n+1)`
-/

namespace A134840.P13693251514801590605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A003989 (n + 1)).toNat * A112544 (n + 1)

end

end A134840.P13693251514801590605

/-! ## A134840.P12814648396426517947

`A112544(n+1)*A132442(A014132(n+1))`
-/

namespace A134840.P12814648396426517947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112544 (n + 1) * A132442 (A014132 (n + 1)).toNat

end

end A134840.P12814648396426517947

/-! ## A134840.P2280878789260007039

`∑{d}[A002260(A286101(n+1)), A002260(n+1)/#]`
-/

namespace A134840.P2280878789260007039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A286101 (n + 1)).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, (A002260 (n + 1) : ℚ) / (d : ℚ)

end

end A134840.P2280878789260007039

/-! ## A134840.P532657660001346607

`A000203(A003989(n+1))*A164306(A080036(n))`
-/

namespace A134840.P532657660001346607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A003989 (n + 1)).toNat * A164306 (A080036 n).toNat

end

end A134840.P532657660001346607

/-!
# A134841: Triangle read by rows: first n terms of n-th row of an array formed by A126988 * A053731(transform).

The programs for A134841, there is no canonical definition to state claims against.
-/

/-! ## A134841.P16555778009302149613

`∑{d}[A050873(n+1), round(sqrt(2*n+1))/#]`
-/

namespace A134841.P16555778009302149613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050873 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, (SequenceMachineLib.roundAway (Real.sqrt (2 * n + 1 : ℝ)) : ℚ) / (d : ℚ)

end

end A134841.P16555778009302149613

/-! ## A134841.P1186095442773811351

`A054531(n+1)*A132442(n+1)`
-/

namespace A134841.P1186095442773811351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054531 (n + 1) * A132442 (n + 1)

end

end A134841.P1186095442773811351

/-! ## A134841.P7834867450996425575

`A132442(n+1)*A277227(n+2)`
-/

namespace A134841.P7834867450996425575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132442 (n + 1) * A277227 (n + 2)

end

end A134841.P7834867450996425575

/-! ## A134841.P5085760932013351840

`A127099(A057944(n)+A054531(n+1))`
-/

namespace A134841.P5085760932013351840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127099 (A057944 n + A054531 (n + 1)).toNat

end

end A134841.P5085760932013351840

/-! ## A134841.P16885106433849951910

`A000203(A050873(n+1))*A054531(n+1)`
-/

namespace A134841.P16885106433849951910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A050873 (n + 1)).toNat * A054531 (n + 1)

end

end A134841.P16885106433849951910

/-! ## A134841.P3535440437284312293

`A000203(A050873(n+1))*A277227(n+2)`
-/

namespace A134841.P3535440437284312293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A050873 (n + 1)).toNat * A277227 (n + 2)

end

end A134841.P3535440437284312293

/-! ## A134841.P17739131132449732983

`A000203(A093057(n+1)+1)*A054531(n+1)`
-/

namespace A134841.P17739131132449732983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A093057 (n + 1) + 1).toNat * A054531 (n + 1)

end

end A134841.P17739131132449732983

/-! ## A134841.P17899123678713955726

`A002024(n+1)/A050873(n+1)*A132442(n+1)`
-/

namespace A134841.P17899123678713955726
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002024 (n + 1) : ℚ) / (A050873 (n + 1) : ℚ) * (A132442 (n + 1) : ℚ)

end

end A134841.P17899123678713955726

/-! ## A134841.P12547081047779292252

`A051173(n+1)/A002260(n+1)*A132442(n+1)`
-/

namespace A134841.P12547081047779292252
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051173 (n + 1) : ℚ) / (A002260 (n + 1) : ℚ) * (A132442 (n + 1) : ℚ)

end

end A134841.P12547081047779292252

/-!
# A134842: Triangle, n-th row = first n terms of n-th row of an array formed by A054525 * A051731(transform).

The programs for A134842, there is no canonical definition to state claims against.
-/

/-! ## A134842.P17202955278345152810

`A128432(n+1)-A088917(A128424(n+1))`
-/

namespace A134842.P17202955278345152810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128432 (n + 1) - A088917 (A128424 (n + 1)).toNat

end

end A134842.P17202955278345152810

/-! ## A134842.P8943397841212076874

`or(A054525(A051170(n+8)), A128432(n+1))`
-/

namespace A134842.P8943397841212076874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A054525 (A051170 (n + 8)).toNat) (A128432 (n + 1))

end

end A134842.P8943397841212076874

/-! ## A134842.P1978888934765393436

`A128432(n+1)-A051344(A262809(n))`
-/

namespace A134842.P1978888934765393436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128432 (n + 1) - A051344 (A262809 n).toNat

end

end A134842.P1978888934765393436

/-! ## A134842.P11932820233515149413

`A128432(n+1)-A128407(A191002(3*n+5))`
-/

namespace A134842.P11932820233515149413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128432 (n + 1) - A128407 (A191002 (3 * n + 5)).toNat

end

end A134842.P11932820233515149413

/-! ## A134842.P14389932300783251139

`A118404(A078880(n+29)+A036040(2*n+5))`
-/

namespace A134842.P14389932300783251139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118404 (A078880 (n + 29) + A036040 (2 * n + 5)).toNat

end

end A134842.P14389932300783251139

/-!
# A134843: Numbers n not divisible by 10 such that n^2 contains a 0.

The programs for A134843, the canonical program `A134843.P6168902286908360690` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A134843 has offset 1).

The definition of A134843 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A134843.P6168902286908360690

`lt[A053667(n)², n%10]`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A134843

/-- `lt[A053667(n)², n%10]` -/
def P6168902286908360690.Spec : Prop :=
  ∀ n, (P6168902286908360690.a n : ℤ) = A134843 (n + 1)

theorem P6168902286908360690.correct : P6168902286908360690.Spec := by
  intro n
  simp only [A134843, Nat.add_sub_cancel]

end A134843

/-! ## A134843.P17480662100849828975

`comp[∪[10*n, A052040(n+1)]]`
-/

namespace A134843.P17480662100849828975
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 * n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052040 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = x) ∨ ∃ j, f3 j = (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A134843.P17480662100849828975

namespace A134843

/-- `comp[∪[10*n, A052040(n+1)]]` -/
def P17480662100849828975.Spec : Prop :=
  ∀ n, (P17480662100849828975.a n : ℤ) = A134843 (n + 1)

end A134843

/-! ## A134843.P3146595798906418641

`lt[A053667(n), A168184(n)]`
-/

namespace A134843.P3146595798906418641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053667 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168184 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A134843.P3146595798906418641

namespace A134843

/-- `lt[A053667(n), A168184(n)]` -/
def P3146595798906418641.Spec : Prop :=
  ∀ n, (P3146595798906418641.a n : ℤ) = A134843 (n + 1)

end A134843

/-! ## A134843.P3940353967519033552

`lt[A053667(n), A215887(n)]`
-/

namespace A134843.P3940353967519033552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053667 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215887 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A134843.P3940353967519033552

namespace A134843

/-- `lt[A053667(n), A215887(n)]` -/
def P3940353967519033552.Spec : Prop :=
  ∀ n, (P3940353967519033552.a n : ℤ) = A134843 (n + 1)

end A134843

/-! ## A134843.P11873983463716220335

`lt[A053667(n)², A010879(n)]`
-/

namespace A134843.P11873983463716220335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053667 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A134843.P11873983463716220335

namespace A134843

/-- `lt[A053667(n)², A010879(n)]` -/
def P11873983463716220335.Spec : Prop :=
  ∀ n, (P11873983463716220335.a n : ℤ) = A134843 (n + 1)

end A134843

/-! ## A134843.P4781016882390744075

`lt[A053667(n), atan(A050782(n))]`
-/

namespace A134843.P4781016882390744075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053667 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (A050782 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A134843.P4781016882390744075

namespace A134843

/-- `lt[A053667(n), atan(A050782(n))]` -/
def P4781016882390744075.Spec : Prop :=
  ∀ n, (P4781016882390744075.a n : ℤ) = A134843 (n + 1)

end A134843

/-! ## A134843.P16030928136276782635

`lt[A053667(n), atan(A063462(n))]`
-/

namespace A134843.P16030928136276782635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053667 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (A063462 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A134843.P16030928136276782635

namespace A134843

/-- `lt[A053667(n), atan(A063462(n))]` -/
def P16030928136276782635.Spec : Prop :=
  ∀ n, (P16030928136276782635.a n : ℤ) = A134843 (n + 1)

end A134843

/-! ## A134843.P2967648514956855043

`filter[A291625(n+1), A168184(#)]`
-/

namespace A134843.P2967648514956855043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291625 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168184 (f1 j).toNat = 1) n)

end

end A134843.P2967648514956855043

namespace A134843

/-- `filter[A291625(n+1), A168184(#)]` -/
def P2967648514956855043.Spec : Prop :=
  ∀ n, P2967648514956855043.a n = A134843 (n + 1)

end A134843

/-! ## A134843.P12954738161822128935

`∩[A067251(n+1), A291625(n+1)]`
-/

namespace A134843.P12954738161822128935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067251 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291625 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A134843.P12954738161822128935

namespace A134843

/-- `∩[A067251(n+1), A291625(n+1)]` -/
def P12954738161822128935.Spec : Prop :=
  ∀ n, (P12954738161822128935.a n : ℤ) = A134843 (n + 1)

end A134843

/-! ## A134843.P17546254626976475365

`∩[A291625(n+1), A342851(n+1)]`
-/

namespace A134843.P17546254626976475365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291625 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342851 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A134843.P17546254626976475365

namespace A134843

/-- `∩[A291625(n+1), A342851(n+1)]` -/
def P17546254626976475365.Spec : Prop :=
  ∀ n, (P17546254626976475365.a n : ℤ) = A134843 (n + 1)

end A134843

/-!
# A134844: Numbers k such that k contains no zero but k^2 contains at least one zero.

The programs for A134844, the canonical program `A134844.P16925415040102992472` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A134844 has offset 1).

The definition of A134844 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3417 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A134844.P2670933079191449015

`∩[A291625(n+1), A351807(n+1)]`
-/

namespace A134844.P2670933079191449015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291625 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351807 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A134844.P2670933079191449015

namespace A134844

/-- `∩[A291625(n+1), A351807(n+1)]` -/
def P2670933079191449015.Spec : Prop :=
  ∀ n, (P2670933079191449015.a n : ℤ) = A134844 (n + 1)

end A134844

/-! ## A134844.P4999740100516057140

`∩[A052382(n+1), A291625(n+1)]`
-/

namespace A134844.P4999740100516057140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052382 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291625 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A134844.P4999740100516057140

namespace A134844

/-- `∩[A052382(n+1), A291625(n+1)]` -/
def P4999740100516057140.Spec : Prop :=
  ∀ n, (P4999740100516057140.a n : ℤ) = A134844 (n + 1)

end A134844

/-! ## A134844.P8954406599245843408

`eq[2, A071531(n+2)]+2`
-/

namespace A134844.P8954406599245843408
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071531 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A134844.P8954406599245843408

namespace A134844

/-- `eq[2, A071531(n+2)]+2` -/
def P8954406599245843408.Spec : Prop :=
  ∀ n, (P8954406599245843408.a n : ℤ) = A134844 (n + 1)

end A134844

/-! ## A134844.P16925415040102992472

`eq[A053667(n), A055641(n)]`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A134844

/-- `eq[A053667(n), A055641(n)]` -/
def P16925415040102992472.Spec : Prop :=
  ∀ n, (P16925415040102992472.a n : ℤ) = A134844 (n + 1)

theorem P16925415040102992472.correct : P16925415040102992472.Spec := by
  intro n
  simp only [A134844, Nat.add_sub_cancel]

end A134844

/-! ## A134844.P9719788270299487810

`eq[A053667(n), A067898(n)]`
-/

namespace A134844.P9719788270299487810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053667 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067898 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A134844.P9719788270299487810

namespace A134844

/-- `eq[A053667(n), A067898(n)]` -/
def P9719788270299487810.Spec : Prop :=
  ∀ n, (P9719788270299487810.a n : ℤ) = A134844 (n + 1)

end A134844

/-! ## A134844.P6858945465090764075

`eq[A053667(n), A217096(n)]`
-/

namespace A134844.P6858945465090764075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053667 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217096 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A134844.P6858945465090764075

namespace A134844

/-- `eq[A053667(n), A217096(n)]` -/
def P6858945465090764075.Spec : Prop :=
  ∀ n, (P6858945465090764075.a n : ℤ) = A134844 (n + 1)

end A134844

/-! ## A134844.P14758948776955731355

`filter[A291625(n+1), A168046(#)]`
-/

namespace A134844.P14758948776955731355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291625 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168046 (f1 j).toNat = 1) n)

end

end A134844.P14758948776955731355

namespace A134844

/-- `filter[A291625(n+1), A168046(#)]` -/
def P14758948776955731355.Spec : Prop :=
  ∀ n, P14758948776955731355.a n = A134844 (n + 1)

end A134844

/-! ## A134844.P3898283582012746790

`eq[1, A168046(n)+A053667(n)]`
-/

namespace A134844.P3898283582012746790
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168046 n + A053667 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A134844.P3898283582012746790

namespace A134844

/-- `eq[1, A168046(n)+A053667(n)]` -/
def P3898283582012746790.Spec : Prop :=
  ∀ n, (P3898283582012746790.a n : ℤ) = A134844 (n + 1)

end A134844

/-! ## A134844.P12412480696050204487

`lt[1, A086008(n)*A098736(n)]`
-/

namespace A134844.P12412480696050204487
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086008 n * A098736 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A134844.P12412480696050204487

namespace A134844

/-- `lt[1, A086008(n)*A098736(n)]` -/
def P12412480696050204487.Spec : Prop :=
  ∀ n, (P12412480696050204487.a n : ℤ) = A134844 (n + 1)

end A134844

/-! ## A134844.P14817250538962792681

`lt[1, A086008(n)*A321243(n)]`
-/

namespace A134844.P14817250538962792681
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086008 n * A321243 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A134844.P14817250538962792681

namespace A134844

/-- `lt[1, A086008(n)*A321243(n)]` -/
def P14817250538962792681.Spec : Prop :=
  ∀ n, (P14817250538962792681.a n : ℤ) = A134844 (n + 1)

end A134844

/-! ## A134844.P623265930210748548

`eq[A000007(A007954(n)), A053667(n)]`
-/

namespace A134844.P623265930210748548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A007954 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053667 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A134844.P623265930210748548

namespace A134844

/-- `eq[A000007(A007954(n)), A053667(n)]` -/
def P623265930210748548.Spec : Prop :=
  ∀ n, (P623265930210748548.a n : ℤ) = A134844 (n + 1)

end A134844

/-! ## A134844.P7451256619963200378

`lt[A086008(n)*A217096(n), A086008(n)]`
-/

namespace A134844.P7451256619963200378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086008 n * A217096 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086008 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A134844.P7451256619963200378

namespace A134844

/-- `lt[A086008(n)*A217096(n), A086008(n)]` -/
def P7451256619963200378.Spec : Prop :=
  ∀ n, (P7451256619963200378.a n : ℤ) = A134844 (n + 1)

end A134844

/-! ## A134844.P18048897919373536573

`eq[A000038(n)^A054054(n), A053667(n)]`
-/

namespace A134844.P18048897919373536573
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000038 n : ℚ) ^ (A054054 n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053667 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℚ)) n

end

end A134844.P18048897919373536573

namespace A134844

/-- `eq[A000038(n)^A054054(n), A053667(n)]` -/
def P18048897919373536573.Spec : Prop :=
  ∀ n, (P18048897919373536573.a n : ℤ) = A134844 (n + 1)

end A134844

/-! ## A134844.P3295872302962110883

`eq[A000038(n*A054054(n)), A053667(n)]`
-/

namespace A134844.P3295872302962110883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 ((n : ℤ) * A054054 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053667 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A134844.P3295872302962110883

namespace A134844

/-- `eq[A000038(n*A054054(n)), A053667(n)]` -/
def P3295872302962110883.Spec : Prop :=
  ∀ n, (P3295872302962110883.a n : ℤ) = A134844 (n + 1)

end A134844

/-! ## A134844.P5674193750442914947

`filter[A134843(n+1), A168046(#)]`
-/

namespace A134844.P5674193750442914947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134843 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168046 (f1 j).toNat = 1) n)

end

end A134844.P5674193750442914947

namespace A134844

/-- `filter[A134843(n+1), A168046(#)]` -/
def P5674193750442914947.Spec : Prop :=
  ∀ n, P5674193750442914947.a n = A134844 (n + 1)

end A134844

/-! ## A134844.P14077989446768793921

`∩[A052382(n+1), A134843(n+1)]`
-/

namespace A134844.P14077989446768793921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052382 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134843 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A134844.P14077989446768793921

namespace A134844

/-- `∩[A052382(n+1), A134843(n+1)]` -/
def P14077989446768793921.Spec : Prop :=
  ∀ n, (P14077989446768793921.a n : ℤ) = A134844 (n + 1)

end A134844

/-! ## A134844.P6783290850658660534

`∩[A134843(n+1), A351807(n+1)]`
-/

namespace A134844.P6783290850658660534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134843 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351807 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A134844.P6783290850658660534

namespace A134844

/-- `∩[A134843(n+1), A351807(n+1)]` -/
def P6783290850658660534.Spec : Prop :=
  ∀ n, (P6783290850658660534.a n : ℤ) = A134844 (n + 1)

end A134844

/-!
# A134846: Smallest number k containing no zero digit such that k^2 contains exactly n zeros.

The programs for A134846, there is no canonical definition to state claims against.
-/

/-! ## A134846.P8048157796023101107

`sqrt(A134847(n+1))`
-/

namespace A134846.P8048157796023101107
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A134847 (n + 1) : ℝ)

end

end A134846.P8048157796023101107

/-! ## A134846.P15163307488985989607

`root(A134847(n+1), p?[A025462(n)])`
-/

namespace A134846.P15163307488985989607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025462 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A134847 (n + 1) : ℝ) ^ (1 / (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℝ))

end

end A134846.P15163307488985989607

/-! ## A134846.P12030597723252546330

`root(A134847(n+1), p?[A055090(n)])`
-/

namespace A134846.P12030597723252546330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055090 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A134847 (n + 1) : ℝ) ^ (1 / (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℝ))

end

end A134846.P12030597723252546330

/-! ## A134846.P74589659438405993

`root(A134847(n+1), p?[A166974(n)])`
-/

namespace A134846.P74589659438405993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166974 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A134847 (n + 1) : ℝ) ^ (1 / (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℝ))

end

end A134846.P74589659438405993

/-! ## A134846.P968693703097903809

`root(A134847(n+1), p?[A309144(n+1)])`
-/

namespace A134846.P968693703097903809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309144 (n + 1)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A134847 (n + 1) : ℝ) ^ (1 / (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℝ))

end

end A134846.P968693703097903809

/-!
# A134847: Smallest square number with exactly n zero digits whose square root does not contain any zero digits.

The programs for A134847, there is no canonical definition to state claims against.
-/

/-! ## A134847.P11167211364730803318

`A134846(n+1)²`
-/

namespace A134847.P11167211364730803318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134846 (n + 1) ^ 2

end

end A134847.P11167211364730803318

/-! ## A134847.P1342296348491338957

`A134846(n+1)^p?[A166974(n)]`
-/

namespace A134847.P1342296348491338957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166974 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A134846 (n + 1) : ℚ) ^ (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℤ)

end

end A134847.P1342296348491338957

/-! ## A134847.P12572656783802397522

`A134846(n+1)^A020639(A133265(n))`
-/

namespace A134847.P12572656783802397522
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A134846 (n + 1) : ℚ) ^ (A020639 (A133265 n).toNat : ℤ)

end

end A134847.P12572656783802397522

/-! ## A134847.P42143440556578342

`A134846(n+1)^A000005(A000043(n+1))`
-/

namespace A134847.P42143440556578342
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A134846 (n + 1) : ℚ) ^ (A000005 (A000043 (n + 1)).toNat : ℤ)

end

end A134847.P42143440556578342

/-!
# A134848: Number of digits in A134847(n).

The programs for A134848, there is no canonical definition to state claims against.
-/

/-! ## A134848.P5416310720637366925

`A134849(n+1)+1+n`
-/

namespace A134848.P5416310720637366925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134849 (n + 1) + 1 + (n : ℤ)

end

end A134848.P5416310720637366925

/-! ## A134848.P2251798882907135518

`A020725(A134849(n+1)+n)`
-/

namespace A134848.P2251798882907135518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A134849 (n + 1) + (n : ℤ)).toNat

end

end A134848.P2251798882907135518

/-! ## A134848.P13338078520812278697

`A184482(n+3-A328712(n+1))`
-/

namespace A134848.P13338078520812278697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184482 ((n + 3 : ℤ) - A328712 (n + 1)).toNat

end

end A134848.P13338078520812278697

/-! ## A134848.P10701498237942160188

`A184482(n+3)-A336562(n+1)`
-/

namespace A134848.P10701498237942160188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184482 (n + 3) - A336562 (n + 1)

end

end A134848.P10701498237942160188

/-! ## A134848.P3038707789801759427

`A184482(n+3)-char[A304807(n+1)]`
-/

namespace A134848.P3038707789801759427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304807 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184482 (n + 3) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A134848.P3038707789801759427

/-!
# A134850: Number of primes between A075737(n) and A075737(n+1), including one bound.

The programs for A134850, there is no canonical definition to state claims against.
-/

/-! ## A134850.P12005919251712641683

`Δ[record[A099000(A052938(n))]]`
-/

namespace A134850.P12005919251712641683
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099000 (A052938 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A134850.P12005919251712641683

/-! ## A134850.P5669593680230814579

`Δ[A054782(A083668(n+1))]`
-/

namespace A134850.P5669593680230814579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054782 (A083668 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A134850.P5669593680230814579

/-! ## A134850.P16360551698095501525

`Δ[A099000(A065475(n+1))]`
-/

namespace A134850.P16360551698095501525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099000 (A065475 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A134850.P16360551698095501525

/-! ## A134850.P13408503251497317836

`Δ[A054782(record[A335568(n+1)])]`
-/

namespace A134850.P13408503251497317836
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335568 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054782 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A134850.P13408503251497317836

/-! ## A134850.P8350012495144829314

`record[Δ[A099000(A053620(3*n+2))]]`
-/

namespace A134850.P8350012495144829314
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099000 (A053620 (3 * n + 2)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A134850.P8350012495144829314

/-!
# A134851: Number of primes between A001605(n) and A001605(n+1).

The programs for A134851, there is no canonical definition to state claims against.
-/

/-! ## A134851.P7658157454204544273

`Δ[A119984(floor(sqrt(n²+1)))]`
-/

namespace A134851.P7658157454204544273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119984 (Nat.sqrt (n ^ 2 + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A134851.P7658157454204544273

/-! ## A134851.P794336529138572528

`abs(Δ[A119984(A028310(n))])`
-/

namespace A134851.P794336529138572528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119984 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A134851.P794336529138572528

/-! ## A134851.P17195053170177016636

`A119984(n+1)-A119984(floor(sqrt(n²+1)))`
-/

namespace A134851.P17195053170177016636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119984 (n + 1) - A119984 (Nat.sqrt (n ^ 2 + 1))

end

end A134851.P17195053170177016636

/-! ## A134851.P18189439224842183854

`Δ[A119984(A028310(n))]%A000070(n)`
-/

namespace A134851.P18189439224842183854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119984 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A000070 n)

end

end A134851.P18189439224842183854

/-! ## A134851.P2250800990249377216

`(A000038(n)+1)*Δ[A119984(A028310(n))]`
-/

namespace A134851.P2250800990249377216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119984 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000038 n + 1) * (f1 (n + 1) - f1 n)

end

end A134851.P2250800990249377216

/-! ## A134851.P10245852793185470454

`A014963(4*n+2)*Δ[A119984(A028310(n))]`
-/

namespace A134851.P10245852793185470454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119984 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (4 * n + 2) * (f1 (n + 1) - f1 n)

end

end A134851.P10245852793185470454

/-! ## A134851.P15317135019308835098

`Δ[A119984(A000038(n)+n)]%A000032(n+1)`
-/

namespace A134851.P15317135019308835098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119984 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A000032 (n + 1))

end

end A134851.P15317135019308835098

/-!
# A134852: Number of distinct prime factors of the Fibonacci numbers in A050937.

The programs for A134852, the canonical program `A134852.P13918386080311944106` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A134852 has offset 1).

The definition of A134852 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 203 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A134852.P17101588425520534725

`A022307(A090819(n+1))`
-/

namespace A134852.P17101588425520534725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022307 (A090819 (n + 1)).toNat

end

end A134852.P17101588425520534725

namespace A134852

/-- `A022307(A090819(n+1))` -/
def P17101588425520534725.Spec : Prop :=
  ∀ n, P17101588425520534725.a n = A134852 (n + 1)

end A134852

/-! ## A134852.P13830986247317810820

`A080345(A134787(n+1))`
-/

namespace A134852.P13830986247317810820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080345 (A134787 (n + 1)).toNat

end

end A134852.P13830986247317810820

namespace A134852

/-- `A080345(A134787(n+1))` -/
def P13830986247317810820.Spec : Prop :=
  ∀ n, P13830986247317810820.a n = A134852 (n + 1)

end A134852

/-! ## A134852.P9354100239080642291

`A022307(p?[A261312(n+1)])`
-/

namespace A134852.P9354100239080642291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261312 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022307 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A134852.P9354100239080642291

namespace A134852

/-- `A022307(p?[A261312(n+1)])` -/
def P9354100239080642291.Spec : Prop :=
  ∀ n, P9354100239080642291.a n = A134852 (n + 1)

end A134852

/-! ## A134852.P3934877513039907427

`A038575(p?[A261312(n+1)])`
-/

namespace A134852.P3934877513039907427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261312 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038575 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A134852.P3934877513039907427

namespace A134852

/-- `A038575(p?[A261312(n+1)])` -/
def P3934877513039907427.Spec : Prop :=
  ∀ n, P3934877513039907427.a n = A134852 (n + 1)

end A134852

/-! ## A134852.P10783135154188186146

`A080345(comp[A339082(n+1)])`
-/

namespace A134852.P10783135154188186146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339082 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080345 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A134852.P10783135154188186146

namespace A134852

/-- `A080345(comp[A339082(n+1)])` -/
def P10783135154188186146.Spec : Prop :=
  ∀ n, P10783135154188186146.a n = A134852 (n + 1)

end A134852

/-! ## A134852.P17287655769689679980

`A080345(comp[A119984(n+1)-1]+1)`
-/

namespace A134852.P17287655769689679980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119984 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080345 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1)

end

end A134852.P17287655769689679980

namespace A134852

/-- `A080345(comp[A119984(n+1)-1]+1)` -/
def P17287655769689679980.Spec : Prop :=
  ∀ n, P17287655769689679980.a n = A134852 (n + 1)

end A134852

/-! ## A134852.P13918386080311944106

`A080345(lt[C(2, A080345(n+1)), 2]+1)`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A134852

/-- `A080345(lt[C(2, A080345(n+1)), 2]+1)` -/
def P13918386080311944106.Spec : Prop :=
  ∀ n, P13918386080311944106.a n = A134852 (n + 1)

theorem P13918386080311944106.correct : P13918386080311944106.Spec := by
  intro n
  simp only [A134852, Nat.add_sub_cancel]

end A134852

/-! ## A134852.P7179281581329706184

`A080345(record[(n+1)%(A080345(n+2)+n)]+1)`
-/

namespace A134852.P7179281581329706184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A080345 (n + 2) + (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080345 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1).toNat

end

end A134852.P7179281581329706184

namespace A134852

/-- `A080345(record[(n+1)%(A080345(n+2)+n)]+1)` -/
def P7179281581329706184.Spec : Prop :=
  ∀ n, P7179281581329706184.a n = A134852 (n + 1)

end A134852

/-! ## A134852.P2361661979074646449

`∑{d}[A000040(A134787(n+1)), A022307(#)]`
-/

namespace A134852.P2361661979074646449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A134787 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A022307 d

end

end A134852.P2361661979074646449

namespace A134852

/-- `∑{d}[A000040(A134787(n+1)), A022307(#)]` -/
def P2361661979074646449.Spec : Prop :=
  ∀ n, P2361661979074646449.a n = A134852 (n + 1)

end A134852

/-! ## A134852.P17358504480751313044

`A038575(record[A014963(A114304(n+1))])`
-/

namespace A134852.P17358504480751313044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A114304 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038575 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A134852.P17358504480751313044

namespace A134852

/-- `A038575(record[A014963(A114304(n+1))])` -/
def P17358504480751313044.Spec : Prop :=
  ∀ n, P17358504480751313044.a n = A134852 (n + 1)

end A134852

/-! ## A134852.P14778622534462940923

`A022307(p?[A114305(n+1)%A114304(n+1)])`
-/

namespace A134852.P14778622534462940923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A114305 (n + 1)) (A114304 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022307 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A134852.P14778622534462940923

namespace A134852

/-- `A022307(p?[A114305(n+1)%A114304(n+1)])` -/
def P14778622534462940923.Spec : Prop :=
  ∀ n, P14778622534462940923.a n = A134852 (n + 1)

end A134852

/-! ## A134852.P12088991259284190363

`A086597(p?[A261312(n+1)])`
-/

namespace A134852.P12088991259284190363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261312 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086597 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A134852.P12088991259284190363

namespace A134852

/-- `A086597(p?[A261312(n+1)])` -/
def P12088991259284190363.Spec : Prop :=
  ∀ n, P12088991259284190363.a n = A134852 (n + 1)

end A134852

/-!
# A134853: Generalized mountain numbers.

The programs for A134853, there is no canonical definition to state claims against.
-/

/-! ## A134853.P13703801442284209485

`A152054(n+1)%A011557(A025160(n+1))`
-/

namespace A134853.P13703801442284209485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A152054 (n + 1)) (A011557 (A025160 (n + 1)).toNat)

end

end A134853.P13703801442284209485

/-! ## A134853.P721720036982662194

`eq[5, A004427(9*n)]-A361566(A197364(n+1))`
-/

namespace A134853.P721720036982662194
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004427 (9 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - A361566 (A197364 (n + 1)).toNat

end

end A134853.P721720036982662194

/-! ## A134853.P2489137932269514538

`eq[5, A004427(9*n)]-A153683(A153683(n+1))`
-/

namespace A134853.P2489137932269514538
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004427 (9 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - A153683 (A153683 (n + 1)).toNat

end

end A134853.P2489137932269514538

/-! ## A134853.P3717965251957667267

`eq[5, A004427(9*n)]-A361566(A330097(2*n+3))`
-/

namespace A134853.P3717965251957667267
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004427 (9 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - A361566 (A330097 (2 * n + 3)).toNat

end

end A134853.P3717965251957667267

/-! ## A134853.P17432952898142244124

`A117373(A161141(n+2))+eq[5, A004427(9*n)]`
-/

namespace A134853.P17432952898142244124
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004427 (9 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117373 (A161141 (n + 2)).toNat + (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ)

end

end A134853.P17432952898142244124

/-!
# A134854: Least prime of the form 1 + p*2^n, where p is an odd prime.

The programs for A134854, there is no canonical definition to state claims against.
-/

/-! ## A134854.P16309426083304995070

`2^(n+1)*A134855(n+1)+1`
-/

namespace A134854.P16309426083304995070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) : ℤ) * A134855 (n + 1) + 1

end

end A134854.P16309426083304995070

/-! ## A134854.P13077170632179908174

`or(1, 2*sqrt(A000302(n))*A134855(n+1))`
-/

namespace A134854.P13077170632179908174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (SequenceMachineLib.roundAway (2 * Real.sqrt (A000302 n : ℝ) * (A134855 (n + 1) : ℝ)))

end

end A134854.P13077170632179908174

/-! ## A134854.P3832452345610683118

`A134765(2^n)`
-/

namespace A134854.P3832452345610683118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134765 (2 ^ n)

end

end A134854.P3832452345610683118

/-! ## A134854.P13291138243163721672

`p?[A134765(A000079(n))]`
-/

namespace A134854.P13291138243163721672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134765 (A000079 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A134854.P13291138243163721672

/-! ## A134854.P10673165919335035567

`p?[A134765(A219676(n))]`
-/

namespace A134854.P10673165919335035567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134765 (A219676 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A134854.P10673165919335035567

/-!
# A134855: Least odd prime p such that 1 + p*2^n is also prime.

The programs for A134855, there is no canonical definition to state claims against.
-/

/-! ## A134855.P12859827934042031223

`ceil(A134854(n+1)/A048578(n))`
-/

namespace A134855.P12859827934042031223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A134854 (n + 1) : ℚ) / (A048578 n : ℚ)⌉

end

end A134855.P12859827934042031223

/-! ## A134855.P15786188697281308572

`floor(A134854(n+1)/A000079(n+1))`
-/

namespace A134855.P15786188697281308572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A134854 (n + 1) : ℚ) / (A000079 (n + 1) : ℚ)⌋

end

end A134855.P15786188697281308572

/-! ## A134855.P14189161125294975192

`floor(A134854(n+1)/A011782(n+2))`
-/

namespace A134855.P14189161125294975192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A134854 (n + 1) : ℚ) / (A011782 (n + 2) : ℚ)⌋

end

end A134855.P14189161125294975192

/-! ## A134855.P7592875800743421328

`ceil(A134854(n+1)/A083318(n+1))`
-/

namespace A134855.P7592875800743421328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A134854 (n + 1) : ℚ) / (A083318 (n + 1) : ℚ)⌉

end

end A134855.P7592875800743421328

/-! ## A134855.P8835192784395541987

`ceil(2*A134854(n+1)/A020737(n))`
-/

namespace A134855.P8835192784395541987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈2 * ((A134854 (n + 1) : ℚ) / (A020737 n : ℚ))⌉

end

end A134855.P8835192784395541987

/-! ## A134855.P15842547302881903688

`A004273(ceil(A134854(n+1)/A020737(n)))`
-/

namespace A134855.P15842547302881903688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 ⌈(A134854 (n + 1) : ℚ) / (A020737 n : ℚ)⌉.toNat

end

end A134855.P15842547302881903688

/-!
# A134859: Wythoff AAA numbers.

The programs for A134859, the canonical program `A134859.P1011792927617941911` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A134859 has offset 1).

The definition of A134859 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A134859.P1011792927617941911

`2*floor((n+1)*ϕ²)-(n+1)-2`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A134859

/-- `2*floor((n+1)*ϕ²)-(n+1)-2` -/
def P1011792927617941911.Spec : Prop :=
  ∀ n, P1011792927617941911.a n = A134859 (n + 1)

theorem P1011792927617941911.correct : P1011792927617941911.Spec := by
  intro n
  simp only [A134859, Nat.add_sub_cancel]

end A134859

/-! ## A134859.P1956455896418087268

`xor(-(2*floor(ϕ*(n+1))+n), -1)`
-/

namespace A134859.P1956455896418087268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (-(2 * ⌊Real.goldenRatio * (n + 1 : ℝ)⌋ + (n : ℤ))) (-1)

end

end A134859.P1956455896418087268

namespace A134859

/-- `xor(-(2*floor(ϕ*(n+1))+n), -1)` -/
def P1956455896418087268.Spec : Prop :=
  ∀ n, P1956455896418087268.a n = A134859 (n + 1)

end A134859

/-!
# A134860: Wythoff AAB numbers; also, Fib101 numbers: those n for which the Zeckendorf expansion A014417(n) ends with 1,0,1.

The programs for A134860, the canonical program `A134860.P10022107940659207837` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A134860 has offset 1).

The definition of A134860 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A134860.P16965948219395289923

`∑[xor(5, Δ[floor(ϕ*n)])]+n`
-/

namespace A134860.P16965948219395289923
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (n : ℝ)⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 5 (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A134860.P16965948219395289923

namespace A134860

/-- `∑[xor(5, Δ[floor(ϕ*n)])]+n` -/
def P16965948219395289923.Spec : Prop :=
  ∀ n, P16965948219395289923.a n = A134860 (n + 1)

end A134860

/-! ## A134860.P11175212715867675475

`3*comp[floor(ϕ*n)]-(n+2)`
-/

namespace A134860.P11175212715867675475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (n : ℝ)⌋

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n + 2 : ℤ)

end

end A134860.P11175212715867675475

namespace A134860

/-- `3*comp[floor(ϕ*n)]-(n+2)` -/
def P11175212715867675475.Spec : Prop :=
  ∀ n, P11175212715867675475.a n = A134860 (n + 1)

end A134860

/-! ## A134860.P10022107940659207837

`abs(xor(-1, A035337(n)))`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A134860

/-- `abs(xor(-1, A035337(n)))` -/
def P10022107940659207837.Spec : Prop :=
  ∀ n, P10022107940659207837.a n = A134860 (n + 1)

theorem P10022107940659207837.correct : P10022107940659207837.Spec := by
  intro n
  simp only [A134860, Nat.add_sub_cancel]

end A134860

/-! ## A134860.P16137066467942945469

`abs(4-A188438(n+1))`
-/

namespace A134860.P16137066467942945469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |4 - A188438 (n + 1)|

end

end A134860.P16137066467942945469

namespace A134860

/-- `abs(4-A188438(n+1))` -/
def P16137066467942945469.Spec : Prop :=
  ∀ n, P16137066467942945469.a n = A134860 (n + 1)

end A134860

/-! ## A134860.P3684184577827250081

`floor(ϕ*A003623(n+1))`
-/

namespace A134860.P3684184577827250081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (A003623 (n + 1) : ℝ)⌋

end

end A134860.P3684184577827250081

namespace A134860

/-- `floor(ϕ*A003623(n+1))` -/
def P3684184577827250081.Spec : Prop :=
  ∀ n, P3684184577827250081.a n = A134860 (n + 1)

end A134860

/-! ## A134860.P17163986106835619771

`ceil(ϕ*A035336(n+1))`
-/

namespace A134860.P17163986106835619771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.goldenRatio * (A035336 (n + 1) : ℝ)⌉

end

end A134860.P17163986106835619771

namespace A134860

/-- `ceil(ϕ*A035336(n+1))` -/
def P17163986106835619771.Spec : Prop :=
  ∀ n, P17163986106835619771.a n = A134860 (n + 1)

end A134860

/-! ## A134860.P8721874088500490283

`A000027(A035337(n)+1)`
-/

namespace A134860.P8721874088500490283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A035337 n + 1).toNat

end

end A134860.P8721874088500490283

namespace A134860

/-- `A000027(A035337(n)+1)` -/
def P8721874088500490283.Spec : Prop :=
  ∀ n, P8721874088500490283.a n = A134860 (n + 1)

end A134860

/-! ## A134860.P2461692688620500646

`A000027(A190509(n+1)+n)`
-/

namespace A134860.P2461692688620500646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A190509 (n + 1) + (n : ℤ)).toNat

end

end A134860.P2461692688620500646

namespace A134860

/-- `A000027(A190509(n+1)+n)` -/
def P2461692688620500646.Spec : Prop :=
  ∀ n, P2461692688620500646.a n = A134860 (n + 1)

end A134860

/-! ## A134860.P4797021264361498976

`(A035337(n)+1)%A035338(n)`
-/

namespace A134860.P4797021264361498976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A035337 n + 1) (A035338 n)

end

end A134860.P4797021264361498976

namespace A134860

/-- `(A035337(n)+1)%A035338(n)` -/
def P4797021264361498976.Spec : Prop :=
  ∀ n, P4797021264361498976.a n = A134860 (n + 1)

end A134860

/-! ## A134860.P1745347523174985341

`A003622(A001950(n+1))`
-/

namespace A134860.P1745347523174985341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003622 (A001950 (n + 1)).toNat

end

end A134860.P1745347523174985341

namespace A134860

/-- `A003622(A001950(n+1))` -/
def P1745347523174985341.Spec : Prop :=
  ∀ n, P1745347523174985341.a n = A134860 (n + 1)

end A134860

/-! ## A134860.P18012970037307198131

`A003622(∑[A001468(n)+1])`
-/

namespace A134860.P18012970037307198131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001468 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003622 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A134860.P18012970037307198131

namespace A134860

/-- `A003622(∑[A001468(n)+1])` -/
def P18012970037307198131.Spec : Prop :=
  ∀ n, P18012970037307198131.a n = A134860 (n + 1)

end A134860

/-! ## A134860.P6222057262480088538

`A003622(A003622(n+1)+1)`
-/

namespace A134860.P6222057262480088538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003622 (A003622 (n + 1) + 1).toNat

end

end A134860.P6222057262480088538

namespace A134860

/-- `A003622(A003622(n+1)+1)` -/
def P6222057262480088538.Spec : Prop :=
  ∀ n, P6222057262480088538.a n = A134860 (n + 1)

end A134860

/-! ## A134860.P813988405222483871

`A089910(A000201(n+1))`
-/

namespace A134860.P813988405222483871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089910 (A000201 (n + 1)).toNat

end

end A134860.P813988405222483871

namespace A134860

/-- `A089910(A000201(n+1))` -/
def P813988405222483871.Spec : Prop :=
  ∀ n, P813988405222483871.a n = A134860 (n + 1)

end A134860

/-! ## A134860.P13565665958754065038

`A089910(A066096(n+1))`
-/

namespace A134860.P13565665958754065038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089910 (A066096 (n + 1)).toNat

end

end A134860.P13565665958754065038

namespace A134860

/-- `A089910(A066096(n+1))` -/
def P13565665958754065038.Spec : Prop :=
  ∀ n, P13565665958754065038.a n = A134860 (n + 1)

end A134860

/-! ## A134860.P9755514052627565303

`A276885(A026351(n+1))`
-/

namespace A134860.P9755514052627565303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276885 (A026351 (n + 1)).toNat

end

end A134860.P9755514052627565303

namespace A134860

/-- `A276885(A026351(n+1))` -/
def P9755514052627565303.Spec : Prop :=
  ∀ n, P9755514052627565303.a n = A134860 (n + 1)

end A134860

/-! ## A134860.P3728051668394887252

`A089910(A022342(n+1)+1)`
-/

namespace A134860.P3728051668394887252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089910 (A022342 (n + 1) + 1).toNat

end

end A134860.P3728051668394887252

namespace A134860

/-- `A089910(A022342(n+1)+1)` -/
def P3728051668394887252.Spec : Prop :=
  ∀ n, P3728051668394887252.a n = A134860 (n + 1)

end A134860

/-! ## A134860.P12812102917105838629

`A276885(A000201(n+1)+1)`
-/

namespace A134860.P12812102917105838629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276885 (A000201 (n + 1) + 1).toNat

end

end A134860.P12812102917105838629

namespace A134860

/-- `A276885(A000201(n+1)+1)` -/
def P12812102917105838629.Spec : Prop :=
  ∀ n, P12812102917105838629.a n = A134860 (n + 1)

end A134860

/-! ## A134860.P14879824761834949767

`A276885(A066096(n+1)+1)`
-/

namespace A134860.P14879824761834949767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276885 (A066096 (n + 1) + 1).toNat

end

end A134860.P14879824761834949767

namespace A134860

/-- `A276885(A066096(n+1)+1)` -/
def P14879824761834949767.Spec : Prop :=
  ∀ n, P14879824761834949767.a n = A134860 (n + 1)

end A134860

/-! ## A134860.P8357929501811142960

`A276885(A022342(n+1)+2)`
-/

namespace A134860.P8357929501811142960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276885 (A022342 (n + 1) + 2).toNat

end

end A134860.P8357929501811142960

namespace A134860

/-- `A276885(A022342(n+1)+2)` -/
def P8357929501811142960.Spec : Prop :=
  ∀ n, P8357929501811142960.a n = A134860 (n + 1)

end A134860

/-!
# A134861: Wythoff BAA numbers.

The programs for A134861, the canonical program `A134861.P12598962134347157448` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A134861 has offset 1).

The definition of A134861 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A134861.P6875617104899535221

`3*comp[floor(ϕ*n)]-(n+4)`
-/

namespace A134861.P6875617104899535221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (n : ℝ)⌋

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n + 4 : ℤ)

end

end A134861.P6875617104899535221

namespace A134861

/-- `3*comp[floor(ϕ*n)]-(n+4)` -/
def P6875617104899535221.Spec : Prop :=
  ∀ n, P6875617104899535221.a n = A134861 (n + 1)

end A134861

/-! ## A134861.P3768870602276550357

`and(3*floor(n*ϕ²+ϕ)-n-1, -1)`
-/

namespace A134861.P3768870602276550357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (3 * ⌊(n : ℝ) * Real.goldenRatio ^ 2 + Real.goldenRatio⌋ - (n : ℤ) - 1) (-1)

end

end A134861.P3768870602276550357

namespace A134861

/-- `and(3*floor(n*ϕ²+ϕ)-n-1, -1)` -/
def P3768870602276550357.Spec : Prop :=
  ∀ n, P3768870602276550357.a n = A134861 (n + 1)

end A134861

/-! ## A134861.P5483124538012470283

`xor(-1, -(2*n+3*floor(ϕ*(n+1))))`
-/

namespace A134861.P5483124538012470283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (-1) (-((2 * n : ℤ) + 3 * ⌊Real.goldenRatio * (n + 1 : ℝ)⌋))

end

end A134861.P5483124538012470283

namespace A134861

/-- `xor(-1, -(2*n+3*floor(ϕ*(n+1))))` -/
def P5483124538012470283.Spec : Prop :=
  ∀ n, P5483124538012470283.a n = A134861 (n + 1)

end A134861

/-! ## A134861.P30642803011103339

`∩[floor(ϕ*(n+2))-2, floor(n*ϕ²)-5]`
-/

namespace A134861.P30642803011103339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (n + 2 : ℝ)⌋ - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.goldenRatio ^ 2⌋ - 5

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A134861.P30642803011103339

namespace A134861

/-- `∩[floor(ϕ*(n+2))-2, floor(n*ϕ²)-5]` -/
def P30642803011103339.Spec : Prop :=
  ∀ n, (P30642803011103339.a n : ℤ) = A134861 (n + 1)

end A134861

/-! ## A134861.P312785785012073480

`gcd(1-(3*floor(n*ϕ²+ϕ)-n), floor(acot(n)²))`
-/

namespace A134861.P312785785012073480
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (1 - (3 * ⌊(n : ℝ) * Real.goldenRatio ^ 2 + Real.goldenRatio⌋ - (n : ℤ))) ⌊SequenceMachineLib.acot (n : ℝ) ^ 2⌋

end

end A134861.P312785785012073480

namespace A134861

/-- `gcd(1-(3*floor(n*ϕ²+ϕ)-n), floor(acot(n)²))` -/
def P312785785012073480.Spec : Prop :=
  ∀ n, (P312785785012073480.a n : ℤ) = A134861 (n + 1)

end A134861

/-! ## A134861.P9415612895532372144

`ceil(ϕ*(2*floor(ϕ*(n+1))+n-floor(acot(n))!))`
-/

namespace A134861.P9415612895532372144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.goldenRatio * (2 * ⌊Real.goldenRatio * (n + 1 : ℝ)⌋ + (n : ℤ) - (Nat.factorial ⌊SequenceMachineLib.acot (n : ℝ)⌋.toNat : ℤ) : ℝ)⌉

end

end A134861.P9415612895532372144

namespace A134861

/-- `ceil(ϕ*(2*floor(ϕ*(n+1))+n-floor(acot(n))!))` -/
def P9415612895532372144.Spec : Prop :=
  ∀ n, P9415612895532372144.a n = A134861 (n + 1)

end A134861

/-! ## A134861.P1592743779464781807

`ceil(ϕ*(2*floor(ϕ*(n+1))+n-ceil(sin(n)²)!))`
-/

namespace A134861.P1592743779464781807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.goldenRatio * (2 * ⌊Real.goldenRatio * (n + 1 : ℝ)⌋ + (n : ℤ) - (Nat.factorial ⌈Real.sin (n : ℝ) ^ 2⌉.toNat : ℤ) : ℝ)⌉

end

end A134861.P1592743779464781807

namespace A134861

/-- `ceil(ϕ*(2*floor(ϕ*(n+1))+n-ceil(sin(n)²)!))` -/
def P1592743779464781807.Spec : Prop :=
  ∀ n, P1592743779464781807.a n = A134861 (n + 1)

end A134861

/-! ## A134861.P10724879235178613575

`ceil(ϕ*(2*floor(ϕ*(n+1))+n-abs(1-and(2, n))))`
-/

namespace A134861.P10724879235178613575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.goldenRatio * (2 * ⌊Real.goldenRatio * (n + 1 : ℝ)⌋ + (n : ℤ) - |1 - (Nat.land 2 n : ℤ)| : ℝ)⌉

end

end A134861.P10724879235178613575

namespace A134861

/-- `ceil(ϕ*(2*floor(ϕ*(n+1))+n-abs(1-and(2, n))))` -/
def P10724879235178613575.Spec : Prop :=
  ∀ n, P10724879235178613575.a n = A134861 (n + 1)

end A134861

/-! ## A134861.P12598962134347157448

`A035339(n)%A372302(n+1)`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A134861

/-- `A035339(n)%A372302(n+1)` -/
def P12598962134347157448.Spec : Prop :=
  ∀ n, P12598962134347157448.a n = A134861 (n + 1)

theorem P12598962134347157448.correct : P12598962134347157448.Spec := by
  intro n
  simp only [A134861, Nat.add_sub_cancel]

end A134861

/-! ## A134861.P15978943986823372867

`A035336(A000201(n+1))`
-/

namespace A134861.P15978943986823372867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035336 (A000201 (n + 1)).toNat

end

end A134861.P15978943986823372867

namespace A134861

/-- `A035336(A000201(n+1))` -/
def P15978943986823372867.Spec : Prop :=
  ∀ n, P15978943986823372867.a n = A134861 (n + 1)

end A134861

/-! ## A134861.P18216576508247519528

`A035336(A066096(n+1))`
-/

namespace A134861.P18216576508247519528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035336 (A066096 (n + 1)).toNat

end

end A134861.P18216576508247519528

namespace A134861

/-- `A035336(A066096(n+1))` -/
def P18216576508247519528.Spec : Prop :=
  ∀ n, P18216576508247519528.a n = A134861 (n + 1)

end A134861

/-! ## A134861.P5161591400323980443

`A035336(∑[A282162(n)-1])`
-/

namespace A134861.P5161591400323980443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282162 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035336 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A134861.P5161591400323980443

namespace A134861

/-- `A035336(∑[A282162(n)-1])` -/
def P5161591400323980443.Spec : Prop :=
  ∀ n, P5161591400323980443.a n = A134861 (n + 1)

end A134861

/-! ## A134861.P14173903716721564127

`A035336(A022342(n+1)+1)`
-/

namespace A134861.P14173903716721564127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035336 (A022342 (n + 1) + 1).toNat

end

end A134861.P14173903716721564127

namespace A134861

/-- `A035336(A022342(n+1)+1)` -/
def P14173903716721564127.Spec : Prop :=
  ∀ n, P14173903716721564127.a n = A134861 (n + 1)

end A134861

/-! ## A134861.P10036097638451774951

`A035336(A026351(n+1)-1)`
-/

namespace A134861.P10036097638451774951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035336 (A026351 (n + 1) - 1).toNat

end

end A134861.P10036097638451774951

namespace A134861

/-- `A035336(A026351(n+1)-1)` -/
def P10036097638451774951.Spec : Prop :=
  ∀ n, P10036097638451774951.a n = A134861 (n + 1)

end A134861

/-! ## A134861.P17939547279850749939

`A035336(A005206(n)+n+1)`
-/

namespace A134861.P17939547279850749939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035336 (A005206 n + (n + 1 : ℤ)).toNat

end

end A134861.P17939547279850749939

namespace A134861

/-- `A035336(A005206(n)+n+1)` -/
def P17939547279850749939.Spec : Prop :=
  ∀ n, P17939547279850749939.a n = A134861 (n + 1)

end A134861

/-! ## A134861.P15637334492214382988

`A035336(A019446(n+1)+n)`
-/

namespace A134861.P15637334492214382988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035336 (A019446 (n + 1) + (n : ℤ)).toNat

end

end A134861.P15637334492214382988

namespace A134861

/-- `A035336(A019446(n+1)+n)` -/
def P15637334492214382988.Spec : Prop :=
  ∀ n, P15637334492214382988.a n = A134861 (n + 1)

end A134861

/-! ## A134861.P2974958691889052829

`A187949(Δ[n²])`
-/

namespace A134861.P2974958691889052829
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187949 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A134861.P2974958691889052829

namespace A134861

/-- `A187949(Δ[n²])` -/
def P2974958691889052829.Spec : Prop :=
  ∀ n, P2974958691889052829.a n = A134861 (n + 1)

end A134861

/-! ## A134861.P8600429784241425504

`A035336(A307294(2*n))`
-/

namespace A134861.P8600429784241425504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035336 (A307294 (2 * n)).toNat

end

end A134861.P8600429784241425504

namespace A134861

/-- `A035336(A307294(2*n))` -/
def P8600429784241425504.Spec : Prop :=
  ∀ n, P8600429784241425504.a n = A134861 (n + 1)

end A134861

/-! ## A134861.P3151093934773850986

`A035336(A054084(2*(n+1)))`
-/

namespace A134861.P3151093934773850986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035336 (A054084 (2 * (n + 1))).toNat

end

end A134861.P3151093934773850986

namespace A134861

/-- `A035336(A054084(2*(n+1)))` -/
def P3151093934773850986.Spec : Prop :=
  ∀ n, P3151093934773850986.a n = A134861 (n + 1)

end A134861

/-!
# A134862: Wythoff ABB numbers.

The programs for A134862, there is no canonical definition to state claims against.
-/

/-! ## A134862.P12342274079261477545

`∑[xor(9, Δ[floor(ϕ*n)]²)]`
-/

namespace A134862.P12342274079261477545
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (n : ℝ)⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 9 ((f2 (n + 1) - f2 n) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A134862.P12342274079261477545

/-! ## A134862.P16294699446289227558

`∑[Δ[5*floor(ϕ*n)]+3]`
-/

namespace A134862.P16294699446289227558
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * ⌊Real.goldenRatio * (n : ℝ)⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A134862.P16294699446289227558

/-! ## A134862.P7964355291961043746

`∑[xor(9, Δ[ceil(ϕ*n)]²)]-5`
-/

namespace A134862.P7964355291961043746
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.goldenRatio * (n : ℝ)⌉

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 9 ((f2 (n + 1) - f2 n) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 5

end

end A134862.P7964355291961043746

/-! ## A134862.P5750724604888697918

`∩[floor(n*ϕ²)-6, floor(n*ϕ²)]+1`
-/

namespace A134862.P5750724604888697918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.goldenRatio ^ 2⌋ - 6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.goldenRatio ^ 2⌋

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A134862.P5750724604888697918

/-! ## A134862.P12428428353867850104

`floor(ϕ/acot(floor(ϕ²*floor((n+1)*ϕ²))))`
-/

namespace A134862.P12428428353867850104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio / SequenceMachineLib.acot (⌊Real.goldenRatio ^ 2 * (⌊(n + 1 : ℝ) * Real.goldenRatio ^ 2⌋ : ℝ)⌋ : ℝ)⌋

end

end A134862.P12428428353867850104

/-! ## A134862.P1450570421166244918

`A035338(n)+3`
-/

namespace A134862.P1450570421166244918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035338 n + 3

end

end A134862.P1450570421166244918

/-! ## A134862.P2469614630425366890

`A134863(n+1)+1`
-/

namespace A134862.P2469614630425366890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134863 (n + 1) + 1

end

end A134862.P2469614630425366890

/-! ## A134862.P10899117759923164204

`A372302(n+1)+2`
-/

namespace A134862.P10899117759923164204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372302 (n + 1) + 2

end

end A134862.P10899117759923164204

/-! ## A134862.P11752639150387478460

`A188293(2*(n+1))`
-/

namespace A134862.P11752639150387478460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188293 (2 * (n + 1))

end

end A134862.P11752639150387478460

/-! ## A134862.P4266585746862424744

`A101870(n+1)-5`
-/

namespace A134862.P4266585746862424744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101870 (n + 1) - 5

end

end A134862.P4266585746862424744

/-!
# A134863: Wythoff BAB numbers.

The programs for A134863, the canonical program `A134863.P11100616616193240304` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A134863 has offset 1).

The definition of A134863 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A134863.P5531162930527488385

`∑[xor(9, Δ[floor(ϕ*n)]²)]-1`
-/

namespace A134863.P5531162930527488385
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (n : ℝ)⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 9 ((f2 (n + 1) - f2 n) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A134863.P5531162930527488385

namespace A134863

/-- `∑[xor(9, Δ[floor(ϕ*n)]²)]-1` -/
def P5531162930527488385.Spec : Prop :=
  ∀ n, P5531162930527488385.a n = A134863 (n + 1)

end A134863

/-! ## A134863.P3650822655757227840

`∑[Δ[5*floor(ϕ*n)]+3]-1`
-/

namespace A134863.P3650822655757227840
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * ⌊Real.goldenRatio * (n : ℝ)⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A134863.P3650822655757227840

namespace A134863

/-- `∑[Δ[5*floor(ϕ*n)]+3]-1` -/
def P3650822655757227840.Spec : Prop :=
  ∀ n, P3650822655757227840.a n = A134863 (n + 1)

end A134863

/-! ## A134863.P5310043311112122994

`abs(6-∑[xor(9, Δ[ceil(ϕ*n)]²)])`
-/

namespace A134863.P5310043311112122994
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.goldenRatio * (n : ℝ)⌉

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 9 ((f2 (n + 1) - f2 n) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |6 - ∑ j ∈ Finset.range (n + 1), f1 j|

end

end A134863.P5310043311112122994

namespace A134863

/-- `abs(6-∑[xor(9, Δ[ceil(ϕ*n)]²)])` -/
def P5310043311112122994.Spec : Prop :=
  ∀ n, P5310043311112122994.a n = A134863 (n + 1)

end A134863

/-! ## A134863.P9872026192412423407

`∩[floor(n*ϕ²)-6, floor(n*ϕ²)]`
-/

namespace A134863.P9872026192412423407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.goldenRatio ^ 2⌋ - 6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.goldenRatio ^ 2⌋

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A134863.P9872026192412423407

namespace A134863

/-- `∩[floor(n*ϕ²)-6, floor(n*ϕ²)]` -/
def P9872026192412423407.Spec : Prop :=
  ∀ n, (P9872026192412423407.a n : ℤ) = A134863 (n + 1)

end A134863

/-! ## A134863.P2818501126950548350

`abs(1-floor(ϕ/acot(2*n+3*floor(ϕ*(n+1))+2)))`
-/

namespace A134863.P2818501126950548350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - ⌊Real.goldenRatio / SequenceMachineLib.acot ((2 * n : ℤ) + (3 * ⌊Real.goldenRatio * (n + 1 : ℝ)⌋ + 2) : ℝ)⌋|

end

end A134863.P2818501126950548350

namespace A134863

/-- `abs(1-floor(ϕ/acot(2*n+3*floor(ϕ*(n+1))+2)))` -/
def P2818501126950548350.Spec : Prop :=
  ∀ n, P2818501126950548350.a n = A134863 (n + 1)

end A134863

/-! ## A134863.P11100616616193240304

`abs(6-A101870(n+1))`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A134863

/-- `abs(6-A101870(n+1))` -/
def P11100616616193240304.Spec : Prop :=
  ∀ n, P11100616616193240304.a n = A134863 (n + 1)

theorem P11100616616193240304.correct : P11100616616193240304.Spec := by
  intro n
  simp only [A134863, Nat.add_sub_cancel]

end A134863

/-! ## A134863.P17206153760549674904

`A035336(comp[floor(ϕ*n)])`
-/

namespace A134863.P17206153760549674904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (n : ℝ)⌋

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035336 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A134863.P17206153760549674904

namespace A134863

/-- `A035336(comp[floor(ϕ*n)])` -/
def P17206153760549674904.Spec : Prop :=
  ∀ n, P17206153760549674904.a n = A134863 (n + 1)

end A134863

/-! ## A134863.P1991284397115877377

`A022414(A134859(n+1))`
-/

namespace A134863.P1991284397115877377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022414 (A134859 (n + 1)).toNat

end

end A134863.P1991284397115877377

namespace A134863

/-- `A022414(A134859(n+1))` -/
def P1991284397115877377.Spec : Prop :=
  ∀ n, P1991284397115877377.a n = A134863 (n + 1)

end A134863

/-! ## A134863.P4711809050809090078

`A022414(A035336(n+1)-1)`
-/

namespace A134863.P4711809050809090078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022414 (A035336 (n + 1) - 1).toNat

end

end A134863.P4711809050809090078

namespace A134863

/-- `A022414(A035336(n+1)-1)` -/
def P4711809050809090078.Spec : Prop :=
  ∀ n, P4711809050809090078.a n = A134863 (n + 1)

end A134863

/-! ## A134863.P14682444047616824938

`A001950(A003623(n+1))`
-/

namespace A134863.P14682444047616824938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001950 (A003623 (n + 1)).toNat

end

end A134863.P14682444047616824938

namespace A134863

/-- `A001950(A003623(n+1))` -/
def P14682444047616824938.Spec : Prop :=
  ∀ n, P14682444047616824938.a n = A134863 (n + 1)

end A134863

/-! ## A134863.P2705521086126782095

`A057843(A089910(n+1))`
-/

namespace A134863.P2705521086126782095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057843 (A089910 (n + 1)).toNat

end

end A134863.P2705521086126782095

namespace A134863

/-- `A057843(A089910(n+1))` -/
def P2705521086126782095.Spec : Prop :=
  ∀ n, P2705521086126782095.a n = A134863 (n + 1)

end A134863

/-! ## A134863.P1400338169157024812

`A057843(A276885(n+2))`
-/

namespace A134863.P1400338169157024812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057843 (A276885 (n + 2)).toNat

end

end A134863.P1400338169157024812

namespace A134863

/-- `A057843(A276885(n+2))` -/
def P1400338169157024812.Spec : Prop :=
  ∀ n, P1400338169157024812.a n = A134863 (n + 1)

end A134863

/-! ## A134863.P9016905231709688980

`A057843(A003623(n+1)+1)`
-/

namespace A134863.P9016905231709688980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057843 (A003623 (n + 1) + 1).toNat

end

end A134863.P9016905231709688980

namespace A134863

/-- `A057843(A003623(n+1)+1)` -/
def P9016905231709688980.Spec : Prop :=
  ∀ n, P9016905231709688980.a n = A134863 (n + 1)

end A134863

/-! ## A134863.P1055442192593677042

`A026356(A035336(n+1)+1)`
-/

namespace A134863.P1055442192593677042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026356 (A035336 (n + 1) + 1).toNat

end

end A134863.P1055442192593677042

namespace A134863

/-- `A026356(A035336(n+1)+1)` -/
def P1055442192593677042.Spec : Prop :=
  ∀ n, P1055442192593677042.a n = A134863 (n + 1)

end A134863

/-! ## A134863.P9955691402731443856

`A189379(A035336(n+1)+1)`
-/

namespace A134863.P9955691402731443856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189379 (A035336 (n + 1) + 1).toNat

end

end A134863.P9955691402731443856

namespace A134863

/-- `A189379(A035336(n+1)+1)` -/
def P9955691402731443856.Spec : Prop :=
  ∀ n, P9955691402731443856.a n = A134863 (n + 1)

end A134863

/-! ## A134863.P6548918711847448221

`A001950(A089910(n+1)-1)`
-/

namespace A134863.P6548918711847448221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001950 (A089910 (n + 1) - 1).toNat

end

end A134863.P6548918711847448221

namespace A134863

/-- `A001950(A089910(n+1)-1)` -/
def P6548918711847448221.Spec : Prop :=
  ∀ n, P6548918711847448221.a n = A134863 (n + 1)

end A134863

/-! ## A134863.P13761438026110600372

`A001950(A134859(n+1)+2)`
-/

namespace A134863.P13761438026110600372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001950 (A134859 (n + 1) + 2).toNat

end

end A134863.P13761438026110600372

namespace A134863

/-- `A001950(A134859(n+1)+2)` -/
def P13761438026110600372.Spec : Prop :=
  ∀ n, P13761438026110600372.a n = A134863 (n + 1)

end A134863

/-! ## A134863.P6451349710031050760

`A189379(A089910(n+1)-1)`
-/

namespace A134863.P6451349710031050760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189379 (A089910 (n + 1) - 1).toNat

end

end A134863.P6451349710031050760

namespace A134863

/-- `A189379(A089910(n+1)-1)` -/
def P6451349710031050760.Spec : Prop :=
  ∀ n, P6451349710031050760.a n = A134863 (n + 1)

end A134863

/-! ## A134863.P8627236949550291537

`A001950(A276885(n+2)-1)`
-/

namespace A134863.P8627236949550291537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001950 (A276885 (n + 2) - 1).toNat

end

end A134863.P8627236949550291537

namespace A134863

/-- `A001950(A276885(n+2)-1)` -/
def P8627236949550291537.Spec : Prop :=
  ∀ n, P8627236949550291537.a n = A134863 (n + 1)

end A134863

/-! ## A134863.P12744809054929558384

`A001950(A187952(2*(n+1)))`
-/

namespace A134863.P12744809054929558384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001950 (A187952 (2 * (n + 1))).toNat

end

end A134863.P12744809054929558384

namespace A134863

/-- `A001950(A187952(2*(n+1)))` -/
def P12744809054929558384.Spec : Prop :=
  ∀ n, P12744809054929558384.a n = A134863 (n + 1)

end A134863

/-!
# A134864: Wythoff BBB numbers.

The programs for A134864, the canonical program `A134864.P10998116107234469360` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A134864 has offset 1).

The definition of A134864 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A134864.P11167110466015375705

`4*(2*floor(ϕ*(n+1))+n)+n+5`
-/

namespace A134864.P11167110466015375705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (2 * ⌊Real.goldenRatio * (n + 1 : ℝ)⌋ + (n : ℤ)) + (n : ℤ) + 5

end

end A134864.P11167110466015375705

namespace A134864

/-- `4*(2*floor(ϕ*(n+1))+n)+n+5` -/
def P11167110466015375705.Spec : Prop :=
  ∀ n, P11167110466015375705.a n = A134864 (n + 1)

end A134864

/-! ## A134864.P5334360613671267660

`∑[A002061(Δ[floor(n*(ϕ+3))])]`
-/

namespace A134864.P5334360613671267660
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * (Real.goldenRatio + 3)⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002061 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A134864.P5334360613671267660

namespace A134864

/-- `∑[A002061(Δ[floor(n*(ϕ+3))])]` -/
def P5334360613671267660.Spec : Prop :=
  ∀ n, P5334360613671267660.a n = A134864 (n + 1)

end A134864

/-! ## A134864.P10998116107234469360

`A101870(A000201(n+1))`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A134864

/-- `A101870(A000201(n+1))` -/
def P10998116107234469360.Spec : Prop :=
  ∀ n, P10998116107234469360.a n = A134864 (n + 1)

theorem P10998116107234469360.correct : P10998116107234469360.Spec := by
  intro n
  simp only [A134864, Nat.add_sub_cancel]

end A134864

/-! ## A134864.P16642191115502945272

`A101642(A001950(n+1))`
-/

namespace A134864.P16642191115502945272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101642 (A001950 (n + 1)).toNat

end

end A134864.P16642191115502945272

namespace A134864

/-- `A101642(A001950(n+1))` -/
def P16642191115502945272.Spec : Prop :=
  ∀ n, P16642191115502945272.a n = A134864 (n + 1)

end A134864

/-! ## A134864.P12363980605599750931

`A101870(A066096(n+1))`
-/

namespace A134864.P12363980605599750931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101870 (A066096 (n + 1)).toNat

end

end A134864.P12363980605599750931

namespace A134864

/-- `A101870(A066096(n+1))` -/
def P12363980605599750931.Spec : Prop :=
  ∀ n, P12363980605599750931.a n = A134864 (n + 1)

end A134864

/-! ## A134864.P9712539299507393278

`A188471(A004956(n+1))`
-/

namespace A134864.P9712539299507393278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188471 (A004956 (n + 1)).toNat

end

end A134864.P9712539299507393278

namespace A134864

/-- `A188471(A004956(n+1))` -/
def P9712539299507393278.Spec : Prop :=
  ∀ n, P9712539299507393278.a n = A134864 (n + 1)

end A134864

/-! ## A134864.P10084204515578880256

`A188471(A026351(n+1))`
-/

namespace A134864.P10084204515578880256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188471 (A026351 (n + 1)).toNat

end

end A134864.P10084204515578880256

namespace A134864

/-- `A188471(A026351(n+1))` -/
def P10084204515578880256.Spec : Prop :=
  ∀ n, P10084204515578880256.a n = A134864 (n + 1)

end A134864

/-! ## A134864.P15790623965601791864

`∑[A026355(Δ[A047925(n)])]`
-/

namespace A134864.P15790623965601791864
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047925 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026355 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A134864.P15790623965601791864

namespace A134864

/-- `∑[A026355(Δ[A047925(n)])]` -/
def P15790623965601791864.Spec : Prop :=
  ∀ n, P15790623965601791864.a n = A134864 (n + 1)

end A134864

/-! ## A134864.P3959914743373093785

`∑[A050711(Δ[A026351(n)])]`
-/

namespace A134864.P3959914743373093785
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026351 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050711 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A134864.P3959914743373093785

namespace A134864

/-- `∑[A050711(Δ[A026351(n)])]` -/
def P3959914743373093785.Spec : Prop :=
  ∀ n, P3959914743373093785.a n = A134864 (n + 1)

end A134864

/-! ## A134864.P14847928081340719039

`A101642(A003622(n+1)+1)`
-/

namespace A134864.P14847928081340719039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101642 (A003622 (n + 1) + 1).toNat

end

end A134864.P14847928081340719039

namespace A134864

/-- `A101642(A003622(n+1)+1)` -/
def P14847928081340719039.Spec : Prop :=
  ∀ n, P14847928081340719039.a n = A134864 (n + 1)

end A134864

/-! ## A134864.P14910785379348500611

`A188471(A000201(n+1)+1)`
-/

namespace A134864.P14910785379348500611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188471 (A000201 (n + 1) + 1).toNat

end

end A134864.P14910785379348500611

namespace A134864

/-- `A188471(A000201(n+1)+1)` -/
def P14910785379348500611.Spec : Prop :=
  ∀ n, P14910785379348500611.a n = A134864 (n + 1)

end A134864

/-! ## A134864.P17988744414232548973

`A101870(A004956(n+1)-1)`
-/

namespace A134864.P17988744414232548973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101870 (A004956 (n + 1) - 1).toNat

end

end A134864.P17988744414232548973

namespace A134864

/-- `A101870(A004956(n+1)-1)` -/
def P17988744414232548973.Spec : Prop :=
  ∀ n, P17988744414232548973.a n = A134864 (n + 1)

end A134864

/-! ## A134864.P1606264108970668646

`A101642(A026352(n+1)-1)`
-/

namespace A134864.P1606264108970668646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101642 (A026352 (n + 1) - 1).toNat

end

end A134864.P1606264108970668646

namespace A134864

/-- `A101642(A026352(n+1)-1)` -/
def P1606264108970668646.Spec : Prop :=
  ∀ n, P1606264108970668646.a n = A134864 (n + 1)

end A134864

/-! ## A134864.P4388959729190199793

`A101642(A004956(n+1)+n)`
-/

namespace A134864.P4388959729190199793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101642 (A004956 (n + 1) + (n : ℤ)).toNat

end

end A134864.P4388959729190199793

namespace A134864

/-- `A101642(A004956(n+1)+n)` -/
def P4388959729190199793.Spec : Prop :=
  ∀ n, P4388959729190199793.a n = A134864 (n + 1)

end A134864

/-! ## A134864.P18410574658818101357

`A101870(A003622(n+1)-n)`
-/

namespace A134864.P18410574658818101357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101870 (A003622 (n + 1) - (n : ℤ)).toNat

end

end A134864.P18410574658818101357

namespace A134864

/-- `A101870(A003622(n+1)-n)` -/
def P18410574658818101357.Spec : Prop :=
  ∀ n, P18410574658818101357.a n = A134864 (n + 1)

end A134864

/-! ## A134864.P2410192145702443904

`A188471(A001950(n+1)-n)`
-/

namespace A134864.P2410192145702443904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188471 (A001950 (n + 1) - (n : ℤ)).toNat

end

end A134864.P2410192145702443904

namespace A134864

/-- `A188471(A001950(n+1)-n)` -/
def P2410192145702443904.Spec : Prop :=
  ∀ n, P2410192145702443904.a n = A134864 (n + 1)

end A134864

/-! ## A134864.P12497455211437183552

`∪[A190458(n+1), A035340(n)]`
-/

namespace A134864.P12497455211437183552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190458 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035340 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A134864.P12497455211437183552

namespace A134864

/-- `∪[A190458(n+1), A035340(n)]` -/
def P12497455211437183552.Spec : Prop :=
  ∀ n, (P12497455211437183552.a n : ℤ) = A134864 (n + 1)

end A134864

/-! ## A134864.P11708759451866891798

`A101642(A000201(n+1)+n+1)`
-/

namespace A134864.P11708759451866891798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101642 (A000201 (n + 1) + (n + 1 : ℤ)).toNat

end

end A134864.P11708759451866891798

namespace A134864

/-- `A101642(A000201(n+1)+n+1)` -/
def P11708759451866891798.Spec : Prop :=
  ∀ n, P11708759451866891798.a n = A134864 (n + 1)

end A134864

/-! ## A134864.P2084062588089947444

`∩[A101642(n+1), A101870(n+1)]`
-/

namespace A134864.P2084062588089947444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101642 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101870 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A134864.P2084062588089947444

namespace A134864

/-- `∩[A101642(n+1), A101870(n+1)]` -/
def P2084062588089947444.Spec : Prop :=
  ∀ n, (P2084062588089947444.a n : ℤ) = A134864 (n + 1)

end A134864

/-! ## A134864.P11724300427278072626

`∩[A101642(n+1), A188471(n+1)]`
-/

namespace A134864.P11724300427278072626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101642 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188471 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A134864.P11724300427278072626

namespace A134864

/-- `∩[A101642(n+1), A188471(n+1)]` -/
def P11724300427278072626.Spec : Prop :=
  ∀ n, (P11724300427278072626.a n : ℤ) = A134864 (n + 1)

end A134864

/-!
# A134865: Numbers k meeting the following criterion: if k is a multiple of d, then it is also a multiple of the smallest number with same number of divisors as d.

The programs for A134865, there is no canonical definition to state claims against.
-/

/-! ## A134865.P13255640787914233822

`A005179(A140752(n+1))`
-/

namespace A134865.P13255640787914233822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005179 (A140752 (n + 1)).toNat

end

end A134865.P13255640787914233822

/-! ## A134865.P10231547782896799479

`record[A140753(n+1)%A002182(n+10)]`
-/

namespace A134865.P10231547782896799479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A140753 (n + 1)) (A002182 (n + 10))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A134865.P10231547782896799479

/-! ## A134865.P15488411499190430899

`A140753(A275164(n+1)%A138400(n+1))`
-/

namespace A134865.P15488411499190430899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140753 (Int.tmod (A275164 (n + 1)) (A138400 (n + 1))).toNat

end

end A134865.P15488411499190430899

/-! ## A134865.P2472974063446630628

`A140753(∪[A001013(n+1), A132263(n+1)])`
-/

namespace A134865.P2472974063446630628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001013 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132263 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140753 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A134865.P2472974063446630628

/-! ## A134865.P750024165652792445

`A140753(∪[A004394(n+1), A132263(n+1)])`
-/

namespace A134865.P750024165652792445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004394 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132263 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140753 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A134865.P750024165652792445

/-!
# A134866: Table read by antidiagonals: T(n,k) = sigma(gcd(n,k)).

The programs for A134866, the canonical program `A134866.P4777858240526918943` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A134866 has offset 1).

The definition of A134866 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A134866.P4777858240526918943

`∑{d}[A003989(n+1), #]`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A134866

/-- `∑{d}[A003989(n+1), #]` -/
def P4777858240526918943.Spec : Prop :=
  ∀ n, (P4777858240526918943.a n : ℤ) = A134866 (n + 1)

theorem P4777858240526918943.correct : P4777858240526918943.Spec := by
  intro n
  simp only [A134866, Nat.add_sub_cancel]

end A134866

/-! ## A134866.P14659764608598688156

`A000203(A003989(n+1))`
-/

namespace A134866.P14659764608598688156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A003989 (n + 1)).toNat

end

end A134866.P14659764608598688156

namespace A134866

/-- `A000203(A003989(n+1))` -/
def P14659764608598688156.Spec : Prop :=
  ∀ n, P14659764608598688156.a n = A134866 (n + 1)

end A134866

/-! ## A134866.P15451882316595221055

`A000203(gcd(A049581(n), A193592(n)))`
-/

namespace A134866.P15451882316595221055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (Int.gcd (A049581 n) (A193592 n))

end

end A134866.P15451882316595221055

namespace A134866

/-- `A000203(gcd(A049581(n), A193592(n)))` -/
def P15451882316595221055.Spec : Prop :=
  ∀ n, P15451882316595221055.a n = A134866 (n + 1)

end A134866

/-! ## A134866.P8795917810795826964

`A000203(gcd(A103217(n), A309557(n)))`
-/

namespace A134866.P8795917810795826964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (Int.gcd (A103217 n) (A309557 n))

end

end A134866.P8795917810795826964

namespace A134866

/-- `A000203(gcd(A103217(n), A309557(n)))` -/
def P8795917810795826964.Spec : Prop :=
  ∀ n, P8795917810795826964.a n = A134866 (n + 1)

end A134866

/-! ## A134866.P789913665156136423

`A000203(gcd(A002260(n+1), A114327(n)))`
-/

namespace A134866.P789913665156136423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (Int.gcd (A002260 (n + 1)) (A114327 n))

end

end A134866.P789913665156136423

namespace A134866

/-- `A000203(gcd(A002260(n+1), A114327(n)))` -/
def P789913665156136423.Spec : Prop :=
  ∀ n, P789913665156136423.a n = A134866 (n + 1)

end A134866

/-! ## A134866.P297261724450583138

`A335341(A003989(n+1)*A342905(n+1))`
-/

namespace A134866.P297261724450583138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335341 (A003989 (n + 1) * A342905 (n + 1)).toNat

end

end A134866.P297261724450583138

namespace A134866

/-- `A335341(A003989(n+1)*A342905(n+1))` -/
def P297261724450583138.Spec : Prop :=
  ∀ n, P297261724450583138.a n = A134866 (n + 1)

end A134866

/-! ## A134866.P9075260120676434002

`A000203(gcd(A004736(n+1), A094053(n+1)))`
-/

namespace A134866.P9075260120676434002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (Int.gcd (A004736 (n + 1)) (A094053 (n + 1)))

end

end A134866.P9075260120676434002

namespace A134866

/-- `A000203(gcd(A004736(n+1), A094053(n+1)))` -/
def P9075260120676434002.Spec : Prop :=
  ∀ n, P9075260120676434002.a n = A134866 (n + 1)

end A134866

/-! ## A134866.P598612616588428048

`A074400(gcd(A003990(n+1), A176270(n)))/2`
-/

namespace A134866.P598612616588428048
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A074400 (Int.gcd (A003990 (n + 1)) (A176270 n)) : ℚ) / 2

end

end A134866.P598612616588428048

namespace A134866

/-- `A074400(gcd(A003990(n+1), A176270(n)))/2` -/
def P598612616588428048.Spec : Prop :=
  ∀ n, P598612616588428048.a n = (A134866 (n + 1) : ℚ)

end A134866

/-! ## A134866.P1848293117295653648

`A074400(gcd(A051125(n+1), A220508(n)))/2`
-/

namespace A134866.P1848293117295653648
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A074400 (Int.gcd (A051125 (n + 1)) (A220508 n)) : ℚ) / 2

end

end A134866.P1848293117295653648

namespace A134866

/-- `A074400(gcd(A051125(n+1), A220508(n)))/2` -/
def P1848293117295653648.Spec : Prop :=
  ∀ n, P1848293117295653648.a n = (A134866 (n + 1) : ℚ)

end A134866

/-! ## A134866.P5781767691267517840

`A132442(A014132(n+1))`
-/

namespace A134866.P5781767691267517840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132442 (A014132 (n + 1)).toNat

end

end A134866.P5781767691267517840

namespace A134866

/-- `A132442(A014132(n+1))` -/
def P5781767691267517840.Spec : Prop :=
  ∀ n, P5781767691267517840.a n = A134866 (n + 1)

end A134866

/-! ## A134866.P10757802307096082559

`∑{d}[A002260(A286101(n+1)), #]`
-/

namespace A134866.P10757802307096082559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A286101 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A134866.P10757802307096082559

namespace A134866

/-- `∑{d}[A002260(A286101(n+1)), #]` -/
def P10757802307096082559.Spec : Prop :=
  ∀ n, (P10757802307096082559.a n : ℤ) = A134866 (n + 1)

end A134866

/-! ## A134866.P3821341637492663666

`A245093(A286101(n+1))`
-/

namespace A134866.P3821341637492663666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245093 (A286101 (n + 1)).toNat

end

end A134866.P3821341637492663666

namespace A134866

/-- `A245093(A286101(n+1))` -/
def P3821341637492663666.Spec : Prop :=
  ∀ n, P3821341637492663666.a n = A134866 (n + 1)

end A134866

/-! ## A134866.P10514937974608212912

`A272172(A286102(n+1))`
-/

namespace A134866.P10514937974608212912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272172 (A286102 (n + 1)).toNat

end

end A134866.P10514937974608212912

namespace A134866

/-- `A272172(A286102(n+1))` -/
def P10514937974608212912.Spec : Prop :=
  ∀ n, P10514937974608212912.a n = A134866 (n + 1)

end A134866

/-!
# A134867: A010766 * A000012.

The programs for A134867, there is no canonical definition to state claims against.
-/

/-! ## A134867.P11707016913363979008

`A306560(A143291(n+2))`
-/

namespace A134867.P11707016913363979008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306560 (A143291 (n + 2)).toNat

end

end A134867.P11707016913363979008

/-! ## A134867.P2676216518364822024

`A160183(A187829(n+1))+A025581(n)`
-/

namespace A134867.P2676216518364822024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160183 (A187829 (n + 1)).toNat + A025581 n

end

end A134867.P2676216518364822024

/-! ## A134867.P14389116353476485036

`A160183(A187829(n+1))+A122200(n)`
-/

namespace A134867.P14389116353476485036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160183 (A187829 (n + 1)).toNat + A122200 n

end

end A134867.P14389116353476485036

/-! ## A134867.P10276069654892681815

`A328523(A134032(n+1))+A207031(n+1)`
-/

namespace A134867.P10276069654892681815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328523 (A134032 (n + 1)).toNat + A207031 (n + 1)

end

end A134867.P10276069654892681815

/-! ## A134867.P18014473759609026865

`A114108(A263864(n+1))+A001222(A085383(n+1))`
-/

namespace A134867.P18014473759609026865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114108 (A263864 (n + 1)).toNat + A001222 (A085383 (n + 1)).toNat

end

end A134867.P18014473759609026865

/-!
# A134868: A103451 * A002260.

The programs for A134868, the canonical program `A134868.P8808739083334448030` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A134868 has offset 1).

The definition of A134868 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A134868.P5731045817788681531

`A002260(char[∑[n]]+1+n)`
-/

namespace A134868.P5731045817788681531
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 ((if ∃ j, f1 j = n then 1 else 0) + 1 + n)

end

end A134868.P5731045817788681531

namespace A134868

/-- `A002260(char[∑[n]]+1+n)` -/
def P5731045817788681531.Spec : Prop :=
  ∀ n, P5731045817788681531.a n = A134868 (n + 1)

end A134868

/-! ## A134868.P13723706233058708378

`A002262(char[∑[n]]+n)+1`
-/

namespace A134868.P13723706233058708378
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 ((if ∃ j, f1 j = n then 1 else 0) + n) + 1

end

end A134868.P13723706233058708378

namespace A134868

/-- `A002262(char[∑[n]]+n)+1` -/
def P13723706233058708378.Spec : Prop :=
  ∀ n, P13723706233058708378.a n = A134868 (n + 1)

end A134868

/-! ## A134868.P10681333196125452376

`A144328(n+1)%(2*n+1)+1`
-/

namespace A134868.P10681333196125452376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A144328 (n + 1)) (2 * n + 1 : ℤ) + 1

end

end A134868.P10681333196125452376

namespace A134868

/-- `A144328(n+1)%(2*n+1)+1` -/
def P10681333196125452376.Spec : Prop :=
  ∀ n, P10681333196125452376.a n = A134868 (n + 1)

end A134868

/-! ## A134868.P1253061194770493659

`A135853(n)/A135278(n)`
-/

namespace A134868.P1253061194770493659
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A135853 n : ℚ) / (A135278 n : ℚ)

end

end A134868.P1253061194770493659

namespace A134868

/-- `A135853(n)/A135278(n)` -/
def P1253061194770493659.Spec : Prop :=
  ∀ n, P1253061194770493659.a n = (A134868 (n + 1) : ℚ)

end A134868

/-! ## A134868.P8808739083334448030

`A048151(A010054(n)+n)+1`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A134868

/-- `A048151(A010054(n)+n)+1` -/
def P8808739083334448030.Spec : Prop :=
  ∀ n, P8808739083334448030.a n = A134868 (n + 1)

theorem P8808739083334448030.correct : P8808739083334448030.Spec := by
  intro n
  simp only [A134868, Nat.add_sub_cancel]

end A134868

/-! ## A134868.P17666219358144728059

`A073424(n)+A002260(n+1)`
-/

namespace A134868.P17666219358144728059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073424 n + A002260 (n + 1)

end

end A134868.P17666219358144728059

namespace A134868

/-- `A073424(n)+A002260(n+1)` -/
def P17666219358144728059.Spec : Prop :=
  ∀ n, P17666219358144728059.a n = A134868 (n + 1)

end A134868

/-! ## A134868.P11167635754557300033

`A144328(n+1)+A057427(n)`
-/

namespace A134868.P11167635754557300033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1) + A057427 n

end

end A134868.P11167635754557300033

namespace A134868

/-- `A144328(n+1)+A057427(n)` -/
def P11167635754557300033.Spec : Prop :=
  ∀ n, P11167635754557300033.a n = A134868 (n + 1)

end A134868

/-! ## A134868.P12718055088153254241

`A144328(n+1)-A057428(n)`
-/

namespace A134868.P12718055088153254241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1) - A057428 n

end

end A134868.P12718055088153254241

namespace A134868

/-- `A144328(n+1)-A057428(n)` -/
def P12718055088153254241.Spec : Prop :=
  ∀ n, P12718055088153254241.a n = A134868 (n + 1)

end A134868

/-! ## A134868.P9082281476810228197

`A003057(n+2)-A193739(n)`
-/

namespace A134868.P9082281476810228197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003057 (n + 2) - A193739 n

end

end A134868.P9082281476810228197

namespace A134868

/-- `A003057(n+2)-A193739(n)` -/
def P9082281476810228197.Spec : Prop :=
  ∀ n, P9082281476810228197.a n = A134868 (n + 1)

end A134868

/-! ## A134868.P12983000037733052171

`A193738(n)+Δ[A035214(n)]²`
-/

namespace A134868.P12983000037733052171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035214 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193738 n + (f1 (n + 1) - f1 n) ^ 2

end

end A134868.P12983000037733052171

namespace A134868

/-- `A193738(n)+Δ[A035214(n)]²` -/
def P12983000037733052171.Spec : Prop :=
  ∀ n, P12983000037733052171.a n = A134868 (n + 1)

end A134868

/-! ## A134868.P5420199990816785648

`A002260(n+1)+1-A123110(n)`
-/

namespace A134868.P5420199990816785648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) + (1 - A123110 n)

end

end A134868.P5420199990816785648

namespace A134868

/-- `A002260(n+1)+1-A123110(n)` -/
def P5420199990816785648.Spec : Prop :=
  ∀ n, P5420199990816785648.a n = A134868 (n + 1)

end A134868

/-! ## A134868.P8633966699290342570

`A002024(n+1)+1-A193739(n)`
-/

namespace A134868.P8633966699290342570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (n + 1) + (1 - A193739 n)

end

end A134868.P8633966699290342570

namespace A134868

/-- `A002024(n+1)+1-A193739(n)` -/
def P8633966699290342570.Spec : Prop :=
  ∀ n, P8633966699290342570.a n = A134868 (n + 1)

end A134868

/-! ## A134868.P39601072606917111

`A028310(A002262(n))%(n+1)+1`
-/

namespace A134868.P39601072606917111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028310 (A002262 n).toNat) (n + 1 : ℤ) + 1

end

end A134868.P39601072606917111

namespace A134868

/-- `A028310(A002262(n))%(n+1)+1` -/
def P39601072606917111.Spec : Prop :=
  ∀ n, P39601072606917111.a n = A134868 (n + 1)

end A134868

/-! ## A134868.P1529473736931618751

`A014132(n+1)-(A193739(n)+n)`
-/

namespace A134868.P1529473736931618751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014132 (n + 1) - (A193739 n + (n : ℤ))

end

end A134868.P1529473736931618751

namespace A134868

/-- `A014132(n+1)-(A193739(n)+n)` -/
def P1529473736931618751.Spec : Prop :=
  ∀ n, P1529473736931618751.a n = A134868 (n + 1)

end A134868

/-! ## A134868.P5201680214245544414

`A002260(n+1)+char[A000096(n)+1]`
-/

namespace A134868.P5201680214245544414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 n + 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A134868.P5201680214245544414

namespace A134868

/-- `A002260(n+1)+char[A000096(n)+1]` -/
def P5201680214245544414.Spec : Prop :=
  ∀ n, P5201680214245544414.a n = A134868 (n + 1)

end A134868

/-! ## A134868.P12510357103016107669

`A002260(n+1)+char[A000217(n+1)]`
-/

namespace A134868.P12510357103016107669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A134868.P12510357103016107669

namespace A134868

/-- `A002260(n+1)+char[A000217(n+1)]` -/
def P12510357103016107669.Spec : Prop :=
  ∀ n, P12510357103016107669.a n = A134868 (n + 1)

end A134868

/-! ## A134868.P9408479850294673404

`A002260(n+1)+char[A238531(n)-2]`
-/

namespace A134868.P9408479850294673404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238531 n - 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A134868.P9408479850294673404

namespace A134868

/-- `A002260(n+1)+char[A238531(n)-2]` -/
def P9408479850294673404.Spec : Prop :=
  ∀ n, P9408479850294673404.a n = A134868 (n + 1)

end A134868

/-! ## A134868.P5589399150725408757

`A002260(n+1)+char[A000124(n)+n]`
-/

namespace A134868.P5589399150725408757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 n + (n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A134868.P5589399150725408757

namespace A134868

/-- `A002260(n+1)+char[A000124(n)+n]` -/
def P5589399150725408757.Spec : Prop :=
  ∀ n, P5589399150725408757.a n = A134868 (n + 1)

end A134868

/-! ## A134868.P590911345521200102

`A028310(A002262(n))+n/A028310(n)`
-/

namespace A134868.P590911345521200102
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028310 (A002262 n).toNat : ℚ) + (n : ℚ) / (A028310 n : ℚ)

end

end A134868.P590911345521200102

namespace A134868

/-- `A028310(A002262(n))+n/A028310(n)` -/
def P590911345521200102.Spec : Prop :=
  ∀ n, P590911345521200102.a n = (A134868 (n + 1) : ℚ)

end A134868

/-! ## A134868.P13917617324785326308

`A002260(n+1)+char[C(A007318(n)+1, 2)]`
-/

namespace A134868.P13917617324785326308
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A007318 n + 1).toNat 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A134868.P13917617324785326308

namespace A134868

/-- `A002260(n+1)+char[C(A007318(n)+1, 2)]` -/
def P13917617324785326308.Spec : Prop :=
  ∀ n, P13917617324785326308.a n = A134868 (n + 1)

end A134868

/-!
# A134869: Row sums of triangle A134868.

The programs for A134869, the canonical program `A134869.P9616098060978576809` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A134869 has offset 1).

The definition of A134869 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A134869.P5721079182522530906

`∑[char[1]+1+n]`
-/

namespace A134869.P5721079182522530906
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = n then 1 else 0) + 1 + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A134869.P5721079182522530906

namespace A134869

/-- `∑[char[1]+1+n]` -/
def P5721079182522530906.Spec : Prop :=
  ∀ n, (P5721079182522530906.a n : ℤ) = A134869 (n + 1)

end A134869

/-! ## A134869.P6433831842326147908

`∑[n+1]+ceil(abs(sin(n)))`
-/

namespace A134869.P6433831842326147908
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + ⌈|Real.sin (n : ℝ)|⌉

end

end A134869.P6433831842326147908

namespace A134869

/-- `∑[n+1]+ceil(abs(sin(n)))` -/
def P6433831842326147908.Spec : Prop :=
  ∀ n, P6433831842326147908.a n = A134869 (n + 1)

end A134869

/-! ## A134869.P6639045597846108702

`ceil(∑[n+1]+sin(n)²)`
-/

namespace A134869.P6639045597846108702
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ) + Real.sin (n : ℝ) ^ 2⌉

end

end A134869.P6639045597846108702

namespace A134869

/-- `ceil(∑[n+1]+sin(n)²)` -/
def P6639045597846108702.Spec : Prop :=
  ∀ n, P6639045597846108702.a n = A134869 (n + 1)

end A134869

/-! ## A134869.P9616098060978576809

`∑[C(n, n²)+n]+n`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A134869

/-- `∑[C(n, n²)+n]+n` -/
def P9616098060978576809.Spec : Prop :=
  ∀ n, (P9616098060978576809.a n : ℤ) = A134869 (n + 1)

theorem P9616098060978576809.correct : P9616098060978576809.Spec := by
  intro n
  simp only [A134869, Nat.add_sub_cancel]

end A134869

/-! ## A134869.P632785282620921839

`∑[n+1]+round(atan(atan(n)))`
-/

namespace A134869.P632785282620921839
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + SequenceMachineLib.roundAway (Real.arctan (Real.arctan (n : ℝ)))

end

end A134869.P632785282620921839

namespace A134869

/-- `∑[n+1]+round(atan(atan(n)))` -/
def P632785282620921839.Spec : Prop :=
  ∀ n, P632785282620921839.a n = A134869 (n + 1)

end A134869

/-! ## A134869.P5347700900184026085

`1+n+a(n-1)` with `a(0)=1, a(1)=4`
-/

namespace A134869.P5347700900184026085
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 4] fun n a =>
  1 + (n + a (n - 1))

end

end A134869.P5347700900184026085

namespace A134869

/-- `1+n+a(n-1)` -/
def P5347700900184026085.Spec : Prop :=
  ∀ n, (P5347700900184026085.a n : ℤ) = A134869 (n + 1)

end A134869

/-! ## A134869.P12749558115677760768

`∑[n+1]+floor(atan(n+1))`
-/

namespace A134869.P12749558115677760768
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + ⌊Real.arctan (n + 1 : ℝ)⌋

end

end A134869.P12749558115677760768

namespace A134869

/-- `∑[n+1]+floor(atan(n+1))` -/
def P12749558115677760768.Spec : Prop :=
  ∀ n, P12749558115677760768.a n = A134869 (n + 1)

end A134869

/-! ## A134869.P4254323910434674227

`∑[n+1]+1-floor(acot(n))`
-/

namespace A134869.P4254323910434674227
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + (1 - ⌊SequenceMachineLib.acot (n : ℝ)⌋)

end

end A134869.P4254323910434674227

namespace A134869

/-- `∑[n+1]+1-floor(acot(n))` -/
def P4254323910434674227.Spec : Prop :=
  ∀ n, P4254323910434674227.a n = A134869 (n + 1)

end A134869

/-! ## A134869.P1796663156523789981

`ceil(∑[n+1]+1-acot(n))`
-/

namespace A134869.P1796663156523789981
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ) + (1 - SequenceMachineLib.acot (n : ℝ))⌉

end

end A134869.P1796663156523789981

namespace A134869

/-- `ceil(∑[n+1]+1-acot(n))` -/
def P1796663156523789981.Spec : Prop :=
  ∀ n, P1796663156523789981.a n = A134869 (n + 1)

end A134869

/-! ## A134869.P16987582256275954757

`(∑[n+1]+1)/ceil(acot(n))`
-/

namespace A134869.P16987582256275954757
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℕ) : ℚ) / (⌈SequenceMachineLib.acot (n : ℝ)⌉ : ℚ)

end

end A134869.P16987582256275954757

namespace A134869

/-- `(∑[n+1]+1)/ceil(acot(n))` -/
def P16987582256275954757.Spec : Prop :=
  ∀ n, P16987582256275954757.a n = (A134869 (n + 1) : ℚ)

end A134869

/-! ## A134869.P5718936188641362840

`∑[round(acot(n)+n+1)]-2`
-/

namespace A134869.P5718936188641362840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n + 1 : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2

end

end A134869.P5718936188641362840

namespace A134869

/-- `∑[round(acot(n)+n+1)]-2` -/
def P5718936188641362840.Spec : Prop :=
  ∀ n, P5718936188641362840.a n = A134869 (n + 1)

end A134869

/-! ## A134869.P14279567180596141890

`∑{d}[n, C(#, n)]+∑[n+1]`
-/

namespace A134869.P14279567180596141890
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Nat.choose d n + ∑ j ∈ Finset.range (n + 1), f2 j

end

end A134869.P14279567180596141890

namespace A134869

/-- `∑{d}[n, C(#, n)]+∑[n+1]` -/
def P14279567180596141890.Spec : Prop :=
  ∀ n, (P14279567180596141890.a n : ℤ) = A134869 (n + 1)

end A134869

/-! ## A134869.P14264383705859136373

`ceil(∑[n+1]+n*acot(n))`
-/

namespace A134869.P14264383705859136373
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ) + (n : ℝ) * SequenceMachineLib.acot (n : ℝ)⌉

end

end A134869.P14264383705859136373

namespace A134869

/-- `ceil(∑[n+1]+n*acot(n))` -/
def P14264383705859136373.Spec : Prop :=
  ∀ n, P14264383705859136373.a n = A134869 (n + 1)

end A134869

/-! ## A134869.P11129982720279878211

`round(∑[n+1]+n*acot(n))`
-/

namespace A134869.P11129982720279878211
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ) + (n : ℝ) * SequenceMachineLib.acot (n : ℝ))

end

end A134869.P11129982720279878211

namespace A134869

/-- `round(∑[n+1]+n*acot(n))` -/
def P11129982720279878211.Spec : Prop :=
  ∀ n, P11129982720279878211.a n = A134869 (n + 1)

end A134869

/-! ## A134869.P9621222201380458957

`round(∑[n+1]+n^acot(n))`
-/

namespace A134869.P9621222201380458957
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ) + (n : ℝ) ^ (SequenceMachineLib.acot (n : ℝ)))

end

end A134869.P9621222201380458957

namespace A134869

/-- `round(∑[n+1]+n^acot(n))` -/
def P9621222201380458957.Spec : Prop :=
  ∀ n, P9621222201380458957.a n = A134869 (n + 1)

end A134869

/-! ## A134869.P12743630897326127278

`∑[n+1]+floor(acot(acot(n)²))`
-/

namespace A134869.P12743630897326127278
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + ⌊SequenceMachineLib.acot (SequenceMachineLib.acot (n : ℝ) ^ 2)⌋

end

end A134869.P12743630897326127278

namespace A134869

/-- `∑[n+1]+floor(acot(acot(n)²))` -/
def P12743630897326127278.Spec : Prop :=
  ∀ n, P12743630897326127278.a n = A134869 (n + 1)

end A134869

/-! ## A134869.P328955624048770273

`∑[n+1]+floor(acot(floor(acot(n))))`
-/

namespace A134869.P328955624048770273
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + ⌊SequenceMachineLib.acot (⌊SequenceMachineLib.acot (n : ℝ)⌋ : ℝ)⌋

end

end A134869.P328955624048770273

namespace A134869

/-- `∑[n+1]+floor(acot(floor(acot(n))))` -/
def P328955624048770273.Spec : Prop :=
  ∀ n, P328955624048770273.a n = A134869 (n + 1)

end A134869

/-! ## A134869.P5360522026844803657

`∑[n+1]--1%(n+1)`
-/

namespace A134869.P5360522026844803657
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - Int.tmod (-1) (n + 1 : ℤ)

end

end A134869.P5360522026844803657

namespace A134869

/-- `∑[n+1]--1%(n+1)` -/
def P5360522026844803657.Spec : Prop :=
  ∀ n, P5360522026844803657.a n = A134869 (n + 1)

end A134869

/-! ## A134869.P9057984702614790290

`ogf((1+x-2x^2+x^3)/(1-3x+3x^2-x^3))`
-/

namespace A134869.P9057984702614790290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, -2, 1] [1, -3, 3, -1] n

end

end A134869.P9057984702614790290

namespace A134869

/-- `ogf((1+x-2x^2+x^3)/(1-3x+3x^2-x^3))` -/
def P9057984702614790290.Spec : Prop :=
  ∀ n, P9057984702614790290.a n = A134869 (n + 1)

end A134869

/-! ## A134869.P7358723865108753293

`a(n-1)-xor(n, -1)` with `a(0)=1, a(1)=4`
-/

namespace A134869.P7358723865108753293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  a (n - 1) - Int.xor (n : ℤ) (-1)

end

end A134869.P7358723865108753293

namespace A134869

/-- `a(n-1)-xor(n, -1)` -/
def P7358723865108753293.Spec : Prop :=
  ∀ n, P7358723865108753293.a n = A134869 (n + 1)

end A134869

/-!
# A134870: A051731 + A000012 - A103451.

The programs for A134870, the canonical program `A134870.P924456470311345683` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A134870 has offset 1).

The definition of A134870 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A134870.P11047797821939722145

`gcd(A154325(n), A155031(n+1))`
-/

namespace A134870.P11047797821939722145
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A154325 n) (A155031 (n + 1))

end

end A134870.P11047797821939722145

namespace A134870

/-- `gcd(A154325(n), A155031(n+1))` -/
def P11047797821939722145.Spec : Prop :=
  ∀ n, (P11047797821939722145.a n : ℤ) = A134870 (n + 1)

end A134870

/-! ## A134870.P924456470311345683

`A051731(n+1)+1-A103451(n)`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A134870

/-- `A051731(n+1)+1-A103451(n)` -/
def P924456470311345683.Spec : Prop :=
  ∀ n, P924456470311345683.a n = A134870 (n + 1)

theorem P924456470311345683.correct : P924456470311345683.Spec := by
  intro n
  simp only [A134870, Nat.add_sub_cancel]

end A134870

/-! ## A134870.P9798864443528890294

`2-C(A051340(n), A127093(n+1))`
-/

namespace A134870.P9798864443528890294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (Nat.choose (A051340 n).toNat (A127093 (n + 1)).toNat : ℤ)

end

end A134870.P9798864443528890294

namespace A134870

/-- `2-C(A051340(n), A127093(n+1))` -/
def P9798864443528890294.Spec : Prop :=
  ∀ n, P9798864443528890294.a n = A134870 (n + 1)

end A134870

/-! ## A134870.P8938271478633419836

`and(A051731(n+1), A297617(n+1))+1`
-/

namespace A134870.P8938271478633419836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A051731 (n + 1)) (A297617 (n + 1)) + 1

end

end A134870.P8938271478633419836

namespace A134870

/-- `and(A051731(n+1), A297617(n+1))+1` -/
def P8938271478633419836.Spec : Prop :=
  ∀ n, P8938271478633419836.a n = A134870 (n + 1)

end A134870

/-! ## A134870.P5445315787571628235

`2-C(A286236(n+1), A286239(n+1))`
-/

namespace A134870.P5445315787571628235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (Nat.choose (A286236 (n + 1)).toNat (A286239 (n + 1)).toNat : ℤ)

end

end A134870.P5445315787571628235

namespace A134870

/-- `2-C(A286236(n+1), A286239(n+1))` -/
def P5445315787571628235.Spec : Prop :=
  ∀ n, P5445315787571628235.a n = A134870 (n + 1)

end A134870

/-! ## A134870.P3189928841786612761

`A040001(A004247(n)*A051731(n+1))`
-/

namespace A134870.P3189928841786612761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (A004247 n * A051731 (n + 1)).toNat

end

end A134870.P3189928841786612761

namespace A134870

/-- `A040001(A004247(n)*A051731(n+1))` -/
def P3189928841786612761.Spec : Prop :=
  ∀ n, P3189928841786612761.a n = A134870 (n + 1)

end A134870

/-! ## A134870.P5429991812494489509

`A000032(C(A286236(n+1), A286239(n+1)))`
-/

namespace A134870.P5429991812494489509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (Nat.choose (A286236 (n + 1)).toNat (A286239 (n + 1)).toNat)

end

end A134870.P5429991812494489509

namespace A134870

/-- `A000032(C(A286236(n+1), A286239(n+1)))` -/
def P5429991812494489509.Spec : Prop :=
  ∀ n, P5429991812494489509.a n = A134870 (n + 1)

end A134870

/-! ## A134870.P5135011449379288617

`gcd(2, A176891(n+1)!)`
-/

namespace A134870.P5135011449379288617
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 (Nat.factorial (A176891 (n + 1)).toNat)

end

end A134870.P5135011449379288617

namespace A134870

/-- `gcd(2, A176891(n+1)!)` -/
def P5135011449379288617.Spec : Prop :=
  ∀ n, (P5135011449379288617.a n : ℤ) = A134870 (n + 1)

end A134870

/-! ## A134870.P8055195146014434646

`gcd(A048251(A127093(n+1)), A130321(n))`
-/

namespace A134870.P8055195146014434646
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A048251 (A127093 (n + 1)).toNat) (A130321 n)

end

end A134870.P8055195146014434646

namespace A134870

/-- `gcd(A048251(A127093(n+1)), A130321(n))` -/
def P8055195146014434646.Spec : Prop :=
  ∀ n, (P8055195146014434646.a n : ℤ) = A134870 (n + 1)

end A134870

/-! ## A134870.P5423131570527344236

`ceil(acot(acot(A156348(n+1))))`
-/

namespace A134870.P5423131570527344236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈SequenceMachineLib.acot (SequenceMachineLib.acot (A156348 (n + 1) : ℝ))⌉

end

end A134870.P5423131570527344236

namespace A134870

/-- `ceil(acot(acot(A156348(n+1))))` -/
def P5423131570527344236.Spec : Prop :=
  ∀ n, P5423131570527344236.a n = A134870 (n + 1)

end A134870

/-! ## A134870.P16606547525053511007

`A051731(n+1)+A001221(A057728(n+1))`
-/

namespace A134870.P16606547525053511007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051731 (n + 1) + A001221 (A057728 (n + 1)).toNat

end

end A134870.P16606547525053511007

namespace A134870

/-- `A051731(n+1)+A001221(A057728(n+1))` -/
def P16606547525053511007.Spec : Prop :=
  ∀ n, P16606547525053511007.a n = A134870 (n + 1)

end A134870

/-! ## A134870.P16048241418191219294

`A020639(A176891(n+1)!)`
-/

namespace A134870.P16048241418191219294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (Nat.factorial (A176891 (n + 1)).toNat)

end

end A134870.P16048241418191219294

namespace A134870

/-- `A020639(A176891(n+1)!)` -/
def P16048241418191219294.Spec : Prop :=
  ∀ n, P16048241418191219294.a n = A134870 (n + 1)

end A134870

/-! ## A134870.P7906168002990932689

`A014673(2^A156348(n+1))`
-/

namespace A134870.P7906168002990932689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014673 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A156348 (n + 1) : ℤ))).toNat

end

end A134870.P7906168002990932689

namespace A134870

/-- `A014673(2^A156348(n+1))` -/
def P7906168002990932689.Spec : Prop :=
  ∀ n, P7906168002990932689.a n = A134870 (n + 1)

end A134870

/-! ## A134870.P11141445105382657499

`ceil(atan(A306437(n+1)))!`
-/

namespace A134870.P11141445105382657499
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial ⌈Real.arctan (A306437 (n + 1) : ℝ)⌉.toNat

end

end A134870.P11141445105382657499

namespace A134870

/-- `ceil(atan(A306437(n+1)))!` -/
def P11141445105382657499.Spec : Prop :=
  ∀ n, (P11141445105382657499.a n : ℤ) = A134870 (n + 1)

end A134870

/-! ## A134870.P1493928514948631801

`A306459(∑{e}[A306437(n+1), #])`
-/

namespace A134870.P1493928514948631801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306437 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306459 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p)

end

end A134870.P1493928514948631801

namespace A134870

/-- `A306459(∑{e}[A306437(n+1), #])` -/
def P1493928514948631801.Spec : Prop :=
  ∀ n, P1493928514948631801.a n = A134870 (n + 1)

end A134870

/-! ## A134870.P15040494187509115472

`A000032(A141749(n)^A141701(n+1))`
-/

namespace A134870.P15040494187509115472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (SequenceMachineLib.roundAway ((A141749 n : ℚ) ^ (A141701 (n + 1) : ℤ))).toNat

end

end A134870.P15040494187509115472

namespace A134870

/-- `A000032(A141749(n)^A141701(n+1))` -/
def P15040494187509115472.Spec : Prop :=
  ∀ n, P15040494187509115472.a n = A134870 (n + 1)

end A134870

/-!
# A134871: a(1) = 1, a(n) = tau(n) + n - 2 for n > 1.

The programs for A134871, the canonical program `A134871.P9338139683703064561` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A134871 has offset 1).

The definition of A134871 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A134871.P10620500671281149305

`∑{d}[n+1, n^round(#/(n+3))]`
-/

namespace A134871.P10620500671281149305
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (n : ℚ) ^ (SequenceMachineLib.roundAway ((d : ℚ) / (n + 3 : ℚ)) : ℤ)

end

end A134871.P10620500671281149305

namespace A134871

/-- `∑{d}[n+1, n^round(#/(n+3))]` -/
def P10620500671281149305.Spec : Prop :=
  ∀ n, P10620500671281149305.a n = (A134871 (n + 1) : ℚ)

end A134871

/-! ## A134871.P17572886937987186954

`A325765(n)+n`
-/

namespace A134871.P17572886937987186954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325765 n + (n : ℤ)

end

end A134871.P17572886937987186954

namespace A134871

/-- `A325765(n)+n` -/
def P17572886937987186954.Spec : Prop :=
  ∀ n, P17572886937987186954.a n = A134871 (n + 1)

end A134871

/-! ## A134871.P5159429342094239384

`Δ[A325459(n)]+1+n`
-/

namespace A134871.P5159429342094239384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325459 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1 + (n : ℤ)

end

end A134871.P5159429342094239384

namespace A134871

/-- `Δ[A325459(n)]+1+n` -/
def P5159429342094239384.Spec : Prop :=
  ∀ n, P5159429342094239384.a n = A134871 (n + 1)

end A134871

/-! ## A134871.P9338139683703064561

`A070824(n+1)+1+n`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A134871

/-- `A070824(n+1)+1+n` -/
def P9338139683703064561.Spec : Prop :=
  ∀ n, P9338139683703064561.a n = A134871 (n + 1)

theorem P9338139683703064561.correct : P9338139683703064561.Spec := by
  intro n
  simp only [A134871, Nat.add_sub_cancel]

end A134871

/-! ## A134871.P8682342809492472489

`A000005(abs(1-n)+2)+n-1`
-/

namespace A134871.P8682342809492472489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (|1 - (n : ℤ)| + 2).toNat + ((n : ℤ) - 1)

end

end A134871.P8682342809492472489

namespace A134871

/-- `A000005(abs(1-n)+2)+n-1` -/
def P8682342809492472489.Spec : Prop :=
  ∀ n, P8682342809492472489.a n = A134871 (n + 1)

end A134871

/-! ## A134871.P9012721125444166577

`floor(A000005(n+1)+n²/(n+1))`
-/

namespace A134871.P9012721125444166577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000005 (n + 1) : ℚ) + (n ^ 2 : ℚ) / (n + 1 : ℚ)⌋

end

end A134871.P9012721125444166577

namespace A134871

/-- `floor(A000005(n+1)+n²/(n+1))` -/
def P9012721125444166577.Spec : Prop :=
  ∀ n, P9012721125444166577.a n = A134871 (n + 1)

end A134871

/-! ## A134871.P2737661357189698999

`Δ[a(n-1)+A000005(n)+n-2]` with `a(0)=0, a(1)=1`
-/

namespace A134871.P2737661357189698999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  f1 (n - 1) + (A000005 n + ((n : ℤ) - 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A134871.P2737661357189698999

namespace A134871

/-- `Δ[a(n-1)+A000005(n)+n-2]` -/
def P2737661357189698999.Spec : Prop :=
  ∀ n, P2737661357189698999.a n = A134871 (n + 1)

end A134871

/-! ## A134871.P13807097940990556026

`A057036(A035116(n+1))+n`
-/

namespace A134871.P13807097940990556026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057036 (A035116 (n + 1)).toNat + (n : ℤ)

end

end A134871.P13807097940990556026

namespace A134871

/-- `A057036(A035116(n+1))+n` -/
def P13807097940990556026.Spec : Prop :=
  ∀ n, P13807097940990556026.a n = A134871 (n + 1)

end A134871

/-! ## A134871.P13327111279338567087

`A076984(A046523(n+1))+n`
-/

namespace A134871.P13327111279338567087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076984 (A046523 (n + 1)).toNat + (n : ℤ)

end

end A134871.P13327111279338567087

namespace A134871

/-- `A076984(A046523(n+1))+n` -/
def P13327111279338567087.Spec : Prop :=
  ∀ n, P13327111279338567087.a n = A134871 (n + 1)

end A134871

/-! ## A134871.P6980745798561623597

`A076984(A071364(n+1))+n`
-/

namespace A134871.P6980745798561623597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076984 (A071364 (n + 1)).toNat + (n : ℤ)

end

end A134871.P6980745798561623597

namespace A134871

/-- `A076984(A071364(n+1))+n` -/
def P6980745798561623597.Spec : Prop :=
  ∀ n, P6980745798561623597.a n = A134871 (n + 1)

end A134871

/-! ## A134871.P17681068092035630174

`A088922(n+1)+A065033(n)`
-/

namespace A134871.P17681068092035630174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088922 (n + 1) + A065033 n

end

end A134871.P17681068092035630174

namespace A134871

/-- `A088922(n+1)+A065033(n)` -/
def P17681068092035630174.Spec : Prop :=
  ∀ n, P17681068092035630174.a n = A134871 (n + 1)

end A134871

/-! ## A134871.P11450384612536061894

`A082460(A105555(n+1))+n`
-/

namespace A134871.P11450384612536061894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082460 (A105555 (n + 1)).toNat + (n : ℤ)

end

end A134871.P11450384612536061894

namespace A134871

/-- `A082460(A105555(n+1))+n` -/
def P11450384612536061894.Spec : Prop :=
  ∀ n, P11450384612536061894.a n = A134871 (n + 1)

end A134871

/-! ## A134871.P4016164079795336456

`A158907(n+1)+A057428(n)`
-/

namespace A134871.P4016164079795336456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158907 (n + 1) + A057428 n

end

end A134871.P4016164079795336456

namespace A134871

/-- `A158907(n+1)+A057428(n)` -/
def P4016164079795336456.Spec : Prop :=
  ∀ n, P4016164079795336456.a n = A134871 (n + 1)

end A134871

/-! ## A134871.P8237598173542945023

`A289207(n)+A212356(n+1)`
-/

namespace A134871.P8237598173542945023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 n + A212356 (n + 1)

end

end A134871.P8237598173542945023

namespace A134871

/-- `A289207(n)+A212356(n+1)` -/
def P8237598173542945023.Spec : Prop :=
  ∀ n, P8237598173542945023.a n = A134871 (n + 1)

end A134871

/-! ## A134871.P4809688584816697883

`A062249(n+1)-(A057427(n)+1)`
-/

namespace A134871.P4809688584816697883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062249 (n + 1) - (A057427 n + 1)

end

end A134871.P4809688584816697883

namespace A134871

/-- `A062249(n+1)-(A057427(n)+1)` -/
def P4809688584816697883.Spec : Prop :=
  ∀ n, P4809688584816697883.a n = A134871 (n + 1)

end A134871

/-! ## A134871.P6994157981770220052

`A007318(C(A000005(n+1), 2)+1)+n`
-/

namespace A134871.P6994157981770220052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose (A000005 (n + 1)).toNat 2 + 1) + (n : ℤ)

end

end A134871.P6994157981770220052

namespace A134871

/-- `A007318(C(A000005(n+1), 2)+1)+n` -/
def P6994157981770220052.Spec : Prop :=
  ∀ n, P6994157981770220052.a n = A134871 (n + 1)

end A134871

/-! ## A134871.P12752823278335332875

`A000005(n+1)-and(1, A000040(n+1))+n`
-/

namespace A134871.P12752823278335332875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - Int.land 1 (A000040 (n + 1)) + (n : ℤ)

end

end A134871.P12752823278335332875

namespace A134871

/-- `A000005(n+1)-and(1, A000040(n+1))+n` -/
def P12752823278335332875.Spec : Prop :=
  ∀ n, P12752823278335332875.a n = A134871 (n + 1)

end A134871

/-! ## A134871.P16891229936442548468

`A000005(n+1)-gcd(2, A000010(n+2))+n+1`
-/

namespace A134871.P16891229936442548468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - (Int.gcd 2 (A000010 (n + 2)) : ℤ) + (n + 1 : ℤ)

end

end A134871.P16891229936442548468

namespace A134871

/-- `A000005(n+1)-gcd(2, A000010(n+2))+n+1` -/
def P16891229936442548468.Spec : Prop :=
  ∀ n, P16891229936442548468.a n = A134871 (n + 1)

end A134871

/-! ## A134871.P13028814553163154352

`A000005(n+1)-A000032(C(2, n+2))+n+1`
-/

namespace A134871.P13028814553163154352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A000032 (Nat.choose 2 (n + 2)) + (n + 1 : ℤ)

end

end A134871.P13028814553163154352

namespace A134871

/-- `A000005(n+1)-A000032(C(2, n+2))+n+1` -/
def P13028814553163154352.Spec : Prop :=
  ∀ n, P13028814553163154352.a n = A134871 (n + 1)

end A134871

/-!
# A134872: Product of n-th Mersenne prime and 2^n.

The programs for A134872, there is no canonical definition to state claims against.
-/

/-! ## A134872.P17472804963061512354

`A000668(n+1)*2^(n+1)`
-/

namespace A134872.P17472804963061512354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000668 (n + 1) * (2 ^ (n + 1) : ℤ)

end

end A134872.P17472804963061512354

/-! ## A134872.P17051537443953755667

`2*A061029(n+1)`
-/

namespace A134872.P17051537443953755667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A061029 (n + 1)

end

end A134872.P17051537443953755667

/-! ## A134872.P10762490988056374135

`2*2^n*A343733(n+2)`
-/

namespace A134872.P10762490988056374135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((2 ^ n : ℤ) * A343733 (n + 2))

end

end A134872.P10762490988056374135

/-! ## A134872.P7022548526896924278

`2*2^n*A169628(∑[n+1])`
-/

namespace A134872.P7022548526896924278
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((2 ^ n : ℤ) * A169628 (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A134872.P7022548526896924278

/-! ## A134872.P5303315804406071962

`2^(n+1)*record[A049479(n+2)]`
-/

namespace A134872.P5303315804406071962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049479 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) : ℤ) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A134872.P5303315804406071962

/-!
# A134873: Primes p with the property that the sum of the digits of the product of the digits of p is also a prime number.

The programs for A134873, there is no canonical definition to state claims against.
-/

/-! ## A134873.P15900197213743089888

`p?[A028843(n+1)+Δ[A173068(n)]]`
-/

namespace A134873.P15900197213743089888
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173068 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028843 (n + 1) + (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A134873.P15900197213743089888

/-! ## A134873.P12809573658162006482

`∩[A117159(n+1), A352328(n)]`
-/

namespace A134873.P12809573658162006482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117159 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352328 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A134873.P12809573658162006482

/-! ## A134873.P1822756653544586022

`p?[∩[A028843(n+1), A352328(n)]]`
-/

namespace A134873.P1822756653544586022
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028843 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352328 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∧ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A134873.P1822756653544586022

/-! ## A134873.P14573760802250328252

`A117159(A277061(n+1))%A333955(A028835(2*n+1))`
-/

namespace A134873.P14573760802250328252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A117159 (A277061 (n + 1)).toNat) (A333955 (A028835 (2 * n + 1)).toNat)

end

end A134873.P14573760802250328252

/-! ## A134873.P13174936726680492864

`∩[A117159(n+1), A168543(n+1)]`
-/

namespace A134873.P13174936726680492864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117159 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168543 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A134873.P13174936726680492864

/-!
# A134875: a(n)=the smallest sum of two nontrivial divisors of n, if any, whose product equals n; otherwise, a(n)=n.

The programs for A134875, there is no canonical definition to state claims against.
-/

/-! ## A134875.P17697951321439543272

`A063655(n+1)-A080339(n+1)`
-/

namespace A134875.P17697951321439543272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063655 (n + 1) - A080339 (n + 1)

end

end A134875.P17697951321439543272

/-! ## A134875.P9965160968167291757

`A063655(n+1)-abs(A267133(n+1))`
-/

namespace A134875.P9965160968167291757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063655 (n + 1) - |A267133 (n + 1)|

end

end A134875.P9965160968167291757

/-! ## A134875.P7529605155101275109

`A063655(n+1)+A066247(n+1)-1`
-/

namespace A134875.P7529605155101275109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063655 (n + 1) + (A066247 (n + 1) - 1)

end

end A134875.P7529605155101275109

/-! ## A134875.P12055396794037348152

`A063655(n+1)-C(A000010(n+1), n)`
-/

namespace A134875.P12055396794037348152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063655 (n + 1) - (Nat.choose (A000010 (n + 1)).toNat n : ℤ)

end

end A134875.P12055396794037348152

/-! ## A134875.P11104237753347132373

`A063655(n+1)-char[A020639(n+1)-1]`
-/

namespace A134875.P11104237753347132373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063655 (n + 1) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A134875.P11104237753347132373

/-! ## A134875.P15363999194244954075

`A063655(n+1)+char[A018252(n+2)-1]-1`
-/

namespace A134875.P15363999194244954075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 2) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063655 (n + 1) + (((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) - 1)

end

end A134875.P15363999194244954075

/-! ## A134875.P17571688925016127857

`A194258(A063655(n+1)+n²)`
-/

namespace A134875.P17571688925016127857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194258 (A063655 (n + 1) + (n ^ 2 : ℤ)).toNat

end

end A134875.P17571688925016127857

/-! ## A134875.P8267374592768922258

`A004739(A063655(n+1)+∑[2*n])`
-/

namespace A134875.P8267374592768922258
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004739 (A063655 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A134875.P8267374592768922258

/-! ## A134875.P1952483234705517107

`A134889(A376915(n+1))`
-/

namespace A134875.P1952483234705517107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134889 (A376915 (n + 1)).toNat

end

end A134875.P1952483234705517107

/-!
# A134876: Number of Proth primes: number of primes of the form 1 + k*2^n with k odd and k < 2^n.

The programs for A134876, there is no canonical definition to state claims against.
-/

/-! ## A134876.P12499052639025819069

`Δ[A214120(2*(n+1))-A331540(n+1)]`
-/

namespace A134876.P12499052639025819069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214120 (2 * (n + 1)) - A331540 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A134876.P12499052639025819069

/-! ## A134876.P10826291363260555613

`A329200(A000288(n))+A100260(n+1)`
-/

namespace A134876.P10826291363260555613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329200 (A000288 n).toNat + A100260 (n + 1)

end

end A134876.P10826291363260555613

/-!
# A134886: a(n) = floor(n^sqrt(2)).

The programs for A134886, the canonical program `A134886.P9054347596256406830` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A134886 has offset 1).

The definition of A134886 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor((n+1)^sqrt(2))` (program `A134886.P9054347596256406830`, by `A134886.P9054347596256406830.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A134886.P9054347596256406830

`floor((n+1)^sqrt(2))`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A134886

/-- `floor((n+1)^sqrt(2))` -/
def P9054347596256406830.Spec : Prop :=
  ∀ n, P9054347596256406830.a n = A134886 (n + 1)

theorem P9054347596256406830.correct : P9054347596256406830.Spec := by
  intro n
  simp only [A134886, Nat.add_sub_cancel]

end A134886

/-! ## A134886.P3064491430415186364

`A175268(n+1)-A175269(n+1)`
-/

namespace A134886.P3064491430415186364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175268 (n + 1) - A175269 (n + 1)

end

end A134886.P3064491430415186364

namespace A134886

/-- `A175268(n+1)-A175269(n+1)` -/
def P3064491430415186364.Spec : Prop :=
  ∀ n, P3064491430415186364.a n = A134886 (n + 1)

end A134886

/-! ## A134886.P6491758521862976586

`record[floor(A278539(n+1)^root(2, 2))]`
-/

namespace A134886.P6491758521862976586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A278539 (n + 1) : ℝ) ^ ((2 : ℝ) ^ (1 / (2 : ℝ)))⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A134886.P6491758521862976586

namespace A134886

/-- `record[floor(A278539(n+1)^root(2, 2))]` -/
def P6491758521862976586.Spec : Prop :=
  ∀ n, P6491758521862976586.a n = A134886 (n + 1)

end A134886

/-! ## A134886.P7333756066184083

`A057889(A057889(floor((n+1)^root(2, 2))))`
-/

namespace A134886.P7333756066184083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057889 (A057889 ⌊(n + 1 : ℝ) ^ ((2 : ℝ) ^ (1 / (2 : ℝ)))⌋.toNat).toNat

end

end A134886.P7333756066184083

namespace A134886

/-- `A057889(A057889(floor((n+1)^root(2, 2))))` -/
def P7333756066184083.Spec : Prop :=
  ∀ n, P7333756066184083.a n = A134886 (n + 1)

end A134886

/-! ## A134886.P7447511884906562571

`A276220((n+1)²)+1-(n+1)²`
-/

namespace A134886.P7447511884906562571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276220 ((n + 1) ^ 2) + (1 - ((n + 1) ^ 2 : ℤ))

end

end A134886.P7447511884906562571

namespace A134886

/-- `A276220((n+1)²)+1-(n+1)²` -/
def P7447511884906562571.Spec : Prop :=
  ∀ n, P7447511884906562571.a n = A134886 (n + 1)

end A134886

/-!
# A134887: a(n) = floor(n^sqrt(2*Pi)).

The programs for A134887, the canonical program `A134887.P5447415082836571630` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A134887 has offset 1).

The definition of A134887 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor((n+1)^sqrt(2*π))` (program `A134887.P5447415082836571630`, by `A134887.P5447415082836571630.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A134887.P5447415082836571630

`floor((n+1)^sqrt(2*π))`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A134887

/-- `floor((n+1)^sqrt(2*π))` -/
def P5447415082836571630.Spec : Prop :=
  ∀ n, P5447415082836571630.a n = A134887 (n + 1)

theorem P5447415082836571630.correct : P5447415082836571630.Spec := by
  intro n
  simp only [A134887, Nat.add_sub_cancel]

end A134887

/-! ## A134887.P7047970301589582522

`record[floor(A028242(n)^sqrt(2*π))]`
-/

namespace A134887.P7047970301589582522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A028242 n : ℝ) ^ (Real.sqrt (2 * Real.pi))⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A134887.P7047970301589582522

namespace A134887

/-- `record[floor(A028242(n)^sqrt(2*π))]` -/
def P7047970301589582522.Spec : Prop :=
  ∀ n, P7047970301589582522.a n = A134887 (n + 1)

end A134887

/-! ## A134887.P4980672761146365542

`A155013(n+1)+A004216(A000110(n))`
-/

namespace A134887.P4980672761146365542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155013 (n + 1) + A004216 (A000110 n).toNat

end

end A134887.P4980672761146365542

namespace A134887

/-- `A155013(n+1)+A004216(A000110(n))` -/
def P4980672761146365542.Spec : Prop :=
  ∀ n, P4980672761146365542.a n = A134887 (n + 1)

end A134887

/-!
# A134889: a(n)=the largest sum of two nontrivial divisors of n, if any, whose product equals n; otherwise, a(n)=n.

The programs for A134889, there is no canonical definition to state claims against.
-/

/-! ## A134889.P12545067620061211140

`A220096(n+1)+A107286(n+1)`
-/

namespace A134889.P12545067620061211140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220096 (n + 1) + A107286 (n + 1)

end

end A134889.P12545067620061211140

/-! ## A134889.P9636720141420948148

`A111234(n+1)-A080339(n+1)`
-/

namespace A134889.P9636720141420948148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111234 (n + 1) - A080339 (n + 1)

end

end A134889.P9636720141420948148

/-! ## A134889.P16926824412110260367

`gcd(A089389(n+1), A393359(n+1))`
-/

namespace A134889.P16926824412110260367
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A089389 (n + 1)) (A393359 (n + 1))

end

end A134889.P16926824412110260367

/-! ## A134889.P10177309207395355720

`A111234(n+1)-char[A061006(n+1)]`
-/

namespace A134889.P10177309207395355720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061006 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111234 (n + 1) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A134889.P10177309207395355720

/-! ## A134889.P12186568145277645614

`A066247(n+1)+A111234(n+1)-1`
-/

namespace A134889.P12186568145277645614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066247 (n + 1) + (A111234 (n + 1) - 1)

end

end A134889.P12186568145277645614

/-! ## A134889.P1607616237630602486

`A089389(n+1)+C(A006530(n+1), n)`
-/

namespace A134889.P1607616237630602486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089389 (n + 1) + (Nat.choose (A006530 (n + 1)).toNat n : ℤ)

end

end A134889.P1607616237630602486

/-! ## A134889.P3711105160146754984

`A089389(n+1)+C(A020639(n+1), n)`
-/

namespace A134889.P3711105160146754984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089389 (n + 1) + (Nat.choose (A020639 (n + 1)).toNat n : ℤ)

end

end A134889.P3711105160146754984

/-! ## A134889.P8603503572642340526

`A111234(n+1)-char[A006530(n+1)-1]`
-/

namespace A134889.P8603503572642340526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111234 (n + 1) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A134889.P8603503572642340526

/-! ## A134889.P10338511849013168601

`A111234(n+1)-char[A020639(n+1)-1]`
-/

namespace A134889.P10338511849013168601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111234 (n + 1) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A134889.P10338511849013168601

/-!
# A134890: Ceiling(n*exp(cos n)).

The programs for A134890, the canonical program `A134890.P18168579675480480857` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A134890 has offset 1).

The definition of A134890 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A134890.P18168579675480480857

`ceil((n+1)*exp(cos(n+1)))`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A134890

/-- `ceil((n+1)*exp(cos(n+1)))` -/
def P18168579675480480857.Spec : Prop :=
  ∀ n, P18168579675480480857.a n = A134890 (n + 1)

theorem P18168579675480480857.correct : P18168579675480480857.Spec := by
  intro n
  simp only [A134890, Nat.add_sub_cancel]

end A134890

/-! ## A134890.P15359152075671393160

`floor((n+1)*exp(cos(n+1)))+1`
-/

namespace A134890.P15359152075671393160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) * Real.exp (Real.cos (n + 1 : ℝ))⌋ + 1

end

end A134890.P15359152075671393160

namespace A134890

/-- `floor((n+1)*exp(cos(n+1)))+1` -/
def P15359152075671393160.Spec : Prop :=
  ∀ n, P15359152075671393160.a n = A134890 (n + 1)

end A134890

/-! ## A134890.P12212622051049263360

`A134891(n+1)+1`
-/

namespace A134890.P12212622051049263360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134891 (n + 1) + 1

end

end A134890.P12212622051049263360

namespace A134890

/-- `A134891(n+1)+1` -/
def P12212622051049263360.Spec : Prop :=
  ∀ n, P12212622051049263360.a n = A134890 (n + 1)

end A134890

/-! ## A134890.P15976098598880997604

`A020725(floor((n+1)*exp(cos(n+1))))`
-/

namespace A134890.P15976098598880997604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 ⌊(n + 1 : ℝ) * Real.exp (Real.cos (n + 1 : ℝ))⌋.toNat

end

end A134890.P15976098598880997604

namespace A134890

/-- `A020725(floor((n+1)*exp(cos(n+1))))` -/
def P15976098598880997604.Spec : Prop :=
  ∀ n, P15976098598880997604.a n = A134890 (n + 1)

end A134890

/-! ## A134890.P13261766630042156250

`A020725(A134891(n+1))`
-/

namespace A134890.P13261766630042156250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A134891 (n + 1)).toNat

end

end A134890.P13261766630042156250

namespace A134890

/-- `A020725(A134891(n+1))` -/
def P13261766630042156250.Spec : Prop :=
  ∀ n, P13261766630042156250.a n = A134890 (n + 1)

end A134890

/-!
# A134891: a(n) = floor(n*exp(cos(n))).

The programs for A134891, the canonical program `A134891.P673243500328495200` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A134891 has offset 1).

The definition of A134891 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor((n+1)*exp(cos(n+1)))` (program `A134891.P673243500328495200`, by `A134891.P673243500328495200.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A134891.P673243500328495200

`floor((n+1)*exp(cos(n+1)))`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A134891

/-- `floor((n+1)*exp(cos(n+1)))` -/
def P673243500328495200.Spec : Prop :=
  ∀ n, P673243500328495200.a n = A134891 (n + 1)

theorem P673243500328495200.correct : P673243500328495200.Spec := by
  intro n
  simp only [A134891, Nat.add_sub_cancel]

end A134891

/-! ## A134891.P11157139872410209445

`ceil((n+1)*exp(cos(n+1)))-1`
-/

namespace A134891.P11157139872410209445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℝ) * Real.exp (Real.cos (n + 1 : ℝ))⌉ - 1

end

end A134891.P11157139872410209445

namespace A134891

/-- `ceil((n+1)*exp(cos(n+1)))-1` -/
def P11157139872410209445.Spec : Prop :=
  ∀ n, P11157139872410209445.a n = A134891 (n + 1)

end A134891

/-! ## A134891.P4796391834563215319

`A134890(n+1)-1`
-/

namespace A134891.P4796391834563215319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134890 (n + 1) - 1

end

end A134891.P4796391834563215319

namespace A134891

/-- `A134890(n+1)-1` -/
def P4796391834563215319.Spec : Prop :=
  ∀ n, P4796391834563215319.a n = A134891 (n + 1)

end A134891

/-! ## A134891.P8640669309406469919

`A023443(A134890(n+1))`
-/

namespace A134891.P8640669309406469919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A134890 (n + 1)).toNat

end

end A134891.P8640669309406469919

namespace A134891

/-- `A023443(A134890(n+1))` -/
def P8640669309406469919.Spec : Prop :=
  ∀ n, P8640669309406469919.a n = A134891 (n + 1)

end A134891

/-! ## A134891.P170073125710466765

`A023447(A134890(n+1)+4)`
-/

namespace A134891.P170073125710466765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023447 (A134890 (n + 1) + 4).toNat

end

end A134891.P170073125710466765

namespace A134891

/-- `A023447(A134890(n+1)+4)` -/
def P170073125710466765.Spec : Prop :=
  ∀ n, P170073125710466765.a n = A134891 (n + 1)

end A134891

/-!
# A134892: a(n) = ceiling(n*exp(sin(n))).

The programs for A134892, the canonical program `A134892.P437525837453332980` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A134892 has offset 1).

The definition of A134892 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ceil((n+1)*exp(sin(n+1)))` (program `A134892.P437525837453332980`, by `A134892.P437525837453332980.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A134892.P437525837453332980

`ceil((n+1)*exp(sin(n+1)))`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A134892

/-- `ceil((n+1)*exp(sin(n+1)))` -/
def P437525837453332980.Spec : Prop :=
  ∀ n, P437525837453332980.a n = A134892 (n + 1)

theorem P437525837453332980.correct : P437525837453332980.Spec := by
  intro n
  simp only [A134892, Nat.add_sub_cancel]

end A134892

/-! ## A134892.P6035974694189356418

`ceil((n+1)/exp(sin(-(n+1))))`
-/

namespace A134892.P6035974694189356418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℝ) / Real.exp (Real.sin (-(n + 1 : ℤ) : ℝ))⌉

end

end A134892.P6035974694189356418

namespace A134892

/-- `ceil((n+1)/exp(sin(-(n+1))))` -/
def P6035974694189356418.Spec : Prop :=
  ∀ n, P6035974694189356418.a n = A134892 (n + 1)

end A134892

/-! ## A134892.P248539723207012394

`floor((n+1)*exp(sin(n+1)))+1`
-/

namespace A134892.P248539723207012394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) * Real.exp (Real.sin (n + 1 : ℝ))⌋ + 1

end

end A134892.P248539723207012394

namespace A134892

/-- `floor((n+1)*exp(sin(n+1)))+1` -/
def P248539723207012394.Spec : Prop :=
  ∀ n, P248539723207012394.a n = A134892 (n + 1)

end A134892

/-! ## A134892.P17663857287512913208

`floor((n+1)*e^sin(n+1))+1`
-/

namespace A134892.P17663857287512913208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) * Real.exp 1 ^ (Real.sin (n + 1 : ℝ))⌋ + 1

end

end A134892.P17663857287512913208

namespace A134892

/-- `floor((n+1)*e^sin(n+1))+1` -/
def P17663857287512913208.Spec : Prop :=
  ∀ n, P17663857287512913208.a n = A134892 (n + 1)

end A134892

/-! ## A134892.P2616337076356055353

`A134893(n+1)+1`
-/

namespace A134892.P2616337076356055353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134893 (n + 1) + 1

end

end A134892.P2616337076356055353

namespace A134892

/-- `A134893(n+1)+1` -/
def P2616337076356055353.Spec : Prop :=
  ∀ n, P2616337076356055353.a n = A134892 (n + 1)

end A134892

/-! ## A134892.P9908439020580478941

`A020725(A134893(n+1))`
-/

namespace A134892.P9908439020580478941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A134893 (n + 1)).toNat

end

end A134892.P9908439020580478941

namespace A134892

/-- `A020725(A134893(n+1))` -/
def P9908439020580478941.Spec : Prop :=
  ∀ n, P9908439020580478941.a n = A134892 (n + 1)

end A134892

/-!
# A134893: Floor(n*exp(sin n)).

The programs for A134893, the canonical program `A134893.P10886047419577572354` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A134893 has offset 1).

The definition of A134893 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A134893.P10886047419577572354

`floor((n+1)*exp(sin(n+1)))`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A134893

/-- `floor((n+1)*exp(sin(n+1)))` -/
def P10886047419577572354.Spec : Prop :=
  ∀ n, P10886047419577572354.a n = A134893 (n + 1)

theorem P10886047419577572354.correct : P10886047419577572354.Spec := by
  intro n
  simp only [A134893, Nat.add_sub_cancel]

end A134893

/-! ## A134893.P6011233290122610257

`floor((n+1)*e^sin(n+1))`
-/

namespace A134893.P6011233290122610257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) * Real.exp 1 ^ (Real.sin (n + 1 : ℝ))⌋

end

end A134893.P6011233290122610257

namespace A134893

/-- `floor((n+1)*e^sin(n+1))` -/
def P6011233290122610257.Spec : Prop :=
  ∀ n, P6011233290122610257.a n = A134893 (n + 1)

theorem P6011233290122610257.correct : P6011233290122610257.Spec := by
  intro n
  simp only [A134893, Nat.add_sub_cancel, A134893.P6011233290122610257.a, A134893.P10886047419577572354.a, SequenceMachineLib.memo_apply]
  try simp

end A134893

/-! ## A134893.P7678009249427600360

`floor((n+1)/exp(sin(-(n+1))))`
-/

namespace A134893.P7678009249427600360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) / Real.exp (Real.sin (-(n + 1 : ℤ) : ℝ))⌋

end

end A134893.P7678009249427600360

namespace A134893

/-- `floor((n+1)/exp(sin(-(n+1))))` -/
def P7678009249427600360.Spec : Prop :=
  ∀ n, P7678009249427600360.a n = A134893 (n + 1)

end A134893

/-! ## A134893.P15753824719233463265

`ceil((n+1)*exp(sin(n+1)))-1`
-/

namespace A134893.P15753824719233463265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℝ) * Real.exp (Real.sin (n + 1 : ℝ))⌉ - 1

end

end A134893.P15753824719233463265

namespace A134893

/-- `ceil((n+1)*exp(sin(n+1)))-1` -/
def P15753824719233463265.Spec : Prop :=
  ∀ n, P15753824719233463265.a n = A134893 (n + 1)

end A134893

/-! ## A134893.P9979935383334939478

`A134892(n+1)-1`
-/

namespace A134893.P9979935383334939478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134892 (n + 1) - 1

end

end A134893.P9979935383334939478

namespace A134893

/-- `A134892(n+1)-1` -/
def P9979935383334939478.Spec : Prop :=
  ∀ n, P9979935383334939478.a n = A134893 (n + 1)

end A134893

/-! ## A134893.P5266164550243067544

`A023443(A134892(n+1))`
-/

namespace A134893.P5266164550243067544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A134892 (n + 1)).toNat

end

end A134893.P5266164550243067544

namespace A134893

/-- `A023443(A134892(n+1))` -/
def P5266164550243067544.Spec : Prop :=
  ∀ n, P5266164550243067544.a n = A134893 (n + 1)

end A134893

/-!
# A134894: Ceiling(n*exp(tan n)).

The programs for A134894, the canonical program `A134894.P8792449654184157169` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A134894 has offset 1).

The definition of A134894 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A134894.P8792449654184157169

`ceil((n+1)*exp(tan(n+1)))`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A134894

/-- `ceil((n+1)*exp(tan(n+1)))` -/
def P8792449654184157169.Spec : Prop :=
  ∀ n, P8792449654184157169.a n = A134894 (n + 1)

theorem P8792449654184157169.correct : P8792449654184157169.Spec := by
  intro n
  simp only [A134894, Nat.add_sub_cancel]

end A134894

/-! ## A134894.P3764535303599019822

`ceil((n+1)*e^tan(n+1))`
-/

namespace A134894.P3764535303599019822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℝ) * Real.exp 1 ^ (Real.tan (n + 1 : ℝ))⌉

end

end A134894.P3764535303599019822

namespace A134894

/-- `ceil((n+1)*e^tan(n+1))` -/
def P3764535303599019822.Spec : Prop :=
  ∀ n, P3764535303599019822.a n = A134894 (n + 1)

theorem P3764535303599019822.correct : P3764535303599019822.Spec := by
  intro n
  simp only [A134894, Nat.add_sub_cancel, A134894.P3764535303599019822.a, A134894.P8792449654184157169.a, SequenceMachineLib.memo_apply]
  try simp

end A134894

/-! ## A134894.P994294891899863850

`floor((n+1)*exp(tan(n+1)))+1`
-/

namespace A134894.P994294891899863850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) * Real.exp (Real.tan (n + 1 : ℝ))⌋ + 1

end

end A134894.P994294891899863850

namespace A134894

/-- `floor((n+1)*exp(tan(n+1)))+1` -/
def P994294891899863850.Spec : Prop :=
  ∀ n, P994294891899863850.a n = A134894 (n + 1)

end A134894

/-! ## A134894.P8114617538712534730

`floor((n+1)*e^tan(n+1))+1`
-/

namespace A134894.P8114617538712534730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) * Real.exp 1 ^ (Real.tan (n + 1 : ℝ))⌋ + 1

end

end A134894.P8114617538712534730

namespace A134894

/-- `floor((n+1)*e^tan(n+1))+1` -/
def P8114617538712534730.Spec : Prop :=
  ∀ n, P8114617538712534730.a n = A134894 (n + 1)

end A134894

/-! ## A134894.P7258446600791015796

`A134895(n+1)+1`
-/

namespace A134894.P7258446600791015796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134895 (n + 1) + 1

end

end A134894.P7258446600791015796

namespace A134894

/-- `A134895(n+1)+1` -/
def P7258446600791015796.Spec : Prop :=
  ∀ n, P7258446600791015796.a n = A134894 (n + 1)

end A134894

/-!
# A134895: Floor(n*exp(tan n)).

The programs for A134895, the canonical program `A134895.P12693025188408229729` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A134895 has offset 1).

The definition of A134895 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A134895.P12693025188408229729

`floor((n+1)*exp(tan(n+1)))`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A134895

/-- `floor((n+1)*exp(tan(n+1)))` -/
def P12693025188408229729.Spec : Prop :=
  ∀ n, P12693025188408229729.a n = A134895 (n + 1)

theorem P12693025188408229729.correct : P12693025188408229729.Spec := by
  intro n
  simp only [A134895, Nat.add_sub_cancel]

end A134895

/-! ## A134895.P18354654217954816384

`floor((n+1)*e^tan(n+1))`
-/

namespace A134895.P18354654217954816384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) * Real.exp 1 ^ (Real.tan (n + 1 : ℝ))⌋

end

end A134895.P18354654217954816384

namespace A134895

/-- `floor((n+1)*e^tan(n+1))` -/
def P18354654217954816384.Spec : Prop :=
  ∀ n, P18354654217954816384.a n = A134895 (n + 1)

theorem P18354654217954816384.correct : P18354654217954816384.Spec := by
  intro n
  simp only [A134895, Nat.add_sub_cancel, A134895.P18354654217954816384.a, A134895.P12693025188408229729.a, SequenceMachineLib.memo_apply]
  try simp

end A134895

/-! ## A134895.P15335315119502385730

`ceil((n+1)*exp(tan(n+1)))-1`
-/

namespace A134895.P15335315119502385730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℝ) * Real.exp (Real.tan (n + 1 : ℝ))⌉ - 1

end

end A134895.P15335315119502385730

namespace A134895

/-- `ceil((n+1)*exp(tan(n+1)))-1` -/
def P15335315119502385730.Spec : Prop :=
  ∀ n, P15335315119502385730.a n = A134895 (n + 1)

end A134895

/-! ## A134895.P4005339913717542672

`floor((n+1)*exp(1/cot(n+1)))`
-/

namespace A134895.P4005339913717542672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) * Real.exp (1 / Real.cot (n + 1 : ℝ))⌋

end

end A134895.P4005339913717542672

namespace A134895

/-- `floor((n+1)*exp(1/cot(n+1)))` -/
def P4005339913717542672.Spec : Prop :=
  ∀ n, P4005339913717542672.a n = A134895 (n + 1)

theorem P4005339913717542672.correct : P4005339913717542672.Spec := by
  intro n
  simp only [A134895, Nat.add_sub_cancel, A134895.P4005339913717542672.a, A134895.P12693025188408229729.a, SequenceMachineLib.memo_apply]
  try simp

end A134895

/-! ## A134895.P9944702157222070442

`A134894(n+1)-1`
-/

namespace A134895.P9944702157222070442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134894 (n + 1) - 1

end

end A134895.P9944702157222070442

namespace A134895

/-- `A134894(n+1)-1` -/
def P9944702157222070442.Spec : Prop :=
  ∀ n, P9944702157222070442.a n = A134895 (n + 1)

end A134895

/-!
# A134896: Ceiling(n*exp(cot n)).

The programs for A134896, the canonical program `A134896.P9421466722066182485` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A134896 has offset 1).

The definition of A134896 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 140 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A134896.P9421466722066182485

`A134897(n+1)+A004736(record[C(n, 2)-n]+1)`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A134896

/-- `A134897(n+1)+A004736(record[C(n, 2)-n]+1)` -/
def P9421466722066182485.Spec : Prop :=
  ∀ n, P9421466722066182485.a n = A134896 (n + 1)

theorem P9421466722066182485.correct : P9421466722066182485.Spec := by
  intro n
  simp only [A134896, Nat.add_sub_cancel]

end A134896

/-! ## A134896.P10724740543608971863

`A253641(n²+1)+A134897(n+1)`
-/

namespace A134896.P10724740543608971863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253641 (n ^ 2 + 1) + A134897 (n + 1)

end

end A134896.P10724740543608971863

namespace A134896

/-- `A253641(n²+1)+A134897(n+1)` -/
def P10724740543608971863.Spec : Prop :=
  ∀ n, P10724740543608971863.a n = A134896 (n + 1)

end A134896

/-! ## A134896.P16787176557505380421

`A134897(n+1)+A083075(∑[n])`
-/

namespace A134896.P16787176557505380421
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134897 (n + 1) + A083075 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A134896.P16787176557505380421

namespace A134896

/-- `A134897(n+1)+A083075(∑[n])` -/
def P16787176557505380421.Spec : Prop :=
  ∀ n, P16787176557505380421.a n = A134896 (n + 1)

end A134896

/-! ## A134896.P2776568056892758337

`A134897(n+1)-A260196(A019546(n+1))`
-/

namespace A134896.P2776568056892758337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134897 (n + 1) - A260196 (A019546 (n + 1)).toNat

end

end A134896.P2776568056892758337

namespace A134896

/-- `A134897(n+1)-A260196(A019546(n+1))` -/
def P2776568056892758337.Spec : Prop :=
  ∀ n, P2776568056892758337.a n = A134896 (n + 1)

end A134896

/-! ## A134896.P9587600715670872420

`A351034(A046020(3*n+1))+A134897(n+1)`
-/

namespace A134896.P9587600715670872420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351034 (A046020 (3 * n + 1)).toNat + A134897 (n + 1)

end

end A134896.P9587600715670872420

namespace A134896

/-- `A351034(A046020(3*n+1))+A134897(n+1)` -/
def P9587600715670872420.Spec : Prop :=
  ∀ n, P9587600715670872420.a n = A134896 (n + 1)

end A134896

/-!
# A134897: Floor(n*exp(cot n)).

The programs for A134897, the canonical program `A134897.P14288835113109703441` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A134897 has offset 1).

The definition of A134897 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A134897.P14288835113109703441

`floor((n+1)*exp(cot(n+1)))`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A134897

/-- `floor((n+1)*exp(cot(n+1)))` -/
def P14288835113109703441.Spec : Prop :=
  ∀ n, P14288835113109703441.a n = A134897 (n + 1)

theorem P14288835113109703441.correct : P14288835113109703441.Spec := by
  intro n
  simp only [A134897, Nat.add_sub_cancel]

end A134897

/-! ## A134897.P16642980106124307345

`ceil((n+1)*exp(cot(n+1)))-1`
-/

namespace A134897.P16642980106124307345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℝ) * Real.exp (Real.cot (n + 1 : ℝ))⌉ - 1

end

end A134897.P16642980106124307345

namespace A134897

/-- `ceil((n+1)*exp(cot(n+1)))-1` -/
def P16642980106124307345.Spec : Prop :=
  ∀ n, P16642980106124307345.a n = A134897 (n + 1)

end A134897

/-! ## A134897.P1832687570017489523

`A134896(n+1)-A112467(A000217(n))²`
-/

namespace A134897.P1832687570017489523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134896 (n + 1) - A112467 (A000217 n).toNat ^ 2

end

end A134897.P1832687570017489523

namespace A134897

/-- `A134896(n+1)-A112467(A000217(n))²` -/
def P1832687570017489523.Spec : Prop :=
  ∀ n, P1832687570017489523.a n = A134897 (n + 1)

end A134897

/-! ## A134897.P13937728536699454571

`A134896(n+1)-A112467(A000217(n)+n)`
-/

namespace A134897.P13937728536699454571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134896 (n + 1) - A112467 (A000217 n + (n : ℤ)).toNat

end

end A134897.P13937728536699454571

namespace A134897

/-- `A134896(n+1)-A112467(A000217(n)+n)` -/
def P13937728536699454571.Spec : Prop :=
  ∀ n, P13937728536699454571.a n = A134897 (n + 1)

end A134897

/-! ## A134897.P8707423905265029576

`A134896(n+1)+A112467(A000217(n+8))`
-/

namespace A134897.P8707423905265029576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134896 (n + 1) + A112467 (A000217 (n + 8)).toNat

end

end A134897.P8707423905265029576

namespace A134897

/-- `A134896(n+1)+A112467(A000217(n+8))` -/
def P8707423905265029576.Spec : Prop :=
  ∀ n, P8707423905265029576.a n = A134897 (n + 1)

end A134897

/-! ## A134897.P5302059524945514674

`A134896(n+1)+A008683(A265006(n+1))`
-/

namespace A134897.P5302059524945514674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134896 (n + 1) + A008683 (A265006 (n + 1)).toNat

end

end A134897.P5302059524945514674

namespace A134897

/-- `A134896(n+1)+A008683(A265006(n+1))` -/
def P5302059524945514674.Spec : Prop :=
  ∀ n, P5302059524945514674.a n = A134897 (n + 1)

end A134897

/-!
# A134898: Ceiling(n*exp(sec n)).

The programs for A134898, there is no canonical definition to state claims against.
-/

/-! ## A134898.P13931132055321200918

`A134899(n+1)+1`
-/

namespace A134898.P13931132055321200918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134899 (n + 1) + 1

end

end A134898.P13931132055321200918

/-!
# A134899: Floor(n*exp(sec(n))).

The programs for A134899, there is no canonical definition to state claims against.
-/

/-! ## A134899.P16879665734264984276

`A134898(n+1)-1`
-/

namespace A134899.P16879665734264984276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134898 (n + 1) - 1

end

end A134899.P16879665734264984276

