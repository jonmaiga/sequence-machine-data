import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
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
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
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
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C002
import Seq.B005.C000
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
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
# A108300: a(n) = 3*a(n-1) + a(n-2), with a(0) = 1, a(1) = 5.

The programs for A108300, the canonical program `A108300.P1521954395106743104` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A108300 has offset 0).

The definition of A108300 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*a(n-1)+a(n-2)` (program `A108300.P1521954395106743104`, by `A108300.P1521954395106743104.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A108300.P1521954395106743104

`3*a(n-1)+a(n-2)` with `a(0)=1, a(1)=5`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A108300

/-- `3*a(n-1)+a(n-2)` -/
def P1521954395106743104.Spec : Prop :=
  ∀ n, (P1521954395106743104.a n : ℤ) = A108300 n

theorem P1521954395106743104.correct : P1521954395106743104.Spec := by
  intro n
  simp only [A108300]

end A108300

/-! ## A108300.P17204669885061661168

`A052924(n+1)-A052924(n)`
-/

namespace A108300.P17204669885061661168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052924 (n + 1) - A052924 n

end

end A108300.P17204669885061661168

namespace A108300

/-- `A052924(n+1)-A052924(n)` -/
def P17204669885061661168.Spec : Prop :=
  ∀ n, P17204669885061661168.a n = A108300 n

end A108300

/-! ## A108300.P15008889305657381683

`ogf((1+2x)/(1-3x-x^2))`
-/

namespace A108300.P15008889305657381683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2] [1, -3, -1] n

end

end A108300.P15008889305657381683

namespace A108300

/-- `ogf((1+2x)/(1-3x-x^2))` -/
def P15008889305657381683.Spec : Prop :=
  ∀ n, P15008889305657381683.a n = A108300 n

end A108300

/-! ## A108300.P3978089800059902920

`a(n-2)+lcm(3, a(n-1))` with `a(0)=1, a(1)=5`
-/

namespace A108300.P3978089800059902920
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 5] fun n a =>
  a (n - 2) + Nat.lcm 3 (a (n - 1))

end

end A108300.P3978089800059902920

namespace A108300

/-- `a(n-2)+lcm(3, a(n-1))` -/
def P3978089800059902920.Spec : Prop :=
  ∀ n, (P3978089800059902920.a n : ℤ) = A108300 n

end A108300

/-! ## A108300.P11135403336363296283

`3*a(n-1)-floor(-a(n-2))` with `a(0)=1, a(1)=5`

`floor` is left out, it is the identity on integers.
-/

namespace A108300.P11135403336363296283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 5] fun n a =>
  3 * a (n - 1) - (-a (n - 2))

end

end A108300.P11135403336363296283

namespace A108300

/-- `3*a(n-1)-floor(-a(n-2))` -/
def P11135403336363296283.Spec : Prop :=
  ∀ n, P11135403336363296283.a n = A108300 n

end A108300

/-! ## A108300.P13794528588799683820

`Δ[a(n-2)+a(n-1)/(1-2/3)]` with `a(0)=1, a(1)=2`
-/

namespace A108300.P13794528588799683820
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  f1 (n - 2) + f1 (n - 1) / (1 - (2 : ℚ) / 3)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A108300.P13794528588799683820

namespace A108300

/-- `Δ[a(n-2)+a(n-1)/(1-2/3)]` -/
def P13794528588799683820.Spec : Prop :=
  ∀ n, P13794528588799683820.a n = (A108300 n : ℚ)

end A108300

/-! ## A108300.P1345751900578375646

`4*a(n-1)-(a(n-1)-a(n-2))` with `a(0)=1, a(1)=5`
-/

namespace A108300.P1345751900578375646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 5] fun n a =>
  4 * a (n - 1) - (a (n - 1) - a (n - 2))

end

end A108300.P1345751900578375646

namespace A108300

/-- `4*a(n-1)-(a(n-1)-a(n-2))` -/
def P1345751900578375646.Spec : Prop :=
  ∀ n, P1345751900578375646.a n = A108300 n

end A108300

/-! ## A108300.P2611024392065913189

`a(n-1)+a(n-1)+a(n-1)+a(n-2)` with `a(0)=1, a(1)=5`
-/

namespace A108300.P2611024392065913189
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 5] fun n a =>
  a (n - 1) + (a (n - 1) + (a (n - 1) + a (n - 2)))

end

end A108300.P2611024392065913189

namespace A108300

/-- `a(n-1)+a(n-1)+a(n-1)+a(n-2)` -/
def P2611024392065913189.Spec : Prop :=
  ∀ n, (P2611024392065913189.a n : ℤ) = A108300 n

theorem P2611024392065913189.correct : P2611024392065913189.Spec := by
  intro n
  simp only [A108300, Nat.add_sub_cancel, A108300.P2611024392065913189.a, A108300.P1521954395106743104.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A108300

/-! ## A108300.P6493867645234263195

`Δ[A052924(n)]`
-/

namespace A108300.P6493867645234263195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052924 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A108300.P6493867645234263195

namespace A108300

/-- `Δ[A052924(n)]` -/
def P6493867645234263195.Spec : Prop :=
  ∀ n, P6493867645234263195.a n = A108300 n

end A108300

/-! ## A108300.P2848514735963003663

`∑[record[A107856(n+1)]]`
-/

namespace A108300.P2848514735963003663
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107856 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A108300.P2848514735963003663

namespace A108300

/-- `∑[record[A107856(n+1)]]` -/
def P2848514735963003663.Spec : Prop :=
  ∀ n, P2848514735963003663.a n = A108300 n

end A108300

/-! ## A108300.P15431789772545910598

`abs(2-A134250(n+2))`
-/

namespace A108300.P15431789772545910598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - A134250 (n + 2)|

end

end A108300.P15431789772545910598

namespace A108300

/-- `abs(2-A134250(n+2))` -/
def P15431789772545910598.Spec : Prop :=
  ∀ n, P15431789772545910598.a n = A108300 n

end A108300

/-! ## A108300.P13775167538452436940

`∑[A107856(2*n+3)]`
-/

namespace A108300.P13775167538452436940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107856 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A108300.P13775167538452436940

namespace A108300

/-- `∑[A107856(2*n+3)]` -/
def P13775167538452436940.Spec : Prop :=
  ∀ n, P13775167538452436940.a n = A108300 n

end A108300

/-! ## A108300.P4190843640784582874

`Δ[A249579(4*n+2)]`
-/

namespace A108300.P4190843640784582874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249579 (4 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A108300.P4190843640784582874

namespace A108300

/-- `Δ[A249579(4*n+2)]` -/
def P4190843640784582874.Spec : Prop :=
  ∀ n, P4190843640784582874.a n = A108300 n

end A108300

/-! ## A108300.P7375623284306305505

`A282702(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A108300.P7375623284306305505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A282702 (n - 1) + a (n - 1)

end

end A108300.P7375623284306305505

namespace A108300

/-- `A282702(n-1)+a(n-1)` -/
def P7375623284306305505.Spec : Prop :=
  ∀ n, P7375623284306305505.a n = A108300 n

end A108300

/-! ## A108300.P295561030014586989

`A006190(n)+A003688(n+1)`
-/

namespace A108300.P295561030014586989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006190 n + A003688 (n + 1)

end

end A108300.P295561030014586989

namespace A108300

/-- `A006190(n)+A003688(n+1)` -/
def P295561030014586989.Spec : Prop :=
  ∀ n, P295561030014586989.a n = A108300 n

end A108300

/-! ## A108300.P17156254755957818513

`A180148(n)-A006190(abs(1-n))`
-/

namespace A108300.P17156254755957818513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180148 n - A006190 |1 - (n : ℤ)|.toNat

end

end A108300.P17156254755957818513

namespace A108300

/-- `A180148(n)-A006190(abs(1-n))` -/
def P17156254755957818513.Spec : Prop :=
  ∀ n, P17156254755957818513.a n = A108300 n

end A108300

/-! ## A108300.P775285984672335560

`∑[A052924(n)]+2*A006190(n)`
-/

namespace A108300.P775285984672335560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052924 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2 * A006190 n

end

end A108300.P775285984672335560

namespace A108300

/-- `∑[A052924(n)]+2*A006190(n)` -/
def P775285984672335560.Spec : Prop :=
  ∀ n, P775285984672335560.a n = A108300 n

end A108300

/-! ## A108300.P15811628670364404854

`A010892(n)+Δ[2*A006189(n)]`
-/

namespace A108300.P15811628670364404854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A006189 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 n + (f1 (n + 1) - f1 n)

end

end A108300.P15811628670364404854

namespace A108300

/-- `A010892(n)+Δ[2*A006189(n)]` -/
def P15811628670364404854.Spec : Prop :=
  ∀ n, P15811628670364404854.a n = A108300 n

end A108300

/-! ## A108300.P14509264947621711369

`∑[2*A052906(n)-A052924(n)]`
-/

namespace A108300.P14509264947621711369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A052906 n - A052924 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A108300.P14509264947621711369

namespace A108300

/-- `∑[2*A052906(n)-A052924(n)]` -/
def P14509264947621711369.Spec : Prop :=
  ∀ n, P14509264947621711369.a n = A108300 n

end A108300

/-! ## A108300.P4821546021688364110

`A006190(n+1)+2*A006190(n)`
-/

namespace A108300.P4821546021688364110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006190 (n + 1) + 2 * A006190 n

end

end A108300.P4821546021688364110

namespace A108300

/-- `A006190(n+1)+2*A006190(n)` -/
def P4821546021688364110.Spec : Prop :=
  ∀ n, P4821546021688364110.a n = A108300 n

end A108300

/-!
# A108301: Digital sum of the Fermat number 2^(2^n) + 1.

The programs for A108301, there is no canonical definition to state claims against.
-/

/-! ## A108301.P6788399085880743444

`A065713(floor(2^(n-1)))+ceil(acot(n))`
-/

namespace A108301.P6788399085880743444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065713 ⌊(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋.toNat + ⌈SequenceMachineLib.acot (n : ℝ)⌉

end

end A108301.P6788399085880743444

/-! ## A108301.P2326005074615398306

`A065713(ceil(2^(n-1)))-(abs(1-n)-n)`
-/

namespace A108301.P2326005074615398306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065713 ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉.toNat - (|1 - (n : ℤ)| - (n : ℤ))

end

end A108301.P2326005074615398306

/-! ## A108301.P16200333690923225815

`A158388(n)+A065713((2-C(2, n²))^(n-1))`
-/

namespace A108301.P16200333690923225815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158388 n + A065713 (SequenceMachineLib.roundAway ((2 - (Nat.choose 2 (n ^ 2) : ℤ) : ℚ) ^ ((n : ℤ) - 1 : ℤ))).toNat

end

end A108301.P16200333690923225815

/-! ## A108301.P12577606191129956781

`A001370(2^n)+1`
-/

namespace A108301.P12577606191129956781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001370 (2 ^ n) + 1

end

end A108301.P12577606191129956781

/-! ## A108301.P10200558715866428179

`record[A001370(A001316(n))+1]`
-/

namespace A108301.P10200558715866428179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001370 (A001316 n).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A108301.P10200558715866428179

/-!
# A108304: Number of set partitions of {1, ..., n} that avoid 3-crossings.

The programs for A108304, there is no canonical definition to state claims against.
-/

/-! ## A108304.P2544546078227862401

`A220913(n)-A210717(A091232(n))`
-/

namespace A108304.P2544546078227862401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220913 n - A210717 (A091232 n).toNat

end

end A108304.P2544546078227862401

/-! ## A108304.P14846292506860488587

`A220913(A095160(n))-char[9]`
-/

namespace A108304.P14846292506860488587
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220913 (A095160 n).toNat - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A108304.P14846292506860488587

/-! ## A108304.P18357483682310644267

`A220913(A004860(n+1))-char[9]`
-/

namespace A108304.P18357483682310644267
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220913 (A004860 (n + 1)).toNat - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A108304.P18357483682310644267

/-! ## A108304.P8725268796187347854

`A220913(A002998(n))-A035041(n)`
-/

namespace A108304.P8725268796187347854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220913 (A002998 n).toNat - A035041 n

end

end A108304.P8725268796187347854

/-! ## A108304.P3132617110793753991

`A220913(n)-A185284(A000045(n))`
-/

namespace A108304.P3132617110793753991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220913 n - A185284 (A000045 n).toNat

end

end A108304.P3132617110793753991

/-!
# A108305: Number of set partitions of {1, ..., n} that avoid 4-crossings.

The programs for A108305, there is no canonical definition to state claims against.
-/

/-! ## A108305.P16596525795045607018

`or(A141081(n), A243978(A014138(n)))`
-/

namespace A108305.P16596525795045607018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A141081 n) (A243978 (A014138 n).toNat)

end

end A108305.P16596525795045607018

/-! ## A108305.P17727966995720458244

`or(A243978(A014138(n)), A287256(n))`
-/

namespace A108305.P17727966995720458244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A243978 (A014138 n).toNat) (A287256 n)

end

end A108305.P17727966995720458244

/-! ## A108305.P16843565068538777192

`or(A243978(A014138(n)), A287668(n))`
-/

namespace A108305.P16843565068538777192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A243978 (A014138 n).toNat) (A287668 n)

end

end A108305.P16843565068538777192

/-! ## A108305.P14801623109247549369

`or(A141081(n), A325135(A108304(n)))`
-/

namespace A108305.P14801623109247549369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A141081 n) (A325135 (A108304 n).toNat)

end

end A108305.P14801623109247549369

/-! ## A108305.P13254309024620903387

`or(A141081(n), A141169(A328319(n)))`
-/

namespace A108305.P13254309024620903387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A141081 n) (A141169 (A328319 n).toNat)

end

end A108305.P13254309024620903387

/-!
# A108306: Expansion of (3*x+1)/(1-3*x-3*x^2).

The programs for A108306, the canonical program `A108306.P382534365414379543` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A108306 has offset 0).

The definition of A108306 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+3x)/(1-3x-3x^2))` (program `A108306.P382534365414379543`, by `A108306.P382534365414379543.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A108306.P382534365414379543

`ogf((1+3x)/(1-3x-3x^2))`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A108306

/-- `ogf((1+3x)/(1-3x-3x^2))` -/
def P382534365414379543.Spec : Prop :=
  ∀ n, P382534365414379543.a n = A108306 n

theorem P382534365414379543.correct : P382534365414379543.Spec := by
  intro n
  simp only [A108306]

end A108306

/-! ## A108306.P2854669205415179602

`3*a(n-1)+3*a(n-2)` with `a(0)=1, a(1)=6`
-/

namespace A108306.P2854669205415179602
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 6] fun n a =>
  3 * a (n - 1) + 3 * a (n - 2)

end

end A108306.P2854669205415179602

namespace A108306

/-- `3*a(n-1)+3*a(n-2)` -/
def P2854669205415179602.Spec : Prop :=
  ∀ n, (P2854669205415179602.a n : ℤ) = A108306 n

end A108306

/-! ## A108306.P8424968281711347584

`3*(a(n-1)+a(n-2))` with `a(0)=1, a(1)=6`
-/

namespace A108306.P8424968281711347584
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 6] fun n a =>
  3 * (a (n - 1) + a (n - 2))

end

end A108306.P8424968281711347584

namespace A108306

/-- `3*(a(n-1)+a(n-2))` -/
def P8424968281711347584.Spec : Prop :=
  ∀ n, (P8424968281711347584.a n : ℤ) = A108306 n

end A108306

/-! ## A108306.P1885211044663968291

`A134927(n+1)`
-/

namespace A108306.P1885211044663968291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134927 (n + 1)

end

end A108306.P1885211044663968291

namespace A108306

/-- `A134927(n+1)` -/
def P1885211044663968291.Spec : Prop :=
  ∀ n, P1885211044663968291.a n = A108306 n

end A108306

/-! ## A108306.P5764112885917387710

`floor(3*A180142(n)/2)`
-/

namespace A108306.P5764112885917387710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊3 * ((A180142 n : ℚ) / 2)⌋

end

end A108306.P5764112885917387710

namespace A108306

/-- `floor(3*A180142(n)/2)` -/
def P5764112885917387710.Spec : Prop :=
  ∀ n, P5764112885917387710.a n = A108306 n

end A108306

/-! ## A108306.P17185667254257687714

`A106435(n)+A030195(n+1)`
-/

namespace A108306.P17185667254257687714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106435 n + A030195 (n + 1)

end

end A108306.P17185667254257687714

namespace A108306

/-- `A106435(n)+A030195(n+1)` -/
def P17185667254257687714.Spec : Prop :=
  ∀ n, P17185667254257687714.a n = A108306 n

end A108306

/-! ## A108306.P3853827162033167558

`A106435(n+1)-A172012(n)`
-/

namespace A108306.P3853827162033167558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106435 (n + 1) - A172012 n

end

end A108306.P3853827162033167558

namespace A108306

/-- `A106435(n+1)-A172012(n)` -/
def P3853827162033167558.Spec : Prop :=
  ∀ n, P3853827162033167558.a n = A108306 n

end A108306

/-! ## A108306.P13129567442884671957

`A125145(n)+2*A030195(n)`
-/

namespace A108306.P13129567442884671957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125145 n + 2 * A030195 n

end

end A108306.P13129567442884671957

namespace A108306

/-- `A125145(n)+2*A030195(n)` -/
def P13129567442884671957.Spec : Prop :=
  ∀ n, P13129567442884671957.a n = A108306 n

end A108306

/-! ## A108306.P13904568407110473875

`A202206(n+1)-∑[A202206(n)]`
-/

namespace A108306.P13904568407110473875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202206 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202206 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A108306.P13904568407110473875

namespace A108306

/-- `A202206(n+1)-∑[A202206(n)]` -/
def P13904568407110473875.Spec : Prop :=
  ∀ n, P13904568407110473875.a n = A108306 n

end A108306

/-! ## A108306.P6130293457815097001

`A155116(n+1)-Δ[A030195(n)]`
-/

namespace A108306.P6130293457815097001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030195 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155116 (n + 1) - (f1 (n + 1) - f1 n)

end

end A108306.P6130293457815097001

namespace A108306

/-- `A155116(n+1)-Δ[A030195(n)]` -/
def P6130293457815097001.Spec : Prop :=
  ∀ n, P6130293457815097001.a n = A108306 n

end A108306

/-! ## A108306.P6704257305780253935

`A202206(n+1)-A030195(n+1)`
-/

namespace A108306.P6704257305780253935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202206 (n + 1) - A030195 (n + 1)

end

end A108306.P6704257305780253935

namespace A108306

/-- `A202206(n+1)-A030195(n+1)` -/
def P6704257305780253935.Spec : Prop :=
  ∀ n, P6704257305780253935.a n = A108306 n

end A108306

/-! ## A108306.P6402248420199268945

`A030195(n+1)+3*A030195(n)`
-/

namespace A108306.P6402248420199268945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030195 (n + 1) + 3 * A030195 n

end

end A108306.P6402248420199268945

namespace A108306

/-- `A030195(n+1)+3*A030195(n)` -/
def P6402248420199268945.Spec : Prop :=
  ∀ n, P6402248420199268945.a n = A108306 n

end A108306

/-! ## A108306.P14088256082351506929

`A106435(n)-(A030195(n)-A125145(n))`
-/

namespace A108306.P14088256082351506929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106435 n - (A030195 n - A125145 n)

end

end A108306.P14088256082351506929

namespace A108306

/-- `A106435(n)-(A030195(n)-A125145(n))` -/
def P14088256082351506929.Spec : Prop :=
  ∀ n, P14088256082351506929.a n = A108306 n

end A108306

/-! ## A108306.P11354629560112185306

`A189737(n+2)/3`
-/

namespace A108306.P11354629560112185306
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A189737 (n + 2) : ℚ) / 3

end

end A108306.P11354629560112185306

namespace A108306

/-- `A189737(n+2)/3` -/
def P11354629560112185306.Spec : Prop :=
  ∀ n, P11354629560112185306.a n = (A108306 n : ℚ)

end A108306

/-! ## A108306.P13802048741473262681

`A125145(n+1)-A106435(n+1)`
-/

namespace A108306.P13802048741473262681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125145 (n + 1) - A106435 (n + 1)

end

end A108306.P13802048741473262681

namespace A108306

/-- `A125145(n+1)-A106435(n+1)` -/
def P13802048741473262681.Spec : Prop :=
  ∀ n, P13802048741473262681.a n = A108306 n

end A108306

/-! ## A108306.P5604861976483091907

`A172012(n+1)-A202206(n+1)`
-/

namespace A108306.P5604861976483091907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172012 (n + 1) - A202206 (n + 1)

end

end A108306.P5604861976483091907

namespace A108306

/-- `A172012(n+1)-A202206(n+1)` -/
def P5604861976483091907.Spec : Prop :=
  ∀ n, P5604861976483091907.a n = A108306 n

end A108306

/-! ## A108306.P17195313427017804418

`(A172012(n+1)-A030195(n+1))/2`
-/

namespace A108306.P17195313427017804418
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A172012 (n + 1) - A030195 (n + 1) : ℚ) / 2

end

end A108306.P17195313427017804418

namespace A108306

/-- `(A172012(n+1)-A030195(n+1))/2` -/
def P17195313427017804418.Spec : Prop :=
  ∀ n, P17195313427017804418.a n = (A108306 n : ℚ)

end A108306

/-! ## A108306.P5970695177757208654

`(A085480(n+2)-A030195(n+1))/2`
-/

namespace A108306.P5970695177757208654
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A085480 (n + 2) - A030195 (n + 1) : ℚ) / 2

end

end A108306.P5970695177757208654

namespace A108306

/-- `(A085480(n+2)-A030195(n+1))/2` -/
def P5970695177757208654.Spec : Prop :=
  ∀ n, P5970695177757208654.a n = (A108306 n : ℚ)

end A108306

/-!
# A108307: Number of set partitions of {1, ..., n} that avoid enhanced 3-crossings (or enhanced 3-nestings).

The programs for A108307, there is no canonical definition to state claims against.
-/

/-! ## A108307.P13725070115163300706

`A275605(n)-A070109(n!)`
-/

namespace A108307.P13725070115163300706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275605 n - A070109 (Nat.factorial n)

end

end A108307.P13725070115163300706

/-! ## A108307.P11653191299542663125

`A275605(n)-A070109(-∏[n-C(2, n+2)])`
-/

namespace A108307.P11653191299542663125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (Nat.choose 2 (n + 2) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275605 n - A070109 (-(∏ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A108307.P11653191299542663125

/-! ## A108307.P3802377161413136003

`A110656(A151288(n)+A083706(n))`
-/

namespace A108307.P3802377161413136003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110656 (A151288 n + A083706 n).toNat

end

end A108307.P3802377161413136003

/-! ## A108307.P16865967252310546203

`A275605(n)+A178798(A038754(n))`
-/

namespace A108307.P16865967252310546203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275605 n + A178798 (A038754 n).toNat

end

end A108307.P16865967252310546203

/-!
# A108308: Expansion of 1/(1-x^2*c(2*x)), c(x) the g.f. of A000108.

The programs for A108308, there is no canonical definition to state claims against.
-/

/-! ## A108308.P10704905615777086647

`A008617(A090595(n)+1-n)`
-/

namespace A108308.P10704905615777086647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008617 (A090595 n + (1 - (n : ℤ))).toNat

end

end A108308.P10704905615777086647

/-! ## A108308.P17365203396843596071

`A008617(1-(n-A090595(n)))`
-/

namespace A108308.P17365203396843596071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008617 (1 - ((n : ℤ) - A090595 n)).toNat

end

end A108308.P17365203396843596071

/-! ## A108308.P12045575362898912279

`A000166(n)-A034333(A034336(n))`
-/

namespace A108308.P12045575362898912279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000166 n - A034333 (A034336 n).toNat

end

end A108308.P12045575362898912279

/-!
# A108309: Consider the triangle of odd numbers where the n-th row has the next n odd numbers. The sequence is the number of primes in the n-th row.

The programs for A108309, there is no canonical definition to state claims against.
-/

/-! ## A108309.P12307815150480260046

`A094189(n+1)+A089610(n+1)%A028310(n)`
-/

namespace A108309.P12307815150480260046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094189 (n + 1) + Int.tmod (A089610 (n + 1)) (A028310 n)

end

end A108309.P12307815150480260046

/-! ## A108309.P16020414979879341385

`Δ[A000720(abs(1-(n²+n))+1)]`
-/

namespace A108309.P16020414979879341385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (|1 - (n ^ 2 + n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A108309.P16020414979879341385

/-! ## A108309.P2912999923737797034

`abs(Δ[A000720((abs(1-n)+1)*(n+1))])`
-/

namespace A108309.P2912999923737797034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 ((|1 - (n : ℤ)| + 1) * (n + 1 : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A108309.P2912999923737797034

/-! ## A108309.P6862977512306418965

`Δ[A000720(A182047(n))]%(n+1)²`
-/

namespace A108309.P6862977512306418965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A182047 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) ((n + 1) ^ 2 : ℤ)

end

end A108309.P6862977512306418965

/-! ## A108309.P2072679612579900549

`Δ[A061395(A182047(n))]%A016813(n)`
-/

namespace A108309.P2072679612579900549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A182047 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A016813 n)

end

end A108309.P2072679612579900549

/-! ## A108309.P6777735230567997978

`Δ[A061395(3*A182047(n))]`
-/

namespace A108309.P6777735230567997978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (3 * A182047 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A108309.P6777735230567997978

/-! ## A108309.P4000053720722411635

`Δ[A278617(∑[n]+1)]`
-/

namespace A108309.P4000053720722411635
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278617 (∑ j ∈ Finset.range (n + 1), f2 j + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A108309.P4000053720722411635

/-! ## A108309.P7959318451247883871

`Δ[A084360(∑[2*n]+1)]`
-/

namespace A108309.P7959318451247883871
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084360 (∑ j ∈ Finset.range (n + 1), f2 j + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A108309.P7959318451247883871

/-! ## A108309.P4687876984657288366

`abs(Δ[A084360(n²+1+n)])`
-/

namespace A108309.P4687876984657288366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084360 (n ^ 2 + 1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A108309.P4687876984657288366

/-! ## A108309.P16903605215534899702

`Δ[A099802(A179865(n+1))]`
-/

namespace A108309.P16903605215534899702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099802 (A179865 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A108309.P16903605215534899702

/-! ## A108309.P13857244171328928781

`Δ[A082650(A103505(n+1))]`
-/

namespace A108309.P13857244171328928781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082650 (A103505 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A108309.P13857244171328928781

/-! ## A108309.P2890464232208662224

`Δ[A082650(∑[A316571(n+1)])]`
-/

namespace A108309.P2890464232208662224
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316571 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082650 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A108309.P2890464232208662224

/-!
# A108312: Integers n such that 10^n + 27 is prime.

The programs for A108312, there is no canonical definition to state claims against.
-/

/-! ## A108312.P261420465293715314

`eq[A034137(A033873(n)), A057427(n)]`
-/

namespace A108312.P261420465293715314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034137 (A033873 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A108312.P261420465293715314

/-!
# A108313: Sum of primes q with prime(n) < q < 2*prime(n).

The programs for A108313, there is no canonical definition to state claims against.
-/

/-! ## A108313.P17833751644060113284

`A063955(A100484(n+1))`
-/

namespace A108313.P17833751644060113284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063955 (A100484 (n + 1)).toNat

end

end A108313.P17833751644060113284

/-! ## A108313.P4080944380183269226

`A294487(A072055(n+1))`
-/

namespace A108313.P4080944380183269226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294487 (A072055 (n + 1)).toNat

end

end A108313.P4080944380183269226

/-! ## A108313.P6345194920709998083

`A063955(A001747(n+2))`
-/

namespace A108313.P6345194920709998083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063955 (A001747 (n + 2)).toNat

end

end A108313.P6345194920709998083

/-! ## A108313.P15155775956368258728

`A294487(A100484(n+1)+1)`
-/

namespace A108313.P15155775956368258728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294487 (A100484 (n + 1) + 1).toNat

end

end A108313.P15155775956368258728

/-! ## A108313.P14747099848587005805

`A063955(A072055(n+1)-1)`
-/

namespace A108313.P14747099848587005805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063955 (A072055 (n + 1) - 1).toNat

end

end A108313.P14747099848587005805

/-!
# A108314: Sum of primes p with n^2 < p < (n+1)^2.

The programs for A108314, there is no canonical definition to state claims against.
-/

/-! ## A108314.P7882922633586170461

`A320688(n+1)+(n+1)²*A014085(n+1)`
-/

namespace A108314.P7882922633586170461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320688 (n + 1) + ((n + 1) ^ 2 : ℤ) * A014085 (n + 1)

end

end A108314.P7882922633586170461

/-! ## A108314.P49653085986433405

`Δ[A139562(n+1)]`
-/

namespace A108314.P49653085986433405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139562 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A108314.P49653085986433405

/-! ## A108314.P4846186256392483715

`abs(Δ[A139562(ϕ²-(ϕ-n))])`
-/

namespace A108314.P4846186256392483715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139562 (SequenceMachineLib.roundAway (Real.goldenRatio ^ 2 - (Real.goldenRatio - (n : ℝ)))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A108314.P4846186256392483715

/-! ## A108314.P17365885688474389588

`A139562(n+2)-A139562(n+1)`
-/

namespace A108314.P17365885688474389588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139562 (n + 2) - A139562 (n + 1)

end

end A108314.P17365885688474389588

/-! ## A108314.P13706522142646360977

`Δ[A007504(∑[A014085(n)])]`
-/

namespace A108314.P13706522142646360977
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014085 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A108314.P13706522142646360977

/-! ## A108314.P16333853674342002380

`Δ[A007504(A038107(n+1))]`
-/

namespace A108314.P16333853674342002380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (A038107 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A108314.P16333853674342002380

/-! ## A108314.P285011174207977246

`Δ[A007504(A000720((n+1)²))]`
-/

namespace A108314.P285011174207977246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (A000720 ((n + 1) ^ 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A108314.P285011174207977246

/-! ## A108314.P9830294861006886931

`Δ[A034387((n+1)²)]`
-/

namespace A108314.P9830294861006886931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034387 ((n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A108314.P9830294861006886931

/-! ## A108314.P10234306294279430959

`Δ[A158662((n+1)²)]`
-/

namespace A108314.P10234306294279430959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158662 ((n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A108314.P10234306294279430959

/-! ## A108314.P9682414830005812657

`Δ[A063960(2*(n+1)²)]`
-/

namespace A108314.P9682414830005812657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063960 (2 * (n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A108314.P9682414830005812657

/-!
# A108316: Least k such that (k*n)^2 + k*n -1 and (k*n)^2 + k*n +1 are twin primes.

The programs for A108316, there is no canonical definition to state claims against.
-/

/-! ## A108316.P14126197274620402107

`A006968(A140356(n)+A064879(3*n))`
-/

namespace A108316.P14126197274620402107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006968 (A140356 n + A064879 (3 * n)).toNat

end

end A108316.P14126197274620402107

/-! ## A108316.P4319287233995309952

`A284569(A090165(n)+A007368(n))`
-/

namespace A108316.P4319287233995309952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284569 (A090165 n + A007368 n).toNat

end

end A108316.P4319287233995309952

/-! ## A108316.P16710476061521844431

`A333267(A130321(n)+A024958(n+1))`
-/

namespace A108316.P16710476061521844431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333267 (A130321 n + A024958 (n + 1)).toNat

end

end A108316.P16710476061521844431

/-! ## A108316.P16967583357589585545

`gcd(A124914(n+1), A284121(A220398(n+1)))`
-/

namespace A108316.P16967583357589585545
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A124914 (n + 1)) (A284121 (A220398 (n + 1)).toNat)

end

end A108316.P16967583357589585545

/-!
# A108318: Numbers k such that (k+1)*k^k - 1 is prime.

The programs for A108318, there is no canonical definition to state claims against.
-/

/-! ## A108318.P16059829839238889642

`A283314(n)+A029931(A017984(n))`
-/

namespace A108318.P16059829839238889642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283314 n + A029931 (A017984 n).toNat

end

end A108318.P16059829839238889642

/-! ## A108318.P13686572204387026156

`A344742(A130091(n+1)+A002995(n))`
-/

namespace A108318.P13686572204387026156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344742 (A130091 (n + 1) + A002995 n).toNat

end

end A108318.P13686572204387026156

/-! ## A108318.P8958946841337119616

`A325368(n+1)+A089851(A210540(n))`
-/

namespace A108318.P8958946841337119616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325368 (n + 1) + A089851 (A210540 n).toNat

end

end A108318.P8958946841337119616

/-! ## A108318.P13980845178881275124

`A102450(A371726(n)+A166401(n+1))`
-/

namespace A108318.P13980845178881275124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102450 (A371726 n + A166401 (n + 1)).toNat

end

end A108318.P13980845178881275124

/-! ## A108318.P12296460308757175167

`A000196(or(A003147(n+1), A261134(n)))`
-/

namespace A108318.P12296460308757175167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (Int.lor (A003147 (n + 1)) (A261134 n)).toNat

end

end A108318.P12296460308757175167

/-!
# A108319: Numbers of the form (2^i)*(3^j)*(7^k), with i, j, k >= 0.

The programs for A108319, there is no canonical definition to state claims against.
-/

/-! ## A108319.P5619105654540561151

`∩[A002473(n+1), A219174(n+1)]`
-/

namespace A108319.P5619105654540561151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002473 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219174 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A108319.P5619105654540561151

/-! ## A108319.P9729350980263313122

`∩[A051038(n+1), A219174(n+1)]`
-/

namespace A108319.P9729350980263313122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051038 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219174 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A108319.P9729350980263313122

/-! ## A108319.P9998601775996355560

`∩[A002473(n+1), A318400(n+1)]`
-/

namespace A108319.P9998601775996355560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002473 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318400 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A108319.P9998601775996355560

/-! ## A108319.P12238624291864636799

`∩[A051038(n+1), A318400(n+1)]`
-/

namespace A108319.P12238624291864636799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051038 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318400 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A108319.P12238624291864636799

/-! ## A108319.P7968922889052072949

`∩[A084034(n+1), A219174(n+1)]`
-/

namespace A108319.P7968922889052072949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084034 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219174 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A108319.P7968922889052072949

/-! ## A108319.P7317307607338208862

`∩[A084034(n+1), A318400(n+1)]`
-/

namespace A108319.P7317307607338208862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084034 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318400 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A108319.P7317307607338208862

/-! ## A108319.P13103586730483145166

`∩[A080197(n+1), A219174(n+1)]`
-/

namespace A108319.P13103586730483145166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080197 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219174 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A108319.P13103586730483145166

/-! ## A108319.P1191161980594404238

`∩[A080197(n+1), A318400(n+1)]`
-/

namespace A108319.P1191161980594404238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080197 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318400 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A108319.P1191161980594404238

/-! ## A108319.P13671274750220544393

`∩[A033637(n+1), A318400(n+1)]`
-/

namespace A108319.P13671274750220544393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033637 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318400 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A108319.P13671274750220544393

/-! ## A108319.P15487183869034382865

`∩[A080681(n+1), A219174(n+1)]`
-/

namespace A108319.P15487183869034382865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080681 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219174 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A108319.P15487183869034382865

/-! ## A108319.P8189116068862602985

`∩[A080681(n+1), A318400(n+1)]`
-/

namespace A108319.P8189116068862602985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080681 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318400 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A108319.P8189116068862602985

/-! ## A108319.P3095318726418289315

`∩[A080682(n+1), A219174(n+1)]`
-/

namespace A108319.P3095318726418289315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080682 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219174 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A108319.P3095318726418289315

/-! ## A108319.P2854326427543917497

`∩[A033620(n+1), A219174(n+1)]`
-/

namespace A108319.P2854326427543917497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033620 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219174 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A108319.P2854326427543917497

/-! ## A108319.P4238206573301096875

`∩[A002473(n+1), A201010(n+1)]`
-/

namespace A108319.P4238206573301096875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002473 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201010 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A108319.P4238206573301096875

/-! ## A108319.P9615547431790245235

`∩[A201010(n+1), A342950(n+1)]`
-/

namespace A108319.P9615547431790245235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201010 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342950 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A108319.P9615547431790245235

/-! ## A108319.P16585999721422582516

`∩[A080683(n+1), A219174(n+1)]`
-/

namespace A108319.P16585999721422582516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080683 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219174 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A108319.P16585999721422582516

/-! ## A108319.P303364909480899347

`∩[A122260(n+1), A219174(n+1)]`
-/

namespace A108319.P303364909480899347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122260 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219174 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A108319.P303364909480899347

/-! ## A108319.P2759181855345708164

`filter[A002473(n+1), A364252(#)]`
-/

namespace A108319.P2759181855345708164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002473 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A364252 (f1 j).toNat = 1) n)

end

end A108319.P2759181855345708164

/-! ## A108319.P9429759851201785149

`filter[A033620(n+1), A364252(#)]`
-/

namespace A108319.P9429759851201785149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033620 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A364252 (f1 j).toNat = 1) n)

end

end A108319.P9429759851201785149

/-! ## A108319.P18127772920492940979

`filter[A051038(n+1), A364252(#)]`
-/

namespace A108319.P18127772920492940979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051038 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A364252 (f1 j).toNat = 1) n)

end

end A108319.P18127772920492940979

/-!
# A108320: Numbers k such that 609 * 10^k - 1 is prime.

The programs for A108320, there is no canonical definition to state claims against.
-/

/-! ## A108320.P14025598289523046683

`∑[A304098(A353401(n)!)]`
-/

namespace A108320.P14025598289523046683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304098 (Nat.factorial (A353401 n).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A108320.P14025598289523046683

/-! ## A108320.P1149256218228173000

`record[A003983(record[A290208(n)])]`
-/

namespace A108320.P1149256218228173000
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290208 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003983 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A108320.P1149256218228173000

/-! ## A108320.P10663587299949106123

`∑[A242639(A049885(n+1))]`
-/

namespace A108320.P10663587299949106123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242639 (A049885 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A108320.P10663587299949106123

/-! ## A108320.P14211827079419593163

`∑[A335454(∑[A111576(n+1)])]`
-/

namespace A108320.P14211827079419593163
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111576 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335454 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A108320.P14211827079419593163

/-!
# A108321: a(n) = n^2 if n^2 is not the difference of two primes; otherwise a(n) = 0.

The programs for A108321, the canonical program `A108321.P5991281429611494977` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A108321 has offset 0).

The definition of A108321 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A108321.P5991281429611494977

`(n+1)²-A106546(n+1)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A108321

/-- `(n+1)²-A106546(n+1)` -/
def P5991281429611494977.Spec : Prop :=
  ∀ n, P5991281429611494977.a n = A108321 n

theorem P5991281429611494977.correct : P5991281429611494977.Spec := by
  intro n
  simp only [A108321]

end A108321

/-! ## A108321.P9235346723014679314

`((n+1)*A355450(n+1))²`
-/

namespace A108321.P9235346723014679314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) * A355450 (n + 1)) ^ 2

end

end A108321.P9235346723014679314

namespace A108321

/-- `((n+1)*A355450(n+1))²` -/
def P9235346723014679314.Spec : Prop :=
  ∀ n, P9235346723014679314.a n = A108321 n

end A108321

/-! ## A108321.P10550465921335930757

`(n+1)²-∑{e}[A300817(n+1), ((n+1)/#)²]`
-/

namespace A108321.P10550465921335930757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300817 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℚ) - ∑ p ∈ Nat.primeFactors (f1 n).natAbs, ((n + 1 : ℚ) / (Nat.factorization (f1 n).natAbs p : ℚ)) ^ 2

end

end A108321.P10550465921335930757

namespace A108321

/-- `(n+1)²-∑{e}[A300817(n+1), ((n+1)/#)²]` -/
def P10550465921335930757.Spec : Prop :=
  ∀ n, P10550465921335930757.a n = (A108321 n : ℚ)

end A108321

/-! ## A108321.P10979878985785688848

`A080335(n)*A355450(n+1)`
-/

namespace A108321.P10979878985785688848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080335 n * A355450 (n + 1)

end

end A108321.P10979878985785688848

namespace A108321

/-- `A080335(n)*A355450(n+1)` -/
def P10979878985785688848.Spec : Prop :=
  ∀ n, P10979878985785688848.a n = A108321 n

end A108321

/-! ## A108321.P6031915574335718161

`A081346(n)*A355450(n+1)`
-/

namespace A108321.P6031915574335718161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081346 n * A355450 (n + 1)

end

end A108321.P6031915574335718161

namespace A108321

/-- `A081346(n)*A355450(n+1)` -/
def P6031915574335718161.Spec : Prop :=
  ∀ n, P6031915574335718161.a n = A108321 n

end A108321

/-! ## A108321.P12525439820547099466

`A081351(n)*A355450(n+1)`
-/

namespace A108321.P12525439820547099466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081351 n * A355450 (n + 1)

end

end A108321.P12525439820547099466

namespace A108321

/-- `A081351(n)*A355450(n+1)` -/
def P12525439820547099466.Spec : Prop :=
  ∀ n, P12525439820547099466.a n = A108321 n

end A108321

/-! ## A108321.P64904991084068148

`A086955(n)*A355450(n+1)`
-/

namespace A108321.P64904991084068148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086955 n * A355450 (n + 1)

end

end A108321.P64904991084068148

namespace A108321

/-- `A086955(n)*A355450(n+1)` -/
def P64904991084068148.Spec : Prop :=
  ∀ n, P64904991084068148.a n = A108321 n

end A108321

/-! ## A108321.P14712012634850702526

`A085046(n+1)*A355450(n+1)`
-/

namespace A108321.P14712012634850702526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085046 (n + 1) * A355450 (n + 1)

end

end A108321.P14712012634850702526

namespace A108321

/-- `A085046(n+1)*A355450(n+1)` -/
def P14712012634850702526.Spec : Prop :=
  ∀ n, P14712012634850702526.a n = A108321 n

end A108321

/-! ## A108321.P4516748058642148170

`A085960(n+1)*A355450(n+1)`
-/

namespace A108321.P4516748058642148170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085960 (n + 1) * A355450 (n + 1)

end

end A108321.P4516748058642148170

namespace A108321

/-- `A085960(n+1)*A355450(n+1)` -/
def P4516748058642148170.Spec : Prop :=
  ∀ n, P4516748058642148170.a n = A108321 n

end A108321

/-! ## A108321.P11052287389370336252

`A091519(n+1)*A355450(n+1)`
-/

namespace A108321.P11052287389370336252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091519 (n + 1) * A355450 (n + 1)

end

end A108321.P11052287389370336252

namespace A108321

/-- `A091519(n+1)*A355450(n+1)` -/
def P11052287389370336252.Spec : Prop :=
  ∀ n, P11052287389370336252.a n = A108321 n

end A108321

/-! ## A108321.P5616381147876145679

`A110349(n+1)*A355450(n+1)`
-/

namespace A108321.P5616381147876145679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110349 (n + 1) * A355450 (n + 1)

end

end A108321.P5616381147876145679

namespace A108321

/-- `A110349(n+1)*A355450(n+1)` -/
def P5616381147876145679.Spec : Prop :=
  ∀ n, P5616381147876145679.a n = A108321 n

end A108321

/-! ## A108321.P8033240632000448509

`A152020(n+1)*A355450(n+1)`
-/

namespace A108321.P8033240632000448509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152020 (n + 1) * A355450 (n + 1)

end

end A108321.P8033240632000448509

namespace A108321

/-- `A152020(n+1)*A355450(n+1)` -/
def P8033240632000448509.Spec : Prop :=
  ∀ n, P8033240632000448509.a n = A108321 n

end A108321

/-! ## A108321.P12127172819801427173

`A162395(n+1)*A355450(n+1)`
-/

namespace A108321.P12127172819801427173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162395 (n + 1) * A355450 (n + 1)

end

end A108321.P12127172819801427173

namespace A108321

/-- `A162395(n+1)*A355450(n+1)` -/
def P12127172819801427173.Spec : Prop :=
  ∀ n, P12127172819801427173.a n = A108321 n

end A108321

/-! ## A108321.P14536171186301418252

`A183207(n+1)*A355450(n+1)`
-/

namespace A108321.P14536171186301418252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183207 (n + 1) * A355450 (n + 1)

end

end A108321.P14536171186301418252

namespace A108321

/-- `A183207(n+1)*A355450(n+1)` -/
def P14536171186301418252.Spec : Prop :=
  ∀ n, P14536171186301418252.a n = A108321 n

end A108321

/-! ## A108321.P10232556395225625449

`A328407(n+1)*A355450(n+1)`
-/

namespace A108321.P10232556395225625449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328407 (n + 1) * A355450 (n + 1)

end

end A108321.P10232556395225625449

namespace A108321

/-- `A328407(n+1)*A355450(n+1)` -/
def P10232556395225625449.Spec : Prop :=
  ∀ n, P10232556395225625449.a n = A108321 n

end A108321

/-! ## A108321.P2357017911023948754

`A347535(n+1)*A355450(n+1)`
-/

namespace A108321.P2357017911023948754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347535 (n + 1) * A355450 (n + 1)

end

end A108321.P2357017911023948754

namespace A108321

/-- `A347535(n+1)*A355450(n+1)` -/
def P2357017911023948754.Spec : Prop :=
  ∀ n, P2357017911023948754.a n = A108321 n

end A108321

/-! ## A108321.P53838115860082658

`A106545(n+1)+A106547(n+1)-A106548(n+1)`
-/

namespace A108321.P53838115860082658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106545 (n + 1) + (A106547 (n + 1) - A106548 (n + 1))

end

end A108321.P53838115860082658

namespace A108321

/-- `A106545(n+1)+A106547(n+1)-A106548(n+1)` -/
def P53838115860082658.Spec : Prop :=
  ∀ n, P53838115860082658.a n = A108321 n

end A108321

/-! ## A108321.P15117065406264290624

`A270454(n)*A355450(n+1)`
-/

namespace A108321.P15117065406264290624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270454 n * A355450 (n + 1)

end

end A108321.P15117065406264290624

namespace A108321

/-- `A270454(n)*A355450(n+1)` -/
def P15117065406264290624.Spec : Prop :=
  ∀ n, P15117065406264290624.a n = A108321 n

end A108321

/-!
# A108322: "Binary prime squares": a(n) = n^2 written in base 2 and interpreted as a base-10 number, if that number is prime; a(n) = 0 otherwise.

The programs for A108322, there is no canonical definition to state claims against.
-/

/-! ## A108322.P17417374732436886208

`A007088((n+1)²)*A010052(A219173(n+1))`
-/

namespace A108322.P17417374732436886208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 ((n + 1) ^ 2) * A010052 (A219173 (n + 1)).toNat

end

end A108322.P17417374732436886208

/-! ## A108322.P541834428750569257

`A010052(A219173(n+1))*A056143(A028378(n))`
-/

namespace A108322.P541834428750569257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (A219173 (n + 1)).toNat * A056143 (A028378 n).toNat

end

end A108322.P541834428750569257

/-! ## A108322.P2851793640701598475

`A001737(C(A065183(n), A131762(n+1)))`
-/

namespace A108322.P2851793640701598475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001737 (Nat.choose (A065183 n).toNat (A131762 (n + 1)).toNat)

end

end A108322.P2851793640701598475

/-! ## A108322.P5738508517261082325

`A007088(C(A050399(n+1), A050429(n+1)))`
-/

namespace A108322.P5738508517261082325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (Nat.choose (A050399 (n + 1)).toNat (A050429 (n + 1)).toNat)

end

end A108322.P5738508517261082325

/-! ## A108322.P17659935085744608553

`A001737(C(A000265(n+1), A131762(n+1)))`
-/

namespace A108322.P17659935085744608553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001737 (Nat.choose (A000265 (n + 1)).toNat (A131762 (n + 1)).toNat)

end

end A108322.P17659935085744608553

/-!
# A108323: "Binary prime squares": squares whose binary expansions, read as decimal expansions, are primes.

The programs for A108323, there is no canonical definition to state claims against.
-/

/-! ## A108323.P2732132432719824490

`A001737(A108325(n+1))`
-/

namespace A108323.P2732132432719824490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001737 (A108325 (n + 1)).toNat

end

end A108323.P2732132432719824490

/-! ## A108323.P13706731967264579285

`A001737(sqrt(A108324(n+1)))`
-/

namespace A108323.P13706731967264579285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001737 (SequenceMachineLib.roundAway (Real.sqrt (A108324 (n + 1) : ℝ))).toNat

end

end A108323.P13706731967264579285

/-! ## A108323.P16730211261579435720

`A108322(sqrt(A108324(n+1)))`
-/

namespace A108323.P16730211261579435720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108322 (SequenceMachineLib.roundAway (Real.sqrt (A108324 (n + 1) : ℝ))).toNat

end

end A108323.P16730211261579435720

/-! ## A108323.P4184103377314948939

`A108322(or(1, A108325(n+1)))`
-/

namespace A108323.P4184103377314948939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108322 (Int.lor 1 (A108325 (n + 1))).toNat

end

end A108323.P4184103377314948939

/-! ## A108323.P1297531513549049105

`∩[A020449(n+1), A001737(n)]`
-/

namespace A108323.P1297531513549049105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020449 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001737 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A108323.P1297531513549049105

/-!
# A108324: "Binary prime squares": squares whose binary expansions, read as decimal expansions, are primes.

The programs for A108324, there is no canonical definition to state claims against.
-/

/-! ## A108324.P11118750111411383782

`A108325(n+1)²`
-/

namespace A108324.P11118750111411383782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108325 (n + 1) ^ 2

end

end A108324.P11118750111411383782

/-! ## A108324.P66672592760325762

`A108325(-xor(n, -1))^2`
-/

namespace A108324.P66672592760325762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108325 (-Int.xor (n : ℤ) (-1)).toNat ^ 2

end

end A108324.P66672592760325762

/-! ## A108324.P7656484751431760095

`A108325(Δ[n²]-n)^2`
-/

namespace A108324.P7656484751431760095
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108325 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat ^ 2

end

end A108324.P7656484751431760095

/-! ## A108324.P15900748989436657921

`A108325(A000027(n+1))*A108325(n+1)`
-/

namespace A108324.P15900748989436657921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108325 (A000027 (n + 1)).toNat * A108325 (n + 1)

end

end A108324.P15900748989436657921

/-! ## A108324.P3526647530029547954

`A000290(or(1, A108325(n+1)))`
-/

namespace A108324.P3526647530029547954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (Int.lor 1 (A108325 (n + 1))).toNat

end

end A108324.P3526647530029547954

/-! ## A108324.P7623977414429762461

`A000290(A108325(n+1)+A000035(2*(n+1)))`
-/

namespace A108324.P7623977414429762461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (A108325 (n + 1) + A000035 (2 * (n + 1))).toNat

end

end A108324.P7623977414429762461

/-! ## A108324.P12023502755034434475

`A002620(2*A108325(n+1))`
-/

namespace A108324.P12023502755034434475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (2 * A108325 (n + 1)).toNat

end

end A108324.P12023502755034434475

/-!
# A108325: "Binary prime squares": values of k for which k^2, expressed in base two and read as a decimal number, is a prime.

The programs for A108325, there is no canonical definition to state claims against.
-/

/-! ## A108325.P14968955149463535544

`sqrt(A108324(n+1))`
-/

namespace A108325.P14968955149463535544
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A108324 (n + 1) : ℝ)

end

end A108325.P14968955149463535544

/-! ## A108325.P14243533198693989938

`A000027(root(A108324(n+1), 2))`
-/

namespace A108325.P14243533198693989938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.roundAway ((A108324 (n + 1) : ℝ) ^ (1 / (2 : ℝ)))).toNat

end

end A108325.P14243533198693989938

/-! ## A108325.P16383038499761449767

`∑{d}[root(A108324(n+1), 2), A000010(#)]`
-/

namespace A108325.P16383038499761449767
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A108324 (n + 1) : ℝ) ^ (1 / (2 : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (SequenceMachineLib.roundAway (f1 n)).natAbs, A000010 d

end

end A108325.P16383038499761449767

/-! ## A108325.P7789542917405241482

`∏{d}[root(A108324(n+1), 2), A014963(#)]`
-/

namespace A108325.P7789542917405241482
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A108324 (n + 1) : ℝ) ^ (1 / (2 : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (SequenceMachineLib.roundAway (f1 n)).natAbs, A014963 d

end

end A108325.P7789542917405241482

/-! ## A108325.P1679717886791736233

`root(A108324(n+1), 2)*A007318(∑[n])`
-/

namespace A108325.P1679717886791736233
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A108324 (n + 1) : ℝ) ^ (1 / (2 : ℝ)) * (A007318 (∑ j ∈ Finset.range (n + 1), f1 j) : ℝ)

end

end A108325.P1679717886791736233

/-!
# A108327: Integers n such that 10^n-21 is a prime number.

The programs for A108327, there is no canonical definition to state claims against.
-/

/-! ## A108327.P10447961866844071522

`A194383(A203840(n+1))`
-/

namespace A108327.P10447961866844071522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194383 (A203840 (n + 1)).toNat

end

end A108327.P10447961866844071522

/-!
# A108328: Integers k such that 10^k - 23 is a prime number.

The programs for A108328, there is no canonical definition to state claims against.
-/

/-! ## A108328.P12025153952172022272

`A348748(A328316(n)+A092046(n+1))`
-/

namespace A108328.P12025153952172022272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348748 (A328316 n + A092046 (n + 1)).toNat

end

end A108328.P12025153952172022272

/-! ## A108328.P16127051060187042855

`and(A000040(A056079(n+8)), A097080(3*n+1))`
-/

namespace A108328.P16127051060187042855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000040 (A056079 (n + 8)).toNat) (A097080 (3 * n + 1))

end

end A108328.P16127051060187042855

/-!
# A108333: Numbers k such that the string 97101k is prime.

The programs for A108333, there is no canonical definition to state claims against.
-/

/-! ## A108333.P18446404713710499144

`A326774(A326788(n+3)+A134914(2*n+3))`
-/

namespace A108333.P18446404713710499144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326774 (A326788 (n + 3) + A134914 (2 * n + 3)).toNat

end

end A108333.P18446404713710499144

/-!
# A108334: Numbers k such that the string 10197k is prime.

The programs for A108334, there is no canonical definition to state claims against.
-/

/-! ## A108334.P4213162233841470584

`A002267(comp[∑[A001190(n)]])`
-/

namespace A108334.P4213162233841470584
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001190 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002267 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A108334.P4213162233841470584

/-! ## A108334.P7331924822404475699

`A002267(A242485(n+1)+4)`
-/

namespace A108334.P7331924822404475699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002267 (A242485 (n + 1) + 4).toNat

end

end A108334.P7331924822404475699

/-! ## A108334.P17911953994130039900

`A002267(A346725(n+1)+4)`
-/

namespace A108334.P17911953994130039900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002267 (A346725 (n + 1) + 4).toNat

end

end A108334.P17911953994130039900

/-! ## A108334.P3730544584999044652

`A002267(lt[3, A240979(n+1)])`
-/

namespace A108334.P3730544584999044652
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240979 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002267 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A108334.P3730544584999044652

/-! ## A108334.P10926528440406475437

`filter[A002267(n+3), A286726(#)]`
-/

namespace A108334.P10926528440406475437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002267 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A286726 (f1 j).toNat = 1) n)

end

end A108334.P10926528440406475437

/-!
# A108335: A084202 read mod 4.

The programs for A108335, there is no canonical definition to state claims against.
-/

/-! ## A108335.P10936937276155510974

`and(3, A084202(n))`
-/

namespace A108335.P10936937276155510974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 (A084202 n)

end

end A108335.P10936937276155510974

/-! ## A108335.P17452891417594947683

`(A084202(n)+A020707(n))%4`
-/

namespace A108335.P17452891417594947683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A084202 n + A020707 n) 4

end

end A108335.P17452891417594947683

/-! ## A108335.P14240694027807675779

`A010873(A084202(n)+A064200(2*(n+2)))`
-/

namespace A108335.P14240694027807675779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010873 (A084202 n + A064200 (2 * (n + 2))).toNat

end

end A108335.P14240694027807675779

/-! ## A108335.P6630565180072522676

`A010873(A235098(n+1)+A084202(n))`
-/

namespace A108335.P6630565180072522676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010873 (A235098 (n + 1) + A084202 n).toNat

end

end A108335.P6630565180072522676

/-! ## A108335.P12505279368286581307

`A010873(A084202(n)+A035287(n+1))`
-/

namespace A108335.P12505279368286581307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010873 (A084202 n + A035287 (n + 1)).toNat

end

end A108335.P12505279368286581307

/-!
# A108336: Unique sequence of 1's and 0's such that (Sum_{n >= 0} a(n)*x^n)^2 mod 4 has coefficients which are all 1's and 2's (A083952).

The programs for A108336, there is no canonical definition to state claims against.
-/

/-! ## A108336.P17831368375274765248

`2-A083952(2*n)`
-/

namespace A108336.P17831368375274765248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A083952 (2 * n)

end

end A108336.P17831368375274765248

/-! ## A108336.P12296416960055599805

`A108115(2*n)%2`
-/

namespace A108336.P12296416960055599805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A108115 (2 * n)) 2

end

end A108336.P12296416960055599805

/-! ## A108336.P1259591031191297618

`A000035(A108115(2*n))`
-/

namespace A108336.P1259591031191297618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A108115 (2 * n)).toNat

end

end A108336.P1259591031191297618

/-! ## A108336.P16364505992189335015

`A083952(A005843(n))%2`
-/

namespace A108336.P16364505992189335015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083952 (A005843 n).toNat) 2

end

end A108336.P16364505992189335015

/-! ## A108336.P1765873433738484486

`and(A000328(n), A083952(2*n))`
-/

namespace A108336.P1765873433738484486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000328 n) (A083952 (2 * n))

end

end A108336.P1765873433738484486

/-! ## A108336.P5589678648300002033

`and(A001513(n), A083952(2*n))`
-/

namespace A108336.P5589678648300002033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001513 n) (A083952 (2 * n))

end

end A108336.P5589678648300002033

/-! ## A108336.P10382225307893772505

`and(A001535(n), A083952(2*n))`
-/

namespace A108336.P10382225307893772505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001535 n) (A083952 (2 * n))

end

end A108336.P10382225307893772505

/-! ## A108336.P3299879637693535454

`and(A001546(n), A083952(2*n))`
-/

namespace A108336.P3299879637693535454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001546 n) (A083952 (2 * n))

end

end A108336.P3299879637693535454

/-! ## A108336.P15580769011091505614

`and(A001844(n), A083952(2*n))`
-/

namespace A108336.P15580769011091505614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001844 n) (A083952 (2 * n))

end

end A108336.P15580769011091505614

/-! ## A108336.P16383225013336664213

`and(A001846(n), A083952(2*n))`
-/

namespace A108336.P16383225013336664213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001846 n) (A083952 (2 * n))

end

end A108336.P16383225013336664213

/-! ## A108336.P2223214471880358916

`and(A001848(n), A083952(2*n))`
-/

namespace A108336.P2223214471880358916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001848 n) (A083952 (2 * n))

end

end A108336.P2223214471880358916

/-! ## A108336.P3849939379775934752

`and(A003185(n), A083952(2*n))`
-/

namespace A108336.P3849939379775934752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A003185 n) (A083952 (2 * n))

end

end A108336.P3849939379775934752

/-! ## A108336.P13430357372418638027

`and(A004768(n), A083952(2*n))`
-/

namespace A108336.P13430357372418638027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A004768 n) (A083952 (2 * n))

end

end A108336.P13430357372418638027

/-! ## A108336.P9984469721236810810

`and(A007204(n), A083952(2*n))`
-/

namespace A108336.P9984469721236810810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A007204 n) (A083952 (2 * n))

end

end A108336.P9984469721236810810

/-! ## A108336.P14883836108848507634

`and(A008349(n), A083952(2*n))`
-/

namespace A108336.P14883836108848507634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A008349 n) (A083952 (2 * n))

end

end A108336.P14883836108848507634

/-! ## A108336.P5909949499217602024

`val(A083952(2*n)+A005408(2*n), 2)`
-/

namespace A108336.P5909949499217602024
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A083952 (2 * n) + A005408 (2 * n)).toNat 2

end

end A108336.P5909949499217602024

/-! ## A108336.P12969865740355040785

`and(A001232(2*n+1), A083952(2*n))`
-/

namespace A108336.P12969865740355040785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001232 (2 * n + 1)) (A083952 (2 * n))

end

end A108336.P12969865740355040785

/-! ## A108336.P8347754424787822619

`and(A001361(2*n+1), A083952(2*n))`
-/

namespace A108336.P8347754424787822619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001361 (2 * n + 1)) (A083952 (2 * n))

end

end A108336.P8347754424787822619

/-! ## A108336.P13770880253392326628

`and(A001134(2*n+1)²², A083952(2*n))`
-/

namespace A108336.P13770880253392326628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((A001134 (2 * n + 1) ^ 2) ^ 2) (A083952 (2 * n))

end

end A108336.P13770880253392326628

/-! ## A108336.P8222416438173364151

`A176059(2*n)-A176059(A108115(2*n))`
-/

namespace A108336.P8222416438173364151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176059 (2 * n) - A176059 (A108115 (2 * n)).toNat

end

end A108336.P8222416438173364151

/-!
# A108337: Positions of the odd terms in A084202, which gives the coefficients b(n) such that (B(x))^2 has coefficients 1 and 2.

The programs for A108337, there is no canonical definition to state claims against.
-/

/-! ## A108337.P1207734909051361740

`lt[0, A108336(n)]`
-/

namespace A108337.P1207734909051361740
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108336 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A108337.P1207734909051361740

/-! ## A108337.P3510465587776200012

`eq[1, A110627(n)]`
-/

namespace A108337.P3510465587776200012
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110627 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A108337.P3510465587776200012

/-! ## A108337.P9043185645295922213

`A108783(n+1)/2`
-/

namespace A108337.P9043185645295922213
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A108783 (n + 1) : ℚ) / 2

end

end A108337.P9043185645295922213

/-! ## A108337.P15665872547114564374

`eq[1, A083952(2*n)]`
-/

namespace A108337.P15665872547114564374
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083952 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A108337.P15665872547114564374

/-! ## A108337.P7087693217934485929

`eq[1, A108340(2*n)]`
-/

namespace A108337.P7087693217934485929
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108340 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A108337.P7087693217934485929

/-! ## A108337.P18333661943031360561

`eq[1, A083952(n)]/2`
-/

namespace A108337.P18333661943031360561
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083952 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℚ) / 2

end

end A108337.P18333661943031360561

/-! ## A108337.P4619365150660514616

`eq[1, A083952(n+n)²]`
-/

namespace A108337.P4619365150660514616
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083952 (n + n) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A108337.P4619365150660514616

/-! ## A108337.P16544462984697284542

`(A111363(n+1)-1)/2`
-/

namespace A108337.P16544462984697284542
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A111363 (n + 1) - 1 : ℚ) / 2

end

end A108337.P16544462984697284542

/-! ## A108337.P17706974800599635603

`eq[1, A108115(2*n)%2]`
-/

namespace A108337.P17706974800599635603
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A108115 (2 * n)) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A108337.P17706974800599635603

/-! ## A108337.P7614394135058087796

`ceil(A108783(-xor(n, -1))/2)`
-/

namespace A108337.P7614394135058087796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A108783 (-Int.xor (n : ℤ) (-1)).toNat : ℚ) / 2⌉

end

end A108337.P7614394135058087796

/-!
# A108338: First difference of A108337.

The programs for A108338, there is no canonical definition to state claims against.
-/

/-! ## A108338.P195199676758676685

`Δ[A108783(n+1)/2]`
-/

namespace A108338.P195199676758676685
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A108783 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A108338.P195199676758676685

/-! ## A108338.P9288315794600081699

`Δ[A111363(n+1)/2]`
-/

namespace A108338.P9288315794600081699
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A111363 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A108338.P9288315794600081699

/-! ## A108338.P7759237561922973879

`Δ[eq[1, A083952(2*n)]]`
-/

namespace A108338.P7759237561922973879
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083952 (2 * n)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A108338.P7759237561922973879

/-! ## A108338.P11181931482118680694

`Δ[eq[1, A083952(n)]/2]`
-/

namespace A108338.P11181931482118680694
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083952 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A108338.P11181931482118680694

/-! ## A108338.P4635161855624080635

`Δ[A108783(-xor(n, -1))]/2`
-/

namespace A108338.P4635161855624080635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108783 (-Int.xor (n : ℤ) (-1)).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / 2

end

end A108338.P4635161855624080635

/-! ## A108338.P4503252064856406439

`Δ[or(1, A108783(1-(n-2*n)))/2]`
-/

namespace A108338.P4503252064856406439
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lor 1 (A108783 (1 - ((n : ℤ) - (2 * n : ℤ))).toNat) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A108338.P4503252064856406439

/-! ## A108338.P2510484153686943631

`A001281(Δ[A108783(n+1)])`
-/

namespace A108338.P2510484153686943631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108783 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (f1 (n + 1) - f1 n).toNat

end

end A108338.P2510484153686943631

/-! ## A108338.P18373855812785756152

`A004525(Δ[A108783(n+1)])`
-/

namespace A108338.P18373855812785756152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108783 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (f1 (n + 1) - f1 n).toNat

end

end A108338.P18373855812785756152

/-!
# A108339: Number of self-conjugate wide partitions of n.

The programs for A108339, there is no canonical definition to state claims against.
-/

/-! ## A108339.P3998317074140508780

`A005090(∑[A030528(n+1)!])`
-/

namespace A108339.P3998317074140508780
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A030528 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005090 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A108339.P3998317074140508780

/-! ## A108339.P18324275302314854535

`A124761(or(A292712(n), A311202(n)))`
-/

namespace A108339.P18324275302314854535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124761 (Int.lor (A292712 n) (A311202 n)).toNat

end

end A108339.P18324275302314854535

/-! ## A108339.P17412501884956436690

`A010894(2*n+1)+A001222(A132399(n+2))`
-/

namespace A108339.P17412501884956436690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010894 (2 * n + 1 + 21) + A001222 (A132399 (n + 2)).toNat

end

end A108339.P17412501884956436690

/-! ## A108339.P7230333599675638881

`A258653(3*(n+1))%A077641(A132399(n+2))`
-/

namespace A108339.P7230333599675638881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A258653 (3 * (n + 1))) (A077641 (A132399 (n + 2)).toNat)

end

end A108339.P7230333599675638881

/-! ## A108339.P8158736460677154908

`A023894(A132399(n+2)%A304241(3*n+2))`
-/

namespace A108339.P8158736460677154908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023894 (Int.tmod (A132399 (n + 2)) (A304241 (3 * n + 2))).toNat

end

end A108339.P8158736460677154908

/-!
# A108340: A083952 read mod 2.

The programs for A108340, there is no canonical definition to state claims against.
-/

/-! ## A108340.P439283992811376081

`2-A083952(n)`
-/

namespace A108340.P439283992811376081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A083952 n

end

end A108340.P439283992811376081

/-! ## A108340.P9040326769045024920

`A108115(n)%2`
-/

namespace A108340.P9040326769045024920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A108115 n) 2

end

end A108340.P9040326769045024920

/-! ## A108340.P11245547621401017645

`char[A108783(n+1)]`
-/

namespace A108340.P11245547621401017645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108783 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A108340.P11245547621401017645

/-! ## A108340.P5048652016898146068

`A000035(A108115(n))`
-/

namespace A108340.P5048652016898146068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A108115 n).toNat

end

end A108340.P5048652016898146068

/-! ## A108340.P1369967659031753836

`and(A000328(n), A083952(n))`
-/

namespace A108340.P1369967659031753836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000328 n) (A083952 n)

end

end A108340.P1369967659031753836

/-! ## A108340.P13437525464587976433

`and(A001513(n), A083952(n))`
-/

namespace A108340.P13437525464587976433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001513 n) (A083952 n)

end

end A108340.P13437525464587976433

/-! ## A108340.P14069141293467007108

`and(A001535(n), A083952(n))`
-/

namespace A108340.P14069141293467007108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001535 n) (A083952 n)

end

end A108340.P14069141293467007108

/-! ## A108340.P2524682773935260703

`and(A001546(n), A083952(n))`
-/

namespace A108340.P2524682773935260703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001546 n) (A083952 n)

end

end A108340.P2524682773935260703

/-! ## A108340.P4884526830251123679

`and(A001844(n), A083952(n))`
-/

namespace A108340.P4884526830251123679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001844 n) (A083952 n)

end

end A108340.P4884526830251123679

/-! ## A108340.P10208928928587284320

`and(A001846(n), A083952(n))`
-/

namespace A108340.P10208928928587284320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001846 n) (A083952 n)

end

end A108340.P10208928928587284320

/-! ## A108340.P4196395957559834352

`and(A001848(n), A083952(n))`
-/

namespace A108340.P4196395957559834352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001848 n) (A083952 n)

end

end A108340.P4196395957559834352

/-! ## A108340.P2935230831007392780

`and(A003185(n), A083952(n))`
-/

namespace A108340.P2935230831007392780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A003185 n) (A083952 n)

end

end A108340.P2935230831007392780

/-! ## A108340.P4693144546460403013

`and(A004768(n), A083952(n))`
-/

namespace A108340.P4693144546460403013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A004768 n) (A083952 n)

end

end A108340.P4693144546460403013

/-! ## A108340.P5785595684301057531

`and(A005892(n), A083952(n))`
-/

namespace A108340.P5785595684301057531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A005892 n) (A083952 n)

end

end A108340.P5785595684301057531

/-! ## A108340.P12452567871038049305

`and(A007204(n), A083952(n))`
-/

namespace A108340.P12452567871038049305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A007204 n) (A083952 n)

end

end A108340.P12452567871038049305

/-! ## A108340.P8024657101395156465

`and(A008349(n), A083952(n))`
-/

namespace A108340.P8024657101395156465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A008349 n) (A083952 n)

end

end A108340.P8024657101395156465

/-! ## A108340.P12690940394121007198

`and(A008358(n), A083952(n))`
-/

namespace A108340.P12690940394121007198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A008358 n) (A083952 n)

end

end A108340.P12690940394121007198

/-! ## A108340.P7888835493608157049

`and(A008362(n), A083952(n))`
-/

namespace A108340.P7888835493608157049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A008362 n) (A083952 n)

end

end A108340.P7888835493608157049

/-! ## A108340.P57360805628337751

`and(A008379(n), A083952(n))`
-/

namespace A108340.P57360805628337751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A008379 n) (A083952 n)

end

end A108340.P57360805628337751

/-! ## A108340.P18044390015577659377

`and(A008417(n), A083952(n))`
-/

namespace A108340.P18044390015577659377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A008417 n) (A083952 n)

end

end A108340.P18044390015577659377

/-!
# A108343: Gapful numbers >= 100: numbers that are divisible by the number formed by their first and last digit. Numbers up to 100 trivially have this property and are excluded.

The programs for A108343, there is no canonical definition to state claims against.
-/

/-! ## A108343.P13129353391564677551

`A349771(n+1)`
-/

namespace A108343.P13129353391564677551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349771 (n + 1)

end

end A108343.P13129353391564677551

/-! ## A108343.P16174201111162612217

`record[A349771(A038568(n))]`
-/

namespace A108343.P16174201111162612217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349771 (A038568 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A108343.P16174201111162612217

/-! ## A108343.P11761755478040796005

`record[A349771(A065648(n))]`
-/

namespace A108343.P11761755478040796005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349771 (A065648 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A108343.P11761755478040796005

/-! ## A108343.P18326564232448755343

`record[A349771(A126759(n))]`
-/

namespace A108343.P18326564232448755343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349771 (A126759 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A108343.P18326564232448755343

/-! ## A108343.P12675692829599230305

`record[A349771(A133310(n))]`
-/

namespace A108343.P12675692829599230305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349771 (A133310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A108343.P12675692829599230305

/-! ## A108343.P7701177877576929076

`record[A349771(A137734(n))]`
-/

namespace A108343.P7701177877576929076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349771 (A137734 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A108343.P7701177877576929076

/-!
# A108345: The set N such that each positive integer can be written in the form s^2 + n, s>=0, n in N, in an even number of ways.

The programs for A108345, there is no canonical definition to state claims against.
-/

/-! ## A108345.P11159984026550191991

`eq[1, and(1, A317665(n))]`
-/

namespace A108345.P11159984026550191991
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A317665 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A108345.P11159984026550191991

/-! ## A108345.P6904256511544914661

`eq[1, A239327(n)%2]`
-/

namespace A108345.P6904256511544914661
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A239327 n) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A108345.P6904256511544914661

/-! ## A108345.P9070604254960889180

`eq[1, A006456(n)%2]`
-/

namespace A108345.P9070604254960889180
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006456 n) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A108345.P9070604254960889180

/-! ## A108345.P10514728012275395398

`eq[1, A003242(n)%2]`
-/

namespace A108345.P10514728012275395398
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003242 n) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A108345.P10514728012275395398

/-! ## A108345.P562889652771174347

`eq[1, A000079(val(A003242(n), 2))]`
-/

namespace A108345.P562889652771174347
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (SequenceMachineLib.valuation (A003242 n).toNat 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A108345.P562889652771174347

/-! ## A108345.P3002562139673098270

`eq[2, A000032(val(A003242(n), 2))]`
-/

namespace A108345.P3002562139673098270
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (SequenceMachineLib.valuation (A003242 n).toNat 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A108345.P3002562139673098270

/-! ## A108345.P4378798173344881204

`eq[lcm(2, A285981(n)), A285981(n)]`
-/

namespace A108345.P4378798173344881204
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A285981 n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285981 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A108345.P4378798173344881204

/-!
# A108347: Numbers of the form (3^i)*(5^j)*(7^k), with i, j, k >= 0.

The programs for A108347, there is no canonical definition to state claims against.
-/

/-! ## A108347.P7793380353483472448

`record[lcm(2, A002473(n+1))/2]`
-/

namespace A108347.P7793380353483472448
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A002473 (n + 1)) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A108347.P7793380353483472448

/-! ## A108347.P15525540049753646399

`A002473(eq[0, val(A002473(n+1), 2)]+1)`
-/

namespace A108347.P15525540049753646399
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A002473 (n + 1)).toNat 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002473 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A108347.P15525540049753646399

/-! ## A108347.P5151999432761795022

`A002473(eq[1, and(1, A002473(n+1))]+1)`
-/

namespace A108347.P5151999432761795022
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A002473 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002473 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A108347.P5151999432761795022

/-! ## A108347.P17822084225741340132

`A002473(record[n*A002473(n+1)%2]+1)`
-/

namespace A108347.P17822084225741340132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * Int.tmod (A002473 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002473 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1).toNat

end

end A108347.P17822084225741340132

/-! ## A108347.P11268778356746964686

`A002473(record[n*and(1, A002473(n+1))]+1)`
-/

namespace A108347.P11268778356746964686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * Int.land 1 (A002473 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002473 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1).toNat

end

end A108347.P11268778356746964686

/-! ## A108347.P11379289099489506229

`∩[A002473(n+1), A342572(n+1)]`
-/

namespace A108347.P11379289099489506229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002473 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342572 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A108347.P11379289099489506229

/-! ## A108347.P17034369512707780105

`∩[A051038(n+1), A342572(n+1)]`
-/

namespace A108347.P17034369512707780105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051038 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342572 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A108347.P17034369512707780105

/-! ## A108347.P2640244793502192851

`∩[A080197(n+1), A342572(n+1)]`
-/

namespace A108347.P2640244793502192851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080197 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342572 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A108347.P2640244793502192851

/-! ## A108347.P13164930250731015925

`∩[A084034(n+1), A342572(n+1)]`
-/

namespace A108347.P13164930250731015925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084034 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342572 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A108347.P13164930250731015925

/-! ## A108347.P16524027899056554694

`∩[A342572(n+1), A342950(n+1)]`
-/

namespace A108347.P16524027899056554694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342572 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342950 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A108347.P16524027899056554694

/-! ## A108347.P11737986932283568720

`∩[A002473(n+1), A376857(n+1)]`
-/

namespace A108347.P11737986932283568720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002473 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376857 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A108347.P11737986932283568720

/-! ## A108347.P14145555290147320476

`∩[A051038(n+1), A376857(n+1)]`
-/

namespace A108347.P14145555290147320476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051038 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376857 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A108347.P14145555290147320476

/-! ## A108347.P8064600692542722310

`∩[A084034(n+1), A376857(n+1)]`
-/

namespace A108347.P8064600692542722310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084034 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376857 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A108347.P8064600692542722310

/-! ## A108347.P518032649431218482

`∩[A342950(n+1), A376857(n+1)]`
-/

namespace A108347.P518032649431218482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342950 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376857 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A108347.P518032649431218482

/-! ## A108347.P17327919456532837355

`∩[A033637(n+1), A342572(n+1)]`
-/

namespace A108347.P17327919456532837355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033637 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342572 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A108347.P17327919456532837355

/-! ## A108347.P17139492834549657887

`∩[A033637(n+1), A376857(n+1)]`
-/

namespace A108347.P17139492834549657887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033637 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376857 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A108347.P17139492834549657887

/-! ## A108347.P9156595748528311281

`∩[A002473(n+1), A305409(n+1)]`
-/

namespace A108347.P9156595748528311281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002473 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305409 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A108347.P9156595748528311281

/-! ## A108347.P7775158097888618060

`∩[A305409(n+1), A342950(n+1)]`
-/

namespace A108347.P7775158097888618060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305409 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342950 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A108347.P7775158097888618060

/-! ## A108347.P8019646529340962143

`∩[A002473(n+1), A062505(n+1)]`
-/

namespace A108347.P8019646529340962143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002473 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062505 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A108347.P8019646529340962143

/-! ## A108347.P7020445916509782866

`∩[A062505(n+1), A342950(n+1)]`
-/

namespace A108347.P7020445916509782866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062505 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342950 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A108347.P7020445916509782866

/-!
# A108348: Numbers of the form p^k + p^(k-1) + ... + p + 1 (where p is a prime and k>=0) in ascending order.

The programs for A108348, the canonical program `A108348.P13438347884663860953` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A108348 has offset 1).

The definition of A108348 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 710 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A108348.P6046602602235294222

`eq[1, char[A086455(n+1)]]`
-/

namespace A108348.P6046602602235294222
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086455 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A108348.P6046602602235294222

namespace A108348

/-- `eq[1, char[A086455(n+1)]]` -/
def P6046602602235294222.Spec : Prop :=
  ∀ n, (P6046602602235294222.a n : ℤ) = A108348 (n + 1)

end A108348

/-! ## A108348.P14401249741869053530

`record[A023888(A085790(n+1))]`
-/

namespace A108348.P14401249741869053530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023888 (A085790 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A108348.P14401249741869053530

namespace A108348

/-- `record[A023888(A085790(n+1))]` -/
def P14401249741869053530.Spec : Prop :=
  ∀ n, P14401249741869053530.a n = A108348 (n + 1)

end A108348

/-! ## A108348.P11802885882696601215

`eq[1, char[A000203(A000961(n+1))]]`
-/

namespace A108348.P11802885882696601215
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A000961 (n + 1)).toNat

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A108348.P11802885882696601215

namespace A108348

/-- `eq[1, char[A000203(A000961(n+1))]]` -/
def P11802885882696601215.Spec : Prop :=
  ∀ n, (P11802885882696601215.a n : ℤ) = A108348 (n + 1)

end A108348

/-! ## A108348.P17821169733898527073

`eq[1, char[A000203(A028233(n+1))]]`
-/

namespace A108348.P17821169733898527073
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A028233 (n + 1)).toNat

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A108348.P17821169733898527073

namespace A108348

/-- `eq[1, char[A000203(A028233(n+1))]]` -/
def P17821169733898527073.Spec : Prop :=
  ∀ n, (P17821169733898527073.a n : ℤ) = A108348 (n + 1)

end A108348

/-! ## A108348.P13438347884663860953

`eq[1, char[A000203(A053585(n+1))]]`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A108348

/-- `eq[1, char[A000203(A053585(n+1))]]` -/
def P13438347884663860953.Spec : Prop :=
  ∀ n, (P13438347884663860953.a n : ℤ) = A108348 (n + 1)

theorem P13438347884663860953.correct : P13438347884663860953.Spec := by
  intro n
  simp only [A108348, Nat.add_sub_cancel]

end A108348

/-!
# A108349: Main diagonal of Fibonacci-type array in which each term is equal to the term above multiplied by the term to the left.

The programs for A108349, there is no canonical definition to state claims against.
-/

/-! ## A108349.P2419939914509976003

`(n+1)*(3*a(n-1))^a(n-2)` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A108349.P2419939914509976003
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  (n + 1) * (3 * a (n - 1)) ^ a (n - 2)

end

end A108349.P2419939914509976003

/-!
# A108350: Number triangle T(n,k) = Sum_{j=0..n-k} binomial(k,j)*binomial(n-j,k)*((j+1) mod 2).

The programs for A108350, there is no canonical definition to state claims against.
-/

/-! ## A108350.P11437475503482129211

`ceil(A008288(n)/2)`
-/

namespace A108350.P11437475503482129211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A008288 n : ℚ) / 2⌉

end

end A108350.P11437475503482129211

/-! ## A108350.P1796253050579015802

`ceil(A047671(n+1)/3)`
-/

namespace A108350.P1796253050579015802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A047671 (n + 1) : ℚ) / 3⌉

end

end A108350.P1796253050579015802

/-! ## A108350.P18064838066953505448

`round(A008288(n-char[1])/2)`
-/

namespace A108350.P18064838066953505448
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A008288 (n - (if ∃ j, f1 j = n then 1 else 0)) : ℚ) / 2)

end

end A108350.P18064838066953505448

/-! ## A108350.P713004801816724183

`(A008288(C(2, n)+n)+1)/2`
-/

namespace A108350.P713004801816724183
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008288 (Nat.choose 2 n + n) + 1 : ℚ) / 2

end

end A108350.P713004801816724183

/-! ## A108350.P7881841606287062290

`A047666(n+1)-A391318(n)`
-/

namespace A108350.P7881841606287062290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047666 (n + 1) - A391318 n

end

end A108350.P7881841606287062290

/-! ## A108350.P3599327173746122373

`A047671(n+1)+1-A008288(n)`
-/

namespace A108350.P3599327173746122373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047671 (n + 1) + (1 - A008288 n)

end

end A108350.P3599327173746122373

/-! ## A108350.P10455401244963855278

`ceil(A112475(comp[∑[n]])/2)`
-/

namespace A108350.P10455401244963855278
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A112475 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) : ℚ) / 2⌉

end

end A108350.P10455401244963855278

/-! ## A108350.P17234931186474352933

`A225413(n)+A007318(n)`
-/

namespace A108350.P17234931186474352933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225413 n + A007318 n

end

end A108350.P17234931186474352933

/-! ## A108350.P4152485503339433522

`A014473(n)+A225413(n)+1`
-/

namespace A108350.P4152485503339433522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014473 n + (A225413 n + 1)

end

end A108350.P4152485503339433522

/-! ## A108350.P10532872144238093485

`A101164(n)+1-A225413(n)`
-/

namespace A108350.P10532872144238093485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101164 n + (1 - A225413 n)

end

end A108350.P10532872144238093485

/-! ## A108350.P16718573686157159538

`A008288(n)-A014473(n)-A225413(n)`
-/

namespace A108350.P16718573686157159538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008288 n - A014473 n - A225413 n

end

end A108350.P16718573686157159538

/-! ## A108350.P331712985200277077

`A008288(n)-(A101164(n)-A225413(n))`
-/

namespace A108350.P331712985200277077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008288 n - (A101164 n - A225413 n)

end

end A108350.P331712985200277077

/-! ## A108350.P3910956739151473951

`A014682(A008288(n)+1)`
-/

namespace A108350.P3910956739151473951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A008288 n + 1).toNat

end

end A108350.P3910956739151473951

/-! ## A108350.P16918451157897660280

`A273943(A008288(n)+1)`
-/

namespace A108350.P16918451157897660280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A008288 n + 1).toNat

end

end A108350.P16918451157897660280

/-!
# A108351: Diagonal sums of symmetric triangle A108350.

The programs for A108351, the canonical program `A108351.P7252876573703792507` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A108351 has offset 0).

The definition of A108351 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A108351.P7252876573703792507

`2*a(n-1)+a(n-2)-2*a(n-3)-a(n-4)+a(n-6)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=3, a(4)=5, a(5)=8`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A108351

/-- `2*a(n-1)+a(n-2)-2*a(n-3)-a(n-4)+a(n-6)` -/
def P7252876573703792507.Spec : Prop :=
  ∀ n, P7252876573703792507.a n = A108351 n

theorem P7252876573703792507.correct : P7252876573703792507.Spec := by
  intro n
  simp only [A108351]

end A108351

/-! ## A108351.P3818900729831782582

`∑[ceil(A001590(n+1)/2)]`
-/

namespace A108351.P3818900729831782582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A001590 (n + 1) : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A108351.P3818900729831782582

namespace A108351

/-- `∑[ceil(A001590(n+1)/2)]` -/
def P3818900729831782582.Spec : Prop :=
  ∀ n, P3818900729831782582.a n = A108351 n

end A108351

/-! ## A108351.P9712687699011971852

`A192804(n)+a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A108351.P9712687699011971852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A192804 n + a (n - 2)

end

end A108351.P9712687699011971852

namespace A108351

/-- `A192804(n)+a(n-2)` -/
def P9712687699011971852.Spec : Prop :=
  ∀ n, P9712687699011971852.a n = A108351 n

end A108351

/-! ## A108351.P545493865619897041

`A325473(n+1)-a(n-1)` with `a(0)=1`
-/

namespace A108351.P545493865619897041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A325473 (n + 1) - a (n - 1)

end

end A108351.P545493865619897041

namespace A108351

/-- `A325473(n+1)-a(n-1)` -/
def P545493865619897041.Spec : Prop :=
  ∀ n, P545493865619897041.a n = A108351 n

end A108351

/-! ## A108351.P6837177025659322233

`ceil(a(n-2)+A000213(n)/2)` with `a(0)=1, a(1)=1`
-/

namespace A108351.P6837177025659322233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  ⌈(a (n - 2) : ℚ) + (A000213 n : ℚ) / 2⌉

end

end A108351.P6837177025659322233

namespace A108351

/-- `ceil(a(n-2)+A000213(n)/2)` -/
def P6837177025659322233.Spec : Prop :=
  ∀ n, P6837177025659322233.a n = A108351 n

end A108351

/-! ## A108351.P1893424587026161317

`A283834(n)+A110655(n)`
-/

namespace A108351.P1893424587026161317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283834 n + A110655 n

end

end A108351.P1893424587026161317

namespace A108351

/-- `A283834(n)+A110655(n)` -/
def P1893424587026161317.Spec : Prop :=
  ∀ n, P1893424587026161317.a n = A108351 n

end A108351

/-! ## A108351.P1850960316488748449

`A283834(n)+A110656(2*n)`
-/

namespace A108351.P1850960316488748449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283834 n + A110656 (2 * n)

end

end A108351.P1850960316488748449

namespace A108351

/-- `A283834(n)+A110656(2*n)` -/
def P1850960316488748449.Spec : Prop :=
  ∀ n, P1850960316488748449.a n = A108351 n

end A108351

/-! ## A108351.P9877128520529354731

`A283834(n)+A008624(A004442(n))`
-/

namespace A108351.P9877128520529354731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283834 n + A008624 (A004442 n).toNat

end

end A108351.P9877128520529354731

namespace A108351

/-- `A283834(n)+A008624(A004442(n))` -/
def P9877128520529354731.Spec : Prop :=
  ∀ n, P9877128520529354731.a n = A108351 n

end A108351

/-! ## A108351.P12864506059961935452

`A283834(n)+A004526(A080513(n))`
-/

namespace A108351.P12864506059961935452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283834 n + A004526 (A080513 n).toNat

end

end A108351.P12864506059961935452

namespace A108351

/-- `A283834(n)+A004526(A080513(n))` -/
def P12864506059961935452.Spec : Prop :=
  ∀ n, P12864506059961935452.a n = A108351 n

end A108351

/-! ## A108351.P7625185764792748442

`A283834(n)+A008624(A098180(n))`
-/

namespace A108351.P7625185764792748442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283834 n + A008624 (A098180 n).toNat

end

end A108351.P7625185764792748442

namespace A108351

/-- `A283834(n)+A008624(A098180(n))` -/
def P7625185764792748442.Spec : Prop :=
  ∀ n, P7625185764792748442.a n = A108351 n

end A108351

/-! ## A108351.P12435780171857987502

`ceil((A135491(n)+n)/4)`
-/

namespace A108351.P12435780171857987502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A135491 n + (n : ℤ) : ℚ) / 4⌉

end

end A108351.P12435780171857987502

namespace A108351

/-- `ceil((A135491(n)+n)/4)` -/
def P12435780171857987502.Spec : Prop :=
  ∀ n, P12435780171857987502.a n = A108351 n

end A108351

/-! ## A108351.P4401192268351866521

`(A008619(n)+Δ[A008937(n)])/2`
-/

namespace A108351.P4401192268351866521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008937 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008619 n + (f1 (n + 1) - f1 n) : ℚ) / 2

end

end A108351.P4401192268351866521

namespace A108351

/-- `(A008619(n)+Δ[A008937(n)])/2` -/
def P4401192268351866521.Spec : Prop :=
  ∀ n, P4401192268351866521.a n = (A108351 n : ℚ)

end A108351

/-!
# A108352: a(n) = primal code characteristic of n, which is the least positive integer, if any, such that (n o)^k = 1, otherwise equal to 0. Here "o" denotes the primal composition operator, as illustrated in A106177 and A108371 and (n o)^k = n o ... o n, with k occurrences of n.

The programs for A108352, there is no canonical definition to state claims against.
-/

/-! ## A108352.P9932174281984320652

`and(2, a(n-1)-A247573(n+2))` with `a(0)=1`
-/

namespace A108352.P9932174281984320652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.land 2 (a (n - 1) - A247573 (n + 2))

end

end A108352.P9932174281984320652

/-! ## A108352.P11839954503867379888

`2-A143432(A324363(n+1))`
-/

namespace A108352.P11839954503867379888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A143432 (A324363 (n + 1)).toNat

end

end A108352.P11839954503867379888

/-! ## A108352.P5409603974085533613

`A035153(A098025(record[A204389(n)]))`
-/

namespace A108352.P5409603974085533613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204389 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035153 (A098025 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat).toNat

end

end A108352.P5409603974085533613

/-! ## A108352.P8279827275106715790

`A193680(lcm(A006355(n), A032742(n+1)))`
-/

namespace A108352.P8279827275106715790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193680 (Int.lcm (A006355 n) (A032742 (n + 1)))

end

end A108352.P8279827275106715790

/-! ## A108352.P13954803519945949548

`A010873(A278240(n+1)*A331299(n+1))`
-/

namespace A108352.P13954803519945949548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010873 (A278240 (n + 1) * A331299 (n + 1)).toNat

end

end A108352.P13954803519945949548

/-!
# A108353: For each nonnegative integer n, a(n) is the smallest positive integer j whose primal code characteristic is n, that is, the smallest j such that A108352(j) = n.

The programs for A108353, there is no canonical definition to state claims against.
-/

/-! ## A108353.P9538114769587304489

`A144254(A213242(n+2))`
-/

namespace A108353.P9538114769587304489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144254 (A213242 (n + 2)).toNat

end

end A108353.P9538114769587304489

/-!
# A108354: Expansion of 1/((1-x)^2(1+x^2)^2) in powers of x.

The programs for A108354, the canonical program `A108354.P2799203900694244941` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A108354 has offset 0).

The definition of A108354 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-2x+3x^2-4x^3+3x^4-2x^5+x^6))` (program `A108354.P2799203900694244941`, by `A108354.P2799203900694244941.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A108354.P2799203900694244941

`ogf(1/(1-2x+3x^2-4x^3+3x^4-2x^5+x^6))`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A108354

/-- `ogf(1/(1-2x+3x^2-4x^3+3x^4-2x^5+x^6))` -/
def P2799203900694244941.Spec : Prop :=
  ∀ n, P2799203900694244941.a n = A108354 n

theorem P2799203900694244941.correct : P2799203900694244941.Spec := by
  intro n
  simp only [A108354]

end A108354

/-! ## A108354.P14290409078534215619

`∑[(1-and(2, n))*∑[char[4*n]]]`
-/

namespace A108354.P14290409078534215619
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (Nat.land 2 n : ℤ)) * ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A108354.P14290409078534215619

namespace A108354

/-- `∑[(1-and(2, n))*∑[char[4*n]]]` -/
def P14290409078534215619.Spec : Prop :=
  ∀ n, P14290409078534215619.a n = A108354 n

end A108354

/-! ## A108354.P11076900248334088449

`a(n-4)+a(n%4)` with `a(0)=1, a(1)=2, a(2)=1, a(3)=0`
-/

namespace A108354.P11076900248334088449
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 1, 0] fun n a =>
  a (n - 4) + a (n % 4)

end

end A108354.P11076900248334088449

namespace A108354

/-- `a(n-4)+a(n%4)` -/
def P11076900248334088449.Spec : Prop :=
  ∀ n, (P11076900248334088449.a n : ℤ) = A108354 n

end A108354

/-! ## A108354.P3371332718358296914

`(floor(n/4)+1)*∑[1-and(2, n)]`
-/

namespace A108354.P3371332718358296914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (Nat.land 2 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (⌊(n : ℚ) / 4⌋ + 1) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A108354.P3371332718358296914

namespace A108354

/-- `(floor(n/4)+1)*∑[1-and(2, n)]` -/
def P3371332718358296914.Spec : Prop :=
  ∀ n, P3371332718358296914.a n = A108354 n

end A108354

/-! ## A108354.P3948464680685538050

`(floor(n/4)+1)*and(3, ∑[or(1, n)])`
-/

namespace A108354.P3948464680685538050
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (⌊(n : ℚ) / 4⌋ + 1) * (Nat.land 3 (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ)

end

end A108354.P3948464680685538050

namespace A108354

/-- `(floor(n/4)+1)*and(3, ∑[or(1, n)])` -/
def P3948464680685538050.Spec : Prop :=
  ∀ n, P3948464680685538050.a n = A108354 n

end A108354

/-! ## A108354.P16155435099993821284

`∑[∑[n-1]%2-a(n-2)]` with `a(0)=1, a(1)=1`
-/

namespace A108354.P16155435099993821284
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f2 j) 2 - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A108354.P16155435099993821284

namespace A108354

/-- `∑[∑[n-1]%2-a(n-2)]` -/
def P16155435099993821284.Spec : Prop :=
  ∀ n, P16155435099993821284.a n = A108354 n

end A108354

/-! ## A108354.P15913408247933013537

`∑[floor(a(n-2)/n)²-a(n-2)]` with `a(0)=1, a(1)=1`
-/

namespace A108354.P15913408247933013537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  ⌊(f1 (n - 2) : ℚ) / (n : ℚ)⌋ ^ 2 - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A108354.P15913408247933013537

namespace A108354

/-- `∑[floor(a(n-2)/n)²-a(n-2)]` -/
def P15913408247933013537.Spec : Prop :=
  ∀ n, P15913408247933013537.a n = A108354 n

end A108354

/-! ## A108354.P7286742976055346152

`∑[∑[∑[(-1)^a(n-1)-a(n-2)]]]` with `a(0)=1, a(1)=-1`
-/

namespace A108354.P7286742976055346152
noncomputable section

def f3 : ℕ → ℝ := SequenceMachineLib.rec [1, -1] fun n f3 =>
  (-1 : ℝ) ^ (f3 (n - 1)) - f3 (n - 2)

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A108354.P7286742976055346152

namespace A108354

/-- `∑[∑[∑[(-1)^a(n-1)-a(n-2)]]]` -/
def P7286742976055346152.Spec : Prop :=
  ∀ n, P7286742976055346152.a n = (A108354 n : ℝ)

end A108354

/-! ## A108354.P18293052655543408079

`∑[A001057(∑[char[2*n]])]`
-/

namespace A108354.P18293052655543408079
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A108354.P18293052655543408079

namespace A108354

/-- `∑[A001057(∑[char[2*n]])]` -/
def P18293052655543408079.Spec : Prop :=
  ∀ n, P18293052655543408079.a n = A108354 n

end A108354

/-! ## A108354.P3843570972123343324

`A092038(n)-a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A108354.P3843570972123343324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A092038 n - a (n - 2)

end

end A108354.P3843570972123343324

namespace A108354

/-- `A092038(n)-a(n-2)` -/
def P3843570972123343324.Spec : Prop :=
  ∀ n, P3843570972123343324.a n = A108354 n

end A108354

/-! ## A108354.P6261860884079381246

`A133872(n)+A131728(n)`
-/

namespace A108354.P6261860884079381246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133872 n + A131728 n

end

end A108354.P6261860884079381246

namespace A108354

/-- `A133872(n)+A131728(n)` -/
def P6261860884079381246.Spec : Prop :=
  ∀ n, P6261860884079381246.a n = A108354 n

end A108354

/-! ## A108354.P9125638823520923989

`abs(∑[A130472(A008619(n))])`
-/

namespace A108354.P9125638823520923989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130472 (A008619 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A108354.P9125638823520923989

namespace A108354

/-- `abs(∑[A130472(A008619(n))])` -/
def P9125638823520923989.Spec : Prop :=
  ∀ n, P9125638823520923989.a n = A108354 n

end A108354

/-! ## A108354.P16376275357236306401

`abs(∑[A130472(A004526(n)+1)])`
-/

namespace A108354.P16376275357236306401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130472 (A004526 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A108354.P16376275357236306401

namespace A108354

/-- `abs(∑[A130472(A004526(n)+1)])` -/
def P16376275357236306401.Spec : Prop :=
  ∀ n, P16376275357236306401.a n = A108354 n

end A108354

/-! ## A108354.P17748496375203074016

`∑[(A002265(n)+1)*A057077(n)]`
-/

namespace A108354.P17748496375203074016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002265 n + 1) * A057077 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A108354.P17748496375203074016

namespace A108354

/-- `∑[(A002265(n)+1)*A057077(n)]` -/
def P17748496375203074016.Spec : Prop :=
  ∀ n, P17748496375203074016.a n = A108354 n

end A108354

/-! ## A108354.P15358943643395998237

`∑[∑[A003602(n+1)*A056594(n)]]`
-/

namespace A108354.P15358943643395998237
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (n + 1) * A056594 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A108354.P15358943643395998237

namespace A108354

/-- `∑[∑[A003602(n+1)*A056594(n)]]` -/
def P15358943643395998237.Spec : Prop :=
  ∀ n, P15358943643395998237.a n = A108354 n

end A108354

/-! ## A108354.P15194870978194866818

`A008621(n)+A001057(∑[A001057(n)])`
-/

namespace A108354.P15194870978194866818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 n + A001057 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A108354.P15194870978194866818

namespace A108354

/-- `A008621(n)+A001057(∑[A001057(n)])` -/
def P15194870978194866818.Spec : Prop :=
  ∀ n, P15194870978194866818.a n = A108354 n

end A108354

/-! ## A108354.P3030542940057193216

`Δ[∑[n-a(n-2)]-a(n-2)]` with `a(0)=0, a(1)=1`
-/

namespace A108354.P3030542940057193216
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f2 =>
  (n : ℤ) - f2 (n - 2)

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  ∑ j ∈ Finset.range (n + 1), f2 j - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A108354.P3030542940057193216

namespace A108354

/-- `Δ[∑[n-a(n-2)]-a(n-2)]` -/
def P3030542940057193216.Spec : Prop :=
  ∀ n, P3030542940057193216.a n = A108354 n

end A108354

/-! ## A108354.P3119209490878185890

`A087620(n+1)%(n+2)`
-/

namespace A108354.P3119209490878185890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A087620 (n + 1)) (n + 2 : ℤ)

end

end A108354.P3119209490878185890

namespace A108354

/-- `A087620(n+1)%(n+2)` -/
def P3119209490878185890.Spec : Prop :=
  ∀ n, P3119209490878185890.a n = A108354 n

end A108354

/-! ## A108354.P6340373978289116313

`A029906(A116966(n))`
-/

namespace A108354.P6340373978289116313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029906 (A116966 n).toNat

end

end A108354.P6340373978289116313

namespace A108354

/-- `A029906(A116966(n))` -/
def P6340373978289116313.Spec : Prop :=
  ∀ n, P6340373978289116313.a n = A108354 n

end A108354

/-! ## A108354.P14679388394374560895

`A029906(A298364(n+1))`
-/

namespace A108354.P14679388394374560895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029906 (A298364 (n + 1)).toNat

end

end A108354.P14679388394374560895

namespace A108354

/-- `A029906(A298364(n+1))` -/
def P14679388394374560895.Spec : Prop :=
  ∀ n, P14679388394374560895.a n = A108354 n

end A108354

/-!
# A108355: Expansion of (1+2x^2)/((1-x)^2(1+x^2)^2).

The programs for A108355, the canonical program `A108355.P2202414833960925634` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A108355 has offset 0).

The definition of A108355 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+2x^2)/(1-2x+3x^2-4x^3+3x^4-2x^5+x^6))` (program `A108355.P2202414833960925634`, by `A108355.P2202414833960925634.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A108355.P2202414833960925634

`ogf((1+2x^2)/(1-2x+3x^2-4x^3+3x^4-2x^5+x^6))`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A108355

/-- `ogf((1+2x^2)/(1-2x+3x^2-4x^3+3x^4-2x^5+x^6))` -/
def P2202414833960925634.Spec : Prop :=
  ∀ n, P2202414833960925634.a n = A108355 n

theorem P2202414833960925634.correct : P2202414833960925634.Spec := by
  intro n
  simp only [A108355]

end A108355

/-! ## A108355.P7313373045019940373

`∑[gcd(2, ∑[n+1])-a(n-2)]` with `a(0)=1, a(1)=1`
-/

namespace A108355.P7313373045019940373
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  (Nat.gcd 2 (∑ j ∈ Finset.range (n + 1), f2 j) : ℤ) - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A108355.P7313373045019940373

namespace A108355

/-- `∑[gcd(2, ∑[n+1])-a(n-2)]` -/
def P7313373045019940373.Spec : Prop :=
  ∀ n, P7313373045019940373.a n = A108355 n

end A108355

/-! ## A108355.P13692576643282853662

`n+1-(n^3+1)%4*floor(n/4)`
-/

namespace A108355.P13692576643282853662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - (((n ^ 3 + 1) % 4 : ℕ) : ℤ) * ⌊(n : ℚ) / 4⌋

end

end A108355.P13692576643282853662

namespace A108355

/-- `n+1-(n^3+1)%4*floor(n/4)` -/
def P13692576643282853662.Spec : Prop :=
  ∀ n, P13692576643282853662.a n = A108355 n

end A108355

/-! ## A108355.P11715122147519295481

`∑[Δ[n-a(n-2)]+1-a(n-2)]` with `a(0)=1, a(1)=1`
-/

namespace A108355.P11715122147519295481
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f2 =>
  (n : ℤ) - f2 (n - 2)

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  f2 (n + 1) - f2 n + (1 - f1 (n - 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A108355.P11715122147519295481

namespace A108355

/-- `∑[Δ[n-a(n-2)]+1-a(n-2)]` -/
def P11715122147519295481.Spec : Prop :=
  ∀ n, P11715122147519295481.a n = A108355 n

end A108355

/-! ## A108355.P5540908799648570810

`∑[1-(a(n-2)-Δ[n-a(n-2)])]` with `a(0)=1, a(1)=1`
-/

namespace A108355.P5540908799648570810
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f2 =>
  (n : ℤ) - f2 (n - 2)

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  1 - (f1 (n - 2) - (f2 (n + 1) - f2 n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A108355.P5540908799648570810

namespace A108355

/-- `∑[1-(a(n-2)-Δ[n-a(n-2)])]` -/
def P5540908799648570810.Spec : Prop :=
  ∀ n, P5540908799648570810.a n = A108355 n

end A108355

/-! ## A108355.P10753499131379252619

`∑[A097140(∑[char[2*n]])]`
-/

namespace A108355.P10753499131379252619
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097140 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A108355.P10753499131379252619

namespace A108355

/-- `∑[A097140(∑[char[2*n]])]` -/
def P10753499131379252619.Spec : Prop :=
  ∀ n, P10753499131379252619.a n = A108355 n

end A108355

/-! ## A108355.P9681324485841777926

`A098181(n)-A131728(n)`
-/

namespace A108355.P9681324485841777926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098181 n - A131728 n

end

end A108355.P9681324485841777926

namespace A108355

/-- `A098181(n)-A131728(n)` -/
def P9681324485841777926.Spec : Prop :=
  ∀ n, P9681324485841777926.a n = A108355 n

end A108355

/-! ## A108355.P17699300923618162408

`∑[1-A002265(n)*A057077(n)]`
-/

namespace A108355.P17699300923618162408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A002265 n * A057077 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A108355.P17699300923618162408

namespace A108355

/-- `∑[1-A002265(n)*A057077(n)]` -/
def P17699300923618162408.Spec : Prop :=
  ∀ n, P17699300923618162408.a n = A108355 n

end A108355

/-!
# A108356: Count, repeating multiples of 3 four times, all other numbers twice.

The programs for A108356, the canonical program `A108356.P4667786733769356892` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A108356 has offset 0).

The definition of A108356 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A108356.P4667786733769356892

`floor(n/2)-floor((n+2)/8)+1`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A108356

/-- `floor(n/2)-floor((n+2)/8)+1` -/
def P4667786733769356892.Spec : Prop :=
  ∀ n, P4667786733769356892.a n = A108356 n

theorem P4667786733769356892.correct : P4667786733769356892.Spec := by
  intro n
  simp only [A108356]

end A108356

/-! ## A108356.P13085900177145500687

`∑[char[and(n, n+3)]]`
-/

namespace A108356.P13085900177145500687
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land n (n + 3)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A108356.P13085900177145500687

namespace A108356

/-- `∑[char[and(n, n+3)]]` -/
def P13085900177145500687.Spec : Prop :=
  ∀ n, (P13085900177145500687.a n : ℤ) = A108356 n

end A108356

/-! ## A108356.P13527986109298133988

`ceil(∑[log2(gcd(4, n))/2])`
-/

namespace A108356.P13527986109298133988
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Nat.gcd 4 n : ℝ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f1 j⌉

end

end A108356.P13527986109298133988

namespace A108356

/-- `ceil(∑[log2(gcd(4, n))/2])` -/
def P13527986109298133988.Spec : Prop :=
  ∀ n, P13527986109298133988.a n = A108356 n

end A108356

/-! ## A108356.P7707946246777889093

`∑[char[lcm(2, and(n, -3))]]`
-/

namespace A108356.P7707946246777889093
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (Int.land (n : ℤ) (-3))

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A108356.P7707946246777889093

namespace A108356

/-- `∑[char[lcm(2, and(n, -3))]]` -/
def P7707946246777889093.Spec : Prop :=
  ∀ n, (P7707946246777889093.a n : ℤ) = A108356 n

end A108356

/-! ## A108356.P11898474427179946072

`∑[char[2*comp[or(3, n)]]]`
-/

namespace A108356.P11898474427179946072
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 3 n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A108356.P11898474427179946072

namespace A108356

/-- `∑[char[2*comp[or(3, n)]]]` -/
def P11898474427179946072.Spec : Prop :=
  ∀ n, (P11898474427179946072.a n : ℤ) = A108356 n

end A108356

/-! ## A108356.P9092750533513251300

`∑[char[∑[and(6, n%5)]]]`
-/

namespace A108356.P9092750533513251300
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 6 (n % 5)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A108356.P9092750533513251300

namespace A108356

/-- `∑[char[∑[and(6, n%5)]]]` -/
def P9092750533513251300.Spec : Prop :=
  ∀ n, (P9092750533513251300.a n : ℤ) = A108356 n

end A108356

/-! ## A108356.P7203567614685174783

`ceil(∑[val(or(4, n), 2)]/2)`
-/

namespace A108356.P7203567614685174783
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (Nat.lor 4 n) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 2⌉

end

end A108356.P7203567614685174783

namespace A108356

/-- `ceil(∑[val(or(4, n), 2)]/2)` -/
def P7203567614685174783.Spec : Prop :=
  ∀ n, P7203567614685174783.a n = A108356 n

end A108356

/-! ## A108356.P11033775097443316655

`round(∑[val(or(4, n), 2)]/2)`
-/

namespace A108356.P11033775097443316655
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (Nat.lor 4 n) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 2)

end

end A108356.P11033775097443316655

namespace A108356

/-- `round(∑[val(or(4, n), 2)]/2)` -/
def P11033775097443316655.Spec : Prop :=
  ∀ n, P11033775097443316655.a n = A108356 n

end A108356

/-! ## A108356.P8560079074830680786

`∑[(((n+1)%8)%7)%2]`
-/

namespace A108356.P8560079074830680786
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) % 8 % 7 % 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A108356.P8560079074830680786

namespace A108356

/-- `∑[(((n+1)%8)%7)%2]` -/
def P8560079074830680786.Spec : Prop :=
  ∀ n, (P8560079074830680786.a n : ℤ) = A108356 n

end A108356

/-! ## A108356.P6845388816254678084

`∑[char[a(n-3)+8]]` with `a(0)=0, a(1)=2, a(2)=4`
-/

namespace A108356.P6845388816254678084
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 2, 4] fun n f2 =>
  f2 (n - 3) + 8

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A108356.P6845388816254678084

namespace A108356

/-- `∑[char[a(n-3)+8]]` -/
def P6845388816254678084.Spec : Prop :=
  ∀ n, (P6845388816254678084.a n : ℤ) = A108356 n

end A108356

/-! ## A108356.P3087400142324777549

`∑[char[ogf((2x+2x^2+4x^3)/(1-x-x^3+x^4))]]`
-/

namespace A108356.P3087400142324777549
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 2, 2, 4] [1, -1, 0, -1, 1] n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A108356.P3087400142324777549

namespace A108356

/-- `∑[char[ogf((2x+2x^2+4x^3)/(1-x-x^3+x^4))]]` -/
def P3087400142324777549.Spec : Prop :=
  ∀ n, (P3087400142324777549.a n : ℤ) = A108356 n

end A108356

/-! ## A108356.P11970517591991936653

`∑[A108357(n)]`
-/

namespace A108356.P11970517591991936653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108357 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A108356.P11970517591991936653

namespace A108356

/-- `∑[A108357(n)]` -/
def P11970517591991936653.Spec : Prop :=
  ∀ n, P11970517591991936653.a n = A108356 n

end A108356

/-! ## A108356.P10860307215543822281

`∑[char[A047464(n+1)]]`
-/

namespace A108356.P10860307215543822281
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047464 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A108356.P10860307215543822281

namespace A108356

/-- `∑[char[A047464(n+1)]]` -/
def P10860307215543822281.Spec : Prop :=
  ∀ n, (P10860307215543822281.a n : ℤ) = A108356 n

end A108356

/-! ## A108356.P17378888763181104692

`∑[char[2*A131452(n)]]`
-/

namespace A108356.P17378888763181104692
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A131452 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A108356.P17378888763181104692

namespace A108356

/-- `∑[char[2*A131452(n)]]` -/
def P17378888763181104692.Spec : Prop :=
  ∀ n, (P17378888763181104692.a n : ℤ) = A108356 n

end A108356

/-! ## A108356.P11226433114170872077

`∑[char[A047420(2*n+1)]]`
-/

namespace A108356.P11226433114170872077
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047420 (2 * n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A108356.P11226433114170872077

namespace A108356

/-- `∑[char[A047420(2*n+1)]]` -/
def P11226433114170872077.Spec : Prop :=
  ∀ n, (P11226433114170872077.a n : ℤ) = A108356 n

end A108356

/-! ## A108356.P11400565802521390581

`∑[char[A047549(2*n+1)]]`
-/

namespace A108356.P11400565802521390581
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047549 (2 * n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A108356.P11400565802521390581

namespace A108356

/-- `∑[char[A047549(2*n+1)]]` -/
def P11400565802521390581.Spec : Prop :=
  ∀ n, (P11400565802521390581.a n : ℤ) = A108356 n

end A108356

/-! ## A108356.P7429783428094640258

`∑[char[A047602(2*n+1)]]`
-/

namespace A108356.P7429783428094640258
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047602 (2 * n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A108356.P7429783428094640258

namespace A108356

/-- `∑[char[A047602(2*n+1)]]` -/
def P7429783428094640258.Spec : Prop :=
  ∀ n, (P7429783428094640258.a n : ℤ) = A108356 n

end A108356

/-! ## A108356.P9384307909989328789

`∑[char[2*A004523(2*n)]]`
-/

namespace A108356.P9384307909989328789
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A004523 (2 * n)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A108356.P9384307909989328789

namespace A108356

/-- `∑[char[2*A004523(2*n)]]` -/
def P9384307909989328789.Spec : Prop :=
  ∀ n, (P9384307909989328789.a n : ℤ) = A108356 n

end A108356

/-! ## A108356.P9066937447942146745

`A080513(A187321(n))`
-/

namespace A108356.P9066937447942146745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080513 (A187321 n).toNat

end

end A108356.P9066937447942146745

namespace A108356

/-- `A080513(A187321(n))` -/
def P9066937447942146745.Spec : Prop :=
  ∀ n, P9066937447942146745.a n = A108356 n

end A108356

/-! ## A108356.P11211411449913912337

`A008619(A330881(n))`
-/

namespace A108356.P11211411449913912337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A330881 n).toNat

end

end A108356.P11211411449913912337

namespace A108356

/-- `A008619(A330881(n))` -/
def P11211411449913912337.Spec : Prop :=
  ∀ n, P11211411449913912337.a n = A108356 n

end A108356

/-!
# A108357: Expansion of (1+x^2+x^4)/(1-x^8).

The programs for A108357, the canonical program `A108357.P16261361243069920264` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A108357 has offset 0).

The definition of A108357 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+x^2+x^4)/(1-x^8))` (program `A108357.P16261361243069920264`, by `A108357.P16261361243069920264.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A108357.P16261361243069920264

`ogf((1+x^2+x^4)/(1-x^8))`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A108357

/-- `ogf((1+x^2+x^4)/(1-x^8))` -/
def P16261361243069920264.Spec : Prop :=
  ∀ n, P16261361243069920264.a n = A108357 n

theorem P16261361243069920264.correct : P16261361243069920264.Spec := by
  intro n
  simp only [A108357]

end A108357

/-!
# A108358: A mod 2 triangle based on floor((n+2)/2).

The programs for A108358, the canonical program `A108358.P14957281117479450170` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A108358 has offset 0).

The definition of A108358 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A108358.P15058941363717046411

`A108359(n)%2`
-/

namespace A108358.P15058941363717046411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A108359 n) 2

end

end A108358.P15058941363717046411

namespace A108358

/-- `A108359(n)%2` -/
def P15058941363717046411.Spec : Prop :=
  ∀ n, P15058941363717046411.a n = A108358 n

end A108358

/-! ## A108358.P14957281117479450170

`1-A021913(A004198(n))`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A108358

/-- `1-A021913(A004198(n))` -/
def P14957281117479450170.Spec : Prop :=
  ∀ n, P14957281117479450170.a n = A108358 n

theorem P14957281117479450170.correct : P14957281117479450170.Spec := by
  intro n
  simp only [A108358]

end A108358

/-! ## A108358.P6604523363315951089

`A021913(A004198(n)+2)`
-/

namespace A108358.P6604523363315951089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021913 (A004198 n + 2).toNat

end

end A108358.P6604523363315951089

namespace A108358

/-- `A021913(A004198(n)+2)` -/
def P6604523363315951089.Spec : Prop :=
  ∀ n, P6604523363315951089.a n = A108358 n

end A108358

/-! ## A108358.P15827178207903371861

`and(A108359(n), A131843(n))`
-/

namespace A108358.P15827178207903371861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A108359 n) (A131843 n)

end

end A108358.P15827178207903371861

namespace A108358

/-- `and(A108359(n), A131843(n))` -/
def P15827178207903371861.Spec : Prop :=
  ∀ n, P15827178207903371861.a n = A108358 n

end A108358

/-! ## A108358.P3150626516231993789

`and(A077860(n), A108359(n))`
-/

namespace A108358.P3150626516231993789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A077860 n) (A108359 n)

end

end A108358.P3150626516231993789

namespace A108358

/-- `and(A077860(n), A108359(n))` -/
def P3150626516231993789.Spec : Prop :=
  ∀ n, P3150626516231993789.a n = A108358 n

end A108358

/-! ## A108358.P1522695726485069501

`and(A077924(n), A108359(n))`
-/

namespace A108358.P1522695726485069501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A077924 n) (A108359 n)

end

end A108358.P1522695726485069501

namespace A108358

/-- `and(A077924(n), A108359(n))` -/
def P1522695726485069501.Spec : Prop :=
  ∀ n, P1522695726485069501.a n = A108358 n

end A108358

/-! ## A108358.P11088547515720796971

`and(A077853(n), A108359(n))`
-/

namespace A108358.P11088547515720796971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A077853 n) (A108359 n)

end

end A108358.P11088547515720796971

namespace A108358

/-- `and(A077853(n), A108359(n))` -/
def P11088547515720796971.Spec : Prop :=
  ∀ n, P11088547515720796971.a n = A108358 n

end A108358

/-! ## A108358.P16246999185517640347

`and(A077891(n), A108359(n))`
-/

namespace A108358.P16246999185517640347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A077891 n) (A108359 n)

end

end A108358.P16246999185517640347

namespace A108358

/-- `and(A077891(n), A108359(n))` -/
def P16246999185517640347.Spec : Prop :=
  ∀ n, P16246999185517640347.a n = A108358 n

end A108358

/-! ## A108358.P15724065877669890260

`and(A077881(n), A108359(n))`
-/

namespace A108358.P15724065877669890260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A077881 n) (A108359 n)

end

end A108358.P15724065877669890260

namespace A108358

/-- `and(A077881(n), A108359(n))` -/
def P15724065877669890260.Spec : Prop :=
  ∀ n, P15724065877669890260.a n = A108358 n

end A108358

/-! ## A108358.P15210451956493787586

`and(A083318(n), A108359(n))`
-/

namespace A108358.P15210451956493787586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A083318 n) (A108359 n)

end

end A108358.P15210451956493787586

namespace A108358

/-- `and(A083318(n), A108359(n))` -/
def P15210451956493787586.Spec : Prop :=
  ∀ n, P15210451956493787586.a n = A108358 n

end A108358

/-! ## A108358.P16995859030257851732

`and(A048578(n), A108359(n))`
-/

namespace A108358.P16995859030257851732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A048578 n) (A108359 n)

end

end A108358.P16995859030257851732

namespace A108358

/-- `and(A048578(n), A108359(n))` -/
def P16995859030257851732.Spec : Prop :=
  ∀ n, P16995859030257851732.a n = A108358 n

end A108358

/-! ## A108358.P4484415611795107567

`and(A108359(n), A114001(n))`
-/

namespace A108358.P4484415611795107567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A108359 n) (A114001 n)

end

end A108358.P4484415611795107567

namespace A108358

/-- `and(A108359(n), A114001(n))` -/
def P4484415611795107567.Spec : Prop :=
  ∀ n, P4484415611795107567.a n = A108358 n

end A108358

/-! ## A108358.P4877390384786836861

`and(A020737(n), A108359(n))`
-/

namespace A108358.P4877390384786836861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A020737 n) (A108359 n)

end

end A108358.P4877390384786836861

namespace A108358

/-- `and(A020737(n), A108359(n))` -/
def P4877390384786836861.Spec : Prop :=
  ∀ n, P4877390384786836861.a n = A108358 n

end A108358

/-! ## A108358.P17300656617638257341

`and(A033622(n), A108359(n))`
-/

namespace A108358.P17300656617638257341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A033622 n) (A108359 n)

end

end A108358.P17300656617638257341

namespace A108358

/-- `and(A033622(n), A108359(n))` -/
def P17300656617638257341.Spec : Prop :=
  ∀ n, P17300656617638257341.a n = A108358 n

end A108358

/-! ## A108358.P11092765943201575423

`and(A108359(n), A195744(n))`
-/

namespace A108358.P11092765943201575423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A108359 n) (A195744 n)

end

end A108358.P11092765943201575423

namespace A108358

/-- `and(A108359(n), A195744(n))` -/
def P11092765943201575423.Spec : Prop :=
  ∀ n, P11092765943201575423.a n = A108358 n

end A108358

/-! ## A108358.P16281352561160604345

`and(A108359(n), A122041(n+1))`
-/

namespace A108358.P16281352561160604345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A108359 n) (A122041 (n + 1))

end

end A108358.P16281352561160604345

namespace A108358

/-- `and(A108359(n), A122041(n+1))` -/
def P16281352561160604345.Spec : Prop :=
  ∀ n, P16281352561160604345.a n = A108358 n

end A108358

/-! ## A108358.P10456077664024060950

`and(A108359(n), A196657(n))`
-/

namespace A108358.P10456077664024060950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A108359 n) (A196657 n)

end

end A108358.P10456077664024060950

namespace A108358

/-- `and(A108359(n), A196657(n))` -/
def P10456077664024060950.Spec : Prop :=
  ∀ n, P10456077664024060950.a n = A108358 n

end A108358

/-! ## A108358.P794141570497819712

`and(A108359(n), A345109(n+1))`
-/

namespace A108358.P794141570497819712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A108359 n) (A345109 (n + 1))

end

end A108358.P794141570497819712

namespace A108358

/-- `and(A108359(n), A345109(n+1))` -/
def P794141570497819712.Spec : Prop :=
  ∀ n, P794141570497819712.a n = A108358 n

end A108358

/-! ## A108358.P807041997963484770

`and(A108359(n), A131056(n+1))`
-/

namespace A108358.P807041997963484770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A108359 n) (A131056 (n + 1))

end

end A108358.P807041997963484770

namespace A108358

/-- `and(A108359(n), A131056(n+1))` -/
def P807041997963484770.Spec : Prop :=
  ∀ n, P807041997963484770.a n = A108358 n

end A108358

/-! ## A108358.P16704725406472208127

`and(A108359(n), A345108(n+1))`
-/

namespace A108358.P16704725406472208127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A108359 n) (A345108 (n + 1))

end

end A108358.P16704725406472208127

namespace A108358

/-- `and(A108359(n), A345108(n+1))` -/
def P16704725406472208127.Spec : Prop :=
  ∀ n, P16704725406472208127.a n = A108358 n

end A108358

/-!
# A108359: A symmetric number triangle based on floor((n+2)/2).

The programs for A108359, there is no canonical definition to state claims against.
-/

/-! ## A108359.P3876557412402367573

`A100936(n)-A308857(A010894(n))`
-/

namespace A108359.P3876557412402367573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100936 n - A308857 (A010894 (n + 21)).toNat

end

end A108359.P3876557412402367573

/-!
# A108360: Expansion of (1-2x)^2/((1-x)^2(1-2x-x^2)^2).

The programs for A108360, the canonical program `A108360.P9356856718778475976` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A108360 has offset 0).

The definition of A108360 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-4x+4x^2)/(1-6x+11x^2-4x^3-5x^4+2x^5+x^6))` (program `A108360.P9356856718778475976`, by `A108360.P9356856718778475976.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A108360.P9356856718778475976

`ogf((1-4x+4x^2)/(1-6x+11x^2-4x^3-5x^4+2x^5+x^6))`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A108360

/-- `ogf((1-4x+4x^2)/(1-6x+11x^2-4x^3-5x^4+2x^5+x^6))` -/
def P9356856718778475976.Spec : Prop :=
  ∀ n, P9356856718778475976.a n = A108360 n

theorem P9356856718778475976.correct : P9356856718778475976.Spec := by
  intro n
  simp only [A108360]

end A108360

/-! ## A108360.P15563532672908890628

`∑[A291142(n+1)-∑[A291142(n)]]`
-/

namespace A108360.P15563532672908890628
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291142 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291142 (n + 1) - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A108360.P15563532672908890628

namespace A108360

/-- `∑[A291142(n+1)-∑[A291142(n)]]` -/
def P15563532672908890628.Spec : Prop :=
  ∀ n, P15563532672908890628.a n = A108360 n

end A108360

/-! ## A108360.P16341890541203420546

`∑[∑[A188285(∑[n+1]+1)]]`
-/

namespace A108360.P16341890541203420546
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188285 (∑ j ∈ Finset.range (n + 1), f3 j + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A108360.P16341890541203420546

namespace A108360

/-- `∑[∑[A188285(∑[n+1]+1)]]` -/
def P16341890541203420546.Spec : Prop :=
  ∀ n, P16341890541203420546.a n = A108360 n

end A108360

/-! ## A108360.P13239354716565094712

`A051163(n)-A230595(A038561(n))`
-/

namespace A108360.P13239354716565094712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051163 n - A230595 (A038561 n).toNat

end

end A108360.P13239354716565094712

namespace A108360

/-- `A051163(n)-A230595(A038561(n))` -/
def P13239354716565094712.Spec : Prop :=
  ∀ n, P13239354716565094712.a n = A108360 n

end A108360

/-! ## A108360.P13682195562824716596

`A051163(n)-A100910(A279565(n))`
-/

namespace A108360.P13682195562824716596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051163 n - A100910 (A279565 n).toNat

end

end A108360.P13682195562824716596

namespace A108360

/-- `A051163(n)-A100910(A279565(n))` -/
def P13682195562824716596.Spec : Prop :=
  ∀ n, P13682195562824716596.a n = A108360 n

end A108360

/-!
# A108361: Diagonal sums of number triangle A108359.

The programs for A108361, there is no canonical definition to state claims against.
-/

/-! ## A108361.P1799090518094635130

`A008619(A172534(n+1)+A017994(n))`
-/

namespace A108361.P1799090518094635130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A172534 (n + 1) + A017994 n).toNat

end

end A108361.P1799090518094635130

/-! ## A108361.P8258708822124479852

`A100196(A000636(n+1))`
-/

namespace A108361.P8258708822124479852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100196 (A000636 (n + 1)).toNat

end

end A108361.P8258708822124479852

/-! ## A108361.P6452210148814293038

`A008618(9*A017994(n))`
-/

namespace A108361.P6452210148814293038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008618 (9 * A017994 n).toNat

end

end A108361.P6452210148814293038

/-! ## A108361.P1867977337785466229

`A008651(15*A017994(n))`
-/

namespace A108361.P1867977337785466229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008651 (15 * A017994 n).toNat

end

end A108361.P1867977337785466229

/-! ## A108361.P10307951438139771181

`A100196(A352176(n)+A001654(n))`
-/

namespace A108361.P10307951438139771181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100196 (A352176 n + A001654 n).toNat

end

end A108361.P10307951438139771181

/-!
# A108362: Pair reversal of Fibonacci numbers.

The programs for A108362, the canonical program `A108362.P1052182436485309533` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A108362 has offset 0).

The definition of A108362 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A108362.P1052182436485309533

`3*a(n-2)-a(n-4)` with `a(0)=1, a(1)=0, a(2)=2, a(3)=1`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A108362

/-- `3*a(n-2)-a(n-4)` -/
def P1052182436485309533.Spec : Prop :=
  ∀ n, P1052182436485309533.a n = A108362 n

theorem P1052182436485309533.correct : P1052182436485309533.Spec := by
  intro n
  simp only [A108362]

end A108362

/-! ## A108362.P10259131318538180252

`ogf((1-x^2+x^3)/(1-3x^2+x^4))`
-/

namespace A108362.P10259131318538180252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, -1, 1] [1, 0, -3, 0, 1] n

end

end A108362.P10259131318538180252

namespace A108362

/-- `ogf((1-x^2+x^3)/(1-3x^2+x^4))` -/
def P10259131318538180252.Spec : Prop :=
  ∀ n, P10259131318538180252.a n = A108362 n

end A108362

/-! ## A108362.P4198183551531566048

`A000045(xor(1, n))`
-/

namespace A108362.P4198183551531566048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (Nat.xor 1 n)

end

end A108362.P4198183551531566048

namespace A108362

/-- `A000045(xor(1, n))` -/
def P4198183551531566048.Spec : Prop :=
  ∀ n, P4198183551531566048.a n = A108362 n

end A108362

/-! ## A108362.P5152069669889768805

`abs(A236191(xor(1, n)))`
-/

namespace A108362.P5152069669889768805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A236191 (Nat.xor 1 n)|

end

end A108362.P5152069669889768805

namespace A108362

/-- `abs(A236191(xor(1, n)))` -/
def P5152069669889768805.Spec : Prop :=
  ∀ n, P5152069669889768805.a n = A108362 n

end A108362

/-! ## A108362.P4836667527823267895

`A098054(2*n+5)`
-/

namespace A108362.P4836667527823267895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098054 (2 * n + 5)

end

end A108362.P4836667527823267895

namespace A108362

/-- `A098054(2*n+5)` -/
def P4836667527823267895.Spec : Prop :=
  ∀ n, P4836667527823267895.a n = A108362 n

end A108362

/-! ## A108362.P14147232402401292754

`A212804(xor(1, n)+1)`
-/

namespace A108362.P14147232402401292754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (Nat.xor 1 n + 1)

end

end A108362.P14147232402401292754

namespace A108362

/-- `A212804(xor(1, n)+1)` -/
def P14147232402401292754.Spec : Prop :=
  ∀ n, P14147232402401292754.a n = A108362 n

end A108362

/-! ## A108362.P15240878302592494192

`A001611(xor(1, n))-1`
-/

namespace A108362.P15240878302592494192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001611 (Nat.xor 1 n) - 1

end

end A108362.P15240878302592494192

namespace A108362

/-- `A001611(xor(1, n))-1` -/
def P15240878302592494192.Spec : Prop :=
  ∀ n, P15240878302592494192.a n = A108362 n

end A108362

/-! ## A108362.P14487583554462763058

`A053602(2*xor(1, n))`
-/

namespace A108362.P14487583554462763058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053602 (2 * Nat.xor 1 n)

end

end A108362.P14487583554462763058

namespace A108362

/-- `A053602(2*xor(1, n))` -/
def P14487583554462763058.Spec : Prop :=
  ∀ n, P14487583554462763058.a n = A108362 n

end A108362

/-! ## A108362.P8892650605764622316

`A103609(2*xor(1, n))`
-/

namespace A108362.P8892650605764622316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103609 (2 * Nat.xor 1 n)

end

end A108362.P8892650605764622316

namespace A108362

/-- `A103609(2*xor(1, n))` -/
def P8892650605764622316.Spec : Prop :=
  ∀ n, P8892650605764622316.a n = A108362 n

end A108362

/-! ## A108362.P6791412866188403789

`A302126(2*xor(1, n))`
-/

namespace A108362.P6791412866188403789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302126 (2 * Nat.xor 1 n)

end

end A108362.P6791412866188403789

namespace A108362

/-- `A302126(2*xor(1, n))` -/
def P6791412866188403789.Spec : Prop :=
  ∀ n, P6791412866188403789.a n = A108362 n

end A108362

/-! ## A108362.P10760274389255689114

`A129982(xor(3, 2*n))`
-/

namespace A108362.P10760274389255689114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129982 (Nat.xor 3 (2 * n))

end

end A108362.P10760274389255689114

namespace A108362

/-- `A129982(xor(3, 2*n))` -/
def P10760274389255689114.Spec : Prop :=
  ∀ n, P10760274389255689114.a n = A108362 n

end A108362

/-! ## A108362.P13557377004563720214

`A000045((-1)^n+n)`
-/

namespace A108362.P13557377004563720214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 ((-1) ^ n + (n : ℤ)).toNat

end

end A108362.P13557377004563720214

namespace A108362

/-- `A000045((-1)^n+n)` -/
def P13557377004563720214.Spec : Prop :=
  ∀ n, P13557377004563720214.a n = A108362 n

end A108362

/-! ## A108362.P2069396343838417540

`A133586(n)-a(n-1)` with `a(0)=1`
-/

namespace A108362.P2069396343838417540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A133586 n - a (n - 1)

end

end A108362.P2069396343838417540

namespace A108362

/-- `A133586(n)-a(n-1)` -/
def P2069396343838417540.Spec : Prop :=
  ∀ n, P2069396343838417540.a n = A108362 n

end A108362

/-! ## A108362.P394562833760276321

`A000032(n-1)+a(n-2)-a(n-1)` with `a(0)=1, a(1)=0`
-/

namespace A108362.P394562833760276321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A000032 (n - 1) + (a (n - 2) - a (n - 1))

end

end A108362.P394562833760276321

namespace A108362

/-- `A000032(n-1)+a(n-2)-a(n-1)` -/
def P394562833760276321.Spec : Prop :=
  ∀ n, P394562833760276321.a n = A108362 n

end A108362

/-! ## A108362.P2784844207380438920

`A103609(A166519(n))`
-/

namespace A108362.P2784844207380438920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103609 (A166519 n).toNat

end

end A108362.P2784844207380438920

namespace A108362

/-- `A103609(A166519(n))` -/
def P2784844207380438920.Spec : Prop :=
  ∀ n, P2784844207380438920.a n = A108362 n

end A108362

/-! ## A108362.P5967602256796438613

`A212804(A014681(n+1))`
-/

namespace A108362.P5967602256796438613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (A014681 (n + 1)).toNat

end

end A108362.P5967602256796438613

namespace A108362

/-- `A212804(A014681(n+1))` -/
def P5967602256796438613.Spec : Prop :=
  ∀ n, P5967602256796438613.a n = A108362 n

end A108362

/-! ## A108362.P4067163226693561295

`A212804(A103889(n+1))`
-/

namespace A108362.P4067163226693561295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (A103889 (n + 1)).toNat

end

end A108362.P4067163226693561295

namespace A108362

/-- `A212804(A103889(n+1))` -/
def P4067163226693561295.Spec : Prop :=
  ∀ n, P4067163226693561295.a n = A108362 n

end A108362

/-! ## A108362.P7140257600234960805

`A327035(A047238(n+1))`
-/

namespace A108362.P7140257600234960805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327035 (A047238 (n + 1)).toNat

end

end A108362.P7140257600234960805

namespace A108362

/-- `A327035(A047238(n+1))` -/
def P7140257600234960805.Spec : Prop :=
  ∀ n, P7140257600234960805.a n = A108362 n

end A108362

/-! ## A108362.P14950358197796275360

`A327035(A047239(n+1))`
-/

namespace A108362.P14950358197796275360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327035 (A047239 (n + 1)).toNat

end

end A108362.P14950358197796275360

namespace A108362

/-- `A327035(A047239(n+1))` -/
def P14950358197796275360.Spec : Prop :=
  ∀ n, P14950358197796275360.a n = A108362 n

end A108362

/-!
# A108363: Triangle read by rows, generated from A108350.

The programs for A108363, there is no canonical definition to state claims against.
-/

/-! ## A108363.P6167908156814893299

`A122180(A034327(n))+A007318(n)`
-/

namespace A108363.P6167908156814893299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122180 (A034327 n).toNat + A007318 n

end

end A108363.P6167908156814893299

/-! ## A108363.P5228658776122387392

`A025442(A208673(n))+A007318(n)`
-/

namespace A108363.P5228658776122387392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025442 (A208673 n).toNat + A007318 n

end

end A108363.P5228658776122387392

/-! ## A108363.P15501185477390168089

`A259195(A004070(n))+A007318(n)`
-/

namespace A108363.P15501185477390168089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259195 (A004070 n).toNat + A007318 n

end

end A108363.P15501185477390168089

/-! ## A108363.P10000506697006781497

`A263442(A054124(n))+A014473(n)`
-/

namespace A108363.P10000506697006781497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263442 (A054124 n).toNat + A014473 n

end

end A108363.P10000506697006781497

/-! ## A108363.P15629369275807029275

`A337620(A060701(n))+A007318(n)`
-/

namespace A108363.P15629369275807029275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337620 (A060701 n).toNat + A007318 n

end

end A108363.P15629369275807029275

/-!
# A108366: L(n,n), where L is defined as in A108299.

The programs for A108366, there is no canonical definition to state claims against.
-/

/-! ## A108366.P16792827246154970336

`A218220(2*(n+1)²)`
-/

namespace A108366.P16792827246154970336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218220 (2 * (n + 1) ^ 2)

end

end A108366.P16792827246154970336

/-! ## A108366.P5793978108883311275

`abs(A218220(∑[A016825(n)]))`
-/

namespace A108366.P5793978108883311275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016825 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A218220 (∑ j ∈ Finset.range (n + 1), f1 j).toNat|

end

end A108366.P5793978108883311275

/-! ## A108366.P7639554138251642088

`abs(A218220(∑[A005843(2*n+1)]))`
-/

namespace A108366.P7639554138251642088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A218220 (∑ j ∈ Finset.range (n + 1), f1 j).toNat|

end

end A108366.P7639554138251642088

/-!
# A108367: L(n,-n), where L is defined as in A108299.

The programs for A108367, there is no canonical definition to state claims against.
-/

/-! ## A108367.P14693677588649929333

`A098495(∑[record[2*(n+2)/gcd(4, n)]])`
-/

namespace A108367.P14693677588649929333
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * ((n + 2 : ℚ) / (Nat.gcd 4 n : ℚ))

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098495 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A108367.P14693677588649929333

/-! ## A108367.P11939067724565609929

`A098495(eq[1, round(sqrt(2*(n+1)))²-(2*n+1)])`
-/

namespace A108367.P11939067724565609929
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (2 * (n + 1) : ℝ)) ^ 2 - (2 * n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098495 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A108367.P11939067724565609929

/-!
# A108368: Coefficients of x/(1-3*x-3*x^2-x^3).

The programs for A108368, the canonical program `A108368.P8854178705552761750` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A108368 has offset 0).

The definition of A108368 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A108368.P8854178705552761750

`3*a(n-1)+3*a(n-2)+a(n-3)` with `a(0)=0, a(1)=1, a(2)=3`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A108368

/-- `3*a(n-1)+3*a(n-2)+a(n-3)` -/
def P8854178705552761750.Spec : Prop :=
  ∀ n, (P8854178705552761750.a n : ℤ) = A108368 n

theorem P8854178705552761750.correct : P8854178705552761750.Spec := by
  intro n
  simp only [A108368]

end A108368

/-! ## A108368.P12359755203968606370

`ogf(-x/(-1+3x+3x^2+x^3))`
-/

namespace A108368.P12359755203968606370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1] [1, -3, -3, -1] n

end

end A108368.P12359755203968606370

namespace A108368

/-- `ogf(-x/(-1+3x+3x^2+x^3))` -/
def P12359755203968606370.Spec : Prop :=
  ∀ n, P12359755203968606370.a n = A108368 n

end A108368

/-! ## A108368.P7506460831122841797

`round(a(n-1)/(2^(1/3)-1))` with `a(0)=0, a(1)=1, a(2)=3`
-/

namespace A108368.P7506460831122841797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 3] fun n a =>
  SequenceMachineLib.roundAway ((a (n - 1) : ℝ) / ((2 : ℝ) ^ ((1 : ℚ) / 3 : ℝ) - 1))

end

end A108368.P7506460831122841797

namespace A108368

/-- `round(a(n-1)/(2^(1/3)-1))` -/
def P7506460831122841797.Spec : Prop :=
  ∀ n, P7506460831122841797.a n = A108368 n

end A108368

/-! ## A108368.P450421384656143238

`a(n-3)+3*(a(n-1)+a(n-2))` with `a(0)=0, a(1)=1, a(2)=3`
-/

namespace A108368.P450421384656143238
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 3] fun n a =>
  a (n - 3) + 3 * (a (n - 1) + a (n - 2))

end

end A108368.P450421384656143238

namespace A108368

/-- `a(n-3)+3*(a(n-1)+a(n-2))` -/
def P450421384656143238.Spec : Prop :=
  ∀ n, (P450421384656143238.a n : ℤ) = A108368 n

end A108368

/-! ## A108368.P3800418532192335778

`∑[A237988(abs(1-n)+2*n-1)]`
-/

namespace A108368.P3800418532192335778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237988 (|1 - (n : ℤ)| + ((2 * n : ℤ) - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A108368.P3800418532192335778

namespace A108368

/-- `∑[A237988(abs(1-n)+2*n-1)]` -/
def P3800418532192335778.Spec : Prop :=
  ∀ n, P3800418532192335778.a n = A108368 n

end A108368

/-! ## A108368.P12673228186490542021

`∑[A109528(3*n)]`
-/

namespace A108368.P12673228186490542021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109528 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A108368.P12673228186490542021

namespace A108368

/-- `∑[A109528(3*n)]` -/
def P12673228186490542021.Spec : Prop :=
  ∀ n, P12673228186490542021.a n = A108368 n

end A108368

/-! ## A108368.P1354279629538941650

`∑[A237988(3*n+1)]-A237988(3*n+1)`
-/

namespace A108368.P1354279629538941650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237988 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A237988 (3 * n + 1)

end

end A108368.P1354279629538941650

namespace A108368

/-- `∑[A237988(3*n+1)]-A237988(3*n+1)` -/
def P1354279629538941650.Spec : Prop :=
  ∀ n, P1354279629538941650.a n = A108368 n

end A108368

/-! ## A108368.P6049893981508938275

`∑[A109530(2*n+1+n)]`
-/

namespace A108368.P6049893981508938275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109530 (2 * n + 1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A108368.P6049893981508938275

namespace A108368

/-- `∑[A109530(2*n+1+n)]` -/
def P6049893981508938275.Spec : Prop :=
  ∀ n, P6049893981508938275.a n = A108368 n

end A108368

/-!
# A108369: Coefficients of x/(1+3*x+3*x^2-x^3).

The programs for A108369, the canonical program `A108369.P14254000629739705594` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A108369 has offset 0).

The definition of A108369 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 343 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A108369.P14254000629739705594

`ogf(x/(1+3x+3x^2-x^3))`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A108369

/-- `ogf(x/(1+3x+3x^2-x^3))` -/
def P14254000629739705594.Spec : Prop :=
  ∀ n, P14254000629739705594.a n = A108369 n

theorem P14254000629739705594.correct : P14254000629739705594.Spec := by
  intro n
  simp only [A108369]

end A108369

/-!
# A108370: Numbers whose primal code characteristic = 0, that is, positive n for which A108352(n) = 0.

The programs for A108370, there is no canonical definition to state claims against.
-/

/-! ## A108370.P3968808486302733862

`eq[char[A001747(n+1)], A108352(n+1)]+1`
-/

namespace A108370.P3968808486302733862
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001747 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108352 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n + 1

end

end A108370.P3968808486302733862

/-! ## A108370.P3161384577963203591

`eq[round(A070014(n+2)/10), A108352(n+1)]+1`
-/

namespace A108370.P3161384577963203591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A070014 (n + 2) : ℚ) / 10)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108352 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A108370.P3161384577963203591

/-! ## A108370.P6933849936473892137

`eq[char[2*A000040(n+3)], A108352(n+1)]+1`
-/

namespace A108370.P6933849936473892137
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000040 (n + 3)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108352 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n + 1

end

end A108370.P6933849936473892137

/-! ## A108370.P2608550832786211846

`eq[A048298(n+1), A108352(A233583(n+1))]`
-/

namespace A108370.P2608550832786211846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048298 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108352 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A108370.P2608550832786211846

/-! ## A108370.P12568493710629311798

`eq[A051516(A003215(n)), A108352(n+1)]+1`
-/

namespace A108370.P12568493710629311798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051516 (A003215 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108352 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A108370.P12568493710629311798

/-!
# A108371: Table of primal compositional powers (n o)^k, where "o" denotes the primal composition operator, as illustrated in sequence A106177 and where (n o)^k = n o ... o n, with k occurrences of n.

The programs for A108371, there is no canonical definition to state claims against.
-/

/-! ## A108371.P6971222503027602926

`gcd(A004736(n+1), A343811(A219347(n)))`
-/

namespace A108371.P6971222503027602926
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A004736 (n + 1)) (A343811 (A219347 n).toNat)

end

end A108371.P6971222503027602926

/-! ## A108371.P7400109616648334748

`gcd(A184973(A200370(n+1)), A200370(n+2))`
-/

namespace A108371.P7400109616648334748
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A184973 (A200370 (n + 1)).toNat) (A200370 (n + 2))

end

end A108371.P7400109616648334748

/-! ## A108371.P2126200991085480386

`A004736(n+1)^A341743(A331461(n))`
-/

namespace A108371.P2126200991085480386
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004736 (n + 1) : ℚ) ^ (A341743 (A331461 n).toNat : ℤ)

end

end A108371.P2126200991085480386

/-! ## A108371.P15136160846629743532

`A004736(n+1)^A233427(n)^A152151(n)`
-/

namespace A108371.P15136160846629743532
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A004736 (n + 1) : ℝ) ^ ((A233427 n : ℚ) ^ (A152151 n : ℤ) : ℝ)

end

end A108371.P15136160846629743532

/-! ## A108371.P5576907849987901474

`gcd(C(comp[∑[n]]-n, 2)-n, A127710(A057728(n+1)))`
-/

namespace A108371.P5576907849987901474
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ)) (A127710 (A057728 (n + 1)).toNat)

end

end A108371.P5576907849987901474

/-!
# A108372: Numbers whose primal code characteristic = 2, that is, positive n for which A108352(n) = 2.

The programs for A108372, there is no canonical definition to state claims against.
-/

/-! ## A108372.P8365060388297306727

`∩[A111801(n+1), A114035(n+3)]`
-/

namespace A108372.P8365060388297306727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111801 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114035 (n + 3)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A108372.P8365060388297306727

/-! ## A108372.P1888422971356062655

`∩[comp[A108370(n+1)-1]+1, A114035(n+3)]`
-/

namespace A108372.P1888422971356062655
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108370 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n + 1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114035 (n + 3)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f3 j = (x : ℤ)) n

end

end A108372.P1888422971356062655

/-! ## A108372.P16962994885112688333

`record[A325131(A325277(n+2))]`
-/

namespace A108372.P16962994885112688333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325131 (A325277 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A108372.P16962994885112688333

/-! ## A108372.P9032866734411789990

`A325131(A090110(n+1)+1)`
-/

namespace A108372.P9032866734411789990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325131 (A090110 (n + 1) + 1).toNat

end

end A108372.P9032866734411789990

/-! ## A108372.P4538656276604765522

`∩[A114035(n+3), A325130(n+1)]`
-/

namespace A108372.P4538656276604765522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114035 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325130 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A108372.P4538656276604765522

/-!
# A108373: Numbers whose primal code characteristic = 3, that is, positive n for which A108352(n) = 3.

The programs for A108373, there is no canonical definition to state claims against.
-/

/-! ## A108373.P8175257593524193369

`lt[2, A108352(n+1)]+1`
-/

namespace A108373.P8175257593524193369
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108352 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A108373.P8175257593524193369

/-! ## A108373.P2237672316865191589

`lt[2, A108352(A028310(n))]`
-/

namespace A108373.P2237672316865191589
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108352 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A108373.P2237672316865191589

/-! ## A108373.P9363996379966678159

`eq[3, A108352(A060000(n+1))]`
-/

namespace A108373.P9363996379966678159
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108352 (A060000 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A108373.P9363996379966678159

/-! ## A108373.P11452633808019945921

`A153152(eq[3, A108352(n+1)])`
-/

namespace A108373.P11452633808019945921
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108352 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A108373.P11452633808019945921

/-! ## A108373.P7821612835296520976

`eq[3, A108352(A233583(n+1))]`
-/

namespace A108373.P7821612835296520976
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108352 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A108373.P7821612835296520976

/-! ## A108373.P8552159269589845589

`eq[3, A108352(A065033(2*n))]`
-/

namespace A108373.P8552159269589845589
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108352 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A108373.P8552159269589845589

/-!
# A108374: Numbers whose primal code characteristic = 4, that is, positive n for which A108352(n) = 4.

The programs for A108374, there is no canonical definition to state claims against.
-/

/-! ## A108374.P16711935165634011394

`eq[4, A108352(A028310(n))]`
-/

namespace A108374.P16711935165634011394
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108352 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A108374.P16711935165634011394

/-! ## A108374.P13685162567834568893

`A108355(eq[4, A108352(n+1)])`
-/

namespace A108374.P13685162567834568893
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108352 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108355 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A108374.P13685162567834568893

/-!
# A108376: First "domino" sequence.

The programs for A108376, there is no canonical definition to state claims against.
-/

/-! ## A108376.P12439139256403000450

`xor(A025457(A007947(n+1)), A108392(n))`
-/

namespace A108376.P12439139256403000450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A025457 (A007947 (n + 1)).toNat) (A108392 n)

end

end A108376.P12439139256403000450

/-! ## A108376.P15058916602688394424

`A108379(n)-A179828(abs(A108390(n)))`
-/

namespace A108376.P15058916602688394424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108379 n - A179828 |A108390 n|.toNat

end

end A108376.P15058916602688394424

/-! ## A108376.P8740168721828805141

`A108379(n)-A016389(A275422(n))-char[10]`
-/

namespace A108376.P8740168721828805141
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108379 n - A016389 (A275422 n).toNat - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A108376.P8740168721828805141

/-! ## A108376.P8249439648435533981

`A108379(n)-A328831(A000043(n+2))`
-/

namespace A108376.P8249439648435533981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108379 n - A328831 (A000043 (n + 2)).toNat

end

end A108376.P8249439648435533981

/-! ## A108376.P1048745842999489823

`A108392(n)-A328831(A005286(3*(n+1)))`
-/

namespace A108376.P1048745842999489823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108392 n - A328831 (A005286 (3 * (n + 1))).toNat

end

end A108376.P1048745842999489823

/-!
# A108377: Second "domino" sequence.

The programs for A108377, there is no canonical definition to state claims against.
-/

/-! ## A108377.P12064795810443415097

`A328831(A057813(n))+A108378(n)`
-/

namespace A108377.P12064795810443415097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328831 (A057813 n).toNat + A108378 n

end

end A108377.P12064795810443415097

/-! ## A108377.P18398338526158055220

`A341258(A111673(n))+A108378(n)`
-/

namespace A108377.P18398338526158055220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341258 (A111673 n).toNat + A108378 n

end

end A108377.P18398338526158055220

/-! ## A108377.P11682126446705733871

`A321537(A188403(n+1))+A108378(n)`
-/

namespace A108377.P11682126446705733871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321537 (A188403 (n + 1)).toNat + A108378 n

end

end A108377.P11682126446705733871

/-! ## A108377.P17123172334123157354

`A108379(n)+val(A108378(n+1), A108376(n+2))`
-/

namespace A108377.P17123172334123157354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108379 n + (SequenceMachineLib.valuation (A108378 (n + 1)).toNat (A108376 (n + 2)).toNat : ℤ)

end

end A108377.P17123172334123157354

/-! ## A108377.P6600078020177212536

`A108378(n)+val(A108378(n+1), A108392(n+2))`
-/

namespace A108377.P6600078020177212536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108378 n + (SequenceMachineLib.valuation (A108378 (n + 1)).toNat (A108392 (n + 2)).toNat : ℤ)

end

end A108377.P6600078020177212536

/-!
# A108378: Third "domino" sequence.

The programs for A108378, there is no canonical definition to state claims against.
-/

/-! ## A108378.P11761569584075607542

`xor(char[A199207(n)], A108379(n))`
-/

namespace A108378.P11761569584075607542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199207 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A108379 n)

end

end A108378.P11761569584075607542

/-! ## A108378.P4612270239163669358

`xor(char[A155578(n+1)], A108379(n))`
-/

namespace A108378.P4612270239163669358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155578 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A108379 n)

end

end A108378.P4612270239163669358

/-! ## A108378.P3530871940863464968

`A004525(A108379(n)+A108377(n))`
-/

namespace A108378.P3530871940863464968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A108379 n + A108377 n).toNat

end

end A108378.P3530871940863464968

/-! ## A108378.P13300403442706483305

`A108377(n)-A185124(Δ[A005286(n+1)])`
-/

namespace A108378.P13300403442706483305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005286 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108377 n - A185124 (f1 (n + 1) - f1 n).toNat

end

end A108378.P13300403442706483305

/-! ## A108378.P736858069793198078

`A108377(n)-A328831(A057813(n))`
-/

namespace A108378.P736858069793198078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108377 n - A328831 (A057813 n).toNat

end

end A108378.P736858069793198078

/-!
# A108379: Fourth "domino" sequence.

The programs for A108379, there is no canonical definition to state claims against.
-/

/-! ## A108379.P14047966434634296529

`xor(char[A199207(n)], A108378(n))`
-/

namespace A108379.P14047966434634296529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199207 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A108378 n)

end

end A108379.P14047966434634296529

/-! ## A108379.P10159746206356306647

`xor(char[A155578(n+1)], A108378(n))`
-/

namespace A108379.P10159746206356306647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155578 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A108378 n)

end

end A108379.P10159746206356306647

/-! ## A108379.P5113531645594225228

`A108377(n)-A328831(A057813(n))-char[8]`
-/

namespace A108379.P5113531645594225228
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108377 n - A328831 (A057813 n).toNat - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A108379.P5113531645594225228

/-! ## A108379.P1698908671486981099

`A108377(n)-A341258(A111673(n))-char[8]`
-/

namespace A108379.P1698908671486981099
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108377 n - A341258 (A111673 n).toNat - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A108379.P1698908671486981099

/-! ## A108379.P4781531140250230818

`A108377(n)-A321537(A188403(n+1))-char[8]`
-/

namespace A108379.P4781531140250230818
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108377 n - A321537 (A188403 (n + 1)).toNat - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A108379.P4781531140250230818

/-!
# A108380: Least number of distinct n-th roots of unity summing to the smallest possible nonzero magnitude.

The programs for A108380, there is no canonical definition to state claims against.
-/

/-! ## A108380.P4303834064023734578

`A213911(xor(1, A167348(n+1)))`
-/

namespace A108380.P4303834064023734578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213911 (Int.xor 1 (A167348 (n + 1))).toNat

end

end A108380.P4303834064023734578

/-!
# A108382: Primes p such that p's set of distinct digits is {1,3,7}.

The programs for A108382, the canonical program `A108382.P2177617604254778483` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A108382 has offset 1).

The definition of A108382 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 270 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A108382.P2177617604254778483

`∩[A235155(n+1), A260379(n+1)]`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A108382

/-- `∩[A235155(n+1), A260379(n+1)]` -/
def P2177617604254778483.Spec : Prop :=
  ∀ n, (P2177617604254778483.a n : ℤ) = A108382 (n + 1)

theorem P2177617604254778483.correct : P2177617604254778483.Spec := by
  intro n
  simp only [A108382, Nat.add_sub_cancel]

end A108382

/-!
# A108383: Primes p such that p's set of distinct digits is {1,3,9}.

The programs for A108383, the canonical program `A108383.P2780555083051376542` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A108383 has offset 1).

The definition of A108383 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 294 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A108383.P7723646014130292054

`∩[A243536(n+1), A329761(n+1)]`
-/

namespace A108383.P7723646014130292054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243536 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329761 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A108383.P7723646014130292054

namespace A108383

/-- `∩[A243536(n+1), A329761(n+1)]` -/
def P7723646014130292054.Spec : Prop :=
  ∀ n, (P7723646014130292054.a n : ℤ) = A108383 (n + 1)

end A108383

/-! ## A108383.P2780555083051376542

`∩[A174813(n+1), A235155(n+1)]`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A108383

/-- `∩[A174813(n+1), A235155(n+1)]` -/
def P2780555083051376542.Spec : Prop :=
  ∀ n, (P2780555083051376542.a n : ℤ) = A108383 (n + 1)

theorem P2780555083051376542.correct : P2780555083051376542.Spec := by
  intro n
  simp only [A108383, Nat.add_sub_cancel]

end A108383

/-! ## A108383.P677857473252029669

`∩[A235155(n+1), A329761(n+1)]`
-/

namespace A108383.P677857473252029669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235155 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329761 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A108383.P677857473252029669

namespace A108383

/-- `∩[A235155(n+1), A329761(n+1)]` -/
def P677857473252029669.Spec : Prop :=
  ∀ n, (P677857473252029669.a n : ℤ) = A108383 (n + 1)

end A108383

/-!
# A108384: Primes p such that p's set of distinct digits is {1,7,9}.

The programs for A108384, the canonical program `A108384.P3420882242700772071` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A108384 has offset 1).

The definition of A108384 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 242 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A108384.P3420882242700772071

`∩[A235155(n+1), A260893(n+1)]`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A108384

/-- `∩[A235155(n+1), A260893(n+1)]` -/
def P3420882242700772071.Spec : Prop :=
  ∀ n, (P3420882242700772071.a n : ℤ) = A108384 (n + 1)

theorem P3420882242700772071.correct : P3420882242700772071.Spec := by
  intro n
  simp only [A108384, Nat.add_sub_cancel]

end A108384

/-!
# A108386: Primes p such that p's set of distinct digits is {1,3,7,9}.

The programs for A108386, there is no canonical definition to state claims against.
-/

/-! ## A108386.P2732039039104300234

`A323579(n+25)`
-/

namespace A108386.P2732039039104300234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323579 (n + 25)

end

end A108386.P2732039039104300234

/-! ## A108386.P17989630805016175682

`filter[A086259(n+1), A178788(#)]`
-/

namespace A108386.P17989630805016175682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086259 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A178788 (f1 j).toNat = 1) n)

end

end A108386.P17989630805016175682

/-! ## A108386.P6960542153012294648

`∩[A086259(n+1), A155045(n+1)]`
-/

namespace A108386.P6960542153012294648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086259 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155045 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A108386.P6960542153012294648

/-!
# A108388: Transmutable primes: Primes with distinct digits d_i, i=1,m (2<=m<=4) such that simultaneously exchanging all occurrences of any one pair (d_i,d_j), i<>j results in a prime.

The programs for A108388, there is no canonical definition to state claims against.
-/

/-! ## A108388.P11102611834682328078

`A185104(A061378(n)+2)`
-/

namespace A108388.P11102611834682328078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185104 (A061378 n + 2).toNat

end

end A108388.P11102611834682328078

/-! ## A108388.P16309352963729086029

`∩[A090934(n+1), A296520(n+1)]`
-/

namespace A108388.P16309352963729086029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090934 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296520 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A108388.P16309352963729086029

/-! ## A108388.P3677794425010669993

`∪[A083983(n+3), A185104(A062399(n)+2)]`
-/

namespace A108388.P3677794425010669993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083983 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185104 (A062399 n + 2).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A108388.P3677794425010669993

/-! ## A108388.P17477103368560629141

`∪[A083983(n+3), A185104(A120126(n)+2)]`
-/

namespace A108388.P17477103368560629141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083983 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185104 (A120126 n + 2).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A108388.P17477103368560629141

/-! ## A108388.P17577298185072336498

`∪[A185104(A004186(n+1)+1), A083983(n+3)]`
-/

namespace A108388.P17577298185072336498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185104 (A004186 (n + 1) + 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083983 (n + 3)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A108388.P17577298185072336498

/-!
# A108390: Expansion of (-1-x-x^2-4*x^3-4*x^4+4*x^5+x^6+x^7+x^8) / ((x+1)*(x^2-x+1)*(x^2+x-1)*(x^4-x^3+2*x^2+x+1)).

The programs for A108390, the canonical program `A108390.P11654535511807540295` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A108390 has offset 0).

The definition of A108390 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+x+x^2+4x^3+4x^4-4x^5-x^6-x^7-x^8)/(1-3x^3-5x^6-x^9))` (program `A108390.P11654535511807540295`, by `A108390.P11654535511807540295.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A108390.P9431224858553052858

`3*a(n-3)+5*a(n-6)+a(n-9)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=7, a(4)=7, a(5)=-1, a(6)=25, a(7)=25, a(8)=1`
-/

namespace A108390.P9431224858553052858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 7, 7, -1, 25, 25, 1] fun n a =>
  3 * a (n - 3) + 5 * a (n - 6) + a (n - 9)

end

end A108390.P9431224858553052858

namespace A108390

/-- `3*a(n-3)+5*a(n-6)+a(n-9)` -/
def P9431224858553052858.Spec : Prop :=
  ∀ n, P9431224858553052858.a n = A108390 n

end A108390

/-! ## A108390.P11654535511807540295

`ogf((1+x+x^2+4x^3+4x^4-4x^5-x^6-x^7-x^8)/(1-3x^3-5x^6-x^9))`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A108390

/-- `ogf((1+x+x^2+4x^3+4x^4-4x^5-x^6-x^7-x^8)/(1-3x^3-5x^6-x^9))` -/
def P11654535511807540295.Spec : Prop :=
  ∀ n, P11654535511807540295.a n = A108390 n

theorem P11654535511807540295.correct : P11654535511807540295.Spec := by
  intro n
  simp only [A108390]

end A108390

/-!
# A108391: Expansion of (1 - x + 3*x^2 + 4*x^4 + 8*x^5 + 3*x^6 + x^7 + x^8) / ((1 + x)*(1 - x + x^2)*(1 - x - x^2)*(1 + x + 2*x^2 - x^3 + x^4)).

The programs for A108391, the canonical program `A108391.P11012521163416688504` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A108391 has offset 0).

The definition of A108391 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-x+3x^2+4x^4+8x^5+3x^6+x^7+x^8)/(1-3x^3-5x^6-x^9))` (program `A108391.P11012521163416688504`, by `A108391.P11012521163416688504.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A108391.P1557744097195101757

`3*a(n-3)+5*a(n-6)+a(n-9)` with `a(0)=1, a(1)=-1, a(2)=3, a(3)=3, a(4)=1, a(5)=17, a(6)=17, a(7)=-1, a(8)=67`
-/

namespace A108391.P1557744097195101757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, -1, 3, 3, 1, 17, 17, -1, 67] fun n a =>
  3 * a (n - 3) + 5 * a (n - 6) + a (n - 9)

end

end A108391.P1557744097195101757

namespace A108391

/-- `3*a(n-3)+5*a(n-6)+a(n-9)` -/
def P1557744097195101757.Spec : Prop :=
  ∀ n, P1557744097195101757.a n = A108391 n

end A108391

/-! ## A108391.P11012521163416688504

`ogf((1-x+3x^2+4x^4+8x^5+3x^6+x^7+x^8)/(1-3x^3-5x^6-x^9))`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A108391

/-- `ogf((1-x+3x^2+4x^4+8x^5+3x^6+x^7+x^8)/(1-3x^3-5x^6-x^9))` -/
def P11012521163416688504.Spec : Prop :=
  ∀ n, P11012521163416688504.a n = A108391 n

theorem P11012521163416688504.correct : P11012521163416688504.Spec := by
  intro n
  simp only [A108391]

end A108391

/-!
# A108392: Fifth "domino" sequence.

The programs for A108392, there is no canonical definition to state claims against.
-/

/-! ## A108392.P8697889886261455091

`A004525(A108379(n)+A108376(n))`
-/

namespace A108392.P8697889886261455091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A108379 n + A108376 n).toNat

end

end A108392.P8697889886261455091

/-! ## A108392.P9040824224251329680

`xor(A025457(A007947(n+1)), A108376(n))`
-/

namespace A108392.P9040824224251329680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A025457 (A007947 (n + 1)).toNat) (A108376 n)

end

end A108392.P9040824224251329680

/-! ## A108392.P10013112184395168080

`A108379(n)-val(A108409(n+1), A108377(n+2))`
-/

namespace A108392.P10013112184395168080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108379 n - (SequenceMachineLib.valuation (A108409 (n + 1)).toNat (A108377 (n + 2)).toNat : ℤ)

end

end A108392.P10013112184395168080

/-! ## A108392.P16963830448964106358

`A108379(n)-val(A108409(n+1), A108378(n+2))`
-/

namespace A108392.P16963830448964106358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108379 n - (SequenceMachineLib.valuation (A108409 (n + 1)).toNat (A108378 (n + 2)).toNat : ℤ)

end

end A108392.P16963830448964106358

/-! ## A108392.P10703645440616854651

`A108379(n)-A016389(A275422(n))`
-/

namespace A108392.P10703645440616854651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108379 n - A016389 (A275422 n).toNat

end

end A108392.P10703645440616854651

/-!
# A108394: Least k for which f(k) = (1 + f(0)^n + f(1)^n + ... + f(k-1)^n)/k, f(0) = 1, is nonintegral.

The programs for A108394, there is no canonical definition to state claims against.
-/

/-! ## A108394.P5644398904170488096

`A097398(∑[n+1])`
-/

namespace A108394.P5644398904170488096
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097398 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A108394.P5644398904170488096

/-! ## A108394.P772849526918115255

`∏{p}[A097398(A025747(n)), #]`
-/

namespace A108394.P772849526918115255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097398 (A025747 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A108394.P772849526918115255

/-! ## A108394.P450915267487321342

`A325314(A097398(C(n+2, 2)))`
-/

namespace A108394.P450915267487321342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325314 (A097398 (Nat.choose (n + 2) 2)).toNat

end

end A108394.P450915267487321342

/-! ## A108394.P5092647641065483454

`∏{p}[A097398(A000217(n+1)), #]`
-/

namespace A108394.P5092647641065483454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097398 (A000217 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A108394.P5092647641065483454

/-!
# A108395: Number of pluperfect Latin squares of order n.

The programs for A108395, there is no canonical definition to state claims against.
-/

/-! ## A108395.P5562621080741073807

`∏[record[A340364(n!)]]`
-/

namespace A108395.P5562621080741073807
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340364 (Nat.factorial n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A108395.P5562621080741073807

/-!
# A108397: Sums of rows of the triangle in A108396.

The programs for A108397, there is no canonical definition to state claims against.
-/

/-! ## A108397.P7428065387361677482

`(A031973(n)+1+n)*n/2`
-/

namespace A108397.P7428065387361677482
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A031973 n + 1 + (n : ℤ) : ℚ) * ((n : ℚ) / 2)

end

end A108397.P7428065387361677482

/-! ## A108397.P9709366875815041219

`n*(A031972(n)+2+n)/2`
-/

namespace A108397.P9709366875815041219
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) * ((A031972 n + 2 + (n : ℤ) : ℚ) / 2)

end

end A108397.P9709366875815041219

/-!
# A108398: a(n) = n*(1 + n^n)/2.

The programs for A108398, the canonical program `A108398.P692404949944391170` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A108398 has offset 0).

The definition of A108398 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A108398.P692404949944391170

`n*(1+n^n)/2`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A108398

/-- `n*(1+n^n)/2` -/
def P692404949944391170.Spec : Prop :=
  ∀ n, P692404949944391170.a n = (A108398 n : ℚ)

end A108398

/-! ## A108398.P4608418163394413839

`A108396(∑[n]+n)`
-/

namespace A108398.P4608418163394413839
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108396 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A108398.P4608418163394413839

namespace A108398

/-- `A108396(∑[n]+n)` -/
def P4608418163394413839.Spec : Prop :=
  ∀ n, P4608418163394413839.a n = A108398 n

end A108398

/-! ## A108398.P8537398096910071876

`A345360(n)/2+n`
-/

namespace A108398.P8537398096910071876
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A345360 n : ℚ) / 2 + (n : ℚ)

end

end A108398.P8537398096910071876

namespace A108398

/-- `A345360(n)/2+n` -/
def P8537398096910071876.Spec : Prop :=
  ∀ n, P8537398096910071876.a n = (A108398 n : ℚ)

end A108398

/-! ## A108398.P14851756469321662552

`n/2*A014566(n)`
-/

namespace A108398.P14851756469321662552
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 2 * (A014566 n : ℚ)

end

end A108398.P14851756469321662552

namespace A108398

/-- `n/2*A014566(n)` -/
def P14851756469321662552.Spec : Prop :=
  ∀ n, P14851756469321662552.a n = (A108398 n : ℚ)

end A108398

/-! ## A108398.P8268660274061627749

`∑[(Δ[A065440(n)]+1)/2]`
-/

namespace A108398.P8268660274061627749
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065440 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n + 1 : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A108398.P8268660274061627749

namespace A108398

/-- `∑[(Δ[A065440(n)]+1)/2]` -/
def P8268660274061627749.Spec : Prop :=
  ∀ n, P8268660274061627749.a n = (A108398 n : ℚ)

end A108398

/-! ## A108398.P1297754146599560025

`record[A108396(A061579(n))]`
-/

namespace A108398.P1297754146599560025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108396 (A061579 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A108398.P1297754146599560025

namespace A108398

/-- `record[A108396(A061579(n))]` -/
def P1297754146599560025.Spec : Prop :=
  ∀ n, P1297754146599560025.a n = A108398 n

end A108398

