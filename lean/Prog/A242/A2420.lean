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
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C041
import Seq.B000.C043
import Seq.B000.C046
import Seq.B000.C049
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
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C002
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
# A242002: Sum_{k=1..n} (-1)^isprime(k)*2^k.

The programs for A242002, the canonical program `A242002.P8299068809405779655` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A242002 has offset 1).

The definition of A242002 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A242002.P11896175162704695062

`∑[(4*A005171(n+1)-2)*2^n]`
-/

namespace A242002.P11896175162704695062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * A005171 (n + 1) - 2) * (2 ^ n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A242002.P11896175162704695062

namespace A242002

/-- `∑[(4*A005171(n+1)-2)*2^n]` -/
def P11896175162704695062.Spec : Prop :=
  ∀ n, P11896175162704695062.a n = A242002 (n + 1)

end A242002

/-! ## A242002.P8299068809405779655

`∑[2^(n+1)*A065357(n+1)*A065357(n)]`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A242002

/-- `∑[2^(n+1)*A065357(n+1)*A065357(n)]` -/
def P8299068809405779655.Spec : Prop :=
  ∀ n, P8299068809405779655.a n = A242002 (n + 1)

theorem P8299068809405779655.correct : P8299068809405779655.Spec := by
  intro n
  simp only [A242002, Nat.add_sub_cancel]

end A242002

/-! ## A242002.P5816074230028951146

`∑[A008683(A089026(n+1))*A000079(n+1)]`
-/

namespace A242002.P5816074230028951146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A089026 (n + 1)).toNat * A000079 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A242002.P5816074230028951146

namespace A242002

/-- `∑[A008683(A089026(n+1))*A000079(n+1)]` -/
def P5816074230028951146.Spec : Prop :=
  ∀ n, P5816074230028951146.a n = A242002 (n + 1)

end A242002

/-! ## A242002.P16458092606744342948

`∑[A008683(A089026(n+1))*A171449(n+1)]`
-/

namespace A242002.P16458092606744342948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A089026 (n + 1)).toNat * A171449 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A242002.P16458092606744342948

namespace A242002

/-- `∑[A008683(A089026(n+1))*A171449(n+1)]` -/
def P16458092606744342948.Spec : Prop :=
  ∀ n, P16458092606744342948.a n = A242002 (n + 1)

end A242002

/-! ## A242002.P1532840980118142721

`∑[2^(n+1)*A034947(A318474(n+1)+1)]`
-/

namespace A242002.P1532840980118142721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) : ℤ) * A034947 (A318474 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A242002.P1532840980118142721

namespace A242002

/-- `∑[2^(n+1)*A034947(A318474(n+1)+1)]` -/
def P1532840980118142721.Spec : Prop :=
  ∀ n, P1532840980118142721.a n = A242002 (n + 1)

end A242002

/-!
# A242003: G.f. A(x) satisfies 2*A(x) = 1 + x + A(x*A(x)).

The programs for A242003, there is no canonical definition to state claims against.
-/

/-! ## A242003.P18214364001461131265

`A392378(∑[n+1]+n)`
-/

namespace A242003.P18214364001461131265
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392378 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A242003.P18214364001461131265

/-! ## A242003.P10279792387126484093

`or(1, A392378(A034856(n+1)))`
-/

namespace A242003.P10279792387126484093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A392378 (A034856 (n + 1)).toNat)

end

end A242003.P10279792387126484093

/-! ## A242003.P5316918446991377745

`A057354(A354413(n))+1`
-/

namespace A242003.P5316918446991377745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057354 (A354413 n).toNat + 1

end

end A242003.P5316918446991377745

/-!
# A242004: G.f. satisfies: 2*A(x) = 1 + x + A(x*A(x)^2).

The programs for A242004, there is no canonical definition to state claims against.
-/

/-! ## A242004.P15584051349964580492

`A268448(A000568(n))+A101334(n)`
-/

namespace A242004.P15584051349964580492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268448 (A000568 n).toNat + A101334 n

end

end A242004.P15584051349964580492

/-! ## A242004.P15628029508080785474

`A156253(A288693(n)+A178455(n))`
-/

namespace A242004.P15628029508080785474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156253 (A288693 n + A178455 n).toNat

end

end A242004.P15628029508080785474

/-!
# A242005: G.f. satisfies: 2*A(x) = 1 + x + A(x*A(x)^3).

The programs for A242005, there is no canonical definition to state claims against.
-/

/-! ## A242005.P1820123495335842278

`∏{p}[A323819(n), #]`
-/

namespace A242005.P1820123495335842278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323819 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A242005.P1820123495335842278

/-!
# A242006: G.f. satisfies: 2*A(x) = 1 + x + A(x*A(x)^4).

The programs for A242006, there is no canonical definition to state claims against.
-/

/-! ## A242006.P912961220711540348

`A285140((n-1)^(n+2)+n)`
-/

namespace A242006.P912961220711540348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285140 (((n : ℤ) - 1) ^ (n + 2) + (n : ℤ)).toNat

end

end A242006.P912961220711540348

/-!
# A242007: G.f. satisfies: A(x) = 1 - x + A(x)^3 - A(x*A(x)^3).

The programs for A242007, there is no canonical definition to state claims against.
-/

/-! ## A242007.P3813712573727597058

`A325702(ceil((n-1)*C(n, floor(n/2))/2)+n)`
-/

namespace A242007.P3813712573727597058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325702 (⌈(((n : ℤ) - 1) * (Nat.choose n ⌊(n : ℚ) / 2⌋.toNat : ℤ) : ℚ) / 2⌉ + (n : ℤ)).toNat

end

end A242007.P3813712573727597058

/-! ## A242007.P14051814965466684824

`A088455(A394241(n))`
-/

namespace A242007.P14051814965466684824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088455 (A394241 n).toNat

end

end A242007.P14051814965466684824

/-!
# A242008: G.f. satisfies: A(x) = 1 - x + A(x)^3 - A(x*A(x)^4).

The programs for A242008, there is no canonical definition to state claims against.
-/

/-! ## A242008.P16706662172173801262

`A355777(∑[n!])`
-/

namespace A242008.P16706662172173801262
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355777 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A242008.P16706662172173801262

/-!
# A242009: G.f. satisfies: A(x) = 1 - x + A(x)^3 - A(x*A(x)^5).

The programs for A242009, there is no canonical definition to state claims against.
-/

/-! ## A242009.P14331923797286806235

`A135877(3*(∑[n+2]-2))`
-/

namespace A242009.P14331923797286806235
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135877 (3 * (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 2)).toNat

end

end A242009.P14331923797286806235

/-!
# A242012: a(n) is the number of positive integers k <= n for which gpf(k^2 + 1) = gpf(n^2 + 1), where gpf is the greatest prime divisor.

The programs for A242012, there is no canonical definition to state claims against.
-/

/-! ## A242012.P9210303525372490768

`A064066(A252890(n+1))%A122320(n+5)`
-/

namespace A242012.P9210303525372490768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A064066 (A252890 (n + 1)).toNat) (A122320 (n + 5))

end

end A242012.P9210303525372490768

/-! ## A242012.P5054655985675888028

`A064066(A252890(n+1))+A000007(A122320(n+5)+1)`
-/

namespace A242012.P5054655985675888028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064066 (A252890 (n + 1)).toNat + A000007 (A122320 (n + 5) + 1).toNat

end

end A242012.P5054655985675888028

/-! ## A242012.P13261550843602432429

`A064066(A252890(n+1))+A000122(A082450(n))`
-/

namespace A242012.P13261550843602432429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064066 (A252890 (n + 1)).toNat + A000122 (A082450 n).toNat

end

end A242012.P13261550843602432429

/-! ## A242012.P15579559426109666042

`A138045(A105769(n+1))+A064066(A252890(n+1))`
-/

namespace A242012.P15579559426109666042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138045 (A105769 (n + 1)).toNat + A064066 (A252890 (n + 1)).toNat

end

end A242012.P15579559426109666042

/-! ## A242012.P5169732814009539048

`A064066(A252890(n+1))*A089128(A105769(n+5))`
-/

namespace A242012.P5169732814009539048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064066 (A252890 (n + 1)).toNat * A089128 (A105769 (n + 5)).toNat

end

end A242012.P5169732814009539048

/-! ## A242012.P4474586400099392837

`A138045(A324698(n+1))+A064066(A252890(n+1))`
-/

namespace A242012.P4474586400099392837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138045 (A324698 (n + 1)).toNat + A064066 (A252890 (n + 1)).toNat

end

end A242012.P4474586400099392837

/-! ## A242012.P10187218307181830504

`A083399(A252890(n+1)!)`
-/

namespace A242012.P10187218307181830504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083399 (Nat.factorial (A252890 (n + 1)).toNat)

end

end A242012.P10187218307181830504

/-! ## A242012.P16222259657583025664

`A008683(A323503(12*n))*A064066(A252890(n+1))`
-/

namespace A242012.P16222259657583025664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A323503 (12 * n)).toNat * A064066 (A252890 (n + 1)).toNat

end

end A242012.P16222259657583025664

/-!
# A242014: Where record values occur in A005210.

The programs for A242014, there is no canonical definition to state claims against.
-/

/-! ## A242014.P5074616058610649066

`A051203(A005211(n+1))`
-/

namespace A242014.P5074616058610649066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051203 (A005211 (n + 1)).toNat

end

end A242014.P5074616058610649066

/-! ## A242014.P739041949307963162

`A051203(record[A005210(n+1)])`
-/

namespace A242014.P739041949307963162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005210 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051203 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A242014.P739041949307963162

/-!
# A242016: Smallest prime factor of A135972(n), the n-th composite Mersenne number.

The programs for A242016, there is no canonical definition to state claims against.
-/

/-! ## A242016.P11622817797701759386

`A049479(A045762(n+3))`
-/

namespace A242016.P11622817797701759386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049479 (A045762 (n + 3)).toNat

end

end A242016.P11622817797701759386

/-! ## A242016.P2160529311341669113

`A049479(lt[1, A046800(n)])`
-/

namespace A242016.P2160529311341669113
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046800 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049479 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A242016.P2160529311341669113

/-! ## A242016.P2944776633093351597

`A049479(comp[A153798(n+1)]+2)`
-/

namespace A242016.P2944776633093351597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153798 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049479 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 2)

end

end A242016.P2944776633093351597

/-! ## A242016.P6905628435590897664

`p?[A049479(n+2)%A126646(n)]`
-/

namespace A242016.P6905628435590897664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A049479 (n + 2)) (A126646 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A242016.P6905628435590897664

/-! ## A242016.P8592647684411918071

`p?[A049479(n+3)%A005420(n+3)]`
-/

namespace A242016.P8592647684411918071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A049479 (n + 3)) (A005420 (n + 3))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A242016.P8592647684411918071

/-! ## A242016.P895638155055768485

`p?[A049479(A233583(n+1))%A255047(n)]`
-/

namespace A242016.P895638155055768485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A049479 (A233583 (n + 1)).toNat) (A255047 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A242016.P895638155055768485

/-!
# A242017: Smallest prime factor of composites in the sequence A000051(n) = 2^n+1.

The programs for A242017, there is no canonical definition to state claims against.
-/

/-! ## A242017.P14525992626723589622

`p?[A002586(n+1)%A000079(n)]`
-/

namespace A242017.P14525992626723589622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002586 (n + 1)) (A000079 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A242017.P14525992626723589622

/-! ## A242017.P5003327918673236465

`p?[A002586(n+2)%A298311(n)]`
-/

namespace A242017.P5003327918673236465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002586 (n + 2)) (A298311 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A242017.P5003327918673236465

/-! ## A242017.P818357127957126353

`p?[and(A000225(n), A002586(n+1))]`
-/

namespace A242017.P818357127957126353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000225 n) (A002586 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A242017.P818357127957126353

/-! ## A242017.P3231053861556338121

`p?[and(A002586(n+1), A126646(n))]`
-/

namespace A242017.P3231053861556338121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A002586 (n + 1)) (A126646 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A242017.P3231053861556338121

/-! ## A242017.P11396155862974325710

`p?[A260218(2*(n+1))%A090587(n)]`
-/

namespace A242017.P11396155862974325710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A260218 (2 * (n + 1))) (A090587 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A242017.P11396155862974325710

/-! ## A242017.P13040298870495232054

`p?[and(A000225(n), A260218(2*(n+1)))]`
-/

namespace A242017.P13040298870495232054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000225 n) (A260218 (2 * (n + 1)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A242017.P13040298870495232054

/-! ## A242017.P3872590164428610174

`p?[A260218(A103517(n))%A022095(n)]`
-/

namespace A242017.P3872590164428610174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A260218 (A103517 n).toNat) (A022095 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A242017.P3872590164428610174

/-!
# A242018: Starting with a(0) = 0, a(1) = 0, a(2) = 1, repeatedly append to this sequence the last half of the currently-existing terms, taking the longer half if there are an odd number of terms.

The programs for A242018, there is no canonical definition to state claims against.
-/

/-! ## A242018.P13192850664138964758

`A338353(A064413(n+1)*A111037(n))`
-/

namespace A242018.P13192850664138964758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338353 (A064413 (n + 1) * A111037 n).toNat

end

end A242018.P13192850664138964758

/-! ## A242018.P14764011441264275975

`A011602(A333354(n+1)%A293444(n+1))`
-/

namespace A242018.P14764011441264275975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011602 (Int.tmod (A333354 (n + 1)) (A293444 (n + 1))).toNat

end

end A242018.P14764011441264275975

/-! ## A242018.P13521208029220575308

`p?[A254858(A254858(n))]²%3`
-/

namespace A242018.P13521208029220575308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254858 (A254858 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) ^ 2) 3

end

end A242018.P13521208029220575308

/-! ## A242018.P16058609814180412664

`A261029(p?[A254858(A254858(n))])`
-/

namespace A242018.P16058609814180412664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254858 (A254858 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261029 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A242018.P16058609814180412664

/-! ## A242018.P8970327893076240981

`A267587(p?[A254858(A254858(n))])`
-/

namespace A242018.P8970327893076240981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254858 (A254858 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267587 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A242018.P8970327893076240981

/-!
# A242020: Smallest index at which A242018 contains a run of n consecutive 1s.

The programs for A242020, there is no canonical definition to state claims against.
-/

/-! ## A242020.P14553742178449807403

`A006999(A005203(n)+2)`
-/

namespace A242020.P14553742178449807403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006999 (A005203 n + 2).toNat

end

end A242020.P14553742178449807403

/-!
# A242025: Primes of the form R = 2^k-1+(2^k-2)/(2^(p-k)-1), where p are Mersenne prime exponents listed in A000043.

The programs for A242025, there is no canonical definition to state claims against.
-/

/-! ## A242025.P13404496604332195967

`A166333(8*A031973(n))`
-/

namespace A242025.P13404496604332195967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166333 (8 * A031973 n).toNat

end

end A242025.P13404496604332195967

/-!
# A242026: Number of non-palindromic n-tuples of 4 distinct elements.

The programs for A242026, the canonical program `A242026.P3133462716055762519` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A242026 has offset 1).

The definition of A242026 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A242026.P9655147724392813531

`ogf(12x/(1-4x-4x^2+16x^3))`
-/

namespace A242026.P9655147724392813531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 12] [1, -4, -4, 16] n

end

end A242026.P9655147724392813531

namespace A242026

/-- `ogf(12x/(1-4x-4x^2+16x^3))` -/
def P9655147724392813531.Spec : Prop :=
  ∀ n, P9655147724392813531.a n = A242026 (n + 1)

end A242026

/-! ## A242026.P3133462716055762519

`4^(n+1)-4^ceil((n+1)/2)`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A242026

/-- `4^(n+1)-4^ceil((n+1)/2)` -/
def P3133462716055762519.Spec : Prop :=
  ∀ n, P3133462716055762519.a n = (A242026 (n + 1) : ℚ)

end A242026

/-! ## A242026.P7452297813093354678

`(2^(n+1)-gcd(2, n))*2^(n+1)`
-/

namespace A242026.P7452297813093354678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 ^ (n + 1) : ℤ) - (Nat.gcd 2 n : ℤ)) * (2 ^ (n + 1) : ℤ)

end

end A242026.P7452297813093354678

namespace A242026

/-- `(2^(n+1)-gcd(2, n))*2^(n+1)` -/
def P7452297813093354678.Spec : Prop :=
  ∀ n, P7452297813093354678.a n = A242026 (n + 1)

end A242026

/-! ## A242026.P9691192885788837859

`(or(n, -2)+2^(n+1))*2^(n+1)`
-/

namespace A242026.P9691192885788837859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.lor (n : ℤ) (-2) + (2 ^ (n + 1) : ℤ)) * (2 ^ (n + 1) : ℤ)

end

end A242026.P9691192885788837859

namespace A242026

/-- `(or(n, -2)+2^(n+1))*2^(n+1)` -/
def P9691192885788837859.Spec : Prop :=
  ∀ n, P9691192885788837859.a n = A242026 (n + 1)

end A242026

/-! ## A242026.P366015467914616408

`(2^(n+1)-(2-n%2))*2^(n+1)`
-/

namespace A242026.P366015467914616408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 ^ (n + 1) : ℤ) - (2 - ((n % 2 : ℕ) : ℤ))) * (2 ^ (n + 1) : ℤ)

end

end A242026.P366015467914616408

namespace A242026

/-- `(2^(n+1)-(2-n%2))*2^(n+1)` -/
def P366015467914616408.Spec : Prop :=
  ∀ n, P366015467914616408.a n = A242026 (n + 1)

end A242026

/-! ## A242026.P2931239601337952578

`(2^(n+1)-(2-and(1, n)))*2^(n+1)`
-/

namespace A242026.P2931239601337952578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 ^ (n + 1) : ℤ) - (2 - (Nat.land 1 n : ℤ))) * (2 ^ (n + 1) : ℤ)

end

end A242026.P2931239601337952578

namespace A242026

/-- `(2^(n+1)-(2-and(1, n)))*2^(n+1)` -/
def P2931239601337952578.Spec : Prop :=
  ∀ n, P2931239601337952578.a n = A242026 (n + 1)

end A242026

/-! ## A242026.P12632536464112936118

`record[Δ[A278445(n)]]`
-/

namespace A242026.P12632536464112936118
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278445 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A242026.P12632536464112936118

namespace A242026

/-- `record[Δ[A278445(n)]]` -/
def P12632536464112936118.Spec : Prop :=
  ∀ n, P12632536464112936118.a n = A242026 (n + 1)

end A242026

/-! ## A242026.P20791626451563137

`2^n*A014131(n)`
-/

namespace A242026.P20791626451563137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A014131 n

end

end A242026.P20791626451563137

namespace A242026

/-- `2^n*A014131(n)` -/
def P20791626451563137.Spec : Prop :=
  ∀ n, P20791626451563137.a n = A242026 (n + 1)

end A242026

/-! ## A242026.P7710178672225257117

`6*2^n*A000975(n)`
-/

namespace A242026.P7710178672225257117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * ((2 ^ n : ℤ) * A000975 n)

end

end A242026.P7710178672225257117

namespace A242026

/-- `6*2^n*A000975(n)` -/
def P7710178672225257117.Spec : Prop :=
  ∀ n, P7710178672225257117.a n = A242026 (n + 1)

end A242026

/-! ## A242026.P12243589241758592472

`6*2^n*∑[A001045(n)]`
-/

namespace A242026.P12243589241758592472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (6 * 2 ^ n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A242026.P12243589241758592472

namespace A242026

/-- `6*2^n*∑[A001045(n)]` -/
def P12243589241758592472.Spec : Prop :=
  ∀ n, P12243589241758592472.a n = A242026 (n + 1)

end A242026

/-! ## A242026.P880371243118241946

`2^(n+1)*A141023(n+1)`
-/

namespace A242026.P880371243118241946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) : ℤ) * A141023 (n + 1)

end

end A242026.P880371243118241946

namespace A242026

/-- `2^(n+1)*A141023(n+1)` -/
def P880371243118241946.Spec : Prop :=
  ∀ n, P880371243118241946.a n = A242026 (n + 1)

end A242026

/-! ## A242026.P9210317975167073738

`xor(2*a(n-1), A028403(n+1))` with `a(0)=0`
-/

namespace A242026.P9210317975167073738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  Int.xor (2 * a (n - 1)) (A028403 (n + 1))

end

end A242026.P9210317975167073738

namespace A242026

/-- `xor(2*a(n-1), A028403(n+1))` -/
def P9210317975167073738.Spec : Prop :=
  ∀ n, P9210317975167073738.a n = A242026 (n + 1)

end A242026

/-! ## A242026.P8694488007561534242

`A014131(n)*A155559(n)`
-/

namespace A242026.P8694488007561534242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014131 n * A155559 n

end

end A242026.P8694488007561534242

namespace A242026

/-- `A014131(n)*A155559(n)` -/
def P8694488007561534242.Spec : Prop :=
  ∀ n, P8694488007561534242.a n = A242026 (n + 1)

end A242026

/-! ## A242026.P13056704539042283516

`A014131(n)*A171449(n)`
-/

namespace A242026.P13056704539042283516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014131 n * A171449 n

end

end A242026.P13056704539042283516

namespace A242026

/-- `A014131(n)*A171449(n)` -/
def P13056704539042283516.Spec : Prop :=
  ∀ n, P13056704539042283516.a n = A242026 (n + 1)

end A242026

/-! ## A242026.P12897293162909696905

`A014131(n)*A171559(n)`
-/

namespace A242026.P12897293162909696905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014131 n * A171559 n

end

end A242026.P12897293162909696905

namespace A242026

/-- `A014131(n)*A171559(n)` -/
def P12897293162909696905.Spec : Prop :=
  ∀ n, P12897293162909696905.a n = A242026 (n + 1)

end A242026

/-! ## A242026.P9484857987309489962

`xor(A098646(n), A171499(n))`
-/

namespace A242026.P9484857987309489962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A098646 n) (A171499 n)

end

end A242026.P9484857987309489962

namespace A242026

/-- `xor(A098646(n), A171499(n))` -/
def P9484857987309489962.Spec : Prop :=
  ∀ n, P9484857987309489962.a n = A242026 (n + 1)

end A242026

/-! ## A242026.P14724320917458126863

`A000975(n)*A007283(n+1)`
-/

namespace A242026.P14724320917458126863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000975 n * A007283 (n + 1)

end

end A242026.P14724320917458126863

namespace A242026

/-- `A000975(n)*A007283(n+1)` -/
def P14724320917458126863.Spec : Prop :=
  ∀ n, P14724320917458126863.a n = A242026 (n + 1)

end A242026

/-! ## A242026.P12947305649209030671

`A000975(n)*A091629(n+1)`
-/

namespace A242026.P12947305649209030671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000975 n * A091629 (n + 1)

end

end A242026.P12947305649209030671

namespace A242026

/-- `A000975(n)*A091629(n+1)` -/
def P12947305649209030671.Spec : Prop :=
  ∀ n, P12947305649209030671.a n = A242026 (n + 1)

end A242026

/-! ## A242026.P8624608055327552363

`A000975(n)*A003945(n+2)`
-/

namespace A242026.P8624608055327552363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000975 n * A003945 (n + 2)

end

end A242026.P8624608055327552363

namespace A242026

/-- `A000975(n)*A003945(n+2)` -/
def P8624608055327552363.Spec : Prop :=
  ∀ n, P8624608055327552363.a n = A242026 (n + 1)

end A242026

/-! ## A242026.P4085084244483760778

`A000975(n)*A042950(n+2)`
-/

namespace A242026.P4085084244483760778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000975 n * A042950 (n + 2)

end

end A242026.P4085084244483760778

namespace A242026

/-- `A000975(n)*A042950(n+2)` -/
def P4085084244483760778.Spec : Prop :=
  ∀ n, P4085084244483760778.a n = A242026 (n + 1)

end A242026

/-!
# A242028: Numbers k such that the least common multiple of the anti-divisors of k is less than k.

The programs for A242028, there is no canonical definition to state claims against.
-/

/-! ## A242028.P8360958172091739771

`∩[A002473(n+1), A192286(n+1)]`
-/

namespace A242028.P8360958172091739771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002473 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192286 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A242028.P8360958172091739771

/-! ## A242028.P15080974998377711335

`∩[A003586(n+1), A192286(n+1)]`
-/

namespace A242028.P15080974998377711335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003586 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192286 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A242028.P15080974998377711335

/-! ## A242028.P4843414734727330178

`∩[A051037(n+1), A192286(n+1)]`
-/

namespace A242028.P4843414734727330178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051037 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192286 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A242028.P4843414734727330178

/-! ## A242028.P10382771304003794854

`∩[A051038(n+1), A192286(n+1)]`
-/

namespace A242028.P10382771304003794854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051038 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192286 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A242028.P10382771304003794854

/-! ## A242028.P17884830894336113922

`∩[A068095(n+1), A192286(n+1)]`
-/

namespace A242028.P17884830894336113922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068095 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192286 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A242028.P17884830894336113922

/-!
# A242029: Number of anti-divisors m <= n of n that are coprime to n.

The programs for A242029, there is no canonical definition to state claims against.
-/

/-! ## A242029.P9478624766034158322

`A066272(n+1)-A111775(n+1)`
-/

namespace A242029.P9478624766034158322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066272 (n + 1) - A111775 (n + 1)

end

end A242029.P9478624766034158322

/-! ## A242029.P2723131138170194997

`A066241(n+1)-(A111775(n+1)+1)`
-/

namespace A242029.P2723131138170194997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066241 (n + 1) - (A111775 (n + 1) + 1)

end

end A242029.P2723131138170194997

/-! ## A242029.P1441116744897428735

`A023443(A066241(n+1)-A111775(n+1))`
-/

namespace A242029.P1441116744897428735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A066241 (n + 1) - A111775 (n + 1)).toNat

end

end A242029.P1441116744897428735

/-! ## A242029.P5683040271186066102

`A066272(n+1)+A040001(n)-A001227(n+1)`
-/

namespace A242029.P5683040271186066102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066272 (n + 1) + (A040001 n - A001227 (n + 1))

end

end A242029.P5683040271186066102

/-! ## A242029.P16057458033592419241

`A066272(n+1)+A057428(n)*A111775(n+1)`
-/

namespace A242029.P16057458033592419241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066272 (n + 1) + A057428 n * A111775 (n + 1)

end

end A242029.P16057458033592419241

/-! ## A242029.P7805850990489889486

`A214270(n+1)-(A111775(n+1)+Δ[A248517(n)])`
-/

namespace A242029.P7805850990489889486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248517 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214270 (n + 1) - (A111775 (n + 1) + (f1 (n + 1) - f1 n))

end

end A242029.P7805850990489889486

/-! ## A242029.P5742871112044374972

`A218767(n+1)-(A111775(n+1)+A000005(n+1))`
-/

namespace A242029.P5742871112044374972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218767 (n + 1) - (A111775 (n + 1) + A000005 (n + 1))

end

end A242029.P5742871112044374972

/-! ## A242029.P8909133862880168834

`A214270(n+1)-(A111775(n+1)+A032741(A064989(n+1)))`
-/

namespace A242029.P8909133862880168834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214270 (n + 1) - (A111775 (n + 1) + A032741 (A064989 (n + 1)).toNat)

end

end A242029.P8909133862880168834

/-!
# A242031: Numbers n such that prime factorization n = p_1^k_1*p_2^k_2*...*p_r^k_r satisfies k_1 >= k_2 >= ... >= k_r.

The programs for A242031, there is no canonical definition to state claims against.
-/

/-! ## A242031.P15099850992213660458

`record[A089247(n+1)]`
-/

namespace A242031.P15099850992213660458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089247 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A242031.P15099850992213660458

/-! ## A242031.P2117469397482073825

`eq[n, A089247(A028310(n))]`
-/

namespace A242031.P2117469397482073825
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089247 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A242031.P2117469397482073825

/-! ## A242031.P16283754415086452927

`A089247(lt[n, A089247(n+1)]+1)`
-/

namespace A242031.P16283754415086452927
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089247 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089247 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A242031.P16283754415086452927

/-! ## A242031.P17377669605587003912

`A089247(eq[n+1, A089247(n+1)]+1)`
-/

namespace A242031.P17377669605587003912
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089247 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089247 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A242031.P17377669605587003912

/-! ## A242031.P4492988909965661607

`eq[A001222(n+1), A001222(A083260(n+1))]+1`
-/

namespace A242031.P4492988909965661607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A083260 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A242031.P4492988909965661607

/-! ## A242031.P7518489616610425870

`eq[A071364(n+1), A181821(A181819(n+1))]+1`
-/

namespace A242031.P7518489616610425870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071364 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181821 (A181819 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A242031.P7518489616610425870

/-! ## A242031.P10610156499299358381

`eq[n, A089247(A065033(2*n))]`
-/

namespace A242031.P10610156499299358381
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089247 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A242031.P10610156499299358381

/-! ## A242031.P16033121578516487062

`record[A069799(A085079(n+1))]`
-/

namespace A242031.P16033121578516487062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069799 (A085079 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A242031.P16033121578516487062

/-!
# A242032: A sequence related to lower bounds for the number of distinct differentiable structures on spheres of the form S^(4*k-1).

The programs for A242032, there is no canonical definition to state claims against.
-/

/-! ## A242032.P4184021413584811407

`A036280(n)+char[1-n²]`
-/

namespace A242032.P4184021413584811407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (n ^ 2 : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036280 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A242032.P4184021413584811407

/-! ## A242032.P859298298849754698

`A151935(A004526(n))+A036280(n)`
-/

namespace A242032.P859298298849754698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151935 (A004526 n).toNat + A036280 n

end

end A242032.P859298298849754698

/-! ## A242032.P16311817389449895396

`A192687(A000217(n))+A036280(n)`
-/

namespace A242032.P16311817389449895396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192687 (A000217 n).toNat + A036280 n

end

end A242032.P16311817389449895396

/-! ## A242032.P4801045827690023233

`A014963(A072542(n+1))*A036280(n)`
-/

namespace A242032.P4801045827690023233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A072542 (n + 1)).toNat * A036280 n

end

end A242032.P4801045827690023233

/-! ## A242032.P4792526950303246681

`lcm(A036280(n), A240978(n))`
-/

namespace A242032.P4792526950303246681
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A036280 n) (A240978 n)

end

end A242032.P4792526950303246681

/-!
# A242033: a(n) = lpf(A245024(n)-1), where lpf = least prime factor (A020639).

The programs for A242033, the canonical program `A242033.P11155872589773689641` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A242033 has offset 1).

The definition of A242033 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A020639, A245024, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A242033.P11155872589773689641

`A020639(A245024(n+1)-1)`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A242033

/-- `A020639(A245024(n+1)-1)` -/
def P11155872589773689641.Spec : Prop :=
  ∀ n, P11155872589773689641.a n = A242033 (n + 1)

theorem P11155872589773689641.correct : P11155872589773689641.Spec := by
  intro n
  simp only [A242033, Nat.add_sub_cancel]

end A242033

/-! ## A242033.P2556120252108407229

`A020639(lt[A020639(n+3), A020639(n+1)]+3)`
-/

namespace A242033.P2556120252108407229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 3)

end

end A242033.P2556120252108407229

namespace A242033

/-- `A020639(lt[A020639(n+3), A020639(n+1)]+3)` -/
def P2556120252108407229.Spec : Prop :=
  ∀ n, P2556120252108407229.a n = A242033 (n + 1)

end A242033

/-! ## A242033.P9148082283912858012

`A074828(A245024(n+1)-1)`
-/

namespace A242033.P9148082283912858012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074828 (A245024 (n + 1) - 1).toNat

end

end A242033.P9148082283912858012

namespace A242033

/-- `A074828(A245024(n+1)-1)` -/
def P9148082283912858012.Spec : Prop :=
  ∀ n, P9148082283912858012.a n = A242033 (n + 1)

end A242033

/-! ## A242033.P5821495865209743016

`A063918(A245024(n+1)-1)`
-/

namespace A242033.P5821495865209743016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063918 (A245024 (n + 1) - 1).toNat

end

end A242033.P5821495865209743016

namespace A242033

/-- `A063918(A245024(n+1)-1)` -/
def P5821495865209743016.Spec : Prop :=
  ∀ n, P5821495865209743016.a n = A242033 (n + 1)

end A242033

/-! ## A242033.P298498141689311559

`A078701(A245024(n+1)-1)`
-/

namespace A242033.P298498141689311559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078701 (A245024 (n + 1) - 1).toNat

end

end A242033.P298498141689311559

namespace A242033

/-- `A078701(A245024(n+1)-1)` -/
def P298498141689311559.Spec : Prop :=
  ∀ n, P298498141689311559.a n = A242033 (n + 1)

end A242033

/-! ## A242033.P14100022900077450879

`A090369(A245024(n+1)-1)`
-/

namespace A242033.P14100022900077450879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090369 (A245024 (n + 1) - 1).toNat

end

end A242033.P14100022900077450879

namespace A242033

/-- `A090369(A245024(n+1)-1)` -/
def P14100022900077450879.Spec : Prop :=
  ∀ n, P14100022900077450879.a n = A242033 (n + 1)

end A242033

/-! ## A242033.P1332266961021297839

`A090368(A173977(n+1))`
-/

namespace A242033.P1332266961021297839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090368 (A173977 (n + 1)).toNat

end

end A242033.P1332266961021297839

namespace A242033

/-- `A090368(A173977(n+1))` -/
def P1332266961021297839.Spec : Prop :=
  ∀ n, P1332266961021297839.a n = A242033 (n + 1)

end A242033

/-!
# A242034: a(n) = lpf(A243937(n)-3), where lpf = least prime factor (A020639).

The programs for A242034, the canonical program `A242034.P4270946294743915057` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A242034 has offset 1).

The definition of A242034 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A020639, A243937, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A242034.P4270946294743915057

`A020639(A243937(n+1)-3)`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A242034

/-- `A020639(A243937(n+1)-3)` -/
def P4270946294743915057.Spec : Prop :=
  ∀ n, P4270946294743915057.a n = A242034 (n + 1)

theorem P4270946294743915057.correct : P4270946294743915057.Spec := by
  intro n
  simp only [A242034, Nat.add_sub_cancel]

end A242034

/-! ## A242034.P7243476596658929974

`A020639(lt[(n-A020639(n+2))/2+1, A175126(n)])`
-/

namespace A242034.P7243476596658929974
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - A020639 (n + 2) : ℚ) / 2 + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175126 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n)

end

end A242034.P7243476596658929974

namespace A242034

/-- `A020639(lt[(n-A020639(n+2))/2+1, A175126(n)])` -/
def P7243476596658929974.Spec : Prop :=
  ∀ n, P7243476596658929974.a n = A242034 (n + 1)

end A242034

/-! ## A242034.P760648163490980623

`A092028(A243937(n+1)-2)`
-/

namespace A242034.P760648163490980623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092028 (A243937 (n + 1) - 2).toNat

end

end A242034.P760648163490980623

namespace A242034

/-- `A092028(A243937(n+1)-2)` -/
def P760648163490980623.Spec : Prop :=
  ∀ n, P760648163490980623.a n = A242034 (n + 1)

end A242034

/-! ## A242034.P17444987631758494588

`A078701(A243937(n+1)-3)`
-/

namespace A242034.P17444987631758494588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078701 (A243937 (n + 1) - 3).toNat

end

end A242034.P17444987631758494588

namespace A242034

/-- `A078701(A243937(n+1)-3)` -/
def P17444987631758494588.Spec : Prop :=
  ∀ n, P17444987631758494588.a n = A242034 (n + 1)

end A242034

/-! ## A242034.P8137782063338299899

`A090369(A243937(n+1)-3)`
-/

namespace A242034.P8137782063338299899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090369 (A243937 (n + 1) - 3).toNat

end

end A242034.P8137782063338299899

namespace A242034

/-- `A090369(A243937(n+1)-3)` -/
def P8137782063338299899.Spec : Prop :=
  ∀ n, P8137782063338299899.a n = A242034 (n + 1)

end A242034

/-! ## A242034.P8627808779542644804

`A014963(A028233(A243937(n+1)-3))`
-/

namespace A242034.P8627808779542644804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A028233 (A243937 (n + 1) - 3).toNat).toNat

end

end A242034.P8627808779542644804

namespace A242034

/-- `A014963(A028233(A243937(n+1)-3))` -/
def P8627808779542644804.Spec : Prop :=
  ∀ n, P8627808779542644804.a n = A242034 (n + 1)

end A242034

/-! ## A242034.P17180978111442399131

`p?[gcd(n, A020639(A085046(n+1)))]`
-/

namespace A242034.P17180978111442399131
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A020639 (A085046 (n + 1)).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A242034.P17180978111442399131

namespace A242034

/-- `p?[gcd(n, A020639(A085046(n+1)))]` -/
def P17180978111442399131.Spec : Prop :=
  ∀ n, (P17180978111442399131.a n : ℤ) = A242034 (n + 1)

end A242034

/-! ## A242034.P8390127880127264799

`p?[A020639(A085046(n+1))%A020639(n+2)]`
-/

namespace A242034.P8390127880127264799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A020639 (A085046 (n + 1)).toNat) (A020639 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A242034.P8390127880127264799

namespace A242034

/-- `p?[A020639(A085046(n+1))%A020639(n+2)]` -/
def P8390127880127264799.Spec : Prop :=
  ∀ n, P8390127880127264799.a n = A242034 (n + 1)

end A242034

/-!
# A242035: The numerator of h(n-k)*h(k)/h(n) where h(x) = zeta(2*x)*(4^x-2) and k = floor(n/2).

The programs for A242035, there is no canonical definition to state claims against.
-/

/-! ## A242035.P12617246312072022915

`A246051(∑[n%2+n])`
-/

namespace A242035.P12617246312072022915
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246051 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A242035.P12617246312072022915

/-! ## A242035.P9976676157158267851

`A246051(2*∑[∑[and(1, n)]])`
-/

namespace A242035.P9976676157158267851
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246051 (2 * (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A242035.P9976676157158267851

/-! ## A242035.P7079177125224828741

`A246051(∑[n]+floor(n/2))`
-/

namespace A242035.P7079177125224828741
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246051 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + ⌊(n : ℚ) / 2⌋).toNat

end

end A242035.P7079177125224828741

/-!
# A242038: Integer part of square root of A010809(n) = n^21.

The programs for A242038, the canonical program `A242038.P2773880921831297533` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A242038 has offset 0).

The definition of A242038 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A242038.P2773880921831297533

`floor(sqrt(n^21))`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A242038

/-- `floor(sqrt(n^21))` -/
def P2773880921831297533.Spec : Prop :=
  ∀ n, (P2773880921831297533.a n : ℤ) = A242038 n

theorem P2773880921831297533.correct : P2773880921831297533.Spec := by
  intro n
  simp only [A242038]

end A242038

/-! ## A242038.P9731346891222135331

`A155014(n^3)`
-/

namespace A242038.P9731346891222135331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155014 (n ^ 3)

end

end A242038.P9731346891222135331

namespace A242038

/-- `A155014(n^3)` -/
def P9731346891222135331.Spec : Prop :=
  ∀ n, P9731346891222135331.a n = A242038 n

theorem P9731346891222135331.correct : P9731346891222135331.Spec := by
  intro n
  simp only [A242038, Nat.add_sub_cancel, A242038.P9731346891222135331.a, A242038.P2773880921831297533.a, A155014, A155014.P11135767582627579295.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A242038

/-! ## A242038.P6459746432339832802

`record[A155014(A118880(n))]`
-/

namespace A242038.P6459746432339832802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155014 (A118880 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A242038.P6459746432339832802

namespace A242038

/-- `record[A155014(A118880(n))]` -/
def P6459746432339832802.Spec : Prop :=
  ∀ n, P6459746432339832802.a n = A242038 n

end A242038

/-! ## A242038.P4659138889114368229

`and(-1, A155014(A000578(n)))`
-/

namespace A242038.P4659138889114368229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A155014 (A000578 n).toNat)

end

end A242038.P4659138889114368229

namespace A242038

/-- `and(-1, A155014(A000578(n)))` -/
def P4659138889114368229.Spec : Prop :=
  ∀ n, P4659138889114368229.a n = A242038 n

end A242038

/-! ## A242038.P5387347736786069106

`A155014(A000578(n))+A066035(n)`
-/

namespace A242038.P5387347736786069106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155014 (A000578 n).toNat + A066035 n

end

end A242038.P5387347736786069106

namespace A242038

/-- `A155014(A000578(n))+A066035(n)` -/
def P5387347736786069106.Spec : Prop :=
  ∀ n, P5387347736786069106.a n = A242038 n

end A242038

/-!
# A242040: Numbers n such that n + k! and n - k! are both prime for some k.

The programs for A242040, there is no canonical definition to state claims against.
-/

/-! ## A242040.P3717301971926381127

`eq[1, A000010(a(A245716(n)))]` with `a(0)=3`
-/

namespace A242040.P3717301971926381127
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f2 =>
  A000010 (f2 (A245716 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A242040.P3717301971926381127

/-! ## A242040.P11903633684183274390

`eq[1, A000045(a(A245716(n)))]` with `a(0)=3`
-/

namespace A242040.P11903633684183274390
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f2 =>
  A000045 (f2 (A245716 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A242040.P11903633684183274390

/-! ## A242040.P8480538570932254423

`eq[1, A007318(a(A245716(n)))]` with `a(0)=4`
-/

namespace A242040.P8480538570932254423
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [4] fun n f2 =>
  A007318 (f2 (A245716 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A242040.P8480538570932254423

/-! ## A242040.P14342765768311305026

`eq[1, A098978(a(A245716(n)))]` with `a(0)=4`
-/

namespace A242040.P14342765768311305026
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [4] fun n f2 =>
  A098978 (f2 (A245716 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A242040.P14342765768311305026

/-! ## A242040.P14224301162121120577

`eq[1, A003963(a(A245716(n)))]` with `a(0)=7`
-/

namespace A242040.P14224301162121120577
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [7] fun n f2 =>
  A003963 (f2 (A245716 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A242040.P14224301162121120577

/-!
# A242041: Number of k >= 1 that make n + k! and n - k! both prime.

The programs for A242041, there is no canonical definition to state claims against.
-/

/-! ## A242041.P1179227251169617339

`ceil(A241425(n+1)/A282177(A008578(n+1)))`
-/

namespace A242041.P1179227251169617339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A241425 (n + 1) : ℚ) / (A282177 (A008578 (n + 1)).toNat : ℚ)⌉

end

end A242041.P1179227251169617339

/-! ## A242041.P15314512592752548088

`A077267(A185238(n)^A245716(n+1))`
-/

namespace A242041.P15314512592752548088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077267 (SequenceMachineLib.roundAway ((A185238 n : ℚ) ^ (A245716 (n + 1) : ℤ))).toNat

end

end A242041.P15314512592752548088

/-! ## A242041.P2782458697994099514

`A034968(lcm(A119502(n), A245716(n+1)))`
-/

namespace A242041.P2782458697994099514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034968 (Int.lcm (A119502 n) (A245716 (n + 1)))

end

end A242041.P2782458697994099514

/-! ## A242041.P13497740698409525015

`A263428(A268715(2*(n+2))+A111123(n))`
-/

namespace A242041.P13497740698409525015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263428 (A268715 (2 * (n + 2)) + A111123 n).toNat

end

end A242041.P13497740698409525015

/-! ## A242041.P17026642908417943196

`A263428(A268715(2*(n+2))+A111124(n))`
-/

namespace A242041.P17026642908417943196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263428 (A268715 (2 * (n + 2)) + A111124 n).toNat

end

end A242041.P17026642908417943196

/-!
# A242043: Pentagonal numbers that are also Niven numbers.

The programs for A242043, there is no canonical definition to state claims against.
-/

/-! ## A242043.P3882616879008841058

`∩[∑[3*n+1], A005349(n+1)]`
-/

namespace A242043.P3882616879008841058
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005349 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f3 j = (x : ℤ)) n

end

end A242043.P3882616879008841058

/-! ## A242043.P1000756582906767866

`filter[A005349(n+1), A255849(#)]`
-/

namespace A242043.P1000756582906767866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005349 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A255849 (f1 j).toNat = 1) n)

end

end A242043.P1000756582906767866

/-! ## A242043.P17477171779391691931

`∩[A005349(n+1), A000326(n)]`
-/

namespace A242043.P17477171779391691931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005349 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000326 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A242043.P17477171779391691931

/-! ## A242043.P7006326442738623700

`∩[A005349(n+1), ∑[A016777(n)]]`
-/

namespace A242043.P7006326442738623700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005349 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A242043.P7006326442738623700

/-! ## A242043.P648430012217001793

`∩[A005349(n+1), A000217(n)+(n+1)²]`
-/

namespace A242043.P648430012217001793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005349 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n + ((n + 1) ^ 2 : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A242043.P648430012217001793

/-!
# A242044: Number of isomorphism classes of involutory abelian/medial quandles of order n.

The programs for A242044, there is no canonical definition to state claims against.
-/

/-! ## A242044.P18291823126038275882

`A265567(a(n-1)+a(n-2))` with `a(0)=1, a(1)=1, a(2)=3`
-/

namespace A242044.P18291823126038275882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 3] fun n a =>
  A265567 (a (n - 1) + a (n - 2)).toNat

end

end A242044.P18291823126038275882

/-! ## A242044.P6632588116702306321

`A161621(A149314(n))`
-/

namespace A242044.P6632588116702306321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161621 (A149314 n).toNat

end

end A242044.P6632588116702306321

/-! ## A242044.P269825590275510929

`A265534(A118037(n))`
-/

namespace A242044.P269825590275510929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265534 (A118037 n).toNat

end

end A242044.P269825590275510929

/-!
# A242053: Decimal expansion of 1/log(2)-1, the mean value of a random variable following the Gauss-Kuzmin distribution.

The programs for A242053, there is no canonical definition to state claims against.
-/

/-! ## A242053.P14928276176114954957

`A007525(n+1)`
-/

namespace A242053.P14928276176114954957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007525 (n + 1 + 1)

end

end A242053.P14928276176114954957

/-! ## A242053.P10459459500425267864

`Δ[A000027(∑[A007525(n)])]`
-/

namespace A242053.P10459459500425267864
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007525 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A242053.P10459459500425267864

/-! ## A242053.P849494794459661274

`dr(A007525(A008619(2*n)))`
-/

namespace A242053.P849494794459661274
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A007525 ((A008619 (2 * n)).toNat + 1))

end

end A242053.P849494794459661274

/-!
# A242054: Column 3 of square array A246072 / n!.

The programs for A242054, there is no canonical definition to state claims against.
-/

/-! ## A242054.P9134952545658745237

`A057907(A116914(n+2))`
-/

namespace A242054.P9134952545658745237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057907 (A116914 (n + 2)).toNat

end

end A242054.P9134952545658745237

/-! ## A242054.P4010955333142970716

`A090970(A175654(2*n))`
-/

namespace A242054.P4010955333142970716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090970 (A175654 (2 * n)).toNat

end

end A242054.P4010955333142970716

/-!
# A242057: Even numbers n for which lpf_3(n-1) < lpf_3(n-3), where lpf_3(n) = lpf(n/3^t) (cf. A020639) such that 3^t (t>=0) is the maximal power of 3 which divides n.

The programs for A242057, there is no canonical definition to state claims against.
-/

/-! ## A242057.P2646174191701234855

`∩[comp[A242058(n+1)], A020739(n)]`
-/

namespace A242057.P2646174191701234855
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242058 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020739 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f3 j = (x : ℤ)) n

end

end A242057.P2646174191701234855

/-! ## A242057.P9989462025444721262

`∩[comp[A242058(n+1)], A051755(n+6)]`
-/

namespace A242057.P9989462025444721262
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242058 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051755 (n + 6)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f3 j = (x : ℤ)) n

end

end A242057.P9989462025444721262

/-! ## A242057.P11629992814179873438

`A005381(A002473(n+1)*A096485(2*(n+2)))`
-/

namespace A242057.P11629992814179873438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005381 (A002473 (n + 1) * A096485 (2 * (n + 2))).toNat

end

end A242057.P11629992814179873438

/-! ## A242057.P3419863815496617442

`A206922(eq[3, A330241(n)])`
-/

namespace A242057.P3419863815496617442
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330241 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206922 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A242057.P3419863815496617442

/-! ## A242057.P3303102747161211204

`eq[A133682(n+1), A330241(n)]`
-/

namespace A242057.P3303102747161211204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133682 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330241 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A242057.P3303102747161211204

/-!
# A242058: Even numbers n for which lpf_3(n-1) > lpf_3(n-3), where lpf_3(n) = lpf(n/3^t) (cf. A020639) such that 3^t (t>=0) is the maximal power of 3 which divides n.

The programs for A242058, there is no canonical definition to state claims against.
-/

/-! ## A242058.P3538753634018349298

`A128984(n+4)+A020639(A128984(2*n+11))`
-/

namespace A242058.P3538753634018349298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128984 (n + 4) + A020639 (A128984 (2 * n + 11)).toNat

end

end A242058.P3538753634018349298

/-! ## A242058.P18414422444755613222

`A241276(A005385(n+1))+A153152(A128984(n+4))`
-/

namespace A242058.P18414422444755613222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241276 (A005385 (n + 1)).toNat + A153152 (A128984 (n + 4)).toNat

end

end A242058.P18414422444755613222

/-! ## A242058.P6253577835958984045

`A133911(A000040(n+1))+A128984(n+4)`
-/

namespace A242058.P6253577835958984045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133911 (A000040 (n + 1)).toNat + A128984 (n + 4)

end

end A242058.P6253577835958984045

/-!
# A242062: Expansion of x * (1 - x^12) / ((1 - x^3) * (1 - x^4) * (1 - x^7)) in powers of x.

The programs for A242062, the canonical program `A242062.P1082147046428175291` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A242062 has offset 0).

The definition of A242062 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((x-x^13)/(1-x^3-x^4+x^10+x^11-x^14))` (program `A242062.P1082147046428175291`, by `A242062.P1082147046428175291.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A242062.P10235942031089313517

`a(n-7)+1` with `a(0)=0, a(1)=1, a(2)=0, a(3)=0, a(4)=1, a(5)=1, a(6)=0`
-/

namespace A242062.P10235942031089313517
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 0, 0, 1, 1, 0] fun n a =>
  a (n - 7) + 1

end

end A242062.P10235942031089313517

namespace A242062

/-- `a(n-7)+1` -/
def P10235942031089313517.Spec : Prop :=
  ∀ n, (P10235942031089313517.a n : ℤ) = A242062 n

end A242062

/-! ## A242062.P773237467306745209

`ogf((x-x^2+x^4-x^6+x^7)/(1-x-x^7+x^8))`
-/

namespace A242062.P773237467306745209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, -1, 0, 1, 0, -1, 1] [1, -1, 0, 0, 0, 0, 0, -1, 1] n

end

end A242062.P773237467306745209

namespace A242062

/-- `ogf((x-x^2+x^4-x^6+x^7)/(1-x-x^7+x^8))` -/
def P773237467306745209.Spec : Prop :=
  ∀ n, P773237467306745209.a n = A242062 n

end A242062

/-! ## A242062.P1082147046428175291

`ogf((x-x^13)/(1-x^3-x^4+x^10+x^11-x^14))`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A242062

/-- `ogf((x-x^13)/(1-x^3-x^4+x^10+x^11-x^14))` -/
def P1082147046428175291.Spec : Prop :=
  ∀ n, P1082147046428175291.a n = A242062 n

theorem P1082147046428175291.correct : P1082147046428175291.Spec := by
  intro n
  simp only [A242062]

end A242062

/-! ## A242062.P17869909561946451252

`Δ[ceil(C(n, 2)/7)]`
-/

namespace A242062.P17869909561946451252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.choose n 2 : ℚ) / 7⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A242062.P17869909561946451252

namespace A242062

/-- `Δ[ceil(C(n, 2)/7)]` -/
def P17869909561946451252.Spec : Prop :=
  ∀ n, P17869909561946451252.a n = A242062 n

end A242062

/-! ## A242062.P2823659178596864690

`floor((n-3*a(n-2))/4)` with `a(0)=0, a(1)=1`
-/

namespace A242062.P2823659178596864690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  ⌊((n : ℤ) - 3 * a (n - 2) : ℚ) / 4⌋

end

end A242062.P2823659178596864690

namespace A242062

/-- `floor((n-3*a(n-2))/4)` -/
def P2823659178596864690.Spec : Prop :=
  ∀ n, P2823659178596864690.a n = A242062 n

end A242062

/-! ## A242062.P17715918535208166163

`floor((n-a(n-1))/3-a(n-2))` with `a(0)=0, a(1)=1`
-/

namespace A242062.P17715918535208166163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  ⌊((n : ℤ) - a (n - 1) : ℚ) / 3 - (a (n - 2) : ℚ)⌋

end

end A242062.P17715918535208166163

namespace A242062

/-- `floor((n-a(n-1))/3-a(n-2))` -/
def P17715918535208166163.Spec : Prop :=
  ∀ n, P17715918535208166163.a n = A242062 n

end A242062

/-! ## A242062.P2207243281479306049

`A131372(n-1)+a(n-1)` with `a(0)=0`
-/

namespace A242062.P2207243281479306049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A131372 (n - 1) + a (n - 1)

end

end A242062.P2207243281479306049

namespace A242062

/-- `A131372(n-1)+a(n-1)` -/
def P2207243281479306049.Spec : Prop :=
  ∀ n, P2207243281479306049.a n = A242062 n

end A242062

/-! ## A242062.P1764295744459607063

`A002264(n-a(n-1))-a(n-2)` with `a(0)=0, a(1)=1`
-/

namespace A242062.P1764295744459607063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A002264 ((n : ℤ) - a (n - 1)).toNat - a (n - 2)

end

end A242062.P1764295744459607063

namespace A242062

/-- `A002264(n-a(n-1))-a(n-2)` -/
def P1764295744459607063.Spec : Prop :=
  ∀ n, P1764295744459607063.a n = A242062 n

end A242062

/-! ## A242062.P16487443215120353178

`∑[A131372(n)]-A131372(n)`
-/

namespace A242062.P16487443215120353178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131372 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A131372 n

end

end A242062.P16487443215120353178

namespace A242062

/-- `∑[A131372(n)]-A131372(n)` -/
def P16487443215120353178.Spec : Prop :=
  ∀ n, P16487443215120353178.a n = A242062 n

end A242062

/-! ## A242062.P5867014137153071091

`Δ[floor(∑[(n-1)/7])]`
-/

namespace A242062.P5867014137153071091
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1 : ℚ) / 7

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f2 j⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A242062.P5867014137153071091

namespace A242062

/-- `Δ[floor(∑[(n-1)/7])]` -/
def P5867014137153071091.Spec : Prop :=
  ∀ n, P5867014137153071091.a n = A242062 n

end A242062

/-! ## A242062.P859041023330249551

`A260644(2*(n+1))/2-1`
-/

namespace A242062.P859041023330249551
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A260644 (2 * (n + 1)) : ℚ) / 2 - 1

end

end A242062.P859041023330249551

namespace A242062

/-- `A260644(2*(n+1))/2-1` -/
def P859041023330249551.Spec : Prop :=
  ∀ n, P859041023330249551.a n = (A242062 n : ℚ)

end A242062

/-! ## A242062.P4984334051761805429

`A072229(2*n+5)-(n+2)`
-/

namespace A242062.P4984334051761805429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072229 (2 * n + 5) - (n + 2 : ℤ)

end

end A242062.P4984334051761805429

namespace A242062

/-- `A072229(2*n+5)-(n+2)` -/
def P4984334051761805429.Spec : Prop :=
  ∀ n, P4984334051761805429.a n = A242062 n

end A242062

/-! ## A242062.P13625739744016961326

`n-A093390(2*A074232(n+1))`
-/

namespace A242062.P13625739744016961326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A093390 (2 * A074232 (n + 1)).toNat

end

end A242062.P13625739744016961326

namespace A242062

/-- `n-A093390(2*A074232(n+1))` -/
def P13625739744016961326.Spec : Prop :=
  ∀ n, P13625739744016961326.a n = A242062 n

end A242062

/-! ## A242062.P18066063758527096807

`A008706(n)-A310441(n)`
-/

namespace A242062.P18066063758527096807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 n - A310441 n

end

end A242062.P18066063758527096807

namespace A242062

/-- `A008706(n)-A310441(n)` -/
def P18066063758527096807.Spec : Prop :=
  ∀ n, P18066063758527096807.a n = A242062 n

end A242062

/-! ## A242062.P6458233010426779356

`A008587(n)%A310441(n)`
-/

namespace A242062.P6458233010426779356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008587 n) (A310441 n)

end

end A242062.P6458233010426779356

namespace A242062

/-- `A008587(n)%A310441(n)` -/
def P6458233010426779356.Spec : Prop :=
  ∀ n, P6458233010426779356.a n = A242062 n

end A242062

/-! ## A242062.P5499201457839974471

`A008458(n)-(A310441(n)+n)`
-/

namespace A242062.P5499201457839974471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - (A310441 n + (n : ℤ))

end

end A242062.P5499201457839974471

namespace A242062

/-- `A008458(n)-(A310441(n)+n)` -/
def P5499201457839974471.Spec : Prop :=
  ∀ n, P5499201457839974471.a n = A242062 n

end A242062

/-! ## A242062.P4403471785042687871

`A008574(n)+n-A310441(n)`
-/

namespace A242062.P4403471785042687871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + ((n : ℤ) - A310441 n)

end

end A242062.P4403471785042687871

namespace A242062

/-- `A008574(n)+n-A310441(n)` -/
def P4403471785042687871.Spec : Prop :=
  ∀ n, P4403471785042687871.a n = A242062 n

end A242062

/-! ## A242062.P2641667282668116709

`A315273(n)-A008706(n)`
-/

namespace A242062.P2641667282668116709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315273 n - A008706 n

end

end A242062.P2641667282668116709

namespace A242062

/-- `A315273(n)-A008706(n)` -/
def P2641667282668116709.Spec : Prop :=
  ∀ n, P2641667282668116709.a n = A242062 n

end A242062

/-! ## A242062.P3232137817979361151

`A315273(n)+n-A008458(n)`
-/

namespace A242062.P3232137817979361151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315273 n + ((n : ℤ) - A008458 n)

end

end A242062.P3232137817979361151

namespace A242062

/-- `A315273(n)+n-A008458(n)` -/
def P3232137817979361151.Spec : Prop :=
  ∀ n, P3232137817979361151.a n = A242062 n

end A242062

/-! ## A242062.P16136171120840934741

`A315273(n)-(A008574(n)+n)`
-/

namespace A242062.P16136171120840934741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315273 n - (A008574 n + (n : ℤ))

end

end A242062.P16136171120840934741

namespace A242062

/-- `A315273(n)-(A008574(n)+n)` -/
def P16136171120840934741.Spec : Prop :=
  ∀ n, P16136171120840934741.a n = A242062 n

theorem P16136171120840934741.correct : P16136171120840934741.Spec := by
  intro n
  simp only [A242062, Nat.add_sub_cancel, A242062.P16136171120840934741.a, A242062.P1082147046428175291.a, A008574, A008574.P1300280032690682112.a, A315273, A315273.P1536519079128265166.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A242062

/-!
# A242063: Analog clock times where the minute hand is on the hour hand (in hhmm format).

The programs for A242063, the canonical program `A242063.P11169307725205740435` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A242063 has offset 1).

The definition of A242063 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A242063.P11169307725205740435

`a(n-1)+a(n-2)-a(n-3)` with `a(0)=0, a(1)=105, a(2)=211`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A242063

/-- `a(n-1)+a(n-2)-a(n-3)` -/
def P11169307725205740435.Spec : Prop :=
  ∀ n, P11169307725205740435.a n = A242063 (n + 1)

theorem P11169307725205740435.correct : P11169307725205740435.Spec := by
  intro n
  simp only [A242063, Nat.add_sub_cancel]

end A242063

/-! ## A242063.P8243389159936912647

`floor(n/2)+5*21*n`
-/

namespace A242063.P8243389159936912647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 2⌋ + (5 * (21 * n) : ℤ)

end

end A242063.P8243389159936912647

namespace A242063

/-- `floor(n/2)+5*21*n` -/
def P8243389159936912647.Spec : Prop :=
  ∀ n, P8243389159936912647.a n = A242063 (n + 1)

end A242063

/-! ## A242063.P17958266757032370486

`A172327(19*n)`
-/

namespace A242063.P17958266757032370486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172327 (19 * n)

end

end A242063.P17958266757032370486

namespace A242063

/-- `A172327(19*n)` -/
def P17958266757032370486.Spec : Prop :=
  ∀ n, P17958266757032370486.a n = A242063 (n + 1)

end A242063

/-! ## A242063.P9361430777867999697

`A004526(n*211)`
-/

namespace A242063.P9361430777867999697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (n * 211)

end

end A242063.P9361430777867999697

namespace A242063

/-- `A004526(n*211)` -/
def P9361430777867999697.Spec : Prop :=
  ∀ n, P9361430777867999697.a n = A242063 (n + 1)

end A242063

/-! ## A242063.P171457780720373797

`A002265(n*422)`
-/

namespace A242063.P171457780720373797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (n * 422)

end

end A242063.P171457780720373797

namespace A242063

/-- `A002265(n*422)` -/
def P171457780720373797.Spec : Prop :=
  ∀ n, P171457780720373797.a n = A242063 (n + 1)

end A242063

/-!
# A242067: Number of triangular numbers between n^2 and n^3 (excluding the bounds).

The programs for A242067, there is no canonical definition to state claims against.
-/

/-! ## A242067.P3552513557851586579

`A003056(n^3)-A003056(n²)`
-/

namespace A242067.P3552513557851586579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (n ^ 3) - A003056 (n ^ 2)

end

end A242067.P3552513557851586579

/-! ## A242067.P15949812489522859302

`A071521(A242641(2*n²+1))-A031266(n+1)`
-/

namespace A242067.P15949812489522859302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071521 (A242641 (2 * n ^ 2 + 1)).toNat - A031266 (n + 1)

end

end A242067.P15949812489522859302

/-! ## A242067.P8363531140396004580

`A102572(A328210(n+1))+A002620(n)`
-/

namespace A242067.P8363531140396004580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102572 (A328210 (n + 1)).toNat + A002620 n

end

end A242067.P8363531140396004580

/-! ## A242067.P5412612798182538546

`A088236(n)-A001221(A018667(n+1))`
-/

namespace A242067.P5412612798182538546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088236 n - A001221 (A018667 (n + 1)).toNat

end

end A242067.P5412612798182538546

/-! ## A242067.P6505178794158625616

`round(∑[log2(A089409(n))])`
-/

namespace A242067.P6505178794158625616
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A089409 n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A242067.P6505178794158625616

/-!
# A242068: First of two consecutive sphenic numbers with no semiprime between them.

The programs for A242068, there is no canonical definition to state claims against.
-/

/-! ## A242068.P5569791520797198337

`∩[A205684(A002522(3*n+2)), A007304(n+1)]`
-/

namespace A242068.P5569791520797198337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205684 (A002522 (3 * n + 2)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007304 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A242068.P5569791520797198337

/-!
# A242073: a(n) = - (a(n-1)*a(n-4) + a(n-2)*a(n-3)) / a(n-5) with a(0)=1, a(1)=a(2)=-1, a(3)=-2, a(4)=1.

The programs for A242073, the canonical program `A242073.P12127736897927486552` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A242073 has offset 0).

The definition of A242073 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A242073.P16908493681763818342

`ogf((1-x-x^2-2x^3+x^4-x^5)/(1+x^6))`
-/

namespace A242073.P16908493681763818342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1, -1, -2, 1, -1] [1, 0, 0, 0, 0, 0, 1] n

end

end A242073.P16908493681763818342

namespace A242073

/-- `ogf((1-x-x^2-2x^3+x^4-x^5)/(1+x^6))` -/
def P16908493681763818342.Spec : Prop :=
  ∀ n, P16908493681763818342.a n = A242073 n

end A242073

/-! ## A242073.P12127736897927486552

`-(a(n-1)*a(n-4)+a(n-2)*a(n-3))/a(n-5)` with `a(0)=1, a(1)=-1, a(2)=-1, a(3)=-2, a(4)=1`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A242073

/-- `-(a(n-1)*a(n-4)+a(n-2)*a(n-3))/a(n-5)` -/
def P12127736897927486552.Spec : Prop :=
  ∀ n, P12127736897927486552.a n = (A242073 n : ℚ)

end A242073

/-!
# A242074: Numbers n such that n^2 - 1 is the product of four distinct Fibonacci numbers greater than 1.

The programs for A242074, there is no canonical definition to state claims against.
-/

/-! ## A242074.P12995383860193920737

`A327473(A137827(n+3)+A067031(2*n))`
-/

namespace A242074.P12995383860193920737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327473 (A137827 (n + 3) + A067031 (2 * n)).toNat

end

end A242074.P12995383860193920737

/-! ## A242074.P10823359569507313327

`A300273(A250120(2*n+3)-A298952(n+2))`
-/

namespace A242074.P10823359569507313327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300273 (A250120 (2 * n + 3) - A298952 (n + 2)).toNat

end

end A242074.P10823359569507313327

/-!
# A242076: Numbers k for which (2^k + 1)/F is prime where F is a Fermat number.

The programs for A242076, there is no canonical definition to state claims against.
-/

/-! ## A242076.P3332469290908633383

`∩[A092559(n+1), A232682(n+1)]`
-/

namespace A242076.P3332469290908633383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092559 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232682 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A242076.P3332469290908633383

/-! ## A242076.P5373583158699019044

`∩[A092559(n+1), A352826(n+1)]`
-/

namespace A242076.P5373583158699019044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092559 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352826 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A242076.P5373583158699019044

/-! ## A242076.P13385539072939584218

`∩[A092559(n+1), A166937(n+1)]`
-/

namespace A242076.P13385539072939584218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092559 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166937 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A242076.P13385539072939584218

/-! ## A242076.P16205066781128676102

`∩[A092559(n+1), A296365(n+1)]`
-/

namespace A242076.P16205066781128676102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092559 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296365 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A242076.P16205066781128676102

/-! ## A242076.P5742016499077621467

`∩[A092559(n+1), A344414(n+1)]`
-/

namespace A242076.P5742016499077621467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092559 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344414 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A242076.P5742016499077621467

/-!
# A242077: Numbers k such that no final group of decimal digits of k^2 less than the total forms a square.

The programs for A242077, there is no canonical definition to state claims against.
-/

/-! ## A242077.P6238877099310814689

`sqrt(A192689(n+1))`
-/

namespace A242077.P6238877099310814689
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A192689 (n + 1) : ℝ)

end

end A242077.P6238877099310814689

/-! ## A242077.P3339421531252050221

`root(A192689(n+1), A020639(2*(n+2)))`
-/

namespace A242077.P3339421531252050221
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A192689 (n + 1) : ℝ) ^ (1 / (A020639 (2 * (n + 2)) : ℝ))

end

end A242077.P3339421531252050221

/-! ## A242077.P10338212581028970381

`A192689(n+1)^(A016813(n)/A017089(n))`
-/

namespace A242077.P10338212581028970381
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A192689 (n + 1) : ℝ) ^ ((A016813 n : ℚ) / (A017089 n : ℚ) : ℝ)

end

end A242077.P10338212581028970381

/-! ## A242077.P6406469361345019729

`A133388(A192689(n+1)+1)`
-/

namespace A242077.P6406469361345019729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133388 (A192689 (n + 1) + 1).toNat

end

end A242077.P6406469361345019729

/-!
# A242078: Smallest square number > 10*a(n-1) with a(1) = 1.

The programs for A242078, the canonical program `A242078.P15350407265836475276` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A242078 has offset 1).

The definition of A242078 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A242078.P3015060867846152144

`ceil(sqrt(10*a(n-1)))²` with `a(0)=1`
-/

namespace A242078.P3015060867846152144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌈Real.sqrt (10 * a (n - 1) : ℝ)⌉ ^ 2

end

end A242078.P3015060867846152144

namespace A242078

/-- `ceil(sqrt(10*a(n-1)))²` -/
def P3015060867846152144.Spec : Prop :=
  ∀ n, P3015060867846152144.a n = A242078 (n + 1)

end A242078

/-! ## A242078.P7949979629799733205

`ceil(sqrt(10*a(n-1)))^2` with `a(0)=1`
-/

namespace A242078.P7949979629799733205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌈Real.sqrt (10 * a (n - 1) : ℝ)⌉ ^ 2

end

end A242078.P7949979629799733205

namespace A242078

/-- `ceil(sqrt(10*a(n-1)))^2` -/
def P7949979629799733205.Spec : Prop :=
  ∀ n, P7949979629799733205.a n = A242078 (n + 1)

end A242078

/-! ## A242078.P14111939107891533366

`floor(-sqrt(10*a(n-1)))²` with `a(0)=1`
-/

namespace A242078.P14111939107891533366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊-Real.sqrt (10 * a (n - 1) : ℝ)⌋ ^ 2

end

end A242078.P14111939107891533366

namespace A242078

/-- `floor(-sqrt(10*a(n-1)))²` -/
def P14111939107891533366.Spec : Prop :=
  ∀ n, P14111939107891533366.a n = A242078 (n + 1)

end A242078

/-! ## A242078.P15350407265836475276

`(floor(sqrt(10*a(n-1)))+1)²` with `a(0)=1`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A242078

/-- `(floor(sqrt(10*a(n-1)))+1)²` -/
def P15350407265836475276.Spec : Prop :=
  ∀ n, (P15350407265836475276.a n : ℤ) = A242078 (n + 1)

theorem P15350407265836475276.correct : P15350407265836475276.Spec := by
  intro n
  simp only [A242078, Nat.add_sub_cancel]

end A242078

/-!
# A242079: a(1)=1. a(n)=smallest integer greater than 2*a(n-1) such that the Nim sequence of the first n terms is ternary, periodic and not equal to the Nim sequence of the first n-1 terms.

The programs for A242079, there is no canonical definition to state claims against.
-/

/-! ## A242079.P15481293730647359255

`∑[abs(Δ[A242080(n)])]`
-/

namespace A242079.P15481293730647359255
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242080 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A242079.P15481293730647359255

/-! ## A242079.P15453823862755893228

`A242080(n+1)-1`
-/

namespace A242079.P15453823862755893228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242080 (n + 1) - 1

end

end A242079.P15453823862755893228

/-! ## A242079.P2092025474218172039

`∑[A000027(Δ[A242080(n)])]`
-/

namespace A242079.P2092025474218172039
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242080 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A242079.P2092025474218172039

/-! ## A242079.P9395804518974066045

`∑[A028310(Δ[A242080(n)])]`
-/

namespace A242079.P9395804518974066045
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242080 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A242079.P9395804518974066045

/-! ## A242079.P15336495040684829247

`∑[Δ[A242080(n)]+A008683(4*(n+4))]`
-/

namespace A242079.P15336495040684829247
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242080 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + A008683 (4 * (n + 4))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A242079.P15336495040684829247

/-!
# A242080: Length of period of Nim sequence of subtraction game on first n terms of A242079.

The programs for A242080, there is no canonical definition to state claims against.
-/

/-! ## A242080.P5851847909963647247

`∑{e}[A007283(n), A242079(#)]`
-/

namespace A242080.P5851847909963647247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007283 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A242079 (Nat.factorization (f1 n).natAbs p)

end

end A242080.P5851847909963647247

/-! ## A242080.P12491828969865745823

`A242079(A028310(n))+A057427(n)`
-/

namespace A242080.P12491828969865745823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242079 (A028310 n).toNat + A057427 n

end

end A242080.P12491828969865745823

/-! ## A242080.P3326938517748773336

`A255270(n)+A242079(A028310(n))`
-/

namespace A242080.P3326938517748773336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255270 n + A242079 (A028310 n).toNat

end

end A242080.P3326938517748773336

/-!
# A242081: Nim sequence of game on n counters whose legal moves are removing some number of counters in A242079.

The programs for A242081, there is no canonical definition to state claims against.
-/

/-! ## A242081.P5881455925402244294

`A242082(n^A152847(n))`
-/

namespace A242081.P5881455925402244294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242082 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A152847 n : ℤ))).toNat

end

end A242081.P5881455925402244294

/-! ## A242081.P17542777534213236384

`A242082(n*A152847(n)²)`
-/

namespace A242081.P17542777534213236384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242082 ((n : ℤ) * A152847 n ^ 2).toNat

end

end A242081.P17542777534213236384

/-! ## A242081.P10478957843715425216

`A242082(n*A319101(n+1))`
-/

namespace A242081.P10478957843715425216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242082 ((n : ℤ) * A319101 (n + 1)).toNat

end

end A242081.P10478957843715425216

/-! ## A242081.P3508632809874551643

`and(A060152(n+1), A242082(n))`
-/

namespace A242081.P3508632809874551643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A060152 (n + 1)) (A242082 n)

end

end A242081.P3508632809874551643

/-! ## A242081.P5850563328780775858

`and(A068368(n+1), A242082(n))`
-/

namespace A242081.P5850563328780775858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A068368 (n + 1)) (A242082 n)

end

end A242081.P5850563328780775858

/-!
# A242082: Nim sequence of game on n counters whose legal moves are removing some number of counters in A027941.

The programs for A242082, the canonical program `A242082.P757020989962679087` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A242082 has offset 0).

The definition of A242082 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A242082.P13759386453528313501

`comp[3*floor(n*ϕ²)+2]%3`
-/

namespace A242082.P13759386453528313501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * ⌊(n : ℝ) * Real.goldenRatio ^ 2⌋ + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n % 3

end

end A242082.P13759386453528313501

namespace A242082

/-- `comp[3*floor(n*ϕ²)+2]%3` -/
def P13759386453528313501.Spec : Prop :=
  ∀ n, (P13759386453528313501.a n : ℤ) = A242082 n

end A242082

/-! ## A242082.P16656828692848031465

`(a(n-1)+1)*Δ[floor(n/ϕ)]` with `a(0)=0`
-/

namespace A242082.P16656828692848031465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) / Real.goldenRatio⌋

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (a (n - 1) + 1) * (f1 (n + 1) - f1 n)

end

end A242082.P16656828692848031465

namespace A242082

/-- `(a(n-1)+1)*Δ[floor(n/ϕ)]` -/
def P16656828692848031465.Spec : Prop :=
  ∀ n, P16656828692848031465.a n = A242082 n

end A242082

/-! ## A242082.P13472517990307020503

`lcm(a(n-1)+1, Δ[floor(n/ϕ)])` with `a(0)=0`
-/

namespace A242082.P13472517990307020503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) / Real.goldenRatio⌋

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Int.lcm (a (n - 1) + 1 : ℤ) (f1 (n + 1) - f1 n)

end

end A242082.P13472517990307020503

namespace A242082

/-- `lcm(a(n-1)+1, Δ[floor(n/ϕ)])` -/
def P13472517990307020503.Spec : Prop :=
  ∀ n, (P13472517990307020503.a n : ℤ) = A242082 n

end A242082

/-! ## A242082.P12238864848689628178

`(char[ceil(ϕ*n)]+1)*Δ[floor(n/ϕ)]`
-/

namespace A242082.P12238864848689628178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.goldenRatio * (n : ℝ)⌉

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) / Real.goldenRatio⌋

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((if ∃ j, f1 j = (n : ℤ) then 1 else 0) + 1 : ℕ) : ℤ) * (f2 (n + 1) - f2 n)

end

end A242082.P12238864848689628178

namespace A242082

/-- `(char[ceil(ϕ*n)]+1)*Δ[floor(n/ϕ)]` -/
def P12238864848689628178.Spec : Prop :=
  ∀ n, P12238864848689628178.a n = A242082 n

end A242082

/-! ## A242082.P6636221946566088230

`and(3, A215022(n))`
-/

namespace A242082.P6636221946566088230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 (A215022 n)

end

end A242082.P6636221946566088230

namespace A242082

/-- `and(3, A215022(n))` -/
def P6636221946566088230.Spec : Prop :=
  ∀ n, P6636221946566088230.a n = A242082 n

end A242082

/-! ## A242082.P13987102223239799907

`and(3, A215024(n))`
-/

namespace A242082.P13987102223239799907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 (A215024 n)

end

end A242082.P13987102223239799907

namespace A242082

/-- `and(3, A215024(n))` -/
def P13987102223239799907.Spec : Prop :=
  ∀ n, P13987102223239799907.a n = A242082 n

end A242082

/-! ## A242082.P11568916805050833640

`A110006(floor(ϕ*n)+2)-2`
-/

namespace A242082.P11568916805050833640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110006 (⌊Real.goldenRatio * (n : ℝ)⌋ + 2).toNat - 2

end

end A242082.P11568916805050833640

namespace A242082

/-- `A110006(floor(ϕ*n)+2)-2` -/
def P11568916805050833640.Spec : Prop :=
  ∀ n, P11568916805050833640.a n = A242082 n

end A242082

/-! ## A242082.P15991897700452317256

`A188009(n+1)+Δ[floor(n/ϕ)]`
-/

namespace A242082.P15991897700452317256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) / Real.goldenRatio⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188009 (n + 1) + (f1 (n + 1) - f1 n)

end

end A242082.P15991897700452317256

namespace A242082

/-- `A188009(n+1)+Δ[floor(n/ϕ)]` -/
def P15991897700452317256.Spec : Prop :=
  ∀ n, P15991897700452317256.a n = A242082 n

end A242082

/-! ## A242082.P757020989962679087

`A159917(lt[2, (n-and(n, 3*n))/2])`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A242082

/-- `A159917(lt[2, (n-and(n, 3*n))/2])` -/
def P757020989962679087.Spec : Prop :=
  ∀ n, P757020989962679087.a n = A242082 n

theorem P757020989962679087.correct : P757020989962679087.Spec := by
  intro n
  simp only [A242082]

end A242082

/-! ## A242082.P4992727598626598379

`A007877(A215024(n))`
-/

namespace A242082.P4992727598626598379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007877 (A215024 n).toNat

end

end A242082.P4992727598626598379

namespace A242082

/-- `A007877(A215024(n))` -/
def P4992727598626598379.Spec : Prop :=
  ∀ n, P4992727598626598379.a n = A242082 n

end A242082

/-! ## A242082.P4264430132545002923

`A284749(A249115(n+1))`
-/

namespace A242082.P4264430132545002923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284749 (A249115 (n + 1)).toNat

end

end A242082.P4264430132545002923

namespace A242082

/-- `A284749(A249115(n+1))` -/
def P4264430132545002923.Spec : Prop :=
  ∀ n, P4264430132545002923.a n = A242082 n

end A242082

/-! ## A242082.P17482691478069636916

`A328929(A392842(n+2))`
-/

namespace A242082.P17482691478069636916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328929 (A392842 (n + 2)).toNat

end

end A242082.P17482691478069636916

namespace A242082

/-- `A328929(A392842(n+2))` -/
def P17482691478069636916.Spec : Prop :=
  ∀ n, P17482691478069636916.a n = A242082 n

end A242082

/-! ## A242082.P18001215481903112061

`and(A118113(n), A383671(n))`
-/

namespace A242082.P18001215481903112061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A118113 n) (A383671 n)

end

end A242082.P18001215481903112061

namespace A242082

/-- `and(A118113(n), A383671(n))` -/
def P18001215481903112061.Spec : Prop :=
  ∀ n, P18001215481903112061.a n = A242082 n

end A242082

/-! ## A242082.P10215843468919627009

`A284749(A195121(n+1)-1)`
-/

namespace A242082.P10215843468919627009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284749 (A195121 (n + 1) - 1).toNat

end

end A242082.P10215843468919627009

namespace A242082

/-- `A284749(A195121(n+1)-1)` -/
def P10215843468919627009.Spec : Prop :=
  ∀ n, P10215843468919627009.a n = A242082 n

end A242082

/-! ## A242082.P11756884085816920458

`A284749(lt[0, A284749(n+1)])`
-/

namespace A242082.P11756884085816920458
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284749 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284749 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A242082.P11756884085816920458

namespace A242082

/-- `A284749(lt[0, A284749(n+1)])` -/
def P11756884085816920458.Spec : Prop :=
  ∀ n, P11756884085816920458.a n = A242082 n

end A242082

/-! ## A242082.P6887786512210951613

`A284749(eq[1, A286746(n+1)])`
-/

namespace A242082.P6887786512210951613
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286746 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284749 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A242082.P6887786512210951613

namespace A242082

/-- `A284749(eq[1, A286746(n+1)])` -/
def P6887786512210951613.Spec : Prop :=
  ∀ n, P6887786512210951613.a n = A242082 n

end A242082

/-! ## A242082.P6284948397740428263

`A284749(A189663(n+2)+n)`
-/

namespace A242082.P6284948397740428263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284749 (A189663 (n + 2) + (n : ℤ)).toNat

end

end A242082.P6284948397740428263

namespace A242082

/-- `A284749(A189663(n+2)+n)` -/
def P6284948397740428263.Spec : Prop :=
  ∀ n, P6284948397740428263.a n = A242082 n

end A242082

/-! ## A242082.P3639070964709220969

`A284749(A182761(n+1)-(n+1))`
-/

namespace A242082.P3639070964709220969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284749 (A182761 (n + 1) - (n + 1 : ℤ)).toNat

end

end A242082.P3639070964709220969

namespace A242082

/-- `A284749(A182761(n+1)-(n+1))` -/
def P3639070964709220969.Spec : Prop :=
  ∀ n, P3639070964709220969.a n = A242082 n

end A242082

/-! ## A242082.P10016296210399390534

`A284620(A189661(n+1)+2*n+1)`
-/

namespace A242082.P10016296210399390534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284620 (A189661 (n + 1) + (2 * n + 1 : ℤ)).toNat

end

end A242082.P10016296210399390534

namespace A242082

/-- `A284620(A189661(n+1)+2*n+1)` -/
def P10016296210399390534.Spec : Prop :=
  ∀ n, P10016296210399390534.a n = A242082 n

end A242082

/-!
# A242083: a(n) = 3^p - 2^p - 1, where p is prime(n).

The programs for A242083, the canonical program `A242083.P11427903032979900103` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A242083 has offset 1).

The definition of A242083 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A242083.P11427903032979900103

`abs(A083321(A000040(n+1)))`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A242083

/-- `abs(A083321(A000040(n+1)))` -/
def P11427903032979900103.Spec : Prop :=
  ∀ n, P11427903032979900103.a n = A242083 (n + 1)

theorem P11427903032979900103.correct : P11427903032979900103.Spec := by
  intro n
  simp only [A242083, Nat.add_sub_cancel]

end A242083

/-! ## A242083.P12443302491323260385

`A135171(n+1)-1`
-/

namespace A242083.P12443302491323260385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135171 (n + 1) - 1

end

end A242083.P12443302491323260385

namespace A242083

/-- `A135171(n+1)-1` -/
def P12443302491323260385.Spec : Prop :=
  ∀ n, P12443302491323260385.a n = A242083 (n + 1)

end A242083

/-! ## A242083.P18165050093664608279

`A362316(A000040(n+1))`
-/

namespace A242083.P18165050093664608279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362316 (A000040 (n + 1)).toNat

end

end A242083.P18165050093664608279

namespace A242083

/-- `A362316(A000040(n+1))` -/
def P18165050093664608279.Spec : Prop :=
  ∀ n, P18165050093664608279.a n = A242083 (n + 1)

end A242083

/-! ## A242083.P4703795271795966104

`A057901(n+1)-(A034785(n+1)+1)`
-/

namespace A242083.P4703795271795966104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057901 (n + 1) - (A034785 (n + 1) + 1)

end

end A242083.P4703795271795966104

namespace A242083

/-- `A057901(n+1)-(A034785(n+1)+1)` -/
def P4703795271795966104.Spec : Prop :=
  ∀ n, P4703795271795966104.a n = A242083 (n + 1)

end A242083

/-! ## A242083.P13195622054614602308

`3^A000040(n+1)-(record[2^A020639(n+2)]+1)`
-/

namespace A242083.P13195622054614602308
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A020639 (n + 2) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (A000040 (n + 1) : ℤ) - (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1)

end

end A242083.P13195622054614602308

namespace A242083

/-- `3^A000040(n+1)-(record[2^A020639(n+2)]+1)` -/
def P13195622054614602308.Spec : Prop :=
  ∀ n, P13195622054614602308.a n = (A242083 (n + 1) : ℚ)

end A242083

/-!
# A242084: 5^p - 4^p - 1, where p is prime.

The programs for A242084, the canonical program `A242084.P10015590585242605687` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A242084 has offset 1).

The definition of A242084 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A242084.P10015590585242605687

`A054401(A000040(n+1))`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A242084

/-- `A054401(A000040(n+1))` -/
def P10015590585242605687.Spec : Prop :=
  ∀ n, P10015590585242605687.a n = A242084 (n + 1)

theorem P10015590585242605687.correct : P10015590585242605687.Spec := by
  intro n
  simp only [A242084, Nat.add_sub_cancel]

end A242084

/-! ## A242084.P6097554382171797096

`A054401(p?[comp[n²]])`
-/

namespace A242084.P6097554382171797096
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054401 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A242084.P6097554382171797096

namespace A242084

/-- `A054401(p?[comp[n²]])` -/
def P6097554382171797096.Spec : Prop :=
  ∀ n, P6097554382171797096.a n = A242084 (n + 1)

end A242084

/-! ## A242084.P2343987627778940200

`A054401(record[A006530(n+2)])`
-/

namespace A242084.P2343987627778940200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054401 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A242084.P2343987627778940200

namespace A242084

/-- `A054401(record[A006530(n+2)])` -/
def P2343987627778940200.Spec : Prop :=
  ∀ n, P2343987627778940200.a n = A242084 (n + 1)

end A242084

/-! ## A242084.P16838559502841559613

`A054401(record[A014963(n+2)])`
-/

namespace A242084.P16838559502841559613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054401 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A242084.P16838559502841559613

namespace A242084

/-- `A054401(record[A014963(n+2)])` -/
def P16838559502841559613.Spec : Prop :=
  ∀ n, P16838559502841559613.a n = A242084 (n + 1)

end A242084

/-! ## A242084.P2334596889989210842

`A054401(record[A020639(n+2)])`
-/

namespace A242084.P2334596889989210842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054401 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A242084.P2334596889989210842

namespace A242084

/-- `A054401(record[A020639(n+2)])` -/
def P2334596889989210842.Spec : Prop :=
  ∀ n, P2334596889989210842.a n = A242084 (n + 1)

end A242084

/-!
# A242086: Triangle read by rows: T(n,k) is the number of compositions of n into odd parts with first part k.

The programs for A242086, there is no canonical definition to state claims against.
-/

/-! ## A242086.P9645608080117891668

`and(A129713(n), A278469(A061885(n)))`
-/

namespace A242086.P9645608080117891668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A129713 n) (A278469 (A061885 n).toNat)

end

end A242086.P9645608080117891668

/-! ## A242086.P11620945242614492406

`C(A332954(n), Δ[A204009(n)])`
-/

namespace A242086.P11620945242614492406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204009 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A332954 n).toNat (f1 (n + 1) - f1 n).toNat

end

end A242086.P11620945242614492406

/-! ## A242086.P13668371734635774054

`and(val(A336739(n+5), 2), A226678(n+2))`
-/

namespace A242086.P13668371734635774054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (SequenceMachineLib.valuation (A336739 (n + 5)).toNat 2 : ℤ) (A226678 (n + 2))

end

end A242086.P13668371734635774054

/-! ## A242086.P8647672212889357982

`and(A228298(n+1), A255337(A281446(n)))`
-/

namespace A242086.P8647672212889357982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A228298 (n + 1)) (A255337 (A281446 n).toNat)

end

end A242086.P8647672212889357982

/-! ## A242086.P1019790258237837057

`A000007(a(n-1))*A255337(A281446(n))` with `a(0)=1`
-/

namespace A242086.P1019790258237837057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000007 (a (n - 1)).toNat * A255337 (A281446 n).toNat

end

end A242086.P1019790258237837057

/-!
# A242087: Number of balanced orbitals over an odd number of sectors.

The programs for A242087, there is no canonical definition to state claims against.
-/

/-! ## A242087.P8384477317972821211

`A241810(2*n+1)`
-/

namespace A242087.P8384477317972821211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241810 (2 * n + 1)

end

end A242087.P8384477317972821211

/-! ## A242087.P11120362730632151863

`A241810((n+1)²-n²)%A144513(n)`
-/

namespace A242087.P11120362730632151863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A241810 ((n + 1) ^ 2 - n ^ 2)) (A144513 n)

end

end A242087.P11120362730632151863

/-!
# A242089: Number of triples (a,b,c) with 0 < a < b < c < p and a + b + c == 0 mod p, where p = prime(n).

The programs for A242089, the canonical program `A242089.P4815775190259127577` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A242089 has offset 1).

The definition of A242089 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A242089.P11119665287861060638

`2*A242090(n+1)`
-/

namespace A242089.P11119665287861060638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A242090 (n + 1)

end

end A242089.P11119665287861060638

namespace A242089

/-- `2*A242090(n+1)` -/
def P11119665287861060638.Spec : Prop :=
  ∀ n, P11119665287861060638.a n = A242089 (n + 1)

end A242089

/-! ## A242089.P4815775190259127577

`2*round((A000040(n+1)-3)²/12)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A242089

/-- `2*round((A000040(n+1)-3)²/12)` -/
def P4815775190259127577.Spec : Prop :=
  ∀ n, P4815775190259127577.a n = A242089 (n + 1)

theorem P4815775190259127577.correct : P4815775190259127577.Spec := by
  intro n
  simp only [A242089, Nat.add_sub_cancel]

end A242089

/-! ## A242089.P8380178476598683607

`floor((3-A000040(n+1))²/6)`
-/

namespace A242089.P8380178476598683607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((3 - A000040 (n + 1)) ^ 2 : ℚ) / 6⌋

end

end A242089.P8380178476598683607

namespace A242089

/-- `floor((3-A000040(n+1))²/6)` -/
def P8380178476598683607.Spec : Prop :=
  ∀ n, P8380178476598683607.a n = A242089 (n + 1)

end A242089

/-! ## A242089.P5063068912062565586

`A056827(abs(A086801(n+1)))`
-/

namespace A242089.P5063068912062565586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056827 |A086801 (n + 1)|.toNat

end

end A242089.P5063068912062565586

namespace A242089

/-- `A056827(abs(A086801(n+1)))` -/
def P5063068912062565586.Spec : Prop :=
  ∀ n, P5063068912062565586.a n = A242089 (n + 1)

end A242089

/-! ## A242089.P16815774051048920825

`2*A174709(A006093(n+1))`
-/

namespace A242089.P16815774051048920825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A174709 (A006093 (n + 1)).toNat

end

end A242089.P16815774051048920825

namespace A242089

/-- `2*A174709(A006093(n+1))` -/
def P16815774051048920825.Spec : Prop :=
  ∀ n, P16815774051048920825.a n = A242089 (n + 1)

end A242089

/-! ## A242089.P4858581897417291572

`2*A174709(A039915(n+1))`
-/

namespace A242089.P4858581897417291572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A174709 (A039915 (n + 1)).toNat

end

end A242089.P4858581897417291572

namespace A242089

/-- `2*A174709(A039915(n+1))` -/
def P4858581897417291572.Spec : Prop :=
  ∀ n, P4858581897417291572.a n = A242089 (n + 1)

end A242089

/-! ## A242089.P3728018885690729803

`2*A325695(A000040(n+1))`
-/

namespace A242089.P3728018885690729803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A325695 (A000040 (n + 1)).toNat

end

end A242089.P3728018885690729803

namespace A242089

/-- `2*A325695(A000040(n+1))` -/
def P3728018885690729803.Spec : Prop :=
  ∀ n, P3728018885690729803.a n = A242089 (n + 1)

end A242089

/-! ## A242089.P17900340015699724031

`2*A174709(A156037(n+1))`
-/

namespace A242089.P17900340015699724031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A174709 (A156037 (n + 1)).toNat

end

end A242089.P17900340015699724031

namespace A242089

/-- `2*A174709(A156037(n+1))` -/
def P17900340015699724031.Spec : Prop :=
  ∀ n, P17900340015699724031.a n = A242089 (n + 1)

end A242089

/-! ## A242089.P4164814768916011923

`2*A325695(A006005(n+1))`
-/

namespace A242089.P4164814768916011923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A325695 (A006005 (n + 1)).toNat

end

end A242089.P4164814768916011923

namespace A242089

/-- `2*A325695(A006005(n+1))` -/
def P4164814768916011923.Spec : Prop :=
  ∀ n, P4164814768916011923.a n = A242089 (n + 1)

end A242089

/-! ## A242089.P1210564656412468964

`2*A174709(A068499(n+2))`
-/

namespace A242089.P1210564656412468964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A174709 (A068499 (n + 2)).toNat

end

end A242089.P1210564656412468964

namespace A242089

/-- `2*A174709(A068499(n+2))` -/
def P1210564656412468964.Spec : Prop :=
  ∀ n, P1210564656412468964.a n = A242089 (n + 1)

end A242089

/-! ## A242089.P15418510167124403119

`2*A325695(A008578(n+2))`
-/

namespace A242089.P15418510167124403119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A325695 (A008578 (n + 2)).toNat

end

end A242089.P15418510167124403119

namespace A242089

/-- `2*A325695(A008578(n+2))` -/
def P15418510167124403119.Spec : Prop :=
  ∀ n, P15418510167124403119.a n = A242089 (n + 1)

end A242089

/-! ## A242089.P4892339480106724339

`2*A325695(A175787(n+2))`
-/

namespace A242089.P4892339480106724339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A325695 (A175787 (n + 2)).toNat

end

end A242089.P4892339480106724339

namespace A242089

/-- `2*A325695(A175787(n+2))` -/
def P4892339480106724339.Spec : Prop :=
  ∀ n, P4892339480106724339.a n = A242089 (n + 1)

end A242089

/-! ## A242089.P13544466500447977233

`A056827(lt[n, A090369(n+3)])`
-/

namespace A242089.P13544466500447977233
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090369 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056827 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A242089.P13544466500447977233

namespace A242089

/-- `A056827(lt[n, A090369(n+3)])` -/
def P13544466500447977233.Spec : Prop :=
  ∀ n, P13544466500447977233.a n = A242089 (n + 1)

end A242089

/-! ## A242089.P2136176637704860114

`2*A174709(record[A000010(n+1)])`
-/

namespace A242089.P2136176637704860114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A174709 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A242089.P2136176637704860114

namespace A242089

/-- `2*A174709(record[A000010(n+1)])` -/
def P2136176637704860114.Spec : Prop :=
  ∀ n, P2136176637704860114.a n = A242089 (n + 1)

end A242089

/-! ## A242089.P12715771304360508680

`2*A211540(record[A000010(n+1)])`
-/

namespace A242089.P12715771304360508680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A211540 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A242089.P12715771304360508680

namespace A242089

/-- `2*A211540(record[A000010(n+1)])` -/
def P12715771304360508680.Spec : Prop :=
  ∀ n, P12715771304360508680.a n = A242089 (n + 1)

end A242089

/-! ## A242089.P9305861080164685877

`2*A325695(record[A006530(n+2)])`
-/

namespace A242089.P9305861080164685877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A325695 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A242089.P9305861080164685877

namespace A242089

/-- `2*A325695(record[A006530(n+2)])` -/
def P9305861080164685877.Spec : Prop :=
  ∀ n, P9305861080164685877.a n = A242089 (n + 1)

end A242089

/-! ## A242089.P7199850596449794339

`2*A325695(record[A014963(n+2)])`
-/

namespace A242089.P7199850596449794339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A325695 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A242089.P7199850596449794339

namespace A242089

/-- `2*A325695(record[A014963(n+2)])` -/
def P7199850596449794339.Spec : Prop :=
  ∀ n, P7199850596449794339.a n = A242089 (n + 1)

end A242089

/-! ## A242089.P14295813500364255333

`2*A325695(record[A020639(n+2)])`
-/

namespace A242089.P14295813500364255333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A325695 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A242089.P14295813500364255333

namespace A242089

/-- `2*A325695(record[A020639(n+2)])` -/
def P14295813500364255333.Spec : Prop :=
  ∀ n, P14295813500364255333.a n = A242089 (n + 1)

end A242089

/-! ## A242089.P4023576079812655691

`2*A174709(A000040(n+1)-1)`
-/

namespace A242089.P4023576079812655691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A174709 (A000040 (n + 1) - 1).toNat

end

end A242089.P4023576079812655691

namespace A242089

/-- `2*A174709(A000040(n+1)-1)` -/
def P4023576079812655691.Spec : Prop :=
  ∀ n, P4023576079812655691.a n = A242089 (n + 1)

end A242089

/-! ## A242089.P473373587766503174

`2*A211540(A000040(n+1)-1)`
-/

namespace A242089.P473373587766503174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A211540 (A000040 (n + 1) - 1).toNat

end

end A242089.P473373587766503174

namespace A242089

/-- `2*A211540(A000040(n+1)-1)` -/
def P473373587766503174.Spec : Prop :=
  ∀ n, P473373587766503174.a n = A242089 (n + 1)

end A242089

/-!
# A242090: Number of triples (a,b,c) with 0 < a < b < c < p and a + b + c == 0 mod p, where 2*b < p = prime(n).

The programs for A242090, the canonical program `A242090.P12079019008023178367` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A242090 has offset 1).

The definition of A242090 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A242090.P12079019008023178367

`1/2*A242089(n+1)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A242090

/-- `1/2*A242089(n+1)` -/
def P12079019008023178367.Spec : Prop :=
  ∀ n, P12079019008023178367.a n = (A242090 (n + 1) : ℚ)

end A242090

/-! ## A242090.P10977189254249885226

`round((A000040(n+1)-3)²/12)`
-/

namespace A242090.P10977189254249885226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((A000040 (n + 1) - 3) ^ 2 : ℚ) / 12)

end

end A242090.P10977189254249885226

namespace A242090

/-- `round((A000040(n+1)-3)²/12)` -/
def P10977189254249885226.Spec : Prop :=
  ∀ n, P10977189254249885226.a n = A242090 (n + 1)

end A242090

/-! ## A242090.P6221846575135633438

`A001399(A000040(n+1))-Δ[A007504(n)]`
-/

namespace A242090.P6221846575135633438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001399 (A000040 (n + 1)).toNat - (f1 (n + 1) - f1 n)

end

end A242090.P6221846575135633438

namespace A242090

/-- `A001399(A000040(n+1))-Δ[A007504(n)]` -/
def P6221846575135633438.Spec : Prop :=
  ∀ n, P6221846575135633438.a n = A242090 (n + 1)

end A242090

/-! ## A242090.P13302252507714364955

`A001399(A006005(n+1))-A006005(n+1)`
-/

namespace A242090.P13302252507714364955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001399 (A006005 (n + 1)).toNat - A006005 (n + 1)

end

end A242090.P13302252507714364955

namespace A242090

/-- `A001399(A006005(n+1))-A006005(n+1)` -/
def P13302252507714364955.Spec : Prop :=
  ∀ n, P13302252507714364955.a n = A242090 (n + 1)

end A242090

/-! ## A242090.P12098213897418609148

`A001399(A008578(n+2))-A008578(n+2)`
-/

namespace A242090.P12098213897418609148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001399 (A008578 (n + 2)).toNat - A008578 (n + 2)

end

end A242090.P12098213897418609148

namespace A242090

/-- `A001399(A008578(n+2))-A008578(n+2)` -/
def P12098213897418609148.Spec : Prop :=
  ∀ n, P12098213897418609148.a n = A242090 (n + 1)

end A242090

/-! ## A242090.P14694156476710136303

`A001399(A000040(n+1))-sqrt(A001248(n+1))`
-/

namespace A242090.P14694156476710136303
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A001399 (A000040 (n + 1)).toNat : ℝ) - Real.sqrt (A001248 (n + 1) : ℝ)

end

end A242090.P14694156476710136303

namespace A242090

/-- `A001399(A000040(n+1))-sqrt(A001248(n+1))` -/
def P14694156476710136303.Spec : Prop :=
  ∀ n, P14694156476710136303.a n = (A242090 (n + 1) : ℝ)

end A242090

/-! ## A242090.P11391119664171443866

`A001399(A000040(n+1))-∑[A054541(n+1)]`
-/

namespace A242090.P11391119664171443866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001399 (A000040 (n + 1)).toNat - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A242090.P11391119664171443866

namespace A242090

/-- `A001399(A000040(n+1))-∑[A054541(n+1)]` -/
def P11391119664171443866.Spec : Prop :=
  ∀ n, P11391119664171443866.a n = A242090 (n + 1)

end A242090

/-! ## A242090.P1988282818958362564

`A001399(A006093(n+1)+1)-Δ[A007504(n)]`
-/

namespace A242090.P1988282818958362564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001399 (A006093 (n + 1) + 1).toNat - (f1 (n + 1) - f1 n)

end

end A242090.P1988282818958362564

namespace A242090

/-- `A001399(A006093(n+1)+1)-Δ[A007504(n)]` -/
def P1988282818958362564.Spec : Prop :=
  ∀ n, P1988282818958362564.a n = A242090 (n + 1)

end A242090

/-! ## A242090.P9168308671444401617

`A001399(A040976(n+1)+2)-Δ[A007504(n)]`
-/

namespace A242090.P9168308671444401617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001399 (A040976 (n + 1) + 2).toNat - (f1 (n + 1) - f1 n)

end

end A242090.P9168308671444401617

namespace A242090

/-- `A001399(A040976(n+1)+2)-Δ[A007504(n)]` -/
def P9168308671444401617.Spec : Prop :=
  ∀ n, P9168308671444401617.a n = A242090 (n + 1)

end A242090

/-! ## A242090.P9585526095474534803

`A001399(A086801(n+1)+3)-Δ[A007504(n)]`
-/

namespace A242090.P9585526095474534803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001399 (A086801 (n + 1) + 3).toNat - (f1 (n + 1) - f1 n)

end

end A242090.P9585526095474534803

namespace A242090

/-- `A001399(A086801(n+1)+3)-Δ[A007504(n)]` -/
def P9585526095474534803.Spec : Prop :=
  ∀ n, P9585526095474534803.a n = A242090 (n + 1)

end A242090

/-! ## A242090.P18290338448068019397

`A001399(A113935(n+1)-3)-Δ[A007504(n)]`
-/

namespace A242090.P18290338448068019397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001399 (A113935 (n + 1) - 3).toNat - (f1 (n + 1) - f1 n)

end

end A242090.P18290338448068019397

namespace A242090

/-- `A001399(A113935(n+1)-3)-Δ[A007504(n)]` -/
def P18290338448068019397.Spec : Prop :=
  ∀ n, P18290338448068019397.a n = A242090 (n + 1)

end A242090

/-! ## A242090.P14409447412820045762

`A001399(A175222(n+1)-5)-Δ[A007504(n)]`
-/

namespace A242090.P14409447412820045762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001399 (A175222 (n + 1) - 5).toNat - (f1 (n + 1) - f1 n)

end

end A242090.P14409447412820045762

namespace A242090

/-- `A001399(A175222(n+1)-5)-Δ[A007504(n)]` -/
def P14409447412820045762.Spec : Prop :=
  ∀ n, P14409447412820045762.a n = A242090 (n + 1)

end A242090

/-! ## A242090.P1975884801094745175

`A001399(A086801(n+1)+3)-∑[A054541(n+1)]`
-/

namespace A242090.P1975884801094745175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001399 (A086801 (n + 1) + 3).toNat - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A242090.P1975884801094745175

namespace A242090

/-- `A001399(A086801(n+1)+3)-∑[A054541(n+1)]` -/
def P1975884801094745175.Spec : Prop :=
  ∀ n, P1975884801094745175.a n = A242090 (n + 1)

end A242090

/-! ## A242090.P4303986456194597625

`A001399(A086801(n+1)+3)-(A006093(n+1)+1)`
-/

namespace A242090.P4303986456194597625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001399 (A086801 (n + 1) + 3).toNat - (A006093 (n + 1) + 1)

end

end A242090.P4303986456194597625

namespace A242090

/-- `A001399(A086801(n+1)+3)-(A006093(n+1)+1)` -/
def P4303986456194597625.Spec : Prop :=
  ∀ n, P4303986456194597625.a n = A242090 (n + 1)

end A242090

/-! ## A242090.P11301007089376213388

`A001399(A086801(n+1)+3)-(A040976(n+1)+2)`
-/

namespace A242090.P11301007089376213388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001399 (A086801 (n + 1) + 3).toNat - (A040976 (n + 1) + 2)

end

end A242090.P11301007089376213388

namespace A242090

/-- `A001399(A086801(n+1)+3)-(A040976(n+1)+2)` -/
def P11301007089376213388.Spec : Prop :=
  ∀ n, P11301007089376213388.a n = A242090 (n + 1)

end A242090

/-! ## A242090.P12900651051922782882

`A174709(A006093(n+1))`
-/

namespace A242090.P12900651051922782882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174709 (A006093 (n + 1)).toNat

end

end A242090.P12900651051922782882

namespace A242090

/-- `A174709(A006093(n+1))` -/
def P12900651051922782882.Spec : Prop :=
  ∀ n, P12900651051922782882.a n = A242090 (n + 1)

end A242090

/-! ## A242090.P16678327987045725201

`A174709(A039915(n+1))`
-/

namespace A242090.P16678327987045725201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174709 (A039915 (n + 1)).toNat

end

end A242090.P16678327987045725201

namespace A242090

/-- `A174709(A039915(n+1))` -/
def P16678327987045725201.Spec : Prop :=
  ∀ n, P16678327987045725201.a n = A242090 (n + 1)

end A242090

/-! ## A242090.P3442887245253113357

`A325695(A000040(n+1))`
-/

namespace A242090.P3442887245253113357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325695 (A000040 (n + 1)).toNat

end

end A242090.P3442887245253113357

namespace A242090

/-- `A325695(A000040(n+1))` -/
def P3442887245253113357.Spec : Prop :=
  ∀ n, P3442887245253113357.a n = A242090 (n + 1)

end A242090

/-! ## A242090.P11523035240270680344

`A174709(A156037(n+1))`
-/

namespace A242090.P11523035240270680344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174709 (A156037 (n + 1)).toNat

end

end A242090.P11523035240270680344

namespace A242090

/-- `A174709(A156037(n+1))` -/
def P11523035240270680344.Spec : Prop :=
  ∀ n, P11523035240270680344.a n = A242090 (n + 1)

end A242090

/-! ## A242090.P16846395741399087595

`A325695(A006005(n+1))`
-/

namespace A242090.P16846395741399087595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325695 (A006005 (n + 1)).toNat

end

end A242090.P16846395741399087595

namespace A242090

/-- `A325695(A006005(n+1))` -/
def P16846395741399087595.Spec : Prop :=
  ∀ n, P16846395741399087595.a n = A242090 (n + 1)

end A242090

/-!
# A242091: a(n) = r * (n-1)! where r is the rational number that satisfies the equation Sum_{k>=n} (-1)^(k + n)/C(k,n) = n*2^(n-1)*log(2) - r.

The programs for A242091, there is no canonical definition to state claims against.
-/

/-! ## A242091.P7843113554306709963

`abs(1-n)!-floor(acot(n))+n!+2*(n+1)*a(n-1)` with `a(0)=0`
-/

namespace A242091.P7843113554306709963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (Nat.factorial |1 - (n : ℤ)|.toNat : ℤ) - ⌊SequenceMachineLib.acot (n : ℝ)⌋ + ((Nat.factorial n : ℤ) + (2 * (n + 1) : ℤ) * a (n - 1))

end

end A242091.P7843113554306709963

/-! ## A242091.P10896082751066799690

`(A068102(n+1)-n!)/2`
-/

namespace A242091.P10896082751066799690
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A068102 (n + 1) - (Nat.factorial n : ℤ) : ℚ) / 2

end

end A242091.P10896082751066799690

/-! ## A242091.P7698860539811230395

`A104150(n)+n!+2*(n+1)*a(n-1)` with `a(0)=0`
-/

namespace A242091.P7698860539811230395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A104150 n + ((Nat.factorial n : ℤ) + (2 * (n + 1) : ℤ) * a (n - 1))

end

end A242091.P7698860539811230395

/-! ## A242091.P1010356125498359836

`(A068102(n+1)-A000142(n))/2`
-/

namespace A242091.P1010356125498359836
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A068102 (n + 1) - A000142 n : ℚ) / 2

end

end A242091.P1010356125498359836

/-! ## A242091.P8089228818662386889

`2*(A068102(-xor(n, -1))-A000142(n))/4`
-/

namespace A242091.P8089228818662386889
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * ((A068102 (-Int.xor (n : ℤ) (-1)).toNat - A000142 n : ℚ) / 4)

end

end A242091.P8089228818662386889

/-!
# A242093: Number A(n,k) of inequivalent n X k binary matrices, where equivalence means permutations of rows or columns or the symbol set; square array A(n,k), n>=0, k>=0, read by antidiagonals.

The programs for A242093, there is no canonical definition to state claims against.
-/

/-! ## A242093.P5460477812494077095

`A266409(A034851(n)%A288728(3*(n+1)))`
-/

namespace A242093.P5460477812494077095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266409 (Int.tmod (A034851 n) (A288728 (3 * (n + 1)))).toNat

end

end A242093.P5460477812494077095

/-! ## A242093.P12749582976541779627

`A266409(A034851(n)%A244360(n+2))`
-/

namespace A242093.P12749582976541779627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266409 (Int.tmod (A034851 n) (A244360 (n + 2))).toNat

end

end A242093.P12749582976541779627

/-! ## A242093.P13834637745544477108

`A266409(A034851(n))%A266425(n+5)`
-/

namespace A242093.P13834637745544477108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A266409 (A034851 n).toNat) (A266425 (n + 5))

end

end A242093.P13834637745544477108

/-! ## A242093.P13152047927624173686

`A238884(or(1, A026670(n)))`
-/

namespace A242093.P13152047927624173686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238884 (Int.lor 1 (A026670 n)).toNat

end

end A242093.P13152047927624173686

/-! ## A242093.P4932926608810430204

`∑{e}[A052849(A034851(n)), #]`
-/

namespace A242093.P4932926608810430204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052849 (A034851 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A242093.P4932926608810430204

/-!
# A242094: Complement of A003249.

The programs for A242094, the canonical program `A242094.P3645573167155968656` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A242094 has offset 1).

The definition of A242094 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A242094.P8935311449452029027

`comp[A003249(n+1)-1]+1`
-/

namespace A242094.P8935311449452029027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003249 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A242094.P8935311449452029027

namespace A242094

/-- `comp[A003249(n+1)-1]+1` -/
def P8935311449452029027.Spec : Prop :=
  ∀ n, (P8935311449452029027.a n : ℤ) = A242094 (n + 1)

end A242094

/-! ## A242094.P1194090977793963417

`∪[A247425(n+1), A026351(n)]`
-/

namespace A242094.P1194090977793963417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247425 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026351 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A242094.P1194090977793963417

namespace A242094

/-- `∪[A247425(n+1), A026351(n)]` -/
def P1194090977793963417.Spec : Prop :=
  ∀ n, (P1194090977793963417.a n : ℤ) = A242094 (n + 1)

end A242094

/-! ## A242094.P3645573167155968656

`comp[A004957(comp[A003233(n+1)])]`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A242094

/-- `comp[A004957(comp[A003233(n+1)])]` -/
def P3645573167155968656.Spec : Prop :=
  ∀ n, (P3645573167155968656.a n : ℤ) = A242094 (n + 1)

theorem P3645573167155968656.correct : P3645573167155968656.Spec := by
  intro n
  simp only [A242094, Nat.add_sub_cancel]

end A242094

/-! ## A242094.P5878385367329164423

`lt[A005752(n), 2*n]`
-/

namespace A242094.P5878385367329164423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005752 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A242094.P5878385367329164423

namespace A242094

/-- `lt[A005752(n), 2*n]` -/
def P5878385367329164423.Spec : Prop :=
  ∀ n, (P5878385367329164423.a n : ℤ) = A242094 (n + 1)

end A242094

/-! ## A242094.P4817388581450937527

`A247428(n+1)-n`
-/

namespace A242094.P4817388581450937527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247428 (n + 1) - (n : ℤ)

end

end A242094.P4817388581450937527

namespace A242094

/-- `A247428(n+1)-n` -/
def P4817388581450937527.Spec : Prop :=
  ∀ n, P4817388581450937527.a n = A242094 (n + 1)

end A242094

/-! ## A242094.P1159725292816483171

`A247430(n+1)-(n+1)`
-/

namespace A242094.P1159725292816483171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247430 (n + 1) - (n + 1 : ℤ)

end

end A242094.P1159725292816483171

namespace A242094

/-- `A247430(n+1)-(n+1)` -/
def P1159725292816483171.Spec : Prop :=
  ∀ n, P1159725292816483171.a n = A242094 (n + 1)

end A242094

/-! ## A242094.P16550558544593837041

`A023443(A247430(n+1)-n)`
-/

namespace A242094.P16550558544593837041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A247430 (n + 1) - (n : ℤ)).toNat

end

end A242094.P16550558544593837041

namespace A242094

/-- `A023443(A247430(n+1)-n)` -/
def P16550558544593837041.Spec : Prop :=
  ∀ n, P16550558544593837041.a n = A242094 (n + 1)

end A242094

/-!
# A242095: Number A(n,k) of inequivalent n X n matrices with entries from [k], where equivalence means permutations of rows or columns or the symbol set; square array A(n,k), n>=0, k>=0, read by antidiagonals.

The programs for A242095, there is no canonical definition to state claims against.
-/

/-! ## A242095.P5890410414362669247

`A007953(A143841(n)^A151861(n))`
-/

namespace A242095.P5890410414362669247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (SequenceMachineLib.roundAway ((A143841 n : ℚ) ^ (A151861 n : ℤ))).toNat

end

end A242095.P5890410414362669247

/-! ## A242095.P4911848739935422675

`A007953(A182172(n)^A151861(n))`
-/

namespace A242095.P4911848739935422675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (SequenceMachineLib.roundAway ((A182172 n : ℚ) ^ (A151861 n : ℤ))).toNat

end

end A242095.P4911848739935422675

/-! ## A242095.P9314381117492664197

`A007953(A276719(n)^A151861(n))`
-/

namespace A242095.P9314381117492664197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (SequenceMachineLib.roundAway ((A276719 n : ℚ) ^ (A151861 n : ℤ))).toNat

end

end A242095.P9314381117492664197

/-! ## A242095.P15675771218172830179

`A318405(A292783(n))`
-/

namespace A242095.P15675771218172830179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318405 (A292783 n).toNat

end

end A242095.P15675771218172830179

/-! ## A242095.P11136470195296167473

`A318407(A379168(n))`
-/

namespace A242095.P11136470195296167473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318407 (A379168 n).toNat

end

end A242095.P11136470195296167473

/-!
# A242096: a(n) = (n mod 2) * pi( ceiling(n/2)-1 ), where pi is the prime counting function (A000720).

The programs for A242096, the canonical program `A242096.P10773511550970548791` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A242096 has offset 0).

The definition of A242096 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A242096.P7453007571987696062

`A056172(n^(n%2))`
-/

namespace A242096.P7453007571987696062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056172 (n ^ (n % 2))

end

end A242096.P7453007571987696062

namespace A242096

/-- `A056172(n^(n%2))` -/
def P7453007571987696062.Spec : Prop :=
  ∀ n, P7453007571987696062.a n = A242096 n

end A242096

/-! ## A242096.P9281338940046356569

`A056172(n^and(1, n))`
-/

namespace A242096.P9281338940046356569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056172 (n ^ Nat.land 1 n)

end

end A242096.P9281338940046356569

namespace A242096

/-- `A056172(n^and(1, n))` -/
def P9281338940046356569.Spec : Prop :=
  ∀ n, P9281338940046356569.a n = A242096 n

end A242096

/-! ## A242096.P547207674886248098

`A056172((n-1)*and(1, n)+1)`
-/

namespace A242096.P547207674886248098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056172 (((n : ℤ) - 1) * (Nat.land 1 n : ℤ) + 1).toNat

end

end A242096.P547207674886248098

namespace A242096

/-- `A056172((n-1)*and(1, n)+1)` -/
def P547207674886248098.Spec : Prop :=
  ∀ n, P547207674886248098.a n = A242096 n

end A242096

/-! ## A242096.P2865278824104079015

`A056172(A093178(n))`
-/

namespace A242096.P2865278824104079015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056172 (A093178 n).toNat

end

end A242096.P2865278824104079015

namespace A242096

/-- `A056172(A093178(n))` -/
def P2865278824104079015.Spec : Prop :=
  ∀ n, P2865278824104079015.a n = A242096 n

end A242096

/-! ## A242096.P10773511550970548791

`A230980(A057979(n))`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A242096

/-- `A230980(A057979(n))` -/
def P10773511550970548791.Spec : Prop :=
  ∀ n, P10773511550970548791.a n = A242096 n

theorem P10773511550970548791.correct : P10773511550970548791.Spec := by
  intro n
  simp only [A242096]

end A242096

/-! ## A242096.P12701277122578411013

`A056172(A124625(n)+1)`
-/

namespace A242096.P12701277122578411013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056172 (A124625 n + 1).toNat

end

end A242096.P12701277122578411013

namespace A242096

/-- `A056172(A124625(n)+1)` -/
def P12701277122578411013.Spec : Prop :=
  ∀ n, P12701277122578411013.a n = A242096 n

end A242096

/-! ## A242096.P3202180892248163270

`A132090(A130008(n))`
-/

namespace A242096.P3202180892248163270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132090 (A130008 n).toNat

end

end A242096.P3202180892248163270

namespace A242096

/-- `A132090(A130008(n))` -/
def P3202180892248163270.Spec : Prop :=
  ∀ n, P3202180892248163270.a n = A242096 n

end A242096

/-! ## A242096.P3133079171745209946

`A081417(A114220(n+1))`
-/

namespace A242096.P3133079171745209946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081417 (A114220 (n + 1)).toNat

end

end A242096.P3133079171745209946

namespace A242096

/-- `A081417(A114220(n+1))` -/
def P3133079171745209946.Spec : Prop :=
  ∀ n, P3133079171745209946.a n = A242096 n

end A242096

/-! ## A242096.P18381730708280097760

`A081417(A055802(n+2))`
-/

namespace A242096.P18381730708280097760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081417 (A055802 (n + 2)).toNat

end

end A242096.P18381730708280097760

namespace A242096

/-- `A081417(A055802(n+2))` -/
def P18381730708280097760.Spec : Prop :=
  ∀ n, P18381730708280097760.a n = A242096 n

end A242096

/-! ## A242096.P8143237234864851932

`A302642(A133265(n))`
-/

namespace A242096.P8143237234864851932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302642 (A133265 n).toNat

end

end A242096.P8143237234864851932

namespace A242096

/-- `A302642(A133265(n))` -/
def P8143237234864851932.Spec : Prop :=
  ∀ n, P8143237234864851932.a n = A242096 n

end A242096

/-!
# A242097: Sp = reversal of some square s where s = x^2 for x = 1,2,.. (ignoring leading zeros). Sp is in the sequence if it is semiprime.

The programs for A242097, there is no canonical definition to state claims against.
-/

/-! ## A242097.P15292216354178780138

`A004086(A115711(n+1))`
-/

namespace A242097.P15292216354178780138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (A115711 (n + 1)).toNat

end

end A242097.P15292216354178780138

/-! ## A242097.P17351027748288654600

`A004086(∩[A115687(n+1), n²])`
-/

namespace A242097.P17351027748288654600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115687 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n)

end

end A242097.P17351027748288654600

/-! ## A242097.P11126074443272645400

`filter[A002942(n+1), A064911(#)]`
-/

namespace A242097.P11126074443272645400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002942 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A242097.P11126074443272645400

/-!
# A242098: Numbers n such that the residue of n modulo floor(sqrt(n)) is prime.

The programs for A242098, the canonical program `A242098.P10308857904202637910` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A242098 has offset 1).

The definition of A242098 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A242098.P10308857904202637910

`eq[1, A105700((n+1)%floor(sqrt(n+1)))]+1`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A242098

/-- `eq[1, A105700((n+1)%floor(sqrt(n+1)))]+1` -/
def P10308857904202637910.Spec : Prop :=
  ∀ n, (P10308857904202637910.a n : ℤ) = A242098 (n + 1)

theorem P10308857904202637910.correct : P10308857904202637910.Spec := by
  intro n
  simp only [A242098, Nat.add_sub_cancel]

end A242098

/-! ## A242098.P14019623036005462822

`lt[5, A284966(A276886(n+1))]`
-/

namespace A242098.P14019623036005462822
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284966 (A276886 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A242098.P14019623036005462822

namespace A242098

/-- `lt[5, A284966(A276886(n+1))]` -/
def P14019623036005462822.Spec : Prop :=
  ∀ n, (P14019623036005462822.a n : ℤ) = A242098 (n + 1)

end A242098

/-! ## A242098.P10928256721231918647

`eq[char[A057452(n+1)], A258123(2*n+1)]`
-/

namespace A242098.P10928256721231918647
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057452 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258123 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A242098.P10928256721231918647

namespace A242098

/-- `eq[char[A057452(n+1)], A258123(2*n+1)]` -/
def P10928256721231918647.Spec : Prop :=
  ∀ n, (P10928256721231918647.a n : ℤ) = A242098 (n + 1)

end A242098

/-! ## A242098.P17759553288765861848

`lt[A223172(n)-a(n-2), A082601(n)]` with `a(0)=4, a(1)=2, a(2)=4`
-/

namespace A242098.P17759553288765861848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [4, 2, 4] fun n f1 =>
  A223172 n - f1 (n - 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082601 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A242098.P17759553288765861848

namespace A242098

/-- `lt[A223172(n)-a(n-2), A082601(n)]` -/
def P17759553288765861848.Spec : Prop :=
  ∀ n, (P17759553288765861848.a n : ℤ) = A242098 (n + 1)

end A242098

/-! ## A242098.P11145969066586627754

`lt[A036378(n), A000578(A059739(n))]`
-/

namespace A242098.P11145969066586627754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036378 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (A059739 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A242098.P11145969066586627754

namespace A242098

/-- `lt[A036378(n), A000578(A059739(n))]` -/
def P11145969066586627754.Spec : Prop :=
  ∀ n, (P11145969066586627754.a n : ℤ) = A242098 (n + 1)

end A242098

