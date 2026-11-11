import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C014
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C039
import Seq.B000.C041
import Seq.B000.C042
import Seq.B000.C045
import Seq.B000.C046
import Seq.B000.C049
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C011
import Seq.B001.C012
import Seq.B001.C014
import Seq.B001.C015
import Seq.B002.C000
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C007
import Seq.B002.C008
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C003
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C002
import Seq.B006.C001
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
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
# A400302: Number T(n,k) of bipartite graphs on vertices {L_1,...,L_n} U {R_1,...,R_n} with exactly k cycles, where (L_i,R_j) can be an edge only if i <= j and all vertex degrees are in {0,2}; triangle T(n,k), n>=0, 0<=k<=max(0,floor((n-1)/2)), read by rows.

The programs for A400302, there is no canonical definition to state claims against.
-/

/-! ## A400302.P14663997467351541983

`A277729(29*(∑[9*a(n-1)]+2))` with `a(0)=1, a(1)=0, a(2)=0, a(3)=0, a(4)=0, a(5)=0, a(6)=1, a(7)=6`
-/

namespace A400302.P14663997467351541983
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 0, 0, 0, 0, 1, 6] fun n f1 =>
  9 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277729 (29 * (∑ j ∈ Finset.range (n + 1), f1 j + 2))

end

end A400302.P14663997467351541983

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

/-!
# A400303: a(0) = 1; a(n) = Sum_{k=1..n} 3^(k-1) * binomial(n+k,k) * a(n-k).

The programs for A400303, there is no canonical definition to state claims against.
-/

/-! ## A400303.P9370135392549424777

`A000010(A390756(A005380(n)))`
-/

namespace A400303.P9370135392549424777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A390756 (A005380 n).toNat).toNat

end

end A400303.P9370135392549424777

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

/-! ## A400313.P9712756044760785219

`floor(A298866(2^n)/(n+1))`
-/

namespace A400313.P9712756044760785219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A298866 (2 ^ n) : ℚ) / (n + 1 : ℚ)⌋

end

end A400313.P9712756044760785219

/-! ## A400313.P2647796502638406013

`A106829(a(n-1)+1)` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A400313.P2647796502638406013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  A106829 (a (n - 1) + 1).toNat

end

end A400313.P2647796502638406013

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

/-! ## A400315.P15020443569068236673

`∑[A326031(A303032(n))]`
-/

namespace A400315.P15020443569068236673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326031 (A303032 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A400315.P15020443569068236673

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

/-! ## A400324.P10621348776508958966

`A053188(2+n)+A023969(n+1)`
-/

namespace A400324.P10621348776508958966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053188 (2 + n) + A023969 (n + 1)

end

end A400324.P10621348776508958966

namespace A400324

/-- `A053188(2+n)+A023969(n+1)` -/
def P10621348776508958966.Spec : Prop :=
  ∀ n, P10621348776508958966.a n = A400324 (n + 1)

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

/-! ## A400330.P3801265912199263022

`A215815((n^col(n))²)`
-/

namespace A400330.P3801265912199263022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215815 ((n ^ SequenceMachineLib.triCol n) ^ 2)

end

end A400330.P3801265912199263022

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

/-! ## A400338.P12639737725747577993

`A400337(n)*(-1)^n`
-/

namespace A400338.P12639737725747577993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400337 n * (-1) ^ n

end

end A400338.P12639737725747577993

/-! ## A400338.P8967534081568984240

`A033999(n)*A400337(n)`
-/

namespace A400338.P8967534081568984240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A400337 n

end

end A400338.P8967534081568984240

/-! ## A400338.P5189127031820204322

`A105812(A019565(3*n+2))*A400337(n)`
-/

namespace A400338.P5189127031820204322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105812 (A019565 (3 * n + 2)).toNat * A400337 n

end

end A400338.P5189127031820204322

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

/-! ## A400342.P6763305174572360228

`A012359(A004880(n+1))-A012355(n)`
-/

namespace A400342.P6763305174572360228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012359 (A004880 (n + 1)).toNat - A012355 n

end

end A400342.P6763305174572360228

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

/-! ## A400343.P3963568175299502614

`A000005(A020660(n+1)*A081125(n))`
-/

namespace A400343.P3963568175299502614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A020660 (n + 1) * A081125 n).toNat

end

end A400343.P3963568175299502614

/-!
# A400344: Number of upper triangular n X n binary matrices having all row and column sums in {0,1,2}.

The programs for A400344, there is no canonical definition to state claims against.
-/

/-! ## A400344.P12194325160878295774

`ceil(A313753(∑[∑[n^n]-1])/4)`
-/

namespace A400344.P12194325160878295774
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A313753 (∑ j ∈ Finset.range (n + 1), f1 j).toNat : ℚ) / 4⌉

end

end A400344.P12194325160878295774

/-!
# A400347: a(1) = 2; a(n+1) is the least prime factor of 1 + Product_{k=1..n, a(k)<=a(n)} a(k) which is not yet in the sequence.

The programs for A400347, there is no canonical definition to state claims against.
-/

/-! ## A400347.P11463853362042387022

`A323605(A000389(n)+n)`
-/

namespace A400347.P11463853362042387022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323605 (A000389 n + (n : ℤ)).toNat

end

end A400347.P11463853362042387022

/-! ## A400347.P2015037158739720654

`A400647(∑[A287383(n+3)])`
-/

namespace A400347.P2015037158739720654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287383 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400647 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A400347.P2015037158739720654

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
# A400354: Column of the rightmost maximum entry in the n-th row of A032531.

The programs for A400354, there is no canonical definition to state claims against.
-/

/-! ## A400354.P8208257451012968920

`A253238(A177083(n+1))`
-/

namespace A400354.P8208257451012968920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253238 (A177083 (n + 1)).toNat

end

end A400354.P8208257451012968920

/-!
# A400356: G.f. A(x) satisfies A(x) = 1 + 4*x*A(x)^(7/2).

The programs for A400356, there is no canonical definition to state claims against.
-/

/-! ## A400356.P4771758970526406813

`2^n*A028310(A381831(n))`
-/

namespace A400356.P4771758970526406813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A028310 (A381831 n).toNat

end

end A400356.P4771758970526406813

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

The programs for A400361, the canonical program `A400361.P1889396071312864242` is in `Seq.B001.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A400361 has offset 1).

The definition of A400361 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A018804(n+1)-A384628(n+1)` (program `A400361.P1889396071312864242`, by `A400361.P1889396071312864242.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A400361.P1889396071312864242

`A018804(n+1)-A384628(n+1)`

The canonical program, it is in `Seq.B001.C015`.
-/

namespace A400361

/-- `A018804(n+1)-A384628(n+1)` -/
def P1889396071312864242.Spec : Prop :=
  ∀ n, P1889396071312864242.a n = A400361 (n + 1)

theorem P1889396071312864242.correct : P1889396071312864242.Spec := by
  intro n
  simp only [A400361, Nat.add_sub_cancel]

end A400361

/-! ## A400361.P15251589739963819288

`Δ[A209981(n)/32]-A384628(n+1)`
-/

namespace A400361.P15251589739963819288
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A209981 n : ℚ) / 32

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (A384628 (n + 1) : ℚ)

end

end A400361.P15251589739963819288

namespace A400361

/-- `Δ[A209981(n)/32]-A384628(n+1)` -/
def P15251589739963819288.Spec : Prop :=
  ∀ n, P15251589739963819288.a n = (A400361 (n + 1) : ℚ)

end A400361

/-! ## A400361.P10796701092931952763

`∑{d}[n+1, A029935(#)]-A384628(n+1)`
-/

namespace A400361.P10796701092931952763
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A029935 d - A384628 (n + 1)

end

end A400361.P10796701092931952763

namespace A400361

/-- `∑{d}[n+1, A029935(#)]-A384628(n+1)` -/
def P10796701092931952763.Spec : Prop :=
  ∀ n, P10796701092931952763.a n = A400361 (n + 1)

end A400361

/-! ## A400361.P14466804830680091239

`∑[Δ[A209295(n)]-1]-A384628(n+1)`
-/

namespace A400361.P14466804830680091239
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209295 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A384628 (n + 1)

end

end A400361.P14466804830680091239

namespace A400361

/-- `∑[Δ[A209295(n)]-1]-A384628(n+1)` -/
def P14466804830680091239.Spec : Prop :=
  ∀ n, P14466804830680091239.a n = A400361 (n + 1)

end A400361

/-! ## A400361.P4204495990463148121

`A006579(n+1)+1+n-A384628(n+1)`
-/

namespace A400361.P4204495990463148121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006579 (n + 1) + 1 + (n : ℤ) - A384628 (n + 1)

end

end A400361.P4204495990463148121

namespace A400361

/-- `A006579(n+1)+1+n-A384628(n+1)` -/
def P4204495990463148121.Spec : Prop :=
  ∀ n, P4204495990463148121.a n = A400361 (n + 1)

end A400361

/-! ## A400361.P16149209813303867107

`A209295(n+1)-(n+1)-A384628(n+1)`
-/

namespace A400361.P16149209813303867107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209295 (n + 1) - (n + 1 : ℤ) - A384628 (n + 1)

end

end A400361.P16149209813303867107

namespace A400361

/-- `A209295(n+1)-(n+1)-A384628(n+1)` -/
def P16149209813303867107.Spec : Prop :=
  ∀ n, P16149209813303867107.a n = A400361 (n + 1)

end A400361

/-! ## A400361.P12434525622193800576

`A268631(n+1)+Δ[n²]-A384628(n+1)`
-/

namespace A400361.P12434525622193800576
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268631 (n + 1) + ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) - A384628 (n + 1)

end

end A400361.P12434525622193800576

namespace A400361

/-- `A268631(n+1)+Δ[n²]-A384628(n+1)` -/
def P12434525622193800576.Spec : Prop :=
  ∀ n, P12434525622193800576.a n = A400361 (n + 1)

end A400361

/-! ## A400361.P15116368904119503074

`(n+1)²-A344485(n+1)-A384628(n+1)`
-/

namespace A400361.P15116368904119503074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - A344485 (n + 1) - A384628 (n + 1)

end

end A400361.P15116368904119503074

namespace A400361

/-- `(n+1)²-A344485(n+1)-A384628(n+1)` -/
def P15116368904119503074.Spec : Prop :=
  ∀ n, P15116368904119503074.a n = A400361 (n + 1)

end A400361

/-! ## A400361.P16444078093978086096

`(A344598(n+1)+n+1)/2-A384628(n+1)`
-/

namespace A400361.P16444078093978086096
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A344598 (n + 1) + (n + 1 : ℤ) : ℚ) / 2 - (A384628 (n + 1) : ℚ)

end

end A400361.P16444078093978086096

namespace A400361

/-- `(A344598(n+1)+n+1)/2-A384628(n+1)` -/
def P16444078093978086096.Spec : Prop :=
  ∀ n, P16444078093978086096.a n = (A400361 (n + 1) : ℚ)

end A400361

/-! ## A400361.P10528133697688834885

`∑{d}[n+1, A000010((n+1)/#)*#]-A384628(n+1)`
-/

namespace A400361.P10528133697688834885
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat * (d : ℤ) - A384628 (n + 1)

end

end A400361.P10528133697688834885

namespace A400361

/-- `∑{d}[n+1, A000010((n+1)/#)*#]-A384628(n+1)` -/
def P10528133697688834885.Spec : Prop :=
  ∀ n, P10528133697688834885.a n = A400361 (n + 1)

end A400361

/-! ## A400361.P9438291589500647217

`A063754(n+1)+A029935(n+1)-A384628(n+1)`
-/

namespace A400361.P9438291589500647217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063754 (n + 1) + A029935 (n + 1) - A384628 (n + 1)

end

end A400361.P9438291589500647217

namespace A400361

/-- `A063754(n+1)+A029935(n+1)-A384628(n+1)` -/
def P9438291589500647217.Spec : Prop :=
  ∀ n, P9438291589500647217.a n = A400361 (n + 1)

theorem P9438291589500647217.correct : P9438291589500647217.Spec := by
  intro n
  simp only [A400361, Nat.add_sub_cancel, A400361.P9438291589500647217.a, A400361.P1889396071312864242.a, A018804, A018804.P4748681952283325633.f1, A018804.P4748681952283325633.a, A029935, A029935.P1636467149315566281.f1, A029935.P1636467149315566281.a, A063754, A063754.P8530571032129736586.a, A384628, A384628.P13926361255697979705.f1, A384628.P13926361255697979705.a, A000010, A000010.P4673923239450215316.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A400361

/-! ## A400361.P16221809256255708602

`A396514(n+1)+A000203(n+1)-A384628(n+1)`
-/

namespace A400361.P16221809256255708602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396514 (n + 1) + A000203 (n + 1) - A384628 (n + 1)

end

end A400361.P16221809256255708602

namespace A400361

/-- `A396514(n+1)+A000203(n+1)-A384628(n+1)` -/
def P16221809256255708602.Spec : Prop :=
  ∀ n, P16221809256255708602.a n = A400361 (n + 1)

theorem P16221809256255708602.correct : P16221809256255708602.Spec := by
  intro n
  simp only [A400361, Nat.add_sub_cancel, A400361.P16221809256255708602.a, A400361.P1889396071312864242.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A018804, A018804.P4748681952283325633.f1, A018804.P4748681952283325633.a, A384628, A384628.P13926361255697979705.f1, A384628.P13926361255697979705.a, A396514, A396514.P190034944072554770.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A400361

/-! ## A400361.P9001804478886298007

`A349131(n+1)+A348981(n+1)-A384628(n+1)`
-/

namespace A400361.P9001804478886298007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349131 (n + 1) + A348981 (n + 1) - A384628 (n + 1)

end

end A400361.P9001804478886298007

namespace A400361

/-- `A349131(n+1)+A348981(n+1)-A384628(n+1)` -/
def P9001804478886298007.Spec : Prop :=
  ∀ n, P9001804478886298007.a n = A400361 (n + 1)

end A400361

/-! ## A400361.P1569671747336731489

`A347095(n+1)-A101035(n+1)-A384628(n+1)`
-/

namespace A400361.P1569671747336731489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347095 (n + 1) - A101035 (n + 1) - A384628 (n + 1)

end

end A400361.P1569671747336731489

namespace A400361

/-- `A347095(n+1)-A101035(n+1)-A384628(n+1)` -/
def P1569671747336731489.Spec : Prop :=
  ∀ n, P1569671747336731489.a n = A400361 (n + 1)

theorem P1569671747336731489.correct : P1569671747336731489.Spec := by
  intro n
  simp only [A400361, Nat.add_sub_cancel, A400361.P1569671747336731489.a, A400361.P1889396071312864242.a, A018804, A018804.P4748681952283325633.f1, A018804.P4748681952283325633.a, A101035, A101035.P41225276296534651.f1, A101035.P41225276296534651.a, A347095, A347095.P13848354769774225057.a, A384628, A384628.P13926361255697979705.f1, A384628.P13926361255697979705.a, A328722, A328722.P2205346375960215536.a, A007427, A007427.P16363569186413612215.f1, A007427.P16363569186413612215.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A400361

/-! ## A400361.P10486139767519012441

`A349171(n+1)-A349141(n+1)-A384628(n+1)`
-/

namespace A400361.P10486139767519012441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349171 (n + 1) - A349141 (n + 1) - A384628 (n + 1)

end

end A400361.P10486139767519012441

namespace A400361

/-- `A349171(n+1)-A349141(n+1)-A384628(n+1)` -/
def P10486139767519012441.Spec : Prop :=
  ∀ n, P10486139767519012441.a n = A400361 (n + 1)

end A400361

/-! ## A400361.P1212625009063951099

`A003557(n+1)*A347128(n+1)-A384628(n+1)`
-/

namespace A400361.P1212625009063951099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (n + 1) * A347128 (n + 1) - A384628 (n + 1)

end

end A400361.P1212625009063951099

namespace A400361

/-- `A003557(n+1)*A347128(n+1)-A384628(n+1)` -/
def P1212625009063951099.Spec : Prop :=
  ∀ n, P1212625009063951099.a n = A400361 (n + 1)

end A400361

/-! ## A400361.P15108611329386122756

`∑{#}[n, gcd(#+1, n+1)]-A384628(n+1)`
-/

namespace A400361.P15108611329386122756
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ k ∈ Finset.range (f1 n + 1), Nat.gcd (k + 1) (n + 1) : ℕ) : ℤ) - A384628 (n + 1)

end

end A400361.P15108611329386122756

namespace A400361

/-- `∑{#}[n, gcd(#+1, n+1)]-A384628(n+1)` -/
def P15108611329386122756.Spec : Prop :=
  ∀ n, P15108611329386122756.a n = A400361 (n + 1)

end A400361

/-!
# A400362: Smallest base in which the n-th Brazilian number (A125134) is a repdigit.

The programs for A400362, there is no canonical definition to state claims against.
-/

/-! ## A400362.P8853989444674153911

`A059711(lt[A059711(n)+1, n])`
-/

namespace A400362.P8853989444674153911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059711 n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059711 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A400362.P8853989444674153911

/-! ## A400362.P8891163971880910505

`A059711(lt[A059711(n), n-1])`
-/

namespace A400362.P8891163971880910505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059711 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059711 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A400362.P8891163971880910505

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

/-! ## A400363.P13234834449468219641

`A023201(eq[A165878(n), A185682(n+1)])`
-/

namespace A400363.P13234834449468219641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165878 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185682 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023201 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A400363.P13234834449468219641

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

/-! ## A400365.P16756996266206334148

`A055131(n)/3*A400364(n+1)`
-/

namespace A400365.P16756996266206334148
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055131 n : ℚ) / 3 * (A400364 (n + 1) : ℚ)

end

end A400365.P16756996266206334148

/-! ## A400365.P14053534105493313519

`(A152676(n+1)+A002314(n+1))*A400364(n+1)`
-/

namespace A400365.P14053534105493313519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A152676 (n + 1) + A002314 (n + 1)) * A400364 (n + 1)

end

end A400365.P14053534105493313519

/-! ## A400365.P2688957166217575412

`A400364(n+1)*A401446(n+1)/A401445(n+1)`
-/

namespace A400365.P2688957166217575412
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A400364 (n + 1) * A401446 (n + 1) : ℚ) / (A401445 (n + 1) : ℚ)

end

end A400365.P2688957166217575412

/-! ## A400365.P11927356922405637544

`A002313(2+n)*A400364(n+1)`
-/

namespace A400365.P11927356922405637544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002313 (2 + n) * A400364 (n + 1)

end

end A400365.P11927356922405637544

/-!
# A400366: Number of Proth numbers <= n.

The programs for A400366, the canonical program `A400366.P2437949027083987104` is in `Seq.B002.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A400366 has offset 0).

The definition of A400366 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A400366.P12251554274363453426

`fp[A080075(n+1)]`
-/

namespace A400366.P12251554274363453426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080075 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (n : ℤ) < f1 j) 0

end

end A400366.P12251554274363453426

namespace A400366

/-- `fp[A080075(n+1)]` -/
def P12251554274363453426.Spec : Prop :=
  ∀ n, (P12251554274363453426.a n : ℤ) = A400366 n

end A400366

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

/-! ## A400366.P1045587556571179364

`∑[char[A369901(1+n)]]`
-/

namespace A400366.P1045587556571179364
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369901 (1 + n)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A400366.P1045587556571179364

namespace A400366

/-- `∑[char[A369901(1+n)]]` -/
def P1045587556571179364.Spec : Prop :=
  ∀ n, (P1045587556571179364.a n : ℤ) = A400366 n

end A400366

/-! ## A400366.P5015404829297351631

`∑[char[or(1, A112714(n+1)+1)]]`
-/

namespace A400366.P5015404829297351631
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A112714 (n + 1) + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A400366.P5015404829297351631

namespace A400366

/-- `∑[char[or(1, A112714(n+1)+1)]]` -/
def P5015404829297351631.Spec : Prop :=
  ∀ n, (P5015404829297351631.a n : ℤ) = A400366 n

end A400366

/-! ## A400366.P8043878419804650393

`char[A369901(n+1)]+a(n-1)` with `a(0)=0`
-/

namespace A400366.P8043878419804650393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369901 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  (if ∃ j, f1 j = (n : ℤ) then 1 else 0) + a (n - 1)

end

end A400366.P8043878419804650393

namespace A400366

/-- `char[A369901(n+1)]+a(n-1)` -/
def P8043878419804650393.Spec : Prop :=
  ∀ n, (P8043878419804650393.a n : ℤ) = A400366 n

end A400366

/-! ## A400366.P7883774458202153177

`∑[char[A116882(A007305(3*n+4))+1]]`
-/

namespace A400366.P7883774458202153177
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116882 (A007305 (3 * n + 4)).toNat + 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A400366.P7883774458202153177

namespace A400366

/-- `∑[char[A116882(A007305(3*n+4))+1]]` -/
def P7883774458202153177.Spec : Prop :=
  ∀ n, (P7883774458202153177.a n : ℤ) = A400366 n

end A400366

/-! ## A400366.P15876611844097331074

`∑[char[A116882(A196050(3*n+4))+1]]`
-/

namespace A400366.P15876611844097331074
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116882 (A196050 (3 * n + 4)).toNat + 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A400366.P15876611844097331074

namespace A400366

/-- `∑[char[A116882(A196050(3*n+4))+1]]` -/
def P15876611844097331074.Spec : Prop :=
  ∀ n, (P15876611844097331074.a n : ℤ) = A400366 n

end A400366

/-!
# A400369: Minimum number of vertices of any simple undirected graph with exactly n triangles.

The programs for A400369, there is no canonical definition to state claims against.
-/

/-! ## A400369.P4410814491594157264

`A379017(Δ[A051349(2*n+1)])`
-/

namespace A400369.P4410814491594157264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051349 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379017 (f1 (n + 1) - f1 n).toNat

end

end A400369.P4410814491594157264

/-! ## A400369.P12685032894415320095

`A384384(A378884(n+1)+A026142(3*n+5))`
-/

namespace A400369.P12685032894415320095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384384 (A378884 (n + 1) + A026142 (3 * n + 5)).toNat

end

end A400369.P12685032894415320095

/-!
# A400372: Expansion of Product_{k>=0} (1 + Sum_{j>=0} x^(3^(k+j))).

The programs for A400372, there is no canonical definition to state claims against.
-/

/-! ## A400372.P1848844307980394595

`A266531(A325534(n))%A002260(3*n+5)`
-/

namespace A400372.P1848844307980394595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A266531 (A325534 n).toNat) (A002260 (3 * n + 5))

end

end A400372.P1848844307980394595

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

/-! ## A400376.P12069565575383653117

`A395155(A225391(n))+A052848(n)`
-/

namespace A400376.P12069565575383653117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395155 (A225391 n).toNat + A052848 n

end

end A400376.P12069565575383653117

/-! ## A400376.P16854925582015403865

`lcm(A053530(n), A386993(A346258(n)))`
-/

namespace A400376.P16854925582015403865
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A053530 n) (A386993 (A346258 n).toNat)

end

end A400376.P16854925582015403865

/-!
# A400377: Expansion of e.g.f. 1/(1 + log(1 - x) * cos(x)).

The programs for A400377, there is no canonical definition to state claims against.
-/

/-! ## A400377.P17904608920089702153

`A024417(A082579(n))`
-/

namespace A400377.P17904608920089702153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024417 (A082579 n).toNat

end

end A400377.P17904608920089702153

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
# A400380: Sum of squares of the n-th sexy prime pair (p, p+6).

The programs for A400380, the canonical program `A400380.P12678580713622150380` is in `Seq.B006.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A400380 has offset 1).

The definition of A400380 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 411 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A400380.P12678580713622150380

`A255848(A087695(n+1))`

The canonical program, it is in `Seq.B006.C002`.
-/

namespace A400380

/-- `A255848(A087695(n+1))` -/
def P12678580713622150380.Spec : Prop :=
  ∀ n, P12678580713622150380.a n = A400380 (n + 1)

theorem P12678580713622150380.correct : P12678580713622150380.Spec := by
  intro n
  simp only [A400380, Nat.add_sub_cancel]

end A400380

/-! ## A400380.P5752431812335892092

`A291108(A111192(n+1))`
-/

namespace A400380.P5752431812335892092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291108 (A111192 (n + 1)).toNat

end

end A400380.P5752431812335892092

namespace A400380

/-- `A291108(A111192(n+1))` -/
def P5752431812335892092.Spec : Prop :=
  ∀ n, P5752431812335892092.a n = A400380 (n + 1)

end A400380

/-! ## A400380.P3698952106488131031

`A005063(A111192(n+1))`
-/

namespace A400380.P3698952106488131031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005063 (A111192 (n + 1)).toNat

end

end A400380.P3698952106488131031

namespace A400380

/-- `A005063(A111192(n+1))` -/
def P3698952106488131031.Spec : Prop :=
  ∀ n, P3698952106488131031.a n = A400380 (n + 1)

end A400380

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

/-! ## A400384.P4028086407217533198

`record[A200219(A292681(n+4))]`
-/

namespace A400384.P4028086407217533198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200219 (A292681 (n + 4)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A400384.P4028086407217533198

/-! ## A400384.P5656417149440401314

`A324524(A032555(n+1)+2)`
-/

namespace A400384.P5656417149440401314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324524 (A032555 (n + 1) + 2).toNat

end

end A400384.P5656417149440401314

/-! ## A400384.P18081135832757524588

`A316856(A122625(n+1)+2)`
-/

namespace A400384.P18081135832757524588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316856 (A122625 (n + 1) + 2).toNat

end

end A400384.P18081135832757524588

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

/-! ## A400385.P17463892738000212496

`A002117(n+1)*A342920(A025164(n))`
-/

namespace A400385.P17463892738000212496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002117 (n + 1) * A342920 (A025164 n).toNat

end

end A400385.P17463892738000212496

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

/-! ## A400386.P779379712091998567

`record[A106580(2*A126988(n+1)+n-2)]`
-/

namespace A400386.P779379712091998567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106580 (2 * A126988 (n + 1) + ((n : ℤ) - 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A400386.P779379712091998567

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

/-! ## A400390.P17823011763757094700

`gcd(A233772(n+1), A233773(n+1))`
-/

namespace A400390.P17823011763757094700
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A233772 (n + 1)) (A233773 (n + 1))

end

end A400390.P17823011763757094700

/-! ## A400390.P15160614237667451432

`A003989(A056534(1+n))`
-/

namespace A400390.P15160614237667451432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003989 (A056534 (1 + n)).toNat

end

end A400390.P15160614237667451432

/-! ## A400390.P1999205955365561294

`gcd(A275055(n+1), A308805(n+1))`
-/

namespace A400390.P1999205955365561294
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A275055 (n + 1)) (A308805 (n + 1))

end

end A400390.P1999205955365561294

/-! ## A400390.P6965509367151433772

`A159923(A056534(n+1))`
-/

namespace A400390.P6965509367151433772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159923 (A056534 (n + 1)).toNat

end

end A400390.P6965509367151433772

/-!
# A400391: Irregular table read by rows: T(n, k) = gcud(d(n, k), n/d(n, k)), where d(n, k) = A027750(n, k) is the k-th divisor of n, and gcud is the greatest common unitary divisor.

The programs for A400391, there is no canonical definition to state claims against.
-/

/-! ## A400391.P508915089182330844

`A225174(A056534(1+n))`
-/

namespace A400391.P508915089182330844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225174 (A056534 (1 + n)).toNat

end

end A400391.P508915089182330844

/-! ## A400391.P11020886527841592131

`gcd(∑[A110703(n+1)], A400390(n+1))`
-/

namespace A400391.P11020886527841592131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110703 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (∑ j ∈ Finset.range (n + 1), f1 j) (A400390 (n + 1))

end

end A400391.P11020886527841592131

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

/-! ## A400392.P2480418602207397095

`A342001(3^A400393(n+1))`
-/

namespace A400392.P2480418602207397095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342001 (SequenceMachineLib.roundAway ((3 : ℚ) ^ (A400393 (n + 1) : ℤ))).toNat

end

end A400392.P2480418602207397095

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

/-! ## A400398.P983620911684665522

`A091202(A293442(n+1))%A000043(2*n+1)`
-/

namespace A400398.P983620911684665522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A091202 (A293442 (n + 1)).toNat) (A000043 (2 * n + 1))

end

end A400398.P983620911684665522

/-! ## A400398.P16831479672036348976

`A091202(A293442(n+1))%A382996(n+1)`
-/

namespace A400398.P16831479672036348976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A091202 (A293442 (n + 1)).toNat) (A382996 (n + 1))

end

end A400398.P16831479672036348976

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

/-!
# A400399: Value of k that maximizes P(X < Y), where X and Y are independent binomial random variables with k trials and success probabilities 1/n and 1/(2*n), respectively. In case of ties, choose the largest k.

The programs for A400399, there is no canonical definition to state claims against.
-/

/-! ## A400399.P13917477078319910427

`A204166(∑[A004976(2*n+1)])`
-/

namespace A400399.P13917477078319910427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004976 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204166 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A400399.P13917477078319910427

/-! ## A400399.P14621268045415739098

`round(sqrt(A166018(2*n+1)+A008000(n)))+1`
-/

namespace A400399.P14621268045415739098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A166018 (2 * n + 1) + A008000 n : ℝ)) + 1

end

end A400399.P14621268045415739098

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

