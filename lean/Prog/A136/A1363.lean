import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
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
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C040
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
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
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
import Seq.Opaque.C025
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A136300: Numerator of ratio (the denominator being (n-1)!^2 = A001044(n-1)) giving the probability that the last of n persons drawing names randomly from a set of names draws their own, given that each person previously has drawn in succession and did not keep their own name. (Probability of derangements when allocated / rejected sequentially.)

The programs for A136300, there is no canonical definition to state claims against.
-/

/-! ## A136300.P8355007853926432848

`A061721(n*(2*a(n-1)+(n-1)*a(n-2)))+1` with `a(0)=1, a(1)=0, a(2)=1`
-/

namespace A136300.P8355007853926432848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1] fun n a =>
  A061721 ((n : ℤ) * (2 * a (n - 1) + ((n : ℤ) - 1) * a (n - 2))).toNat + 1

end

end A136300.P8355007853926432848

/-! ## A136300.P12554143450297718415

`A167810(n+1)%A028310(A006126(n))`
-/

namespace A136300.P12554143450297718415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A167810 (n + 1)) (A028310 (A006126 n).toNat)

end

end A136300.P12554143450297718415

/-!
# A136302: Transform of A000027 by the T_{1,1} transformation (see link).

The programs for A136302, the canonical program `A136302.P9008239984659550942` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A136302 has offset 1).

The definition of A136302 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 272 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A136302.P4905839779487093156

`ogf((2+x^2)/(1-3x+2x^2-x^3))`
-/

namespace A136302.P4905839779487093156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 0, 1] [1, -3, 2, -1] n

end

end A136302.P4905839779487093156

namespace A136302

/-- `ogf((2+x^2)/(1-3x+2x^2-x^3))` -/
def P4905839779487093156.Spec : Prop :=
  ∀ n, P4905839779487093156.a n = A136302 (n + 1)

end A136302

/-! ## A136302.P9008239984659550942

`A141038(3*n+4)`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A136302

/-- `A141038(3*n+4)` -/
def P9008239984659550942.Spec : Prop :=
  ∀ n, P9008239984659550942.a n = A136302 (n + 1)

theorem P9008239984659550942.correct : P9008239984659550942.Spec := by
  intro n
  simp only [A136302, Nat.add_sub_cancel]

end A136302

/-! ## A136302.P1254061371894201515

`A181984(n)+A137531(n)`
-/

namespace A136302.P1254061371894201515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181984 n + A137531 n

end

end A136302.P1254061371894201515

namespace A136302

/-- `A181984(n)+A137531(n)` -/
def P1254061371894201515.Spec : Prop :=
  ∀ n, P1254061371894201515.a n = A136302 (n + 1)

end A136302

/-! ## A136302.P8564312036540311104

`A010912(n)-A034943(n)`
-/

namespace A136302.P8564312036540311104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010912 n - A034943 n

end

end A136302.P8564312036540311104

namespace A136302

/-- `A010912(n)-A034943(n)` -/
def P8564312036540311104.Spec : Prop :=
  ∀ n, P8564312036540311104.a n = A136302 (n + 1)

end A136302

/-! ## A136302.P8571079017953848140

`A136305(n)-A181984(n)`
-/

namespace A136302.P8571079017953848140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136305 n - A181984 n

end

end A136302.P8571079017953848140

namespace A136302

/-- `A136305(n)-A181984(n)` -/
def P8571079017953848140.Spec : Prop :=
  ∀ n, P8571079017953848140.a n = A136302 (n + 1)

end A136302

/-! ## A136302.P15113010299397962763

`A097550(n)+∑[A052921(n)]`
-/

namespace A136302.P15113010299397962763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052921 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097550 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A136302.P15113010299397962763

namespace A136302

/-- `A097550(n)+∑[A052921(n)]` -/
def P15113010299397962763.Spec : Prop :=
  ∀ n, P15113010299397962763.a n = A136302 (n + 1)

end A136302

/-! ## A136302.P7471195696802738450

`Δ[A159328(n)+A034943(n)]`
-/

namespace A136302.P7471195696802738450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159328 n + A034943 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A136302.P7471195696802738450

namespace A136302

/-- `Δ[A159328(n)+A034943(n)]` -/
def P7471195696802738450.Spec : Prop :=
  ∀ n, P7471195696802738450.a n = A136302 (n + 1)

end A136302

/-! ## A136302.P5475761863247325071

`A097550(n)+A095263(n+1)`
-/

namespace A136302.P5475761863247325071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097550 n + A095263 (n + 1)

end

end A136302.P5475761863247325071

namespace A136302

/-- `A097550(n)+A095263(n+1)` -/
def P5475761863247325071.Spec : Prop :=
  ∀ n, P5475761863247325071.a n = A136302 (n + 1)

end A136302

/-! ## A136302.P13364481243876557104

`A097550(n+1)-A052921(n)`
-/

namespace A136302.P13364481243876557104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097550 (n + 1) - A052921 n

end

end A136302.P13364481243876557104

namespace A136302

/-- `A097550(n+1)-A052921(n)` -/
def P13364481243876557104.Spec : Prop :=
  ∀ n, P13364481243876557104.a n = A136302 (n + 1)

end A136302

/-! ## A136302.P11557155124925235291

`A137531(n)+A034943(n+2)`
-/

namespace A136302.P11557155124925235291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137531 n + A034943 (n + 2)

end

end A136302.P11557155124925235291

namespace A136302

/-- `A137531(n)+A034943(n+2)` -/
def P11557155124925235291.Spec : Prop :=
  ∀ n, P11557155124925235291.a n = A136302 (n + 1)

end A136302

/-! ## A136302.P2863580116742546523

`A159350(n+2)+A159339(n)`
-/

namespace A136302.P2863580116742546523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159350 (n + 2) + A159339 n

end

end A136302.P2863580116742546523

namespace A136302

/-- `A159350(n+2)+A159339(n)` -/
def P2863580116742546523.Spec : Prop :=
  ∀ n, P2863580116742546523.a n = A136302 (n + 1)

end A136302

/-! ## A136302.P8372806125737715964

`A181984(n)+A159347(n+2)`
-/

namespace A136302.P8372806125737715964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181984 n + A159347 (n + 2)

end

end A136302.P8372806125737715964

namespace A136302

/-- `A181984(n)+A159347(n+2)` -/
def P8372806125737715964.Spec : Prop :=
  ∀ n, P8372806125737715964.a n = A136302 (n + 1)

end A136302

/-! ## A136302.P9290087914529320344

`A095263(n+2)-A034943(n)`
-/

namespace A136302.P9290087914529320344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095263 (n + 2) - A034943 n

end

end A136302.P9290087914529320344

namespace A136302

/-- `A095263(n+2)-A034943(n)` -/
def P9290087914529320344.Spec : Prop :=
  ∀ n, P9290087914529320344.a n = A136302 (n + 1)

end A136302

/-! ## A136302.P4299473694196425939

`A136305(n)-A034943(n+2)`
-/

namespace A136302.P4299473694196425939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136305 n - A034943 (n + 2)

end

end A136302.P4299473694196425939

namespace A136302

/-- `A136305(n)-A034943(n+2)` -/
def P4299473694196425939.Spec : Prop :=
  ∀ n, P4299473694196425939.a n = A136302 (n + 1)

end A136302

/-! ## A136302.P1340412289917142420

`A137531(n)+A159328(n)/2`
-/

namespace A136302.P1340412289917142420
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A137531 n : ℚ) + (A159328 n : ℚ) / 2

end

end A136302.P1340412289917142420

namespace A136302

/-- `A137531(n)+A159328(n)/2` -/
def P1340412289917142420.Spec : Prop :=
  ∀ n, P1340412289917142420.a n = (A136302 (n + 1) : ℚ)

end A136302

/-! ## A136302.P9265911924706074550

`A136305(n)-A159328(n)/2`
-/

namespace A136302.P9265911924706074550
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A136305 n : ℚ) - (A159328 n : ℚ) / 2

end

end A136302.P9265911924706074550

namespace A136302

/-- `A136305(n)-A159328(n)/2` -/
def P9265911924706074550.Spec : Prop :=
  ∀ n, P9265911924706074550.a n = (A136302 (n + 1) : ℚ)

end A136302

/-! ## A136302.P9891600183933248257

`Δ[A137229(n+1)]-A034943(n)`
-/

namespace A136302.P9891600183933248257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137229 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A034943 n

end

end A136302.P9891600183933248257

namespace A136302

/-- `Δ[A137229(n+1)]-A034943(n)` -/
def P9891600183933248257.Spec : Prop :=
  ∀ n, P9891600183933248257.a n = A136302 (n + 1)

end A136302

/-! ## A136302.P5738952723548259898

`Δ[A181984(n+1)]-A034943(n)`
-/

namespace A136302.P5738952723548259898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181984 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A034943 n

end

end A136302.P5738952723548259898

namespace A136302

/-- `Δ[A181984(n+1)]-A034943(n)` -/
def P5738952723548259898.Spec : Prop :=
  ∀ n, P5738952723548259898.a n = A136302 (n + 1)

end A136302

/-! ## A136302.P13465397780310391597

`Δ[A034943(n+3)]-A034943(n)`
-/

namespace A136302.P13465397780310391597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034943 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A034943 n

end

end A136302.P13465397780310391597

namespace A136302

/-- `Δ[A034943(n+3)]-A034943(n)` -/
def P13465397780310391597.Spec : Prop :=
  ∀ n, P13465397780310391597.a n = A136302 (n + 1)

end A136302

/-! ## A136302.P2653391861621382341

`Δ[A034943(n)+2*A181984(n)]`
-/

namespace A136302.P2653391861621382341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034943 n + 2 * A181984 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A136302.P2653391861621382341

namespace A136302

/-- `Δ[A034943(n)+2*A181984(n)]` -/
def P2653391861621382341.Spec : Prop :=
  ∀ n, P2653391861621382341.a n = A136302 (n + 1)

end A136302

/-!
# A136303: Expansion of g.f. (1 +x^2)/((1-x)^2*(1 -3*x +2*x^2 -x^3)).

The programs for A136303, the canonical program `A136303.P3884856752309953427` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A136303 has offset 0).

The definition of A136303 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+x^2)/(1-5x+9x^2-8x^3+4x^4-x^5))` (program `A136303.P3884856752309953427`, by `A136303.P3884856752309953427.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A136303.P3884856752309953427

`ogf((1+x^2)/(1-5x+9x^2-8x^3+4x^4-x^5))`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A136303

/-- `ogf((1+x^2)/(1-5x+9x^2-8x^3+4x^4-x^5))` -/
def P3884856752309953427.Spec : Prop :=
  ∀ n, P3884856752309953427.a n = A136303 n

theorem P3884856752309953427.correct : P3884856752309953427.Spec := by
  intro n
  simp only [A136303]

end A136303

/-! ## A136303.P9616166969485110794

`∑[∑[A097550(n)]]`
-/

namespace A136303.P9616166969485110794
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097550 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A136303.P9616166969485110794

namespace A136303

/-- `∑[∑[A097550(n)]]` -/
def P9616166969485110794.Spec : Prop :=
  ∀ n, P9616166969485110794.a n = A136303 n

end A136303

/-! ## A136303.P2254641818252251367

`∑[∑[A084338(3*n+1)]]`
-/

namespace A136303.P2254641818252251367
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084338 (3 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A136303.P2254641818252251367

namespace A136303

/-- `∑[∑[A084338(3*n+1)]]` -/
def P2254641818252251367.Spec : Prop :=
  ∀ n, P2254641818252251367.a n = A136303 n

end A136303

/-! ## A136303.P14960413802131629139

`∑[∑[A136302(n+1)-A095263(n+1)]]`
-/

namespace A136303.P14960413802131629139
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136302 (n + 1) - A095263 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A136303.P14960413802131629139

namespace A136303

/-- `∑[∑[A136302(n+1)-A095263(n+1)]]` -/
def P14960413802131629139.Spec : Prop :=
  ∀ n, P14960413802131629139.a n = A136303 n

end A136303

/-! ## A136303.P6444247494364926103

`∑[∑[A136302(n+1)]-A137229(n+1)]`
-/

namespace A136303.P6444247494364926103
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136302 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A137229 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A136303.P6444247494364926103

namespace A136303

/-- `∑[∑[A136302(n+1)]-A137229(n+1)]` -/
def P6444247494364926103.Spec : Prop :=
  ∀ n, P6444247494364926103.a n = A136303 n

end A136303

/-! ## A136303.P14232249613958170809

`∑[∑[A034943(n+1)+A095263(n+1)-A034943(n)]]`
-/

namespace A136303.P14232249613958170809
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034943 (n + 1) + (A095263 (n + 1) - A034943 n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A136303.P14232249613958170809

namespace A136303

/-- `∑[∑[A034943(n+1)+A095263(n+1)-A034943(n)]]` -/
def P14232249613958170809.Spec : Prop :=
  ∀ n, P14232249613958170809.a n = A136303 n

end A136303

/-! ## A136303.P9768177396437370994

`Δ[A097550(n+1)-Δ[A167875(n)]]`
-/

namespace A136303.P9768177396437370994
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167875 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097550 (n + 1) - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A136303.P9768177396437370994

namespace A136303

/-- `Δ[A097550(n+1)-Δ[A167875(n)]]` -/
def P9768177396437370994.Spec : Prop :=
  ∀ n, P9768177396437370994.a n = A136303 n

end A136303

/-!
# A136304: Expansion of g.f. (1-z)^2*(1-sqrt(1-4*z))/(2*z*(1 - 3*z + 2*z^2 - z^3)).

The programs for A136304, there is no canonical definition to state claims against.
-/

/-! ## A136304.P12870598149740469334

`A126220(A004879(n+1))`
-/

namespace A136304.P12870598149740469334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126220 (A004879 (n + 1)).toNat

end

end A136304.P12870598149740469334

/-! ## A136304.P11147115215971276014

`A126220(A004890(n+1))`
-/

namespace A136304.P11147115215971276014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126220 (A004890 (n + 1)).toNat

end

end A136304.P11147115215971276014

/-! ## A136304.P1732017865541149404

`A126220(A004901(n+1))`
-/

namespace A136304.P1732017865541149404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126220 (A004901 (n + 1)).toNat

end

end A136304.P1732017865541149404

/-!
# A136305: Expansion of g.f. (3 -x +2*x^2)/(1 -3*x +2*x^2 -x^3).

The programs for A136305, the canonical program `A136305.P1688726428976492828` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A136305 has offset 0).

The definition of A136305 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((3-x+2x^2)/(1-3x+2x^2-x^3))` (program `A136305.P1688726428976492828`, by `A136305.P1688726428976492828.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A136305.P1688726428976492828

`ogf((3-x+2x^2)/(1-3x+2x^2-x^3))`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A136305

/-- `ogf((3-x+2x^2)/(1-3x+2x^2-x^3))` -/
def P1688726428976492828.Spec : Prop :=
  ∀ n, P1688726428976492828.a n = A136305 n

theorem P1688726428976492828.correct : P1688726428976492828.Spec := by
  intro n
  simp only [A136305]

end A136305

/-! ## A136305.P15382937166975531667

`A276477(3*n+4)`
-/

namespace A136305.P15382937166975531667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276477 (3 * n + 4)

end

end A136305.P15382937166975531667

namespace A136305

/-- `A276477(3*n+4)` -/
def P15382937166975531667.Spec : Prop :=
  ∀ n, P15382937166975531667.a n = A136305 n

end A136305

/-! ## A136305.P9243973560034129320

`A159328(n)+A137531(n)`
-/

namespace A136305.P9243973560034129320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159328 n + A137531 n

end

end A136305.P9243973560034129320

namespace A136305

/-- `A159328(n)+A137531(n)` -/
def P9243973560034129320.Spec : Prop :=
  ∀ n, P9243973560034129320.a n = A136305 n

end A136305

/-! ## A136305.P15195813570696673429

`A181984(n+1)+A097550(n)`
-/

namespace A136305.P15195813570696673429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181984 (n + 1) + A097550 n

end

end A136305.P15195813570696673429

namespace A136305

/-- `A181984(n+1)+A097550(n)` -/
def P15195813570696673429.Spec : Prop :=
  ∀ n, P15195813570696673429.a n = A136305 n

end A136305

/-! ## A136305.P8701355897713438238

`A181984(n)+A136302(n+1)`
-/

namespace A136305.P8701355897713438238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181984 n + A136302 (n + 1)

end

end A136305.P8701355897713438238

namespace A136305

/-- `A181984(n)+A136302(n+1)` -/
def P8701355897713438238.Spec : Prop :=
  ∀ n, P8701355897713438238.a n = A136305 n

end A136305

/-! ## A136305.P11281301045378677505

`A159328(n+1)-A052921(n)`
-/

namespace A136305.P11281301045378677505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159328 (n + 1) - A052921 n

end

end A136305.P11281301045378677505

namespace A136305

/-- `A159328(n+1)-A052921(n)` -/
def P11281301045378677505.Spec : Prop :=
  ∀ n, P11281301045378677505.a n = A136305 n

end A136305

/-! ## A136305.P16863983507907158129

`A159347(n+2)+A159328(n)`
-/

namespace A136305.P16863983507907158129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159347 (n + 2) + A159328 n

end

end A136305.P16863983507907158129

namespace A136305

/-- `A159347(n+2)+A159328(n)` -/
def P16863983507907158129.Spec : Prop :=
  ∀ n, P16863983507907158129.a n = A136305 n

end A136305

/-! ## A136305.P3614179067324683632

`A159350(n+2)+A159334(n)`
-/

namespace A136305.P3614179067324683632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159350 (n + 2) + A159334 n

end

end A136305.P3614179067324683632

namespace A136305

/-- `A159350(n+2)+A159334(n)` -/
def P3614179067324683632.Spec : Prop :=
  ∀ n, P3614179067324683632.a n = A136305 n

end A136305

/-! ## A136305.P2133158021404155859

`A052921(n+2)-A034943(n)`
-/

namespace A136305.P2133158021404155859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052921 (n + 2) - A034943 n

end

end A136305.P2133158021404155859

namespace A136305

/-- `A052921(n+2)-A034943(n)` -/
def P2133158021404155859.Spec : Prop :=
  ∀ n, P2133158021404155859.a n = A136305 n

end A136305

/-! ## A136305.P16928321568653046147

`A097550(n)+A034943(n+3)`
-/

namespace A136305.P16928321568653046147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097550 n + A034943 (n + 3)

end

end A136305.P16928321568653046147

namespace A136305

/-- `A097550(n)+A034943(n+3)` -/
def P16928321568653046147.Spec : Prop :=
  ∀ n, P16928321568653046147.a n = A136305 n

end A136305

/-! ## A136305.P15802260651978246371

`A052921(n)+2*A097550(n)`
-/

namespace A136305.P15802260651978246371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052921 n + 2 * A097550 n

end

end A136305.P15802260651978246371

namespace A136305

/-- `A052921(n)+2*A097550(n)` -/
def P15802260651978246371.Spec : Prop :=
  ∀ n, P15802260651978246371.a n = A136305 n

end A136305

/-! ## A136305.P2396169517571242627

`A137531(n)+2*A181984(n)`
-/

namespace A136305.P2396169517571242627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137531 n + 2 * A181984 n

end

end A136305.P2396169517571242627

namespace A136305

/-- `A137531(n)+2*A181984(n)` -/
def P2396169517571242627.Spec : Prop :=
  ∀ n, P2396169517571242627.a n = A136305 n

end A136305

/-! ## A136305.P9095929791107789069

`A136302(n+1)+Δ[A052921(n)]`
-/

namespace A136305.P9095929791107789069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052921 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136302 (n + 1) + (f1 (n + 1) - f1 n)

end

end A136305.P9095929791107789069

namespace A136305

/-- `A136302(n+1)+Δ[A052921(n)]` -/
def P9095929791107789069.Spec : Prop :=
  ∀ n, P9095929791107789069.a n = A136305 n

end A136305

/-! ## A136305.P5125320083866375090

`A136302(n+1)+A034943(n+2)`
-/

namespace A136305.P5125320083866375090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136302 (n + 1) + A034943 (n + 2)

end

end A136305.P5125320083866375090

namespace A136305

/-- `A136302(n+1)+A034943(n+2)` -/
def P5125320083866375090.Spec : Prop :=
  ∀ n, P5125320083866375090.a n = A136305 n

end A136305

/-! ## A136305.P2046609093681750773

`A159328(n+1)-Δ[Δ[A034943(n+1)]]`
-/

namespace A136305.P2046609093681750773
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034943 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159328 (n + 1) - (f1 (n + 1) - f1 n)

end

end A136305.P2046609093681750773

namespace A136305

/-- `A159328(n+1)-Δ[Δ[A034943(n+1)]]` -/
def P2046609093681750773.Spec : Prop :=
  ∀ n, P2046609093681750773.a n = A136305 n

end A136305

/-! ## A136305.P2443968217220852271

`A134816(3*n+1)+2*A084338(3*n+1)`
-/

namespace A136305.P2443968217220852271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134816 (3 * n + 1) + 2 * A084338 (3 * n + 1)

end

end A136305.P2443968217220852271

namespace A136305

/-- `A134816(3*n+1)+2*A084338(3*n+1)` -/
def P2443968217220852271.Spec : Prop :=
  ∀ n, P2443968217220852271.a n = A136305 n

end A136305

/-! ## A136305.P11619747052133483835

`A010912(n)+A097550(n)-A052921(n)`
-/

namespace A136305.P11619747052133483835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010912 n + (A097550 n - A052921 n)

end

end A136305.P11619747052133483835

namespace A136305

/-- `A010912(n)+A097550(n)-A052921(n)` -/
def P11619747052133483835.Spec : Prop :=
  ∀ n, P11619747052133483835.a n = A136305 n

end A136305

/-! ## A136305.P7672915095223653327

`A095263(n+2)+A097550(n)-A052921(n)`
-/

namespace A136305.P7672915095223653327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095263 (n + 2) + (A097550 n - A052921 n)

end

end A136305.P7672915095223653327

namespace A136305

/-- `A095263(n+2)+A097550(n)-A052921(n)` -/
def P7672915095223653327.Spec : Prop :=
  ∀ n, P7672915095223653327.a n = A136305 n

end A136305

/-! ## A136305.P13544353378125729254

`A052921(n+1)+A136302(n+1)-A052921(n)`
-/

namespace A136305.P13544353378125729254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052921 (n + 1) + (A136302 (n + 1) - A052921 n)

end

end A136305.P13544353378125729254

namespace A136305

/-- `A052921(n+1)+A136302(n+1)-A052921(n)` -/
def P13544353378125729254.Spec : Prop :=
  ∀ n, P13544353378125729254.a n = A136305 n

end A136305

/-! ## A136305.P15616256786176538256

`A097550(n+1)+A097550(n)-A095263(n+1)`
-/

namespace A136305.P15616256786176538256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097550 (n + 1) + (A097550 n - A095263 (n + 1))

end

end A136305.P15616256786176538256

namespace A136305

/-- `A097550(n+1)+A097550(n)-A095263(n+1)` -/
def P15616256786176538256.Spec : Prop :=
  ∀ n, P15616256786176538256.a n = A136305 n

end A136305

/-!
# A136306: a(n) = a(n-1)*(10^K) + n*a(n-1); a(0)=1; K=floor(log_10 (n*a(n-1))).

The programs for A136306, there is no canonical definition to state claims against.
-/

/-! ## A136306.P10637888978065197443

`a(n-1)*A248008(a(n-1)*a(n-1))` with `a(0)=1`
-/

namespace A136306.P10637888978065197443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A248008 (a (n - 1) * a (n - 1)).toNat

end

end A136306.P10637888978065197443

/-!
# A136307: a(n)=n*(10^K) + a(n-1); a(0)=1; K=floor(log_10 a(n-1))+1.

The programs for A136307, there is no canonical definition to state claims against.
-/

/-! ## A136307.P1685662208314601887

`A052246(n)+1`
-/

namespace A136307.P1685662208314601887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052246 n + 1

end

end A136307.P1685662208314601887

/-! ## A136307.P12976226572316362972

`or(abs(A033999(n)), A052246(n))`
-/

namespace A136307.P12976226572316362972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor |A033999 n| (A052246 n)

end

end A136307.P12976226572316362972

/-! ## A136307.P18051747649816872192

`or(abs(A087960(n)), A052246(n))`
-/

namespace A136307.P18051747649816872192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor |A087960 n| (A052246 n)

end

end A136307.P18051747649816872192

/-! ## A136307.P1849711358703474700

`or(A137579(n)!, A052246(n))`
-/

namespace A136307.P1849711358703474700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (Nat.factorial (A137579 n).toNat : ℤ) (A052246 n)

end

end A136307.P1849711358703474700

/-! ## A136307.P10064264802165887851

`or(A193238(n)!, A052246(n))`
-/

namespace A136307.P10064264802165887851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (Nat.factorial (A193238 n).toNat : ℤ) (A052246 n)

end

end A136307.P10064264802165887851

/-!
# A136308: a(n) = (10^2^n - 1)/9.

The programs for A136308, the canonical program `A136308.P109043430102558311` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A136308 has offset 0).

The definition of A136308 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A136308.P109043430102558311

`A000042(A000079(n))`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A136308

/-- `A000042(A000079(n))` -/
def P109043430102558311.Spec : Prop :=
  ∀ n, P109043430102558311.a n = A136308 n

theorem P109043430102558311.correct : P109043430102558311.Spec := by
  intro n
  simp only [A136308]

end A136308

/-! ## A136308.P13189078689723540949

`floor(10^2^n/9)`
-/

namespace A136308.P13189078689723540949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(10 ^ 2 ^ n : ℚ) / 9⌋

end

end A136308.P13189078689723540949

namespace A136308

/-- `floor(10^2^n/9)` -/
def P13189078689723540949.Spec : Prop :=
  ∀ n, P13189078689723540949.a n = A136308 n

end A136308

/-! ## A136308.P11739369123497442800

`(9*a(n-1)+2)*a(n-1)` with `a(0)=1`
-/

namespace A136308.P11739369123497442800
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (9 * a (n - 1) + 2) * a (n - 1)

end

end A136308.P11739369123497442800

namespace A136308

/-- `(9*a(n-1)+2)*a(n-1)` -/
def P11739369123497442800.Spec : Prop :=
  ∀ n, (P11739369123497442800.a n : ℤ) = A136308 n

end A136308

/-!
# A136309: a(n) = a(n-1) * 10^K + n + a(n-1); a(0) = 1; K = floor(log_10(n + a(n-1) + 1)).

The programs for A136309, there is no canonical definition to state claims against.
-/

/-! ## A136309.P13379201151046878235

`A195071(n^(n+1)+1)`
-/

namespace A136309.P13379201151046878235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195071 (n ^ (n + 1) + 1)

end

end A136309.P13379201151046878235

/-!
# A136310: a(n)=a(n-1)*(2^K)+ n*(n+1)/2 ; a(0)=1; K=floor(log_2 n*(n+1)/2).

The programs for A136310, there is no canonical definition to state claims against.
-/

/-! ## A136310.P14432269927661963759

`A343600(n!²)+∑[n]`
-/

namespace A136310.P14432269927661963759
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343600 (Nat.factorial n ^ 2) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A136310.P14432269927661963759

/-!
# A136311: Array read by antidiagonals: a(1) = 1; a(n+1) = a(n) + (largest k-gonal number <= a(n)).

The programs for A136311, there is no canonical definition to state claims against.
-/

/-! ## A136311.P15515060505027763424

`A082429(A171840(n+1))`
-/

namespace A136311.P15515060505027763424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082429 (A171840 (n + 1)).toNat

end

end A136311.P15515060505027763424

/-! ## A136311.P7063511549896049036

`A189575(A316842(Δ[A055257(n)]))`
-/

namespace A136311.P7063511549896049036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055257 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189575 (A316842 (f1 (n + 1) - f1 n).toNat).toNat

end

end A136311.P7063511549896049036

/-! ## A136311.P10319932984704084009

`A082447(A033677(A171840(n+1)²))`
-/

namespace A136311.P10319932984704084009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082447 (A033677 (A171840 (n + 1) ^ 2).toNat).toNat

end

end A136311.P10319932984704084009

/-! ## A136311.P2799509667473700334

`A172471(A172471(A171840(n+1)²))`
-/

namespace A136311.P2799509667473700334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172471 (A172471 (A171840 (n + 1) ^ 2).toNat).toNat

end

end A136311.P2799509667473700334

/-! ## A136311.P8823097871052156685

`A082447(or(A072189(n), A171840(n+1)))`
-/

namespace A136311.P8823097871052156685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082447 (Int.lor (A072189 n) (A171840 (n + 1))).toNat

end

end A136311.P8823097871052156685

/-!
# A136312: Cubes that are the sum of two or more consecutive positive squares.

The programs for A136312, there is no canonical definition to state claims against.
-/

/-! ## A136312.P5530279959836155426

`A163390(n+1)^3`
-/

namespace A136312.P5530279959836155426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163390 (n + 1) ^ 3

end

end A136312.P5530279959836155426

/-!
# A136313: a(1) = 1; for n>1, a(n) = a(n-1) + 8 mod 22.

The programs for A136313, the canonical program `A136313.P15942611181484069591` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A136313 has offset 1).

The definition of A136313 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A136313.P15942611181484069591

`(8*n+1)%22`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A136313

/-- `(8*n+1)%22` -/
def P15942611181484069591.Spec : Prop :=
  ∀ n, (P15942611181484069591.a n : ℤ) = A136313 (n + 1)

theorem P15942611181484069591.correct : P15942611181484069591.Spec := by
  intro n
  simp only [A136313, Nat.add_sub_cancel]

end A136313

/-!
# A136314: a(0) = a(1) = 1. The n-th run (after the initial two 1's) of (a(n)+a(n-1)) terms is (1,2,3,...,a(n)+a(n-1)).

The programs for A136314, there is no canonical definition to state claims against.
-/

/-! ## A136314.P10804721619124073364

`A002260(lt[A333893(n), A119270(n+2)])`
-/

namespace A136314.P10804721619124073364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333893 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119270 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A136314.P10804721619124073364

/-! ## A136314.P6795564254084480218

`A002262(lt[A333893(n), A119270(n+2)])`
-/

namespace A136314.P6795564254084480218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333893 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119270 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A136314.P6795564254084480218

/-! ## A136314.P18137718516947413804

`A191532(lt[A333893(n), A119270(n+2)])`
-/

namespace A136314.P18137718516947413804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333893 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119270 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191532 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A136314.P18137718516947413804

/-! ## A136314.P8191632947443910147

`A316340((n%∑[char[n!]]!)%A151995(n+1))`
-/

namespace A136314.P8191632947443910147
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316340 (Int.tmod ((n % Nat.factorial (∑ j ∈ Finset.range (n + 1), f1 j) : ℕ) : ℤ) (A151995 (n + 1))).toNat

end

end A136314.P8191632947443910147

/-! ## A136314.P1066858203704445287

`A027926(lt[A027926(n), A262611(n+1)])`
-/

namespace A136314.P1066858203704445287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027926 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262611 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027926 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A136314.P1066858203704445287

/-!
# A136315: Period 10: repeat 1, 2, 3, 6, 5, 0, 7, 4, 9, 8 .

The programs for A136315, the canonical program `A136315.P4033907618913389285` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A136315 has offset 0).

The definition of A136315 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A136315.P4033907618913389285

`(n^(n%2)+n)%10`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A136315

/-- `(n^(n%2)+n)%10` -/
def P4033907618913389285.Spec : Prop :=
  ∀ n, (P4033907618913389285.a n : ℤ) = A136315 n

theorem P4033907618913389285.correct : P4033907618913389285.Spec := by
  intro n
  simp only [A136315]

end A136315

/-!
# A136316: a(n) = 13 + 12*n - n^2.

The programs for A136316, the canonical program `A136316.P16190603649730031246` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A136316 has offset 0).

The definition of A136316 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `13+12*n-n²` (program `A136316.P16190603649730031246`, by `A136316.P16190603649730031246.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A136316.P16190603649730031246

`13+12*n-n²`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A136316

/-- `13+12*n-n²` -/
def P16190603649730031246.Spec : Prop :=
  ∀ n, P16190603649730031246.a n = A136316 n

theorem P16190603649730031246.correct : P16190603649730031246.Spec := by
  intro n
  simp only [A136316]

end A136316

/-! ## A136316.P14500432231173560961

`∑[a(n-1)-2]` with `a(0)=13`
-/

namespace A136316.P14500432231173560961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [13] fun n f1 =>
  f1 (n - 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A136316.P14500432231173560961

namespace A136316

/-- `∑[a(n-1)-2]` -/
def P14500432231173560961.Spec : Prop :=
  ∀ n, P14500432231173560961.a n = A136316 n

end A136316

/-! ## A136316.P5759360935912144781

`∑[ogf((13-15x)/(1-2x+x^2))]`
-/

namespace A136316.P5759360935912144781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [13, -15] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A136316.P5759360935912144781

namespace A136316

/-- `∑[ogf((13-15x)/(1-2x+x^2))]` -/
def P5759360935912144781.Spec : Prop :=
  ∀ n, P5759360935912144781.a n = A136316 n

end A136316

/-! ## A136316.P9945709203731180139

`ogf((13-15x)/(1-3x+3x^2-x^3))`
-/

namespace A136316.P9945709203731180139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [13, -15] [1, -3, 3, -1] n

end

end A136316.P9945709203731180139

namespace A136316

/-- `ogf((13-15x)/(1-3x+3x^2-x^3))` -/
def P9945709203731180139.Spec : Prop :=
  ∀ n, P9945709203731180139.a n = A136316 n

end A136316

/-! ## A136316.P11424203465925279890

`(n+1)*A022969(n)`
-/

namespace A136316.P11424203465925279890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A022969 n

end

end A136316.P11424203465925279890

namespace A136316

/-- `(n+1)*A022969(n)` -/
def P11424203465925279890.Spec : Prop :=
  ∀ n, P11424203465925279890.a n = A136316 n

theorem P11424203465925279890.correct : P11424203465925279890.Spec := by
  intro n
  simp only [A136316, Nat.add_sub_cancel, A136316.P11424203465925279890.a, A136316.P16190603649730031246.a, A022969, A022969.P11976671692879548942.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A136316

/-! ## A136316.P129840602237817272

`(n+1)*(A022968(n)+1)`
-/

namespace A136316.P129840602237817272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A022968 n + 1)

end

end A136316.P129840602237817272

namespace A136316

/-- `(n+1)*(A022968(n)+1)` -/
def P129840602237817272.Spec : Prop :=
  ∀ n, P129840602237817272.a n = A136316 n

theorem P129840602237817272.correct : P129840602237817272.Spec := by
  intro n
  simp only [A136316, Nat.add_sub_cancel, A136316.P129840602237817272.a, A136316.P16190603649730031246.a, A022968, A022968.P12481636955399392468.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A136316

/-! ## A136316.P8956727651435080884

`(n+1)*(A022967(n)+2)`
-/

namespace A136316.P8956727651435080884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A022967 n + 2)

end

end A136316.P8956727651435080884

namespace A136316

/-- `(n+1)*(A022967(n)+2)` -/
def P8956727651435080884.Spec : Prop :=
  ∀ n, P8956727651435080884.a n = A136316 n

theorem P8956727651435080884.correct : P8956727651435080884.Spec := by
  intro n
  simp only [A136316, Nat.add_sub_cancel, A136316.P8956727651435080884.a, A136316.P16190603649730031246.a, A022967, A022967.P103826889751989676.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A136316

/-! ## A136316.P3727873382514942525

`(n+1)*(1-A023454(n))`
-/

namespace A136316.P3727873382514942525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (1 - A023454 n)

end

end A136316.P3727873382514942525

namespace A136316

/-- `(n+1)*(1-A023454(n))` -/
def P3727873382514942525.Spec : Prop :=
  ∀ n, P3727873382514942525.a n = A136316 n

theorem P3727873382514942525.correct : P3727873382514942525.Spec := by
  intro n
  simp only [A136316, Nat.add_sub_cancel, A136316.P3727873382514942525.a, A136316.P16190603649730031246.a, A023454, A023454.P17847968958104591799.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A136316

/-! ## A136316.P17672124968993780988

`(n+1)*(A022966(n)+3)`
-/

namespace A136316.P17672124968993780988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A022966 n + 3)

end

end A136316.P17672124968993780988

namespace A136316

/-- `(n+1)*(A022966(n)+3)` -/
def P17672124968993780988.Spec : Prop :=
  ∀ n, P17672124968993780988.a n = A136316 n

theorem P17672124968993780988.correct : P17672124968993780988.Spec := by
  intro n
  simp only [A136316, Nat.add_sub_cancel, A136316.P17672124968993780988.a, A136316.P16190603649730031246.a, A022966, A022966.P4427188668348917034.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A136316

/-! ## A136316.P2593563073004881208

`(n+1)*(2-A023453(n))`
-/

namespace A136316.P2593563073004881208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (2 - A023453 n)

end

end A136316.P2593563073004881208

namespace A136316

/-- `(n+1)*(2-A023453(n))` -/
def P2593563073004881208.Spec : Prop :=
  ∀ n, P2593563073004881208.a n = A136316 n

theorem P2593563073004881208.correct : P2593563073004881208.Spec := by
  intro n
  simp only [A136316, Nat.add_sub_cancel, A136316.P2593563073004881208.a, A136316.P16190603649730031246.a, A023453, A023453.P6399622911449397509.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A136316

/-! ## A136316.P12106351142663246065

`(n+1)*(3-A023452(n))`
-/

namespace A136316.P12106351142663246065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (3 - A023452 n)

end

end A136316.P12106351142663246065

namespace A136316

/-- `(n+1)*(3-A023452(n))` -/
def P12106351142663246065.Spec : Prop :=
  ∀ n, P12106351142663246065.a n = A136316 n

theorem P12106351142663246065.correct : P12106351142663246065.Spec := by
  intro n
  simp only [A136316, Nat.add_sub_cancel, A136316.P12106351142663246065.a, A136316.P16190603649730031246.a, A023452, A023452.P3824057514643465905.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A136316

/-! ## A136316.P17454953417246511034

`(n+1)*(A040042(n+1)-(n+1))`
-/

namespace A136316.P17454953417246511034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A040042 (n + 1) - (n + 1 : ℤ))

end

end A136316.P17454953417246511034

namespace A136316

/-- `(n+1)*(A040042(n+1)-(n+1))` -/
def P17454953417246511034.Spec : Prop :=
  ∀ n, P17454953417246511034.a n = A136316 n

end A136316

/-! ## A136316.P448026412686595107

`A001478(n+1)*A023455(n)`
-/

namespace A136316.P448026412686595107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001478 (n + 1) * A023455 n

end

end A136316.P448026412686595107

namespace A136316

/-- `A001478(n+1)*A023455(n)` -/
def P448026412686595107.Spec : Prop :=
  ∀ n, P448026412686595107.a n = A136316 n

theorem P448026412686595107.correct : P448026412686595107.Spec := by
  intro n
  simp only [A136316, Nat.add_sub_cancel, A136316.P448026412686595107.a, A136316.P16190603649730031246.a, A001478, A001478.P11279598861711037921.a, A023455, A023455.P8476404562613874856.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A136316

/-! ## A136316.P6693949608918209856

`(n+1)*A022970(n+1)`
-/

namespace A136316.P6693949608918209856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A022970 (n + 1)

end

end A136316.P6693949608918209856

namespace A136316

/-- `(n+1)*A022970(n+1)` -/
def P6693949608918209856.Spec : Prop :=
  ∀ n, P6693949608918209856.a n = A136316 n

theorem P6693949608918209856.correct : P6693949608918209856.Spec := by
  intro n
  simp only [A136316, Nat.add_sub_cancel, A136316.P6693949608918209856.a, A136316.P16190603649730031246.a, A022970, A022970.P14686319457213141712.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A136316

/-! ## A136316.P10102241747682031981

`(n+1)*(1-A023455(n+1))`
-/

namespace A136316.P10102241747682031981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (1 - A023455 (n + 1))

end

end A136316.P10102241747682031981

namespace A136316

/-- `(n+1)*(1-A023455(n+1))` -/
def P10102241747682031981.Spec : Prop :=
  ∀ n, P10102241747682031981.a n = A136316 n

theorem P10102241747682031981.correct : P10102241747682031981.Spec := by
  intro n
  simp only [A136316, Nat.add_sub_cancel, A136316.P10102241747682031981.a, A136316.P16190603649730031246.a, A023455, A023455.P8476404562613874856.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A136316

/-! ## A136316.P4785168806260752074

`(n+1)*(A022973(n+1)-3)`
-/

namespace A136316.P4785168806260752074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A022973 (n + 1) - 3)

end

end A136316.P4785168806260752074

namespace A136316

/-- `(n+1)*(A022973(n+1)-3)` -/
def P4785168806260752074.Spec : Prop :=
  ∀ n, P4785168806260752074.a n = A136316 n

theorem P4785168806260752074.correct : P4785168806260752074.Spec := by
  intro n
  simp only [A136316, Nat.add_sub_cancel, A136316.P4785168806260752074.a, A136316.P16190603649730031246.a, A022973, A022973.P177688902324720155.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A136316

/-! ## A136316.P2839356046135738132

`(n+1)*A022971(n+2)`
-/

namespace A136316.P2839356046135738132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A022971 (n + 2)

end

end A136316.P2839356046135738132

namespace A136316

/-- `(n+1)*A022971(n+2)` -/
def P2839356046135738132.Spec : Prop :=
  ∀ n, P2839356046135738132.a n = A136316 n

theorem P2839356046135738132.correct : P2839356046135738132.Spec := by
  intro n
  simp only [A136316, Nat.add_sub_cancel, A136316.P2839356046135738132.a, A136316.P16190603649730031246.a, A022971, A022971.P312173633140377465.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A136316

/-! ## A136316.P17588706621889312437

`(n+1)*A022972(n+3)`
-/

namespace A136316.P17588706621889312437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A022972 (n + 3)

end

end A136316.P17588706621889312437

namespace A136316

/-- `(n+1)*A022972(n+3)` -/
def P17588706621889312437.Spec : Prop :=
  ∀ n, P17588706621889312437.a n = A136316 n

theorem P17588706621889312437.correct : P17588706621889312437.Spec := by
  intro n
  simp only [A136316, Nat.add_sub_cancel, A136316.P17588706621889312437.a, A136316.P16190603649730031246.a, A022972, A022972.P17304298854066651627.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A136316

/-! ## A136316.P9010732207487240970

`-∑[A023455(2*n)]`
-/

namespace A136316.P9010732207487240970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023455 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ j ∈ Finset.range (n + 1), f1 j)

end

end A136316.P9010732207487240970

namespace A136316

/-- `-∑[A023455(2*n)]` -/
def P9010732207487240970.Spec : Prop :=
  ∀ n, P9010732207487240970.a n = A136316 n

end A136316

/-! ## A136316.P1558503967057304291

`-∑[A023456(2*n+1)]`
-/

namespace A136316.P1558503967057304291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023456 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ j ∈ Finset.range (n + 1), f1 j)

end

end A136316.P1558503967057304291

namespace A136316

/-- `-∑[A023456(2*n+1)]` -/
def P1558503967057304291.Spec : Prop :=
  ∀ n, P1558503967057304291.a n = A136316 n

end A136316

/-!
# A136317: a(n) integers with digit sum a(n); a(n+1) is the smallest integer > a(n).

The programs for A136317, there is no canonical definition to state claims against.
-/

/-! ## A136317.P9204932932314569390

`∑[A010170(C(A010168(n²), n))]`
-/

namespace A136317.P9204932932314569390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010170 (Nat.choose (A010168 (n ^ 2)).toNat n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A136317.P9204932932314569390

/-! ## A136317.P10130061754369027150

`eq[2*A105244(n+2), A292091(n+2)]`
-/

namespace A136317.P10130061754369027150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A105244 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292091 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A136317.P10130061754369027150

/-! ## A136317.P6383815082105192288

`eq[A105244(n+1)!, A292091(n+1)]-1`
-/

namespace A136317.P6383815082105192288
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A105244 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292091 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - 1

end

end A136317.P6383815082105192288

/-! ## A136317.P9115347628441313862

`eq[A030101(A007953(5*n+3)), A136400(n)]`
-/

namespace A136317.P9115347628441313862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (A007953 (5 * n + 3)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136400 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A136317.P9115347628441313862

/-!
# A136318: Integers whose binary representation contains exactly two 1s, the 1s not being adjacent.

The programs for A136318, the canonical program `A136318.P1305045410731253751` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A136318 has offset 1).

The definition of A136318 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A136318.P14255093108532833350

`2^(row(n)+2)+2^col(n)`
-/

namespace A136318.P14255093108532833350
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ (SequenceMachineLib.triRow n + 2) + 2 ^ SequenceMachineLib.triCol n

end

end A136318.P14255093108532833350

namespace A136318

/-- `2^(row(n)+2)+2^col(n)` -/
def P14255093108532833350.Spec : Prop :=
  ∀ n, (P14255093108532833350.a n : ℤ) = A136318 (n + 1)

end A136318

/-! ## A136318.P1305045410731253751

`A098354(n+1)+A059268(n)`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A136318

/-- `A098354(n+1)+A059268(n)` -/
def P1305045410731253751.Spec : Prop :=
  ∀ n, P1305045410731253751.a n = A136318 (n + 1)

theorem P1305045410731253751.correct : P1305045410731253751.Spec := by
  intro n
  simp only [A136318, Nat.add_sub_cancel]

end A136318

/-! ## A136318.P18307317774528752901

`A140513(n)+A018900(n+1)`
-/

namespace A136318.P18307317774528752901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140513 n + A018900 (n + 1)

end

end A136318.P18307317774528752901

namespace A136318

/-- `A140513(n)+A018900(n+1)` -/
def P18307317774528752901.Spec : Prop :=
  ∀ n, P18307317774528752901.a n = A136318 (n + 1)

theorem P18307317774528752901.correct : P18307317774528752901.Spec := by
  intro n
  simp only [A136318, Nat.add_sub_cancel, A136318.P18307317774528752901.a, A136318.P1305045410731253751.a, A018900, A018900.P2868698677378612256.a, A059268, A059268.P15217573790077737885.a, A098354, A098354.P12141781683194391342.a, A140513, A140513.P13579608035938851890.a, A002024, A002024.P11700297927830783882.a, A002262, A002262.P17823619022233514403.a, A137688, A137688.P9746695207037186753.a, A003056, A003056.P5318256527314048597.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A136318

/-! ## A136318.P8945433665580895398

`A271709(n)+A175332(n+1)`
-/

namespace A136318.P8945433665580895398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271709 n + A175332 (n + 1)

end

end A136318.P8945433665580895398

namespace A136318

/-- `A271709(n)+A175332(n+1)` -/
def P8945433665580895398.Spec : Prop :=
  ∀ n, P8945433665580895398.a n = A136318 (n + 1)

end A136318

/-! ## A136318.P14343622415068183319

`A059268(n)+2*A140513(n)`
-/

namespace A136318.P14343622415068183319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n + 2 * A140513 n

end

end A136318.P14343622415068183319

namespace A136318

/-- `A059268(n)+2*A140513(n)` -/
def P14343622415068183319.Spec : Prop :=
  ∀ n, P14343622415068183319.a n = A136318 (n + 1)

theorem P14343622415068183319.correct : P14343622415068183319.Spec := by
  intro n
  simp only [A136318, Nat.add_sub_cancel, A136318.P14343622415068183319.a, A136318.P1305045410731253751.a, A059268, A059268.P15217573790077737885.a, A098354, A098354.P12141781683194391342.a, A140513, A140513.P13579608035938851890.a, A018900, A018900.P2868698677378612256.a, A137688, A137688.P9746695207037186753.a, A002024, A002024.P11700297927830783882.a, A002262, A002262.P17823619022233514403.a, A003056, A003056.P5318256527314048597.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A136318

/-! ## A136318.P17075448884048672678

`A018900(n+1)+A173787(n)+A173786(n)`
-/

namespace A136318.P17075448884048672678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018900 (n + 1) + (A173787 n + A173786 n)

end

end A136318.P17075448884048672678

namespace A136318

/-- `A018900(n+1)+A173787(n)+A173786(n)` -/
def P17075448884048672678.Spec : Prop :=
  ∀ n, P17075448884048672678.a n = A136318 (n + 1)

end A136318

/-! ## A136318.P17093863577970310766

`A018900(n+1)+A018900(n+1)-A059268(n)`
-/

namespace A136318.P17093863577970310766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018900 (n + 1) + (A018900 (n + 1) - A059268 n)

end

end A136318.P17093863577970310766

namespace A136318

/-- `A018900(n+1)+A018900(n+1)-A059268(n)` -/
def P17093863577970310766.Spec : Prop :=
  ∀ n, P17093863577970310766.a n = A136318 (n + 1)

theorem P17093863577970310766.correct : P17093863577970310766.Spec := by
  intro n
  simp only [A136318, Nat.add_sub_cancel, A136318.P17093863577970310766.a, A136318.P1305045410731253751.a, A018900, A018900.P2868698677378612256.a, A059268, A059268.P15217573790077737885.a, A098354, A098354.P12141781683194391342.a, A002024, A002024.P11700297927830783882.a, A002262, A002262.P17823619022233514403.a, A140513, A140513.P13579608035938851890.a, A137688, A137688.P9746695207037186753.a, A003056, A003056.P5318256527314048597.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A136318

/-! ## A136318.P5736088473726673410

`A018900(A014132(n+1))`
-/

namespace A136318.P5736088473726673410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018900 (A014132 (n + 1)).toNat

end

end A136318.P5736088473726673410

namespace A136318

/-- `A018900(A014132(n+1))` -/
def P5736088473726673410.Spec : Prop :=
  ∀ n, P5736088473726673410.a n = A136318 (n + 1)

end A136318

/-! ## A136318.P6109094013291276406

`A018900(A002024(n+1)+n+1)`
-/

namespace A136318.P6109094013291276406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018900 (A002024 (n + 1) + (n + 1 : ℤ)).toNat

end

end A136318.P6109094013291276406

namespace A136318

/-- `A018900(A002024(n+1)+n+1)` -/
def P6109094013291276406.Spec : Prop :=
  ∀ n, P6109094013291276406.a n = A136318 (n + 1)

end A136318

/-! ## A136318.P9852112950807112957

`∩[A018900(n+1), A212191(n+1)]`
-/

namespace A136318.P9852112950807112957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018900 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212191 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136318.P9852112950807112957

namespace A136318

/-- `∩[A018900(n+1), A212191(n+1)]` -/
def P9852112950807112957.Spec : Prop :=
  ∀ n, (P9852112950807112957.a n : ℤ) = A136318 (n + 1)

end A136318

/-! ## A136318.P9355419893712093050

`∩[A212191(n+1), A173786(n)]`
-/

namespace A136318.P9355419893712093050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212191 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173786 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136318.P9355419893712093050

namespace A136318

/-- `∩[A212191(n+1), A173786(n)]` -/
def P9355419893712093050.Spec : Prop :=
  ∀ n, (P9355419893712093050.a n : ℤ) = A136318 (n + 1)

end A136318

/-! ## A136318.P14050910256669273158

`A173786(A111650(n+1)+n+1)`
-/

namespace A136318.P14050910256669273158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173786 (A111650 (n + 1) + (n + 1 : ℤ)).toNat

end

end A136318.P14050910256669273158

namespace A136318

/-- `A173786(A111650(n+1)+n+1)` -/
def P14050910256669273158.Spec : Prop :=
  ∀ n, P14050910256669273158.a n = A136318 (n + 1)

end A136318

/-! ## A136318.P2343646636067858442

`∩[A048645(n+1), A212191(n+1)]`
-/

namespace A136318.P2343646636067858442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048645 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212191 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136318.P2343646636067858442

namespace A136318

/-- `∩[A048645(n+1), A212191(n+1)]` -/
def P2343646636067858442.Spec : Prop :=
  ∀ n, (P2343646636067858442.a n : ℤ) = A136318 (n + 1)

end A136318

/-! ## A136318.P7699836838763883049

`∩[A064390(n+1), A212191(n+1)]`
-/

namespace A136318.P7699836838763883049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064390 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212191 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136318.P7699836838763883049

namespace A136318

/-- `∩[A064390(n+1), A212191(n+1)]` -/
def P7699836838763883049.Spec : Prop :=
  ∀ n, (P7699836838763883049.a n : ℤ) = A136318 (n + 1)

end A136318

/-! ## A136318.P14720261205215209172

`∩[A212191(n+1), A390305(n+1)]`
-/

namespace A136318.P14720261205215209172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212191 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390305 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136318.P14720261205215209172

namespace A136318

/-- `∩[A212191(n+1), A390305(n+1)]` -/
def P14720261205215209172.Spec : Prop :=
  ∀ n, (P14720261205215209172.a n : ℤ) = A136318 (n + 1)

end A136318

/-! ## A136318.P12243136995755542255

`∩[A018900(n+1), A340956(n+1)]`
-/

namespace A136318.P12243136995755542255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018900 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340956 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136318.P12243136995755542255

namespace A136318

/-- `∩[A018900(n+1), A340956(n+1)]` -/
def P12243136995755542255.Spec : Prop :=
  ∀ n, (P12243136995755542255.a n : ℤ) = A136318 (n + 1)

end A136318

/-! ## A136318.P7055180391192657448

`∩[A212191(n+1), A340956(n+1)]`
-/

namespace A136318.P7055180391192657448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212191 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340956 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136318.P7055180391192657448

namespace A136318

/-- `∩[A212191(n+1), A340956(n+1)]` -/
def P7055180391192657448.Spec : Prop :=
  ∀ n, (P7055180391192657448.a n : ℤ) = A136318 (n + 1)

end A136318

/-! ## A136318.P15080295239346075902

`∩[A238246(n+1), A340956(n+1)]`
-/

namespace A136318.P15080295239346075902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238246 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340956 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136318.P15080295239346075902

namespace A136318

/-- `∩[A238246(n+1), A340956(n+1)]` -/
def P15080295239346075902.Spec : Prop :=
  ∀ n, (P15080295239346075902.a n : ℤ) = A136318 (n + 1)

end A136318

/-! ## A136318.P11657789676918575723

`∩[A043682(n+1), A173786(n)]`
-/

namespace A136318.P11657789676918575723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043682 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173786 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136318.P11657789676918575723

namespace A136318

/-- `∩[A043682(n+1), A173786(n)]` -/
def P11657789676918575723.Spec : Prop :=
  ∀ n, (P11657789676918575723.a n : ℤ) = A136318 (n + 1)

end A136318

/-! ## A136318.P7870016855731977819

`∩[A018900(n+1), A043682(n+1)]`
-/

namespace A136318.P7870016855731977819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018900 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043682 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136318.P7870016855731977819

namespace A136318

/-- `∩[A018900(n+1), A043682(n+1)]` -/
def P7870016855731977819.Spec : Prop :=
  ∀ n, (P7870016855731977819.a n : ℤ) = A136318 (n + 1)

end A136318

/-!
# A136320: Terms of A047241 swapped in pairs.

The programs for A136320, the canonical program `A136320.P5739439095486049709` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A136320 has offset 0).

The definition of A136320 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A136320.P5739439095486049709

`6*n-a(n-1)-2` with `a(0)=3`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A136320

/-- `6*n-a(n-1)-2` -/
def P5739439095486049709.Spec : Prop :=
  ∀ n, P5739439095486049709.a n = A136320 n

theorem P5739439095486049709.correct : P5739439095486049709.Spec := by
  intro n
  simp only [A136320]

end A136320

/-! ## A136320.P7431784986119077688

`or(1, 3*xor(1, n))`
-/

namespace A136320.P7431784986119077688
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (3 * Nat.xor 1 n)

end

end A136320.P7431784986119077688

namespace A136320

/-- `or(1, 3*xor(1, n))` -/
def P7431784986119077688.Spec : Prop :=
  ∀ n, (P7431784986119077688.a n : ℤ) = A136320 n

end A136320

/-! ## A136320.P3471603962664213566

`a(n-2)+6` with `a(0)=3, a(1)=1`
-/

namespace A136320.P3471603962664213566
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3, 1] fun n a =>
  a (n - 2) + 6

end

end A136320.P3471603962664213566

namespace A136320

/-- `a(n-2)+6` -/
def P3471603962664213566.Spec : Prop :=
  ∀ n, (P3471603962664213566.a n : ℤ) = A136320 n

end A136320

/-! ## A136320.P3363427997401994825

`n%2+3*xor(1, n)`
-/

namespace A136320.P3363427997401994825
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2 + 3 * Nat.xor 1 n

end

end A136320.P3363427997401994825

namespace A136320

/-- `n%2+3*xor(1, n)` -/
def P3363427997401994825.Spec : Prop :=
  ∀ n, (P3363427997401994825.a n : ℤ) = A136320 n

end A136320

/-! ## A136320.P1324066300831021865

`and(1, n)+3*xor(1, n)`
-/

namespace A136320.P1324066300831021865
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 n + 3 * Nat.xor 1 n

end

end A136320.P1324066300831021865

namespace A136320

/-- `and(1, n)+3*xor(1, n)` -/
def P1324066300831021865.Spec : Prop :=
  ∀ n, (P1324066300831021865.a n : ℤ) = A136320 n

end A136320

/-! ## A136320.P12680999168616024367

`∑[6-a(n-1)]` with `a(0)=3, a(1)=-2`
-/

namespace A136320.P12680999168616024367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3, -2] fun n f1 =>
  6 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A136320.P12680999168616024367

namespace A136320

/-- `∑[6-a(n-1)]` -/
def P12680999168616024367.Spec : Prop :=
  ∀ n, P12680999168616024367.a n = A136320 n

end A136320

/-! ## A136320.P17006295798427576304

`∑[∑[ogf((3-2x+5x^2)/(1+x))]]`
-/

namespace A136320.P17006295798427576304
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -2, 5] [1, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A136320.P17006295798427576304

namespace A136320

/-- `∑[∑[ogf((3-2x+5x^2)/(1+x))]]` -/
def P17006295798427576304.Spec : Prop :=
  ∀ n, P17006295798427576304.a n = A136320 n

end A136320

/-! ## A136320.P3628876314604875795

`ogf((3-2x+5x^2)/(1-x-x^2+x^3))`
-/

namespace A136320.P3628876314604875795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -2, 5] [1, -1, -1, 1] n

end

end A136320.P3628876314604875795

namespace A136320

/-- `ogf((3-2x+5x^2)/(1-x-x^2+x^3))` -/
def P3628876314604875795.Spec : Prop :=
  ∀ n, P3628876314604875795.a n = A136320 n

end A136320

/-! ## A136320.P6720515808242704128

`6-floor(-a(n-2))` with `a(0)=3, a(1)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A136320.P6720515808242704128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 1] fun n a =>
  6 - (-a (n - 2))

end

end A136320.P6720515808242704128

namespace A136320

/-- `6-floor(-a(n-2))` -/
def P6720515808242704128.Spec : Prop :=
  ∀ n, P6720515808242704128.a n = A136320 n

end A136320

/-! ## A136320.P18265457869015986910

`6-ceil(-a(n-2))` with `a(0)=3, a(1)=1`

`ceil` is left out, it is the identity on integers.
-/

namespace A136320.P18265457869015986910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 1] fun n a =>
  6 - (-a (n - 2))

end

end A136320.P18265457869015986910

namespace A136320

/-- `6-ceil(-a(n-2))` -/
def P18265457869015986910.Spec : Prop :=
  ∀ n, P18265457869015986910.a n = A136320 n

end A136320

/-! ## A136320.P9561244146390653680

`6-round(-a(n-2))` with `a(0)=3, a(1)=1`

`round` is left out, it is the identity on integers.
-/

namespace A136320.P9561244146390653680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 1] fun n a =>
  6 - (-a (n - 2))

end

end A136320.P9561244146390653680

namespace A136320

/-- `6-round(-a(n-2))` -/
def P9561244146390653680.Spec : Prop :=
  ∀ n, P9561244146390653680.a n = A136320 n

end A136320

/-! ## A136320.P1659755604940064576

`3*or(1, n)-Δ[or(1, n)]`
-/

namespace A136320.P1659755604940064576
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * Nat.lor 1 n : ℤ) - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A136320.P1659755604940064576

namespace A136320

/-- `3*or(1, n)-Δ[or(1, n)]` -/
def P1659755604940064576.Spec : Prop :=
  ∀ n, P1659755604940064576.a n = A136320 n

end A136320

/-! ## A136320.P17069833652062168360

`∑[5*(-1)^n+3]-5`
-/

namespace A136320.P17069833652062168360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * (-1) ^ n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 5

end

end A136320.P17069833652062168360

namespace A136320

/-- `∑[5*(-1)^n+3]-5` -/
def P17069833652062168360.Spec : Prop :=
  ∀ n, P17069833652062168360.a n = A136320 n

end A136320

/-! ## A136320.P14634982603153231313

`A047241(xor(1, n)+1)`
-/

namespace A136320.P14634982603153231313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047241 (Nat.xor 1 n + 1)

end

end A136320.P14634982603153231313

namespace A136320

/-- `A047241(xor(1, n)+1)` -/
def P14634982603153231313.Spec : Prop :=
  ∀ n, P14634982603153231313.a n = A136320 n

end A136320

/-! ## A136320.P16986326433952687023

`or(1, A004443(2*n)+n)`
-/

namespace A136320.P16986326433952687023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A004443 (2 * n) + (n : ℤ))

end

end A136320.P16986326433952687023

namespace A136320

/-- `or(1, A004443(2*n)+n)` -/
def P16986326433952687023.Spec : Prop :=
  ∀ n, P16986326433952687023.a n = A136320 n

end A136320

/-! ## A136320.P3388439118512895004

`A047241(A004442(n)+1)`
-/

namespace A136320.P3388439118512895004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047241 (A004442 n + 1).toNat

end

end A136320.P3388439118512895004

namespace A136320

/-- `A047241(A004442(n)+1)` -/
def P3388439118512895004.Spec : Prop :=
  ∀ n, P3388439118512895004.a n = A136320 n

end A136320

/-! ## A136320.P11796240331337258481

`A047241(A014681(n+1))`
-/

namespace A136320.P11796240331337258481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047241 (A014681 (n + 1)).toNat

end

end A136320.P11796240331337258481

namespace A136320

/-- `A047241(A014681(n+1))` -/
def P11796240331337258481.Spec : Prop :=
  ∀ n, P11796240331337258481.a n = A136320 n

end A136320

/-! ## A136320.P14933457202847521780

`A047241(A103889(n+1))`
-/

namespace A136320.P14933457202847521780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047241 (A103889 (n + 1)).toNat

end

end A136320.P14933457202847521780

namespace A136320

/-- `A047241(A103889(n+1))` -/
def P14933457202847521780.Spec : Prop :=
  ∀ n, P14933457202847521780.a n = A136320 n

end A136320

/-! ## A136320.P926639669886823763

`A004771(n)%A168420(n+1)`
-/

namespace A136320.P926639669886823763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004771 n) (A168420 (n + 1))

end

end A136320.P926639669886823763

namespace A136320

/-- `A004771(n)%A168420(n+1)` -/
def P926639669886823763.Spec : Prop :=
  ∀ n, P926639669886823763.a n = A136320 n

end A136320

/-! ## A136320.P12589212625684314824

`A166639(n)%A168326(n+1)`
-/

namespace A136320.P12589212625684314824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A166639 n) (A168326 (n + 1))

end

end A136320.P12589212625684314824

namespace A136320

/-- `A166639(n)%A168326(n+1)` -/
def P12589212625684314824.Spec : Prop :=
  ∀ n, P12589212625684314824.a n = A136320 n

end A136320

/-!
# A136321: Triangular sequence of coefficients of a polynomial recursion for C_n and B_n Cartan matrices: p(x, n) = (-2 + x)*p(x, n - 1) - p(x, n - 2) p(x,n)=x2-4*x+4-m:m=5;(related sequence: A_n:m=1,G_n,m=3,B_n,C_n,m=2) This triangular sequence is an extension to the Cartan pattern of matrices.

The programs for A136321, there is no canonical definition to state claims against.
-/

/-! ## A136321.P8017717192002362757

`A136329(n+1)+A110162(n)-A053122(n)`
-/

namespace A136321.P8017717192002362757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136329 (n + 1) + (A110162 n - A053122 n)

end

end A136321.P8017717192002362757

/-!
# A136322: a(n) is the ceiling of 2^n * (sqrt(2)-1), i.e., a(n)-1 is the number whose binary representation gives the first n bits of sqrt(2)-1.

The programs for A136322, there is no canonical definition to state claims against.
-/

/-! ## A136322.P3081987424162810253

`∑[A190660(2*n)]`
-/

namespace A136322.P3081987424162810253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190660 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A136322.P3081987424162810253

/-! ## A136322.P3688883972720646906

`A126726(2*n+3)`
-/

namespace A136322.P3688883972720646906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126726 (2 * n + 3)

end

end A136322.P3688883972720646906

/-! ## A136322.P774530480717151376

`A136417(2*n+3)-2^(n+1)`
-/

namespace A136322.P774530480717151376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136417 (2 * n + 3) - (2 ^ (n + 1) : ℤ)

end

end A136322.P774530480717151376

/-! ## A136322.P921540725077052398

`ceil(sqrt(A000079(2*n+3)))-2^(n+1)`
-/

namespace A136322.P921540725077052398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A000079 (2 * n + 3) : ℝ)⌉ - (2 ^ (n + 1) : ℤ)

end

end A136322.P921540725077052398

/-! ## A136322.P11907000143015231171

`A084188(n+1)-A000225(n+1)`
-/

namespace A136322.P11907000143015231171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084188 (n + 1) - A000225 (n + 1)

end

end A136322.P11907000143015231171

/-! ## A136322.P16763568423483021707

`A188917(2*n+3)-A188917(2*(n+1))`
-/

namespace A136322.P16763568423483021707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188917 (2 * n + 3) - A188917 (2 * (n + 1))

end

end A136322.P16763568423483021707

/-!
# A136323: Decimal expansion of e+2*Pi-9.

The programs for A136323, there is no canonical definition to state claims against.
-/

/-! ## A136323.P11260010753181849837

`A019313(n+2)`
-/

namespace A136323.P11260010753181849837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019313 (n + 2)

end

end A136323.P11260010753181849837

/-!
# A136324: Interleaving of A002450(n), A002450(n) + 1.

The programs for A136324, the canonical program `A136324.P17172668135274452000` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A136324 has offset 0).

The definition of A136324 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A136324.P17172668135274452000

`5*a(n-2)-4*a(n-4)` with `a(0)=0, a(1)=1, a(2)=1, a(3)=2`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A136324

/-- `5*a(n-2)-4*a(n-4)` -/
def P17172668135274452000.Spec : Prop :=
  ∀ n, P17172668135274452000.a n = A136324 n

theorem P17172668135274452000.correct : P17172668135274452000.Spec := by
  intro n
  simp only [A136324]

end A136324

/-! ## A136324.P11749775681927667157

`1/6-1/2*(-1)^n+1/4*2^n+1/12*(-2)^n`
-/

namespace A136324.P11749775681927667157
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 6 - (1 : ℚ) / 2 * ((-1) ^ n : ℚ) + (1 : ℚ) / 4 * (2 ^ n : ℚ) + (1 : ℚ) / 12 * ((-2) ^ n : ℚ)

end

end A136324.P11749775681927667157

namespace A136324

/-- `1/6-1/2*(-1)^n+1/4*2^n+1/12*(-2)^n` -/
def P11749775681927667157.Spec : Prop :=
  ∀ n, P11749775681927667157.a n = (A136324 n : ℚ)

theorem P11749775681927667157.correct : P11749775681927667157.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A136324, Nat.add_sub_cancel, A136324.P11749775681927667157.a, A136324.P17172668135274452000.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h2 := ih (m + 2) (by omega)
      have h4 := ih m (by omega)
      simp only [A136324, Nat.add_sub_cancel, A136324.P11749775681927667157.a, A136324.P17172668135274452000.a, SequenceMachineLib.memo_apply] at h2 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 2 = m + 2 by omega, show m + 4 - 4 = m by omega, show m + 2 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h2 h4 ⊢
      rw [← h2, ← h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A136324

/-! ## A136324.P2994400231210221891

`ogf((x+x^2-3x^3)/(1-5x^2+4x^4))`
-/

namespace A136324.P2994400231210221891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 1, -3] [1, 0, -5, 0, 4] n

end

end A136324.P2994400231210221891

namespace A136324

/-- `ogf((x+x^2-3x^3)/(1-5x^2+4x^4))` -/
def P2994400231210221891.Spec : Prop :=
  ∀ n, P2994400231210221891.a n = A136324 n

end A136324

/-! ## A136324.P83349216250474779

`ceil(A193652(n)/2)`
-/

namespace A136324.P83349216250474779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A193652 n : ℚ) / 2⌉

end

end A136324.P83349216250474779

namespace A136324

/-- `ceil(A193652(n)/2)` -/
def P83349216250474779.Spec : Prop :=
  ∀ n, P83349216250474779.a n = A136324 n

end A136324

/-! ## A136324.P15701527947570096850

`A133684(comp[or(2, n)])`
-/

namespace A136324.P15701527947570096850
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133684 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A136324.P15701527947570096850

namespace A136324

/-- `A133684(comp[or(2, n)])` -/
def P15701527947570096850.Spec : Prop :=
  ∀ n, P15701527947570096850.a n = A136324 n

end A136324

/-! ## A136324.P322663699880068411

`A094359(n)/gcd(2, n)`
-/

namespace A136324.P322663699880068411
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A094359 n : ℚ) / (Nat.gcd 2 n : ℚ)

end

end A136324.P322663699880068411

namespace A136324

/-- `A094359(n)/gcd(2, n)` -/
def P322663699880068411.Spec : Prop :=
  ∀ n, P322663699880068411.a n = (A136324 n : ℚ)

end A136324

/-! ## A136324.P16824118575318185047

`ceil(A001045(n)/(n%2+1))`
-/

namespace A136324.P16824118575318185047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A001045 n : ℚ) / ((n % 2 + 1 : ℕ) : ℚ)⌉

end

end A136324.P16824118575318185047

namespace A136324

/-- `ceil(A001045(n)/(n%2+1))` -/
def P16824118575318185047.Spec : Prop :=
  ∀ n, P16824118575318185047.a n = A136324 n

end A136324

/-! ## A136324.P10985236065773545573

`A133684(A042948(n))`
-/

namespace A136324.P10985236065773545573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133684 (A042948 n).toNat

end

end A136324.P10985236065773545573

namespace A136324

/-- `A133684(A042948(n))` -/
def P10985236065773545573.Spec : Prop :=
  ∀ n, P10985236065773545573.a n = A136324 n

end A136324

/-! ## A136324.P11757596583656215334

`A094359(n)/A040001(n)`
-/

namespace A136324.P11757596583656215334
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A094359 n : ℚ) / (A040001 n : ℚ)

end

end A136324.P11757596583656215334

namespace A136324

/-- `A094359(n)/A040001(n)` -/
def P11757596583656215334.Spec : Prop :=
  ∀ n, P11757596583656215334.a n = (A136324 n : ℚ)

end A136324

/-! ## A136324.P1239148154288475085

`A155944(n)/A000034(n)`
-/

namespace A136324.P1239148154288475085
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A155944 n : ℚ) / (A000034 n : ℚ)

end

end A136324.P1239148154288475085

namespace A136324

/-- `A155944(n)/A000034(n)` -/
def P1239148154288475085.Spec : Prop :=
  ∀ n, P1239148154288475085.a n = (A136324 n : ℚ)

end A136324

/-! ## A136324.P5012037121523580143

`gcd(A094359(n), A155944(n))`
-/

namespace A136324.P5012037121523580143
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A094359 n) (A155944 n)

end

end A136324.P5012037121523580143

namespace A136324

/-- `gcd(A094359(n), A155944(n))` -/
def P5012037121523580143.Spec : Prop :=
  ∀ n, (P5012037121523580143.a n : ℤ) = A136324 n

end A136324

/-! ## A136324.P2929550587469545081

`ceil(A001045(n)/A000034(n))`
-/

namespace A136324.P2929550587469545081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A001045 n : ℚ) / (A000034 n : ℚ)⌉

end

end A136324.P2929550587469545081

namespace A136324

/-- `ceil(A001045(n)/A000034(n))` -/
def P2929550587469545081.Spec : Prop :=
  ∀ n, P2929550587469545081.a n = A136324 n

end A136324

/-! ## A136324.P1878397565747548965

`A133684(A042963(n+1)-1)`
-/

namespace A136324.P1878397565747548965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133684 (A042963 (n + 1) - 1).toNat

end

end A136324.P1878397565747548965

namespace A136324

/-- `A133684(A042963(n+1)-1)` -/
def P1878397565747548965.Spec : Prop :=
  ∀ n, P1878397565747548965.a n = A136324 n

end A136324

/-! ## A136324.P6710273695814686735

`A133684(A109613(n)-1+n)`
-/

namespace A136324.P6710273695814686735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133684 (A109613 n - 1 + (n : ℤ)).toNat

end

end A136324.P6710273695814686735

namespace A136324

/-- `A133684(A109613(n)-1+n)` -/
def P6710273695814686735.Spec : Prop :=
  ∀ n, P6710273695814686735.a n = A136324 n

end A136324

/-! ## A136324.P3428987861899670930

`A133684(n-(1-A109613(n)))`
-/

namespace A136324.P3428987861899670930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133684 ((n : ℤ) - (1 - A109613 n)).toNat

end

end A136324.P3428987861899670930

namespace A136324

/-- `A133684(n-(1-A109613(n)))` -/
def P3428987861899670930.Spec : Prop :=
  ∀ n, P3428987861899670930.a n = A136324 n

end A136324

/-! ## A136324.P16184109116886846643

`A133684(2*n-A000035(n))`
-/

namespace A136324.P16184109116886846643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133684 ((2 * n : ℤ) - A000035 n).toNat

end

end A136324.P16184109116886846643

namespace A136324

/-- `A133684(2*n-A000035(n))` -/
def P16184109116886846643.Spec : Prop :=
  ∀ n, P16184109116886846643.a n = A136324 n

end A136324

/-! ## A136324.P15039097691502832446

`A277955(n)%A080880(n)`
-/

namespace A136324.P15039097691502832446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A277955 n) (A080880 n)

end

end A136324.P15039097691502832446

namespace A136324

/-- `A277955(n)%A080880(n)` -/
def P15039097691502832446.Spec : Prop :=
  ∀ n, P15039097691502832446.a n = A136324 n

end A136324

/-! ## A136324.P8877963562699825741

`(A062510(n)-A000975(n))/A000034(n)`
-/

namespace A136324.P8877963562699825741
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062510 n - A000975 n : ℚ) / (A000034 n : ℚ)

end

end A136324.P8877963562699825741

namespace A136324

/-- `(A062510(n)-A000975(n))/A000034(n)` -/
def P8877963562699825741.Spec : Prop :=
  ∀ n, P8877963562699825741.a n = (A136324 n : ℚ)

end A136324

/-! ## A136324.P3038235395410641669

`A155944(n)/(A153643(n+1)-A155944(n+1))`
-/

namespace A136324.P3038235395410641669
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A155944 n : ℚ) / (A153643 (n + 1) - A155944 (n + 1) : ℚ)

end

end A136324.P3038235395410641669

namespace A136324

/-- `A155944(n)/(A153643(n+1)-A155944(n+1))` -/
def P3038235395410641669.Spec : Prop :=
  ∀ n, P3038235395410641669.a n = (A136324 n : ℚ)

end A136324

/-! ## A136324.P8928455189329565468

`A137208(n)%A052531(n)`
-/

namespace A136324.P8928455189329565468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A137208 n) (A052531 n)

end

end A136324.P8928455189329565468

namespace A136324

/-- `A137208(n)%A052531(n)` -/
def P8928455189329565468.Spec : Prop :=
  ∀ n, P8928455189329565468.a n = A136324 n

end A136324

/-!
# A136325: a(n) = 8*a(n-1)-a(n-2) with a(0)=0 and a(1)=3.

The programs for A136325, the canonical program `A136325.P3497085767817226290` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A136325 has offset 0).

The definition of A136325 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `8*a(n-1)-a(n-2)` (program `A136325.P3497085767817226290`, by `A136325.P3497085767817226290.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A136325.P3497085767817226290

`8*a(n-1)-a(n-2)` with `a(0)=0, a(1)=3`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A136325

/-- `8*a(n-1)-a(n-2)` -/
def P3497085767817226290.Spec : Prop :=
  ∀ n, P3497085767817226290.a n = A136325 n

theorem P3497085767817226290.correct : P3497085767817226290.Spec := by
  intro n
  simp only [A136325]

end A136325

/-! ## A136325.P17929896509746021810

`3*A001090(n)`
-/

namespace A136325.P17929896509746021810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A001090 n

end

end A136325.P17929896509746021810

namespace A136325

/-- `3*A001090(n)` -/
def P17929896509746021810.Spec : Prop :=
  ∀ n, P17929896509746021810.a n = A136325 n

end A136325

/-! ## A136325.P11127474664204691997

`3/2*((4+sqrt(15))^n-(4-sqrt(15))^n)/sqrt(15)`
-/

namespace A136325.P11127474664204691997
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((3 : ℚ) / 2 : ℝ) * ((4 + Real.sqrt (15 : ℝ)) ^ n - (4 - Real.sqrt (15 : ℝ)) ^ n) / Real.sqrt (15 : ℝ)

end

end A136325.P11127474664204691997

namespace A136325

/-- `3/2*((4+sqrt(15))^n-(4-sqrt(15))^n)/sqrt(15)` -/
def P11127474664204691997.Spec : Prop :=
  ∀ n, P11127474664204691997.a n = (A136325 n : ℝ)

theorem P11127474664204691997.correct : P11127474664204691997.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A136325, Nat.add_sub_cancel, A136325.P11127474664204691997.a, A136325.P3497085767817226290.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A136325, Nat.add_sub_cancel, A136325.P11127474664204691997.a, A136325.P3497085767817226290.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A136325

/-! ## A136325.P8923271234603060255

`ogf(3x/(1-8x+x^2))`
-/

namespace A136325.P8923271234603060255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 3] [1, -8, 1] n

end

end A136325.P8923271234603060255

namespace A136325

/-- `ogf(3x/(1-8x+x^2))` -/
def P8923271234603060255.Spec : Prop :=
  ∀ n, P8923271234603060255.a n = A136325 n

end A136325

/-! ## A136325.P15653754904842499943

`3*record[A199336(n+1)-A237262(n+1)]`
-/

namespace A136325.P15653754904842499943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199336 (n + 1) - A237262 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A136325.P15653754904842499943

namespace A136325

/-- `3*record[A199336(n+1)-A237262(n+1)]` -/
def P15653754904842499943.Spec : Prop :=
  ∀ n, P15653754904842499943.a n = A136325 n

end A136325

/-! ## A136325.P17645308689815150785

`record[A199336(n+1)+A199336(n+1)-A077248(n)]`
-/

namespace A136325.P17645308689815150785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199336 (n + 1) + (A199336 (n + 1) - A077248 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A136325.P17645308689815150785

namespace A136325

/-- `record[A199336(n+1)+A199336(n+1)-A077248(n)]` -/
def P17645308689815150785.Spec : Prop :=
  ∀ n, P17645308689815150785.a n = A136325 n

end A136325

/-! ## A136325.P5093946791420514041

`3/4*A273053(n+1)`
-/

namespace A136325.P5093946791420514041
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) / 4 * (A273053 (n + 1) : ℚ)

end

end A136325.P5093946791420514041

namespace A136325

/-- `3/4*A273053(n+1)` -/
def P5093946791420514041.Spec : Prop :=
  ∀ n, P5093946791420514041.a n = (A136325 n : ℚ)

end A136325

/-! ## A136325.P14204104108382456343

`A070997(n)-A001091(n)`
-/

namespace A136325.P14204104108382456343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070997 n - A001091 n

end

end A136325.P14204104108382456343

namespace A136325

/-- `A070997(n)-A001091(n)` -/
def P14204104108382456343.Spec : Prop :=
  ∀ n, P14204104108382456343.a n = A136325 n

end A136325

/-! ## A136325.P14676578638844641811

`A105426(n)-A341929(n)`
-/

namespace A136325.P14676578638844641811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105426 n - A341929 n

end

end A136325.P14676578638844641811

namespace A136325

/-- `A105426(n)-A341929(n)` -/
def P14676578638844641811.Spec : Prop :=
  ∀ n, P14676578638844641811.a n = A136325 n

end A136325

/-! ## A136325.P439576473920916179

`record[Δ[A182432(A002265(n))]]`
-/

namespace A136325.P439576473920916179
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182432 (A002265 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A136325.P439576473920916179

namespace A136325

/-- `record[Δ[A182432(A002265(n))]]` -/
def P439576473920916179.Spec : Prop :=
  ∀ n, P439576473920916179.a n = A136325 n

end A136325

/-! ## A136325.P3331932817133714778

`Δ[A001090(n)]-A001091(n)`
-/

namespace A136325.P3331932817133714778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001090 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A001091 n

end

end A136325.P3331932817133714778

namespace A136325

/-- `Δ[A001090(n)]-A001091(n)` -/
def P3331932817133714778.Spec : Prop :=
  ∀ n, P3331932817133714778.a n = A136325 n

end A136325

/-! ## A136325.P10819174994708420570

`A001090(n+1)-A105426(n)`
-/

namespace A136325.P10819174994708420570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001090 (n + 1) - A105426 n

end

end A136325.P10819174994708420570

namespace A136325

/-- `A001090(n+1)-A105426(n)` -/
def P10819174994708420570.Spec : Prop :=
  ∀ n, P10819174994708420570.a n = A136325 n

end A136325

/-! ## A136325.P8508841573237982220

`A273053(n+1)-A001090(n)`
-/

namespace A136325.P8508841573237982220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273053 (n + 1) - A001090 n

end

end A136325.P8508841573237982220

namespace A136325

/-- `A273053(n+1)-A001090(n)` -/
def P8508841573237982220.Spec : Prop :=
  ∀ n, P8508841573237982220.a n = A136325 n

end A136325

/-! ## A136325.P9552353437292318445

`A041023(2*n)-A001091(n)`
-/

namespace A136325.P9552353437292318445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041023 (2 * n) - A001091 n

end

end A136325.P9552353437292318445

namespace A136325

/-- `A041023(2*n)-A001091(n)` -/
def P9552353437292318445.Spec : Prop :=
  ∀ n, P9552353437292318445.a n = A136325 n

end A136325

/-! ## A136325.P4737075697363195214

`A070997(n)-A080871(2*n)`
-/

namespace A136325.P4737075697363195214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070997 n - A080871 (2 * n)

end

end A136325.P4737075697363195214

namespace A136325

/-- `A070997(n)-A080871(2*n)` -/
def P4737075697363195214.Spec : Prop :=
  ∀ n, P4737075697363195214.a n = A136325 n

end A136325

/-! ## A136325.P7816948351531492760

`2*A077245(n)-A077243(n)`
-/

namespace A136325.P7816948351531492760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A077245 n - A077243 n

end

end A136325.P7816948351531492760

namespace A136325

/-- `2*A077245(n)-A077243(n)` -/
def P7816948351531492760.Spec : Prop :=
  ∀ n, P7816948351531492760.a n = A136325 n

end A136325

/-! ## A136325.P16171002530101416335

`record[Δ[A182432(A182434(n+1))]]`
-/

namespace A136325.P16171002530101416335
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182432 (A182434 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A136325.P16171002530101416335

namespace A136325

/-- `record[Δ[A182432(A182434(n+1))]]` -/
def P16171002530101416335.Spec : Prop :=
  ∀ n, P16171002530101416335.a n = A136325 n

end A136325

/-! ## A136325.P15596908373482791400

`A080871(2*n+1)-A001091(n)`
-/

namespace A136325.P15596908373482791400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080871 (2 * n + 1) - A001091 n

end

end A136325.P15596908373482791400

namespace A136325

/-- `A080871(2*n+1)-A001091(n)` -/
def P15596908373482791400.Spec : Prop :=
  ∀ n, P15596908373482791400.a n = A136325 n

end A136325

/-! ## A136325.P4043881869579917559

`A145542(2*n+1)-A001091(n)`
-/

namespace A136325.P4043881869579917559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145542 (2 * n + 1) - A001091 n

end

end A136325.P4043881869579917559

namespace A136325

/-- `A145542(2*n+1)-A001091(n)` -/
def P4043881869579917559.Spec : Prop :=
  ∀ n, P4043881869579917559.a n = A136325 n

end A136325

/-! ## A136325.P2029305046508091323

`A199336(2*n+1)-A341929(n)`
-/

namespace A136325.P2029305046508091323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199336 (2 * n + 1) - A341929 n

end

end A136325.P2029305046508091323

namespace A136325

/-- `A199336(2*n+1)-A341929(n)` -/
def P2029305046508091323.Spec : Prop :=
  ∀ n, P2029305046508091323.a n = A136325 n

end A136325

/-!
# A136326: a(n) = a(n-1) + 4a(n-2) - 4a(n-3).

The programs for A136326, the canonical program `A136326.P9140108419249409803` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A136326 has offset 0).

The definition of A136326 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+4*a(n-2)-4*a(n-3)` (program `A136326.P9140108419249409803`, by `A136326.P9140108419249409803.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A136326.P9140108419249409803

`a(n-1)+4*a(n-2)-4*a(n-3)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=9`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A136326

/-- `a(n-1)+4*a(n-2)-4*a(n-3)` -/
def P9140108419249409803.Spec : Prop :=
  ∀ n, P9140108419249409803.a n = A136326 n

theorem P9140108419249409803.correct : P9140108419249409803.Spec := by
  intro n
  simp only [A136326]

end A136326

/-! ## A136326.P15683581699785402247

`∑[ogf((1+x-2x^2+x^3)/(1-4x^2))]`
-/

namespace A136326.P15683581699785402247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, -2, 1] [1, 0, -4] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A136326.P15683581699785402247

namespace A136326

/-- `∑[ogf((1+x-2x^2+x^3)/(1-4x^2))]` -/
def P15683581699785402247.Spec : Prop :=
  ∀ n, P15683581699785402247.a n = A136326 n

end A136326

/-! ## A136326.P1869868569822389936

`ogf((1+x-2x^2+x^3)/(1-x-4x^2+4x^3))`
-/

namespace A136326.P1869868569822389936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, -2, 1] [1, -1, -4, 4] n

end

end A136326.P1869868569822389936

namespace A136326

/-- `ogf((1+x-2x^2+x^3)/(1-x-4x^2+4x^3))` -/
def P1869868569822389936.Spec : Prop :=
  ∀ n, P1869868569822389936.a n = A136326 n

end A136326

/-! ## A136326.P5539618969812751700

`4*a(n-2)+1` with `a(0)=1, a(1)=2, a(2)=4`
-/

namespace A136326.P5539618969812751700
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 4] fun n a =>
  4 * a (n - 2) + 1

end

end A136326.P5539618969812751700

namespace A136326

/-- `4*a(n-2)+1` -/
def P5539618969812751700.Spec : Prop :=
  ∀ n, (P5539618969812751700.a n : ℤ) = A136326 n

end A136326

/-! ## A136326.P15598939457028586318

`or(1, 4*a(n-2))` with `a(0)=1, a(1)=2, a(2)=4`
-/

namespace A136326.P15598939457028586318
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 4] fun n a =>
  Nat.lor 1 (4 * a (n - 2))

end

end A136326.P15598939457028586318

namespace A136326

/-- `or(1, 4*a(n-2))` -/
def P15598939457028586318.Spec : Prop :=
  ∀ n, (P15598939457028586318.a n : ℤ) = A136326 n

end A136326

/-! ## A136326.P5788681190190757286

`xor(1, 4*a(n-2))` with `a(0)=1, a(1)=2, a(2)=4`
-/

namespace A136326.P5788681190190757286
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 4] fun n a =>
  Nat.xor 1 (4 * a (n - 2))

end

end A136326.P5788681190190757286

namespace A136326

/-- `xor(1, 4*a(n-2))` -/
def P5788681190190757286.Spec : Prop :=
  ∀ n, (P5788681190190757286.a n : ℤ) = A136326 n

end A136326

/-! ## A136326.P4268782671688750944

`∑[4*a(n-2)]` with `a(0)=1, a(1)=1, a(2)=2, a(3)=5`
-/

namespace A136326.P4268782671688750944
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 2, 5] fun n f1 =>
  4 * f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A136326.P4268782671688750944

namespace A136326

/-- `∑[4*a(n-2)]` -/
def P4268782671688750944.Spec : Prop :=
  ∀ n, (P4268782671688750944.a n : ℤ) = A136326 n

end A136326

/-! ## A136326.P485673393444513582

`5-4*(1-a(n-2))` with `a(0)=1, a(1)=2, a(2)=4`
-/

namespace A136326.P485673393444513582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 4] fun n a =>
  5 - 4 * (1 - a (n - 2))

end

end A136326.P485673393444513582

namespace A136326

/-- `5-4*(1-a(n-2))` -/
def P485673393444513582.Spec : Prop :=
  ∀ n, P485673393444513582.a n = A136326 n

end A136326

/-! ## A136326.P4957735226422783028

`A104721(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A136326.P4957735226422783028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A104721 (n - 1) + a (n - 1)

end

end A136326.P4957735226422783028

namespace A136326

/-- `A104721(n-1)+a(n-1)` -/
def P4957735226422783028.Spec : Prop :=
  ∀ n, P4957735226422783028.a n = A136326 n

end A136326

/-! ## A136326.P18233218498850835839

`A305750(n)+A061547(n+1)`
-/

namespace A136326.P18233218498850835839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305750 n + A061547 (n + 1)

end

end A136326.P18233218498850835839

namespace A136326

/-- `A305750(n)+A061547(n+1)` -/
def P18233218498850835839.Spec : Prop :=
  ∀ n, P18233218498850835839.a n = A136326 n

end A136326

/-! ## A136326.P5715875329341531085

`∑[(A134683(n)+A034008(n))/2]`
-/

namespace A136326.P5715875329341531085
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A134683 n + A034008 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A136326.P5715875329341531085

namespace A136326

/-- `∑[(A134683(n)+A034008(n))/2]` -/
def P5715875329341531085.Spec : Prop :=
  ∀ n, P5715875329341531085.a n = (A136326 n : ℚ)

end A136326

/-! ## A136326.P1920281799972374215

`A305750(n+1)+A305750(n)-1`
-/

namespace A136326.P1920281799972374215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305750 (n + 1) + (A305750 n - 1)

end

end A136326.P1920281799972374215

namespace A136326

/-- `A305750(n+1)+A305750(n)-1` -/
def P1920281799972374215.Spec : Prop :=
  ∀ n, P1920281799972374215.a n = A136326 n

end A136326

/-! ## A136326.P8203928417454436825

`A000079(n)+A000079(n)-A136336(n)`
-/

namespace A136326.P8203928417454436825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n + (A000079 n - A136336 n)

end

end A136326.P8203928417454436825

namespace A136326

/-- `A000079(n)+A000079(n)-A136336(n)` -/
def P8203928417454436825.Spec : Prop :=
  ∀ n, P8203928417454436825.a n = A136326 n

end A136326

/-! ## A136326.P12376295150759773860

`A042950(n)-A305750(n)`
-/

namespace A136326.P12376295150759773860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042950 n - A305750 n

end

end A136326.P12376295150759773860

namespace A136326

/-- `A042950(n)-A305750(n)` -/
def P12376295150759773860.Spec : Prop :=
  ∀ n, P12376295150759773860.a n = A136326 n

end A136326

/-! ## A136326.P11797763275056309234

`and(A097163(n), A267604(n))`
-/

namespace A136326.P11797763275056309234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A097163 n) (A267604 n)

end

end A136326.P11797763275056309234

namespace A136326

/-- `and(A097163(n), A267604(n))` -/
def P11797763275056309234.Spec : Prop :=
  ∀ n, P11797763275056309234.a n = A136326 n

end A136326

/-! ## A136326.P4765244629297127755

`xor(A055010(n), A061547(n))`
-/

namespace A136326.P4765244629297127755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A055010 n) (A061547 n)

end

end A136326.P4765244629297127755

namespace A136326

/-- `xor(A055010(n), A061547(n))` -/
def P4765244629297127755.Spec : Prop :=
  ∀ n, P4765244629297127755.a n = A136326 n

end A136326

/-! ## A136326.P3973593837537849299

`A000079(n+1)-A136336(n)`
-/

namespace A136326.P3973593837537849299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (n + 1) - A136336 n

end

end A136326.P3973593837537849299

namespace A136326

/-- `A000079(n+1)-A136336(n)` -/
def P3973593837537849299.Spec : Prop :=
  ∀ n, P3973593837537849299.a n = A136326 n

end A136326

/-! ## A136326.P12454691062000378011

`A131577(n+2)-A136336(n)`
-/

namespace A136326.P12454691062000378011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 (n + 2) - A136336 n

end

end A136326.P12454691062000378011

namespace A136326

/-- `A131577(n+2)-A136336(n)` -/
def P12454691062000378011.Spec : Prop :=
  ∀ n, P12454691062000378011.a n = A136326 n

end A136326

/-! ## A136326.P14352499339767588019

`2*A000079(n)-A136336(n)`
-/

namespace A136326.P14352499339767588019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000079 n - A136336 n

end

end A136326.P14352499339767588019

namespace A136326

/-- `2*A000079(n)-A136336(n)` -/
def P14352499339767588019.Spec : Prop :=
  ∀ n, P14352499339767588019.a n = A136326 n

end A136326

/-! ## A136326.P17844111775663615233

`∑[A104721(n)]+1-A104721(n)`
-/

namespace A136326.P17844111775663615233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104721 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A104721 n)

end

end A136326.P17844111775663615233

namespace A136326

/-- `∑[A104721(n)]+1-A104721(n)` -/
def P17844111775663615233.Spec : Prop :=
  ∀ n, P17844111775663615233.a n = A136326 n

end A136326

/-!
# A136327: Numbers k > 1 such that binomial(2k-1, k-1) == 1 (mod k).

The programs for A136327, the canonical program `A136327.P5396216506797299296` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A136327 has offset 1).

The definition of A136327 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1259 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A136327.P5901301042627244110

`eq[1, A335024(n+1)]+2`
-/

namespace A136327.P5901301042627244110
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335024 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A136327.P5901301042627244110

namespace A136327

/-- `eq[1, A335024(n+1)]+2` -/
def P5901301042627244110.Spec : Prop :=
  ∀ n, (P5901301042627244110.a n : ℤ) = A136327 (n + 1)

end A136327

/-! ## A136327.P17058239500018094457

`∩[A283262(n+1), A048103(n+1)]`
-/

namespace A136327.P17058239500018094457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283262 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048103 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136327.P17058239500018094457

namespace A136327

/-- `∩[A283262(n+1), A048103(n+1)]` -/
def P17058239500018094457.Spec : Prop :=
  ∀ n, (P17058239500018094457.a n : ℤ) = A136327 (n + 1)

end A136327

/-! ## A136327.P3974127338762833136

`∩[A068938(n+1), A115975(n+1)]`
-/

namespace A136327.P3974127338762833136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068938 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115975 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136327.P3974127338762833136

namespace A136327

/-- `∩[A068938(n+1), A115975(n+1)]` -/
def P3974127338762833136.Spec : Prop :=
  ∀ n, (P3974127338762833136.a n : ℤ) = A136327 (n + 1)

end A136327

/-! ## A136327.P15556786380795197684

`eq[2, A053214(n)]`
-/

namespace A136327.P15556786380795197684
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053214 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A136327.P15556786380795197684

namespace A136327

/-- `eq[2, A053214(n)]` -/
def P15556786380795197684.Spec : Prop :=
  ∀ n, (P15556786380795197684.a n : ℤ) = A136327 (n + 1)

end A136327

/-! ## A136327.P970519045914736154

`record[sqrt(A316346(n+1))]`
-/

namespace A136327.P970519045914736154
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A316346 (n + 1) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A136327.P970519045914736154

namespace A136327

/-- `record[sqrt(A316346(n+1))]` -/
def P970519045914736154.Spec : Prop :=
  ∀ n, P970519045914736154.a n = (A136327 (n + 1) : ℝ)

end A136327

/-! ## A136327.P5396216506797299296

`eq[1, A099905(n+1)]+1`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A136327

/-- `eq[1, A099905(n+1)]+1` -/
def P5396216506797299296.Spec : Prop :=
  ∀ n, (P5396216506797299296.a n : ℤ) = A136327 (n + 1)

theorem P5396216506797299296.correct : P5396216506797299296.Spec := by
  intro n
  simp only [A136327, Nat.add_sub_cancel]

end A136327

/-! ## A136327.P3839184670925392898

`eq[2, A042970(2*(n+1))]+1`
-/

namespace A136327.P3839184670925392898
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042970 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A136327.P3839184670925392898

namespace A136327

/-- `eq[2, A042970(2*(n+1))]+1` -/
def P3839184670925392898.Spec : Prop :=
  ∀ n, (P3839184670925392898.a n : ℤ) = A136327 (n + 1)

end A136327

/-! ## A136327.P1715568260868443028

`eq[1, A099905(A028310(n))]`
-/

namespace A136327.P1715568260868443028
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099905 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A136327.P1715568260868443028

namespace A136327

/-- `eq[1, A099905(A028310(n))]` -/
def P1715568260868443028.Spec : Prop :=
  ∀ n, (P1715568260868443028.a n : ℤ) = A136327 (n + 1)

end A136327

/-! ## A136327.P17372840843649130106

`filter[A358215(n+1), A010055(#)]`
-/

namespace A136327.P17372840843649130106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358215 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010055 (f1 j).toNat = 1) n)

end

end A136327.P17372840843649130106

namespace A136327

/-- `filter[A358215(n+1), A010055(#)]` -/
def P17372840843649130106.Spec : Prop :=
  ∀ n, P17372840843649130106.a n = A136327 (n + 1)

end A136327

/-! ## A136327.P14385162985600785133

`filter[A100994(n+1), A368915(#)]`
-/

namespace A136327.P14385162985600785133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100994 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A368915 (f1 j).toNat = 1) n)

end

end A136327.P14385162985600785133

namespace A136327

/-- `filter[A100994(n+1), A368915(#)]` -/
def P14385162985600785133.Spec : Prop :=
  ∀ n, P14385162985600785133.a n = A136327 (n + 1)

end A136327

/-! ## A136327.P2452939815787312915

`filter[A087797(n+1), A341625(#)]`
-/

namespace A136327.P2452939815787312915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087797 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A341625 (f1 j).toNat = 1) n)

end

end A136327.P2452939815787312915

namespace A136327

/-- `filter[A087797(n+1), A341625(#)]` -/
def P2452939815787312915.Spec : Prop :=
  ∀ n, P2452939815787312915.a n = A136327 (n + 1)

end A136327

/-! ## A136327.P17083403000202100701

`filter[A087797(n+1), A359550(#)]`
-/

namespace A136327.P17083403000202100701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087797 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359550 (f1 j).toNat = 1) n)

end

end A136327.P17083403000202100701

namespace A136327

/-- `filter[A087797(n+1), A359550(#)]` -/
def P17083403000202100701.Spec : Prop :=
  ∀ n, P17083403000202100701.a n = A136327 (n + 1)

end A136327

/-! ## A136327.P1858221592507115846

`filter[A087797(n+1), A368915(#)]`
-/

namespace A136327.P1858221592507115846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087797 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A368915 (f1 j).toNat = 1) n)

end

end A136327.P1858221592507115846

namespace A136327

/-- `filter[A087797(n+1), A368915(#)]` -/
def P1858221592507115846.Spec : Prop :=
  ∀ n, P1858221592507115846.a n = A136327 (n + 1)

end A136327

/-! ## A136327.P5824556249528418549

`∩[A048103(n+1), A087797(n+1)]`
-/

namespace A136327.P5824556249528418549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048103 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087797 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136327.P5824556249528418549

namespace A136327

/-- `∩[A048103(n+1), A087797(n+1)]` -/
def P5824556249528418549.Spec : Prop :=
  ∀ n, (P5824556249528418549.a n : ℤ) = A136327 (n + 1)

end A136327

/-! ## A136327.P7755255306502468109

`∩[A068938(n+1), A087797(n+1)]`
-/

namespace A136327.P7755255306502468109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068938 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087797 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136327.P7755255306502468109

namespace A136327

/-- `∩[A068938(n+1), A087797(n+1)]` -/
def P7755255306502468109.Spec : Prop :=
  ∀ n, (P7755255306502468109.a n : ℤ) = A136327 (n + 1)

end A136327

/-! ## A136327.P1231211091402437483

`∩[A083347(n+1), A087797(n+1)]`
-/

namespace A136327.P1231211091402437483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083347 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087797 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136327.P1231211091402437483

namespace A136327

/-- `∩[A083347(n+1), A087797(n+1)]` -/
def P1231211091402437483.Spec : Prop :=
  ∀ n, (P1231211091402437483.a n : ℤ) = A136327 (n + 1)

end A136327

/-! ## A136327.P689248129725809213

`filter[A370422(n+1), A069513(#)]`
-/

namespace A136327.P689248129725809213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370422 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A069513 (f1 j).toNat = 1) n)

end

end A136327.P689248129725809213

namespace A136327

/-- `filter[A370422(n+1), A069513(#)]` -/
def P689248129725809213.Spec : Prop :=
  ∀ n, P689248129725809213.a n = A136327 (n + 1)

end A136327

/-!
# A136328: a(n) = Wiener index of the odd graph O_n.

The programs for A136328, there is no canonical definition to state claims against.
-/

/-! ## A136328.P8069025059166283841

`A301566(n+1)*C(2*(n+1)-1, n)/2`
-/

namespace A136328.P8069025059166283841
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A301566 (n + 1) * (Nat.choose ((2 * (n + 1) : ℤ) - 1).toNat n : ℤ) : ℚ) / 2

end

end A136328.P8069025059166283841

/-!
# A136329: Triangular sequence of coefficients of a polynomial recursion for C_n and B_n Cartan matrices: p(x, n) = (-2 + x)*p(x, n - 1) - p(x, n - 2) p(x,n)=x2-4*x+4-m:m=4;(related sequence: A_n:m=1,G_n,m=3,B_n,C_n,m=2) This triangular sequence is an extension to the Cartan pattern of matrices.

The programs for A136329, there is no canonical definition to state claims against.
-/

/-! ## A136329.P10270163786867060629

`A136321(n+1)+A053122(n)-A110162(n)`
-/

namespace A136329.P10270163786867060629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136321 (n + 1) + (A053122 n - A110162 n)

end

end A136329.P10270163786867060629

/-!
# A136331: The discriminant of the characteristic polynomial of the O+ and O- submatrix for spin 3 of the nuclear electric quadrupole Hamiltonian is a perfect square for these values.

The programs for A136331, the canonical program `A136331.P14148735285691192047` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A136331 has offset 0).

The definition of A136331 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A136331.P14148735285691192047

`11*(a(n-2)-a(n-4))+a(n-6)` with `a(0)=0, a(1)=3, a(2)=6, a(3)=21, a(4)=48, a(5)=195`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A136331

/-- `11*(a(n-2)-a(n-4))+a(n-6)` -/
def P14148735285691192047.Spec : Prop :=
  ∀ n, P14148735285691192047.a n = A136331 n

theorem P14148735285691192047.correct : P14148735285691192047.Spec := by
  intro n
  simp only [A136331]

end A136331

/-! ## A136331.P5468886514990129935

`3*A129444(n+1)`
-/

namespace A136331.P5468886514990129935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A129444 (n + 1)

end

end A136331.P5468886514990129935

namespace A136331

/-- `3*A129444(n+1)` -/
def P5468886514990129935.Spec : Prop :=
  ∀ n, P5468886514990129935.a n = A136331 n

end A136331

/-! ## A136331.P8680003201640733974

`3*(∑[A080872(n)]-A080872(n))`
-/

namespace A136331.P8680003201640733974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080872 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (∑ j ∈ Finset.range (n + 1), f1 j - A080872 n)

end

end A136331.P8680003201640733974

namespace A136331

/-- `3*(∑[A080872(n)]-A080872(n))` -/
def P8680003201640733974.Spec : Prop :=
  ∀ n, P8680003201640733974.a n = A136331 n

end A136331

/-! ## A136331.P4625198454511583138

`3*(A233450(n+1)-A080872(n)+1)`
-/

namespace A136331.P4625198454511583138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A233450 (n + 1) - A080872 n + 1)

end

end A136331.P4625198454511583138

namespace A136331

/-- `3*(A233450(n+1)-A080872(n)+1)` -/
def P4625198454511583138.Spec : Prop :=
  ∀ n, P4625198454511583138.a n = A136331 n

end A136331

/-! ## A136331.P5371714206959975198

`3*(A233450(C(2, n+2)+n)+A057427(n))`
-/

namespace A136331.P5371714206959975198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A233450 (Nat.choose 2 (n + 2) + n) + A057427 n)

end

end A136331.P5371714206959975198

namespace A136331

/-- `3*(A233450(C(2, n+2)+n)+A057427(n))` -/
def P5371714206959975198.Spec : Prop :=
  ∀ n, P5371714206959975198.a n = A136331 n

end A136331

/-! ## A136331.P4927742682849253808

`3*(A077291(n)-2*A077288(n))`
-/

namespace A136331.P4927742682849253808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A077291 n - 2 * A077288 n)

end

end A136331.P4927742682849253808

namespace A136331

/-- `3*(A077291(n)-2*A077288(n))` -/
def P4927742682849253808.Spec : Prop :=
  ∀ n, P4927742682849253808.a n = A136331 n

end A136331

/-! ## A136331.P18310029857520396272

`3*(A180483(n)-1)%A181442(n)`
-/

namespace A136331.P18310029857520396272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * Int.tmod (A180483 n - 1) (A181442 n)

end

end A136331.P18310029857520396272

namespace A136331

/-- `3*(A180483(n)-1)%A181442(n)` -/
def P18310029857520396272.Spec : Prop :=
  ∀ n, P18310029857520396272.a n = A136331 n

end A136331

/-! ## A136331.P7733936876295935813

`3*(A077291(n)+1-A080806(n+1))`
-/

namespace A136331.P7733936876295935813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A077291 n + (1 - A080806 (n + 1)))

end

end A136331.P7733936876295935813

namespace A136331

/-- `3*(A077291(n)+1-A080806(n+1))` -/
def P7733936876295935813.Spec : Prop :=
  ∀ n, P7733936876295935813.a n = A136331 n

end A136331

/-!
# A136332: a(n) is the smallest term appearing after a(n-1) in A067581.

The programs for A136332, there is no canonical definition to state claims against.
-/

/-! ## A136332.P8078243463878713049

`∑[A304382(A028242(A244832(n+1)))]`
-/

namespace A136332.P8078243463878713049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304382 (A028242 (A244832 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A136332.P8078243463878713049

/-! ## A136332.P2749122830447012001

`∑[dr(A218979(A207539(n)))]`
-/

namespace A136332.P2749122830447012001
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A218979 (A207539 n).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A136332.P2749122830447012001

/-! ## A136332.P12308886148427306235

`∑[dr(A191306(A309632(n)))]`
-/

namespace A136332.P12308886148427306235
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A191306 (A309632 n).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A136332.P12308886148427306235

/-! ## A136332.P2458637715582912096

`record[A259481(A233279(n+1))]`
-/

namespace A136332.P2458637715582912096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259481 (A233279 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A136332.P2458637715582912096

/-! ## A136332.P10644714048915754969

`record[A274709(A251072(n))+n]`
-/

namespace A136332.P10644714048915754969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274709 (A251072 n).toNat + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A136332.P10644714048915754969

/-!
# A136333: Numbers containing only digits coprime to 10 in their decimal representation.

The programs for A136333, the canonical program `A136333.P7255330385303398448` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A136333 has offset 1).

The definition of A136333 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 340 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A136333.P4297794400963354488

`∩[A008541(n+1), A014261(n+1)]`
-/

namespace A136333.P4297794400963354488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008541 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014261 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136333.P4297794400963354488

namespace A136333

/-- `∩[A008541(n+1), A014261(n+1)]` -/
def P4297794400963354488.Spec : Prop :=
  ∀ n, (P4297794400963354488.a n : ℤ) = A136333 (n + 1)

end A136333

/-! ## A136333.P7006238075910612785

`∩[A014261(n+1), A039130(n+1)]`
-/

namespace A136333.P7006238075910612785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014261 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039130 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136333.P7006238075910612785

namespace A136333

/-- `∩[A014261(n+1), A039130(n+1)]` -/
def P7006238075910612785.Spec : Prop :=
  ∀ n, (P7006238075910612785.a n : ℤ) = A136333 (n + 1)

end A136333

/-! ## A136333.P14115165760397072264

`∩[A014261(n+1), A039141(n+1)]`
-/

namespace A136333.P14115165760397072264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014261 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039141 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136333.P14115165760397072264

namespace A136333

/-- `∩[A014261(n+1), A039141(n+1)]` -/
def P14115165760397072264.Spec : Prop :=
  ∀ n, (P14115165760397072264.a n : ℤ) = A136333 (n + 1)

end A136333

/-! ## A136333.P1877777941886391520

`∩[A014261(n+1), A039146(n+1)]`
-/

namespace A136333.P1877777941886391520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014261 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039146 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136333.P1877777941886391520

namespace A136333

/-- `∩[A014261(n+1), A039146(n+1)]` -/
def P1877777941886391520.Spec : Prop :=
  ∀ n, (P1877777941886391520.a n : ℤ) = A136333 (n + 1)

end A136333

/-! ## A136333.P7385462825707208423

`∩[A014261(n+1), A039148(n+1)]`
-/

namespace A136333.P7385462825707208423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014261 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039148 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136333.P7385462825707208423

namespace A136333

/-- `∩[A014261(n+1), A039148(n+1)]` -/
def P7385462825707208423.Spec : Prop :=
  ∀ n, (P7385462825707208423.a n : ℤ) = A136333 (n + 1)

end A136333

/-! ## A136333.P14805741068117346299

`∩[A039130(n+1), A065520(n+1)]`
-/

namespace A136333.P14805741068117346299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039130 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065520 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136333.P14805741068117346299

namespace A136333

/-- `∩[A039130(n+1), A065520(n+1)]` -/
def P14805741068117346299.Spec : Prop :=
  ∀ n, (P14805741068117346299.a n : ℤ) = A136333 (n + 1)

end A136333

/-! ## A136333.P15566823783059825470

`∩[A014261(n+1), A261189(n+1)]`
-/

namespace A136333.P15566823783059825470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014261 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261189 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136333.P15566823783059825470

namespace A136333

/-- `∩[A014261(n+1), A261189(n+1)]` -/
def P15566823783059825470.Spec : Prop :=
  ∀ n, (P15566823783059825470.a n : ℤ) = A136333 (n + 1)

end A136333

/-! ## A136333.P4824938946207486632

`∩[A014261(n+1), A039116(n+1)]`
-/

namespace A136333.P4824938946207486632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014261 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039116 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136333.P4824938946207486632

namespace A136333

/-- `∩[A014261(n+1), A039116(n+1)]` -/
def P4824938946207486632.Spec : Prop :=
  ∀ n, (P4824938946207486632.a n : ℤ) = A136333 (n + 1)

end A136333

/-! ## A136333.P3970153257959168310

`∩[A014261(n+1), A052413(n+1)]`
-/

namespace A136333.P3970153257959168310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014261 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052413 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136333.P3970153257959168310

namespace A136333

/-- `∩[A014261(n+1), A052413(n+1)]` -/
def P3970153257959168310.Spec : Prop :=
  ∀ n, (P3970153257959168310.a n : ℤ) = A136333 (n + 1)

end A136333

/-! ## A136333.P1576754091324813780

`∩[A065520(n+1), A082768(n+1)]`
-/

namespace A136333.P1576754091324813780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065520 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082768 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136333.P1576754091324813780

namespace A136333

/-- `∩[A065520(n+1), A082768(n+1)]` -/
def P1576754091324813780.Spec : Prop :=
  ∀ n, (P1576754091324813780.a n : ℤ) = A136333 (n + 1)

end A136333

/-! ## A136333.P7255330385303398448

`eq[1, gcd(10, A007954(n))]`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A136333

/-- `eq[1, gcd(10, A007954(n))]` -/
def P7255330385303398448.Spec : Prop :=
  ∀ n, (P7255330385303398448.a n : ℤ) = A136333 (n + 1)

theorem P7255330385303398448.correct : P7255330385303398448.Spec := by
  intro n
  simp only [A136333, Nat.add_sub_cancel]

end A136333

/-! ## A136333.P12680577542553345833

`eq[n, A222229(A106647(n))]`
-/

namespace A136333.P12680577542553345833
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222229 (A106647 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A136333.P12680577542553345833

namespace A136333

/-- `eq[n, A222229(A106647(n))]` -/
def P12680577542553345833.Spec : Prop :=
  ∀ n, (P12680577542553345833.a n : ℤ) = A136333 (n + 1)

end A136333

/-! ## A136333.P14005523318938143608

`eq[n, A222214(A107128(n))]`
-/

namespace A136333.P14005523318938143608
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222214 (A107128 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A136333.P14005523318938143608

namespace A136333

/-- `eq[n, A222214(A107128(n))]` -/
def P14005523318938143608.Spec : Prop :=
  ∀ n, (P14005523318938143608.a n : ℤ) = A136333 (n + 1)

end A136333

/-! ## A136333.P14812092877516011551

`eq[n, A351744(A004180(n))]`
-/

namespace A136333.P14812092877516011551
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351744 (A004180 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A136333.P14812092877516011551

namespace A136333

/-- `eq[n, A351744(A004180(n))]` -/
def P14812092877516011551.Spec : Prop :=
  ∀ n, (P14812092877516011551.a n : ℤ) = A136333 (n + 1)

end A136333

/-! ## A136333.P16588452923375059149

`eq[A045843(n), A316866(n)]`
-/

namespace A136333.P16588452923375059149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045843 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316866 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A136333.P16588452923375059149

namespace A136333

/-- `eq[A045843(n), A316866(n)]` -/
def P16588452923375059149.Spec : Prop :=
  ∀ n, (P16588452923375059149.a n : ℤ) = A136333 (n + 1)

end A136333

/-! ## A136333.P10333214328321578477

`eq[n, A327539(A222214(n))]`
-/

namespace A136333.P10333214328321578477
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327539 (A222214 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A136333.P10333214328321578477

namespace A136333

/-- `eq[n, A327539(A222214(n))]` -/
def P10333214328321578477.Spec : Prop :=
  ∀ n, (P10333214328321578477.a n : ℤ) = A136333 (n + 1)

end A136333

/-! ## A136333.P15121297391670726556

`eq[A222214(n), A351744(n)]`
-/

namespace A136333.P15121297391670726556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222214 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351744 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A136333.P15121297391670726556

namespace A136333

/-- `eq[A222214(n), A351744(n)]` -/
def P15121297391670726556.Spec : Prop :=
  ∀ n, (P15121297391670726556.a n : ℤ) = A136333 (n + 1)

end A136333

/-! ## A136333.P14512629944204838368

`eq[n, A351744(A222229(n))]`
-/

namespace A136333.P14512629944204838368
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351744 (A222229 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A136333.P14512629944204838368

namespace A136333

/-- `eq[n, A351744(A222229(n))]` -/
def P14512629944204838368.Spec : Prop :=
  ∀ n, (P14512629944204838368.a n : ℤ) = A136333 (n + 1)

end A136333

/-! ## A136333.P16075955930867936615

`eq[n, A351744(A222245(n))]`
-/

namespace A136333.P16075955930867936615
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351744 (A222245 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A136333.P16075955930867936615

namespace A136333

/-- `eq[n, A351744(A222245(n))]` -/
def P16075955930867936615.Spec : Prop :=
  ∀ n, (P16075955930867936615.a n : ℤ) = A136333 (n + 1)

end A136333

/-! ## A136333.P5543452085791916497

`eq[n, A351744(A222247(n))]`
-/

namespace A136333.P5543452085791916497
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351744 (A222247 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A136333.P5543452085791916497

namespace A136333

/-- `eq[n, A351744(A222247(n))]` -/
def P5543452085791916497.Spec : Prop :=
  ∀ n, (P5543452085791916497.a n : ℤ) = A136333 (n + 1)

end A136333

/-!
# A136334: Triangular sequence from both a cubic expansion polynomial and a three deep polynomial recursion: Expansion polynomial: f(x,t)=1/(1 - 2*x*t + t^3); Recursion polynomials: p(x, n) = 2*x*p(x, n - 1) - p(x, n - 3);.

The programs for A136334, there is no canonical definition to state claims against.
-/

/-! ## A136334.P6937851295580437933

`2^(n-C(∑[char[∑[n]]], 2))*A126030(n)`
-/

namespace A136334.P6937851295580437933
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) : ℤ) * (A126030 n : ℚ)

end

end A136334.P6937851295580437933

/-! ## A136334.P5785776894414744563

`A059268(n)*A126030(n)`
-/

namespace A136334.P5785776894414744563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n * A126030 n

end

end A136334.P5785776894414744563

/-! ## A136334.P9635629634380016066

`A000079(A002262(n))*A126030(n)`
-/

namespace A136334.P9635629634380016066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A002262 n).toNat * A126030 n

end

end A136334.P9635629634380016066

/-! ## A136334.P12550961522568107952

`A011782(A002260(n+1))*A126030(n)`
-/

namespace A136334.P12550961522568107952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A002260 (n + 1)).toNat * A126030 n

end

end A136334.P12550961522568107952

/-! ## A136334.P1711494333284283311

`A126030(n)*A130321(A061579(n))`
-/

namespace A136334.P1711494333284283311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126030 n * A130321 (A061579 n).toNat

end

end A136334.P1711494333284283311

/-! ## A136334.P14031511740305404712

`A049773(A043569(n+1))*A126030(n)`
-/

namespace A136334.P14031511740305404712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049773 (A043569 (n + 1)).toNat * A126030 n

end

end A136334.P14031511740305404712

/-! ## A136334.P14370496417604791303

`A003958(A036561(n))*A126030(n)`
-/

namespace A136334.P14370496417604791303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003958 (A036561 n).toNat * A126030 n

end

end A136334.P14370496417604791303

/-! ## A136334.P17390218017560049220

`A046523(A276237(n+2))*A126030(n)`
-/

namespace A136334.P17390218017560049220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (A276237 (n + 2)).toNat * A126030 n

end

end A136334.P17390218017560049220

/-!
# A136336: a(n) = a(n-1) + 4*a(n-2) - 4*a(n-3) for n>3.

The programs for A136336, the canonical program `A136336.P16388555283271138487` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A136336 has offset 0).

The definition of A136336 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+4*a(n-2)-4*a(n-3)` (program `A136336.P16388555283271138487`, by `A136336.P16388555283271138487.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A136336.P16388555283271138487

`a(n-1)+4*a(n-2)-4*a(n-3)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=7`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A136336

/-- `a(n-1)+4*a(n-2)-4*a(n-3)` -/
def P16388555283271138487.Spec : Prop :=
  ∀ n, P16388555283271138487.a n = A136336 n

theorem P16388555283271138487.correct : P16388555283271138487.Spec := by
  intro n
  simp only [A136336]

end A136336

/-! ## A136336.P5184630065750546785

`∑[ogf((1+x-2x^2-x^3)/(1-4x^2))]`
-/

namespace A136336.P5184630065750546785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, -2, -1] [1, 0, -4] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A136336.P5184630065750546785

namespace A136336

/-- `∑[ogf((1+x-2x^2-x^3)/(1-4x^2))]` -/
def P5184630065750546785.Spec : Prop :=
  ∀ n, P5184630065750546785.a n = A136336 n

end A136336

/-! ## A136336.P5756496991339300162

`ogf((1+x-2x^2-x^3)/(1-x-4x^2+4x^3))`
-/

namespace A136336.P5756496991339300162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, -2, -1] [1, -1, -4, 4] n

end

end A136336.P5756496991339300162

namespace A136336

/-- `ogf((1+x-2x^2-x^3)/(1-x-4x^2+4x^3))` -/
def P5756496991339300162.Spec : Prop :=
  ∀ n, P5756496991339300162.a n = A136336 n

end A136336

/-! ## A136336.P12548567185624970686

`4*a(n-2)-1` with `a(0)=1, a(1)=2, a(2)=4`
-/

namespace A136336.P12548567185624970686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 4] fun n a =>
  4 * a (n - 2) - 1

end

end A136336.P12548567185624970686

namespace A136336

/-- `4*a(n-2)-1` -/
def P12548567185624970686.Spec : Prop :=
  ∀ n, P12548567185624970686.a n = A136336 n

end A136336

/-! ## A136336.P5841780833260074196

`A134683(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A136336.P5841780833260074196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A134683 (n - 1) + a (n - 1)

end

end A136336.P5841780833260074196

namespace A136336

/-- `A134683(n-1)+a(n-1)` -/
def P5841780833260074196.Spec : Prop :=
  ∀ n, P5841780833260074196.a n = A136336 n

end A136336

/-! ## A136336.P15005840283221602994

`A305750(n)+A131577(n)`
-/

namespace A136336.P15005840283221602994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305750 n + A131577 n

end

end A136336.P15005840283221602994

namespace A136336

/-- `A305750(n)+A131577(n)` -/
def P15005840283221602994.Spec : Prop :=
  ∀ n, P15005840283221602994.a n = A136336 n

end A136336

/-! ## A136336.P8690172478727204651

`A131577(n)+∑[A131577(A123108(n))²]`
-/

namespace A136336.P8690172478727204651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 (A123108 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A136336.P8690172478727204651

namespace A136336

/-- `A131577(n)+∑[A131577(A123108(n))²]` -/
def P8690172478727204651.Spec : Prop :=
  ∀ n, P8690172478727204651.a n = A136336 n

end A136336

/-! ## A136336.P9679449125925232172

`ceil(A283323(n)/2)`
-/

namespace A136336.P9679449125925232172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A283323 n : ℚ) / 2⌉

end

end A136336.P9679449125925232172

namespace A136336

/-- `ceil(A283323(n)/2)` -/
def P9679449125925232172.Spec : Prop :=
  ∀ n, P9679449125925232172.a n = A136336 n

end A136336

/-! ## A136336.P1279714488423836071

`2^(n+1)-A136326(n)`
-/

namespace A136336.P1279714488423836071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) : ℤ) - A136326 n

end

end A136336.P1279714488423836071

namespace A136336

/-- `2^(n+1)-A136326(n)` -/
def P1279714488423836071.Spec : Prop :=
  ∀ n, P1279714488423836071.a n = A136336 n

end A136336

/-! ## A136336.P8176232528875989623

`A137208(n)-A305750(n)`
-/

namespace A136336.P8176232528875989623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137208 n - A305750 n

end

end A136336.P8176232528875989623

namespace A136336

/-- `A137208(n)-A305750(n)` -/
def P8176232528875989623.Spec : Prop :=
  ∀ n, P8176232528875989623.a n = A136336 n

end A136336

/-! ## A136336.P148298939586772181

`∑[A134683(n)]+1-A134683(n)`
-/

namespace A136336.P148298939586772181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134683 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A134683 n)

end

end A136336.P148298939586772181

namespace A136336

/-- `∑[A134683(n)]+1-A134683(n)` -/
def P148298939586772181.Spec : Prop :=
  ∀ n, P148298939586772181.a n = A136336 n

end A136336

/-! ## A136336.P10313207715640711625

`∑[round((A000079(n)+A117575(n+1)²)/4)]`
-/

namespace A136336.P10313207715640711625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A000079 n + A117575 (n + 1) ^ 2 : ℚ) / 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A136336.P10313207715640711625

namespace A136336

/-- `∑[round((A000079(n)+A117575(n+1)²)/4)]` -/
def P10313207715640711625.Spec : Prop :=
  ∀ n, P10313207715640711625.a n = A136336 n

end A136336

/-! ## A136336.P17260099737841172544

`(∑[A290662(n)+1]-A290662(n)+1)/2`
-/

namespace A136336.P17260099737841172544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290662 n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j - A290662 n + 1 : ℤ) : ℚ) / 2

end

end A136336.P17260099737841172544

namespace A136336

/-- `(∑[A290662(n)+1]-A290662(n)+1)/2` -/
def P17260099737841172544.Spec : Prop :=
  ∀ n, P17260099737841172544.a n = (A136336 n : ℚ)

end A136336

/-! ## A136336.P9324486874953108906

`record[floor(A257499(n+1)/4)+1]`
-/

namespace A136336.P9324486874953108906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A257499 (n + 1) : ℚ) / 4⌋ + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A136336.P9324486874953108906

namespace A136336

/-- `record[floor(A257499(n+1)/4)+1]` -/
def P9324486874953108906.Spec : Prop :=
  ∀ n, P9324486874953108906.a n = A136336 n

end A136336

/-! ## A136336.P1430438085830909763

`record[A258415(n+1)/(A057427(n)+1)]`
-/

namespace A136336.P1430438085830909763
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A258415 (n + 1) : ℚ) / (A057427 n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A136336.P1430438085830909763

namespace A136336

/-- `record[A258415(n+1)/(A057427(n)+1)]` -/
def P1430438085830909763.Spec : Prop :=
  ∀ n, P1430438085830909763.a n = (A136336 n : ℚ)

end A136336

/-!
# A136337: Triangular sequence from both a quartic expansion polynomial and a four deep polynomial recursion: Expansion polynomial: f(x,t)=1/(1 - 2*x*t + t^4); Recursion polynomials: p(x, n) = 2*x*p(x, n - 1) - p(x, n - 4);.

The programs for A136337, there is no canonical definition to state claims against.
-/

/-! ## A136337.P7503586530934891837

`A059268(n)*A156062(n)*A020985(A107880(n))`
-/

namespace A136337.P7503586530934891837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n * A156062 n * A020985 (A107880 n).toNat

end

end A136337.P7503586530934891837

/-! ## A136337.P7023951410333811205

`A131516(A059268(n))*A156064(n)`
-/

namespace A136337.P7023951410333811205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131516 (A059268 n).toNat * A156064 n

end

end A136337.P7023951410333811205

/-! ## A136337.P14818264936670049427

`A131516(A130125(n))*A156064(n)`
-/

namespace A136337.P14818264936670049427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131516 (A130125 n).toNat * A156064 n

end

end A136337.P14818264936670049427

/-! ## A136337.P2947640984910612598

`A037213(A130125(n)²)*A156064(n)`
-/

namespace A136337.P2947640984910612598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037213 (A130125 n ^ 2).toNat * A156064 n

end

end A136337.P2947640984910612598

/-! ## A136337.P9043206193713376774

`A130123(n)-A102683(A002991(n))`
-/

namespace A136337.P9043206193713376774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130123 n - A102683 (A002991 n).toNat

end

end A136337.P9043206193713376774

/-!
# A136339: a(1) = 1; for all n >= 2, we choose a(n) to be as small as possible so that for all i = 1, ..., n, the sequence of the i-th divisors of a(1), a(2), ..., a(n) is nonincreasing.

The programs for A136339, there is no canonical definition to state claims against.
-/

/-! ## A136339.P7473343753886808979

`record[A061799(n+1)/A061827(A061807(n+1))]`
-/

namespace A136339.P7473343753886808979
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A061799 (n + 1) : ℚ) / (A061827 (A061807 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A136339.P7473343753886808979

/-! ## A136339.P1725537509930341247

`A004394(lt[A119479(n+1), A119477(2*n+1)])`
-/

namespace A136339.P1725537509930341247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119479 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119477 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004394 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A136339.P1725537509930341247

/-! ## A136339.P3839010757390465131

`∪[A019505(n+1)%A141420(n+5), A094783(n+4)]`
-/

namespace A136339.P3839010757390465131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A019505 (n + 1)) (A141420 (n + 5))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094783 (n + 4)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A136339.P3839010757390465131

/-!
# A136340: Fibonacci numbers where every digit is a prime.

The programs for A136340, there is no canonical definition to state claims against.
-/

/-! ## A136340.P11260282050395036440

`record[A129713(n²+6)]`
-/

namespace A136340.P11260282050395036440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129713 (n ^ 2 + 6)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A136340.P11260282050395036440

/-!
# A136341: Fibonacci primes or semiprimes F(k) such that F(k+1) is again prime or semiprime.

The programs for A136341, there is no canonical definition to state claims against.
-/

/-! ## A136341.P13795880145646342445

`A000045(A263273(∑[gcd(3, n)]))`
-/

namespace A136341.P13795880145646342445
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 3 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A263273 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A136341.P13795880145646342445

/-! ## A136341.P4166759082774641954

`A000045(∑[A074879(2*(n+2))])`
-/

namespace A136341.P4166759082774641954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074879 (2 * (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A136341.P4166759082774641954

/-! ## A136341.P13864087333147956489

`A000045(∑[A074479(n+2)%10])`
-/

namespace A136341.P13864087333147956489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A074479 (n + 2)) 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A136341.P13864087333147956489

/-! ## A136341.P819294774709188436

`A000045(∑[gcd(9, A300500(n+1)+1)])`
-/

namespace A136341.P819294774709188436
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 9 (A300500 (n + 1) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A136341.P819294774709188436

/-!
# A136342: Prime numbers n such that n-x = prime, n-(x+2) = prime (twin primes #1) and n+x = prime, n+(x+2) = prime (twin primes #2).

The programs for A136342, there is no canonical definition to state claims against.
-/

/-! ## A136342.P8999132844619075406

`p?[record[A112768(n+4)]]`
-/

namespace A136342.P8999132844619075406
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112768 (n + 4)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136342.P8999132844619075406

/-! ## A136342.P5370953562460544119

`p?[A040040(n+3)+2]`
-/

namespace A136342.P5370953562460544119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040040 (n + 3) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136342.P5370953562460544119

/-! ## A136342.P3283883590073367674

`p?[A168497(n+4)+2]`
-/

namespace A136342.P3283883590073367674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168497 (n + 4) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136342.P3283883590073367674

/-! ## A136342.P8212189629683690759

`p?[A116958(n+2)+5]`
-/

namespace A136342.P8212189629683690759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116958 (n + 2) + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136342.P8212189629683690759

/-! ## A136342.P17231552081309752589

`p?[A243811(n+3)+4]`
-/

namespace A136342.P17231552081309752589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243811 (n + 3) + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136342.P17231552081309752589

/-!
# A136343: Number of partitions of n such that each summand is greater than or equal to the sum of the next two summands.

The programs for A136343, there is no canonical definition to state claims against.
-/

/-! ## A136343.P12912126937078241500

`A319394(∑[4*n])`
-/

namespace A136343.P12912126937078241500
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319394 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A136343.P12912126937078241500

/-! ## A136343.P5076088249901413113

`root(A319394(2*(n²+n)), 2)²`
-/

namespace A136343.P5076088249901413113
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((A319394 (2 * (n ^ 2 + n)) : ℝ) ^ (1 / (2 : ℝ))) ^ 2

end

end A136343.P5076088249901413113

/-! ## A136343.P124177128554515533

`or(char[1], A319394(2*n*(n+1)))`
-/

namespace A136343.P124177128554515533
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A319394 (2 * (n * (n + 1))))

end

end A136343.P124177128554515533

/-! ## A136343.P14199200518099696254

`A319394(abs(A056220(n)))+1`
-/

namespace A136343.P14199200518099696254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319394 |A056220 n|.toNat + 1

end

end A136343.P14199200518099696254

/-! ## A136343.P4054880502998832812

`A000027(A319394(2*(n²+n)))`
-/

namespace A136343.P4054880502998832812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A319394 (2 * (n ^ 2 + n))).toNat

end

end A136343.P4054880502998832812

/-! ## A136343.P8049693445233448009

`gcd(A000038(n), A319394(2*(n²+n)))`
-/

namespace A136343.P8049693445233448009
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A319394 (2 * (n ^ 2 + n)))

end

end A136343.P8049693445233448009

/-! ## A136343.P11913095456586824630

`A319394(2*(n²+n))+A000007(n+1)`
-/

namespace A136343.P11913095456586824630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319394 (2 * (n ^ 2 + n)) + A000007 (n + 1)

end

end A136343.P11913095456586824630

/-! ## A136343.P8051407477245843997

`A319394(2*(n²+n))%A000041(n+2)`
-/

namespace A136343.P8051407477245843997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A319394 (2 * (n ^ 2 + n))) (A000041 (n + 2))

end

end A136343.P8051407477245843997

/-! ## A136343.P3803873217448333946

`A319394(2*(n²+n))/A000108((n+2)%(n+1))`
-/

namespace A136343.P3803873217448333946
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A319394 (2 * (n ^ 2 + n)) : ℚ) / (A000108 ((n + 2) % (n + 1)) : ℚ)

end

end A136343.P3803873217448333946

/-! ## A136343.P5227497917984033106

`2-4/2+A319394(A001105(n+1))`
-/

namespace A136343.P5227497917984033106
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 - (4 : ℚ) / 2 + (A319394 (A001105 (n + 1)).toNat : ℚ)

end

end A136343.P5227497917984033106

/-!
# A136345: Sums of exactly two positive octagonal numbers A000567.

The programs for A136345, there is no canonical definition to state claims against.
-/

/-! ## A136345.P4845328079097319980

`eq[2, A338481(n+1)]+1`
-/

namespace A136345.P4845328079097319980
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338481 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A136345.P4845328079097319980

/-! ## A136345.P11923306979425057050

`eq[2, A338481(A028310(n))]`
-/

namespace A136345.P11923306979425057050
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338481 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A136345.P11923306979425057050

/-! ## A136345.P15049084716324393249

`A020725(eq[2, A338481(n+1)])`
-/

namespace A136345.P15049084716324393249
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338481 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A136345.P15049084716324393249

/-!
# A136349: Numbers k of the form Product_{j=1..m} prime(j) such that k-1 is prime.

The programs for A136349, there is no canonical definition to state claims against.
-/

/-! ## A136349.P1246361645289142725

`A057705(n+1)+1`
-/

namespace A136349.P1246361645289142725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057705 (n + 1) + 1

end

end A136349.P1246361645289142725

/-!
# A136350: Primorial numbers #p such that (#p)-1 is composite.

The programs for A136350, there is no canonical definition to state claims against.
-/

/-! ## A136350.P18061405421660315251

`A125549(n+1)+1`
-/

namespace A136350.P18061405421660315251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125549 (n + 1) + 1

end

end A136350.P18061405421660315251

/-! ## A136350.P1647498306193468694

`A034386(A092457(n+1))`
-/

namespace A136350.P1647498306193468694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034386 (A092457 (n + 1)).toNat

end

end A136350.P1647498306193468694

/-! ## A136350.P11584814119770826759

`record[A034386(A107779(n+1))]`
-/

namespace A136350.P11584814119770826759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034386 (A107779 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A136350.P11584814119770826759

/-! ## A136350.P13527083525022313036

`record[A034386(A040056(n)+A027746(n+1))]`
-/

namespace A136350.P13527083525022313036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034386 (A040056 n + A027746 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A136350.P13527083525022313036

/-! ## A136350.P17886097278004728317

`A002110(eq[2, A008350(n)])`
-/

namespace A136350.P17886097278004728317
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008350 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002110 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A136350.P17886097278004728317

/-!
# A136351: Primorial numbers p# such that p# + 1 is a prime.

The programs for A136351, there is no canonical definition to state claims against.
-/

/-! ## A136351.P11269629134253127026

`A018239(n+1)-1`
-/

namespace A136351.P11269629134253127026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018239 (n + 1) - 1

end

end A136351.P11269629134253127026

/-! ## A136351.P15005052734036329711

`A002110(A014545(n+1))`
-/

namespace A136351.P15005052734036329711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002110 (A014545 (n + 1)).toNat

end

end A136351.P15005052734036329711

/-! ## A136351.P967221284828522821

`record[A305400(n)]`
-/

namespace A136351.P967221284828522821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305400 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A136351.P967221284828522821

/-!
# A136352: Primorials P for which neither P-1 nor P+1 is prime.

The programs for A136352, there is no canonical definition to state claims against.
-/

/-! ## A136352.P237316061906303218

`A136350(comp[n*∑[n]])`
-/

namespace A136352.P237316061906303218
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (∑ j ∈ Finset.range (n + 1), f2 j)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136350 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A136352.P237316061906303218

/-! ## A136352.P14202756091061682014

`A002110(lt[A292081(n+2), A097441(3*n+3)])`
-/

namespace A136352.P14202756091061682014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292081 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097441 (3 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002110 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A136352.P14202756091061682014

/-!
# A136353: First odd composite N divisible by precisely the first n odd primes with N-2 prime.

The programs for A136353, there is no canonical definition to state claims against.
-/

/-! ## A136353.P5105496167173729604

`A136356((n+1)*A252503(n+1))`
-/

namespace A136353.P5105496167173729604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136356 ((n + 1 : ℤ) * A252503 (n + 1)).toNat

end

end A136353.P5105496167173729604

/-! ## A136353.P8743712549358440338

`A136356(A252503(n+1)+n+n)`
-/

namespace A136353.P8743712549358440338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136356 (A252503 (n + 1) + (n : ℤ) + (n : ℤ)).toNat

end

end A136353.P8743712549358440338

/-! ## A136353.P13299757459828579567

`A136356(lcm(A103517(n), A252503(n+1)))`
-/

namespace A136353.P13299757459828579567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136356 (Int.lcm (A103517 n) (A252503 (n + 1)))

end

end A136353.P13299757459828579567

/-! ## A136353.P11271051540575667684

`A136356(A028310(n)+A009995(n+3))`
-/

namespace A136353.P11271051540575667684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136356 (A028310 n + A009995 (n + 3)).toNat

end

end A136353.P11271051540575667684

/-!
# A136354: a(n) is the smallest odd composite number m such that m+2 is prime and the set of distinct prime factors of m consists of the first n odd primes.

The programs for A136354, there is no canonical definition to state claims against.
-/

/-! ## A136354.P6729369515347215293

`p?[A136358(n+1)+2]-2`
-/

namespace A136354.P6729369515347215293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136358 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 2

end

end A136354.P6729369515347215293

/-! ## A136354.P17580150873560665405

`A136357(A047231(n+2)+A045659(n))`
-/

namespace A136354.P17580150873560665405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136357 (A047231 (n + 2) + A045659 n).toNat

end

end A136354.P17580150873560665405

/-!
# A136355: Numbers of the form P = product of the first k odd primes where P+2 is composite.

The programs for A136355, there is no canonical definition to state claims against.
-/

/-! ## A136355.P18070899233819251391

`A121566(A178641(n+1))`
-/

namespace A136355.P18070899233819251391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121566 (A178641 (n + 1)).toNat

end

end A136355.P18070899233819251391

/-! ## A136355.P4207558691888787750

`A070826(lt[3, A233308(∑{digits}[n, n*#])])`
-/

namespace A136355.P4207558691888787750
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233308 ((SequenceMachineLib.digits10 (f3 n)).map fun (x : ℕ) => n * x).sum

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070826 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A136355.P4207558691888787750

/-!
# A136356: Increasing sequence obtained by union of two sequences A136353 and {b(n)}, where b(n) is the smallest composite number m such that m-1 is prime and the set of distinct prime factors of m consists of the first n primes.

The programs for A136356, there is no canonical definition to state claims against.
-/

/-! ## A136356.P6816597767391808884

`A136358(n+1)/A331311(A000522(n))`
-/

namespace A136356.P6816597767391808884
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A136358 (n + 1) : ℚ) / (A331311 (A000522 n).toNat : ℚ)

end

end A136356.P6816597767391808884

/-! ## A136356.P11899682558686196735

`A136358(n+1)/A335452(A002533(n))`
-/

namespace A136356.P11899682558686196735
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A136358 (n + 1) : ℚ) / (A335452 (A002533 n).toNat : ℚ)

end

end A136356.P11899682558686196735

/-! ## A136356.P16050351779378713449

`A136358(n+1)/A354601(A007660(n))`
-/

namespace A136356.P16050351779378713449
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A136358 (n + 1) : ℚ) / (A354601 ((A007660 n).toNat + 10) : ℚ)

end

end A136356.P16050351779378713449

/-! ## A136356.P9592311369904162142

`A136358(n+1)/A332289(A184954(n))`
-/

namespace A136356.P9592311369904162142
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A136358 (n + 1) : ℚ) / (A332289 (A184954 n).toNat : ℚ)

end

end A136356.P9592311369904162142

/-!
# A136357: Increasing sequence obtained by union of two sequences A136354 and {b(n)}, where b(n) is the smallest composite number m such that m+1 is prime and the set of distinct prime factors of m consists of the first n primes.

The programs for A136357, there is no canonical definition to state claims against.
-/

/-! ## A136357.P11635633673418352049

`A136358(n+1)/A003557(A000108(n))`
-/

namespace A136357.P11635633673418352049
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A136358 (n + 1) : ℚ) / (A003557 (A000108 n).toNat : ℚ)

end

end A136357.P11635633673418352049

/-! ## A136357.P6318962197926487119

`A136358(n+1)/A001813(A090750(3*n+2))`
-/

namespace A136357.P6318962197926487119
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A136358 (n + 1) : ℚ) / (A001813 (A090750 (3 * n + 2)).toNat : ℚ)

end

end A136357.P6318962197926487119

/-! ## A136357.P839447893116592052

`A136358(n+1)/A274138(A350815(2*n+5))`
-/

namespace A136357.P839447893116592052
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A136358 (n + 1) : ℚ) / (A274138 (A350815 (2 * n + 5)).toNat : ℚ)

end

end A136357.P839447893116592052

/-! ## A136357.P15267229811817938452

`A136358(n+1)/A000034(A136375(n))`
-/

namespace A136357.P15267229811817938452
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A136358 (n + 1) : ℚ) / (A000034 (A136375 n).toNat : ℚ)

end

end A136357.P15267229811817938452

/-!
# A136358: Increasing sequence obtained by union of two sequences {b(n)} and {c(n)}, where b(n) is the smallest odd composite number m such that both m-2 and m+2 are prime and the set of distinct prime factors of m consists of the first n odd primes and c(n) is the smallest composite number m such that both m-1 and m+1 are primes and the set of the distinct prime factors of m consists of the first n primes.

The programs for A136358, there is no canonical definition to state claims against.
-/

/-! ## A136358.P5038326010262000722

`A000688(A000108(n))*A136357(n+1)`
-/

namespace A136358.P5038326010262000722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000688 (A000108 n).toNat * A136357 (n + 1)

end

end A136358.P5038326010262000722

/-! ## A136358.P906733543965342797

`A136357(n+1)*A335521(A000055(n))`
-/

namespace A136358.P906733543965342797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136357 (n + 1) * A335521 (A000055 n).toNat

end

end A136358.P906733543965342797

/-! ## A136358.P14581753423417584102

`lcm(A135227(n), A136357(A044912(n+1)))`
-/

namespace A136358.P14581753423417584102
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A135227 n) (A136357 (A044912 (n + 1)).toNat)

end

end A136358.P14581753423417584102

/-! ## A136358.P7244034819375390927

`∪[A075590(n+1), A003961(A075590(n+1))]`
-/

namespace A136358.P7244034819375390927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075590 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (A075590 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A136358.P7244034819375390927

/-!
# A136359: Perfect squares in A133459; or perfect squares that are the sums of two nonzero pentagonal pyramidal numbers.

The programs for A136359, there is no canonical definition to state claims against.
-/

/-! ## A136359.P14336533664923524631

`A136360(n+1)²`
-/

namespace A136359.P14336533664923524631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136360 (n + 1) ^ 2

end

end A136359.P14336533664923524631

/-! ## A136359.P18287952044552317712

`record[A136360(A117910(n))²]`
-/

namespace A136359.P18287952044552317712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136360 (A117910 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A136359.P18287952044552317712

/-! ## A136359.P10223117587677833615

`record[A136360(A126759(n))²]`
-/

namespace A136359.P10223117587677833615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136360 (A126759 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A136359.P10223117587677833615

/-! ## A136359.P3597677938178448000

`record[A136360(A133310(n))²]`
-/

namespace A136359.P3597677938178448000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136360 (A133310 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A136359.P3597677938178448000

/-! ## A136359.P15708667538333495223

`record[A136360(A152271(n))²]`
-/

namespace A136359.P15708667538333495223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136360 (A152271 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A136359.P15708667538333495223

/-! ## A136359.P9544345222681032075

`record[A136360(A193592(n))²]`
-/

namespace A136359.P9544345222681032075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136360 (A193592 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A136359.P9544345222681032075

/-! ## A136359.P440396214731756532

`record[A136360(A262519(n))²]`
-/

namespace A136359.P440396214731756532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136360 (A262519 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A136359.P440396214731756532

/-! ## A136359.P7881684631417705349

`record[A136360(A344180(n))²]`
-/

namespace A136359.P7881684631417705349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136360 (A344180 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A136359.P7881684631417705349

/-! ## A136359.P18081926920104776207

`A000463(2*A136360(n+1))`
-/

namespace A136359.P18081926920104776207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (2 * A136360 (n + 1)).toNat

end

end A136359.P18081926920104776207

/-! ## A136359.P10620784664038992819

`A136360(n+1)^A020639(2*(n+1))`
-/

namespace A136359.P10620784664038992819
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A136360 (n + 1) : ℚ) ^ (A020639 (2 * (n + 1)) : ℤ)

end

end A136359.P10620784664038992819

/-!
# A136360: Square roots of the perfect squares in A133459.

The programs for A136360, there is no canonical definition to state claims against.
-/

/-! ## A136360.P15754390332811313065

`sqrt(A136359(n+1))`
-/

namespace A136360.P15754390332811313065
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A136359 (n + 1) : ℝ)

end

end A136360.P15754390332811313065

/-! ## A136360.P695086637834305174

`root(A136359(2*n-n+1), 2)`
-/

namespace A136360.P695086637834305174
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A136359 ((2 * n : ℤ) - (n : ℤ) + 1).toNat : ℝ) ^ (1 / (2 : ℝ))

end

end A136360.P695086637834305174

/-! ## A136360.P657325502008246803

`A000027(root(A136359(n+1), 2))`
-/

namespace A136360.P657325502008246803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.roundAway ((A136359 (n + 1) : ℝ) ^ (1 / (2 : ℝ)))).toNat

end

end A136360.P657325502008246803

/-! ## A136360.P9079369156574951643

`A004526(2*root(A136359(n+1), 2))`
-/

namespace A136360.P9079369156574951643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (SequenceMachineLib.roundAway (2 * (A136359 (n + 1) : ℝ) ^ (1 / (2 : ℝ)))).toNat

end

end A136360.P9079369156574951643

/-! ## A136360.P14214324294366644413

`A005843(root(A136359(n+1), 2))/2`
-/

namespace A136360.P14214324294366644413
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005843 (SequenceMachineLib.roundAway ((A136359 (n + 1) : ℝ) ^ (1 / (2 : ℝ)))).toNat : ℚ) / 2

end

end A136360.P14214324294366644413

/-! ## A136360.P10945944797367876298

`or(root(A136359(n+1), 2), A000038(n))`
-/

namespace A136360.P10945944797367876298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (SequenceMachineLib.roundAway ((A136359 (n + 1) : ℝ) ^ (1 / (2 : ℝ)))) (A000038 n)

end

end A136360.P10945944797367876298

/-! ## A136360.P1313038241565378314

`root(A136359(n+1), 2)*A007318(∑[n])`
-/

namespace A136360.P1313038241565378314
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A136359 (n + 1) : ℝ) ^ (1 / (2 : ℝ)) * (A007318 (∑ j ∈ Finset.range (n + 1), f1 j) : ℝ)

end

end A136360.P1313038241565378314

/-! ## A136360.P1139287253511384020

`root(A136359(n+1), 2)%A000041(n+8)`
-/

namespace A136360.P1139287253511384020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A136359 (n + 1) : ℝ) ^ (1 / (2 : ℝ)))) (A000041 (n + 8))

end

end A136360.P1139287253511384020

/-!
# A136361: Square roots of the perfect squares in A136360; or numbers k such that k^4 is in A133459 = the sums of two nonzero pentagonal pyramidal numbers.

The programs for A136361, there is no canonical definition to state claims against.
-/

/-! ## A136361.P4518445648125070327

`A326851(3*n+4)*A336985(A218781(n+1))`
-/

namespace A136361.P4518445648125070327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326851 (3 * n + 4) * A336985 (A218781 (n + 1)).toNat

end

end A136361.P4518445648125070327

/-!
# A136362: Numbers n such that P+n is not irreducible, where P = x^8 - 8*x^6 + 20*x^4 - 16*x^2 + 2.

The programs for A136362, the canonical program `A136362.P7404930695159445842` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A136362 has offset 1).

The definition of A136362 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A136362.P7404930695159445842

`(2*(n²-val(a(n-1), 2)))²-2` with `a(0)=1`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A136362

/-- `(2*(n²-val(a(n-1), 2)))²-2` -/
def P7404930695159445842.Spec : Prop :=
  ∀ n, P7404930695159445842.a n = A136362 (n + 1)

theorem P7404930695159445842.correct : P7404930695159445842.Spec := by
  intro n
  simp only [A136362, Nat.add_sub_cancel]

end A136362

/-! ## A136362.P14927543100172507637

`(2*n)²*a(n-1)%n²+2` with `a(0)=1`
-/

namespace A136362.P14927543100172507637
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (2 * n) ^ 2 * (a (n - 1) % n ^ 2) + 2

end

end A136362.P14927543100172507637

namespace A136362

/-- `(2*n)²*a(n-1)%n²+2` -/
def P14927543100172507637.Spec : Prop :=
  ∀ n, (P14927543100172507637.a n : ℤ) = A136362 (n + 1)

end A136362

/-! ## A136362.P17969520327293786230

`abs(2-((1-n)*A103517(n))²)`
-/

namespace A136362.P17969520327293786230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - ((1 - (n : ℤ)) * A103517 n) ^ 2|

end

end A136362.P17969520327293786230

namespace A136362

/-- `abs(2-((1-n)*A103517(n))²)` -/
def P17969520327293786230.Spec : Prop :=
  ∀ n, P17969520327293786230.a n = A136362 (n + 1)

end A136362

/-! ## A136362.P16433995985076736402

`abs(2-((n+1)*(A004277(n)-2))²)`
-/

namespace A136362.P16433995985076736402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - ((n + 1 : ℤ) * (A004277 n - 2)) ^ 2|

end

end A136362.P16433995985076736402

namespace A136362

/-- `abs(2-((n+1)*(A004277(n)-2))²)` -/
def P16433995985076736402.Spec : Prop :=
  ∀ n, P16433995985076736402.a n = A136362 (n + 1)

end A136362

/-! ## A136362.P12488068477613416859

`A060626(n²-a(and(1, A000040(n))))` with `a(0)=1`
-/

namespace A136362.P12488068477613416859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A060626 ((n ^ 2 : ℤ) - a (Int.land 1 (A000040 n)).toNat).toNat

end

end A136362.P12488068477613416859

namespace A136362

/-- `A060626(n²-a(and(1, A000040(n))))` -/
def P12488068477613416859.Spec : Prop :=
  ∀ n, P12488068477613416859.a n = A136362 (n + 1)

end A136362

/-! ## A136362.P177402702599959776

`xor(1, A132411(2*A132411(n)))`
-/

namespace A136362.P177402702599959776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A132411 (2 * A132411 n).toNat)

end

end A136362.P177402702599959776

namespace A136362

/-- `xor(1, A132411(2*A132411(n)))` -/
def P177402702599959776.Spec : Prop :=
  ∀ n, P177402702599959776.a n = A136362 (n + 1)

end A136362

/-! ## A136362.P13939373970119847645

`record[gcd(A008865(2*(n+1)), A053186(n+2))]`
-/

namespace A136362.P13939373970119847645
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008865 (2 * (n + 1))) (A053186 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A136362.P13939373970119847645

namespace A136362

/-- `record[gcd(A008865(2*(n+1)), A053186(n+2))]` -/
def P13939373970119847645.Spec : Prop :=
  ∀ n, (P13939373970119847645.a n : ℤ) = A136362 (n + 1)

end A136362

/-! ## A136362.P9464906243935745313

`abs(A053755(n)-A102762(A058331(n)))`
-/

namespace A136362.P9464906243935745313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A053755 n - A102762 (A058331 n).toNat|

end

end A136362.P9464906243935745313

namespace A136362

/-- `abs(A053755(n)-A102762(A058331(n)))` -/
def P9464906243935745313.Spec : Prop :=
  ∀ n, P9464906243935745313.a n = A136362 (n + 1)

end A136362

/-!
# A136363: a(n) = Sum_{ composite k, 1 <= k <= 10^n} (Sum of divisors d of k with 1 < d < k).

The programs for A136363, the canonical program `A136363.P13840495246310185184` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A136363 has offset 1).

The definition of A136363 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A136363.P13840495246310185184

`A072692(n+1)-10^(n+1)*(10^(n+1)+3)/2+1`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A136363

/-- `A072692(n+1)-10^(n+1)*(10^(n+1)+3)/2+1` -/
def P13840495246310185184.Spec : Prop :=
  ∀ n, P13840495246310185184.a n = (A136363 (n + 1) : ℚ)

end A136363

/-!
# A136364: a(n) = Sum_{ composite k, 1 <= k <= 10^n} (Number of divisors d of k with 1 < d < k).

The programs for A136364, the canonical program `A136364.P1042819273145216496` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A136364 has offset 1).

The definition of A136364 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A136364.P1042819273145216496

`A057494(n+1)-2*10^(n+1)+1`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A136364

/-- `A057494(n+1)-2*10^(n+1)+1` -/
def P1042819273145216496.Spec : Prop :=
  ∀ n, P1042819273145216496.a n = A136364 (n + 1)

theorem P1042819273145216496.correct : P1042819273145216496.Spec := by
  intro n
  simp only [A136364, Nat.add_sub_cancel]

end A136364

/-!
# A136368: Numerator of Sum_{k=1..n} (-1)^(k+1)/prime(k)^2.

The programs for A136368, there is no canonical definition to state claims against.
-/

/-! ## A136368.P8992880397901005996

`Δ[A189997(n)]-A136370(n+1)`
-/

namespace A136368.P8992880397901005996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189997 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A136370 (n + 1)

end

end A136368.P8992880397901005996

/-! ## A136368.P979614335334816912

`A061742(n+1)-A136370(n+1)`
-/

namespace A136368.P979614335334816912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061742 (n + 1) - A136370 (n + 1)

end

end A136368.P979614335334816912

/-! ## A136368.P11476961234948645764

`A061742(A000027(n+1))%A136370(n+1)`
-/

namespace A136368.P11476961234948645764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A061742 (A000027 (n + 1)).toNat) (A136370 (n + 1))

end

end A136368.P11476961234948645764

/-! ## A136368.P12195676151489600131

`A061742(A187829(n+1))%A136370(n+1)`
-/

namespace A136368.P12195676151489600131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A061742 (A187829 (n + 1)).toNat) (A136370 (n + 1))

end

end A136368.P12195676151489600131

/-! ## A136368.P17594840630497505238

`A002110(n+1)*A002110(n+1)-A136370(n+1)`
-/

namespace A136368.P17594840630497505238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002110 (n + 1) * A002110 (n + 1) - A136370 (n + 1)

end

end A136368.P17594840630497505238

/-!
# A136370: Numerator of 1 - Sum_{k=1..n} (-1)^(k+1)/prime(k)^2.

The programs for A136370, there is no canonical definition to state claims against.
-/

/-! ## A136370.P6157593901288819706

`Δ[A189997(n)]-A136368(n+1)`
-/

namespace A136370.P6157593901288819706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189997 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A136368 (n + 1)

end

end A136370.P6157593901288819706

/-! ## A136370.P17087022799392268826

`A061742(n+1)-A136368(n+1)`
-/

namespace A136370.P17087022799392268826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061742 (n + 1) - A136368 (n + 1)

end

end A136370.P17087022799392268826

/-! ## A136370.P16447139961330398526

`A002110(n+1)²-A136368(n+1)`
-/

namespace A136370.P16447139961330398526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002110 (n + 1) ^ 2 - A136368 (n + 1)

end

end A136370.P16447139961330398526

/-!
# A136371: Numbers k such that A136370(k) is prime.

The programs for A136371, there is no canonical definition to state claims against.
-/

/-! ## A136371.P17413355490067652290

`A233366(a(n-1))` with `a(0)=1, a(1)=2, a(2)=3, a(3)=5`
-/

namespace A136371.P17413355490067652290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 3, 5] fun n a =>
  A233366 (a (n - 1)).toNat

end

end A136371.P17413355490067652290

/-! ## A136371.P13788485841590756915

`A268725(C(∪[2*(n+1)², (n+1)²], (n+1)/2^val(n+1, 2)))`
-/

namespace A136371.P13788485841590756915
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268725 (Nat.choose (SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = x) n) (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))).toNat)

end

end A136371.P13788485841590756915

/-!
# A136372: Prime factors of terms of A127263.

The programs for A136372, there is no canonical definition to state claims against.
-/

/-! ## A136372.P10929640273862383773

`A057719(A065027(n)%A057692(n))`
-/

namespace A136372.P10929640273862383773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057719 (Int.tmod (A065027 n) (A057692 n)).toNat

end

end A136372.P10929640273862383773

/-!
# A136374: a(n) = (A128677(n) - 1)/(2*A000040(n)).

The programs for A136374, there is no canonical definition to state claims against.
-/

/-! ## A136374.P12972165379446580254

`(A128677(n+2)-1)/(2*A000040(n+2))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A136374.P12972165379446580254
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A128677 (n + 2) - 1 : ℚ) / (2 * A000040 (n + 2) : ℚ)

end

end A136374.P12972165379446580254

/-! ## A136374.P3214382372535064429

`floor(A128677(n+2)/A005843(A000040(n+2)))`
-/

namespace A136374.P3214382372535064429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A128677 (n + 2) : ℚ) / (A005843 (A000040 (n + 2)).toNat : ℚ)⌋

end

end A136374.P3214382372535064429

/-!
# A136376: a(n) = n*F(n) + (n-1)*F(n-1).

The programs for A136376, the canonical program `A136376.P9344148242282904408` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A136376 has offset 1).

The definition of A136376 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)*A000045(n+1)+n*A000045(n)` (program `A136376.P9344148242282904408`, by `A136376.P9344148242282904408.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A136376.P5536346243741988484

`A045925(n+1)+A045925(n)`
-/

namespace A136376.P5536346243741988484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045925 (n + 1) + A045925 n

end

end A136376.P5536346243741988484

namespace A136376

/-- `A045925(n+1)+A045925(n)` -/
def P5536346243741988484.Spec : Prop :=
  ∀ n, P5536346243741988484.a n = A136376 (n + 1)

theorem P5536346243741988484.correct : P5536346243741988484.Spec := by
  intro n
  simp only [A136376, Nat.add_sub_cancel, A136376.P5536346243741988484.a, A136376.P9344148242282904408.a, A000045, A000045.P11838749114346432762.a, A045925, A045925.P2609971174242523106.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A136376

/-! ## A136376.P9344148242282904408

`(n+1)*A000045(n+1)+n*A000045(n)`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A136376

/-- `(n+1)*A000045(n+1)+n*A000045(n)` -/
def P9344148242282904408.Spec : Prop :=
  ∀ n, P9344148242282904408.a n = A136376 (n + 1)

theorem P9344148242282904408.correct : P9344148242282904408.Spec := by
  intro n
  simp only [A136376, Nat.add_sub_cancel]

end A136376

/-! ## A136376.P11865108081948501189

`2*a(n-1)+a(n-2)-2*a(n-3)-a(n-4)` with `a(0)=1, a(1)=3, a(2)=8, a(3)=18`
-/

namespace A136376.P11865108081948501189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 8, 18] fun n a =>
  2 * a (n - 1) + a (n - 2) - 2 * a (n - 3) - a (n - 4)

end

end A136376.P11865108081948501189

namespace A136376

/-- `2*a(n-1)+a(n-2)-2*a(n-3)-a(n-4)` -/
def P11865108081948501189.Spec : Prop :=
  ∀ n, P11865108081948501189.a n = A136376 (n + 1)

end A136376

/-! ## A136376.P18413727595462894929

`ogf((1+x+x^2+x^3)/(1-2x-x^2+2x^3+x^4))`
-/

namespace A136376.P18413727595462894929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, 1, 1] [1, -2, -1, 2, 1] n

end

end A136376.P18413727595462894929

namespace A136376

/-- `ogf((1+x+x^2+x^3)/(1-2x-x^2+2x^3+x^4))` -/
def P18413727595462894929.Spec : Prop :=
  ∀ n, P18413727595462894929.a n = A136376 (n + 1)

end A136376

/-! ## A136376.P9912545234814071200

`A061705(n)+a(n-1)` with `a(0)=1`
-/

namespace A136376.P9912545234814071200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A061705 n + a (n - 1)

end

end A136376.P9912545234814071200

namespace A136376

/-- `A061705(n)+a(n-1)` -/
def P9912545234814071200.Spec : Prop :=
  ∀ n, P9912545234814071200.a n = A136376 (n + 1)

end A136376

/-! ## A136376.P1829274599349426362

`a(n-1)+A007574(n)+n` with `a(0)=1`
-/

namespace A136376.P1829274599349426362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A007574 n + (n : ℤ))

end

end A136376.P1829274599349426362

namespace A136376

/-- `a(n-1)+A007574(n)+n` -/
def P1829274599349426362.Spec : Prop :=
  ∀ n, P1829274599349426362.a n = A136376 (n + 1)

end A136376

/-! ## A136376.P18021449331855346384

`round((n-1+ϕ)*A000045(n+2))`
-/

namespace A136376.P18021449331855346384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((((n : ℤ) - 1 : ℝ) + Real.goldenRatio) * (A000045 (n + 2) : ℝ))

end

end A136376.P18021449331855346384

namespace A136376

/-- `round((n-1+ϕ)*A000045(n+2))` -/
def P18021449331855346384.Spec : Prop :=
  ∀ n, P18021449331855346384.a n = A136376 (n + 1)

end A136376

/-! ## A136376.P18258415894628474619

`A000032(n+1)+a(n-2)+a(n-1)` with `a(0)=1, a(1)=3`
-/

namespace A136376.P18258415894628474619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  A000032 (n + 1) + (a (n - 2) + a (n - 1))

end

end A136376.P18258415894628474619

namespace A136376

/-- `A000032(n+1)+a(n-2)+a(n-1)` -/
def P18258415894628474619.Spec : Prop :=
  ∀ n, P18258415894628474619.a n = A136376 (n + 1)

end A136376

/-! ## A136376.P8755711999187411412

`A014739(n)+A014286(n)`
-/

namespace A136376.P8755711999187411412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014739 n + A014286 n

end

end A136376.P8755711999187411412

namespace A136376

/-- `A014739(n)+A014286(n)` -/
def P8755711999187411412.Spec : Prop :=
  ∀ n, P8755711999187411412.a n = A136376 (n + 1)

end A136376

/-! ## A136376.P15768333001003781571

`A179023(n)+A081659(n)`
-/

namespace A136376.P15768333001003781571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179023 n + A081659 n

end

end A136376.P15768333001003781571

namespace A136376

/-- `A179023(n)+A081659(n)` -/
def P15768333001003781571.Spec : Prop :=
  ∀ n, P15768333001003781571.a n = A136376 (n + 1)

end A136376

/-! ## A136376.P2181863534523745171

`A123194(n)-A157726(n)`
-/

namespace A136376.P2181863534523745171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123194 n - A157726 n

end

end A136376.P2181863534523745171

namespace A136376

/-- `A123194(n)-A157726(n)` -/
def P2181863534523745171.Spec : Prop :=
  ∀ n, P2181863534523745171.a n = A136376 (n + 1)

end A136376

/-! ## A136376.P7647868452403213655

`A023607(n)+A007502(n+1)`
-/

namespace A136376.P7647868452403213655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023607 n + A007502 (n + 1)

end

end A136376.P7647868452403213655

namespace A136376

/-- `A023607(n)+A007502(n+1)` -/
def P7647868452403213655.Spec : Prop :=
  ∀ n, P7647868452403213655.a n = A136376 (n + 1)

theorem P7647868452403213655.correct : P7647868452403213655.Spec := by
  intro n
  simp only [A136376, Nat.add_sub_cancel, A136376.P7647868452403213655.a, A136376.P9344148242282904408.a, A000045, A000045.P11838749114346432762.a, A007502, A007502.P10849111920373228728.a, A023607, A023607.P1034350130520621684.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A136376

/-! ## A136376.P2215087985532909612

`A178521(n)+A094588(n+1)`
-/

namespace A136376.P2215087985532909612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178521 n + A094588 (n + 1)

end

end A136376.P2215087985532909612

namespace A136376

/-- `A178521(n)+A094588(n+1)` -/
def P2215087985532909612.Spec : Prop :=
  ∀ n, P2215087985532909612.a n = A136376 (n + 1)

end A136376

/-! ## A136376.P9453038296242631792

`A023607(n+1)-A000045(n)`
-/

namespace A136376.P9453038296242631792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023607 (n + 1) - A000045 n

end

end A136376.P9453038296242631792

namespace A136376

/-- `A023607(n+1)-A000045(n)` -/
def P9453038296242631792.Spec : Prop :=
  ∀ n, P9453038296242631792.a n = A136376 (n + 1)

end A136376

/-! ## A136376.P3413762085223606482

`A004798(n+1)-A029907(n)`
-/

namespace A136376.P3413762085223606482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004798 (n + 1) - A029907 n

end

end A136376.P3413762085223606482

namespace A136376

/-- `A004798(n+1)-A029907(n)` -/
def P3413762085223606482.Spec : Prop :=
  ∀ n, P3413762085223606482.a n = A136376 (n + 1)

end A136376

/-! ## A136376.P17288672933645802305

`A067331(n)-A208354(n+1)`
-/

namespace A136376.P17288672933645802305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067331 n - A208354 (n + 1)

end

end A136376.P17288672933645802305

namespace A136376

/-- `A067331(n)-A208354(n+1)` -/
def P17288672933645802305.Spec : Prop :=
  ∀ n, P17288672933645802305.a n = A136376 (n + 1)

end A136376

/-! ## A136376.P10340346190437817759

`A264147(n+2)+A099920(n)`
-/

namespace A136376.P10340346190437817759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264147 (n + 2) + A099920 n

end

end A136376.P10340346190437817759

namespace A136376

/-- `A264147(n+2)+A099920(n)` -/
def P10340346190437817759.Spec : Prop :=
  ∀ n, P10340346190437817759.a n = A136376 (n + 1)

end A136376

/-! ## A136376.P13331286889868732480

`∑[A094588(n+1)]-A000045(n)`
-/

namespace A136376.P13331286889868732480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094588 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A000045 n

end

end A136376.P13331286889868732480

namespace A136376

/-- `∑[A094588(n+1)]-A000045(n)` -/
def P13331286889868732480.Spec : Prop :=
  ∀ n, P13331286889868732480.a n = A136376 (n + 1)

end A136376

/-! ## A136376.P5050287987357020011

`A014739(n)+∑[n*A000045(n)]`
-/

namespace A136376.P5050287987357020011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014739 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A136376.P5050287987357020011

namespace A136376

/-- `A014739(n)+∑[n*A000045(n)]` -/
def P5050287987357020011.Spec : Prop :=
  ∀ n, P5050287987357020011.a n = A136376 (n + 1)

end A136376

/-!
# A136380: Quotient obtained when A036284(n) is considered as a GF(2)[X]-polynomial and it is divided by (x^3 + 1) ^ A000225(n-1).

The programs for A136380, there is no canonical definition to state claims against.
-/

/-! ## A136380.P6753793028120478822

`4*A136382(n+1)`
-/

namespace A136380.P6753793028120478822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A136382 (n + 1)

end

end A136380.P6753793028120478822

/-!
# A136382: a(n) = A136380(n)/4.

The programs for A136382, there is no canonical definition to state claims against.
-/

/-! ## A136382.P13888922574291234232

`A136380(n+1)/4`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A136382.P13888922574291234232
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A136380 (n + 1) : ℚ) / 4

end

end A136382.P13888922574291234232

/-!
# A136391: a(n) = n*F(n) - (n-1)*F(n-1), where the F(j)'s are the Fibonacci numbers (F(0)=0, F(1)=1).

The programs for A136391, the canonical program `A136391.P6289951131853305301` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A136391 has offset 1).

The definition of A136391 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)*A000045(n+1)-n*A000045(n)` (program `A136391.P6289951131853305301`, by `A136391.P6289951131853305301.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A136391.P12180431561708611399

`2*a(n-1)+a(n-2)-2*a(n-3)-a(n-4)` with `a(0)=1, a(1)=1, a(2)=4, a(3)=6`
-/

namespace A136391.P12180431561708611399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 4, 6] fun n a =>
  2 * a (n - 1) + a (n - 2) - 2 * a (n - 3) - a (n - 4)

end

end A136391.P12180431561708611399

namespace A136391

/-- `2*a(n-1)+a(n-2)-2*a(n-3)-a(n-4)` -/
def P12180431561708611399.Spec : Prop :=
  ∀ n, P12180431561708611399.a n = A136391 (n + 1)

end A136391

/-! ## A136391.P1222771271476607664

`A045925(n+1)-A045925(n)`
-/

namespace A136391.P1222771271476607664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045925 (n + 1) - A045925 n

end

end A136391.P1222771271476607664

namespace A136391

/-- `A045925(n+1)-A045925(n)` -/
def P1222771271476607664.Spec : Prop :=
  ∀ n, P1222771271476607664.a n = A136391 (n + 1)

theorem P1222771271476607664.correct : P1222771271476607664.Spec := by
  intro n
  simp only [A136391, Nat.add_sub_cancel, A136391.P1222771271476607664.a, A136391.P6289951131853305301.a, A000045, A000045.P11838749114346432762.a, A045925, A045925.P2609971174242523106.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A136391

/-! ## A136391.P6289951131853305301

`(n+1)*A000045(n+1)-n*A000045(n)`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A136391

/-- `(n+1)*A000045(n+1)-n*A000045(n)` -/
def P6289951131853305301.Spec : Prop :=
  ∀ n, P6289951131853305301.a n = A136391 (n + 1)

theorem P6289951131853305301.correct : P6289951131853305301.Spec := by
  intro n
  simp only [A136391, Nat.add_sub_cancel]

end A136391

/-! ## A136391.P6060450159861718639

`ogf((1-x+x^2-x^3)/(1-2x-x^2+2x^3+x^4))`
-/

namespace A136391.P6060450159861718639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1, 1, -1] [1, -2, -1, 2, 1] n

end

end A136391.P6060450159861718639

namespace A136391

/-- `ogf((1-x+x^2-x^3)/(1-2x-x^2+2x^3+x^4))` -/
def P6060450159861718639.Spec : Prop :=
  ∀ n, P6060450159861718639.a n = A136391 (n + 1)

end A136391

/-! ## A136391.P11607266554156911283

`a(n-1)+A000032(n-2)+a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A136391.P11607266554156911283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) + (A000032 (n - 2) + a (n - 2))

end

end A136391.P11607266554156911283

namespace A136391

/-- `a(n-1)+A000032(n-2)+a(n-2)` -/
def P11607266554156911283.Spec : Prop :=
  ∀ n, P11607266554156911283.a n = A136391 (n + 1)

end A136391

/-! ## A136391.P8272915209532404946

`A029907(n)+A006367(n)`
-/

namespace A136391.P8272915209532404946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029907 n + A006367 n

end

end A136391.P8272915209532404946

namespace A136391

/-- `A029907(n)+A006367(n)` -/
def P8272915209532404946.Spec : Prop :=
  ∀ n, P8272915209532404946.a n = A136391 (n + 1)

end A136391

/-! ## A136391.P754220364535770782

`A240847(n)+A055244(n)`
-/

namespace A136391.P754220364535770782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240847 n + A055244 n

end

end A136391.P754220364535770782

namespace A136391

/-- `A240847(n)+A055244(n)` -/
def P754220364535770782.Spec : Prop :=
  ∀ n, P754220364535770782.a n = A136391 (n + 1)

end A136391

/-! ## A136391.P3202963093313924755

`A212804(n)+A094588(n)`
-/

namespace A136391.P3202963093313924755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n + A094588 n

end

end A136391.P3202963093313924755

namespace A136391

/-- `A212804(n)+A094588(n)` -/
def P3202963093313924755.Spec : Prop :=
  ∀ n, P3202963093313924755.a n = A136391 (n + 1)

end A136391

/-! ## A136391.P14320056976737699392

`A029907(n)+Δ[A010049(n)]`
-/

namespace A136391.P14320056976737699392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010049 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029907 n + (f1 (n + 1) - f1 n)

end

end A136391.P14320056976737699392

namespace A136391

/-- `A029907(n)+Δ[A010049(n)]` -/
def P14320056976737699392.Spec : Prop :=
  ∀ n, P14320056976737699392.a n = A136391 (n + 1)

end A136391

/-! ## A136391.P627058654160454587

`A006490(n+1)+A000045(n)`
-/

namespace A136391.P627058654160454587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006490 (n + 1) + A000045 n

end

end A136391.P627058654160454587

namespace A136391

/-- `A006490(n+1)+A000045(n)` -/
def P627058654160454587.Spec : Prop :=
  ∀ n, P627058654160454587.a n = A136391 (n + 1)

end A136391

/-! ## A136391.P10256120154404802221

`A094588(n)-A152163(n+1)`
-/

namespace A136391.P10256120154404802221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094588 n - A152163 (n + 1)

end

end A136391.P10256120154404802221

namespace A136391

/-- `A094588(n)-A152163(n+1)` -/
def P10256120154404802221.Spec : Prop :=
  ∀ n, P10256120154404802221.a n = A136391 (n + 1)

end A136391

/-! ## A136391.P10845114382190487095

`A264147(n)+A000045(n+2)`
-/

namespace A136391.P10845114382190487095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264147 n + A000045 (n + 2)

end

end A136391.P10845114382190487095

namespace A136391

/-- `A264147(n)+A000045(n+2)` -/
def P10845114382190487095.Spec : Prop :=
  ∀ n, P10845114382190487095.a n = A136391 (n + 1)

end A136391

/-! ## A136391.P5863931959949667026

`A212804(n+1)+A006490(n+1)`
-/

namespace A136391.P5863931959949667026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (n + 1) + A006490 (n + 1)

end

end A136391.P5863931959949667026

namespace A136391

/-- `A212804(n+1)+A006490(n+1)` -/
def P5863931959949667026.Spec : Prop :=
  ∀ n, P5863931959949667026.a n = A136391 (n + 1)

end A136391

/-! ## A136391.P5466420924890025850

`A208354(n+1)-A240847(n+1)`
-/

namespace A136391.P5466420924890025850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208354 (n + 1) - A240847 (n + 1)

end

end A136391.P5466420924890025850

namespace A136391

/-- `A208354(n+1)-A240847(n+1)` -/
def P5466420924890025850.Spec : Prop :=
  ∀ n, P5466420924890025850.a n = A136391 (n + 1)

end A136391

/-! ## A136391.P6574474969469583595

`A006490(n+1)-A152163(n+2)`
-/

namespace A136391.P6574474969469583595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006490 (n + 1) - A152163 (n + 2)

end

end A136391.P6574474969469583595

namespace A136391

/-- `A006490(n+1)-A152163(n+2)` -/
def P6574474969469583595.Spec : Prop :=
  ∀ n, P6574474969469583595.a n = A136391 (n + 1)

end A136391

/-! ## A136391.P8267051814057282584

`A010049(n+2)-A191830(n+1)`
-/

namespace A136391.P8267051814057282584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010049 (n + 2) - A191830 (n + 1)

end

end A136391.P8267051814057282584

namespace A136391

/-- `A010049(n+2)-A191830(n+1)` -/
def P8267051814057282584.Spec : Prop :=
  ∀ n, P8267051814057282584.a n = A136391 (n + 1)

end A136391

/-! ## A136391.P1803326286649015100

`A006490(n+1)+A002062(n)-n`
-/

namespace A136391.P1803326286649015100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006490 (n + 1) + (A002062 n - (n : ℤ))

end

end A136391.P1803326286649015100

namespace A136391

/-- `A006490(n+1)+A002062(n)-n` -/
def P1803326286649015100.Spec : Prop :=
  ∀ n, P1803326286649015100.a n = A136391 (n + 1)

end A136391

/-! ## A136391.P11513784779627857330

`A000045(n+1)-n*A152163(n+1)`
-/

namespace A136391.P11513784779627857330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) - (n : ℤ) * A152163 (n + 1)

end

end A136391.P11513784779627857330

namespace A136391

/-- `A000045(n+1)-n*A152163(n+1)` -/
def P11513784779627857330.Spec : Prop :=
  ∀ n, P11513784779627857330.a n = A136391 (n + 1)

end A136391

/-! ## A136391.P502256630642355285

`A000045(n+1)+n*A000045(abs(1-n))`
-/

namespace A136391.P502256630642355285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) + (n : ℤ) * A000045 |1 - (n : ℤ)|.toNat

end

end A136391.P502256630642355285

namespace A136391

/-- `A000045(n+1)+n*A000045(abs(1-n))` -/
def P502256630642355285.Spec : Prop :=
  ∀ n, P502256630642355285.a n = A136391 (n + 1)

end A136391

/-! ## A136391.P7658214222348885444

`A000045(n)+A006367(n)+A001629(n)`
-/

namespace A136391.P7658214222348885444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n + (A006367 n + A001629 n)

end

end A136391.P7658214222348885444

namespace A136391

/-- `A000045(n)+A006367(n)+A001629(n)` -/
def P7658214222348885444.Spec : Prop :=
  ∀ n, P7658214222348885444.a n = A136391 (n + 1)

end A136391

/-!
# A136392: a(n) = 6*n^2 - 10*n + 5.

The programs for A136392, the canonical program `A136392.P9626772396593886433` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A136392 has offset 1).

The definition of A136392 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `6*(n+1)²-10*(n+1)+5` (program `A136392.P9626772396593886433`, by `A136392.P9626772396593886433.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A136392.P7929812527904623486

`a(n-1)+12*(n+1)-16` with `a(0)=1`
-/

namespace A136392.P7929812527904623486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (12 * (n + 1) : ℤ) - 16

end

end A136392.P7929812527904623486

namespace A136392

/-- `a(n-1)+12*(n+1)-16` -/
def P7929812527904623486.Spec : Prop :=
  ∀ n, P7929812527904623486.a n = A136392 (n + 1)

theorem P7929812527904623486.correct : P7929812527904623486.Spec := by
  intro n
  induction n with
  | zero => simp [A136392, A136392.P7929812527904623486.a, A136392.P9626772396593886433.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A136392, Nat.add_sub_cancel, A136392.P7929812527904623486.a, A136392.P9626772396593886433.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A136392

/-! ## A136392.P9626772396593886433

`6*(n+1)²-10*(n+1)+5`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A136392

/-- `6*(n+1)²-10*(n+1)+5` -/
def P9626772396593886433.Spec : Prop :=
  ∀ n, P9626772396593886433.a n = A136392 (n + 1)

theorem P9626772396593886433.correct : P9626772396593886433.Spec := by
  intro n
  simp only [A136392, Nat.add_sub_cancel]

end A136392

/-! ## A136392.P7294268891889747431

`∑[a(n-1)+12]` with `a(0)=1, a(1)=8`
-/

namespace A136392.P7294268891889747431
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 8] fun n f1 =>
  f1 (n - 1) + 12

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A136392.P7294268891889747431

namespace A136392

/-- `∑[a(n-1)+12]` -/
def P7294268891889747431.Spec : Prop :=
  ∀ n, (P7294268891889747431.a n : ℤ) = A136392 (n + 1)

end A136392

/-! ## A136392.P15671277827724918509

`or(1, n*(6*n+2))`
-/

namespace A136392.P15671277827724918509
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (n * (6 * n + 2))

end

end A136392.P15671277827724918509

namespace A136392

/-- `or(1, n*(6*n+2))` -/
def P15671277827724918509.Spec : Prop :=
  ∀ n, (P15671277827724918509.a n : ℤ) = A136392 (n + 1)

end A136392

/-! ## A136392.P10262836679539704046

`xor(1, n*(6*n+2))`
-/

namespace A136392.P10262836679539704046
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (n * (6 * n + 2))

end

end A136392.P10262836679539704046

namespace A136392

/-- `xor(1, n*(6*n+2))` -/
def P10262836679539704046.Spec : Prop :=
  ∀ n, (P10262836679539704046.a n : ℤ) = A136392 (n + 1)

end A136392

/-! ## A136392.P16714558665774797103

`ceil(or(1, 6*n)²/6)`
-/

namespace A136392.P16714558665774797103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.lor 1 (6 * n) ^ 2 : ℚ) / 6⌉

end

end A136392.P16714558665774797103

namespace A136392

/-- `ceil(or(1, 6*n)²/6)` -/
def P16714558665774797103.Spec : Prop :=
  ∀ n, P16714558665774797103.a n = A136392 (n + 1)

end A136392

/-! ## A136392.P17769851353275445847

`∑[ogf((1+6x+5x^2)/(1-2x+x^2))]`
-/

namespace A136392.P17769851353275445847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 6, 5] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A136392.P17769851353275445847

namespace A136392

/-- `∑[ogf((1+6x+5x^2)/(1-2x+x^2))]` -/
def P17769851353275445847.Spec : Prop :=
  ∀ n, P17769851353275445847.a n = A136392 (n + 1)

end A136392

/-! ## A136392.P13263080296547347485

`ogf((1+6x+5x^2)/(1-3x+3x^2-x^3))`
-/

namespace A136392.P13263080296547347485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 6, 5] [1, -3, 3, -1] n

end

end A136392.P13263080296547347485

namespace A136392

/-- `ogf((1+6x+5x^2)/(1-3x+3x^2-x^3))` -/
def P13263080296547347485.Spec : Prop :=
  ∀ n, P13263080296547347485.a n = A136392 (n + 1)

end A136392

/-! ## A136392.P15711090655584677512

`Δ[lcm(n, (1-n)²+n²)]`
-/

namespace A136392.P15711090655584677512
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) ((1 - (n : ℤ)) ^ 2 + (n ^ 2 : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A136392.P15711090655584677512

namespace A136392

/-- `Δ[lcm(n, (1-n)²+n²)]` -/
def P15711090655584677512.Spec : Prop :=
  ∀ n, P15711090655584677512.a n = A136392 (n + 1)

end A136392

/-! ## A136392.P11873252292466600908

`floor(a(n-1)-(4-12*n))` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A136392.P11873252292466600908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) - (4 - (12 * n : ℤ))

end

end A136392.P11873252292466600908

namespace A136392

/-- `floor(a(n-1)-(4-12*n))` -/
def P11873252292466600908.Spec : Prop :=
  ∀ n, P11873252292466600908.a n = A136392 (n + 1)

theorem P11873252292466600908.correct : P11873252292466600908.Spec := by
  intro n
  induction n with
  | zero => simp [A136392, A136392.P11873252292466600908.a, A136392.P9626772396593886433.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A136392, Nat.add_sub_cancel, A136392.P11873252292466600908.a, A136392.P9626772396593886433.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A136392

/-! ## A136392.P8295974164525009851

`Δ[n*(C(2*n, 2)-(n-1))]`
-/

namespace A136392.P8295974164525009851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ((Nat.choose (2 * n) 2 : ℤ) - ((n : ℤ) - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A136392.P8295974164525009851

namespace A136392

/-- `Δ[n*(C(2*n, 2)-(n-1))]` -/
def P8295974164525009851.Spec : Prop :=
  ∀ n, P8295974164525009851.a n = A136392 (n + 1)

theorem P8295974164525009851.correct : P8295974164525009851.Spec := by
  intro n
  simp only [A136392, Nat.add_sub_cancel, A136392.P8295974164525009851.f1, A136392.P8295974164525009851.a, A136392.P9626772396593886433.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A136392

/-! ## A136392.P13960253807736430465

`∑[record[(n+1)*((n+1)%3)²]]`
-/

namespace A136392.P13960253807736430465
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * ((n + 1) % 3) ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A136392.P13960253807736430465

namespace A136392

/-- `∑[record[(n+1)*((n+1)%3)²]]` -/
def P13960253807736430465.Spec : Prop :=
  ∀ n, (P13960253807736430465.a n : ℤ) = A136392 (n + 1)

end A136392

/-! ## A136392.P8637411931060845269

`ceil((2*n+1+n)/acot(2*n))`
-/

namespace A136392.P8637411931060845269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 * n + 1 + n : ℝ) / SequenceMachineLib.acot (2 * n : ℝ)⌉

end

end A136392.P8637411931060845269

namespace A136392

/-- `ceil((2*n+1+n)/acot(2*n))` -/
def P8637411931060845269.Spec : Prop :=
  ∀ n, P8637411931060845269.a n = A136392 (n + 1)

end A136392

/-! ## A136392.P14128950810712847641

`round((2*n+1+n)/acot(2*n))`
-/

namespace A136392.P14128950810712847641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((2 * n + 1 + n : ℝ) / SequenceMachineLib.acot (2 * n : ℝ))

end

end A136392.P14128950810712847641

namespace A136392

/-- `round((2*n+1+n)/acot(2*n))` -/
def P14128950810712847641.Spec : Prop :=
  ∀ n, P14128950810712847641.a n = A136392 (n + 1)

end A136392

/-! ## A136392.P17169429097381118528

`Δ[lcm(n-1-n², 2*n)-n]`
-/

namespace A136392.P17169429097381118528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.lcm ((n : ℤ) - 1 - (n ^ 2 : ℤ)) (2 * n : ℤ) : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A136392.P17169429097381118528

namespace A136392

/-- `Δ[lcm(n-1-n², 2*n)-n]` -/
def P17169429097381118528.Spec : Prop :=
  ∀ n, P17169429097381118528.a n = A136392 (n + 1)

end A136392

/-! ## A136392.P12615789995090817843

`abs(3*C(2*n+1, 2)-(n-1))`
-/

namespace A136392.P12615789995090817843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(3 * Nat.choose (2 * n + 1) 2 : ℤ) - ((n : ℤ) - 1)|

end

end A136392.P12615789995090817843

namespace A136392

/-- `abs(3*C(2*n+1, 2)-(n-1))` -/
def P12615789995090817843.Spec : Prop :=
  ∀ n, P12615789995090817843.a n = A136392 (n + 1)

end A136392

/-! ## A136392.P2253069272168995447

`(A381390(n)+1)/2`
-/

namespace A136392.P2253069272168995447
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A381390 n + 1 : ℚ) / 2

end

end A136392.P2253069272168995447

namespace A136392

/-- `(A381390(n)+1)/2` -/
def P2253069272168995447.Spec : Prop :=
  ∀ n, P2253069272168995447.a n = (A136392 (n + 1) : ℚ)

theorem P2253069272168995447.correct : P2253069272168995447.Spec := by
  intro n
  simp only [A136392, Nat.add_sub_cancel, A136392.P2253069272168995447.a, A136392.P9626772396593886433.a, A381390, A381390.P5706993922574982670.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A136392

/-! ## A136392.P5817382205338770051

`(A081272(n)+2)/3`
-/

namespace A136392.P5817382205338770051
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A081272 n + 2 : ℚ) / 3

end

end A136392.P5817382205338770051

namespace A136392

/-- `(A081272(n)+2)/3` -/
def P5817382205338770051.Spec : Prop :=
  ∀ n, P5817382205338770051.a n = (A136392 (n + 1) : ℚ)

theorem P5817382205338770051.correct : P5817382205338770051.Spec := by
  intro n
  simp only [A136392, Nat.add_sub_cancel, A136392.P5817382205338770051.a, A136392.P9626772396593886433.a, A081272, A081272.P2942107853835122224.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A136392

/-! ## A136392.P11215481069462127843

`(A179741(n)+3)/2`
-/

namespace A136392.P11215481069462127843
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A179741 n + 3 : ℚ) / 2

end

end A136392.P11215481069462127843

namespace A136392

/-- `(A179741(n)+3)/2` -/
def P11215481069462127843.Spec : Prop :=
  ∀ n, P11215481069462127843.a n = (A136392 (n + 1) : ℚ)

theorem P11215481069462127843.correct : P11215481069462127843.Spec := by
  intro n
  simp only [A136392, Nat.add_sub_cancel, A136392.P11215481069462127843.a, A136392.P9626772396593886433.a, A179741, A179741.P3894650603299352832.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A136392

/-! ## A136392.P13300878696572264512

`A243201(n)%A179259(n)`
-/

namespace A136392.P13300878696572264512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A243201 n) (A179259 n)

end

end A136392.P13300878696572264512

namespace A136392

/-- `A243201(n)%A179259(n)` -/
def P13300878696572264512.Spec : Prop :=
  ∀ n, P13300878696572264512.a n = A136392 (n + 1)

end A136392

/-!
# A136393: a(n) = C(3^n,n).

The programs for A136393, the canonical program `A136393.P9172508435115108779` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A136393 has offset 0).

The definition of A136393 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(3^n, n)` (program `A136393.P9172508435115108779`, by `A136393.P9172508435115108779.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A136393.P9172508435115108779

`C(3^n, n)`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A136393

/-- `C(3^n, n)` -/
def P9172508435115108779.Spec : Prop :=
  ∀ n, (P9172508435115108779.a n : ℤ) = A136393 n

theorem P9172508435115108779.correct : P9172508435115108779.Spec := by
  intro n
  simp only [A136393]

end A136393

/-! ## A136393.P8522096870870849300

`abs(1-C(A034472(n)-1, n))+1`
-/

namespace A136393.P8522096870870849300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (Nat.choose (A034472 n - 1).toNat n : ℤ)| + 1

end

end A136393.P8522096870870849300

namespace A136393

/-- `abs(1-C(A034472(n)-1, n))+1` -/
def P8522096870870849300.Spec : Prop :=
  ∀ n, P8522096870870849300.a n = A136393 n

end A136393

/-! ## A136393.P2615936864268378638

`record[C(A003959(n+1), val(n+1, 2))]`
-/

namespace A136393.P2615936864268378638
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A003959 (n + 1)).toNat (SequenceMachineLib.valuation (n + 1) 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A136393.P2615936864268378638

namespace A136393

/-- `record[C(A003959(n+1), val(n+1, 2))]` -/
def P2615936864268378638.Spec : Prop :=
  ∀ n, (P2615936864268378638.a n : ℤ) = A136393 n

end A136393

/-! ## A136393.P5507963365437801671

`record[C(A038754(n), A025480(n))]`
-/

namespace A136393.P5507963365437801671
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A038754 n).toNat (A025480 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A136393.P5507963365437801671

namespace A136393

/-- `record[C(A038754(n), A025480(n))]` -/
def P5507963365437801671.Spec : Prop :=
  ∀ n, (P5507963365437801671.a n : ℤ) = A136393 n

end A136393

/-! ## A136393.P8643514866614480324

`record[C(A100852(n), A025581(n))]`
-/

namespace A136393.P8643514866614480324
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A100852 n).toNat (A025581 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A136393.P8643514866614480324

namespace A136393

/-- `record[C(A100852(n), A025581(n))]` -/
def P8643514866614480324.Spec : Prop :=
  ∀ n, (P8643514866614480324.a n : ℤ) = A136393 n

end A136393

/-!
# A136395: Binomial transform of [1, 3, 4, 3, 2, 0, 0, 0, ...].

The programs for A136395, the canonical program `A136395.P13909784970137150222` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A136395 has offset 0).

The definition of A136395 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A136395.P13909784970137150222

`∑[∑[(1-n)²]+n]+n²`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A136395

/-- `∑[∑[(1-n)²]+n]+n²` -/
def P13909784970137150222.Spec : Prop :=
  ∀ n, P13909784970137150222.a n = A136395 n

theorem P13909784970137150222.correct : P13909784970137150222.Spec := by
  intro n
  simp only [A136395]

end A136395

/-! ## A136395.P3406139963581468567

`((C(n, 2)+9)*∑[n]+3)/3`
-/

namespace A136395.P3406139963581468567
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((Nat.choose n 2 + 9) * (∑ j ∈ Finset.range (n + 1), f1 j) + 3 : ℕ) : ℚ) / 3

end

end A136395.P3406139963581468567

namespace A136395

/-- `((C(n, 2)+9)*∑[n]+3)/3` -/
def P3406139963581468567.Spec : Prop :=
  ∀ n, P3406139963581468567.a n = (A136395 n : ℚ)

end A136395

/-! ## A136395.P14333410449499142938

`∑[∑[∑[a(n-1)+2]]]` with `a(0)=1, a(1)=1, a(2)=2, a(3)=3`
-/

namespace A136395.P14333410449499142938
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 2, 3] fun n f3 =>
  f3 (n - 1) + 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A136395.P14333410449499142938

namespace A136395

/-- `∑[∑[∑[a(n-1)+2]]]` -/
def P14333410449499142938.Spec : Prop :=
  ∀ n, (P14333410449499142938.a n : ℤ) = A136395 n

end A136395

/-! ## A136395.P13578678963198623817

`∑[A140226(n)-∑[n]]`
-/

namespace A136395.P13578678963198623817
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140226 n - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A136395.P13578678963198623817

namespace A136395

/-- `∑[A140226(n)-∑[n]]` -/
def P13578678963198623817.Spec : Prop :=
  ∀ n, P13578678963198623817.a n = A136395 n

end A136395

/-! ## A136395.P6494310759672443987

`∑[A027379(n)+A007290(n)]`
-/

namespace A136395.P6494310759672443987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027379 n + A007290 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A136395.P6494310759672443987

namespace A136395

/-- `∑[A027379(n)+A007290(n)]` -/
def P6494310759672443987.Spec : Prop :=
  ∀ n, P6494310759672443987.a n = A136395 n

end A136395

/-! ## A136395.P2002070880144723331

`∑[A081490(n+1)+A004273(n)]`
-/

namespace A136395.P2002070880144723331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081490 (n + 1) + A004273 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A136395.P2002070880144723331

namespace A136395

/-- `∑[A081490(n+1)+A004273(n)]` -/
def P2002070880144723331.Spec : Prop :=
  ∀ n, P2002070880144723331.a n = A136395 n

end A136395

/-! ## A136395.P9020364497266372015

`∑[A004277(n)+A033547(n)-∑[n]]`
-/

namespace A136395.P9020364497266372015
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n + (A033547 n - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A136395.P9020364497266372015

namespace A136395

/-- `∑[A004277(n)+A033547(n)-∑[n]]` -/
def P9020364497266372015.Spec : Prop :=
  ∀ n, P9020364497266372015.a n = A136395 n

end A136395

/-! ## A136395.P16074711569553523878

`∑[A167875(n)+1-A139482(n+1)]`
-/

namespace A136395.P16074711569553523878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167875 n + (1 - A139482 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A136395.P16074711569553523878

namespace A136395

/-- `∑[A167875(n)+1-A139482(n+1)]` -/
def P16074711569553523878.Spec : Prop :=
  ∀ n, P16074711569553523878.a n = A136395 n

end A136395

/-! ## A136395.P7553557762355746502

`∑[∑[A002061(n+1)-A296515(n+1)]]`
-/

namespace A136395.P7553557762355746502
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002061 (n + 1) - A296515 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A136395.P7553557762355746502

namespace A136395

/-- `∑[∑[A002061(n+1)-A296515(n+1)]]` -/
def P7553557762355746502.Spec : Prop :=
  ∀ n, P7553557762355746502.a n = A136395 n

end A136395

/-! ## A136395.P15713453119568747874

`∑[A330640(2*n)+n]`
-/

namespace A136395.P15713453119568747874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330640 (2 * n) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A136395.P15713453119568747874

namespace A136395

/-- `∑[A330640(2*n)+n]` -/
def P15713453119568747874.Spec : Prop :=
  ∀ n, P15713453119568747874.a n = A136395 n

end A136395

/-!
# A136396: a(n) = 1 + n*(n+1)*(n^2-n+12)/12.

The programs for A136396, the canonical program `A136396.P18028851304802420194` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A136396 has offset 0).

The definition of A136396 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A136396.P18028851304802420194

`1+n*(n+1)*(n²-n+12)/12`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A136396

/-- `1+n*(n+1)*(n²-n+12)/12` -/
def P18028851304802420194.Spec : Prop :=
  ∀ n, P18028851304802420194.a n = (A136396 n : ℚ)

end A136396

/-! ## A136396.P16394229802486561174

`∑[∑[∑[a(n-1)+2]]]` with `a(0)=1, a(1)=0, a(2)=2, a(3)=3`
-/

namespace A136396.P16394229802486561174
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 2, 3] fun n f3 =>
  f3 (n - 1) + 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A136396.P16394229802486561174

namespace A136396

/-- `∑[∑[∑[a(n-1)+2]]]` -/
def P16394229802486561174.Spec : Prop :=
  ∀ n, (P16394229802486561174.a n : ℤ) = A136396 n

end A136396

/-! ## A136396.P4711872329711261675

`∑[A000330(abs(1-n))+2*n]`
-/

namespace A136396.P4711872329711261675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000330 |1 - (n : ℤ)|.toNat + (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A136396.P4711872329711261675

namespace A136396

/-- `∑[A000330(abs(1-n))+2*n]` -/
def P4711872329711261675.Spec : Prop :=
  ∀ n, P4711872329711261675.a n = A136396 n

end A136396

/-! ## A136396.P3692553899662318456

`∑[∑[A002061(n)-A289207(n)]]`
-/

namespace A136396.P3692553899662318456
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002061 n - A289207 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A136396.P3692553899662318456

namespace A136396

/-- `∑[∑[A002061(n)-A289207(n)]]` -/
def P3692553899662318456.Spec : Prop :=
  ∀ n, P3692553899662318456.a n = A136396 n

end A136396

/-! ## A136396.P5792235254972660650

`∑[A007290(n)+A027379(n)-n]`
-/

namespace A136396.P5792235254972660650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007290 n + (A027379 n - (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A136396.P5792235254972660650

namespace A136396

/-- `∑[A007290(n)+A027379(n)-n]` -/
def P5792235254972660650.Spec : Prop :=
  ∀ n, P5792235254972660650.a n = A136396 n

end A136396

/-! ## A136396.P14143012063119276759

`∑[A004273(n)+∑[A024000(n)²]]`
-/

namespace A136396.P14143012063119276759
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024000 n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A136396.P14143012063119276759

namespace A136396

/-- `∑[A004273(n)+∑[A024000(n)²]]` -/
def P14143012063119276759.Spec : Prop :=
  ∀ n, P14143012063119276759.a n = A136396 n

end A136396

/-! ## A136396.P16668364242292257624

`∑[∏{d}[2*n, A014963(#)]-(n²-∑[n²])]`
-/

namespace A136396.P16668364242292257624
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f2 n), A014963 d - ((n ^ 2 : ℤ) - ((∑ j ∈ Finset.range (n + 1), f3 j : ℕ) : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A136396.P16668364242292257624

namespace A136396

/-- `∑[∏{d}[2*n, A014963(#)]-(n²-∑[n²])]` -/
def P16668364242292257624.Spec : Prop :=
  ∀ n, P16668364242292257624.a n = A136396 n

end A136396

/-! ## A136396.P10637666824365749944

`∑[A330640(2*n)]`
-/

namespace A136396.P10637666824365749944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330640 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A136396.P10637666824365749944

namespace A136396

/-- `∑[A330640(2*n)]` -/
def P10637666824365749944.Spec : Prop :=
  ∀ n, P10637666824365749944.a n = A136396 n

end A136396

/-! ## A136396.P13673288659444900610

`∑[∑[A028309(2*n)-n]]`
-/

namespace A136396.P13673288659444900610
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028309 (2 * n) - (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A136396.P13673288659444900610

namespace A136396

/-- `∑[∑[A028309(2*n)-n]]` -/
def P13673288659444900610.Spec : Prop :=
  ∀ n, P13673288659444900610.a n = A136396 n

end A136396

/-! ## A136396.P14148431792913170993

`∑[∑[A102762(n+1)]-A036453(2*n+1)]`
-/

namespace A136396.P14148431792913170993
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102762 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A036453 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A136396.P14148431792913170993

namespace A136396

/-- `∑[∑[A102762(n+1)]-A036453(2*n+1)]` -/
def P14148431792913170993.Spec : Prop :=
  ∀ n, P14148431792913170993.a n = A136396 n

end A136396

/-!
# A136399: Numbers having in their decimal representation at least one digit greater than 1.

The programs for A136399, the canonical program `A136399.P7416713261732785122` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A136399 has offset 1).

The definition of A136399 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A136399.P7416713261732785122

`∪[A277964(n+1), comp[A007089(n)]]`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A136399

/-- `∪[A277964(n+1), comp[A007089(n)]]` -/
def P7416713261732785122.Spec : Prop :=
  ∀ n, (P7416713261732785122.a n : ℤ) = A136399 (n + 1)

theorem P7416713261732785122.correct : P7416713261732785122.Spec := by
  intro n
  simp only [A136399, Nat.add_sub_cancel]

end A136399

/-! ## A136399.P13390774372761735805

`∪[A277964(n+1), comp[A169683(n)]]`
-/

namespace A136399.P13390774372761735805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277964 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169683 n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = x) n

end

end A136399.P13390774372761735805

namespace A136399

/-- `∪[A277964(n+1), comp[A169683(n)]]` -/
def P13390774372761735805.Spec : Prop :=
  ∀ n, (P13390774372761735805.a n : ℤ) = A136399 (n + 1)

end A136399

/-! ## A136399.P13134084523457751277

`record[A000038(A106747(n))+n]`
-/

namespace A136399.P13134084523457751277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (A106747 n).toNat + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A136399.P13134084523457751277

namespace A136399

/-- `record[A000038(A106747(n))+n]` -/
def P13134084523457751277.Spec : Prop :=
  ∀ n, P13134084523457751277.a n = A136399 (n + 1)

end A136399

/-! ## A136399.P11033411109357848506

`record[A000038(A235049(n))+n]`
-/

namespace A136399.P11033411109357848506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (A235049 n).toNat + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A136399.P11033411109357848506

namespace A136399

/-- `record[A000038(A235049(n))+n]` -/
def P11033411109357848506.Spec : Prop :=
  ∀ n, P11033411109357848506.a n = A136399 (n + 1)

end A136399

/-! ## A136399.P11239520878061044432

`record[A003602(n+3)%A035043(n+4)]`
-/

namespace A136399.P11239520878061044432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003602 (n + 3)) (A035043 (n + 4))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A136399.P11239520878061044432

namespace A136399

/-- `record[A003602(n+3)%A035043(n+4)]` -/
def P11239520878061044432.Spec : Prop :=
  ∀ n, P11239520878061044432.a n = A136399 (n + 1)

end A136399

/-! ## A136399.P9486771489263088137

`record[A032742(n+4)%A035043(n+4)]`
-/

namespace A136399.P9486771489263088137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A032742 (n + 4)) (A035043 (n + 4))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A136399.P9486771489263088137

namespace A136399

/-- `record[A032742(n+4)%A035043(n+4)]` -/
def P9486771489263088137.Spec : Prop :=
  ∀ n, P9486771489263088137.a n = A136399 (n + 1)

end A136399

/-! ## A136399.P287989538501067288

`comp[eq[A054055(n), A057427(n)]]`
-/

namespace A136399.P287989538501067288
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A136399.P287989538501067288

namespace A136399

/-- `comp[eq[A054055(n), A057427(n)]]` -/
def P287989538501067288.Spec : Prop :=
  ∀ n, (P287989538501067288.a n : ℤ) = A136399 (n + 1)

end A136399

/-! ## A136399.P3796118287149188234

`2*A055642(A055642(n²)+n)+n`
-/

namespace A136399.P3796118287149188234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A055642 (A055642 (n ^ 2) + (n : ℤ)).toNat + (n : ℤ)

end

end A136399.P3796118287149188234

namespace A136399

/-- `2*A055642(A055642(n²)+n)+n` -/
def P3796118287149188234.Spec : Prop :=
  ∀ n, P3796118287149188234.a n = A136399 (n + 1)

end A136399

