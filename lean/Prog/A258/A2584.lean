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
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
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
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C005
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
import Seq.Opaque.C010
import Seq.Opaque.C011
import Seq.Opaque.C012
import Seq.Opaque.C014
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C024
import Seq.Opaque.C025

/-!
# A258400: Perfect powers m^k such that m, k and m+k are primes.

The programs for A258400, there is no canonical definition to state claims against.
-/

/-! ## A258400.P14772073317614106406

`∩[A053810(n+1), A130099(n+1)]`
-/

namespace A258400.P14772073317614106406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053810 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130099 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A258400.P14772073317614106406

/-! ## A258400.P11880007304953641029

`∩[A048124(n+1), A053810(n+1)]`
-/

namespace A258400.P11880007304953641029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048124 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053810 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A258400.P11880007304953641029

/-! ## A258400.P4751866273482974043

`∩[A048124(n+1), A334393(n+1)]`
-/

namespace A258400.P4751866273482974043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048124 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334393 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A258400.P4751866273482974043

/-! ## A258400.P617638060342203276

`∩[A053810(n+1), A130100(n+1)]`
-/

namespace A258400.P617638060342203276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053810 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130100 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A258400.P617638060342203276

/-! ## A258400.P16817722756705990315

`∩[A114130(n+1), A130100(n+1)]`
-/

namespace A258400.P16817722756705990315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114130 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130100 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A258400.P16817722756705990315

/-!
# A258402: a(n) = (n^2 + 4*n + 6) * n^2.

The programs for A258402, the canonical program `A258402.P4882434139232473822` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A258402 has offset 0).

The definition of A258402 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n²+4*n+6)*n²` (program `A258402.P4882434139232473822`, by `A258402.P4882434139232473822.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A258402.P4882434139232473822

`(n²+4*n+6)*n²`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A258402

/-- `(n²+4*n+6)*n²` -/
def P4882434139232473822.Spec : Prop :=
  ∀ n, (P4882434139232473822.a n : ℤ) = A258402 n

theorem P4882434139232473822.correct : P4882434139232473822.Spec := by
  intro n
  simp only [A258402]

end A258402

/-! ## A258402.P5394110534762324703

`5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` with `a(0)=0, a(1)=11, a(2)=72, a(3)=243, a(4)=608`
-/

namespace A258402.P5394110534762324703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 11, 72, 243, 608] fun n a =>
  5 * a (n - 1) - 10 * a (n - 2) + 10 * a (n - 3) - 5 * a (n - 4) + a (n - 5)

end

end A258402.P5394110534762324703

namespace A258402

/-- `5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` -/
def P5394110534762324703.Spec : Prop :=
  ∀ n, P5394110534762324703.a n = A258402 n

end A258402

/-! ## A258402.P15957233991179024875

`(n+1)^4-Δ[C(2*n, 2)]`
-/

namespace A258402.P15957233991179024875
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 4 : ℤ) - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A258402.P15957233991179024875

namespace A258402

/-- `(n+1)^4-Δ[C(2*n, 2)]` -/
def P15957233991179024875.Spec : Prop :=
  ∀ n, P15957233991179024875.a n = A258402 n

end A258402

/-! ## A258402.P10351638410140802138

`record[(n-1)²]²-1-4*n`
-/

namespace A258402.P10351638410140802138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) ^ 2 - 1 - (4 * n : ℤ)

end

end A258402.P10351638410140802138

namespace A258402

/-- `record[(n-1)²]²-1-4*n` -/
def P10351638410140802138.Spec : Prop :=
  ∀ n, P10351638410140802138.a n = A258402 n

end A258402

/-! ## A258402.P7916303389333894398

`(n+1)²²-eq[n-1, and(n, n+1)]`
-/

namespace A258402.P7916303389333894398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land n (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((n + 1) ^ 2) ^ 2 : ℤ) - (SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℤ)) n : ℤ)

end

end A258402.P7916303389333894398

namespace A258402

/-- `(n+1)²²-eq[n-1, and(n, n+1)]` -/
def P7916303389333894398.Spec : Prop :=
  ∀ n, P7916303389333894398.a n = A258402 n

end A258402

/-! ## A258402.P9472352136253582534

`record[(1-n)^4]-(2*n+2*n+1)`
-/

namespace A258402.P9472352136253582534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (n : ℤ)) ^ 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (2 * n + (2 * n + 1) : ℤ)

end

end A258402.P9472352136253582534

namespace A258402

/-- `record[(1-n)^4]-(2*n+2*n+1)` -/
def P9472352136253582534.Spec : Prop :=
  ∀ n, P9472352136253582534.a n = A258402 n

end A258402

/-! ## A258402.P10440572393569075523

`A099761(n)+2*n²`
-/

namespace A258402.P10440572393569075523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099761 n + (2 * n ^ 2 : ℤ)

end

end A258402.P10440572393569075523

namespace A258402

/-- `A099761(n)+2*n²` -/
def P10440572393569075523.Spec : Prop :=
  ∀ n, P10440572393569075523.a n = A258402 n

end A258402

/-! ## A258402.P18192182894453249094

`A123865(n+1)-4*n`
-/

namespace A258402.P18192182894453249094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123865 (n + 1) - (4 * n : ℤ)

end

end A258402.P18192182894453249094

namespace A258402

/-- `A123865(n+1)-4*n` -/
def P18192182894453249094.Spec : Prop :=
  ∀ n, P18192182894453249094.a n = A258402 n

end A258402

/-! ## A258402.P8820711680827491711

`(n+1)²²-A016813(n)`
-/

namespace A258402.P8820711680827491711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((n + 1) ^ 2) ^ 2 : ℤ) - A016813 n

end

end A258402.P8820711680827491711

namespace A258402

/-- `(n+1)²²-A016813(n)` -/
def P8820711680827491711.Spec : Prop :=
  ∀ n, P8820711680827491711.a n = A258402 n

end A258402

/-! ## A258402.P17215586503679139992

`2*n²+A005563(n)²`
-/

namespace A258402.P17215586503679139992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n ^ 2 : ℤ) + A005563 n ^ 2

end

end A258402.P17215586503679139992

namespace A258402

/-- `2*n²+A005563(n)²` -/
def P17215586503679139992.Spec : Prop :=
  ∀ n, P17215586503679139992.a n = A258402 n

end A258402

/-! ## A258402.P17471301814297933334

`A269658(n)/(n+1)-(n+1)`
-/

namespace A258402.P17471301814297933334
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A269658 n : ℚ) / (n + 1 : ℚ) - (n + 1 : ℚ)

end

end A258402.P17471301814297933334

namespace A258402

/-- `A269658(n)/(n+1)-(n+1)` -/
def P17471301814297933334.Spec : Prop :=
  ∀ n, P17471301814297933334.a n = (A258402 n : ℚ)

end A258402

/-! ## A258402.P14776294402647458080

`(n+1)²²+2-A004767(n)`
-/

namespace A258402.P14776294402647458080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((n + 1) ^ 2) ^ 2 + 2 : ℤ) - A004767 n

end

end A258402.P14776294402647458080

namespace A258402

/-- `(n+1)²²+2-A004767(n)` -/
def P14776294402647458080.Spec : Prop :=
  ∀ n, P14776294402647458080.a n = A258402 n

end A258402

/-! ## A258402.P13116691802228875609

`(n+1)²²-A016777(n)-n`
-/

namespace A258402.P13116691802228875609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((n + 1) ^ 2) ^ 2 : ℤ) - A016777 n - (n : ℤ)

end

end A258402.P13116691802228875609

namespace A258402

/-- `(n+1)²²-A016777(n)-n` -/
def P13116691802228875609.Spec : Prop :=
  ∀ n, P13116691802228875609.a n = A258402 n

end A258402

/-! ## A258402.P11643858383238826474

`A085540(n)+A064043(n)`
-/

namespace A258402.P11643858383238826474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085540 n + A064043 n

end

end A258402.P11643858383238826474

namespace A258402

/-- `A085540(n)+A064043(n)` -/
def P11643858383238826474.Spec : Prop :=
  ∀ n, P11643858383238826474.a n = A258402 n

end A258402

/-! ## A258402.P8051516423572104073

`A258617(n)+A178392(n)`
-/

namespace A258402.P8051516423572104073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258617 n + A178392 n

end

end A258402.P8051516423572104073

namespace A258402

/-- `A258617(n)+A178392(n)` -/
def P8051516423572104073.Spec : Prop :=
  ∀ n, P8051516423572104073.a n = A258402 n

end A258402

/-! ## A258402.P658495917682951467

`A269657(n)-A016777(n)`
-/

namespace A258402.P658495917682951467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269657 n - A016777 n

end

end A258402.P658495917682951467

namespace A258402

/-- `A269657(n)-A016777(n)` -/
def P658495917682951467.Spec : Prop :=
  ∀ n, P658495917682951467.a n = A258402 n

end A258402

/-! ## A258402.P13988030565723200003

`A147296(n)+A035286(n+1)`
-/

namespace A258402.P13988030565723200003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147296 n + A035286 (n + 1)

end

end A258402.P13988030565723200003

namespace A258402

/-- `A147296(n)+A035286(n+1)` -/
def P13988030565723200003.Spec : Prop :=
  ∀ n, P13988030565723200003.a n = A258402 n

end A258402

/-! ## A258402.P10243665645625772990

`A163683(n)+A035287(n+1)`
-/

namespace A258402.P10243665645625772990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163683 n + A035287 (n + 1)

end

end A258402.P10243665645625772990

namespace A258402

/-- `A163683(n)+A035287(n+1)` -/
def P10243665645625772990.Spec : Prop :=
  ∀ n, P10243665645625772990.a n = A258402 n

end A258402

/-! ## A258402.P616546875565446677

`A300758(n)+A246767(n+1)`
-/

namespace A258402.P616546875565446677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300758 n + A246767 (n + 1)

end

end A258402.P616546875565446677

namespace A258402

/-- `A300758(n)+A246767(n+1)` -/
def P616546875565446677.Spec : Prop :=
  ∀ n, P616546875565446677.a n = A258402 n

end A258402

/-! ## A258402.P2345267457443404390

`A067998(n)+A047928(n+2)`
-/

namespace A258402.P2345267457443404390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067998 n + A047928 (n + 2)

end

end A258402.P2345267457443404390

namespace A258402

/-- `A067998(n)+A047928(n+2)` -/
def P2345267457443404390.Spec : Prop :=
  ∀ n, P2345267457443404390.a n = A258402 n

end A258402

/-!
# A258409: Greatest common divisor of all (d-1)'s, where the d's are the positive divisors of n.

The programs for A258409, there is no canonical definition to state claims against.
-/

/-! ## A258409.P5189774616130828094

`gcd(n+1, A270492(n+2))`
-/

namespace A258409.P5189774616130828094
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A270492 (n + 2))

end

end A258409.P5189774616130828094

/-! ## A258409.P8788279812977978298

`gcd(A270492(n+2), A271060(n))`
-/

namespace A258409.P8788279812977978298
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A270492 (n + 2)) (A271060 n)

end

end A258409.P8788279812977978298

/-! ## A258409.P3090739184381150888

`A289508(A290641(n+2))`
-/

namespace A258409.P3090739184381150888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289508 (A290641 (n + 2)).toNat

end

end A258409.P3090739184381150888

/-! ## A258409.P10731191705646597012

`gcd(A030787(A030790(n+1)), A089196(n+1))`
-/

namespace A258409.P10731191705646597012
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A030787 (A030790 (n + 1)).toNat) (A089196 (n + 1))

end

end A258409.P10731191705646597012

/-! ## A258409.P4348060387782744514

`gcd(A032742(2*(n+1)), A323048(A032742(n+2)))`
-/

namespace A258409.P4348060387782744514
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A032742 (2 * (n + 1))) (A323048 (A032742 (n + 2)).toNat)

end

end A258409.P4348060387782744514

/-! ## A258409.P6516154455822951169

`A260300(A004524(n)+1)^and(1, n)`
-/

namespace A258409.P6516154455822951169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260300 (A004524 n + 1).toNat ^ Nat.land 1 n

end

end A258409.P6516154455822951169

/-! ## A258409.P721837702710039238

`A187730(A066048(n+2))`
-/

namespace A258409.P721837702710039238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187730 (A066048 (n + 2)).toNat

end

end A258409.P721837702710039238

/-! ## A258409.P9368529805227207644

`A063994(A182816(A003557((n+2)²)))`
-/

namespace A258409.P9368529805227207644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063994 (A182816 (A003557 ((n + 2) ^ 2)).toNat).toNat

end

end A258409.P9368529805227207644

/-! ## A258409.P8620455540463365788

`A063994(A182816(A182816((n+2)²)))`
-/

namespace A258409.P8620455540463365788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063994 (A182816 (A182816 ((n + 2) ^ 2)).toNat).toNat

end

end A258409.P8620455540463365788

/-! ## A258409.P11272302634448423795

`A340191(A182816(A182816(n+2))²)`
-/

namespace A258409.P11272302634448423795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340191 (A182816 (A182816 (n + 2)).toNat ^ 2).toNat

end

end A258409.P11272302634448423795

/-!
# A258410: Nonnegative integers with an equal number of occurrences of all digits in bijective base-2 numeration.

The programs for A258410, the canonical program `A258410.P8287264255903413337` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A258410 has offset 1).

The definition of A258410 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A258410.P8287264255903413337

`A031448(n+2)-1`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A258410

/-- `A031448(n+2)-1` -/
def P8287264255903413337.Spec : Prop :=
  ∀ n, P8287264255903413337.a n = A258410 (n + 1)

theorem P8287264255903413337.correct : P8287264255903413337.Spec := by
  intro n
  simp only [A258410, Nat.add_sub_cancel]

end A258410

/-! ## A258410.P14829006342983119918

`∑[abs(Δ[A031448(n+1)])]`
-/

namespace A258410.P14829006342983119918
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031448 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A258410.P14829006342983119918

namespace A258410

/-- `∑[abs(Δ[A031448(n+1)])]` -/
def P14829006342983119918.Spec : Prop :=
  ∀ n, P14829006342983119918.a n = A258410 (n + 1)

end A258410

/-! ## A258410.P17185659569882627229

`∩[A031461(n+2), A143903(n+2)]-1`
-/

namespace A258410.P17185659569882627229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031461 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143903 (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A258410.P17185659569882627229

namespace A258410

/-- `∩[A031461(n+2), A143903(n+2)]-1` -/
def P17185659569882627229.Spec : Prop :=
  ∀ n, P17185659569882627229.a n = A258410 (n + 1)

end A258410

/-! ## A258410.P4191329913937174057

`∩[A031461(n+2)-1, A053738(n+2)]`
-/

namespace A258410.P4191329913937174057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031461 (n + 2) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053738 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A258410.P4191329913937174057

namespace A258410

/-- `∩[A031461(n+2)-1, A053738(n+2)]` -/
def P4191329913937174057.Spec : Prop :=
  ∀ n, (P4191329913937174057.a n : ℤ) = A258410 (n + 1)

end A258410

/-! ## A258410.P3521441407850185751

`A037861(A031448(n+1))+A031448(n+2)`
-/

namespace A258410.P3521441407850185751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037861 (A031448 (n + 1)).toNat + A031448 (n + 2)

end

end A258410.P3521441407850185751

namespace A258410

/-- `A037861(A031448(n+1))+A031448(n+2)` -/
def P3521441407850185751.Spec : Prop :=
  ∀ n, P3521441407850185751.a n = A258410 (n + 1)

end A258410

/-! ## A258410.P13165584677886048660

`A023443(A031448(n+2))`
-/

namespace A258410.P13165584677886048660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A031448 (n + 2)).toNat

end

end A258410.P13165584677886048660

namespace A258410

/-- `A023443(A031448(n+2))` -/
def P13165584677886048660.Spec : Prop :=
  ∀ n, P13165584677886048660.a n = A258410 (n + 1)

end A258410

/-! ## A258410.P1051452491442187772

`eq[A000007(n), A274575(n)]`
-/

namespace A258410.P1051452491442187772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274575 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A258410.P1051452491442187772

namespace A258410

/-- `eq[A000007(n), A274575(n)]` -/
def P1051452491442187772.Spec : Prop :=
  ∀ n, (P1051452491442187772.a n : ℤ) = A258410 (n + 1)

end A258410

/-! ## A258410.P12614534869673102571

`eq[A000038(n), A274575(n)]`
-/

namespace A258410.P12614534869673102571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274575 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A258410.P12614534869673102571

namespace A258410

/-- `eq[A000038(n), A274575(n)]` -/
def P12614534869673102571.Spec : Prop :=
  ∀ n, (P12614534869673102571.a n : ℤ) = A258410 (n + 1)

end A258410

/-! ## A258410.P12570997120973299760

`eq[A036987(n), A274575(n)]`
-/

namespace A258410.P12570997120973299760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036987 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274575 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A258410.P12570997120973299760

namespace A258410

/-- `eq[A036987(n), A274575(n)]` -/
def P12570997120973299760.Spec : Prop :=
  ∀ n, (P12570997120973299760.a n : ℤ) = A258410 (n + 1)

end A258410

/-! ## A258410.P10991037742301612215

`eq[A099894(n), A274575(n)]`
-/

namespace A258410.P10991037742301612215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099894 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274575 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A258410.P10991037742301612215

namespace A258410

/-- `eq[A099894(n), A274575(n)]` -/
def P10991037742301612215.Spec : Prop :=
  ∀ n, (P10991037742301612215.a n : ℤ) = A258410 (n + 1)

end A258410

/-! ## A258410.P6888444362857658505

`eq[A127802(n), A274575(n)]`
-/

namespace A258410.P6888444362857658505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127802 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274575 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A258410.P6888444362857658505

namespace A258410

/-- `eq[A127802(n), A274575(n)]` -/
def P6888444362857658505.Spec : Prop :=
  ∀ n, (P6888444362857658505.a n : ℤ) = A258410 (n + 1)

end A258410

/-! ## A258410.P5199645832118431539

`eq[A130706(n), A274575(n)]`
-/

namespace A258410.P5199645832118431539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130706 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274575 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A258410.P5199645832118431539

namespace A258410

/-- `eq[A130706(n), A274575(n)]` -/
def P5199645832118431539.Spec : Prop :=
  ∀ n, (P5199645832118431539.a n : ℤ) = A258410 (n + 1)

end A258410

/-! ## A258410.P3290349625518035935

`eq[A130779(n), A274575(n)]`
-/

namespace A258410.P3290349625518035935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130779 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274575 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A258410.P3290349625518035935

namespace A258410

/-- `eq[A130779(n), A274575(n)]` -/
def P3290349625518035935.Spec : Prop :=
  ∀ n, (P3290349625518035935.a n : ℤ) = A258410 (n + 1)

end A258410

/-! ## A258410.P17043256178117940618

`eq[A166926(n), A274575(n)]`
-/

namespace A258410.P17043256178117940618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166926 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274575 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A258410.P17043256178117940618

namespace A258410

/-- `eq[A166926(n), A274575(n)]` -/
def P17043256178117940618.Spec : Prop :=
  ∀ n, (P17043256178117940618.a n : ℤ) = A258410 (n + 1)

end A258410

/-! ## A258410.P11923576722768675025

`eq[A167876(n), A274575(n)]`
-/

namespace A258410.P11923576722768675025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167876 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274575 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A258410.P11923576722768675025

namespace A258410

/-- `eq[A167876(n), A274575(n)]` -/
def P11923576722768675025.Spec : Prop :=
  ∀ n, (P11923576722768675025.a n : ℤ) = A258410 (n + 1)

end A258410

/-! ## A258410.P12971022842355206258

`eq[A167891(n), A274575(n)]`
-/

namespace A258410.P12971022842355206258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167891 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274575 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A258410.P12971022842355206258

namespace A258410

/-- `eq[A167891(n), A274575(n)]` -/
def P12971022842355206258.Spec : Prop :=
  ∀ n, (P12971022842355206258.a n : ℤ) = A258410 (n + 1)

end A258410

/-! ## A258410.P7829682042105564788

`eq[A169585(n), A274575(n)]`
-/

namespace A258410.P7829682042105564788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169585 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274575 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A258410.P7829682042105564788

namespace A258410

/-- `eq[A169585(n), A274575(n)]` -/
def P7829682042105564788.Spec : Prop :=
  ∀ n, (P7829682042105564788.a n : ℤ) = A258410 (n + 1)

end A258410

/-! ## A258410.P12145261243912334576

`eq[A274575(n), A329670(n)]`
-/

namespace A258410.P12145261243912334576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274575 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329670 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A258410.P12145261243912334576

namespace A258410

/-- `eq[A274575(n), A329670(n)]` -/
def P12145261243912334576.Spec : Prop :=
  ∀ n, (P12145261243912334576.a n : ℤ) = A258410 (n + 1)

end A258410

/-! ## A258410.P16022049733252588775

`eq[A274575(n), A374016(n)]`
-/

namespace A258410.P16022049733252588775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274575 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374016 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A258410.P16022049733252588775

namespace A258410

/-- `eq[A274575(n), A374016(n)]` -/
def P16022049733252588775.Spec : Prop :=
  ∀ n, (P16022049733252588775.a n : ℤ) = A258410 (n + 1)

end A258410

/-! ## A258410.P4489478432407924515

`eq[1, A145037(A028310(n)+1)]`
-/

namespace A258410.P4489478432407924515
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145037 (A028310 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A258410.P4489478432407924515

namespace A258410

/-- `eq[1, A145037(A028310(n)+1)]` -/
def P4489478432407924515.Spec : Prop :=
  ∀ n, (P4489478432407924515.a n : ℤ) = A258410 (n + 1)

end A258410

/-!
# A258415: Array A read by upward antidiagonals in which the entry in row n and column k is defined by A(n,k) = (2 + 2^(n-1)*(6*k - 3 + 2*(-1)^n))/3, n,k >= 1.

The programs for A258415, the canonical program `A258415.P4473213064253829696` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A258415 has offset 1).

The definition of A258415 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A258415.P16008144262453695375

`ceil(A257499(n+1)/2)`
-/

namespace A258415.P16008144262453695375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A257499 (n + 1) : ℚ) / 2⌉

end

end A258415.P16008144262453695375

namespace A258415

/-- `ceil(A257499(n+1)/2)` -/
def P16008144262453695375.Spec : Prop :=
  ∀ n, P16008144262453695375.a n = A258415 (n + 1)

end A258415

/-! ## A258415.P3343760396709754202

`round(A257499(-xor(n, -1))/2)`
-/

namespace A258415.P3343760396709754202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A257499 (-Int.xor (n : ℤ) (-1)).toNat : ℚ) / 2)

end

end A258415.P3343760396709754202

namespace A258415

/-- `round(A257499(-xor(n, -1))/2)` -/
def P3343760396709754202.Spec : Prop :=
  ∀ n, P3343760396709754202.a n = A258415 (n + 1)

end A258415

/-! ## A258415.P4473213064253829696

`A151575(A004736(n+1))+A054582(n)`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A258415

/-- `A151575(A004736(n+1))+A054582(n)` -/
def P4473213064253829696.Spec : Prop :=
  ∀ n, P4473213064253829696.a n = A258415 (n + 1)

theorem P4473213064253829696.correct : P4473213064253829696.Spec := by
  intro n
  simp only [A258415, Nat.add_sub_cancel]

end A258415

/-! ## A258415.P16306014390419341109

`(A257499(n+1)+1)/A000040(A000041(gcd(n, n+1)))`
-/

namespace A258415.P16306014390419341109
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A257499 (n + 1) + 1 : ℚ) / (A000040 (A000041 (Nat.gcd n (n + 1))).toNat : ℚ)

end

end A258415.P16306014390419341109

namespace A258415

/-- `(A257499(n+1)+1)/A000040(A000041(gcd(n, n+1)))` -/
def P16306014390419341109.Spec : Prop :=
  ∀ n, P16306014390419341109.a n = (A258415 (n + 1) : ℚ)

end A258415

/-! ## A258415.P18385338133944727330

`(A257499(n+1)-A008683(A006450(n+1)))/2`
-/

namespace A258415.P18385338133944727330
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A257499 (n + 1) - A008683 (A006450 (n + 1)).toNat : ℚ) / 2

end

end A258415.P18385338133944727330

namespace A258415

/-- `(A257499(n+1)-A008683(A006450(n+1)))/2` -/
def P18385338133944727330.Spec : Prop :=
  ∀ n, P18385338133944727330.a n = (A258415 (n + 1) : ℚ)

end A258415

/-! ## A258415.P6638503498028324868

`A014682(A257499(n+1)+1)`
-/

namespace A258415.P6638503498028324868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A257499 (n + 1) + 1).toNat

end

end A258415.P6638503498028324868

namespace A258415

/-- `A014682(A257499(n+1)+1)` -/
def P6638503498028324868.Spec : Prop :=
  ∀ n, P6638503498028324868.a n = A258415 (n + 1)

end A258415

/-! ## A258415.P13912514850673320026

`A273943(A257499(n+1)+1)`
-/

namespace A258415.P13912514850673320026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A257499 (n + 1) + 1).toNat

end

end A258415.P13912514850673320026

namespace A258415

/-- `A273943(A257499(n+1)+1)` -/
def P13912514850673320026.Spec : Prop :=
  ∀ n, P13912514850673320026.a n = A258415 (n + 1)

end A258415

/-! ## A258415.P8853104880618990280

`A302042(A257499(n+1)+1)`
-/

namespace A258415.P8853104880618990280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302042 (A257499 (n + 1) + 1).toNat

end

end A258415.P8853104880618990280

namespace A258415

/-- `A302042(A257499(n+1)+1)` -/
def P8853104880618990280.Spec : Prop :=
  ∀ n, P8853104880618990280.a n = A258415 (n + 1)

end A258415

/-! ## A258415.P18082420284944787484

`A000217(A257499(n+1)+1)%(A257499(n+1)+1)`
-/

namespace A258415.P18082420284944787484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000217 (A257499 (n + 1) + 1).toNat) (A257499 (n + 1) + 1)

end

end A258415.P18082420284944787484

namespace A258415

/-- `A000217(A257499(n+1)+1)%(A257499(n+1)+1)` -/
def P18082420284944787484.Spec : Prop :=
  ∀ n, P18082420284944787484.a n = A258415 (n + 1)

end A258415

/-!
# A258416: Number of partitions of the 2-dimensional hypercube resulting from a sequence of n bisections, each of which splits any part perpendicular to any of the axes, such that each axis is used at least once.

The programs for A258416, there is no canonical definition to state claims against.
-/

/-! ## A258416.P10143378702285894434

`A255982(∑[n+2]+3)`
-/

namespace A258416.P10143378702285894434
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255982 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A258416.P10143378702285894434

/-!
# A258417: Number of partitions of the 3-dimensional hypercube resulting from a sequence of n bisections, each of which splits any part perpendicular to any of the axes, such that each axis is used at least once.

The programs for A258417, there is no canonical definition to state claims against.
-/

/-! ## A258417.P3325376274672719063

`A255982(A167614(n+2))`
-/

namespace A258417.P3325376274672719063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255982 (A167614 (n + 2)).toNat

end

end A258417.P3325376274672719063

/-! ## A258417.P5313037356352122046

`A255982(A052905(n)+8)`
-/

namespace A258417.P5313037356352122046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255982 (A052905 n + 8).toNat

end

end A258417.P5313037356352122046

/-! ## A258417.P2338253727587267309

`A255982(A055999(n)+9)`
-/

namespace A258417.P2338253727587267309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255982 (A055999 n + 9).toNat

end

end A258417.P2338253727587267309

/-! ## A258417.P8325465631716974880

`A255982(eq[3, A002262(n)])`
-/

namespace A258417.P8325465631716974880
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255982 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A258417.P8325465631716974880

/-! ## A258417.P3982152083591978868

`A255982(eq[4, A002260(n+1)])`
-/

namespace A258417.P3982152083591978868
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255982 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A258417.P3982152083591978868

/-!
# A258418: Number of partitions of the 4-dimensional hypercube resulting from a sequence of n bisections, each of which splits any part perpendicular to any of the axes, such that each axis is used at least once.

The programs for A258418, there is no canonical definition to state claims against.
-/

/-! ## A258418.P16423358354045832878

`A255982(A056000(n)+14)`
-/

namespace A258418.P16423358354045832878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255982 (A056000 n + 14).toNat

end

end A258418.P16423358354045832878

/-! ## A258418.P230068492348597739

`A255982(eq[4, A002262(n)])`
-/

namespace A258418.P230068492348597739
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255982 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A258418.P230068492348597739

/-! ## A258418.P6059052938556420443

`A255982(A027379(n+2)+7)`
-/

namespace A258418.P6059052938556420443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255982 (A027379 (n + 2) + 7).toNat

end

end A258418.P6059052938556420443

/-! ## A258418.P1825348480241943665

`A255982(eq[4, A144328(n+1)])`
-/

namespace A258418.P1825348480241943665
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255982 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A258418.P1825348480241943665

/-! ## A258418.P13454338661800725743

`A255982(eq[5, A002260(n+1)])`
-/

namespace A258418.P13454338661800725743
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255982 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A258418.P13454338661800725743

/-!
# A258419: Number of partitions of the 5-dimensional hypercube resulting from a sequence of n bisections, each of which splits any part perpendicular to any of the axes, such that each axis is used at least once.

The programs for A258419, there is no canonical definition to state claims against.
-/

/-! ## A258419.P12244500938032628752

`A255982(eq[5, A002262(n)])`
-/

namespace A258419.P12244500938032628752
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255982 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A258419.P12244500938032628752

/-! ## A258419.P16098781771776124772

`A255982(A246172(n+1)+19)`
-/

namespace A258419.P16098781771776124772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255982 (A246172 (n + 1) + 19).toNat

end

end A258419.P16098781771776124772

/-! ## A258419.P5392935969468594090

`A255982(eq[5, A144328(n+1)])`
-/

namespace A258419.P5392935969468594090
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255982 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A258419.P5392935969468594090

/-! ## A258419.P11327945793380133863

`A255982(eq[6, A002260(n+1)])`
-/

namespace A258419.P11327945793380133863
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255982 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A258419.P11327945793380133863

/-! ## A258419.P11425307595376399055

`A255982(eq[5, A133233(n)])`
-/

namespace A258419.P11425307595376399055
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133233 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255982 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A258419.P11425307595376399055

/-!
# A258420: Number of partitions of the 6-dimensional hypercube resulting from a sequence of n bisections, each of which splits any part perpendicular to any of the axes, such that each axis is used at least once.

The programs for A258420, there is no canonical definition to state claims against.
-/

/-! ## A258420.P11005214272027756609

`A255982(eq[6, A002262(n)])`
-/

namespace A258420.P11005214272027756609
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255982 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A258420.P11005214272027756609

/-! ## A258420.P6623149837056499611

`A255982(eq[6, A144328(n+1)])`
-/

namespace A258420.P6623149837056499611
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255982 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A258420.P6623149837056499611

/-! ## A258420.P10170182327959910711

`A255982(eq[7, A002260(n+1)])`
-/

namespace A258420.P10170182327959910711
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255982 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A258420.P10170182327959910711

/-! ## A258420.P5515282187339279861

`A255982(eq[7, A134868(n+1)])`
-/

namespace A258420.P5515282187339279861
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134868 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255982 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A258420.P5515282187339279861

/-! ## A258420.P13537607882651723396

`A255982(eq[8, A131818(n+2)])`
-/

namespace A258420.P13537607882651723396
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255982 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A258420.P13537607882651723396

/-!
# A258421: Number of partitions of the 7-dimensional hypercube resulting from a sequence of n bisections, each of which splits any part perpendicular to any of the axes, such that each axis is used at least once.

The programs for A258421, there is no canonical definition to state claims against.
-/

/-! ## A258421.P17294415954810721098

`A255982(eq[7, A002262(n)])`
-/

namespace A258421.P17294415954810721098
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255982 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A258421.P17294415954810721098

/-! ## A258421.P12833815312110457410

`A255982(eq[8, A002260(n+1)])`
-/

namespace A258421.P12833815312110457410
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255982 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A258421.P12833815312110457410

/-!
# A258422: Number of partitions of the 8-dimensional hypercube resulting from a sequence of n bisections, each of which splits any part perpendicular to any of the axes, such that each axis is used at least once.

The programs for A258422, there is no canonical definition to state claims against.
-/

/-! ## A258422.P2248049122560358227

`A255982(eq[8, A002262(n)])`
-/

namespace A258422.P2248049122560358227
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255982 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A258422.P2248049122560358227

/-!
# A258425: Total number of partitions of all hypercubes resulting from a sequence of n bisections, each of which splits any part perpendicular to any of the axes, such that each dimension is used at least once.

The programs for A258425, there is no canonical definition to state claims against.
-/

/-! ## A258425.P8780873130838962863

`A220662(∑[char[n!]]^∑[n])`
-/

namespace A258425.P8780873130838962863
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220662 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ (∑ j ∈ Finset.range (n + 1), f3 j))

end

end A258425.P8780873130838962863

/-!
# A258426: Number of partitions of the n-dimensional hypercube resulting from a sequence of 2n bisections, each of which splits any part perpendicular to any of the axes, such that each axis is used at least once.

The programs for A258426, there is no canonical definition to state claims against.
-/

/-! ## A258426.P13116186906682377310

`A255982(∑[4*n])`
-/

namespace A258426.P13116186906682377310
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255982 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A258426.P13116186906682377310

/-! ## A258426.P11778868470304657253

`record[A255982(∑[A071045(n)])]`
-/

namespace A258426.P11778868470304657253
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071045 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255982 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A258426.P11778868470304657253

/-! ## A258426.P3547342143069933584

`record[A003982(n)*A255982(n)]`
-/

namespace A258426.P3547342143069933584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A255982 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A258426.P3547342143069933584

/-! ## A258426.P9709281113362788393

`lcm(A008620(n), A255982(A046092(n)))`
-/

namespace A258426.P9709281113362788393
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A008620 n) (A255982 (A046092 n).toNat)

end

end A258426.P9709281113362788393

/-! ## A258426.P16468519201661857255

`or(A000007(n), A255982(A046092(n)))`
-/

namespace A258426.P16468519201661857255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A255982 (A046092 n).toNat)

end

end A258426.P16468519201661857255

/-!
# A258427: Number T(n,k) of redundant binary trees with n inner nodes of exactly k different dimensions used for the partition of the k-dimensional hypercube by hierarchical bisection; triangle T(n,k), n>=3, 2<=k<=n-1, read by rows.

The programs for A258427, there is no canonical definition to state claims against.
-/

/-! ## A258427.P11919615555540260673

`A002322(∑[A051286(2*(n+1))])`
-/

namespace A258427.P11919615555540260673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051286 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002322 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A258427.P11919615555540260673

/-!
# A258430: Primes in A088580.

The programs for A258430, the canonical program `A258430.P5870849844131350250` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A258430 has offset 1).

The definition of A258430 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A258430.P5870849844131350250

`p?[A000203(n+1)+1]`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A258430

/-- `p?[A000203(n+1)+1]` -/
def P5870849844131350250.Spec : Prop :=
  ∀ n, P5870849844131350250.a n = A258430 (n + 1)

theorem P5870849844131350250.correct : P5870849844131350250.Spec := by
  intro n
  simp only [A258430, Nat.add_sub_cancel]

end A258430

/-! ## A258430.P9520349943645812954

`A336924(A065512(2*n+1-n))`
-/

namespace A258430.P9520349943645812954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336924 (A065512 (2 * n + 1 - n)).toNat

end

end A258430.P9520349943645812954

namespace A258430

/-- `A336924(A065512(2*n+1-n))` -/
def P9520349943645812954.Spec : Prop :=
  ∀ n, P9520349943645812954.a n = A258430 (n + 1)

end A258430

/-! ## A258430.P11964261980934464891

`A000203(eq[2, A000005(A000203(n+1)+1)]+1)+1`
-/

namespace A258430.P11964261980934464891
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A000203 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1) + 1

end

end A258430.P11964261980934464891

namespace A258430

/-- `A000203(eq[2, A000005(A000203(n+1)+1)]+1)+1` -/
def P11964261980934464891.Spec : Prop :=
  ∀ n, P11964261980934464891.a n = A258430 (n + 1)

end A258430

/-! ## A258430.P7918527324684969589

`p?[A155085(n+1)-n]`
-/

namespace A258430.P7918527324684969589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155085 (n + 1) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A258430.P7918527324684969589

namespace A258430

/-- `p?[A155085(n+1)-n]` -/
def P7918527324684969589.Spec : Prop :=
  ∀ n, P7918527324684969589.a n = A258430 (n + 1)

end A258430

/-! ## A258430.P13235993057155549238

`A067792(A065512(n+1))`
-/

namespace A258430.P13235993057155549238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067792 (A065512 (n + 1)).toNat

end

end A258430.P13235993057155549238

namespace A258430

/-- `A067792(A065512(n+1))` -/
def P13235993057155549238.Spec : Prop :=
  ∀ n, P13235993057155549238.a n = A258430 (n + 1)

end A258430

/-! ## A258430.P15334536522062738538

`A067792(eq[2, A296092(n+1)]+1)`
-/

namespace A258430.P15334536522062738538
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296092 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067792 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A258430.P15334536522062738538

namespace A258430

/-- `A067792(eq[2, A296092(n+1)]+1)` -/
def P15334536522062738538.Spec : Prop :=
  ∀ n, P15334536522062738538.a n = A258430 (n + 1)

end A258430

/-! ## A258430.P812083035564186948

`p?[∑{d}[n, #]+1]`
-/

namespace A258430.P812083035564186948
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), d + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A258430.P812083035564186948

namespace A258430

/-- `p?[∑{d}[n, #]+1]` -/
def P812083035564186948.Spec : Prop :=
  ∀ n, (P812083035564186948.a n : ℤ) = A258430 (n + 1)

end A258430

/-! ## A258430.P14595077210515179329

`p?[xor(1, ∑{d}[n, #])]`
-/

namespace A258430.P14595077210515179329
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (∑ d ∈ Nat.divisors (f2 n), d)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A258430.P14595077210515179329

namespace A258430

/-- `p?[xor(1, ∑{d}[n, #])]` -/
def P14595077210515179329.Spec : Prop :=
  ∀ n, (P14595077210515179329.a n : ℤ) = A258430 (n + 1)

end A258430

/-! ## A258430.P11449525213481186589

`p?[A088580(n+1)]`
-/

namespace A258430.P11449525213481186589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088580 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A258430.P11449525213481186589

namespace A258430

/-- `p?[A088580(n+1)]` -/
def P11449525213481186589.Spec : Prop :=
  ∀ n, P11449525213481186589.a n = A258430 (n + 1)

end A258430

/-! ## A258430.P3845184404456080719

`p?[A039653(n+1)+2]`
-/

namespace A258430.P3845184404456080719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039653 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A258430.P3845184404456080719

namespace A258430

/-- `p?[A039653(n+1)+2]` -/
def P3845184404456080719.Spec : Prop :=
  ∀ n, P3845184404456080719.a n = A258430 (n + 1)

end A258430

/-! ## A258430.P11723704802105121226

`p?[abs(A143348(n+1))+1]`
-/

namespace A258430.P11723704802105121226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A143348 (n + 1)| + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A258430.P11723704802105121226

namespace A258430

/-- `p?[abs(A143348(n+1))+1]` -/
def P11723704802105121226.Spec : Prop :=
  ∀ n, P11723704802105121226.a n = A258430 (n + 1)

end A258430

/-! ## A258430.P8581096555123942853

`p?[∑[A340793(n+1)]+1]`
-/

namespace A258430.P8581096555123942853
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340793 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A258430.P8581096555123942853

namespace A258430

/-- `p?[∑[A340793(n+1)]+1]` -/
def P8581096555123942853.Spec : Prop :=
  ∀ n, P8581096555123942853.a n = A258430 (n + 1)

end A258430

/-! ## A258430.P2937814159512834055

`p?[A245092(2*n+1)+1]`
-/

namespace A258430.P2937814159512834055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245092 (2 * n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A258430.P2937814159512834055

namespace A258430

/-- `p?[A245092(2*n+1)+1]` -/
def P2937814159512834055.Spec : Prop :=
  ∀ n, P2937814159512834055.a n = A258430 (n + 1)

end A258430

/-! ## A258430.P18148174234061860235

`p?[A001065(n+1)+2+n]`
-/

namespace A258430.P18148174234061860235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 1) + 2 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A258430.P18148174234061860235

namespace A258430

/-- `p?[A001065(n+1)+2+n]` -/
def P18148174234061860235.Spec : Prop :=
  ∀ n, P18148174234061860235.a n = A258430 (n + 1)

end A258430

/-! ## A258430.P374430377695068833

`filter[A088580(n+1), A010051(#)]`
-/

namespace A258430.P374430377695068833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088580 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A258430.P374430377695068833

namespace A258430

/-- `filter[A088580(n+1), A010051(#)]` -/
def P374430377695068833.Spec : Prop :=
  ∀ n, P374430377695068833.a n = A258430 (n + 1)

end A258430

/-! ## A258430.P13469341705051615847

`filter[A088580(n+1), A323152(#)]`
-/

namespace A258430.P13469341705051615847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088580 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323152 (f1 j).toNat = 1) n)

end

end A258430.P13469341705051615847

namespace A258430

/-- `filter[A088580(n+1), A323152(#)]` -/
def P13469341705051615847.Spec : Prop :=
  ∀ n, P13469341705051615847.a n = A258430 (n + 1)

end A258430

/-! ## A258430.P1209458456026709505

`filter[A088580(n+1), A323153(#)]`
-/

namespace A258430.P1209458456026709505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088580 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323153 (f1 j).toNat = 1) n)

end

end A258430.P1209458456026709505

namespace A258430

/-- `filter[A088580(n+1), A323153(#)]` -/
def P1209458456026709505.Spec : Prop :=
  ∀ n, P1209458456026709505.a n = A258430 (n + 1)

end A258430

/-!
# A258431: Sum over all peaks of Dyck paths of semilength n of the arithmetic mean of the x and y coordinates.

The programs for A258431, the canonical program `A258431.P10302209761239524539` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A258431 has offset 0).

The definition of A258431 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A258431.P10302209761239524539

`((8*n-10)*a(n-1)-(16*n-24)*a(n-2))/(n-1)` with `a(0)=0, a(1)=1, a(2)=5`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A258431

/-- `((8*n-10)*a(n-1)-(16*n-24)*a(n-2))/(n-1)` -/
def P10302209761239524539.Spec : Prop :=
  ∀ n, P10302209761239524539.a n = (A258431 n : ℚ)

end A258431

/-! ## A258431.P6348960755696437545

`A191386(2*n)`
-/

namespace A258431.P6348960755696437545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191386 (2 * n)

end

end A258431.P6348960755696437545

namespace A258431

/-- `A191386(2*n)` -/
def P6348960755696437545.Spec : Prop :=
  ∀ n, P6348960755696437545.a n = A258431 n

end A258431

/-! ## A258431.P2297740893084314840

`A191386(Δ[n²])/2`
-/

namespace A258431.P2297740893084314840
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A191386 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 2

end

end A258431.P2297740893084314840

namespace A258431

/-- `A191386(Δ[n²])/2` -/
def P2297740893084314840.Spec : Prop :=
  ∀ n, P2297740893084314840.a n = (A258431 n : ℚ)

end A258431

/-! ## A258431.P6454577403563068428

`A362596(n)+A276666(n)`
-/

namespace A258431.P6454577403563068428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362596 n + A276666 n

end

end A258431.P6454577403563068428

namespace A258431

/-- `A362596(n)+A276666(n)` -/
def P6454577403563068428.Spec : Prop :=
  ∀ n, P6454577403563068428.a n = A258431 n

end A258431

/-! ## A258431.P12664222679859891814

`record[A191386(A022998(n)-n)]`
-/

namespace A258431.P12664222679859891814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191386 (A022998 n - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A258431.P12664222679859891814

namespace A258431

/-- `record[A191386(A022998(n)-n)]` -/
def P12664222679859891814.Spec : Prop :=
  ∀ n, P12664222679859891814.a n = A258431 n

end A258431

/-! ## A258431.P15792539433582566593

`record[A191386(n)/A152271(n)]`
-/

namespace A258431.P15792539433582566593
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A191386 n : ℚ) / (A152271 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A258431.P15792539433582566593

namespace A258431

/-- `record[A191386(n)/A152271(n)]` -/
def P15792539433582566593.Spec : Prop :=
  ∀ n, P15792539433582566593.a n = (A258431 n : ℚ)

end A258431

/-! ## A258431.P13922560963861121023

`A191524(2*n)-A191787(2*n)`
-/

namespace A258431.P13922560963861121023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191524 (2 * n) - A191787 (2 * n)

end

end A258431.P13922560963861121023

namespace A258431

/-- `A191524(2*n)-A191787(2*n)` -/
def P13922560963861121023.Spec : Prop :=
  ∀ n, P13922560963861121023.a n = A258431 n

end A258431

/-! ## A258431.P11860966862061041295

`A191520(2*n)+A307768(2*n)/2`
-/

namespace A258431.P11860966862061041295
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A191520 (2 * n) : ℚ) + (A307768 (2 * n) : ℚ) / 2

end

end A258431.P11860966862061041295

namespace A258431

/-- `A191520(2*n)+A307768(2*n)/2` -/
def P11860966862061041295.Spec : Prop :=
  ∀ n, P11860966862061041295.a n = (A258431 n : ℚ)

end A258431

/-! ## A258431.P10422646709926232636

`A191520(2*n)+A191524(2*n)-A191522(2*n)`
-/

namespace A258431.P10422646709926232636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191520 (2 * n) + (A191524 (2 * n) - A191522 (2 * n))

end

end A258431.P10422646709926232636

namespace A258431

/-- `A191520(2*n)+A191524(2*n)-A191522(2*n)` -/
def P10422646709926232636.Spec : Prop :=
  ∀ n, P10422646709926232636.a n = A258431 n

end A258431

/-! ## A258431.P17534857905514922812

`A191527(2*n)-(A191787(2*n)+A191309(2*n))`
-/

namespace A258431.P17534857905514922812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191527 (2 * n) - (A191787 (2 * n) + A191309 (2 * n))

end

end A258431.P17534857905514922812

namespace A258431

/-- `A191527(2*n)-(A191787(2*n)+A191309(2*n))` -/
def P17534857905514922812.Spec : Prop :=
  ∀ n, P17534857905514922812.a n = A258431 n

end A258431

/-! ## A258431.P8276538868385418365

`record[A185251(n+1)/2-A185251(n)]`
-/

namespace A258431.P8276538868385418365
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A185251 (n + 1) : ℚ) / 2 - (A185251 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A258431.P8276538868385418365

namespace A258431

/-- `record[A185251(n+1)/2-A185251(n)]` -/
def P8276538868385418365.Spec : Prop :=
  ∀ n, P8276538868385418365.a n = (A258431 n : ℚ)

end A258431

/-! ## A258431.P16894081993975800815

`(A131352(2*n)-A164990(2*n+1))/2`
-/

namespace A258431.P16894081993975800815
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A131352 (2 * n) - A164990 (2 * n + 1) : ℚ) / 2

end

end A258431.P16894081993975800815

namespace A258431

/-- `(A131352(2*n)-A164990(2*n+1))/2` -/
def P16894081993975800815.Spec : Prop :=
  ∀ n, P16894081993975800815.a n = (A258431 n : ℚ)

end A258431

/-!
# A258432: Smallest number m such that A062234(m) = A062234(m-1+k) for k = 1..A258383(n).

The programs for A258432, the canonical program `A258432.P15631992266083377163` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A258432 has offset 1).

The definition of A258432 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A258432.P15631992266083377163

`comp[A257762(n+1)]+1`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A258432

/-- `comp[A257762(n+1)]+1` -/
def P15631992266083377163.Spec : Prop :=
  ∀ n, (P15631992266083377163.a n : ℤ) = A258432 (n + 1)

theorem P15631992266083377163.correct : P15631992266083377163.Spec := by
  intro n
  simp only [A258432, Nat.add_sub_cancel]

end A258432

/-! ## A258432.P1925736009495065899

`A258383(n)+a(n-1)` with `a(0)=1`
-/

namespace A258432.P1925736009495065899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A258383 n + a (n - 1)

end

end A258432.P1925736009495065899

namespace A258432

/-- `A258383(n)+a(n-1)` -/
def P1925736009495065899.Spec : Prop :=
  ∀ n, P1925736009495065899.a n = A258432 (n + 1)

end A258432

/-! ## A258432.P16323206235722468518

`∑[A258383(A028310(n))]-1`
-/

namespace A258432.P16323206235722468518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258383 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A258432.P16323206235722468518

namespace A258432

/-- `∑[A258383(A028310(n))]-1` -/
def P16323206235722468518.Spec : Prop :=
  ∀ n, P16323206235722468518.a n = A258432 (n + 1)

end A258432

/-! ## A258432.P2584818085207544950

`∑[A258383(n+1)]+1-A258383(n+1)`
-/

namespace A258432.P2584818085207544950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258383 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A258383 (n + 1))

end

end A258432.P2584818085207544950

namespace A258432

/-- `∑[A258383(n+1)]+1-A258383(n+1)` -/
def P2584818085207544950.Spec : Prop :=
  ∀ n, P2584818085207544950.a n = A258432 (n + 1)

end A258432

/-! ## A258432.P18358534239670326040

`∑[A258383(A028310(n))/A054977(n)]`
-/

namespace A258432.P18358534239670326040
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A258383 (A028310 n).toNat : ℚ) / (A054977 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A258432.P18358534239670326040

namespace A258432

/-- `∑[A258383(A028310(n))/A054977(n)]` -/
def P18358534239670326040.Spec : Prop :=
  ∀ n, P18358534239670326040.a n = (A258432 (n + 1) : ℚ)

end A258432

/-! ## A258432.P4491265508263915281

`A020725(∑[A258383(n+1)])-A258383(n+1)`
-/

namespace A258432.P4491265508263915281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258383 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - A258383 (n + 1)

end

end A258432.P4491265508263915281

namespace A258432

/-- `A020725(∑[A258383(n+1)])-A258383(n+1)` -/
def P4491265508263915281.Spec : Prop :=
  ∀ n, P4491265508263915281.a n = A258432 (n + 1)

end A258432

/-!
# A258433: Primes with repdigit indices (in decimal).

The programs for A258433, there is no canonical definition to state claims against.
-/

/-! ## A258433.P5523315411673032235

`A001748(A010785(n+1))/3`
-/

namespace A258433.P5523315411673032235
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001748 (A010785 (n + 1)).toNat : ℚ) / 3

end

end A258433.P5523315411673032235

/-! ## A258433.P15286608275590817322

`A000040(∑[A027828(n)])`
-/

namespace A258433.P15286608275590817322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027828 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A258433.P15286608275590817322

/-! ## A258433.P811228876770155795

`A000040(Δ[A277209(n)])`
-/

namespace A258433.P811228876770155795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277209 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (f1 (n + 1) - f1 n).toNat

end

end A258433.P811228876770155795

/-! ## A258433.P14991624798811755883

`A000040(A010785(n+1))`
-/

namespace A258433.P14991624798811755883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A010785 (n + 1)).toNat

end

end A258433.P14991624798811755883

/-! ## A258433.P8259030990537373043

`A000040(A344550(n+2))`
-/

namespace A258433.P8259030990537373043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A344550 (n + 2)).toNat

end

end A258433.P8259030990537373043

/-!
# A258434: n^2 - phi(n).

The programs for A258434, the canonical program `A258434.P14606790759469898675` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A258434 has offset 1).

The definition of A258434 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A258434.P8613743208690503925

`∑[2*n]+1-(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]+n`
-/

namespace A258434.P8613743208690503925
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) + (1 - (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f3 n), ((p : ℤ) - 1) : ℤ) : ℚ) + (n : ℚ))

end

end A258434.P8613743208690503925

namespace A258434

/-- `∑[2*n]+1-(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]+n` -/
def P8613743208690503925.Spec : Prop :=
  ∀ n, P8613743208690503925.a n = (A258434 (n + 1) : ℚ)

end A258434

/-! ## A258434.P1290795679794907633

`(n+1)²-Δ[A002088(n)]`
-/

namespace A258434.P1290795679794907633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - (f1 (n + 1) - f1 n)

end

end A258434.P1290795679794907633

namespace A258434

/-- `(n+1)²-Δ[A002088(n)]` -/
def P1290795679794907633.Spec : Prop :=
  ∀ n, P1290795679794907633.a n = A258434 (n + 1)

end A258434

/-! ## A258434.P14567414679347605688

`(n+1)²-Δ[A005728(n)]`
-/

namespace A258434.P14567414679347605688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - (f1 (n + 1) - f1 n)

end

end A258434.P14567414679347605688

namespace A258434

/-- `(n+1)²-Δ[A005728(n)]` -/
def P14567414679347605688.Spec : Prop :=
  ∀ n, P14567414679347605688.a n = A258434 (n + 1)

end A258434

/-! ## A258434.P3576622354757452924

`(n+1)²-A000010(n+1)`
-/

namespace A258434.P3576622354757452924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - A000010 (n + 1)

end

end A258434.P3576622354757452924

namespace A258434

/-- `(n+1)²-A000010(n+1)` -/
def P3576622354757452924.Spec : Prop :=
  ∀ n, P3576622354757452924.a n = A258434 (n + 1)

end A258434

/-! ## A258434.P14606790759469898675

`A053158(n+1)-(1-n²)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A258434

/-- `A053158(n+1)-(1-n²)` -/
def P14606790759469898675.Spec : Prop :=
  ∀ n, P14606790759469898675.a n = A258434 (n + 1)

theorem P14606790759469898675.correct : P14606790759469898675.Spec := by
  intro n
  simp only [A258434, Nat.add_sub_cancel]

end A258434

/-! ## A258434.P10333597824051082486

`A051953(n+1)+∑[2*n]`
-/

namespace A258434.P10333597824051082486
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051953 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A258434.P10333597824051082486

namespace A258434

/-- `A051953(n+1)+∑[2*n]` -/
def P10333597824051082486.Spec : Prop :=
  ∀ n, P10333597824051082486.a n = A258434 (n + 1)

end A258434

/-! ## A258434.P1443896000436926611

`Δ[a(n-1)-(A000010(n)-n²)]` with `a(0)=0`
-/

namespace A258434.P1443896000436926611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 (n - 1) - (A000010 n - (n ^ 2 : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A258434.P1443896000436926611

namespace A258434

/-- `Δ[a(n-1)-(A000010(n)-n²)]` -/
def P1443896000436926611.Spec : Prop :=
  ∀ n, P1443896000436926611.a n = A258434 (n + 1)

end A258434

/-! ## A258434.P5895461178592971993

`abs(A000010(lcm(2, n+1))-(n+1)^2)`
-/

namespace A258434.P5895461178592971993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000010 (Nat.lcm 2 (n + 1)) - ((n + 1) ^ 2 : ℤ)|

end

end A258434.P5895461178592971993

namespace A258434

/-- `abs(A000010(lcm(2, n+1))-(n+1)^2)` -/
def P5895461178592971993.Spec : Prop :=
  ∀ n, P5895461178592971993.a n = A258434 (n + 1)

end A258434

/-! ## A258434.P17041632011616527472

`n*(n+2)-A000010(C(n+1, n))+1`
-/

namespace A258434.P17041632011616527472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n * (n + 2) : ℤ) - A000010 (Nat.choose (n + 1) n) + 1

end

end A258434.P17041632011616527472

namespace A258434

/-- `n*(n+2)-A000010(C(n+1, n))+1` -/
def P17041632011616527472.Spec : Prop :=
  ∀ n, P17041632011616527472.a n = A258434 (n + 1)

end A258434

/-! ## A258434.P9502563647649038146

`∑[2*n]-A000010(2*n+1-n)+n+1`
-/

namespace A258434.P9502563647649038146
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A000010 (2 * n + 1 - n) + (n + 1 : ℤ)

end

end A258434.P9502563647649038146

namespace A258434

/-- `∑[2*n]-A000010(2*n+1-n)+n+1` -/
def P9502563647649038146.Spec : Prop :=
  ∀ n, P9502563647649038146.a n = A258434 (n + 1)

end A258434

/-! ## A258434.P17542802494686419027

`A005563(n)-A109606(n+1)`
-/

namespace A258434.P17542802494686419027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005563 n - A109606 (n + 1)

end

end A258434.P17542802494686419027

namespace A258434

/-- `A005563(n)-A109606(n+1)` -/
def P17542802494686419027.Spec : Prop :=
  ∀ n, P17542802494686419027.a n = A258434 (n + 1)

end A258434

/-! ## A258434.P12740069866161867432

`A062955(n+1)+A053650(n+1)`
-/

namespace A258434.P12740069866161867432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062955 (n + 1) + A053650 (n + 1)

end

end A258434.P12740069866161867432

namespace A258434

/-- `A062955(n+1)+A053650(n+1)` -/
def P12740069866161867432.Spec : Prop :=
  ∀ n, P12740069866161867432.a n = A258434 (n + 1)

end A258434

/-! ## A258434.P4906840776869028555

`A104192(n+1)+A073497(n+1)`
-/

namespace A258434.P4906840776869028555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104192 (n + 1) + A073497 (n + 1)

end

end A258434.P4906840776869028555

namespace A258434

/-- `A104192(n+1)+A073497(n+1)` -/
def P4906840776869028555.Spec : Prop :=
  ∀ n, P4906840776869028555.a n = A258434 (n + 1)

end A258434

/-! ## A258434.P10205993863973113456

`A235799(n+1)+A051612(n+1)`
-/

namespace A258434.P10205993863973113456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235799 (n + 1) + A051612 (n + 1)

end

end A258434.P10205993863973113456

namespace A258434

/-- `A235799(n+1)+A051612(n+1)` -/
def P10205993863973113456.Spec : Prop :=
  ∀ n, P10205993863973113456.a n = A258434 (n + 1)

end A258434

/-! ## A258434.P5637714254082525479

`A344483(n+1)+A094472(n+1)`
-/

namespace A258434.P5637714254082525479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344483 (n + 1) + A094472 (n + 1)

end

end A258434.P5637714254082525479

namespace A258434

/-- `A344483(n+1)+A094472(n+1)` -/
def P5637714254082525479.Spec : Prop :=
  ∀ n, P5637714254082525479.a n = A258434 (n + 1)

end A258434

/-! ## A258434.P10536645001101562687

`A005563(n)+1-A000010(n+1)`
-/

namespace A258434.P10536645001101562687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005563 n + (1 - A000010 (n + 1))

end

end A258434.P10536645001101562687

namespace A258434

/-- `A005563(n)+1-A000010(n+1)` -/
def P10536645001101562687.Spec : Prop :=
  ∀ n, P10536645001101562687.a n = A258434 (n + 1)

end A258434

/-! ## A258434.P15600150789538311302

`A005563(n)+2-A039649(n+1)`
-/

namespace A258434.P15600150789538311302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005563 n + (2 - A039649 (n + 1))

end

end A258434.P15600150789538311302

namespace A258434

/-- `A005563(n)+2-A039649(n+1)` -/
def P15600150789538311302.Spec : Prop :=
  ∀ n, P15600150789538311302.a n = A258434 (n + 1)

end A258434

/-! ## A258434.P18115481013689140303

`A028387(n)-(A000010(n+1)+n)`
-/

namespace A258434.P18115481013689140303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028387 n - (A000010 (n + 1) + (n : ℤ))

end

end A258434.P18115481013689140303

namespace A258434

/-- `A028387(n)-(A000010(n+1)+n)` -/
def P18115481013689140303.Spec : Prop :=
  ∀ n, P18115481013689140303.a n = A258434 (n + 1)

end A258434

/-! ## A258434.P11035628481213895338

`A264724(n+1)-2*A000010(n+1)`
-/

namespace A258434.P11035628481213895338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264724 (n + 1) - 2 * A000010 (n + 1)

end

end A258434.P11035628481213895338

namespace A258434

/-- `A264724(n+1)-2*A000010(n+1)` -/
def P11035628481213895338.Spec : Prop :=
  ∀ n, P11035628481213895338.a n = A258434 (n + 1)

end A258434

/-! ## A258434.P533296456857090905

`A000217(n)+A051953(n+1)+A000217(n)`
-/

namespace A258434.P533296456857090905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n + (A051953 (n + 1) + A000217 n)

end

end A258434.P533296456857090905

namespace A258434

/-- `A000217(n)+A051953(n+1)+A000217(n)` -/
def P533296456857090905.Spec : Prop :=
  ∀ n, P533296456857090905.a n = A258434 (n + 1)

end A258434

/-!
# A258435: Primes of form x^2 - phi(x) in increasing order.

The programs for A258435, there is no canonical definition to state claims against.
-/

/-! ## A258435.P14785391573662521256

`A259145(n+1)²-A000010(A259145(n+1))`
-/

namespace A258435.P14785391573662521256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259145 (n + 1) ^ 2 - A000010 (A259145 (n + 1)).toNat

end

end A258435.P14785391573662521256

/-! ## A258435.P7249380033649766727

`A258434(A259145(n+1))`
-/

namespace A258435.P7249380033649766727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258434 (A259145 (n + 1)).toNat

end

end A258435.P7249380033649766727

/-! ## A258435.P7747635167454353676

`p?[A258434(n+1)]`
-/

namespace A258435.P7747635167454353676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258434 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A258435.P7747635167454353676

/-! ## A258435.P2716094133910977566

`p?[(n+1)²-A000010(n+1)]`
-/

namespace A258435.P2716094133910977566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A258435.P2716094133910977566

/-! ## A258435.P6866191432185813204

`p?[(n+1)²-A322321(n+1)]`
-/

namespace A258435.P6866191432185813204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - A322321 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A258435.P6866191432185813204

/-! ## A258435.P16326100520433435281

`p?[n²+A051953(n+1)+n]`
-/

namespace A258435.P16326100520433435281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) + (A051953 (n + 1) + (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A258435.P16326100520433435281

/-! ## A258435.P4765751322049683808

`p?[n*(n+2)-A109606(n+1)]`
-/

namespace A258435.P4765751322049683808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n * (n + 2) : ℤ) - A109606 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A258435.P4765751322049683808

/-! ## A258435.P16585236347751964387

`p?[(n+1)²-(A039649(n+1)-1)]`
-/

namespace A258435.P16585236347751964387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - (A039649 (n + 1) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A258435.P16585236347751964387

/-! ## A258435.P4718312037313394541

`p?[A005563(n)+1-A000010(n+1)]`
-/

namespace A258435.P4718312037313394541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005563 n + (1 - A000010 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A258435.P4718312037313394541

/-!
# A258438: Sum_{i=1..n} Sum_{j=1..n} (i OR j), where OR is the binary logical OR operator.

The programs for A258438, the canonical program `A258438.P1507217286969799084` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A258438 has offset 0).

The definition of A258438 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A224924, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A258438.P1507217286969799084

`n^3+n²-A224924(n)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A258438

/-- `n^3+n²-A224924(n)` -/
def P1507217286969799084.Spec : Prop :=
  ∀ n, P1507217286969799084.a n = A258438 n

theorem P1507217286969799084.correct : P1507217286969799084.Spec := by
  intro n
  simp only [A258438]

end A258438

/-! ## A258438.P8966183428165538836

`A135503(n)+∑[A224915(n)]`
-/

namespace A258438.P8966183428165538836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224915 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135503 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A258438.P8966183428165538836

namespace A258438

/-- `A135503(n)+∑[A224915(n)]` -/
def P8966183428165538836.Spec : Prop :=
  ∀ n, P8966183428165538836.a n = A258438 n

end A258438

/-! ## A258438.P10839139869947431560

`A006003(n)+∑[A224915(n)]-n`
-/

namespace A258438.P10839139869947431560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224915 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006003 n + (∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ))

end

end A258438.P10839139869947431560

namespace A258438

/-- `A006003(n)+∑[A224915(n)]-n` -/
def P10839139869947431560.Spec : Prop :=
  ∀ n, P10839139869947431560.a n = A258438 n

end A258438

/-! ## A258438.P174564715314176025

`abs(A011379(n)-A224924(n))`
-/

namespace A258438.P174564715314176025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A011379 n - A224924 n|

end

end A258438.P174564715314176025

namespace A258438

/-- `abs(A011379(n)-A224924(n))` -/
def P174564715314176025.Spec : Prop :=
  ∀ n, P174564715314176025.a n = A258438 n

end A258438

/-! ## A258438.P878269956206620625

`A002411(n)+A002411(n)-A224924(n)`
-/

namespace A258438.P878269956206620625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002411 n + (A002411 n - A224924 n)

end

end A258438.P878269956206620625

namespace A258438

/-- `A002411(n)+A002411(n)-A224924(n)` -/
def P878269956206620625.Spec : Prop :=
  ∀ n, P878269956206620625.a n = A258438 n

end A258438

/-! ## A258438.P16238206733629138254

`A135503(n)+A224923(n)/2`
-/

namespace A258438.P16238206733629138254
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A135503 n : ℚ) + (A224923 n : ℚ) / 2

end

end A258438.P16238206733629138254

namespace A258438

/-- `A135503(n)+A224923(n)/2` -/
def P16238206733629138254.Spec : Prop :=
  ∀ n, P16238206733629138254.a n = (A258438 n : ℚ)

end A258438

/-! ## A258438.P15264019336838630178

`A224923(n)+A224924(n)-(n²+n)`
-/

namespace A258438.P15264019336838630178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224923 n + (A224924 n - (n ^ 2 + n : ℤ))

end

end A258438.P15264019336838630178

namespace A258438

/-- `A224923(n)+A224924(n)-(n²+n)` -/
def P15264019336838630178.Spec : Prop :=
  ∀ n, P15264019336838630178.a n = A258438 n

end A258438

/-!
# A258439: Powers of 3 alternating with powers of 2.

The programs for A258439, the canonical program `A258439.P2147734874711288670` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A258439 has offset 0).

The definition of A258439 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A258439.P2147734874711288670

`5*a(n-2)-6*a(n-4)` with `a(0)=1, a(1)=1, a(2)=3, a(3)=2`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A258439

/-- `5*a(n-2)-6*a(n-4)` -/
def P2147734874711288670.Spec : Prop :=
  ∀ n, P2147734874711288670.a n = A258439 n

theorem P2147734874711288670.correct : P2147734874711288670.Spec := by
  intro n
  simp only [A258439]

end A258439

/-! ## A258439.P10176388569638486335

`(gcd(2, n)+1)^floor(n/2)`
-/

namespace A258439.P10176388569638486335
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 2 n + 1 : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ)

end

end A258439.P10176388569638486335

namespace A258439

/-- `(gcd(2, n)+1)^floor(n/2)` -/
def P10176388569638486335.Spec : Prop :=
  ∀ n, P10176388569638486335.a n = (A258439 n : ℚ)

end A258439

/-! ## A258439.P7703197151581589707

`(3-n%2)*a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A258439.P7703197151581589707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  (3 - ((n % 2 : ℕ) : ℤ)) * a (n - 2)

end

end A258439.P7703197151581589707

namespace A258439

/-- `(3-n%2)*a(n-2)` -/
def P7703197151581589707.Spec : Prop :=
  ∀ n, P7703197151581589707.a n = A258439 n

end A258439

/-! ## A258439.P3898630960339331786

`(3-and(1, n))*a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A258439.P3898630960339331786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  (3 - (Nat.land 1 n : ℤ)) * a (n - 2)

end

end A258439.P3898630960339331786

namespace A258439

/-- `(3-and(1, n))*a(n-2)` -/
def P3898630960339331786.Spec : Prop :=
  ∀ n, P3898630960339331786.a n = A258439 n

end A258439

/-! ## A258439.P2016940846010381573

`(∑[(-1)^n]+2)*a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A258439.P2016940846010381573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  (∑ j ∈ Finset.range (n + 1), f1 j + 2) * a (n - 2)

end

end A258439.P2016940846010381573

namespace A258439

/-- `(∑[(-1)^n]+2)*a(n-2)` -/
def P2016940846010381573.Spec : Prop :=
  ∀ n, P2016940846010381573.a n = A258439 n

end A258439

/-! ## A258439.P3183802320700451102

`(char[2*n]+2)^(∑[char[2*n]]-1)`
-/

namespace A258439.P3183802320700451102
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((if ∃ j, f1 j = n then 1 else 0) + 2 : ℕ) : ℚ) ^ (((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - 1 : ℤ)

end

end A258439.P3183802320700451102

namespace A258439

/-- `(char[2*n]+2)^(∑[char[2*n]]-1)` -/
def P3183802320700451102.Spec : Prop :=
  ∀ n, P3183802320700451102.a n = (A258439 n : ℚ)

end A258439

/-! ## A258439.P12587893445188440583

`a(n-2)*∑[(-1)^(n*a(n-1))]` with `a(0)=1, a(1)=1`
-/

namespace A258439.P12587893445188440583
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  (-1 : ℝ) ^ ((n : ℝ) * f1 (n - 1))

def a : ℕ → ℝ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 2) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A258439.P12587893445188440583

namespace A258439

/-- `a(n-2)*∑[(-1)^(n*a(n-1))]` -/
def P12587893445188440583.Spec : Prop :=
  ∀ n, P12587893445188440583.a n = (A258439 n : ℝ)

end A258439

/-! ## A258439.P16300696875731620781

`A098293(xor(1, n))`
-/

namespace A258439.P16300696875731620781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098293 (Nat.xor 1 n)

end

end A258439.P16300696875731620781

namespace A258439

/-- `A098293(xor(1, n))` -/
def P16300696875731620781.Spec : Prop :=
  ∀ n, P16300696875731620781.a n = A258439 n

end A258439

/-! ## A258439.P15900970798884426804

`a(n-2)*A020639(3*(n+1))` with `a(0)=1, a(1)=1`
-/

namespace A258439.P15900970798884426804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 2) * A020639 (3 * (n + 1))

end

end A258439.P15900970798884426804

namespace A258439

/-- `a(n-2)*A020639(3*(n+1))` -/
def P15900970798884426804.Spec : Prop :=
  ∀ n, P15900970798884426804.a n = A258439 n

end A258439

/-! ## A258439.P4386918820172900610

`A098293(A004442(n))`
-/

namespace A258439.P4386918820172900610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098293 (A004442 n).toNat

end

end A258439.P4386918820172900610

namespace A258439

/-- `A098293(A004442(n))` -/
def P4386918820172900610.Spec : Prop :=
  ∀ n, P4386918820172900610.a n = A258439 n

end A258439

/-! ## A258439.P9763131726028593916

`gcd(A131575(n), A254006(n))`
-/

namespace A258439.P9763131726028593916
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A131575 n) (A254006 n)

end

end A258439.P9763131726028593916

namespace A258439

/-- `gcd(A131575(n), A254006(n))` -/
def P9763131726028593916.Spec : Prop :=
  ∀ n, (P9763131726028593916.a n : ℤ) = A258439 n

end A258439

/-! ## A258439.P15013885146421033083

`A193791(A134519(n+1))`
-/

namespace A258439.P15013885146421033083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193791 (A134519 (n + 1)).toNat

end

end A258439.P15013885146421033083

namespace A258439

/-- `A193791(A134519(n+1))` -/
def P15013885146421033083.Spec : Prop :=
  ∀ n, P15013885146421033083.a n = A258439 n

end A258439

/-! ## A258439.P5093629155096843819

`A193725(A117142(n+1))`
-/

namespace A258439.P5093629155096843819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193725 (A117142 (n + 1)).toNat

end

end A258439.P5093629155096843819

namespace A258439

/-- `A193725(A117142(n+1))` -/
def P5093629155096843819.Spec : Prop :=
  ∀ n, P5093629155096843819.a n = A258439 n

end A258439

/-! ## A258439.P9769900989031279572

`A026532(n)/a(n-1)` with `a(0)=1`
-/

namespace A258439.P9769900989031279572
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (A026532 n : ℚ) / a (n - 1)

end

end A258439.P9769900989031279572

namespace A258439

/-- `A026532(n)/a(n-1)` -/
def P9769900989031279572.Spec : Prop :=
  ∀ n, P9769900989031279572.a n = (A258439 n : ℚ)

end A258439

/-! ## A258439.P10065706751704346072

`gcd(A026565(n), A375966(n))`
-/

namespace A258439.P10065706751704346072
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A026565 n) (A375966 n)

end

end A258439.P10065706751704346072

namespace A258439

/-- `gcd(A026565(n), A375966(n))` -/
def P10065706751704346072.Spec : Prop :=
  ∀ n, (P10065706751704346072.a n : ℤ) = A258439 n

end A258439

/-! ## A258439.P8773095165806018230

`a(n-2)²/a(n-4)` with `a(0)=1, a(1)=1, a(2)=3, a(3)=2`
-/

namespace A258439.P8773095165806018230
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1, 3, 2] fun n a =>
  a (n - 2) ^ 2 / a (n - 4)

end

end A258439.P8773095165806018230

namespace A258439

/-- `a(n-2)²/a(n-4)` -/
def P8773095165806018230.Spec : Prop :=
  ∀ n, P8773095165806018230.a n = (A258439 n : ℚ)

end A258439

/-! ## A258439.P16834013376540738743

`a(n-2)²*a(n-4)^(-1)` with `a(0)=1, a(1)=1, a(2)=3, a(3)=2`
-/

namespace A258439.P16834013376540738743
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1, 3, 2] fun n a =>
  a (n - 2) ^ 2 * a (n - 4) ^ (-1 : ℤ)

end

end A258439.P16834013376540738743

namespace A258439

/-- `a(n-2)²*a(n-4)^(-1)` -/
def P16834013376540738743.Spec : Prop :=
  ∀ n, P16834013376540738743.a n = (A258439 n : ℚ)

end A258439

/-! ## A258439.P18399293687790640485

`gcd(A026532(n+1), A092270(n))`
-/

namespace A258439.P18399293687790640485
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A026532 (n + 1)) (A092270 n)

end

end A258439.P18399293687790640485

namespace A258439

/-- `gcd(A026532(n+1), A092270(n))` -/
def P18399293687790640485.Spec : Prop :=
  ∀ n, (P18399293687790640485.a n : ℤ) = A258439 n

end A258439

/-! ## A258439.P13796456455318338673

`gcd(A083881(n), A092270(n))`
-/

namespace A258439.P13796456455318338673
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A083881 n) (A092270 n)

end

end A258439.P13796456455318338673

namespace A258439

/-- `gcd(A083881(n), A092270(n))` -/
def P13796456455318338673.Spec : Prop :=
  ∀ n, (P13796456455318338673.a n : ℤ) = A258439 n

end A258439

/-!
# A258440: Number of squares of all sizes in 3*n*(n+1)/2-ominoes in form of three-quarters of Aztec diamonds.

The programs for A258440, the canonical program `A258440.P18035819845715013534` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A258440 has offset 1).

The definition of A258440 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A258440.P18035819845715013534

`2*a(n-1)-a(n-3)-a(n-4)+2*a(n-6)-a(n-7)` with `a(0)=3, a(1)=11, a(2)=25, a(3)=49, a(4)=84, a(5)=132, a(6)=196`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A258440

/-- `2*a(n-1)-a(n-3)-a(n-4)+2*a(n-6)-a(n-7)` -/
def P18035819845715013534.Spec : Prop :=
  ∀ n, P18035819845715013534.a n = A258440 (n + 1)

theorem P18035819845715013534.correct : P18035819845715013534.Spec := by
  intro n
  simp only [A258440, Nat.add_sub_cancel]

end A258440

/-! ## A258440.P4857597074197568222

`∑[∑[∑[gcd(3, n)+n%2]]]`
-/

namespace A258440.P4857597074197568222
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 3 n + n % 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A258440.P4857597074197568222

namespace A258440

/-- `∑[∑[∑[gcd(3, n)+n%2]]]` -/
def P4857597074197568222.Spec : Prop :=
  ∀ n, (P4857597074197568222.a n : ℤ) = A258440 (n + 1)

end A258440

/-! ## A258440.P1862504772375693657

`∑[∑[∑[A014681(a(n-3))]]]` with `a(0)=3, a(1)=2, a(2)=1`
-/

namespace A258440.P1862504772375693657
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.rec [3, 2, 1] fun n f3 =>
  A014681 (f3 (n - 3)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A258440.P1862504772375693657

namespace A258440

/-- `∑[∑[∑[A014681(a(n-3))]]]` -/
def P1862504772375693657.Spec : Prop :=
  ∀ n, P1862504772375693657.a n = A258440 (n + 1)

end A258440

/-! ## A258440.P14737979002956223754

`∑[∑[∑[A032662(a(n-3))]]]` with `a(0)=3, a(1)=2, a(2)=1`
-/

namespace A258440.P14737979002956223754
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.rec [3, 2, 1] fun n f3 =>
  A032662 (f3 (n - 3)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A258440.P14737979002956223754

namespace A258440

/-- `∑[∑[∑[A032662(a(n-3))]]]` -/
def P14737979002956223754.Spec : Prop :=
  ∀ n, P14737979002956223754.a n = A258440 (n + 1)

end A258440

/-! ## A258440.P17643475793890815987

`∑[∑[∑[A140069(a(n-3)+1)]]]` with `a(0)=3, a(1)=2, a(2)=1`
-/

namespace A258440.P17643475793890815987
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.rec [3, 2, 1] fun n f3 =>
  A140069 (f3 (n - 3) + 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A258440.P17643475793890815987

namespace A258440

/-- `∑[∑[∑[A140069(a(n-3)+1)]]]` -/
def P17643475793890815987.Spec : Prop :=
  ∀ n, P17643475793890815987.a n = A258440 (n + 1)

end A258440

/-! ## A258440.P4478005232547666770

`A254874(n)+A241526(n+1)`
-/

namespace A258440.P4478005232547666770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254874 n + A241526 (n + 1)

end

end A258440.P4478005232547666770

namespace A258440

/-- `A254874(n)+A241526(n+1)` -/
def P4478005232547666770.Spec : Prop :=
  ∀ n, P4478005232547666770.a n = A258440 (n + 1)

end A258440

/-! ## A258440.P12020036423059885288

`A002623(n)+2*A254874(n)`
-/

namespace A258440.P12020036423059885288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002623 n + 2 * A254874 n

end

end A258440.P12020036423059885288

namespace A258440

/-- `A002623(n)+2*A254874(n)` -/
def P12020036423059885288.Spec : Prop :=
  ∀ n, P12020036423059885288.a n = A258440 (n + 1)

end A258440

/-! ## A258440.P14781148190277822909

`2*A241526(n+1)-A002623(n)`
-/

namespace A258440.P14781148190277822909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A241526 (n + 1) - A002623 n

end

end A258440.P14781148190277822909

namespace A258440

/-- `2*A241526(n+1)-A002623(n)` -/
def P14781148190277822909.Spec : Prop :=
  ∀ n, P14781148190277822909.a n = A258440 (n + 1)

end A258440

/-! ## A258440.P16180552503093152122

`∑[∑[A047205(n+2)+A004526(n+1)]]`
-/

namespace A258440.P16180552503093152122
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047205 (n + 2) + A004526 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A258440.P16180552503093152122

namespace A258440

/-- `∑[∑[A047205(n+2)+A004526(n+1)]]` -/
def P16180552503093152122.Spec : Prop :=
  ∀ n, P16180552503093152122.a n = A258440 (n + 1)

end A258440

/-! ## A258440.P15408927937322074873

`∑[∑[A130823(n+1)+A001651(n+2)]]`
-/

namespace A258440.P15408927937322074873
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130823 (n + 1) + A001651 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A258440.P15408927937322074873

namespace A258440

/-- `∑[∑[A130823(n+1)+A001651(n+2)]]` -/
def P15408927937322074873.Spec : Prop :=
  ∀ n, P15408927937322074873.a n = A258440 (n + 1)

end A258440

/-! ## A258440.P11303464809786553757

`A254877(2*n+1)+A254877(2*n)+A254707(2*n)`
-/

namespace A258440.P11303464809786553757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254877 (2 * n + 1) + (A254877 (2 * n) + A254707 (2 * n))

end

end A258440.P11303464809786553757

namespace A258440

/-- `A254877(2*n+1)+A254877(2*n)+A254707(2*n)` -/
def P11303464809786553757.Spec : Prop :=
  ∀ n, P11303464809786553757.a n = A258440 (n + 1)

end A258440

/-!
# A258445: Irregular triangle related to Pascal's triangle.

The programs for A258445, the canonical program `A258445.P3993367522767130701` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A258445 has offset 1).

The definition of A258445 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A258445.P8728687014328545446

`A152905(comp[(n+1)²])`
-/

namespace A258445.P8728687014328545446
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152905 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A258445.P8728687014328545446

namespace A258445

/-- `A152905(comp[(n+1)²])` -/
def P8728687014328545446.Spec : Prop :=
  ∀ n, P8728687014328545446.a n = A258445 (n + 1)

end A258445

/-! ## A258445.P1565291705901092244

`A007318(floor(comp[(n+1)²]/2))`
-/

namespace A258445.P1565291705901092244
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 ⌊(SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℚ) / 2⌋.toNat

end

end A258445.P1565291705901092244

namespace A258445

/-- `A007318(floor(comp[(n+1)²]/2))` -/
def P1565291705901092244.Spec : Prop :=
  ∀ n, P1565291705901092244.a n = A258445 (n + 1)

end A258445

/-! ## A258445.P8607740153019711894

`abs(A108086(floor(comp[n²-1]/2)))`
-/

namespace A258445.P8607740153019711894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A108086 ⌊(SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℚ) / 2⌋.toNat|

end

end A258445.P8607740153019711894

namespace A258445

/-- `abs(A108086(floor(comp[n²-1]/2)))` -/
def P8607740153019711894.Spec : Prop :=
  ∀ n, P8607740153019711894.a n = A258445 (n + 1)

end A258445

/-! ## A258445.P11246594170517776817

`A152907(A173263(n+1))`
-/

namespace A258445.P11246594170517776817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152907 (A173263 (n + 1)).toNat

end

end A258445.P11246594170517776817

namespace A258445

/-- `A152907(A173263(n+1))` -/
def P11246594170517776817.Spec : Prop :=
  ∀ n, P11246594170517776817.a n = A258445 (n + 1)

end A258445

/-! ## A258445.P3993367522767130701

`A140751(A023969(n)+n)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A258445

/-- `A140751(A023969(n)+n)` -/
def P3993367522767130701.Spec : Prop :=
  ∀ n, P3993367522767130701.a n = A258445 (n + 1)

theorem P3993367522767130701.correct : P3993367522767130701.Spec := by
  intro n
  simp only [A258445, Nat.add_sub_cancel]

end A258445

/-! ## A258445.P16014024032091012721

`A001281(A028326(ceil((comp[(n+1)²]-1)/2)))`
-/

namespace A258445.P16014024032091012721
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A028326 ⌈((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - 1 : ℚ) / 2⌉.toNat).toNat

end

end A258445.P16014024032091012721

namespace A258445

/-- `A001281(A028326(ceil((comp[(n+1)²]-1)/2)))` -/
def P16014024032091012721.Spec : Prop :=
  ∀ n, P16014024032091012721.a n = A258445 (n + 1)

end A258445

/-!
# A258448: Number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 813", based on the 5-celled von Neumann neighborhood.

The programs for A258448, there is no canonical definition to state claims against.
-/

/-! ## A258448.P17757294177939924770

`Δ[A273640(n)]-(8*(n+1)-A271059(abs(1-n)))`
-/

namespace A258448.P17757294177939924770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273640 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - ((8 * (n + 1) : ℤ) - A271059 |1 - (n : ℤ)|.toNat)

end

end A258448.P17757294177939924770

/-! ## A258448.P16167243383770212535

`A273641(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A258448.P16167243383770212535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A273641 (n - 1) + a (n - 1)

end

end A258448.P16167243383770212535

/-! ## A258448.P4032356424156900925

`Δ[A273640(n)]-A273641(n)`
-/

namespace A258448.P4032356424156900925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273640 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A273641 n

end

end A258448.P4032356424156900925

/-! ## A258448.P1149594551879618220

`A273640(n+1)-(A273641(n)+A273640(n))`
-/

namespace A258448.P1149594551879618220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273640 (n + 1) - (A273641 n + A273640 n)

end

end A258448.P1149594551879618220

/-! ## A258448.P3744298550180537140

`A020725(∑[A273641(n)])-A273641(n)`
-/

namespace A258448.P3744298550180537140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273641 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - A273641 n

end

end A258448.P3744298550180537140

/-!
# A258450: Number of collections of nonempty multisets of colored objects, where n is the number of objects plus the number of distinct colors.

The programs for A258450, there is no canonical definition to state claims against.
-/

/-! ## A258450.P18301002257094375470

`A029146(A286272(n+1))*A257993(A091147(n))`
-/

namespace A258450.P18301002257094375470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029146 (A286272 (n + 1)).toNat * A257993 (A091147 n).toNat

end

end A258450.P18301002257094375470

/-!
# A258451: a(n) = 1 + a(n-1)/gcd(a(n-1),n) with a(0)=3.

The programs for A258451, the canonical program `A258451.P11753684823883831454` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A258451 has offset 0).

The definition of A258451 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A258451.P11753684823883831454

`lcm(n, a(n-1))/n+1` with `a(0)=3`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A258451

/-- `lcm(n, a(n-1))/n+1` -/
def P11753684823883831454.Spec : Prop :=
  ∀ n, P11753684823883831454.a n = (A258451 n : ℚ)

end A258451

/-! ## A258451.P9721395099861353977

`1+a(n-1)/gcd(a(n-1), n)` with `a(0)=3`
-/

namespace A258451.P9721395099861353977
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [3] fun n a =>
  1 + a (n - 1) / (Int.gcd (SequenceMachineLib.roundAway (a (n - 1))) (n : ℤ) : ℚ)

end

end A258451.P9721395099861353977

namespace A258451

/-- `1+a(n-1)/gcd(a(n-1), n)` -/
def P9721395099861353977.Spec : Prop :=
  ∀ n, P9721395099861353977.a n = (A258451 n : ℚ)

end A258451

/-!
# A258453: G.f.: Sum_{k>0} x^((k^2 + k)/2) / (1 + x^k).

The programs for A258453, there is no canonical definition to state claims against.
-/

/-! ## A258453.P6913619714189489486

`A092673(record[Δ[A115744(n+1)]])`
-/

namespace A258453.P6913619714189489486
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115744 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092673 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A258453.P6913619714189489486

/-! ## A258453.P11820386707167148689

`A082902(n+1)-A010673(A206583(n))`
-/

namespace A258453.P11820386707167148689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082902 (n + 1) - A010673 (A206583 n).toNat

end

end A258453.P11820386707167148689

/-! ## A258453.P305121711922740586

`A000122(A284234(n))-A053866(n+1)`
-/

namespace A258453.P305121711922740586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (A284234 n).toNat - A053866 (n + 1)

end

end A258453.P305121711922740586

/-! ## A258453.P4430427212344021752

`A164116(A132176(n+1)-A226748(n))`
-/

namespace A258453.P4430427212344021752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164116 (A132176 (n + 1) - A226748 n).toNat

end

end A258453.P4430427212344021752

/-! ## A258453.P17522961161862417422

`Δ[A056169(A001405(n)*A034444(n+1))]`
-/

namespace A258453.P17522961161862417422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056169 (A001405 n * A034444 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A258453.P17522961161862417422

/-!
# A258454: Numbers n such that phi(n) = 2*phi(n-2).

The programs for A258454, there is no canonical definition to state claims against.
-/

/-! ## A258454.P6987510697482898900

`∪[2^2^n+1, A101921(2^2^n+1)]`
-/

namespace A258454.P6987510697482898900
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ 2 ^ n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101921 (2 ^ 2 ^ n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A258454.P6987510697482898900

/-! ## A258454.P5497151880397203581

`eq[2, A064672(A029578(n))]`
-/

namespace A258454.P5497151880397203581
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064672 (A029578 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A258454.P5497151880397203581

/-! ## A258454.P17308814515643759408

`record[A034684(A065875(n+1))]`
-/

namespace A258454.P17308814515643759408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034684 (A065875 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A258454.P17308814515643759408

/-! ## A258454.P4564936634372166861

`filter[A065875(n+1), A010055(#)]`
-/

namespace A258454.P4564936634372166861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065875 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010055 (f1 j).toNat = 1) n)

end

end A258454.P4564936634372166861

/-!
# A258455: Divisorial primes: primes p of the form p = 1 + Product_{d|k} d for some k.

The programs for A258455, there is no canonical definition to state claims against.
-/

/-! ## A258455.P7754301457978758257

`A062459(A325361(n+1)%A020994(n+1))`
-/

namespace A258455.P7754301457978758257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062459 (Int.tmod (A325361 (n + 1)) (A020994 (n + 1))).toNat

end

end A258455.P7754301457978758257

/-! ## A258455.P14986605282011962214

`p?[A032742(n+1)+A011262(A038040(n+1))]`
-/

namespace A258455.P14986605282011962214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (n + 1) + A011262 (A038040 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A258455.P14986605282011962214

/-! ## A258455.P3796754126898102945

`p?[A033676(n+1)+A011262(A038040(n+1))]`
-/

namespace A258455.P3796754126898102945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033676 (n + 1) + A011262 (A038040 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A258455.P3796754126898102945

/-! ## A258455.P17459686863087107829

`p?[A144907(n+1)+A011262(A038040(n+1))]`
-/

namespace A258455.P17459686863087107829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144907 (n + 1) + A011262 (A038040 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A258455.P17459686863087107829

/-! ## A258455.P8291899832121417821

`p?[A159353(n+1)+A011262(A038040(n+1))]`
-/

namespace A258455.P8291899832121417821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159353 (n + 1) + A011262 (A038040 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A258455.P8291899832121417821

/-!
# A258456: Product of divisors of n is not a square.

The programs for A258456, the canonical program `A258456.P9693069320443912273` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A258456 has offset 1).

The definition of A258456 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A258456.P9693069320443912273

`∪[A030140(n+1), A182358(n+1)]`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A258456

/-- `∪[A030140(n+1), A182358(n+1)]` -/
def P9693069320443912273.Spec : Prop :=
  ∀ n, (P9693069320443912273.a n : ℤ) = A258456 (n + 1)

theorem P9693069320443912273.correct : P9693069320443912273.Spec := by
  intro n
  simp only [A258456, Nat.add_sub_cancel]

end A258456

/-! ## A258456.P4374994758049291175

`eq[0, A280684(n+2)%2]+2`
-/

namespace A258456.P4374994758049291175
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A280684 (n + 2)) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A258456.P4374994758049291175

namespace A258456

/-- `eq[0, A280684(n+2)%2]+2` -/
def P4374994758049291175.Spec : Prop :=
  ∀ n, (P4374994758049291175.a n : ℤ) = A258456 (n + 1)

end A258456

/-! ## A258456.P10049083451623284891

`lt[A280684(n+1)%2, 1]+1`
-/

namespace A258456.P10049083451623284891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A280684 (n + 1)) 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A258456.P10049083451623284891

namespace A258456

/-- `lt[A280684(n+1)%2, 1]+1` -/
def P10049083451623284891.Spec : Prop :=
  ∀ n, (P10049083451623284891.a n : ℤ) = A258456 (n + 1)

end A258456

/-! ## A258456.P3267392461263767193

`lt[A280684(n*a(A165471(n)²-1))%2, 1]` with `a(0)=1`
-/

namespace A258456.P3267392461263767193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  Int.tmod (A280684 ((n : ℤ) * f1 (A165471 n ^ 2 - 1).toNat).toNat) 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A258456.P3267392461263767193

namespace A258456

/-- `lt[A280684(n*a(A165471(n)²-1))%2, 1]` -/
def P3267392461263767193.Spec : Prop :=
  ∀ n, (P3267392461263767193.a n : ℤ) = A258456 (n + 1)

end A258456

/-! ## A258456.P6949364933200501331

`eq[0, A010052(∏{d}[n, #]%(n+1))]`
-/

namespace A258456.P6949364933200501331
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 ((∏ d ∈ Nat.divisors (f3 n), d) % (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A258456.P6949364933200501331

namespace A258456

/-- `eq[0, A010052(∏{d}[n, #]%(n+1))]` -/
def P6949364933200501331.Spec : Prop :=
  ∀ n, (P6949364933200501331.a n : ℤ) = A258456 (n + 1)

end A258456

/-! ## A258456.P14126453569726018335

`eq[1, A069625(n+1)%2]+1`
-/

namespace A258456.P14126453569726018335
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A069625 (n + 1)) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A258456.P14126453569726018335

namespace A258456

/-- `eq[1, A069625(n+1)%2]+1` -/
def P14126453569726018335.Spec : Prop :=
  ∀ n, (P14126453569726018335.a n : ℤ) = A258456 (n + 1)

end A258456

/-! ## A258456.P6961025314629384606

`eq[1, A069625(A000007(n)+n)%2]`
-/

namespace A258456.P6961025314629384606
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A069625 (A000007 n + (n : ℤ)).toNat) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A258456.P6961025314629384606

namespace A258456

/-- `eq[1, A069625(A000007(n)+n)%2]` -/
def P6961025314629384606.Spec : Prop :=
  ∀ n, (P6961025314629384606.a n : ℤ) = A258456 (n + 1)

end A258456

/-! ## A258456.P8582645363659502745

`eq[2, A020639(A207329(n+1))]+1`
-/

namespace A258456.P8582645363659502745
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A207329 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A258456.P8582645363659502745

namespace A258456

/-- `eq[2, A020639(A207329(n+1))]+1` -/
def P8582645363659502745.Spec : Prop :=
  ∀ n, (P8582645363659502745.a n : ℤ) = A258456 (n + 1)

end A258456

/-! ## A258456.P8192509813329638056

`eq[0, A132747(A069625(n+1)+2)]+1`
-/

namespace A258456.P8192509813329638056
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132747 (A069625 (n + 1) + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A258456.P8192509813329638056

namespace A258456

/-- `eq[0, A132747(A069625(n+1)+2)]+1` -/
def P8192509813329638056.Spec : Prop :=
  ∀ n, (P8192509813329638056.a n : ℤ) = A258456 (n + 1)

end A258456

/-! ## A258456.P13037517864786247499

`eq[3, A032741(A294157(A032741(n)))]`
-/

namespace A258456.P13037517864786247499
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (A294157 (A032741 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A258456.P13037517864786247499

namespace A258456

/-- `eq[3, A032741(A294157(A032741(n)))]` -/
def P13037517864786247499.Spec : Prop :=
  ∀ n, (P13037517864786247499.a n : ℤ) = A258456 (n + 1)

end A258456

/-!
# A258457: Number of partitions of n into parts of exactly 2 sorts which are introduced in ascending order.

The programs for A258457, there is no canonical definition to state claims against.
-/

/-! ## A258457.P12234964763692629679

`A256130(∑[n+2]+3)`
-/

namespace A258457.P12234964763692629679
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256130 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A258457.P12234964763692629679

/-! ## A258457.P2770965978408460869

`record[A256130(A000217(n)+2)]`
-/

namespace A258457.P2770965978408460869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256130 (A000217 n + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A258457.P2770965978408460869

/-! ## A258457.P6965320620457314377

`record[A256130(2-(n-A000217(n)))]`
-/

namespace A258457.P6965320620457314377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256130 (2 - ((n : ℤ) - A000217 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A258457.P6965320620457314377

/-! ## A258457.P15816086222581683636

`record[A256130(A254667(A133263(n)))]`
-/

namespace A258457.P15816086222581683636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256130 (A254667 (A133263 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A258457.P15816086222581683636

/-! ## A258457.P355545077031712332

`A255970(A167614(n+1)-1)/2`
-/

namespace A258457.P355545077031712332
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A255970 (A167614 (n + 1) - 1).toNat : ℚ) / 2

end

end A258457.P355545077031712332

/-!
# A258458: Number of partitions of n into parts of exactly 3 sorts which are introduced in ascending order.

The programs for A258458, there is no canonical definition to state claims against.
-/

/-! ## A258458.P5644995233580047199

`A256130(∑[n+3]+6)`
-/

namespace A258458.P5644995233580047199
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256130 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A258458.P5644995233580047199

/-! ## A258458.P17821762729467585462

`record[or(-A300453(n), A256130(n))]`
-/

namespace A258458.P17821762729467585462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (-A300453 n) (A256130 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A258458.P17821762729467585462

/-! ## A258458.P10543347754168139420

`or(A000007(n), A256130(A167614(n+2)))`
-/

namespace A258458.P10543347754168139420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A256130 (A167614 (n + 2)).toNat)

end

end A258458.P10543347754168139420

/-! ## A258458.P5048716955194851190

`A256130(A167614(n+2))+A000007(n+1)`
-/

namespace A258458.P5048716955194851190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256130 (A167614 (n + 2)).toNat + A000007 (n + 1)

end

end A258458.P5048716955194851190

/-! ## A258458.P13954547216885217636

`A008683(A006881(n+1))*A256130(A167614(n+2))`
-/

namespace A258458.P13954547216885217636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A006881 (n + 1)).toNat * A256130 (A167614 (n + 2)).toNat

end

end A258458.P13954547216885217636

/-! ## A258458.P17482659152489462030

`A255970(A167614(n+2))/6`
-/

namespace A258458.P17482659152489462030
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A255970 (A167614 (n + 2)).toNat : ℚ) / 6

end

end A258458.P17482659152489462030

/-! ## A258458.P4978137299379256311

`A256130(A167614(n+2))+A000038(A175381(n+1))`
-/

namespace A258458.P4978137299379256311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256130 (A167614 (n + 2)).toNat + A000038 (A175381 (n + 1)).toNat

end

end A258458.P4978137299379256311

/-!
# A258459: Number of partitions of n into parts of exactly 4 sorts which are introduced in ascending order.

The programs for A258459, there is no canonical definition to state claims against.
-/

/-! ## A258459.P5433978141106479382

`A256130(eq[4, A002262(n)])`
-/

namespace A258459.P5433978141106479382
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256130 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A258459.P5433978141106479382

/-! ## A258459.P11534862641790638274

`A256130(A167499(n+3)-1)`
-/

namespace A258459.P11534862641790638274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256130 (A167499 (n + 3) - 1).toNat

end

end A258459.P11534862641790638274

/-! ## A258459.P16914326531475930494

`A256130(A133263(n+4)+2)`
-/

namespace A258459.P16914326531475930494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256130 (A133263 (n + 4) + 2).toNat

end

end A258459.P16914326531475930494

/-! ## A258459.P1278941760993665220

`A256130(A152947(n+6)+3)`
-/

namespace A258459.P1278941760993665220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256130 (A152947 (n + 6) + 3).toNat

end

end A258459.P1278941760993665220

/-! ## A258459.P9713370451518511937

`A256130(A052905(n+1)+9)`
-/

namespace A258459.P9713370451518511937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256130 (A052905 (n + 1) + 9).toNat

end

end A258459.P9713370451518511937

/-! ## A258459.P15193050768263797056

`A256130(eq[2, A144328(n+1)-2])`
-/

namespace A258459.P15193050768263797056
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256130 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A258459.P15193050768263797056

/-! ## A258459.P12993295729371028788

`A256130(eq[2, A144328(n+1)/2])`
-/

namespace A258459.P12993295729371028788
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A144328 (n + 1) : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256130 (SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n)

end

end A258459.P12993295729371028788

/-! ## A258459.P2492670853292411221

`A256130(3-(n-A046691(n+3)))`
-/

namespace A258459.P2492670853292411221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256130 (3 - ((n : ℤ) - A046691 (n + 3))).toNat

end

end A258459.P2492670853292411221

/-! ## A258459.P15928485134204748715

`A256130(A038722(Δ[A111396(n)]))`
-/

namespace A258459.P15928485134204748715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111396 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256130 (A038722 (f1 (n + 1) - f1 n).toNat).toNat

end

end A258459.P15928485134204748715

/-!
# A258460: Number of partitions of n into parts of exactly 5 sorts which are introduced in ascending order.

The programs for A258460, there is no canonical definition to state claims against.
-/

/-! ## A258460.P11254003791706272761

`A256130(A167499(n+4))`
-/

namespace A258460.P11254003791706272761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256130 (A167499 (n + 4)).toNat

end

end A258460.P11254003791706272761

/-! ## A258460.P18074102779318182628

`A256130(A166136(n+4)-1)`
-/

namespace A258460.P18074102779318182628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256130 (A166136 (n + 4) - 1).toNat

end

end A258460.P18074102779318182628

/-! ## A258460.P5840504183248128146

`A256130(A133263(n+5)+3)`
-/

namespace A258460.P5840504183248128146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256130 (A133263 (n + 5) + 3).toNat

end

end A258460.P5840504183248128146

/-! ## A258460.P2805210153283433148

`A256130(A134869(n+5)+4)`
-/

namespace A258460.P2805210153283433148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256130 (A134869 (n + 5) + 4).toNat

end

end A258460.P2805210153283433148

/-! ## A258460.P5227319971766499213

`A256130(A000096(n+4)+6)`
-/

namespace A258460.P5227319971766499213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256130 (A000096 (n + 4) + 6).toNat

end

end A258460.P5227319971766499213

/-! ## A258460.P12797528766805667491

`A256130(A000217(n+5)+5)`
-/

namespace A258460.P12797528766805667491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256130 (A000217 (n + 5) + 5).toNat

end

end A258460.P12797528766805667491

/-!
# A258461: Number of partitions of n into parts of exactly 6 sorts which are introduced in ascending order.

The programs for A258461, there is no canonical definition to state claims against.
-/

/-! ## A258461.P17459002699180360113

`A256130(A167499(n+5)+1)`
-/

namespace A258461.P17459002699180360113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256130 (A167499 (n + 5) + 1).toNat

end

end A258461.P17459002699180360113

/-! ## A258461.P12949050673880651745

`A256130(A000124(n+6)+5)`
-/

namespace A258461.P12949050673880651745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256130 (A000124 (n + 6) + 5).toNat

end

end A258461.P12949050673880651745

/-! ## A258461.P5639644537301240760

`A256130(A000096(n+5)+7)`
-/

namespace A258461.P5639644537301240760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256130 (A000096 (n + 5) + 7).toNat

end

end A258461.P5639644537301240760

/-! ## A258461.P12358526518544149335

`A256130(A000217(n+6)+6)`
-/

namespace A258461.P12358526518544149335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256130 (A000217 (n + 6) + 6).toNat

end

end A258461.P12358526518544149335

/-! ## A258461.P2012000758971829641

`A256130(eq[7, A002260(n+1)])`
-/

namespace A258461.P2012000758971829641
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256130 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A258461.P2012000758971829641

/-! ## A258461.P11399406325559346315

`A256130(A134869(n+7)+A001489(n+2))`
-/

namespace A258461.P11399406325559346315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256130 (A134869 (n + 7) + A001489 (n + 2)).toNat

end

end A258461.P11399406325559346315

/-!
# A258462: Number of partitions of n into parts of exactly 7 sorts which are introduced in ascending order.

The programs for A258462, there is no canonical definition to state claims against.
-/

/-! ## A258462.P10006482540160794179

`A256130(A167499(n+6)+2)`
-/

namespace A258462.P10006482540160794179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256130 (A167499 (n + 6) + 2).toNat

end

end A258462.P10006482540160794179

/-! ## A258462.P12212678646344120044

`A256130(A000096(n+6)+8)`
-/

namespace A258462.P12212678646344120044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256130 (A000096 (n + 6) + 8).toNat

end

end A258462.P12212678646344120044

/-! ## A258462.P17898210892206161585

`A256130(A000217(n+7)+7)`
-/

namespace A258462.P17898210892206161585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256130 (A000217 (n + 7) + 7).toNat

end

end A258462.P17898210892206161585

/-! ## A258462.P13807234363278513603

`A256130(A134869(n+8)+A001489(n+2))`
-/

namespace A258462.P13807234363278513603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256130 (A134869 (n + 8) + A001489 (n + 2)).toNat

end

end A258462.P13807234363278513603

/-! ## A258462.P10672681260652814284

`A256130(A133263(n+5)+A005843(n+9))`
-/

namespace A258462.P10672681260652814284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256130 (A133263 (n + 5) + A005843 (n + 9)).toNat

end

end A258462.P10672681260652814284

/-!
# A258463: Number of partitions of n into parts of exactly 8 sorts which are introduced in ascending order.

The programs for A258463, there is no canonical definition to state claims against.
-/

/-! ## A258463.P1359784512259411481

`A256130(A167499(n+7)+3)`
-/

namespace A258463.P1359784512259411481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256130 (A167499 (n + 7) + 3).toNat

end

end A258463.P1359784512259411481

/-! ## A258463.P10711510080929614754

`A256130(A000096(n+7)+9)`
-/

namespace A258463.P10711510080929614754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256130 (A000096 (n + 7) + 9).toNat

end

end A258463.P10711510080929614754

/-! ## A258463.P15981188914042087269

`A256130(A134869(n+9)+A001489(n+2))`
-/

namespace A258463.P15981188914042087269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256130 (A134869 (n + 9) + A001489 (n + 2)).toNat

end

end A258463.P15981188914042087269

/-! ## A258463.P6409089806355468690

`A256130(A133263(n+5)+A008585(n+9))`
-/

namespace A258463.P6409089806355468690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256130 (A133263 (n + 5) + A008585 (n + 9)).toNat

end

end A258463.P6409089806355468690

/-! ## A258463.P13173360276748536709

`A256130(A134869(n+10)-A004277(n+6))`
-/

namespace A258463.P13173360276748536709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256130 (A134869 (n + 10) - A004277 (n + 6)).toNat

end

end A258463.P13173360276748536709

/-! ## A258463.P12101625648053503179

`A256130(A167614(n+12)-A008706(n+10))`
-/

namespace A258463.P12101625648053503179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256130 (A167614 (n + 12) - A008706 (n + 10)).toNat

end

end A258463.P12101625648053503179

/-!
# A258464: Number of partitions of n into parts of exactly 9 sorts which are introduced in ascending order.

The programs for A258464, there is no canonical definition to state claims against.
-/

/-! ## A258464.P17882781173314757762

`A256130(eq[9, A002262(n)])`
-/

namespace A258464.P17882781173314757762
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256130 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A258464.P17882781173314757762

/-! ## A258464.P2051276614466691800

`A256130(eq[9, A144328(n+1)])`
-/

namespace A258464.P2051276614466691800
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256130 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A258464.P2051276614466691800

/-! ## A258464.P7485780379551326409

`A256130(eq[10, A002260(n+1)])`
-/

namespace A258464.P7485780379551326409
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256130 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A258464.P7485780379551326409

/-! ## A258464.P12681337953598300465

`A256130(eq[10, A134868(n+1)])`
-/

namespace A258464.P12681337953598300465
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134868 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256130 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A258464.P12681337953598300465

/-! ## A258464.P18082107253776257133

`A256130(eq[55, A104763(n+1)])`
-/

namespace A258464.P18082107253776257133
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  55

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104763 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256130 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A258464.P18082107253776257133

/-!
# A258465: Number of partitions of n into parts of exactly 10 sorts which are introduced in ascending order.

The programs for A258465, there is no canonical definition to state claims against.
-/

/-! ## A258465.P12289535634088520265

`A256130(eq[10, A002262(n)])`
-/

namespace A258465.P12289535634088520265
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256130 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A258465.P12289535634088520265

/-! ## A258465.P13459764286643274450

`A256130(A000124(n+10)+9)`
-/

namespace A258465.P13459764286643274450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256130 (A000124 (n + 10) + 9).toNat

end

end A258465.P13459764286643274450

/-! ## A258465.P8422646620937380581

`A256130(eq[10, A144328(n+1)])`
-/

namespace A258465.P8422646620937380581
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256130 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A258465.P8422646620937380581

/-! ## A258465.P1668236700230940577

`A256130(eq[11, A002260(n+1)])`
-/

namespace A258465.P1668236700230940577
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256130 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A258465.P1668236700230940577

/-! ## A258465.P15763234094210262105

`A256130(eq[11, A134868(n+1)])`
-/

namespace A258465.P15763234094210262105
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134868 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256130 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A258465.P15763234094210262105

/-!
# A258466: Number of partitions of n into parts of sorts {1, 2, ... } which are introduced in ascending order.

The programs for A258466, there is no canonical definition to state claims against.
-/

/-! ## A258466.P16503751817321339333

`A144554(∑[A061978(3*n+1)]%2+2*n)`
-/

namespace A258466.P16503751817321339333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061978 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144554 (Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) 2 + (2 * n : ℤ)).toNat

end

end A258466.P16503751817321339333

/-! ## A258466.P5968883577975064883

`A364839(A192237(n))+A192207(n)`
-/

namespace A258466.P5968883577975064883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364839 (A192237 n).toNat + A192207 n

end

end A258466.P5968883577975064883

/-! ## A258466.P12049001102918403448

`A033762(A233281(n+1))+A007867(n+1)`
-/

namespace A258466.P12049001102918403448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033762 (A233281 (n + 1)).toNat + A007867 (n + 1)

end

end A258466.P12049001102918403448

/-!
# A258467: Number of partitions of 2n into parts of exactly n sorts which are introduced in ascending order.

The programs for A258467, there is no canonical definition to state claims against.
-/

/-! ## A258467.P151881091443996316

`A256130(∑[4*n])`
-/

namespace A258467.P151881091443996316
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256130 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A258467.P151881091443996316

/-! ## A258467.P18044083398171953102

`A262495(2*(n+1)²)`
-/

namespace A258467.P18044083398171953102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262495 (2 * (n + 1) ^ 2)

end

end A258467.P18044083398171953102

/-! ## A258467.P3482541162454862742

`record[A262495(∑[A014682(n)])]`
-/

namespace A258467.P3482541162454862742
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262495 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A258467.P3482541162454862742

/-! ## A258467.P7609288842967030244

`record[A262495(2*A079097(n))]`
-/

namespace A258467.P7609288842967030244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262495 (2 * A079097 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A258467.P7609288842967030244

/-! ## A258467.P1912585557062940089

`record[A256130(n*A028242(n))]`
-/

namespace A258467.P1912585557062940089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256130 ((n : ℤ) * A028242 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A258467.P1912585557062940089

/-!
# A258468: a(n) = lcm(n, n - tau(n)).

The programs for A258468, the canonical program `A258468.P6923667450980188784` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A258468 has offset 1).

The definition of A258468 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A258468.P6923667450980188784

`lcm(n+1, n-∑{d}[n+1, n²%#])`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A258468

/-- `lcm(n+1, n-∑{d}[n+1, n²%#])` -/
def P6923667450980188784.Spec : Prop :=
  ∀ n, (P6923667450980188784.a n : ℤ) = A258468 (n + 1)

theorem P6923667450980188784.correct : P6923667450980188784.Spec := by
  intro n
  simp only [A258468, Nat.add_sub_cancel]

end A258468

/-! ## A258468.P3671034649300690630

`lcm(n+1-∑{d}[n+1, gcd(n, #)], xor(n, -1))`
-/

namespace A258468.P3671034649300690630
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((n + 1 : ℤ) - ((∑ d ∈ Nat.divisors (f1 n), Nat.gcd n d : ℕ) : ℤ)) (Int.xor (n : ℤ) (-1))

end

end A258468.P3671034649300690630

namespace A258468

/-- `lcm(n+1-∑{d}[n+1, gcd(n, #)], xor(n, -1))` -/
def P3671034649300690630.Spec : Prop :=
  ∀ n, (P3671034649300690630.a n : ℤ) = A258468 (n + 1)

end A258468

/-! ## A258468.P8038363122658011208

`lcm(n+1-∏{e}[n+1, #+1], -xor(n, -1))`
-/

namespace A258468.P8038363122658011208
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((n + 1 : ℤ) - ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℤ)) (-Int.xor (n : ℤ) (-1))

end

end A258468.P8038363122658011208

namespace A258468

/-- `lcm(n+1-∏{e}[n+1, #+1], -xor(n, -1))` -/
def P8038363122658011208.Spec : Prop :=
  ∀ n, (P8038363122658011208.a n : ℤ) = A258468 (n + 1)

end A258468

/-! ## A258468.P8612984804196840222

`lcm(n+1, A049820(n+1))`
-/

namespace A258468.P8612984804196840222
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n + 1 : ℤ) (A049820 (n + 1))

end

end A258468.P8612984804196840222

namespace A258468

/-- `lcm(n+1, A049820(n+1))` -/
def P8612984804196840222.Spec : Prop :=
  ∀ n, (P8612984804196840222.a n : ℤ) = A258468 (n + 1)

end A258468

/-! ## A258468.P16430556237728573221

`lcm(xor(n, -1), ∑[1-A341062(n+1)])`
-/

namespace A258468.P16430556237728573221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A341062 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (Int.xor (n : ℤ) (-1)) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A258468.P16430556237728573221

namespace A258468

/-- `lcm(xor(n, -1), ∑[1-A341062(n+1)])` -/
def P16430556237728573221.Spec : Prop :=
  ∀ n, (P16430556237728573221.a n : ℤ) = A258468 (n + 1)

end A258468

/-! ## A258468.P8605602678055516126

`lcm(A032741(n+1)-n, Δ[n²]-n)`
-/

namespace A258468.P8605602678055516126
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A032741 (n + 1) - (n : ℤ)) ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ))

end

end A258468.P8605602678055516126

namespace A258468

/-- `lcm(A032741(n+1)-n, Δ[n²]-n)` -/
def P8605602678055516126.Spec : Prop :=
  ∀ n, (P8605602678055516126.a n : ℤ) = A258468 (n + 1)

end A258468

/-! ## A258468.P12179364351570004137

`lcm(1-char[1]+n, 1-A062968(n+1))`
-/

namespace A258468.P12179364351570004137
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (1 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + (n : ℤ)) (1 - A062968 (n + 1))

end

end A258468.P12179364351570004137

namespace A258468

/-- `lcm(1-char[1]+n, 1-A062968(n+1))` -/
def P12179364351570004137.Spec : Prop :=
  ∀ n, (P12179364351570004137.a n : ℤ) = A258468 (n + 1)

end A258468

/-! ## A258468.P761009657001012272

`lcm(A049820(n+1), A131738(n))`
-/

namespace A258468.P761009657001012272
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A049820 (n + 1)) (A131738 n)

end

end A258468.P761009657001012272

namespace A258468

/-- `lcm(A049820(n+1), A131738(n))` -/
def P761009657001012272.Spec : Prop :=
  ∀ n, (P761009657001012272.a n : ℤ) = A258468 (n + 1)

end A258468

/-! ## A258468.P6329478796096318631

`A049820(n+1)*A090395(n+1)`
-/

namespace A258468.P6329478796096318631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049820 (n + 1) * A090395 (n + 1)

end

end A258468.P6329478796096318631

namespace A258468

/-- `A049820(n+1)*A090395(n+1)` -/
def P6329478796096318631.Spec : Prop :=
  ∀ n, P6329478796096318631.a n = A258468 (n + 1)

end A258468

/-! ## A258468.P12721819281534097530

`lcm(A000005(n+1)-A000027(n+1), A000027(n+1))`
-/

namespace A258468.P12721819281534097530
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000005 (n + 1) - A000027 (n + 1)) (A000027 (n + 1))

end

end A258468.P12721819281534097530

namespace A258468

/-- `lcm(A000005(n+1)-A000027(n+1), A000027(n+1))` -/
def P12721819281534097530.Spec : Prop :=
  ∀ n, (P12721819281534097530.a n : ℤ) = A258468 (n + 1)

end A258468

/-!
# A258469: Numbers m such that A062234(m) != A062234(m+1).

The programs for A258469, the canonical program `A258469.P13825212742255435643` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A258469 has offset 1).

The definition of A258469 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9263 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A258469.P13825212742255435643

`A258432(eq[1, A258383(n+1)]+1)`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A258469

/-- `A258432(eq[1, A258383(n+1)]+1)` -/
def P13825212742255435643.Spec : Prop :=
  ∀ n, P13825212742255435643.a n = A258469 (n + 1)

theorem P13825212742255435643.correct : P13825212742255435643.Spec := by
  intro n
  simp only [A258469, Nat.add_sub_cancel]

end A258469

/-! ## A258469.P11685605446487728238

`record[A258432(n+5)/A258383(n+5)]`
-/

namespace A258469.P11685605446487728238
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A258432 (n + 5) : ℚ) / (A258383 (n + 5) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A258469.P11685605446487728238

namespace A258469

/-- `record[A258432(n+5)/A258383(n+5)]` -/
def P11685605446487728238.Spec : Prop :=
  ∀ n, P11685605446487728238.a n = (A258469 (n + 1) : ℚ)

end A258469

/-! ## A258469.P15343144158170177429

`∩[∑[A258383(n+1)], A258432(n+1)]`
-/

namespace A258469.P15343144158170177429
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258383 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258432 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f3 j = (x : ℤ)) n

end

end A258469.P15343144158170177429

namespace A258469

/-- `∩[∑[A258383(n+1)], A258432(n+1)]` -/
def P15343144158170177429.Spec : Prop :=
  ∀ n, (P15343144158170177429.a n : ℤ) = A258469 (n + 1)

end A258469

/-! ## A258469.P8087372255033759675

`∩[comp[A257762(n+1)], A258432(n+1)]`
-/

namespace A258469.P8087372255033759675
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257762 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258432 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f3 j = (x : ℤ)) n

end

end A258469.P8087372255033759675

namespace A258469

/-- `∩[comp[A257762(n+1)], A258432(n+1)]` -/
def P8087372255033759675.Spec : Prop :=
  ∀ n, (P8087372255033759675.a n : ℤ) = A258469 (n + 1)

end A258469

/-! ## A258469.P16491413636192705814

`∩[A258432(n+2)-1, A258432(n+2)]`
-/

namespace A258469.P16491413636192705814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258432 (n + 2) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258432 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A258469.P16491413636192705814

namespace A258469

/-- `∩[A258432(n+2)-1, A258432(n+2)]` -/
def P16491413636192705814.Spec : Prop :=
  ∀ n, (P16491413636192705814.a n : ℤ) = A258469 (n + 1)

end A258469

/-!
# A258470: Number of partitions of n of order 10.

The programs for A258470, there is no canonical definition to state claims against.
-/

/-! ## A258470.P18041391965423085675

`A344420(A108754(n+1)^A175782(n))`
-/

namespace A258470.P18041391965423085675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344420 (SequenceMachineLib.roundAway ((A108754 (n + 1) : ℚ) ^ (A175782 n : ℤ))).toNat

end

end A258470.P18041391965423085675

/-!
# A258471: Number of partitions of 2n into two sorts of parts having exactly n parts of the second sort.

The programs for A258471, there is no canonical definition to state claims against.
-/

/-! ## A258471.P11980642894679033125

`A292613(n+1)-A292463(n+1)`
-/

namespace A258471.P11980642894679033125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292613 (n + 1) - A292463 (n + 1)

end

end A258471.P11980642894679033125

/-! ## A258471.P14884475261486998597

`A256193(∑[4*n])`
-/

namespace A258471.P14884475261486998597
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256193 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A258471.P14884475261486998597

/-! ## A258471.P6595587248580823113

`A253829(2*(n+1)²)`
-/

namespace A258471.P6595587248580823113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253829 (2 * (n + 1) ^ 2)

end

end A258471.P6595587248580823113

/-! ## A258471.P2069709192974573318

`A292508(A132209(n+1))`
-/

namespace A258471.P2069709192974573318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292508 (A132209 (n + 1)).toNat

end

end A258471.P2069709192974573318

/-! ## A258471.P9384561876217857941

`A292508(A142463(n+1))`
-/

namespace A258471.P9384561876217857941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292508 (A142463 (n + 1)).toNat

end

end A258471.P9384561876217857941

/-! ## A258471.P4167110551606978618

`A292508(A046092(n+1)-1)`
-/

namespace A258471.P4167110551606978618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292508 (A046092 (n + 1) - 1).toNat

end

end A258471.P4167110551606978618

/-! ## A258471.P7770996452752226461

`A292508(A014105(n+1)+n)`
-/

namespace A258471.P7770996452752226461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292508 (A014105 (n + 1) + (n : ℤ)).toNat

end

end A258471.P7770996452752226461

/-! ## A258471.P4037417021287083396

`A292508(∑[record[A145979(n)+2]])`
-/

namespace A258471.P4037417021287083396
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145979 n + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292508 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A258471.P4037417021287083396

/-! ## A258471.P1635966000403791787

`A292508(A008574(∑[n+1])-1)`
-/

namespace A258471.P1635966000403791787
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292508 (A008574 (∑ j ∈ Finset.range (n + 1), f1 j) - 1).toNat

end

end A258471.P1635966000403791787

/-!
# A258472: Number of partitions of n into two sorts of parts having exactly 2 parts of the second sort.

The programs for A258472, there is no canonical definition to state claims against.
-/

/-! ## A258472.P5142846915437469972

`A094533(n+2)/2`
-/

namespace A258472.P5142846915437469972
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A094533 (n + 2) : ℚ) / 2

end

end A258472.P5142846915437469972

/-! ## A258472.P13201751835816510725

`A256193(∑[n+2]+3)`
-/

namespace A258472.P13201751835816510725
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256193 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A258472.P13201751835816510725

/-! ## A258472.P10884844349154425116

`lcm(A033999(n), A256193(A055998(n)+5))`
-/

namespace A258472.P10884844349154425116
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A256193 (A055998 n + 5).toNat)

end

end A258472.P10884844349154425116

/-! ## A258472.P12617952956352300288

`char[A001057(n)]*A256193(A055998(n)+5)`
-/

namespace A258472.P12617952956352300288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A256193 (A055998 n + 5).toNat

end

end A258472.P12617952956352300288

/-! ## A258472.P10027311028173251768

`A256193(A055998(n)+5)+A000035(2*n)`
-/

namespace A258472.P10027311028173251768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256193 (A055998 n + 5).toNat + A000035 (2 * n)

end

end A258472.P10027311028173251768

/-! ## A258472.P6876838099514997192

`A033999(2*n)*A256193(A055998(n)+5)`
-/

namespace A258472.P6876838099514997192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (2 * n) * A256193 (A055998 n + 5).toNat

end

end A258472.P6876838099514997192

/-! ## A258472.P12424511677795921650

`A256193(A055998(n)+5)%A093069(n+1)`
-/

namespace A258472.P12424511677795921650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A256193 (A055998 n + 5).toNat) (A093069 (n + 1))

end

end A258472.P12424511677795921650

/-! ## A258472.P9194847993015378221

`A256193(A055998(n)+5)+char[A045082(n+1)]`
-/

namespace A258472.P9194847993015378221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045082 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256193 (A055998 n + 5).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A258472.P9194847993015378221

/-!
# A258473: Number of partitions of n into two sorts of parts having exactly 3 parts of the second sort.

The programs for A258473, there is no canonical definition to state claims against.
-/

/-! ## A258473.P2727349474752827063

`A256193(∑[n+3]+6)`
-/

namespace A258473.P2727349474752827063
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256193 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A258473.P2727349474752827063

/-! ## A258473.P12454758678509084865

`A256193(A052905(n)+8)%A002042(n)`
-/

namespace A258473.P12454758678509084865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A256193 (A052905 n + 8).toNat) (A002042 n)

end

end A258473.P12454758678509084865

/-! ## A258473.P11138275890342202911

`A256193(A167614(n+2))%A301995(n+1)`
-/

namespace A258473.P11138275890342202911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A256193 (A167614 (n + 2)).toNat) (A301995 (n + 1))

end

end A258473.P11138275890342202911

/-! ## A258473.P7445326326407595261

`A256193(eq[3, A002262(n)])+A000007(n+1)`
-/

namespace A258473.P7445326326407595261
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256193 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) + A000007 (n + 1)

end

end A258473.P7445326326407595261

/-! ## A258473.P13825855227845804777

`A256193(eq[3, A002262(n)])%A231654(n+3)`
-/

namespace A258473.P13825855227845804777
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A256193 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)) (A231654 (n + 3))

end

end A258473.P13825855227845804777

/-! ## A258473.P4855473263631212612

`A256193(eq[3, A002262(n)])^(A038573(n)%2)`
-/

namespace A258473.P4855473263631212612
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A256193 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) : ℚ) ^ (Int.tmod (A038573 n) 2 : ℤ)

end

end A258473.P4855473263631212612

/-! ## A258473.P12208997763505352770

`A256193(A052905(n)+8)+A121262(2*n+1)`
-/

namespace A258473.P12208997763505352770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256193 (A052905 n + 8).toNat + A121262 (2 * n + 1)

end

end A258473.P12208997763505352770

/-! ## A258473.P4139914593885093121

`lcm(A256175(n+1), A256193(A000217(n+3)+3))`
-/

namespace A258473.P4139914593885093121
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A256175 (n + 1)) (A256193 (A000217 (n + 3) + 3).toNat)

end

end A258473.P4139914593885093121

/-! ## A258473.P10229285565922870111

`A010051(A000040(n+1))*A256193(A052905(n)+8)`
-/

namespace A258473.P10229285565922870111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A000040 (n + 1)).toNat * A256193 (A052905 n + 8).toNat

end

end A258473.P10229285565922870111

/-! ## A258473.P4544319502002351895

`A276689(n²)+A256193(eq[3, A002262(n)])`
-/

namespace A258473.P4544319502002351895
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276689 (n ^ 2) + A256193 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A258473.P4544319502002351895

/-!
# A258474: Number of partitions of n into two sorts of parts having exactly 4 parts of the second sort.

The programs for A258474, there is no canonical definition to state claims against.
-/

/-! ## A258474.P7776107163889737942

`A256193(eq[4, A002262(n)])`
-/

namespace A258474.P7776107163889737942
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256193 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A258474.P7776107163889737942

/-! ## A258474.P8484553044885238831

`record[A256193(A167499(n)-1)]`
-/

namespace A258474.P8484553044885238831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256193 (A167499 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A258474.P8484553044885238831

/-! ## A258474.P10636849338662751417

`A256193(A167614(n+3)+1)`
-/

namespace A258474.P10636849338662751417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256193 (A167614 (n + 3) + 1).toNat

end

end A258474.P10636849338662751417

/-! ## A258474.P15357496068970395954

`A256193(A167499(n+3)-1)`
-/

namespace A258474.P15357496068970395954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256193 (A167499 (n + 3) - 1).toNat

end

end A258474.P15357496068970395954

/-! ## A258474.P7474034029381266849

`A256193(A133263(n+4)+2)`
-/

namespace A258474.P7474034029381266849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256193 (A133263 (n + 4) + 2).toNat

end

end A258474.P7474034029381266849

/-! ## A258474.P10711405866082796593

`A256193(A034856(n+3)+6)`
-/

namespace A258474.P10711405866082796593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256193 (A034856 (n + 3) + 6).toNat

end

end A258474.P10711405866082796593

/-! ## A258474.P14901203874872252310

`A256193(A245467(2*(n+4))+4)`
-/

namespace A258474.P14901203874872252310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256193 (A245467 (2 * (n + 4)) + 4).toNat

end

end A258474.P14901203874872252310

/-! ## A258474.P10083843045019049296

`A256193(eq[2, A144328(n+1)-2])`
-/

namespace A258474.P10083843045019049296
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256193 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A258474.P10083843045019049296

/-! ## A258474.P4397259429562149888

`A256193(eq[2, A144328(n+1)/2])`
-/

namespace A258474.P4397259429562149888
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A144328 (n + 1) : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256193 (SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n)

end

end A258474.P4397259429562149888

/-!
# A258475: Number of partitions of n into two sorts of parts having exactly 5 parts of the second sort.

The programs for A258475, there is no canonical definition to state claims against.
-/

/-! ## A258475.P382046629916152643

`A256193(A167499(n+4))`
-/

namespace A258475.P382046629916152643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256193 (A167499 (n + 4)).toNat

end

end A258475.P382046629916152643

/-! ## A258475.P17908637599480554569

`A256193(A077169(n+6))`
-/

namespace A258475.P17908637599480554569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256193 (A077169 (n + 6)).toNat

end

end A258475.P17908637599480554569

/-! ## A258475.P13678598837894988029

`A256193(eq[5, A002262(n)])`
-/

namespace A258475.P13678598837894988029
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256193 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A258475.P13678598837894988029

/-! ## A258475.P8113349384799265655

`A256193(A167614(n+4)+2)`
-/

namespace A258475.P8113349384799265655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256193 (A167614 (n + 4) + 2).toNat

end

end A258475.P8113349384799265655

/-! ## A258475.P13687448740165807843

`A256193(A000124(n+5)+4)`
-/

namespace A258475.P13687448740165807843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256193 (A000124 (n + 5) + 4).toNat

end

end A258475.P13687448740165807843

/-! ## A258475.P3098492025358899319

`A256193(eq[6, A002260(n+1)])`
-/

namespace A258475.P3098492025358899319
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256193 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A258475.P3098492025358899319

/-! ## A258475.P9740188398332955625

`A256193(A000217(n+6)-(n+1))`
-/

namespace A258475.P9740188398332955625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256193 (A000217 (n + 6) - (n + 1 : ℤ)).toNat

end

end A258475.P9740188398332955625

/-! ## A258475.P787495115343954783

`A256193(A161680(n+4)+A005843(n+7))`
-/

namespace A258475.P787495115343954783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256193 (A161680 (n + 4) + A005843 (n + 7)).toNat

end

end A258475.P787495115343954783

/-!
# A258476: Number of partitions of n into two sorts of parts having exactly 6 parts of the second sort.

The programs for A258476, there is no canonical definition to state claims against.
-/

/-! ## A258476.P8853895895862598819

`A256193(A166136(n+5))`
-/

namespace A258476.P8853895895862598819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256193 (A166136 (n + 5)).toNat

end

end A258476.P8853895895862598819

/-! ## A258476.P8184775678710521264

`A256193(eq[6, A002262(n)])`
-/

namespace A258476.P8184775678710521264
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256193 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A258476.P8184775678710521264

/-! ## A258476.P13278313334464972617

`A256193(eq[7, A002260(n+1)])`
-/

namespace A258476.P13278313334464972617
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256193 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A258476.P13278313334464972617

/-! ## A258476.P749029387879436056

`A256193(A000217(n+7)-(n+1))`
-/

namespace A258476.P749029387879436056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256193 (A000217 (n + 7) - (n + 1 : ℤ)).toNat

end

end A258476.P749029387879436056

/-! ## A258476.P2213972048234876133

`A256193(A133263(n+7)+A001489(n+3))`
-/

namespace A258476.P2213972048234876133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256193 (A133263 (n + 7) + A001489 (n + 3)).toNat

end

end A258476.P2213972048234876133

/-!
# A258477: Number of partitions of n into two sorts of parts having exactly 7 parts of the second sort.

The programs for A258477, there is no canonical definition to state claims against.
-/

/-! ## A258477.P9826172288447214662

`A256193(eq[7, A002262(n)])`
-/

namespace A258477.P9826172288447214662
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256193 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A258477.P9826172288447214662

/-! ## A258477.P13947623294164360112

`A256193(A167614(n+6)+4)`
-/

namespace A258477.P13947623294164360112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256193 (A167614 (n + 6) + 4).toNat

end

end A258477.P13947623294164360112

/-! ## A258477.P6111787899832311744

`A256193(eq[7, A144328(n+1)])`
-/

namespace A258477.P6111787899832311744
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256193 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A258477.P6111787899832311744

/-! ## A258477.P4043265856551966218

`A256193(eq[8, A002260(n+1)])`
-/

namespace A258477.P4043265856551966218
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256193 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A258477.P4043265856551966218

/-! ## A258477.P10161161138780765077

`A256193(A133263(n+8)+A001489(n+3))`
-/

namespace A258477.P10161161138780765077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256193 (A133263 (n + 8) + A001489 (n + 3)).toNat

end

end A258477.P10161161138780765077

/-!
# A258478: Number of partitions of n into two sorts of parts having exactly 8 parts of the second sort.

The programs for A258478, there is no canonical definition to state claims against.
-/

/-! ## A258478.P18094785303859211285

`A256193(A167614(n+7)+5)`
-/

namespace A258478.P18094785303859211285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256193 (A167614 (n + 7) + 5).toNat

end

end A258478.P18094785303859211285

/-! ## A258478.P169375027229082656

`A256193(A055999(n+5)+14)`
-/

namespace A258478.P169375027229082656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256193 (A055999 (n + 5) + 14).toNat

end

end A258478.P169375027229082656

/-! ## A258478.P3720525454373982727

`A256193(A000124(n+9)-(n+2))`
-/

namespace A258478.P3720525454373982727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256193 (A000124 (n + 9) - (n + 2 : ℤ)).toNat

end

end A258478.P3720525454373982727

/-! ## A258478.P10122920235858368361

`A256193(A000217(n+10)-10-A005408(n))`
-/

namespace A258478.P10122920235858368361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256193 (A000217 (n + 10) - 10 - A005408 n).toNat

end

end A258478.P10122920235858368361

/-! ## A258478.P3719533435308951651

`A256193(A052905(n+7)-4-A005843(n+1))`
-/

namespace A258478.P3719533435308951651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256193 (A052905 (n + 7) - 4 - A005843 (n + 1)).toNat

end

end A258478.P3719533435308951651

/-!
# A258479: Number of partitions of n into two sorts of parts having exactly 9 parts of the second sort.

The programs for A258479, there is no canonical definition to state claims against.
-/

/-! ## A258479.P1430691887929943479

`A256193(eq[9, A002262(n)])`
-/

namespace A258479.P1430691887929943479
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256193 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A258479.P1430691887929943479

/-! ## A258479.P6315332231412968666

`A256193(A000096(n+8)+10)`
-/

namespace A258479.P6315332231412968666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256193 (A000096 (n + 8) + 10).toNat

end

end A258479.P6315332231412968666

/-! ## A258479.P11246393911971706321

`A256193(eq[9, A144328(n+1)])`
-/

namespace A258479.P11246393911971706321
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256193 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A258479.P11246393911971706321

/-! ## A258479.P18253859286657314349

`A256193(eq[10, A002260(n+1)])`
-/

namespace A258479.P18253859286657314349
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256193 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A258479.P18253859286657314349

/-! ## A258479.P4391005876842731820

`A256193(A027379(n+8)-(n-2))`
-/

namespace A258479.P4391005876842731820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256193 (A027379 (n + 8) - ((n : ℤ) - 2)).toNat

end

end A258479.P4391005876842731820

/-!
# A258480: Number of partitions of n into two sorts of parts having exactly 10 parts of the second sort.

The programs for A258480, there is no canonical definition to state claims against.
-/

/-! ## A258480.P18197216632614361018

`A256193(eq[10, A002262(n)])`
-/

namespace A258480.P18197216632614361018
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256193 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A258480.P18197216632614361018

/-! ## A258480.P14237908631957398057

`A256193(A000096(n+9)+11)`
-/

namespace A258480.P14237908631957398057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256193 (A000096 (n + 9) + 11).toNat

end

end A258480.P14237908631957398057

/-! ## A258480.P12769005143338162340

`A256193(eq[10, A144328(n+1)])`
-/

namespace A258480.P12769005143338162340
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256193 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A258480.P12769005143338162340

/-! ## A258480.P7606717127925435723

`A256193(eq[11, A002260(n+1)])`
-/

namespace A258480.P7606717127925435723
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256193 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A258480.P7606717127925435723

/-! ## A258480.P17120416786209885900

`A256193(A000217(n+11)-(n+1))`
-/

namespace A258480.P17120416786209885900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256193 (A000217 (n + 11) - (n + 1 : ℤ)).toNat

end

end A258480.P17120416786209885900

/-!
# A258482: Positive numbers n with concatenations n=x//y such that n=x^2-y^2.

The programs for A258482, there is no canonical definition to state claims against.
-/

/-! ## A258482.P12849441075958643004

`A113797(A139763(n)+A113822(n))`
-/

namespace A258482.P12849441075958643004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113797 (A139763 n + A113822 n).toNat

end

end A258482.P12849441075958643004

/-!
# A258483: Numbers n such that partial sums of the n-th row of Pascal's triangle (A007318) are all nonprime.

The programs for A258483, there is no canonical definition to state claims against.
-/

/-! ## A258483.P4951242901576612309

`eq[A000007(n), A258127(A028310(n))]`
-/

namespace A258483.P4951242901576612309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258127 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A258483.P4951242901576612309

/-! ## A258483.P10350499730679622076

`A153152(eq[A000007(n), A258127(n+1)])`
-/

namespace A258483.P10350499730679622076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258127 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A258483.P10350499730679622076

/-! ## A258483.P4141756849534259020

`eq[A000007(n), A258127(A000007(n)+n)]`
-/

namespace A258483.P4141756849534259020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258127 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A258483.P4141756849534259020

/-! ## A258483.P13931451738175604938

`A153152(eq[A000038(n), A258126(n+1)])`
-/

namespace A258483.P13931451738175604938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258126 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A258483.P13931451738175604938

/-! ## A258483.P3167847069716639635

`eq[0, A382817(n)]`
-/

namespace A258483.P3167847069716639635
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382817 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A258483.P3167847069716639635

/-!
# A258484: Numbers m such that m equals a fixed number raised to the powers of the digits.

The programs for A258484, there is no canonical definition to state claims against.
-/

/-! ## A258484.P16008126673880085847

`A262381(n+1)+A086010(A000584(n))`
-/

namespace A258484.P16008126673880085847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262381 (n + 1) + A086010 (A000584 n).toNat

end

end A258484.P16008126673880085847

/-! ## A258484.P12718763343459485670

`A278038(n+1)+A077267(A004642(n))`
-/

namespace A258484.P12718763343459485670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278038 (n + 1) + A077267 (A004642 n).toNat

end

end A258484.P12718763343459485670

/-! ## A258484.P4490402588935518417

`A262381(n+1)+A230298(A088716(n))`
-/

namespace A258484.P4490402588935518417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262381 (n + 1) + A230298 (A088716 n).toNat

end

end A258484.P4490402588935518417

/-!
# A258486: Number of tangled chains of length k=3.

The programs for A258486, there is no canonical definition to state claims against.
-/

/-! ## A258486.P7009706424457322928

`A022955(abs(A292935(n))^A346426(n+1))`
-/

namespace A258486.P7009706424457322928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022955 (SequenceMachineLib.roundAway ((|A292935 n| : ℚ) ^ (A346426 (n + 1) : ℤ))).toNat

end

end A258486.P7009706424457322928

/-!
# A258490: Number of words of length 2n such that all letters of the ternary alphabet occur at least once and are introduced in ascending order and which can be built by repeatedly inserting doublets into the initially empty word.

The programs for A258490, there is no canonical definition to state claims against.
-/

/-! ## A258490.P6888906972266908269

`A256117(A167614(n+2))`
-/

namespace A258490.P6888906972266908269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256117 (A167614 (n + 2)).toNat

end

end A258490.P6888906972266908269

/-! ## A258490.P7417192083297267354

`A256117(A052905(n)+8)`
-/

namespace A258490.P7417192083297267354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256117 (A052905 n + 8).toNat

end

end A258490.P7417192083297267354

/-! ## A258490.P5634145100636918665

`A256117(eq[3, A002262(n)])`
-/

namespace A258490.P5634145100636918665
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256117 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A258490.P5634145100636918665

/-! ## A258490.P7152038740978092294

`A256117(eq[3, A140207(n)])`
-/

namespace A258490.P7152038740978092294
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140207 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256117 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A258490.P7152038740978092294

/-! ## A258490.P17722824536902169448

`A256117(A166136(n+2)-3)`
-/

namespace A258490.P17722824536902169448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256117 (A166136 (n + 2) - 3).toNat

end

end A258490.P17722824536902169448

/-! ## A258490.P2827539198307494823

`A256117(eq[4, A002260(n+1)])`
-/

namespace A258490.P2827539198307494823
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256117 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A258490.P2827539198307494823

/-! ## A258490.P6706157288604244459

`A256117(eq[1, A144328(n+1)-2])`
-/

namespace A258490.P6706157288604244459
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256117 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A258490.P6706157288604244459

/-! ## A258490.P5953455260616487061

`A256117(eq[2, A134868(n+1)-2])`
-/

namespace A258490.P5953455260616487061
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134868 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256117 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A258490.P5953455260616487061

/-! ## A258490.P9703595642814981128

`A256117(eq[2, A134868(n+1)/2])`
-/

namespace A258490.P9703595642814981128
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A134868 (n + 1) : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256117 (SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n)

end

end A258490.P9703595642814981128

/-!
# A258491: Number of words of length 2n such that all letters of the quaternary alphabet occur at least once and are introduced in ascending order and which can be built by repeatedly inserting doublets into the initially empty word.

The programs for A258491, there is no canonical definition to state claims against.
-/

/-! ## A258491.P18444936941629456914

`A256117(A155212(n)+12)`
-/

namespace A258491.P18444936941629456914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256117 (A155212 n + 12).toNat

end

end A258491.P18444936941629456914

/-! ## A258491.P1162910748840795682

`A256117(A056000(n)+14)`
-/

namespace A258491.P1162910748840795682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256117 (A056000 n + 14).toNat

end

end A258491.P1162910748840795682

/-! ## A258491.P15840826816904944264

`A256117(eq[4, A002262(n)])`
-/

namespace A258491.P15840826816904944264
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256117 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A258491.P15840826816904944264

/-! ## A258491.P9276107418783307427

`A256117(eq[16, A059268(n)])`
-/

namespace A258491.P9276107418783307427
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256117 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A258491.P9276107418783307427

/-! ## A258491.P6245604518664699678

`A256117(eq[4, A144328(n+1)])`
-/

namespace A258491.P6245604518664699678
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256117 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A258491.P6245604518664699678

/-! ## A258491.P4256837246037082625

`A256117(eq[5, A002260(n+1)])`
-/

namespace A258491.P4256837246037082625
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256117 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A258491.P4256837246037082625

/-! ## A258491.P12969061302919153450

`A256117(eq[9, A158405(n+1)])`
-/

namespace A258491.P12969061302919153450
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158405 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256117 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A258491.P12969061302919153450

/-!
# A258492: Number of words of length 2n such that all letters of the quinary alphabet occur at least once and are introduced in ascending order and which can be built by repeatedly inserting doublets into the initially empty word.

The programs for A258492, there is no canonical definition to state claims against.
-/

/-! ## A258492.P18381303949996434120

`A256117(A167499(n+4))`
-/

namespace A258492.P18381303949996434120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256117 (A167499 (n + 4)).toNat

end

end A258492.P18381303949996434120

/-! ## A258492.P16159922558624909801

`A256117(eq[5, A002262(n)])`
-/

namespace A258492.P16159922558624909801
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256117 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A258492.P16159922558624909801

/-! ## A258492.P4855985020789154303

`A256117(eq[5, A130270(n+1)])`
-/

namespace A258492.P4855985020789154303
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130270 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256117 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A258492.P4855985020789154303

/-! ## A258492.P7509046458596272347

`A256117(eq[5, A144328(n+1)])`
-/

namespace A258492.P7509046458596272347
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256117 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A258492.P7509046458596272347

/-! ## A258492.P17118783934012127034

`A256117(eq[6, A002260(n+1)])`
-/

namespace A258492.P17118783934012127034
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256117 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A258492.P17118783934012127034

/-!
# A258493: Number of words of length 2n such that all letters of the senary alphabet occur at least once and are introduced in ascending order and which can be built by repeatedly inserting doublets into the initially empty word.

The programs for A258493, there is no canonical definition to state claims against.
-/

/-! ## A258493.P13039552815658872298

`A256117(eq[6, A002262(n)])`
-/

namespace A258493.P13039552815658872298
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256117 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A258493.P13039552815658872298

/-! ## A258493.P18321785579423058034

`A256117(eq[64, A059268(n)])`
-/

namespace A258493.P18321785579423058034
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  64

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256117 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A258493.P18321785579423058034

/-! ## A258493.P2076084235306348530

`A256117(eq[6, A144328(n+1)])`
-/

namespace A258493.P2076084235306348530
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256117 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A258493.P2076084235306348530

/-! ## A258493.P6562393799717011987

`A256117(eq[7, A002260(n+1)])`
-/

namespace A258493.P6562393799717011987
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256117 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A258493.P6562393799717011987

/-! ## A258493.P10727256061517332115

`A256117(eq[13, A158405(n+1)])`
-/

namespace A258493.P10727256061517332115
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158405 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256117 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A258493.P10727256061517332115

/-!
# A258494: Number of words of length 2n such that all letters of the septenary alphabet occur at least once and are introduced in ascending order and which can be built by repeatedly inserting doublets into the initially empty word.

The programs for A258494, there is no canonical definition to state claims against.
-/

/-! ## A258494.P11803832577384929562

`A256117(A167487(n+6))`
-/

namespace A258494.P11803832577384929562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256117 (A167487 (n + 6)).toNat

end

end A258494.P11803832577384929562

/-! ## A258494.P3871091403669144417

`A256117(eq[7, A002262(n)])`
-/

namespace A258494.P3871091403669144417
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256117 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A258494.P3871091403669144417

/-! ## A258494.P12494912271269239450

`A256117(eq[7, A144328(n+1)])`
-/

namespace A258494.P12494912271269239450
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256117 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A258494.P12494912271269239450

/-! ## A258494.P390552653595558373

`A256117(eq[8, A002260(n+1)])`
-/

namespace A258494.P390552653595558373
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256117 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A258494.P390552653595558373

/-! ## A258494.P4000503017817494307

`A256117(eq[19, A037126(n+1)])`
-/

namespace A258494.P4000503017817494307
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  19

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037126 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256117 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A258494.P4000503017817494307

/-!
# A258495: Number of words of length 2n such that all letters of the octonary alphabet occur at least once and are introduced in ascending order and which can be built by repeatedly inserting doublets into the initially empty word.

The programs for A258495, there is no canonical definition to state claims against.
-/

/-! ## A258495.P16329413995075424038

`A256117(eq[8, A002262(n)])`
-/

namespace A258495.P16329413995075424038
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256117 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A258495.P16329413995075424038

/-! ## A258495.P3409912914934689782

`A256117(eq[8, A130270(n+1)])`
-/

namespace A258495.P3409912914934689782
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130270 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256117 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A258495.P3409912914934689782

/-! ## A258495.P10810975025867569969

`A256117(eq[8, A144328(n+1)])`
-/

namespace A258495.P10810975025867569969
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256117 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A258495.P10810975025867569969

/-! ## A258495.P5022753779953288630

`A256117(eq[9, A002260(n+1)])`
-/

namespace A258495.P5022753779953288630
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256117 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A258495.P5022753779953288630

/-! ## A258495.P4119984689339473504

`A256117(eq[9, A134868(n+1)])`
-/

namespace A258495.P4119984689339473504
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134868 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256117 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A258495.P4119984689339473504

/-!
# A258496: Number of words of length 2n such that all letters of the nonary alphabet occur at least once and are introduced in ascending order and which can be built by repeatedly inserting doublets into the initially empty word.

The programs for A258496, there is no canonical definition to state claims against.
-/

/-! ## A258496.P14776013692817783084

`A256117(eq[9, A002262(n)])`
-/

namespace A258496.P14776013692817783084
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256117 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A258496.P14776013692817783084

/-! ## A258496.P15176619320965678213

`A256117(eq[30, A140207(n)])`
-/

namespace A258496.P15176619320965678213
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  30

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140207 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256117 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A258496.P15176619320965678213

/-! ## A258496.P10051579362384451718

`A256117(eq[9, A144328(n+1)])`
-/

namespace A258496.P10051579362384451718
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256117 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A258496.P10051579362384451718

/-! ## A258496.P1752898235894711829

`A256117(eq[10, A002260(n+1)])`
-/

namespace A258496.P1752898235894711829
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256117 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A258496.P1752898235894711829

/-! ## A258496.P6217387786028141838

`A256117(eq[10, A134868(n+1)])`
-/

namespace A258496.P6217387786028141838
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134868 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256117 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A258496.P6217387786028141838

/-!
# A258497: Number of words of length 2n such that all letters of the denary alphabet occur at least once and are introduced in ascending order and which can be built by repeatedly inserting doublets into the initially empty word.

The programs for A258497, there is no canonical definition to state claims against.
-/

/-! ## A258497.P14772209101817506301

`A256117(eq[10, A002262(n)])`
-/

namespace A258497.P14772209101817506301
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256117 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A258497.P14772209101817506301

/-! ## A258497.P15335665846310183996

`A256117(eq[10, A144328(n+1)])`
-/

namespace A258497.P15335665846310183996
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256117 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A258497.P15335665846310183996

/-! ## A258497.P8682822212058677966

`A256117(eq[11, A002260(n+1)])`
-/

namespace A258497.P8682822212058677966
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256117 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A258497.P8682822212058677966

/-! ## A258497.P9680170051662368314

`A256117(eq[11, A134868(n+1)])`
-/

namespace A258497.P9680170051662368314
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134868 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256117 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A258497.P9680170051662368314

/-! ## A258497.P18248812992422825255

`A256117(A161680(n+12)-(n+1))`
-/

namespace A258497.P18248812992422825255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256117 (A161680 (n + 12) - (n + 1 : ℤ)).toNat

end

end A258497.P18248812992422825255

/-!
# A258498: Number of words of length 2n such that the index set of occurring letters is {1, 2, ..., k}, all letters are introduced in ascending order, and the words can be built by repeatedly inserting doublets into the initially empty word.

The programs for A258498, there is no canonical definition to state claims against.
-/

/-! ## A258498.P14684147412790726709

`A189919(n)-A185234(A165653(n))`
-/

namespace A258498.P14684147412790726709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189919 n - A185234 (A165653 n).toNat

end

end A258498.P14684147412790726709

/-! ## A258498.P4269839853407613851

`A022998(A189919(n))`
-/

namespace A258498.P4269839853407613851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022998 (A189919 n).toNat

end

end A258498.P4269839853407613851

/-!
# A258499: Number of words of length 4n such that all letters of the n-ary alphabet occur at least once and are introduced in ascending order and which can be built by repeatedly inserting doublets into the initially empty word.

The programs for A258499, there is no canonical definition to state claims against.
-/

/-! ## A258499.P12143199100405034893

`A256117(∑[4*n])`
-/

namespace A258499.P12143199100405034893
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256117 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A258499.P12143199100405034893

/-! ## A258499.P74548707477424378

`gcd(A000038(n), A256117(A046092(n)))`
-/

namespace A258499.P74548707477424378
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A256117 (A046092 n).toNat)

end

end A258499.P74548707477424378

/-! ## A258499.P8349955654959953628

`lcm(A033999(n), A256117(A046092(n)))`
-/

namespace A258499.P8349955654959953628
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A256117 (A046092 n).toNat)

end

end A258499.P8349955654959953628

/-! ## A258499.P545313917352370605

`or(A000007(n), A256117(A046092(n)))`
-/

namespace A258499.P545313917352370605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A256117 (A046092 n).toNat)

end

end A258499.P545313917352370605

/-! ## A258499.P1313142945081688756

`A000041(val(n+3, 6))*A256117(A046092(n))`
-/

namespace A258499.P1313142945081688756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (SequenceMachineLib.valuation (n + 3) 6) * A256117 (A046092 n).toNat

end

end A258499.P1313142945081688756

