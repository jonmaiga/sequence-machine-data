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
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
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
import Seq.B000.C046
import Seq.B000.C048
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
import Seq.B001.C013
import Seq.B002.C000
import Seq.B002.C002
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
import Seq.B004.C004
import Seq.B005.C000
import Seq.B005.C001
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
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C024
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A240700: Number of n X n 0..3 arrays with no element equal to a different number of vertical neighbors than horizontal neighbors, with new values 0..3 introduced in row major order.

The programs for A240700, there is no canonical definition to state claims against.
-/

/-! ## A240700.P9176719671328211707

`A240706(4*∑[n]+1)`
-/

namespace A240700.P9176719671328211707
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240706 (4 * (∑ j ∈ Finset.range (n + 1), f1 j) + 1)

end

end A240700.P9176719671328211707

/-!
# A240701: Number of n X 3 0..3 arrays with no element equal to a different number of vertical neighbors than horizontal neighbors, with new values 0..3 introduced in row major order.

The programs for A240701, there is no canonical definition to state claims against.
-/

/-! ## A240701.P524638254205805225

`ogf((2-3x-24x^2-59x^3-52x^4-11x^5+72x^6)/(1-15x-40x^2-22x^3+60x^4+40x^5+21x^6-45x^7))`
-/

namespace A240701.P524638254205805225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -3, -24, -59, -52, -11, 72] [1, -15, -40, -22, 60, 40, 21, -45] n

end

end A240701.P524638254205805225

/-! ## A240701.P8655077490368246730

`A240706(∑[n+2]+4)`
-/

namespace A240701.P8655077490368246730
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240706 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A240701.P8655077490368246730

/-! ## A240701.P16071295652688329035

`A240706(A167614(n+1))+A178798(n)`
-/

namespace A240701.P16071295652688329035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240706 (A167614 (n + 1)).toNat + A178798 n

end

end A240701.P16071295652688329035

/-! ## A240701.P16412362182165432371

`A240706(A167614(n+1))+A184955(n)`
-/

namespace A240701.P16412362182165432371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240706 (A167614 (n + 1)).toNat + A184955 n

end

end A240701.P16412362182165432371

/-! ## A240701.P10151544119878187025

`gcd(A000038(n), A240706(A167614(n+1)))`
-/

namespace A240701.P10151544119878187025
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A240706 (A167614 (n + 1)).toNat)

end

end A240701.P10151544119878187025

/-!
# A240702: Number of nX4 0..3 arrays with no element equal to a different number of vertical neighbors than horizontal neighbors, with new values 0..3 introduced in row major order.

The programs for A240702, there is no canonical definition to state claims against.
-/

/-! ## A240702.P9195240640236243120

`A240706(A141214(n)+7)`
-/

namespace A240702.P9195240640236243120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240706 (A141214 n + 7).toNat

end

end A240702.P9195240640236243120

/-! ## A240702.P10722118939276665119

`A240706(A052905(n)+9)`
-/

namespace A240702.P10722118939276665119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240706 (A052905 n + 9).toNat

end

end A240702.P10722118939276665119

/-! ## A240702.P311718772460892018

`A240706(A055999(n)+10)`
-/

namespace A240702.P311718772460892018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240706 (A055999 n + 10).toNat

end

end A240702.P311718772460892018

/-! ## A240702.P18078357788264988356

`A240706(A167614(n+2)+1)`
-/

namespace A240702.P18078357788264988356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240706 (A167614 (n + 2) + 1).toNat

end

end A240702.P18078357788264988356

/-! ## A240702.P9563304870572848781

`A240706(A112355(n+1)+4)`
-/

namespace A240702.P9563304870572848781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240706 (A112355 (n + 1) + 4).toNat

end

end A240702.P9563304870572848781

/-!
# A240703: Number of nX5 0..3 arrays with no element equal to a different number of vertical neighbors than horizontal neighbors, with new values 0..3 introduced in row major order.

The programs for A240703, there is no canonical definition to state claims against.
-/

/-! ## A240703.P8470528326411528675

`A240706(A167499(n+3))`
-/

namespace A240703.P8470528326411528675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240706 (A167499 (n + 3)).toNat

end

end A240703.P8470528326411528675

/-! ## A240703.P12940381453554559326

`A240706(Δ[A264443(n)])`
-/

namespace A240703.P12940381453554559326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240706 (f1 (n + 1) - f1 n).toNat

end

end A240703.P12940381453554559326

/-! ## A240703.P14203709008381103716

`A240706(A374005(n+1))`
-/

namespace A240703.P14203709008381103716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240706 (A374005 (n + 1)).toNat

end

end A240703.P14203709008381103716

/-! ## A240703.P4537838442685466345

`A240706(A056115(n)+11)`
-/

namespace A240703.P4537838442685466345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240706 (A056115 n + 11).toNat

end

end A240703.P4537838442685466345

/-! ## A240703.P11563005880716504188

`A240706(Δ[A023545(n+1)])`
-/

namespace A240703.P11563005880716504188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240706 (f1 (n + 1) - f1 n).toNat

end

end A240703.P11563005880716504188

/-!
# A240704: Number of nX6 0..3 arrays with no element equal to a different number of vertical neighbors than horizontal neighbors, with new values 0..3 introduced in row major order.

The programs for A240704, there is no canonical definition to state claims against.
-/

/-! ## A240704.P15469146995032055984

`A240706(A056115(n)+21)`
-/

namespace A240704.P15469146995032055984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240706 (A056115 n + 21).toNat

end

end A240704.P15469146995032055984

/-! ## A240704.P4726119013782384273

`A240706(A167614(n+4)+3)`
-/

namespace A240704.P4726119013782384273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240706 (A167614 (n + 4) + 3).toNat

end

end A240704.P4726119013782384273

/-! ## A240704.P7692343015395800249

`A240706(eq[7, A131818(n+1)])`
-/

namespace A240704.P7692343015395800249
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240706 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A240704.P7692343015395800249

/-! ## A240704.P1076937257351671296

`A240706(A374007(n+1))`
-/

namespace A240704.P1076937257351671296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240706 (A374007 (n + 1)).toNat

end

end A240704.P1076937257351671296

/-! ## A240704.P1426493721597398657

`A240706(eq[3, A219347(n)])`
-/

namespace A240704.P1426493721597398657
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240706 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A240704.P1426493721597398657

/-!
# A240705: Number of nX7 0..3 arrays with no element equal to a different number of vertical neighbors than horizontal neighbors, with new values 0..3 introduced in row major order.

The programs for A240705, there is no canonical definition to state claims against.
-/

/-! ## A240705.P17389300271960803779

`A240706(A374008(n+1))`
-/

namespace A240705.P17389300271960803779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240706 (A374008 (n + 1)).toNat

end

end A240705.P17389300271960803779

/-! ## A240705.P13310970617037904744

`A240706(eq[4, A219347(n)])`
-/

namespace A240705.P13310970617037904744
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240706 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A240705.P13310970617037904744

/-! ## A240705.P5367790054924372237

`A240706(eq[6, A243060(n+1)])`
-/

namespace A240705.P5367790054924372237
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243060 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240706 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A240705.P5367790054924372237

/-! ## A240705.P1661052825832797145

`A240706(eq[7, A200370(n+1)])`
-/

namespace A240705.P1661052825832797145
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240706 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A240705.P1661052825832797145

/-! ## A240705.P5603239734534344953

`A240706(eq[10, A185782(n+1)])`
-/

namespace A240705.P5603239734534344953
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240706 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A240705.P5603239734534344953

/-!
# A240706: T(n,k)=Number of nXk 0..3 arrays with no element equal to a different number of vertical neighbors than horizontal neighbors, with new values 0..3 introduced in row major order.

The programs for A240706, there is no canonical definition to state claims against.
-/

/-! ## A240706.P1362999398669671378

`A240642(n+1)-A021913(A022171(n))`
-/

namespace A240706.P1362999398669671378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240642 (n + 1) - A021913 (A022171 n).toNat

end

end A240706.P1362999398669671378

/-! ## A240706.P7707157569374921992

`A240642(n+1)-A025465(A023105(n))`
-/

namespace A240706.P7707157569374921992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240642 (n + 1) - A025465 (A023105 n).toNat

end

end A240706.P7707157569374921992

/-! ## A240706.P5494123243260858610

`A240642(n+1)-A055641(A022112(n))`
-/

namespace A240706.P5494123243260858610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240642 (n + 1) - A055641 (A022112 n).toNat

end

end A240706.P5494123243260858610

/-! ## A240706.P9169860223146937519

`A240642(n+1)-A085974(A026021(n))`
-/

namespace A240706.P9169860223146937519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240642 (n + 1) - A085974 (A026021 n).toNat

end

end A240706.P9169860223146937519

/-! ## A240706.P4026927504750425819

`A240642(n+1)-A007814(A157156(n))`
-/

namespace A240706.P4026927504750425819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240642 (n + 1) - A007814 (A157156 n).toNat

end

end A240706.P4026927504750425819

/-!
# A240707: Sum of the middle parts in the partitions of 4n-1 into 3 parts.

The programs for A240707, the canonical program `A240707.P12663547905591977506` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A240707 has offset 1).

The definition of A240707 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A240707.P12663547905591977506

`ogf((1+6x+16x^2+24x^3+18x^4+12x^5+3x^6)/(1-2x+x^2-2x^3+4x^4-2x^5+x^6-2x^7+x^8))`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A240707

/-- `ogf((1+6x+16x^2+24x^3+18x^4+12x^5+3x^6)/(1-2x+x^2-2x^3+4x^4-2x^5+x^6-2x^7+x^8))` -/
def P12663547905591977506.Spec : Prop :=
  ∀ n, P12663547905591977506.a n = A240707 (n + 1)

theorem P12663547905591977506.correct : P12663547905591977506.Spec := by
  intro n
  simp only [A240707, Nat.add_sub_cancel]

end A240707

/-! ## A240707.P8815289089925582204

`A239186(n+1)-A240711(n+1)`
-/

namespace A240707.P8815289089925582204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239186 (n + 1) - A240711 (n + 1)

end

end A240707.P8815289089925582204

namespace A240707

/-- `A239186(n+1)-A240711(n+1)` -/
def P8815289089925582204.Spec : Prop :=
  ∀ n, P8815289089925582204.a n = A240707 (n + 1)

end A240707

/-! ## A240707.P9396827823587390684

`A239056(n+1)-(A240711(n+1)+A239059(n+1))`
-/

namespace A240707.P9396827823587390684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239056 (n + 1) - (A240711 (n + 1) + A239059 (n + 1))

end

end A240707.P9396827823587390684

namespace A240707

/-- `A239056(n+1)-(A240711(n+1)+A239059(n+1))` -/
def P9396827823587390684.Spec : Prop :=
  ∀ n, P9396827823587390684.a n = A240707 (n + 1)

end A240707

/-! ## A240707.P6570033163298567756

`A239057(n+1)-(A240711(n+1)+A239195(n+1))`
-/

namespace A240707.P6570033163298567756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239057 (n + 1) - (A240711 (n + 1) + A239195 (n + 1))

end

end A240707.P6570033163298567756

namespace A240707

/-- `A239057(n+1)-(A240711(n+1)+A239195(n+1))` -/
def P6570033163298567756.Spec : Prop :=
  ∀ n, P6570033163298567756.a n = A240707 (n + 1)

end A240707

/-! ## A240707.P11826631267229493597

`∑[A001844(2*n)]-A307559(2*(n+1))`
-/

namespace A240707.P11826631267229493597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001844 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A307559 (2 * (n + 1))

end

end A240707.P11826631267229493597

namespace A240707

/-- `∑[A001844(2*n)]-A307559(2*(n+1))` -/
def P11826631267229493597.Spec : Prop :=
  ∀ n, P11826631267229493597.a n = A240707 (n + 1)

end A240707

/-! ## A240707.P5523520268733190099

`A308266(3*(n+1)+n)`
-/

namespace A240707.P5523520268733190099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308266 (3 * (n + 1) + n)

end

end A240707.P5523520268733190099

namespace A240707

/-- `A308266(3*(n+1)+n)` -/
def P5523520268733190099.Spec : Prop :=
  ∀ n, P5523520268733190099.a n = A240707 (n + 1)

end A240707

/-! ## A240707.P6086444926039682105

`A309690(A017137(n))/4`
-/

namespace A240707.P6086444926039682105
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A309690 (A017137 n).toNat : ℚ) / 4

end

end A240707.P6086444926039682105

namespace A240707

/-- `A309690(A017137(n))/4` -/
def P6086444926039682105.Spec : Prop :=
  ∀ n, P6086444926039682105.a n = (A240707 (n + 1) : ℚ)

end A240707

/-!
# A240710: Primes p such that at least one number among p+-6 and p+-12 is also a prime.

The programs for A240710, there is no canonical definition to state claims against.
-/

/-! ## A240710.P14394760061166388931

`p?[A000040(n+2)*A011602(n²)]`
-/

namespace A240710.P14394760061166388931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 2) * A011602 (n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A240710.P14394760061166388931

/-!
# A240711: Sum of the largest parts in the partitions of 4n into 4 parts with smallest part = 1.

The programs for A240711, the canonical program `A240711.P14167126214581270273` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A240711 has offset 1).

The definition of A240711 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A240711.P14167126214581270273

`ogf((1+13x+33x^2+52x^3+43x^4+27x^5+7x^6)/(1-2x+x^2-2x^3+4x^4-2x^5+x^6-2x^7+x^8))`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A240711

/-- `ogf((1+13x+33x^2+52x^3+43x^4+27x^5+7x^6)/(1-2x+x^2-2x^3+4x^4-2x^5+x^6-2x^7+x^8))` -/
def P14167126214581270273.Spec : Prop :=
  ∀ n, P14167126214581270273.a n = A240711 (n + 1)

theorem P14167126214581270273.correct : P14167126214581270273.Spec := by
  intro n
  simp only [A240711, Nat.add_sub_cancel]

end A240711

/-! ## A240711.P11649321335741123604

`A239186(n+1)-A240707(n+1)`
-/

namespace A240711.P11649321335741123604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239186 (n + 1) - A240707 (n + 1)

end

end A240711.P11649321335741123604

namespace A240711

/-- `A239186(n+1)-A240707(n+1)` -/
def P11649321335741123604.Spec : Prop :=
  ∀ n, P11649321335741123604.a n = A240711 (n + 1)

end A240711

/-! ## A240711.P355377708748595048

`A239056(n+1)-(A240707(n+1)+A239059(n+1))`
-/

namespace A240711.P355377708748595048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239056 (n + 1) - (A240707 (n + 1) + A239059 (n + 1))

end

end A240711.P355377708748595048

namespace A240711

/-- `A239056(n+1)-(A240707(n+1)+A239059(n+1))` -/
def P355377708748595048.Spec : Prop :=
  ∀ n, P355377708748595048.a n = A240711 (n + 1)

end A240711

/-! ## A240711.P3494388402873010002

`A239057(n+1)-(A240707(n+1)+A239195(n+1))`
-/

namespace A240711.P3494388402873010002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239057 (n + 1) - (A240707 (n + 1) + A239195 (n + 1))

end

end A240711.P3494388402873010002

namespace A240711

/-- `A239057(n+1)-(A240707(n+1)+A239195(n+1))` -/
def P3494388402873010002.Spec : Prop :=
  ∀ n, P3494388402873010002.a n = A240711 (n + 1)

end A240711

/-! ## A240711.P8180458055862481649

`A307872(A008574(n))+A100157(n+1)`
-/

namespace A240711.P8180458055862481649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307872 (A008574 n).toNat + A100157 (n + 1)

end

end A240711.P8180458055862481649

namespace A240711

/-- `A307872(A008574(n))+A100157(n+1)` -/
def P8180458055862481649.Spec : Prop :=
  ∀ n, P8180458055862481649.a n = A240711 (n + 1)

end A240711

/-! ## A240711.P80569212099361814

`A307872(A008574(n))+A000330(2*n+1)`
-/

namespace A240711.P80569212099361814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307872 (A008574 n).toNat + A000330 (2 * n + 1)

end

end A240711.P80569212099361814

namespace A240711

/-- `A307872(A008574(n))+A000330(2*n+1)` -/
def P80569212099361814.Spec : Prop :=
  ∀ n, P80569212099361814.a n = A240711 (n + 1)

end A240711

/-! ## A240711.P16879695540949557700

`A309694(A004767(n))+A309692(A004767(n))`
-/

namespace A240711.P16879695540949557700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309694 (A004767 n).toNat + A309692 (A004767 n).toNat

end

end A240711.P16879695540949557700

namespace A240711

/-- `A309694(A004767(n))+A309692(A004767(n))` -/
def P16879695540949557700.Spec : Prop :=
  ∀ n, P16879695540949557700.a n = A240711 (n + 1)

end A240711

/-! ## A240711.P9544202960483082004

`A308265(3*(n+1)+n)`
-/

namespace A240711.P9544202960483082004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308265 (3 * (n + 1) + n)

end

end A240711.P9544202960483082004

namespace A240711

/-- `A308265(3*(n+1)+n)` -/
def P9544202960483082004.Spec : Prop :=
  ∀ n, P9544202960483082004.a n = A240711 (n + 1)

end A240711

/-!
# A240712: Number of decompositions of 2n into an unordered sum of two terms of A240710.

The programs for A240712, the canonical program `A240712.P7558220320659121535` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A240712 has offset 1).

The definition of A240712 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 263 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A240712.P7558220320659121535

`A171611(n+1)%A001333(n)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A240712

/-- `A171611(n+1)%A001333(n)` -/
def P7558220320659121535.Spec : Prop :=
  ∀ n, P7558220320659121535.a n = A240712 (n + 1)

theorem P7558220320659121535.correct : P7558220320659121535.Spec := by
  intro n
  simp only [A240712, Nat.add_sub_cancel]

end A240712

/-! ## A240712.P6697425284131178462

`and(A164560(n+1), A171611(n+1))`
-/

namespace A240712.P6697425284131178462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A164560 (n + 1)) (A171611 (n + 1))

end

end A240712.P6697425284131178462

namespace A240712

/-- `and(A164560(n+1), A171611(n+1))` -/
def P6697425284131178462.Spec : Prop :=
  ∀ n, P6697425284131178462.a n = A240712 (n + 1)

end A240712

/-! ## A240712.P11415016067187758963

`and(A077915(n), A171611(n+1))`
-/

namespace A240712.P11415016067187758963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A077915 n) (A171611 (n + 1))

end

end A240712.P11415016067187758963

namespace A240712

/-- `and(A077915(n), A171611(n+1))` -/
def P11415016067187758963.Spec : Prop :=
  ∀ n, P11415016067187758963.a n = A240712 (n + 1)

end A240712

/-! ## A240712.P17218115781739421392

`and(A077847(n), A171611(n+1))`
-/

namespace A240712.P17218115781739421392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A077847 n) (A171611 (n + 1))

end

end A240712.P17218115781739421392

namespace A240712

/-- `and(A077847(n), A171611(n+1))` -/
def P17218115781739421392.Spec : Prop :=
  ∀ n, P17218115781739421392.a n = A240712 (n + 1)

end A240712

/-! ## A240712.P2011279838996580240

`and(A083800(n+1), A171611(n+1))`
-/

namespace A240712.P2011279838996580240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A083800 (n + 1)) (A171611 (n + 1))

end

end A240712.P2011279838996580240

namespace A240712

/-- `and(A083800(n+1), A171611(n+1))` -/
def P2011279838996580240.Spec : Prop :=
  ∀ n, P2011279838996580240.a n = A240712 (n + 1)

end A240712

/-! ## A240712.P17998791814144318047

`and(A070198(n), A171611(n+1))`
-/

namespace A240712.P17998791814144318047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A070198 n) (A171611 (n + 1))

end

end A240712.P17998791814144318047

namespace A240712

/-- `and(A070198(n), A171611(n+1))` -/
def P17998791814144318047.Spec : Prop :=
  ∀ n, P17998791814144318047.a n = A240712 (n + 1)

end A240712

/-! ## A240712.P3635076993307452951

`and(A079782(n+1), A171611(n+1))`
-/

namespace A240712.P3635076993307452951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A079782 (n + 1)) (A171611 (n + 1))

end

end A240712.P3635076993307452951

namespace A240712

/-- `and(A079782(n+1), A171611(n+1))` -/
def P3635076993307452951.Spec : Prop :=
  ∀ n, P3635076993307452951.a n = A240712 (n + 1)

end A240712

/-! ## A240712.P12350011755107088655

`and(A083685(n+1), A171611(n+1))`
-/

namespace A240712.P12350011755107088655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A083685 (n + 1)) (A171611 (n + 1))

end

end A240712.P12350011755107088655

namespace A240712

/-- `and(A083685(n+1), A171611(n+1))` -/
def P12350011755107088655.Spec : Prop :=
  ∀ n, P12350011755107088655.a n = A240712 (n + 1)

end A240712

/-! ## A240712.P17790176033355344404

`and(A121934(n+1), A171611(n+1))`
-/

namespace A240712.P17790176033355344404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A121934 (n + 1)) (A171611 (n + 1))

end

end A240712.P17790176033355344404

namespace A240712

/-- `and(A121934(n+1), A171611(n+1))` -/
def P17790176033355344404.Spec : Prop :=
  ∀ n, P17790176033355344404.a n = A240712 (n + 1)

end A240712

/-! ## A240712.P4911903846364751228

`A171611(n+1)%A000501(n)`
-/

namespace A240712.P4911903846364751228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A171611 (n + 1)) (A000501 n)

end

end A240712.P4911903846364751228

namespace A240712

/-- `A171611(n+1)%A000501(n)` -/
def P4911903846364751228.Spec : Prop :=
  ∀ n, P4911903846364751228.a n = A240712 (n + 1)

end A240712

/-! ## A240712.P1190449883936025219

`and(A005665(n), A171611(n+1))`
-/

namespace A240712.P1190449883936025219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A005665 n) (A171611 (n + 1))

end

end A240712.P1190449883936025219

namespace A240712

/-- `and(A005665(n), A171611(n+1))` -/
def P1190449883936025219.Spec : Prop :=
  ∀ n, P1190449883936025219.a n = A240712 (n + 1)

end A240712

/-! ## A240712.P15657695989424286185

`and(A005666(n), A171611(n+1))`
-/

namespace A240712.P15657695989424286185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A005666 n) (A171611 (n + 1))

end

end A240712.P15657695989424286185

namespace A240712

/-- `and(A005666(n), A171611(n+1))` -/
def P15657695989424286185.Spec : Prop :=
  ∀ n, P15657695989424286185.a n = A240712 (n + 1)

end A240712

/-! ## A240712.P6444327235411623576

`and(A108898(n), A171611(n+1))`
-/

namespace A240712.P6444327235411623576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A108898 n) (A171611 (n + 1))

end

end A240712.P6444327235411623576

namespace A240712

/-- `and(A108898(n), A171611(n+1))` -/
def P6444327235411623576.Spec : Prop :=
  ∀ n, P6444327235411623576.a n = A240712 (n + 1)

end A240712

/-! ## A240712.P4257362756085466278

`A171611(n+1)%A000055(n)`
-/

namespace A240712.P4257362756085466278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A171611 (n + 1)) (A000055 n)

end

end A240712.P4257362756085466278

namespace A240712

/-- `A171611(n+1)%A000055(n)` -/
def P4257362756085466278.Spec : Prop :=
  ∀ n, P4257362756085466278.a n = A240712 (n + 1)

end A240712

/-! ## A240712.P17109119673257107716

`and(A103685(n), A171611(n+1))`
-/

namespace A240712.P17109119673257107716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A103685 n) (A171611 (n + 1))

end

end A240712.P17109119673257107716

namespace A240712

/-- `and(A103685(n), A171611(n+1))` -/
def P17109119673257107716.Spec : Prop :=
  ∀ n, P17109119673257107716.a n = A240712 (n + 1)

end A240712

/-! ## A240712.P17941693206713219756

`and(A171611(n+1), A216616(n))`
-/

namespace A240712.P17941693206713219756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A171611 (n + 1)) (A216616 n)

end

end A240712.P17941693206713219756

namespace A240712

/-- `and(A171611(n+1), A216616(n))` -/
def P17941693206713219756.Spec : Prop :=
  ∀ n, P17941693206713219756.a n = A240712 (n + 1)

end A240712

/-! ## A240712.P15635108044152127015

`and(A018886(n+1), A171611(n+1))`
-/

namespace A240712.P15635108044152127015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A018886 (n + 1)) (A171611 (n + 1))

end

end A240712.P15635108044152127015

namespace A240712

/-- `and(A018886(n+1), A171611(n+1))` -/
def P15635108044152127015.Spec : Prop :=
  ∀ n, P15635108044152127015.a n = A240712 (n + 1)

end A240712

/-! ## A240712.P13029468755355268456

`and(A171611(n+1), A268099(n))`
-/

namespace A240712.P13029468755355268456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A171611 (n + 1)) (A268099 n)

end

end A240712.P13029468755355268456

namespace A240712

/-- `and(A171611(n+1), A268099(n))` -/
def P13029468755355268456.Spec : Prop :=
  ∀ n, P13029468755355268456.a n = A240712 (n + 1)

end A240712

/-! ## A240712.P13996506638171561769

`and(A164291(n+2), A171611(n+1))`
-/

namespace A240712.P13996506638171561769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A164291 (n + 2)) (A171611 (n + 1))

end

end A240712.P13996506638171561769

namespace A240712

/-- `and(A164291(n+2), A171611(n+1))` -/
def P13996506638171561769.Spec : Prop :=
  ∀ n, P13996506638171561769.a n = A240712 (n + 1)

end A240712

/-! ## A240712.P13833740726052095460

`and(A070199(n+1), A171611(n+1))`
-/

namespace A240712.P13833740726052095460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A070199 (n + 1)) (A171611 (n + 1))

end

end A240712.P13833740726052095460

namespace A240712

/-- `and(A070199(n+1), A171611(n+1))` -/
def P13833740726052095460.Spec : Prop :=
  ∀ n, P13833740726052095460.a n = A240712 (n + 1)

end A240712

/-!
# A240714: Even numbers whose unordered two primes decomposition set does not contain two groups of n = p1+p2 = p3+p4 such that |p1-p3| = 6 or 12.

The programs for A240714, there is no canonical definition to state claims against.
-/

/-! ## A240714.P1642795627539312024

`record[gcd(2*(n+1), A240713(n+1))]`
-/

namespace A240714.P1642795627539312024
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (2 * (n + 1) : ℤ) (A240713 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A240714.P1642795627539312024

/-! ## A240714.P15875742166030671689

`A084562(record[∏{digits}[n, #+1]])`
-/

namespace A240714.P15875742166030671689
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x + 1).prod

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084562 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A240714.P15875742166030671689

/-! ## A240714.P3263393602730167697

`A084562(∑[A065648(n)])`
-/

namespace A240714.P3263393602730167697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065648 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084562 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A240714.P3263393602730167697

/-! ## A240714.P472390742578898998

`A084562(record[A067032(n)])`
-/

namespace A240714.P472390742578898998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067032 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084562 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A240714.P472390742578898998

/-! ## A240714.P10192972990651522212

`A084562(A002473(n+1))`
-/

namespace A240714.P10192972990651522212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084562 (A002473 (n + 1)).toNat

end

end A240714.P10192972990651522212

/-!
# A240716: Both 1 + 6 n and 6 + 35 n are prime.

The programs for A240716, there is no canonical definition to state claims against.
-/

/-! ## A240716.P16891039886988256472

`lt[A001221((n+1)*n²-n+24), 2]`
-/

namespace A240716.P16891039886988256472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (((n + 1) * n ^ 2 : ℤ) - (n : ℤ) + 24).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A240716.P16891039886988256472

/-! ## A240716.P3458720208879914258

`eq[2, A084301(A010003(n))]`
-/

namespace A240716.P3458720208879914258
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084301 (A010003 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A240716.P3458720208879914258

/-! ## A240716.P2399620400777498087

`eq[2, A137866(A247541(n))]`
-/

namespace A240716.P2399620400777498087
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137866 (A247541 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A240716.P2399620400777498087

/-!
# A240718: Number of decompositions of 2n into an unordered sum of two primes, one of the two primes less than sqrt(2n-2).

The programs for A240718, there is no canonical definition to state claims against.
-/

/-! ## A240718.P15562061118491393190

`∑{e}[∑{e}[A241743(A011794(2*n+1)), #], #]`
-/

namespace A240718.P15562061118491393190
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241743 (A011794 (2 * n + 1)).toNat

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p

end

end A240718.P15562061118491393190

/-! ## A240718.P13065967230035537486

`A386992(A091980(n+1))%A278949(n)`
-/

namespace A240718.P13065967230035537486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A386992 (A091980 (n + 1)).toNat) (A278949 n)

end

end A240718.P13065967230035537486

/-! ## A240718.P4699015270332399159

`A143007(n)%A055642(A069269(2*n))`
-/

namespace A240718.P4699015270332399159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A143007 n) (A055642 (A069269 (2 * n)).toNat)

end

end A240718.P4699015270332399159

/-! ## A240718.P8501752738860047380

`A214246(A119479(n+2))%A214246(2*n)`
-/

namespace A240718.P8501752738860047380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A214246 (A119479 (n + 2)).toNat) (A214246 (2 * n))

end

end A240718.P8501752738860047380

/-! ## A240718.P5414597530567574598

`A298756(n+5)%A055642(A361042(2*n))`
-/

namespace A240718.P5414597530567574598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A298756 (n + 5)) (A055642 (A361042 (2 * n)).toNat)

end

end A240718.P5414597530567574598

/-!
# A240720: Successive record-setters in Waring's problem Diophantine inequality.

The programs for A240720, there is no canonical definition to state claims against.
-/

/-! ## A240720.P12740040867343174785

`A153663(n+4)%A153662(n+3)`
-/

namespace A240720.P12740040867343174785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A153663 (n + 4)) (A153662 (n + 3))

end

end A240720.P12740040867343174785

/-! ## A240720.P10446178432442741054

`A153663(n+4)%A007437(A201455(n))`
-/

namespace A240720.P10446178432442741054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A153663 (n + 4)) (A007437 (A201455 n).toNat)

end

end A240720.P10446178432442741054

/-!
# A240721: Expansion of -(4*x + sqrt(1-8*x) - 1)/(sqrt(1-8*x)*(4*x^2+x) + 8*x^2 - x).

The programs for A240721, the canonical program `A240721.P604364352566737510` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A240721 has offset 0).

The definition of A240721 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A178792, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A240721.P3149554314761970752

`∑{#}[n, C(2*(n+1), #)*2^#*(-1)^(n+#)]`
-/

namespace A240721.P3149554314761970752
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.choose (2 * (n + 1)) k * 2 ^ k : ℤ) * (-1) ^ (n + k)

end

end A240721.P3149554314761970752

namespace A240721

/-- `∑{#}[n, C(2*(n+1), #)*2^#*(-1)^(n+#)]` -/
def P3149554314761970752.Spec : Prop :=
  ∀ n, P3149554314761970752.a n = A240721 n

end A240721

/-! ## A240721.P12464917760962431823

`C(2*(n+1), n+1)*(n+1)*∑{#}[n, C(n, #)/(n+#+2)]`
-/

namespace A240721.P12464917760962431823
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (2 * (n + 1)) (n + 1) * (n + 1) : ℚ) * (∑ k ∈ Finset.range (f1 n + 1), (Nat.choose n k : ℚ) / (n + k + 2 : ℚ))

end

end A240721.P12464917760962431823

namespace A240721

/-- `C(2*(n+1), n+1)*(n+1)*∑{#}[n, C(n, #)/(n+#+2)]` -/
def P12464917760962431823.Spec : Prop :=
  ∀ n, P12464917760962431823.a n = (A240721 n : ℚ)

end A240721

/-! ## A240721.P604364352566737510

`2^(n+1)*C(2*n+1, n)-A178792(n)`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A240721

/-- `2^(n+1)*C(2*n+1, n)-A178792(n)` -/
def P604364352566737510.Spec : Prop :=
  ∀ n, P604364352566737510.a n = A240721 n

theorem P604364352566737510.correct : P604364352566737510.Spec := by
  intro n
  simp only [A240721]

end A240721

/-! ## A240721.P14737651682799091662

`∑{#}[n, 2^#*C(n+#+1, #)]`
-/

namespace A240721.P14737651682799091662
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), 2 ^ k * Nat.choose (n + k + 1) k

end

end A240721.P14737651682799091662

namespace A240721

/-- `∑{#}[n, 2^#*C(n+#+1, #)]` -/
def P14737651682799091662.Spec : Prop :=
  ∀ n, (P14737651682799091662.a n : ℤ) = A240721 n

end A240721

/-! ## A240721.P7534126820988509569

`A359066(2*(n+1))`
-/

namespace A240721.P7534126820988509569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359066 (2 * (n + 1))

end

end A240721.P7534126820988509569

namespace A240721

/-- `A359066(2*(n+1))` -/
def P7534126820988509569.Spec : Prop :=
  ∀ n, P7534126820988509569.a n = A240721 n

end A240721

/-! ## A240721.P6711077275015249642

`A116881(n)+n*A062992(n)`
-/

namespace A240721.P6711077275015249642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116881 n + (n : ℤ) * A062992 n

end

end A240721.P6711077275015249642

namespace A240721

/-- `A116881(n)+n*A062992(n)` -/
def P6711077275015249642.Spec : Prop :=
  ∀ n, P6711077275015249642.a n = A240721 n

end A240721

/-! ## A240721.P16745073325657254600

`A119259(n+1)-2*A178792(n)`
-/

namespace A240721.P16745073325657254600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119259 (n + 1) - 2 * A178792 n

end

end A240721.P16745073325657254600

namespace A240721

/-- `A119259(n+1)-2*A178792(n)` -/
def P16745073325657254600.Spec : Prop :=
  ∀ n, P16745073325657254600.a n = A240721 n

end A240721

/-! ## A240721.P18161952389273947911

`(A119259(n+1)-A064062(n+1))/2`
-/

namespace A240721.P18161952389273947911
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A119259 (n + 1) - A064062 (n + 1) : ℚ) / 2

end

end A240721.P18161952389273947911

namespace A240721

/-- `(A119259(n+1)-A064062(n+1))/2` -/
def P18161952389273947911.Spec : Prop :=
  ∀ n, P18161952389273947911.a n = (A240721 n : ℚ)

end A240721

/-! ## A240721.P124843665997200598

`(A178792(n+1)-A119259(n+1))/2`
-/

namespace A240721.P124843665997200598
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A178792 (n + 1) - A119259 (n + 1) : ℚ) / 2

end

end A240721.P124843665997200598

namespace A240721

/-- `(A178792(n+1)-A119259(n+1))/2` -/
def P124843665997200598.Spec : Prop :=
  ∀ n, P124843665997200598.a n = (A240721 n : ℚ)

end A240721

/-! ## A240721.P16829649678566913010

`A178792(n)+A178792(n)-A064062(n+1)`
-/

namespace A240721.P16829649678566913010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178792 n + (A178792 n - A064062 (n + 1))

end

end A240721.P16829649678566913010

namespace A240721

/-- `A178792(n)+A178792(n)-A064062(n+1)` -/
def P16829649678566913010.Spec : Prop :=
  ∀ n, P16829649678566913010.a n = A240721 n

end A240721

/-! ## A240721.P1176875697765090806

`A000079(n)*A000984(n+1)-A178792(n)`
-/

namespace A240721.P1176875697765090806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n * A000984 (n + 1) - A178792 n

end

end A240721.P1176875697765090806

namespace A240721

/-- `A000079(n)*A000984(n+1)-A178792(n)` -/
def P1176875697765090806.Spec : Prop :=
  ∀ n, P1176875697765090806.a n = A240721 n

end A240721

/-! ## A240721.P14120556818126492473

`A000079(n+1)*A001700(n)-A178792(n)`
-/

namespace A240721.P14120556818126492473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (n + 1) * A001700 n - A178792 n

end

end A240721.P14120556818126492473

namespace A240721

/-- `A000079(n+1)*A001700(n)-A178792(n)` -/
def P14120556818126492473.Spec : Prop :=
  ∀ n, P14120556818126492473.a n = A240721 n

theorem P14120556818126492473.correct : P14120556818126492473.Spec := by
  intro n
  simp only [A240721, Nat.add_sub_cancel, A240721.P14120556818126492473.a, A240721.P604364352566737510.a, A000079, A000079.P10855139691139572931.a, A001700, A001700.P11212155124506223364.a, A178792, A178792.P3240755536533390895.a, A000984, A000984.P7946844122574426130.a, A064062, A064062.P2466146061458098928.a, A062992, A062992.P6101721318031816608.f1, A062992.P6101721318031816608.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A240721

/-!
# A240722: Expansion of log'((-1-sqrt(1-8*x)+sqrt(2+2*sqrt(1-8*x)+8*x))/(4*x)).

The programs for A240722, the canonical program `A240722.P5045101531941698240` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A240722 has offset 0).

The definition of A240722 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 112 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A240722.P5045101531941698240

`A288470(n+1)/2`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A240722

/-- `A288470(n+1)/2` -/
def P5045101531941698240.Spec : Prop :=
  ∀ n, P5045101531941698240.a n = (A240722 n : ℚ)

end A240722

/-! ## A240722.P5610907355978234045

`A048017(3*n+2)+1`
-/

namespace A240722.P5610907355978234045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048017 (3 * n + 2) + 1

end

end A240722.P5610907355978234045

namespace A240722

/-- `A048017(3*n+2)+1` -/
def P5610907355978234045.Spec : Prop :=
  ∀ n, P5610907355978234045.a n = A240722 n

end A240722

/-! ## A240722.P13042095129424110770

`A048072(3*n+2)+1`
-/

namespace A240722.P13042095129424110770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048072 (3 * n + 2) + 1

end

end A240722.P13042095129424110770

namespace A240722

/-- `A048072(3*n+2)+1` -/
def P13042095129424110770.Spec : Prop :=
  ∀ n, P13042095129424110770.a n = A240722 n

end A240722

/-! ## A240722.P2435444882721260978

`A048083(3*n+2)+1`
-/

namespace A240722.P2435444882721260978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048083 (3 * n + 2) + 1

end

end A240722.P2435444882721260978

namespace A240722

/-- `A048083(3*n+2)+1` -/
def P2435444882721260978.Spec : Prop :=
  ∀ n, P2435444882721260978.a n = A240722 n

end A240722

/-! ## A240722.P2793727685052389229

`record[A288470(abs(1-n))/2]`
-/

namespace A240722.P2793727685052389229
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A288470 |1 - (n : ℤ)|.toNat : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A240722.P2793727685052389229

namespace A240722

/-- `record[A288470(abs(1-n))/2]` -/
def P2793727685052389229.Spec : Prop :=
  ∀ n, P2793727685052389229.a n = (A240722 n : ℚ)

end A240722

/-! ## A240722.P1447325905310226249

`A048006(2*n+n+2)+1`
-/

namespace A240722.P1447325905310226249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048006 (2 * n + (n + 2)) + 1

end

end A240722.P1447325905310226249

namespace A240722

/-- `A048006(2*n+n+2)+1` -/
def P1447325905310226249.Spec : Prop :=
  ∀ n, P1447325905310226249.a n = A240722 n

end A240722

/-! ## A240722.P9988157367612996139

`A047194(A016789(n))+1`
-/

namespace A240722.P9988157367612996139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047194 (A016789 n).toNat + 1

end

end A240722.P9988157367612996139

namespace A240722

/-- `A047194(A016789(n))+1` -/
def P9988157367612996139.Spec : Prop :=
  ∀ n, P9988157367612996139.a n = A240722 n

end A240722

/-! ## A240722.P328867867792575653

`A071943(2*(n+1)²)`
-/

namespace A240722.P328867867792575653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071943 (2 * (n + 1) ^ 2)

end

end A240722.P328867867792575653

namespace A240722

/-- `A071943(2*(n+1)²)` -/
def P328867867792575653.Spec : Prop :=
  ∀ n, P328867867792575653.a n = A240722 n

end A240722

/-! ## A240722.P4131692730091050421

`A108073(A056220(n+1))`
-/

namespace A240722.P4131692730091050421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108073 (A056220 (n + 1)).toNat

end

end A240722.P4131692730091050421

namespace A240722

/-- `A108073(A056220(n+1))` -/
def P4131692730091050421.Spec : Prop :=
  ∀ n, P4131692730091050421.a n = A240722 n

end A240722

/-! ## A240722.P10053426110849411648

`A108073(A001844(n)+2*n)`
-/

namespace A240722.P10053426110849411648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108073 (A001844 n + (2 * n : ℤ)).toNat

end

end A240722.P10053426110849411648

namespace A240722

/-- `A108073(A001844(n)+2*n)` -/
def P10053426110849411648.Spec : Prop :=
  ∀ n, P10053426110849411648.a n = A240722 n

end A240722

/-!
# A240724: Primes arising in A062391.

The programs for A240724, there is no canonical definition to state claims against.
-/

/-! ## A240724.P15181171674331408081

`A062391(n+1)+A062391(n+2)+A062391(n+3)`
-/

namespace A240724.P15181171674331408081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062391 (n + 1) + A062391 (n + 2) + A062391 (n + 3)

end

end A240724.P15181171674331408081

/-! ## A240724.P3746243861309230006

`A008578(∑[A064047(n+1)%A077787(n+1)]+8)`
-/

namespace A240724.P3746243861309230006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A064047 (n + 1)) (A077787 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (∑ j ∈ Finset.range (n + 1), f1 j + 8).toNat

end

end A240724.P3746243861309230006

/-! ## A240724.P1779361378637883432

`A224534(A132352(n+1)%A241289(n+2))`
-/

namespace A240724.P1779361378637883432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224534 (Int.tmod (A132352 (n + 1)) (A241289 (n + 2))).toNat

end

end A240724.P1779361378637883432

/-!
# A240726: Number of partitions p of n such that m(p) < m(c(p)), where m = maximal multiplicity of parts, and c = conjugate.

The programs for A240726, there is no canonical definition to state claims against.
-/

/-! ## A240726.P16532786784561812711

`(A000041(n+1)-A240728(n+1))/2`
-/

namespace A240726.P16532786784561812711
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000041 (n + 1) - A240728 (n + 1) : ℚ) / 2

end

end A240726.P16532786784561812711

/-! ## A240726.P17269870218281186629

`Δ[A000070(n)]-A240727(n+1)`
-/

namespace A240726.P17269870218281186629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A240727 (n + 1)

end

end A240726.P17269870218281186629

/-! ## A240726.P6248028371684658909

`record[A035363(n)]-A240727(n+1)`
-/

namespace A240726.P6248028371684658909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A240727 (n + 1)

end

end A240726.P6248028371684658909

/-! ## A240726.P13449705204177806706

`record[A035377(n)]-A240727(n+1)`
-/

namespace A240726.P13449705204177806706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035377 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A240727 (n + 1)

end

end A240726.P13449705204177806706

/-! ## A240726.P7757056576535941213

`record[A035444(n)]-A240727(n+1)`
-/

namespace A240726.P7757056576535941213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035444 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A240727 (n + 1)

end

end A240726.P7757056576535941213

/-!
# A240727: Number of partitions p of n such that m(p) <= m(c(p)), where m = maximal multiplicity of parts, and c = conjugate.

The programs for A240727, there is no canonical definition to state claims against.
-/

/-! ## A240727.P2920372358289359051

`Δ[A000070(n)]-A240726(n+1)`
-/

namespace A240727.P2920372358289359051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A240726 (n + 1)

end

end A240727.P2920372358289359051

/-! ## A240727.P9401538631691082909

`record[A035363(n)]-A240726(n+1)`
-/

namespace A240727.P9401538631691082909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A240726 (n + 1)

end

end A240727.P9401538631691082909

/-! ## A240727.P14350606486634625064

`record[A035377(n)]-A240726(n+1)`
-/

namespace A240727.P14350606486634625064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035377 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A240726 (n + 1)

end

end A240727.P14350606486634625064

/-! ## A240727.P11811081487523687767

`record[A035444(n)]-A240726(n+1)`
-/

namespace A240727.P11811081487523687767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035444 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A240726 (n + 1)

end

end A240727.P11811081487523687767

/-! ## A240727.P13581612266750962603

`A240728(n+1)+A240726(n+1)`
-/

namespace A240727.P13581612266750962603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240728 (n + 1) + A240726 (n + 1)

end

end A240727.P13581612266750962603

/-!
# A240728: Number of partitions p of n such that m(p) = m(c(p)), where m = maximal multiplicity of parts, and c = conjugate.

The programs for A240728, there is no canonical definition to state claims against.
-/

/-! ## A240728.P16490705540466295002

`Δ[A000070(n)]-2*A240726(n+1)`
-/

namespace A240728.P16490705540466295002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 2 * A240726 (n + 1)

end

end A240728.P16490705540466295002

/-! ## A240728.P12076805053381376399

`record[A035363(n)]-2*A240726(n+1)`
-/

namespace A240728.P12076805053381376399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - 2 * A240726 (n + 1)

end

end A240728.P12076805053381376399

/-! ## A240728.P10219287977453984709

`record[A035377(n)]-2*A240726(n+1)`
-/

namespace A240728.P10219287977453984709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035377 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - 2 * A240726 (n + 1)

end

end A240728.P10219287977453984709

/-! ## A240728.P16586599380794260393

`record[A035444(n)]-2*A240726(n+1)`
-/

namespace A240728.P16586599380794260393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035444 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - 2 * A240726 (n + 1)

end

end A240728.P16586599380794260393

/-! ## A240728.P7525604093828469162

`A000041(n+1)-2*A240726(n+1)`
-/

namespace A240728.P7525604093828469162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) - 2 * A240726 (n + 1)

end

end A240728.P7525604093828469162

/-!
# A240729: Number of partitions p of n such that m(p) < m(c(p)), where m = minimal multiplicity of parts, and c = conjugate.

The programs for A240729, there is no canonical definition to state claims against.
-/

/-! ## A240729.P2575760041162087404

`Δ[A000070(n)]-A240730(n+1)`
-/

namespace A240729.P2575760041162087404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A240730 (n + 1)

end

end A240729.P2575760041162087404

/-! ## A240729.P13233817576120365307

`record[A035363(n)]-A240730(n+1)`
-/

namespace A240729.P13233817576120365307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A240730 (n + 1)

end

end A240729.P13233817576120365307

/-! ## A240729.P31462095563086017

`record[A035377(n)]-A240730(n+1)`
-/

namespace A240729.P31462095563086017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035377 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A240730 (n + 1)

end

end A240729.P31462095563086017

/-! ## A240729.P3668457730850992592

`record[A035444(n)]-A240730(n+1)`
-/

namespace A240729.P3668457730850992592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035444 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A240730 (n + 1)

end

end A240729.P3668457730850992592

/-! ## A240729.P6922844234556057891

`A000041(n+1)-A240730(n+1)`
-/

namespace A240729.P6922844234556057891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) - A240730 (n + 1)

end

end A240729.P6922844234556057891

/-!
# A240730: Number of partitions p of n such that m(p) <= m(c(p)), where m = minimal multiplicity of parts, and c = conjugate.

The programs for A240730, there is no canonical definition to state claims against.
-/

/-! ## A240730.P18148738693356184641

`Δ[A000070(n)]-A240729(n+1)`
-/

namespace A240730.P18148738693356184641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A240729 (n + 1)

end

end A240730.P18148738693356184641

/-! ## A240730.P15331564128224328829

`record[A035363(n)]-A240729(n+1)`
-/

namespace A240730.P15331564128224328829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A240729 (n + 1)

end

end A240730.P15331564128224328829

/-! ## A240730.P18249481709107668696

`record[A035377(n)]-A240729(n+1)`
-/

namespace A240730.P18249481709107668696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035377 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A240729 (n + 1)

end

end A240730.P18249481709107668696

/-! ## A240730.P722174048494114354

`record[A035444(n)]-A240729(n+1)`
-/

namespace A240730.P722174048494114354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035444 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A240729 (n + 1)

end

end A240730.P722174048494114354

/-! ## A240730.P17794795607040352238

`A240731(n+1)+A240729(n+1)`
-/

namespace A240730.P17794795607040352238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240731 (n + 1) + A240729 (n + 1)

end

end A240730.P17794795607040352238

/-!
# A240731: Number of partitions p of n such that m(p) = m(c(p)), where m = minimal multiplicity of parts, and c = conjugate.

The programs for A240731, there is no canonical definition to state claims against.
-/

/-! ## A240731.P16208927777541528303

`A240730(n+1)-A240729(n+1)`
-/

namespace A240731.P16208927777541528303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240730 (n + 1) - A240729 (n + 1)

end

end A240731.P16208927777541528303

/-! ## A240731.P4359131392411805150

`Δ[A000070(n)]-2*A240729(n+1)`
-/

namespace A240731.P4359131392411805150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 2 * A240729 (n + 1)

end

end A240731.P4359131392411805150

/-! ## A240731.P18059129013206662594

`2*A240730(n+1)-Δ[A000070(n)]`
-/

namespace A240731.P18059129013206662594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A240730 (n + 1) - (f1 (n + 1) - f1 n)

end

end A240731.P18059129013206662594

/-! ## A240731.P11384172098603203139

`record[A035363(n)]-2*A240729(n+1)`
-/

namespace A240731.P11384172098603203139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - 2 * A240729 (n + 1)

end

end A240731.P11384172098603203139

/-! ## A240731.P6781075428510766574

`2*A240730(n+1)-record[A035363(n)]`
-/

namespace A240731.P6781075428510766574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A240730 (n + 1) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A240731.P6781075428510766574

/-!
# A240732: The unique set of ten distinct positive numbers up to 35 the sum of whose reciprocals of squares is 1/2.

The programs for A240732, there is no canonical definition to state claims against.
-/

/-! ## A240732.P5663273492521315382

`ogf((2+x+x^2+x^3+2x^4+5x^5+3x^6+5x^7+8x^8+7x^9)/(1-x))`
-/

namespace A240732.P5663273492521315382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 1, 1, 1, 2, 5, 3, 5, 8, 7] [1, -1] n

end

end A240732.P5663273492521315382

/-! ## A240732.P11056917833939301538

`∑[abs(n-A008441(n))]+1`
-/

namespace A240732.P11056917833939301538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) - A008441 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A240732.P11056917833939301538

/-! ## A240732.P1900649801732743699

`∑[A112632(∑[∑[n+1]]+2)]`
-/

namespace A240732.P1900649801732743699
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112632 (∑ j ∈ Finset.range (n + 1), f2 j + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A240732.P1900649801732743699

/-! ## A240732.P7107174439450519166

`∑[abs(A253183(n+6)-n)]+1`
-/

namespace A240732.P7107174439450519166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A253183 (n + 6) - (n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A240732.P7107174439450519166

/-! ## A240732.P17335922253210601575

`record[A284600(n-2*a(floor(n/2)))]` with `a(0)=2, a(1)=0`
-/

namespace A240732.P17335922253210601575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 0] fun n f1 =>
  A284600 ((n : ℤ) - 2 * f1 ⌊(n : ℚ) / 2⌋.toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A240732.P17335922253210601575

/-!
# A240733: a(n) = floor(6^n/(2+2*cos(Pi/9))^n).

The programs for A240733, the canonical program `A240733.P2890904075741695290` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A240733 has offset 0).

The definition of A240733 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(6^n/(2+2*cos(π/9))^n)` (program `A240733.P2890904075741695290`, by `A240733.P2890904075741695290.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A240733.P2890904075741695290

`floor(6^n/(2+2*cos(π/9))^n)`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A240733

/-- `floor(6^n/(2+2*cos(π/9))^n)` -/
def P2890904075741695290.Spec : Prop :=
  ∀ n, P2890904075741695290.a n = A240733 n

theorem P2890904075741695290.correct : P2890904075741695290.Spec := by
  intro n
  simp only [A240733]

end A240733

/-! ## A240733.P12639378260151028028

`A000006(A208354(n)+A001385(n))`
-/

namespace A240733.P12639378260151028028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000006 (A208354 n + A001385 n).toNat

end

end A240733.P12639378260151028028

namespace A240733

/-- `A000006(A208354(n)+A001385(n))` -/
def P12639378260151028028.Spec : Prop :=
  ∀ n, P12639378260151028028.a n = A240733 n

end A240733

/-! ## A240733.P10323786835714231138

`A276581(A275864(n))`
-/

namespace A240733.P10323786835714231138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276581 (A275864 n).toNat

end

end A240733.P10323786835714231138

namespace A240733

/-- `A276581(A275864(n))` -/
def P10323786835714231138.Spec : Prop :=
  ∀ n, P10323786835714231138.a n = A240733 n

end A240733

/-! ## A240733.P10219747162425536927

`A172471(A137682(n+1))`
-/

namespace A240733.P10219747162425536927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172471 (A137682 (n + 1)).toNat

end

end A240733.P10219747162425536927

namespace A240733

/-- `A172471(A137682(n+1))` -/
def P10219747162425536927.Spec : Prop :=
  ∀ n, P10219747162425536927.a n = A240733 n

end A240733

/-! ## A240733.P17778166594140978395

`A172471(A000007(n)+Δ[A067687(n)])`
-/

namespace A240733.P17778166594140978395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067687 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172471 (A000007 n + (f1 (n + 1) - f1 n)).toNat

end

end A240733.P17778166594140978395

namespace A240733

/-- `A172471(A000007(n)+Δ[A067687(n)])` -/
def P17778166594140978395.Spec : Prop :=
  ∀ n, P17778166594140978395.a n = A240733 n

end A240733

/-!
# A240734: a(n) = floor(6^n/(2+sqrt(5))^n).

The programs for A240734, the canonical program `A240734.P15575281331071034416` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A240734 has offset 0).

The definition of A240734 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(6^n/(2+sqrt(5))^n)` (program `A240734.P15575281331071034416`, by `A240734.P15575281331071034416.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A240734.P15575281331071034416

`floor(6^n/(2+sqrt(5))^n)`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A240734

/-- `floor(6^n/(2+sqrt(5))^n)` -/
def P15575281331071034416.Spec : Prop :=
  ∀ n, P15575281331071034416.a n = A240734 n

theorem P15575281331071034416.correct : P15575281331071034416.Spec := by
  intro n
  simp only [A240734]

end A240734

/-! ## A240734.P7313628180372214675

`A003056(∑[A014200(A024493(n))])`
-/

namespace A240734.P7313628180372214675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014200 (A024493 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A240734.P7313628180372214675

namespace A240734

/-- `A003056(∑[A014200(A024493(n))])` -/
def P7313628180372214675.Spec : Prop :=
  ∀ n, P7313628180372214675.a n = A240734 n

end A240734

/-! ## A240734.P14294252652023802102

`A003056(∑[A014200(A078008(n))])`
-/

namespace A240734.P14294252652023802102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014200 (A078008 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A240734.P14294252652023802102

namespace A240734

/-- `A003056(∑[A014200(A078008(n))])` -/
def P14294252652023802102.Spec : Prop :=
  ∀ n, P14294252652023802102.a n = A240734 n

end A240734

/-! ## A240734.P16572996741996812480

`A003056(A054183(n)+A011782(n))`
-/

namespace A240734.P16572996741996812480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A054183 n + A011782 n).toNat

end

end A240734.P16572996741996812480

namespace A240734

/-- `A003056(A054183(n)+A011782(n))` -/
def P16572996741996812480.Spec : Prop :=
  ∀ n, P16572996741996812480.a n = A240734 n

end A240734

/-! ## A240734.P17124143638095410542

`A003056(A096976(n)+A011782(n))`
-/

namespace A240734.P17124143638095410542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A096976 n + A011782 n).toNat

end

end A240734.P17124143638095410542

namespace A240734

/-- `A003056(A096976(n)+A011782(n))` -/
def P17124143638095410542.Spec : Prop :=
  ∀ n, P17124143638095410542.a n = A240734 n

end A240734

/-!
# A240735: a(n) = floor(6^n/(3+sqrt(3))^n).

The programs for A240735, the canonical program `A240735.P3729171869426239905` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A240735 has offset 0).

The definition of A240735 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(6^n/(3+sqrt(3))^n)` (program `A240735.P3729171869426239905`, by `A240735.P3729171869426239905.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A240735.P3729171869426239905

`floor(6^n/(3+sqrt(3))^n)`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A240735

/-- `floor(6^n/(3+sqrt(3))^n)` -/
def P3729171869426239905.Spec : Prop :=
  ∀ n, P3729171869426239905.a n = A240735 n

theorem P3729171869426239905.correct : P3729171869426239905.Spec := by
  intro n
  simp only [A240735]

end A240735

/-! ## A240735.P17663784030394171744

`floor((3-sqrt(3))^n)%A000032(n+2)`
-/

namespace A240735.P17663784030394171744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊(3 - Real.sqrt (3 : ℝ)) ^ n⌋ (A000032 (n + 2))

end

end A240735.P17663784030394171744

namespace A240735

/-- `floor((3-sqrt(3))^n)%A000032(n+2)` -/
def P17663784030394171744.Spec : Prop :=
  ∀ n, P17663784030394171744.a n = A240735 n

end A240735

/-! ## A240735.P12885655501477545134

`and(floor((3-sqrt(3))^n), A290199(n))`
-/

namespace A240735.P12885655501477545134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ⌊(3 - Real.sqrt (3 : ℝ)) ^ n⌋ (A290199 n)

end

end A240735.P12885655501477545134

namespace A240735

/-- `and(floor((3-sqrt(3))^n), A290199(n))` -/
def P12885655501477545134.Spec : Prop :=
  ∀ n, P12885655501477545134.a n = A240735 n

end A240735

/-! ## A240735.P16291032571762268586

`A007318(A000217(n))*floor((3-sqrt(3))^n)`
-/

namespace A240735.P16291032571762268586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A000217 n).toNat * ⌊(3 - Real.sqrt (3 : ℝ)) ^ n⌋

end

end A240735.P16291032571762268586

namespace A240735

/-- `A007318(A000217(n))*floor((3-sqrt(3))^n)` -/
def P16291032571762268586.Spec : Prop :=
  ∀ n, P16291032571762268586.a n = A240735 n

end A240735

/-! ## A240735.P11922090603938462838

`A089810(A157485(n+1))+floor((3-sqrt(3))^n)`
-/

namespace A240735.P11922090603938462838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089810 (A157485 (n + 1)).toNat + ⌊(3 - Real.sqrt (3 : ℝ)) ^ n⌋

end

end A240735.P11922090603938462838

namespace A240735

/-- `A089810(A157485(n+1))+floor((3-sqrt(3))^n)` -/
def P11922090603938462838.Spec : Prop :=
  ∀ n, P11922090603938462838.a n = A240735 n

end A240735

/-!
# A240736: Number of compositions of n having exactly one fixed point.

The programs for A240736, there is no canonical definition to state claims against.
-/

/-! ## A240736.P16474534365264411782

`A238350(A075349(n+2))`
-/

namespace A240736.P16474534365264411782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238350 (A075349 (n + 2)).toNat

end

end A240736.P16474534365264411782

/-! ## A240736.P1134713799117090466

`A238350(∑[A003056(n)+1]+1)`
-/

namespace A240736.P1134713799117090466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238350 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A240736.P1134713799117090466

/-! ## A240736.P12980674655839583578

`A238350(∑[A123578(n+1)]+1)`
-/

namespace A240736.P12980674655839583578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123578 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238350 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A240736.P12980674655839583578

/-! ## A240736.P14155702400224193796

`A238349(∑[n+1]+1)`
-/

namespace A240736.P14155702400224193796
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238349 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A240736.P14155702400224193796

/-! ## A240736.P4734872746506545266

`gcd(A000038(n), A238349(A000124(n+1)))`
-/

namespace A240736.P4734872746506545266
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A238349 (A000124 (n + 1)).toNat)

end

end A240736.P4734872746506545266

/-! ## A240736.P13076207233464240455

`A238349(A000124(n+1))/A209661(2*(n+1))²`
-/

namespace A240736.P13076207233464240455
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A238349 (A000124 (n + 1)).toNat : ℚ) / (A209661 (2 * (n + 1)) ^ 2 : ℚ)

end

end A240736.P13076207233464240455

/-! ## A240736.P7492927520752520957

`A238349(A000124(n+1))+A151763(A000005(n+1)²)`
-/

namespace A240736.P7492927520752520957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238349 (A000124 (n + 1)).toNat + A151763 (A000005 (n + 1) ^ 2).toNat

end

end A240736.P7492927520752520957

/-! ## A240736.P7752443927660663268

`A007318(A020639(2*(n+1)))*A238349(A000124(n+1))`
-/

namespace A240736.P7752443927660663268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A020639 (2 * (n + 1))).toNat * A238349 (A000124 (n + 1)).toNat

end

end A240736.P7752443927660663268

/-! ## A240736.P15983689732043352553

`A238349(A000124(n+1))/A182034(A014963(12*n+6))²`
-/

namespace A240736.P15983689732043352553
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A238349 (A000124 (n + 1)).toNat : ℚ) / (A182034 (A014963 (12 * n + 6)).toNat ^ 2 : ℚ)

end

end A240736.P15983689732043352553

/-!
# A240737: Number of compositions of n having exactly two fixed points.

The programs for A240737, there is no canonical definition to state claims against.
-/

/-! ## A240737.P9339584445692577922

`A238349(∑[n+3]+5)`
-/

namespace A240737.P9339584445692577922
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238349 (∑ j ∈ Finset.range (n + 1), f1 j + 5)

end

end A240737.P9339584445692577922

/-!
# A240738: Number of compositions of n having exactly three fixed points.

The programs for A240738, there is no canonical definition to state claims against.
-/

/-! ## A240738.P3244526885712398274

`A238349(A167614(n+5))`
-/

namespace A240738.P3244526885712398274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238349 (A167614 (n + 5)).toNat

end

end A240738.P3244526885712398274

/-! ## A240738.P11858556208601524990

`A238349(A133263(n+6)+1)`
-/

namespace A240738.P11858556208601524990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238349 (A133263 (n + 6) + 1).toNat

end

end A240738.P11858556208601524990

/-! ## A240738.P8351346004819051827

`A238349(A000217(n+6)+3)`
-/

namespace A240738.P8351346004819051827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238349 (A000217 (n + 6) + 3).toNat

end

end A240738.P8351346004819051827

/-! ## A240738.P4725574252039451113

`A238349(A046691(n+4)+7)`
-/

namespace A240738.P4725574252039451113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238349 (A046691 (n + 4) + 7).toNat

end

end A240738.P4725574252039451113

/-! ## A240738.P13872872367246227937

`A238349(eq[8, A222127(n+1)])`
-/

namespace A240738.P13872872367246227937
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222127 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238349 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A240738.P13872872367246227937

/-!
# A240739: Number of compositions of n having exactly four fixed points.

The programs for A240739, there is no canonical definition to state claims against.
-/

/-! ## A240739.P8663261528588930433

`A238349(A000217(n+10)+4)`
-/

namespace A240739.P8663261528588930433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238349 (A000217 (n + 10) + 4).toNat

end

end A240739.P8663261528588930433

/-! ## A240739.P10637159586983476777

`A238349(A133263(n+8)+A005408(n+10))`
-/

namespace A240739.P10637159586983476777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238349 (A133263 (n + 8) + A005408 (n + 10)).toNat

end

end A240739.P10637159586983476777

/-! ## A240739.P15483834413287896652

`A238349(A052905(n+10)-A008486(n+9))`
-/

namespace A240739.P15483834413287896652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238349 (A052905 (n + 10) - A008486 (n + 9)).toNat

end

end A240739.P15483834413287896652

/-! ## A240739.P1512349570556664898

`A321211(A149473(n))`
-/

namespace A240739.P1512349570556664898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321211 (A149473 n).toNat

end

end A240739.P1512349570556664898

/-!
# A240740: Number of compositions of n having exactly five fixed points.

The programs for A240740, there is no canonical definition to state claims against.
-/

/-! ## A240740.P957355643583698686

`A020663(A372791(n!))`
-/

namespace A240740.P957355643583698686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020663 (A372791 (Nat.factorial n)).toNat

end

end A240740.P957355643583698686

/-! ## A240740.P6868659095678249860

`A045891(n)-A237765(A000332(n))`
-/

namespace A240740.P6868659095678249860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045891 n - A237765 (A000332 n).toNat

end

end A240740.P6868659095678249860

/-!
# A240741: Number of compositions of n having exactly six fixed points.

The programs for A240741, there is no canonical definition to state claims against.
-/

/-! ## A240741.P16094135057982755871

`A005041(n*A148389(n))`
-/

namespace A240741.P16094135057982755871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005041 ((n : ℤ) * A148389 n).toNat

end

end A240741.P16094135057982755871

/-! ## A240741.P221085644353640694

`A000006(A150066(n)+2)-1`
-/

namespace A240741.P221085644353640694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000006 (A150066 n + 2).toNat - 1

end

end A240741.P221085644353640694

/-! ## A240741.P5723093693614068509

`round(sqrt(n*A026741(A333579(n))+1))`
-/

namespace A240741.P5723093693614068509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt ((n : ℤ) * A026741 (A333579 n).toNat + 1 : ℝ))

end

end A240741.P5723093693614068509

/-! ## A240741.P5786831570266810995

`A070082(A263780(n))+A000295(n)`
-/

namespace A240741.P5786831570266810995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070082 (A263780 n).toNat + A000295 n

end

end A240741.P5786831570266810995

/-!
# A240742: Number of compositions of n having exactly seven fixed points.

The programs for A240742, there is no canonical definition to state claims against.
-/

/-! ## A240742.P3553983082601616633

`A227682(n)-A031087(A297880(n))`
-/

namespace A240742.P3553983082601616633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227682 n - A031087 (A297880 n).toNat

end

end A240742.P3553983082601616633

/-! ## A240742.P11456045418226157818

`A240743(n)-A031087(A297880(n))`
-/

namespace A240742.P11456045418226157818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240743 (n + 36) - A031087 (A297880 n).toNat

end

end A240742.P11456045418226157818

/-! ## A240742.P1829927015073143114

`A240744(n)-A031087(A297880(n))`
-/

namespace A240742.P1829927015073143114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240744 (n + 45) - A031087 (A297880 n).toNat

end

end A240742.P1829927015073143114

/-! ## A240742.P14971931194238858114

`A240745(n)-A031087(A297880(n))`
-/

namespace A240742.P14971931194238858114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240745 (n + 55) - A031087 (A297880 n).toNat

end

end A240742.P14971931194238858114

/-!
# A240743: Number of compositions of n having exactly eight fixed points.

The programs for A240743, there is no canonical definition to state claims against.
-/

/-! ## A240743.P13792848323733240342

`A240745(A351870(n))+1-A065517(n+1)`
-/

namespace A240743.P13792848323733240342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240745 ((A351870 n).toNat + 55) + 1 - A065517 (n + 1)

end

end A240743.P13792848323733240342

/-!
# A240744: Number of compositions of n having exactly nine fixed points.

The programs for A240744, there is no canonical definition to state claims against.
-/

/-! ## A240744.P17568646033557947143

`A227682(n)-A051765(A038207(n))`
-/

namespace A240744.P17568646033557947143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227682 n - A051765 (A038207 n).toNat

end

end A240744.P17568646033557947143

/-!
# A240749: Numbers n such that prime(n)^2 + prime(n+1)^2 is a semiprime.

The programs for A240749, there is no canonical definition to state claims against.
-/

/-! ## A240749.P12502600530050228048

`A000720(floor(sqrt(A093343(n+1))))`
-/

namespace A240749.P12502600530050228048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (Int.sqrt (A093343 (n + 1))).toNat

end

end A240749.P12502600530050228048

/-! ## A240749.P10213541185150848611

`A000720(round(sqrt(A093343(n+1))))`
-/

namespace A240749.P10213541185150848611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (SequenceMachineLib.roundAway (Real.sqrt (A093343 (n + 1) : ℝ))).toNat

end

end A240749.P10213541185150848611

/-! ## A240749.P13676080994145567192

`A000720(floor(root(A093343(n+1), 2)))`
-/

namespace A240749.P13676080994145567192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 ⌊(A093343 (n + 1) : ℝ) ^ (1 / (2 : ℝ))⌋.toNat

end

end A240749.P13676080994145567192

/-! ## A240749.P8326642941762433036

`A000720(round(root(A093343(n+1), 2)))`
-/

namespace A240749.P8326642941762433036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (SequenceMachineLib.roundAway ((A093343 (n + 1) : ℝ) ^ (1 / (2 : ℝ)))).toNat

end

end A240749.P8326642941762433036

/-! ## A240749.P15522930598785525760

`A230980(floor(sqrt(A093343(n+1))))`
-/

namespace A240749.P15522930598785525760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (Int.sqrt (A093343 (n + 1))).toNat

end

end A240749.P15522930598785525760

/-! ## A240749.P12957999784607771703

`A230980(round(sqrt(A093343(n+1))))`
-/

namespace A240749.P12957999784607771703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (SequenceMachineLib.roundAway (Real.sqrt (A093343 (n + 1) : ℝ))).toNat

end

end A240749.P12957999784607771703

/-!
# A240750: Table where row n contains all compositions of n into an even number of parts.

The programs for A240750, there is no canonical definition to state claims against.
-/

/-! ## A240750.P2743276334284345516

`gcd(A258096(n), A275806(A096327(n+1)))`
-/

namespace A240750.P2743276334284345516
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A258096 n) (A275806 (A096327 (n + 1)).toNat)

end

end A240750.P2743276334284345516

/-! ## A240750.P7406680579132058223

`gcd(A061395(2*n+3), A371738(A296188(n+1)))`
-/

namespace A240750.P7406680579132058223
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A061395 (2 * n + 3)) (A371738 (A296188 (n + 1)).toNat)

end

end A240750.P7406680579132058223

/-! ## A240750.P5374397019745638504

`gcd(A185969(A318910(n)), A312100(n))`
-/

namespace A240750.P5374397019745638504
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A185969 (A318910 n).toNat) (A312100 n)

end

end A240750.P5374397019745638504

/-! ## A240750.P8675703543147155814

`A089309(A131565(n+1)+A029731(n+1))`
-/

namespace A240750.P8675703543147155814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089309 (A131565 (n + 1) + A029731 (n + 1)).toNat

end

end A240750.P8675703543147155814

/-! ## A240750.P5486178236720839398

`gcd(A125161(A125206(n+1)), A125163(2*n+1))`
-/

namespace A240750.P5486178236720839398
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A125161 (A125206 (n + 1)).toNat) (A125163 (2 * n + 1))

end

end A240750.P5486178236720839398

/-!
# A240751: a(n) is the smallest k such that in the prime power factorization of k! there exists at least one exponent n.

The programs for A240751, there is no canonical definition to state claims against.
-/

/-! ## A240751.P1125117718694885820

`A284050(n+1)*(n+1)+A284051(n+1)`
-/

namespace A240751.P1125117718694885820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284050 (n + 1) * (n + 1 : ℤ) + A284051 (n + 1)

end

end A240751.P1125117718694885820

/-!
# A240752: First differences of digit sums of squares, cf. A004159.

The programs for A240752, the canonical program `A240752.P1774461778050441165` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A240752 has offset 1).

The definition of A240752 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004159, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A240752.P1774461778050441165

`A004159(n+1)-A004159(n)`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A240752

/-- `A004159(n+1)-A004159(n)` -/
def P1774461778050441165.Spec : Prop :=
  ∀ n, P1774461778050441165.a n = A240752 (n + 1)

theorem P1774461778050441165.correct : P1774461778050441165.Spec := by
  intro n
  simp only [A240752, Nat.add_sub_cancel]

end A240752

/-! ## A240752.P18190537697091341603

`A007953((n+1)²)-A007953(n²)`
-/

namespace A240752.P18190537697091341603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 ((n + 1) ^ 2) - A007953 (n ^ 2)

end

end A240752.P18190537697091341603

namespace A240752

/-- `A007953((n+1)²)-A007953(n²)` -/
def P18190537697091341603.Spec : Prop :=
  ∀ n, P18190537697091341603.a n = A240752 (n + 1)

end A240752

/-! ## A240752.P8056253387041539288

`Δ[∑{digits}[n², #]]`
-/

namespace A240752.P8056253387041539288
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x).sum

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A240752.P8056253387041539288

namespace A240752

/-- `Δ[∑{digits}[n², #]]` -/
def P8056253387041539288.Spec : Prop :=
  ∀ n, P8056253387041539288.a n = A240752 (n + 1)

end A240752

/-! ## A240752.P13928168084248478848

`Δ[A004159(n)]`
-/

namespace A240752.P13928168084248478848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004159 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A240752.P13928168084248478848

namespace A240752

/-- `Δ[A004159(n)]` -/
def P13928168084248478848.Spec : Prop :=
  ∀ n, P13928168084248478848.a n = A240752 (n + 1)

theorem P13928168084248478848.correct : P13928168084248478848.Spec := by
  intro n
  simp only [A240752, Nat.add_sub_cancel, A240752.P13928168084248478848.f1, A240752.P13928168084248478848.a, A240752.P1774461778050441165.a, SequenceMachineLib.memo_apply]

end A240752

/-! ## A240752.P12246621098012739884

`Δ[A171613(n)-n²]`
-/

namespace A240752.P12246621098012739884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171613 n - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A240752.P12246621098012739884

namespace A240752

/-- `Δ[A171613(n)-n²]` -/
def P12246621098012739884.Spec : Prop :=
  ∀ n, P12246621098012739884.a n = A240752 (n + 1)

end A240752

/-! ## A240752.P14687076331781498757

`Δ[n²-A224977(n)]`
-/

namespace A240752.P14687076331781498757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - A224977 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A240752.P14687076331781498757

namespace A240752

/-- `Δ[n²-A224977(n)]` -/
def P14687076331781498757.Spec : Prop :=
  ∀ n, P14687076331781498757.a n = A240752 (n + 1)

theorem P14687076331781498757.correct : P14687076331781498757.Spec := by
  intro n
  simp only [A240752, Nat.add_sub_cancel, A240752.P14687076331781498757.f1, A240752.P14687076331781498757.a, A240752.P1774461778050441165.a, A004159, A004159.P12894520007403696170.a, A224977, A224977.P2433633673610591437.a, A000290, A000290.P12206242496348924484.a, A007953, A007953.P3472751987379697826.a, A054899, A054899.P10770181254942084517.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A240752

/-! ## A240752.P13198617042134755799

`Δ[A268227(5*n)]`
-/

namespace A240752.P13198617042134755799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268227 (5 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A240752.P13198617042134755799

namespace A240752

/-- `Δ[A268227(5*n)]` -/
def P13198617042134755799.Spec : Prop :=
  ∀ n, P13198617042134755799.a n = A240752 (n + 1)

end A240752

/-! ## A240752.P1143307929149307660

`Δ[A071317(n)]-A007953(n²)`
-/

namespace A240752.P1143307929149307660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071317 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A007953 (n ^ 2)

end

end A240752.P1143307929149307660

namespace A240752

/-- `Δ[A071317(n)]-A007953(n²)` -/
def P1143307929149307660.Spec : Prop :=
  ∀ n, P1143307929149307660.a n = A240752 (n + 1)

end A240752

/-! ## A240752.P14037652042326893472

`Δ[A007953(n²)]`
-/

namespace A240752.P14037652042326893472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A240752.P14037652042326893472

namespace A240752

/-- `Δ[A007953(n²)]` -/
def P14037652042326893472.Spec : Prop :=
  ∀ n, P14037652042326893472.a n = A240752 (n + 1)

end A240752

/-! ## A240752.P468177976278857641

`Δ[A169805(n²)]/2`
-/

namespace A240752.P468177976278857641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169805 (n ^ 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / 2

end

end A240752.P468177976278857641

namespace A240752

/-- `Δ[A169805(n²)]/2` -/
def P468177976278857641.Spec : Prop :=
  ∀ n, P468177976278857641.a n = (A240752 (n + 1) : ℚ)

theorem P468177976278857641.correct : P468177976278857641.Spec := by
  intro n
  simp only [A240752, Nat.add_sub_cancel, A240752.P468177976278857641.f1, A240752.P468177976278857641.a, A240752.P1774461778050441165.a, A004159, A004159.P12894520007403696170.a, A169805, A169805.P17977796700678006772.a, A007953, A007953.P3472751987379697826.a, A054899, A054899.P10770181254942084517.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A240752

/-!
# A240753: Number of values of k such that n + k + 1 and n + n/k + 1 are both prime.

The programs for A240753, there is no canonical definition to state claims against.
-/

/-! ## A240753.P5729691614730944209

`A033762(A198661(n+1)*A255130(n+1))`
-/

namespace A240753.P5729691614730944209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033762 (A198661 (n + 1) * A255130 (n + 1)).toNat

end

end A240753.P5729691614730944209

/-! ## A240753.P9970925785511505611

`and(A024481(n+1), A035218(A064468(n+1)))`
-/

namespace A240753.P9970925785511505611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A024481 (n + 1)) (A035218 (A064468 (n + 1)).toNat)

end

end A240753.P9970925785511505611

/-! ## A240753.P12987925022814522225

`A269399(A204376(n+1))%4`
-/

namespace A240753.P12987925022814522225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A269399 (A204376 (n + 1)).toNat) 4

end

end A240753.P12987925022814522225

/-! ## A240753.P14883305937126258317

`A052409(n+1)-A033999(A119336(n))`
-/

namespace A240753.P14883305937126258317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052409 (n + 1) - A033999 (A119336 n).toNat

end

end A240753.P14883305937126258317

/-! ## A240753.P2905474156757241096

`A216479(A216506(n+2))+A051904(n+1)`
-/

namespace A240753.P2905474156757241096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216479 (A216506 (n + 2)).toNat + A051904 (n + 1)

end

end A240753.P2905474156757241096

/-!
# A240754: Numbers k with digit_sum(k*k) - 1 = digit_sum((k+1)*(k+1)).

The programs for A240754, the canonical program `A240754.P6827576315638044596` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A240754 has offset 1).

The definition of A240754 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 449 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A240754.P6827576315638044596

`eq[1, A240752(n+1)+2]`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A240754

/-- `eq[1, A240752(n+1)+2]` -/
def P6827576315638044596.Spec : Prop :=
  ∀ n, (P6827576315638044596.a n : ℤ) = A240754 (n + 1)

theorem P6827576315638044596.correct : P6827576315638044596.Spec := by
  intro n
  simp only [A240754, Nat.add_sub_cancel]

end A240754

/-! ## A240754.P7476225547649379026

`eq[A057428(n), A240752(n+1)]`
-/

namespace A240754.P7476225547649379026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240752 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A240754.P7476225547649379026

namespace A240754

/-- `eq[A057428(n), A240752(n+1)]` -/
def P7476225547649379026.Spec : Prop :=
  ∀ n, (P7476225547649379026.a n : ℤ) = A240754 (n + 1)

end A240754

/-! ## A240754.P5018365677752758437

`eq[A076452(n), A240752(n+1)]`
-/

namespace A240754.P5018365677752758437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076452 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240752 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A240754.P5018365677752758437

namespace A240754

/-- `eq[A076452(n), A240752(n+1)]` -/
def P5018365677752758437.Spec : Prop :=
  ∀ n, (P5018365677752758437.a n : ℤ) = A240754 (n + 1)

end A240754

/-! ## A240754.P5957221162853799152

`eq[A102283(n), A240752(n+1)]`
-/

namespace A240754.P5957221162853799152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102283 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240752 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A240754.P5957221162853799152

namespace A240754

/-- `eq[A102283(n), A240752(n+1)]` -/
def P5957221162853799152.Spec : Prop :=
  ∀ n, (P5957221162853799152.a n : ℤ) = A240754 (n + 1)

end A240754

/-! ## A240754.P9015132877679895923

`eq[A133293(n), A240752(n+1)]`
-/

namespace A240754.P9015132877679895923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133293 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240752 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A240754.P9015132877679895923

namespace A240754

/-- `eq[A133293(n), A240752(n+1)]` -/
def P9015132877679895923.Spec : Prop :=
  ∀ n, (P9015132877679895923.a n : ℤ) = A240754 (n + 1)

end A240754

/-! ## A240754.P18388966397575439939

`eq[A134824(n), A240752(n+1)]`
-/

namespace A240754.P18388966397575439939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134824 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240752 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A240754.P18388966397575439939

namespace A240754

/-- `eq[A134824(n), A240752(n+1)]` -/
def P18388966397575439939.Spec : Prop :=
  ∀ n, (P18388966397575439939.a n : ℤ) = A240754 (n + 1)

end A240754

/-! ## A240754.P11903363182165200038

`lt[(A240752(n+1)+1)², A054977(n)]`
-/

namespace A240754.P11903363182165200038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A240752 (n + 1) + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A240754.P11903363182165200038

namespace A240754

/-- `lt[(A240752(n+1)+1)², A054977(n)]` -/
def P11903363182165200038.Spec : Prop :=
  ∀ n, (P11903363182165200038.a n : ℤ) = A240754 (n + 1)

end A240754

/-! ## A240754.P2686659833423111418

`lt[(A240752(n+1)+1)², A057427(n)]`
-/

namespace A240754.P2686659833423111418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A240752 (n + 1) + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A240754.P2686659833423111418

namespace A240754

/-- `lt[(A240752(n+1)+1)², A057427(n)]` -/
def P2686659833423111418.Spec : Prop :=
  ∀ n, (P2686659833423111418.a n : ℤ) = A240754 (n + 1)

end A240754

/-! ## A240754.P10124378737869593346

`lt[(A240752(n+1)+1)², A294619(n)]`
-/

namespace A240754.P10124378737869593346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A240752 (n + 1) + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294619 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A240754.P10124378737869593346

namespace A240754

/-- `lt[(A240752(n+1)+1)², A294619(n)]` -/
def P10124378737869593346.Spec : Prop :=
  ∀ n, (P10124378737869593346.a n : ℤ) = A240754 (n + 1)

end A240754

/-! ## A240754.P9906653175938037282

`eq[A004159(n+1), A023443(A004159(n))]`
-/

namespace A240754.P9906653175938037282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004159 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A004159 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A240754.P9906653175938037282

namespace A240754

/-- `eq[A004159(n+1), A023443(A004159(n))]` -/
def P9906653175938037282.Spec : Prop :=
  ∀ n, (P9906653175938037282.a n : ℤ) = A240754 (n + 1)

end A240754

/-!
# A240755: Smallest prime which occurs in prime power factorization of A240751(n)! with exponent n.

The programs for A240755, there is no canonical definition to state claims against.
-/

/-! ## A240755.P12320455883999618717

`ceil(A240751(n+1)/(n+1))`
-/

namespace A240755.P12320455883999618717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A240751 (n + 1) : ℚ) / (n + 1 : ℚ)⌉

end

end A240755.P12320455883999618717

/-! ## A240755.P7573345962403443675

`A284050(n+1)+A157928(n)`
-/

namespace A240755.P7573345962403443675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284050 (n + 1) + A157928 n

end

end A240755.P7573345962403443675

/-! ## A240755.P9603112252335495788

`A284050(n+1)+and(1, A333747(n+1))`
-/

namespace A240755.P9603112252335495788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284050 (n + 1) + Int.land 1 (A333747 (n + 1))

end

end A240755.P9603112252335495788

/-! ## A240755.P6691763946164336396

`A006530(ceil(acot(n+1)*A240751(n+1)))`
-/

namespace A240755.P6691763946164336396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 ⌈SequenceMachineLib.acot (n + 1 : ℝ) * (A240751 (n + 1) : ℝ)⌉.toNat

end

end A240755.P6691763946164336396

/-! ## A240755.P14708243313723746650

`A284050(n+1)+A057427(A032741(n))`
-/

namespace A240755.P14708243313723746650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284050 (n + 1) + A057427 (A032741 n).toNat

end

end A240755.P14708243313723746650

/-! ## A240755.P14122369712037845699

`A284050(n+1)+A057427(n-A057427(n))`
-/

namespace A240755.P14122369712037845699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284050 (n + 1) + A057427 ((n : ℤ) - A057427 n).toNat

end

end A240755.P14122369712037845699

/-! ## A240755.P6759339202647791692

`A286506(A002483(∏{p}[n, #]))+A284050(n+1)`
-/

namespace A240755.P6759339202647791692
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286506 (A002483 (∏ p ∈ Nat.primeFactors (f1 n), p)).toNat + A284050 (n + 1)

end

end A240755.P6759339202647791692

/-! ## A240755.P8824423288665069736

`A284050(n+1)+A157230(A157230(n+1)+2)`
-/

namespace A240755.P8824423288665069736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284050 (n + 1) + A157230 (A157230 (n + 1) + 2).toNat

end

end A240755.P8824423288665069736

/-! ## A240755.P10413935318518225847

`A284050(n+1)+A057427(A319699(n+1))`
-/

namespace A240755.P10413935318518225847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284050 (n + 1) + A057427 (A319699 (n + 1)).toNat

end

end A240755.P10413935318518225847

/-! ## A240755.P11490275603961644014

`A284050(n+1)+char[A160180(n+1)]`
-/

namespace A240755.P11490275603961644014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160180 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284050 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A240755.P11490275603961644014

/-! ## A240755.P1978909368580283617

`A284050(n+1)+A057427(n²-n)`
-/

namespace A240755.P1978909368580283617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284050 (n + 1) + A057427 (n ^ 2 - n)

end

end A240755.P1978909368580283617

/-!
# A240756: Number of n X 2 0..3 arrays with no element equal to one plus the sum of elements to its left or zero plus the sum of elements above it or zero plus the sum of the elements diagonally to its northwest or zero plus the sum of the elements antidiagonally to its northeast, modulo 4.

The programs for A240756, there is no canonical definition to state claims against.
-/

/-! ## A240756.P1612641710948490166

`A240760(∑[n+2])`
-/

namespace A240756.P1612641710948490166
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240760 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A240756.P1612641710948490166

/-! ## A240756.P1157439647303112550

`A057427(n+1)*A240760(A000096(n+1))`
-/

namespace A240756.P1157439647303112550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (n + 1) * A240760 (A000096 (n + 1)).toNat

end

end A240756.P1157439647303112550

/-! ## A240756.P18112672433255631407

`A240760(A000096(n+1))%A240324(n+1)`
-/

namespace A240756.P18112672433255631407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A240760 (A000096 (n + 1)).toNat) (A240324 (n + 1))

end

end A240756.P18112672433255631407

/-! ## A240756.P12631352256317590675

`C(A240760(A134189(n+2)), A151934(n)!)`
-/

namespace A240756.P12631352256317590675
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A240760 (A134189 (n + 2)).toNat).toNat (Nat.factorial (A151934 n).toNat)

end

end A240756.P12631352256317590675

/-! ## A240756.P13794014646430622317

`A240760(A134189(n+2))%A240324(n+1)`
-/

namespace A240756.P13794014646430622317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A240760 (A134189 (n + 2)).toNat) (A240324 (n + 1))

end

end A240756.P13794014646430622317

/-!
# A240757: Number of n X 3 0..3 arrays with no element equal to one plus the sum of elements to its left or zero plus the sum of elements above it or zero plus the sum of the elements diagonally to its northwest or zero plus the sum of the elements antidiagonally to its northeast, modulo 4.

The programs for A240757, there is no canonical definition to state claims against.
-/

/-! ## A240757.P15528682430859964465

`A240760(∑[n+3]+1)`
-/

namespace A240757.P15528682430859964465
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240760 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A240757.P15528682430859964465

/-!
# A240758: Number of nX4 0..3 arrays with no element equal to one plus the sum of elements to its left or zero plus the sum of elements above it or zero plus the sum of the elements diagonally to its northwest or zero plus the sum of the elements antidiagonally to its northeast, modulo 4.

The programs for A240758, there is no canonical definition to state claims against.
-/

/-! ## A240758.P9776084936790939090

`A240760(Δ[n²]+∑[n+2]+4)`
-/

namespace A240758.P9776084936790939090
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240760 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + ((∑ j ∈ Finset.range (n + 1), f2 j + 4 : ℕ) : ℤ)).toNat

end

end A240758.P9776084936790939090

/-! ## A240758.P4829238601148958716

`A057427(n+1)*A240760(A141214(n+1))`
-/

namespace A240758.P4829238601148958716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (n + 1) * A240760 (A141214 (n + 1)).toNat

end

end A240758.P4829238601148958716

/-! ## A240758.P15348631802411197492

`A240760(A141214(n+1))%A253820(n+1)`
-/

namespace A240758.P15348631802411197492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A240760 (A141214 (n + 1)).toNat) (A253820 (n + 1))

end

end A240758.P15348631802411197492

/-!
# A240759: Number of nX5 0..3 arrays with no element equal to one plus the sum of elements to its left or zero plus the sum of elements above it or zero plus the sum of the elements diagonally to its northwest or zero plus the sum of the elements antidiagonally to its northeast, modulo 4.

The programs for A240759, there is no canonical definition to state claims against.
-/

/-! ## A240759.P3181041258923761151

`A240760(Δ[A264443(n)])`
-/

namespace A240759.P3181041258923761151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240760 (f1 (n + 1) - f1 n).toNat

end

end A240759.P3181041258923761151

/-! ## A240759.P2804931224251496993

`A240760(A046691(n+3))`
-/

namespace A240759.P2804931224251496993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240760 (A046691 (n + 3)).toNat

end

end A240759.P2804931224251496993

/-! ## A240759.P1156623966799392345

`A240760(A056115(n)+11)`
-/

namespace A240759.P1156623966799392345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240760 (A056115 n + 11).toNat

end

end A240759.P1156623966799392345

/-! ## A240759.P2617180955499338848

`A240760(eq[2, A092921(n)])`
-/

namespace A240759.P2617180955499338848
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092921 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240760 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A240759.P2617180955499338848

/-! ## A240759.P6248382260104086441

`A240760(eq[3, A152157(n)])`
-/

namespace A240759.P6248382260104086441
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240760 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A240759.P6248382260104086441

/-!
# A240761: Number of 2Xn 0..3 arrays with no element equal to one plus the sum of elements to its left or zero plus the sum of the elements above it or zero plus the sum of the elements diagonally to its northwest or zero plus the sum of the elements antidiagonally to its northeast, modulo 4.

The programs for A240761, there is no canonical definition to state claims against.
-/

/-! ## A240761.P7998494164062802369

`A240760(∑[n+1]+2)`
-/

namespace A240761.P7998494164062802369
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240760 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A240761.P7998494164062802369

/-! ## A240761.P11737749736567704517

`A240760(A252460(2*(n+2)))+A184945(n)`
-/

namespace A240761.P11737749736567704517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240760 (A252460 (2 * (n + 2))).toNat + A184945 n

end

end A240761.P11737749736567704517

/-! ## A240761.P12553400036328327031

`A240760(A252460(2*(n+2)))%A017588(n)`
-/

namespace A240761.P12553400036328327031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A240760 (A252460 (2 * (n + 2))).toNat) (A017588 n)

end

end A240761.P12553400036328327031

/-! ## A240761.P15504341498337968398

`A057427(n+2)*A240760(A252460(2*n+4))`
-/

namespace A240761.P15504341498337968398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (n + 2) * A240760 (A252460 (2 * n + 4)).toNat

end

end A240761.P15504341498337968398

/-! ## A240761.P4972577794356899636

`record[A240760(A133263(n))%A351597(n+1)]`
-/

namespace A240761.P4972577794356899636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A240760 (A133263 n).toNat) (A351597 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A240761.P4972577794356899636

/-!
# A240762: Number of 3Xn 0..3 arrays with no element equal to one plus the sum of elements to its left or zero plus the sum of the elements above it or zero plus the sum of the elements diagonally to its northwest or zero plus the sum of the elements antidiagonally to its northeast, modulo 4.

The programs for A240762, there is no canonical definition to state claims against.
-/

/-! ## A240762.P2290888765564313883

`A240760(∑[n+2]+4)`
-/

namespace A240762.P2290888765564313883
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240760 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A240762.P2290888765564313883

/-! ## A240762.P6341321419173210914

`A240760(A167614(n+1))+A025438(n)`
-/

namespace A240762.P6341321419173210914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240760 (A167614 (n + 1)).toNat + A025438 n

end

end A240762.P6341321419173210914

/-! ## A240762.P11404629016053917916

`A240760(A167614(n+1))+A185284(n)`
-/

namespace A240762.P11404629016053917916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240760 (A167614 (n + 1)).toNat + A185284 n

end

end A240762.P11404629016053917916

/-! ## A240762.P15869564789247315037

`A240760(A167614(n+1))*A278657(n)`
-/

namespace A240762.P15869564789247315037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240760 (A167614 (n + 1)).toNat * A278657 n

end

end A240762.P15869564789247315037

/-! ## A240762.P3027446926377045831

`lcm(A015415(n), A240760(A167614(n+1)))`
-/

namespace A240762.P3027446926377045831
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A015415 n) (A240760 (A167614 (n + 1)).toNat)

end

end A240762.P3027446926377045831

/-!
# A240763: Preferential arrangements of 1, 2, 3, ... things in one-line notation, arranged lexicographically.

The programs for A240763, there is no canonical definition to state claims against.
-/

/-! ## A240763.P1045720368358121251

`∩[A134336(n+1), A284062(n+1)]`
-/

namespace A240763.P1045720368358121251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134336 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284062 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A240763.P1045720368358121251

/-! ## A240763.P4091785229608155725

`∩[A252490(n+1), A284062(n+1)]`
-/

namespace A240763.P4091785229608155725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252490 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284062 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A240763.P4091785229608155725

/-! ## A240763.P12471041477090611973

`eq[1, A035327(A086066(n))]`
-/

namespace A240763.P12471041477090611973
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035327 (A086066 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A240763.P12471041477090611973

/-! ## A240763.P2693586419610992605

`eq[1, A000120(A086066(n)+2)]`
-/

namespace A240763.P2693586419610992605
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A086066 n + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A240763.P2693586419610992605

/-! ## A240763.P16822807849875977819

`eq[1, A160552(A086066(n)+2)]`
-/

namespace A240763.P16822807849875977819
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160552 (A086066 n + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A240763.P16822807849875977819

/-! ## A240763.P9286148530841723272

`eq[1, A336158(A086066(n)+2)]`
-/

namespace A240763.P9286148530841723272
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336158 (A086066 n + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A240763.P9286148530841723272

/-! ## A240763.P15209968513103819467

`eq[2, A006530(A086066(n)+2)]`
-/

namespace A240763.P15209968513103819467
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A086066 n + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A240763.P15209968513103819467

/-! ## A240763.P3907770105674174127

`eq[2, A014963(A086066(n)+2)]`
-/

namespace A240763.P3907770105674174127
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A086066 n + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A240763.P3907770105674174127

/-! ## A240763.P1781348787284147636

`eq[2, A081729(A086066(n)+2)]`
-/

namespace A240763.P1781348787284147636
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081729 (A086066 n + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A240763.P1781348787284147636

/-! ## A240763.P9480888546303853924

`lt[A000265(A086066(n)+2), 2]`
-/

namespace A240763.P9480888546303853924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A086066 n + 2).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A240763.P9480888546303853924

/-!
# A240764: Least k such that prime power factorization of A240751(k)! contains p^k when the smallest such p equals prime(n), or a(n)=0 if there is no such k.

The programs for A240764, there is no canonical definition to state claims against.
-/

/-! ## A240764.P8687841022307896373

`A144724(a(n-1))` with `a(0)=1, a(1)=2, a(2)=12, a(3)=29`
-/

namespace A240764.P8687841022307896373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 12, 29] fun n a =>
  A144724 (a (n - 1)).toNat

end

end A240764.P8687841022307896373

/-!
# A240766: Least number k > 0 such that n^k + (n-1)^k + ... + 3^k + 2^k is prime, or 0 if no such k exists.

The programs for A240766, there is no canonical definition to state claims against.
-/

/-! ## A240766.P11451133607934491603

`and(A174823(n+1), A286410(A186731(n)))`
-/

namespace A240766.P11451133607934491603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A174823 (n + 1)) (A286410 (A186731 n).toNat)

end

end A240766.P11451133607934491603

/-! ## A240766.P8394196244440665358

`A353859(A344653(3*n+5)%A205511(n+1))`
-/

namespace A240766.P8394196244440665358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353859 (Int.tmod (A344653 (3 * n + 5)) (A205511 (n + 1))).toNat

end

end A240766.P8394196244440665358

/-!
# A240768: Left-truncatable primes p with property that prepending any single decimal digit to p does not produce a prime.

The programs for A240768, there is no canonical definition to state claims against.
-/

/-! ## A240768.P5449993663357771564

`∩[A024785(n+1), A155762(n+1)]`
-/

namespace A240768.P5449993663357771564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024785 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155762 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A240768.P5449993663357771564

/-!
# A240769: Triangle read by rows: T(1,1) = 1; T(n+1,k) = T(n,k+1), 1 <= k < n; T(n+1,n) = 2*T(n,1); T(n+1,n+1) = 2*T(n,1) - 1.

The programs for A240769, the canonical program `A240769.P16242250980846924409` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A240769 has offset 1).

The definition of A240769 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8256 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A240769.P8314374331559653770

`A035327(col(n)+1+row(n))+1`
-/

namespace A240769.P8314374331559653770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035327 (SequenceMachineLib.triCol n + 1 + SequenceMachineLib.triRow n) + 1

end

end A240769.P8314374331559653770

namespace A240769

/-- `A035327(col(n)+1+row(n))+1` -/
def P8314374331559653770.Spec : Prop :=
  ∀ n, P8314374331559653770.a n = A240769 (n + 1)

end A240769

/-! ## A240769.P16242250980846924409

`A080079(A051162(n)+1)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A240769

/-- `A080079(A051162(n)+1)` -/
def P16242250980846924409.Spec : Prop :=
  ∀ n, P16242250980846924409.a n = A240769 (n + 1)

theorem P16242250980846924409.correct : P16242250980846924409.Spec := by
  intro n
  simp only [A240769, Nat.add_sub_cancel]

end A240769

/-! ## A240769.P15620016197117269407

`A080079(A094727(n+1))`
-/

namespace A240769.P15620016197117269407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080079 (A094727 (n + 1)).toNat

end

end A240769.P15620016197117269407

namespace A240769

/-- `A080079(A094727(n+1))` -/
def P15620016197117269407.Spec : Prop :=
  ∀ n, P15620016197117269407.a n = A240769 (n + 1)

theorem P15620016197117269407.correct : P15620016197117269407.Spec := by
  intro n
  simp only [A240769, Nat.add_sub_cancel, A240769.P15620016197117269407.a, A240769.P16242250980846924409.a, A051162, A051162.P4484969187050632534.a, A080079, A080079.P157048171739867416.a, A094727, A094727.P1041695477673985807.a, A062383, A062383.P4595411753464333460.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A240769

/-! ## A240769.P13115504028097911780

`A080079(A134478(n)+A057427(n))`
-/

namespace A240769.P13115504028097911780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080079 (A134478 n + A057427 n).toNat

end

end A240769.P13115504028097911780

namespace A240769

/-- `A080079(A134478(n)+A057427(n))` -/
def P13115504028097911780.Spec : Prop :=
  ∀ n, P13115504028097911780.a n = A240769 (n + 1)

end A240769

/-! ## A240769.P11197676158623929414

`A080079(A003056(n)+A002260(n+1))`
-/

namespace A240769.P11197676158623929414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080079 (A003056 n + A002260 (n + 1)).toNat

end

end A240769.P11197676158623929414

namespace A240769

/-- `A080079(A003056(n)+A002260(n+1))` -/
def P11197676158623929414.Spec : Prop :=
  ∀ n, P11197676158623929414.a n = A240769 (n + 1)

end A240769

/-! ## A240769.P3388419072801861279

`A080079(2-(A057427(n)-A134478(n)))`
-/

namespace A240769.P3388419072801861279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080079 (2 - (A057427 n - A134478 n)).toNat

end

end A240769.P3388419072801861279

namespace A240769

/-- `A080079(2-(A057427(n)-A134478(n)))` -/
def P3388419072801861279.Spec : Prop :=
  ∀ n, P3388419072801861279.a n = A240769 (n + 1)

end A240769

/-! ## A240769.P3298789497167708138

`A035327(A002262(n)+A002024(n+1))+1`
-/

namespace A240769.P3298789497167708138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035327 (A002262 n + A002024 (n + 1)).toNat + 1

end

end A240769.P3298789497167708138

namespace A240769

/-- `A035327(A002262(n)+A002024(n+1))+1` -/
def P3298789497167708138.Spec : Prop :=
  ∀ n, P3298789497167708138.a n = A240769 (n + 1)

end A240769

/-! ## A240769.P304559681107794276

`A094727(n+1)-A053645(2*A094727(n+1))`
-/

namespace A240769.P304559681107794276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094727 (n + 1) - A053645 (2 * A094727 (n + 1)).toNat

end

end A240769.P304559681107794276

namespace A240769

/-- `A094727(n+1)-A053645(2*A094727(n+1))` -/
def P304559681107794276.Spec : Prop :=
  ∀ n, P304559681107794276.a n = A240769 (n + 1)

end A240769

/-!
# A240770: Number of nX2 0..3 arrays with no element equal to exactly one horizontal or vertical neighbor, with new values 0..3 introduced in row major order.

The programs for A240770, there is no canonical definition to state claims against.
-/

/-! ## A240770.P8604492275126007854

`A240774(∑[n+1]+2)`
-/

namespace A240770.P8604492275126007854
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240774 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A240770.P8604492275126007854

/-! ## A240770.P6955385454967902274

`record[gcd(A240774(n+1), A284455(n+1))]`
-/

namespace A240770.P6955385454967902274
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A240774 (n + 1)) (A284455 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A240770.P6955385454967902274

/-! ## A240770.P8428443797121971761

`A240774(A133263(n+1))%A316526(n)`
-/

namespace A240770.P8428443797121971761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A240774 (A133263 (n + 1)).toNat) (A316526 n)

end

end A240770.P8428443797121971761

/-! ## A240770.P16881698224373805253

`A240774(A000096(n)+3)%A240787(n+1)`
-/

namespace A240770.P16881698224373805253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A240774 (A000096 n + 3).toNat) (A240787 (n + 1))

end

end A240770.P16881698224373805253

/-! ## A240770.P16894677528490639000

`record[gcd(A240774(n+1), A264391(n))]`
-/

namespace A240770.P16894677528490639000
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A240774 (n + 1)) (A264391 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A240770.P16894677528490639000

/-!
# A240771: Number of nX3 0..3 arrays with no element equal to exactly one horizontal or vertical neighbor, with new values 0..3 introduced in row major order.

The programs for A240771, there is no canonical definition to state claims against.
-/

/-! ## A240771.P461306419812023698

`A240774(∑[n+2]+4)`
-/

namespace A240771.P461306419812023698
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240774 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A240771.P461306419812023698

/-! ## A240771.P3930863992276424413

`A240774(A167614(n+1))+A107846(n)`
-/

namespace A240771.P3930863992276424413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240774 (A167614 (n + 1)).toNat + A107846 n

end

end A240771.P3930863992276424413

/-! ## A240771.P4436436852602136156

`A240774(A167614(n+1))+A185236(n)`
-/

namespace A240771.P4436436852602136156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240774 (A167614 (n + 1)).toNat + A185236 n

end

end A240771.P4436436852602136156

/-! ## A240771.P17347790405497064648

`gcd(A000038(n), A240774(A167614(n+1)))`
-/

namespace A240771.P17347790405497064648
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A240774 (A167614 (n + 1)).toNat)

end

end A240771.P17347790405497064648

/-! ## A240771.P8937036888836648387

`or(A014082(n), A240774(A167614(n+1)))`
-/

namespace A240771.P8937036888836648387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A014082 n) (A240774 (A167614 (n + 1)).toNat)

end

end A240771.P8937036888836648387

/-!
# A240772: Number of n X 4 0..3 arrays with no element equal to exactly one horizontal or vertical neighbor, with new values 0..3 introduced in row major order.

The programs for A240772, there is no canonical definition to state claims against.
-/

/-! ## A240772.P4595361647812047229

`A240774(A374004(n+1))`
-/

namespace A240772.P4595361647812047229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240774 (A374004 (n + 1)).toNat

end

end A240772.P4595361647812047229

/-! ## A240772.P10018264728065227479

`A240774(A141214(n)+7)`
-/

namespace A240772.P10018264728065227479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240774 (A141214 n + 7).toNat

end

end A240772.P10018264728065227479

/-! ## A240772.P4381543385999189162

`A240774(A052905(n)+9)`
-/

namespace A240772.P4381543385999189162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240774 (A052905 n + 9).toNat

end

end A240772.P4381543385999189162

/-! ## A240772.P1655664110681253750

`A240774(A055999(n)+10)`
-/

namespace A240772.P1655664110681253750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240774 (A055999 n + 10).toNat

end

end A240772.P1655664110681253750

/-! ## A240772.P12059759729509205741

`A240774(A167614(n+2)+1)`
-/

namespace A240772.P12059759729509205741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240774 (A167614 (n + 2) + 1).toNat

end

end A240772.P12059759729509205741

/-!
# A240773: Number of nX5 0..3 arrays with no element equal to exactly one horizontal or vertical neighbor, with new values 0..3 introduced in row major order.

The programs for A240773, there is no canonical definition to state claims against.
-/

/-! ## A240773.P14871169852551910775

`A240774(A374005(n+1))`
-/

namespace A240773.P14871169852551910775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240774 (A374005 (n + 1)).toNat

end

end A240773.P14871169852551910775

/-! ## A240773.P3827476781615087050

`A240774(A167499(n+3))`
-/

namespace A240773.P3827476781615087050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240774 (A167499 (n + 3)).toNat

end

end A240773.P3827476781615087050

/-! ## A240773.P11924976881037677437

`A240774(A077169(n+5))`
-/

namespace A240773.P11924976881037677437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240774 (A077169 (n + 5)).toNat

end

end A240773.P11924976881037677437

/-! ## A240773.P12891017605560841137

`A240774(eq[7, A066657(n)])`
-/

namespace A240773.P12891017605560841137
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240774 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A240773.P12891017605560841137

/-! ## A240773.P687089750640819485

`A240774(A052905(n+1)+10)`
-/

namespace A240773.P687089750640819485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240774 (A052905 (n + 1) + 10).toNat

end

end A240773.P687089750640819485

/-!
# A240774: T(n,k) = Number of n X k 0..3 arrays with no element equal to exactly one horizontal or vertical neighbor, with new values 0..3 introduced in row major order.

The programs for A240774, there is no canonical definition to state claims against.
-/

/-! ## A240774.P15905231723440809538

`A240706(n+1)+A076046(A010048(n))`
-/

namespace A240774.P15905231723440809538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240706 (n + 1) + A076046 (A010048 n).toNat

end

end A240774.P15905231723440809538

/-!
# A240775: The six values n in each interval [i*840, (i+1)*840), where i >= 0, for which Mordell's formulas do NOT provide a three-Egyptian-fraction solution for 4/n.

The programs for A240775, there is no canonical definition to state claims against.
-/

/-! ## A240775.P8931348951371832083

`(or(9, n-1)+2*n)²`
-/

namespace A240775.P8931348951371832083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.lor 9 ((n : ℤ) - 1) + (2 * n : ℤ)) ^ 2

end

end A240775.P8931348951371832083

/-!
# A240777: Number of n X n 0..1 arrays with no element equal to fewer vertical neighbors than horizontal neighbors, with new values 0..1 introduced in row major order.

The programs for A240777, there is no canonical definition to state claims against.
-/

/-! ## A240777.P17509045082004808222

`A240783(∑[4*n]+1)`
-/

namespace A240777.P17509045082004808222
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240783 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A240777.P17509045082004808222

/-! ## A240777.P2298801080067505675

`record[A003982(n)*A240783(n+1)]`
-/

namespace A240777.P2298801080067505675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A240783 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A240777.P2298801080067505675

/-! ## A240777.P9950891721281925559

`record[gcd(A003987(n), A240783(n+1))]`
-/

namespace A240777.P9950891721281925559
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003987 n) (A240783 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A240777.P9950891721281925559

/-! ## A240777.P16149488680663804153

`A240783(A001844(n))^(A000040(n+1)%2)`
-/

namespace A240777.P16149488680663804153
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A240783 (A001844 n).toNat : ℚ) ^ (Int.tmod (A000040 (n + 1)) 2 : ℤ)

end

end A240777.P16149488680663804153

/-! ## A240777.P13708283935578347161

`A000045(gcd(n, n+1))*A240783(A001844(n))`
-/

namespace A240777.P13708283935578347161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (Nat.gcd n (n + 1)) * A240783 (A001844 n).toNat

end

end A240777.P13708283935578347161

/-!
# A240778: Number of n X 3 0..1 arrays with no element equal to fewer vertical neighbors than horizontal neighbors, with new values 0..1 introduced in row major order.

The programs for A240778, the canonical program `A240778.P4039878012442829562` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A240778 has offset 1).

The definition of A240778 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 148 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A240778.P4039878012442829562

`ogf((1-x+x^2+2x^3-6x^4-3x^5+2x^6)/(1-5x+x^2+x^3-4x^4+4x^5+3x^6-x^7))`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A240778

/-- `ogf((1-x+x^2+2x^3-6x^4-3x^5+2x^6)/(1-5x+x^2+x^3-4x^4+4x^5+3x^6-x^7))` -/
def P4039878012442829562.Spec : Prop :=
  ∀ n, P4039878012442829562.a n = A240778 (n + 1)

theorem P4039878012442829562.correct : P4039878012442829562.Spec := by
  intro n
  simp only [A240778, Nat.add_sub_cancel]

end A240778

/-! ## A240778.P18405436344586293794

`A240783(∑[n+3]+1)`
-/

namespace A240778.P18405436344586293794
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240783 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A240778.P18405436344586293794

namespace A240778

/-- `A240783(∑[n+3]+1)` -/
def P18405436344586293794.Spec : Prop :=
  ∀ n, P18405436344586293794.a n = A240778 (n + 1)

end A240778

/-! ## A240778.P14305797866477929445

`record[A240783(abs(A255878(n+1)))]`
-/

namespace A240778.P14305797866477929445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240783 |A255878 (n + 1)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A240778.P14305797866477929445

namespace A240778

/-- `record[A240783(abs(A255878(n+1)))]` -/
def P14305797866477929445.Spec : Prop :=
  ∀ n, P14305797866477929445.a n = A240778 (n + 1)

end A240778

/-! ## A240778.P1552763916693876509

`record[A167374(n+2)*A240783(n+1)]`
-/

namespace A240778.P1552763916693876509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167374 (n + 2) * A240783 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A240778.P1552763916693876509

namespace A240778

/-- `record[A167374(n+2)*A240783(n+1)]` -/
def P1552763916693876509.Spec : Prop :=
  ∀ n, P1552763916693876509.a n = A240778 (n + 1)

end A240778

/-! ## A240778.P15454566493444395275

`record[A240783(n+1)/A240783(n+4)]`
-/

namespace A240778.P15454566493444395275
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A240783 (n + 1) : ℚ) / (A240783 (n + 4) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A240778.P15454566493444395275

namespace A240778

/-- `record[A240783(n+1)/A240783(n+4)]` -/
def P15454566493444395275.Spec : Prop :=
  ∀ n, P15454566493444395275.a n = (A240778 (n + 1) : ℚ)

end A240778

/-!
# A240779: Number of nX4 0..1 arrays with no element equal to fewer vertical neighbors than horizontal neighbors, with new values 0..1 introduced in row major order.

The programs for A240779, there is no canonical definition to state claims against.
-/

/-! ## A240779.P17164013938308877235

`A240783(A141214(n+1))`
-/

namespace A240779.P17164013938308877235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240783 (A141214 (n + 1)).toNat

end

end A240779.P17164013938308877235

/-! ## A240779.P17332397665505875223

`A240783(A027379(n+2))`
-/

namespace A240779.P17332397665505875223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240783 (A027379 (n + 2)).toNat

end

end A240779.P17332397665505875223

/-! ## A240779.P13990894924662836797

`A240783(A055998(n+2))`
-/

namespace A240779.P13990894924662836797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240783 (A055998 (n + 2)).toNat

end

end A240779.P13990894924662836797

/-! ## A240779.P2073249553451838668

`A240783(A155212(n)+5)`
-/

namespace A240779.P2073249553451838668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240783 (A155212 n + 5).toNat

end

end A240779.P2073249553451838668

/-! ## A240779.P18211833044464244637

`A240783(A056000(n)+7)`
-/

namespace A240779.P18211833044464244637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240783 (A056000 n + 7).toNat

end

end A240779.P18211833044464244637

/-!
# A240780: Number of nX5 0..1 arrays with no element equal to fewer vertical neighbors than horizontal neighbors, with new values 0..1 introduced in row major order.

The programs for A240780, there is no canonical definition to state claims against.
-/

/-! ## A240780.P4219233363382714934

`A240783(A046691(n+3))`
-/

namespace A240780.P4219233363382714934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240783 (A046691 (n + 3)).toNat

end

end A240780.P4219233363382714934

/-! ## A240780.P11488643280105772051

`A240783(eq[4, A193592(n)])`
-/

namespace A240780.P11488643280105772051
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240783 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A240780.P11488643280105772051

/-! ## A240780.P3303016618558073078

`A240783(Δ[A023545(n+1)])`
-/

namespace A240780.P3303016618558073078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240783 (f1 (n + 1) - f1 n).toNat

end

end A240780.P3303016618558073078

/-! ## A240780.P1612954262376297048

`A240783(A167614(n+4)-7)`
-/

namespace A240780.P1612954262376297048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240783 (A167614 (n + 4) - 7).toNat

end

end A240780.P1612954262376297048

/-! ## A240780.P17685856987862255251

`A240783(eq[4, A168396(n+1)])`
-/

namespace A240780.P17685856987862255251
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168396 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240783 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A240780.P17685856987862255251

/-!
# A240781: Number of nX6 0..1 arrays with no element equal to fewer vertical neighbors than horizontal neighbors, with new values 0..1 introduced in row major order.

The programs for A240781, there is no canonical definition to state claims against.
-/

/-! ## A240781.P344977985674743401

`A240783(A052905(n+3))`
-/

namespace A240781.P344977985674743401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240783 (A052905 (n + 3)).toNat

end

end A240781.P344977985674743401

/-! ## A240781.P10241598008366799289

`A240783(eq[3, A219347(n)])`
-/

namespace A240781.P10241598008366799289
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240783 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A240781.P10241598008366799289

/-! ## A240781.P4662305645541540922

`A240783(eq[5, A193592(n)])`
-/

namespace A240781.P4662305645541540922
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240783 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A240781.P4662305645541540922

/-! ## A240781.P6438983874495873580

`A240783(eq[6, A200370(n+1)])`
-/

namespace A240781.P6438983874495873580
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240783 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A240781.P6438983874495873580

/-! ## A240781.P15302241446011537062

`A240783(eq[8, A185782(n+1)])`
-/

namespace A240781.P15302241446011537062
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240783 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A240781.P15302241446011537062

/-!
# A240782: Number of nX7 0..1 arrays with no element equal to fewer vertical neighbors than horizontal neighbors, with new values 0..1 introduced in row major order.

The programs for A240782, there is no canonical definition to state claims against.
-/

/-! ## A240782.P11931389897283289155

`A240783(A055999(n+4))`
-/

namespace A240782.P11931389897283289155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240783 (A055999 (n + 4)).toNat

end

end A240782.P11931389897283289155

/-! ## A240782.P14065828678035003403

`A240783(eq[4, A219347(n)])`
-/

namespace A240782.P14065828678035003403
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240783 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A240782.P14065828678035003403

/-! ## A240782.P16593496509254561460

`A240783(eq[6, A193592(n)])`
-/

namespace A240782.P16593496509254561460
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240783 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A240782.P16593496509254561460

/-! ## A240782.P9004365825991968944

`A240783(A155212(n+3)+2)`
-/

namespace A240782.P9004365825991968944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240783 (A155212 (n + 3) + 2).toNat

end

end A240782.P9004365825991968944

/-! ## A240782.P3471277092030572709

`A240783(eq[7, A200370(n+1)])`
-/

namespace A240782.P3471277092030572709
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240783 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A240782.P3471277092030572709

/-!
# A240783: T(n,k)=Number of nXk 0..1 arrays with no element equal to fewer vertical neighbors than horizontal neighbors, with new values 0..1 introduced in row major order.

The programs for A240783, there is no canonical definition to state claims against.
-/

/-! ## A240783.P18177373104757031668

`A180915(n+1)+Δ[A061704(A079371(n+1))]`
-/

namespace A240783.P18177373104757031668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061704 (A079371 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180915 (n + 1) + (f1 (n + 1) - f1 n)

end

end A240783.P18177373104757031668

/-! ## A240783.P17874307666423352660

`A035334(A199530(n+1))`
-/

namespace A240783.P17874307666423352660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035334 (A199530 (n + 1)).toNat

end

end A240783.P17874307666423352660

/-!
# A240784: Number of 3 X n 0..1 arrays with no element equal to fewer vertical neighbors than horizontal neighbors, with new values 0..1 introduced in row major order.

The programs for A240784, the canonical program `A240784.P5997216828595907273` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A240784 has offset 1).

The definition of A240784 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 290 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A240784.P17838114832887934170

`ogf((4+3x-6x^2-x^3-4x^4)/(1-2x-x^2+x^3+x^5))`
-/

namespace A240784.P17838114832887934170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, 3, -6, -1, -4] [1, -2, -1, 1, 0, 1] n

end

end A240784.P17838114832887934170

namespace A240784

/-- `ogf((4+3x-6x^2-x^3-4x^4)/(1-2x-x^2+x^3+x^5))` -/
def P17838114832887934170.Spec : Prop :=
  ∀ n, P17838114832887934170.a n = A240784 (n + 1)

end A240784

/-! ## A240784.P5997216828595907273

`2*a(n-1)+a(n-2)-a(n-3)-a(n-5)` with `a(0)=4, a(1)=11, a(2)=20, a(3)=46, a(4)=97`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A240784

/-- `2*a(n-1)+a(n-2)-a(n-3)-a(n-5)` -/
def P5997216828595907273.Spec : Prop :=
  ∀ n, P5997216828595907273.a n = A240784 (n + 1)

theorem P5997216828595907273.correct : P5997216828595907273.Spec := by
  intro n
  simp only [A240784, Nat.add_sub_cancel]

end A240784

/-! ## A240784.P12292446870379211661

`A020708(n)+2*n%2`
-/

namespace A240784.P12292446870379211661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020708 n + ((2 * (n % 2) : ℕ) : ℤ)

end

end A240784.P12292446870379211661

namespace A240784

/-- `A020708(n)+2*n%2` -/
def P12292446870379211661.Spec : Prop :=
  ∀ n, P12292446870379211661.a n = A240784 (n + 1)

end A240784

/-! ## A240784.P12250444241088129845

`A020708(n)+A010673(n)`
-/

namespace A240784.P12250444241088129845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020708 n + A010673 n

end

end A240784.P12250444241088129845

namespace A240784

/-- `A020708(n)+A010673(n)` -/
def P12250444241088129845.Spec : Prop :=
  ∀ n, P12250444241088129845.a n = A240784 (n + 1)

end A240784

/-! ## A240784.P4641632903999413938

`A020708(n)+and(2, A285184(n))`
-/

namespace A240784.P4641632903999413938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020708 n + Int.land 2 (A285184 n)

end

end A240784.P4641632903999413938

namespace A240784

/-- `A020708(n)+and(2, A285184(n))` -/
def P4641632903999413938.Spec : Prop :=
  ∀ n, P4641632903999413938.a n = A240784 (n + 1)

end A240784

/-! ## A240784.P14295144661607340619

`floor(A020708(n)+2/A040458(n))`
-/

namespace A240784.P14295144661607340619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A020708 n : ℚ) + 2 / (A040458 n : ℚ)⌋

end

end A240784.P14295144661607340619

namespace A240784

/-- `floor(A020708(n)+2/A040458(n))` -/
def P14295144661607340619.Spec : Prop :=
  ∀ n, P14295144661607340619.a n = A240784 (n + 1)

end A240784

/-! ## A240784.P11844314095459878338

`A020708(n)+2%A074723(n+1)`
-/

namespace A240784.P11844314095459878338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020708 n + Int.tmod 2 (A074723 (n + 1))

end

end A240784.P11844314095459878338

namespace A240784

/-- `A020708(n)+2%A074723(n+1)` -/
def P11844314095459878338.Spec : Prop :=
  ∀ n, P11844314095459878338.a n = A240784 (n + 1)

end A240784

/-! ## A240784.P17592411253588057931

`A020708(n)+Δ[A004525(2*n+1)]`
-/

namespace A240784.P17592411253588057931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020708 n + (f1 (n + 1) - f1 n)

end

end A240784.P17592411253588057931

namespace A240784

/-- `A020708(n)+Δ[A004525(2*n+1)]` -/
def P17592411253588057931.Spec : Prop :=
  ∀ n, P17592411253588057931.a n = A240784 (n + 1)

end A240784

/-! ## A240784.P1298544115392730766

`Δ[A109613(n)+A019489(n)]`
-/

namespace A240784.P1298544115392730766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 n + A019489 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A240784.P1298544115392730766

namespace A240784

/-- `Δ[A109613(n)+A019489(n)]` -/
def P1298544115392730766.Spec : Prop :=
  ∀ n, P1298544115392730766.a n = A240784 (n + 1)

end A240784

/-! ## A240784.P4601685050872933652

`A309873(n²+2)+A020708(n)+1`
-/

namespace A240784.P4601685050872933652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309873 (n ^ 2 + 2) + (A020708 n + 1)

end

end A240784.P4601685050872933652

namespace A240784

/-- `A309873(n²+2)+A020708(n)+1` -/
def P4601685050872933652.Spec : Prop :=
  ∀ n, P4601685050872933652.a n = A240784 (n + 1)

end A240784

/-!
# A240785: Number of 4Xn 0..1 arrays with no element equal to fewer vertical neighbors than horizontal neighbors, with new values 0..1 introduced in row major order.

The programs for A240785, there is no canonical definition to state claims against.
-/

/-! ## A240785.P3364829759336403623

`A240783(A141214(n)+7)`
-/

namespace A240785.P3364829759336403623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240783 (A141214 n + 7).toNat

end

end A240785.P3364829759336403623

/-! ## A240785.P14954658577585145933

`A240783(A052905(n)+9)`
-/

namespace A240785.P14954658577585145933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240783 (A052905 n + 9).toNat

end

end A240785.P14954658577585145933

/-! ## A240785.P9936072695484234654

`A240783(A055999(n)+10)`
-/

namespace A240785.P9936072695484234654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240783 (A055999 n + 10).toNat

end

end A240785.P9936072695484234654

/-! ## A240785.P11962424935780845870

`A240783(A167614(n+2)+1)`
-/

namespace A240785.P11962424935780845870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240783 (A167614 (n + 2) + 1).toNat

end

end A240785.P11962424935780845870

/-! ## A240785.P12652136247810677890

`A240783(A000217(n+3)+4)`
-/

namespace A240785.P12652136247810677890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240783 (A000217 (n + 3) + 4).toNat

end

end A240785.P12652136247810677890

/-!
# A240786: Number of 5Xn 0..1 arrays with no element equal to fewer vertical neighbors than horizontal neighbors, with new values 0..1 introduced in row major order.

The programs for A240786, there is no canonical definition to state claims against.
-/

/-! ## A240786.P10802584032496051954

`A240783(A167499(n+3))`
-/

namespace A240786.P10802584032496051954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240783 (A167499 (n + 3)).toNat

end

end A240786.P10802584032496051954

/-! ## A240786.P3608700221518210844

`A240783(A155212(n)+13)`
-/

namespace A240786.P3608700221518210844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240783 (A155212 n + 13).toNat

end

end A240786.P3608700221518210844

/-! ## A240786.P16913276075762180001

`A240783(A056000(n)+15)`
-/

namespace A240786.P16913276075762180001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240783 (A056000 n + 15).toNat

end

end A240786.P16913276075762180001

/-! ## A240786.P12109718416690428547

`A240783(A167614(n+3)+2)`
-/

namespace A240786.P12109718416690428547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240783 (A167614 (n + 3) + 2).toNat

end

end A240786.P12109718416690428547

/-! ## A240786.P1973912413935365863

`A240783(A000217(n+4)+5)`
-/

namespace A240786.P1973912413935365863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240783 (A000217 (n + 4) + 5).toNat

end

end A240786.P1973912413935365863

/-!
# A240787: Number of 6Xn 0..1 arrays with no element equal to fewer vertical neighbors than horizontal neighbors, with new values 0..1 introduced in row major order.

The programs for A240787, there is no canonical definition to state claims against.
-/

/-! ## A240787.P39904191179849429

`A240783(A056115(n)+21)`
-/

namespace A240787.P39904191179849429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240783 (A056115 n + 21).toNat

end

end A240787.P39904191179849429

/-! ## A240787.P6992953498899007796

`A240783(A167499(n+4)+1)`
-/

namespace A240787.P6992953498899007796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240783 (A167499 (n + 4) + 1).toNat

end

end A240787.P6992953498899007796

/-! ## A240787.P5549126272089279036

`A240783(A246172(n+1)+20)`
-/

namespace A240787.P5549126272089279036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240783 (A246172 (n + 1) + 20).toNat

end

end A240787.P5549126272089279036

/-! ## A240787.P14937514028375257772

`A240783(eq[7, A131818(n+1)])`
-/

namespace A240787.P14937514028375257772
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240783 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A240787.P14937514028375257772

/-! ## A240787.P17528083791196627997

`A240783(Δ[A023545(n+1)]+10)`
-/

namespace A240787.P17528083791196627997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240783 (f1 (n + 1) - f1 n + 10).toNat

end

end A240787.P17528083791196627997

/-!
# A240788: Number of 7 X n 0..1 arrays with no element equal to fewer vertical neighbors than horizontal neighbors, with new values 0..1 introduced in row major order.

The programs for A240788, there is no canonical definition to state claims against.
-/

/-! ## A240788.P17624453392954137055

`A240783(eq[11, A066657(n)])`
-/

namespace A240788.P17624453392954137055
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240783 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A240788.P17624453392954137055

/-! ## A240788.P14740670654177345191

`A240783(A167499(n+5)+2)`
-/

namespace A240788.P14740670654177345191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240783 (A167499 (n + 5) + 2).toNat

end

end A240788.P14740670654177345191

/-! ## A240788.P13883818678925856500

`A240783(A056115(n+1)+22)`
-/

namespace A240788.P13883818678925856500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240783 (A056115 (n + 1) + 22).toNat

end

end A240788.P13883818678925856500

/-! ## A240788.P11470940302809878904

`A240783(eq[8, A131818(n+1)])`
-/

namespace A240788.P11470940302809878904
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240783 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A240788.P11470940302809878904

/-! ## A240788.P17993259851275466581

`A240783(A000124(n+7)-(n+1))`
-/

namespace A240788.P17993259851275466581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240783 (A000124 (n + 7) - (n + 1 : ℤ)).toNat

end

end A240788.P17993259851275466581

/-!
# A240789: Number of n X 2 0..3 arrays with no element equal to one plus the sum of elements to its left or one plus the sum of elements above it or zero plus the sum of the elements diagonally to its northwest or zero plus the sum of the elements antidiagonally to its northeast, modulo 4.

The programs for A240789, there is no canonical definition to state claims against.
-/

/-! ## A240789.P10148686801365276098

`A240792(∑[n+2])`
-/

namespace A240789.P10148686801365276098
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240792 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A240789.P10148686801365276098

/-! ## A240789.P4817203911185531835

`A240792(A000096(n+1))%(n+5)²`
-/

namespace A240789.P4817203911185531835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A240792 (A000096 (n + 1)).toNat) ((n + 5) ^ 2 : ℤ)

end

end A240789.P4817203911185531835

/-! ## A240789.P17679956530563495051

`record[A240792(A000096(A028920(n)))]`
-/

namespace A240789.P17679956530563495051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240792 (A000096 (A028920 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A240789.P17679956530563495051

/-! ## A240789.P3125059109999108107

`record[A240792(A000096(A059127(n)))]`
-/

namespace A240789.P3125059109999108107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240792 (A000096 (A059127 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A240789.P3125059109999108107

/-! ## A240789.P16261162868787806356

`or(A000038(n), A240792(A000096(n+1)))`
-/

namespace A240789.P16261162868787806356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000038 n) (A240792 (A000096 (n + 1)).toNat)

end

end A240789.P16261162868787806356

/-!
# A240790: Number of n X 3 0..3 arrays with no element equal to one plus the sum of elements to its left or one plus the sum of elements above it or zero plus the sum of the elements diagonally to its northwest or zero plus the sum of the elements antidiagonally to its northeast, modulo 4.

The programs for A240790, there is no canonical definition to state claims against.
-/

/-! ## A240790.P15204443990264907809

`A240792(∑[n+3]+1)`
-/

namespace A240790.P15204443990264907809
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240792 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A240790.P15204443990264907809

/-! ## A240790.P930241317240585265

`lcm(A240792(A034856(n+2)), A294775(n))`
-/

namespace A240790.P930241317240585265
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A240792 (A034856 (n + 2)).toNat) (A294775 n)

end

end A240790.P930241317240585265

/-! ## A240790.P9384949921246686716

`A240792(A034856(n+2))%A006222(n+1)`
-/

namespace A240790.P9384949921246686716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A240792 (A034856 (n + 2)).toNat) (A006222 (n + 1))

end

end A240790.P9384949921246686716

/-! ## A240790.P14773687683731821793

`and(A057428(n+1), A240792(A034856(n+2)))`
-/

namespace A240790.P14773687683731821793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A057428 (n + 1)) (A240792 (A034856 (n + 2)).toNat)

end

end A240790.P14773687683731821793

/-!
# A240791: Number of nX4 0..3 arrays with no element equal to one plus the sum of elements to its left or one plus the sum of elements above it or zero plus the sum of the elements diagonally to its northwest or zero plus the sum of the elements antidiagonally to its northeast, modulo 4.

The programs for A240791, there is no canonical definition to state claims against.
-/

/-! ## A240791.P9783871428721416165

`A240792(A141214(n+1))`
-/

namespace A240791.P9783871428721416165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240792 (A141214 (n + 1)).toNat

end

end A240791.P9783871428721416165

/-! ## A240791.P569118154369424911

`A240792(A027379(n+2))`
-/

namespace A240791.P569118154369424911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240792 (A027379 (n + 2)).toNat

end

end A240791.P569118154369424911

/-! ## A240791.P43626472640154716

`A240792(A055998(n+2))`
-/

namespace A240791.P43626472640154716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240792 (A055998 (n + 2)).toNat

end

end A240791.P43626472640154716

/-! ## A240791.P15351911963230779667

`A240792(A155212(n)+5)`
-/

namespace A240791.P15351911963230779667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240792 (A155212 n + 5).toNat

end

end A240791.P15351911963230779667

/-! ## A240791.P16522819913860811877

`A240792(A056000(n)+7)`
-/

namespace A240791.P16522819913860811877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240792 (A056000 n + 7).toNat

end

end A240791.P16522819913860811877

/-!
# A240793: Number of 2Xn 0..3 arrays with no element equal to one plus the sum of elements to its left or one plus the sum of the elements above it or zero plus the sum of the elements diagonally to its northwest or zero plus the sum of the elements antidiagonally to its northeast, modulo 4.

The programs for A240793, there is no canonical definition to state claims against.
-/

/-! ## A240793.P1260236690870731201

`A240792(∑[n+1]+2)`
-/

namespace A240793.P1260236690870731201
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240792 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A240793.P1260236690870731201

/-! ## A240793.P11718705720411795114

`or(char[2], A240792(A133263(n+1)))`
-/

namespace A240793.P11718705720411795114
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A240792 (A133263 (n + 1)).toNat)

end

end A240793.P11718705720411795114

/-! ## A240793.P8905226891953872121

`record[A010054(n)*A240792(n+2)]`
-/

namespace A240793.P8905226891953872121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A240792 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A240793.P8905226891953872121

/-! ## A240793.P7370519425984023155

`record[A240792(gcd(n+3, A092921(n)))]`
-/

namespace A240793.P7370519425984023155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240792 (Int.gcd (n + 3 : ℤ) (A092921 n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A240793.P7370519425984023155

/-! ## A240793.P12969398270249380655

`record[root(A240792(n+2), A240783(n+1))]`
-/

namespace A240793.P12969398270249380655
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A240792 (n + 2) : ℝ) ^ (1 / (A240783 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A240793.P12969398270249380655

/-!
# A240794: Number of 3Xn 0..3 arrays with no element equal to one plus the sum of elements to its left or one plus the sum of the elements above it or zero plus the sum of the elements diagonally to its northwest or zero plus the sum of the elements antidiagonally to its northeast, modulo 4.

The programs for A240794, there is no canonical definition to state claims against.
-/

/-! ## A240794.P10635864466541497437

`A240792(∑[n+2]+4)`
-/

namespace A240794.P10635864466541497437
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240792 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A240794.P10635864466541497437

/-! ## A240794.P5776275233025342050

`A240792(A167614(n+1))+char[15]`
-/

namespace A240794.P5776275233025342050
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240792 (A167614 (n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A240794.P5776275233025342050

/-! ## A240794.P15213242699570658001

`record[A240792(n+4)/A060642(n+1)]`
-/

namespace A240794.P15213242699570658001
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A240792 (n + 4) : ℚ) / (A060642 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A240794.P15213242699570658001

/-! ## A240794.P13828208683779746694

`A240792(A167614(n+1))*A278657(n)`
-/

namespace A240794.P13828208683779746694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240792 (A167614 (n + 1)).toNat * A278657 n

end

end A240794.P13828208683779746694

/-! ## A240794.P3532779574147958893

`A240792(A167614(n+1))%A042500(n)`
-/

namespace A240794.P3532779574147958893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A240792 (A167614 (n + 1)).toNat) (A042500 n)

end

end A240794.P3532779574147958893

/-!
# A240795: Number of 4Xn 0..3 arrays with no element equal to one plus the sum of elements to its left or one plus the sum of the elements above it or zero plus the sum of the elements diagonally to its northwest or zero plus the sum of the elements antidiagonally to its northeast, modulo 4.

The programs for A240795, there is no canonical definition to state claims against.
-/

/-! ## A240795.P7870802338497731370

`A240792(∑[n+3]+7)`
-/

namespace A240795.P7870802338497731370
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240792 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A240795.P7870802338497731370

/-!
# A240796: Total number of occurrences of the pattern 1<2 in all preferential arrangements (or ordered partitions) of n elements.

The programs for A240796, there is no canonical definition to state claims against.
-/

/-! ## A240796.P11560467695346153168

`∑[n]*A069321(n)`
-/

namespace A240796.P11560467695346153168
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A069321 n

end

end A240796.P11560467695346153168

/-! ## A240796.P247607487724636711

`∑[n]*Δ[A032109(n)]`
-/

namespace A240796.P247607487724636711
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032109 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * (f2 (n + 1) - f2 n)

end

end A240796.P247607487724636711

/-! ## A240796.P17344443363726776835

`∑[n]*Δ[A007047(n)/8]`
-/

namespace A240796.P17344443363726776835
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007047 n : ℚ) / 8

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) * (f2 (n + 1) - f2 n)

end

end A240796.P17344443363726776835

/-! ## A240796.P15018580949346601742

`A162509(n+1)/4*∑[n]`
-/

namespace A240796.P15018580949346601742
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A162509 (n + 1) : ℚ) / 4 * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ)

end

end A240796.P15018580949346601742

/-! ## A240796.P6240386195429451419

`Δ[A032109(n)]*A000217(n)`
-/

namespace A240796.P6240386195429451419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032109 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A000217 n

end

end A240796.P6240386195429451419

/-! ## A240796.P5163015991618142254

`Δ[A032109(n)]*A179865(n+1)`
-/

namespace A240796.P5163015991618142254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032109 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A179865 (n + 1)

end

end A240796.P5163015991618142254

/-! ## A240796.P9158879506926521172

`A000217(n)/2*Δ[A000670(n)]`
-/

namespace A240796.P9158879506926521172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000670 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000217 n : ℚ) / 2 * (f1 (n + 1) - f1 n : ℚ)

end

end A240796.P9158879506926521172

/-! ## A240796.P12860603326257022358

`(A005649(n)-A000670(n))*∑[n]`
-/

namespace A240796.P12860603326257022358
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A005649 n - A000670 n) * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A240796.P12860603326257022358

/-! ## A240796.P14776747023173592182

`(record[A052841(n)]-A089677(n))*∑[n]`
-/

namespace A240796.P14776747023173592182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052841 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A089677 n) * ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A240796.P14776747023173592182

/-!
# A240797: Total number of occurrences of the pattern 1=2 in all preferential arrangements (or ordered partitions) of n elements.

The programs for A240797, there is no canonical definition to state claims against.
-/

/-! ## A240797.P15532807755943980810

`∑[n]*A000670(n)`
-/

namespace A240797.P15532807755943980810
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A000670 n

end

end A240797.P15532807755943980810

/-! ## A240797.P1154583415567684373

`∑[n]*A073146(∑[n])`
-/

namespace A240797.P1154583415567684373
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A073146 (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A240797.P1154583415567684373

/-! ## A240797.P17207382353756139674

`∑[n]*A122101(∑[n])`
-/

namespace A240797.P17207382353756139674
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A122101 (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A240797.P17207382353756139674

/-! ## A240797.P2450714586849232235

`∑[n]*A154921(∑[n])`
-/

namespace A240797.P2450714586849232235
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A154921 (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A240797.P2450714586849232235

/-! ## A240797.P11211763756590474721

`(A052875(n)+1)*∑[n]`
-/

namespace A240797.P11211763756590474721
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A052875 n + 1) * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A240797.P11211763756590474721

/-! ## A240797.P11640111790895233758

`(A052856(n)-1)*∑[n]`
-/

namespace A240797.P11640111790895233758
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A052856 n - 1) * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A240797.P11640111790895233758

/-! ## A240797.P13989546620362520860

`∑[n/2]*A000629(n)`
-/

namespace A240797.P13989546620362520860
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * (A000629 n : ℚ)

end

end A240797.P13989546620362520860

/-! ## A240797.P1423321057265941211

`∑[n/2]*A076726(n)`
-/

namespace A240797.P1423321057265941211
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * (A076726 n : ℚ)

end

end A240797.P1423321057265941211

/-! ## A240797.P16757467211803253716

`n/2*A052882(n+1)`
-/

namespace A240797.P16757467211803253716
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 2 * (A052882 (n + 1) : ℚ)

end

end A240797.P16757467211803253716

/-! ## A240797.P159729974596647639

`∑[A162509(n)/2]*∑[n]`
-/

namespace A240797.P159729974596647639
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A162509 n : ℚ) / 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℚ)

end

end A240797.P159729974596647639

/-!
# A240798: Total number of occurrences of the pattern 1=2=3 in all preferential arrangements (or ordered partitions) of n elements.

The programs for A240798, there is no canonical definition to state claims against.
-/

/-! ## A240798.P2474726169443576991

`∑[C(n, 2)]*A122101(C(n, 2))`
-/

namespace A240798.P2474726169443576991
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A122101 (Nat.choose n 2)

end

end A240798.P2474726169443576991

/-! ## A240798.P6162932874076624630

`∑[A161680(n)]*A154921(C(n, 2))`
-/

namespace A240798.P6162932874076624630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A154921 (Nat.choose n 2)

end

end A240798.P6162932874076624630

/-! ## A240798.P10441908718307368042

`∑[A161680(n)]*A154921(A161680(n))`
-/

namespace A240798.P10441908718307368042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A154921 (A161680 n).toNat

end

end A240798.P10441908718307368042

/-! ## A240798.P16676307214545146984

`A052882(n)/A028310(n)*∑[A161680(n)]`
-/

namespace A240798.P16676307214545146984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052882 n : ℚ) / (A028310 n : ℚ) * ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)

end

end A240798.P16676307214545146984

/-! ## A240798.P10567040554106274291

`∑[A161680(n)]*A276891(A000096(n))`
-/

namespace A240798.P10567040554106274291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A276891 (A000096 n).toNat

end

end A240798.P10567040554106274291

/-!
# A240799: Total number of occurrences of the pattern 1=2<3 in all preferential arrangements (or ordered partitions) of n elements.

The programs for A240799, there is no canonical definition to state claims against.
-/

/-! ## A240799.P5894403477903589618

`A162509(n)/4*∑[C(n, 2)]`
-/

namespace A240799.P5894403477903589618
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A162509 n : ℚ) / 4 * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ)

end

end A240799.P5894403477903589618

/-! ## A240799.P13818173521675207271

`A162509(n)/4*Δ[A000332(n+1)]`
-/

namespace A240799.P13818173521675207271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000332 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A162509 n : ℚ) / 4 * (f1 (n + 1) - f1 n : ℚ)

end

end A240799.P13818173521675207271

