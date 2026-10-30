import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C013
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C031
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C040
import Seq.B000.C044
import Seq.B000.C047
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C011
import Seq.B001.C014
import Seq.B002.C000
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C008
import Seq.B003.C000
import Seq.B003.C003
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C003
import Seq.B006.C000
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

/-!
# A400302: Number T(n,k) of bipartite graphs on vertices {L_1,...,L_n} U {R_1,...,R_n} with exactly k cycles, where (L_i,R_j) can be an edge only if i <= j and all vertex degrees are in {0,2}; triangle T(n,k), n>=0, 0<=k<=max(0,floor((n-1)/2)), read by rows.

The programs for A400302, there is no canonical definition to state claims against.
-/

/-! ## A400302.P9196552940759154722

`A147449(A057926(n))`
-/

namespace A400302.P9196552940759154722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147449 (A057926 n).toNat

end

end A400302.P9196552940759154722

/-! ## A400302.P4098311146015641522

`A098950(A111385(n))`
-/

namespace A400302.P4098311146015641522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098950 (A111385 n).toNat

end

end A400302.P4098311146015641522

/-! ## A400302.P6426507065351303798

`A171848(A152982(n))`
-/

namespace A400302.P6426507065351303798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171848 (A152982 n).toNat

end

end A400302.P6426507065351303798

/-! ## A400302.P1686875473441953322

`A330774(A004149(n))`
-/

namespace A400302.P1686875473441953322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330774 (A004149 n).toNat

end

end A400302.P1686875473441953322

/-! ## A400302.P1327012115934511325

`A124939(A227035(n))`
-/

namespace A400302.P1327012115934511325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124939 (A227035 n).toNat

end

end A400302.P1327012115934511325

/-!
# A400313: G.f. A(x) satisfies A(x) = A(x^3/(1 - x)^2) / (1 - x), with A(0) = 1.

The programs for A400313, there is no canonical definition to state claims against.
-/

/-! ## A400313.P11820946795892706699

`A103128(A148095(n))`
-/

namespace A400313.P11820946795892706699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103128 (A148095 n).toNat

end

end A400313.P11820946795892706699

/-! ## A400313.P14047771899131537209

`row(A028310(row(A052169(n+2))))`
-/

namespace A400313.P14047771899131537209
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triRow (A028310 (SequenceMachineLib.triRow (A052169 (n + 2)).toNat)).toNat

end

end A400313.P14047771899131537209

/-! ## A400313.P10587998248503065681

`row(A056023(row(A052169(n+2))))`
-/

namespace A400313.P10587998248503065681
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triRow (A056023 (SequenceMachineLib.triRow (A052169 (n + 2)).toNat)).toNat

end

end A400313.P10587998248503065681

/-! ## A400313.P18132014733147688674

`A111651(A056010(n))`
-/

namespace A400313.P18132014733147688674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111651 (A056010 n).toNat

end

end A400313.P18132014733147688674

/-! ## A400313.P11714969078401441944

`A088141(A125094(n))`
-/

namespace A400313.P11714969078401441944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088141 (A125094 n).toNat

end

end A400313.P11714969078401441944

/-!
# A400314: G.f. A(x) satisfies A(x) = A(x^3/(1 - x)) / (1 - x)^2, with A(0) = 1.

The programs for A400314, there is no canonical definition to state claims against.
-/

/-! ## A400314.P9499140533822740865

`∑{#}[n, A352039(#)*A352039(n-#)]`
-/

namespace A400314.P9499140533822740865
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A352039 k * A352039 (n - k)

end

end A400314.P9499140533822740865

/-! ## A400314.P14866638553535517815

`A103128(A331321(n))`
-/

namespace A400314.P14866638553535517815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103128 (A331321 n).toNat

end

end A400314.P14866638553535517815

/-! ## A400314.P12370927414930622404

`A003056(∑[A027994(n)])`
-/

namespace A400314.P12370927414930622404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027994 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A400314.P12370927414930622404

/-! ## A400314.P1631085825982421495

`A144968(A190173(n+1))`
-/

namespace A400314.P1631085825982421495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144968 (A190173 (n + 1)).toNat

end

end A400314.P1631085825982421495

/-! ## A400314.P10845477141359568540

`A276581(A182890(n+1))`
-/

namespace A400314.P10845477141359568540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276581 (A182890 (n + 1)).toNat

end

end A400314.P10845477141359568540

/-!
# A400315: G.f. A(x) satisfies A(x) = A(x^4/(1 - x)) / (1 - x)^2, with A(0) = 1.

The programs for A400315, there is no canonical definition to state claims against.
-/

/-! ## A400315.P7717320989860048731

`∑{#}[n, A352041(#)*A352041(n-#)]`
-/

namespace A400315.P7717320989860048731
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A352041 k * A352041 (n - k)

end

end A400315.P7717320989860048731

/-! ## A400315.P463445484320697739

`A147968(A048818(n))`
-/

namespace A400315.P463445484320697739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147968 (A048818 n).toNat

end

end A400315.P463445484320697739

/-! ## A400315.P3887814848671756537

`A373810(A282913(n))`
-/

namespace A400315.P3887814848671756537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373810 (A282913 n).toNat

end

end A400315.P3887814848671756537

/-! ## A400315.P7419270590828278477

`eq[A040847(n), A060241(n+3)]`
-/

namespace A400315.P7419270590828278477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040847 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060241 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A400315.P7419270590828278477

/-! ## A400315.P18235816074271789868

`∑[A070939(A147037(n+1)*A147093(2*n+1))]`
-/

namespace A400315.P18235816074271789868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (A147037 (n + 1) * A147093 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A400315.P18235816074271789868

/-!
# A400316: G.f. A(x) satisfies A(x) = (1 + x)^2 * A(x^4 * (1 + x)), with A(0) = 1.

The programs for A400316, there is no canonical definition to state claims against.
-/

/-! ## A400316.P5027621772705368243

`∑{#}[n, A400271(#)*A400271(n-#)]`
-/

namespace A400316.P5027621772705368243
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A400271 k * A400271 (n - k)

end

end A400316.P5027621772705368243

/-!
# A400319: G.f. A(x) satisfies A(x) = (1 + x)^4 * A(x^4 * (1 + x)), with A(0) = 1.

The programs for A400319, there is no canonical definition to state claims against.
-/

/-! ## A400319.P3573829649422438239

`∑{#}[n, A400316(#)*A400316(n-#)]`
-/

namespace A400319.P3573829649422438239
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A400316 k * A400316 (n - k)

end

end A400319.P3573829649422438239

/-!
# A400322: Square array A(n,k), n >= 0, k >= 1, read by antidiagonals: A(n,k) is the number of nonnegative integer solutions to x + y + kz + kw = n.

The programs for A400322, there is no canonical definition to state claims against.
-/

/-! ## A400322.P2238032680110745084

`gcd(A062145(n), A328593(A008292(n+1)))`
-/

namespace A400322.P2238032680110745084
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A062145 n) (A328593 (A008292 (n + 1)).toNat)

end

end A400322.P2238032680110745084

/-!
# A400324: Irregular triangle read by rows, where row n gives the lengths of consecutive same species move blocks in the solution of the Frogs and Toads interchange puzzle with n frogs and n toads.

The programs for A400324, the canonical program `A400324.P3198541763604547307` is in `Seq.B002.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A400324 has offset 1).

The definition of A400324 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A400324.P3198541763604547307

`A004737(A005369(n+1)+n+2)`

The canonical program, it is in `Seq.B002.C008`.
-/

namespace A400324

/-- `A004737(A005369(n+1)+n+2)` -/
def P3198541763604547307.Spec : Prop :=
  ∀ n, P3198541763604547307.a n = A400324 (n + 1)

theorem P3198541763604547307.correct : P3198541763604547307.Spec := by
  intro n
  simp only [A400324, Nat.add_sub_cancel]

end A400324

/-! ## A400324.P2043983496306147540

`A053188(n+2)+A023969(n+1)`
-/

namespace A400324.P2043983496306147540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053188 (n + 2) + A023969 (n + 1)

end

end A400324.P2043983496306147540

namespace A400324

/-- `A053188(n+2)+A023969(n+1)` -/
def P2043983496306147540.Spec : Prop :=
  ∀ n, P2043983496306147540.a n = A400324 (n + 1)

end A400324

/-! ## A400324.P3742652923462793840

`A004739(n+2-A000194(n+1))`
-/

namespace A400324.P3742652923462793840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004739 ((n + 2 : ℤ) - A000194 (n + 1)).toNat

end

end A400324.P3742652923462793840

namespace A400324

/-- `A004739(n+2-A000194(n+1))` -/
def P3742652923462793840.Spec : Prop :=
  ∀ n, P3742652923462793840.a n = A400324 (n + 1)

end A400324

/-! ## A400324.P5144669572666372980

`A004737(n+1)-Δ[A004739(n+1)]`
-/

namespace A400324.P5144669572666372980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004739 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004737 (n + 1) - (f1 (n + 1) - f1 n)

end

end A400324.P5144669572666372980

namespace A400324

/-- `A004737(n+1)-Δ[A004739(n+1)]` -/
def P5144669572666372980.Spec : Prop :=
  ∀ n, P5144669572666372980.a n = A400324 (n + 1)

end A400324

/-! ## A400324.P6882661091134832828

`root(A133823(n), 3)-Δ[A004739(n+1)]`
-/

namespace A400324.P6882661091134832828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004739 (n + 1)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A133823 n : ℝ) ^ (1 / (3 : ℝ)) - (f1 (n + 1) - f1 n : ℝ)

end

end A400324.P6882661091134832828

namespace A400324

/-- `root(A133823(n), 3)-Δ[A004739(n+1)]` -/
def P6882661091134832828.Spec : Prop :=
  ∀ n, P6882661091134832828.a n = (A400324 (n + 1) : ℝ)

end A400324

/-! ## A400324.P7713364523823780538

`sqrt(A124258(n+1))-Δ[A004739(n+1)]`
-/

namespace A400324.P7713364523823780538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004739 (n + 1)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A124258 (n + 1) : ℝ) - (f1 (n + 1) - f1 n : ℝ)

end

end A400324.P7713364523823780538

namespace A400324

/-- `sqrt(A124258(n+1))-Δ[A004739(n+1)]` -/
def P7713364523823780538.Spec : Prop :=
  ∀ n, P7713364523823780538.a n = (A400324 (n + 1) : ℝ)

end A400324

/-! ## A400324.P963077390003169280

`A003056(A133825(n))-Δ[A004739(n+1)]`
-/

namespace A400324.P963077390003169280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004739 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A133825 n).toNat - (f1 (n + 1) - f1 n)

end

end A400324.P963077390003169280

namespace A400324

/-- `A003056(A133825(n))-Δ[A004739(n+1)]` -/
def P963077390003169280.Spec : Prop :=
  ∀ n, P963077390003169280.a n = A400324 (n + 1)

end A400324

/-! ## A400324.P1156121574868665592

`A267708(n)+A053188(n)-Δ[A004739(n+1)]`
-/

namespace A400324.P1156121574868665592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004739 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267708 n + A053188 n - (f1 (n + 1) - f1 n)

end

end A400324.P1156121574868665592

namespace A400324

/-- `A267708(n)+A053188(n)-Δ[A004739(n+1)]` -/
def P1156121574868665592.Spec : Prop :=
  ∀ n, P1156121574868665592.a n = A400324 (n + 1)

end A400324

/-! ## A400324.P4841233073501507369

`A000196(n)+1-A053615(n)-Δ[A004739(n+1)]`
-/

namespace A400324.P4841233073501507369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004739 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 n + (1 - A053615 n) - (f1 (n + 1) - f1 n)

end

end A400324.P4841233073501507369

namespace A400324

/-- `A000196(n)+1-A053615(n)-Δ[A004739(n+1)]` -/
def P4841233073501507369.Spec : Prop :=
  ∀ n, P4841233073501507369.a n = A400324 (n + 1)

end A400324

/-! ## A400324.P13450779620697093563

`A133823(n)/A124258(n+1)-Δ[A004739(n+1)]`
-/

namespace A400324.P13450779620697093563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004739 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A133823 n : ℚ) / (A124258 (n + 1) : ℚ) - (f1 (n + 1) - f1 n : ℚ)

end

end A400324.P13450779620697093563

namespace A400324

/-- `A133823(n)/A124258(n+1)-Δ[A004739(n+1)]` -/
def P13450779620697093563.Spec : Prop :=
  ∀ n, P13450779620697093563.a n = (A400324 (n + 1) : ℚ)

end A400324

/-! ## A400324.P11001119226372053374

`A004739(n+1)+A004737(n+1)-A004739(n+2)`
-/

namespace A400324.P11001119226372053374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004739 (n + 1) + A004737 (n + 1) - A004739 (n + 2)

end

end A400324.P11001119226372053374

namespace A400324

/-- `A004739(n+1)+A004737(n+1)-A004739(n+2)` -/
def P11001119226372053374.Spec : Prop :=
  ∀ n, P11001119226372053374.a n = A400324 (n + 1)

end A400324

/-! ## A400324.P13005830420279893188

`A004197(A064788(n+1))+1`
-/

namespace A400324.P13005830420279893188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004197 (A064788 (n + 1)).toNat + 1

end

end A400324.P13005830420279893188

namespace A400324

/-- `A004197(A064788(n+1))+1` -/
def P13005830420279893188.Spec : Prop :=
  ∀ n, P13005830420279893188.a n = A400324 (n + 1)

end A400324

/-! ## A400324.P7608421820167546382

`A004739(A134986(n+1))`
-/

namespace A400324.P7608421820167546382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004739 (A134986 (n + 1)).toNat

end

end A400324.P7608421820167546382

namespace A400324

/-- `A004739(A134986(n+1))` -/
def P7608421820167546382.Spec : Prop :=
  ∀ n, P7608421820167546382.a n = A400324 (n + 1)

end A400324

/-!
# A400326: Number of labeled biconnected bipartite planar graphs with n vertices.

The programs for A400326, there is no canonical definition to state claims against.
-/

/-! ## A400326.P8014509109783771781

`A316675(n*A000041(A000041(n+1)))`
-/

namespace A400326.P8014509109783771781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316675 ((n : ℤ) * A000041 (A000041 (n + 1)).toNat).toNat

end

end A400326.P8014509109783771781

/-!
# A400330: Minimum difference between positive integers x, y with x * y = n! and gcd(x, y) = 2.

The programs for A400330, there is no canonical definition to state claims against.
-/

/-! ## A400330.P6165688307294028333

`A380791(A123187(n))`
-/

namespace A400330.P6165688307294028333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380791 ((A123187 n).toNat + 66)

end

end A400330.P6165688307294028333

/-!
# A400337: G.f.: 1/G(-x), where G(x) is g.f. for A225543.

The programs for A400337, there is no canonical definition to state claims against.
-/

/-! ## A400337.P8285190971716307837

`abs(A400338(n))`
-/

namespace A400337.P8285190971716307837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A400338 n|

end

end A400337.P8285190971716307837

/-! ## A400337.P14030076881556546913

`A033999(n)*A400338(n)`
-/

namespace A400337.P14030076881556546913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A400338 n

end

end A400337.P14030076881556546913

/-! ## A400337.P4294021479016809961

`gcd(A000038(n), A400338(n))`
-/

namespace A400337.P4294021479016809961
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A400338 n)

end

end A400337.P4294021479016809961

/-! ## A400337.P10744788091848352081

`lcm(A000034(n), A400338(n))`
-/

namespace A400337.P10744788091848352081
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000034 n) (A400338 n)

end

end A400337.P10744788091848352081

/-! ## A400337.P5293731524158228158

`A288580(A020639(3*(n+1)))*A400338(n)`
-/

namespace A400337.P5293731524158228158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288580 (A020639 (3 * (n + 1))).toNat * A400338 n

end

end A400337.P5293731524158228158

/-!
# A400338: G.f.: 1/G(x), where G(x) is g.f. for A225543.

The programs for A400338, there is no canonical definition to state claims against.
-/

/-! ## A400338.P8967534081568984240

`A033999(n)*A400337(n)`
-/

namespace A400338.P8967534081568984240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A400337 n

end

end A400338.P8967534081568984240

/-!
# A400339: Convolution of |A225543| and |A400338|.

The programs for A400339, there is no canonical definition to state claims against.
-/

/-! ## A400339.P17595121883047274690

`A005250(A066898(2*(n+1))+A056539(n))`
-/

namespace A400339.P17595121883047274690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005250 (A066898 (2 * (n + 1)) + A056539 n).toNat

end

end A400339.P17595121883047274690

/-!
# A400342: Expansion of e.g.f. 1 / (1 + x)^tan(x).

The programs for A400342, there is no canonical definition to state claims against.
-/

/-! ## A400342.P12225595113702918127

`A009163(n)-A012355(n)`
-/

namespace A400342.P12225595113702918127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009163 n - A012355 n

end

end A400342.P12225595113702918127

/-! ## A400342.P17172544862374086408

`A009163(n)-(A009249(n)-A009163(n))`
-/

namespace A400342.P17172544862374086408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009163 n - (A009249 n - A009163 n)

end

end A400342.P17172544862374086408

/-!
# A400343: a(0) = 1; a(2*n) = Sum_{j=0..n} a(j) * a(n-j), a(2*n+1) = 2 * a(2*n).

The programs for A400343, there is no canonical definition to state claims against.
-/

/-! ## A400343.P18245082932228507456

`A134361(A084422(n))`
-/

namespace A400343.P18245082932228507456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134361 (A084422 n).toNat

end

end A400343.P18245082932228507456

/-! ## A400343.P1714640364802151622

`A134361(A175841(n+1))`
-/

namespace A400343.P1714640364802151622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134361 (A175841 (n + 1)).toNat

end

end A400343.P1714640364802151622

/-! ## A400343.P1583945668433957599

`A279667(A347786(n+1))`
-/

namespace A400343.P1583945668433957599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279667 (A347786 (n + 1)).toNat

end

end A400343.P1583945668433957599

/-! ## A400343.P1050859374020885338

`record[A279667(record[A279667(n+1)])]`
-/

namespace A400343.P1050859374020885338
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279667 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279667 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A400343.P1050859374020885338

/-! ## A400343.P6548302668240652539

`A359099(A084422(n)%A309900(3*n+2))`
-/

namespace A400343.P6548302668240652539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359099 (Int.tmod (A084422 n) (A309900 (3 * n + 2))).toNat

end

end A400343.P6548302668240652539

/-!
# A400344: Number of upper triangular n X n binary matrices having all row and column sums in {0,1,2}.

The programs for A400344, there is no canonical definition to state claims against.
-/

/-! ## A400344.P4369476115230533206

`A157341(A140796(n))`
-/

namespace A400344.P4369476115230533206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157341 (A140796 n).toNat

end

end A400344.P4369476115230533206

/-!
# A400347: a(1) = 2; a(n+1) is the least prime factor of 1 + Product_{k=1..n, a(k)<=a(n)} a(k) which is not yet in the sequence.

The programs for A400347, there is no canonical definition to state claims against.
-/

/-! ## A400347.P17153505150008686462

`filter[A375543(n+1), A195053(#)]`
-/

namespace A400347.P17153505150008686462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375543 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A195053 (f1 j).toNat = 1) n)

end

end A400347.P17153505150008686462

/-! ## A400347.P9000564307770110993

`A400647(n+1)%A134073(n+1)²`
-/

namespace A400347.P9000564307770110993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A400647 (n + 1)) (A134073 (n + 1) ^ 2)

end

end A400347.P9000564307770110993

/-!
# A400349: a(n) = 1 + Sum_{k=1..n+1} k*(n - k + 1)*hypergeom([k-n, (1+n)/k], [2], -k^2).

The programs for A400349, there is no canonical definition to state claims against.
-/

/-! ## A400349.P5605082689433331908

`A215822(A026721(n))`
-/

namespace A400349.P5605082689433331908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215822 (A026721 n).toNat

end

end A400349.P5605082689433331908

/-!
# A400358: Decimal expansion of (3 - sqrt(6))/2.

The programs for A400358, there is no canonical definition to state claims against.
-/

/-! ## A400358.P14246706906407508851

`9-A379800(n+1)`
-/

namespace A400358.P14246706906407508851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A379800 (n + 1 + 1)

end

end A400358.P14246706906407508851

/-!
# A400361: a(n) = A018804(n) - A384628(n).

The programs for A400361, the canonical program `A400361.P1889396071312864242` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A400361 has offset 1).

The definition of A400361 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A018804(n+1)-A384628(n+1)` (program `A400361.P1889396071312864242`, by `A400361.P1889396071312864242.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A400361.P1889396071312864242

`A018804(n+1)-A384628(n+1)`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A400361

/-- `A018804(n+1)-A384628(n+1)` -/
def P1889396071312864242.Spec : Prop :=
  ∀ n, P1889396071312864242.a n = A400361 (n + 1)

theorem P1889396071312864242.correct : P1889396071312864242.Spec := by
  intro n
  simp only [A400361, Nat.add_sub_cancel]

end A400361

/-! ## A400361.P2807854025165671885

`A018804(n+1)-∑{#}[n, gcd(n+1, floor((n+1)/(#+1)))]`
-/

namespace A400361.P2807854025165671885
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018804 (n + 1) - ((∑ k ∈ Finset.range (f1 n + 1), Int.gcd (n + 1 : ℤ) ⌊(n + 1 : ℚ) / (k + 1 : ℚ)⌋ : ℕ) : ℤ)

end

end A400361.P2807854025165671885

namespace A400361

/-- `A018804(n+1)-∑{#}[n, gcd(n+1, floor((n+1)/(#+1)))]` -/
def P2807854025165671885.Spec : Prop :=
  ∀ n, P2807854025165671885.a n = A400361 (n + 1)

end A400361

/-!
# A400363: Pythagorean primes p such that the sum of the fourth powers of the legs of the primitive Pythagorean triangle with hypotenuse p is prime.

The programs for A400363, there is no canonical definition to state claims against.
-/

/-! ## A400363.P9404139068940963754

`∩[A128926(n+1), A396006(n+1)]`
-/

namespace A400363.P9404139068940963754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128926 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396006 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A400363.P9404139068940963754

/-!
# A400364: Sum of the fourth powers of the legs of the primitive Pythagorean triangle with prime hypotenuse A002144(n).

The programs for A400364, there is no canonical definition to state claims against.
-/

/-! ## A400364.P1000460894720622368

`A002365(n+1)^4+A002366(n+1)^4`
-/

namespace A400364.P1000460894720622368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002365 (n + 1) ^ 4 + A002366 (n + 1) ^ 4

end

end A400364.P1000460894720622368

/-! ## A400364.P7370158173241360300

`A400365(n+1)/A002144(n+1)`
-/

namespace A400364.P7370158173241360300
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A400365 (n + 1) : ℚ) / (A002144 (n + 1) : ℚ)

end

end A400364.P7370158173241360300

/-! ## A400364.P807159898209157721

`A400365(n+1)/floor(A055131(n)/3)`
-/

namespace A400364.P807159898209157721
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A400365 (n + 1) : ℚ) / (⌊(A055131 n : ℚ) / 3⌋ : ℚ)

end

end A400364.P807159898209157721

/-! ## A400364.P16133260787952397014

`A400365(n+1)/(A152680(n+1)+1)`
-/

namespace A400364.P16133260787952397014
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A400365 (n + 1) : ℚ) / (A152680 (n + 1) + 1 : ℚ)

end

end A400364.P16133260787952397014

/-! ## A400364.P16626592872851508449

`A400365(n+1)/sqrt(sqrt(A080175(n+1)))`
-/

namespace A400364.P16626592872851508449
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A400365 (n + 1) : ℝ) / Real.sqrt (Real.sqrt (A080175 (n + 1) : ℝ))

end

end A400364.P16626592872851508449

/-! ## A400364.P7701517854094529350

`A400365(n+1)/gcd(A048628(n+1), A055131(n))`
-/

namespace A400364.P7701517854094529350
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A400365 (n + 1) : ℚ) / (Int.gcd (A048628 (n + 1)) (A055131 n) : ℚ)

end

end A400364.P7701517854094529350

/-! ## A400364.P13934768557404735636

`A400365(n+1)/A002313(n+2)`
-/

namespace A400364.P13934768557404735636
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A400365 (n + 1) : ℚ) / (A002313 (n + 2) : ℚ)

end

end A400364.P13934768557404735636

/-!
# A400365: Square roots of the central entries in a six-square 3 X 3 magic-square construction from primitive Pythagorean triangles with prime hypotenuse.

The programs for A400365, there is no canonical definition to state claims against.
-/

/-! ## A400365.P2848052481861345499

`A002144(n+1)*A400364(n+1)`
-/

namespace A400365.P2848052481861345499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (n + 1) * A400364 (n + 1)

end

end A400365.P2848052481861345499

/-! ## A400365.P6294570809958521268

`A002313(n+2)*A400364(n+1)`
-/

namespace A400365.P6294570809958521268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002313 (n + 2) * A400364 (n + 1)

end

end A400365.P6294570809958521268

/-!
# A400366: Number of Proth numbers <= n.

The programs for A400366, the canonical program `A400366.P2437949027083987104` is in `Seq.B002.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A400366 has offset 0).

The definition of A400366 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A400366.P2437949027083987104

`∑[char[A080075(1+n)]]`

The canonical program, it is in `Seq.B002.C008`.
-/

namespace A400366

/-- `∑[char[A080075(1+n)]]` -/
def P2437949027083987104.Spec : Prop :=
  ∀ n, (P2437949027083987104.a n : ℤ) = A400366 n

theorem P2437949027083987104.correct : P2437949027083987104.Spec := by
  intro n
  simp only [A400366]

end A400366

/-! ## A400366.P12961873618281884949

`∑[char[A369901(n+1)]]`
-/

namespace A400366.P12961873618281884949
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369901 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A400366.P12961873618281884949

namespace A400366

/-- `∑[char[A369901(n+1)]]` -/
def P12961873618281884949.Spec : Prop :=
  ∀ n, (P12961873618281884949.a n : ℤ) = A400366 n

end A400366

/-! ## A400366.P3774745635883178722

`∑[char[A147848(A000096(n+5)+8)+1]]`
-/

namespace A400366.P3774745635883178722
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147848 (A000096 (n + 5) + 8).toNat + 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A400366.P3774745635883178722

namespace A400366

/-- `∑[char[A147848(A000096(n+5)+8)+1]]` -/
def P3774745635883178722.Spec : Prop :=
  ∀ n, (P3774745635883178722.a n : ℤ) = A400366 n

end A400366

/-!
# A400372: Expansion of Product_{k>=0} (1 + Sum_{j>=0} x^(3^(k+j))).

The programs for A400372, there is no canonical definition to state claims against.
-/

/-! ## A400372.P12660123970408377011

`A172184(A310770(n))`
-/

namespace A400372.P12660123970408377011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172184 (A310770 n).toNat

end

end A400372.P12660123970408377011

/-! ## A400372.P8000948885975062837

`A118269(A119917(n+1))`
-/

namespace A400372.P8000948885975062837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118269 (A119917 (n + 1)).toNat

end

end A400372.P8000948885975062837

/-! ## A400372.P11051059451008303919

`A353846(2*A194357(n))`
-/

namespace A400372.P11051059451008303919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353846 (2 * A194357 n).toNat

end

end A400372.P11051059451008303919

/-! ## A400372.P6476231396129665020

`A353846(A194357(n)+A194357(n))`
-/

namespace A400372.P6476231396129665020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353846 (A194357 n + A194357 n).toNat

end

end A400372.P6476231396129665020

/-!
# A400376: Expansion of e.g.f. 1/(1 + log(1 - x) * sin(x)).

The programs for A400376, there is no canonical definition to state claims against.
-/

/-! ## A400376.P1777369537428929289

`A186728(A099992(n+1))*A370616(n)`
-/

namespace A400376.P1777369537428929289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186728 (A099992 (n + 1)).toNat * A370616 n

end

end A400376.P1777369537428929289

/-! ## A400376.P6757957919343338395

`A337637(A004736(n+1)*A371018(n))`
-/

namespace A400376.P6757957919343338395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337637 (A004736 (n + 1) * A371018 n).toNat

end

end A400376.P6757957919343338395

/-!
# A400377: Expansion of e.g.f. 1/(1 + log(1 - x) * cos(x)).

The programs for A400377, there is no canonical definition to state claims against.
-/

/-! ## A400377.P11063037877009507566

`A195177(Δ[A384577(n)])`
-/

namespace A400377.P11063037877009507566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384577 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195177 (f1 (n + 1) - f1 n).toNat

end

end A400377.P11063037877009507566

/-! ## A400377.P790858466728357555

`A235130(A116842(n+1))`
-/

namespace A400377.P790858466728357555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235130 (A116842 (n + 1)).toNat

end

end A400377.P790858466728357555

/-!
# A400379: Number of nonempty sets of pairwise commuting permutations of [n] generating a transitive group.

The programs for A400379, there is no canonical definition to state claims against.
-/

/-! ## A400379.P16394616128407460847

`A177045(n^3+1)`
-/

namespace A400379.P16394616128407460847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177045 (n ^ 3 + 1)

end

end A400379.P16394616128407460847

/-!
# A400384: Positive integers whose divisors can be partitioned into two disjoint subsets with sums differing by 5.

The programs for A400384, there is no canonical definition to state claims against.
-/

/-! ## A400384.P1398734135399862291

`∩[A359680(n+1), A374664(n+1)]`
-/

namespace A400384.P1398734135399862291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359680 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374664 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A400384.P1398734135399862291

/-! ## A400384.P9136906756904327073

`∩[A309810(n+1), A359680(n+1)]`
-/

namespace A400384.P9136906756904327073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309810 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359680 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A400384.P9136906756904327073

/-! ## A400384.P5656417149440401314

`A324524(A032555(n+1)+2)`
-/

namespace A400384.P5656417149440401314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324524 (A032555 (n + 1) + 2).toNat

end

end A400384.P5656417149440401314

/-! ## A400384.P14443643897628553188

`A316856(A134853(n+1)+2)`
-/

namespace A400384.P14443643897628553188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316856 (A134853 (n + 1) + 2).toNat

end

end A400384.P14443643897628553188

/-! ## A400384.P1333377671200726624

`filter[A325044(n+1), A319988(#)]`
-/

namespace A400384.P1333377671200726624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325044 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A319988 (f1 j).toNat = 1) n)

end

end A400384.P1333377671200726624

/-!
# A400385: Number of labeled simple graphs on [n] whose automorphism group acts semiregularly on the vertices.

The programs for A400385, there is no canonical definition to state claims against.
-/

/-! ## A400385.P12708807121862458001

`A375516(n)*A375519(A000110(n))`
-/

namespace A400385.P12708807121862458001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375516 n * A375519 (A000110 n).toNat

end

end A400385.P12708807121862458001

/-!
# A400386: Rows sum of triangle A106580.

The programs for A400386, there is no canonical definition to state claims against.
-/

/-! ## A400386.P5706027303831614885

`A089324(n+2)-A089324(n)`
-/

namespace A400386.P5706027303831614885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089324 (n + 2) - A089324 n

end

end A400386.P5706027303831614885

/-! ## A400386.P11731989923269502019

`A106580(∑[n+3])`
-/

namespace A400386.P11731989923269502019
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106580 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A400386.P11731989923269502019

/-! ## A400386.P11648072136830165871

`A204006(A151110(n))`
-/

namespace A400386.P11648072136830165871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204006 (A151110 n).toNat

end

end A400386.P11648072136830165871

/-!
# A400390: Irregular table read by rows: T(n, k) = gcd(d(n, k), n/d(n, k)), where d(n, k) = A027750(n, k) is the k-th divisor of n.

The programs for A400390, there is no canonical definition to state claims against.
-/

/-! ## A400390.P5846465622645116631

`gcd(A027750(n+1), A056538(n+1))`
-/

namespace A400390.P5846465622645116631
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A027750 (n + 1)) (A056538 (n + 1))

end

end A400390.P5846465622645116631

/-! ## A400390.P12006710102449741610

`A003989(A056534(n+1))`
-/

namespace A400390.P12006710102449741610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003989 (A056534 (n + 1)).toNat

end

end A400390.P12006710102449741610

/-! ## A400390.P1999205955365561294

`gcd(A275055(n+1), A308805(n+1))`
-/

namespace A400390.P1999205955365561294
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A275055 (n + 1)) (A308805 (n + 1))

end

end A400390.P1999205955365561294

/-! ## A400390.P14751551818683443594

`gcd(A036624(n), A163100(n+1))`
-/

namespace A400390.P14751551818683443594
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A036624 n) (A163100 (n + 1))

end

end A400390.P14751551818683443594

/-! ## A400390.P10760627265676374286

`A000930(A104508(n)%A397173(3*n+5))`
-/

namespace A400390.P10760627265676374286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000930 (Int.tmod (A104508 n) (A397173 (3 * n + 5))).toNat

end

end A400390.P10760627265676374286

/-!
# A400391: Irregular table read by rows: T(n, k) = gcud(d(n, k), n/d(n, k)), where d(n, k) = A027750(n, k) is the k-th divisor of n, and gcud is the greatest common unitary divisor.

The programs for A400391, there is no canonical definition to state claims against.
-/

/-! ## A400391.P14076061922159003047

`A225174(A056534(n+1))`
-/

namespace A400391.P14076061922159003047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225174 (A056534 (n + 1)).toNat

end

end A400391.P14076061922159003047

/-! ## A400391.P7205639244115429612

`gcd(A268574(n+1), A400390(n+1))`
-/

namespace A400391.P7205639244115429612
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A268574 (n + 1)) (A400390 (n + 1))

end

end A400391.P7205639244115429612

/-! ## A400391.P7218274789942596496

`gcd(A153359(n), A400390(n+1))`
-/

namespace A400391.P7218274789942596496
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A153359 n) (A400390 (n + 1))

end

end A400391.P7218274789942596496

/-! ## A400391.P184032228772822661

`gcd(A000076(n), A400390(n+1))`
-/

namespace A400391.P184032228772822661
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000076 n) (A400390 (n + 1))

end

end A400391.P184032228772822661

/-! ## A400391.P15398903289538406330

`gcd(A094102(n+1), A379396(n+1))`
-/

namespace A400391.P15398903289538406330
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A094102 (n + 1)) (A379396 (n + 1))

end

end A400391.P15398903289538406330

/-!
# A400392: a(n) = Sum_{d|n} gcud(d, n/d), where gcud is the greatest common unitary divisor.

The programs for A400392, there is no canonical definition to state claims against.
-/

/-! ## A400392.P7805012462274518960

`A400393(A246337(n+1))`
-/

namespace A400392.P7805012462274518960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400393 (A246337 (n + 1)).toNat

end

end A400392.P7805012462274518960

/-! ## A400392.P17352401160932440498

`A329639(n+1)+A034444(A005179(n+1))`
-/

namespace A400392.P17352401160932440498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329639 (n + 1) + A034444 (A005179 (n + 1)).toNat

end

end A400392.P17352401160932440498

/-! ## A400392.P7643556059075597437

`A400393(A083434(n+1))`
-/

namespace A400392.P7643556059075597437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400393 (A083434 (n + 1)).toNat

end

end A400392.P7643556059075597437

/-! ## A400392.P13461653206425581801

`A400393(A187829(n+1))`
-/

namespace A400392.P13461653206425581801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400393 (A187829 (n + 1)).toNat

end

end A400392.P13461653206425581801

/-! ## A400392.P12133598054121100589

`A400393(n+1)/A132199(A262723(n+2))`
-/

namespace A400392.P12133598054121100589
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A400393 (n + 1) : ℚ) / (A132199 (A262723 (n + 2)).toNat : ℚ)

end

end A400392.P12133598054121100589

/-!
# A400398: a(n) = Sum_{d|n} gcd(d, n/d) / gcud(d, n/d), where gcud is the greatest common unitary divisor.

The programs for A400398, there is no canonical definition to state claims against.
-/

/-! ## A400398.P14621123261586820013

`A091202(A293442(n+1)%A083629(n+1))`
-/

namespace A400398.P14621123261586820013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091202 (Int.tmod (A293442 (n + 1)) (A083629 (n + 1))).toNat

end

end A400398.P14621123261586820013

/-! ## A400398.P17484117722404151556

`A091202(A293442(n+1))%A248350(n+1)`
-/

namespace A400398.P17484117722404151556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A091202 (A293442 (n + 1)).toNat) (A248350 (n + 1))

end

end A400398.P17484117722404151556

/-! ## A400398.P14411535648700459632

`A322483((n+1)^∏{e}[n+1, 3-C(2, #)])`
-/

namespace A400398.P14411535648700459632
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322483 (SequenceMachineLib.roundAway ((n + 1 : ℚ) ^ (∏ p ∈ Nat.primeFactors (f1 n), (3 - (Nat.choose 2 (Nat.factorization (f1 n) p) : ℤ)) : ℤ))).toNat

end

end A400398.P14411535648700459632

/-! ## A400398.P14715284876973271468

`A235122(A061200(n+1))`
-/

namespace A400398.P14715284876973271468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235122 (A061200 (n + 1)).toNat

end

end A400398.P14715284876973271468

/-! ## A400398.P11511309325456769532

`A181819(n+1)+A045698(A097710(n))`
-/

namespace A400398.P11511309325456769532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181819 (n + 1) + A045698 (A097710 n).toNat

end

end A400398.P11511309325456769532

/-!
# A400399: Value of k that maximizes P(X < Y), where X and Y are independent binomial random variables with k trials and success probabilities 1/n and 1/(2*n), respectively. In case of ties, choose the largest k.

The programs for A400399, there is no canonical definition to state claims against.
-/

/-! ## A400399.P8641921911516237878

`A121900(or(A049450(2*(n+1)), A175222(n+4)))`
-/

namespace A400399.P8641921911516237878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121900 (Int.lor (A049450 (2 * (n + 1))) (A175222 (n + 4))).toNat

end

end A400399.P8641921911516237878

/-! ## A400399.P9920698055183963234

`A292665(n+1)+A174965(A303525(2*n+5))`
-/

namespace A400399.P9920698055183963234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292665 (n + 1) + A174965 (A303525 (2 * n + 5)).toNat

end

end A400399.P9920698055183963234

/-! ## A400399.P15129285944663968091

`A194847(A228272(n+1))`
-/

namespace A400399.P15129285944663968091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194847 (A228272 (n + 1)).toNat

end

end A400399.P15129285944663968091

/-! ## A400399.P3761542200820608342

`A204553(A010007(n+1))`
-/

namespace A400399.P3761542200820608342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204553 (A010007 (n + 1)).toNat

end

end A400399.P3761542200820608342

/-! ## A400399.P9147392455988642450

`A204553(A244630(n+1))`
-/

namespace A400399.P9147392455988642450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204553 (A244630 (n + 1)).toNat

end

end A400399.P9147392455988642450

