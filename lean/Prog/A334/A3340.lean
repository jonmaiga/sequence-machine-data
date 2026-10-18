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
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C024
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
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
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
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

/-!
# A334000: a(n) = (2*n+1)!! * Sum_{k=0..n} k/(2*k+1).

The programs for A334000, there is no canonical definition to state claims against.
-/

/-! ## A334000.P3178063366194036204

`∑[n/(2*n+1)]*∏[2*n+1]`
-/

namespace A334000.P3178063366194036204
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (2 * n + 1 : ℚ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * ((∏ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℚ)

end

end A334000.P3178063366194036204

/-! ## A334000.P2433757299126672634

`A334066(n+1)-A004041(n)`
-/

namespace A334000.P2433757299126672634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334066 (n + 1) - A004041 n

end

end A334000.P2433757299126672634

/-! ## A334000.P623243195296227990

`A334066(n+1)-A109692(∑[n+2]-1)`
-/

namespace A334000.P623243195296227990
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334066 (n + 1) - A109692 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A334000.P623243195296227990

/-! ## A334000.P12351483483708425295

`A334066(n+1)-A028338(A134869(n+1))`
-/

namespace A334000.P12351483483708425295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334066 (n + 1) - A028338 (A134869 (n + 1)).toNat

end

end A334000.P12351483483708425295

/-! ## A334000.P6366871575843462715

`A334066(n+1)-(A334670(n)+A001147(n+1))`
-/

namespace A334000.P6366871575843462715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334066 (n + 1) - (A334670 n + A001147 (n + 1))

end

end A334000.P6366871575843462715

/-!
# A334002: Number of spanning trees in the graph P_7 x P_n.

The programs for A334002, there is no canonical definition to state claims against.
-/

/-! ## A334002.P3998039018488724979

`A116469(A374008(n+1))`
-/

namespace A334002.P3998039018488724979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116469 (A374008 (n + 1)).toNat

end

end A334002.P3998039018488724979

/-! ## A334002.P7297196034156176551

`A116469(eq[4, A219347(n)])`
-/

namespace A334002.P7297196034156176551
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116469 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A334002.P7297196034156176551

/-! ## A334002.P10196297347189881343

`A116469(eq[6, A193592(n)])`
-/

namespace A334002.P10196297347189881343
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116469 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A334002.P10196297347189881343

/-!
# A334003: Number of spanning trees in the graph P_8 x P_n.

The programs for A334003, there is no canonical definition to state claims against.
-/

/-! ## A334003.P5227913191954860384

`A116469(A374009(n+1))`
-/

namespace A334003.P5227913191954860384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116469 (A374009 (n + 1)).toNat

end

end A334003.P5227913191954860384

/-! ## A334003.P15620706489280884491

`A116469(eq[5, A219347(n)])`
-/

namespace A334003.P15620706489280884491
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116469 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A334003.P15620706489280884491

/-! ## A334003.P7768662346749770768

`A116469(eq[7, A193592(n)])`
-/

namespace A334003.P7768662346749770768
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116469 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A334003.P7768662346749770768

/-!
# A334006: Triangle read by rows: T(n,k) = (the number of nonnegative bases m < n such that m^k == m (mod n))/(the number of nonnegative bases m < n such that -m^k == m (mod n)) for nonnegative k < n, n >= 1.

The programs for A334006, there is no canonical definition to state claims against.
-/

/-! ## A334006.P3323361253338898922

`A337632(n+1)/A337633(n+1)`
-/

namespace A334006.P3323361253338898922
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A337632 (n + 1) : ℚ) / (A337633 (n + 1) : ℚ)

end

end A334006.P3323361253338898922

/-! ## A334006.P9044395279020244286

`A337820(A245300(n)+1)`
-/

namespace A334006.P9044395279020244286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337820 (A245300 n + 1).toNat

end

end A334006.P9044395279020244286

/-! ## A334006.P11008485956007440486

`gcd(A337632(n+1), A337643(A265509(n)))`
-/

namespace A334006.P11008485956007440486
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A337632 (n + 1)) (A337643 (A265509 n).toNat)

end

end A334006.P11008485956007440486

/-! ## A334006.P8579524374564042834

`gcd(A000217(A000213(n)), A267836(n+1))`
-/

namespace A334006.P8579524374564042834
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000217 (A000213 n).toNat) (A267836 (n + 1))

end

end A334006.P8579524374564042834

/-! ## A334006.P14884640659250520629

`A337632(n+1)/A353741(A315446(n)-A032741(n))`
-/

namespace A334006.P14884640659250520629
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A337632 (n + 1) : ℚ) / (A353741 (A315446 n - A032741 n).toNat : ℚ)

end

end A334006.P14884640659250520629

/-!
# A334009: Triangle read by rows: T(n, k) = binomial(n + k - 1, 2*k - 1) * 4^(k - 1) * n/k, 1 <= k <= n.

The programs for A334009, the canonical program `A334009.P17908156774807028384` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A334009 has offset 1).

The definition of A334009 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8868 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A334009.P17908156774807028384

`A059268(n)²*A156308(n+1)`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A334009

/-- `A059268(n)²*A156308(n+1)` -/
def P17908156774807028384.Spec : Prop :=
  ∀ n, P17908156774807028384.a n = A334009 (n + 1)

theorem P17908156774807028384.correct : P17908156774807028384.Spec := by
  intro n
  simp only [A334009, Nat.add_sub_cancel]

end A334009

/-! ## A334009.P12481348300267197726

`A000302(A002262(n))*A156308(n+1)`
-/

namespace A334009.P12481348300267197726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000302 (A002262 n).toNat * A156308 (n + 1)

end

end A334009.P12481348300267197726

namespace A334009

/-- `A000302(A002262(n))*A156308(n+1)` -/
def P12481348300267197726.Spec : Prop :=
  ∀ n, P12481348300267197726.a n = A334009 (n + 1)

end A334009

/-! ## A334009.P260545534968097521

`A082649(∑[char[∑[n]]]²-n)`
-/

namespace A334009.P260545534968097521
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082649 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A334009.P260545534968097521

namespace A334009

/-- `A082649(∑[char[∑[n]]]²-n)` -/
def P260545534968097521.Spec : Prop :=
  ∀ n, P260545534968097521.a n = A334009 (n + 1)

end A334009

/-! ## A334009.P3477795781267704761

`A233295(A245300(n)+A002262(n))`
-/

namespace A334009.P3477795781267704761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233295 (A245300 n + A002262 n).toNat

end

end A334009.P3477795781267704761

namespace A334009

/-- `A233295(A245300(n)+A002262(n))` -/
def P3477795781267704761.Spec : Prop :=
  ∀ n, P3477795781267704761.a n = A334009 (n + 1)

end A334009

/-! ## A334009.P7804205348505146048

`abs(A123588(comp[∑[n]]))`
-/

namespace A334009.P7804205348505146048
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A123588 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)|

end

end A334009.P7804205348505146048

namespace A334009

/-- `abs(A123588(comp[∑[n]]))` -/
def P7804205348505146048.Spec : Prop :=
  ∀ n, P7804205348505146048.a n = A334009 (n + 1)

end A334009

/-! ## A334009.P8687230607921191973

`A157901(A185869(n+1))`
-/

namespace A334009.P8687230607921191973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157901 (A185869 (n + 1)).toNat

end

end A334009.P8687230607921191973

namespace A334009

/-- `A157901(A185869(n+1))` -/
def P8687230607921191973.Spec : Prop :=
  ∀ n, P8687230607921191973.a n = A334009 (n + 1)

end A334009

/-!
# A334015: Perimeters of integer-sided triangles with at least one prime median.

The programs for A334015, there is no canonical definition to state claims against.
-/

/-! ## A334015.P2119263116411944942

`A076771(comp[C(5, A052126(n+2))]-1)`
-/

namespace A334015.P2119263116411944942
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 5 (A052126 (n + 2)).toNat

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076771 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n - 1)

end

end A334015.P2119263116411944942

/-! ## A334015.P9206525820802359668

`2*A119486(A166546(n+1))`
-/

namespace A334015.P9206525820802359668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A119486 (A166546 (n + 1)).toNat

end

end A334015.P9206525820802359668

/-! ## A334015.P18366048443502844999

`A160810(A024913(n+1)*A287378(n))`
-/

namespace A334015.P18366048443502844999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160810 (A024913 (n + 1) * A287378 n).toNat

end

end A334015.P18366048443502844999

/-! ## A334015.P13540061644388513659

`A160810(A024913(n+1)^A287378(n))`
-/

namespace A334015.P13540061644388513659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160810 (SequenceMachineLib.roundAway ((A024913 (n + 1) : ℚ) ^ (A287378 n : ℤ))).toNat

end

end A334015.P13540061644388513659

/-!
# A334016: Table read by antidiagonals upward: T(n,k) is the number of ways to move a chess queen from (1,1) to (n,k) in the first quadrant using only right, diagonal up-right, and diagonal up-left moves.

The programs for A334016, there is no canonical definition to state claims against.
-/

/-! ## A334016.P17150689306028767456

`A193739(C(A000041(n), A326619(2*(n+2))))`
-/

namespace A334016.P17150689306028767456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 (Nat.choose (A000041 n).toNat (A326619 (2 * (n + 2))).toNat)

end

end A334016.P17150689306028767456

/-!
# A334017: Table read by antidiagonals upward: T(n,k) is the number of ways to move a chess queen from (1,1) to (n,k) in the first quadrant using only up, right, and diagonal up-left moves.

The programs for A334017, there is no canonical definition to state claims against.
-/

/-! ## A334017.P3287180173768769652

`A230443(A024718(n)-A010815(n+2))`
-/

namespace A334017.P3287180173768769652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230443 (A024718 n - A010815 (n + 2)).toNat

end

end A334017.P3287180173768769652

/-! ## A334017.P3678249060715489981

`xor(A137734(A008336(n+1)), A271484(n))`
-/

namespace A334017.P3678249060715489981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A137734 (A008336 (n + 1)).toNat) (A271484 n)

end

end A334017.P3678249060715489981

/-!
# A334018: Sum of the middle side lengths of all primitive Heronian triangles with perimeter A096468(n).

The programs for A334018, there is no canonical definition to state claims against.
-/

/-! ## A334018.P11464281288953288041

`A334120(n+1)+A334970(n+1)-A330874(n+1)`
-/

namespace A334018.P11464281288953288041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334120 (n + 1) + (A334970 (n + 1) - A330874 (n + 1))

end

end A334018.P11464281288953288041

/-!
# A334019: Sum of unitary divisors of n that are smaller than sqrt(n).

The programs for A334019, there is no canonical definition to state claims against.
-/

/-! ## A334019.P5748327601305117549

`(A034448(n+1)-A334023(n+1))%(n+1)`
-/

namespace A334019.P5748327601305117549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A034448 (n + 1) - A334023 (n + 1)) (n + 1 : ℤ)

end

end A334019.P5748327601305117549

/-! ## A334019.P13196265599989026750

`∑{d}[n+1, A046692(#)*A064947((n+1)/#)]`
-/

namespace A334019.P13196265599989026750
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A046692 d * A064947 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A334019.P13196265599989026750

/-! ## A334019.P258944578899249449

`A034448(n+1)-(A334023(n+1)+A000007(n))`
-/

namespace A334019.P258944578899249449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034448 (n + 1) - (A334023 (n + 1) + A000007 n)

end

end A334019.P258944578899249449

/-! ## A334019.P17842728144351733088

`A034448(n+1)-A028310(A334023(n+1))`
-/

namespace A334019.P17842728144351733088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034448 (n + 1) - A028310 (A334023 (n + 1)).toNat

end

end A334019.P17842728144351733088

/-! ## A334019.P4793045419652698617

`A345451(n+1)+1-A028310(A334023(n+1))`
-/

namespace A334019.P4793045419652698617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345451 (n + 1) + (1 - A028310 (A334023 (n + 1)).toNat)

end

end A334019.P4793045419652698617

/-!
# A334020: Numbers k such that s(k) = s(k+1), where s(k) is the sum of unitary divisors of k that are smaller than sqrt(k) (A334019).

The programs for A334020, there is no canonical definition to state claims against.
-/

/-! ## A334020.P7710424132388924037

`eq[A334019(n+1), A334019(n+2)]+1`
-/

namespace A334020.P7710424132388924037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334019 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334019 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A334020.P7710424132388924037

/-!
# A334021: Numbers k such that s(k) = s(k+1) = s(k+2), where s(k) is the sum of unitary divisors of k that are smaller than sqrt(k) (A334019).

The programs for A334021, there is no canonical definition to state claims against.
-/

/-! ## A334021.P10518481863623054848

`∩[A334020(n+1)-1, A334020(n+1)]`
-/

namespace A334021.P10518481863623054848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334020 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334020 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A334021.P10518481863623054848

/-!
# A334023: Sum of unitary divisors of n that are larger than sqrt(n).

The programs for A334023, there is no canonical definition to state claims against.
-/

/-! ## A334023.P15492491589886853542

`∑{d}[n+1, A046692(#)*A064946((n+1)/#)]`
-/

namespace A334023.P15492491589886853542
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A046692 d * A064946 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A334023.P15492491589886853542

/-! ## A334023.P9602621318024777360

`A034448(n+1)-A028310(A334019(n+1))`
-/

namespace A334023.P9602621318024777360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034448 (n + 1) - A028310 (A334019 (n + 1)).toNat

end

end A334023.P9602621318024777360

/-! ## A334023.P10589879270031167355

`A345451(n+1)+1-A028310(A334019(n+1))`
-/

namespace A334023.P10589879270031167355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345451 (n + 1) + (1 - A028310 (A334019 (n + 1)).toNat)

end

end A334023.P10589879270031167355

/-! ## A334023.P16751123418600461872

`A034448(n+1)-(A334019(n+1)+A000007(n))`
-/

namespace A334023.P16751123418600461872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034448 (n + 1) - (A334019 (n + 1) + A000007 n)

end

end A334023.P16751123418600461872

/-! ## A334023.P8213444448977908419

`A034448(n+1)%A007691(n+1)-A334019(n+1)`
-/

namespace A334023.P8213444448977908419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A034448 (n + 1)) (A007691 (n + 1)) - A334019 (n + 1)

end

end A334023.P8213444448977908419

/-!
# A334025: a(0)=0, a(1)=1; and a(n) = {2*a(n-2), 2*a(n-1)}, where {x,y} is the concatenation of x and y.

The programs for A334025, there is no canonical definition to state claims against.
-/

/-! ## A334025.P16474871493600929379

`n*A213948(∑[2^n])`
-/

namespace A334025.P16474871493600929379
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A213948 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A334025.P16474871493600929379

/-!
# A334026: Primes p such that 2*p and 4*p are 1 away from a prime.

The programs for A334026, the canonical program `A334026.P15646168713257783840` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A334026 has offset 1).

The definition of A334026 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 244 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A334026.P15646168713257783840

`∩[A120628(n+1), A120639(n+1)]`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A334026

/-- `∩[A120628(n+1), A120639(n+1)]` -/
def P15646168713257783840.Spec : Prop :=
  ∀ n, (P15646168713257783840.a n : ℤ) = A334026 (n + 1)

theorem P15646168713257783840.correct : P15646168713257783840.Spec := by
  intro n
  simp only [A334026, Nat.add_sub_cancel]

end A334026

/-! ## A334026.P14904760261787630528

`∩[A120639(n+1), A147820(n+1)]`
-/

namespace A334026.P14904760261787630528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120639 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147820 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A334026.P14904760261787630528

namespace A334026

/-- `∩[A120639(n+1), A147820(n+1)]` -/
def P14904760261787630528.Spec : Prop :=
  ∀ n, (P14904760261787630528.a n : ℤ) = A334026 (n + 1)

end A334026

/-!
# A334027: "Look and say" the concatenated exponents in the prime factorization of n.

The programs for A334027, there is no canonical definition to state claims against.
-/

/-! ## A334027.P1342869093264116392

`A045918(A037916(n+1))`
-/

namespace A334027.P1342869093264116392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045918 (A037916 (n + 1)).toNat

end

end A334027.P1342869093264116392

/-! ## A334027.P1917532505400299055

`A244112((A091536(n)+1)*A037916(n+1))`
-/

namespace A334027.P1917532505400299055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244112 ((A091536 n + 1) * A037916 (n + 1)).toNat

end

end A334027.P1917532505400299055

/-!
# A334028: Number of distinct parts in the n-th composition in standard order.

The programs for A334028, there is no canonical definition to state claims against.
-/

/-! ## A334028.P14674092953892456646

`A124765(A233569(n))`
-/

namespace A334028.P14674092953892456646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124765 (A233569 n).toNat

end

end A334028.P14674092953892456646

/-! ## A334028.P14819014348255829321

`A001221(A333219(n+1))`
-/

namespace A334028.P14819014348255829321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A333219 (n + 1)).toNat

end

end A334028.P14819014348255829321

/-! ## A334028.P600545313395295634

`A001221(A358506(n+1))`
-/

namespace A334028.P600545313395295634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A358506 (n + 1)).toNat

end

end A334028.P600545313395295634

/-! ## A334028.P17072913886340947836

`A355523(2*A253565(n))`
-/

namespace A334028.P17072913886340947836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355523 (2 * A253565 n).toNat

end

end A334028.P17072913886340947836

/-! ## A334028.P705333858436776475

`A063962(A333219(n+1)²)`
-/

namespace A334028.P705333858436776475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063962 (A333219 (n + 1) ^ 2).toNat

end

end A334028.P705333858436776475

/-! ## A334028.P6165877050640509875

`A056170(A358506(n+1)²)`
-/

namespace A334028.P6165877050640509875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056170 (A358506 (n + 1) ^ 2).toNat

end

end A334028.P6165877050640509875

/-! ## A334028.P6695656833373537952

`A355523(A005940(2*(n+1)))`
-/

namespace A334028.P6695656833373537952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355523 (A005940 (2 * (n + 1))).toNat

end

end A334028.P6695656833373537952

/-! ## A334028.P631998897476336513

`∑{p}[A333219(n+1), A115570(#)]`
-/

namespace A334028.P631998897476336513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333219 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A115570 p

end

end A334028.P631998897476336513

/-! ## A334028.P6651341121941508285

`A297770(A048678(2*n+1))-1`
-/

namespace A334028.P6651341121941508285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297770 (A048678 (2 * n + 1)).toNat - 1

end

end A334028.P6651341121941508285

/-! ## A334028.P1632342943763780129

`A001221(A325351(A253565(n)))`
-/

namespace A334028.P1632342943763780129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A325351 (A253565 n).toNat).toNat

end

end A334028.P1632342943763780129

/-!
# A334029: Length of the co-Lyndon factorization of the k-th composition in standard order.

The programs for A334029, there is no canonical definition to state claims against.
-/

/-! ## A334029.P10686227090964951064

`A211100(Δ[n²])-1`
-/

namespace A334029.P10686227090964951064
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211100 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - 1

end

end A334029.P10686227090964951064

/-! ## A334029.P15343722319335094200

`A211097(4*n+1)-1`
-/

namespace A334029.P15343722319335094200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211097 (4 * n + 1) - 1

end

end A334029.P15343722319335094200

/-! ## A334029.P10993832480860791429

`abs(1-A211100(comp[2*n]))`
-/

namespace A334029.P10993832480860791429
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A211100 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)|

end

end A334029.P10993832480860791429

/-! ## A334029.P16064252150627566869

`abs(A211100(2*n+1)-1)`
-/

namespace A334029.P16064252150627566869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A211100 (2 * n + 1) - 1|

end

end A334029.P16064252150627566869

/-! ## A334029.P1292273427332015171

`(∑[round(sqrt(2*n))!]-1)%A211100((n+1)²-n²)`
-/

namespace A334029.P1292273427332015171
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (SequenceMachineLib.roundAway (Real.sqrt (2 * n : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1) (A211100 ((n + 1) ^ 2 - n ^ 2))

end

end A334029.P1292273427332015171

/-! ## A334029.P14901743273875868077

`A002113(A211100(Δ[n²]))`
-/

namespace A334029.P14901743273875868077
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (A211100 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat

end

end A334029.P14901743273875868077

/-! ## A334029.P13911831202210625546

`A002837(A211100(2*n+1))`
-/

namespace A334029.P13911831202210625546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002837 (A211100 (2 * n + 1)).toNat

end

end A334029.P13911831202210625546

/-! ## A334029.P16932131078248700188

`A023443(∑{digits}[A211100(2*n+1), #])`
-/

namespace A334029.P16932131078248700188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211100 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A334029.P16932131078248700188

/-! ## A334029.P8985582172229166

`(A211100(comp[2*n])-1)%A000040(n+1)`
-/

namespace A334029.P8985582172229166
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A211100 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) - 1) (A000040 (n + 1))

end

end A334029.P8985582172229166

/-! ## A334029.P6993309914008261259

`dr(A211097(4*n+1)+or(-1, A000041(n)))`
-/

namespace A334029.P6993309914008261259
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A211097 (4 * n + 1) + Int.lor (-1) (A000041 n))

end

end A334029.P6993309914008261259

/-!
# A334031: The smallest number whose unsorted prime signature is the reversed n-th composition in standard order.

The programs for A334031, the canonical program `A334031.P10362019944670367521` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A334031 has offset 0).

The definition of A334031 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8193 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A334031.P10362019944670367521

`A057335(A145342(n+1)-1)`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A334031

/-- `A057335(A145342(n+1)-1)` -/
def P10362019944670367521.Spec : Prop :=
  ∀ n, P10362019944670367521.a n = A334031 n

theorem P10362019944670367521.correct : P10362019944670367521.Spec := by
  intro n
  simp only [A334031]

end A334031

/-! ## A334031.P5891337857207345573

`A057335(A003188(A341916(n)))`
-/

namespace A334031.P5891337857207345573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057335 (A003188 (A341916 n).toNat).toNat

end

end A334031.P5891337857207345573

namespace A334031

/-- `A057335(A003188(A341916(n)))` -/
def P5891337857207345573.Spec : Prop :=
  ∀ n, P5891337857207345573.a n = A334031 n

end A334031

/-! ## A334031.P8622525544703321013

`A163755(A006068(n))`
-/

namespace A334031.P8622525544703321013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163755 (A006068 n).toNat

end

end A334031.P8622525544703321013

namespace A334031

/-- `A163755(A006068(n))` -/
def P8622525544703321013.Spec : Prop :=
  ∀ n, P8622525544703321013.a n = A334031 n

end A334031

/-! ## A334031.P5366553707584731789

`A163755(A292600(2*n))`
-/

namespace A334031.P5366553707584731789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163755 (A292600 (2 * n)).toNat

end

end A334031.P5366553707584731789

namespace A334031

/-- `A163755(A292600(2*n))` -/
def P5366553707584731789.Spec : Prop :=
  ∀ n, P5366553707584731789.a n = A334031 n

end A334031

/-! ## A334031.P9427433036288966066

`A163755(A268716(n)/2)`
-/

namespace A334031.P9427433036288966066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163755 (SequenceMachineLib.roundAway ((A268716 n : ℚ) / 2)).toNat

end

end A334031.P9427433036288966066

namespace A334031

/-- `A163755(A268716(n)/2)` -/
def P9427433036288966066.Spec : Prop :=
  ∀ n, P9427433036288966066.a n = A334031 n

end A334031

/-! ## A334031.P2457182991474839183

`A163755(xor(n, A292600(n)))`
-/

namespace A334031.P2457182991474839183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163755 (Int.xor (n : ℤ) (A292600 n)).toNat

end

end A334031.P2457182991474839183

namespace A334031

/-- `A163755(xor(n, A292600(n)))` -/
def P2457182991474839183.Spec : Prop :=
  ∀ n, P2457182991474839183.a n = A334031 n

end A334031

/-! ## A334031.P2331160750564852121

`A163755(A066194(n+1)-1)`
-/

namespace A334031.P2331160750564852121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163755 (A066194 (n + 1) - 1).toNat

end

end A334031.P2331160750564852121

namespace A334031

/-- `A163755(A066194(n+1)-1)` -/
def P2331160750564852121.Spec : Prop :=
  ∀ n, P2331160750564852121.a n = A334031 n

end A334031

/-! ## A334031.P14566519830649505878

`A057335(A030109(2*n+1))`
-/

namespace A334031.P14566519830649505878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057335 (A030109 (2 * n + 1)).toNat

end

end A334031.P14566519830649505878

namespace A334031

/-- `A057335(A030109(2*n+1))` -/
def P14566519830649505878.Spec : Prop :=
  ∀ n, P14566519830649505878.a n = A334031 n

end A334031

/-! ## A334031.P9355966764794114087

`A163755(A268714(∑[n]))`
-/

namespace A334031.P9355966764794114087
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163755 (A268714 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A334031.P9355966764794114087

namespace A334031

/-- `A163755(A268714(∑[n]))` -/
def P9355966764794114087.Spec : Prop :=
  ∀ n, P9355966764794114087.a n = A334031 n

end A334031

/-! ## A334031.P13759583083768731525

`A069799(A057335(n))`
-/

namespace A334031.P13759583083768731525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069799 (A057335 n).toNat

end

end A334031.P13759583083768731525

namespace A334031

/-- `A069799(A057335(n))` -/
def P13759583083768731525.Spec : Prop :=
  ∀ n, P13759583083768731525.a n = A334031 n

end A334031

/-!
# A334032: The a(n)-th composition in standard order (graded reverse-lexicographic) is the unsorted prime signature of n.

The programs for A334032, there is no canonical definition to state claims against.
-/

/-! ## A334032.P2274175180725932081

`A048675(A329607(n+1))`
-/

namespace A334032.P2274175180725932081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048675 (A329607 (n + 1)).toNat

end

end A334032.P2274175180725932081

/-! ## A334032.P17488411343600950600

`A297404(A329600(n+1))`
-/

namespace A334032.P17488411343600950600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297404 (A329600 (n + 1)).toNat

end

end A334032.P17488411343600950600

/-! ## A334032.P13164382678281889445

`A248663(4*A329607(n+1))`
-/

namespace A334032.P13164382678281889445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248663 (4 * A329607 (n + 1)).toNat

end

end A334032.P13164382678281889445

/-! ## A334032.P17535267815960844592

`A335427(9*A329607(n+1))`
-/

namespace A334032.P17535267815960844592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335427 (9 * A329607 (n + 1)).toNat

end

end A334032.P17535267815960844592

/-! ## A334032.P1433559070904459389

`val(A336322(A071364(n+1)), 2)`
-/

namespace A334032.P1433559070904459389
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A336322 (A071364 (n + 1)).toNat).toNat 2

end

end A334032.P1433559070904459389

/-! ## A334032.P16026775321220110651

`∑{p}[A329607(n+1), A156552(#)]`
-/

namespace A334032.P16026775321220110651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329607 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A156552 p

end

end A334032.P16026775321220110651

/-! ## A334032.P18080698641086985988

`∑{p}[A329607(n+1), A233249(#)]`
-/

namespace A334032.P18080698641086985988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329607 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A233249 p

end

end A334032.P18080698641086985988

/-! ## A334032.P5772453439537859942

`∑{p}[A329607(n+1), A248663(#)]`
-/

namespace A334032.P5772453439537859942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329607 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A248663 p

end

end A334032.P5772453439537859942

/-! ## A334032.P18417609842580821874

`∑{p}[A329607(n+1), A252754(#)]`
-/

namespace A334032.P18417609842580821874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329607 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A252754 p

end

end A334032.P18417609842580821874

/-! ## A334032.P7399272392911499485

`A248663(∏{p}[A329607(n+1), #])`
-/

namespace A334032.P7399272392911499485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329607 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248663 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A334032.P7399272392911499485

/-!
# A334033: The a(n)-th composition in standard order (graded reverse-lexicographic) is the reversed unsorted prime signature of n.

The programs for A334033, there is no canonical definition to state claims against.
-/

/-! ## A334033.P7515915501517152864

`A333776(A334032(n+1))`
-/

namespace A334033.P7515915501517152864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333776 (A334032 (n + 1)).toNat

end

end A334033.P7515915501517152864

/-! ## A334033.P17225031368960055016

`A030109(2*A334032(n+1)+1)`
-/

namespace A334033.P17225031368960055016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030109 (2 * A334032 (n + 1) + 1).toNat

end

end A334033.P17225031368960055016

/-! ## A334033.P3387644318669110438

`∑{p}[A329607(A293448(n+1)), A048675(#)]`
-/

namespace A334033.P3387644318669110438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329607 (A293448 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A048675 p

end

end A334033.P3387644318669110438

/-! ## A334033.P16008886935292173898

`∑{p}[A329607(A293448(n+1)), A156552(#)]`
-/

namespace A334033.P16008886935292173898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329607 (A293448 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A156552 p

end

end A334033.P16008886935292173898

/-! ## A334033.P14783473883788711210

`A333776(∑{p}[A329607(n+1), A156552(#)])`
-/

namespace A334033.P14783473883788711210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329607 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333776 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, A156552 p).toNat

end

end A334033.P14783473883788711210

/-! ## A334033.P9185897397999268568

`A333776(∑{p}[A329607(n+1), A233249(#)])`
-/

namespace A334033.P9185897397999268568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329607 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333776 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, A233249 p).toNat

end

end A334033.P9185897397999268568

/-! ## A334033.P10607717666471691993

`A333776(∑{p}[A329607(n+1), A248663(#)])`
-/

namespace A334033.P10607717666471691993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329607 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333776 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, A248663 p).toNat

end

end A334033.P10607717666471691993

/-! ## A334033.P3799198597808772544

`A030109(A334032(n+1)+A334032(n+1)+1)`
-/

namespace A334033.P3799198597808772544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030109 (A334032 (n + 1) + (A334032 (n + 1) + 1)).toNat

end

end A334033.P3799198597808772544

/-! ## A334033.P12891971558429166529

`∑{p}[A153212(n+1), A048675(#)]`
-/

namespace A334033.P12891971558429166529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153212 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A048675 p

end

end A334033.P12891971558429166529

/-! ## A334033.P4608768763706000411

`∑{p}[A153212(n+1), A156552(#)]`
-/

namespace A334033.P4608768763706000411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153212 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A156552 p

end

end A334033.P4608768763706000411

/-!
# A334034: a(n) is the least integer that can be expressed as the difference of two pentagonal numbers in exactly n ways.

The programs for A334034, there is no canonical definition to state claims against.
-/

/-! ## A334034.P16635233059918265979

`∑[A195862(A057762(∑[n+1]))]`
-/

namespace A334034.P16635233059918265979
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195862 (A057762 (∑ j ∈ Finset.range (n + 1), f2 j)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A334034.P16635233059918265979

/-!
# A334038: a(n) = Product_{p<=n, p prime} binomial(n,p).

The programs for A334038, there is no canonical definition to state claims against.
-/

/-! ## A334038.P10776592140756853578

`∏{p}[A034386(n), C(n, #)]`
-/

namespace A334038.P10776592140756853578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034386 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.choose n p

end

end A334038.P10776592140756853578

/-! ## A334038.P5813942754085710387

`∏{p}[A002110(A230980(n)), C(n, #)]`
-/

namespace A334038.P5813942754085710387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002110 (A230980 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.choose n p

end

end A334038.P5813942754085710387

/-! ## A334038.P8792165462550241070

`∏{p}[A002110(A064427(n+1)-(n+1)), C(n, #)]`
-/

namespace A334038.P8792165462550241070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002110 (A064427 (n + 1) - (n + 1 : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.choose n p

end

end A334038.P8792165462550241070

/-! ## A334038.P12757352221547584262

`∏{p}[A003418(n), C(n, #)]`
-/

namespace A334038.P12757352221547584262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003418 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.choose n p

end

end A334038.P12757352221547584262

/-!
# A334039: For any n > 0: start with x = n; for k = 1..n, if k divides x then divide x by k; a(n) corresponds to the final value of x.

The programs for A334039, there is no canonical definition to state claims against.
-/

/-! ## A334039.P13225097309203146020

`gcd((n+1)/∏{p}[n+1, #], A007756(2^∑{e}[n+1, #-1]))`
-/

namespace A334039.P13225097309203146020
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ))) (A007756 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (∑ p ∈ Nat.primeFactors (f2 n), ((Nat.factorization (f2 n) p : ℤ) - 1) : ℤ))).toNat)

end

end A334039.P13225097309203146020

/-! ## A334039.P13426498445540921943

`gcd(A003557(n+1), A133166((n+1)*∏{p}[n+1, #^-1]))`
-/

namespace A334039.P13426498445540921943
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003557 (n + 1)) (A133166 (SequenceMachineLib.roundAway ((n + 1 : ℚ) * (∏ p ∈ Nat.primeFactors (f1 n), (p : ℚ) ^ (-1 : ℤ)))).toNat)

end

end A334039.P13426498445540921943

/-! ## A334039.P18023568521253361761

`A002376(A183104(n+1)/A000189(n+1))`
-/

namespace A334039.P18023568521253361761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002376 (SequenceMachineLib.roundAway ((A183104 (n + 1) : ℚ) / (A000189 (n + 1) : ℚ))).toNat

end

end A334039.P18023568521253361761

/-! ## A334039.P2424838924287655739

`A050985(A183102(n+1)/A000189(n+1))`
-/

namespace A334039.P2424838924287655739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050985 (SequenceMachineLib.roundAway ((A183102 (n + 1) : ℚ) / (A000189 (n + 1) : ℚ))).toNat

end

end A334039.P2424838924287655739

/-! ## A334039.P11669215333099464125

`A050985(A183104(n+1)/A000189(n+1))`
-/

namespace A334039.P11669215333099464125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050985 (SequenceMachineLib.roundAway ((A183104 (n + 1) : ℚ) / (A000189 (n + 1) : ℚ))).toNat

end

end A334039.P11669215333099464125

/-! ## A334039.P6402535480926529644

`A048798(A000188(n+1)^A212180(n+1))`
-/

namespace A334039.P6402535480926529644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048798 (SequenceMachineLib.roundAway ((A000188 (n + 1) : ℚ) ^ (A212180 (n + 1) : ℤ))).toNat

end

end A334039.P6402535480926529644

/-! ## A334039.P17479381664181296726

`gcd(A003557(n+1), A133166(A003557(n+1)))`
-/

namespace A334039.P17479381664181296726
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003557 (n + 1)) (A133166 (A003557 (n + 1)).toNat)

end

end A334039.P17479381664181296726

/-! ## A334039.P12328377078631502940

`gcd(A000188(n+1), A108611(A046643(n+1)))`
-/

namespace A334039.P12328377078631502940
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000188 (n + 1)) (A108611 (A046643 (n + 1)).toNat)

end

end A334039.P12328377078631502940

/-!
# A334040: Number of odd numbers larger than n in the Collatz trajectory of n.

The programs for A334040, there is no canonical definition to state claims against.
-/

/-! ## A334040.P4864713581298423829

`and(A020053(A015810(n)), A032741(n))`
-/

namespace A334040.P4864713581298423829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A020053 (A015810 n).toNat) (A032741 n)

end

end A334040.P4864713581298423829

/-! ## A334040.P13823713556418796894

`and(A032741(n), A226632(A217650(n+1)))`
-/

namespace A334040.P13823713556418796894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A032741 n) (A226632 (A217650 (n + 1)).toNat)

end

end A334040.P13823713556418796894

/-! ## A334040.P17421540595951549351

`A240672(A000005(3*n+1)^floor(n/(xor(n, n+1)+1)))`
-/

namespace A334040.P17421540595951549351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240672 (SequenceMachineLib.roundAway ((A000005 (3 * n + 1) : ℚ) ^ (⌊(n : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ)⌋ : ℤ))).toNat

end

end A334040.P17421540595951549351

/-! ## A334040.P387506400753893128

`A126316(5*n)%A122197(2*(n+2))`
-/

namespace A334040.P387506400753893128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A126316 (5 * n)) (A122197 (2 * (n + 2)))

end

end A334040.P387506400753893128

/-! ## A334040.P3230394947077810172

`A240923(A335522(n+5)%A335527(3*(n+1)))`
-/

namespace A334040.P3230394947077810172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240923 (Int.tmod (A335522 (n + 5)) (A335527 (3 * (n + 1)))).toNat

end

end A334040.P3230394947077810172

/-!
# A334041: (a(n-2) XOR a(n-1)) OR (highest bit of a(n-2))*2 OR 1; a(0)=2, a(1)=3.

The programs for A334041, there is no canonical definition to state claims against.
-/

/-! ## A334041.P3493003028888959751

`or(a(n-2)+a(n-3), a(n-3))` with `a(0)=2, a(1)=3, a(2)=5`
-/

namespace A334041.P3493003028888959751
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 3, 5] fun n a =>
  Nat.lor (a (n - 2) + a (n - 3)) (a (n - 3))

end

end A334041.P3493003028888959751

/-! ## A334041.P17711604359168226064

`A029744(n+3)-A329340(A369780(n))`
-/

namespace A334041.P17711604359168226064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029744 (n + 3) - A329340 (A369780 n).toNat

end

end A334041.P17711604359168226064

/-! ## A334041.P16101054396028224651

`or(A321150(n+1), A330240(A358837(n)))`
-/

namespace A334041.P16101054396028224651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A321150 (n + 1)) (A330240 (A358837 n).toNat)

end

end A334041.P16101054396028224651

/-! ## A334041.P7887910643599613488

`A374765(n)+A070939(A223000(2*n+1))`
-/

namespace A334041.P7887910643599613488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374765 n + A070939 (A223000 (2 * n + 1)).toNat

end

end A334041.P7887910643599613488

/-! ## A334041.P8180112398851868024

`or(A065516(A323930(n+1)), A357659(n+2))`
-/

namespace A334041.P8180112398851868024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A065516 (A323930 (n + 1)).toNat) (A357659 (n + 2))

end

end A334041.P8180112398851868024

/-!
# A334042: Write n^2 in binary, interchange 0's and 1's, convert back to decimal.

The programs for A334042, the canonical program `A334042.P8126490693138970786` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A334042 has offset 0).

The definition of A334042 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A035327, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A334042.P8126490693138970786

`A035327(A000290(n))`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A334042

/-- `A035327(A000290(n))` -/
def P8126490693138970786.Spec : Prop :=
  ∀ n, P8126490693138970786.a n = A334042 n

theorem P8126490693138970786.correct : P8126490693138970786.Spec := by
  intro n
  simp only [A334042]

end A334042

/-! ## A334042.P17833193290074177731

`A253909(n)-A006257(n²)`
-/

namespace A334042.P17833193290074177731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253909 n - A006257 (n ^ 2)

end

end A334042.P17833193290074177731

namespace A334042

/-- `A253909(n)-A006257(n²)` -/
def P17833193290074177731.Spec : Prop :=
  ∀ n, P17833193290074177731.a n = A334042 n

end A334042

/-! ## A334042.P9028714345629051819

`A028310(n)²-A006257(n²)`
-/

namespace A334042.P9028714345629051819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n ^ 2 - A006257 (n ^ 2)

end

end A334042.P9028714345629051819

namespace A334042

/-- `A028310(n)²-A006257(n²)` -/
def P9028714345629051819.Spec : Prop :=
  ∀ n, P9028714345629051819.a n = A334042 n

end A334042

/-! ## A334042.P17383510992279009768

`round(sqrt(A002523(n)))-A006257(n²)`
-/

namespace A334042.P17383510992279009768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A002523 n : ℝ)) - A006257 (n ^ 2)

end

end A334042.P17383510992279009768

namespace A334042

/-- `round(sqrt(A002523(n)))-A006257(n²)` -/
def P17383510992279009768.Spec : Prop :=
  ∀ n, P17383510992279009768.a n = A334042 n

end A334042

/-! ## A334042.P4008669946567129348

`(A000007(n)+n)²-A006257(n²)`
-/

namespace A334042.P4008669946567129348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000007 n + (n : ℤ)) ^ 2 - A006257 (n ^ 2)

end

end A334042.P4008669946567129348

namespace A334042

/-- `(A000007(n)+n)²-A006257(n²)` -/
def P4008669946567129348.Spec : Prop :=
  ∀ n, P4008669946567129348.a n = A334042 n

end A334042

/-! ## A334042.P4234212599340363026

`abs(A000290(n)-A006257(A253909(n)))`
-/

namespace A334042.P4234212599340363026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000290 n - A006257 (A253909 n).toNat|

end

end A334042.P4234212599340363026

namespace A334042

/-- `abs(A000290(n)-A006257(A253909(n)))` -/
def P4234212599340363026.Spec : Prop :=
  ∀ n, P4234212599340363026.a n = A334042 n

end A334042

/-! ## A334042.P10649189551178133361

`A010078(A099392(n+1))-A000982(n)`
-/

namespace A334042.P10649189551178133361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010078 (A099392 (n + 1)).toNat - A000982 n

end

end A334042.P10649189551178133361

namespace A334042

/-- `A010078(A099392(n+1))-A000982(n)` -/
def P10649189551178133361.Spec : Prop :=
  ∀ n, P10649189551178133361.a n = A334042 n

end A334042

/-! ## A334042.P15678077342340594165

`A130517(∑[n+1])²-A006257(n²)`
-/

namespace A334042.P15678077342340594165
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130517 (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - A006257 (n ^ 2)

end

end A334042.P15678077342340594165

namespace A334042

/-- `A130517(∑[n+1])²-A006257(n²)` -/
def P15678077342340594165.Spec : Prop :=
  ∀ n, P15678077342340594165.a n = A334042 n

end A334042

/-! ## A334042.P9852922186967634471

`A035327(n²)`
-/

namespace A334042.P9852922186967634471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035327 (n ^ 2)

end

end A334042.P9852922186967634471

namespace A334042

/-- `A035327(n²)` -/
def P9852922186967634471.Spec : Prop :=
  ∀ n, P9852922186967634471.a n = A334042 n

end A334042

/-! ## A334042.P3734168888435768644

`A080079((n+1)*abs(1-n)+1)-1`
-/

namespace A334042.P3734168888435768644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080079 ((n + 1 : ℤ) * |1 - (n : ℤ)| + 1).toNat - 1

end

end A334042.P3734168888435768644

namespace A334042

/-- `A080079((n+1)*abs(1-n)+1)-1` -/
def P3734168888435768644.Spec : Prop :=
  ∀ n, P3734168888435768644.a n = A334042 n

end A334042

/-! ## A334042.P2594022362252123202

`A038572(2*A035327(n*n))`
-/

namespace A334042.P2594022362252123202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038572 (2 * A035327 (n * n)).toNat

end

end A334042.P2594022362252123202

namespace A334042

/-- `A038572(2*A035327(n*n))` -/
def P2594022362252123202.Spec : Prop :=
  ∀ n, P2594022362252123202.a n = A334042 n

end A334042

/-! ## A334042.P9026390783583582240

`A003817(A028310(n)²)-n²`
-/

namespace A334042.P9026390783583582240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003817 (A028310 n ^ 2).toNat - (n ^ 2 : ℤ)

end

end A334042.P9026390783583582240

namespace A334042

/-- `A003817(A028310(n)²)-n²` -/
def P9026390783583582240.Spec : Prop :=
  ∀ n, P9026390783583582240.a n = A334042 n

end A334042

/-! ## A334042.P11613394632839170844

`∑{d}[A035327(n*n), A000010(#)]`
-/

namespace A334042.P11613394632839170844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035327 (n * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A334042.P11613394632839170844

namespace A334042

/-- `∑{d}[A035327(n*n), A000010(#)]` -/
def P11613394632839170844.Spec : Prop :=
  ∀ n, P11613394632839170844.a n = A334042 n

end A334042

/-! ## A334042.P12449677053178166747

`char[A035327(n)]*A035327(n*n)`
-/

namespace A334042.P12449677053178166747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035327 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A035327 (n * n)

end

end A334042.P12449677053178166747

namespace A334042

/-- `char[A035327(n)]*A035327(n*n)` -/
def P12449677053178166747.Spec : Prop :=
  ∀ n, P12449677053178166747.a n = A334042 n

end A334042

/-! ## A334042.P11022257288747297147

`A055120(A055120(A035327(n*n)))`
-/

namespace A334042.P11022257288747297147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055120 (A055120 (A035327 (n * n)).toNat).toNat

end

end A334042.P11022257288747297147

namespace A334042

/-- `A055120(A055120(A035327(n*n)))` -/
def P11022257288747297147.Spec : Prop :=
  ∀ n, P11022257288747297147.a n = A334042 n

end A334042

/-!
# A334043: a(1) = 0, and for any n > 1, a(n) is the number of points of the set { (k, a(k)), k = 1..n-2 } that are visible from the point (n-1, a(n-1)).

The programs for A334043, there is no canonical definition to state claims against.
-/

/-! ## A334043.P6012671228768394627

`n-A287170(A045924(n+1))`
-/

namespace A334043.P6012671228768394627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A287170 (A045924 (n + 1)).toNat

end

end A334043.P6012671228768394627

/-! ## A334043.P12239946897978660230

`A000120(A000325(n+1)-A324015(n+1))`
-/

namespace A334043.P12239946897978660230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A000325 (n + 1) - A324015 (n + 1)).toNat

end

end A334043.P12239946897978660230

/-! ## A334043.P7146242912799876111

`A079294(or(A034856(n+1), A327342(n+1)))`
-/

namespace A334043.P7146242912799876111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079294 (Int.lor (A034856 (n + 1)) (A327342 (n + 1))).toNat

end

end A334043.P7146242912799876111

/-! ## A334043.P8085369676833542756

`∑[A254651(n+1)]-A254651(A024431(2*n))`
-/

namespace A334043.P8085369676833542756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254651 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A254651 (A024431 (2 * n)).toNat

end

end A334043.P8085369676833542756

/-!
# A334045: Bitwise NOR of binary representation of n and n-1.

The programs for A334045, there is no canonical definition to state claims against.
-/

/-! ## A334045.P10280746924248962927

`∑[Δ[and(-(n+1), -n)]%(n+1)]`
-/

namespace A334045.P10280746924248962927
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-(n + 1 : ℤ)) (-(n : ℤ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (n + 1) - f2 n) (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A334045.P10280746924248962927

/-! ## A334045.P5261348336922171322

`∑[Δ[or(n, -n)-(n+1)]%(n+1)]`
-/

namespace A334045.P5261348336922171322
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (-(n : ℤ)) - (n + 1 : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (n + 1) - f2 n) (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A334045.P5261348336922171322

/-! ## A334045.P2193273830920231506

`(2^ceil(log2(n+1))-2^val(n+1, 2))%(n+1)`
-/

namespace A334045.P2193273830920231506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((2 : ℚ) ^ (⌈Real.logb 2 (n + 1 : ℝ)⌉ : ℤ) - (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))) (n + 1 : ℤ)

end

end A334045.P2193273830920231506

/-! ## A334045.P14535364612406731332

`n-(or(n, n+1)+1+n)%(2^ceil(log2(n+1)))`
-/

namespace A334045.P14535364612406731332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - Int.tmod (Nat.lor n (n + 1) + 1 + n : ℤ) (SequenceMachineLib.roundAway ((2 : ℚ) ^ (⌈Real.logb 2 (n + 1 : ℝ)⌉ : ℤ)))

end

end A334045.P14535364612406731332

/-! ## A334045.P10225389234424519973

`∑[C(and(n+1, 2*n), n)]-n-2^val(n+1, 2)`
-/

namespace A334045.P10225389234424519973
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.land (n + 1) (2 * n)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n : ℤ) - (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℤ)

end

end A334045.P10225389234424519973

/-! ## A334045.P5250873342444416149

`∑[C(and(n+1, 2*n), n)]-n-(xor(n, n+1)+1)/2`
-/

namespace A334045.P5250873342444416149
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.land (n + 1) (2 * n)) n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n : ℤ) : ℚ) - (Nat.xor n (n + 1) + 1 : ℚ) / 2

end

end A334045.P5250873342444416149

/-! ## A334045.P2881186179954674957

`∑[C(and(n+1, 2*n), n)]-n-(or(n, n+1)%(n+1)+1)`
-/

namespace A334045.P2881186179954674957
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.land (n + 1) (2 * n)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n : ℤ) - ((Nat.lor n (n + 1) % (n + 1) + 1 : ℕ) : ℤ)

end

end A334045.P2881186179954674957

/-! ## A334045.P9724560136649549825

`A142151(n)-n`
-/

namespace A334045.P9724560136649549825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142151 n - (n : ℤ)

end

end A334045.P9724560136649549825

/-! ## A334045.P875342642116977424

`A035327(or(n, n+1))`
-/

namespace A334045.P875342642116977424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035327 (Nat.lor n (n + 1))

end

end A334045.P875342642116977424

/-! ## A334045.P1007796164490221356

`A340632(n+1)-(n+1)`
-/

namespace A334045.P1007796164490221356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340632 (n + 1) - (n + 1 : ℤ)

end

end A334045.P1007796164490221356

/-!
# A334046: a(n) is the number of points of the set { (k, prime(k)), k = 1..n-1 } that are not visible from the point (n, prime(n)) (where prime(n) denotes the n-th prime number).

The programs for A334046, there is no canonical definition to state claims against.
-/

/-! ## A334046.P1780816395035054488

`n-A375421(n+1)`
-/

namespace A334046.P1780816395035054488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A375421 (n + 1)

end

end A334046.P1780816395035054488

/-! ## A334046.P11165772634338096321

`A057428(n)*A375421(n+1)+n`
-/

namespace A334046.P11165772634338096321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n * A375421 (n + 1) + (n : ℤ)

end

end A334046.P11165772634338096321

/-! ## A334046.P1885855012457946844

`A028310(n)%A028310(A375421(n+1))`
-/

namespace A334046.P1885855012457946844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028310 n) (A028310 (A375421 (n + 1)).toNat)

end

end A334046.P1885855012457946844

/-! ## A334046.P6071063928752002920

`A004526(2*n+3)%(A375421(n+1)+1)`
-/

namespace A334046.P6071063928752002920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004526 (2 * n + 3)) (A375421 (n + 1) + 1)

end

end A334046.P6071063928752002920

/-! ## A334046.P8215571915375145205

`n%A375421(A233583(n+2))`
-/

namespace A334046.P8215571915375145205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n : ℤ) (A375421 (A233583 (n + 2)).toNat)

end

end A334046.P8215571915375145205

/-!
# A334047: a(n) is the number of tilings of a bracelet of length 2n with 1 color of 5-minoes and 6-minoes, 2 colors of 7-minoes and 8-minoes, 3 colors of 9-minoes and 10-minoes, and so on.

The programs for A334047, there is no canonical definition to state claims against.
-/

/-! ## A334047.P2690869258615294189

`A023810(n+2)*A352520(A239905(3*n+2))`
-/

namespace A334047.P2690869258615294189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023810 (n + 2) * A352520 (A239905 (3 * n + 2)).toNat

end

end A334047.P2690869258615294189

/-! ## A334047.P17037933494130183183

`(n+1)*A056811(A001850(n))`
-/

namespace A334047.P17037933494130183183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A056811 (A001850 n).toNat

end

end A334047.P17037933494130183183

/-! ## A334047.P6171403696415854747

`(n+1)*A143824(A074416(n+1))`
-/

namespace A334047.P6171403696415854747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A143824 (A074416 (n + 1)).toNat

end

end A334047.P6171403696415854747

/-!
# A334048: Primes p that set a new record for the number of bases 1 < b < p for which p is a base-b Wieferich prime and b is not a perfect power.

The programs for A334048, there is no canonical definition to state claims against.
-/

/-! ## A334048.P17316730267024024865

`∩[A126613(n+1), A261810(n+1)]`
-/

namespace A334048.P17316730267024024865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126613 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261810 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A334048.P17316730267024024865

/-!
# A334051: The difference between the number of prime numbers in the ranges (1, p_n] and (p_n, 2*p_n], where p_n is the n-th prime.

The programs for A334051, the canonical program `A334051.P2829152517033935229` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A334051 has offset 1).

The definition of A334051 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A331677, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A334051.P2829152517033935229

`1+A331677(n+1)`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A334051

/-- `1+A331677(n+1)` -/
def P2829152517033935229.Spec : Prop :=
  ∀ n, P2829152517033935229.a n = A334051 (n + 1)

theorem P2829152517033935229.correct : P2829152517033935229.Spec := by
  intro n
  simp only [A334051, Nat.add_sub_cancel]

end A334051

/-! ## A334051.P9242790824036907809

`2*(n+1)-A020900(n+1)`
-/

namespace A334051.P9242790824036907809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - A020900 (n + 1)

end

end A334051.P9242790824036907809

namespace A334051

/-- `2*(n+1)-A020900(n+1)` -/
def P9242790824036907809.Spec : Prop :=
  ∀ n, P9242790824036907809.a n = A334051 (n + 1)

end A334051

/-! ## A334051.P441014130441696009

`1-A070046(n+1)+n`
-/

namespace A334051.P441014130441696009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A070046 (n + 1) + (n : ℤ)

end

end A334051.P441014130441696009

namespace A334051

/-- `1-A070046(n+1)+n` -/
def P441014130441696009.Spec : Prop :=
  ∀ n, P441014130441696009.a n = A334051 (n + 1)

end A334051

/-! ## A334051.P12032251316295817075

`2-A063124(n+1)+n`
-/

namespace A334051.P12032251316295817075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A063124 (n + 1) + (n : ℤ)

end

end A334051.P12032251316295817075

namespace A334051

/-- `2-A063124(n+1)+n` -/
def P12032251316295817075.Spec : Prop :=
  ∀ n, P12032251316295817075.a n = A334051 (n + 1)

end A334051

/-! ## A334051.P13490582126718495975

`3*(n+1)-A298862(n+1)`
-/

namespace A334051.P13490582126718495975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * (n + 1) : ℤ) - A298862 (n + 1)

end

end A334051.P13490582126718495975

namespace A334051

/-- `3*(n+1)-A298862(n+1)` -/
def P13490582126718495975.Spec : Prop :=
  ∀ n, P13490582126718495975.a n = A334051 (n + 1)

end A334051

/-! ## A334051.P9626623132158273499

`A246514(n+1)-A065890(n+1)`
-/

namespace A334051.P9626623132158273499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246514 (n + 1) - A065890 (n + 1)

end

end A334051.P9626623132158273499

namespace A334051

/-- `A246514(n+1)-A065890(n+1)` -/
def P9626623132158273499.Spec : Prop :=
  ∀ n, P9626623132158273499.a n = A334051 (n + 1)

end A334051

/-! ## A334051.P3509786526737178449

`A016789(n)+1-A298862(n+1)`
-/

namespace A334051.P3509786526737178449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016789 n + (1 - A298862 (n + 1))

end

end A334051.P3509786526737178449

namespace A334051

/-- `A016789(n)+1-A298862(n+1)` -/
def P3509786526737178449.Spec : Prop :=
  ∀ n, P3509786526737178449.a n = A334051 (n + 1)

end A334051

/-! ## A334051.P1829046693348190817

`A004277(n+1)%A020900(n+1)`
-/

namespace A334051.P1829046693348190817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004277 (n + 1)) (A020900 (n + 1))

end

end A334051.P1829046693348190817

namespace A334051

/-- `A004277(n+1)%A020900(n+1)` -/
def P1829046693348190817.Spec : Prop :=
  ∀ n, P1829046693348190817.a n = A334051 (n + 1)

end A334051

/-! ## A334051.P12458917457432314682

`A163300(n+1)%A020900(n+1)`
-/

namespace A334051.P12458917457432314682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A163300 (n + 1)) (A020900 (n + 1))

end

end A334051.P12458917457432314682

namespace A334051

/-- `A163300(n+1)%A020900(n+1)` -/
def P12458917457432314682.Spec : Prop :=
  ∀ n, P12458917457432314682.a n = A334051 (n + 1)

end A334051

/-! ## A334051.P17571978255518594636

`A246514(n+1)+1-A014689(n+1)`
-/

namespace A334051.P17571978255518594636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246514 (n + 1) + (1 - A014689 (n + 1))

end

end A334051.P17571978255518594636

namespace A334051

/-- `A246514(n+1)+1-A014689(n+1)` -/
def P17571978255518594636.Spec : Prop :=
  ∀ n, P17571978255518594636.a n = A334051 (n + 1)

end A334051

/-! ## A334051.P8668119417834353595

`A246514(n+1)-A040976(n+1)+n`
-/

namespace A334051.P8668119417834353595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246514 (n + 1) - A040976 (n + 1) + (n : ℤ)

end

end A334051.P8668119417834353595

namespace A334051

/-- `A246514(n+1)-A040976(n+1)+n` -/
def P8668119417834353595.Spec : Prop :=
  ∀ n, P8668119417834353595.a n = A334051 (n + 1)

end A334051

/-! ## A334051.P18085585247914185645

`A001478(A020900(n+1)+A001478(n+1))-A001478(n+1)`
-/

namespace A334051.P18085585247914185645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001478 (A020900 (n + 1) + A001478 (n + 1)).toNat - A001478 (n + 1)

end

end A334051.P18085585247914185645

namespace A334051

/-- `A001478(A020900(n+1)+A001478(n+1))-A001478(n+1)` -/
def P18085585247914185645.Spec : Prop :=
  ∀ n, P18085585247914185645.a n = A334051 (n + 1)

end A334051

/-! ## A334051.P11984491001221368026

`A120633(n+1)-A062234(n+1)+n`
-/

namespace A334051.P11984491001221368026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120633 (n + 1) - A062234 (n + 1) + (n : ℤ)

end

end A334051.P11984491001221368026

namespace A334051

/-- `A120633(n+1)-A062234(n+1)+n` -/
def P11984491001221368026.Spec : Prop :=
  ∀ n, P11984491001221368026.a n = A334051 (n + 1)

end A334051

/-! ## A334051.P2188375511192366698

`1-A056171(A100484(n+1))+n`
-/

namespace A334051.P2188375511192366698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A056171 (A100484 (n + 1)).toNat + (n : ℤ)

end

end A334051.P2188375511192366698

namespace A334051

/-- `1-A056171(A100484(n+1))+n` -/
def P2188375511192366698.Spec : Prop :=
  ∀ n, P2188375511192366698.a n = A334051 (n + 1)

end A334051

/-! ## A334051.P10349510985895940992

`n+1-A056171(2*A000040(n+1))`
-/

namespace A334051.P10349510985895940992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A056171 (2 * A000040 (n + 1)).toNat

end

end A334051.P10349510985895940992

namespace A334051

/-- `n+1-A056171(2*A000040(n+1))` -/
def P10349510985895940992.Spec : Prop :=
  ∀ n, P10349510985895940992.a n = A334051 (n + 1)

end A334051

/-! ## A334051.P4333525746818642742

`2*(n+1)-A000720(2*A000040(n+1))`
-/

namespace A334051.P4333525746818642742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - A000720 (2 * A000040 (n + 1)).toNat

end

end A334051.P4333525746818642742

namespace A334051

/-- `2*(n+1)-A000720(2*A000040(n+1))` -/
def P4333525746818642742.Spec : Prop :=
  ∀ n, P4333525746818642742.a n = A334051 (n + 1)

end A334051

/-! ## A334051.P7577605631311915162

`2*(n+1)-A000720(record[2*A020639(n+2)])`
-/

namespace A334051.P7577605631311915162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - A000720 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A334051.P7577605631311915162

namespace A334051

/-- `2*(n+1)-A000720(record[2*A020639(n+2)])` -/
def P7577605631311915162.Spec : Prop :=
  ∀ n, P7577605631311915162.a n = A334051 (n + 1)

end A334051

/-! ## A334051.P15060463859744180892

`A005843(n+1)-A000720(A001747(n+2))`
-/

namespace A334051.P15060463859744180892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (n + 1) - A000720 (A001747 (n + 2)).toNat

end

end A334051.P15060463859744180892

namespace A334051

/-- `A005843(n+1)-A000720(A001747(n+2))` -/
def P15060463859744180892.Spec : Prop :=
  ∀ n, P15060463859744180892.a n = A334051 (n + 1)

end A334051

/-! ## A334051.P18421310464111814922

`A000720(A006005(2*(n+1)))-A000720(A001747(n+2))`
-/

namespace A334051.P18421310464111814922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A006005 (2 * (n + 1))).toNat - A000720 (A001747 (n + 2)).toNat

end

end A334051.P18421310464111814922

namespace A334051

/-- `A000720(A006005(2*(n+1)))-A000720(A001747(n+2))` -/
def P18421310464111814922.Spec : Prop :=
  ∀ n, P18421310464111814922.a n = A334051 (n + 1)

end A334051

/-!
# A334052: Variant of Van Eck's sequence: Set a(1) = 1, a(2) = 0, a(3) = 1. Thereafter, a(n) is the minimum positive offset i from a(n-1) such that some partial sum a(n-1-i)+...+a(n-1-i+k) = a(n-1) (0 <= k < i).

The programs for A334052, there is no canonical definition to state claims against.
-/

/-! ## A334052.P8719413238117764316

`∑{e}[Δ[A005248(n)-A220666(n)], #]`
-/

namespace A334052.P8719413238117764316
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005248 n - A220666 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A334052.P8719413238117764316

/-!
# A334053: Least b such that b^(2^n) + 1 is a Proth prime (A080076).

The programs for A334053, there is no canonical definition to state claims against.
-/

/-! ## A334053.P556382940464126941

`A186994(A317437(n!))`
-/

namespace A334053.P556382940464126941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186994 (A317437 (Nat.factorial n)).toNat

end

end A334053.P556382940464126941

/-! ## A334053.P5899901199707898287

`A194357(A000664(n)^A211540(n))`
-/

namespace A334053.P5899901199707898287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194357 (SequenceMachineLib.roundAway ((A000664 n : ℚ) ^ (A211540 n : ℤ))).toNat

end

end A334053.P5899901199707898287

/-! ## A334053.P14313484605329708413

`A176893(A092662(n+1)^A052938(n))`
-/

namespace A334053.P14313484605329708413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176893 (SequenceMachineLib.roundAway ((A092662 (n + 1) : ℚ) ^ (A052938 n : ℤ))).toNat

end

end A334053.P14313484605329708413

/-!
# A334056: Triangle read by rows: T(n,k) is the number of configurations with exactly k polyomino matchings in a generalized game of memory played on the path of length 3n.

The programs for A334056, there is no canonical definition to state claims against.
-/

/-! ## A334056.P6567314385749611022

`A334060(n)-A343640(A000392(n))`
-/

namespace A334056.P6567314385749611022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334060 n - A343640 (A000392 n).toNat

end

end A334056.P6567314385749611022

/-! ## A334056.P17371687482214665424

`A276665(n+1)%A005247(A262240(n+1))`
-/

namespace A334056.P17371687482214665424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A276665 (n + 1)) (A005247 (A262240 (n + 1)).toNat)

end

end A334056.P17371687482214665424

/-! ## A334056.P15270319049071465876

`A008585(A210849(n))%A000040(A126445(n))`
-/

namespace A334056.P15270319049071465876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008585 (A210849 n).toNat) (A000040 (A126445 n).toNat)

end

end A334056.P15270319049071465876

/-!
# A334057: Triangle read by rows: T(n,k) is the number of configurations with exactly k polyomino matchings in a generalized game of memory played on the path of length 4n.

The programs for A334057, there is no canonical definition to state claims against.
-/

/-! ## A334057.P7347111422671329352

`A334061(n)-A343640(A000392(n))`
-/

namespace A334057.P7347111422671329352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334061 n - A343640 (A000392 n).toNat

end

end A334057.P7347111422671329352

/-!
# A334060: Triangle read by rows: T(n,k) is the number of set partitions of {1..3n} into n sets of 3 with k disjoint strings of adjacent sets, each being a contiguous set of elements.

The programs for A334060, there is no canonical definition to state claims against.
-/

/-! ## A334060.P4392651445154965776

`A238484(A243424(n))-A020987(2*n+1)`
-/

namespace A334060.P4392651445154965776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238484 (A243424 n).toNat - A020987 (2 * n + 1)

end

end A334060.P4392651445154965776

/-! ## A334060.P3405447666435143384

`A007317(n+1)%A137346(A005418(n+1))`
-/

namespace A334060.P3405447666435143384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007317 (n + 1)) (A137346 (A005418 (n + 1)).toNat)

end

end A334060.P3405447666435143384

/-! ## A334060.P9985777661403167988

`xor(A046080(A000225(2*n+1)), A334056(n))`
-/

namespace A334060.P9985777661403167988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A046080 (A000225 (2 * n + 1)).toNat) (A334056 n)

end

end A334060.P9985777661403167988

/-!
# A334061: Triangle read by rows: T(n,k) is the number of set partitions of {1..4n} into n sets of 4 with k disjoint strings of adjacent sets, each being a contiguous set of elements.

The programs for A334061, there is no canonical definition to state claims against.
-/

/-! ## A334061.P17456877385774099232

`A343640(A000392(n))+A334057(n)`
-/

namespace A334061.P17456877385774099232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343640 (A000392 n).toNat + A334057 n

end

end A334061.P17456877385774099232

/-!
# A334065: Total area of all triangles such that p + q = 2*n, p < q (p, q prime), with base (q + p) and height (q - p).

The programs for A334065, there is no canonical definition to state claims against.
-/

/-! ## A334065.P1956528862190804040

`(n+1)*Δ[A279726(abs(1-n)+1)]`
-/

namespace A334065.P1956528862190804040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279726 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (f1 (n + 1) - f1 n)

end

end A334065.P1956528862190804040

/-! ## A334065.P6696398493029685983

`A334119(n+1)+A334079(n+1)`
-/

namespace A334065.P6696398493029685983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334119 (n + 1) + A334079 (n + 1)

end

end A334065.P6696398493029685983

/-! ## A334065.P2213068780586908957

`(n+1)*A187619(abs(1-n)+2)`
-/

namespace A334065.P2213068780586908957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A187619 (|1 - (n : ℤ)| + 2).toNat

end

end A334065.P2213068780586908957

/-! ## A334065.P1431055128153211107

`(n+1)*lcm(2, A187619(A028310(n)+1))`
-/

namespace A334065.P1431055128153211107
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * Int.lcm 2 (A187619 (A028310 n + 1).toNat)

end

end A334065.P1431055128153211107

/-! ## A334065.P5872620083241817825

`A187619(A348776(n+1))*A348776(n+1)`
-/

namespace A334065.P5872620083241817825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187619 (A348776 (n + 1)).toNat * A348776 (n + 1)

end

end A334065.P5872620083241817825

/-! ## A334065.P1404030123772200510

`(n+1)*A343782(2*(n+1))`
-/

namespace A334065.P1404030123772200510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A343782 (2 * (n + 1))

end

end A334065.P1404030123772200510

/-!
# A334066: a(n) = (2n-1)!!*(Sum_{k=1..n}k/(2*k-1)).

The programs for A334066, there is no canonical definition to state claims against.
-/

/-! ## A334066.P15585162871450827134

`∑[(n+1)/(2*n+1)]*∏[2*n+1]`
-/

namespace A334066.P15585162871450827134
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (2 * n + 1 : ℚ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * ((∏ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℚ)

end

end A334066.P15585162871450827134

/-! ## A334066.P17471838907351800223

`A334000(n)+A004041(n)`
-/

namespace A334066.P17471838907351800223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334000 n + A004041 n

end

end A334066.P17471838907351800223

/-! ## A334066.P17237483216917694373

`A334000(n)+A109692(A034856(n+1))`
-/

namespace A334066.P17237483216917694373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334000 n + A109692 (A034856 (n + 1)).toNat

end

end A334066.P17237483216917694373

/-! ## A334066.P12127813723654244792

`A334000(n)+A028338(A134869(n+1))`
-/

namespace A334066.P12127813723654244792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334000 n + A028338 (A134869 (n + 1)).toNat

end

end A334066.P12127813723654244792

/-! ## A334066.P7207161179065384330

`∏[A005408(n)]+A334670(n)+A334000(n)`
-/

namespace A334066.P7207161179065384330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j + (A334670 n + A334000 n)

end

end A334066.P7207161179065384330

/-!
# A334068: Negative of numerator of y-coordinate of -(2n+1)*P where P is the generator for rational points on the curve y^2 + y = x^3 - x.

The programs for A334068, there is no canonical definition to state claims against.
-/

/-! ## A334068.P4014193990745635507

`A028935(n+2)-A028934(n)`
-/

namespace A334068.P4014193990745635507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028935 (n + 2) - A028934 n

end

end A334068.P4014193990745635507

/-! ## A334068.P2336617648903147686

`A028943(2*n+1)-A028934(n)`
-/

namespace A334068.P2336617648903147686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028943 (2 * n + 1) - A028934 n

end

end A334068.P2336617648903147686

/-! ## A334068.P10892082412361790564

`A028935(n+2)-A028942(2*n+1)`
-/

namespace A334068.P10892082412361790564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028935 (n + 2) - A028942 (2 * n + 1)

end

end A334068.P10892082412361790564

/-! ## A334068.P5537242670884216022

`A028943(2*n+1)-A028942(2*n+1)`
-/

namespace A334068.P5537242670884216022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028943 (2 * n + 1) - A028942 (2 * n + 1)

end

end A334068.P5537242670884216022

/-! ## A334068.P7802492941027544949

`A028943(2*n+1)-A033999(n+1)*A278314(2*n+1)`
-/

namespace A334068.P7802492941027544949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028943 (2 * n + 1) - A033999 (n + 1) * A278314 (2 * n + 1)

end

end A334068.P7802492941027544949

/-!
# A334069: Number of numbers <= 2^n that are the product of exactly four primes, not necessarily distinct.

The programs for A334069, the canonical program `A334069.P1505033035113123661` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A334069 has offset 1).

The definition of A334069 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A082996, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A334069.P1505033035113123661

`A082996(2^(n+1))`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A334069

/-- `A082996(2^(n+1))` -/
def P1505033035113123661.Spec : Prop :=
  ∀ n, P1505033035113123661.a n = A334069 (n + 1)

theorem P1505033035113123661.correct : P1505033035113123661.Spec := by
  intro n
  simp only [A334069, Nat.add_sub_cancel]

end A334069

/-! ## A334069.P9111407991835448690

`A126279(∑[n]+4)%A003418(n)`
-/

namespace A334069.P9111407991835448690
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A126279 (∑ j ∈ Finset.range (n + 1), f1 j + 4)) (A003418 n)

end

end A334069.P9111407991835448690

namespace A334069

/-- `A126279(∑[n]+4)%A003418(n)` -/
def P9111407991835448690.Spec : Prop :=
  ∀ n, P9111407991835448690.a n = A334069 (n + 1)

end A334069

/-! ## A334069.P6469486806979623471

`A126279(A145018(n+1))%A011782(n)`
-/

namespace A334069.P6469486806979623471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A126279 (A145018 (n + 1)).toNat) (A011782 n)

end

end A334069.P6469486806979623471

namespace A334069

/-- `A126279(A145018(n+1))%A011782(n)` -/
def P6469486806979623471.Spec : Prop :=
  ∀ n, P6469486806979623471.a n = A334069 (n + 1)

end A334069

/-! ## A334069.P6943322432813051697

`∑[A120035(n)]`
-/

namespace A334069.P6943322432813051697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120035 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A334069.P6943322432813051697

namespace A334069

/-- `∑[A120035(n)]` -/
def P6943322432813051697.Spec : Prop :=
  ∀ n, P6943322432813051697.a n = A334069 (n + 1)

end A334069

/-! ## A334069.P2623388990633917746

`A120035(A028310(n))+a(n-1)` with `a(0)=0`
-/

namespace A334069.P2623388990633917746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A120035 (A028310 n).toNat + a (n - 1)

end

end A334069.P2623388990633917746

namespace A334069

/-- `A120035(A028310(n))+a(n-1)` -/
def P2623388990633917746.Spec : Prop :=
  ∀ n, P2623388990633917746.a n = A334069 (n + 1)

end A334069

/-!
# A334070: Number of even-order elements in the multiplicative group of integers modulo n.

The programs for A334070, the canonical program `A334070.P205609447133089697` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A334070 has offset 1).

The definition of A334070 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A053575, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A334070.P5113001748555806434

`A331739(A000010(n+1))`
-/

namespace A334070.P5113001748555806434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331739 (A000010 (n + 1)).toNat

end

end A334070.P5113001748555806434

namespace A334070

/-- `A331739(A000010(n+1))` -/
def P5113001748555806434.Spec : Prop :=
  ∀ n, P5113001748555806434.a n = A334070 (n + 1)

end A334070

/-! ## A334070.P205609447133089697

`A000010(n+1)-A053575(n+1)`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A334070

/-- `A000010(n+1)-A053575(n+1)` -/
def P205609447133089697.Spec : Prop :=
  ∀ n, P205609447133089697.a n = A334070 (n + 1)

theorem P205609447133089697.correct : P205609447133089697.Spec := by
  intro n
  simp only [A334070, Nat.add_sub_cancel]

end A334070

/-! ## A334070.P18236834975658179530

`A331739(Δ[A002088(n)])`
-/

namespace A334070.P18236834975658179530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331739 (f1 (n + 1) - f1 n).toNat

end

end A334070.P18236834975658179530

namespace A334070

/-- `A331739(Δ[A002088(n)])` -/
def P18236834975658179530.Spec : Prop :=
  ∀ n, P18236834975658179530.a n = A334070 (n + 1)

end A334070

/-! ## A334070.P9327580805542981658

`A331739(Δ[A005728(n)])`
-/

namespace A334070.P9327580805542981658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331739 (f1 (n + 1) - f1 n).toNat

end

end A334070.P9327580805542981658

namespace A334070

/-- `A331739(Δ[A005728(n)])` -/
def P9327580805542981658.Spec : Prop :=
  ∀ n, P9327580805542981658.a n = A334070 (n + 1)

end A334070

/-! ## A334070.P3019164610781607393

`Δ[A002088(n)]-A053575(n+1)`
-/

namespace A334070.P3019164610781607393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A053575 (n + 1)

end

end A334070.P3019164610781607393

namespace A334070

/-- `Δ[A002088(n)]-A053575(n+1)` -/
def P3019164610781607393.Spec : Prop :=
  ∀ n, P3019164610781607393.a n = A334070 (n + 1)

end A334070

/-! ## A334070.P9428522701101622331

`A331739(A319998(2*(n+1))/2)`
-/

namespace A334070.P9428522701101622331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331739 (SequenceMachineLib.roundAway ((A319998 (2 * (n + 1)) : ℚ) / 2)).toNat

end

end A334070.P9428522701101622331

namespace A334070

/-- `A331739(A319998(2*(n+1))/2)` -/
def P9428522701101622331.Spec : Prop :=
  ∀ n, P9428522701101622331.a n = A334070 (n + 1)

end A334070

/-! ## A334070.P15646408987974761161

`(A069177(n+1)-1)*A053575(n+1)`
-/

namespace A334070.P15646408987974761161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A069177 (n + 1) - 1) * A053575 (n + 1)

end

end A334070.P15646408987974761161

namespace A334070

/-- `(A069177(n+1)-1)*A053575(n+1)` -/
def P15646408987974761161.Spec : Prop :=
  ∀ n, P15646408987974761161.a n = A334070 (n + 1)

end A334070

/-! ## A334070.P1875339834957421017

`∑{d}[floor(A000010(n+1)/2), A000010(2*#)]`
-/

namespace A334070.P1875339834957421017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000010 (n + 1) : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 (2 * d)

end

end A334070.P1875339834957421017

namespace A334070

/-- `∑{d}[floor(A000010(n+1)/2), A000010(2*#)]` -/
def P1875339834957421017.Spec : Prop :=
  ∀ n, P1875339834957421017.a n = A334070 (n + 1)

end A334070

/-! ## A334070.P1398732086513032185

`A000010(n+1)-A000265(A250207(n+1))`
-/

namespace A334070.P1398732086513032185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) - A000265 (A250207 (n + 1)).toNat

end

end A334070.P1398732086513032185

namespace A334070

/-- `A000010(n+1)-A000265(A250207(n+1))` -/
def P1398732086513032185.Spec : Prop :=
  ∀ n, P1398732086513032185.a n = A334070 (n + 1)

end A334070

/-! ## A334070.P10931482247461524465

`A000010(n+1)-A000265(A000010(2*(n+1)))`
-/

namespace A334070.P10931482247461524465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) - A000265 (A000010 (2 * (n + 1))).toNat

end

end A334070.P10931482247461524465

namespace A334070

/-- `A000010(n+1)-A000265(A000010(2*(n+1)))` -/
def P10931482247461524465.Spec : Prop :=
  ∀ n, P10931482247461524465.a n = A334070 (n + 1)

end A334070

/-! ## A334070.P2811016971835228907

`A000010(n+1)-A171435(2*A000010(n+1))`
-/

namespace A334070.P2811016971835228907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) - A171435 (2 * A000010 (n + 1)).toNat

end

end A334070.P2811016971835228907

namespace A334070

/-- `A000010(n+1)-A171435(2*A000010(n+1))` -/
def P2811016971835228907.Spec : Prop :=
  ∀ n, P2811016971835228907.a n = A334070 (n + 1)

end A334070

/-! ## A334070.P7855781432746525030

`A000010(n+1)-A302034(2*A000010(n+1))`
-/

namespace A334070.P7855781432746525030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) - A302034 (2 * A000010 (n + 1)).toNat

end

end A334070.P7855781432746525030

namespace A334070

/-- `A000010(n+1)-A302034(2*A000010(n+1))` -/
def P7855781432746525030.Spec : Prop :=
  ∀ n, P7855781432746525030.a n = A334070 (n + 1)

end A334070

/-! ## A334070.P17243606683382904445

`∑{d}[A000010(n+1), A000010(2*#)-A000010(#)]`
-/

namespace A334070.P17243606683382904445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, (A000010 (2 * d) - A000010 d)

end

end A334070.P17243606683382904445

namespace A334070

/-- `∑{d}[A000010(n+1), A000010(2*#)-A000010(#)]` -/
def P17243606683382904445.Spec : Prop :=
  ∀ n, P17243606683382904445.a n = A334070 (n + 1)

end A334070

/-! ## A334070.P8366414614255492165

`A000010(n+1)-A000010(n+1)/A069177(n+1)`
-/

namespace A334070.P8366414614255492165
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (n + 1) : ℚ) - (A000010 (n + 1) : ℚ) / (A069177 (n + 1) : ℚ)

end

end A334070.P8366414614255492165

namespace A334070

/-- `A000010(n+1)-A000010(n+1)/A069177(n+1)` -/
def P8366414614255492165.Spec : Prop :=
  ∀ n, P8366414614255492165.a n = (A334070 (n + 1) : ℚ)

end A334070

/-! ## A334070.P13786809062007532914

`A000010(n+1)-A028234(2*A000010(n+1))`
-/

namespace A334070.P13786809062007532914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) - A028234 (2 * A000010 (n + 1)).toNat

end

end A334070.P13786809062007532914

namespace A334070

/-- `A000010(n+1)-A028234(2*A000010(n+1))` -/
def P13786809062007532914.Spec : Prop :=
  ∀ n, P13786809062007532914.a n = A334070 (n + 1)

end A334070

/-! ## A334070.P8669146619307075376

`A000010(n+1)-A163575(2*A000010(n+1))`
-/

namespace A334070.P8669146619307075376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) - A163575 (2 * A000010 (n + 1)).toNat

end

end A334070.P8669146619307075376

namespace A334070

/-- `A000010(n+1)-A163575(2*A000010(n+1))` -/
def P8669146619307075376.Spec : Prop :=
  ∀ n, P8669146619307075376.a n = A334070 (n + 1)

end A334070

/-! ## A334070.P12363827846116666310

`A067541(2*n+1)-A000265(A067541(2*n+1))`
-/

namespace A334070.P12363827846116666310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067541 (2 * n + 1) - A000265 (A067541 (2 * n + 1)).toNat

end

end A334070.P12363827846116666310

namespace A334070

/-- `A067541(2*n+1)-A000265(A067541(2*n+1))` -/
def P12363827846116666310.Spec : Prop :=
  ∀ n, P12363827846116666310.a n = A334070 (n + 1)

end A334070

/-!
# A334074: a(n) is the numerator of the sum of reciprocals of primes not exceeding n and not dividing binomial(2*n, n).

The programs for A334074, there is no canonical definition to state claims against.
-/

/-! ## A334074.P8507142356533132703

`∑{p}[A334075(n+1), A334075(n+1)/#]`
-/

namespace A334074.P8507142356533132703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334075 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, (A334075 (n + 1) : ℚ) / (p : ℚ)

end

end A334074.P8507142356533132703

/-! ## A334074.P18402343222185586529

`∑{p}[A056610(2*(n+1)), A056610(2*(n+1))/#]`
-/

namespace A334074.P18402343222185586529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056610 (2 * (n + 1))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, (A056610 (2 * (n + 1)) : ℚ) / (p : ℚ)

end

end A334074.P18402343222185586529

/-! ## A334074.P4709728166299958301

`A028235(A334075(n+1))`
-/

namespace A334074.P4709728166299958301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028235 (A334075 (n + 1)).toNat

end

end A334074.P4709728166299958301

/-! ## A334074.P17511801097746020014

`A028235(A056610(2*(n+1)))`
-/

namespace A334074.P17511801097746020014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028235 (A056610 (2 * (n + 1))).toNat

end

end A334074.P17511801097746020014

/-! ## A334074.P17027119730317131766

`A028235(A163644(2*(n+1)))`
-/

namespace A334074.P17027119730317131766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028235 (A163644 (2 * (n + 1))).toNat

end

end A334074.P17027119730317131766

/-!
# A334075: a(n) is the denominator of the sum of reciprocals of primes not exceeding n and not dividing binomial(2*n, n).

The programs for A334075, the canonical program `A334075.P6096195119552078021` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A334075 has offset 1).

The definition of A334075 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 414 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A334075.P152543066580683518

`A056610(2*(n+1))`
-/

namespace A334075.P152543066580683518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056610 (2 * (n + 1))

end

end A334075.P152543066580683518

namespace A334075

/-- `A056610(2*(n+1))` -/
def P152543066580683518.Spec : Prop :=
  ∀ n, P152543066580683518.a n = A334075 (n + 1)

end A334075

/-! ## A334075.P6096195119552078021

`A163644(2*(n+1))`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A334075

/-- `A163644(2*(n+1))` -/
def P6096195119552078021.Spec : Prop :=
  ∀ n, P6096195119552078021.a n = A334075 (n + 1)

theorem P6096195119552078021.correct : P6096195119552078021.Spec := by
  intro n
  simp only [A334075, Nat.add_sub_cancel]

end A334075

/-! ## A334075.P7090783094462743099

`or(1, A056610(A103517(n)))`
-/

namespace A334075.P7090783094462743099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A056610 (A103517 n).toNat)

end

end A334075.P7090783094462743099

namespace A334075

/-- `or(1, A056610(A103517(n)))` -/
def P7090783094462743099.Spec : Prop :=
  ∀ n, P7090783094462743099.a n = A334075 (n + 1)

end A334075

/-! ## A334075.P9259337180387267546

`A056609(2*(n+1))*A056611(2*(n+1))`
-/

namespace A334075.P9259337180387267546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056609 (2 * (n + 1)) * A056611 (2 * (n + 1))

end

end A334075.P9259337180387267546

namespace A334075

/-- `A056609(2*(n+1))*A056611(2*(n+1))` -/
def P9259337180387267546.Spec : Prop :=
  ∀ n, P9259337180387267546.a n = A334075 (n + 1)

end A334075

/-! ## A334075.P17118823763678137455

`lcm(A056611(2*n+1), A056611(2*(n+1)))`
-/

namespace A334075.P17118823763678137455
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A056611 (2 * n + 1)) (A056611 (2 * (n + 1)))

end

end A334075.P17118823763678137455

namespace A334075

/-- `lcm(A056611(2*n+1), A056611(2*(n+1)))` -/
def P17118823763678137455.Spec : Prop :=
  ∀ n, (P17118823763678137455.a n : ℤ) = A334075 (n + 1)

end A334075

/-! ## A334075.P14581467426064352557

`gcd(A000038(n), A056610(A005843(n+1)))`
-/

namespace A334075.P14581467426064352557
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A056610 (A005843 (n + 1)).toNat)

end

end A334075.P14581467426064352557

namespace A334075

/-- `gcd(A000038(n), A056610(A005843(n+1)))` -/
def P14581467426064352557.Spec : Prop :=
  ∀ n, (P14581467426064352557.a n : ℤ) = A334075 (n + 1)

end A334075

/-! ## A334075.P4791211509597645736

`A056610(A005843(n+1))+A000038(n+1)`
-/

namespace A334075.P4791211509597645736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056610 (A005843 (n + 1)).toNat + A000038 (n + 1)

end

end A334075.P4791211509597645736

namespace A334075

/-- `A056610(A005843(n+1))+A000038(n+1)` -/
def P4791211509597645736.Spec : Prop :=
  ∀ n, P4791211509597645736.a n = A334075 (n + 1)

end A334075

/-! ## A334075.P10872269734358879393

`A163644(Δ[A048058(n)])%A067687(n+2)`
-/

namespace A334075.P10872269734358879393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048058 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A163644 (f1 (n + 1) - f1 n).toNat) (A067687 (n + 2))

end

end A334075.P10872269734358879393

namespace A334075

/-- `A163644(Δ[A048058(n)])%A067687(n+2)` -/
def P10872269734358879393.Spec : Prop :=
  ∀ n, P10872269734358879393.a n = A334075 (n + 1)

end A334075

/-! ## A334075.P15637881858891694836

`A034386(n+1)/gcd(A000984(n+1), A034386(n+1))`
-/

namespace A334075.P15637881858891694836
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034386 (n + 1) : ℚ) / (Int.gcd (A000984 (n + 1)) (A034386 (n + 1)) : ℚ)

end

end A334075.P15637881858891694836

namespace A334075

/-- `A034386(n+1)/gcd(A000984(n+1), A034386(n+1))` -/
def P15637881858891694836.Spec : Prop :=
  ∀ n, P15637881858891694836.a n = (A334075 (n + 1) : ℚ)

end A334075

/-! ## A334075.P15349814915954486180

`A034386(2*(n+1))/A048633(2*(n+1))`
-/

namespace A334075.P15349814915954486180
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034386 (2 * (n + 1)) : ℚ) / (A048633 (2 * (n + 1)) : ℚ)

end

end A334075.P15349814915954486180

namespace A334075

/-- `A034386(2*(n+1))/A048633(2*(n+1))` -/
def P15349814915954486180.Spec : Prop :=
  ∀ n, P15349814915954486180.a n = (A334075 (n + 1) : ℚ)

end A334075

/-! ## A334075.P11381730829050737210

`A034386(2*(n+1))/A163641(2*(n+1))`
-/

namespace A334075.P11381730829050737210
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034386 (2 * (n + 1)) : ℚ) / (A163641 (2 * (n + 1)) : ℚ)

end

end A334075.P11381730829050737210

namespace A334075

/-- `A034386(2*(n+1))/A163641(2*(n+1))` -/
def P11381730829050737210.Spec : Prop :=
  ∀ n, P11381730829050737210.a n = (A334075 (n + 1) : ℚ)

end A334075

/-! ## A334075.P7258183172283222590

`lcm(A048633(2*(n+1)), A056606(n+1))/A048633(2*(n+1))`
-/

namespace A334075.P7258183172283222590
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A048633 (2 * (n + 1))) (A056606 (n + 1)) : ℚ) / (A048633 (2 * (n + 1)) : ℚ)

end

end A334075.P7258183172283222590

namespace A334075

/-- `lcm(A048633(2*(n+1)), A056606(n+1))/A048633(2*(n+1))` -/
def P7258183172283222590.Spec : Prop :=
  ∀ n, P7258183172283222590.a n = (A334075 (n + 1) : ℚ)

end A334075

/-!
# A334076: a(n) = bitwise NOR of n and 2n.

The programs for A334076, the canonical program `A334076.P9113614915420094535` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A334076 has offset 0).

The definition of A334076 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A334076.P9113614915420094535

`or(n, A261693(n))-n`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A334076

/-- `or(n, A261693(n))-n` -/
def P9113614915420094535.Spec : Prop :=
  ∀ n, P9113614915420094535.a n = A334076 n

theorem P9113614915420094535.correct : P9113614915420094535.Spec := by
  intro n
  simp only [A334076]

end A334076

/-! ## A334076.P8953179647202356577

`or(A003817(n)-n, 2*n)-2*n`
-/

namespace A334076.P8953179647202356577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A003817 n - (n : ℤ)) (2 * n : ℤ) - (2 * n : ℤ)

end

end A334076.P8953179647202356577

namespace A334076

/-- `or(A003817(n)-n, 2*n)-2*n` -/
def P8953179647202356577.Spec : Prop :=
  ∀ n, P8953179647202356577.a n = A334076 n

end A334076

/-! ## A334076.P42027191776867800

`and(n-A006257(2*n)+n, -(n+1))`
-/

namespace A334076.P42027191776867800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((n : ℤ) - A006257 (2 * n) + (n : ℤ)) (-(n + 1 : ℤ))

end

end A334076.P42027191776867800

namespace A334076

/-- `and(n-A006257(2*n)+n, -(n+1))` -/
def P42027191776867800.Spec : Prop :=
  ∀ n, P42027191776867800.a n = A334076 n

end A334076

/-! ## A334076.P63575968949213941

`A283165(n)-A006257(n)`
-/

namespace A334076.P63575968949213941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283165 n - A006257 n

end

end A334076.P63575968949213941

namespace A334076

/-- `A283165(n)-A006257(n)` -/
def P63575968949213941.Spec : Prop :=
  ∀ n, P63575968949213941.a n = A334076 n

end A334076

/-! ## A334076.P14154851989709489777

`A261693(n)-A229763(n)`
-/

namespace A334076.P14154851989709489777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261693 n - A229763 n

end

end A334076.P14154851989709489777

namespace A334076

/-- `A261693(n)-A229763(n)` -/
def P14154851989709489777.Spec : Prop :=
  ∀ n, P14154851989709489777.a n = A334076 n

end A334076

/-! ## A334076.P6700304605061930177

`and(A035327(n), A261693(n))`
-/

namespace A334076.P6700304605061930177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A035327 n) (A261693 n)

end

end A334076.P6700304605061930177

namespace A334076

/-- `and(A035327(n), A261693(n))` -/
def P6700304605061930177.Spec : Prop :=
  ∀ n, P6700304605061930177.a n = A334076 n

end A334076

/-! ## A334076.P13152334332821837961

`and(-A006257(n), A035327(n))`
-/

namespace A334076.P13152334332821837961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A006257 n) (A035327 n)

end

end A334076.P13152334332821837961

namespace A334076

/-- `and(-A006257(n), A035327(n))` -/
def P13152334332821837961.Spec : Prop :=
  ∀ n, P13152334332821837961.a n = A334076 n

end A334076

/-! ## A334076.P6396523959245201724

`and(A001478(n+1), A261693(n))`
-/

namespace A334076.P6396523959245201724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001478 (n + 1)) (A261693 n)

end

end A334076.P6396523959245201724

namespace A334076

/-- `and(A001478(n+1), A261693(n))` -/
def P6396523959245201724.Spec : Prop :=
  ∀ n, P6396523959245201724.a n = A334076 n

end A334076

/-! ## A334076.P13041723852920207784

`and(A010078(n+1), A261693(n))`
-/

namespace A334076.P13041723852920207784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A010078 (n + 1)) (A261693 n)

end

end A334076.P13041723852920207784

namespace A334076

/-- `and(A010078(n+1), A261693(n))` -/
def P13041723852920207784.Spec : Prop :=
  ∀ n, P13041723852920207784.a n = A334076 n

end A334076

/-! ## A334076.P12461297299722344068

`and(A004277(n)-(A006257(n)+n), -A006257(n))`
-/

namespace A334076.P12461297299722344068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A004277 n - (A006257 n + (n : ℤ))) (-A006257 n)

end

end A334076.P12461297299722344068

namespace A334076

/-- `and(A004277(n)-(A006257(n)+n), -A006257(n))` -/
def P12461297299722344068.Spec : Prop :=
  ∀ n, P12461297299722344068.a n = A334076 n

end A334076

/-! ## A334076.P10816730948326222409

`and(1-A006257(n)+n-A057427(n), -A006257(n))`
-/

namespace A334076.P10816730948326222409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (1 - A006257 n + (n : ℤ) - A057427 n) (-A006257 n)

end

end A334076.P10816730948326222409

namespace A334076

/-- `and(1-A006257(n)+n-A057427(n), -A006257(n))` -/
def P10816730948326222409.Spec : Prop :=
  ∀ n, P10816730948326222409.a n = A334076 n

end A334076

/-! ## A334076.P14011372791065204529

`A265716(n)-2*n`
-/

namespace A334076.P14011372791065204529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265716 n - (2 * n : ℤ)

end

end A334076.P14011372791065204529

namespace A334076

/-- `A265716(n)-2*n` -/
def P14011372791065204529.Spec : Prop :=
  ∀ n, P14011372791065204529.a n = A334076 n

end A334076

/-! ## A334076.P7567467747982282017

`A048735(A261693(n))`
-/

namespace A334076.P7567467747982282017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048735 (A261693 n).toNat

end

end A334076.P7567467747982282017

namespace A334076

/-- `A048735(A261693(n))` -/
def P7567467747982282017.Spec : Prop :=
  ∀ n, P7567467747982282017.a n = A334076 n

end A334076

/-! ## A334076.P5421498499082787479

`A265716(n)%A004277(n)`
-/

namespace A334076.P5421498499082787479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A265716 n) (A004277 n)

end

end A334076.P5421498499082787479

namespace A334076

/-- `A265716(n)%A004277(n)` -/
def P5421498499082787479.Spec : Prop :=
  ∀ n, P5421498499082787479.a n = A334076 n

end A334076

/-! ## A334076.P9358420665386723500

`and(A261693(n), A265716(n))`
-/

namespace A334076.P9358420665386723500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A261693 n) (A265716 n)

end

end A334076.P9358420665386723500

namespace A334076

/-- `and(A261693(n), A265716(n))` -/
def P9358420665386723500.Spec : Prop :=
  ∀ n, P9358420665386723500.a n = A334076 n

end A334076

/-! ## A334076.P13284838317960411037

`xor(A005843(n), A265716(n))`
-/

namespace A334076.P13284838317960411037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A005843 n) (A265716 n)

end

end A334076.P13284838317960411037

namespace A334076

/-- `xor(A005843(n), A265716(n))` -/
def P13284838317960411037.Spec : Prop :=
  ∀ n, P13284838317960411037.a n = A334076 n

end A334076

/-! ## A334076.P15259569966427963182

`A163617(A265716(n)-n)-A163617(n)`
-/

namespace A334076.P15259569966427963182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163617 (A265716 n - (n : ℤ)).toNat - A163617 n

end

end A334076.P15259569966427963182

namespace A334076

/-- `A163617(A265716(n)-n)-A163617(n)` -/
def P15259569966427963182.Spec : Prop :=
  ∀ n, P15259569966427963182.a n = A334076 n

end A334076

/-! ## A334076.P17514273690406704188

`or(n, A279645(2*n))-n`
-/

namespace A334076.P17514273690406704188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (A279645 (2 * n)) - (n : ℤ)

end

end A334076.P17514273690406704188

namespace A334076

/-- `or(n, A279645(2*n))-n` -/
def P17514273690406704188.Spec : Prop :=
  ∀ n, P17514273690406704188.a n = A334076 n

end A334076

/-! ## A334076.P2771120478602412746

`A048735(A035327(2*n))`
-/

namespace A334076.P2771120478602412746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048735 (A035327 (2 * n)).toNat

end

end A334076.P2771120478602412746

namespace A334076

/-- `A048735(A035327(2*n))` -/
def P2771120478602412746.Spec : Prop :=
  ∀ n, P2771120478602412746.a n = A334076 n

end A334076

/-! ## A334076.P9822439437479707642

`and(A003817(2*n)-n, A035327(2*n))`
-/

namespace A334076.P9822439437479707642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A003817 (2 * n) - (n : ℤ)) (A035327 (2 * n))

end

end A334076.P9822439437479707642

namespace A334076

/-- `and(A003817(2*n)-n, A035327(2*n))` -/
def P9822439437479707642.Spec : Prop :=
  ∀ n, P9822439437479707642.a n = A334076 n

end A334076

/-!
# A334077: a(n) is the smallest positive integer that can be expressed as the difference of two positive triangular numbers in at least n ways.

The programs for A334077, there is no canonical definition to state claims against.
-/

/-! ## A334077.P8420360486142944089

`A136108(A342951(n+1))`
-/

namespace A334077.P8420360486142944089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136108 (A342951 (n + 1)).toNat

end

end A334077.P8420360486142944089

/-! ## A334077.P3660008706542482548

`filter[A136108(n), A095190(#)]`
-/

namespace A334077.P3660008706542482548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136108 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A095190 (f1 j).toNat = 1) n)

end

end A334077.P3660008706542482548

/-! ## A334077.P935621362556133654

`A136108(∑[C(A036598(n)+2, 2)])`
-/

namespace A334077.P935621362556133654
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A036598 n + 2).toNat 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136108 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A334077.P935621362556133654

/-! ## A334077.P12981181715104069268

`A136108(A079042(n+1)^(∑{digits}[n, 10^#]%9))`
-/

namespace A334077.P12981181715104069268
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136108 (A079042 (n + 1) ^ (((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => 10 ^ x).sum % 9)).toNat

end

end A334077.P12981181715104069268

/-! ## A334077.P14872429027643674199

`A136108(A079042(n+1)^A055642(n))`
-/

namespace A334077.P14872429027643674199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136108 (SequenceMachineLib.roundAway ((A079042 (n + 1) : ℚ) ^ (A055642 n : ℤ))).toNat

end

end A334077.P14872429027643674199

/-!
# A334078: a(n) is the smallest positive integer that can be expressed as the difference of two positive squares in at least n ways.

The programs for A334078, there is no canonical definition to state claims against.
-/

/-! ## A334078.P6619731743052558237

`A094191(A034178(A094191(n+1)))`
-/

namespace A334078.P6619731743052558237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094191 (A034178 (A094191 (n + 1)).toNat).toNat

end

end A334078.P6619731743052558237

/-! ## A334078.P2282241541829266536

`A094191(A359099(n+1)+A061135(n+1))`
-/

namespace A334078.P2282241541829266536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094191 (A359099 (n + 1) + A061135 (n + 1)).toNat

end

end A334078.P2282241541829266536

/-!
# A334079: Total area of all triangles such that p + q = 2*n, p < q (p, q prime), with base (q - p) and height p.

The programs for A334079, there is no canonical definition to state claims against.
-/

/-! ## A334079.P6312063662144437169

`A334065(n+1)-A334119(n+1)`
-/

namespace A334079.P6312063662144437169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334065 (n + 1) - A334119 (n + 1)

end

end A334079.P6312063662144437169

/-! ## A334079.P8432592555148014111

`(n+1)*Δ[A279726(A028310(n))]-A334119(n+1)`
-/

namespace A334079.P8432592555148014111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279726 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (f1 (n + 1) - f1 n) - A334119 (n + 1)

end

end A334079.P8432592555148014111

/-! ## A334079.P7858458183372231712

`(n+1)*Δ[A279726(A000007(n)+n)]-A334119(n+1)`
-/

namespace A334079.P7858458183372231712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279726 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (f1 (n + 1) - f1 n) - A334119 (n + 1)

end

end A334079.P7858458183372231712

/-! ## A334079.P582062919123931675

`(n+1)*A187619(abs(1-n)+2)-A334119(n+1)`
-/

namespace A334079.P582062919123931675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A187619 (|1 - (n : ℤ)| + 2).toNat - A334119 (n + 1)

end

end A334079.P582062919123931675

/-! ## A334079.P7154667177539416387

`(n+1)*lcm(2, A187619(A028310(n)+1))-A334119(n+1)`
-/

namespace A334079.P7154667177539416387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) * Int.lcm 2 (A187619 (A028310 n + 1).toNat) : ℤ) - A334119 (n + 1)

end

end A334079.P7154667177539416387

/-! ## A334079.P10326111776918251552

`(n+1)*Δ[A279726(A233583(n+1))]-A334119(n+1)`
-/

namespace A334079.P10326111776918251552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279726 (A233583 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (f1 (n + 1) - f1 n) - A334119 (n + 1)

end

end A334079.P10326111776918251552

/-!
# A334080: Number of Pythagorean triples among the divisors of 60*n.

The programs for A334080, there is no canonical definition to state claims against.
-/

/-! ## A334080.P2277078057034258877

`∑{d}[n+1, 2-A010060(A111008(#)²)]`
-/

namespace A334080.P2277078057034258877
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (2 - A010060 (A111008 d ^ 2).toNat)

end

end A334080.P2277078057034258877

/-! ## A334080.P10079840311093090053

`or(A000005(n+1), A025435(A049714(n)))`
-/

namespace A334080.P10079840311093090053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000005 (n + 1)) (A025435 (A049714 n).toNat)

end

end A334080.P10079840311093090053

/-! ## A334080.P6376845192048292673

`or(A025435(A049714(n)), A122667(n+1))`
-/

namespace A334080.P6376845192048292673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A025435 (A049714 n).toNat) (A122667 (n + 1))

end

end A334080.P6376845192048292673

/-! ## A334080.P16130699548672818771

`∑{d}[n+1, 2^A000045(A228275(A225783(#)))]`
-/

namespace A334080.P16130699548672818771
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (2 : ℚ) ^ (A000045 (A228275 (A225783 d).toNat).toNat : ℤ)

end

end A334080.P16130699548672818771

/-! ## A334080.P2551001533777413726

`A220400(A221388(n+1))+A000005(n+1)`
-/

namespace A334080.P2551001533777413726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220400 (A221388 (n + 1)).toNat + A000005 (n + 1)

end

end A334080.P2551001533777413726

/-!
# A334081: If the terms of this sequence are divided into groups, the lengths of which are the terms of this sequence, the k-th term in a group is one greater than the k-th term in the previous group with at least k terms or 1 if no such group exists.

The programs for A334081, there is no canonical definition to state claims against.
-/

/-! ## A334081.P2861036836743211260

`A212121(A349152(n+2))`
-/

namespace A334081.P2861036836743211260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212121 (A349152 (n + 2)).toNat

end

end A334081.P2861036836743211260

/-!
# A334082: a(n) is the number of binomial coefficients C(n,k), with 0<=k<=n, that are not practical.

The programs for A334082, there is no canonical definition to state claims against.
-/

/-! ## A334082.P4977952717026285543

`A073184(A158640(n+1))%A037280(n+1)`
-/

namespace A334082.P4977952717026285543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A073184 (A158640 (n + 1)).toNat) (A037280 (n + 1))

end

end A334082.P4977952717026285543

/-! ## A334082.P12679891825561805423

`A000005(A050079(3*n+4))%A101229(A004907(n+1)+4)`
-/

namespace A334082.P12679891825561805423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000005 (A050079 (3 * n + 4)).toNat) (A101229 (A004907 (n + 1) + 4).toNat)

end

end A334082.P12679891825561805423

/-! ## A334082.P8692057571287548411

`A367346(A322193(n))%A006530(n+1)`
-/

namespace A334082.P8692057571287548411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A367346 (A322193 n).toNat) (A006530 (n + 1))

end

end A334082.P8692057571287548411

/-! ## A334082.P14374444871696158181

`C(A000120(A073039(n+1)), A035214(n))`
-/

namespace A334082.P14374444871696158181
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A000120 (A073039 (n + 1)).toNat).toNat (A035214 n).toNat

end

end A334082.P14374444871696158181

/-!
# A334083: Integers m such that all binomial coefficients C(m,k), with 0<=k<=m, are practical numbers.

The programs for A334083, there is no canonical definition to state claims against.
-/

/-! ## A334083.P3107603212041579087

`2^comp[3^n!]`
-/

namespace A334083.P3107603212041579087
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ Nat.factorial n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A334083.P3107603212041579087

/-! ## A334083.P16234325742582729826

`2^round(n/sin(1))`
-/

namespace A334083.P16234325742582729826
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (SequenceMachineLib.roundAway ((n : ℝ) / Real.sin (1 : ℝ)) : ℤ)

end

end A334083.P16234325742582729826

/-! ## A334083.P16225825327890095045

`2^comp[Δ[lcm(3, n)]]`
-/

namespace A334083.P16225825327890095045
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 3 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A334083.P16225825327890095045

/-! ## A334083.P4477331825145607091

`2^round(6*n/5)`
-/

namespace A334083.P4477331825145607091
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (SequenceMachineLib.roundAway (6 * ((n : ℚ) / 5)) : ℤ)

end

end A334083.P4477331825145607091

/-! ## A334083.P3271036094441473920

`record[(2-C(4, 6^(n%3)))^n]`
-/

namespace A334083.P3271036094441473920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - (Nat.choose 4 (6 ^ (n % 3)) : ℤ)) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A334083.P3271036094441473920

/-!
# A334084: Integers m such that only 2 binomial coefficients C(m,k), with 0<=k<=m, are practical numbers.

The programs for A334084, there is no canonical definition to state claims against.
-/

/-! ## A334084.P10021990995629037519

`lt[and(n, n+1), n%6]`
-/

namespace A334084.P10021990995629037519
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land n (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A334084.P10021990995629037519

/-! ## A334084.P17926792556900759694

`or(1, 2^n)-2%n!`
-/

namespace A334084.P17926792556900759694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 1 (2 ^ n) : ℤ) - ((2 % Nat.factorial n : ℕ) : ℤ)

end

end A334084.P17926792556900759694

/-! ## A334084.P12764220276545490550

`eq[4, (3-and(n, n+2))²]`
-/

namespace A334084.P12764220276545490550
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 - (Nat.land n (n + 2) : ℤ)) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A334084.P12764220276545490550

/-! ## A334084.P2699321560572988172

`ogf((1-2x^2-2x^3+4x^4)/(1-3x+2x^2))`
-/

namespace A334084.P2699321560572988172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, -2, -2, 4] [1, -3, 2] n

end

end A334084.P2699321560572988172

/-! ## A334084.P7248502830845858304

`eq[0, and(n²+1, (n+1)²)]`
-/

namespace A334084.P7248502830845858304
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land (n ^ 2 + 1) ((n + 1) ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A334084.P7248502830845858304

/-!
# A334085: GCD of n and the product of all primes < n.

The programs for A334085, the canonical program `A334085.P4822325986563888454` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A334085 has offset 1).

The definition of A334085 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034386, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A334085.P4822325986563888454

`gcd(n+1, A034386(n))`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A334085

/-- `gcd(n+1, A034386(n))` -/
def P4822325986563888454.Spec : Prop :=
  ∀ n, (P4822325986563888454.a n : ℤ) = A334085 (n + 1)

theorem P4822325986563888454.correct : P4822325986563888454.Spec := by
  intro n
  simp only [A334085, Nat.add_sub_cancel]

end A334085

/-! ## A334085.P8873034625352386523

`∏{p}[∏{p}[n+1, #%n], #]`
-/

namespace A334085.P8873034625352386523
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p % n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), p

end

end A334085.P8873034625352386523

namespace A334085

/-- `∏{p}[∏{p}[n+1, #%n], #]` -/
def P8873034625352386523.Spec : Prop :=
  ∀ n, (P8873034625352386523.a n : ℤ) = A334085 (n + 1)

end A334085

/-! ## A334085.P13558591472033206131

`∏{p}[Δ[A101203(n)], #]`
-/

namespace A334085.P13558591472033206131
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101203 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A334085.P13558591472033206131

namespace A334085

/-- `∏{p}[Δ[A101203(n)], #]` -/
def P13558591472033206131.Spec : Prop :=
  ∀ n, (P13558591472033206131.a n : ℤ) = A334085 (n + 1)

end A334085

/-! ## A334085.P10006793016176770789

`∏{p}[A005451(n+1), #]`
-/

namespace A334085.P10006793016176770789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005451 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A334085.P10006793016176770789

namespace A334085

/-- `∏{p}[A005451(n+1), #]` -/
def P10006793016176770789.Spec : Prop :=
  ∀ n, (P10006793016176770789.a n : ℤ) = A334085 (n + 1)

end A334085

/-! ## A334085.P10614287633249635777

`∏{p}[A005730(n+1), #]`
-/

namespace A334085.P10614287633249635777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005730 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A334085.P10614287633249635777

namespace A334085

/-- `∏{p}[A005730(n+1), #]` -/
def P10614287633249635777.Spec : Prop :=
  ∀ n, (P10614287633249635777.a n : ℤ) = A334085 (n + 1)

end A334085

/-! ## A334085.P8819274840550155219

`∏{p}[A048671(n+1), #]`
-/

namespace A334085.P8819274840550155219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048671 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A334085.P8819274840550155219

namespace A334085

/-- `∏{p}[A048671(n+1), #]` -/
def P8819274840550155219.Spec : Prop :=
  ∀ n, (P8819274840550155219.a n : ℤ) = A334085 (n + 1)

end A334085

/-! ## A334085.P1752135055737417056

`∏{p}[A144907(n+1), #]`
-/

namespace A334085.P1752135055737417056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144907 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A334085.P1752135055737417056

namespace A334085

/-- `∏{p}[A144907(n+1), #]` -/
def P1752135055737417056.Spec : Prop :=
  ∀ n, (P1752135055737417056.a n : ℤ) = A334085 (n + 1)

end A334085

/-! ## A334085.P7650086343572989530

`∏{p}[A191558(n+1), #]`
-/

namespace A334085.P7650086343572989530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191558 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A334085.P7650086343572989530

namespace A334085

/-- `∏{p}[A191558(n+1), #]` -/
def P7650086343572989530.Spec : Prop :=
  ∀ n, (P7650086343572989530.a n : ℤ) = A334085 (n + 1)

end A334085

/-! ## A334085.P3742904454794946587

`∏{p}[(n+1)%A151800(n), #]`
-/

namespace A334085.P3742904454794946587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A151800 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A334085.P3742904454794946587

namespace A334085

/-- `∏{p}[(n+1)%A151800(n), #]` -/
def P3742904454794946587.Spec : Prop :=
  ∀ n, (P3742904454794946587.a n : ℤ) = A334085 (n + 1)

end A334085

/-! ## A334085.P2768333908746647216

`A007947(A005451(n+1))`
-/

namespace A334085.P2768333908746647216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A005451 (n + 1)).toNat

end

end A334085.P2768333908746647216

namespace A334085

/-- `A007947(A005451(n+1))` -/
def P2768333908746647216.Spec : Prop :=
  ∀ n, P2768333908746647216.a n = A334085 (n + 1)

end A334085

/-! ## A334085.P9315616392362833955

`A007947(A005730(n+1))`
-/

namespace A334085.P9315616392362833955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A005730 (n + 1)).toNat

end

end A334085.P9315616392362833955

namespace A334085

/-- `A007947(A005730(n+1))` -/
def P9315616392362833955.Spec : Prop :=
  ∀ n, P9315616392362833955.a n = A334085 (n + 1)

end A334085

/-! ## A334085.P17548044556557468184

`A007947(A048671(n+1))`
-/

namespace A334085.P17548044556557468184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A048671 (n + 1)).toNat

end

end A334085.P17548044556557468184

namespace A334085

/-- `A007947(A048671(n+1))` -/
def P17548044556557468184.Spec : Prop :=
  ∀ n, P17548044556557468184.a n = A334085 (n + 1)

end A334085

/-! ## A334085.P11142921670793755416

`A007947(A144907(n+1))`
-/

namespace A334085.P11142921670793755416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A144907 (n + 1)).toNat

end

end A334085.P11142921670793755416

namespace A334085

/-- `A007947(A144907(n+1))` -/
def P11142921670793755416.Spec : Prop :=
  ∀ n, P11142921670793755416.a n = A334085 (n + 1)

end A334085

/-! ## A334085.P17998950486403985967

`A005730(n+1)/A245477(n)`
-/

namespace A334085.P17998950486403985967
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005730 (n + 1) : ℚ) / (A245477 n : ℚ)

end

end A334085.P17998950486403985967

namespace A334085

/-- `A005730(n+1)/A245477(n)` -/
def P17998950486403985967.Spec : Prop :=
  ∀ n, P17998950486403985967.a n = (A334085 (n + 1) : ℚ)

end A334085

/-! ## A334085.P6532772898455857403

`A144907(n+1)/A177704(n)`
-/

namespace A334085.P6532772898455857403
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A144907 (n + 1) : ℚ) / (A177704 n : ℚ)

end

end A334085.P6532772898455857403

namespace A334085

/-- `A144907(n+1)/A177704(n)` -/
def P6532772898455857403.Spec : Prop :=
  ∀ n, P6532772898455857403.a n = (A334085 (n + 1) : ℚ)

end A334085

/-! ## A334085.P16535215991945641097

`gcd(A007947(n+1), A085926(n))`
-/

namespace A334085.P16535215991945641097
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A007947 (n + 1)) (A085926 n)

end

end A334085.P16535215991945641097

namespace A334085

/-- `gcd(A007947(n+1), A085926(n))` -/
def P16535215991945641097.Spec : Prop :=
  ∀ n, (P16535215991945641097.a n : ℤ) = A334085 (n + 1)

end A334085

/-! ## A334085.P7226994388489786829

`gcd(A005451(n+1), A144845(n))`
-/

namespace A334085.P7226994388489786829
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A005451 (n + 1)) (A144845 n)

end

end A334085.P7226994388489786829

namespace A334085

/-- `gcd(A005451(n+1), A144845(n))` -/
def P7226994388489786829.Spec : Prop :=
  ∀ n, (P7226994388489786829.a n : ℤ) = A334085 (n + 1)

end A334085

/-! ## A334085.P8350119858405991302

`lcm(A226040(n), A382486(n+1))`
-/

namespace A334085.P8350119858405991302
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A226040 n) (A382486 (n + 1))

end

end A334085.P8350119858405991302

namespace A334085

/-- `lcm(A226040(n), A382486(n+1))` -/
def P8350119858405991302.Spec : Prop :=
  ∀ n, (P8350119858405991302.a n : ℤ) = A334085 (n + 1)

end A334085

/-! ## A334085.P3601998481843695026

`A005451(n+1)-A066503(n+1)`
-/

namespace A334085.P3601998481843695026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005451 (n + 1) - A066503 (n + 1)

end

end A334085.P3601998481843695026

namespace A334085

/-- `A005451(n+1)-A066503(n+1)` -/
def P3601998481843695026.Spec : Prop :=
  ∀ n, P3601998481843695026.a n = A334085 (n + 1)

end A334085

/-! ## A334085.P14693211754960696399

`A076618(n+1)-A089026(n+1)`
-/

namespace A334085.P14693211754960696399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076618 (n + 1) - A089026 (n + 1)

end

end A334085.P14693211754960696399

namespace A334085

/-- `A076618(n+1)-A089026(n+1)` -/
def P14693211754960696399.Spec : Prop :=
  ∀ n, P14693211754960696399.a n = A334085 (n + 1)

end A334085

/-!
# A334086: Positive numbers not of the form 2*x^4 + y*(y+1)/2 + z*(z+1)/2 with x,y,z nonnegative integers.

The programs for A334086, there is no canonical definition to state claims against.
-/

/-! ## A334086.P3074723016101902651

`∩[A357505(n+1), A017173(n)]`
-/

namespace A334086.P3074723016101902651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357505 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017173 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A334086.P3074723016101902651

/-!
# A334087: Draw the lines with equations y=kx (k=1..n) on the R^2/Z^2 square flat torus. a(n) is the number of intersection points.

The programs for A334087, there is no canonical definition to state claims against.
-/

/-! ## A334087.P9360691769900607023

`∑[A030706(∑[A025480(n)])]`
-/

namespace A334087.P9360691769900607023
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030706 ((∑ j ∈ Finset.range (n + 1), f2 j).toNat + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A334087.P9360691769900607023

/-! ## A334087.P1775090346097542348

`A182220(A001993(n)+1)-1`
-/

namespace A334087.P1775090346097542348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182220 (A001993 n + 1).toNat - 1

end

end A334087.P1775090346097542348

/-! ## A334087.P14105754769003711727

`∑[A030706(∑[A030109(n+1)])]`
-/

namespace A334087.P14105754769003711727
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030109 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030706 ((∑ j ∈ Finset.range (n + 1), f2 j).toNat + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A334087.P14105754769003711727

/-! ## A334087.P9192735663097613530

`∑[∑[A285108(A227499(n+1))]]`
-/

namespace A334087.P9192735663097613530
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285108 (A227499 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A334087.P9192735663097613530

/-! ## A334087.P946291002799490393

`∑[A048676(∏[A064989(n+1)])]`
-/

namespace A334087.P946291002799490393
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048676 (∏ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A334087.P946291002799490393

/-!
# A334088: a(n) = sqrt(Resultant(T(2*n,x/2), T(2*n,i*x/2))), where T(n,x) is a Chebyshev polynomial of the first kind and i = sqrt(-1).

The programs for A334088, there is no canonical definition to state claims against.
-/

/-! ## A334088.P3289937134462499343

`A004148(n+1)*A341578(A003024(n))`
-/

namespace A334088.P3289937134462499343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004148 (n + 1) * A341578 (A003024 n).toNat

end

end A334088.P3289937134462499343

/-!
# A334089: a(n) = sqrt(A334088(n)/2^(n-1)).

The programs for A334089, there is no canonical definition to state claims against.
-/

/-! ## A334089.P7624565606773036018

`sqrt(A334088(n+1)/2^n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A334089.P7624565606773036018
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((A334088 (n + 1) : ℚ) / (2 ^ n : ℚ) : ℝ)

end

end A334089.P7624565606773036018

/-!
# A334090: a(1) = 0, and then after the first differences of A064097.

The programs for A334090, the canonical program `A334090.P11624734259785140270` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A334090 has offset 1).

The definition of A334090 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A334090.P6001621820163888481

`A334091(n+1)+A334195(n+1)`
-/

namespace A334090.P6001621820163888481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334091 (n + 1) + A334195 (n + 1)

end

end A334090.P6001621820163888481

namespace A334090

/-- `A334091(n+1)+A334195(n+1)` -/
def P6001621820163888481.Spec : Prop :=
  ∀ n, P6001621820163888481.a n = A334090 (n + 1)

end A334090

/-! ## A334090.P11624734259785140270

`Δ[A073933(A341629(2*n+1)+n)]`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A334090

/-- `Δ[A073933(A341629(2*n+1)+n)]` -/
def P11624734259785140270.Spec : Prop :=
  ∀ n, P11624734259785140270.a n = A334090 (n + 1)

theorem P11624734259785140270.correct : P11624734259785140270.Spec := by
  intro n
  simp only [A334090, Nat.add_sub_cancel]

end A334090

/-! ## A334090.P11393338152115511887

`A064097(n+1)-A064097(A028310(n))`
-/

namespace A334090.P11393338152115511887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064097 (n + 1) - A064097 (A028310 n).toNat

end

end A334090.P11393338152115511887

namespace A334090

/-- `A064097(n+1)-A064097(A028310(n))` -/
def P11393338152115511887.Spec : Prop :=
  ∀ n, P11393338152115511887.a n = A334090 (n + 1)

end A334090

/-! ## A334090.P5817067743727122695

`A064097(n+1)-A064097(A000007(n)+n)`
-/

namespace A334090.P5817067743727122695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064097 (n + 1) - A064097 (A000007 n + (n : ℤ)).toNat

end

end A334090.P5817067743727122695

namespace A334090

/-- `A064097(n+1)-A064097(A000007(n)+n)` -/
def P5817067743727122695.Spec : Prop :=
  ∀ n, P5817067743727122695.a n = A334090 (n + 1)

end A334090

/-! ## A334090.P10188534780230770821

`A064097(n+1)-A064097(A004277(n)-n)`
-/

namespace A334090.P10188534780230770821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064097 (n + 1) - A064097 (A004277 n - (n : ℤ)).toNat

end

end A334090.P10188534780230770821

namespace A334090

/-- `A064097(n+1)-A064097(A004277(n)-n)` -/
def P10188534780230770821.Spec : Prop :=
  ∀ n, P10188534780230770821.a n = A334090 (n + 1)

end A334090

/-! ## A334090.P14988327710056843915

`Δ[∑{d}[n, A307742(#)]]`
-/

namespace A334090.P14988327710056843915
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), A307742 d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A334090.P14988327710056843915

namespace A334090

/-- `Δ[∑{d}[n, A307742(#)]]` -/
def P14988327710056843915.Spec : Prop :=
  ∀ n, P14988327710056843915.a n = A334090 (n + 1)

end A334090

/-! ## A334090.P9242337270868396020

`Δ[A064097(comp[2*(n+1)]-n+1)]`
-/

namespace A334090.P9242337270868396020
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064097 ((SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n : ℤ) - (n : ℤ) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A334090.P9242337270868396020

namespace A334090

/-- `Δ[A064097(comp[2*(n+1)]-n+1)]` -/
def P9242337270868396020.Spec : Prop :=
  ∀ n, P9242337270868396020.a n = A334090 (n + 1)

end A334090

/-! ## A334090.P7400043715089891615

`Δ[A334203(2*A065033(2*n))]`
-/

namespace A334090.P7400043715089891615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334203 (2 * A065033 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A334090.P7400043715089891615

namespace A334090

/-- `Δ[A334203(2*A065033(2*n))]` -/
def P7400043715089891615.Spec : Prop :=
  ∀ n, P7400043715089891615.a n = A334090 (n + 1)

end A334090

/-! ## A334090.P217205453582820064

`Δ[A334203(lt[(n+1)%A065033(n+1), 1]+1)]`
-/

namespace A334090.P217205453582820064
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A065033 (n + 1))

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334203 (SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A334090.P217205453582820064

namespace A334090

/-- `Δ[A334203(lt[(n+1)%A065033(n+1), 1]+1)]` -/
def P217205453582820064.Spec : Prop :=
  ∀ n, P217205453582820064.a n = A334090 (n + 1)

end A334090

/-!
# A334091: a(1) = 0, then after the first differences of A329697.

The programs for A334091, the canonical program `A334091.P902151648939679673` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A334091 has offset 1).

The definition of A334091 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A334090, A334195, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A334091.P902151648939679673

`A334090(n+1)-A334195(n+1)`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A334091

/-- `A334090(n+1)-A334195(n+1)` -/
def P902151648939679673.Spec : Prop :=
  ∀ n, P902151648939679673.a n = A334091 (n + 1)

theorem P902151648939679673.correct : P902151648939679673.Spec := by
  intro n
  simp only [A334091, Nat.add_sub_cancel]

end A334091

/-! ## A334091.P17335919520083661355

`Δ[A329697(abs(1-n)+1)]`
-/

namespace A334091.P17335919520083661355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329697 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A334091.P17335919520083661355

namespace A334091

/-- `Δ[A329697(abs(1-n)+1)]` -/
def P17335919520083661355.Spec : Prop :=
  ∀ n, P17335919520083661355.a n = A334091 (n + 1)

end A334091

/-! ## A334091.P3568077243417316960

`Δ[A329697(A028310(n))+n]-1`
-/

namespace A334091.P3568077243417316960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329697 (A028310 n).toNat + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A334091.P3568077243417316960

namespace A334091

/-- `Δ[A329697(A028310(n))+n]-1` -/
def P3568077243417316960.Spec : Prop :=
  ∀ n, P3568077243417316960.a n = A334091 (n + 1)

end A334091

/-! ## A334091.P13665964619829275030

`A329697(n+1)-A329697(comp[2*(n+1)]+1)`
-/

namespace A334091.P13665964619829275030
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329697 (n + 1) - A329697 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1)

end

end A334091.P13665964619829275030

namespace A334091

/-- `A329697(n+1)-A329697(comp[2*(n+1)]+1)` -/
def P13665964619829275030.Spec : Prop :=
  ∀ n, P13665964619829275030.a n = A334091 (n + 1)

end A334091

/-! ## A334091.P1713202612070118298

`Δ[A329697(A008574(n))-n]+1`
-/

namespace A334091.P1713202612070118298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329697 (A008574 n).toNat - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A334091.P1713202612070118298

namespace A334091

/-- `Δ[A329697(A008574(n))-n]+1` -/
def P1713202612070118298.Spec : Prop :=
  ∀ n, P1713202612070118298.a n = A334091 (n + 1)

end A334091

/-! ## A334091.P11821129086258529349

`Δ[A329697(A008574(n))%A008778(n)]`
-/

namespace A334091.P11821129086258529349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A329697 (A008574 n).toNat) (A008778 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A334091.P11821129086258529349

namespace A334091

/-- `Δ[A329697(A008574(n))%A008778(n)]` -/
def P11821129086258529349.Spec : Prop :=
  ∀ n, P11821129086258529349.a n = A334091 (n + 1)

end A334091

/-! ## A334091.P6495518674327179245

`Δ[A329697(A008574(n))]%A017377(n+1)`
-/

namespace A334091.P6495518674327179245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329697 (A008574 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A017377 (n + 1))

end

end A334091.P6495518674327179245

namespace A334091

/-- `Δ[A329697(A008574(n))]%A017377(n+1)` -/
def P6495518674327179245.Spec : Prop :=
  ∀ n, P6495518674327179245.a n = A334091 (n + 1)

end A334091

/-! ## A334091.P13056605279179148986

`Δ[A329697(A028310(n))+A017197(n)%3]`
-/

namespace A334091.P13056605279179148986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329697 (A028310 n).toNat + Int.tmod (A017197 n) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A334091.P13056605279179148986

namespace A334091

/-- `Δ[A329697(A028310(n))+A017197(n)%3]` -/
def P13056605279179148986.Spec : Prop :=
  ∀ n, P13056605279179148986.a n = A334091 (n + 1)

end A334091

/-!
# A334092: Primes p of the form of the form q*2^h + 1, where q is one of the Fermat primes; Primes p for which A329697(p) == 2.

The programs for A334092, there is no canonical definition to state claims against.
-/

/-! ## A334092.P8988389639549871661

`∩[A081091(n+1), A335120(n+1)]`
-/

namespace A334092.P8988389639549871661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335120 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A334092.P8988389639549871661

/-! ## A334092.P10509959353415481305

`∩[A147545(n+1), A340161(n)]`
-/

namespace A334092.P10509959353415481305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147545 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340161 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A334092.P10509959353415481305

/-! ## A334092.P7375936093776527789

`∩[A081091(n+1), A147545(n+1)]`
-/

namespace A334092.P7375936093776527789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147545 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A334092.P7375936093776527789

/-! ## A334092.P7440728069128409249

`∩[A084468(n+1), A147545(n+1)]`
-/

namespace A334092.P7440728069128409249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084468 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147545 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A334092.P7440728069128409249

/-! ## A334092.P14416223066696013087

`p?[A334102(n+1)]`
-/

namespace A334092.P14416223066696013087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334102 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A334092.P14416223066696013087

/-!
# A334093: Primes p for which A329697(p) == 3.

The programs for A334093, there is no canonical definition to state claims against.
-/

/-! ## A334093.P11697799750234627131

`p?[A334103(n+1)]`
-/

namespace A334093.P11697799750234627131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334103 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A334093.P11697799750234627131

/-! ## A334093.P17515653487879038979

`p?[record[A334103(A133310(n))]]`
-/

namespace A334093.P17515653487879038979
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334103 (A133310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A334093.P17515653487879038979

/-! ## A334093.P17203318785085055658

`p?[record[A334103(A291769(n))]]`
-/

namespace A334093.P17203318785085055658
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334103 (A291769 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A334093.P17203318785085055658

/-! ## A334093.P17400983426307418487

`filter[A334103(n+1), A010051(#)]`
-/

namespace A334093.P17400983426307418487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334103 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A334093.P17400983426307418487

/-! ## A334093.P14752152078441660877

`filter[A334103(n+1), A355937(#)]`
-/

namespace A334093.P14752152078441660877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334103 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355937 (f1 j).toNat = 1) n)

end

end A334093.P14752152078441660877

/-!
# A334094: Primes p for which A329697(p) == 4.

The programs for A334094, the canonical program `A334094.P15198942786859524273` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A334094 has offset 1).

The definition of A334094 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 176 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A334094.P15198942786859524273

`p?[A334104(n+1)]`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A334094

/-- `p?[A334104(n+1)]` -/
def P15198942786859524273.Spec : Prop :=
  ∀ n, P15198942786859524273.a n = A334094 (n + 1)

theorem P15198942786859524273.correct : P15198942786859524273.Spec := by
  intro n
  simp only [A334094, Nat.add_sub_cancel]

end A334094

/-! ## A334094.P16627227365883070060

`p?[A334103(n+1)+1]`
-/

namespace A334094.P16627227365883070060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334103 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A334094.P16627227365883070060

namespace A334094

/-- `p?[A334103(n+1)+1]` -/
def P16627227365883070060.Spec : Prop :=
  ∀ n, P16627227365883070060.a n = A334094 (n + 1)

end A334094

/-! ## A334094.P11719821211642929436

`filter[A334104(n+1), A010051(#)]`
-/

namespace A334094.P11719821211642929436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334104 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A334094.P11719821211642929436

namespace A334094

/-- `filter[A334104(n+1), A010051(#)]` -/
def P11719821211642929436.Spec : Prop :=
  ∀ n, P11719821211642929436.a n = A334094 (n + 1)

end A334094

/-! ## A334094.P1624510572713259733

`record[A006530(A334104(C(n+1, n)))]`
-/

namespace A334094.P1624510572713259733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A334104 (Nat.choose (n + 1) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A334094.P1624510572713259733

namespace A334094

/-- `record[A006530(A334104(C(n+1, n)))]` -/
def P1624510572713259733.Spec : Prop :=
  ∀ n, P1624510572713259733.a n = A334094 (n + 1)

end A334094

/-! ## A334094.P8258736731975855859

`∩[A000040(n+1), A334104(n+1)]`
-/

namespace A334094.P8258736731975855859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334104 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A334094.P8258736731975855859

namespace A334094

/-- `∩[A000040(n+1), A334104(n+1)]` -/
def P8258736731975855859.Spec : Prop :=
  ∀ n, (P8258736731975855859.a n : ℤ) = A334094 (n + 1)

end A334094

/-! ## A334094.P16265133894723097427

`∩[A004139(n+1), A334104(n+1)]`
-/

namespace A334094.P16265133894723097427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334104 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A334094.P16265133894723097427

namespace A334094

/-- `∩[A004139(n+1), A334104(n+1)]` -/
def P16265133894723097427.Spec : Prop :=
  ∀ n, (P16265133894723097427.a n : ℤ) = A334094 (n + 1)

end A334094

/-! ## A334094.P1568697471731628636

`∩[A006005(n+1), A334104(n+1)]`
-/

namespace A334094.P1568697471731628636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334104 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A334094.P1568697471731628636

namespace A334094

/-- `∩[A006005(n+1), A334104(n+1)]` -/
def P1568697471731628636.Spec : Prop :=
  ∀ n, (P1568697471731628636.a n : ℤ) = A334094 (n + 1)

end A334094

/-! ## A334094.P7359913233519455984

`∩[A008578(n+1), A334104(n+1)]`
-/

namespace A334094.P7359913233519455984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334104 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A334094.P7359913233519455984

namespace A334094

/-- `∩[A008578(n+1), A334104(n+1)]` -/
def P7359913233519455984.Spec : Prop :=
  ∀ n, (P7359913233519455984.a n : ℤ) = A334094 (n + 1)

end A334094

/-! ## A334094.P16699930862177480210

`∩[A045319(n+1), A334104(n+1)]`
-/

namespace A334094.P16699930862177480210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334104 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A334094.P16699930862177480210

namespace A334094

/-- `∩[A045319(n+1), A334104(n+1)]` -/
def P16699930862177480210.Spec : Prop :=
  ∀ n, (P16699930862177480210.a n : ℤ) = A334094 (n + 1)

end A334094

/-! ## A334094.P518730204018149561

`∩[A045344(n+1), A334104(n+1)]`
-/

namespace A334094.P518730204018149561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334104 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A334094.P518730204018149561

namespace A334094

/-- `∩[A045344(n+1), A334104(n+1)]` -/
def P518730204018149561.Spec : Prop :=
  ∀ n, (P518730204018149561.a n : ℤ) = A334094 (n + 1)

end A334094

/-! ## A334094.P3614345055641997319

`∩[A046022(n+1), A334104(n+1)]`
-/

namespace A334094.P3614345055641997319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334104 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A334094.P3614345055641997319

namespace A334094

/-- `∩[A046022(n+1), A334104(n+1)]` -/
def P3614345055641997319.Spec : Prop :=
  ∀ n, (P3614345055641997319.a n : ℤ) = A334094 (n + 1)

end A334094

/-! ## A334094.P1119552001645855327

`∩[A051948(n+1), A334104(n+1)]`
-/

namespace A334094.P1119552001645855327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334104 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A334094.P1119552001645855327

namespace A334094

/-- `∩[A051948(n+1), A334104(n+1)]` -/
def P1119552001645855327.Spec : Prop :=
  ∀ n, (P1119552001645855327.a n : ℤ) = A334094 (n + 1)

end A334094

/-! ## A334094.P15506424933263015579

`∩[A053577(n+1), A334104(n+1)]`
-/

namespace A334094.P15506424933263015579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053577 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334104 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A334094.P15506424933263015579

namespace A334094

/-- `∩[A053577(n+1), A334104(n+1)]` -/
def P15506424933263015579.Spec : Prop :=
  ∀ n, (P15506424933263015579.a n : ℤ) = A334094 (n + 1)

end A334094

/-! ## A334094.P17253494623119652208

`∩[A053813(n+1), A334104(n+1)]`
-/

namespace A334094.P17253494623119652208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334104 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A334094.P17253494623119652208

namespace A334094

/-- `∩[A053813(n+1), A334104(n+1)]` -/
def P17253494623119652208.Spec : Prop :=
  ∀ n, (P17253494623119652208.a n : ℤ) = A334094 (n + 1)

end A334094

/-! ## A334094.P8870730053115873184

`∩[A058853(n+1), A334104(n+1)]`
-/

namespace A334094.P8870730053115873184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058853 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334104 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A334094.P8870730053115873184

namespace A334094

/-- `∩[A058853(n+1), A334104(n+1)]` -/
def P8870730053115873184.Spec : Prop :=
  ∀ n, (P8870730053115873184.a n : ℤ) = A334094 (n + 1)

end A334094

/-! ## A334094.P7260633103312561595

`∩[A065091(n+1), A334104(n+1)]`
-/

namespace A334094.P7260633103312561595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334104 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A334094.P7260633103312561595

namespace A334094

/-- `∩[A065091(n+1), A334104(n+1)]` -/
def P7260633103312561595.Spec : Prop :=
  ∀ n, (P7260633103312561595.a n : ℤ) = A334094 (n + 1)

end A334094

/-! ## A334094.P8678724640807185860

`∩[A065376(n+1), A334104(n+1)]`
-/

namespace A334094.P8678724640807185860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065376 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334104 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A334094.P8678724640807185860

namespace A334094

/-- `∩[A065376(n+1), A334104(n+1)]` -/
def P8678724640807185860.Spec : Prop :=
  ∀ n, (P8678724640807185860.a n : ℤ) = A334094 (n + 1)

end A334094

/-! ## A334094.P16022995894416829070

`∩[A065396(n+1), A334104(n+1)]`
-/

namespace A334094.P16022995894416829070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065396 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334104 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A334094.P16022995894416829070

namespace A334094

/-- `∩[A065396(n+1), A334104(n+1)]` -/
def P16022995894416829070.Spec : Prop :=
  ∀ n, (P16022995894416829070.a n : ℤ) = A334094 (n + 1)

end A334094

/-! ## A334094.P2763854898467408697

`∩[A066050(n+1), A334104(n+1)]`
-/

namespace A334094.P2763854898467408697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066050 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334104 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A334094.P2763854898467408697

namespace A334094

/-- `∩[A066050(n+1), A334104(n+1)]` -/
def P2763854898467408697.Spec : Prop :=
  ∀ n, (P2763854898467408697.a n : ℤ) = A334094 (n + 1)

end A334094

/-! ## A334094.P6066472741753141699

`∩[A067126(n+1), A334104(n+1)]`
-/

namespace A334094.P6066472741753141699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067126 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334104 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A334094.P6066472741753141699

namespace A334094

/-- `∩[A067126(n+1), A334104(n+1)]` -/
def P6066472741753141699.Spec : Prop :=
  ∀ n, (P6066472741753141699.a n : ℤ) = A334094 (n + 1)

end A334094

/-!
# A334095: Primes p for which A329697(p) == 5.

The programs for A334095, the canonical program `A334095.P11091807540758565037` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A334095 has offset 1).

The definition of A334095 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 578 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A334095.P11091807540758565037

`p?[A334105(n+1)]`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A334095

/-- `p?[A334105(n+1)]` -/
def P11091807540758565037.Spec : Prop :=
  ∀ n, P11091807540758565037.a n = A334095 (n + 1)

theorem P11091807540758565037.correct : P11091807540758565037.Spec := by
  intro n
  simp only [A334095, Nat.add_sub_cancel]

end A334095

/-! ## A334095.P7686723227236769722

`p?[A334104(n+1)+1]`
-/

namespace A334095.P7686723227236769722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334104 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A334095.P7686723227236769722

namespace A334095

/-- `p?[A334104(n+1)+1]` -/
def P7686723227236769722.Spec : Prop :=
  ∀ n, P7686723227236769722.a n = A334095 (n + 1)

end A334095

/-! ## A334095.P12323885646863435045

`∩[A009087(n+1), A334105(n+1)]`
-/

namespace A334095.P12323885646863435045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009087 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334105 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A334095.P12323885646863435045

namespace A334095

/-- `∩[A009087(n+1), A334105(n+1)]` -/
def P12323885646863435045.Spec : Prop :=
  ∀ n, (P12323885646863435045.a n : ℤ) = A334095 (n + 1)

end A334095

/-! ## A334095.P1254129244440066480

`∩[A000040(n+1), A334105(n+1)]`
-/

namespace A334095.P1254129244440066480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334105 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A334095.P1254129244440066480

namespace A334095

/-- `∩[A000040(n+1), A334105(n+1)]` -/
def P1254129244440066480.Spec : Prop :=
  ∀ n, (P1254129244440066480.a n : ℤ) = A334095 (n + 1)

end A334095

/-! ## A334095.P12374984968899517492

`∩[A000430(n+1), A334105(n+1)]`
-/

namespace A334095.P12374984968899517492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000430 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334105 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A334095.P12374984968899517492

namespace A334095

/-- `∩[A000430(n+1), A334105(n+1)]` -/
def P12374984968899517492.Spec : Prop :=
  ∀ n, (P12374984968899517492.a n : ℤ) = A334095 (n + 1)

end A334095

/-! ## A334095.P16273139188406318937

`∩[A004139(n+1), A334105(n+1)]`
-/

namespace A334095.P16273139188406318937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334105 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A334095.P16273139188406318937

namespace A334095

/-- `∩[A004139(n+1), A334105(n+1)]` -/
def P16273139188406318937.Spec : Prop :=
  ∀ n, (P16273139188406318937.a n : ℤ) = A334095 (n + 1)

end A334095

/-! ## A334095.P8790521783510055021

`∩[A006005(n+1), A334105(n+1)]`
-/

namespace A334095.P8790521783510055021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334105 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A334095.P8790521783510055021

namespace A334095

/-- `∩[A006005(n+1), A334105(n+1)]` -/
def P8790521783510055021.Spec : Prop :=
  ∀ n, (P8790521783510055021.a n : ℤ) = A334095 (n + 1)

end A334095

/-! ## A334095.P908474976015347516

`∩[A008578(n+1), A334105(n+1)]`
-/

namespace A334095.P908474976015347516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334105 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A334095.P908474976015347516

namespace A334095

/-- `∩[A008578(n+1), A334105(n+1)]` -/
def P908474976015347516.Spec : Prop :=
  ∀ n, (P908474976015347516.a n : ℤ) = A334095 (n + 1)

end A334095

/-! ## A334095.P7242729521604838524

`∩[A033946(n+1), A334105(n+1)]`
-/

namespace A334095.P7242729521604838524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334105 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A334095.P7242729521604838524

namespace A334095

/-- `∩[A033946(n+1), A334105(n+1)]` -/
def P7242729521604838524.Spec : Prop :=
  ∀ n, (P7242729521604838524.a n : ℤ) = A334095 (n + 1)

end A334095

/-! ## A334095.P12252818734563208260

`∩[A045319(n+1), A334105(n+1)]`
-/

namespace A334095.P12252818734563208260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334105 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A334095.P12252818734563208260

namespace A334095

/-- `∩[A045319(n+1), A334105(n+1)]` -/
def P12252818734563208260.Spec : Prop :=
  ∀ n, (P12252818734563208260.a n : ℤ) = A334095 (n + 1)

end A334095

/-! ## A334095.P8292369768855148820

`∩[A045344(n+1), A334105(n+1)]`
-/

namespace A334095.P8292369768855148820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334105 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A334095.P8292369768855148820

namespace A334095

/-- `∩[A045344(n+1), A334105(n+1)]` -/
def P8292369768855148820.Spec : Prop :=
  ∀ n, (P8292369768855148820.a n : ℤ) = A334095 (n + 1)

end A334095

/-! ## A334095.P17715356938394000297

`∩[A046022(n+1), A334105(n+1)]`
-/

namespace A334095.P17715356938394000297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334105 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A334095.P17715356938394000297

namespace A334095

/-- `∩[A046022(n+1), A334105(n+1)]` -/
def P17715356938394000297.Spec : Prop :=
  ∀ n, (P17715356938394000297.a n : ℤ) = A334095 (n + 1)

end A334095

/-! ## A334095.P1741554403146458613

`∩[A050150(n+1), A334105(n+1)]`
-/

namespace A334095.P1741554403146458613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050150 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334105 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A334095.P1741554403146458613

namespace A334095

/-- `∩[A050150(n+1), A334105(n+1)]` -/
def P1741554403146458613.Spec : Prop :=
  ∀ n, (P1741554403146458613.a n : ℤ) = A334095 (n + 1)

end A334095

/-! ## A334095.P12942879263919212104

`∩[A050376(n+1), A334105(n+1)]`
-/

namespace A334095.P12942879263919212104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050376 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334105 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A334095.P12942879263919212104

namespace A334095

/-- `∩[A050376(n+1), A334105(n+1)]` -/
def P12942879263919212104.Spec : Prop :=
  ∀ n, (P12942879263919212104.a n : ℤ) = A334095 (n + 1)

end A334095

/-! ## A334095.P13058137680394927940

`∩[A051948(n+1), A334105(n+1)]`
-/

namespace A334095.P13058137680394927940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334105 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A334095.P13058137680394927940

namespace A334095

/-- `∩[A051948(n+1), A334105(n+1)]` -/
def P13058137680394927940.Spec : Prop :=
  ∀ n, (P13058137680394927940.a n : ℤ) = A334095 (n + 1)

end A334095

/-! ## A334095.P3586621170769229106

`∩[A062090(n+1), A334105(n+1)]`
-/

namespace A334095.P3586621170769229106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062090 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334105 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A334095.P3586621170769229106

namespace A334095

/-- `∩[A062090(n+1), A334105(n+1)]` -/
def P3586621170769229106.Spec : Prop :=
  ∀ n, (P3586621170769229106.a n : ℤ) = A334095 (n + 1)

end A334095

/-! ## A334095.P7417845294388271586

`∩[A062972(n+1), A334105(n+1)]`
-/

namespace A334095.P7417845294388271586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062972 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334105 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A334095.P7417845294388271586

namespace A334095

/-- `∩[A062972(n+1), A334105(n+1)]` -/
def P7417845294388271586.Spec : Prop :=
  ∀ n, (P7417845294388271586.a n : ℤ) = A334095 (n + 1)

end A334095

/-! ## A334095.P4802306206573125919

`∩[A065091(n+1), A334105(n+1)]`
-/

namespace A334095.P4802306206573125919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334105 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A334095.P4802306206573125919

namespace A334095

/-- `∩[A065091(n+1), A334105(n+1)]` -/
def P4802306206573125919.Spec : Prop :=
  ∀ n, (P4802306206573125919.a n : ℤ) = A334095 (n + 1)

end A334095

/-! ## A334095.P18239048928812712831

`∩[A067126(n+1), A334105(n+1)]`
-/

namespace A334095.P18239048928812712831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067126 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334105 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A334095.P18239048928812712831

namespace A334095

/-- `∩[A067126(n+1), A334105(n+1)]` -/
def P18239048928812712831.Spec : Prop :=
  ∀ n, (P18239048928812712831.a n : ℤ) = A334095 (n + 1)

end A334095

/-! ## A334095.P15978350348642249793

`∩[A161346(n+1), A334105(n+1)]`
-/

namespace A334095.P15978350348642249793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161346 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334105 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A334095.P15978350348642249793

namespace A334095

/-- `∩[A161346(n+1), A334105(n+1)]` -/
def P15978350348642249793.Spec : Prop :=
  ∀ n, (P15978350348642249793.a n : ℤ) = A334095 (n + 1)

end A334095

/-!
# A334096: Primes p for which A329697(p) == 6.

The programs for A334096, the canonical program `A334096.P958408907750577837` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A334096 has offset 1).

The definition of A334096 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1435 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A334096.P958408907750577837

`p?[A334105(n+1)+1]`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A334096

/-- `p?[A334105(n+1)+1]` -/
def P958408907750577837.Spec : Prop :=
  ∀ n, P958408907750577837.a n = A334096 (n + 1)

theorem P958408907750577837.correct : P958408907750577837.Spec := by
  intro n
  simp only [A334096, Nat.add_sub_cancel]

end A334096

/-! ## A334096.P5018065357750595988

`p?[A334106(n+1)]`
-/

namespace A334096.P5018065357750595988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334106 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A334096.P5018065357750595988

namespace A334096

/-- `p?[A334106(n+1)]` -/
def P5018065357750595988.Spec : Prop :=
  ∀ n, P5018065357750595988.a n = A334096 (n + 1)

end A334096

/-! ## A334096.P3462292657588717567

`∩[A000040(n+1), A334105(n+1)+1]`
-/

namespace A334096.P3462292657588717567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334105 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A334096.P3462292657588717567

namespace A334096

/-- `∩[A000040(n+1), A334105(n+1)+1]` -/
def P3462292657588717567.Spec : Prop :=
  ∀ n, (P3462292657588717567.a n : ℤ) = A334096 (n + 1)

end A334096

/-! ## A334096.P7945690255214664027

`∩[A004139(n+1), A334105(n+1)+1]`
-/

namespace A334096.P7945690255214664027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334105 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A334096.P7945690255214664027

namespace A334096

/-- `∩[A004139(n+1), A334105(n+1)+1]` -/
def P7945690255214664027.Spec : Prop :=
  ∀ n, (P7945690255214664027.a n : ℤ) = A334096 (n + 1)

end A334096

/-! ## A334096.P1161411770747761380

`∩[A006005(n+1), A334105(n+1)+1]`
-/

namespace A334096.P1161411770747761380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334105 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A334096.P1161411770747761380

namespace A334096

/-- `∩[A006005(n+1), A334105(n+1)+1]` -/
def P1161411770747761380.Spec : Prop :=
  ∀ n, (P1161411770747761380.a n : ℤ) = A334096 (n + 1)

end A334096

/-! ## A334096.P10926332084671301825

`∩[A008578(n+1), A334105(n+1)+1]`
-/

namespace A334096.P10926332084671301825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334105 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A334096.P10926332084671301825

namespace A334096

/-- `∩[A008578(n+1), A334105(n+1)+1]` -/
def P10926332084671301825.Spec : Prop :=
  ∀ n, (P10926332084671301825.a n : ℤ) = A334096 (n + 1)

end A334096

/-! ## A334096.P3379780226464528394

`∩[A033946(n+1), A334105(n+1)+1]`
-/

namespace A334096.P3379780226464528394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334105 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A334096.P3379780226464528394

namespace A334096

/-- `∩[A033946(n+1), A334105(n+1)+1]` -/
def P3379780226464528394.Spec : Prop :=
  ∀ n, (P3379780226464528394.a n : ℤ) = A334096 (n + 1)

end A334096

/-! ## A334096.P13164515661001372623

`∩[A045319(n+1), A334105(n+1)+1]`
-/

namespace A334096.P13164515661001372623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334105 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A334096.P13164515661001372623

namespace A334096

/-- `∩[A045319(n+1), A334105(n+1)+1]` -/
def P13164515661001372623.Spec : Prop :=
  ∀ n, (P13164515661001372623.a n : ℤ) = A334096 (n + 1)

end A334096

/-! ## A334096.P17653016386377085928

`∩[A045344(n+1), A334105(n+1)+1]`
-/

namespace A334096.P17653016386377085928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334105 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A334096.P17653016386377085928

namespace A334096

/-- `∩[A045344(n+1), A334105(n+1)+1]` -/
def P17653016386377085928.Spec : Prop :=
  ∀ n, (P17653016386377085928.a n : ℤ) = A334096 (n + 1)

end A334096

/-! ## A334096.P8942947729361796411

`∩[A046022(n+1), A334105(n+1)+1]`
-/

namespace A334096.P8942947729361796411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334105 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A334096.P8942947729361796411

namespace A334096

/-- `∩[A046022(n+1), A334105(n+1)+1]` -/
def P8942947729361796411.Spec : Prop :=
  ∀ n, (P8942947729361796411.a n : ℤ) = A334096 (n + 1)

end A334096

/-! ## A334096.P5516980363005925739

`∩[A051948(n+1), A334105(n+1)+1]`
-/

namespace A334096.P5516980363005925739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334105 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A334096.P5516980363005925739

namespace A334096

/-- `∩[A051948(n+1), A334105(n+1)+1]` -/
def P5516980363005925739.Spec : Prop :=
  ∀ n, (P5516980363005925739.a n : ℤ) = A334096 (n + 1)

end A334096

/-! ## A334096.P953107368298816984

`∩[A062972(n+1), A334105(n+1)+1]`
-/

namespace A334096.P953107368298816984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062972 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334105 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A334096.P953107368298816984

namespace A334096

/-- `∩[A062972(n+1), A334105(n+1)+1]` -/
def P953107368298816984.Spec : Prop :=
  ∀ n, (P953107368298816984.a n : ℤ) = A334096 (n + 1)

end A334096

/-! ## A334096.P13134979051959388129

`∩[A065091(n+1), A334105(n+1)+1]`
-/

namespace A334096.P13134979051959388129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334105 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A334096.P13134979051959388129

namespace A334096

/-- `∩[A065091(n+1), A334105(n+1)+1]` -/
def P13134979051959388129.Spec : Prop :=
  ∀ n, (P13134979051959388129.a n : ℤ) = A334096 (n + 1)

end A334096

/-! ## A334096.P2183574390385637303

`∩[A067126(n+1), A334105(n+1)+1]`
-/

namespace A334096.P2183574390385637303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067126 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334105 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A334096.P2183574390385637303

namespace A334096

/-- `∩[A067126(n+1), A334105(n+1)+1]` -/
def P2183574390385637303.Spec : Prop :=
  ∀ n, (P2183574390385637303.a n : ℤ) = A334096 (n + 1)

end A334096

/-! ## A334096.P5466452734797079324

`∩[A161346(n+1), A334105(n+1)+1]`
-/

namespace A334096.P5466452734797079324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161346 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334105 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A334096.P5466452734797079324

namespace A334096

/-- `∩[A161346(n+1), A334105(n+1)+1]` -/
def P5466452734797079324.Spec : Prop :=
  ∀ n, (P5466452734797079324.a n : ℤ) = A334096 (n + 1)

end A334096

/-! ## A334096.P15004303649819830784

`filter[A334106(n+1), A010051(#)]`
-/

namespace A334096.P15004303649819830784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334106 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A334096.P15004303649819830784

namespace A334096

/-- `filter[A334106(n+1), A010051(#)]` -/
def P15004303649819830784.Spec : Prop :=
  ∀ n, P15004303649819830784.a n = A334096 (n + 1)

end A334096

/-! ## A334096.P1891142620891562580

`∩[A000040(n+1), A334106(n+1)]`
-/

namespace A334096.P1891142620891562580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334106 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A334096.P1891142620891562580

namespace A334096

/-- `∩[A000040(n+1), A334106(n+1)]` -/
def P1891142620891562580.Spec : Prop :=
  ∀ n, (P1891142620891562580.a n : ℤ) = A334096 (n + 1)

end A334096

/-! ## A334096.P9293505136942046089

`∩[A004139(n+1), A334106(n+1)]`
-/

namespace A334096.P9293505136942046089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334106 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A334096.P9293505136942046089

namespace A334096

/-- `∩[A004139(n+1), A334106(n+1)]` -/
def P9293505136942046089.Spec : Prop :=
  ∀ n, (P9293505136942046089.a n : ℤ) = A334096 (n + 1)

end A334096

/-! ## A334096.P1137302165153938864

`∩[A006005(n+1), A334106(n+1)]`
-/

namespace A334096.P1137302165153938864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334106 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A334096.P1137302165153938864

namespace A334096

/-- `∩[A006005(n+1), A334106(n+1)]` -/
def P1137302165153938864.Spec : Prop :=
  ∀ n, (P1137302165153938864.a n : ℤ) = A334096 (n + 1)

end A334096

/-! ## A334096.P3026786906907599183

`∩[A008578(n+1), A334106(n+1)]`
-/

namespace A334096.P3026786906907599183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334106 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A334096.P3026786906907599183

namespace A334096

/-- `∩[A008578(n+1), A334106(n+1)]` -/
def P3026786906907599183.Spec : Prop :=
  ∀ n, (P3026786906907599183.a n : ℤ) = A334096 (n + 1)

end A334096

/-!
# A334097: a(n) is the exponent of the eventual power of 2 reached when starting from n and using the map k -> k + k/p, where p can be any odd prime factor of k, for example, the largest.

The programs for A334097, there is no canonical definition to state claims against.
-/

/-! ## A334097.P16234347344067553411

`A334862(n+1)+A064415(n+1)`
-/

namespace A334097.P16234347344067553411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334862 (n + 1) + A064415 (n + 1)

end

end A334097.P16234347344067553411

/-! ## A334097.P17236386092502582808

`A331410(n+1)+A334098(n+1)`
-/

namespace A334097.P17236386092502582808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331410 (n + 1) + A334098 (n + 1)

end

end A334097.P17236386092502582808

/-! ## A334097.P609400090890392447

`A334862(n+1)+∑[A334195(n+1)]`
-/

namespace A334097.P609400090890392447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334195 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334862 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A334097.P609400090890392447

/-! ## A334097.P5596589266481270599

`A334098(n+1)+A331410(A103517(n))`
-/

namespace A334097.P5596589266481270599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334098 (n + 1) + A331410 (A103517 n).toNat

end

end A334097.P5596589266481270599

/-! ## A334097.P4159095754639556841

`A334862(n+1)+A003434(A062570(n+1))`
-/

namespace A334097.P4159095754639556841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334862 (n + 1) + A003434 (A062570 (n + 1)).toNat

end

end A334097.P4159095754639556841

/-! ## A334097.P12492292743198960440

`A334862(n+1)+A003434(A333787(n+1))`
-/

namespace A334097.P12492292743198960440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334862 (n + 1) + A003434 (A333787 (n + 1)).toNat

end

end A334097.P12492292743198960440

/-! ## A334097.P11150600376275573042

`A329697(n+1)+A335877(n+1)+A334098(n+1)`
-/

namespace A334097.P11150600376275573042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329697 (n + 1) + (A335877 (n + 1) + A334098 (n + 1))

end

end A334097.P11150600376275573042

/-! ## A334097.P7109841889981264780

`A334098(n+1)+A334861(n+1)-A329697(n+1)`
-/

namespace A334097.P7109841889981264780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334098 (n + 1) + (A334861 (n + 1) - A329697 (n + 1))

end

end A334097.P7109841889981264780

/-! ## A334097.P17932652116771117241

`A003434(2*(n+1))+A334862(n+1)-1`
-/

namespace A334097.P17932652116771117241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003434 (2 * (n + 1)) + (A334862 (n + 1) - 1)

end

end A334097.P17932652116771117241

/-! ## A334097.P14686564265153009608

`A336921(n+1)+A334098(A003959(n+1))`
-/

namespace A334097.P14686564265153009608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336921 (n + 1) + A334098 (A003959 (n + 1)).toNat

end

end A334097.P14686564265153009608

/-! ## A334097.P13476544750534482843

`A003434((n+1)*A000079(A334862(n+1)))`
-/

namespace A334097.P13476544750534482843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003434 ((n + 1 : ℤ) * A000079 (A334862 (n + 1)).toNat).toNat

end

end A334097.P13476544750534482843

/-!
# A334098: a(n) = A334097(n) - A331410(n), where former is the exponent of the eventual power of 2 reached, and the latter is the number of iterations needed to get there, when starting from n and using the map k -> k + k/p, where p can be any odd prime factor of k, for example, the largest.

The programs for A334098, there is no canonical definition to state claims against.
-/

/-! ## A334098.P11107798916468843839

`A334097(n+1)-A331410(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A334098.P11107798916468843839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334097 (n + 1) - A331410 (n + 1)

end

end A334098.P11107798916468843839

/-! ## A334098.P14934662884462932703

`A064415(n+1)+A334862(n+1)-A331410(n+1)`
-/

namespace A334098.P14934662884462932703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064415 (n + 1) + (A334862 (n + 1) - A331410 (n + 1))

end

end A334098.P14934662884462932703

/-! ## A334098.P13556391749625983862

`A064097(n+1)+A334862(n+1)-A334861(n+1)`
-/

namespace A334098.P13556391749625983862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064097 (n + 1) + (A334862 (n + 1) - A334861 (n + 1))

end

end A334098.P13556391749625983862

/-! ## A334098.P15138464953942590150

`A329697(n+1)+A334097(n+1)-A334861(n+1)`
-/

namespace A334098.P15138464953942590150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329697 (n + 1) + (A334097 (n + 1) - A334861 (n + 1))

end

end A334098.P15138464953942590150

/-! ## A334098.P5394896703304982630

`A334097(n+1)-(A335877(n+1)+A329697(n+1))`
-/

namespace A334098.P5394896703304982630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334097 (n + 1) - (A335877 (n + 1) + A329697 (n + 1))

end

end A334098.P5394896703304982630

/-! ## A334098.P8970477172440393061

`A334097(n+1)-A336929(A038699(n+1))`
-/

namespace A334098.P8970477172440393061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334097 (n + 1) - A336929 (A038699 (n + 1)).toNat

end

end A334098.P8970477172440393061

/-! ## A334098.P9802862189856628071

`A334097(n+1)-A334108(A122111(n+1))`
-/

namespace A334098.P9802862189856628071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334097 (n + 1) - A334108 (A122111 (n + 1)).toNat

end

end A334098.P9802862189856628071

/-!
# A334099: The least k for which A329697(k) = n; Position of first occurrence of n (and also records) in A329697.

The programs for A334099, there is no canonical definition to state claims against.
-/

/-! ## A334099.P7338693288511860761

`A334100(∑[n+1])`
-/

namespace A334099.P7338693288511860761
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334100 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A334099.P7338693288511860761

/-! ## A334099.P6194177920025100150

`or(1, A334100(A025747(n)))`
-/

namespace A334099.P6194177920025100150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A334100 (A025747 n).toNat)

end

end A334099.P6194177920025100150

/-! ## A334099.P14958988720452995818

`record[A334100(A038722(n+1))]`
-/

namespace A334099.P14958988720452995818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334100 (A038722 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A334099.P14958988720452995818

/-! ## A334099.P6799084773087395931

`record[A334100(A066182(n+1))]`
-/

namespace A334099.P6799084773087395931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334100 (A066182 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A334099.P6799084773087395931

/-! ## A334099.P935882927553355854

`record[A334100(A085179(n+1))]`
-/

namespace A334099.P935882927553355854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334100 (A085179 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A334099.P935882927553355854

