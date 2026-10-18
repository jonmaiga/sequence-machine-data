import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C035
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
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
import Seq.Opaque.C009
import Seq.Opaque.C010
import Seq.Opaque.C011
import Seq.Opaque.C012
import Seq.Opaque.C013
import Seq.Opaque.C014
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C024
import Seq.Opaque.C025

/-!
# A289700: Numbers k such that k!6 - 36 is prime, where k!6 is the sextuple factorial number (A085158).

The programs for A289700, there is no canonical definition to state claims against.
-/

/-! ## A289700.P784829913977352820

`A084654(n+1)+∑[A084658(2*n+5)]`
-/

namespace A289700.P784829913977352820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084658 (2 * n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084654 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A289700.P784829913977352820

/-! ## A289700.P8358457564984963016

`or(A014311(3*n+2), A205675(A083065(n)))`
-/

namespace A289700.P8358457564984963016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A014311 (3 * n + 2)) (A205675 (A083065 n).toNat)

end

end A289700.P8358457564984963016

/-!
# A289705: Number of 4-cycles in the n-triangular honeycomb queen graph.

The programs for A289705, there is no canonical definition to state claims against.
-/

/-! ## A289705.P11460712362297676645

`A111859(A155450(n+1)+A060884(2*n))`
-/

namespace A289705.P11460712362297676645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111859 (A155450 (n + 1) + A060884 (2 * n)).toNat

end

end A289705.P11460712362297676645

/-!
# A289706: Number of 5-cycles in the n-triangular honeycomb queen graph.

The programs for A289706, there is no canonical definition to state claims against.
-/

/-! ## A289706.P2902209412206478424

`A079690(A315518(n^5))`
-/

namespace A289706.P2902209412206478424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079690 (A315518 (n ^ 5)).toNat

end

end A289706.P2902209412206478424

/-!
# A289709: Number of independent vertex sets and vertex covers in the n-triangular honeycomb queen graph.

The programs for A289709, there is no canonical definition to state claims against.
-/

/-! ## A289709.P5849477278798267766

`6*A283117(n+1)-2*A326611(n+1)-3*2^ceil((n+1)/2)`
-/

namespace A289709.P5849477278798267766
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (6 * A283117 (n + 1) - 2 * A326611 (n + 1) : ℚ) - 3 * (2 : ℚ) ^ (⌈(n + 1 : ℚ) / 2⌉ : ℤ)

end

end A289709.P5849477278798267766

/-! ## A289709.P15531906710189851163

`A329559(n+1)+A002264(A181999(n+2))`
-/

namespace A289709.P15531906710189851163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329559 (n + 1) + A002264 (A181999 (n + 2)).toNat

end

end A289709.P15531906710189851163

/-!
# A289711: Triangle T(n,p) read by rows: the order of the semigroup of orientation-preserving partial transformations of n elements with height p.

The programs for A289711, there is no canonical definition to state claims against.
-/

/-! ## A289711.P644426070844722745

`A101818(n+1)-A319058(A289710(n))`
-/

namespace A289711.P644426070844722745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101818 (n + 1) - A319058 (A289710 n).toNat

end

end A289711.P644426070844722745

/-! ## A289711.P3436599046317060520

`A008277(n+1)*A018253(A081572(n))`
-/

namespace A289711.P3436599046317060520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008277 (n + 1) * A018253 (A081572 n).toNat

end

end A289711.P3436599046317060520

/-! ## A289711.P1421455025667643859

`A101818(n+1)/A178340(A035041(n))`
-/

namespace A289711.P1421455025667643859
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A101818 (n + 1) : ℚ) / (A178340 (A035041 n).toNat : ℚ)

end

end A289711.P1421455025667643859

/-!
# A289713: The order of the semigroup of orientation-preserving partial transformations on n elements.

The programs for A289713, there is no canonical definition to state claims against.
-/

/-! ## A289713.P17368190323289285167

`A034887(ceil(cosh(2*n)))`
-/

namespace A289713.P17368190323289285167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034887 ⌈Real.cosh (2 * n : ℝ)⌉.toNat

end

end A289713.P17368190323289285167

/-!
# A289715: The order of the semigroup of orientation-preserving full transformations on n elements.

The programs for A289715, the canonical program `A289715.P5247963101703617559` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A289715 has offset 1).

The definition of A289715 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A289715.P5247963101703617559

`A002457(n)-A002378(n)`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A289715

/-- `A002457(n)-A002378(n)` -/
def P5247963101703617559.Spec : Prop :=
  ∀ n, P5247963101703617559.a n = A289715 (n + 1)

theorem P5247963101703617559.correct : P5247963101703617559.Spec := by
  intro n
  simp only [A289715, Nat.add_sub_cancel]

end A289715

/-! ## A289715.P15598797799684757706

`(n+1)*(A001700(n)-n)`
-/

namespace A289715.P15598797799684757706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A001700 n - (n : ℤ))

end

end A289715.P15598797799684757706

namespace A289715

/-- `(n+1)*(A001700(n)-n)` -/
def P15598797799684757706.Spec : Prop :=
  ∀ n, P15598797799684757706.a n = A289715 (n + 1)

end A289715

/-! ## A289715.P4070046301225765607

`(n+1)*(Δ[A024718(n)]-n)`
-/

namespace A289715.P4070046301225765607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024718 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (f1 (n + 1) - f1 n - (n : ℤ))

end

end A289715.P4070046301225765607

namespace A289715

/-- `(n+1)*(Δ[A024718(n)]-n)` -/
def P4070046301225765607.Spec : Prop :=
  ∀ n, P4070046301225765607.a n = A289715 (n + 1)

end A289715

/-! ## A289715.P8353189388746040554

`A100071(Δ[n²])-∑[2*n]`
-/

namespace A289715.P8353189388746040554
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100071 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A289715.P8353189388746040554

namespace A289715

/-- `A100071(Δ[n²])-∑[2*n]` -/
def P8353189388746040554.Spec : Prop :=
  ∀ n, P8353189388746040554.a n = A289715 (n + 1)

end A289715

/-! ## A289715.P4836669561907652890

`(n+1)*(A010763(n)+1-n)`
-/

namespace A289715.P4836669561907652890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A010763 n + (1 - (n : ℤ)))

end

end A289715.P4836669561907652890

namespace A289715

/-- `(n+1)*(A010763(n)+1-n)` -/
def P4836669561907652890.Spec : Prop :=
  ∀ n, P4836669561907652890.a n = A289715 (n + 1)

end A289715

/-! ## A289715.P18104154247365213806

`(n+1)*(A088218(n+1)-n)`
-/

namespace A289715.P18104154247365213806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A088218 (n + 1) - (n : ℤ))

end

end A289715.P18104154247365213806

namespace A289715

/-- `(n+1)*(A088218(n+1)-n)` -/
def P18104154247365213806.Spec : Prop :=
  ∀ n, P18104154247365213806.a n = A289715 (n + 1)

end A289715

/-! ## A289715.P10885280967537758283

`A056040(2*n+1)-∑[2*n]`
-/

namespace A289715.P10885280967537758283
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056040 (2 * n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A289715.P10885280967537758283

namespace A289715

/-- `A056040(2*n+1)-∑[2*n]` -/
def P10885280967537758283.Spec : Prop :=
  ∀ n, P10885280967537758283.a n = A289715 (n + 1)

end A289715

/-! ## A289715.P1667307583501646454

`A274707(2*(n+1))-(n²+n)`
-/

namespace A289715.P1667307583501646454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274707 (2 * (n + 1)) - (n ^ 2 + n : ℤ)

end

end A289715.P1667307583501646454

namespace A289715

/-- `A274707(2*(n+1))-(n²+n)` -/
def P1667307583501646454.Spec : Prop :=
  ∀ n, P1667307583501646454.a n = A289715 (n + 1)

end A289715

/-! ## A289715.P8538806537199843386

`(n+1)*(∑[A097613(n+1)]-n)`
-/

namespace A289715.P8538806537199843386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097613 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ))

end

end A289715.P8538806537199843386

namespace A289715

/-- `(n+1)*(∑[A097613(n+1)]-n)` -/
def P8538806537199843386.Spec : Prop :=
  ∀ n, P8538806537199843386.a n = A289715 (n + 1)

end A289715

/-! ## A289715.P5720702035888922897

`(n+1)*(A260878(n+1)-(n+1))`
-/

namespace A289715.P5720702035888922897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A260878 (n + 1) - (n + 1 : ℤ))

end

end A289715.P5720702035888922897

namespace A289715

/-- `(n+1)*(A260878(n+1)-(n+1))` -/
def P5720702035888922897.Spec : Prop :=
  ∀ n, P5720702035888922897.a n = A289715 (n + 1)

end A289715

/-! ## A289715.P10654274933640719155

`(A001405(2*n+1)-n)*(n+1)`
-/

namespace A289715.P10654274933640719155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001405 (2 * n + 1) - (n : ℤ)) * (n + 1 : ℤ)

end

end A289715.P10654274933640719155

namespace A289715

/-- `(A001405(2*n+1)-n)*(n+1)` -/
def P10654274933640719155.Spec : Prop :=
  ∀ n, P10654274933640719155.a n = A289715 (n + 1)

end A289715

/-! ## A289715.P3488072243993302928

`(A037952(2*n+1)-n)*(n+1)`
-/

namespace A289715.P3488072243993302928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A037952 (2 * n + 1) - (n : ℤ)) * (n + 1 : ℤ)

end

end A289715.P3488072243993302928

namespace A289715

/-- `(A037952(2*n+1)-n)*(n+1)` -/
def P3488072243993302928.Spec : Prop :=
  ∀ n, P3488072243993302928.a n = A289715 (n + 1)

end A289715

/-! ## A289715.P2618808638946895862

`(n+1)*(A052473(n+3)-(n+2))`
-/

namespace A289715.P2618808638946895862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A052473 (n + 3) - (n + 2 : ℤ))

end

end A289715.P2618808638946895862

namespace A289715

/-- `(n+1)*(A052473(n+3)-(n+2))` -/
def P2618808638946895862.Spec : Prop :=
  ∀ n, P2618808638946895862.a n = A289715 (n + 1)

end A289715

/-! ## A289715.P3009129018851904929

`(A057977(2*n+1)-n)*(n+1)`
-/

namespace A289715.P3009129018851904929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A057977 (2 * n + 1) - (n : ℤ)) * (n + 1 : ℤ)

end

end A289715.P3009129018851904929

namespace A289715

/-- `(A057977(2*n+1)-n)*(n+1)` -/
def P3009129018851904929.Spec : Prop :=
  ∀ n, P3009129018851904929.a n = A289715 (n + 1)

end A289715

/-! ## A289715.P13931313969087108805

`(A063549(2*n+1)-n)*(n+1)`
-/

namespace A289715.P13931313969087108805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A063549 (2 * n + 1) - (n : ℤ)) * (n + 1 : ℤ)

end

end A289715.P13931313969087108805

namespace A289715

/-- `(A063549(2*n+1)-n)*(n+1)` -/
def P13931313969087108805.Spec : Prop :=
  ∀ n, P13931313969087108805.a n = A289715 (n + 1)

end A289715

/-! ## A289715.P9373518117592563109

`(A138364(2*n+1)-n)*(n+1)`
-/

namespace A289715.P9373518117592563109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A138364 (2 * n + 1) - (n : ℤ)) * (n + 1 : ℤ)

end

end A289715.P9373518117592563109

namespace A289715

/-- `(A138364(2*n+1)-n)*(n+1)` -/
def P9373518117592563109.Spec : Prop :=
  ∀ n, P9373518117592563109.a n = A289715 (n + 1)

end A289715

/-! ## A289715.P12385012097992139395

`(n+1)*(A100320(n+1)/4-n)`
-/

namespace A289715.P12385012097992139395
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * ((A100320 (n + 1) : ℚ) / 4 - (n : ℚ))

end

end A289715.P12385012097992139395

namespace A289715

/-- `(n+1)*(A100320(n+1)/4-n)` -/
def P12385012097992139395.Spec : Prop :=
  ∀ n, P12385012097992139395.a n = (A289715 (n + 1) : ℚ)

end A289715

/-! ## A289715.P15593278105373246827

`(n+1)*(Δ[n²]*A000108(n)-n)`
-/

namespace A289715.P15593278105373246827
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (((f1 (n + 1) : ℤ) - (f1 n : ℤ)) * A000108 n - (n : ℤ))

end

end A289715.P15593278105373246827

namespace A289715

/-- `(n+1)*(Δ[n²]*A000108(n)-n)` -/
def P15593278105373246827.Spec : Prop :=
  ∀ n, P15593278105373246827.a n = A289715 (n + 1)

end A289715

/-! ## A289715.P10337288780088775615

`A000984(n)+n*A134759(n)`
-/

namespace A289715.P10337288780088775615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 n + (n : ℤ) * A134759 n

end

end A289715.P10337288780088775615

namespace A289715

/-- `A000984(n)+n*A134759(n)` -/
def P10337288780088775615.Spec : Prop :=
  ∀ n, P10337288780088775615.a n = A289715 (n + 1)

end A289715

/-! ## A289715.P3247299581467321705

`(A126930(2*n+1)+n)*A130472(2*n+1)`
-/

namespace A289715.P3247299581467321705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A126930 (2 * n + 1) + (n : ℤ)) * A130472 (2 * n + 1)

end

end A289715.P3247299581467321705

namespace A289715

/-- `(A126930(2*n+1)+n)*A130472(2*n+1)` -/
def P3247299581467321705.Spec : Prop :=
  ∀ n, P3247299581467321705.a n = A289715 (n + 1)

end A289715

/-!
# A289717: The order of the semigroup of orientation-preserving or reserving partial transformations of n elements.

The programs for A289717, there is no canonical definition to state claims against.
-/

/-! ## A289717.P7441558903453172208

`A026502(3*a(n-1))-1` with `a(0)=1`
-/

namespace A289717.P7441558903453172208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A026502 (3 * a (n - 1)).toNat - 1

end

end A289717.P7441558903453172208

/-!
# A289718: The order of the semigroup of orientation-preserving or reserving full transformations of n elements.

The programs for A289718, the canonical program `A289718.P14152002450367989878` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A289718 has offset 1).

The definition of A289718 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005430, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A289718.P14152002450367989878

`A005430(n+1)-(n+1)*A006004(n+1)`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A289718

/-- `A005430(n+1)-(n+1)*A006004(n+1)` -/
def P14152002450367989878.Spec : Prop :=
  ∀ n, P14152002450367989878.a n = A289718 (n + 1)

theorem P14152002450367989878.correct : P14152002450367989878.Spec := by
  intro n
  simp only [A289718, Nat.add_sub_cancel]

end A289718

/-! ## A289718.P11054498312919032220

`∑[Δ[A289720(n)]-A005843(n)]`
-/

namespace A289718.P11054498312919032220
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289720 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - A005843 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A289718.P11054498312919032220

namespace A289718

/-- `∑[Δ[A289720(n)]-A005843(n)]` -/
def P11054498312919032220.Spec : Prop :=
  ∀ n, P11054498312919032220.a n = A289718 (n + 1)

end A289718

/-! ## A289718.P2821240119543918575

`A289720(n+1)-∑[A004277(n)]`
-/

namespace A289718.P2821240119543918575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289720 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A289718.P2821240119543918575

namespace A289718

/-- `A289720(n+1)-∑[A004277(n)]` -/
def P2821240119543918575.Spec : Prop :=
  ∀ n, P2821240119543918575.a n = A289718 (n + 1)

end A289718

/-! ## A289718.P957137920976523417

`A289720(n+1)-A002061(n+1)`
-/

namespace A289718.P957137920976523417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289720 (n + 1) - A002061 (n + 1)

end

end A289718.P957137920976523417

namespace A289718

/-- `A289720(n+1)-A002061(n+1)` -/
def P957137920976523417.Spec : Prop :=
  ∀ n, P957137920976523417.a n = A289718 (n + 1)

end A289718

/-!
# A289719: a(n) = (n/2)*binomial(2*n, n) + 1.

The programs for A289719, the canonical program `A289719.P1369595819095415179` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A289719 has offset 0).

The definition of A289719 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A289719.P3476304003784106437

`n*record[a(n-1)/(floor(n/2)/n-1)]+1` with `a(0)=-1`
-/

namespace A289719.P3476304003784106437
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [-1] fun n f1 =>
  f1 (n - 1) / ((⌊(n : ℚ) / 2⌋ : ℚ) / (n : ℚ) - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1

end

end A289719.P3476304003784106437

namespace A289719

/-- `n*record[a(n-1)/(floor(n/2)/n-1)]+1` -/
def P3476304003784106437.Spec : Prop :=
  ∀ n, P3476304003784106437.a n = (A289719 n : ℚ)

end A289719

/-! ## A289719.P1791723116470289535

`n*A088218(n)+1`
-/

namespace A289719.P1791723116470289535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A088218 n + 1

end

end A289719.P1791723116470289535

namespace A289719

/-- `n*A088218(n)+1` -/
def P1791723116470289535.Spec : Prop :=
  ∀ n, P1791723116470289535.a n = A289719 n

end A289719

/-! ## A289719.P1369595819095415179

`record[A274707(n+1)+1]`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A289719

/-- `record[A274707(n+1)+1]` -/
def P1369595819095415179.Spec : Prop :=
  ∀ n, P1369595819095415179.a n = A289719 n

theorem P1369595819095415179.correct : P1369595819095415179.Spec := by
  intro n
  simp only [A289719]

end A289719

/-! ## A289719.P9239420379378763818

`abs(n*A110556(n))+1`
-/

namespace A289719.P9239420379378763818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) * A110556 n| + 1

end

end A289719.P9239420379378763818

namespace A289719

/-- `abs(n*A110556(n))+1` -/
def P9239420379378763818.Spec : Prop :=
  ∀ n, P9239420379378763818.a n = A289719 n

end A289719

/-! ## A289719.P12946902423334329787

`∑[n]*A000108(n)+1`
-/

namespace A289719.P12946902423334329787
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A000108 n + 1

end

end A289719.P12946902423334329787

namespace A289719

/-- `∑[n]*A000108(n)+1` -/
def P12946902423334329787.Spec : Prop :=
  ∀ n, P12946902423334329787.a n = A289719 n

end A289719

/-! ## A289719.P11928536520254396433

`n*record[A138364(n)]+1`
-/

namespace A289719.P11928536520254396433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138364 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1

end

end A289719.P11928536520254396433

namespace A289719

/-- `n*record[A138364(n)]+1` -/
def P11928536520254396433.Spec : Prop :=
  ∀ n, P11928536520254396433.a n = A289719 n

end A289719

/-! ## A289719.P421464403719460433

`n*A210736(2*n)+1`
-/

namespace A289719.P421464403719460433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A210736 (2 * n) + 1

end

end A289719.P421464403719460433

namespace A289719

/-- `n*A210736(2*n)+1` -/
def P421464403719460433.Spec : Prop :=
  ∀ n, P421464403719460433.a n = A289719 n

end A289719

/-! ## A289719.P7755373194282098842

`n/2*A000984(n)+1`
-/

namespace A289719.P7755373194282098842
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 2 * (A000984 n : ℚ) + 1

end

end A289719.P7755373194282098842

namespace A289719

/-- `n/2*A000984(n)+1` -/
def P7755373194282098842.Spec : Prop :=
  ∀ n, P7755373194282098842.a n = (A289719 n : ℚ)

end A289719

/-! ## A289719.P18269475327936592416

`n*A260878(n)-(n-1)`
-/

namespace A289719.P18269475327936592416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A260878 n - ((n : ℤ) - 1)

end

end A289719.P18269475327936592416

namespace A289719

/-- `n*A260878(n)-(n-1)` -/
def P18269475327936592416.Spec : Prop :=
  ∀ n, P18269475327936592416.a n = A289719 n

end A289719

/-! ## A289719.P8024964034491576758

`A100071(A004273(n))+1`
-/

namespace A289719.P8024964034491576758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100071 (A004273 n).toNat + 1

end

end A289719.P8024964034491576758

namespace A289719

/-- `A100071(A004273(n))+1` -/
def P8024964034491576758.Spec : Prop :=
  ∀ n, P8024964034491576758.a n = A289719 n

end A289719

/-! ## A289719.P9316433948085835198

`record[A056040(n)+A000035(n)]`
-/

namespace A289719.P9316433948085835198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056040 n + A000035 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A289719.P9316433948085835198

namespace A289719

/-- `record[A056040(n)+A000035(n)]` -/
def P9316433948085835198.Spec : Prop :=
  ∀ n, P9316433948085835198.a n = A289719 n

end A289719

/-! ## A289719.P4849178328455204386

`record[A088705(n)+A056040(n)]`
-/

namespace A289719.P4849178328455204386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088705 n + A056040 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A289719.P4849178328455204386

namespace A289719

/-- `record[A088705(n)+A056040(n)]` -/
def P4849178328455204386.Spec : Prop :=
  ∀ n, P4849178328455204386.a n = A289719 n

end A289719

/-! ## A289719.P2323458166279286807

`record[or(A040001(n), A056040(n))]`
-/

namespace A289719.P2323458166279286807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A040001 n) (A056040 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A289719.P2323458166279286807

namespace A289719

/-- `record[or(A040001(n), A056040(n))]` -/
def P2323458166279286807.Spec : Prop :=
  ∀ n, P2323458166279286807.a n = A289719 n

end A289719

/-! ## A289719.P4549308748853796983

`A100071(A014681(2*n))+1`
-/

namespace A289719.P4549308748853796983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100071 (A014681 (2 * n)).toNat + 1

end

end A289719.P4549308748853796983

namespace A289719

/-- `A100071(A014681(2*n))+1` -/
def P4549308748853796983.Spec : Prop :=
  ∀ n, P4549308748853796983.a n = A289719 n

end A289719

/-! ## A289719.P11365899556976081601

`A132820(n+1)-A010763(n)`
-/

namespace A289719.P11365899556976081601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132820 (n + 1) - A010763 n

end

end A289719.P11365899556976081601

namespace A289719

/-- `A132820(n+1)-A010763(n)` -/
def P11365899556976081601.Spec : Prop :=
  ∀ n, P11365899556976081601.a n = A289719 n

end A289719

/-! ## A289719.P2348490900501467177

`A000108(n)*A000217(n)+1`
-/

namespace A289719.P2348490900501467177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n * A000217 n + 1

end

end A289719.P2348490900501467177

namespace A289719

/-- `A000108(n)*A000217(n)+1` -/
def P2348490900501467177.Spec : Prop :=
  ∀ n, P2348490900501467177.a n = A289719 n

end A289719

/-! ## A289719.P14062612626018432151

`A001790(n)*A335063(n)+1`
-/

namespace A289719.P14062612626018432151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001790 n * A335063 n + 1

end

end A289719.P14062612626018432151

namespace A289719

/-- `A001790(n)*A335063(n)+1` -/
def P14062612626018432151.Spec : Prop :=
  ∀ n, P14062612626018432151.a n = A289719 n

end A289719

/-! ## A289719.P7208311300885139192

`A100071(log2(A011782(2*n)))+1`
-/

namespace A289719.P7208311300885139192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100071 (SequenceMachineLib.roundAway (Real.logb 2 (A011782 (2 * n) : ℝ))).toNat + 1

end

end A289719.P7208311300885139192

namespace A289719

/-- `A100071(log2(A011782(2*n)))+1` -/
def P7208311300885139192.Spec : Prop :=
  ∀ n, P7208311300885139192.a n = A289719 n

end A289719

/-! ## A289719.P14619638482910010100

`record[A056040(n)+1-A126869(n)]`
-/

namespace A289719.P14619638482910010100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056040 n + (1 - A126869 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A289719.P14619638482910010100

namespace A289719

/-- `record[A056040(n)+1-A126869(n)]` -/
def P14619638482910010100.Spec : Prop :=
  ∀ n, P14619638482910010100.a n = A289719 n

end A289719

/-! ## A289719.P16646361679238457742

`A097070(n+1)+1-A088218(n)`
-/

namespace A289719.P16646361679238457742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097070 (n + 1) + (1 - A088218 n)

end

end A289719.P16646361679238457742

namespace A289719

/-- `A097070(n+1)+1-A088218(n)` -/
def P16646361679238457742.Spec : Prop :=
  ∀ n, P16646361679238457742.a n = A289719 n

end A289719

/-!
# A289720: a(n) = 1 + n*binomial(2*n,n) - n^2*(n^2 - 2*n + 3)/2.

The programs for A289720, there is no canonical definition to state claims against.
-/

/-! ## A289720.P3862864586725017095

`A026478(A292713(n))+n`
-/

namespace A289720.P3862864586725017095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026478 (A292713 n).toNat + (n : ℤ)

end

end A289720.P3862864586725017095

/-! ## A289720.P8158436728645443644

`A026478(A292724(n))+n`
-/

namespace A289720.P8158436728645443644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026478 (A292724 n).toNat + (n : ℤ)

end

end A289720.P8158436728645443644

/-!
# A289721: Let a(0)=1. Then a(n) = sums of consecutive strings of positive integers of length 3*n, starting with the integer 2.

The programs for A289721, the canonical program `A289721.P8756889637263718007` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A289721 has offset 0).

The definition of A289721 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A289721.P8756889637263718007

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=1, a(1)=9, a(2)=45, a(3)=135, a(4)=306`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A289721

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P8756889637263718007.Spec : Prop :=
  ∀ n, P8756889637263718007.a n = A289721 n

theorem P8756889637263718007.correct : P8756889637263718007.Spec := by
  intro n
  simp only [A289721]

end A289721

/-! ## A289721.P12002889008458850703

`9*(n^3+n)/2+1-ceil(n/(n+1))`
-/

namespace A289721.P12002889008458850703
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  9 * ((n ^ 3 + n : ℚ) / 2) + 1 - (⌈(n : ℚ) / (n + 1 : ℚ)⌉ : ℚ)

end

end A289721.P12002889008458850703

namespace A289721

/-- `9*(n^3+n)/2+1-ceil(n/(n+1))` -/
def P12002889008458850703.Spec : Prop :=
  ∀ n, P12002889008458850703.a n = (A289721 n : ℚ)

end A289721

/-! ## A289721.P9849168128959863669

`Δ[C(A139482(n+1), 2)]`
-/

namespace A289721.P9849168128959863669
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A139482 (n + 1)).toNat 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A289721.P9849168128959863669

namespace A289721

/-- `Δ[C(A139482(n+1), 2)]` -/
def P9849168128959863669.Spec : Prop :=
  ∀ n, P9849168128959863669.a n = A289721 n

end A289721

/-! ## A289721.P17408261975106807987

`Δ[C(n²+A089071(n+1)-n, 2)]`
-/

namespace A289721.P17408261975106807987
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ((n ^ 2 : ℤ) + (A089071 (n + 1) - (n : ℤ))).toNat 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A289721.P17408261975106807987

namespace A289721

/-- `Δ[C(n²+A089071(n+1)-n, 2)]` -/
def P17408261975106807987.Spec : Prop :=
  ∀ n, P17408261975106807987.a n = A289721 n

end A289721

/-! ## A289721.P857864939292907484

`(A079908(A005843(n))+A079908(n))/2`
-/

namespace A289721.P857864939292907484
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A079908 (A005843 n).toNat + A079908 n : ℚ) / 2

end

end A289721.P857864939292907484

namespace A289721

/-- `(A079908(A005843(n))+A079908(n))/2` -/
def P857864939292907484.Spec : Prop :=
  ∀ n, P857864939292907484.a n = (A289721 n : ℚ)

end A289721

/-! ## A289721.P10699499453554762373

`record[A000125(n+1-A001057(n+1))+n]`
-/

namespace A289721.P10699499453554762373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000125 ((n + 1 : ℤ) - A001057 (n + 1)).toNat + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A289721.P10699499453554762373

namespace A289721

/-- `record[A000125(n+1-A001057(n+1))+n]` -/
def P10699499453554762373.Spec : Prop :=
  ∀ n, P10699499453554762373.a n = A289721 n

end A289721

/-! ## A289721.P16495924587964916697

`Δ[A000217(A005893(n)-A000217(n+1))]`
-/

namespace A289721.P16495924587964916697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A005893 n - A000217 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A289721.P16495924587964916697

namespace A289721

/-- `Δ[A000217(A005893(n)-A000217(n+1))]` -/
def P16495924587964916697.Spec : Prop :=
  ∀ n, P16495924587964916697.a n = A289721 n

end A289721

/-!
# A289723: Primes of the form 3^k - 20.

The programs for A289723, there is no canonical definition to state claims against.
-/

/-! ## A289723.P4634852587472293037

`3^A219041(n+1)-20`
-/

namespace A289723.P4634852587472293037
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (A219041 (n + 1) : ℤ) - 20

end

end A289723.P4634852587472293037

/-! ## A289723.P4832264668695921535

`A000244(A219041(n+1))-20`
-/

namespace A289723.P4832264668695921535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 (A219041 (n + 1)).toNat - 20

end

end A289723.P4832264668695921535

/-!
# A289724: Primes of the form 3^k - 22.

The programs for A289724, there is no canonical definition to state claims against.
-/

/-! ## A289724.P15356076338951827331

`3^A219043(n+1)-22`
-/

namespace A289724.P15356076338951827331
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (A219043 (n + 1) : ℤ) - 22

end

end A289724.P15356076338951827331

/-!
# A289725: Primes of the form 3^k - 26.

The programs for A289725, there is no canonical definition to state claims against.
-/

/-! ## A289725.P16718803578761646592

`3^A219045(n+1)-26`
-/

namespace A289725.P16718803578761646592
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (A219045 (n + 1) : ℤ) - 26

end

end A289725.P16718803578761646592

/-!
# A289727: Primes of the form k!6-6, where k!6 is the sextuple factorial number (A085158).

The programs for A289727, there is no canonical definition to state claims against.
-/

/-! ## A289727.P418409242517205276

`A085158(A289685(n+1))-6`
-/

namespace A289727.P418409242517205276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085158 (A289685 (n + 1)).toNat - 6

end

end A289727.P418409242517205276

/-!
# A289728: Primes of the form k!6-8, where k!6 is the sextuple factorial number (A085158).

The programs for A289728, there is no canonical definition to state claims against.
-/

/-! ## A289728.P5951520765910866404

`A085158(A289686(n+1))-8`
-/

namespace A289728.P5951520765910866404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085158 (A289686 (n + 1)).toNat - 8

end

end A289728.P5951520765910866404

/-! ## A289728.P5371222307714846909

`p?[A085158(n)-8]`
-/

namespace A289728.P5371222307714846909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085158 n - 8

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A289728.P5371222307714846909

/-!
# A289729: Primes of the form k!6-9, where k!6 is the sextuple factorial number (A085158).

The programs for A289729, there is no canonical definition to state claims against.
-/

/-! ## A289729.P13543164949535523677

`A085158(A289687(n+1))-9`
-/

namespace A289729.P13543164949535523677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085158 (A289687 (n + 1)).toNat - 9

end

end A289729.P13543164949535523677

/-!
# A289730: Primes of the form k!6-12, where k!6 is the sextuple factorial number (A085158).

The programs for A289730, there is no canonical definition to state claims against.
-/

/-! ## A289730.P1695402532658774881

`A085158(A289688(n+1))-12`
-/

namespace A289730.P1695402532658774881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085158 (A289688 (n + 1)).toNat - 12

end

end A289730.P1695402532658774881

/-!
# A289732: Primes of the form k!6-18, where k!6 is the sextuple factorial number (A085158).

The programs for A289732, there is no canonical definition to state claims against.
-/

/-! ## A289732.P1195006372986566434

`A085158(A289696(n+1))-18`
-/

namespace A289732.P1195006372986566434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085158 (A289696 (n + 1)).toNat - 18

end

end A289732.P1195006372986566434

/-!
# A289733: Primes of the form k!6-24, where k!6 is the sextuple factorial number (A085158).

The programs for A289733, there is no canonical definition to state claims against.
-/

/-! ## A289733.P5765575204065689257

`A085158(A289697(n+1))-24`
-/

namespace A289733.P5765575204065689257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085158 (A289697 (n + 1)).toNat - 24

end

end A289733.P5765575204065689257

/-! ## A289733.P11808906631261590867

`p?[A085158(n)-24]`
-/

namespace A289733.P11808906631261590867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085158 n - 24

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A289733.P11808906631261590867

/-!
# A289734: Primes of the form k!6-27, where k!6 is the sextuple factorial number (A085158).

The programs for A289734, there is no canonical definition to state claims against.
-/

/-! ## A289734.P3970249855504759159

`A085158(A289698(n+1))-27`
-/

namespace A289734.P3970249855504759159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085158 (A289698 (n + 1)).toNat - 27

end

end A289734.P3970249855504759159

/-!
# A289735: Primes of the form k!6-32, where k!6 is the sextuple factorial number (A085158).

The programs for A289735, there is no canonical definition to state claims against.
-/

/-! ## A289735.P2972165901848983198

`A085158(A289699(n+1))-32`
-/

namespace A289735.P2972165901848983198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085158 (A289699 (n + 1)).toNat - 32

end

end A289735.P2972165901848983198

/-!
# A289737: Primes of the form k!6-48, where k!6 is the sextuple factorial number (A085158).

The programs for A289737, there is no canonical definition to state claims against.
-/

/-! ## A289737.P1592007127062242084

`A085158(A289701(n+1))-48`
-/

namespace A289737.P1592007127062242084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085158 (A289701 (n + 1)).toNat - 48

end

end A289737.P1592007127062242084

/-!
# A289738: Numbers k whose sum of divisors equals the sum of divisors of 2*k-1.

The programs for A289738, there is no canonical definition to state claims against.
-/

/-! ## A289738.P17152794285004505328

`ceil(A232355(n+1)/2)`
-/

namespace A289738.P17152794285004505328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A232355 (n + 1) : ℚ) / 2⌉

end

end A289738.P17152794285004505328

/-! ## A289738.P3000478884391951052

`round(A232355(C(n+1, n))/2)`
-/

namespace A289738.P3000478884391951052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A232355 (Nat.choose (n + 1) n) : ℚ) / 2)

end

end A289738.P3000478884391951052

/-! ## A289738.P5198922325589320074

`round(A232355(2*n-n+1)/2)`
-/

namespace A289738.P5198922325589320074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A232355 ((2 * n : ℤ) - (n : ℤ) + 1).toNat : ℚ) / 2)

end

end A289738.P5198922325589320074

/-! ## A289738.P2896333269154596831

`(A232355(2*n+1-n)+1)/2`
-/

namespace A289738.P2896333269154596831
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A232355 ((2 * n : ℤ) + (1 - (n : ℤ))).toNat + 1 : ℚ) / 2

end

end A289738.P2896333269154596831

/-! ## A289738.P12414421690239132978

`record[(A232355(A126759(n))+1)/2]`
-/

namespace A289738.P12414421690239132978
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A232355 (A126759 n).toNat + 1 : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A289738.P12414421690239132978

/-! ## A289738.P1054155188467278845

`round(A000079(n)/A000079(n+1)*A232355(n+1))`
-/

namespace A289738.P1054155188467278845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A000079 n : ℚ) / (A000079 (n + 1) : ℚ) * (A232355 (n + 1) : ℚ))

end

end A289738.P1054155188467278845

/-!
# A289739: Expansion of solution to dy/dx = y + exp(y).

The programs for A289739, there is no canonical definition to state claims against.
-/

/-! ## A289739.P9936211958013646585

`A266329(n-1)+a(n-1)` with `a(0)=0, a(1)=1`
-/

namespace A289739.P9936211958013646585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A266329 (n - 1) + a (n - 1)

end

end A289739.P9936211958013646585

/-! ## A289739.P11916416002488330383

`∑[A266329(n)]-A266329(n)`
-/

namespace A289739.P11916416002488330383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266329 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A266329 n

end

end A289739.P11916416002488330383

/-! ## A289739.P16645825761711336503

`A034973(A088716(n)+2*n)`
-/

namespace A289739.P16645825761711336503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034973 (A088716 n + (2 * n : ℤ)).toNat

end

end A289739.P16645825761711336503

/-!
# A289740: Prime powers P for which the number of modulo P residues among sums of three sixth powers is less than P.

The programs for A289740, there is no canonical definition to state claims against.
-/

/-! ## A289740.P7742790357671705672

`∪[A289631(A032555(n+2)), A289760(n+2)]`
-/

namespace A289740.P7742790357671705672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289631 (A032555 (n + 2)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289760 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A289740.P7742790357671705672

/-! ## A289740.P8030739019084346472

`∪[A289631(A032557(n+2)), A289760(n+2)]`
-/

namespace A289740.P8030739019084346472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289631 (A032557 (n + 2)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289760 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A289740.P8030739019084346472

/-! ## A289740.P7515922645576028962

`∪[A289631(A032563(n+2)), A289760(n+2)]`
-/

namespace A289740.P7515922645576028962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289631 (A032563 (n + 2)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289760 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A289740.P7515922645576028962

/-! ## A289740.P11925290952218828190

`∪[A289631(A069747(n+2)), A289760(n+2)]`
-/

namespace A289740.P11925290952218828190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289631 (A069747 (n + 2)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289760 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A289740.P11925290952218828190

/-! ## A289740.P4782863490729356775

`∪[A289631(A070938(n+2)), A289760(n+2)]`
-/

namespace A289740.P4782863490729356775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289631 (A070938 (n + 2)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289760 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A289740.P4782863490729356775

/-!
# A289741: a(n) = Kronecker symbol (-20/n).

The programs for A289741, there is no canonical definition to state claims against.
-/

/-! ## A289741.P10662754367866448877

`A080891(n)*A101455(n)`
-/

namespace A289741.P10662754367866448877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080891 n * A101455 n

end

end A289741.P10662754367866448877

/-!
# A289744: Coefficients in expansion of q*E'_8 where E_8 is the Eisenstein Series (A008410).

The programs for A289744, the canonical program `A289744.P18086928830802225500` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A289744 has offset 1).

The definition of A289744 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A013955, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A289744.P18086928830802225500

`480*(n+1)*A013955(n+1)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A289744

/-- `480*(n+1)*A013955(n+1)` -/
def P18086928830802225500.Spec : Prop :=
  ∀ n, P18086928830802225500.a n = A289744 (n + 1)

theorem P18086928830802225500.correct : P18086928830802225500.Spec := by
  intro n
  simp only [A289744, Nat.add_sub_cancel]

end A289744

/-! ## A289744.P5061057855589503523

`480*A282060(n+1)`
-/

namespace A289744.P5061057855589503523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  480 * A282060 (n + 1)

end

end A289744.P5061057855589503523

namespace A289744

/-- `480*A282060(n+1)` -/
def P5061057855589503523.Spec : Prop :=
  ∀ n, P5061057855589503523.a n = A289744 (n + 1)

end A289744

/-! ## A289744.P932216868554367995

`(n+1)*A008410(n+1)`
-/

namespace A289744.P932216868554367995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A008410 (n + 1)

end

end A289744.P932216868554367995

namespace A289744

/-- `(n+1)*A008410(n+1)` -/
def P932216868554367995.Spec : Prop :=
  ∀ n, P932216868554367995.a n = A289744 (n + 1)

end A289744

/-! ## A289744.P3998478803532378485

`A008410(A008619(2*n))*A008619(2*n)`
-/

namespace A289744.P3998478803532378485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008410 (A008619 (2 * n)).toNat * A008619 (2 * n)

end

end A289744.P3998478803532378485

namespace A289744

/-- `A008410(A008619(2*n))*A008619(2*n)` -/
def P3998478803532378485.Spec : Prop :=
  ∀ n, P3998478803532378485.a n = A289744 (n + 1)

end A289744

/-! ## A289744.P9679760539384071288

`A008410(n-log2(1/2))*A158416(2*n)`
-/

namespace A289744.P9679760539384071288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008410 (SequenceMachineLib.roundAway ((n : ℝ) - Real.logb 2 ((1 : ℚ) / 2 : ℝ))).toNat * A158416 (2 * n)

end

end A289744.P9679760539384071288

namespace A289744

/-- `A008410(n-log2(1/2))*A158416(2*n)` -/
def P9679760539384071288.Spec : Prop :=
  ∀ n, P9679760539384071288.a n = A289744 (n + 1)

end A289744

/-! ## A289744.P101716285253951338

`A008410(A029579(2*n))*A029579(2*n)`
-/

namespace A289744.P101716285253951338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008410 (A029579 (2 * n)).toNat * A029579 (2 * n)

end

end A289744.P101716285253951338

namespace A289744

/-- `A008410(A029579(2*n))*A029579(2*n)` -/
def P101716285253951338.Spec : Prop :=
  ∀ n, P101716285253951338.a n = A289744 (n + 1)

end A289744

/-! ## A289744.P16591455634338547086

`A008410(n+1)/(n+1)^A163805(A016813(n))`
-/

namespace A289744.P16591455634338547086
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008410 (n + 1) : ℚ) / (n + 1 : ℚ) ^ (A163805 (A016813 n).toNat : ℤ)

end

end A289744.P16591455634338547086

namespace A289744

/-- `A008410(n+1)/(n+1)^A163805(A016813(n))` -/
def P16591455634338547086.Spec : Prop :=
  ∀ n, P16591455634338547086.a n = (A289744 (n + 1) : ℚ)

end A289744

/-! ## A289744.P13340941396534563494

`record[A008410(A080465(n))*A080465(n)]`
-/

namespace A289744.P13340941396534563494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008410 (A080465 (n + 10)).toNat * A080465 (n + 10)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A289744.P13340941396534563494

namespace A289744

/-- `record[A008410(A080465(n))*A080465(n)]` -/
def P13340941396534563494.Spec : Prop :=
  ∀ n, P13340941396534563494.a n = A289744 (n + 1)

end A289744

/-!
# A289745: Coefficients in expansion of -q*E'_10 where E_10 is the Eisenstein Series (A013974).

The programs for A289745, the canonical program `A289745.P16386667740352253797` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A289745 has offset 1).

The definition of A289745 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A013957, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A289745.P16386667740352253797

`264*(n+1)*A013957(n+1)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A289745

/-- `264*(n+1)*A013957(n+1)` -/
def P16386667740352253797.Spec : Prop :=
  ∀ n, P16386667740352253797.a n = A289745 (n + 1)

theorem P16386667740352253797.correct : P16386667740352253797.Spec := by
  intro n
  simp only [A289745, Nat.add_sub_cancel]

end A289745

/-! ## A289745.P5470337908902072372

`264*A282254(n+1)`
-/

namespace A289745.P5470337908902072372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  264 * A282254 (n + 1)

end

end A289745.P5470337908902072372

namespace A289745

/-- `264*A282254(n+1)` -/
def P5470337908902072372.Spec : Prop :=
  ∀ n, P5470337908902072372.a n = A289745 (n + 1)

end A289745

/-! ## A289745.P5106711338813371389

`abs((n+1)*A013974(n+1))`
-/

namespace A289745.P5106711338813371389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n + 1 : ℤ) * A013974 (n + 1)|

end

end A289745.P5106711338813371389

namespace A289745

/-- `abs((n+1)*A013974(n+1))` -/
def P5106711338813371389.Spec : Prop :=
  ∀ n, P5106711338813371389.a n = A289745 (n + 1)

end A289745

/-! ## A289745.P15701160753414450023

`-(n+1)*A013974((n+1)%A029828(n))`
-/

namespace A289745.P15701160753414450023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -((n + 1 : ℤ) * A013974 (Int.tmod (n + 1 : ℤ) (A029828 n)).toNat)

end

end A289745.P15701160753414450023

namespace A289745

/-- `-(n+1)*A013974((n+1)%A029828(n))` -/
def P15701160753414450023.Spec : Prop :=
  ∀ n, P15701160753414450023.a n = A289745 (n + 1)

end A289745

/-! ## A289745.P16217412815701071916

`-(n+1)*A013974(n+1)%A029829(n+1)`
-/

namespace A289745.P16217412815701071916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -((n + 1 : ℤ) * Int.tmod (A013974 (n + 1)) (A029829 (n + 1)))

end

end A289745.P16217412815701071916

namespace A289745

/-- `-(n+1)*A013974(n+1)%A029829(n+1)` -/
def P16217412815701071916.Spec : Prop :=
  ∀ n, P16217412815701071916.a n = A289745 (n + 1)

end A289745

/-! ## A289745.P9762463529394945305

`(n+1)*-A013974(n+1)%A029830(n+1)`
-/

namespace A289745.P9762463529394945305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * Int.tmod (-A013974 (n + 1)) (A029830 (n + 1))

end

end A289745.P9762463529394945305

namespace A289745

/-- `(n+1)*-A013974(n+1)%A029830(n+1)` -/
def P9762463529394945305.Spec : Prop :=
  ∀ n, P9762463529394945305.a n = A289745 (n + 1)

end A289745

/-! ## A289745.P17648886349602510891

`A013974(n+1)/A006352(n+1)*A076835(n+1)`
-/

namespace A289745.P17648886349602510891
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013974 (n + 1) : ℚ) / (A006352 (n + 1) : ℚ) * (A076835 (n + 1) : ℚ)

end

end A289745.P17648886349602510891

namespace A289745

/-- `A013974(n+1)/A006352(n+1)*A076835(n+1)` -/
def P17648886349602510891.Spec : Prop :=
  ∀ n, P17648886349602510891.a n = (A289745 (n + 1) : ℚ)

end A289745

/-! ## A289745.P17622976753924515766

`A013974(n+1)/A058550(n+1)*A289746(n+1)`
-/

namespace A289745.P17622976753924515766
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013974 (n + 1) : ℚ) / (A058550 (n + 1) : ℚ) * (A289746 (n + 1) : ℚ)

end

end A289745.P17622976753924515766

namespace A289745

/-- `A013974(n+1)/A058550(n+1)*A289746(n+1)` -/
def P17622976753924515766.Spec : Prop :=
  ∀ n, P17622976753924515766.a n = (A289745 (n + 1) : ℚ)

end A289745

/-! ## A289745.P13851479904885682592

`(n-A109613(2*n))*A013974(n+1)`
-/

namespace A289745.P13851479904885682592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - A109613 (2 * n)) * A013974 (n + 1)

end

end A289745.P13851479904885682592

namespace A289745

/-- `(n-A109613(2*n))*A013974(n+1)` -/
def P13851479904885682592.Spec : Prop :=
  ∀ n, P13851479904885682592.a n = A289745 (n + 1)

end A289745

/-!
# A289746: Coefficients in expansion of -q*E'_14 where E_14 is the Eisenstein Series (A058550).

The programs for A289746, the canonical program `A289746.P10294771378129521522` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A289746 has offset 1).

The definition of A289746 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A282597, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A289746.P10294771378129521522

`24*A282597(n+1)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A289746

/-- `24*A282597(n+1)` -/
def P10294771378129521522.Spec : Prop :=
  ∀ n, P10294771378129521522.a n = A289746 (n + 1)

theorem P10294771378129521522.correct : P10294771378129521522.Spec := by
  intro n
  simp only [A289746, Nat.add_sub_cancel]

end A289746

/-! ## A289746.P9676220435769300770

`24*(n+1)*A013961(n+1)`
-/

namespace A289746.P9676220435769300770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  24 * ((n + 1 : ℤ) * A013961 (n + 1))

end

end A289746.P9676220435769300770

namespace A289746

/-- `24*(n+1)*A013961(n+1)` -/
def P9676220435769300770.Spec : Prop :=
  ∀ n, P9676220435769300770.a n = A289746 (n + 1)

end A289746

/-! ## A289746.P4700240915529787675

`-(n+1)*A058550(n+1)`
-/

namespace A289746.P4700240915529787675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -((n + 1 : ℤ) * A058550 (n + 1))

end

end A289746.P4700240915529787675

namespace A289746

/-- `-(n+1)*A058550(n+1)` -/
def P4700240915529787675.Spec : Prop :=
  ∀ n, P4700240915529787675.a n = A289746 (n + 1)

end A289746

/-! ## A289746.P10112475923215928851

`A058550(n+1)/A006352(n+1)*A076835(n+1)`
-/

namespace A289746.P10112475923215928851
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A058550 (n + 1) : ℚ) / (A006352 (n + 1) : ℚ) * (A076835 (n + 1) : ℚ)

end

end A289746.P10112475923215928851

namespace A289746

/-- `A058550(n+1)/A006352(n+1)*A076835(n+1)` -/
def P10112475923215928851.Spec : Prop :=
  ∀ n, P10112475923215928851.a n = (A289746 (n + 1) : ℚ)

end A289746

/-! ## A289746.P9927442441932526096

`A058550(n+1)/A013974(n+1)*A289745(n+1)`
-/

namespace A289746.P9927442441932526096
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A058550 (n + 1) : ℚ) / (A013974 (n + 1) : ℚ) * (A289745 (n + 1) : ℚ)

end

end A289746.P9927442441932526096

namespace A289746

/-- `A058550(n+1)/A013974(n+1)*A289745(n+1)` -/
def P9927442441932526096.Spec : Prop :=
  ∀ n, P9927442441932526096.a n = (A289746 (n + 1) : ℚ)

end A289746

/-!
# A289748: Thue-Morse constant converted to base -2.

The programs for A289748, the canonical program `A289748.P17496550279472659491` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A289748 has offset 1).

The definition of A289748 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A289748.P10581356307658276224

`char[comp[2*(xor(n, 2*n)+1)]]`
-/

namespace A289748.P10581356307658276224
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (Nat.xor n (2 * n) + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A289748.P10581356307658276224

namespace A289748

/-- `char[comp[2*(xor(n, 2*n)+1)]]` -/
def P10581356307658276224.Spec : Prop :=
  ∀ n, (P10581356307658276224.a n : ℤ) = A289748 (n + 1)

end A289748

/-! ## A289748.P10666529300104167958

`char[or(n, char[xor(n, 2*n)+2])]`
-/

namespace A289748.P10666529300104167958
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n) + 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor n (if ∃ j, f2 j = n then 1 else 0)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A289748.P10666529300104167958

namespace A289748

/-- `char[or(n, char[xor(n, 2*n)+2])]` -/
def P10666529300104167958.Spec : Prop :=
  ∀ n, (P10666529300104167958.a n : ℤ) = A289748 (n + 1)

end A289748

/-! ## A289748.P6028603934201486137

`1-char[2*(xor(n, 2*n)+1)]`
-/

namespace A289748.P6028603934201486137
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (Nat.xor n (2 * n) + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A289748.P6028603934201486137

namespace A289748

/-- `1-char[2*(xor(n, 2*n)+1)]` -/
def P6028603934201486137.Spec : Prop :=
  ∀ n, P6028603934201486137.a n = A289748 (n + 1)

end A289748

/-! ## A289748.P5042882802223346717

`char[or(floor(atan(n)+n), char[xor(n, Δ[n²])])]`
-/

namespace A289748.P5042882802223346717
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) ((f3 (n + 1) : ℤ) - (f3 n : ℤ))

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ⌊Real.arctan (n : ℝ) + (n : ℝ)⌋ ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A289748.P5042882802223346717

namespace A289748

/-- `char[or(floor(atan(n)+n), char[xor(n, Δ[n²])])]` -/
def P5042882802223346717.Spec : Prop :=
  ∀ n, (P5042882802223346717.a n : ℤ) = A289748 (n + 1)

end A289748

/-! ## A289748.P17496550279472659491

`(a(n-2)+val(n-2, 2))%2` with `a(0)=1, a(1)=1, a(2)=0`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A289748

/-- `(a(n-2)+val(n-2, 2))%2` -/
def P17496550279472659491.Spec : Prop :=
  ∀ n, (P17496550279472659491.a n : ℤ) = A289748 (n + 1)

theorem P17496550279472659491.correct : P17496550279472659491.Spec := by
  intro n
  simp only [A289748, Nat.add_sub_cancel]

end A289748

/-! ## A289748.P17215480547116113476

`and(1, gcd(n, A341292(n)))`
-/

namespace A289748.P17215480547116113476
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (Int.gcd (n : ℤ) (A341292 n))

end

end A289748.P17215480547116113476

namespace A289748

/-- `and(1, gcd(n, A341292(n)))` -/
def P17215480547116113476.Spec : Prop :=
  ∀ n, (P17215480547116113476.a n : ℤ) = A289748 (n + 1)

end A289748

/-! ## A289748.P4060558830227050924

`char[(n+1)*A254377(n)]`
-/

namespace A289748.P4060558830227050924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A254377 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A289748.P4060558830227050924

namespace A289748

/-- `char[(n+1)*A254377(n)]` -/
def P4060558830227050924.Spec : Prop :=
  ∀ n, (P4060558830227050924.a n : ℤ) = A289748 (n + 1)

end A289748

/-! ## A289748.P482706606483799458

`A254377((n-1)%(n+1))`
-/

namespace A289748.P482706606483799458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254377 (Int.tmod ((n : ℤ) - 1) (n + 1 : ℤ)).toNat

end

end A289748.P482706606483799458

namespace A289748

/-- `A254377((n-1)%(n+1))` -/
def P482706606483799458.Spec : Prop :=
  ∀ n, P482706606483799458.a n = A289748 (n + 1)

end A289748

/-! ## A289748.P16666052855579478885

`char[comp[A092246(n+1)+1]]`
-/

namespace A289748.P16666052855579478885
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092246 (n + 1) + 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A289748.P16666052855579478885

namespace A289748

/-- `char[comp[A092246(n+1)+1]]` -/
def P16666052855579478885.Spec : Prop :=
  ∀ n, (P16666052855579478885.a n : ℤ) = A289748 (n + 1)

end A289748

/-! ## A289748.P492124156598709608

`char[comp[2*(A048724(n)+1)]]`
-/

namespace A289748.P492124156598709608
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A048724 n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A289748.P492124156598709608

namespace A289748

/-- `char[comp[2*(A048724(n)+1)]]` -/
def P492124156598709608.Spec : Prop :=
  ∀ n, (P492124156598709608.a n : ℤ) = A289748 (n + 1)

end A289748

/-! ## A289748.P14512482618312722822

`char[char[A230709(n+2)]+n]`
-/

namespace A289748.P14512482618312722822
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230709 (n + 2)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = (n : ℤ) then 1 else 0) + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A289748.P14512482618312722822

namespace A289748

/-- `char[char[A230709(n+2)]+n]` -/
def P14512482618312722822.Spec : Prop :=
  ∀ n, (P14512482618312722822.a n : ℤ) = A289748 (n + 1)

end A289748

/-! ## A289748.P11010959512019118491

`1-char[A114389(n+1)+1]`
-/

namespace A289748.P11010959512019118491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114389 (n + 1) + 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A289748.P11010959512019118491

namespace A289748

/-- `1-char[A114389(n+1)+1]` -/
def P11010959512019118491.Spec : Prop :=
  ∀ n, P11010959512019118491.a n = A289748 (n + 1)

end A289748

/-! ## A289748.P2091232382111434948

`1-char[2*A026147(n+1)]`
-/

namespace A289748.P2091232382111434948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A026147 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A289748.P2091232382111434948

namespace A289748

/-- `1-char[2*A026147(n+1)]` -/
def P2091232382111434948.Spec : Prop :=
  ∀ n, P2091232382111434948.a n = A289748 (n + 1)

end A289748

/-! ## A289748.P17885398040139276134

`char[(n+1)*(1-A228495(n))]`
-/

namespace A289748.P17885398040139276134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (1 - A228495 n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A289748.P17885398040139276134

namespace A289748

/-- `char[(n+1)*(1-A228495(n))]` -/
def P17885398040139276134.Spec : Prop :=
  ∀ n, (P17885398040139276134.a n : ℤ) = A289748 (n + 1)

end A289748

/-! ## A289748.P11810183534681156446

`A254651(record[lcm(3, n)-n]-n)`
-/

namespace A289748.P11810183534681156446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 3 n : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254651 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (n : ℤ)).toNat

end

end A289748.P11810183534681156446

namespace A289748

/-- `A254651(record[lcm(3, n)-n]-n)` -/
def P11810183534681156446.Spec : Prop :=
  ∀ n, P11810183534681156446.a n = A289748 (n + 1)

end A289748

/-! ## A289748.P8597480526229488021

`A254377(C(2, n+2)+n-1)`
-/

namespace A289748.P8597480526229488021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254377 (Nat.choose 2 (n + 2) + n - 1)

end

end A289748.P8597480526229488021

namespace A289748

/-- `A254377(C(2, n+2)+n-1)` -/
def P8597480526229488021.Spec : Prop :=
  ∀ n, P8597480526229488021.a n = A289748 (n + 1)

end A289748

/-! ## A289748.P11919126012731795536

`A254377((n-1)*a(n-1))` with `a(0)=1`
-/

namespace A289748.P11919126012731795536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A254377 (((n : ℤ) - 1) * a (n - 1)).toNat

end

end A289748.P11919126012731795536

namespace A289748

/-- `A254377((n-1)*a(n-1))` -/
def P11919126012731795536.Spec : Prop :=
  ∀ n, P11919126012731795536.a n = A289748 (n + 1)

end A289748

/-! ## A289748.P15782788385070870370

`A254377(n-a(a(n-1)))` with `a(0)=1, a(1)=1`
-/

namespace A289748.P15782788385070870370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A254377 ((n : ℤ) - a (a (n - 1)).toNat).toNat

end

end A289748.P15782788385070870370

namespace A289748

/-- `A254377(n-a(a(n-1)))` -/
def P15782788385070870370.Spec : Prop :=
  ∀ n, P15782788385070870370.a n = A289748 (n + 1)

end A289748

/-! ## A289748.P4229796532668561054

`char[comp[A283975(3*(n+1))+1]]`
-/

namespace A289748.P4229796532668561054
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283975 (3 * (n + 1)) + 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A289748.P4229796532668561054

namespace A289748

/-- `char[comp[A283975(3*(n+1))+1]]` -/
def P4229796532668561054.Spec : Prop :=
  ∀ n, (P4229796532668561054.a n : ℤ) = A289748 (n + 1)

end A289748

/-! ## A289748.P14080081427495767660

`A254377(A014681(n))`
-/

namespace A289748.P14080081427495767660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254377 (A014681 n).toNat

end

end A289748.P14080081427495767660

namespace A289748

/-- `A254377(A014681(n))` -/
def P14080081427495767660.Spec : Prop :=
  ∀ n, P14080081427495767660.a n = A289748 (n + 1)

end A289748

/-!
# A289749: Number of ways not ending in 011 to write n in base phi.

The programs for A289749, there is no canonical definition to state claims against.
-/

/-! ## A289749.P4923998793327308626

`A294204(A004925(n))`
-/

namespace A289749.P4923998793327308626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294204 (A004925 n).toNat

end

end A289749.P4923998793327308626

/-! ## A289749.P15214623222064090236

`A000119(A028310(89*n)-1)`
-/

namespace A289749.P15214623222064090236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000119 (A028310 (89 * n) - 1).toNat

end

end A289749.P15214623222064090236

/-! ## A289749.P8565839536690890345

`A000119(A008458(15*n)-(n+1))`
-/

namespace A289749.P8565839536690890345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000119 (A008458 (15 * n) - (n + 1 : ℤ)).toNat

end

end A289749.P8565839536690890345

/-! ## A289749.P17593509441895929707

`A000119(A164355(A174312(n))-1)`
-/

namespace A289749.P17593509441895929707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000119 (A164355 (A174312 n).toNat - 1).toNat

end

end A289749.P17593509441895929707

/-! ## A289749.P18196914925170517634

`A294204(A004966(n))`
-/

namespace A289749.P18196914925170517634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294204 (A004966 n).toNat

end

end A289749.P18196914925170517634

/-!
# A289750: a(1) = 3 and a(n+1) - a(n) = 2*p where p is the least possible prime.

The programs for A289750, there is no canonical definition to state claims against.
-/

/-! ## A289750.P18246237151131339425

`A137734(A040087(comp[C(n, 2)])²)`
-/

namespace A289750.P18246237151131339425
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137734 (A040087 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) ^ 2).toNat

end

end A289750.P18246237151131339425

/-! ## A289750.P10024749114971567973

`A040087(comp[∑[n]]%A076623(2*n+3))`
-/

namespace A289750.P10024749114971567973
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040087 (Int.tmod (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) (A076623 (2 * n + 3))).toNat

end

end A289750.P10024749114971567973

/-! ## A289750.P4641007719070951849

`∩[A040087(A014132(n+1)), A130734(n+1)]`
-/

namespace A289750.P4641007719070951849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040087 (A014132 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130734 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A289750.P4641007719070951849

/-! ## A289750.P7526170338346551019

`p?[2*n+1-p?[A352513(n)]]`
-/

namespace A289750.P7526170338346551019
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352513 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) - f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A289750.P7526170338346551019

/-! ## A289750.P16336370306656640610

`A118917(A089981(n+1))+A003627(n+1)`
-/

namespace A289750.P16336370306656640610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118917 (A089981 (n + 1)).toNat + A003627 (n + 1)

end

end A289750.P16336370306656640610

/-!
# A289751: Numbers k such that (4*10^k + 137)/3 is prime.

The programs for A289751, there is no canonical definition to state claims against.
-/

/-! ## A289751.P12940797708153032822

`eq[1, A057740(A055265(n+1))]`
-/

namespace A289751.P12940797708153032822
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057740 (A055265 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A289751.P12940797708153032822

/-! ## A289751.P4507861415807171717

`eq[A085924(n), A166013(n+1)]`
-/

namespace A289751.P4507861415807171717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085924 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166013 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A289751.P4507861415807171717

/-! ## A289751.P1688765685358884758

`eq[A072774(n+1), A166013(n+1)]`
-/

namespace A289751.P1688765685358884758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072774 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166013 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A289751.P1688765685358884758

/-! ## A289751.P816752166486895595

`eq[A166013(n+1), A304449(n+1)]`
-/

namespace A289751.P816752166486895595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166013 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304449 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A289751.P816752166486895595

/-!
# A289754: Primes of the form k!10 - 1, where k!10 is the decuple factorial number (A288327).

The programs for A289754, there is no canonical definition to state claims against.
-/

/-! ## A289754.P8162345661997361705

`A288327(A204658(n+1))-1`
-/

namespace A289754.P8162345661997361705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288327 (A204658 (n + 1)).toNat - 1

end

end A289754.P8162345661997361705

/-! ## A289754.P12447766778461808150

`A117141(n+1)%A288327(A204658(n+1))`
-/

namespace A289754.P12447766778461808150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A117141 (n + 1)) (A288327 (A204658 (n + 1)).toNat)

end

end A289754.P12447766778461808150

/-! ## A289754.P4029865607704707770

`p?[A288327(n)-1]`
-/

namespace A289754.P4029865607704707770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288327 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A289754.P4029865607704707770

/-!
# A289755: Primes of the form k!9-1, where k!9 is the nonuple factorial number (A114806).

The programs for A289755, there is no canonical definition to state claims against.
-/

/-! ## A289755.P1810040710220589595

`A114806(A204659(n+1))-1`
-/

namespace A289755.P1810040710220589595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114806 (A204659 (n + 1)).toNat - 1

end

end A289755.P1810040710220589595

/-! ## A289755.P17870076017310966390

`p?[A114806(n)-1]`
-/

namespace A289755.P17870076017310966390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114806 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A289755.P17870076017310966390

/-! ## A289755.P14353474848096119504

`p?[Δ[A114806(A057979(n))]]`
-/

namespace A289755.P14353474848096119504
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114806 (A057979 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A289755.P14353474848096119504

/-! ## A289755.P17821948693903826115

`p?[Δ[A114806(A142150(n))]]`
-/

namespace A289755.P17821948693903826115
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114806 (A142150 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A289755.P17821948693903826115

/-! ## A289755.P7011652590882032962

`p?[A321800(n)+A114806(n)]`
-/

namespace A289755.P7011652590882032962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321800 n + A114806 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A289755.P7011652590882032962

/-!
# A289756: Primes of the form k!8-1, where k!8 is the octuple factorial number (A114800).

The programs for A289756, there is no canonical definition to state claims against.
-/

/-! ## A289756.P7179783192864990711

`A114800(A204662(n+1))-1`
-/

namespace A289756.P7179783192864990711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114800 (A204662 (n + 1)).toNat - 1

end

end A289756.P7179783192864990711

/-! ## A289756.P5645178125745189221

`p?[A114800(n)-1]`
-/

namespace A289756.P5645178125745189221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114800 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A289756.P5645178125745189221

/-! ## A289756.P16743159430654303529

`p?[Δ[A114800(A057979(n))]]`
-/

namespace A289756.P16743159430654303529
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114800 (A057979 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A289756.P16743159430654303529

/-! ## A289756.P2267379866976366921

`p?[Δ[A114800(A142150(n))]]`
-/

namespace A289756.P2267379866976366921
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114800 (A142150 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A289756.P2267379866976366921

/-! ## A289756.P17764758293096032112

`p?[Δ[A114800(A158416(n))]]`
-/

namespace A289756.P17764758293096032112
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114800 (A158416 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A289756.P17764758293096032112

/-!
# A289757: Primes of the form k!7-1, where k!7 is the septuple factorial number (A114799).

The programs for A289757, there is no canonical definition to state claims against.
-/

/-! ## A289757.P10469394223500591662

`A114799(A156167(n+1))-1`
-/

namespace A289757.P10469394223500591662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114799 (A156167 (n + 1)).toNat - 1

end

end A289757.P10469394223500591662

/-! ## A289757.P4212451289212586236

`p?[A114799(n)-1]`
-/

namespace A289757.P4212451289212586236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114799 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A289757.P4212451289212586236

/-! ## A289757.P10169232969352210385

`A360591(A001104(n+1))`
-/

namespace A289757.P10169232969352210385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360591 (A001104 (n + 1)).toNat

end

end A289757.P10169232969352210385

/-! ## A289757.P9298771943660609211

`A360591(A002998(n+1))`
-/

namespace A289757.P9298771943660609211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360591 (A002998 (n + 1)).toNat

end

end A289757.P9298771943660609211

/-! ## A289757.P4349836656066073067

`A360591(A028431(n+1))`
-/

namespace A289757.P4349836656066073067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360591 (A028431 (n + 1)).toNat

end

end A289757.P4349836656066073067

/-!
# A289758: Primes of the form k!5-1, where k!5 is the quintuple factorial number (A085157).

The programs for A289758, there is no canonical definition to state claims against.
-/

/-! ## A289758.P285512934644555054

`A085157(A085149(n+1))-1`
-/

namespace A289758.P285512934644555054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085157 (A085149 (n + 1)).toNat - 1

end

end A289758.P285512934644555054

/-! ## A289758.P9882930984141582523

`p?[A085157(n)-1]`
-/

namespace A289758.P9882930984141582523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085157 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A289758.P9882930984141582523

/-! ## A289758.P2334008379802049169

`p?[Δ[A114805(n)]-1]`
-/

namespace A289758.P2334008379802049169
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114805 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A289758.P2334008379802049169

/-! ## A289758.P7496392194137968869

`p?[Δ[A085157(∑[n+1]%(n+2))]]`
-/

namespace A289758.P7496392194137968869
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085157 ((∑ j ∈ Finset.range (n + 1), f3 j) % (n + 2))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A289758.P7496392194137968869

/-!
# A289759: Primes of the form k!8-2, where k!8 is the octuple factorial number (A114800).

The programs for A289759, there is no canonical definition to state claims against.
-/

/-! ## A289759.P10284908940163708027

`A114800(A204664(n+1))-2`
-/

namespace A289759.P10284908940163708027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114800 (A204664 (n + 1)).toNat - 2

end

end A289759.P10284908940163708027

/-! ## A289759.P17281246658087436526

`A280560(2*n+1)+A114800(A204664(n+1))`
-/

namespace A289759.P17281246658087436526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280560 (2 * n + 1) + A114800 (A204664 (n + 1)).toNat

end

end A289759.P17281246658087436526

/-! ## A289759.P12983790925250856360

`p?[A114800(n)-2]`
-/

namespace A289759.P12983790925250856360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114800 n - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A289759.P12983790925250856360

/-! ## A289759.P11674778852666926516

`p?[A280560(n)+A114800(n)]`
-/

namespace A289759.P11674778852666926516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280560 n + A114800 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A289759.P11674778852666926516

/-! ## A289759.P1288377749728562074

`p?[Δ[A114800(A057979(n)+1)]]`
-/

namespace A289759.P1288377749728562074
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114800 (A057979 n + 1).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A289759.P1288377749728562074

/-!
# A289760: Prime powers P for which the number of modulo P residues among sums of four sixth powers is less than P.

The programs for A289760, there is no canonical definition to state claims against.
-/

/-! ## A289760.P16107841038358282841

`∩[A080681(A074402(n+1)), A289740(n+1)]`
-/

namespace A289760.P16107841038358282841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080681 (A074402 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289740 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A289760.P16107841038358282841

/-! ## A289760.P5580704632647769752

`∩[A074402(n+1), A289740(n+1)]`
-/

namespace A289760.P5580704632647769752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074402 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289740 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A289760.P5580704632647769752

/-! ## A289760.P9898733984972297357

`∩[A080197(n+1), A289740(n+1)]`
-/

namespace A289760.P9898733984972297357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080197 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289740 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A289760.P9898733984972297357

/-! ## A289760.P10847703085106465207

`∩[A080681(A000394(n+1)), A289740(n+1)]`
-/

namespace A289760.P10847703085106465207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080681 (A000394 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289740 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A289760.P10847703085106465207

/-! ## A289760.P2798483537181885456

`∩[A289740(n+1), A000394(n)]`
-/

namespace A289760.P2798483537181885456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289740 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000394 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A289760.P2798483537181885456

/-!
# A289761: Maximum length of a perfect Wichmann ruler with n segments.

The programs for A289761, the canonical program `A289761.P681654511000457054` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A289761 has offset 2).

The definition of A289761 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A289761.P16882941865914037431

`n+2+((n+2)²-((n+2)%6-3)²)/3`
-/

namespace A289761.P16882941865914037431
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) + (((n + 2) ^ 2 : ℤ) - ((((n + 2) % 6 : ℕ) : ℤ) - 3) ^ 2 : ℚ) / 3

end

end A289761.P16882941865914037431

namespace A289761

/-- `n+2+((n+2)²-((n+2)%6-3)²)/3` -/
def P16882941865914037431.Spec : Prop :=
  ∀ n, P16882941865914037431.a n = (A289761 (n + 2) : ℚ)

end A289761

/-! ## A289761.P681654511000457054

`2*a(n-1)-a(n-2)+a(n-6)-2*a(n-7)+a(n-8)` with `a(0)=3, a(1)=6, a(2)=9, a(3)=12, a(4)=15, a(5)=22, a(6)=29, a(7)=36`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A289761

/-- `2*a(n-1)-a(n-2)+a(n-6)-2*a(n-7)+a(n-8)` -/
def P681654511000457054.Spec : Prop :=
  ∀ n, P681654511000457054.a n = A289761 (n + 2)

theorem P681654511000457054.correct : P681654511000457054.Spec := by
  intro n
  simp only [A289761, Nat.add_sub_cancel]

end A289761

/-! ## A289761.P7600308580093950313

`∑[or(3, ∑[n²%3])]`
-/

namespace A289761.P7600308580093950313
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 % 3

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 3 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A289761.P7600308580093950313

namespace A289761

/-- `∑[or(3, ∑[n²%3])]` -/
def P7600308580093950313.Spec : Prop :=
  ∀ n, (P7600308580093950313.a n : ℤ) = A289761 (n + 2)

end A289761

/-! ## A289761.P14195432992366802363

`∑[or(3, ceil(2*n/3))]`
-/

namespace A289761.P14195432992366802363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 3 ⌈2 * ((n : ℚ) / 3)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A289761.P14195432992366802363

namespace A289761

/-- `∑[or(3, ceil(2*n/3))]` -/
def P14195432992366802363.Spec : Prop :=
  ∀ n, P14195432992366802363.a n = A289761 (n + 2)

end A289761

/-! ## A289761.P2780233233003343924

`∑[4*floor((n+1)/6)+3]`
-/

namespace A289761.P2780233233003343924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * ⌊(n + 1 : ℚ) / 6⌋ + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A289761.P2780233233003343924

namespace A289761

/-- `∑[4*floor((n+1)/6)+3]` -/
def P2780233233003343924.Spec : Prop :=
  ∀ n, P2780233233003343924.a n = A289761 (n + 2)

end A289761

/-! ## A289761.P12819908183380732699

`A289873(n+2)+2+n`
-/

namespace A289761.P12819908183380732699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289873 (n + 2) + 2 + (n : ℤ)

end

end A289761.P12819908183380732699

namespace A289761

/-- `A289873(n+2)+2+n` -/
def P12819908183380732699.Spec : Prop :=
  ∀ n, P12819908183380732699.a n = A289761 (n + 2)

end A289761

/-! ## A289761.P11580520988040003784

`∑[2*A109613(A002264(n+1))]+n+1`
-/

namespace A289761.P11580520988040003784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A109613 (A002264 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n + 1 : ℤ)

end

end A289761.P11580520988040003784

namespace A289761

/-- `∑[2*A109613(A002264(n+1))]+n+1` -/
def P11580520988040003784.Spec : Prop :=
  ∀ n, P11580520988040003784.a n = A289761 (n + 2)

end A289761

/-! ## A289761.P2021933169643972981

`∑[A005843(1-A285872(n)+n)]+n+1`
-/

namespace A289761.P2021933169643972981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (1 - A285872 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n + 1 : ℤ)

end

end A289761.P2021933169643972981

namespace A289761

/-- `∑[A005843(1-A285872(n)+n)]+n+1` -/
def P2021933169643972981.Spec : Prop :=
  ∀ n, P2021933169643972981.a n = A289761 (n + 2)

end A289761

/-! ## A289761.P15856041662730945994

`2*A008813(n+1)+n-1`
-/

namespace A289761.P15856041662730945994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008813 (n + 1) + ((n : ℤ) - 1)

end

end A289761.P15856041662730945994

namespace A289761

/-- `2*A008813(n+1)+n-1` -/
def P15856041662730945994.Spec : Prop :=
  ∀ n, P15856041662730945994.a n = A289761 (n + 2)

end A289761

/-!
# A289762: Triangular array T(m,k) = (m+1-k)^2 + k - 1 with m (row) >= 1 and k (column) >= 1, read by rows.

The programs for A289762, the canonical program `A289762.P6859236038393281802` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A289762 has offset 1).

The definition of A289762 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 306 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A289762.P6859236038393281802

`A004739(n+1)+A124258(n+1)-1`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A289762

/-- `A004739(n+1)+A124258(n+1)-1` -/
def P6859236038393281802.Spec : Prop :=
  ∀ n, P6859236038393281802.a n = A289762 (n + 1)

theorem P6859236038393281802.correct : P6859236038393281802.Spec := by
  intro n
  simp only [A289762, Nat.add_sub_cancel]

end A289762

/-! ## A289762.P1573372474592407540

`A004737(n+1)²+A004739(n+1)-1`
-/

namespace A289762.P1573372474592407540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004737 (n + 1) ^ 2 + (A004739 (n + 1) - 1)

end

end A289762.P1573372474592407540

namespace A289762

/-- `A004737(n+1)²+A004739(n+1)-1` -/
def P1573372474592407540.Spec : Prop :=
  ∀ n, P1573372474592407540.a n = A289762 (n + 1)

end A289762

/-! ## A289762.P3353863303185072376

`A259361(n)+A002061(A004737(n+1))`
-/

namespace A289762.P3353863303185072376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259361 n + A002061 (A004737 (n + 1)).toNat

end

end A289762.P3353863303185072376

namespace A289762

/-- `A259361(n)+A002061(A004737(n+1))` -/
def P3353863303185072376.Spec : Prop :=
  ∀ n, P3353863303185072376.a n = A289762 (n + 1)

end A289762

/-! ## A289762.P6577335961090763988

`A004197(A165775(n))+A004737(n+1)²`
-/

namespace A289762.P6577335961090763988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004197 (A165775 n).toNat + A004737 (n + 1) ^ 2

end

end A289762.P6577335961090763988

namespace A289762

/-- `A004197(A165775(n))+A004737(n+1)²` -/
def P6577335961090763988.Spec : Prop :=
  ∀ n, P6577335961090763988.a n = A289762 (n + 1)

end A289762

/-! ## A289762.P17117825528786496308

`A124258(n+1)+A008554(A004739(n+1))`
-/

namespace A289762.P17117825528786496308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124258 (n + 1) + A008554 (A004739 (n + 1)).toNat

end

end A289762.P17117825528786496308

namespace A289762

/-- `A124258(n+1)+A008554(A004739(n+1))` -/
def P17117825528786496308.Spec : Prop :=
  ∀ n, P17117825528786496308.a n = A289762 (n + 1)

end A289762

/-! ## A289762.P13654837581819871732

`A008554(A004739(n+1))+A004737(n+1)²`
-/

namespace A289762.P13654837581819871732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008554 (A004739 (n + 1)).toNat + A004737 (n + 1) ^ 2

end

end A289762.P13654837581819871732

namespace A289762

/-- `A008554(A004739(n+1))+A004737(n+1)²` -/
def P13654837581819871732.Spec : Prop :=
  ∀ n, P13654837581819871732.a n = A289762 (n + 1)

end A289762

/-! ## A289762.P18176656832468868896

`A000194(n+1)+A002378(n)%A053187(n+1)`
-/

namespace A289762.P18176656832468868896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (n + 1) + Int.tmod (A002378 n) (A053187 (n + 1))

end

end A289762.P18176656832468868896

namespace A289762

/-- `A000194(n+1)+A002378(n)%A053187(n+1)` -/
def P18176656832468868896.Spec : Prop :=
  ∀ n, P18176656832468868896.a n = A289762 (n + 1)

end A289762

/-! ## A289762.P16500501006283719842

`A002378(A004737(n+1)-1)+A000196(A078358(n+1))`
-/

namespace A289762.P16500501006283719842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 (A004737 (n + 1) - 1).toNat + A000196 (A078358 (n + 1)).toNat

end

end A289762.P16500501006283719842

namespace A289762

/-- `A002378(A004737(n+1)-1)+A000196(A078358(n+1))` -/
def P16500501006283719842.Spec : Prop :=
  ∀ n, P16500501006283719842.a n = A289762 (n + 1)

end A289762

/-!
# A289763: Binary representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 597", based on the 5-celled von Neumann neighborhood.

The programs for A289763, there is no canonical definition to state claims against.
-/

/-! ## A289763.P6404748447327469460

`A007088(A289765(n))`
-/

namespace A289763.P6404748447327469460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A289765 n).toNat

end

end A289763.P6404748447327469460

/-! ## A289763.P11598383733127434236

`A305989(A289764(n)/A014695(n))`
-/

namespace A289763.P11598383733127434236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305989 (SequenceMachineLib.roundAway ((A289764 n : ℚ) / (A014695 n : ℚ))).toNat

end

end A289763.P11598383733127434236

/-! ## A289763.P1007742430033633821

`A305989(A289764(n)/A184318(n+1))`
-/

namespace A289763.P1007742430033633821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305989 (SequenceMachineLib.roundAway ((A289764 n : ℚ) / (A184318 (n + 1) : ℚ))).toNat

end

end A289763.P1007742430033633821

/-! ## A289763.P5108824340023864231

`A305989((A129362(n)+A000975(n))/A014695(n))`
-/

namespace A289763.P5108824340023864231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305989 (SequenceMachineLib.roundAway ((A129362 n + A000975 n : ℚ) / (A014695 n : ℚ))).toNat

end

end A289763.P5108824340023864231

/-! ## A289763.P1870915588518042675

`A305989((A129362(n)+A000975(n))/A184318(n+1))`
-/

namespace A289763.P1870915588518042675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305989 (SequenceMachineLib.roundAway ((A129362 n + A000975 n : ℚ) / (A184318 (n + 1) : ℚ))).toNat

end

end A289763.P1870915588518042675

/-!
# A289764: Decimal representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 597", based on the 5-celled von Neumann neighborhood.

The programs for A289764, the canonical program `A289764.P5647659139669201899` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A289764 has offset 0).

The definition of A289764 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A289764.P5647659139669201899

`a(n-2)+or(a(n-2), A127904(n+1))` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A289764

/-- `a(n-2)+or(a(n-2), A127904(n+1))` -/
def P5647659139669201899.Spec : Prop :=
  ∀ n, P5647659139669201899.a n = A289764 n

theorem P5647659139669201899.correct : P5647659139669201899.Spec := by
  intro n
  simp only [A289764]

end A289764

/-! ## A289764.P242706048407859997

`A129362(n)+A000975(n)`
-/

namespace A289764.P242706048407859997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129362 n + A000975 n

end

end A289764.P242706048407859997

namespace A289764

/-- `A129362(n)+A000975(n)` -/
def P242706048407859997.Spec : Prop :=
  ∀ n, P242706048407859997.a n = A289764 n

end A289764

/-! ## A289764.P11607218610815538428

`A000225(n+1)-A000975(∑[n%2])`
-/

namespace A289764.P11607218610815538428
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (n + 1) - A000975 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A289764.P11607218610815538428

namespace A289764

/-- `A000225(n+1)-A000975(∑[n%2])` -/
def P11607218610815538428.Spec : Prop :=
  ∀ n, P11607218610815538428.a n = A289764 n

end A289764

/-! ## A289764.P7850023217461943785

`A126646(n)-A000975(A110654(n))`
-/

namespace A289764.P7850023217461943785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126646 n - A000975 (A110654 n).toNat

end

end A289764.P7850023217461943785

namespace A289764

/-- `A126646(n)-A000975(A110654(n))` -/
def P7850023217461943785.Spec : Prop :=
  ∀ n, P7850023217461943785.a n = A289764 n

end A289764

/-! ## A289764.P1750802087235001976

`A126646(n)-A000975(Δ[A033638(n)])`
-/

namespace A289764.P1750802087235001976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033638 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126646 n - A000975 (f1 (n + 1) - f1 n).toNat

end

end A289764.P1750802087235001976

namespace A289764

/-- `A126646(n)-A000975(Δ[A033638(n)])` -/
def P1750802087235001976.Spec : Prop :=
  ∀ n, P1750802087235001976.a n = A289764 n

end A289764

/-! ## A289764.P7958829725828024924

`A000225(n+1)-A000975(A004526(n+1))`
-/

namespace A289764.P7958829725828024924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (n + 1) - A000975 (A004526 (n + 1)).toNat

end

end A289764.P7958829725828024924

namespace A289764

/-- `A000225(n+1)-A000975(A004526(n+1))` -/
def P7958829725828024924.Spec : Prop :=
  ∀ n, P7958829725828024924.a n = A289764 n

end A289764

/-! ## A289764.P11317840611582482776

`A000225(n+1)-A000975(A032766(n+1)-(n+1))`
-/

namespace A289764.P11317840611582482776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (n + 1) - A000975 (A032766 (n + 1) - (n + 1 : ℤ)).toNat

end

end A289764.P11317840611582482776

namespace A289764

/-- `A000225(n+1)-A000975(A032766(n+1)-(n+1))` -/
def P11317840611582482776.Spec : Prop :=
  ∀ n, P11317840611582482776.a n = A289764 n

end A289764

/-! ## A289764.P16508879139667626619

`floor((A156232(n+3)+A156232(n+2))/3)`
-/

namespace A289764.P16508879139667626619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A156232 (n + 3) + A156232 (n + 2) : ℚ) / 3⌋

end

end A289764.P16508879139667626619

namespace A289764

/-- `floor((A156232(n+3)+A156232(n+2))/3)` -/
def P16508879139667626619.Spec : Prop :=
  ∀ n, P16508879139667626619.a n = A289764 n

end A289764

/-!
# A289765: Decimal representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 597", based on the 5-celled von Neumann neighborhood.

The programs for A289765, the canonical program `A289765.P8307938005075288678` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A289765 has offset 0).

The definition of A289765 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A289765.P8307938005075288678

`xor(A077980(n)+A000225(n), A001045(n))`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A289765

/-- `xor(A077980(n)+A000225(n), A001045(n))` -/
def P8307938005075288678.Spec : Prop :=
  ∀ n, P8307938005075288678.a n = A289765 n

theorem P8307938005075288678.correct : P8307938005075288678.Spec := by
  intro n
  simp only [A289765]

end A289765

/-! ## A289765.P9350757021073854028

`and(A000027(A289888(n)), A289888(n+4))`
-/

namespace A289765.P9350757021073854028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000027 (A289888 n).toNat) (A289888 (n + 4))

end

end A289765.P9350757021073854028

namespace A289765

/-- `and(A000027(A289888(n)), A289888(n+4))` -/
def P9350757021073854028.Spec : Prop :=
  ∀ n, P9350757021073854028.a n = A289765 n

end A289765

/-! ## A289765.P9322646046157519683

`A325401(A289764(n)/A014695(n))`
-/

namespace A289765.P9322646046157519683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325401 (SequenceMachineLib.roundAway ((A289764 n : ℚ) / (A014695 n : ℚ))).toNat

end

end A289765.P9322646046157519683

namespace A289765

/-- `A325401(A289764(n)/A014695(n))` -/
def P9322646046157519683.Spec : Prop :=
  ∀ n, P9322646046157519683.a n = A289765 n

end A289765

/-! ## A289765.P6231217772613514588

`A325401(A289764(n)/A184318(n+1))`
-/

namespace A289765.P6231217772613514588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325401 (SequenceMachineLib.roundAway ((A289764 n : ℚ) / (A184318 (n + 1) : ℚ))).toNat

end

end A289765.P6231217772613514588

namespace A289765

/-- `A325401(A289764(n)/A184318(n+1))` -/
def P6231217772613514588.Spec : Prop :=
  ∀ n, P6231217772613514588.a n = A289765 n

end A289765

/-! ## A289765.P1799357872113403502

`A325401((A129362(n)+A000975(n))/A014695(n))`
-/

namespace A289765.P1799357872113403502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325401 (SequenceMachineLib.roundAway ((A129362 n + A000975 n : ℚ) / (A014695 n : ℚ))).toNat

end

end A289765.P1799357872113403502

namespace A289765

/-- `A325401((A129362(n)+A000975(n))/A014695(n))` -/
def P1799357872113403502.Spec : Prop :=
  ∀ n, P1799357872113403502.a n = A289765 n

end A289765

/-!
# A289766: Binary representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 598", based on the 5-celled von Neumann neighborhood.

The programs for A289766, there is no canonical definition to state claims against.
-/

/-! ## A289766.P534101661077768839

`A273912(∑[log2(gcd(2, n))]-1)`
-/

namespace A289766.P534101661077768839
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Nat.gcd 2 n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273912 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j - 1)).toNat

end

end A289766.P534101661077768839

/-! ## A289766.P6349963209271520945

`A273912(A004526(n))`
-/

namespace A289766.P6349963209271520945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273912 (A004526 n).toNat

end

end A289766.P6349963209271520945

/-! ## A289766.P14141431272715561185

`A273912(A008619(n)-1)`
-/

namespace A289766.P14141431272715561185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273912 (A008619 n - 1).toNat

end

end A289766.P14141431272715561185

/-! ## A289766.P13649981877503606893

`A273912(A052928(n)/2)`
-/

namespace A289766.P13649981877503606893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273912 (SequenceMachineLib.roundAway ((A052928 n : ℚ) / 2)).toNat

end

end A289766.P13649981877503606893

/-! ## A289766.P8834366272305299723

`A273912(n-A110654(n))`
-/

namespace A289766.P8834366272305299723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273912 ((n : ℤ) - A110654 n).toNat

end

end A289766.P8834366272305299723

/-! ## A289766.P1227814108159066619

`A273912(∑[A059841(n)]-1)`
-/

namespace A289766.P1227814108159066619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273912 (∑ j ∈ Finset.range (n + 1), f1 j - 1).toNat

end

end A289766.P1227814108159066619

/-! ## A289766.P13145509256775474783

`A273912(A065033(n+1)-1)`
-/

namespace A289766.P13145509256775474783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273912 (A065033 (n + 1) - 1).toNat

end

end A289766.P13145509256775474783

/-! ## A289766.P13963932193401757755

`A273912(A002620(n)/A065033(n))`
-/

namespace A289766.P13963932193401757755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273912 (SequenceMachineLib.roundAway ((A002620 n : ℚ) / (A065033 n : ℚ))).toNat

end

end A289766.P13963932193401757755

/-!
# A289767: Binary representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 598", based on the 5-celled von Neumann neighborhood.

The programs for A289767, there is no canonical definition to state claims against.
-/

/-! ## A289767.P8910058017219329913

`A007088(A289769(n))`
-/

namespace A289767.P8910058017219329913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A289769 n).toNat

end

end A289767.P8910058017219329913

/-! ## A289767.P7293547520706138840

`A185544(2*A289769(n))`
-/

namespace A289767.P7293547520706138840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A289769 n).toNat

end

end A289767.P7293547520706138840

/-!
# A289768: Decimal representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 598", based on the 5-celled von Neumann neighborhood.

The programs for A289768, the canonical program `A289768.P1306473856639736861` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A289768 has offset 0).

The definition of A289768 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 666 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A289768.P1306473856639736861

`A038185(A004526(n))`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A289768

/-- `A038185(A004526(n))` -/
def P1306473856639736861.Spec : Prop :=
  ∀ n, P1306473856639736861.a n = A289768 n

theorem P1306473856639736861.correct : P1306473856639736861.Spec := by
  intro n
  simp only [A289768]

end A289768

/-! ## A289768.P12679064071203696750

`A038185(A140106(n+2))`
-/

namespace A289768.P12679064071203696750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038185 (A140106 (n + 2)).toNat

end

end A289768.P12679064071203696750

namespace A289768

/-- `A038185(A140106(n+2))` -/
def P12679064071203696750.Spec : Prop :=
  ∀ n, P12679064071203696750.a n = A289768 n

end A289768

/-! ## A289768.P13390657221621285355

`A288129(or(1, n)-1)`
-/

namespace A289768.P13390657221621285355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288129 (Nat.lor 1 n - 1)

end

end A289768.P13390657221621285355

namespace A289768

/-- `A288129(or(1, n)-1)` -/
def P13390657221621285355.Spec : Prop :=
  ∀ n, P13390657221621285355.a n = A289768 n

end A289768

/-! ## A289768.P10375850777492919888

`A288129(n-and(1, n))`
-/

namespace A289768.P10375850777492919888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288129 (n - Nat.land 1 n)

end

end A289768.P10375850777492919888

namespace A289768

/-- `A288129(n-and(1, n))` -/
def P10375850777492919888.Spec : Prop :=
  ∀ n, P10375850777492919888.a n = A289768 n

end A289768

/-! ## A289768.P5069013473766641089

`A288129(A052928(n))`
-/

namespace A289768.P5069013473766641089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288129 (A052928 n).toNat

end

end A289768.P5069013473766641089

namespace A289768

/-- `A288129(A052928(n))` -/
def P5069013473766641089.Spec : Prop :=
  ∀ n, P5069013473766641089.a n = A289768 n

end A289768

/-! ## A289768.P437676736118052349

`A288129(A004524(2*n))`
-/

namespace A289768.P437676736118052349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288129 (A004524 (2 * n)).toNat

end

end A289768.P437676736118052349

namespace A289768

/-- `A288129(A004524(2*n))` -/
def P437676736118052349.Spec : Prop :=
  ∀ n, P437676736118052349.a n = A289768 n

end A289768

/-! ## A289768.P13243258575740329551

`A288129(2*A004526(n))`
-/

namespace A289768.P13243258575740329551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288129 (2 * A004526 n).toNat

end

end A289768.P13243258575740329551

namespace A289768

/-- `A288129(2*A004526(n))` -/
def P13243258575740329551.Spec : Prop :=
  ∀ n, P13243258575740329551.a n = A289768 n

end A289768

/-! ## A289768.P12846163869286511215

`A288129(n-A000035(n))`
-/

namespace A289768.P12846163869286511215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288129 ((n : ℤ) - A000035 n).toNat

end

end A289768.P12846163869286511215

namespace A289768

/-- `A288129(n-A000035(n))` -/
def P12846163869286511215.Spec : Prop :=
  ∀ n, P12846163869286511215.a n = A289768 n

end A289768

/-! ## A289768.P7378937510230524110

`A288129(A042948(n)-n)`
-/

namespace A289768.P7378937510230524110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288129 (A042948 n - (n : ℤ)).toNat

end

end A289768.P7378937510230524110

namespace A289768

/-- `A288129(A042948(n)-n)` -/
def P7378937510230524110.Spec : Prop :=
  ∀ n, P7378937510230524110.a n = A289768 n

end A289768

/-! ## A289768.P13492206235468888546

`A288129(and(n, A004442(n)))`
-/

namespace A289768.P13492206235468888546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288129 (Int.land (n : ℤ) (A004442 n)).toNat

end

end A289768.P13492206235468888546

namespace A289768

/-- `A288129(and(n, A004442(n)))` -/
def P13492206235468888546.Spec : Prop :=
  ∀ n, P13492206235468888546.a n = A289768 n

end A289768

/-! ## A289768.P14144285213289054885

`A288129(xor(n, A000035(n)))`
-/

namespace A289768.P14144285213289054885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288129 (Int.xor (n : ℤ) (A000035 n)).toNat

end

end A289768.P14144285213289054885

namespace A289768

/-- `A288129(xor(n, A000035(n)))` -/
def P14144285213289054885.Spec : Prop :=
  ∀ n, P14144285213289054885.a n = A289768 n

end A289768

/-! ## A289768.P6792860768450394322

`A288129(2*(A032766(n)-n))`
-/

namespace A289768.P6792860768450394322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288129 (2 * (A032766 n - (n : ℤ))).toNat

end

end A289768.P6792860768450394322

namespace A289768

/-- `A288129(2*(A032766(n)-n))` -/
def P6792860768450394322.Spec : Prop :=
  ∀ n, P6792860768450394322.a n = A289768 n

end A289768

/-! ## A289768.P7693983987185989308

`A288129(and(n, 2*A126646(n)))`
-/

namespace A289768.P7693983987185989308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288129 (Int.land (n : ℤ) (2 * A126646 n)).toNat

end

end A289768.P7693983987185989308

namespace A289768

/-- `A288129(and(n, 2*A126646(n)))` -/
def P7693983987185989308.Spec : Prop :=
  ∀ n, P7693983987185989308.a n = A289768 n

end A289768

/-! ## A289768.P3868595890623405724

`A288129(and(n, 2*A284405(n)))`
-/

namespace A289768.P3868595890623405724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288129 (Int.land (n : ℤ) (2 * A284405 n)).toNat

end

end A289768.P3868595890623405724

namespace A289768

/-- `A288129(and(n, 2*A284405(n)))` -/
def P3868595890623405724.Spec : Prop :=
  ∀ n, P3868595890623405724.a n = A289768 n

end A289768

/-! ## A289768.P11078480791093221143

`A288129(and(n, 2*A284481(n)))`
-/

namespace A289768.P11078480791093221143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288129 (Int.land (n : ℤ) (2 * A284481 n)).toNat

end

end A289768.P11078480791093221143

namespace A289768

/-- `A288129(and(n, 2*A284481(n)))` -/
def P11078480791093221143.Spec : Prop :=
  ∀ n, P11078480791093221143.a n = A289768 n

end A289768

/-! ## A289768.P382627999094772421

`A288129(and(n, 2*A211386(n)))`
-/

namespace A289768.P382627999094772421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288129 (Int.land (n : ℤ) (2 * A211386 n)).toNat

end

end A289768.P382627999094772421

namespace A289768

/-- `A288129(and(n, 2*A211386(n)))` -/
def P382627999094772421.Spec : Prop :=
  ∀ n, P382627999094772421.a n = A289768 n

end A289768

/-! ## A289768.P17743212565866474471

`A288129(and(n, 2*A107954(n)))`
-/

namespace A289768.P17743212565866474471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288129 (Int.land (n : ℤ) (2 * A107954 n)).toNat

end

end A289768.P17743212565866474471

namespace A289768

/-- `A288129(and(n, 2*A107954(n)))` -/
def P17743212565866474471.Spec : Prop :=
  ∀ n, P17743212565866474471.a n = A289768 n

end A289768

/-! ## A289768.P17194665641562620260

`A288129(and(n, 2*A107955(n)))`
-/

namespace A289768.P17194665641562620260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288129 (Int.land (n : ℤ) (2 * A107955 n)).toNat

end

end A289768.P17194665641562620260

namespace A289768

/-- `A288129(and(n, 2*A107955(n)))` -/
def P17194665641562620260.Spec : Prop :=
  ∀ n, P17194665641562620260.a n = A289768 n

end A289768

/-! ## A289768.P10104633201309448759

`A288129(and(n, 2*A018886(n+1)))`
-/

namespace A289768.P10104633201309448759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288129 (Int.land (n : ℤ) (2 * A018886 (n + 1))).toNat

end

end A289768.P10104633201309448759

namespace A289768

/-- `A288129(and(n, 2*A018886(n+1)))` -/
def P10104633201309448759.Spec : Prop :=
  ∀ n, P10104633201309448759.a n = A289768 n

end A289768

/-! ## A289768.P15606172800480695630

`A288129(and(n, 2*A060160(n+1)))`
-/

namespace A289768.P15606172800480695630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288129 (Int.land (n : ℤ) (2 * A060160 (n + 1))).toNat

end

end A289768.P15606172800480695630

namespace A289768

/-- `A288129(and(n, 2*A060160(n+1)))` -/
def P15606172800480695630.Spec : Prop :=
  ∀ n, P15606172800480695630.a n = A289768 n

end A289768

/-!
# A289769: Decimal representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 598", based on the 5-celled von Neumann neighborhood.

The programs for A289769, the canonical program `A289769.P5085602509351808486` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A289769 has offset 0).

The definition of A289769 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A289769.P5989325204742837600

`(n%2+1)*A288130(A052928(n))`
-/

namespace A289769.P5989325204742837600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n % 2 + 1 : ℕ) : ℤ) * A288130 (A052928 n).toNat

end

end A289769.P5989325204742837600

namespace A289769

/-- `(n%2+1)*A288130(A052928(n))` -/
def P5989325204742837600.Spec : Prop :=
  ∀ n, P5989325204742837600.a n = A289769 n

end A289769

/-! ## A289769.P5085602509351808486

`A060546(n)*A273911(A004526(n))`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A289769

/-- `A060546(n)*A273911(A004526(n))` -/
def P5085602509351808486.Spec : Prop :=
  ∀ n, P5085602509351808486.a n = A289769 n

theorem P5085602509351808486.correct : P5085602509351808486.Spec := by
  intro n
  simp only [A289769]

end A289769

/-! ## A289769.P3919830881961060028

`A000034(n)*A288130(A052928(n))`
-/

namespace A289769.P3919830881961060028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n * A288130 (A052928 n).toNat

end

end A289769.P3919830881961060028

namespace A289769

/-- `A000034(n)*A288130(A052928(n))` -/
def P3919830881961060028.Spec : Prop :=
  ∀ n, P3919830881961060028.a n = A289769 n

end A289769

/-! ## A289769.P15651689985604035979

`lcm(A060546(n), A288130(A052928(n)))`
-/

namespace A289769.P15651689985604035979
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A060546 n) (A288130 (A052928 n).toNat)

end

end A289769.P15651689985604035979

namespace A289769

/-- `lcm(A060546(n), A288130(A052928(n)))` -/
def P15651689985604035979.Spec : Prop :=
  ∀ n, (P15651689985604035979.a n : ℤ) = A289769 n

end A289769

/-! ## A289769.P9606253843810591778

`Δ[A032766(n)]*A288130(A052928(n))`
-/

namespace A289769.P9606253843810591778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A288130 (A052928 n).toNat

end

end A289769.P9606253843810591778

namespace A289769

/-- `Δ[A032766(n)]*A288130(A052928(n))` -/
def P9606253843810591778.Spec : Prop :=
  ∀ n, P9606253843810591778.a n = A289769 n

end A289769

/-! ## A289769.P128569278688551163

`xor(A077896(A042963(n+1)), A288130(n))`
-/

namespace A289769.P128569278688551163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A077896 (A042963 (n + 1)).toNat) (A288130 n)

end

end A289769.P128569278688551163

namespace A289769

/-- `xor(A077896(A042963(n+1)), A288130(n))` -/
def P128569278688551163.Spec : Prop :=
  ∀ n, P128569278688551163.a n = A289769 n

end A289769

/-!
# A289770: Binary representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 601", based on the 5-celled von Neumann neighborhood.

The programs for A289770, there is no canonical definition to state claims against.
-/

/-! ## A289770.P10951156866252313560

`A007088(A289774(n))`
-/

namespace A289770.P10951156866252313560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A289774 n).toNat

end

end A289770.P10951156866252313560

/-! ## A289770.P8838441288986936831

`A007088(A198633(n)-(A288044(n)+1))`
-/

namespace A289770.P8838441288986936831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A198633 n - (A288044 n + 1)).toNat

end

end A289770.P8838441288986936831

/-! ## A289770.P13249111936853763628

`A007088(A198633(n)-1-A288044(n))`
-/

namespace A289770.P13249111936853763628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A198633 n - 1 - A288044 n).toNat

end

end A289770.P13249111936853763628

/-! ## A289770.P17941899394782457914

`A007088(A288045(n)+A289775(n)-A288044(n))`
-/

namespace A289770.P17941899394782457914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A288045 n + (A289775 n - A288044 n)).toNat

end

end A289770.P17941899394782457914

/-! ## A289770.P13108660834826019776

`A007088(A288045(n)-(A288044(n)-A289775(n)))`
-/

namespace A289770.P13108660834826019776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A288045 n - (A288044 n - A289775 n)).toNat

end

end A289770.P13108660834826019776

/-!
# A289771: Binary representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 601", based on the 5-celled von Neumann neighborhood.

The programs for A289771, there is no canonical definition to state claims against.
-/

/-! ## A289771.P12400997051155181722

`A007088(A289775(n))`
-/

namespace A289771.P12400997051155181722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A289775 n).toNat

end

end A289771.P12400997051155181722

/-! ## A289771.P1968902215941128862

`A007088(A198633(n)-(A288045(n)+1))`
-/

namespace A289771.P1968902215941128862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A198633 n - (A288045 n + 1)).toNat

end

end A289771.P1968902215941128862

/-! ## A289771.P12448956538525847520

`A007088(A198633(n)-1-A288045(n))`
-/

namespace A289771.P12448956538525847520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A198633 n - 1 - A288045 n).toNat

end

end A289771.P12448956538525847520

/-! ## A289771.P11402153988112023399

`A007088(A288044(n)+A289774(n)-A288045(n))`
-/

namespace A289771.P11402153988112023399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A288044 n + (A289774 n - A288045 n)).toNat

end

end A289771.P11402153988112023399

/-! ## A289771.P17733786095150024841

`A007088(A288044(n)-(A288045(n)-A289774(n)))`
-/

namespace A289771.P17733786095150024841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A288044 n - (A288045 n - A289774 n)).toNat

end

end A289771.P17733786095150024841

/-!
# A289772: a(n) is the numerator of b(n) where b(n) = 1/(3*(1+2*A112765(n) - b(n-1))) and b(0) = 0, where A112765(n) is the 5-adic valuation of n.

The programs for A289772, there is no canonical definition to state claims against.
-/

/-! ## A289772.P3112307012315156643

`A271902(n)%A317765(A000124(n))`
-/

namespace A289772.P3112307012315156643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A271902 n) (A317765 (A000124 n).toNat)

end

end A289772.P3112307012315156643

/-! ## A289772.P16995496012960506474

`A002487(lt[A036035(n), A209867(n+2)])`
-/

namespace A289772.P16995496012960506474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036035 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209867 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A289772.P16995496012960506474

/-! ## A289772.P17349433683090839807

`A002487(lt[A003106(3*n), A209867(n+2)])`
-/

namespace A289772.P17349433683090839807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003106 (3 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209867 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A289772.P17349433683090839807

/-! ## A289772.P18186088202393016385

`A002487(comp[A070113(n+1)-A121214(n+1)])`
-/

namespace A289772.P18186088202393016385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070113 (n + 1) - A121214 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A289772.P18186088202393016385

/-! ## A289772.P9527017540063860869

`A002487(comp[A329367(n+1)-A216950(2*(n+1))])`
-/

namespace A289772.P9527017540063860869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329367 (n + 1) - A216950 (2 * (n + 1))

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A289772.P9527017540063860869

/-!
# A289773: a(n) is the denominator of b(n) where b(n) = 1/(3*(1+2*A112765(n) - b(n-1))) and b(0) = 0, with A112765(n) being the 5-adic valuation of n.

The programs for A289773, there is no canonical definition to state claims against.
-/

/-! ## A289773.P14064279114578758181

`A005408(n)%4*A289772(n+1)`
-/

namespace A289773.P14064279114578758181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005408 n) 4 * A289772 (n + 1)

end

end A289773.P14064279114578758181

/-! ## A289773.P1028510320648455201

`(A001105(n)+1)%4*A289772(n+1)`
-/

namespace A289773.P1028510320648455201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001105 n + 1) 4 * A289772 (n + 1)

end

end A289773.P1028510320648455201

/-! ## A289773.P3394314241778474279

`A289772(5*n+4)-A289772(n)`
-/

namespace A289773.P3394314241778474279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289772 (5 * n + 4) - A289772 n

end

end A289773.P3394314241778474279

/-! ## A289773.P11473454817190699401

`∑{d}[2*(n+1), A297112(#)]%4*A289772(n+1)`
-/

namespace A289773.P11473454817190699401
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ d ∈ Nat.divisors (f1 n), A297112 d) 4 * A289772 (n + 1)

end

end A289773.P11473454817190699401

/-!
# A289774: Decimal representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 601", based on the 5-celled von Neumann neighborhood.

The programs for A289774, there is no canonical definition to state claims against.
-/

/-! ## A289774.P16220988040074287090

`A198633(n)-(A288044(n)+1)`
-/

namespace A289774.P16220988040074287090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198633 n - (A288044 n + 1)

end

end A289774.P16220988040074287090

/-! ## A289774.P17878045612134427532

`xor(record[A324713(n+1)], A288044(n))`
-/

namespace A289774.P17878045612134427532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324713 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A288044 n)

end

end A289774.P17878045612134427532

/-! ## A289774.P8707997521618801608

`A198633(or(n, char[1]))-A288044(n)-1`
-/

namespace A289774.P8707997521618801608
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198633 (Nat.lor n (if ∃ j, f1 j = n then 1 else 0)) - A288044 n - 1

end

end A289774.P8707997521618801608

/-! ## A289774.P3618216932566486706

`A288045(n)+A289775(n)-A288044(n)`
-/

namespace A289774.P3618216932566486706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288045 n + (A289775 n - A288044 n)

end

end A289774.P3618216932566486706

/-! ## A289774.P9533721480418500317

`A053438(A000079(n))-A288044(n)`
-/

namespace A289774.P9533721480418500317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053438 (A000079 n).toNat - A288044 n

end

end A289774.P9533721480418500317

/-!
# A289775: Decimal representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 601", based on the 5-celled von Neumann neighborhood.

The programs for A289775, there is no canonical definition to state claims against.
-/

/-! ## A289775.P18035871539283982861

`A095121(n)+1-A288045(n)`
-/

namespace A289775.P18035871539283982861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095121 n + (1 - A288045 n)

end

end A289775.P18035871539283982861

/-! ## A289775.P14666026390369568372

`A198633(n)-(A288045(n)+1)`
-/

namespace A289775.P14666026390369568372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198633 n - (A288045 n + 1)

end

end A289775.P14666026390369568372

/-! ## A289775.P11176285093848476461

`xor(record[A324713(n+1)], A288045(n))`
-/

namespace A289775.P11176285093848476461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324713 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A288045 n)

end

end A289775.P11176285093848476461

/-! ## A289775.P14449240713184610770

`A288044(n)+A289774(n)-A288045(n)`
-/

namespace A289775.P14449240713184610770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288044 n + (A289774 n - A288045 n)

end

end A289775.P14449240713184610770

/-! ## A289775.P15507135380692566652

`A000079(n+1)-(A288045(n)+A043545(2*n))`
-/

namespace A289775.P15507135380692566652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (n + 1) - (A288045 n + A043545 (2 * n))

end

end A289775.P15507135380692566652

/-!
# A289779: p-INVERT of the squares, where p(S) = 1 - S - S^2.

The programs for A289779, there is no canonical definition to state claims against.
-/

/-! ## A289779.P5990529509014654242

`floor(A312138(or(1, 2*a(n-1)))/2)` with `a(0)=1`
-/

namespace A289779.P5990529509014654242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊(A312138 (Int.lor 1 (2 * a (n - 1))).toNat : ℚ) / 2⌋

end

end A289779.P5990529509014654242

/-! ## A289779.P11792622760995142870

`A050292(A101400(2*n+1)-A050292(n))`
-/

namespace A289779.P11792622760995142870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050292 (A101400 (2 * n + 1) - A050292 n).toNat

end

end A289779.P11792622760995142870

/-!
# A289780: p-INVERT of the positive integers (A000027), where p(S) = 1 - S - S^2.

The programs for A289780, the canonical program `A289780.P9811368432395274790` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A289780 has offset 0).

The definition of A289780 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A289780.P9811368432395274790

`5*a(n-1)-7*a(n-2)+5*a(n-3)-a(n-4)` with `a(0)=1, a(1)=4, a(2)=14, a(3)=47`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A289780

/-- `5*a(n-1)-7*a(n-2)+5*a(n-3)-a(n-4)` -/
def P9811368432395274790.Spec : Prop :=
  ∀ n, P9811368432395274790.a n = A289780 n

theorem P9811368432395274790.correct : P9811368432395274790.Spec := by
  intro n
  simp only [A289780]

end A289780

/-! ## A289780.P3052181542086113834

`Δ[A389699(n)]`
-/

namespace A289780.P3052181542086113834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389699 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A289780.P3052181542086113834

namespace A289780

/-- `Δ[A389699(n)]` -/
def P3052181542086113834.Spec : Prop :=
  ∀ n, P3052181542086113834.a n = A289780 n

end A289780

/-! ## A289780.P17267775882623792814

`A389933(n)+A104630(n)`
-/

namespace A289780.P17267775882623792814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389933 n + A104630 n

end

end A289780.P17267775882623792814

namespace A289780

/-- `A389933(n)+A104630(n)` -/
def P17267775882623792814.Spec : Prop :=
  ∀ n, P17267775882623792814.a n = A289780 n

end A289780

/-! ## A289780.P17542727834546736208

`A099448(n)-A104630(n)`
-/

namespace A289780.P17542727834546736208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099448 n - A104630 n

end

end A289780.P17542727834546736208

namespace A289780

/-- `A099448(n)-A104630(n)` -/
def P17542727834546736208.Spec : Prop :=
  ∀ n, P17542727834546736208.a n = A289780 n

end A289780

/-! ## A289780.P13176272922016456573

`A389699(n+1)-A389699(n)`
-/

namespace A289780.P13176272922016456573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389699 (n + 1) - A389699 n

end

end A289780.P13176272922016456573

namespace A289780

/-- `A389699(n+1)-A389699(n)` -/
def P13176272922016456573.Spec : Prop :=
  ∀ n, P13176272922016456573.a n = A289780 n

end A289780

/-! ## A289780.P6916317704500538373

`A099448(n)+A104630(n)*A157503(gcd(n, n+1))`
-/

namespace A289780.P6916317704500538373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099448 n + A104630 n * A157503 (Nat.gcd n (n + 1))

end

end A289780.P6916317704500538373

namespace A289780

/-- `A099448(n)+A104630(n)*A157503(gcd(n, n+1))` -/
def P6916317704500538373.Spec : Prop :=
  ∀ n, P6916317704500538373.a n = A289780 n

end A289780

/-! ## A289780.P18354926056873879047

`A104630(n+2)%Δ[A099448(n)]`
-/

namespace A289780.P18354926056873879047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099448 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A104630 (n + 2)) (f1 (n + 1) - f1 n)

end

end A289780.P18354926056873879047

namespace A289780

/-- `A104630(n+2)%Δ[A099448(n)]` -/
def P18354926056873879047.Spec : Prop :=
  ∀ n, P18354926056873879047.a n = A289780 n

end A289780

/-! ## A289780.P13978124633256556294

`(A104630(n+2)+A099448(n))%A099448(n+1)`
-/

namespace A289780.P13978124633256556294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A104630 (n + 2) + A099448 n) (A099448 (n + 1))

end

end A289780.P13978124633256556294

namespace A289780

/-- `(A104630(n+2)+A099448(n))%A099448(n+1)` -/
def P13978124633256556294.Spec : Prop :=
  ∀ n, P13978124633256556294.a n = A289780 n

end A289780

/-!
# A289781: p-INVERT of the positive Fibonacci numbers (A000045), where p(S) = 1 - S - S^2.

The programs for A289781, the canonical program `A289781.P9032261839723321961` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A289781 has offset 0).

The definition of A289781 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A289781.P9032261839723321961

`3*a(n-1)+a(n-2)-3*a(n-3)-a(n-4)` with `a(0)=1, a(1)=3, a(2)=9, a(3)=27`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A289781

/-- `3*a(n-1)+a(n-2)-3*a(n-3)-a(n-4)` -/
def P9032261839723321961.Spec : Prop :=
  ∀ n, P9032261839723321961.a n = A289781 n

theorem P9032261839723321961.correct : P9032261839723321961.Spec := by
  intro n
  simp only [A289781]

end A289781

/-! ## A289781.P5105611610393884445

`Δ[A270863(n+1)]-A270863(n)`
-/

namespace A289781.P5105611610393884445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270863 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A270863 n

end

end A289781.P5105611610393884445

namespace A289781

/-- `Δ[A270863(n+1)]-A270863(n)` -/
def P5105611610393884445.Spec : Prop :=
  ∀ n, P5105611610393884445.a n = A289781 n

end A289781

/-! ## A289781.P9249320792655931278

`(A291243(n)+A279277(n+1))/4`
-/

namespace A289781.P9249320792655931278
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A291243 n + A279277 (n + 1) : ℚ) / 4

end

end A289781.P9249320792655931278

namespace A289781

/-- `(A291243(n)+A279277(n+1))/4` -/
def P9249320792655931278.Spec : Prop :=
  ∀ n, P9249320792655931278.a n = (A289781 n : ℚ)

end A289781

/-! ## A289781.P8127644111432067853

`A270863(n+2)-(A270863(n+1)+A270863(n))`
-/

namespace A289781.P8127644111432067853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270863 (n + 2) - (A270863 (n + 1) + A270863 n)

end

end A289781.P8127644111432067853

namespace A289781

/-- `A270863(n+2)-(A270863(n+1)+A270863(n))` -/
def P8127644111432067853.Spec : Prop :=
  ∀ n, P8127644111432067853.a n = A289781 n

end A289781

/-! ## A289781.P14743948507878869366

`(A291243(n)+A279277(n+1))*(2^A008683(A005382(n+1)))²`
-/

namespace A289781.P14743948507878869366
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A291243 n + A279277 (n + 1) : ℚ) * ((2 : ℚ) ^ (A008683 (A005382 (n + 1)).toNat : ℤ)) ^ 2

end

end A289781.P14743948507878869366

namespace A289781

/-- `(A291243(n)+A279277(n+1))*(2^A008683(A005382(n+1)))²` -/
def P14743948507878869366.Spec : Prop :=
  ∀ n, P14743948507878869366.a n = (A289781 n : ℚ)

end A289781

/-!
# A289782: p-INVERT of the Lucas numbers (A000032), where p(S) = 1 - S - S^2.

The programs for A289782, the canonical program `A289782.P17254353349983207909` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A289782 has offset 0).

The definition of A289782 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A289782.P17254353349983207909

`4*a(n-1)+2*a(n-2)-7*a(n-3)+a(n-4)` with `a(0)=2, a(1)=9, a(2)=35, a(3)=146`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A289782

/-- `4*a(n-1)+2*a(n-2)-7*a(n-3)+a(n-4)` -/
def P17254353349983207909.Spec : Prop :=
  ∀ n, P17254353349983207909.a n = A289782 n

theorem P17254353349983207909.correct : P17254353349983207909.Spec := by
  intro n
  simp only [A289782]

end A289782

/-!
# A289783: p-INVERT of the (3^n), where p(S) = 1 - S - S^2.

The programs for A289783, the canonical program `A289783.P477147305017395827` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A289783 has offset 0).

The definition of A289783 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A289783.P477147305017395827

`7*a(n-1)-11*a(n-2)` with `a(0)=1, a(1)=5`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A289783

/-- `7*a(n-1)-11*a(n-2)` -/
def P477147305017395827.Spec : Prop :=
  ∀ n, P477147305017395827.a n = A289783 n

theorem P477147305017395827.correct : P477147305017395827.Spec := by
  intro n
  simp only [A289783]

end A289783

/-! ## A289783.P5589255714548452455

`2*A081568(n)-A192240(n)`
-/

namespace A289783.P5589255714548452455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A081568 n - A192240 n

end

end A289783.P5589255714548452455

namespace A289783

/-- `2*A081568(n)-A192240(n)` -/
def P5589255714548452455.Spec : Prop :=
  ∀ n, P5589255714548452455.a n = A289783 n

end A289783

/-! ## A289783.P11618837430724656542

`A081568(n)+A081568(n+1)%A081568(n)`
-/

namespace A289783.P11618837430724656542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081568 n + Int.tmod (A081568 (n + 1)) (A081568 n)

end

end A289783.P11618837430724656542

namespace A289783

/-- `A081568(n)+A081568(n+1)%A081568(n)` -/
def P11618837430724656542.Spec : Prop :=
  ∀ n, P11618837430724656542.a n = A289783 n

end A289783

/-! ## A289783.P14658573330299050593

`Δ[A163147(n)/2^n]/5`
-/

namespace A289783.P14658573330299050593
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A163147 n : ℚ) / (2 ^ n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) / 5

end

end A289783.P14658573330299050593

namespace A289783

/-- `Δ[A163147(n)/2^n]/5` -/
def P14658573330299050593.Spec : Prop :=
  ∀ n, P14658573330299050593.a n = (A289783 n : ℚ)

end A289783

/-!
# A289784: p-INVERT of the (4^n), where p(S) = 1 - S - S^2.

The programs for A289784, the canonical program `A289784.P9952941798050073629` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A289784 has offset 0).

The definition of A289784 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A289784.P9952941798050073629

`9*a(n-1)-19*a(n-2)` with `a(0)=1, a(1)=6`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A289784

/-- `9*a(n-1)-19*a(n-2)` -/
def P9952941798050073629.Spec : Prop :=
  ∀ n, P9952941798050073629.a n = A289784 n

theorem P9952941798050073629.correct : P9952941798050073629.Spec := by
  intro n
  simp only [A289784]

end A289784

/-! ## A289784.P11367134009229469926

`A081574(n+1)-3*A081574(n)`
-/

namespace A289784.P11367134009229469926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081574 (n + 1) - 3 * A081574 n

end

end A289784.P11367134009229469926

namespace A289784

/-- `A081574(n+1)-3*A081574(n)` -/
def P11367134009229469926.Spec : Prop :=
  ∀ n, P11367134009229469926.a n = A289784 n

end A289784

/-! ## A289784.P13592495390303799298

`A081574(n)+A081569(n)`
-/

namespace A289784.P13592495390303799298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081574 n + A081569 n

end

end A289784.P13592495390303799298

namespace A289784

/-- `A081574(n)+A081569(n)` -/
def P13592495390303799298.Spec : Prop :=
  ∀ n, P13592495390303799298.a n = A289784 n

end A289784

/-! ## A289784.P17286116228826044262

`A081569(n)+A081569(n+1)%A081569(n)`
-/

namespace A289784.P17286116228826044262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081569 n + Int.tmod (A081569 (n + 1)) (A081569 n)

end

end A289784.P17286116228826044262

namespace A289784

/-- `A081569(n)+A081569(n+1)%A081569(n)` -/
def P17286116228826044262.Spec : Prop :=
  ∀ n, P17286116228826044262.a n = A289784 n

end A289784

/-!
# A289785: p-INVERT of the (5^n), where p(S) = 1 - S - S^2.

The programs for A289785, the canonical program `A289785.P15916656007644967104` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A289785 has offset 0).

The definition of A289785 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A289785.P15916656007644967104

`11*a(n-1)-29*a(n-2)` with `a(0)=1, a(1)=7`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A289785

/-- `11*a(n-1)-29*a(n-2)` -/
def P15916656007644967104.Spec : Prop :=
  ∀ n, P15916656007644967104.a n = A289785 n

theorem P15916656007644967104.correct : P15916656007644967104.Spec := by
  intro n
  simp only [A289785]

end A289785

/-! ## A289785.P10392770018583133834

`A081575(n+1)-4*A081575(n)`
-/

namespace A289785.P10392770018583133834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081575 (n + 1) - 4 * A081575 n

end

end A289785.P10392770018583133834

namespace A289785

/-- `A081575(n+1)-4*A081575(n)` -/
def P10392770018583133834.Spec : Prop :=
  ∀ n, P10392770018583133834.a n = A289785 n

end A289785

/-! ## A289785.P2128217641874726370

`A081575(n)+A081570(n)`
-/

namespace A289785.P2128217641874726370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081575 n + A081570 n

end

end A289785.P2128217641874726370

namespace A289785

/-- `A081575(n)+A081570(n)` -/
def P2128217641874726370.Spec : Prop :=
  ∀ n, P2128217641874726370.a n = A289785 n

end A289785

/-! ## A289785.P10121973938034257979

`A081576(A055999(n+3))+A081570(n)`
-/

namespace A289785.P10121973938034257979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081576 (A055999 (n + 3)).toNat + A081570 n

end

end A289785.P10121973938034257979

namespace A289785

/-- `A081576(A055999(n+3))+A081570(n)` -/
def P10121973938034257979.Spec : Prop :=
  ∀ n, P10121973938034257979.a n = A289785 n

end A289785

/-! ## A289785.P10464273087402501000

`A081575(n)+A081572(A055999(n+3))`
-/

namespace A289785.P10464273087402501000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081575 n + A081572 (A055999 (n + 3)).toNat

end

end A289785.P10464273087402501000

namespace A289785

/-- `A081575(n)+A081572(A055999(n+3))` -/
def P10464273087402501000.Spec : Prop :=
  ∀ n, P10464273087402501000.a n = A289785 n

end A289785

/-!
# A289786: p-INVERT of the odd positive integers (A005408), where p(S) = 1 - S - S^2.

The programs for A289786, the canonical program `A289786.P3641223234537944545` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A289786 has offset 0).

The definition of A289786 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A289786.P3641223234537944545

`5*a(n-1)-6*a(n-2)+5*a(n-3)+a(n-4)` with `a(0)=1, a(1)=5, a(2)=20, a(3)=77`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A289786

/-- `5*a(n-1)-6*a(n-2)+5*a(n-3)+a(n-4)` -/
def P3641223234537944545.Spec : Prop :=
  ∀ n, P3641223234537944545.a n = A289786 n

theorem P3641223234537944545.correct : P3641223234537944545.Spec := by
  intro n
  simp only [A289786]

end A289786

/-! ## A289786.P15049799339386958114

`A194202(A113437(n+1))`
-/

namespace A289786.P15049799339386958114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194202 (A113437 (n + 1)).toNat

end

end A289786.P15049799339386958114

namespace A289786

/-- `A194202(A113437(n+1))` -/
def P15049799339386958114.Spec : Prop :=
  ∀ n, P15049799339386958114.a n = A289786 n

end A289786

/-!
# A289787: p-INVERT of the even positive integers (A005843), where p(S) = 1 - S - S^2.

The programs for A289787, the canonical program `A289787.P11142779879057307755` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A289787 has offset 0).

The definition of A289787 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A289787.P11142779879057307755

`6*a(n-1)-6*a(n-2)+6*a(n-3)-a(n-4)` with `a(0)=2, a(1)=12, a(2)=62, a(3)=312`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A289787

/-- `6*a(n-1)-6*a(n-2)+6*a(n-3)-a(n-4)` -/
def P11142779879057307755.Spec : Prop :=
  ∀ n, P11142779879057307755.a n = A289787 n

theorem P11142779879057307755.correct : P11142779879057307755.Spec := by
  intro n
  simp only [A289787]

end A289787

/-! ## A289787.P10082398718897323233

`2*A289788(n)`
-/

namespace A289787.P10082398718897323233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A289788 n

end

end A289787.P10082398718897323233

namespace A289787

/-- `2*A289788(n)` -/
def P10082398718897323233.Spec : Prop :=
  ∀ n, P10082398718897323233.a n = A289787 n

end A289787

/-! ## A289787.P3281426940030433998

`A289788(A005843(n)/2)+A289788(n)`
-/

namespace A289787.P3281426940030433998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289788 (SequenceMachineLib.roundAway ((A005843 n : ℚ) / 2)).toNat + A289788 n

end

end A289787.P3281426940030433998

namespace A289787

/-- `A289788(A005843(n)/2)+A289788(n)` -/
def P3281426940030433998.Spec : Prop :=
  ∀ n, P3281426940030433998.a n = A289787 n

end A289787

/-! ## A289787.P13424898290455328390

`A289788(A005843(n)-n)+A289788(n)`
-/

namespace A289787.P13424898290455328390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289788 (A005843 n - (n : ℤ)).toNat + A289788 n

end

end A289787.P13424898290455328390

namespace A289787

/-- `A289788(A005843(n)-n)+A289788(n)` -/
def P13424898290455328390.Spec : Prop :=
  ∀ n, P13424898290455328390.a n = A289787 n

end A289787

/-! ## A289787.P6307452223514304866

`A289788(n)+A289788(n)%A289790(n)`
-/

namespace A289787.P6307452223514304866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289788 n + Int.tmod (A289788 n) (A289790 n)

end

end A289787.P6307452223514304866

namespace A289787

/-- `A289788(n)+A289788(n)%A289790(n)` -/
def P6307452223514304866.Spec : Prop :=
  ∀ n, P6307452223514304866.a n = A289787 n

end A289787

/-!
# A289788: a(n) = (1/2)*A289787(n).

The programs for A289788, the canonical program `A289788.P12762482706383305376` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A289788 has offset 0).

The definition of A289788 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A289788.P12762482706383305376

`6*a(n-1)-6*a(n-2)+6*a(n-3)-a(n-4)` with `a(0)=1, a(1)=6, a(2)=31, a(3)=156`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A289788

/-- `6*a(n-1)-6*a(n-2)+6*a(n-3)-a(n-4)` -/
def P12762482706383305376.Spec : Prop :=
  ∀ n, P12762482706383305376.a n = A289788 n

theorem P12762482706383305376.correct : P12762482706383305376.Spec := by
  intro n
  simp only [A289788]

end A289788

/-! ## A289788.P12716369524847678562

`1/2*A289787(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A289788.P12716369524847678562
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * (A289787 n : ℚ)

end

end A289788.P12716369524847678562

namespace A289788

/-- `1/2*A289787(n)` -/
def P12716369524847678562.Spec : Prop :=
  ∀ n, P12716369524847678562.a n = (A289788 n : ℚ)

end A289788

/-! ## A289788.P9985001776793200284

`A289787(n)/2`
-/

namespace A289788.P9985001776793200284
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A289787 n : ℚ) / 2

end

end A289788.P9985001776793200284

namespace A289788

/-- `A289787(n)/2` -/
def P9985001776793200284.Spec : Prop :=
  ∀ n, P9985001776793200284.a n = (A289788 n : ℚ)

end A289788

/-!
# A289789: p-INVERT of A016777, where p(S) = 1 - S - S^2.

The programs for A289789, the canonical program `A289789.P3197180327606335762` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A289789 has offset 0).

The definition of A289789 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A289789.P3197180327606335762

`5*a(n-1)-5*a(n-2)+5*a(n-3)+5*a(n-4)` with `a(0)=1, a(1)=6, a(2)=26, a(3)=111`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A289789

/-- `5*a(n-1)-5*a(n-2)+5*a(n-3)+5*a(n-4)` -/
def P3197180327606335762.Spec : Prop :=
  ∀ n, P3197180327606335762.a n = A289789 n

theorem P3197180327606335762.correct : P3197180327606335762.Spec := by
  intro n
  simp only [A289789]

end A289789

/-! ## A289789.P9546215979231733316

`A027925(A289798(n))`
-/

namespace A289789.P9546215979231733316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027925 (A289798 n).toNat

end

end A289789.P9546215979231733316

namespace A289789

/-- `A027925(A289798(n))` -/
def P9546215979231733316.Spec : Prop :=
  ∀ n, P9546215979231733316.a n = A289789 n

end A289789

/-!
# A289790: p-INVERT of A016789, where p(S) = 1 - S - S^2.

The programs for A289790, the canonical program `A289790.P9830134552150795528` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A289790 has offset 0).

The definition of A289790 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A289790.P9830134552150795528

`6*a(n-1)-5*a(n-2)+8*a(n-3)+a(n-4)` with `a(0)=2, a(1)=13, a(2)=72, a(3)=385`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A289790

/-- `6*a(n-1)-5*a(n-2)+8*a(n-3)+a(n-4)` -/
def P9830134552150795528.Spec : Prop :=
  ∀ n, P9830134552150795528.a n = A289790 n

theorem P9830134552150795528.correct : P9830134552150795528.Spec := by
  intro n
  simp only [A289790]

end A289790

/-!
# A289792: Number of 4-cycles in the n-tetrahedral graph.

The programs for A289792, there is no canonical definition to state claims against.
-/

/-! ## A289792.P12164112632102303955

`∏{p}[A373526(n+1)², #]-1`
-/

namespace A289792.P12164112632102303955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373526 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n).natAbs, p : ℕ) : ℤ) - 1

end

end A289792.P12164112632102303955

/-! ## A289792.P13390139467633699919

`9*C(n, 4)*A198194(∑[C(n+3, 2)])`
-/

namespace A289792.P13390139467633699919
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 3) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (9 * Nat.choose n 4 : ℤ) * A198194 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A289792.P13390139467633699919

/-!
# A289793: Number of 5-cycles in the n-tetrahedral graph.

The programs for A289793, there is no canonical definition to state claims against.
-/

/-! ## A289793.P331656483449180092

`24*A370644(A000032(n))`
-/

namespace A289793.P331656483449180092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  24 * A370644 (A000032 n).toNat

end

end A289793.P331656483449180092

/-! ## A289793.P8236270421742502999

`Δ[A209456(Δ[A077374(n+1)])]`
-/

namespace A289793.P8236270421742502999
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077374 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209456 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A289793.P8236270421742502999

/-!
# A289794: Number of 6-cycles in the n-tetrahedral graph.

The programs for A289794, the canonical program `A289794.P17343577497240690466` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A289794 has offset 1).

The definition of A289794 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A289794.P17343577497240690466

`5*C(n+1, 5)*(454-409*(n+1)+66*(n+1)²+(n+1)^3)`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A289794

/-- `5*C(n+1, 5)*(454-409*(n+1)+66*(n+1)²+(n+1)^3)` -/
def P17343577497240690466.Spec : Prop :=
  ∀ n, P17343577497240690466.a n = A289794 (n + 1)

theorem P17343577497240690466.correct : P17343577497240690466.Spec := by
  intro n
  simp only [A289794, Nat.add_sub_cancel]

end A289794

/-! ## A289794.P17287203919440821083

`A068790(n+1)*A117174(A000079(n))`
-/

namespace A289794.P17287203919440821083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068790 (n + 1) * A117174 (A000079 n).toNat

end

end A289794.P17287203919440821083

namespace A289794

/-- `A068790(n+1)*A117174(A000079(n))` -/
def P17287203919440821083.Spec : Prop :=
  ∀ n, P17287203919440821083.a n = A289794 (n + 1)

end A289794

/-!
# A289795: p-INVERT of (3n), where p(S) = 1 - S - S^2.

The programs for A289795, the canonical program `A289795.P8991608833031833958` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A289795 has offset 0).

The definition of A289795 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 121 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A289795.P8991608833031833958

`3*A289796(n)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A289795

/-- `3*A289796(n)` -/
def P8991608833031833958.Spec : Prop :=
  ∀ n, P8991608833031833958.a n = A289795 n

theorem P8991608833031833958.correct : P8991608833031833958.Spec := by
  intro n
  simp only [A289795]

end A289795

/-!
# A289796: a(n) = (1/3)*A289795(n).

The programs for A289796, the canonical program `A289796.P10351235981111526403` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A289796 has offset 0).

The definition of A289796 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A289796.P10351235981111526403

`7*a(n-1)-3*a(n-2)+7*a(n-3)-a(n-4)` with `a(0)=1, a(1)=8, a(2)=54, a(3)=361`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A289796

/-- `7*a(n-1)-3*a(n-2)+7*a(n-3)-a(n-4)` -/
def P10351235981111526403.Spec : Prop :=
  ∀ n, P10351235981111526403.a n = A289796 n

theorem P10351235981111526403.correct : P10351235981111526403.Spec := by
  intro n
  simp only [A289796]

end A289796

/-! ## A289796.P1324609499399012694

`1/3*A289795(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A289796.P1324609499399012694
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 3 * (A289795 n : ℚ)

end

end A289796.P1324609499399012694

namespace A289796

/-- `1/3*A289795(n)` -/
def P1324609499399012694.Spec : Prop :=
  ∀ n, P1324609499399012694.a n = (A289796 n : ℚ)

end A289796

/-! ## A289796.P9650560271221306761

`A289795(n)/3`
-/

namespace A289796.P9650560271221306761
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A289795 n : ℚ) / 3

end

end A289796.P9650560271221306761

namespace A289796

/-- `A289795(n)/3` -/
def P9650560271221306761.Spec : Prop :=
  ∀ n, P9650560271221306761.a n = (A289796 n : ℚ)

end A289796

/-!
# A289797: p-INVERT of the triangular numbers (A000217), where p(S) = 1 - S - S^2.

The programs for A289797, there is no canonical definition to state claims against.
-/

/-! ## A289797.P9223830176880493841

`Δ[A390825(n)]`
-/

namespace A289797.P9223830176880493841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390825 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A289797.P9223830176880493841

/-! ## A289797.P17107546953039818836

`A390825(n+1)-A390825(n)`
-/

namespace A289797.P17107546953039818836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390825 (n + 1) - A390825 n

end

end A289797.P17107546953039818836

/-! ## A289797.P16331236338541832617

`A085861(A273920(n+1))+A002054(n+1)`
-/

namespace A289797.P16331236338541832617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085861 (A273920 (n + 1)).toNat + A002054 (n + 1)

end

end A289797.P16331236338541832617

/-!
# A289798: p-INVERT of (-1 + 2^n), where p(S) = 1 - S - S^2.

The programs for A289798, the canonical program `A289798.P17926182188064654832` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A289798 has offset 0).

The definition of A289798 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A289798.P17926182188064654832

`7*a(n-1)-15*a(n-2)+14*a(n-3)-4*a(n-4)` with `a(0)=1, a(1)=5, a(2)=22, a(3)=93`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A289798

/-- `7*a(n-1)-15*a(n-2)+14*a(n-3)-4*a(n-4)` -/
def P17926182188064654832.Spec : Prop :=
  ∀ n, P17926182188064654832.a n = A289798 n

theorem P17926182188064654832.correct : P17926182188064654832.Spec := by
  intro n
  simp only [A289798]

end A289798

/-! ## A289798.P4777324436569310839

`A276042(n)+A002266(A289788(n))`
-/

namespace A289798.P4777324436569310839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276042 n + A002266 (A289788 n).toNat

end

end A289798.P4777324436569310839

namespace A289798

/-- `A276042(n)+A002266(A289788(n))` -/
def P4777324436569310839.Spec : Prop :=
  ∀ n, P4777324436569310839.a n = A289798 n

end A289798

/-!
# A289799: p-INVERT of (n^3), where p(S) = 1 - S - S^2.

The programs for A289799, there is no canonical definition to state claims against.
-/

/-! ## A289799.P4438128084873139498

`A123108(A077240(n))-A000294(n)`
-/

namespace A289799.P4438128084873139498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A077240 n).toNat - A000294 n

end

end A289799.P4438128084873139498

