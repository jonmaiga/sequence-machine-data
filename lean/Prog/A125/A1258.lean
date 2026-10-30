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
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C041
import Seq.B000.C042
import Seq.B000.C043
import Seq.B000.C045
import Seq.B000.C046
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C010
import Seq.B001.C013
import Seq.B001.C014
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C005
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
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
import Seq.Opaque.C023
import Seq.Opaque.C024

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A125800: Rectangular table where column k equals row sums of matrix power A078122^k, read by antidiagonals.

The programs for A125800, there is no canonical definition to state claims against.
-/

/-! ## A125800.P871909300214994596

`A175948(A125860(n))`
-/

namespace A125800.P871909300214994596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175948 (A125860 n).toNat

end

end A125800.P871909300214994596

/-! ## A125800.P16846258907717160912

`A255130(A117396(n))`
-/

namespace A125800.P16846258907717160912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255130 (A117396 n).toNat

end

end A125800.P16846258907717160912

/-! ## A125800.P3233134077134270083

`A193159(A241579(n))`
-/

namespace A125800.P3233134077134270083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193159 (A241579 n).toNat

end

end A125800.P3233134077134270083

/-! ## A125800.P2401630625760107646

`A339723(A142589(n))`
-/

namespace A125800.P2401630625760107646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339723 (A142589 n).toNat

end

end A125800.P2401630625760107646

/-! ## A125800.P12235703231630430883

`A385900(A113711(n))`
-/

namespace A125800.P12235703231630430883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385900 (A113711 n).toNat

end

end A125800.P12235703231630430883

/-!
# A125801: Column 3 of table A125800; also equals row sums of matrix power A078122^3.

The programs for A125801, there is no canonical definition to state claims against.
-/

/-! ## A125801.P14047553351056546817

`∑[A111841(n+1)]`
-/

namespace A125801.P14047553351056546817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111841 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A125801.P14047553351056546817

/-! ## A125801.P1459970139510733147

`∑[abs(Δ[A078125(n)])]`
-/

namespace A125801.P1459970139510733147
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078125 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A125801.P1459970139510733147

/-! ## A125801.P1578731934871556301

`A078125(n+1)-1`
-/

namespace A125801.P1578731934871556301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078125 (n + 1) - 1

end

end A125801.P1578731934871556301

/-! ## A125801.P16594187872591987926

`record[Δ[A125800(n+3)]]`
-/

namespace A125801.P16594187872591987926
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125800 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A125801.P16594187872591987926

/-! ## A125801.P7206968279067415003

`A078123(∑[n+1])-1`
-/

namespace A125801.P7206968279067415003
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078123 (∑ j ∈ Finset.range (n + 1), f1 j) - 1

end

end A125801.P7206968279067415003

/-!
# A125802: Column 4 of table A125800; also equals row sums of matrix power A078122^4.

The programs for A125802, there is no canonical definition to state claims against.
-/

/-! ## A125802.P3842725341194882604

`A125800(A056000(n)+14)`
-/

namespace A125802.P3842725341194882604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125800 (A056000 n + 14).toNat

end

end A125802.P3842725341194882604

/-! ## A125802.P10720706947587336628

`A125800(eq[4, A002262(n)])`
-/

namespace A125802.P10720706947587336628
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125800 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A125802.P10720706947587336628

/-! ## A125802.P11171941862775525460

`A125800(eq[5, A002260(n+1)])`
-/

namespace A125802.P11171941862775525460
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125800 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A125802.P11171941862775525460

/-! ## A125802.P5438630255720182854

`A125800(eq[5, A135223(n+1)])`
-/

namespace A125802.P5438630255720182854
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135223 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125800 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A125802.P5438630255720182854

/-! ## A125802.P9119325615049416853

`A125800(eq[6, A245093(n+1)])`
-/

namespace A125802.P9119325615049416853
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245093 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125800 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A125802.P9119325615049416853

/-!
# A125803: Column 5 of table A125800; also equals row sums of matrix power A078122^5.

The programs for A125803, there is no canonical definition to state claims against.
-/

/-! ## A125803.P7344779794387226305

`A078123(∑[n+1]+1)`
-/

namespace A125803.P7344779794387226305
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078123 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A125803.P7344779794387226305

/-! ## A125803.P10115124202496279291

`A125800(eq[5, A002262(n)])`
-/

namespace A125803.P10115124202496279291
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125800 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A125803.P10115124202496279291

/-! ## A125803.P2125704119631354556

`A125800(eq[6, A002260(n+1)])`
-/

namespace A125803.P2125704119631354556
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125800 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A125803.P2125704119631354556

/-! ## A125803.P12130890599840568827

`record[A078123(A138881(n+1)+1)]`
-/

namespace A125803.P12130890599840568827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078123 (A138881 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A125803.P12130890599840568827

/-! ## A125803.P8896449322996901012

`record[A008683(A002260(n+1))*A125800(n)]`
-/

namespace A125803.P8896449322996901012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A002260 (n + 1)).toNat * A125800 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A125803.P8896449322996901012

/-!
# A125804: Main diagonal of table A125800.

The programs for A125804, there is no canonical definition to state claims against.
-/

/-! ## A125804.P16709835990665538712

`A125800(∑[4*n])`
-/

namespace A125804.P16709835990665538712
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125800 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A125804.P16709835990665538712

/-! ## A125804.P6415113516223145117

`A125800(A046092(n))^A178334(n)`
-/

namespace A125804.P6415113516223145117
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A125800 (A046092 n).toNat : ℚ) ^ (A178334 n : ℤ)

end

end A125804.P6415113516223145117

/-! ## A125804.P2273206970505104931

`gcd(A000038(n), A125800(A046092(n)))`
-/

namespace A125804.P2273206970505104931
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A125800 (A046092 n).toNat)

end

end A125804.P2273206970505104931

/-! ## A125804.P3079920885158187286

`A007318(C(2, n+1))*A125800(A046092(n))`
-/

namespace A125804.P3079920885158187286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 (n + 1)) * A125800 (A046092 n).toNat

end

end A125804.P3079920885158187286

/-! ## A125804.P16794447312134444042

`A125800(A046092(n))^and(1, A000040(n+1))`
-/

namespace A125804.P16794447312134444042
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A125800 (A046092 n).toNat : ℚ) ^ (Int.land 1 (A000040 (n + 1)) : ℤ)

end

end A125804.P16794447312134444042

/-!
# A125805: Antidiagonal sums of table A125800.

The programs for A125805, there is no canonical definition to state claims against.
-/

/-! ## A125805.P13598490950707813894

`∑[A130942(A007889(n))]`
-/

namespace A125805.P13598490950707813894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130942 (A007889 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A125805.P13598490950707813894

/-! ## A125805.P15774693267028574251

`∑[A162217(∑[A134954(n)])]`
-/

namespace A125805.P15774693267028574251
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134954 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162217 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A125805.P15774693267028574251

/-!
# A125806: Triangle of the sum of squared coefficients of q in the q-binomial coefficients, read by rows.

The programs for A125806, there is no canonical definition to state claims against.
-/

/-! ## A125806.P11681489014531988845

`A180493(A114202(n))`
-/

namespace A125806.P11681489014531988845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180493 (A114202 n).toNat

end

end A125806.P11681489014531988845

/-! ## A125806.P1572914649800917439

`A180493(A101164(n)+1)`
-/

namespace A125806.P1572914649800917439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180493 (A101164 n + 1).toNat

end

end A125806.P1572914649800917439

/-! ## A125806.P2576116509857045786

`A242736(A108359(n)+3)`
-/

namespace A125806.P2576116509857045786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242736 (A108359 n + 3).toNat

end

end A125806.P2576116509857045786

/-! ## A125806.P17631069575963323010

`A052307(eq[0, A221408(n+1)])`
-/

namespace A125806.P17631069575963323010
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221408 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052307 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A125806.P17631069575963323010

/-! ## A125806.P8365446846722878331

`A223728(A318045(n+1))+A101164(n)`
-/

namespace A125806.P8365446846722878331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223728 (A318045 (n + 1)).toNat + A101164 n

end

end A125806.P8365446846722878331

/-!
# A125807: Central terms of odd-indexed rows of triangle A125806: a(n) = A125806(2n+1,n).

The programs for A125807, there is no canonical definition to state claims against.
-/

/-! ## A125807.P7440138838993900207

`A125806(C(2*n+1+1, 2)+n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A125807.P7440138838993900207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125806 (Nat.choose (2 * n + 1 + 1) 2 + n)

end

end A125807.P7440138838993900207

/-! ## A125807.P12963514302925462087

`A277346(Δ[n²])`
-/

namespace A125807.P12963514302925462087
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277346 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A125807.P12963514302925462087

/-! ## A125807.P10448389976917238204

`A125806(2*(n+1)²)`
-/

namespace A125807.P10448389976917238204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125806 (2 * (n + 1) ^ 2)

end

end A125807.P10448389976917238204

/-! ## A125807.P2475389704715376730

`record[A125806(∑[A014682(n)])]`
-/

namespace A125807.P2475389704715376730
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125806 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A125807.P2475389704715376730

/-! ## A125807.P12940677469796799443

`record[A125806(n*A004526(n))]`
-/

namespace A125807.P12940677469796799443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125806 ((n : ℤ) * A004526 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A125807.P12940677469796799443

/-!
# A125808: Adjacent-to-central terms of even-indexed rows of triangle A125806: a(n) = A125806(2n+2,n).

The programs for A125808, there is no canonical definition to state claims against.
-/

/-! ## A125808.P7161940309800039816

`A125806(C(2*n+2+1, 2)+n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A125808.P7161940309800039816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125806 (Nat.choose (2 * n + 2 + 1) 2 + n)

end

end A125808.P7161940309800039816

/-! ## A125808.P8102601828824438877

`A125806((n+1)²+(n+2)²)`
-/

namespace A125808.P8102601828824438877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125806 ((n + 1) ^ 2 + (n + 2) ^ 2)

end

end A125808.P8102601828824438877

/-! ## A125808.P4387168333537883162

`record[A125806(∑[A266981(n)])]`
-/

namespace A125808.P4387168333537883162
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266981 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125806 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A125808.P4387168333537883162

/-! ## A125808.P14270928326604435305

`record[A125806(∑[A014682(n)]+n)]`
-/

namespace A125808.P14270928326604435305
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125806 (∑ j ∈ Finset.range (n + 1), f2 j + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A125808.P14270928326604435305

/-! ## A125808.P6947524363420581395

`record[A125806(gcd(n, A114327(n+1)))]`
-/

namespace A125808.P6947524363420581395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125806 (Int.gcd (n : ℤ) (A114327 (n + 1)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A125808.P6947524363420581395

/-!
# A125809: Row sums of triangle A125806.

The programs for A125809, there is no canonical definition to state claims against.
-/

/-! ## A125809.P309930351364302421

`A321994(n+1)+∑[A022894(n)]`
-/

namespace A125809.P309930351364302421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022894 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321994 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A125809.P309930351364302421

/-! ## A125809.P5316589571423751213

`A245176(n)-A184955(2*n+1)`
-/

namespace A125809.P5316589571423751213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245176 n - A184955 (2 * n + 1)

end

end A125809.P5316589571423751213

/-! ## A125809.P5729588322206036594

`∑[A000085(n)-A205295(2*n+1)]`
-/

namespace A125809.P5729588322206036594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000085 n - A205295 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A125809.P5729588322206036594

/-!
# A125810: Triangle of q-Bell number coefficients, read by rows that form polynomials in q, giving the eigensequence for the triangle of q-binomial coefficients.

The programs for A125810, there is no canonical definition to state claims against.
-/

/-! ## A125810.P10608071033448681232

`xor(A033665(A125800(n)), A226504(n))`
-/

namespace A125810.P10608071033448681232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A033665 (A125800 n).toNat) (A226504 n)

end

end A125810.P10608071033448681232

/-! ## A125810.P16892666195838730527

`A226504(n)-Δ[A343380(A196718(n+1))]`
-/

namespace A125810.P16892666195838730527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343380 (A196718 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226504 n - (f1 (n + 1) - f1 n)

end

end A125810.P16892666195838730527

/-! ## A125810.P14791138599275781511

`xor(A185284(A016777(n)), A226504(n))`
-/

namespace A125810.P14791138599275781511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A185284 (A016777 n).toNat) (A226504 n)

end

end A125810.P14791138599275781511

/-! ## A125810.P13897965367413868986

`A226504(n)-A185238(A125811(n))`
-/

namespace A125810.P13897965367413868986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226504 n - A185238 (A125811 n).toNat

end

end A125810.P13897965367413868986

/-! ## A125810.P16644095560932925224

`A226504(n)-A343380(A022167(n))`
-/

namespace A125810.P16644095560932925224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226504 n - A343380 (A022167 n).toNat

end

end A125810.P16644095560932925224

/-!
# A125811: Number of coefficients in the n-th q-Bell number as a polynomial in q.

The programs for A125811, the canonical program `A125811.P7529763177045100215` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A125811 has offset 0).

The definition of A125811 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A125811.P16887010735120284546

`∑[round(n-sqrt(2*n))]+1`
-/

namespace A125811.P16887010735120284546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℝ) - Real.sqrt (2 * n : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A125811.P16887010735120284546

namespace A125811

/-- `∑[round(n-sqrt(2*n))]+1` -/
def P16887010735120284546.Spec : Prop :=
  ∀ n, P16887010735120284546.a n = A125811 n

end A125811

/-! ## A125811.P3687901268680975660

`∑[xor(1, 2*n)-comp[∑[n]+1]]`
-/

namespace A125811.P3687901268680975660
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j + 1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.xor 1 (2 * n) : ℤ) - (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A125811.P3687901268680975660

namespace A125811

/-- `∑[xor(1, 2*n)-comp[∑[n]+1]]` -/
def P3687901268680975660.Spec : Prop :=
  ∀ n, P3687901268680975660.a n = A125811 n

end A125811

/-! ## A125811.P16096561675973238432

`∑[2*n+1-comp[C(n, 2)+1]]`
-/

namespace A125811.P16096561675973238432
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2 + 1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) - (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A125811.P16096561675973238432

namespace A125811

/-- `∑[2*n+1-comp[C(n, 2)+1]]` -/
def P16096561675973238432.Spec : Prop :=
  ∀ n, P16096561675973238432.a n = A125811 n

end A125811

/-! ## A125811.P11131475709223342810

`round(a(n-1)-sqrt(2*n)+n)` with `a(0)=1`
-/

namespace A125811.P11131475709223342810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.roundAway ((a (n - 1) : ℝ) - Real.sqrt (2 * n : ℝ) + (n : ℝ))

end

end A125811.P11131475709223342810

namespace A125811

/-- `round(a(n-1)-sqrt(2*n)+n)` -/
def P11131475709223342810.Spec : Prop :=
  ∀ n, P11131475709223342810.a n = A125811 n

end A125811

/-! ## A125811.P17140352629464542524

`abs(round(sqrt(2*n))-a(n-1)-n)` with `a(0)=1`
-/

namespace A125811.P17140352629464542524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  |SequenceMachineLib.roundAway (Real.sqrt (2 * n : ℝ)) - a (n - 1) - (n : ℤ)|

end

end A125811.P17140352629464542524

namespace A125811

/-- `abs(round(sqrt(2*n))-a(n-1)-n)` -/
def P17140352629464542524.Spec : Prop :=
  ∀ n, P17140352629464542524.a n = A125811 n

end A125811

/-! ## A125811.P17443233640508772252

`∑[A004277(n)-comp[∑[n+1]]]`
-/

namespace A125811.P17443233640508772252
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n - (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A125811.P17443233640508772252

namespace A125811

/-- `∑[A004277(n)-comp[∑[n+1]]]` -/
def P17443233640508772252.Spec : Prop :=
  ∀ n, P17443233640508772252.a n = A125811 n

end A125811

/-! ## A125811.P7529763177045100215

`∑[C(2, n+2)-(A123578(n)-n)]`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A125811

/-- `∑[C(2, n+2)-(A123578(n)-n)]` -/
def P7529763177045100215.Spec : Prop :=
  ∀ n, P7529763177045100215.a n = A125811 n

theorem P7529763177045100215.correct : P7529763177045100215.Spec := by
  intro n
  simp only [A125811]

end A125811

/-! ## A125811.P6865164029282994256

`∑[2*n+1-comp[A000217(n)+1]]`
-/

namespace A125811.P6865164029282994256
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n + 1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) - (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A125811.P6865164029282994256

namespace A125811

/-- `∑[2*n+1-comp[A000217(n)+1]]` -/
def P6865164029282994256.Spec : Prop :=
  ∀ n, P6865164029282994256.a n = A125811 n

end A125811

/-! ## A125811.P2232284598994804976

`∑[A001614(A028310(n))-n]`
-/

namespace A125811.P2232284598994804976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001614 (A028310 n).toNat - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A125811.P2232284598994804976

namespace A125811

/-- `∑[A001614(A028310(n))-n]` -/
def P2232284598994804976.Spec : Prop :=
  ∀ n, P2232284598994804976.a n = A125811 n

end A125811

/-! ## A125811.P1286820440136131687

`∑[A028310(n)-A123578(n)]`
-/

namespace A125811.P1286820440136131687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n - A123578 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A125811.P1286820440136131687

namespace A125811

/-- `∑[A028310(n)-A123578(n)]` -/
def P1286820440136131687.Spec : Prop :=
  ∀ n, P1286820440136131687.a n = A125811 n

end A125811

/-! ## A125811.P18364433585923799871

`∑[A000007(n)+n-A123578(n)]`
-/

namespace A125811.P18364433585923799871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (n : ℤ) - A123578 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A125811.P18364433585923799871

namespace A125811

/-- `∑[A000007(n)+n-A123578(n)]` -/
def P18364433585923799871.Spec : Prop :=
  ∀ n, P18364433585923799871.a n = A125811 n

end A125811

/-! ## A125811.P2369128595017027327

`∑[A123108(2*n)-A123578(n)]`
-/

namespace A125811.P2369128595017027327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (2 * n) - A123578 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A125811.P2369128595017027327

namespace A125811

/-- `∑[A123108(2*n)-A123578(n)]` -/
def P2369128595017027327.Spec : Prop :=
  ∀ n, P2369128595017027327.a n = A125811 n

end A125811

/-! ## A125811.P10087187107635996454

`A000027(C(n, 2)+1-A006463(n))`
-/

namespace A125811.P10087187107635996454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 ((Nat.choose n 2 + 1 : ℤ) - A006463 n).toNat

end

end A125811.P10087187107635996454

namespace A125811

/-- `A000027(C(n, 2)+1-A006463(n))` -/
def P10087187107635996454.Spec : Prop :=
  ∀ n, P10087187107635996454.a n = A125811 n

end A125811

/-! ## A125811.P16751554422701644935

`∑[A336326(A161680(n))-A123578(n)]`
-/

namespace A125811.P16751554422701644935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336326 (A161680 n).toNat - A123578 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A125811.P16751554422701644935

namespace A125811

/-- `∑[A336326(A161680(n))-A123578(n)]` -/
def P16751554422701644935.Spec : Prop :=
  ∀ n, P16751554422701644935.a n = A125811 n

end A125811

/-! ## A125811.P3278590315588707538

`∑[A134478(∑[n])-A123578(n)]`
-/

namespace A125811.P3278590315588707538
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134478 (∑ j ∈ Finset.range (n + 1), f2 j) - A123578 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A125811.P3278590315588707538

namespace A125811

/-- `∑[A134478(∑[n])-A123578(n)]` -/
def P3278590315588707538.Spec : Prop :=
  ∀ n, P3278590315588707538.a n = A125811 n

end A125811

/-! ## A125811.P5902442977292193519

`∑[A083920(A004737(A027688(n)))]`
-/

namespace A125811.P5902442977292193519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083920 (A004737 (A027688 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A125811.P5902442977292193519

namespace A125811

/-- `∑[A083920(A004737(A027688(n)))]` -/
def P5902442977292193519.Spec : Prop :=
  ∀ n, P5902442977292193519.a n = A125811 n

end A125811

/-!
# A125812: q-Bell numbers for q=2; eigensequence of A022166, which is the triangle of Gaussian binomial coefficients [n,k] for q=2.

The programs for A125812, there is no canonical definition to state claims against.
-/

/-! ## A125812.P8434788342211813163

`A143774(∑[n]+n)`
-/

namespace A125812.P8434788342211813163
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143774 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A125812.P8434788342211813163

/-! ## A125812.P6279890261684732437

`A381369(∑[n+3])`
-/

namespace A125812.P6279890261684732437
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381369 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A125812.P6279890261684732437

/-!
# A125813: q-Bell numbers for q=3; eigensequence of A022167, which is the triangle of Gaussian binomial coefficients [n,k] for q=3.

The programs for A125813, there is no canonical definition to state claims against.
-/

/-! ## A125813.P13521912479970404410

`A143777(∑[n]+n)`
-/

namespace A125813.P13521912479970404410
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143777 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A125813.P13521912479970404410

/-! ## A125813.P6505887653114959907

`A381369(A155212(n)+4)`
-/

namespace A125813.P6505887653114959907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381369 (A155212 n + 4).toNat

end

end A125813.P6505887653114959907

/-! ## A125813.P10028183197519313165

`A381369(eq[4, A004736(n+1)])`
-/

namespace A125813.P10028183197519313165
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381369 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A125813.P10028183197519313165

/-! ## A125813.P1072573286171556891

`A381369(A000217(n+3)+n)`
-/

namespace A125813.P1072573286171556891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381369 (A000217 (n + 3) + (n : ℤ)).toNat

end

end A125813.P1072573286171556891

/-! ## A125813.P16097016726448353515

`A381369(eq[A081577(n+3), A225750(n)])`
-/

namespace A125813.P16097016726448353515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081577 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225750 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381369 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A125813.P16097016726448353515

/-!
# A125814: q-Bell numbers for q=4; eigensequence of A022168, which is the triangle of Gaussian binomial coefficients [n,k] for q=4.

The programs for A125814, there is no canonical definition to state claims against.
-/

/-! ## A125814.P3674160186225713180

`A381369(A056115(n)+10)`
-/

namespace A125814.P3674160186225713180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381369 (A056115 n + 10).toNat

end

end A125814.P3674160186225713180

/-! ## A125814.P13349023293620673765

`A381369(A055999(n+2)+1)`
-/

namespace A125814.P13349023293620673765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381369 (A055999 (n + 2) + 1).toNat

end

end A125814.P13349023293620673765

/-! ## A125814.P4185547879309113490

`A381369(A000217(n+4)+n)`
-/

namespace A125814.P4185547879309113490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381369 (A000217 (n + 4) + (n : ℤ)).toNat

end

end A125814.P4185547879309113490

/-!
# A125815: q-Bell numbers for q=5; eigensequence of A022169, which is the triangle of Gaussian binomial coefficients [n,k] for q=5.

The programs for A125815, there is no canonical definition to state claims against.
-/

/-! ## A125815.P18216879056887352716

`A381369(A055999(n+3))`
-/

namespace A125815.P18216879056887352716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381369 (A055999 (n + 3)).toNat

end

end A125815.P18216879056887352716

/-! ## A125815.P500553042794878952

`A302779(A374848(n)+1)`
-/

namespace A125815.P500553042794878952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302779 (A374848 n + 1).toNat

end

end A125815.P500553042794878952

/-!
# A125816: a(n) = ((1+sqrt(13))^n + (1-sqrt(13))^n)/2.

The programs for A125816, the canonical program `A125816.P14357770134793597934` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A125816 has offset 1).

The definition of A125816 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A125816.P12535211556806004767

`ogf((1-x)/(1-2x-12x^2))`
-/

namespace A125816.P12535211556806004767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1] [1, -2, -12] n

end

end A125816.P12535211556806004767

namespace A125816

/-- `ogf((1-x)/(1-2x-12x^2))` -/
def P12535211556806004767.Spec : Prop :=
  ∀ n, P12535211556806004767.a n = A125816 (n + 1)

end A125816

/-! ## A125816.P14357770134793597934

`2*a(n-1)+12*a(n-2)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A125816

/-- `2*a(n-1)+12*a(n-2)` -/
def P14357770134793597934.Spec : Prop :=
  ∀ n, (P14357770134793597934.a n : ℤ) = A125816 (n + 1)

theorem P14357770134793597934.correct : P14357770134793597934.Spec := by
  intro n
  simp only [A125816, Nat.add_sub_cancel]

end A125816

/-! ## A125816.P11470826245839859845

`∑{#}[n, A098158(C(n+1, 2)+#)*13^(n-#)]`
-/

namespace A125816.P11470826245839859845
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (A098158 (Nat.choose (n + 1) 2 + k) : ℚ) * (13 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ)

end

end A125816.P11470826245839859845

namespace A125816

/-- `∑{#}[n, A098158(C(n+1, 2)+#)*13^(n-#)]` -/
def P11470826245839859845.Spec : Prop :=
  ∀ n, P11470826245839859845.a n = (A125816 (n + 1) : ℚ)

end A125816

/-! ## A125816.P3655523874445714302

`∑{#}[floor(n/2), C(n, 2*#)*13^#]`
-/

namespace A125816.P3655523874445714302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 2⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, Nat.choose n (2 * k) * 13 ^ k

end

end A125816.P3655523874445714302

namespace A125816

/-- `∑{#}[floor(n/2), C(n, 2*#)*13^#]` -/
def P3655523874445714302.Spec : Prop :=
  ∀ n, (P3655523874445714302.a n : ℤ) = A125816 (n + 1)

end A125816

/-! ## A125816.P14378589528617183531

`2*(a(n-1)+6*a(n-2))` with `a(0)=1, a(1)=1`
-/

namespace A125816.P14378589528617183531
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  2 * (a (n - 1) + 6 * a (n - 2))

end

end A125816.P14378589528617183531

namespace A125816

/-- `2*(a(n-1)+6*a(n-2))` -/
def P14378589528617183531.Spec : Prop :=
  ∀ n, (P14378589528617183531.a n : ℤ) = A125816 (n + 1)

theorem P14378589528617183531.correct : P14378589528617183531.Spec := by
  intro n
  simp only [A125816, Nat.add_sub_cancel, A125816.P14378589528617183531.a, A125816.P14357770134793597934.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A125816

/-! ## A125816.P8856401165052687936

`2*(a(n-1)-3*(a(n-2)-3*a(n-2)))` with `a(0)=1, a(1)=1`
-/

namespace A125816.P8856401165052687936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  2 * (a (n - 1) - 3 * (a (n - 2) - 3 * a (n - 2)))

end

end A125816.P8856401165052687936

namespace A125816

/-- `2*(a(n-1)-3*(a(n-2)-3*a(n-2)))` -/
def P8856401165052687936.Spec : Prop :=
  ∀ n, P8856401165052687936.a n = A125816 (n + 1)

end A125816

/-! ## A125816.P15479748619113273446

`2^(n-1)*A075118(n)`
-/

namespace A125816.P15479748619113273446
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (A075118 n : ℚ)

end

end A125816.P15479748619113273446

namespace A125816

/-- `2^(n-1)*A075118(n)` -/
def P15479748619113273446.Spec : Prop :=
  ∀ n, P15479748619113273446.a n = (A125816 (n + 1) : ℚ)

end A125816

/-! ## A125816.P6382965624622525702

`Δ[(A006130(n)-A052533(n))*A011782(n)]`
-/

namespace A125816.P6382965624622525702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A006130 n - A052533 n) * A011782 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A125816.P6382965624622525702

namespace A125816

/-- `Δ[(A006130(n)-A052533(n))*A011782(n)]` -/
def P6382965624622525702.Spec : Prop :=
  ∀ n, P6382965624622525702.a n = A125816 (n + 1)

end A125816

/-! ## A125816.P10907723014506433803

`((1+sqrt(13))^n+(1-sqrt(13))^n)/2`
-/

namespace A125816.P10907723014506433803
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((1 + Real.sqrt (13 : ℝ)) ^ n + (1 - Real.sqrt (13 : ℝ)) ^ n) / 2

end

end A125816.P10907723014506433803

namespace A125816

/-- `((1+sqrt(13))^n+(1-sqrt(13))^n)/2` -/
def P10907723014506433803.Spec : Prop :=
  ∀ n, P10907723014506433803.a n = (A125816 (n + 1) : ℝ)

theorem P10907723014506433803.correct : P10907723014506433803.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A125816, Nat.add_sub_cancel, A125816.P10907723014506433803.a, A125816.P14357770134793597934.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A125816, Nat.add_sub_cancel, A125816.P10907723014506433803.a, A125816.P14357770134793597934.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A125816

/-! ## A125816.P2097331495521879815

`floor(A127262(n)/2)`
-/

namespace A125816.P2097331495521879815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A127262 n : ℚ) / 2⌋

end

end A125816.P2097331495521879815

namespace A125816

/-- `floor(A127262(n)/2)` -/
def P2097331495521879815.Spec : Prop :=
  ∀ n, P2097331495521879815.a n = A125816 (n + 1)

end A125816

/-!
# A125817: a(n) = ((1 + 3*sqrt(2))^n - (1 - 3*sqrt(2))^n)/(2*sqrt(2)).

The programs for A125817, the canonical program `A125817.P13475978616578989257` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A125817 has offset 0).

The definition of A125817 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A125817.P2561556079241735646

`ogf(3x/(1-2x-17x^2))`
-/

namespace A125817.P2561556079241735646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 3] [1, -2, -17] n

end

end A125817.P2561556079241735646

namespace A125817

/-- `ogf(3x/(1-2x-17x^2))` -/
def P2561556079241735646.Spec : Prop :=
  ∀ n, P2561556079241735646.a n = A125817 n

end A125817

/-! ## A125817.P13475978616578989257

`2*a(n-1)+17*a(n-2)` with `a(0)=0, a(1)=3`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A125817

/-- `2*a(n-1)+17*a(n-2)` -/
def P13475978616578989257.Spec : Prop :=
  ∀ n, (P13475978616578989257.a n : ℤ) = A125817 n

theorem P13475978616578989257.correct : P13475978616578989257.Spec := by
  intro n
  simp only [A125817]

end A125817

/-! ## A125817.P6960770367352665751

`((1+3*sqrt(2))^n-(1-3*sqrt(2))^n)/(2*sqrt(2))`
-/

namespace A125817.P6960770367352665751
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((1 + 3 * Real.sqrt (2 : ℝ)) ^ n - (1 - 3 * Real.sqrt (2 : ℝ)) ^ n) / (2 * Real.sqrt (2 : ℝ))

end

end A125817.P6960770367352665751

namespace A125817

/-- `((1+3*sqrt(2))^n-(1-3*sqrt(2))^n)/(2*sqrt(2))` -/
def P6960770367352665751.Spec : Prop :=
  ∀ n, P6960770367352665751.a n = (A125817 n : ℝ)

theorem P6960770367352665751.correct : P6960770367352665751.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A125817, Nat.add_sub_cancel, A125817.P6960770367352665751.a, A125817.P13475978616578989257.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A125817, Nat.add_sub_cancel, A125817.P6960770367352665751.a, A125817.P13475978616578989257.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A125817

/-! ## A125817.P3878262702625557136

`Δ[A125818(n+1)/6]`
-/

namespace A125817.P3878262702625557136
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A125818 (n + 1) : ℚ) / 6

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A125817.P3878262702625557136

namespace A125817

/-- `Δ[A125818(n+1)/6]` -/
def P3878262702625557136.Spec : Prop :=
  ∀ n, P3878262702625557136.a n = (A125817 n : ℚ)

end A125817

/-! ## A125817.P11432110553510203770

`∑{#}[n, (-1)^(n-#)*C(n, #)*A124191(#+1)]`
-/

namespace A125817.P11432110553510203770
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (-1 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) * (Nat.choose n k : ℚ) * (A124191 (k + 1) : ℚ)

end

end A125817.P11432110553510203770

namespace A125817

/-- `∑{#}[n, (-1)^(n-#)*C(n, #)*A124191(#+1)]` -/
def P11432110553510203770.Spec : Prop :=
  ∀ n, P11432110553510203770.a n = (A125817 n : ℚ)

end A125817

/-!
# A125818: a(n) = ((1 + 3*sqrt(2))^n + (1 - 3*sqrt(2))^n)/2.

The programs for A125818, the canonical program `A125818.P16181218501811496427` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A125818 has offset 1).

The definition of A125818 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A125818.P11968368839387023716

`ogf((1-x)/(1-2x-17x^2))`
-/

namespace A125818.P11968368839387023716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1] [1, -2, -17] n

end

end A125818.P11968368839387023716

namespace A125818

/-- `ogf((1-x)/(1-2x-17x^2))` -/
def P11968368839387023716.Spec : Prop :=
  ∀ n, P11968368839387023716.a n = A125818 (n + 1)

end A125818

/-! ## A125818.P16181218501811496427

`2*a(n-1)+17*a(n-2)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A125818

/-- `2*a(n-1)+17*a(n-2)` -/
def P16181218501811496427.Spec : Prop :=
  ∀ n, (P16181218501811496427.a n : ℤ) = A125818 (n + 1)

theorem P16181218501811496427.correct : P16181218501811496427.Spec := by
  intro n
  simp only [A125818, Nat.add_sub_cancel]

end A125818

/-! ## A125818.P16276680787774899407

`∑{#}[n, A098158(C(n+1, 2)+#)*18^(n-#)]`
-/

namespace A125818.P16276680787774899407
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (A098158 (Nat.choose (n + 1) 2 + k) : ℚ) * (18 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ)

end

end A125818.P16276680787774899407

namespace A125818

/-- `∑{#}[n, A098158(C(n+1, 2)+#)*18^(n-#)]` -/
def P16276680787774899407.Spec : Prop :=
  ∀ n, P16276680787774899407.a n = (A125818 (n + 1) : ℚ)

end A125818

/-! ## A125818.P2277032706037052190

`((1+3*sqrt(2))^n+(1-3*sqrt(2))^n)/2`
-/

namespace A125818.P2277032706037052190
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((1 + 3 * Real.sqrt (2 : ℝ)) ^ n + (1 - 3 * Real.sqrt (2 : ℝ)) ^ n) / 2

end

end A125818.P2277032706037052190

namespace A125818

/-- `((1+3*sqrt(2))^n+(1-3*sqrt(2))^n)/2` -/
def P2277032706037052190.Spec : Prop :=
  ∀ n, P2277032706037052190.a n = (A125818 (n + 1) : ℝ)

theorem P2277032706037052190.correct : P2277032706037052190.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A125818, Nat.add_sub_cancel, A125818.P2277032706037052190.a, A125818.P16181218501811496427.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A125818, Nat.add_sub_cancel, A125818.P2277032706037052190.a, A125818.P16181218501811496427.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A125818

/-! ## A125818.P5599800624471968994

`Δ[A125817(n)/3]`
-/

namespace A125818.P5599800624471968994
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A125817 n : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A125818.P5599800624471968994

namespace A125818

/-- `Δ[A125817(n)/3]` -/
def P5599800624471968994.Spec : Prop :=
  ∀ n, P5599800624471968994.a n = (A125818 (n + 1) : ℚ)

end A125818

/-!
# A125819: a(n) = ((1 + 7*sqrt(2))^n - (1 - 7*sqrt(2))^n)/(14*sqrt(2)).

The programs for A125819, the canonical program `A125819.P3277980574380710427` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A125819 has offset 0).

The definition of A125819 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `((1+7*sqrt(2))^n-(1-7*sqrt(2))^n)/(14*sqrt(2))` (program `A125819.P393577610749669039`, by `A125819.P393577610749669039.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A125819.P15331377253275905537

`ogf(x/(1-2x-97x^2))`
-/

namespace A125819.P15331377253275905537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1] [1, -2, -97] n

end

end A125819.P15331377253275905537

namespace A125819

/-- `ogf(x/(1-2x-97x^2))` -/
def P15331377253275905537.Spec : Prop :=
  ∀ n, P15331377253275905537.a n = A125819 n

end A125819

/-! ## A125819.P3277980574380710427

`2*a(n-1)+97*a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A125819

/-- `2*a(n-1)+97*a(n-2)` -/
def P3277980574380710427.Spec : Prop :=
  ∀ n, (P3277980574380710427.a n : ℤ) = A125819 n

theorem P3277980574380710427.correct : P3277980574380710427.Spec := by
  intro n
  simp only [A125819]

end A125819

/-! ## A125819.P393577610749669039

`((1+7*sqrt(2))^n-(1-7*sqrt(2))^n)/(14*sqrt(2))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A125819.P393577610749669039
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((1 + 7 * Real.sqrt (2 : ℝ)) ^ n - (1 - 7 * Real.sqrt (2 : ℝ)) ^ n) / (14 * Real.sqrt (2 : ℝ))

end

end A125819.P393577610749669039

namespace A125819

/-- `((1+7*sqrt(2))^n-(1-7*sqrt(2))^n)/(14*sqrt(2))` -/
def P393577610749669039.Spec : Prop :=
  ∀ n, P393577610749669039.a n = (A125819 n : ℝ)

theorem P393577610749669039.correct : P393577610749669039.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A125819, Nat.add_sub_cancel, A125819.P393577610749669039.a, A125819.P3277980574380710427.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A125819, Nat.add_sub_cancel, A125819.P393577610749669039.a, A125819.P3277980574380710427.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A125819

/-! ## A125819.P16757485931990540557

`∑[A125820(A233583(n+1))]-1`
-/

namespace A125819.P16757485931990540557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125820 (A233583 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A125819.P16757485931990540557

namespace A125819

/-- `∑[A125820(A233583(n+1))]-1` -/
def P16757485931990540557.Spec : Prop :=
  ∀ n, P16757485931990540557.a n = A125819 n

end A125819

/-! ## A125819.P15741747171182232545

`∑[A125820(A000038(n)+n)]-1`
-/

namespace A125819.P15741747171182232545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125820 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A125819.P15741747171182232545

namespace A125819

/-- `∑[A125820(A000038(n)+n)]-1` -/
def P15741747171182232545.Spec : Prop :=
  ∀ n, P15741747171182232545.a n = A125819 n

end A125819

/-! ## A125819.P9464860549987171777

`∑[A125820(n+1)]-A125820(n+1)`
-/

namespace A125819.P9464860549987171777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125820 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A125820 (n + 1)

end

end A125819.P9464860549987171777

namespace A125819

/-- `∑[A125820(n+1)]-A125820(n+1)` -/
def P9464860549987171777.Spec : Prop :=
  ∀ n, P9464860549987171777.a n = A125819 n

end A125819

/-!
# A125820: a(n) = ((1 + 7*sqrt(2))^n + (1 - 7*sqrt(2))^n)/2.

The programs for A125820, the canonical program `A125820.P2093209618135055056` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A125820 has offset 1).

The definition of A125820 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `((1+7*sqrt(2))^n+(1-7*sqrt(2))^n)/2` (program `A125820.P9778291004859460428`, by `A125820.P9778291004859460428.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A125820.P13876738875028463430

`ogf((1-x)/(1-2x-97x^2))`
-/

namespace A125820.P13876738875028463430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1] [1, -2, -97] n

end

end A125820.P13876738875028463430

namespace A125820

/-- `ogf((1-x)/(1-2x-97x^2))` -/
def P13876738875028463430.Spec : Prop :=
  ∀ n, P13876738875028463430.a n = A125820 (n + 1)

end A125820

/-! ## A125820.P2093209618135055056

`2*a(n-1)+97*a(n-2)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A125820

/-- `2*a(n-1)+97*a(n-2)` -/
def P2093209618135055056.Spec : Prop :=
  ∀ n, (P2093209618135055056.a n : ℤ) = A125820 (n + 1)

theorem P2093209618135055056.correct : P2093209618135055056.Spec := by
  intro n
  simp only [A125820, Nat.add_sub_cancel]

end A125820

/-! ## A125820.P9778291004859460428

`((1+7*sqrt(2))^n+(1-7*sqrt(2))^n)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A125820.P9778291004859460428
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((1 + 7 * Real.sqrt (2 : ℝ)) ^ n + (1 - 7 * Real.sqrt (2 : ℝ)) ^ n) / 2

end

end A125820.P9778291004859460428

namespace A125820

/-- `((1+7*sqrt(2))^n+(1-7*sqrt(2))^n)/2` -/
def P9778291004859460428.Spec : Prop :=
  ∀ n, P9778291004859460428.a n = (A125820 (n + 1) : ℝ)

theorem P9778291004859460428.correct : P9778291004859460428.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A125820, Nat.add_sub_cancel, A125820.P9778291004859460428.a, A125820.P2093209618135055056.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A125820, Nat.add_sub_cancel, A125820.P9778291004859460428.a, A125820.P2093209618135055056.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A125820

/-! ## A125820.P184955218008865315

`Δ[A125819(n)]`
-/

namespace A125820.P184955218008865315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125819 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A125820.P184955218008865315

namespace A125820

/-- `Δ[A125819(n)]` -/
def P184955218008865315.Spec : Prop :=
  ∀ n, P184955218008865315.a n = A125820 (n + 1)

end A125820

/-! ## A125820.P16631611034200613990

`A125819(n+1)-A125819(n)`
-/

namespace A125820.P16631611034200613990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125819 (n + 1) - A125819 n

end

end A125820.P16631611034200613990

namespace A125820

/-- `A125819(n+1)-A125819(n)` -/
def P16631611034200613990.Spec : Prop :=
  ∀ n, P16631611034200613990.a n = A125820 (n + 1)

end A125820

/-! ## A125820.P5144992987386302839

`record[A125819(A028242(n))]-A125819(n)`
-/

namespace A125820.P5144992987386302839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125819 (A028242 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A125819 n

end

end A125820.P5144992987386302839

namespace A125820

/-- `record[A125819(A028242(n))]-A125819(n)` -/
def P5144992987386302839.Spec : Prop :=
  ∀ n, P5144992987386302839.a n = A125820 (n + 1)

end A125820

/-!
# A125821: Numbers k for which 8*k+5 and 8*k+7 are twin primes.

The programs for A125821, the canonical program `A125821.P16599126941155596659` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A125821 has offset 1).

The definition of A125821 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A125821.P15061831422415508528

`3*A139404(n+2)`
-/

namespace A125821.P15061831422415508528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A139404 (n + 2)

end

end A125821.P15061831422415508528

namespace A125821

/-- `3*A139404(n+2)` -/
def P15061831422415508528.Spec : Prop :=
  ∀ n, P15061831422415508528.a n = A125821 (n + 1)

end A125821

/-! ## A125821.P3032486939152061360

`∑[A008486(Δ[A139404(n+1)])]`
-/

namespace A125821.P3032486939152061360
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139404 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A125821.P3032486939152061360

namespace A125821

/-- `∑[A008486(Δ[A139404(n+1)])]` -/
def P3032486939152061360.Spec : Prop :=
  ∀ n, P3032486939152061360.a n = A125821 (n + 1)

end A125821

/-! ## A125821.P12781546197883434360

`∑[A008585(Δ[A139404(n+1)])]`
-/

namespace A125821.P12781546197883434360
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139404 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A125821.P12781546197883434360

namespace A125821

/-- `∑[A008585(Δ[A139404(n+1)])]` -/
def P12781546197883434360.Spec : Prop :=
  ∀ n, P12781546197883434360.a n = A125821 (n + 1)

end A125821

/-! ## A125821.P16599126941155596659

`∑[A076536(Δ[A205172(n+1)])]`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A125821

/-- `∑[A076536(Δ[A205172(n+1)])]` -/
def P16599126941155596659.Spec : Prop :=
  ∀ n, P16599126941155596659.a n = A125821 (n + 1)

theorem P16599126941155596659.correct : P16599126941155596659.Spec := by
  intro n
  simp only [A125821, Nat.add_sub_cancel]

end A125821

/-! ## A125821.P13801113047736868969

`A008486(A139404(n+2))`
-/

namespace A125821.P13801113047736868969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (A139404 (n + 2)).toNat

end

end A125821.P13801113047736868969

namespace A125821

/-- `A008486(A139404(n+2))` -/
def P13801113047736868969.Spec : Prop :=
  ∀ n, P13801113047736868969.a n = A125821 (n + 1)

end A125821

/-! ## A125821.P2629193646063803995

`A132292(A205172(n+2))`
-/

namespace A125821.P2629193646063803995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132292 (A205172 (n + 2)).toNat

end

end A125821.P2629193646063803995

namespace A125821

/-- `A132292(A205172(n+2))` -/
def P2629193646063803995.Spec : Prop :=
  ∀ n, P2629193646063803995.a n = A125821 (n + 1)

end A125821

/-! ## A125821.P12631828132006003291

`A025480(A205172(n+2)-2)`
-/

namespace A125821.P12631828132006003291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A205172 (n + 2) - 2).toNat

end

end A125821.P12631828132006003291

namespace A125821

/-- `A025480(A205172(n+2)-2)` -/
def P12631828132006003291.Spec : Prop :=
  ∀ n, P12631828132006003291.a n = A125821 (n + 1)

end A125821

/-!
# A125822: Numbers k for which 8*k + 1 and 8*k + 3 are twin primes.

The programs for A125822, there is no canonical definition to state claims against.
-/

/-! ## A125822.P3133344444495075855

`3*A139534(n+1)+2`
-/

namespace A125822.P3133344444495075855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A139534 (n + 1) + 2

end

end A125822.P3133344444495075855

/-! ## A125822.P11063202244343543979

`(p?[A007519(n+1)+2]-3)/8`
-/

namespace A125822.P11063202244343543979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007519 (n + 1) + 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 3 : ℚ) / 8

end

end A125822.P11063202244343543979

/-! ## A125822.P2429312247174368830

`∩[A005123(n+1), A005124(n+1)]`
-/

namespace A125822.P2429312247174368830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005123 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005124 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A125822.P2429312247174368830

/-! ## A125822.P5805882805860862664

`A016789(A139534(n+1))`
-/

namespace A125822.P5805882805860862664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016789 (A139534 (n + 1)).toNat

end

end A125822.P5805882805860862664

/-! ## A125822.P3376992172553250441

`A143862(A034694(n+1))+A016777(A139534(n+1))`
-/

namespace A125822.P3376992172553250441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143862 (A034694 (n + 1)).toNat + A016777 (A139534 (n + 1)).toNat

end

end A125822.P3376992172553250441

/-! ## A125822.P7362747533508649261

`A166517(2*A139534(n+1))`
-/

namespace A125822.P7362747533508649261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166517 (2 * A139534 (n + 1)).toNat

end

end A125822.P7362747533508649261

/-! ## A125822.P5700858976877411203

`eq[5, A386685(2*n)]`
-/

namespace A125822.P5700858976877411203
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386685 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A125822.P5700858976877411203

/-! ## A125822.P4304122224378732556

`record[A003602(A123986(n+2)-1)]`
-/

namespace A125822.P4304122224378732556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (A123986 (n + 2) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A125822.P4304122224378732556

/-! ## A125822.P13752837585002105759

`eq[2, A096500(A008574(2*n))]`
-/

namespace A125822.P13752837585002105759
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096500 (A008574 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A125822.P13752837585002105759

/-! ## A125822.P835201827081010349

`eq[2, A096501(8*n+3)]`
-/

namespace A125822.P835201827081010349
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096501 (8 * n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A125822.P835201827081010349

/-!
# A125823: Numbers whose base 7 representation is 4444....4.

The programs for A125823, the canonical program `A125823.P2020533486064689850` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A125823 has offset 1).

The definition of A125823 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A125823.P8902833836953212195

`ogf(4x/(1-8x+7x^2))`
-/

namespace A125823.P8902833836953212195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 4] [1, -8, 7] n

end

end A125823.P8902833836953212195

namespace A125823

/-- `ogf(4x/(1-8x+7x^2))` -/
def P8902833836953212195.Spec : Prop :=
  ∀ n, P8902833836953212195.a n = A125823 (n + 1)

end A125823

/-! ## A125823.P2020533486064689850

`7*a(n-1)+4` with `a(0)=0`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A125823

/-- `7*a(n-1)+4` -/
def P2020533486064689850.Spec : Prop :=
  ∀ n, (P2020533486064689850.a n : ℤ) = A125823 (n + 1)

theorem P2020533486064689850.correct : P2020533486064689850.Spec := by
  intro n
  simp only [A125823, Nat.add_sub_cancel]

end A125823

/-! ## A125823.P6760973620960786427

`4*A023000(n)`
-/

namespace A125823.P6760973620960786427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A023000 n

end

end A125823.P6760973620960786427

namespace A125823

/-- `4*A023000(n)` -/
def P6760973620960786427.Spec : Prop :=
  ∀ n, P6760973620960786427.a n = A125823 (n + 1)

end A125823

/-! ## A125823.P236974535488287984

`2*(7^n-1)/3`
-/

namespace A125823.P236974535488287984
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * ((7 ^ n : ℤ) - 1) : ℚ) / 3

end

end A125823.P236974535488287984

namespace A125823

/-- `2*(7^n-1)/3` -/
def P236974535488287984.Spec : Prop :=
  ∀ n, P236974535488287984.a n = (A125823 (n + 1) : ℚ)

theorem P236974535488287984.correct : P236974535488287984.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A125823, Nat.add_sub_cancel, A125823.P236974535488287984.a, A125823.P2020533486064689850.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A125823, Nat.add_sub_cancel, A125823.P236974535488287984.a, A125823.P2020533486064689850.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A125823

/-! ## A125823.P13149352500826934265

`4+7*a(n-1)` with `a(0)=0`
-/

namespace A125823.P13149352500826934265
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  4 + 7 * a (n - 1)

end

end A125823.P13149352500826934265

namespace A125823

/-- `4+7*a(n-1)` -/
def P13149352500826934265.Spec : Prop :=
  ∀ n, (P13149352500826934265.a n : ℤ) = A125823 (n + 1)

theorem P13149352500826934265.correct : P13149352500826934265.Spec := by
  intro n
  simp only [A125823, Nat.add_sub_cancel, A125823.P13149352500826934265.a, A125823.P2020533486064689850.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A125823

/-! ## A125823.P8499175992222813945

`lcm(7, a(n-1))+4` with `a(0)=0`
-/

namespace A125823.P8499175992222813945
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Nat.lcm 7 (a (n - 1)) + 4

end

end A125823.P8499175992222813945

namespace A125823

/-- `lcm(7, a(n-1))+4` -/
def P8499175992222813945.Spec : Prop :=
  ∀ n, (P8499175992222813945.a n : ℤ) = A125823 (n + 1)

end A125823

/-! ## A125823.P13225337846068972051

`∑[7*a(n-1)]` with `a(0)=0, a(1)=4`
-/

namespace A125823.P13225337846068972051
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 4] fun n f1 =>
  7 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A125823.P13225337846068972051

namespace A125823

/-- `∑[7*a(n-1)]` -/
def P13225337846068972051.Spec : Prop :=
  ∀ n, (P13225337846068972051.a n : ℤ) = A125823 (n + 1)

end A125823

/-! ## A125823.P7594838466264597200

`∑[lcm(4, floor(7^(n-1)))]`
-/

namespace A125823.P7594838466264597200
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 4 ⌊(7 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A125823.P7594838466264597200

namespace A125823

/-- `∑[lcm(4, floor(7^(n-1)))]` -/
def P7594838466264597200.Spec : Prop :=
  ∀ n, (P7594838466264597200.a n : ℤ) = A125823 (n + 1)

end A125823

/-! ## A125823.P13715506972981470043

`4-(a(n-1)-8*a(n-1))` with `a(0)=0`
-/

namespace A125823.P13715506972981470043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  4 - (a (n - 1) - 8 * a (n - 1))

end

end A125823.P13715506972981470043

namespace A125823

/-- `4-(a(n-1)-8*a(n-1))` -/
def P13715506972981470043.Spec : Prop :=
  ∀ n, P13715506972981470043.a n = A125823 (n + 1)

end A125823

/-! ## A125823.P15658886914902117281

`A083076(n)-1`
-/

namespace A125823.P15658886914902117281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083076 n - 1

end

end A125823.P15658886914902117281

namespace A125823

/-- `A083076(n)-1` -/
def P15658886914902117281.Spec : Prop :=
  ∀ n, P15658886914902117281.a n = A125823 (n + 1)

end A125823

/-! ## A125823.P7443902685536776311

`∑[A270471(n)]-1`
-/

namespace A125823.P7443902685536776311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270471 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A125823.P7443902685536776311

namespace A125823

/-- `∑[A270471(n)]-1` -/
def P7443902685536776311.Spec : Prop :=
  ∀ n, P7443902685536776311.a n = A125823 (n + 1)

end A125823

/-! ## A125823.P8004913589401549890

`2*A125725(n+1)`
-/

namespace A125823.P8004913589401549890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A125725 (n + 1)

end

end A125823.P8004913589401549890

namespace A125823

/-- `2*A125725(n+1)` -/
def P8004913589401549890.Spec : Prop :=
  ∀ n, P8004913589401549890.a n = A125823 (n + 1)

end A125823

/-! ## A125823.P8004338459983662019

`4*(A047852(n)-1)`
-/

namespace A125823.P8004338459983662019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A047852 n - 1)

end

end A125823.P8004338459983662019

namespace A125823

/-- `4*(A047852(n)-1)` -/
def P8004338459983662019.Spec : Prop :=
  ∀ n, P8004338459983662019.a n = A125823 (n + 1)

end A125823

/-! ## A125823.P17708166507271845082

`2/3*A024075(n)`
-/

namespace A125823.P17708166507271845082
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) / 3 * (A024075 n : ℚ)

end

end A125823.P17708166507271845082

namespace A125823

/-- `2/3*A024075(n)` -/
def P17708166507271845082.Spec : Prop :=
  ∀ n, P17708166507271845082.a n = (A125823 (n + 1) : ℚ)

theorem P17708166507271845082.correct : P17708166507271845082.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A125823, Nat.add_sub_cancel, A125823.P17708166507271845082.a, A125823.P2020533486064689850.a, A024075, A024075.P909197775632093808.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A125823, Nat.add_sub_cancel, A125823.P17708166507271845082.a, A125823.P2020533486064689850.a, A024075, A024075.P909197775632093808.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

end A125823

/-! ## A125823.P14618178686974710963

`4/3*A120741(n)`
-/

namespace A125823.P14618178686974710963
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 : ℚ) / 3 * (A120741 n : ℚ)

end

end A125823.P14618178686974710963

namespace A125823

/-- `4/3*A120741(n)` -/
def P14618178686974710963.Spec : Prop :=
  ∀ n, P14618178686974710963.a n = (A125823 (n + 1) : ℚ)

end A125823

/-! ## A125823.P1612020884965545880

`4/5*A125729(n+1)`
-/

namespace A125823.P1612020884965545880
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 : ℚ) / 5 * (A125729 (n + 1) : ℚ)

end

end A125823.P1612020884965545880

namespace A125823

/-- `4/5*A125729(n+1)` -/
def P1612020884965545880.Spec : Prop :=
  ∀ n, P1612020884965545880.a n = (A125823 (n + 1) : ℚ)

end A125823

/-! ## A125823.P16796884249521255828

`A023000(n)+A024075(n)/2`
-/

namespace A125823.P16796884249521255828
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A023000 n : ℚ) + (A024075 n : ℚ) / 2

end

end A125823.P16796884249521255828

namespace A125823

/-- `A023000(n)+A024075(n)/2` -/
def P16796884249521255828.Spec : Prop :=
  ∀ n, P16796884249521255828.a n = (A125823 (n + 1) : ℚ)

end A125823

/-! ## A125823.P496934386881024941

`A199416(n)/3-1`
-/

namespace A125823.P496934386881024941
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A199416 n : ℚ) / 3 - 1

end

end A125823.P496934386881024941

namespace A125823

/-- `A199416(n)/3-1` -/
def P496934386881024941.Spec : Prop :=
  ∀ n, P496934386881024941.a n = (A125823 (n + 1) : ℚ)

theorem P496934386881024941.correct : P496934386881024941.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A125823, Nat.add_sub_cancel, A125823.P496934386881024941.a, A125823.P2020533486064689850.a, A199416, A199416.P9418973205687149069.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A125823, Nat.add_sub_cancel, A125823.P496934386881024941.a, A125823.P2020533486064689850.a, A199416, A199416.P9418973205687149069.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

end A125823

/-!
# A125824: Denominator of n!/3^n.

The programs for A125824, the canonical program `A125824.P17644202284966607848` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A125824 has offset 0).

The definition of A125824 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A125824.P17644202284966607848

`3^A089792(n)`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A125824

/-- `3^A089792(n)` -/
def P17644202284966607848.Spec : Prop :=
  ∀ n, P17644202284966607848.a n = (A125824 n : ℚ)

end A125824

/-! ## A125824.P14177558782284060338

`3^(n-∑[val(abs(1-n)+1, 3)])`
-/

namespace A125824.P14177558782284060338
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (|1 - (n : ℤ)| + 1).toNat 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ ((n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) : ℤ)

end

end A125824.P14177558782284060338

namespace A125824

/-- `3^(n-∑[val(abs(1-n)+1, 3)])` -/
def P14177558782284060338.Spec : Prop :=
  ∀ n, P14177558782284060338.a n = (A125824 n : ℚ)

end A125824

/-! ## A125824.P146377977048770225

`3*a(n-1)/gcd(n, a(n-1))` with `a(0)=1`
-/

namespace A125824.P146377977048770225
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  3 * (a (n - 1) / (Int.gcd (n : ℤ) (SequenceMachineLib.roundAway (a (n - 1))) : ℚ))

end

end A125824.P146377977048770225

namespace A125824

/-- `3*a(n-1)/gcd(n, a(n-1))` -/
def P146377977048770225.Spec : Prop :=
  ∀ n, P146377977048770225.a n = (A125824 n : ℚ)

end A125824

/-! ## A125824.P6640785924634501424

`sqrt(3)^A230641(n)`
-/

namespace A125824.P6640785924634501424
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (3 : ℝ) ^ (A230641 n : ℤ)

end

end A125824.P6640785924634501424

namespace A125824

/-- `sqrt(3)^A230641(n)` -/
def P6640785924634501424.Spec : Prop :=
  ∀ n, P6640785924634501424.a n = (A125824 n : ℝ)

end A125824

/-! ## A125824.P8937424522238010517

`3^(n-A054861(n))`
-/

namespace A125824.P8937424522238010517
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ ((n : ℤ) - A054861 n : ℤ)

end

end A125824.P8937424522238010517

namespace A125824

/-- `3^(n-A054861(n))` -/
def P8937424522238010517.Spec : Prop :=
  ∀ n, P8937424522238010517.a n = (A125824 n : ℚ)

end A125824

/-! ## A125824.P13594736535278585464

`A000244(A089792(n))`
-/

namespace A125824.P13594736535278585464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 (A089792 n).toNat

end

end A125824.P13594736535278585464

namespace A125824

/-- `A000244(A089792(n))` -/
def P13594736535278585464.Spec : Prop :=
  ∀ n, P13594736535278585464.a n = A125824 n

end A125824

/-! ## A125824.P11558963520245622340

`A017913(A230641(n))`
-/

namespace A125824.P11558963520245622340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017913 (A230641 n).toNat

end

end A125824.P11558963520245622340

namespace A125824

/-- `A017913(A230641(n))` -/
def P11558963520245622340.Spec : Prop :=
  ∀ n, P11558963520245622340.a n = A125824 n

end A125824

/-! ## A125824.P424194195159379185

`A038754(A053735(n)+n)`
-/

namespace A125824.P424194195159379185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038754 (A053735 n + (n : ℤ)).toNat

end

end A125824.P424194195159379185

namespace A125824

/-- `A038754(A053735(n)+n)` -/
def P424194195159379185.Spec : Prop :=
  ∀ n, P424194195159379185.a n = A125824 n

end A125824

/-! ## A125824.P1452758170593272646

`A108411(A053735(n)+n)`
-/

namespace A125824.P1452758170593272646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108411 (A053735 n + (n : ℤ)).toNat

end

end A125824.P1452758170593272646

namespace A125824

/-- `A108411(A053735(n)+n)` -/
def P1452758170593272646.Spec : Prop :=
  ∀ n, P1452758170593272646.a n = A125824 n

end A125824

/-! ## A125824.P9101314995300519299

`A254006(A053735(n)+n)`
-/

namespace A125824.P9101314995300519299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254006 (A053735 n + (n : ℤ)).toNat

end

end A125824.P9101314995300519299

namespace A125824

/-- `A254006(A053735(n)+n)` -/
def P9101314995300519299.Spec : Prop :=
  ∀ n, P9101314995300519299.a n = A125824 n

end A125824

/-! ## A125824.P17110397701023285499

`A000244(n-A054861(n))`
-/

namespace A125824.P17110397701023285499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 ((n : ℤ) - A054861 n).toNat

end

end A125824.P17110397701023285499

namespace A125824

/-- `A000244(n-A054861(n))` -/
def P17110397701023285499.Spec : Prop :=
  ∀ n, P17110397701023285499.a n = A125824 n

end A125824

/-! ## A125824.P8312760393643985095

`A130599(A053735(n)+1+n)`
-/

namespace A125824.P8312760393643985095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130599 (A053735 n + 1 + (n : ℤ)).toNat

end

end A125824.P8312760393643985095

namespace A125824

/-- `A130599(A053735(n)+1+n)` -/
def P8312760393643985095.Spec : Prop :=
  ∀ n, P8312760393643985095.a n = A125824 n

end A125824

/-! ## A125824.P1864123955879243167

`A024023(n-A054861(n))+1`
-/

namespace A125824.P1864123955879243167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024023 ((n : ℤ) - A054861 n).toNat + 1

end

end A125824.P1864123955879243167

namespace A125824

/-- `A024023(n-A054861(n))+1` -/
def P1864123955879243167.Spec : Prop :=
  ∀ n, P1864123955879243167.a n = A125824 n

end A125824

/-! ## A125824.P13214554977014551488

`A000244(2*n-A004128(n))`
-/

namespace A125824.P13214554977014551488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 ((2 * n : ℤ) - A004128 n).toNat

end

end A125824.P13214554977014551488

namespace A125824

/-- `A000244(2*n-A004128(n))` -/
def P13214554977014551488.Spec : Prop :=
  ∀ n, P13214554977014551488.a n = A125824 n

end A125824

/-! ## A125824.P2871119283919727446

`A000244((A053735(n)+n)/2)`
-/

namespace A125824.P2871119283919727446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 (SequenceMachineLib.roundAway ((A053735 n + (n : ℤ) : ℚ) / 2)).toNat

end

end A125824.P2871119283919727446

namespace A125824

/-- `A000244((A053735(n)+n)/2)` -/
def P2871119283919727446.Spec : Prop :=
  ∀ n, P2871119283919727446.a n = A125824 n

end A125824

/-! ## A125824.P3924561511125597517

`A038754(2*(n-A054861(n)))`
-/

namespace A125824.P3924561511125597517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038754 (2 * ((n : ℤ) - A054861 n)).toNat

end

end A125824.P3924561511125597517

namespace A125824

/-- `A038754(2*(n-A054861(n)))` -/
def P3924561511125597517.Spec : Prop :=
  ∀ n, P3924561511125597517.a n = A125824 n

end A125824

/-! ## A125824.P2777833565685544881

`A017913(2*n-A344853(n))`
-/

namespace A125824.P2777833565685544881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017913 ((2 * n : ℤ) - A344853 n).toNat

end

end A125824.P2777833565685544881

namespace A125824

/-- `A017913(2*n-A344853(n))` -/
def P2777833565685544881.Spec : Prop :=
  ∀ n, P2777833565685544881.a n = A125824 n

end A125824

/-! ## A125824.P13881925124849400726

`A000244(n-A004128(n)+n)`
-/

namespace A125824.P13881925124849400726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 ((n : ℤ) - A004128 n + (n : ℤ)).toNat

end

end A125824.P13881925124849400726

namespace A125824

/-- `A000244(n-A004128(n)+n)` -/
def P13881925124849400726.Spec : Prop :=
  ∀ n, P13881925124849400726.a n = A125824 n

end A125824

/-! ## A125824.P9485337583306582598

`A017913(n-A344853(n)+n)`
-/

namespace A125824.P9485337583306582598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017913 ((n : ℤ) - A344853 n + (n : ℤ)).toNat

end

end A125824.P9485337583306582598

namespace A125824

/-- `A017913(n-A344853(n)+n)` -/
def P9485337583306582598.Spec : Prop :=
  ∀ n, P9485337583306582598.a n = A125824 n

end A125824

/-! ## A125824.P5515405970016147834

`A000244(n-(A004128(n)-n))`
-/

namespace A125824.P5515405970016147834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 ((n : ℤ) - (A004128 n - (n : ℤ))).toNat

end

end A125824.P5515405970016147834

namespace A125824

/-- `A000244(n-(A004128(n)-n))` -/
def P5515405970016147834.Spec : Prop :=
  ∀ n, P5515405970016147834.a n = A125824 n

end A125824

/-!
# A125827: Numbers m that divide 2^11 + 3^11 + 5^11 + ... + prime(m)^11.

The programs for A125827, there is no canonical definition to state claims against.
-/

/-! ## A125827.P10254864204233000379

`A000720(A233192(n+1))`
-/

namespace A125827.P10254864204233000379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A233192 (n + 1)).toNat

end

end A125827.P10254864204233000379

/-!
# A125829: Sprague-Grundy values for octal game .115.

The programs for A125829, there is no canonical definition to state claims against.
-/

/-! ## A125829.P10304290457180377243

`A182703(Δ[A191276(n+1)+A042948(n)])`
-/

namespace A125829.P10304290457180377243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191276 (n + 1) + A042948 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182703 (f1 (n + 1) - f1 n).toNat

end

end A125829.P10304290457180377243

/-!
# A125830: Primes for which the level is equal to 1 in A117563.

The programs for A125830, there is no canonical definition to state claims against.
-/

/-! ## A125830.P5753360603974481169

`A045344(eq[1, A117563(n+1)])`
-/

namespace A125830.P5753360603974481169
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117563 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A125830.P5753360603974481169

/-! ## A125830.P5976354028239363399

`A065091(eq[1, A117563(n+1)])`
-/

namespace A125830.P5976354028239363399
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117563 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A125830.P5976354028239363399

/-! ## A125830.P11209678228830580091

`A000040(eq[1, A117563(n+1)]+1)`
-/

namespace A125830.P11209678228830580091
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117563 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A125830.P11209678228830580091

/-! ## A125830.P7025197821347006175

`A008578(eq[1, A117563(n+1)]+2)`
-/

namespace A125830.P7025197821347006175
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117563 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2)

end

end A125830.P7025197821347006175

/-! ## A125830.P7567273438347260901

`record[A117078(n+3)+A001223(n+3)]`
-/

namespace A125830.P7567273438347260901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117078 (n + 3) + A001223 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A125830.P7567273438347260901

/-! ## A125830.P113884676752643774

`p?[(2-A117563(n+1))*A000040(n+1)]`
-/

namespace A125830.P113884676752643774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A117563 (n + 1)) * A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A125830.P113884676752643774

/-! ## A125830.P11538561149127817322

`A065091(lt[A008347(n), A117078(n+1)])`
-/

namespace A125830.P11538561149127817322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008347 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117078 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A125830.P11538561149127817322

/-! ## A125830.P8951481413607442318

`A065091(eq[A062234(n+1), A117078(n+1)])`
-/

namespace A125830.P8951481413607442318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062234 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117078 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A125830.P8951481413607442318

/-! ## A125830.P16273027017714995003

`A065091(lt[A014689(n+1), A117078(n+1)])`
-/

namespace A125830.P16273027017714995003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014689 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117078 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A125830.P16273027017714995003

/-! ## A125830.P17859647528436485572

`A000040(lt[A014689(n+1), A117078(n+1)]+1)`
-/

namespace A125830.P17859647528436485572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014689 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117078 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1)

end

end A125830.P17859647528436485572

/-! ## A125830.P5377549356691007517

`A065091(lt[A131733(n+1)+1, A117078(n+1)])`
-/

namespace A125830.P5377549356691007517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131733 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117078 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A125830.P5377549356691007517

/-! ## A125830.P16133014483515772171

`A065091(lt[A131733(n+3), A117078(n+1)])`
-/

namespace A125830.P16133014483515772171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131733 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117078 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A125830.P16133014483515772171

/-! ## A125830.P3821605681108474750

`A065091(eq[1, A118123(n+1)])`
-/

namespace A125830.P3821605681108474750
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118123 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A125830.P3821605681108474750

/-! ## A125830.P13852673353496478554

`p?[A000040(n+1)*A118123(n+1)]`
-/

namespace A125830.P13852673353496478554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A118123 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A125830.P13852673353496478554

/-! ## A125830.P3064675220335637561

`p?[(A052147(n+1)-2)*A118123(n+1)]`
-/

namespace A125830.P3064675220335637561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A052147 (n + 1) - 2) * A118123 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A125830.P3064675220335637561

/-!
# A125833: Numbers whose base-5 representation is 333333.......3.

The programs for A125833, the canonical program `A125833.P5165128951543181077` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A125833 has offset 0).

The definition of A125833 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A125833.P10984603273723511057

`ogf(3x/(1-6x+5x^2))`
-/

namespace A125833.P10984603273723511057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 3] [1, -6, 5] n

end

end A125833.P10984603273723511057

namespace A125833

/-- `ogf(3x/(1-6x+5x^2))` -/
def P10984603273723511057.Spec : Prop :=
  ∀ n, P10984603273723511057.a n = A125833 n

end A125833

/-! ## A125833.P5165128951543181077

`5*a(n-1)+3` with `a(0)=0`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A125833

/-- `5*a(n-1)+3` -/
def P5165128951543181077.Spec : Prop :=
  ∀ n, (P5165128951543181077.a n : ℤ) = A125833 n

theorem P5165128951543181077.correct : P5165128951543181077.Spec := by
  intro n
  simp only [A125833]

end A125833

/-! ## A125833.P2512213605549009532

`3*A003463(n)`
-/

namespace A125833.P2512213605549009532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A003463 n

end

end A125833.P2512213605549009532

namespace A125833

/-- `3*A003463(n)` -/
def P2512213605549009532.Spec : Prop :=
  ∀ n, P2512213605549009532.a n = A125833 n

end A125833

/-! ## A125833.P6082844677953712037

`3*(5^n-1)/4`
-/

namespace A125833.P6082844677953712037
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 * ((5 ^ n : ℤ) - 1) : ℚ) / 4

end

end A125833.P6082844677953712037

namespace A125833

/-- `3*(5^n-1)/4` -/
def P6082844677953712037.Spec : Prop :=
  ∀ n, P6082844677953712037.a n = (A125833 n : ℚ)

theorem P6082844677953712037.correct : P6082844677953712037.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A125833, Nat.add_sub_cancel, A125833.P6082844677953712037.a, A125833.P5165128951543181077.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A125833, Nat.add_sub_cancel, A125833.P6082844677953712037.a, A125833.P5165128951543181077.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A125833

/-! ## A125833.P15257655494653902773

`3+5*a(n-1)` with `a(0)=0`
-/

namespace A125833.P15257655494653902773
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  3 + 5 * a (n - 1)

end

end A125833.P15257655494653902773

namespace A125833

/-- `3+5*a(n-1)` -/
def P15257655494653902773.Spec : Prop :=
  ∀ n, (P15257655494653902773.a n : ℤ) = A125833 n

theorem P15257655494653902773.correct : P15257655494653902773.Spec := by
  intro n
  simp only [A125833, Nat.add_sub_cancel, A125833.P15257655494653902773.a, A125833.P5165128951543181077.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A125833

/-! ## A125833.P342802854238620271

`lcm(5, a(n-1))+3` with `a(0)=0`
-/

namespace A125833.P342802854238620271
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Nat.lcm 5 (a (n - 1)) + 3

end

end A125833.P342802854238620271

namespace A125833

/-- `lcm(5, a(n-1))+3` -/
def P342802854238620271.Spec : Prop :=
  ∀ n, (P342802854238620271.a n : ℤ) = A125833 n

end A125833

/-! ## A125833.P5785800183410056673

`∑[5*a(n-1)]` with `a(0)=0, a(1)=3`
-/

namespace A125833.P5785800183410056673
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 3] fun n f1 =>
  5 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A125833.P5785800183410056673

namespace A125833

/-- `∑[5*a(n-1)]` -/
def P5785800183410056673.Spec : Prop :=
  ∀ n, (P5785800183410056673.a n : ℤ) = A125833 n

end A125833

/-! ## A125833.P17342307095958105900

`8-5*(1-a(n-1))` with `a(0)=0`
-/

namespace A125833.P17342307095958105900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  8 - 5 * (1 - a (n - 1))

end

end A125833.P17342307095958105900

namespace A125833

/-- `8-5*(1-a(n-1))` -/
def P17342307095958105900.Spec : Prop :=
  ∀ n, P17342307095958105900.a n = A125833 n

end A125833

/-! ## A125833.P15348301484884440306

`a(n-1)/(1-4/5)+3` with `a(0)=0`
-/

namespace A125833.P15348301484884440306
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) / (1 - (4 : ℚ) / 5) + 3

end

end A125833.P15348301484884440306

namespace A125833

/-- `a(n-1)/(1-4/5)+3` -/
def P15348301484884440306.Spec : Prop :=
  ∀ n, P15348301484884440306.a n = (A125833 n : ℚ)

end A125833

/-! ## A125833.P12266497887100492260

`3-a(n-1)/(4/5-1)` with `a(0)=0`
-/

namespace A125833.P12266497887100492260
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  3 - a (n - 1) / ((4 : ℚ) / 5 - 1)

end

end A125833.P12266497887100492260

namespace A125833

/-- `3-a(n-1)/(4/5-1)` -/
def P12266497887100492260.Spec : Prop :=
  ∀ n, P12266497887100492260.a n = (A125833 n : ℚ)

end A125833

/-! ## A125833.P10294636392778456456

`A083065(n)-1`
-/

namespace A125833.P10294636392778456456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083065 n - 1

end

end A125833.P10294636392778456456

namespace A125833

/-- `A083065(n)-1` -/
def P10294636392778456456.Spec : Prop :=
  ∀ n, P10294636392778456456.a n = A125833 n

end A125833

/-! ## A125833.P13702217260700446829

`A178683(3*n)`
-/

namespace A125833.P13702217260700446829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178683 (3 * n)

end

end A125833.P13702217260700446829

namespace A125833

/-- `A178683(3*n)` -/
def P13702217260700446829.Spec : Prop :=
  ∀ n, P13702217260700446829.a n = A125833 n

end A125833

/-! ## A125833.P658300666705522810

`∑[A005053(n)]-1`
-/

namespace A125833.P658300666705522810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005053 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A125833.P658300666705522810

namespace A125833

/-- `∑[A005053(n)]-1` -/
def P658300666705522810.Spec : Prop :=
  ∀ n, P658300666705522810.a n = A125833 n

end A125833

/-! ## A125833.P2791178758947450269

`3*(A047850(n)-1)`
-/

namespace A125833.P2791178758947450269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A047850 n - 1)

end

end A125833.P2791178758947450269

namespace A125833

/-- `3*(A047850(n)-1)` -/
def P2791178758947450269.Spec : Prop :=
  ∀ n, P2791178758947450269.a n = A125833 n

end A125833

/-! ## A125833.P12582810099230246635

`3/4*A024049(n)`
-/

namespace A125833.P12582810099230246635
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) / 4 * (A024049 n : ℚ)

end

end A125833.P12582810099230246635

namespace A125833

/-- `3/4*A024049(n)` -/
def P12582810099230246635.Spec : Prop :=
  ∀ n, P12582810099230246635.a n = (A125833 n : ℚ)

theorem P12582810099230246635.correct : P12582810099230246635.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A125833, Nat.add_sub_cancel, A125833.P12582810099230246635.a, A125833.P5165128951543181077.a, A024049, A024049.P18010332611898517157.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A125833, Nat.add_sub_cancel, A125833.P12582810099230246635.a, A125833.P5165128951543181077.a, A024049, A024049.P18010332611898517157.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

end A125833

/-! ## A125833.P11775573352781921047

`∑[A249512(2*n)]-1`
-/

namespace A125833.P11775573352781921047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249512 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A125833.P11775573352781921047

namespace A125833

/-- `∑[A249512(2*n)]-1` -/
def P11775573352781921047.Spec : Prop :=
  ∀ n, P11775573352781921047.a n = A125833 n

end A125833

/-! ## A125833.P12085780917280390278

`3/2*A121177(n+1)`
-/

namespace A125833.P12085780917280390278
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) / 2 * (A121177 (n + 1) : ℚ)

end

end A125833.P12085780917280390278

namespace A125833

/-- `3/2*A121177(n+1)` -/
def P12085780917280390278.Spec : Prop :=
  ∀ n, P12085780917280390278.a n = (A125833 n : ℚ)

end A125833

/-! ## A125833.P16508542194240020122

`A048330(A008574(n)-1)`
-/

namespace A125833.P16508542194240020122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048330 (A008574 n - 1).toNat

end

end A125833.P16508542194240020122

namespace A125833

/-- `A048330(A008574(n)-1)` -/
def P16508542194240020122.Spec : Prop :=
  ∀ n, P16508542194240020122.a n = A125833 n

end A125833

/-! ## A125833.P5860509063010686264

`A024049(n)-A003463(n)`
-/

namespace A125833.P5860509063010686264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024049 n - A003463 n

end

end A125833.P5860509063010686264

namespace A125833

/-- `A024049(n)-A003463(n)` -/
def P5860509063010686264.Spec : Prop :=
  ∀ n, P5860509063010686264.a n = A125833 n

end A125833

/-! ## A125833.P155176618724734826

`A000351(n)-A047850(n)`
-/

namespace A125833.P155176618724734826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000351 n - A047850 n

end

end A125833.P155176618724734826

namespace A125833

/-- `A000351(n)-A047850(n)` -/
def P155176618724734826.Spec : Prop :=
  ∀ n, P155176618724734826.a n = A125833 n

end A125833

/-!
# A125835: Numbers whose base-8 or octal representation is 22222222.......2.

The programs for A125835, the canonical program `A125835.P13197180327948184207` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A125835 has offset 1).

The definition of A125835 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A125835.P5001326399768719444

`ogf(2x/(1-9x+8x^2))`
-/

namespace A125835.P5001326399768719444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 2] [1, -9, 8] n

end

end A125835.P5001326399768719444

namespace A125835

/-- `ogf(2x/(1-9x+8x^2))` -/
def P5001326399768719444.Spec : Prop :=
  ∀ n, P5001326399768719444.a n = A125835 (n + 1)

end A125835

/-! ## A125835.P13197180327948184207

`8*a(n-1)+2` with `a(0)=0`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A125835

/-- `8*a(n-1)+2` -/
def P13197180327948184207.Spec : Prop :=
  ∀ n, (P13197180327948184207.a n : ℤ) = A125835 (n + 1)

theorem P13197180327948184207.correct : P13197180327948184207.Spec := by
  intro n
  simp only [A125835, Nat.add_sub_cancel]

end A125835

/-! ## A125835.P3442689195931969858

`2*A023001(n)`
-/

namespace A125835.P3442689195931969858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A023001 n

end

end A125835.P3442689195931969858

namespace A125835

/-- `2*A023001(n)` -/
def P3442689195931969858.Spec : Prop :=
  ∀ n, P3442689195931969858.a n = A125835 (n + 1)

end A125835

/-! ## A125835.P6877510785621936824

`2*(8^n-1)/7`
-/

namespace A125835.P6877510785621936824
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * ((8 ^ n : ℤ) - 1) : ℚ) / 7

end

end A125835.P6877510785621936824

namespace A125835

/-- `2*(8^n-1)/7` -/
def P6877510785621936824.Spec : Prop :=
  ∀ n, P6877510785621936824.a n = (A125835 (n + 1) : ℚ)

theorem P6877510785621936824.correct : P6877510785621936824.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A125835, Nat.add_sub_cancel, A125835.P6877510785621936824.a, A125835.P13197180327948184207.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A125835, Nat.add_sub_cancel, A125835.P6877510785621936824.a, A125835.P13197180327948184207.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A125835

/-! ## A125835.P15876301591514953890

`2+8*a(n-1)` with `a(0)=0`
-/

namespace A125835.P15876301591514953890
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  2 + 8 * a (n - 1)

end

end A125835.P15876301591514953890

namespace A125835

/-- `2+8*a(n-1)` -/
def P15876301591514953890.Spec : Prop :=
  ∀ n, (P15876301591514953890.a n : ℤ) = A125835 (n + 1)

theorem P15876301591514953890.correct : P15876301591514953890.Spec := by
  intro n
  simp only [A125835, Nat.add_sub_cancel, A125835.P15876301591514953890.a, A125835.P13197180327948184207.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A125835

/-! ## A125835.P15846029901005872765

`or(2, 8*a(n-1))` with `a(0)=0`
-/

namespace A125835.P15846029901005872765
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Nat.lor 2 (8 * a (n - 1))

end

end A125835.P15846029901005872765

namespace A125835

/-- `or(2, 8*a(n-1))` -/
def P15846029901005872765.Spec : Prop :=
  ∀ n, (P15846029901005872765.a n : ℤ) = A125835 (n + 1)

end A125835

/-! ## A125835.P14237621999331824887

`xor(2, 8*a(n-1))` with `a(0)=0`
-/

namespace A125835.P14237621999331824887
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Nat.xor 2 (8 * a (n - 1))

end

end A125835.P14237621999331824887

namespace A125835

/-- `xor(2, 8*a(n-1))` -/
def P14237621999331824887.Spec : Prop :=
  ∀ n, (P14237621999331824887.a n : ℤ) = A125835 (n + 1)

end A125835

/-! ## A125835.P15935579306176191359

`lcm(16, a(n-1))+2` with `a(0)=0`
-/

namespace A125835.P15935579306176191359
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Nat.lcm 16 (a (n - 1)) + 2

end

end A125835.P15935579306176191359

namespace A125835

/-- `lcm(16, a(n-1))+2` -/
def P15935579306176191359.Spec : Prop :=
  ∀ n, (P15935579306176191359.a n : ℤ) = A125835 (n + 1)

end A125835

/-! ## A125835.P16673909968858164324

`∑[8*a(n-1)]` with `a(0)=0, a(1)=2`
-/

namespace A125835.P16673909968858164324
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 2] fun n f1 =>
  8 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A125835.P16673909968858164324

namespace A125835

/-- `∑[8*a(n-1)]` -/
def P16673909968858164324.Spec : Prop :=
  ∀ n, (P16673909968858164324.a n : ℤ) = A125835 (n + 1)

end A125835

/-! ## A125835.P15925496610540948190

`10-8*(1-a(n-1))` with `a(0)=0`
-/

namespace A125835.P15925496610540948190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  10 - 8 * (1 - a (n - 1))

end

end A125835.P15925496610540948190

namespace A125835

/-- `10-8*(1-a(n-1))` -/
def P15925496610540948190.Spec : Prop :=
  ∀ n, P15925496610540948190.a n = A125835 (n + 1)

end A125835

/-! ## A125835.P3416401725951208448

`a(n-1)/(1/2)^3+2` with `a(0)=0`
-/

namespace A125835.P3416401725951208448
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) / ((1 : ℚ) / 2) ^ 3 + 2

end

end A125835.P3416401725951208448

namespace A125835

/-- `a(n-1)/(1/2)^3+2` -/
def P3416401725951208448.Spec : Prop :=
  ∀ n, P3416401725951208448.a n = (A125835 (n + 1) : ℚ)

end A125835

/-! ## A125835.P3616054714233072687

`floor(A046636(n)/2)`
-/

namespace A125835.P3616054714233072687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A046636 n : ℚ) / 2⌋

end

end A125835.P3616054714233072687

namespace A125835

/-- `floor(A046636(n)/2)` -/
def P3616054714233072687.Spec : Prop :=
  ∀ n, P3616054714233072687.a n = A125835 (n + 1)

end A125835

/-! ## A125835.P5293541584824677104

`∑[A166444(3*n)]`
-/

namespace A125835.P5293541584824677104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166444 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A125835.P5293541584824677104

namespace A125835

/-- `∑[A166444(3*n)]` -/
def P5293541584824677104.Spec : Prop :=
  ∀ n, P5293541584824677104.a n = A125835 (n + 1)

end A125835

/-! ## A125835.P15151879540582945853

`2*(A047853(n)-1)`
-/

namespace A125835.P15151879540582945853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A047853 n - 1)

end

end A125835.P15151879540582945853

namespace A125835

/-- `2*(A047853(n)-1)` -/
def P15151879540582945853.Spec : Prop :=
  ∀ n, P15151879540582945853.a n = A125835 (n + 1)

end A125835

/-! ## A125835.P15969218927577260274

`A152732(3*n+1)`
-/

namespace A125835.P15969218927577260274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152732 (3 * n + 1)

end

end A125835.P15969218927577260274

namespace A125835

/-- `A152732(3*n+1)` -/
def P15969218927577260274.Spec : Prop :=
  ∀ n, P15969218927577260274.a n = A125835 (n + 1)

end A125835

/-! ## A125835.P16542860682862673763

`A155803(3*n+1)`
-/

namespace A125835.P16542860682862673763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155803 (3 * n + 1)

end

end A125835.P16542860682862673763

namespace A125835

/-- `A155803(3*n+1)` -/
def P16542860682862673763.Spec : Prop :=
  ∀ n, P16542860682862673763.a n = A125835 (n + 1)

end A125835

/-! ## A125835.P15026351251053128423

`A078010(3*n)-1`
-/

namespace A125835.P15026351251053128423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078010 (3 * n) - 1

end

end A125835.P15026351251053128423

namespace A125835

/-- `A078010(3*n)-1` -/
def P15026351251053128423.Spec : Prop :=
  ∀ n, P15026351251053128423.a n = A125835 (n + 1)

end A125835

/-! ## A125835.P16671859150475890540

`2*A299913(2*n)`
-/

namespace A125835.P16671859150475890540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A299913 (2 * n)

end

end A125835.P16671859150475890540

namespace A125835

/-- `2*A299913(2*n)` -/
def P16671859150475890540.Spec : Prop :=
  ∀ n, P16671859150475890540.a n = A125835 (n + 1)

end A125835

/-! ## A125835.P15072683865910618259

`2*A155803(3*n)`
-/

namespace A125835.P15072683865910618259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A155803 (3 * n)

end

end A125835.P15072683865910618259

namespace A125835

/-- `2*A155803(3*n)` -/
def P15072683865910618259.Spec : Prop :=
  ∀ n, P15072683865910618259.a n = A125835 (n + 1)

end A125835

/-! ## A125835.P17837443692369914206

`2/3*A083713(n)`
-/

namespace A125835.P17837443692369914206
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) / 3 * (A083713 n : ℚ)

end

end A125835.P17837443692369914206

namespace A125835

/-- `2/3*A083713(n)` -/
def P17837443692369914206.Spec : Prop :=
  ∀ n, P17837443692369914206.a n = (A125835 (n + 1) : ℚ)

end A125835

/-!
# A125836: Numbers whose base 8 or octal representation is 555555555......5.

The programs for A125836, the canonical program `A125836.P7188134516282615299` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A125836 has offset 1).

The definition of A125836 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A125836.P1851369604627843323

`ogf(5x/(1-9x+8x^2))`
-/

namespace A125836.P1851369604627843323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 5] [1, -9, 8] n

end

end A125836.P1851369604627843323

namespace A125836

/-- `ogf(5x/(1-9x+8x^2))` -/
def P1851369604627843323.Spec : Prop :=
  ∀ n, P1851369604627843323.a n = A125836 (n + 1)

end A125836

/-! ## A125836.P7188134516282615299

`8*a(n-1)+5` with `a(0)=0`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A125836

/-- `8*a(n-1)+5` -/
def P7188134516282615299.Spec : Prop :=
  ∀ n, (P7188134516282615299.a n : ℤ) = A125836 (n + 1)

theorem P7188134516282615299.correct : P7188134516282615299.Spec := by
  intro n
  simp only [A125836, Nat.add_sub_cancel]

end A125836

/-! ## A125836.P9005452413992213441

`5*A023001(n)`
-/

namespace A125836.P9005452413992213441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A023001 n

end

end A125836.P9005452413992213441

namespace A125836

/-- `5*A023001(n)` -/
def P9005452413992213441.Spec : Prop :=
  ∀ n, P9005452413992213441.a n = A125836 (n + 1)

end A125836

/-! ## A125836.P4047114227641770927

`5*(8^n-1)/7`
-/

namespace A125836.P4047114227641770927
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 * ((8 ^ n : ℤ) - 1) : ℚ) / 7

end

end A125836.P4047114227641770927

namespace A125836

/-- `5*(8^n-1)/7` -/
def P4047114227641770927.Spec : Prop :=
  ∀ n, P4047114227641770927.a n = (A125836 (n + 1) : ℚ)

theorem P4047114227641770927.correct : P4047114227641770927.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A125836, Nat.add_sub_cancel, A125836.P4047114227641770927.a, A125836.P7188134516282615299.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A125836, Nat.add_sub_cancel, A125836.P4047114227641770927.a, A125836.P7188134516282615299.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A125836

/-! ## A125836.P15996843181458355977

`5+8*a(n-1)` with `a(0)=0`
-/

namespace A125836.P15996843181458355977
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  5 + 8 * a (n - 1)

end

end A125836.P15996843181458355977

namespace A125836

/-- `5+8*a(n-1)` -/
def P15996843181458355977.Spec : Prop :=
  ∀ n, (P15996843181458355977.a n : ℤ) = A125836 (n + 1)

theorem P15996843181458355977.correct : P15996843181458355977.Spec := by
  intro n
  simp only [A125836, Nat.add_sub_cancel, A125836.P15996843181458355977.a, A125836.P7188134516282615299.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A125836

/-! ## A125836.P2879310819707947785

`lcm(8, a(n-1))+5` with `a(0)=0`
-/

namespace A125836.P2879310819707947785
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Nat.lcm 8 (a (n - 1)) + 5

end

end A125836.P2879310819707947785

namespace A125836

/-- `lcm(8, a(n-1))+5` -/
def P2879310819707947785.Spec : Prop :=
  ∀ n, (P2879310819707947785.a n : ℤ) = A125836 (n + 1)

end A125836

/-! ## A125836.P9295741441993943048

`or(5, 8*a(n-1))` with `a(0)=0`
-/

namespace A125836.P9295741441993943048
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Nat.lor 5 (8 * a (n - 1))

end

end A125836.P9295741441993943048

namespace A125836

/-- `or(5, 8*a(n-1))` -/
def P9295741441993943048.Spec : Prop :=
  ∀ n, (P9295741441993943048.a n : ℤ) = A125836 (n + 1)

end A125836

/-! ## A125836.P7155793884386184986

`xor(5, 8*a(n-1))` with `a(0)=0`
-/

namespace A125836.P7155793884386184986
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Nat.xor 5 (8 * a (n - 1))

end

end A125836.P7155793884386184986

namespace A125836

/-- `xor(5, 8*a(n-1))` -/
def P7155793884386184986.Spec : Prop :=
  ∀ n, (P7155793884386184986.a n : ℤ) = A125836 (n + 1)

end A125836

/-! ## A125836.P752002142102050780

`∑[8*a(n-1)]` with `a(0)=0, a(1)=5`
-/

namespace A125836.P752002142102050780
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 5] fun n f1 =>
  8 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A125836.P752002142102050780

namespace A125836

/-- `∑[8*a(n-1)]` -/
def P752002142102050780.Spec : Prop :=
  ∀ n, (P752002142102050780.a n : ℤ) = A125836 (n + 1)

end A125836

/-! ## A125836.P494088694476149871

`a(n-1)/(1/2)^3+5` with `a(0)=0`
-/

namespace A125836.P494088694476149871
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) / ((1 : ℚ) / 2) ^ 3 + 5

end

end A125836.P494088694476149871

namespace A125836

/-- `a(n-1)/(1/2)^3+5` -/
def P494088694476149871.Spec : Prop :=
  ∀ n, P494088694476149871.a n = (A125836 (n + 1) : ℚ)

end A125836

/-! ## A125836.P10644855872610371629

`∑[a(n-1)/(1/2)^3]` with `a(0)=0, a(1)=5`
-/

namespace A125836.P10644855872610371629
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [0, 5] fun n f1 =>
  f1 (n - 1) / ((1 : ℚ) / 2) ^ 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A125836.P10644855872610371629

namespace A125836

/-- `∑[a(n-1)/(1/2)^3]` -/
def P10644855872610371629.Spec : Prop :=
  ∀ n, P10644855872610371629.a n = (A125836 (n + 1) : ℚ)

end A125836

/-! ## A125836.P8674132830519807026

`5-(a(n-1)-9*a(n-1))` with `a(0)=0`
-/

namespace A125836.P8674132830519807026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  5 - (a (n - 1) - 9 * a (n - 1))

end

end A125836.P8674132830519807026

namespace A125836

/-- `5-(a(n-1)-9*a(n-1))` -/
def P8674132830519807026.Spec : Prop :=
  ∀ n, P8674132830519807026.a n = A125836 (n + 1)

end A125836

/-! ## A125836.P12836281846757299522

`∑[A067412(n)]-1`
-/

namespace A125836.P12836281846757299522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067412 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A125836.P12836281846757299522

namespace A125836

/-- `∑[A067412(n)]-1` -/
def P12836281846757299522.Spec : Prop :=
  ∀ n, P12836281846757299522.a n = A125836 (n + 1)

end A125836

/-! ## A125836.P16903463470355064878

`5*(A047853(n)-1)`
-/

namespace A125836.P16903463470355064878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * (A047853 n - 1)

end

end A125836.P16903463470355064878

namespace A125836

/-- `5*(A047853(n)-1)` -/
def P16903463470355064878.Spec : Prop :=
  ∀ n, P16903463470355064878.a n = A125836 (n + 1)

end A125836

/-! ## A125836.P4577700347021685040

`A341905(3*n)-3`
-/

namespace A125836.P4577700347021685040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341905 (3 * n) - 3

end

end A125836.P4577700347021685040

namespace A125836

/-- `A341905(3*n)-3` -/
def P4577700347021685040.Spec : Prop :=
  ∀ n, P4577700347021685040.a n = A125836 (n + 1)

end A125836

/-! ## A125836.P1712048146790782870

`5*A299913(2*n)`
-/

namespace A125836.P1712048146790782870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A299913 (2 * n)

end

end A125836.P1712048146790782870

namespace A125836

/-- `5*A299913(2*n)` -/
def P1712048146790782870.Spec : Prop :=
  ∀ n, P1712048146790782870.a n = A125836 (n + 1)

end A125836

/-! ## A125836.P10708564230302160729

`5*A155803(3*n)`
-/

namespace A125836.P10708564230302160729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A155803 (3 * n)

end

end A125836.P10708564230302160729

namespace A125836

/-- `5*A155803(3*n)` -/
def P10708564230302160729.Spec : Prop :=
  ∀ n, P10708564230302160729.a n = A125836 (n + 1)

end A125836

/-! ## A125836.P2601231088439829417

`5/3*A083713(n)`
-/

namespace A125836.P2601231088439829417
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 : ℚ) / 3 * (A083713 n : ℚ)

end

end A125836.P2601231088439829417

namespace A125836

/-- `5/3*A083713(n)` -/
def P2601231088439829417.Spec : Prop :=
  ∀ n, P2601231088439829417.a n = (A125836 (n + 1) : ℚ)

end A125836

/-! ## A125836.P1965379738437918540

`5/4*A108019(n)`
-/

namespace A125836.P1965379738437918540
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 : ℚ) / 4 * (A108019 n : ℚ)

end

end A125836.P1965379738437918540

namespace A125836

/-- `5/4*A108019(n)` -/
def P1965379738437918540.Spec : Prop :=
  ∀ n, P1965379738437918540.a n = (A125836 (n + 1) : ℚ)

end A125836

/-! ## A125836.P7326101978938788574

`5/2*A125835(n+1)`
-/

namespace A125836.P7326101978938788574
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 : ℚ) / 2 * (A125835 (n + 1) : ℚ)

end

end A125836.P7326101978938788574

namespace A125836

/-- `5/2*A125835(n+1)` -/
def P7326101978938788574.Spec : Prop :=
  ∀ n, P7326101978938788574.a n = (A125836 (n + 1) : ℚ)

end A125836

/-!
# A125837: a(n) = 6*(8^n - 1)/7.

The programs for A125837, the canonical program `A125837.P9059014015306730441` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A125837 has offset 0).

The definition of A125837 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `6*(8^n-1)/7` (program `A125837.P17155943701683512007`, by `A125837.P17155943701683512007.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A125837.P2962762657452631598

`ogf(6x/(1-9x+8x^2))`
-/

namespace A125837.P2962762657452631598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 6] [1, -9, 8] n

end

end A125837.P2962762657452631598

namespace A125837

/-- `ogf(6x/(1-9x+8x^2))` -/
def P2962762657452631598.Spec : Prop :=
  ∀ n, P2962762657452631598.a n = A125837 n

end A125837

/-! ## A125837.P9059014015306730441

`8*a(n-1)+6` with `a(0)=0`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A125837

/-- `8*a(n-1)+6` -/
def P9059014015306730441.Spec : Prop :=
  ∀ n, (P9059014015306730441.a n : ℤ) = A125837 n

theorem P9059014015306730441.correct : P9059014015306730441.Spec := by
  intro n
  simp only [A125837]

end A125837

/-! ## A125837.P887047026224487343

`A083068(n)-1`
-/

namespace A125837.P887047026224487343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083068 n - 1

end

end A125837.P887047026224487343

namespace A125837

/-- `A083068(n)-1` -/
def P887047026224487343.Spec : Prop :=
  ∀ n, P887047026224487343.a n = A125837 n

end A125837

/-! ## A125837.P8029225201129926825

`6*A023001(n)`
-/

namespace A125837.P8029225201129926825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A023001 n

end

end A125837.P8029225201129926825

namespace A125837

/-- `6*A023001(n)` -/
def P8029225201129926825.Spec : Prop :=
  ∀ n, P8029225201129926825.a n = A125837 n

end A125837

/-! ## A125837.P17155943701683512007

`6*(8^n-1)/7`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A125837.P17155943701683512007
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (6 * ((8 ^ n : ℤ) - 1) : ℚ) / 7

end

end A125837.P17155943701683512007

namespace A125837

/-- `6*(8^n-1)/7` -/
def P17155943701683512007.Spec : Prop :=
  ∀ n, P17155943701683512007.a n = (A125837 n : ℚ)

theorem P17155943701683512007.correct : P17155943701683512007.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A125837, Nat.add_sub_cancel, A125837.P17155943701683512007.a, A125837.P9059014015306730441.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A125837, Nat.add_sub_cancel, A125837.P17155943701683512007.a, A125837.P9059014015306730441.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A125837

/-! ## A125837.P8024124460568592160

`or(6, 8*a(n-1))` with `a(0)=0`
-/

namespace A125837.P8024124460568592160
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Nat.lor 6 (8 * a (n - 1))

end

end A125837.P8024124460568592160

namespace A125837

/-- `or(6, 8*a(n-1))` -/
def P8024124460568592160.Spec : Prop :=
  ∀ n, (P8024124460568592160.a n : ℤ) = A125837 n

end A125837

/-! ## A125837.P11177041524607790187

`xor(6, 8*a(n-1))` with `a(0)=0`
-/

namespace A125837.P11177041524607790187
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Nat.xor 6 (8 * a (n - 1))

end

end A125837.P11177041524607790187

namespace A125837

/-- `xor(6, 8*a(n-1))` -/
def P11177041524607790187.Spec : Prop :=
  ∀ n, (P11177041524607790187.a n : ℤ) = A125837 n

end A125837

/-! ## A125837.P7696721678901100834

`∑[8*a(n-1)]` with `a(0)=0, a(1)=6`
-/

namespace A125837.P7696721678901100834
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 6] fun n f1 =>
  8 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A125837.P7696721678901100834

namespace A125837

/-- `∑[8*a(n-1)]` -/
def P7696721678901100834.Spec : Prop :=
  ∀ n, (P7696721678901100834.a n : ℤ) = A125837 n

end A125837

/-! ## A125837.P5214762277046636565

`6-(a(n-1)-9*a(n-1))` with `a(0)=0`
-/

namespace A125837.P5214762277046636565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  6 - (a (n - 1) - 9 * a (n - 1))

end

end A125837.P5214762277046636565

namespace A125837

/-- `6-(a(n-1)-9*a(n-1))` -/
def P5214762277046636565.Spec : Prop :=
  ∀ n, P5214762277046636565.a n = A125837 n

end A125837

/-! ## A125837.P292064600451176384

`2*A083713(n)`
-/

namespace A125837.P292064600451176384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A083713 n

end

end A125837.P292064600451176384

namespace A125837

/-- `2*A083713(n)` -/
def P292064600451176384.Spec : Prop :=
  ∀ n, P292064600451176384.a n = A125837 n

end A125837

/-! ## A125837.P7301385049329798109

`A033129(3*n)`
-/

namespace A125837.P7301385049329798109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033129 (3 * n)

end

end A125837.P7301385049329798109

namespace A125837

/-- `A033129(3*n)` -/
def P7301385049329798109.Spec : Prop :=
  ∀ n, P7301385049329798109.a n = A125837 n

end A125837

/-! ## A125837.P15255323995084280469

`A273050(Δ[n²])`
-/

namespace A125837.P15255323995084280469
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273050 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A125837.P15255323995084280469

namespace A125837

/-- `A273050(Δ[n²])` -/
def P15255323995084280469.Spec : Prop :=
  ∀ n, P15255323995084280469.a n = A125837 n

end A125837

/-! ## A125837.P6315988458540809143

`∑[A083233(n)]-1`
-/

namespace A125837.P6315988458540809143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083233 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A125837.P6315988458540809143

namespace A125837

/-- `∑[A083233(n)]-1` -/
def P6315988458540809143.Spec : Prop :=
  ∀ n, P6315988458540809143.a n = A125837 n

end A125837

/-! ## A125837.P13195861749487461886

`3*A125835(n+1)`
-/

namespace A125837.P13195861749487461886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A125835 (n + 1)

end

end A125837.P13195861749487461886

namespace A125837

/-- `3*A125835(n+1)` -/
def P13195861749487461886.Spec : Prop :=
  ∀ n, P13195861749487461886.a n = A125837 n

end A125837

/-! ## A125837.P8181414379534853720

`A057744(3*n)-1`
-/

namespace A125837.P8181414379534853720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057744 (3 * n) - 1

end

end A125837.P8181414379534853720

namespace A125837

/-- `A057744(3*n)-1` -/
def P8181414379534853720.Spec : Prop :=
  ∀ n, P8181414379534853720.a n = A125837 n

end A125837

/-! ## A125837.P3464633437146767694

`2*A294627(3*n)`
-/

namespace A125837.P3464633437146767694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A294627 (3 * n)

end

end A125837.P3464633437146767694

namespace A125837

/-- `2*A294627(3*n)` -/
def P3464633437146767694.Spec : Prop :=
  ∀ n, P3464633437146767694.a n = A125837 n

end A125837

/-! ## A125837.P1514905303191316009

`3/2*A108019(n)`
-/

namespace A125837.P1514905303191316009
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) / 2 * (A108019 n : ℚ)

end

end A125837.P1514905303191316009

namespace A125837

/-- `3/2*A108019(n)` -/
def P1514905303191316009.Spec : Prop :=
  ∀ n, P1514905303191316009.a n = (A125837 n : ℚ)

end A125837

/-! ## A125837.P7744641604782243704

`6*A299913(2*n)`
-/

namespace A125837.P7744641604782243704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A299913 (2 * n)

end

end A125837.P7744641604782243704

namespace A125837

/-- `6*A299913(2*n)` -/
def P7744641604782243704.Spec : Prop :=
  ∀ n, P7744641604782243704.a n = A125837 n

end A125837

/-! ## A125837.P5776060051360630950

`A299913(Δ[n²])-1`
-/

namespace A125837.P5776060051360630950
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299913 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - 1

end

end A125837.P5776060051360630950

namespace A125837

/-- `A299913(Δ[n²])-1` -/
def P5776060051360630950.Spec : Prop :=
  ∀ n, P5776060051360630950.a n = A125837 n

end A125837

/-! ## A125837.P16003773707163102375

`record[∑[A094014(n)]-1]`
-/

namespace A125837.P16003773707163102375
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094014 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A125837.P16003773707163102375

namespace A125837

/-- `record[∑[A094014(n)]-1]` -/
def P16003773707163102375.Spec : Prop :=
  ∀ n, P16003773707163102375.a n = A125837 n

end A125837

/-!
# A125838: a(n) is the smallest number m such that k*m - 1 for k=2,3,...,n is prime.

The programs for A125838, there is no canonical definition to state claims against.
-/

/-! ## A125838.P615223431435492991

`p?[A026268(n)]!`
-/

namespace A125838.P615223431435492991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026268 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A125838.P615223431435492991

/-! ## A125838.P5239315717446460904

`lcm(n!, A037088(n!))`
-/

namespace A125838.P5239315717446460904
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (Nat.factorial n : ℤ) (A037088 (Nat.factorial n))

end

end A125838.P5239315717446460904

/-!
# A125839: a(n) is the smallest number m such that k*m - 1 is prime for all k=3,4,...,n.

The programs for A125839, there is no canonical definition to state claims against.
-/

/-! ## A125839.P11542269380483392197

`A325403(10*∏[abs(1-2*n)])`
-/

namespace A125839.P11542269380483392197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (2 * n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325403 (10 * (∏ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A125839.P11542269380483392197

/-! ## A125839.P17350568438277671871

`A194712(A141344(n))`
-/

namespace A125839.P17350568438277671871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194712 (A141344 n).toNat

end

end A125839.P17350568438277671871

/-!
# A125842: a(1)=1. a(n) = the number of terms from among the first floor(n/2) terms of the sequence which are coprime to n.

The programs for A125842, there is no canonical definition to state claims against.
-/

/-! ## A125842.P6958470065727638550

`A060130(∑[A340663(3^floor(n/4))])`
-/

namespace A125842.P6958470065727638550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340663 (SequenceMachineLib.roundAway ((3 : ℚ) ^ (⌊(n : ℚ) / 4⌋ : ℤ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060130 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A125842.P6958470065727638550

/-! ## A125842.P3866514228768470312

`A160385(A225821(n+1)+A050168(n))`
-/

namespace A125842.P3866514228768470312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160385 (A225821 (n + 1) + A050168 n).toNat

end

end A125842.P3866514228768470312

/-! ## A125842.P9788291885874431413

`A027434(A125843(n+1))-A008835(A003612(n+1))`
-/

namespace A125842.P9788291885874431413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027434 (A125843 (n + 1)).toNat - A008835 (A003612 (n + 1)).toNat

end

end A125842.P9788291885874431413

/-!
# A125846: Numerator of volume of best symplectic packing of n balls in 4-dimensional ball.

The programs for A125846, there is no canonical definition to state claims against.
-/

/-! ## A125846.P17351275121473200283

`lcm(5, A045496(n+1))/5`
-/

namespace A125846.P17351275121473200283
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 5 (A045496 (n + 1)) : ℚ) / 5

end

end A125846.P17351275121473200283

/-!
# A125847: Denominator of volume of best symplectic packing of n balls in 4-dimensional ball.

The programs for A125847, there is no canonical definition to state claims against.
-/

/-! ## A125847.P17365210013722100470

`gcd(A022068(n), A045497(n+1))`
-/

namespace A125847.P17365210013722100470
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A022068 n) (A045497 (n + 1))

end

end A125847.P17365210013722100470

/-!
# A125848: Records in A063983.

The programs for A125848, there is no canonical definition to state claims against.
-/

/-! ## A125848.P13231863191387774477

`record[A063983(n)]`
-/

namespace A125848.P13231863191387774477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063983 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A125848.P13231863191387774477

/-! ## A125848.P4201003524547651725

`ceil(acot(n))*A125019(n+1)`
-/

namespace A125848.P4201003524547651725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈SequenceMachineLib.acot (n : ℝ)⌉ * A125019 (n + 1)

end

end A125848.P4201003524547651725

/-! ## A125848.P10730905202198000104

`A066182(A125019(n+1))+1`
-/

namespace A125848.P10730905202198000104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066182 (A125019 (n + 1)).toNat + 1

end

end A125848.P10730905202198000104

/-! ## A125848.P11589955861889280132

`A125019(n+1)+A000038(n)`
-/

namespace A125848.P11589955861889280132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125019 (n + 1) + A000038 n

end

end A125848.P11589955861889280132

/-! ## A125848.P4831948098899402104

`A054977(n)*A125019(n+1)`
-/

namespace A125848.P4831948098899402104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n * A125019 (n + 1)

end

end A125848.P4831948098899402104

/-!
# A125849: a(n) = Sum_{m=1..n-1} floor(m(n-2)/2)^2.

The programs for A125849, the canonical program `A125849.P16706960094765970295` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A125849 has offset 0).

The definition of A125849 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A125849.P16706960094765970295

`ogf((x^3+12x^4+31x^5+62x^6+35x^7+18x^8+x^9)/(1-2x-3x^2+8x^3+2x^4-12x^5+2x^6+8x^7-3x^8-2x^9+x^10))`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A125849

/-- `ogf((x^3+12x^4+31x^5+62x^6+35x^7+18x^8+x^9)/(1-2x-3x^2+8x^3+2x^4-12x^5+2x^6+8x^7-3x^8-2x^9+x^10))` -/
def P16706960094765970295.Spec : Prop :=
  ∀ n, P16706960094765970295.a n = A125849 n

theorem P16706960094765970295.correct : P16706960094765970295.Spec := by
  intro n
  simp only [A125849]

end A125849

/-! ## A125849.P17528952571037032430

`A065719(2*A211012(n))`
-/

namespace A125849.P17528952571037032430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065719 (2 * A211012 n).toNat

end

end A125849.P17528952571037032430

namespace A125849

/-- `A065719(2*A211012(n))` -/
def P17528952571037032430.Spec : Prop :=
  ∀ n, P17528952571037032430.a n = A125849 n

end A125849

/-! ## A125849.P16829119534116303847

`A181315(n)-A067695(A171802(n))`
-/

namespace A125849.P16829119534116303847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181315 n - A067695 (A171802 n).toNat

end

end A125849.P16829119534116303847

namespace A125849

/-- `A181315(n)-A067695(A171802(n))` -/
def P16829119534116303847.Spec : Prop :=
  ∀ n, P16829119534116303847.a n = A125849 n

end A125849

/-!
# A125851: Number of points in a hexagonal lattice covered by a circular disk of diameter n if the center of the circle is chosen such that the disk covers the minimum possible number of lattice points.

The programs for A125851, there is no canonical definition to state claims against.
-/

/-! ## A125851.P17644825259506735393

`∑[∑[A333381(A166012(n))]-(-1)^n]`
-/

namespace A125851.P17644825259506735393
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333381 (A166012 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - (-1) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A125851.P17644825259506735393

/-! ## A125851.P6164085319281622731

`A263511(n)-A010815(A085540(n))`
-/

namespace A125851.P6164085319281622731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263511 n - A010815 (A085540 n).toNat

end

end A125851.P6164085319281622731

/-! ## A125851.P18374846405085796250

`n²+A000035(n)+A001221(A001700(n))`
-/

namespace A125851.P18374846405085796250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) + (A000035 n + A001221 (A001700 n).toNat)

end

end A125851.P18374846405085796250

/-! ## A125851.P2697743984736047823

`A140361(A100449(n))+n²`
-/

namespace A125851.P2697743984736047823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140361 (A100449 n).toNat + (n ^ 2 : ℤ)

end

end A125851.P2697743984736047823

/-! ## A125851.P9840772071036534157

`A076869(A250120(n))+n²`
-/

namespace A125851.P9840772071036534157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076869 (A250120 n).toNat + (n ^ 2 : ℤ)

end

end A125851.P9840772071036534157

/-!
# A125853: Squared radii of circles centered at a grid point in a square lattice hitting exactly 4 points. Indices k such that A004018(k)=4.

The programs for A125853, the canonical program `A125853.P1639205493423689427` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A125853 has offset 1).

The definition of A125853 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 501 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A125853.P13030310704036036878

`∪[A000548(n+1), A050804(n+1)]`
-/

namespace A125853.P13030310704036036878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000548 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050804 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A125853.P13030310704036036878

namespace A125853

/-- `∪[A000548(n+1), A050804(n+1)]` -/
def P13030310704036036878.Spec : Prop :=
  ∀ n, (P13030310704036036878.a n : ℤ) = A125853 (n + 1)

end A125853

/-! ## A125853.P1639205493423689427

`∪[A000548(n+1), A081324(n+2)]`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A125853

/-- `∪[A000548(n+1), A081324(n+2)]` -/
def P1639205493423689427.Spec : Prop :=
  ∀ n, (P1639205493423689427.a n : ℤ) = A125853 (n + 1)

theorem P1639205493423689427.correct : P1639205493423689427.Spec := by
  intro n
  simp only [A125853, Nat.add_sub_cancel]

end A125853

/-! ## A125853.P10248844242914805591

`∪[2*A000548(n+1), A004144(n+1)²]`
-/

namespace A125853.P10248844242914805591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000548 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004144 (n + 1) ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A125853.P10248844242914805591

namespace A125853

/-- `∪[2*A000548(n+1), A004144(n+1)²]` -/
def P10248844242914805591.Spec : Prop :=
  ∀ n, (P10248844242914805591.a n : ℤ) = A125853 (n + 1)

end A125853

/-! ## A125853.P11789144673571286732

`∪[record[(3-A286361(n+1))*(n+1)²], A000548(n+1)]`
-/

namespace A125853.P11789144673571286732
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 - A286361 (n + 1)) * ((n + 1) ^ 2 : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000548 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

end

end A125853.P11789144673571286732

namespace A125853

/-- `∪[record[(3-A286361(n+1))*(n+1)²], A000548(n+1)]` -/
def P11789144673571286732.Spec : Prop :=
  ∀ n, (P11789144673571286732.a n : ℤ) = A125853 (n + 1)

end A125853

/-! ## A125853.P14816890562590735141

`∪[A000548(n+1), A001105(A004144(n+1))]`
-/

namespace A125853.P14816890562590735141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000548 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001105 (A004144 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A125853.P14816890562590735141

namespace A125853

/-- `∪[A000548(n+1), A001105(A004144(n+1))]` -/
def P14816890562590735141.Spec : Prop :=
  ∀ n, (P14816890562590735141.a n : ℤ) = A125853 (n + 1)

end A125853

/-! ## A125853.P2973249580036263379

`record[(n+1)*A354199(n+1)]`
-/

namespace A125853.P2973249580036263379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A354199 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A125853.P2973249580036263379

namespace A125853

/-- `record[(n+1)*A354199(n+1)]` -/
def P2973249580036263379.Spec : Prop :=
  ∀ n, P2973249580036263379.a n = A125853 (n + 1)

end A125853

/-! ## A125853.P14752881123784043141

`filter[A028982(n+1), A354199(#)]`
-/

namespace A125853.P14752881123784043141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028982 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354199 (f1 j).toNat = 1) n)

end

end A125853.P14752881123784043141

namespace A125853

/-- `filter[A028982(n+1), A354199(#)]` -/
def P14752881123784043141.Spec : Prop :=
  ∀ n, P14752881123784043141.a n = A125853 (n + 1)

end A125853

/-! ## A125853.P14375754682785897075

`filter[A083854(n+1), A354199(#)]`
-/

namespace A125853.P14375754682785897075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083854 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354199 (f1 j).toNat = 1) n)

end

end A125853.P14375754682785897075

namespace A125853

/-- `filter[A083854(n+1), A354199(#)]` -/
def P14375754682785897075.Spec : Prop :=
  ∀ n, P14375754682785897075.a n = A125853 (n + 1)

end A125853

/-! ## A125853.P11101987700715081768

`filter[A335851(n+1), A354199(#)]`
-/

namespace A125853.P11101987700715081768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335851 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354199 (f1 j).toNat = 1) n)

end

end A125853.P11101987700715081768

namespace A125853

/-- `filter[A335851(n+1), A354199(#)]` -/
def P11101987700715081768.Spec : Prop :=
  ∀ n, P11101987700715081768.a n = A125853 (n + 1)

end A125853

/-! ## A125853.P9327300316816323568

`filter[A372894(n+1), A354199(#)]`
-/

namespace A125853.P9327300316816323568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372894 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354199 (f1 j).toNat = 1) n)

end

end A125853.P9327300316816323568

namespace A125853

/-- `filter[A372894(n+1), A354199(#)]` -/
def P9327300316816323568.Spec : Prop :=
  ∀ n, P9327300316816323568.a n = A125853 (n + 1)

end A125853

/-! ## A125853.P5079524033679693753

`filter[A376198(n+1), A354199(#)]`
-/

namespace A125853.P5079524033679693753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376198 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354199 (f1 j).toNat = 1) n)

end

end A125853.P5079524033679693753

namespace A125853

/-- `filter[A376198(n+1), A354199(#)]` -/
def P5079524033679693753.Spec : Prop :=
  ∀ n, P5079524033679693753.a n = A125853 (n + 1)

end A125853

/-! ## A125853.P8514483841465756679

`filter[A155562(n+2), A354199(#)]`
-/

namespace A125853.P8514483841465756679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155562 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354199 (f1 j).toNat = 1) n)

end

end A125853.P8514483841465756679

namespace A125853

/-- `filter[A155562(n+2), A354199(#)]` -/
def P8514483841465756679.Spec : Prop :=
  ∀ n, P8514483841465756679.a n = A125853 (n + 1)

end A125853

/-! ## A125853.P14738480618986247931

`filter[A305810(n+1), A354199(#)]`
-/

namespace A125853.P14738480618986247931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305810 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354199 (f1 j).toNat = 1) n)

end

end A125853.P14738480618986247931

namespace A125853

/-- `filter[A305810(n+1), A354199(#)]` -/
def P14738480618986247931.Spec : Prop :=
  ∀ n, P14738480618986247931.a n = A125853 (n + 1)

end A125853

/-! ## A125853.P11366984111856659410

`filter[A305904(n+1), A354199(#)]`
-/

namespace A125853.P11366984111856659410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305904 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354199 (f1 j).toNat = 1) n)

end

end A125853.P11366984111856659410

namespace A125853

/-- `filter[A305904(n+1), A354199(#)]` -/
def P11366984111856659410.Spec : Prop :=
  ∀ n, P11366984111856659410.a n = A125853 (n + 1)

end A125853

/-! ## A125853.P4372322712086297897

`filter[A392696(n+1), A354199(#)]`
-/

namespace A125853.P4372322712086297897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392696 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354199 (f1 j).toNat = 1) n)

end

end A125853.P4372322712086297897

namespace A125853

/-- `filter[A392696(n+1), A354199(#)]` -/
def P4372322712086297897.Spec : Prop :=
  ∀ n, P4372322712086297897.a n = A125853 (n + 1)

end A125853

/-! ## A125853.P12985494289319200507

`filter[A305903(n+1), A354199(#)]`
-/

namespace A125853.P12985494289319200507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305903 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354199 (f1 j).toNat = 1) n)

end

end A125853.P12985494289319200507

namespace A125853

/-- `filter[A305903(n+1), A354199(#)]` -/
def P12985494289319200507.Spec : Prop :=
  ∀ n, P12985494289319200507.a n = A125853 (n + 1)

end A125853

/-! ## A125853.P7787462158057765898

`filter[A305801(n+1), A354199(#)]`
-/

namespace A125853.P7787462158057765898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305801 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354199 (f1 j).toNat = 1) n)

end

end A125853.P7787462158057765898

namespace A125853

/-- `filter[A305801(n+1), A354199(#)]` -/
def P7787462158057765898.Spec : Prop :=
  ∀ n, P7787462158057765898.a n = A125853 (n + 1)

end A125853

/-! ## A125853.P10934597085553316989

`filter[A305890(n+1), A354199(#)]`
-/

namespace A125853.P10934597085553316989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305890 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354199 (f1 j).toNat = 1) n)

end

end A125853.P10934597085553316989

namespace A125853

/-- `filter[A305890(n+1), A354199(#)]` -/
def P10934597085553316989.Spec : Prop :=
  ∀ n, P10934597085553316989.a n = A125853 (n + 1)

end A125853

/-! ## A125853.P10690053588615167436

`filter[A305900(n+1), A354199(#)]`
-/

namespace A125853.P10690053588615167436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305900 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354199 (f1 j).toNat = 1) n)

end

end A125853.P10690053588615167436

namespace A125853

/-- `filter[A305900(n+1), A354199(#)]` -/
def P10690053588615167436.Spec : Prop :=
  ∀ n, P10690053588615167436.a n = A125853 (n + 1)

end A125853

/-!
# A125854: Primes p with the property that p divides the Wolstenholme number A001008((p+1)/2).

The programs for A125854, there is no canonical definition to state claims against.
-/

/-! ## A125854.P1212163269573215101

`A284649(∑[ceil(n/2)]+2)`
-/

namespace A125854.P1212163269573215101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284649 (∑ j ∈ Finset.range (n + 1), f1 j + 2).toNat

end

end A125854.P1212163269573215101

/-!
# A125855: Numbers k such that k+1, k+3, k+7 and k+9 are all primes.

The programs for A125855, there is no canonical definition to state claims against.
-/

/-! ## A125855.P10375907218320088244

`A007530(n+1)-1`
-/

namespace A125855.P10375907218320088244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007530 (n + 1) - 1

end

end A125855.P10375907218320088244

/-! ## A125855.P17151879453440018305

`A136720(1+n)-3`
-/

namespace A125855.P17151879453440018305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136720 (1 + n) - 3

end

end A125855.P17151879453440018305

/-! ## A125855.P16629915375356155383

`A173037(n+1)-5`
-/

namespace A125855.P16629915375356155383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173037 (n + 1) - 5

end

end A125855.P16629915375356155383

/-! ## A125855.P11870680751629439047

`A136721(n+1)-7`
-/

namespace A125855.P11870680751629439047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136721 (n + 1) - 7

end

end A125855.P11870680751629439047

/-! ## A125855.P4741930548512782932

`A090258(n+1)-9`
-/

namespace A125855.P4741930548512782932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090258 (n + 1) - 9

end

end A125855.P4741930548512782932

/-! ## A125855.P11803923731144100770

`A064974(n+1)-10`
-/

namespace A125855.P11803923731144100770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064974 (n + 1) - 10

end

end A125855.P11803923731144100770

/-! ## A125855.P10540613319409911018

`2*(A222960(n+1)+1)`
-/

namespace A125855.P10540613319409911018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A222960 (n + 1) + 1)

end

end A125855.P10540613319409911018

/-! ## A125855.P7046119312540946302

`3*A173092(n+1)-5`
-/

namespace A125855.P7046119312540946302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A173092 (n + 1) - 5

end

end A125855.P7046119312540946302

/-! ## A125855.P15350003490207109928

`xor(C(A028310(n), n), A007530(n+1))`
-/

namespace A125855.P15350003490207109928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (Nat.choose (A028310 n).toNat n : ℤ) (A007530 (n + 1))

end

end A125855.P15350003490207109928

/-! ## A125855.P4551092605764178055

`xor(A217221(2*n)+1, A007530(n+1))`
-/

namespace A125855.P4551092605764178055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A217221 (2 * n) + 1) (A007530 (n + 1))

end

end A125855.P4551092605764178055

/-! ## A125855.P16327531848144726833

`xor(A002212(A217221(2*n)), A007530(n+1))`
-/

namespace A125855.P16327531848144726833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A002212 (A217221 (2 * n)).toNat) (A007530 (n + 1))

end

end A125855.P16327531848144726833

/-! ## A125855.P861833672261440722

`xor(A001222(A007510(n+1)), A007530(n+1))`
-/

namespace A125855.P861833672261440722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A001222 (A007510 (n + 1)).toNat) (A007530 (n + 1))

end

end A125855.P861833672261440722

/-! ## A125855.P9610234642130673454

`A136162(4*n+1)-1`
-/

namespace A125855.P9610234642130673454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136162 (4 * n + 1) - 1

end

end A125855.P9610234642130673454

/-! ## A125855.P17654077069561693162

`xor(A001222(A007520(n+1)), A007530(n+1))`
-/

namespace A125855.P17654077069561693162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A001222 (A007520 (n + 1)).toNat) (A007530 (n + 1))

end

end A125855.P17654077069561693162

/-! ## A125855.P12155198046832929477

`∩[A046138(n+1), A053778(n+1)]-1`
-/

namespace A125855.P12155198046832929477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046138 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053778 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A125855.P12155198046832929477

/-! ## A125855.P4617493918274979463

`∩[A046138(n+1), A089628(n+3)]-1`
-/

namespace A125855.P4617493918274979463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046138 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089628 (n + 3)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A125855.P4617493918274979463

/-! ## A125855.P13008097752224328653

`∩[A022004(n+1), A046138(n+1)]-1`
-/

namespace A125855.P13008097752224328653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022004 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046138 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A125855.P13008097752224328653

/-! ## A125855.P7377491720143723463

`∩[A022004(n+1), A053778(n+1)]-1`
-/

namespace A125855.P7377491720143723463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022004 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053778 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A125855.P7377491720143723463

/-! ## A125855.P4676276119616373381

`∩[A022004(n+1), A089628(n+3)]-1`
-/

namespace A125855.P4676276119616373381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022004 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089628 (n + 3)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A125855.P4676276119616373381

/-! ## A125855.P601071439416114161

`∩[A022004(n+1), A046134(n+1)]-1`
-/

namespace A125855.P601071439416114161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022004 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046134 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A125855.P601071439416114161

/-!
# A125857: Numbers whose base-9 representation is 22222222.......2.

The programs for A125857, the canonical program `A125857.P5662200129780675894` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A125857 has offset 1).

The definition of A125857 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A125857.P5474267519834541273

`ogf(2x/(1-10x+9x^2))`
-/

namespace A125857.P5474267519834541273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 2] [1, -10, 9] n

end

end A125857.P5474267519834541273

namespace A125857

/-- `ogf(2x/(1-10x+9x^2))` -/
def P5474267519834541273.Spec : Prop :=
  ∀ n, P5474267519834541273.a n = A125857 (n + 1)

end A125857

/-! ## A125857.P5662200129780675894

`9*a(n-1)+2` with `a(0)=0`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A125857

/-- `9*a(n-1)+2` -/
def P5662200129780675894.Spec : Prop :=
  ∀ n, (P5662200129780675894.a n : ℤ) = A125857 (n + 1)

theorem P5662200129780675894.correct : P5662200129780675894.Spec := by
  intro n
  simp only [A125857, Nat.add_sub_cancel]

end A125857

/-! ## A125857.P17653751966093317460

`2*A002452(n)`
-/

namespace A125857.P17653751966093317460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A002452 n

end

end A125857.P17653751966093317460

namespace A125857

/-- `2*A002452(n)` -/
def P17653751966093317460.Spec : Prop :=
  ∀ n, P17653751966093317460.a n = A125857 (n + 1)

end A125857

/-! ## A125857.P11003209810130393688

`A191681(n)/2`
-/

namespace A125857.P11003209810130393688
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A191681 n : ℚ) / 2

end

end A125857.P11003209810130393688

namespace A125857

/-- `A191681(n)/2` -/
def P11003209810130393688.Spec : Prop :=
  ∀ n, P11003209810130393688.a n = (A125857 (n + 1) : ℚ)

end A125857

/-! ## A125857.P479966999874779979

`(9^n-1)/4`
-/

namespace A125857.P479966999874779979
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((9 ^ n : ℤ) - 1 : ℚ) / 4

end

end A125857.P479966999874779979

namespace A125857

/-- `(9^n-1)/4` -/
def P479966999874779979.Spec : Prop :=
  ∀ n, P479966999874779979.a n = (A125857 (n + 1) : ℚ)

theorem P479966999874779979.correct : P479966999874779979.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A125857, Nat.add_sub_cancel, A125857.P479966999874779979.a, A125857.P5662200129780675894.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A125857, Nat.add_sub_cancel, A125857.P479966999874779979.a, A125857.P5662200129780675894.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A125857

/-! ## A125857.P6970347975876378269

`A138894(n)-9^n`
-/

namespace A125857.P6970347975876378269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138894 n - (9 ^ n : ℤ)

end

end A125857.P6970347975876378269

namespace A125857

/-- `A138894(n)-9^n` -/
def P6970347975876378269.Spec : Prop :=
  ∀ n, P6970347975876378269.a n = A125857 (n + 1)

end A125857

/-! ## A125857.P6083764864308387061

`round(cot(2/3^n)²)`
-/

namespace A125857.P6083764864308387061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.cot (2 / (3 ^ n : ℚ) : ℝ) ^ 2)

end

end A125857.P6083764864308387061

namespace A125857

/-- `round(cot(2/3^n)²)` -/
def P6083764864308387061.Spec : Prop :=
  ∀ n, P6083764864308387061.a n = A125857 (n + 1)

end A125857

/-! ## A125857.P15407009966475760602

`2+9*a(n-1)` with `a(0)=0`
-/

namespace A125857.P15407009966475760602
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  2 + 9 * a (n - 1)

end

end A125857.P15407009966475760602

namespace A125857

/-- `2+9*a(n-1)` -/
def P15407009966475760602.Spec : Prop :=
  ∀ n, (P15407009966475760602.a n : ℤ) = A125857 (n + 1)

theorem P15407009966475760602.correct : P15407009966475760602.Spec := by
  intro n
  simp only [A125857, Nat.add_sub_cancel, A125857.P15407009966475760602.a, A125857.P5662200129780675894.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A125857

/-! ## A125857.P1429516508661800455

`lcm(9, a(n-1))+2` with `a(0)=0`
-/

namespace A125857.P1429516508661800455
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Nat.lcm 9 (a (n - 1)) + 2

end

end A125857.P1429516508661800455

namespace A125857

/-- `lcm(9, a(n-1))+2` -/
def P1429516508661800455.Spec : Prop :=
  ∀ n, (P1429516508661800455.a n : ℤ) = A125857 (n + 1)

end A125857

/-! ## A125857.P15614183715450566854

`∑[9*a(n-1)]` with `a(0)=0, a(1)=2`
-/

namespace A125857.P15614183715450566854
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 2] fun n f1 =>
  9 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A125857.P15614183715450566854

namespace A125857

/-- `∑[9*a(n-1)]` -/
def P15614183715450566854.Spec : Prop :=
  ∀ n, (P15614183715450566854.a n : ℤ) = A125857 (n + 1)

end A125857

/-! ## A125857.P5846028464280137901

`a(n-1)/(1/3)²+2` with `a(0)=0`
-/

namespace A125857.P5846028464280137901
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) / ((1 : ℚ) / 3) ^ 2 + 2

end

end A125857.P5846028464280137901

namespace A125857

/-- `a(n-1)/(1/3)²+2` -/
def P5846028464280137901.Spec : Prop :=
  ∀ n, P5846028464280137901.a n = (A125857 (n + 1) : ℚ)

end A125857

/-! ## A125857.P15333877857214776352

`∑[a(n-1)/(1/3)²]` with `a(0)=0, a(1)=2`
-/

namespace A125857.P15333877857214776352
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [0, 2] fun n f1 =>
  f1 (n - 1) / ((1 : ℚ) / 3) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A125857.P15333877857214776352

namespace A125857

/-- `∑[a(n-1)/(1/3)²]` -/
def P15333877857214776352.Spec : Prop :=
  ∀ n, P15333877857214776352.a n = (A125857 (n + 1) : ℚ)

end A125857

/-! ## A125857.P16322422474303423495

`5-3*(1-3*a(n-1))` with `a(0)=0`
-/

namespace A125857.P16322422474303423495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  5 - 3 * (1 - 3 * a (n - 1))

end

end A125857.P16322422474303423495

namespace A125857

/-- `5-3*(1-3*a(n-1))` -/
def P16322422474303423495.Spec : Prop :=
  ∀ n, P16322422474303423495.a n = A125857 (n + 1)

end A125857

/-! ## A125857.P11463983070117319693

`record[a(n-1)-(-3)^(n-1)]` with `a(0)=0`
-/

namespace A125857.P11463983070117319693
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 (n - 1) - (-3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A125857.P11463983070117319693

namespace A125857

/-- `record[a(n-1)-(-3)^(n-1)]` -/
def P11463983070117319693.Spec : Prop :=
  ∀ n, P11463983070117319693.a n = (A125857 (n + 1) : ℚ)

end A125857

/-! ## A125857.P13599491912294901864

`A054879(n)-1`
-/

namespace A125857.P13599491912294901864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054879 n - 1

end

end A125857.P13599491912294901864

namespace A125857

/-- `A054879(n)-1` -/
def P13599491912294901864.Spec : Prop :=
  ∀ n, P13599491912294901864.a n = A125857 (n + 1)

end A125857

/-! ## A125857.P15474621563094370485

`A015518(2*n)`
-/

namespace A125857.P15474621563094370485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015518 (2 * n)

end

end A125857.P15474621563094370485

namespace A125857

/-- `A015518(2*n)` -/
def P15474621563094370485.Spec : Prop :=
  ∀ n, P15474621563094370485.a n = A125857 (n + 1)

end A125857

/-! ## A125857.P3738406153944719449

`record[-A014983(n)]`
-/

namespace A125857.P3738406153944719449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A014983 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A125857.P3738406153944719449

namespace A125857

/-- `record[-A014983(n)]` -/
def P3738406153944719449.Spec : Prop :=
  ∀ n, P3738406153944719449.a n = A125857 (n + 1)

end A125857

/-! ## A125857.P7636822337677033477

`abs(A014983(2*n))`
-/

namespace A125857.P7636822337677033477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A014983 (2 * n)|

end

end A125857.P7636822337677033477

namespace A125857

/-- `abs(A014983(2*n))` -/
def P7636822337677033477.Spec : Prop :=
  ∀ n, P7636822337677033477.a n = A125857 (n + 1)

end A125857

/-! ## A125857.P5595458786129439387

`∑[A270369(n)]-1`
-/

namespace A125857.P5595458786129439387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270369 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A125857.P5595458786129439387

namespace A125857

/-- `∑[A270369(n)]-1` -/
def P5595458786129439387.Spec : Prop :=
  ∀ n, P5595458786129439387.a n = A125857 (n + 1)

end A125857

/-! ## A125857.P7612851749427493238

`Δ[A002754(n)/2]`
-/

namespace A125857.P7612851749427493238
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002754 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A125857.P7612851749427493238

namespace A125857

/-- `Δ[A002754(n)/2]` -/
def P7612851749427493238.Spec : Prop :=
  ∀ n, P7612851749427493238.a n = (A125857 (n + 1) : ℚ)

end A125857

/-!
# A125858: a(n) is the number of nonnegative integers k less than 10^n such that the decimal representation of k lacks at least one of digits 1,2,3,4,5,6,7,8,9.

The programs for A125858, there is no canonical definition to state claims against.
-/

/-! ## A125858.P17560010257541739300

`A158198(eq[9, A002262(n)])`
-/

namespace A125858.P17560010257541739300
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158198 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A125858.P17560010257541739300

/-! ## A125858.P11472646854607287776

`A158198(A000096(n+8)+10)`
-/

namespace A125858.P11472646854607287776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158198 (A000096 (n + 8) + 10).toNat

end

end A125858.P11472646854607287776

/-! ## A125858.P4002256700474865773

`A158198(eq[9, A144328(n+1)])`
-/

namespace A125858.P4002256700474865773
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158198 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A125858.P4002256700474865773

/-! ## A125858.P17185993317169585794

`A158198(eq[10, A002260(n+1)])`
-/

namespace A125858.P17185993317169585794
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158198 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A125858.P17185993317169585794

/-! ## A125858.P12571421246029834724

`A158198(eq[10, A134868(n+1)])`
-/

namespace A125858.P12571421246029834724
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134868 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158198 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A125858.P12571421246029834724

/-!
# A125859: Antidiagonal sums of table A125860.

The programs for A125859, there is no canonical definition to state claims against.
-/

/-! ## A125859.P17381951780964189115

`A164947(∑[∑[∑{e}[n+1, #]]]+1)`
-/

namespace A125859.P17381951780964189115
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164947 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A125859.P17381951780964189115

/-! ## A125859.P8703515357117778047

`A164947(A084684(n))`
-/

namespace A125859.P8703515357117778047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164947 (A084684 n).toNat

end

end A125859.P8703515357117778047

/-!
# A125860: Rectangular table where column k equals row sums of matrix power A097712^k, read by antidiagonals.

The programs for A125860, there is no canonical definition to state claims against.
-/

/-! ## A125860.P7561579874115805211

`A117396(n)+A058276(A051597(n))`
-/

namespace A125860.P7561579874115805211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117396 n + A058276 (A051597 n).toNat

end

end A125860.P7561579874115805211

/-! ## A125860.P4888468118650201329

`A003004(A142589(n))`
-/

namespace A125860.P4888468118650201329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003004 (A142589 n).toNat

end

end A125860.P4888468118650201329

/-! ## A125860.P15124221307689686023

`A117332(A117396(n))`
-/

namespace A125860.P15124221307689686023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117332 (A117396 n).toNat

end

end A125860.P15124221307689686023

/-! ## A125860.P1500436112733877884

`A048197(A241579(n))`
-/

namespace A125860.P1500436112733877884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048197 (A241579 n).toNat

end

end A125860.P1500436112733877884

/-!
# A125861: Main diagonal of table A125860.

The programs for A125861, there is no canonical definition to state claims against.
-/

/-! ## A125861.P2984768985087726596

`A125860(∑[4*n])`
-/

namespace A125861.P2984768985087726596
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125860 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A125861.P2984768985087726596

/-!
# A125862: Column 2 of table A125860; also equals row sums of matrix power A097712^2.

The programs for A125862, there is no canonical definition to state claims against.
-/

/-! ## A125862.P14597909465704115266

`Δ[A016121(n)]`
-/

namespace A125862.P14597909465704115266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016121 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A125862.P14597909465704115266

/-! ## A125862.P11664472005123342586

`Δ[∑{#}[n, C(n, #)*A008934(#)]]`
-/

namespace A125862.P11664472005123342586
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f2 n + 1), (Nat.choose n k : ℤ) * A008934 k

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A125862.P11664472005123342586

/-! ## A125862.P11276284258517505250

`A016121(n+1)-A016121(n)`
-/

namespace A125862.P11276284258517505250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016121 (n + 1) - A016121 n

end

end A125862.P11276284258517505250

/-! ## A125862.P11442389038090678957

`record[A016121(A038569(n))]-A016121(n)`
-/

namespace A125862.P11442389038090678957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016121 (A038569 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A016121 n

end

end A125862.P11442389038090678957

/-! ## A125862.P3552184147311267882

`record[A016121(A123108(n))]-A016121(n)`
-/

namespace A125862.P3552184147311267882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016121 (A123108 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A016121 n

end

end A125862.P3552184147311267882

/-!
# A125863: Column 3 of table A125860; also equals row sums of matrix power A097712^3.

The programs for A125863, there is no canonical definition to state claims against.
-/

/-! ## A125863.P4821705356210523219

`Δ[A125862(n)]-A125864(n)`
-/

namespace A125863.P4821705356210523219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125862 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A125864 n

end

end A125863.P4821705356210523219

/-! ## A125863.P5006802956227281417

`Δ[Δ[A016121(n)]]-A125864(n)`
-/

namespace A125863.P5006802956227281417
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016121 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A125864 n

end

end A125863.P5006802956227281417

/-! ## A125863.P3773830126256170240

`A125862(n+1)%(A125864(n)+A125862(n))`
-/

namespace A125863.P3773830126256170240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A125862 (n + 1)) (A125864 n + A125862 n)

end

end A125863.P3773830126256170240

/-! ## A125863.P13857178902846780793

`Δ[Δ[record[A125860(n)]]]-A125864(n)`
-/

namespace A125863.P13857178902846780793
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125860 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A125864 n

end

end A125863.P13857178902846780793

/-!
# A125864: Column 4 of table A125860; also equals row sums of matrix power A097712^4.

The programs for A125864, there is no canonical definition to state claims against.
-/

/-! ## A125864.P12418262116879877230

`Δ[A125862(n)]-A125863(n)`
-/

namespace A125864.P12418262116879877230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125862 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A125863 n

end

end A125864.P12418262116879877230

/-! ## A125864.P18305418928416078360

`Δ[Δ[A016121(n)]]-A125863(n)`
-/

namespace A125864.P18305418928416078360
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016121 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A125863 n

end

end A125864.P18305418928416078360

/-! ## A125864.P12386772985576071113

`A125862(n+1)-(A125863(n)+A125862(n))`
-/

namespace A125864.P12386772985576071113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125862 (n + 1) - (A125863 n + A125862 n)

end

end A125864.P12386772985576071113

/-! ## A125864.P14350492759317710018

`Δ[Δ[record[A125860(n)]]]-A125863(n)`
-/

namespace A125864.P14350492759317710018
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125860 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A125863 n

end

end A125864.P14350492759317710018

/-!
# A125865: Column 5 of table A125860; also equals row sums of matrix power A097712^5.

The programs for A125865, there is no canonical definition to state claims against.
-/

/-! ## A125865.P8360847989381964602

`A125860(A167499(n+4))`
-/

namespace A125865.P8360847989381964602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125860 (A167499 (n + 4)).toNat

end

end A125865.P8360847989381964602

/-!
# A125866: Odd numbers k such that cos(2*Pi/k) is an algebraic number of a 3-smooth degree, but not 2-smooth.

The programs for A125866, the canonical program `A125866.P959070150198838405` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A125866 has offset 1).

The definition of A125866 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 923 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A125866.P17081999495916145636

`∩[2*n+1, A051913(n+1)]`
-/

namespace A125866.P17081999495916145636
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051913 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A125866.P17081999495916145636

namespace A125866

/-- `∩[2*n+1, A051913(n+1)]` -/
def P17081999495916145636.Spec : Prop :=
  ∀ n, (P17081999495916145636.a n : ℤ) = A125866 (n + 1)

end A125866

/-! ## A125866.P959070150198838405

`record[A000265(A051913(n+1))]`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A125866

/-- `record[A000265(A051913(n+1))]` -/
def P959070150198838405.Spec : Prop :=
  ∀ n, P959070150198838405.a n = A125866 (n + 1)

theorem P959070150198838405.correct : P959070150198838405.Spec := by
  intro n
  simp only [A125866, Nat.add_sub_cancel]

end A125866

/-! ## A125866.P4516927324037234917

`∩[A051913(n+1), A204454(n+1)]`
-/

namespace A125866.P4516927324037234917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051913 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204454 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A125866.P4516927324037234917

namespace A125866

/-- `∩[A051913(n+1), A204454(n+1)]` -/
def P4516927324037234917.Spec : Prop :=
  ∀ n, (P4516927324037234917.a n : ℤ) = A125866 (n + 1)

end A125866

/-! ## A125866.P5840608412587879213

`∩[A051913(n+1), A004273(n)]`
-/

namespace A125866.P5840608412587879213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051913 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A125866.P5840608412587879213

namespace A125866

/-- `∩[A051913(n+1), A004273(n)]` -/
def P5840608412587879213.Spec : Prop :=
  ∀ n, (P5840608412587879213.a n : ℤ) = A125866 (n + 1)

end A125866

/-! ## A125866.P15170856479661198130

`∩[A051913(n+1), A004274(n)]`
-/

namespace A125866.P15170856479661198130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051913 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004274 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A125866.P15170856479661198130

namespace A125866

/-- `∩[A051913(n+1), A004274(n)]` -/
def P15170856479661198130.Spec : Prop :=
  ∀ n, (P15170856479661198130.a n : ℤ) = A125866 (n + 1)

end A125866

/-! ## A125866.P15116794512921424237

`∩[A051913(n+1), A004276(n)]`
-/

namespace A125866.P15116794512921424237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051913 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004276 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A125866.P15116794512921424237

namespace A125866

/-- `∩[A051913(n+1), A004276(n)]` -/
def P15116794512921424237.Spec : Prop :=
  ∀ n, (P15116794512921424237.a n : ℤ) = A125866 (n + 1)

end A125866

/-! ## A125866.P5409652200248132671

`∩[A051913(n+1), A004281(n)]`
-/

namespace A125866.P5409652200248132671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051913 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004281 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A125866.P5409652200248132671

namespace A125866

/-- `∩[A051913(n+1), A004281(n)]` -/
def P5409652200248132671.Spec : Prop :=
  ∀ n, (P5409652200248132671.a n : ℤ) = A125866 (n + 1)

end A125866

/-! ## A125866.P14790976214159358116

`∩[A051913(n+1), A020742(n)]`
-/

namespace A125866.P14790976214159358116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051913 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020742 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A125866.P14790976214159358116

namespace A125866

/-- `∩[A051913(n+1), A020742(n)]` -/
def P14790976214159358116.Spec : Prop :=
  ∀ n, (P14790976214159358116.a n : ℤ) = A125866 (n + 1)

end A125866

/-! ## A125866.P5825388961419953134

`∩[A051913(n+1), A060747(n)]`
-/

namespace A125866.P5825388961419953134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051913 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060747 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A125866.P5825388961419953134

namespace A125866

/-- `∩[A051913(n+1), A060747(n)]` -/
def P5825388961419953134.Spec : Prop :=
  ∀ n, (P5825388961419953134.a n : ℤ) = A125866 (n + 1)

end A125866

/-! ## A125866.P16429600887191629333

`∩[A051913(n+1), A062545(n)]`
-/

namespace A125866.P16429600887191629333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051913 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062545 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A125866.P16429600887191629333

namespace A125866

/-- `∩[A051913(n+1), A062545(n)]` -/
def P16429600887191629333.Spec : Prop :=
  ∀ n, (P16429600887191629333.a n : ℤ) = A125866 (n + 1)

end A125866

/-! ## A125866.P17470015521250322003

`∩[A051913(n+1), A130773(n)]`
-/

namespace A125866.P17470015521250322003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051913 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130773 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A125866.P17470015521250322003

namespace A125866

/-- `∩[A051913(n+1), A130773(n)]` -/
def P17470015521250322003.Spec : Prop :=
  ∀ n, (P17470015521250322003.a n : ℤ) = A125866 (n + 1)

end A125866

/-! ## A125866.P8719183204125073421

`∩[A051913(n+1), A163985(n)]`
-/

namespace A125866.P8719183204125073421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051913 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163985 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A125866.P8719183204125073421

namespace A125866

/-- `∩[A051913(n+1), A163985(n)]` -/
def P8719183204125073421.Spec : Prop :=
  ∀ n, (P8719183204125073421.a n : ℤ) = A125866 (n + 1)

end A125866

/-! ## A125866.P16379942640867979842

`∩[A051913(n+1), A223134(n)]`
-/

namespace A125866.P16379942640867979842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051913 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223134 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A125866.P16379942640867979842

namespace A125866

/-- `∩[A051913(n+1), A223134(n)]` -/
def P16379942640867979842.Spec : Prop :=
  ∀ n, (P16379942640867979842.a n : ℤ) = A125866 (n + 1)

end A125866

/-! ## A125866.P6605493101687089470

`∩[A051913(n+1), A088948(n+1)]`
-/

namespace A125866.P6605493101687089470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051913 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088948 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A125866.P6605493101687089470

namespace A125866

/-- `∩[A051913(n+1), A088948(n+1)]` -/
def P6605493101687089470.Spec : Prop :=
  ∀ n, (P6605493101687089470.a n : ℤ) = A125866 (n + 1)

end A125866

/-! ## A125866.P5896091027280399690

`∩[A051913(n+1), A140139(n+1)]`
-/

namespace A125866.P5896091027280399690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051913 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140139 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A125866.P5896091027280399690

namespace A125866

/-- `∩[A051913(n+1), A140139(n+1)]` -/
def P5896091027280399690.Spec : Prop :=
  ∀ n, (P5896091027280399690.a n : ℤ) = A125866 (n + 1)

end A125866

/-! ## A125866.P1336537764714297855

`∩[A051913(n+1), A144396(n+1)]`
-/

namespace A125866.P1336537764714297855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051913 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144396 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A125866.P1336537764714297855

namespace A125866

/-- `∩[A051913(n+1), A144396(n+1)]` -/
def P1336537764714297855.Spec : Prop :=
  ∀ n, (P1336537764714297855.a n : ℤ) = A125866 (n + 1)

end A125866

/-! ## A125866.P3360604143431122217

`eq[3, A006530(A000010(A093178(n)))]`
-/

namespace A125866.P3360604143431122217
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A000010 (A093178 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A125866.P3360604143431122217

namespace A125866

/-- `eq[3, A006530(A000010(A093178(n)))]` -/
def P3360604143431122217.Spec : Prop :=
  ∀ n, (P3360604143431122217.a n : ℤ) = A125866 (n + 1)

end A125866

/-! ## A125866.P1956703678119705041

`filter[A051913(n+1), A000035(#)]`
-/

namespace A125866.P1956703678119705041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051913 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A125866.P1956703678119705041

namespace A125866

/-- `filter[A051913(n+1), A000035(#)]` -/
def P1956703678119705041.Spec : Prop :=
  ∀ n, P1956703678119705041.a n = A125866 (n + 1)

end A125866

/-! ## A125866.P13605234703831442233

`filter[A051913(n+1), A266070(#)]`
-/

namespace A125866.P13605234703831442233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051913 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266070 (f1 j).toNat = 1) n)

end

end A125866.P13605234703831442233

namespace A125866

/-- `filter[A051913(n+1), A266070(#)]` -/
def P13605234703831442233.Spec : Prop :=
  ∀ n, P13605234703831442233.a n = A125866 (n + 1)

end A125866

/-! ## A125866.P16508044040117812540

`filter[A051913(n+1), A266246(#)]`
-/

namespace A125866.P16508044040117812540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051913 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266246 (f1 j).toNat = 1) n)

end

end A125866.P16508044040117812540

namespace A125866

/-- `filter[A051913(n+1), A266246(#)]` -/
def P16508044040117812540.Spec : Prop :=
  ∀ n, P16508044040117812540.a n = A125866 (n + 1)

end A125866

/-!
# A125867: Numbers k such that p=6k+1 is prime and cos(2*Pi/p) is an algebraic number of a 3-smooth degree, but not 2-smooth.

The programs for A125867, there is no canonical definition to state claims against.
-/

/-! ## A125867.P12599004397184486276

`floor(A058383(n+1)/6)`
-/

namespace A125867.P12599004397184486276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A058383 (n + 1) : ℚ) / 6⌋

end

end A125867.P12599004397184486276

/-! ## A125867.P5704949984167856579

`floor(A217035(n+2)/6)`
-/

namespace A125867.P5704949984167856579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A217035 (n + 2) : ℚ) / 6⌋

end

end A125867.P5704949984167856579

/-! ## A125867.P14703707072282749756

`A007318(∑[n])*round(A058383(n+1)/6)`
-/

namespace A125867.P14703707072282749756
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * SequenceMachineLib.roundAway ((A058383 (n + 1) : ℚ) / 6)

end

end A125867.P14703707072282749756

/-! ## A125867.P4171516372237991922

`round(A058383(n+1)/A010724(2*(n+1)))`
-/

namespace A125867.P4171516372237991922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A058383 (n + 1) : ℚ) / (A010724 (2 * (n + 1)) : ℚ))

end

end A125867.P4171516372237991922

/-! ## A125867.P6327562723553292612

`round(A058383(n+1)/6)%A000045(n+3)`
-/

namespace A125867.P6327562723553292612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A058383 (n + 1) : ℚ) / 6)) (A000045 (n + 3))

end

end A125867.P6327562723553292612

/-!
# A125868: Odd numbers k such that cos(2*Pi/k) is an algebraic number of a 5-smooth degree, but not 3-smooth.

The programs for A125868, there is no canonical definition to state claims against.
-/

/-! ## A125868.P9096301351100110625

`eq[5, A006530(A000010(A093178(n)))]`
-/

namespace A125868.P9096301351100110625
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A000010 (A093178 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A125868.P9096301351100110625

/-! ## A125868.P13940877838535769458

`eq[5, A006530(A000010(A266303(n)))]`
-/

namespace A125868.P13940877838535769458
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A000010 (A266303 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A125868.P13940877838535769458

/-! ## A125868.P15883024259893512425

`eq[5, A006530(A000010(A267352(n)))]`
-/

namespace A125868.P15883024259893512425
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A000010 (A267352 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A125868.P15883024259893512425

/-! ## A125868.P8996518319639644959

`eq[A006530(A225530(n)), A010676(n)]`
-/

namespace A125868.P8996518319639644959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A225530 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010676 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A125868.P8996518319639644959

/-! ## A125868.P6802173672706315216

`eq[A006530(A225530(n)), A010710(n)]`
-/

namespace A125868.P6802173672706315216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A225530 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010710 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A125868.P6802173672706315216

/-!
# A125869: Numbers k such that p=10*k+1 is prime and cos(2*Pi/p) is an algebraic number of a 5-smooth degree, but not 3-smooth.

The programs for A125869, there is no canonical definition to state claims against.
-/

/-! ## A125869.P16723459770792151216

`floor(A061599(n+1)/10)`
-/

namespace A125869.P16723459770792151216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A061599 (n + 1) : ℚ) / 10⌋

end

end A125869.P16723459770792151216

/-! ## A125869.P16618391496714904834

`round(A061599(C(n+1, n))/10)`
-/

namespace A125869.P16618391496714904834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A061599 (Nat.choose (n + 1) n) : ℚ) / 10)

end

end A125869.P16618391496714904834

/-! ## A125869.P16446036802488771259

`round(A061599(Δ[n²]-n)/10)`
-/

namespace A125869.P16446036802488771259
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A061599 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat : ℚ) / 10)

end

end A125869.P16446036802488771259

/-! ## A125869.P17512821713124194064

`root(round(A061599(n+1)/10), A020639(2*(n+1)))²`
-/

namespace A125869.P17512821713124194064
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.roundAway ((A061599 (n + 1) : ℚ) / 10) : ℝ) ^ (1 / (A020639 (2 * (n + 1)) : ℝ))) ^ 2

end

end A125869.P17512821713124194064

/-! ## A125869.P512125319235211001

`A000027(round(A061599(n+1)/10))`
-/

namespace A125869.P512125319235211001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.roundAway ((A061599 (n + 1) : ℚ) / 10)).toNat

end

end A125869.P512125319235211001

/-! ## A125869.P14853307050283920588

`round(p?[A080193(n+1)+1]/10)`
-/

namespace A125869.P14853307050283920588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080193 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / 10)

end

end A125869.P14853307050283920588

/-! ## A125869.P1382085583293574344

`∩[A024912(n+1), A051037(n+1)]`
-/

namespace A125869.P1382085583293574344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024912 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051037 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A125869.P1382085583293574344

/-! ## A125869.P11714075208175700660

`A000010(A061599(A000027(n+1)))/10`
-/

namespace A125869.P11714075208175700660
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (A061599 (A000027 (n + 1)).toNat).toNat : ℚ) / 10

end

end A125869.P11714075208175700660

/-!
# A125870: Odd numbers k such that cos(2*Pi/k) is an algebraic number of a 7-smooth degree, but not 5-smooth.

The programs for A125870, there is no canonical definition to state claims against.
-/

/-! ## A125870.P402660619876651561

`eq[7, A006530(A000010(A093178(n)))]`
-/

namespace A125870.P402660619876651561
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A000010 (A093178 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A125870.P402660619876651561

/-! ## A125870.P14294796750609493870

`eq[7, A006530(A000010(A266303(n)))]`
-/

namespace A125870.P14294796750609493870
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A000010 (A266303 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A125870.P14294796750609493870

/-! ## A125870.P14054678952885575242

`eq[7, A006530(A000010(A267352(n)))]`
-/

namespace A125870.P14054678952885575242
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A000010 (A267352 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A125870.P14054678952885575242

/-! ## A125870.P4742688545592803749

`eq[A006530(A225530(n)), A040606(n)]`
-/

namespace A125870.P4742688545592803749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A225530 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040606 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A125870.P4742688545592803749

/-! ## A125870.P13411834507436294490

`eq[A010710(n)+2, A006530(A225530(n))]`
-/

namespace A125870.P13411834507436294490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010710 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A225530 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A125870.P13411834507436294490

/-!
# A125871: Numbers k such that p=14*k+1 is prime and cos(2*Pi/p) is an algebraic number of a 7-smooth degree, but not 5-smooth.

The programs for A125871, there is no canonical definition to state claims against.
-/

/-! ## A125871.P13154587635454820628

`floor(A061638(n+1)/14)`
-/

namespace A125871.P13154587635454820628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A061638 (n + 1) : ℚ) / 14⌋

end

end A125871.P13154587635454820628

/-! ## A125871.P18427261252980448958

`round(A061638(-xor(n, -1))/14)`
-/

namespace A125871.P18427261252980448958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A061638 (-Int.xor (n : ℤ) (-1)).toNat : ℚ) / 14)

end

end A125871.P18427261252980448958

/-! ## A125871.P10420468418488545979

`round(A061638(n-(1-4/2))/14)`
-/

namespace A125871.P10420468418488545979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A061638 (SequenceMachineLib.roundAway ((n : ℚ) - (1 - (4 : ℚ) / 2))).toNat : ℚ) / 14)

end

end A125871.P10420468418488545979

/-! ## A125871.P17509482959714945421

`round(A061638(n+1)/14)/A007318(C(2, n))`
-/

namespace A125871.P17509482959714945421
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.roundAway ((A061638 (n + 1) : ℚ) / 14) : ℚ) / (A007318 (Nat.choose 2 n) : ℚ)

end

end A125871.P17509482959714945421

/-! ## A125871.P4553168413600929783

`A008683(4*(n+1))+round(A061638(n+1)/14)`
-/

namespace A125871.P4553168413600929783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (4 * (n + 1)) + SequenceMachineLib.roundAway ((A061638 (n + 1) : ℚ) / 14)

end

end A125871.P4553168413600929783

/-! ## A125871.P1547824751040322475

`round(A061638(n+1)/14)%A000041(n+3)`
-/

namespace A125871.P1547824751040322475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A061638 (n + 1) : ℚ) / 14)) (A000041 (n + 3))

end

end A125871.P1547824751040322475

/-! ## A125871.P8850905293197217344

`round(A061638(n+1)/14)/A014963(6*(n+1))`
-/

namespace A125871.P8850905293197217344
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.roundAway ((A061638 (n + 1) : ℚ) / 14) : ℚ) / (A014963 (6 * (n + 1)) : ℚ)

end

end A125871.P8850905293197217344

/-! ## A125871.P10889099010958941950

`A007318(∑[n])*round(A061638(n+1)/14)`
-/

namespace A125871.P10889099010958941950
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * SequenceMachineLib.roundAway ((A061638 (n + 1) : ℚ) / 14)

end

end A125871.P10889099010958941950

/-! ## A125871.P1858205323267716059

`round(A061638(n+1)/14)/A007318(∑[n+1])`
-/

namespace A125871.P1858205323267716059
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.roundAway ((A061638 (n + 1) : ℚ) / 14) : ℚ) / (A007318 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A125871.P1858205323267716059

/-!
# A125872: Odd numbers k such that cos(2*Pi/k) is an algebraic number of an 11-smooth degree, but not 7-smooth.

The programs for A125872, there is no canonical definition to state claims against.
-/

/-! ## A125872.P11560936205614983145

`eq[A051626(A225530(n)), A141310(n)]`
-/

namespace A125872.P11560936205614983145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051626 (A225530 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141310 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A125872.P11560936205614983145

/-! ## A125872.P1567925567665650421

`lt[A070680(A225530(n)), A000035(n)]`
-/

namespace A125872.P1567925567665650421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070680 (A225530 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A125872.P1567925567665650421

/-! ## A125872.P985249217939602467

`eq[A006530(A225530(n))+2, A040653(n)]`
-/

namespace A125872.P985249217939602467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A225530 n).toNat + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040653 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A125872.P985249217939602467

/-!
# A125873: Prime numbers n such that cos(2pi/n) is an algebraic number of an 11-smooth degree, but not 7-smooth.

The programs for A125873, there is no canonical definition to state claims against.
-/

/-! ## A125873.P1090048655298083232

`p?[A080195(n+1)+1]`
-/

namespace A125873.P1090048655298083232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080195 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A125873.P1090048655298083232

/-! ## A125873.P17782270641490792670

`p?[11*A051038(n+1)+1]`
-/

namespace A125873.P17782270641490792670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  11 * A051038 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A125873.P17782270641490792670

/-! ## A125873.P6491623416998945373

`A161709(A125874(n+1))`
-/

namespace A125873.P6491623416998945373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161709 (A125874 (n + 1)).toNat

end

end A125873.P6491623416998945373

/-! ## A125873.P14060024876824057506

`A144396(11*A125874(n+1))`
-/

namespace A125873.P14060024876824057506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144396 (11 * A125874 (n + 1)).toNat

end

end A125873.P14060024876824057506

/-! ## A125873.P11661872446613282108

`record[A006530(A080195(n+2)+1)]`
-/

namespace A125873.P11661872446613282108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A080195 (n + 2) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A125873.P11661872446613282108

/-!
# A125874: Numbers k such that p=22*k+1 is prime and cos(2*Pi/p) is an algebraic number of an 11-smooth degree, but not 7-smooth.

The programs for A125874, there is no canonical definition to state claims against.
-/

/-! ## A125874.P7257544084654951369

`∩[A033637(n+1), A215667(n+1)]`
-/

namespace A125874.P7257544084654951369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033637 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215667 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A125874.P7257544084654951369

/-! ## A125874.P5923989651887648121

`∩[A051038(n+1), A215667(n+1)]`
-/

namespace A125874.P5923989651887648121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051038 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215667 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A125874.P5923989651887648121

/-! ## A125874.P13390634486026727464

`∩[A033637(n+1), floor(A141849(n+1)/22)]`
-/

namespace A125874.P13390634486026727464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033637 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A141849 (n + 1) : ℚ) / 22⌋

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A125874.P13390634486026727464

/-! ## A125874.P3949161144685793990

`∩[A051038(n+1), floor(A141849(n+1)/22)]`
-/

namespace A125874.P3949161144685793990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051038 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A141849 (n + 1) : ℚ) / 22⌋

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A125874.P3949161144685793990

/-! ## A125874.P3525515159100851310

`A001281(∩[A033637(n+1), A102656(n+1)])`
-/

namespace A125874.P3525515159100851310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033637 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102656 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A125874.P3525515159100851310

/-! ## A125874.P5352493954333750405

`∩[A033637(n+1), A008619(A102731(n+1))]`
-/

namespace A125874.P5352493954333750405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033637 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A102731 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A125874.P5352493954333750405

/-! ## A125874.P7509177914063124668

`∩[A033637(n+1), A000463(A102731(n+1)+1)]`
-/

namespace A125874.P7509177914063124668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033637 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (A102731 (n + 1) + 1).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A125874.P7509177914063124668

/-!
# A125875: Odd numbers k such that cos(2*Pi/k) is an algebraic number of a 13-smooth degree, but not 11-smooth.

The programs for A125875, there is no canonical definition to state claims against.
-/

/-! ## A125875.P14229796103908032547

`eq[13, A006530(A000010(n^(n%2)))]`
-/

namespace A125875.P14229796103908032547
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A000010 (n ^ (n % 2))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A125875.P14229796103908032547

/-! ## A125875.P13429456416947016426

`eq[A006530(A225530(n)), A040653(n)]`
-/

namespace A125875.P13429456416947016426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A225530 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040653 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A125875.P13429456416947016426

/-!
# A125876: Prime numbers n such that cos(2pi/n) is an algebraic number of a 13-smooth degree, but not 11-smooth.

The programs for A125876, there is no canonical definition to state claims against.
-/

/-! ## A125876.P11750212143991581437

`p?[A080196(n+1)+1]`
-/

namespace A125876.P11750212143991581437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080196 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A125876.P11750212143991581437

/-! ## A125876.P13810508304237344776

`26*A125877(n+1)+1`
-/

namespace A125876.P13810508304237344776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  26 * A125877 (n + 1) + 1

end

end A125876.P13810508304237344776

/-! ## A125876.P12416346706382481398

`p?[A005408(A080196(n+1))]`
-/

namespace A125876.P12416346706382481398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A080196 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A125876.P12416346706382481398

/-! ## A125876.P11856646384897120449

`p?[A190991(A080197(n+1))]`
-/

namespace A125876.P11856646384897120449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190991 (A080197 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A125876.P11856646384897120449

/-! ## A125876.P12232368444867840731

`record[A020639(A080196(n+4)+1)]`
-/

namespace A125876.P12232368444867840731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A080196 (n + 4) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A125876.P12232368444867840731

/-!
# A125877: Numbers k such that p=26*k+1 is prime and cos(2*Pi/p) is an algebraic number of a 13-smooth degree, but not 11-smooth.

The programs for A125877, there is no canonical definition to state claims against.
-/

/-! ## A125877.P4736245707590519074

`floor(p?[A080196(n+1)+1]/26)`
-/

namespace A125877.P4736245707590519074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080196 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / 26⌋

end

end A125877.P4736245707590519074

/-! ## A125877.P7481261250559384882

`round(p?[A080196(n+3)+1]/26)`
-/

namespace A125877.P7481261250559384882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080196 (n + 3) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / 26)

end

end A125877.P7481261250559384882

/-! ## A125877.P6148864405271543913

`ceil(p?[A080196(n+2)+1]/26)-1`
-/

namespace A125877.P6148864405271543913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080196 (n + 2) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / 26⌉ - 1

end

end A125877.P6148864405271543913

/-! ## A125877.P18160322910913521895

`floor(p?[A190991(A080197(n+1))]/26)`
-/

namespace A125877.P18160322910913521895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190991 (A080197 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / 26⌋

end

end A125877.P18160322910913521895

/-! ## A125877.P658210965037323119

`round(p?[A190991(A080197(n+2))]/26)`
-/

namespace A125877.P658210965037323119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190991 (A080197 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / 26)

end

end A125877.P658210965037323119

/-! ## A125877.P14756717147303147211

`A003958(p?[A080196(n+1)+1])/26`
-/

namespace A125877.P14756717147303147211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080196 (n + 1) + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003958 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat : ℚ) / 26

end

end A125877.P14756717147303147211

/-! ## A125877.P924013520634482556

`floor(p?[A005408(A080196(n+1))]/26)`
-/

namespace A125877.P924013520634482556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A080196 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / 26⌋

end

end A125877.P924013520634482556

/-!
# A125879: Records in A066674.

The programs for A125879, there is no canonical definition to state claims against.
-/

/-! ## A125879.P5256428674742915089

`record[A035095(n+1)]`
-/

namespace A125879.P5256428674742915089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035095 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A125879.P5256428674742915089

/-! ## A125879.P6984121414281233381

`A035095(A198034(n+1))`
-/

namespace A125879.P6984121414281233381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035095 (A198034 (n + 1)).toNat

end

end A125879.P6984121414281233381

/-! ## A125879.P12359436196328113853

`record[A000040(n+1)*A035096(n+1)+1]`
-/

namespace A125879.P12359436196328113853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A035096 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A125879.P12359436196328113853

/-! ## A125879.P12787185809146720725

`record[A070846(A176997(n+1))]`
-/

namespace A125879.P12787185809146720725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070846 (A176997 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A125879.P12787185809146720725

/-! ## A125879.P3133666423371777746

`record[A070846(A006530(2*n+1))]`
-/

namespace A125879.P3133666423371777746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070846 (A006530 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A125879.P3133666423371777746

/-! ## A125879.P12953678796425617010

`record[A070846(A020639(2*n+1))]`
-/

namespace A125879.P12953678796425617010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070846 (A020639 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A125879.P12953678796425617010

/-!
# A125880: a(n) is the number of nonnegative integers k less than 10^n such that the decimal representation of k lacks at least one of the digits 1,2 and at least one of the digits 3,4,5,6,7,8,9.

The programs for A125880, there is no canonical definition to state claims against.
-/

/-! ## A125880.P8741507461682735344

`A008776(2*(n+1))-A000027(A011782(3*n+4))`
-/

namespace A125880.P8741507461682735344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008776 (2 * (n + 1)) - A000027 (A011782 (3 * n + 4)).toNat

end

end A125880.P8741507461682735344

/-! ## A125880.P13148992871873986157

`A025192(2*n+3)-A000027(A011782(3*n+4))`
-/

namespace A125880.P13148992871873986157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025192 (2 * n + 3) - A000027 (A011782 (3 * n + 4)).toNat

end

end A125880.P13148992871873986157

/-!
# A125881: Numbers k for which k^3+k^2-1 is prime.

The programs for A125881, there is no canonical definition to state claims against.
-/

/-! ## A125881.P14962037700291307953

`A308981(n+4)-1`
-/

namespace A125881.P14962037700291307953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308981 (n + 4) - 1

end

end A125881.P14962037700291307953

/-! ## A125881.P440984414677898161

`A023443(A308981(n+4))`
-/

namespace A125881.P440984414677898161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A308981 (n + 4)).toNat

end

end A125881.P440984414677898161

/-! ## A125881.P9810372167040298537

`A023444(A308981(n+4)+1)`
-/

namespace A125881.P9810372167040298537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A308981 (n + 4) + 1).toNat

end

end A125881.P9810372167040298537

/-! ## A125881.P11069385905943519904

`A317939(A001358(n+1))+A308981(n+4)`
-/

namespace A125881.P11069385905943519904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317939 (A001358 (n + 1)).toNat + A308981 (n + 4)

end

end A125881.P11069385905943519904

/-! ## A125881.P8136733438169045992

`A317939(A187400(n+1))+A308981(n+4)`
-/

namespace A125881.P8136733438169045992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317939 (A187400 (n + 1)).toNat + A308981 (n + 4)

end

end A125881.P8136733438169045992

/-! ## A125881.P8678604827158440423

`A140106(A308981(n+4)+A308981(n+4))`
-/

namespace A125881.P8678604827158440423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140106 (A308981 (n + 4) + A308981 (n + 4)).toNat

end

end A125881.P8678604827158440423

/-! ## A125881.P1945101255002311980

`(A308981(n+4)+A049347(A016777(n)))*A014963(15*(n+1))`
-/

namespace A125881.P1945101255002311980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A308981 (n + 4) + A049347 (A016777 n).toNat) * A014963 (15 * (n + 1))

end

end A125881.P1945101255002311980

/-!
# A125882: Numbers k for which k^4+k^3-1 is prime.

The programs for A125882, there is no canonical definition to state claims against.
-/

/-! ## A125882.P1683070781964085719

`A227394(A070926(n+2)+1)`
-/

namespace A125882.P1683070781964085719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227394 (A070926 (n + 2) + 1).toNat

end

end A125882.P1683070781964085719

/-! ## A125882.P6579612718301160294

`A001918(A262300(n+1))+A000217(n)`
-/

namespace A125882.P6579612718301160294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001918 (A262300 (n + 1)).toNat + A000217 n

end

end A125882.P6579612718301160294

/-!
# A125884: Numbers k for which k^6+k^5-1 is prime.

The programs for A125884, there is no canonical definition to state claims against.
-/

/-! ## A125884.P14958650080458159959

`A177805(n+1)+A010882(A084529(n+1))`
-/

namespace A125884.P14958650080458159959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177805 (n + 1) + A010882 (A084529 (n + 1)).toNat

end

end A125884.P14958650080458159959

/-! ## A125884.P8004622892073208853

`A177805(n+1)+A001468(A351602(n+1))`
-/

namespace A125884.P8004622892073208853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177805 (n + 1) + A001468 (A351602 (n + 1)).toNat

end

end A125884.P8004622892073208853

/-! ## A125884.P15258006053838392674

`A053445(A005843(n+1))+A000005(A014551(2*n))`
-/

namespace A125884.P15258006053838392674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053445 (A005843 (n + 1)).toNat + A000005 (A014551 (2 * n)).toNat

end

end A125884.P15258006053838392674

/-!
# A125886: a(1) = 1, a(n) = smallest positive number b not among a(1)..a(n-1) such that the last digit of b = the first digit of a(n-1).

The programs for A125886, there is no canonical definition to state claims against.
-/

/-! ## A125886.P1553345360007238864

`A093645(eq[1, A110855(n)])`
-/

namespace A125886.P1553345360007238864
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110855 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093645 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A125886.P1553345360007238864

/-! ## A125886.P9271503804904389060

`A001221(A253574(n+1))*A004086(A125887(n+1))`
-/

namespace A125886.P9271503804904389060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A253574 (n + 1)).toNat * A004086 (A125887 (n + 1)).toNat

end

end A125886.P9271503804904389060

/-! ## A125886.P2375305465036158306

`A004086(A125887(n+1)%A090058(n+1))`
-/

namespace A125886.P2375305465036158306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (Int.tmod (A125887 (n + 1)) (A090058 (n + 1))).toNat

end

end A125886.P2375305465036158306

/-! ## A125886.P3967169704974145734

`A004086(A303446(n+1)%A100143(3*n+5))`
-/

namespace A125886.P3967169704974145734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (Int.tmod (A303446 (n + 1)) (A100143 (3 * n + 5))).toNat

end

end A125886.P3967169704974145734

/-! ## A125886.P11460402182097185334

`A347400(A125887(n+1))`
-/

namespace A125886.P11460402182097185334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347400 (A125887 (n + 1)).toNat

end

end A125886.P11460402182097185334

/-!
# A125887: a(1) = 1, a(n) = smallest positive number b not among a(1)..a(n-1) and not a multiple of 10 such that the first digit of b = the last digit of a(n-1).

The programs for A125887, there is no canonical definition to state claims against.
-/

/-! ## A125887.P1246023624555082084

`A118759(A303446(n+1))`
-/

namespace A125887.P1246023624555082084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (A303446 (n + 1)).toNat

end

end A125887.P1246023624555082084

/-! ## A125887.P15743502623106272059

`A000188(A303446(n+1)²)`
-/

namespace A125887.P15743502623106272059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (A303446 (n + 1) ^ 2).toNat

end

end A125887.P15743502623106272059

/-! ## A125887.P9622502290891864109

`A000196(A303446(n+1)²)`
-/

namespace A125887.P9622502290891864109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A303446 (n + 1) ^ 2).toNat

end

end A125887.P9622502290891864109

/-! ## A125887.P8158585246390431064

`A303446(n+1)%A210701(3*n+2)`
-/

namespace A125887.P8158585246390431064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A303446 (n + 1)) (A210701 (3 * n + 2))

end

end A125887.P8158585246390431064

/-! ## A125887.P14132065927828856682

`A303446(n+1)/A064547(A052356(n+6))`
-/

namespace A125887.P14132065927828856682
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A303446 (n + 1) : ℚ) / (A064547 (A052356 (n + 6)).toNat : ℚ)

end

end A125887.P14132065927828856682

/-!
# A125888: Numerator of sum of first n ratios of Fibonacci to Lucas numbers.

The programs for A125888, there is no canonical definition to state claims against.
-/

/-! ## A125888.P353790014375380863

`A057501(A052640(n))+A002262(n)`
-/

namespace A125888.P353790014375380863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057501 (A052640 n).toNat + A002262 n

end

end A125888.P353790014375380863

/-! ## A125888.P6694087853150666694

`A266193(or(A096654(n), A356834(n)))`
-/

namespace A125888.P6694087853150666694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266193 (Int.lor (A096654 n) (A356834 n)).toNat

end

end A125888.P6694087853150666694

/-!
# A125889: Denominator of sum of first n ratios of Fibonacci to Lucas numbers.

The programs for A125889, there is no canonical definition to state claims against.
-/

/-! ## A125889.P6259568267780991883

`A070825(n)/gcd(A070825(n), A203009(n+1))`
-/

namespace A125889.P6259568267780991883
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A070825 n : ℚ) / (Int.gcd (A070825 n) (A203009 (n + 1)) : ℚ)

end

end A125889.P6259568267780991883

/-! ## A125889.P10835162524480182411

`∏[A085392(A084057(n))]`
-/

namespace A125889.P10835162524480182411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085392 (A084057 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A125889.P10835162524480182411

/-! ## A125889.P6186483848823965648

`A062954(A073790(n))/2`
-/

namespace A125889.P6186483848823965648
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062954 (A073790 n).toNat : ℚ) / 2

end

end A125889.P6186483848823965648

/-! ## A125889.P9218865583358830950

`A062954(A029965(n+1))/2`
-/

namespace A125889.P9218865583358830950
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062954 (A029965 (n + 1)).toNat : ℚ) / 2

end

end A125889.P9218865583358830950

/-! ## A125889.P10429998130710610681

`∏[A006530(∏{d}[2*n, A000045(#)])]`
-/

namespace A125889.P10429998130710610681
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (∏ d ∈ Nat.divisors (f2 n), A000045 d).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A125889.P10429998130710610681

/-!
# A125890: Floor(Zeta(3)^n).

The programs for A125890, there is no canonical definition to state claims against.
-/

/-! ## A125890.P89202898397078136

`round(A333190(3*n+1)/A000969(n))`
-/

namespace A125890.P89202898397078136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A333190 (3 * n + 1) : ℚ) / (A000969 n : ℚ))

end

end A125890.P89202898397078136

/-! ## A125890.P2586197404790946310

`A242414(A000607(n+2)%A088701(n))`
-/

namespace A125890.P2586197404790946310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242414 (Int.tmod (A000607 (n + 2)) (A088701 n)).toNat

end

end A125890.P2586197404790946310

/-! ## A125890.P10653527520503984457

`A003056(A056503(n+1))%A060699(n+1)`
-/

namespace A125890.P10653527520503984457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003056 (A056503 (n + 1)).toNat) (A060699 (n + 1))

end

end A125890.P10653527520503984457

/-! ## A125890.P3248215361129893135

`A003056(A256217(n+1)%A376597(3*(n+1)))`
-/

namespace A125890.P3248215361129893135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (Int.tmod (A256217 (n + 1)) (A376597 (3 * (n + 1)))).toNat

end

end A125890.P3248215361129893135

/-! ## A125890.P10768096657781167678

`A103298(A135318(n))`
-/

namespace A125890.P10768096657781167678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103298 (A135318 n).toNat

end

end A125890.P10768096657781167678

/-!
# A125891: Floor(Zeta(5)^n).

The programs for A125891, there is no canonical definition to state claims against.
-/

/-! ## A125891.P17399862694318385877

`A255270(A032739(n+1))`
-/

namespace A125891.P17399862694318385877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255270 (A032739 (n + 1)).toNat

end

end A125891.P17399862694318385877

/-! ## A125891.P11674995041328694971

`round(sqrt(A370808(n)/(n+1)))`
-/

namespace A125891.P11674995041328694971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt ((A370808 n : ℚ) / (n + 1 : ℚ) : ℝ))

end

end A125891.P11674995041328694971

/-! ## A125891.P13222853609340332459

`A178487(A103375(2*(n+2)))`
-/

namespace A125891.P13222853609340332459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178487 (A103375 (2 * (n + 2))).toNat

end

end A125891.P13222853609340332459

/-! ## A125891.P10630361150382757066

`A178487(A094983(n+1))`
-/

namespace A125891.P10630361150382757066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178487 (A094983 (n + 1)).toNat

end

end A125891.P10630361150382757066

/-! ## A125891.P13633167869958842315

`ceil(A325862(n)/A341912(n+3))`
-/

namespace A125891.P13633167869958842315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A325862 n : ℚ) / (A341912 (n + 3 + 15) : ℚ)⌉

end

end A125891.P13633167869958842315

/-!
# A125892: a(n) = floor((Pi^2/6)^n).

The programs for A125892, there is no canonical definition to state claims against.
-/

/-! ## A125892.P1698507775928311481

`A000006(or(A000129(n), A059906(n+3))+n)`
-/

namespace A125892.P1698507775928311481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000006 (Int.lor (A000129 n) (A059906 (n + 3)) + (n : ℤ)).toNat

end

end A125892.P1698507775928311481

/-! ## A125892.P17878200978064138001

`A293137(A114589(n))`
-/

namespace A125892.P17878200978064138001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293137 (A114589 n).toNat

end

end A125892.P17878200978064138001

/-! ## A125892.P6139923590413313739

`A172471(A288039(2*n)+A075255(n+3))`
-/

namespace A125892.P6139923590413313739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172471 (A288039 (2 * n) + A075255 (n + 3)).toNat

end

end A125892.P6139923590413313739

/-! ## A125892.P3009955062743109468

`A000196(Δ[round(exp(n-γ))])`
-/

namespace A125892.P3009955062743109468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.exp ((n : ℝ) - Real.eulerMascheroniConstant))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (f1 (n + 1) - f1 n).toNat

end

end A125892.P3009955062743109468

/-!
# A125893: a(n) = floor((Pi^4/90)^n).

The programs for A125893, there is no canonical definition to state claims against.
-/

/-! ## A125893.P141745209602473920

`floor(root(A231944(n+1), 64))`
-/

namespace A125893.P141745209602473920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A231944 (n + 1) : ℝ) ^ (1 / (64 : ℝ))⌋

end

end A125893.P141745209602473920

/-! ## A125893.P3000969189775026096

`floor(root(A091501(n), 5))`
-/

namespace A125893.P3000969189775026096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A091501 n : ℝ) ^ (1 / (5 : ℝ))⌋

end

end A125893.P3000969189775026096

/-! ## A125893.P12616557291934135180

`A048766(A240735(n+1))`
-/

namespace A125893.P12616557291934135180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (A240735 (n + 1)).toNat

end

end A125893.P12616557291934135180

/-! ## A125893.P8069937251633207758

`A319951(A255405(n+1))`
-/

namespace A125893.P8069937251633207758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319951 (A255405 (n + 1)).toNat

end

end A125893.P8069937251633207758

/-! ## A125893.P7658556113713428077

`A325678(A171962(n+1))`
-/

namespace A125893.P7658556113713428077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325678 (A171962 (n + 1)).toNat

end

end A125893.P7658556113713428077

/-!
# A125894: a(n) = floor(((1+sqrt(2))/2)^n).

The programs for A125894, the canonical program `A125894.P2436624022667056013` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A125894 has offset 1).

The definition of A125894 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 611 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A125894.P2436624022667056013

`floor(sqrt(((sqrt(2)+1)/2)²^(n+1)))`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A125894

/-- `floor(sqrt(((sqrt(2)+1)/2)²^(n+1)))` -/
def P2436624022667056013.Spec : Prop :=
  ∀ n, P2436624022667056013.a n = A125894 (n + 1)

theorem P2436624022667056013.correct : P2436624022667056013.Spec := by
  intro n
  simp only [A125894, Nat.add_sub_cancel]

end A125894

/-! ## A125894.P8896094751301923234

`A000007(n+1)+floor(A182780(n)/A000051(n))`
-/

namespace A125894.P8896094751301923234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) + ⌊(A182780 n : ℚ) / (A000051 n : ℚ)⌋

end

end A125894.P8896094751301923234

namespace A125894

/-- `A000007(n+1)+floor(A182780(n)/A000051(n))` -/
def P8896094751301923234.Spec : Prop :=
  ∀ n, P8896094751301923234.a n = A125894 (n + 1)

end A125894

/-! ## A125894.P7534880581960039614

`round(A175658(n)/∑[2^n])`
-/

namespace A125894.P7534880581960039614
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A175658 n : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ))

end

end A125894.P7534880581960039614

namespace A125894

/-- `round(A175658(n)/∑[2^n])` -/
def P7534880581960039614.Spec : Prop :=
  ∀ n, P7534880581960039614.a n = A125894 (n + 1)

end A125894

/-! ## A125894.P14544408822814516874

`A000027(floor(A182780(n)/A000051(n)))`
-/

namespace A125894.P14544408822814516874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 ⌊(A182780 n : ℚ) / (A000051 n : ℚ)⌋.toNat

end

end A125894.P14544408822814516874

namespace A125894

/-- `A000027(floor(A182780(n)/A000051(n)))` -/
def P14544408822814516874.Spec : Prop :=
  ∀ n, P14544408822814516874.a n = A125894 (n + 1)

end A125894

/-! ## A125894.P16306102424098387888

`A004526(2*floor(A182780(n)/A000051(n)))`
-/

namespace A125894.P16306102424098387888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (2 * ⌊(A182780 n : ℚ) / (A000051 n : ℚ)⌋).toNat

end

end A125894.P16306102424098387888

namespace A125894

/-- `A004526(2*floor(A182780(n)/A000051(n)))` -/
def P16306102424098387888.Spec : Prop :=
  ∀ n, P16306102424098387888.a n = A125894 (n + 1)

end A125894

/-!
# A125895: a(n) = floor(((1+sqrt(3))/2)^n).

The programs for A125895, the canonical program `A125895.P7718260025286219249` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A125895 has offset 1).

The definition of A125895 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 229 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A125895.P7718260025286219249

`floor(record[A080040(n)/A000051(n)])`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A125895

/-- `floor(record[A080040(n)/A000051(n)])` -/
def P7718260025286219249.Spec : Prop :=
  ∀ n, P7718260025286219249.a n = A125895 (n + 1)

theorem P7718260025286219249.correct : P7718260025286219249.Spec := by
  intro n
  simp only [A125895, Nat.add_sub_cancel]

end A125895

/-! ## A125895.P1864668600719361051

`ceil(A026150(n+1)/A000079(n)-A057427(n))`
-/

namespace A125895.P1864668600719361051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A026150 (n + 1) : ℚ) / (A000079 n : ℚ) - (A057427 n : ℚ)⌉

end

end A125895.P1864668600719361051

namespace A125895

/-- `ceil(A026150(n+1)/A000079(n)-A057427(n))` -/
def P1864668600719361051.Spec : Prop :=
  ∀ n, P1864668600719361051.a n = A125895 (n + 1)

end A125895

/-! ## A125895.P10443890432656771827

`ceil(A026150(n+1)/A000079(n)-A122458(2*n))`
-/

namespace A125895.P10443890432656771827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A026150 (n + 1) : ℚ) / (A000079 n : ℚ) - (A122458 (2 * n) : ℚ)⌉

end

end A125895.P10443890432656771827

namespace A125895

/-- `ceil(A026150(n+1)/A000079(n)-A122458(2*n))` -/
def P10443890432656771827.Spec : Prop :=
  ∀ n, P10443890432656771827.a n = A125895 (n + 1)

end A125895

/-! ## A125895.P9988357961527086881

`floor(A079935(n+1)/A152035(n))`
-/

namespace A125895.P9988357961527086881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A079935 (n + 1) : ℚ) / (A152035 n : ℚ)⌋

end

end A125895.P9988357961527086881

namespace A125895

/-- `floor(A079935(n+1)/A152035(n))` -/
def P9988357961527086881.Spec : Prop :=
  ∀ n, P9988357961527086881.a n = A125895 (n + 1)

end A125895

/-! ## A125895.P927452186132520723

`floor(A061278(n+1)/A028859(n))`
-/

namespace A125895.P927452186132520723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A061278 (n + 1) : ℚ) / (A028859 n : ℚ)⌋

end

end A125895.P927452186132520723

namespace A125895

/-- `floor(A061278(n+1)/A028859(n))` -/
def P927452186132520723.Spec : Prop :=
  ∀ n, P927452186132520723.a n = A125895 (n + 1)

end A125895

/-!
# A125896: Floor(((1+sqrt(7))/2)^n).

The programs for A125896, there is no canonical definition to state claims against.
-/

/-! ## A125896.P11596032586500501734

`floor(A287837(n)/A154244(n+1))`
-/

namespace A125896.P11596032586500501734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A287837 n : ℚ) / (A154244 (n + 1) : ℚ)⌋

end

end A125896.P11596032586500501734

/-! ## A125896.P3168519352544784028

`A083914(floor(7^(n/2)))+floor(11^(n/4))`
-/

namespace A125896.P3168519352544784028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083914 ⌊(7 : ℝ) ^ ((n : ℚ) / 2 : ℝ)⌋.toNat + ⌊(11 : ℝ) ^ ((n : ℚ) / 4 : ℝ)⌋

end

end A125896.P3168519352544784028

/-! ## A125896.P3389715407671323968

`A282355(A210322(n+1))+floor(11^(n/4))`
-/

namespace A125896.P3389715407671323968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282355 (A210322 (n + 1)).toNat + ⌊(11 : ℝ) ^ ((n : ℚ) / 4 : ℝ)⌋

end

end A125896.P3389715407671323968

/-! ## A125896.P15453960273251921844

`or(floor(11^(n/4)), A083914(A018063(2*n)))`
-/

namespace A125896.P15453960273251921844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ⌊(11 : ℝ) ^ ((n : ℚ) / 4 : ℝ)⌋ (A083914 (A018063 (2 * n)).toNat)

end

end A125896.P15453960273251921844

/-! ## A125896.P18034801556560514117

`A102726(n)+A000193(A000108(n))`
-/

namespace A125896.P18034801556560514117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102726 n + A000193 (A000108 n).toNat

end

end A125896.P18034801556560514117

/-!
# A125898: Floor((quadronacci ratio)^n).

The programs for A125898, there is no canonical definition to state claims against.
-/

/-! ## A125898.P10076421451879262418

`floor(sqrt(A192742(n+1)))`
-/

namespace A125898.P10076421451879262418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A192742 (n + 1))

end

end A125898.P10076421451879262418

/-! ## A125898.P17856055283671221745

`floor(sqrt(A001648(2*(n+1))))`
-/

namespace A125898.P17856055283671221745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A001648 (2 * (n + 1)))

end

end A125898.P17856055283671221745

/-! ## A125898.P444272228186564223

`floor(sqrt(A073817(2*(n+1))))`
-/

namespace A125898.P444272228186564223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A073817 (2 * (n + 1)))

end

end A125898.P444272228186564223

/-! ## A125898.P7864142756747178198

`floor(root(A073817(3*(n+1)), 3))`
-/

namespace A125898.P7864142756747178198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A073817 (3 * (n + 1)) : ℝ) ^ (1 / (3 : ℝ))⌋

end

end A125898.P7864142756747178198

/-! ## A125898.P2046719217344993892

`floor(A014610(2*n+1)/A014610(n))`
-/

namespace A125898.P2046719217344993892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A014610 (2 * n + 1) : ℚ) / (A014610 n : ℚ)⌋

end

end A125898.P2046719217344993892

/-!
# A125899: Floor((Pentanacci ratio)^n).

The programs for A125899, there is no canonical definition to state claims against.
-/

/-! ## A125899.P7561792502499201765

`floor(sqrt(A284699(n+1)))`
-/

namespace A125899.P7561792502499201765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A284699 (n + 1))

end

end A125899.P7561792502499201765

/-! ## A125899.P4139701823730106415

`floor(sqrt(A023424(2*n+1)))`
-/

namespace A125899.P4139701823730106415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A023424 (2 * n + 1))

end

end A125899.P4139701823730106415

/-! ## A125899.P9472998867182483322

`floor(sqrt(A074048(2*(n+1))))`
-/

namespace A125899.P9472998867182483322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A074048 (2 * (n + 1)))

end

end A125899.P9472998867182483322

/-! ## A125899.P14501575228112276141

`floor(root(A023424(3*n+2), 3))`
-/

namespace A125899.P14501575228112276141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A023424 (3 * n + 2) : ℝ) ^ (1 / (3 : ℝ))⌋

end

end A125899.P14501575228112276141

/-! ## A125899.P9627080170974118231

`ceil(sqrt(A023424(2*n+1))-A160338(n+1))`
-/

namespace A125899.P9627080170974118231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A023424 (2 * n + 1) : ℝ) - (A160338 (n + 1) : ℝ)⌉

end

end A125899.P9627080170974118231

